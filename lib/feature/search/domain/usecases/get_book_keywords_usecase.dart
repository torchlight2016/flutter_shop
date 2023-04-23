import 'package:flutter_shop/core/result/result.dart';
import 'package:flutter_shop/core/usecase/no_param.dart';
import 'package:flutter_shop/core/usecase/usecase.dart';
import 'package:flutter_shop/feature/search/domain/repositories/book_keywords_repository.dart';

class GetBookKeywordsUseCase extends UseCase<Result<List<String>>, NoParam> {
  final BookKeywordsRepository bookKeywordsRepository;

  GetBookKeywordsUseCase({required this.bookKeywordsRepository});

  @override
  Future<Result<List<String>>> execute(NoParam param) async {
    return bookKeywordsRepository.getBookKeywords();
  }
}
