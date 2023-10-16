import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_shop/app/book_shop_app.dart';
import 'package:flutter_shop/service_locator.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:talker/talker.dart';
import 'package:talker_bloc_logger/talker_bloc_logger.dart';

Future<void> main() async {
  const isMock = String.fromEnvironment("is_mock") == 'true';
  await dotenv.load(fileName: 'assets/.env', isOptional: true);

  final talker = Talker();
  Bloc.observer = TalkerBlocObserver(talker: talker);

  await Hive.initFlutter();
  final kakaoApiKey = dotenv.maybeGet('KAKAO_API_KEY');
  ServiceLocator.init(!isMock ? kakaoApiKey : null);
  runApp(const BookShopApp());
}
