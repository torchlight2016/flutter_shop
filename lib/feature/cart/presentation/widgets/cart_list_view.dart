import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_shop/feature/book/domain/entities/book.dart';
import 'package:flutter_shop/feature/cart/presentation/blocs/cart_bloc.dart';
import 'package:flutter_shop/feature/home/presentation/widgets/book_card.dart';

class CartListView extends StatelessWidget {
  final List<Book> books;

  const CartListView({Key? key, required this.books}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemBuilder: (context, index) {
          return Stack(
            children: [
              BookCard(
                book: books[index],
              ),
              Align(
                alignment: Alignment.topRight,
                child: IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: () {
                    context
                        .read<CartBloc>()
                        .add(RemoveBookFromCart(book: (books[index])));
                  },
                ),
              )
            ],
          );
        },
        itemCount: books.length);
  }
}
