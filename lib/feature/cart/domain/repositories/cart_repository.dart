import 'package:flutter_shop/feature/book/domain/entities/book.dart';

abstract class CartRepository {
  List<Book> getBooks();
  bool addBook(Book book);
  void removeBook(Book book);
}
