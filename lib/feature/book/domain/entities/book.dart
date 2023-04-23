class Book {
  final String title;
  final String contents;
  final List<String> authors;
  final String thumbnail;
  final String url;
  final int price;
  final int salePrice;
  final String publisher;
  final String datetime;

  Book({
    required this.title,
    required this.contents,
    required this.authors,
    required this.thumbnail,
    required this.url,
    required this.price,
    required this.salePrice,
    required this.publisher,
    required this.datetime,
  });

  @override
  String toString() {
    return 'Book{title: $title, contents: $contents, authors: $authors, thumbnail: $thumbnail, url: $url, price: $price, salePrice: $salePrice, publisher: $publisher, datetime: $datetime}';
  }
}
