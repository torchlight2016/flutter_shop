import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shop/core/utils/log/log.dart';
import 'package:flutter_shop/feature/book/domain/entities/book.dart';
import 'package:flutter_shop/feature/book/presentation/pages/book_detatil_page.dart';
import 'package:flutter_shop/feature/book/presentation/pages/book_list_page.dart';
import 'package:flutter_shop/feature/cart/presentation/pages/cart_page.dart';
import 'package:flutter_shop/feature/home/presentation/screens/home_screen.dart';
import 'package:flutter_shop/feature/main/presentation/pages/main_page.dart';
import 'package:flutter_shop/feature/search/presentation/pages/search_page.dart';
import 'package:go_router/go_router.dart';

enum AppRoutes {
  search('search', 'search'),
  home('home', '/home'),
  cart('cart', 'cart'),
  bookList('bookList', 'bookList/:keyword'),
  bookDetail('book_detail', 'bookDetail');

  const AppRoutes(this.name, this.path);

  final String name;
  final String path;
}

class AppRouter {
  final GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey();
  final GlobalKey<NavigatorState> shellNavigatorKey = GlobalKey();

  static final AppRouter instance = AppRouter._();

  late final GoRouter router;

  AppRouter._() {
    router = GoRouter(
      navigatorKey: rootNavigatorKey,
      initialLocation: AppRoutes.home.path,
      debugLogDiagnostics: kDebugMode,
      routes: [
        ShellRoute(
            navigatorKey: shellNavigatorKey,
            builder: (context, state, child) =>
                MainPage(title: 'Book Shop', child: child),
            routes: [
              GoRoute(
                  name: AppRoutes.home.name,
                  path: AppRoutes.home.path,
                  pageBuilder: (context, state) => const CupertinoPage(
                        child: HomeScreen(),
                      ),
                  routes: [
                    GoRoute(
                      parentNavigatorKey: rootNavigatorKey,
                      name: AppRoutes.search.name,
                      path: AppRoutes.search.path,
                      pageBuilder: (context, state) => CupertinoPage(
                        child: SearchPage(),
                      ),
                    ),
                    GoRoute(
                      parentNavigatorKey: rootNavigatorKey,
                      name: AppRoutes.bookList.name,
                      path: AppRoutes.bookList.path,
                      pageBuilder: (context, state) => CupertinoPage(
                        child: BookListPage(
                          keyword: state.params['keyword'] ?? '',
                        ),
                      ),
                    ),
                    GoRoute(
                      parentNavigatorKey: rootNavigatorKey,
                      name: AppRoutes.bookDetail.name,
                      path: AppRoutes.bookDetail.path,
                      pageBuilder: (context, state) => CupertinoPage(
                        child: BookDetailPage(
                          book: state.extra as Book,
                        ),
                      ),
                    ),
                    GoRoute(
                      parentNavigatorKey: rootNavigatorKey,
                      name: AppRoutes.cart.name,
                      path: AppRoutes.cart.path,
                      pageBuilder: (context, state) => const MaterialPage(
                        child: CartPage(),
                      ),
                    ),
                  ]),
            ]),
      ],
      observers: [
        AppRouteObserver(),
      ],
    );
  }
}

class AppRouteObserver extends NavigatorObserver {
  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    if (route is PageRoute) {
      Log.i(
          '[AppRouteObserver][didPush] ${previousRoute?.settings.name ?? ''} ====> ${route.settings.name ?? ''}');
    }
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    if (previousRoute is PageRoute) {
      Log.i(
          '[AppRouteObserver][didPop] ${route.settings.name ?? ''} ====> ${previousRoute.settings.name ?? ''}');
    }
  }

  @override
  void didRemove(Route<dynamic> route, Route<dynamic>? previousRoute) {
    if (route is PageRoute) {
      Log.i(
          '[AppRouteObserver][didRemove] ${previousRoute?.settings.name ?? ''} ====> ${route.settings.name ?? ''}');
    }
  }

  @override
  void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) {
    if (newRoute is PageRoute) {
      Log.i(
          '[AppRouteObserver][didReplace] ${oldRoute?.settings.name} ====> ${newRoute.settings.name}');
    }
  }
}

extension GoRouterExtension on BuildContext {
  goRoute(
    AppRoutes routers, {
    Map<String, String> params = const <String, String>{},
    Map<String, dynamic> queryParams = const <String, dynamic>{},
    Object? extra,
  }) {
    goNamed(
      routers.name,
      params: params,
      queryParams: queryParams,
      extra: extra,
    );
  }

  pushRoute(
    AppRoutes routers, {
    Map<String, String> params = const <String, String>{},
    Map<String, dynamic> queryParams = const <String, dynamic>{},
    Object? extra,
  }) {
    pushNamed(
      routers.name,
      params: params,
      queryParams: queryParams,
      extra: extra,
    );
  }
}
