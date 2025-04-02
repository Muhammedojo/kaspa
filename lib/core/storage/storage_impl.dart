import 'istorage.dart';

class LocalStorageImpl implements LocalStorage {
  final DatabaseStorage databaseStorage;
  final CacheStorage cacheStorage;

  const LocalStorageImpl(
      {required this.databaseStorage, required this.cacheStorage});

  @override
  Future<void> closeDb() => databaseStorage.closeDb();

  @override
  Future<void> openDb(String username) => databaseStorage.openDb(username);
}
