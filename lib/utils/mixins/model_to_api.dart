import 'package:skakel_api/skakel_api.dart';

mixin ModelToApi<B extends Base, Info> {
  B toApi();

  Info toInfo();
}
