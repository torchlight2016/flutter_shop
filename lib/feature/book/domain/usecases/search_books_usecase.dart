import 'package:flutter_shop/core/result/api_result.dart';
import 'package:flutter_shop/core/usecase/usecase.dart';
import 'package:flutter_shop/feature/book/domain/entities/searched_books.dart';
import 'package:flutter_shop/feature/book/domain/repositories/book_repository.dart';

class SearchBooksUseCase
    extends UseCase<ApiResult<SearchedBooks>, SearchBooksParam> {
  final BookRepository bookRepository;

  SearchBooksUseCase({
    required this.bookRepository,
  });

  @override
  Future<ApiResult<SearchedBooks>> execute(SearchBooksParam param) {
    return bookRepository.searchBooks(
      name: param.name,
      page: param.page,
      size: param.size,
    );
  }
}

class SearchBooksParam {
  final String name;
  int? page;
  int? size;

  SearchBooksParam({
    required this.name,
    this.page,
    this.size,
  });
}
