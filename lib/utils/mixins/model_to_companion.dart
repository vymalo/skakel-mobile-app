import 'package:drift/drift.dart';

/// This mixin is used to convert a model to a companion object.
mixin ModelToCompanion<T extends UpdateCompanion> {
  /// Converts the model to a companion object.
  T toCompanion();
}