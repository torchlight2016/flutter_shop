import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_shop/feature/book/domain/entities/searched_books.dart';
import 'package:flutter_shop/feature/book/domain/usecases/search_books_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final SearchBooksUseCase searchBooksUseCase;

  HomeBloc({
    required this.searchBooksUseCase,
  }) : super(const _Initial()) {
    on<HomeEvent>((event, emit) async {
      await event.map(searchBooks: (event) async {
        emit(const _Loading());
        final result = await searchBooksUseCase.execute(SearchBooksParam(
          name: event.name,
          page: event.page,
          size: event.size,
        ));
        result.when(success: (value) {
          emit(_BookSearched(value));
        }, failure: (e, st) {
          emit(_Error(e, st));
        });
      });
    });
  }
}

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.searchBooks({
    required String name,
    int? page,
    int? size,
  }) = _SearchBooks;
}

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;
  const factory HomeState.loading() = _Loading;
  const factory HomeState.bookSearched(SearchedBooks searchedBooks) =
      _BookSearched;
  const factory HomeState.error(Object error, StackTrace stackTrace) = _Error;
}
