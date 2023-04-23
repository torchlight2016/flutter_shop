import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shop/core/widgets/space/hspace.dart';
import 'package:flutter_shop/core/widgets/space/wspace.dart';
import 'package:flutter_shop/feature/book/domain/entities/book.dart';
import 'package:flutter_shop/app_router.dart';

class BookCard extends StatelessWidget {
  final Book book;
  const BookCard({Key? key, required this.book}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.pushRoute(AppRoutes.bookDetail, extra: book);
      },
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text(
                book.title,
                style: Theme.of(context).textTheme.titleMedium,
              ),
              HSpace(4),
              Row(
                children: [
                  Hero(
                    tag: book.title,
                    child: CachedNetworkImage(
                      imageUrl: book.thumbnail,
                    ),
                  ),
                  const WSpace(16),
                  Expanded(
                      child: Text(
                    book.contents,
                    maxLines: 8,
                    overflow: TextOverflow.ellipsis,
                  )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
