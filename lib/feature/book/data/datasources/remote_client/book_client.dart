import 'package:dio/dio.dart';
import 'package:flutter_shop/feature/book/data/models/searched_books_model.dart';
import 'package:retrofit/retrofit.dart';

part 'book_client.g.dart';

@RestApi(baseUrl: 'https://dapi.kakao.com')
abstract class BookClient {
  factory BookClient(Dio dio, {String baseUrl}) = _BookClient;

  // query	String	검색을 원하는 질의어	O
  // sort	String	결과 문서 정렬 방식, accuracy(정확도순) 또는 latest(발간일순), 기본값 accuracy	X
  // page	Integer	결과 페이지 번호, 1~50 사이의 값, 기본 값 1	X
  // size	Integer	한 페이지에 보여질 문서 수, 1~50 사이의 값, 기본 값 10	X
  // target	String	검색 필드 제한
  // 사용 가능한 값: title(제목), isbn (ISBN), publisher(출판사), person(인명)
  //
  @GET('/v3/search/book')
  Future<SearchedBooksModel> searchBook(
    @Query('query') String query,
    @Query('page') int? page,
    @Query('size') int? size,
  );
}
