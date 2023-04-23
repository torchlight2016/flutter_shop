import 'package:hive_flutter/hive_flutter.dart';

abstract class BookKeywordsLocalDataSource {
  Future<List<String>> getKeywords();
  Future<List<String>> addKeyword(String item);
  Future<void> removeKeyword(int index);
}

class BookKeywordsLocalDataSourceImpl extends BookKeywordsLocalDataSource {
  Box<String>? _box;

  Future<Box<String>> _openBox() async =>
      _box ??= await Hive.openBox('book_keywords');

  @override
  Future<List<String>> addKeyword(String item) async {
    final box = await _openBox();
    final list = box.values.toList();
    final indexOf = list.indexOf(item);
    if (indexOf >= 0) {
      await box.deleteAt(indexOf);
    }
    await box.add(item);
    return box.values.toList().reversed.toList();
  }

  @override
  Future<List<String>> getKeywords() async {
    return (await _openBox()).values.toList().reversed.toList();
  }

  @override
  Future<void> removeKeyword(int index) async {
    return (await _openBox()).deleteAt(index);
  }
}
