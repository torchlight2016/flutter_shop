import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_shop/core/bloc/state_value.dart';
import 'package:flutter_shop/feature/book/domain/entities/searched_books.dart';
import 'package:flutter_shop/feature/home/presentation/blocs/home_bloc.dart';
import 'package:flutter_shop/feature/home/presentation/widgets/book_list_view.dart';
import 'package:flutter_shop/service_locator.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => sl<HomeBloc>()..add(SearchBooks(name: '프로그램')),
        child: BlocBuilder<HomeBloc, StateValue<SearchedBooks>>(
          builder: (context, state) {
            return switch (state) {
              InitialState<SearchedBooks>() => const SizedBox.shrink(),
              LoadingState<SearchedBooks>() => const Center(
                  child: CircularProgressIndicator(),
                ),
              LoadedState<SearchedBooks>() =>
                BookListView(searchedBooks: state.data),
              ErrorState<SearchedBooks>() => const Text('오류가 발생했습니다.'),
            };
          },
        ));
  }
}
