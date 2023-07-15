import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:skakel_mobile/services/providers/isar_provider.dart';

final initProvider = FutureProvider((ref) async {
  return Future.wait([
    ref.watch(databaseProvider).init(),
    Future.delayed(Duration(seconds: 2)),
  ]);
});
