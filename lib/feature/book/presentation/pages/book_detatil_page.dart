import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_shop/core/widgets/space/hspace.dart';
import 'package:flutter_shop/core/widgets/toast/toast.dart';
import 'package:flutter_shop/feature/book/domain/entities/book.dart';
import 'package:flutter_shop/feature/cart/presentation/blocs/cart_bloc.dart';
import 'package:flutter_shop/service_locator.dart';

class BookDetailPage extends StatelessWidget {
  final Book book;

  const BookDetailPage({Key? key, required this.book}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return BlocProvider(
      create: (context) => sl<CartBloc>(),
      child: Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text(
                book.title,
                style: textTheme.titleLarge,
              ),
              const HSpace(16),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Hero(
                    tag: book.title,
                    child: CachedNetworkImage(
                      imageUrl: book.thumbnail,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('정가 : ${book.price}'),
                        Text('할인가 : ${book.salePrice}'),
                        Text('저자 : ${book.authors}'),
                        Text('발행처 : ${book.publisher}'),
                        Text('발행일 : ${book.datetime.substring(0, 10)}'),
                      ],
                    ),
                  )
                ],
              ),
              const HSpace(16),
              Text(book.contents),
              const Spacer(),
              SafeArea(
                child: Row(
                  children: [
                    Expanded(
                        child: ElevatedButton(
                            onPressed: () {
                              Toast.show(context, '구매 신청되었습니다.');
                            },
                            child: const Text('구매'))),
                    Builder(builder: (context) {
                      return IconButton(
                          onPressed: () {
                            context
                                .read<CartBloc>()
                                .add(CartEvent.addBookToCart(book));
                            // LoadingIndicator.instance.show();
                            Toast.show(context, '장바구니에 추가되었습니다.');
                          },
                          icon: const Icon(Icons.shopping_cart));
                    })
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
