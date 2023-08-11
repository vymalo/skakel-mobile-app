import 'package:drift/drift.dart';
import 'package:skakel_mobile/utils/mixins/model_to_companion.dart';

/// Converts a list of models to a list of companion objects.
extension ModelToCompanionExtension<T extends UpdateCompanion>
    on Iterable<ModelToCompanion<T>> {
  List<T> toCompanion() {
    return map((e) => e.toCompanion()).toList();
  }
}
