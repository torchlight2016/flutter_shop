import 'package:flutter_shop/core/usecase/usecase.dart';
import 'package:flutter_shop/feature/book/domain/entities/book.dart';
import 'package:flutter_shop/feature/cart/domain/repositories/cart_repository.dart';

class RemoveBookFromCartUseCase extends UseCase<void, Book> {
  final CartRepository cartRepository;

  RemoveBookFromCartUseCase({
    required this.cartRepository,
  });

  @override
  Future<void> execute(Book param) async {
    cartRepository.removeBook(param);
  }
}
