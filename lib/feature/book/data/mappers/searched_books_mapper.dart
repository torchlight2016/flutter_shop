import 'package:flutter_shop/feature/book/data/models/searched_books_model.dart';
import 'package:flutter_shop/feature/book/domain/entities/book.dart';
import 'package:flutter_shop/feature/book/domain/entities/searched_books.dart';

extension BookSearchMapper on SearchedBooksModel {
  SearchedBooks toEntity() => SearchedBooks(
        totalCount: meta.totalCount,
        pageableCount: meta.pageableCount,
        isEnd: meta.isEnd,
        books: documents
            .map((e) => Book(
                  title: e.title,
                  contents: e.contents,
                  authors: e.authors,
                  thumbnail: e.thumbnail,
                  url: e.url,
                  price: e.price,
                  salePrice: e.salePrice,
                  publisher: e.publisher,
                  datetime: e.datetime,
                ))
            .toList(),
      );
}
