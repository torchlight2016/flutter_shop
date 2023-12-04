import 'package:flutter_shop/core/result/api_result.dart';
import 'package:flutter_shop/feature/book/domain/entities/searched_books.dart';

abstract class BookRepository {
  Future<ApiResult<SearchedBooks>> searchBooks({
    required String name,
    int? page,
    int? size,
  });
}
