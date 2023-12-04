import 'package:flutter_shop/core/result/api_result.dart';
import 'package:flutter_shop/feature/search/data/datasources/book_keywords_local_data_source.dart';
import 'package:flutter_shop/feature/search/domain/repositories/book_keywords_repository.dart';

class BookKeywordsRepositoryImpl extends BookKeywordsRepository {
  final BookKeywordsLocalDataSource searchKeywordLocalDataSource;

  BookKeywordsRepositoryImpl(this.searchKeywordLocalDataSource);

  @override
  Future<ApiResult<List<String>>> addBookKeyword(String keyword) async =>
      ApiResult.wrap(() => searchKeywordLocalDataSource.addKeyword(keyword));

  @override
  Future<ApiResult<List<String>>> getBookKeywords() async =>
      ApiResult.wrap(() => searchKeywordLocalDataSource.getKeywords());
}
