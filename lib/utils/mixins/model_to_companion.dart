import 'package:drift/drift.dart';

/// This mixin is used to convert a model to a companion object.
mixin ModelToCompanion<T extends UpdateCompanion> {
  /// Converts the model to a companion object.
  T toCompanion();
}

/// Converts a list of models to a list of companion objects.
extension ModelToCompanionExtension<T extends UpdateCompanion>
    on Iterable<ModelToCompanion<T>> {
  List<T> toCompanion() {
    return map((e) => e.toCompanion()).toList();
  }
}
