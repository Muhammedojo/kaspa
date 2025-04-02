import 'package:flutter/foundation.dart';
import 'package:path_provider/path_provider.dart';
import '../istorage.dart';
import 'package:isar/isar.dart';

class IsarImpl implements DatabaseStorage {
  late Isar _isar;

  IsarImpl() {
    //openDb();
  }

  @override
  Future openDb(String username) async {
    try {
      _isar = await Isar.open(
        name: username,
        [],
        inspector: kDebugMode,
        directory: await getApplicationDocumentsDirectory()
            .then((value) => value.path),
      );
    } on IsarError catch (e) {
      debugPrint("error opening db ...$e");
    }
  }

  @override
  Future<void> closeDb() async {
    if (_isar.isOpen) {
      await _isar.close();
    }
  }
}
