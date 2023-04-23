import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_shop/feature/book/domain/entities/book.dart';
import 'package:flutter_shop/feature/cart/presentation/blocs/cart_bloc.dart';
import 'package:flutter_shop/feature/cart/presentation/widgets/cart_list_view.dart';
import 'package:flutter_shop/service_locator.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart'),
      ),
      body: BlocProvider(
        create: (context) =>
            sl<CartBloc>()..add(const CartEvent.getBooksFromCart()),
        child: BlocBuilder<CartBloc, List<Book>>(
          builder: (context, state) {
            return CartListView(books: state);
          },
        ),
      ),
    );
  }
}
