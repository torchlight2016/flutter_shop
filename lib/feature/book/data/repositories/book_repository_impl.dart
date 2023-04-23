import 'package:flutter_shop/core/result/result.dart';
import 'package:flutter_shop/feature/book/data/datasources/book_remote_data_source.dart';
import 'package:flutter_shop/feature/book/data/mappers/searched_books_mapper.dart';
import 'package:flutter_shop/feature/book/domain/entities/searched_books.dart';
import 'package:flutter_shop/feature/book/domain/repositories/book_repository.dart';

class BookRepositoryImpl extends BookRepository {
  final BookRemoteDataSource bookRemoteDataSource;

  BookRepositoryImpl(this.bookRemoteDataSource);

  @override
  Future<Result<SearchedBooks>> searchBooks({
    required String name,
    int? page,
    int? size,
  }) async {
    return Result.wrap(() => bookRemoteDataSource
        .searchBooks(name, page, size)
        .then((value) => value.toEntity()));
  }
}
