import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_shop/app/app_bloc.dart';
import 'package:flutter_shop/app_router.dart';
import 'package:flutter_shop/core/utils/log/log.dart';
import 'package:flutter_shop/feature/main/presentation/widgets/brightness_button.dart';
import 'package:flutter_shop/feature/main/presentation/widgets/color_seed_button.dart';
import 'package:go_router/go_router.dart';

class MainPage extends StatelessWidget {
  const MainPage({
    super.key,
    required this.title,
    required this.child,
  });

  final String title;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        actions: [
          BrightnessButton(
            handleBrightnessChange: (brightness) => context
                .read<AppBloc>()
                .add(ChangeSeedColor(brightness: brightness)),
          ),
          ColorSeedButton(
              handleColorSelect: (colorSeed) => {
                    context
                        .read<AppBloc>()
                        .add(ChangeSeedColor(colorSeed: colorSeed))
                  },
              colorSelected: context.read<AppBloc>().state.colorSeed)
        ],
      ),
      body: WillPopScope(
        onWillPop: () async {
          final String location = GoRouterState.of(context).location;
          if (!location.startsWith(AppRoutes.search.path)) {
            _onItemTapped(0, context);
          }
          return true;
        },
        child: child,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(label: 'Search', icon: Icon(Icons.search)),
          BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.home)),
          BottomNavigationBarItem(
              label: 'Cart', icon: Icon(Icons.shopping_cart))
        ],
        currentIndex: _getSelectedIndex(context),
        onTap: (index) => _onItemTapped(index, context),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  int _getSelectedIndex(BuildContext context) {
    final String location = GoRouterState.of(context).location;
    Log.i('location=$location');
    if (location.startsWith(AppRoutes.search.path)) {
      return 0;
    }
    if (location.startsWith(AppRoutes.home.path)) {
      return 1;
    }
    if (location.startsWith(AppRoutes.cart.path)) {
      return 2;
    }
    return 0;
  }

  void _onItemTapped(int index, BuildContext context) {
    if (_getSelectedIndex(context) == index) return;
    switch (index) {
      case 0:
        context.goNamed(AppRoutes.search.name);
        break;
      case 1:
        context.goNamed(AppRoutes.home.name);
        break;
      case 2:
        context.goNamed(AppRoutes.cart.name);
        break;
    }
  }
}
