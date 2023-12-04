import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_shop/core/usecase/no_param.dart';
import 'package:flutter_shop/feature/book/domain/entities/book.dart';
import 'package:flutter_shop/feature/cart/domain/usecases/add_book_to_cart_usecase.dart';
import 'package:flutter_shop/feature/cart/domain/usecases/get_books_from_cart_usecase.dart';
import 'package:flutter_shop/feature/cart/domain/usecases/remove_book_from_cart_usecase.dart';

class CartBloc extends Bloc<CartEvent, List<Book>> {
  final GetBooksFromCartUseCase getBooksFromCartUseCase;
  final AddBookToCartUseCase addBookToCartUseCase;
  final RemoveBookFromCartUseCase removeBookFromCartUseCase;

  CartBloc({
    required this.getBooksFromCartUseCase,
    required this.addBookToCartUseCase,
    required this.removeBookFromCartUseCase,
  }) : super([]) {
    on<CartEvent>((event, emit) async {
      switch (event) {
        case GetBooksFromCart():
          final list = await getBooksFromCartUseCase.execute(NoParam());
          emit(list.reversed.toList());
          break;
        case AddBookToCart(book: final Book book):
          final isAdded = await addBookToCartUseCase.execute(book);
          if (isAdded) {
            emit([book, ...state]);
          }
          break;
        case RemoveBookFromCart(book: final Book book):
          await removeBookFromCartUseCase.execute(book);
          emit(List.from(state)..remove(book));
          break;
      }
    });
  }
}

sealed class CartEvent {}

final class GetBooksFromCart extends CartEvent {}

final class AddBookToCart extends CartEvent {
  final Book book;

  AddBookToCart({required this.book});
}

final class RemoveBookFromCart extends CartEvent {
  final Book book;

  RemoveBookFromCart({required this.book});
}
