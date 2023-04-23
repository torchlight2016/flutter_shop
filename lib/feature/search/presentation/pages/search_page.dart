import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_shop/core/bloc/state_value.dart';
import 'package:flutter_shop/feature/search/presentation/blocs/search_bloc.dart';
import 'package:flutter_shop/feature/search/presentation/widgets/keyword_text_field.dart';
import 'package:flutter_shop/app_router.dart';
import 'package:flutter_shop/service_locator.dart';

class SearchPage extends StatelessWidget {
  SearchPage({Key? key}) : super(key: key);

  final TextEditingController inputController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          sl<SearchBloc>()..add(const SearchEvent.getBookKeywords()),
      child: Scaffold(
          appBar: AppBar(
            titleSpacing: 0,
            title: KeywordTextField(inputController: inputController),
            actions: [
              Builder(builder: (context) {
                return IconButton(
                  padding: EdgeInsets.zero,
                  iconSize: 32,
                  icon: const Icon(
                    Icons.search,
                  ),
                  onPressed: () async {
                    final keyword = inputController.text;
                    navigateToBookListWithKeywordAddition(context, keyword);
                  },
                );
              })
            ],
          ),
          body: BlocBuilder<SearchBloc, StateValue<List<String>>>(
            builder: (context, state) {
              return Center(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: ListView.separated(
                    itemCount: state.data?.length ?? 0,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(state.data![index]),
                        onTap: () {
                          final keyword =
                              inputController.text = state.data![index];
                          navigateToBookListWithKeywordAddition(
                              context, keyword);
                        },
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return const Divider();
                    },
                  ),
                ),
              );
            },
          )),
    );
  }

  navigateToBookListWithKeywordAddition(
      BuildContext context, String keyword) async {
    context.read<SearchBloc>().add(SearchEvent.addBookKeyword(keyword));
    await Future.delayed(
        const Duration(milliseconds: 300),
        () => {
              context
                  .pushRoute(AppRoutes.bookList, params: {'keyword': keyword})
            });
  }
}
