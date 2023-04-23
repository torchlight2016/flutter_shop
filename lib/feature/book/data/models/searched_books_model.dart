import 'package:json_annotation/json_annotation.dart';

part 'searched_books_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class SearchedBooksModel {
  SearchedBooksModel({
    required this.meta,
    required this.documents,
  });
  final Meta meta;
  final List<Documents> documents;

  factory SearchedBooksModel.fromJson(Map<String, dynamic> json) =>
      _$SearchedBooksModelFromJson(json);
  Map<String, dynamic> toJson() => _$SearchedBooksModelToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class Meta {
  Meta({
    required this.totalCount,
    required this.pageableCount,
    required this.isEnd,
  });
  final int totalCount;
  final int pageableCount;
  final bool isEnd;

  factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);
  Map<String, dynamic> toJson() => _$MetaToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class Documents {
  Documents({
    required this.authors,
    required this.contents,
    required this.datetime,
    required this.isbn,
    required this.price,
    required this.publisher,
    required this.salePrice,
    required this.status,
    required this.thumbnail,
    required this.title,
    required this.translators,
    required this.url,
  });
  final List<String> authors;
  final String contents;
  final String datetime;
  final String isbn;
  final int price;
  final String publisher;
  final int salePrice;
  final String status;
  final String thumbnail;
  final String title;
  final List<String> translators;
  final String url;

  factory Documents.fromJson(Map<String, dynamic> json) =>
      _$DocumentsFromJson(json);
  Map<String, dynamic> toJson() => _$DocumentsToJson(this);
}
