import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_shop/core/bloc/state_value.dart';
import 'package:flutter_shop/core/result/api_result.dart';
import 'package:flutter_shop/feature/book/domain/entities/searched_books.dart';
import 'package:flutter_shop/feature/book/domain/usecases/search_books_usecase.dart';

class BookBloc extends Bloc<BookEvent, StateValue<SearchedBooks>> {
  final SearchBooksUseCase searchBooksUseCase;

  BookBloc({
    required this.searchBooksUseCase,
  }) : super(InitialState()) {
    on<BookEvent>(onBookEvent);
  }

  Future<FutureOr<void>> onBookEvent(
      BookEvent event, Emitter<StateValue<SearchedBooks>> emit) async {
    switch (event) {
      case SearchBooks(
          name: final String name,
          page: final int? page,
          size: final int? size
        ):
        final result = await searchBooksUseCase
            .execute(SearchBooksParam(name: name, page: page, size: size));
        switch (result) {
          case ApiSuccess<SearchedBooks>():
            emit(LoadedState(result.value));
            break;
          case ApiFailure<SearchedBooks>():
            emit(ErrorState(error: result.error));
            break;
        }
        break;
    }
  }
}

sealed class BookEvent {}

final class SearchBooks extends BookEvent {
  final String name;
  int? page;
  int? size;

  SearchBooks({required this.name, this.page, this.size});
}
