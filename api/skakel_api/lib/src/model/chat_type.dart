//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'chat_type.g.dart';

class ChatType extends EnumClass {

  @BuiltValueEnumConst(wireName: r'Simple')
  static const ChatType simple = _$simple;
  @BuiltValueEnumConst(wireName: r'Group')
  static const ChatType group = _$group;

  static Serializer<ChatType> get serializer => _$chatTypeSerializer;

  const ChatType._(String name): super(name);

  static BuiltSet<ChatType> get values => _$values;
  static ChatType valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class ChatTypeMixin = Object with _$ChatTypeMixin;

