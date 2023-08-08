import 'package:built_value/json_object.dart';

const _kSeparator = ":**:";

extension JsonObjectToString on JsonObject {
  String toJsonString() {
    if (isBool) {
      return "bool$_kSeparator$asBool";
    }
    if (isNum) {
      return "int$_kSeparator$asNum";
    }
    if (isString) {
      return "string$_kSeparator$asString";
    }
    if (isList) {
      return "list$_kSeparator${asList.map((e) => e.toJsonString()).join(_kSeparator)}";
    }
    if (isMap) {
      return "map$_kSeparator${asMap.entries.map((e) => "${e.key.toJsonString()}$_kSeparator${e.value.toJsonString()}").join(_kSeparator)}";
    }
    if (isString) {
      return "string$_kSeparator$asString";
    }
    throw Exception("Unknown type");
  }
}

extension StrnigToJsonObject on String {
  JsonObject toJsonObject() {
    final parts = split(_kSeparator);
    if (parts.length != 2) {
      throw Exception("Invalid json mapped string");
    }

    final type = parts[0];
    final value = parts[1];
    switch (type) {
      case "bool":
        return JsonObject(bool.fromEnvironment(value));
      case "int":
        return JsonObject(int.parse(value));
      case "string":
        return JsonObject(value);
      case "list":
        return JsonObject(
            value.split(_kSeparator).map((e) => e.toJsonObject()).toList());
      case "map":
        return JsonObject(Map.fromEntries(value.split(_kSeparator).map((e) {
          final parts = e.split(_kSeparator);
          return MapEntry(parts[0].toJsonObject(), parts[1].toJsonObject());
        })));
      default:
        throw Exception("Unknown type");
    }
  }
}
