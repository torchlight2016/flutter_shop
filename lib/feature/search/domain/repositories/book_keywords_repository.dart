import 'package:flutter_shop/core/result/api_result.dart';

abstract class BookKeywordsRepository {
  Future<ApiResult<List<String>>> getBookKeywords();
  Future<ApiResult<List<String>>> addBookKeyword(String keyword);
}
