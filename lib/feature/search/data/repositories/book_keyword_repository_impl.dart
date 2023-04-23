import 'package:flutter_shop/core/result/result.dart';
import 'package:flutter_shop/feature/search/data/datasources/book_keywords_local_data_source.dart';
import 'package:flutter_shop/feature/search/domain/repositories/book_keywords_repository.dart';

class BookKeywordsRepositoryImpl extends BookKeywordsRepository {
  final BookKeywordsLocalDataSource searchKeywordLocalDataSource;

  BookKeywordsRepositoryImpl(this.searchKeywordLocalDataSource);

  @override
  Future<Result<List<String>>> addBookKeyword(String keyword) async {
    try {
      final keywords = await searchKeywordLocalDataSource.addKeyword(keyword);
      return Result.success(keywords);
    } catch (e, st) {
      return Result.failure(e, st);
    }
  }

  @override
  Future<Result<List<String>>> getBookKeywords() async {
    return Result.wrap(() => searchKeywordLocalDataSource.getKeywords());
  }
}
