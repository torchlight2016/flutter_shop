import 'package:flutter_shop/core/result/result.dart';
import 'package:flutter_shop/feature/book/domain/entities/searched_books.dart';

abstract class BookRepository {
  Future<Result<SearchedBooks>> searchBooks({
    required String name,
    int? page,
    int? size,
  });
}
