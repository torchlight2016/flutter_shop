import 'package:flutter_shop/feature/book/domain/entities/book.dart';

class SearchedBooks {
  final int totalCount;
  final int pageableCount;
  final bool isEnd;
  final List<Book> books;

  SearchedBooks({
    required this.totalCount,
    required this.pageableCount,
    required this.isEnd,
    required this.books,
  });

  @override
  String toString() {
    return 'SearchedBooks{totalCount: $totalCount, pageableCount: $pageableCount, isEnd: $isEnd, books: $books}';
  }
}
