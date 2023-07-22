//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sync_status.g.dart';

class SyncStatus extends EnumClass {

  @BuiltValueEnumConst(wireName: r'Synced')
  static const SyncStatus synced = _$synced;
  @BuiltValueEnumConst(wireName: r'Updated')
  static const SyncStatus updated = _$updated;
  @BuiltValueEnumConst(wireName: r'Deleted')
  static const SyncStatus deleted = _$deleted;

  static Serializer<SyncStatus> get serializer => _$syncStatusSerializer;

  const SyncStatus._(String name): super(name);

  static BuiltSet<SyncStatus> get values => _$values;
  static SyncStatus valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class SyncStatusMixin = Object with _$SyncStatusMixin;

