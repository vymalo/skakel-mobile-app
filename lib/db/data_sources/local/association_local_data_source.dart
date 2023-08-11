import 'package:skakel_mobile/db/base/base_repo.dart';
import 'package:skakel_mobile/db/db.dart';
import 'package:skakel_mobile/models/association.dart';
import 'package:skakel_mobile/utils/extensions/association_mapper.dart';
import 'package:skakel_mobile/utils/extensions/model_to_companion_mapper.dart';

class AssociationLocalDataSource extends BaseRepo<Association> {
  final AppDatabase _db;

  AssociationLocalDataSource(this._db);

  @override
  Future<void> delete(Association model) async {
    await _db.deleteAssociation(
      model.toCompanion(),
      model.members.toCompanion(),
    );
  }

  @override
  Stream<Association> getById(String id) {
    return _db.watchAssociation(id).toModel();
  }

  @override
  Future<Association> save(Association model) async {
    final saved = await _db.insertAssociation(
      model.toCompanion(),
      model.members.toCompanion(),
    );
    return saved.toModel();
  }

  @override
  Stream<List<Association>> streamAll({Map<String, dynamic>? query}) {
    final results = _db.watchAllAssociations();
    return results.toModel();
  }

  @override
  Future<Association?> fetchById(String id) =>
      _db.getAssociation(id).then((value) => value?.toModel());
}
