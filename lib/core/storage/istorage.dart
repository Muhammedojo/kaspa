abstract class LocalStorage implements DatabaseStorage, CacheStorage {}

abstract class CacheStorage {}

abstract class DatabaseStorage {
  Future<void> openDb(String username);
  Future<void> closeDb();
}
