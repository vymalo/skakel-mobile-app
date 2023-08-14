import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:skakel_api/skakel_api.dart';
import 'package:skakel_mobile/services/dio.dart';

final apiProvider = Provider((ref) => SkakelApi(
      dio: ref.watch(dioProvider),
    ));
