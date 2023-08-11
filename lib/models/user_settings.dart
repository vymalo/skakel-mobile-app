import 'package:drift/drift.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:skakel_mobile/db/base/base_model.dart';
import 'package:skakel_mobile/db/base/sync_status.dart';
import 'package:skakel_mobile/db/db.dart';
import 'package:skakel_mobile/utils/mixins/model_to_companion.dart';

part 'user_settings.g.dart';

@JsonSerializable()
class UserSettings
    with ModelToCompanion<UserSettingsEntityCompanion>
    implements SyncableModel {
  @override
  String id;

  @override
  DateTime createdAt;

  @override
  DateTime updatedAt;

  @override
  int version;

  @override
  SyncStatus syncStatus;

  String userId;
  String? language;
  String? theme;
  bool? notifications;

  UserSettings({
    required this.id,
    required this.version,
    required this.createdAt,
    required this.updatedAt,
    required this.syncStatus,
    required this.userId,
    this.language,
    this.theme,
    this.notifications,
  });

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

  // Add this method to convert the instance to JSON data
  Map<String, dynamic> toJson() => _$UserSettingsToJson(this);
}
