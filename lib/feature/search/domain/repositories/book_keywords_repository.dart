import 'package:flutter_shop/core/result/result.dart';

abstract class BookKeywordsRepository {
  Future<Result<List<String>>> getBookKeywords();
  Future<Result<List<String>>> addBookKeyword(String keyword);
}
