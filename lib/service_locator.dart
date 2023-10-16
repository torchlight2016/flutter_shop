import 'package:dio/dio.dart';
import 'package:flutter_shop/constants.dart';
import 'package:flutter_shop/core/utils/log/log.dart';
import 'package:flutter_shop/feature/book/data/datasources/book_remote_data_source.dart';
import 'package:flutter_shop/feature/book/data/datasources/remote_client/book_client.dart';
import 'package:flutter_shop/feature/book/data/repositories/book_repository_impl.dart';
import 'package:flutter_shop/feature/book/domain/repositories/book_repository.dart';
import 'package:flutter_shop/feature/book/domain/usecases/search_books_usecase.dart';
import 'package:flutter_shop/feature/book/presentation/blocs/book_bloc.dart';
import 'package:flutter_shop/feature/cart/data/datasources/cart_local_datasource.dart';
import 'package:flutter_shop/feature/cart/data/repositories/cart_repository_impl.dart';
import 'package:flutter_shop/feature/cart/domain/repositories/cart_repository.dart';
import 'package:flutter_shop/feature/cart/domain/usecases/add_book_to_cart_usecase.dart';
import 'package:flutter_shop/feature/cart/domain/usecases/get_books_from_cart_usecase.dart';
import 'package:flutter_shop/feature/cart/domain/usecases/remove_book_from_cart_usecase.dart';
import 'package:flutter_shop/feature/cart/presentation/blocs/cart_bloc.dart';
import 'package:flutter_shop/feature/home/presentation/blocs/home_bloc.dart';
import 'package:flutter_shop/feature/main/presentation/blocs/main_bloc.dart';
import 'package:flutter_shop/feature/search/data/datasources/book_keywords_local_data_source.dart';
import 'package:flutter_shop/feature/search/data/repositories/book_keyword_repository_impl.dart';
import 'package:flutter_shop/feature/search/domain/repositories/book_keywords_repository.dart';
import 'package:flutter_shop/feature/search/domain/usecases/add_book_keyword_usecase.dart';
import 'package:flutter_shop/feature/search/domain/usecases/get_book_keywords_usecase.dart';
import 'package:flutter_shop/feature/search/presentation/blocs/search_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:talker_dio_logger/talker_dio_logger_interceptor.dart';

final sl = GetIt.instance;

abstract class ServiceLocator {
  static void init(String? kakaoApiKey) {
    //dio
    sl.registerFactory(() {
      final dio = Dio();
      dio.options.headers["Authorization"] = "KakaoAK $kakaoApiKey";
      dio.interceptors.add((TalkerDioLogger()));
      return dio;
    });
    //client
    sl.registerFactory(() => BookClient(sl()));
    //datasource
    sl.registerLazySingleton<BookRemoteDataSource>(
        () => BookRemoteDataSourceImpl(bookClient: sl()));
    sl.registerLazySingleton<BookKeywordsLocalDataSource>(
        () => BookKeywordsLocalDataSourceImpl());
    sl.registerLazySingleton<CartLocalDataSource>(
        () => CartLocalDataSourceImpl());
    //repositories
    sl.registerLazySingleton<BookRepository>(() => BookRepositoryImpl(sl()));
    sl.registerLazySingleton<BookKeywordsRepository>(
        () => BookKeywordsRepositoryImpl(sl()));
    sl.registerLazySingleton<CartRepository>(
        () => CartRepositoryImpl(cartLocalDataSource: sl()));
    //usecases
    sl.registerLazySingleton(() => SearchBooksUseCase(bookRepository: sl()));
    sl.registerLazySingleton(
        () => AddBookKeywordUseCase(bookKeywordsRepository: sl()));
    sl.registerLazySingleton(
        () => GetBookKeywordsUseCase(bookKeywordsRepository: sl()));
    sl.registerLazySingleton(
        () => GetBooksFromCartUseCase(cartRepository: sl()));
    sl.registerLazySingleton(() => AddBookToCartUseCase(cartRepository: sl()));
    sl.registerLazySingleton(
        () => RemoveBookFromCartUseCase(cartRepository: sl()));
    //blocs
    sl.registerFactory(() => MainBloc());
    sl.registerFactory(() => HomeBloc(searchBooksUseCase: sl()));
    sl.registerFactory(() => SearchBloc(
          searchBooksUseCase: sl(),
          addBookKeywordUseCase: sl(),
          getBookKeywordsUseCase: sl(),
        ));
    sl.registerFactory(() => BookBloc(searchBooksUseCase: sl()));
    sl.registerFactory(() => CartBloc(
          getBooksFromCartUseCase: sl(),
          addBookToCartUseCase: sl(),
          removeBookFromCartUseCase: sl(),
        ));

    final isMock = (kakaoApiKey == null);
    Log.i('overrideMock: $isMock');
    if (isMock) {
      _overrideMock();
    }
  }

  static void _overrideMock() {
    if (sl.isRegistered<BookRemoteDataSource>()) {
      sl.unregister<BookRemoteDataSource>();
    }
    sl.registerLazySingleton<BookRemoteDataSource>(
        () => MockBookRemoteDataSource());
  }
}
