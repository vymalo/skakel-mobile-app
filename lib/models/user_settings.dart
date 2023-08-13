import 'package:drift/drift.dart' show Value;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:skakel_mobile/db/base/base_model.dart';
import 'package:skakel_mobile/db/base/sync_status.dart';
import 'package:skakel_mobile/db/db.dart';
import 'package:skakel_mobile/utils/freezed.dart';
import 'package:skakel_mobile/utils/mixins/model_to_companion.dart';

part 'user_settings.g.dart';
part 'user_settings.freezed.dart';

@appFreezed
class UserSettings
    with _$UserSettings, ModelToCompanion<UserSettingsEntityCompanion>
    implements BaseModel {
  const UserSettings._();

  @Implements<SyncableModel>()
  const factory UserSettings({
    required String id,
    required int version,
    required DateTime createdAt,
    required DateTime updatedAt,
    required SyncStatus syncStatus,
    required String userId,
    String? language,
    String? theme,
    bool? notifications,
  }) = _UserSettings;

  @override
  UserSettingsEntityCompanion toCompanion() {
    return UserSettingsEntityCompanion(
      id: Value(id),
      version: Value(version),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
      syncStatus: Value(syncStatus),
      userId: Value(userId),
      language: Value(language),
      theme: Value(theme),
      notifications: Value(notifications),
    );
  }

  // Add this factory method to create an instance from JSON data
  factory UserSettings.fromJson(Map<String, dynamic> json) =>
      _$UserSettingsFromJson(json);
}
