import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_shop/core/bloc/state_value.dart';
import 'package:flutter_shop/core/usecase/no_param.dart';
import 'package:flutter_shop/feature/book/domain/usecases/search_books_usecase.dart';
import 'package:flutter_shop/feature/search/domain/usecases/add_book_keyword_usecase.dart';
import 'package:flutter_shop/feature/search/domain/usecases/get_book_keywords_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_bloc.freezed.dart';

class SearchBloc extends Bloc<SearchEvent, StateValue<List<String>>> {
  final SearchBooksUseCase searchBooksUseCase;
  final AddBookKeywordUseCase addBookKeywordUseCase;
  final GetBookKeywordsUseCase getBookKeywordsUseCase;

  final List<String> _keywords = [];

  SearchBloc({
    required this.searchBooksUseCase,
    required this.addBookKeywordUseCase,
    required this.getBookKeywordsUseCase,
  }) : super(const StateValue.initial()) {
    on<SearchEvent>(_onSearchEvent);
  }

  Future<FutureOr<void>> _onSearchEvent(
      SearchEvent event, Emitter<StateValue<List<String>>> emit) async {
    await event.when(
        getBookKeywords: () async => await _getBookKeywords(emit),
        addBookKeyword: (keyword) async =>
            await _addBookKeyword(emit, keyword));
  }

  Future<void> _getBookKeywords(emit) async {
    final result = await getBookKeywordsUseCase.execute(NoParam());
    result.when(success: (data) {
      _keywords.clear();
      _keywords.addAll(data);
      emit(StateValue.success(data));
    }, failure: (e, st) {
      emit(StateValue.failure(e, st));
    });
  }

  Future<void> _addBookKeyword(emit, String keyword) async {
    final result = await addBookKeywordUseCase
        .execute(AddBookKeywordParam(keyword: keyword));
    result.when(success: (data) {
      emit(StateValue.success(data));
    }, failure: (e, st) {
      emit(StateValue.failure(e, st));
    });
  }
}

@freezed
class SearchEvent with _$SearchEvent {
  const factory SearchEvent.getBookKeywords() = _GetBookKeyWords;
  const factory SearchEvent.addBookKeyword(String keyword) = _AddBookKeyword;
}
