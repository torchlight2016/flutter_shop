// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'searched_books_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchedBooksModel _$SearchedBooksModelFromJson(Map<String, dynamic> json) =>
    SearchedBooksModel(
      meta: Meta.fromJson(json['meta'] as Map<String, dynamic>),
      documents: (json['documents'] as List<dynamic>)
          .map((e) => Documents.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SearchedBooksModelToJson(SearchedBooksModel instance) =>
    <String, dynamic>{
      'meta': instance.meta,
      'documents': instance.documents,
    };

Meta _$MetaFromJson(Map<String, dynamic> json) => Meta(
      totalCount: json['total_count'] as int,
      pageableCount: json['pageable_count'] as int,
      isEnd: json['is_end'] as bool,
    );

Map<String, dynamic> _$MetaToJson(Meta instance) => <String, dynamic>{
      'total_count': instance.totalCount,
      'pageable_count': instance.pageableCount,
      'is_end': instance.isEnd,
    };

Documents _$DocumentsFromJson(Map<String, dynamic> json) => Documents(
      authors:
          (json['authors'] as List<dynamic>).map((e) => e as String).toList(),
      contents: json['contents'] as String,
      datetime: json['datetime'] as String,
      isbn: json['isbn'] as String,
      price: json['price'] as int,
      publisher: json['publisher'] as String,
      salePrice: json['sale_price'] as int,
      status: json['status'] as String,
      thumbnail: json['thumbnail'] as String,
      title: json['title'] as String,
      translators: (json['translators'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      url: json['url'] as String,
    );

Map<String, dynamic> _$DocumentsToJson(Documents instance) => <String, dynamic>{
      'authors': instance.authors,
      'contents': instance.contents,
      'datetime': instance.datetime,
      'isbn': instance.isbn,
      'price': instance.price,
      'publisher': instance.publisher,
      'sale_price': instance.salePrice,
      'status': instance.status,
      'thumbnail': instance.thumbnail,
      'title': instance.title,
      'translators': instance.translators,
      'url': instance.url,
    };
