import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_shop/app/book_shop_app.dart';
import 'package:flutter_shop/service_locator.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:talker/talker.dart';
import 'package:talker_bloc_logger/talker_bloc_logger.dart';

Future<void> main() async {
  final talker = Talker();
  Bloc.observer = TalkerBlocObserver(talker: talker);
  await Hive.initFlutter();
  ServiceLocator.init();
  runApp(const BookShopApp());
}
