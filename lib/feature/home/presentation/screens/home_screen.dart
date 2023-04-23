import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_shop/feature/home/presentation/blocs/home_bloc.dart';
import 'package:flutter_shop/feature/home/presentation/widgets/book_list_view.dart';
import 'package:flutter_shop/service_locator.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) =>
            sl<HomeBloc>()..add(const HomeEvent.searchBooks(name: '프로그램')),
        child: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            return state.when(
                initial: () => const SizedBox.shrink(),
                loading: () => const Center(child: CircularProgressIndicator()),
                bookSearched: (searchedBooks) {
                  return BookListView(searchedBooks: searchedBooks);
                },
                error: (e, st) {
                  return const Text('오류가 발생했습니다.');
                  // return ErrorWidget(e);
                });
          },
        ));
  }
}
