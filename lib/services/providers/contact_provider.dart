import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:isar/isar.dart';
import 'package:skakel_mobile/collections/contact_entity.dart';
import 'package:skakel_mobile/services/providers/isar_provider.dart';

final contactBoxProvider = Provider.autoDispose((ref) {
  final isar = ref.watch(databaseProvider).isar;
  return isar.contactEntitys;
});

final contactStreamProvider = StreamProvider.autoDispose((ref) {
  final contactBox = ref.watch(contactBoxProvider);
  return contactBox.where().sortByFirstName().watch();
});

final searchContactsProvider =
    StreamProvider.autoDispose.family((ref, String text) async* {
  final contactBox = ref.watch(contactBoxProvider);

  yield* contactBox
      .where()
      .firstNameStartsWith(text)
      .or()
      .lastNameStartsWith(text)
      .sortByCreatedAtDesc()
      .watch();
});
