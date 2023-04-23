import 'dart:convert';

import 'package:flutter_shop/feature/book/data/datasources/remote_client/book_client.dart';
import 'package:flutter_shop/feature/book/data/models/searched_books_model.dart';

abstract class BookRemoteDataSource {
  Future<SearchedBooksModel> searchBooks(String name, int? page, int? size);
}

class BookRemoteDataSourceImpl implements BookRemoteDataSource {
  BookRemoteDataSourceImpl({
    required this.bookClient,
  });

  BookClient bookClient;

  @override
  Future<SearchedBooksModel> searchBooks(String name, int? page, int? size) {
    return bookClient.searchBook(name, page, size);
  }
}

class MockBookRemoteDataSource implements BookRemoteDataSource {
  @override
  Future<SearchedBooksModel> searchBooks(String name, int? page, int? size) {
    return Future.delayed(const Duration(milliseconds: 300),
        () => SearchedBooksModel.fromJson(jsonDecode(_bookJson)));
  }
}

String _bookJson = '''
  {
   "documents": [
     {
       "authors": [
         "천재교육 편집부"
       ],
       "contents": "하루 10분 학습 분량의 쉽고 부담 없는 독해서로, 1주 5일씩 4주로 구성되어 한 달에 한 권씩 즐겁게 뗄 수 있다. 어휘가 강화된 독해서이며, 문학, 비문학 지문은 물론 독해서 최초로 생활 속 지문까지 담았다. 생활 어휘와 생활 한자까지 실용적으로 학습할 수 있고, 창의? 융합 독해 게임으로 재미있게 마무리하고 교과 통합 학습으로 넓혀 주는 독해서이다.  ▶ 쉽다! - 어휘력 강화로 쉽게 독해를 시작할 수 있습니다. ▶ 재미있다! - 다양한",
       "datetime": "2019-12-01T00:00:00.000+09:00",
       "isbn": "1125948027 9791125948025",
       "price": 10000,
       "publisher": "천재교육사",
       "sale_price": 9000,
       "status": "정상판매",
       "thumbnail": "https://search1.kakaocdn.net/thumb/R120x174.q85/?fname=http%3A%2F%2Ft1.daumcdn.net%2Flbook%2Fimage%2F5150360%3Ftimestamp%3D20230402135537",
       "title": "똑똑한 하루 독해 4단계 4A(3~4학년)",
       "translators": [],
       "url": "https://search.daum.net/search?w=bookpage&bookId=5150360&q=%EB%98%91%EB%98%91%ED%95%9C+%ED%95%98%EB%A3%A8+%EB%8F%85%ED%95%B4+4%EB%8B%A8%EA%B3%84+4A%283%7E4%ED%95%99%EB%85%84%29"
     },
     {
       "authors": [
         "천재교육 편집부"
       ],
       "contents": "하루 10분 학습 분량의 쉽고 부담 없는 독해서로, 1주 5일씩 4주로 구성되어 한 달에 한 권씩 즐겁게 뗄 수 있다. 어휘가 강화된 독해서이며, 문학, 비문학 지문은 물론 독해서 최초로 생활 속 지문까지 담았다. 생활 어휘와 생활 한자까지 실용적으로 학습할 수 있고, 창의? 융합 독해 게임으로 재미있게 마무리하고 교과 통합 학습으로 넓혀 주는 독해서이다.  ▶ 쉽다! - 어휘력 강화로 쉽게 독해를 시작할 수 있습니다. ▶ 재미있다! - 다양한",
       "datetime": "2019-12-01T00:00:00.000+09:00",
       "isbn": "1125948043 9791125948049",
       "price": 10000,
       "publisher": "천재교육사",
       "sale_price": 9000,
       "status": "정상판매",
       "thumbnail": "https://search1.kakaocdn.net/thumb/R120x174.q85/?fname=http%3A%2F%2Ft1.daumcdn.net%2Flbook%2Fimage%2F5150331%3Ftimestamp%3D20230402135456",
       "title": "똑똑한 하루 독해 5단계 5A(4~5학년)",
       "translators": [],
       "url": "https://search.daum.net/search?w=bookpage&bookId=5150331&q=%EB%98%91%EB%98%91%ED%95%9C+%ED%95%98%EB%A3%A8+%EB%8F%85%ED%95%B4+5%EB%8B%A8%EA%B3%84+5A%284%7E5%ED%95%99%EB%85%84%29"
     },
     {
       "authors": [
         "천재교육 편집부"
       ],
       "contents": "하루 10분 학습 분량의 쉽고 부담 없는 독해서로, 1주 5일씩 4주로 구성되어 한 달에 한 권씩 즐겁게 뗄 수 있다. 어휘가 강화된 독해서이며, 문학, 비문학 지문은 물론 독해서 최초로 생활 속 지문까지 담았다. 생활 어휘와 생활 한자까지 실용적으로 학습할 수 있고, 창의? 융합 독해 게임으로 재미있게 마무리하고 교과 통합 학습으로 넓혀 주는 독해서이다.  ▶ 쉽다! - 어휘력 강화로 쉽게 독해를 시작할 수 있습니다. ▶ 재미있다! - 다양한",
       "datetime": "2019-12-01T00:00:00.000+09:00",
       "isbn": "112594806X 9791125948063",
       "price": 10000,
       "publisher": "천재교육사",
       "sale_price": 9000,
       "status": "정상판매",
       "thumbnail": "https://search1.kakaocdn.net/thumb/R120x174.q85/?fname=http%3A%2F%2Ft1.daumcdn.net%2Flbook%2Fimage%2F5150226%3Ftimestamp%3D20230402135345",
       "title": "똑똑한 하루 독해 6단계 6A(5~6학년)",
       "translators": [],
       "url": "https://search.daum.net/search?w=bookpage&bookId=5150226&q=%EB%98%91%EB%98%91%ED%95%9C+%ED%95%98%EB%A3%A8+%EB%8F%85%ED%95%B4+6%EB%8B%A8%EA%B3%84+6A%285%7E6%ED%95%99%EB%85%84%29"
     },
     {
       "authors": [
         "최용준",
         "해법수학연구회"
       ],
       "contents": "지루하고 힘든 연산은 out! 쉽고 재미있는 빅터 연산으로 연산홀릭  1. 학습할 내용을 만화로 먼저 보면 흥미와 관심이 높아집니다. 2. 연산의 원리를 쉽고 재미있게 확실히 이해하도록 하였습니다. 3. 수수께끼, 연상퀴즈 등 다양한 형태의 문제로 게임보다 쉽고 재미있게 연산을 학습할 수 있도록 하였습니다. 4. 집중 연산을 통해 연산을 더 빠르고 더 정확하게 해결할 수 있도록 하였습니다.",
       "datetime": "2019-10-15T00:00:00.000+09:00",
       "isbn": "112594854X 9791125948544",
       "price": 9000,
       "publisher": "천재교육사",
       "sale_price": 8100,
       "status": "정상판매",
       "thumbnail": "https://search1.kakaocdn.net/thumb/R120x174.q85/?fname=http%3A%2F%2Ft1.daumcdn.net%2Flbook%2Fimage%2F5113985%3Ftimestamp%3D20230402135358",
       "title": "똑똑한 하루 빅터 연산 4A(초등 4 수준)(2023)",
       "translators": [],
       "url": "https://search.daum.net/search?w=bookpage&bookId=5113985&q=%EB%98%91%EB%98%91%ED%95%9C+%ED%95%98%EB%A3%A8+%EB%B9%85%ED%84%B0+%EC%97%B0%EC%82%B0+4A%28%EC%B4%88%EB%93%B1+4+%EC%88%98%EC%A4%80%29%282023%29"
     },
     {
       "authors": [
         "미래엔콘텐츠연구회"
       ],
       "contents": "- 독자대상 : 초등학교 2학년 - 구성 : 이론 + 문제 - 특징 : 1. 초등 국어 교과서 집필진이 개발한 독해 프로그램 2. 교과 학습 단계에 맞추어 독해 전략을 익힘 3. 새 교육과정에 따라 다양한 독해 제재를 다룸",
       "datetime": "2018-01-02T00:00:00.000+09:00",
       "isbn": "1162332263 9791162332269",
       "price": 11000,
       "publisher": "미래엔",
       "sale_price": 9900,
       "status": "정상판매",
       "thumbnail": "https://search1.kakaocdn.net/thumb/R120x174.q85/?fname=http%3A%2F%2Ft1.daumcdn.net%2Flbook%2Fimage%2F1606261%3Ftimestamp%3D20230414162509",
       "title": "하루 한장 독해 초등 국어 2-1(2023)",
       "translators": [],
       "url": "https://search.daum.net/search?w=bookpage&bookId=1606261&q=%ED%95%98%EB%A3%A8+%ED%95%9C%EC%9E%A5+%EB%8F%85%ED%95%B4+%EC%B4%88%EB%93%B1+%EA%B5%AD%EC%96%B4+2-1%282023%29"
     },
     {
       "authors": [
         "최용준"
       ],
       "contents": "지루하고 힘든 연산은 out! 쉽고 재미있는 빅터 연산으로 연산홀릭  1. 학습할 내용을 만화로 먼저 보면 흥미와 관심이 높아집니다. 2. 연산의 원리를 쉽고 재미있게 확실히 이해하도록 하였습니다. 3. 수수께끼, 연상퀴즈 등 다양한 형태의 문제로 게임보다 쉽고 재미있게 연산을 학습할 수 있도록 하였습니다. 4. 집중 연산을 통해 연산을 더 빠르고 더 정확하게 해결할 수 있도록 하였습니다.",
       "datetime": "2019-11-15T00:00:00.000+09:00",
       "isbn": "1125948558 9791125948551",
       "price": 9000,
       "publisher": "천재교육사",
       "sale_price": 8100,
       "status": "정상판매",
       "thumbnail": "https://search1.kakaocdn.net/thumb/R120x174.q85/?fname=http%3A%2F%2Ft1.daumcdn.net%2Flbook%2Fimage%2F5139838%3Ftimestamp%3D20230402135137",
       "title": "똑똑한 하루 빅터 연산 4B(초등 4 수준)(2023)",
       "translators": [],
       "url": "https://search.daum.net/search?w=bookpage&bookId=5139838&q=%EB%98%91%EB%98%91%ED%95%9C+%ED%95%98%EB%A3%A8+%EB%B9%85%ED%84%B0+%EC%97%B0%EC%82%B0+4B%28%EC%B4%88%EB%93%B1+4+%EC%88%98%EC%A4%80%29%282023%29"
     },
     {
       "authors": [
         "기탄교육 편집팀"
       ],
       "contents": "『기탄수학 I-2』는 수학의 기초인 연산력을 탄탄하게 잡아주는 유아·초등 대표 학습지로서 개인별·능력별 학습 프로그램이라는 기존 [기탄수학]의 강점을 그대로 가지고 있으면서 전세계 어린이들이 함께 배우는 한글·영어 공용 교재라는 글로벌 교육 리더로서의 비전과 철학을 새롭게 반영하였다. 기탄수학은 스몰스텝 방식에 의해 치밀하고 과학적으로 설계된 프로그램식 학습지로, 매일 일정한 시간에 규칙적으로 집중해서 한 번에 3장씩 풀고, 교재 1장을 푸는 데 소요",
       "datetime": "2018-01-12T00:00:00.000+09:00",
       "isbn": "8926015718 9788926015711",
       "price": 5000,
       "publisher": "기탄교육",
       "sale_price": 4500,
       "status": "정상판매",
       "thumbnail": "https://search1.kakaocdn.net/thumb/R120x174.q85/?fname=http%3A%2F%2Ft1.daumcdn.net%2Flbook%2Fimage%2F428767%3Ftimestamp%3D20230308152050",
       "title": "기탄수학 I-2",
       "translators": [],
       "url": "https://search.daum.net/search?w=bookpage&bookId=428767&q=%EA%B8%B0%ED%83%84%EC%88%98%ED%95%99+I-2"
     },
     {
       "authors": [
         "최용준",
         "해법수학연구회"
       ],
       "contents": "지루하고 힘든 연산은 out! 쉽고 재미있는 빅터 연산으로 연산홀릭  1. 학습할 내용을 만화로 먼저 보면 흥미와 관심이 높아집니다. 2. 연산의 원리를 쉽고 재미있게 확실히 이해하도록 하였습니다. 3. 수수께끼, 연상퀴즈 등 다양한 형태의 문제로 게임보다 쉽고 재미있게 연산을 학습할 수 있도록 하였습니다. 4. 집중 연산을 통해 연산을 더 빠르고 더 정확하게 해결할 수 있도록 하였습니다.",
       "datetime": "2019-11-15T00:00:00.000+09:00",
       "isbn": "1125948531 9791125948537",
       "price": 9000,
       "publisher": "천재교육사",
       "sale_price": 8100,
       "status": "정상판매",
       "thumbnail": "https://search1.kakaocdn.net/thumb/R120x174.q85/?fname=http%3A%2F%2Ft1.daumcdn.net%2Flbook%2Fimage%2F5134382%3Ftimestamp%3D20230419153135",
       "title": "똑똑한 하루 빅터 연산 3B(초등 3 수준)(2023)",
       "translators": [],
       "url": "https://search.daum.net/search?w=bookpage&bookId=5134382&q=%EB%98%91%EB%98%91%ED%95%9C+%ED%95%98%EB%A3%A8+%EB%B9%85%ED%84%B0+%EC%97%B0%EC%82%B0+3B%28%EC%B4%88%EB%93%B1+3+%EC%88%98%EC%A4%80%29%282023%29"
     },
     {
       "authors": [
         "최용준",
         "해법수학연구회"
       ],
       "contents": "지루하고 힘든 연산은 out! 쉽고 재미있는 빅터 연산으로 연산홀릭  1. 학습할 내용을 만화로 먼저 보면 흥미와 관심이 높아집니다. 2. 연산의 원리를 쉽고 재미있게 확실히 이해하도록 하였습니다. 3. 수수께끼, 연상퀴즈 등 다양한 형태의 문제로 게임보다 쉽고 재미있게 연산을 학습할 수 있도록 하였습니다. 4. 집중 연산을 통해 연산을 더 빠르고 더 정확하게 해결할 수 있도록 하였습니다.",
       "datetime": "2019-11-15T00:00:00.000+09:00",
       "isbn": "1125948485 9791125948483",
       "price": 6500,
       "publisher": "천재교육사",
       "sale_price": 5850,
       "status": "정상판매",
       "thumbnail": "https://search1.kakaocdn.net/thumb/R120x174.q85/?fname=http%3A%2F%2Ft1.daumcdn.net%2Flbook%2Fimage%2F5134254%3Ftimestamp%3D20230402134940",
       "title": "똑똑한 하루 빅터 연산 2A(초등 2 수준)(2023)",
       "translators": [],
       "url": "https://search.daum.net/search?w=bookpage&bookId=5134254&q=%EB%98%91%EB%98%91%ED%95%9C+%ED%95%98%EB%A3%A8+%EB%B9%85%ED%84%B0+%EC%97%B0%EC%82%B0+2A%28%EC%B4%88%EB%93%B1+2+%EC%88%98%EC%A4%80%29%282023%29"
     },
     {
       "authors": [
         "기탄교육 편집팀"
       ],
       "contents": "『기탄수학H-1』은 수학의 기초인 연산력을 탄탄하게 잡아주는 유아·초등 대표 학습지로서 개인별·능력별 학습 프로그램이라는 기존 [기탄수학]의 강점을 그대로 가지고 있으면서 전세계 어린이들이 함께 배우는 한글·영어 공용 교재라는 글로벌 교육 리더로서의 비전과 철학을 새롭게 반영하였다. 기탄수학은 스몰스텝 방식에 의해 치밀하고 과학적으로 설계된 프로그램식 학습지로, 매일 일정한 시간에 규칙적으로 집중해서 한 번에 3장씩 풀고, 교재 1장을 푸는 데 소요되는",
       "datetime": "2017-12-22T00:00:00.000+09:00",
       "isbn": "8926015653 9788926015650",
       "price": 5000,
       "publisher": "기탄교육",
       "sale_price": 4500,
       "status": "정상판매",
       "thumbnail": "https://search1.kakaocdn.net/thumb/R120x174.q85/?fname=http%3A%2F%2Ft1.daumcdn.net%2Flbook%2Fimage%2F429339%3Ftimestamp%3D20230117221543",
       "title": "기탄수학 H-1",
       "translators": [],
       "url": "https://search.daum.net/search?w=bookpage&bookId=429339&q=%EA%B8%B0%ED%83%84%EC%88%98%ED%95%99+H-1"
     }
   ],
   "meta": {
     "is_end": false,
     "pageable_count": 1000,
     "total_count": 9515
   }
 }
 ''';
