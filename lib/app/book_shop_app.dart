import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_shop/app/app_bloc.dart';
import 'package:flutter_shop/app_router.dart';
import 'package:flutter_shop/constants.dart';

class BookShopApp extends StatelessWidget {
  const BookShopApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppBloc(const AppState.seedColorChanged(
        colorSeed: ColorSeed.yellow,
        brightness: Brightness.light,
      )),
      child: BlocBuilder<AppBloc, AppState>(
        builder: (context, state) => MaterialApp.router(
          debugShowCheckedModeBanner: false,
          title: 'Flutter book shop',
          routerConfig: AppRouter.instance.router,
          theme: ThemeData(
            colorSchemeSeed: state.colorSeed.color,
            brightness: state.brightness,
            useMaterial3: true,
          ),
        ),
      ),
    );
  }
}
