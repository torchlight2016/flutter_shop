import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_shop/core/bloc/state_value.dart';
import 'package:flutter_shop/feature/book/domain/entities/searched_books.dart';
import 'package:flutter_shop/feature/book/domain/usecases/search_books_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_bloc.freezed.dart';

class BookBloc extends Bloc<BookEvent, StateValue<SearchedBooks>> {
  final SearchBooksUseCase searchBooksUseCase;

  BookBloc({
    required this.searchBooksUseCase,
  }) : super(const StateValue.initial()) {
    on<BookEvent>(onBookEvent);
  }

  Future<FutureOr<void>> onBookEvent(
      BookEvent event, Emitter<StateValue<SearchedBooks>> emit) async {
    await event.map(searchBooks: (event) async {
      final result = await searchBooksUseCase.execute(SearchBooksParam(
          name: event.name, page: event.page, size: event.size));
      result.when(success: (data) {
        emit(StateValue.success(data));
      }, failure: (e, st) {
        emit(StateValue.failure(e, st));
      });
    });
  }
}

@freezed
class BookEvent with _$BookEvent {
  const factory BookEvent.searchBooks({
    required String name,
    int? page,
    int? size,
  }) = _SearchBooks;
}
