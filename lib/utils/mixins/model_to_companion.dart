import 'package:drift/drift.dart';

mixin ModelToCompanion<T extends UpdateCompanion> {
  /// Converts the model to a companion object.
  T toCompanion();
}