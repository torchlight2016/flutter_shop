import 'package:flutter_shop/core/result/result.dart';
import 'package:flutter_shop/core/usecase/usecase.dart';
import 'package:flutter_shop/feature/search/domain/repositories/book_keywords_repository.dart';

class AddBookKeywordUseCase
    extends UseCase<Result<List<String>>, AddBookKeywordParam> {
  final BookKeywordsRepository bookKeywordsRepository;

  AddBookKeywordUseCase({
    required this.bookKeywordsRepository,
  });

  @override
  Future<Result<List<String>>> execute(AddBookKeywordParam param) {
    return bookKeywordsRepository.addBookKeyword(param.keyword);
  }
}

class AddBookKeywordParam {
  final String keyword;

  AddBookKeywordParam({
    required this.keyword,
  });
}
