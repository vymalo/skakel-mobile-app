import 'package:logging/logging.dart';
import 'package:skakel_api/skakel_api.dart' as api;
import 'package:skakel_mobile/db/base/base_repo.dart';
import 'package:skakel_mobile/models/association.dart';
import 'package:skakel_mobile/utils/extensions/association_mapper.dart';
import 'package:skakel_mobile/utils/logging.dart';

final log = Logger('AssociationRemoteDataSource');

class AssociationRemoteDataSource extends BaseRepo<Association> {
  final api.AssociationApi _api;

  AssociationRemoteDataSource(this._api);

  @override
  Future<void> delete(Association model) async {
    try {
      log.d('Deleting chat message with id: ${model.id}');
      await _api.deleteAssociationById(id: model.id);
      log.d('Deleted chat message with id: ${model.id}');
    } catch (e, s) {
      log.e('Error deleting chat:', e, s);
    }
  }

  @override
  Stream<Association> getById(String id) async* {
    try {
      log.d('Getting chat by id: $id');
      final data = await fetchById(id);
      if (data == null) {
        log.d('Data is null');
        return;
      }

      log.d('Got chat by id: $id');
      yield data;
    } catch (e, s) {
      log.e('Error getting chat by id:', e, s);
    }
  }

  @override
  Future<Association> save(Association model) async {
    try {
      final response = await _api.addAssociation(
        associationInfo: model.toApi(),
      );
      final data = response.data;
      if (data == null) {
        throw Exception('AssociationRemoteDataSource.save: data is null');
      }

      return data.toModel();
    } catch (e, s) {
      log.e('Error saving chat:', e, s);
      rethrow;
    }
  }

  @override
  Stream<List<Association>> streamAll({Map<String, dynamic>? query}) async* {
    try {
      final response = await _api.queryAssociations();
      final data = response.data;
      if (data == null) {
        log.d('Data is null');
        return;
      }

      yield data.toModel();
    } catch (e, s) {
      log.e('Error streaming all chats:', e, s);
    }
  }

  @override
  Future<Association?> fetchById(String id) async {
    try {
      final response = await _api.getAssociationById(id: id);
      return response.data?.toModel();
    } catch (e, s) {
      log.e('Error fetching chat by id:', e, s);
      return null;
    }
  }
}
