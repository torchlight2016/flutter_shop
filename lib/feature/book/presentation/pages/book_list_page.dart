import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_shop/core/bloc/state_value.dart';
import 'package:flutter_shop/feature/book/domain/entities/searched_books.dart';
import 'package:flutter_shop/feature/book/presentation/blocs/book_bloc.dart';
import 'package:flutter_shop/feature/home/presentation/widgets/book_list_view.dart';
import 'package:flutter_shop/feature/search/presentation/widgets/keyword_text_field.dart';
import 'package:flutter_shop/service_locator.dart';
import 'package:go_router/go_router.dart';

class BookListPage extends StatelessWidget {
  final String keyword;
  final TextEditingController inputController;

  BookListPage({Key? key, required this.keyword})
      : inputController = TextEditingController(text: keyword),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          sl<BookBloc>()..add(BookEvent.searchBooks(name: keyword)),
      child: Scaffold(
          appBar: AppBar(
            titleSpacing: 0,
            title: InkWell(
                onTap: () {
                  context.pop();
                },
                child: IgnorePointer(
                    child: Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: KeywordTextField(inputController: inputController),
                ))),
          ),
          body: BlocBuilder<BookBloc, StateValue<SearchedBooks>>(
            builder: (context, state) {
              return state.when(
                  initial: () => const SizedBox.shrink(),
                  loading: () =>
                      const Center(child: CircularProgressIndicator()),
                  success: (data) {
                    return BookListView(searchedBooks: data);
                  },
                  failure: (e, st) {
                    return Text('error=$e');
                  });
            },
          )),
    );
  }
}
