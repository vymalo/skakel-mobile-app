//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'attachment_type.g.dart';

class AttachmentType extends EnumClass {

  @BuiltValueEnumConst(wireName: r'image')
  static const AttachmentType image = _$image;
  @BuiltValueEnumConst(wireName: r'video')
  static const AttachmentType video = _$video;
  @BuiltValueEnumConst(wireName: r'audio')
  static const AttachmentType audio = _$audio;
  @BuiltValueEnumConst(wireName: r'file')
  static const AttachmentType file = _$file;
  @BuiltValueEnumConst(wireName: r'location')
  static const AttachmentType location = _$location;
  @BuiltValueEnumConst(wireName: r'contact')
  static const AttachmentType contact = _$contact;
  @BuiltValueEnumConst(wireName: r'sticker')
  static const AttachmentType sticker = _$sticker;
  @BuiltValueEnumConst(wireName: r'link')
  static const AttachmentType link = _$link;
  @BuiltValueEnumConst(wireName: r'poll')
  static const AttachmentType poll = _$poll;
  @BuiltValueEnumConst(wireName: r'other')
  static const AttachmentType other = _$other;

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

