import 'package:flutter_shop/core/usecase/no_param.dart';
import 'package:flutter_shop/core/usecase/usecase.dart';
import 'package:flutter_shop/feature/book/domain/entities/book.dart';
import 'package:flutter_shop/feature/cart/domain/repositories/cart_repository.dart';

class GetBooksFromCartUseCase extends UseCase<List<Book>, NoParam> {
  final CartRepository cartRepository;

  GetBooksFromCartUseCase({
    required this.cartRepository,
  });

  @override
  Future<List<Book>> execute(NoParam param) {
    return Future(() => cartRepository.getBooks());
  }
}
