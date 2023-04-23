import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_shop/core/usecase/no_param.dart';
import 'package:flutter_shop/feature/book/domain/entities/book.dart';
import 'package:flutter_shop/feature/cart/domain/usecases/add_book_to_cart_usecase.dart';
import 'package:flutter_shop/feature/cart/domain/usecases/get_books_from_cart_usecase.dart';
import 'package:flutter_shop/feature/cart/domain/usecases/remove_book_from_cart_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_bloc.freezed.dart';

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
      await event.when(getBooksFromCart: () async {
        final list = await getBooksFromCartUseCase.execute(NoParam());
        emit(list.reversed.toList());
      }, addBookToCart: (book) async {
        final isAdded = await addBookToCartUseCase.execute(book);
        if (isAdded) {
          emit([book, ...state]);
        }
      }, removeBookFromCart: (book) async {
        await removeBookFromCartUseCase.execute(book);
        emit(List.from(state)..remove(book));
      });
    });
  }
}

@freezed
class CartEvent with _$CartEvent {
  const factory CartEvent.getBooksFromCart() = _GetBooksFromCart;
  const factory CartEvent.addBookToCart(Book book) = _AddBookToCart;
  const factory CartEvent.removeBookFromCart(Book book) = _RemoveBookToCart;
}
