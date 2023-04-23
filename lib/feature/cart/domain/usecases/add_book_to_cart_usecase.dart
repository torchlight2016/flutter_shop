import 'package:flutter_shop/core/usecase/usecase.dart';
import 'package:flutter_shop/feature/book/domain/entities/book.dart';
import 'package:flutter_shop/feature/cart/domain/repositories/cart_repository.dart';

class AddBookToCartUseCase extends UseCase<bool, Book> {
  final CartRepository cartRepository;

  AddBookToCartUseCase({
    required this.cartRepository,
  });

  @override
  Future<bool> execute(Book param) async {
    return cartRepository.addBook(param);
  }
}
