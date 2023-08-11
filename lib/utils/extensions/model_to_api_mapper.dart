import 'package:skakel_api/skakel_api.dart';
import 'package:skakel_mobile/utils/mixins/model_to_api.dart';

extension ModelToCompanionExtension<T extends Base, I>
    on Iterable<ModelToApi<T, I>> {
  List<T> toApi() {
    return map((e) => e.toApi()).toList();
  }

  List<I> toInfo() {
    return map((e) => e.toInfo()).toList();
  }
}
