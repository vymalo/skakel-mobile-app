//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'attachment_type.g.dart';

class AttachmentType extends EnumClass {

  @BuiltValueEnumConst(wireName: r'Image')
  static const AttachmentType image = _$image;
  @BuiltValueEnumConst(wireName: r'Video')
  static const AttachmentType video = _$video;
  @BuiltValueEnumConst(wireName: r'Audio')
  static const AttachmentType audio = _$audio;
  @BuiltValueEnumConst(wireName: r'Document')
  static const AttachmentType document = _$document;

  static Serializer<AttachmentType> get serializer => _$attachmentTypeSerializer;

  const AttachmentType._(String name): super(name);

  static BuiltSet<AttachmentType> get values => _$values;
  static AttachmentType valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class AttachmentTypeMixin = Object with _$AttachmentTypeMixin;

