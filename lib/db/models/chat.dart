import 'package:drift/drift.dart';
import 'package:skakel_mobile/db/base/base_model.dart';
import 'package:skakel_mobile/db/base/sync_status.dart';
import 'package:skakel_mobile/db/db.dart';
import 'package:skakel_mobile/db/models/user.dart';
import 'package:skakel_mobile/utils/mixins/model_to_companion.dart';

class Chat with ModelToCompanion<ChatEntityCompanion> implements BaseModel {
  @override
  int id;

  @override
  DateTime createdAt;

  @override
  DateTime updatedAt;

  @override
  int version;

  @override
  SyncStatus syncStatus;

  String? name;

  List<User> members;

  Chat({
    required this.id,
    required this.version,
    required this.createdAt,
    required this.updatedAt,
    required this.syncStatus,
    required this.members,
    this.name,
  });

  @override
  ChatEntityCompanion toCompanion() {
    return ChatEntityCompanion(
      id: Value(id),
      version: Value(version),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
      syncStatus: Value(syncStatus),
      name: Value(name),
    );
  }
}
