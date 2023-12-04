import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_shop/feature/book/domain/entities/searched_books.dart';
import 'package:flutter_shop/feature/home/presentation/blocs/home_bloc.dart';
import 'package:flutter_shop/feature/home/presentation/widgets/book_card.dart';

class BookListView extends StatelessWidget {
  final SearchedBooks searchedBooks;
  const BookListView({
    Key? key,
    required this.searchedBooks,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        context.read<HomeBloc>().add(SearchBooks(name: "프로그램"));
      },
      child: ListView.builder(
          itemBuilder: (context, index) {
            return BookCard(
              book: searchedBooks.books[index],
            );
          },
          itemCount: searchedBooks.books.length),
    );
  }
}
