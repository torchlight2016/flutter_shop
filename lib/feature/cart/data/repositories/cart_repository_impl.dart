import 'package:flutter_shop/feature/book/domain/entities/book.dart';
import 'package:flutter_shop/feature/cart/data/datasources/cart_local_datasource.dart';
import 'package:flutter_shop/feature/cart/domain/repositories/cart_repository.dart';

class CartRepositoryImpl extends CartRepository {
  final CartLocalDataSource cartLocalDataSource;

  CartRepositoryImpl({
    required this.cartLocalDataSource,
  });

  @override
  List<Book> getBooks() => cartLocalDataSource.getBooks();

  @override
  bool addBook(Book book) => cartLocalDataSource.addBook(book);

  @override
  void removeBook(Book book) => cartLocalDataSource.removeBook(book);
}
