abstract class BaseRepo<E> {
  /// Saves the entity to the database
  Future<E> save(E entity);

  /// Deletes the entity from the database
  Future<void> delete(E entity);

  /// Gets the entity by id
  Stream<E> getById(String id);

  /// Gets the entity by id
  Future<E?> fetchById(String id);

  /// Streams all entities
  Stream<List<E>> streamAll({
    Map<String, dynamic>? query,
  });
}

abstract class SyncableRepo<T> {
  /// Syncs the local data with the remote data
  Future<void> sync();
}