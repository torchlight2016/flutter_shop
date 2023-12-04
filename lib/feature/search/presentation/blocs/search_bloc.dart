import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_shop/core/bloc/state_value.dart';
import 'package:flutter_shop/core/result/api_error.dart';
import 'package:flutter_shop/core/result/api_result.dart';
import 'package:flutter_shop/core/usecase/no_param.dart';
import 'package:flutter_shop/feature/book/domain/usecases/search_books_usecase.dart';
import 'package:flutter_shop/feature/search/domain/usecases/add_book_keyword_usecase.dart';
import 'package:flutter_shop/feature/search/domain/usecases/get_book_keywords_usecase.dart';

class SearchBloc extends Bloc<SearchEvent, StateValue<List<String>>> {
  final SearchBooksUseCase searchBooksUseCase;
  final AddBookKeywordUseCase addBookKeywordUseCase;
  final GetBookKeywordsUseCase getBookKeywordsUseCase;

  final List<String> _keywords = [];

  SearchBloc({
    required this.searchBooksUseCase,
    required this.addBookKeywordUseCase,
    required this.getBookKeywordsUseCase,
  }) : super(InitialState()) {
    on<SearchEvent>(_onSearchEvent);
  }

  Future<FutureOr<void>> _onSearchEvent(
      SearchEvent event, Emitter<StateValue<List<String>>> emit) async {
    switch (event) {
      case GetBookKeywords():
        await _getBookKeywords(emit);
        break;
      case AddBookKeyword(keyword: final String keyword):
        await _addBookKeyword(emit, keyword);
        break;
    }
  }

  Future<void> _getBookKeywords(emit) async {
    final result = await getBookKeywordsUseCase.execute(NoParam());
    switch (result) {
      case ApiSuccess<List<String>>(value: final List<String> value):
        _keywords.clear();
        _keywords.addAll(value);
        emit(LoadedState(value));
        break;
      case ApiFailure(
          error: final ApiError error,
          stackTrace: final StackTrace? st
        ):
        emit(ErrorState(
          error: error,
          stackTrace: st,
        ));
        break;
    }
  }

  Future<void> _addBookKeyword(emit, String keyword) async {
    final result = await addBookKeywordUseCase
        .execute(AddBookKeywordParam(keyword: keyword));
    switch (result) {
      case ApiSuccess<List<String>>(value: final List<String> value):
        emit(LoadedState(value));
        break;
      case ApiFailure(
          error: final ApiError error,
          stackTrace: final StackTrace? st
        ):
        emit(ErrorState(
          error: error,
          stackTrace: st,
        ));
        break;
    }
  }
}

sealed class SearchEvent {}

final class GetBookKeywords extends SearchEvent {}

final class AddBookKeyword extends SearchEvent {
  final String keyword;

  AddBookKeyword({required this.keyword});
}
