import 'package:flutter_shop/feature/book/domain/entities/book.dart';

abstract class CartLocalDataSource {
  List<Book> getBooks();
  bool addBook(Book book);
  void removeBook(Book book);
}

class CartLocalDataSourceImpl extends CartLocalDataSource {
  final List<Book> _books = [];

  @override
  List<Book> getBooks() {
    return _books;
  }

  @override
  bool addBook(Book book) {
    if (_books.contains(book)) return false;
    _books.add(book);
    return true;
  }

  @override
  void removeBook(Book book) {
    _books.remove(book);
  }
}
