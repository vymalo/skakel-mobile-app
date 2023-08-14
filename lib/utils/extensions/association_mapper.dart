import 'package:skakel_api/skakel_api.dart' as api;
import 'package:skakel_mobile/db/db.dart';
import 'package:skakel_mobile/models/association.dart';
import 'package:skakel_mobile/utils/extensions/association_chat_mapper.dart';
import 'package:skakel_mobile/utils/extensions/association_member_mapper.dart';
import 'package:skakel_mobile/utils/extensions/sync_status_mapper.dart';

extension ModelToApi on Association {
  api.AssociationInfo toApi() {
    final builder = api.AssociationBuilder();
    builder.id = id;
    builder.version = version;
    builder.createdAt = createdAt;
    builder.updatedAt = updatedAt;
    builder.syncStatus = syncStatus.toApi();
    builder.members.addAll(members.toApi());
    builder.chats.addAll(this.chats.toApi());
    builder.description = description;
    builder.name = name;

    return builder.build();
  }
}

extension ApiAssociationToModel on api.Association {
  Association toModel() {
    return Association(
      id: id!,
      version: version!,
      createdAt: createdAt!,
      updatedAt: updatedAt!,
      syncStatus: syncStatus!.toModel(),
      members: members.toModel(),
      chats: this.chats?.toModel() ?? [],
      description: description,
      name: name,
    );
  }
}

extension ApiIterableAssociationToModel on Iterable<api.Association> {
  List<Association> toModel() {
    return map((event) => event.toModel()).toList();
  }
}

extension ExtendedAssociationToModel on ExtendedAssociation {
  Association toModel() {
    return Association(
      id: item1.id,
      version: item1.version,
      createdAt: item1.createdAt,
      updatedAt: item1.updatedAt,
      syncStatus: item1.syncStatus,
      members: item2.toModel(),
      chats: item3.toModel(),
      description: item1.description,
      name: item1.name,
    );
  }
}

extension ExtendedAssociationIterableToModel on Iterable<ExtendedAssociation> {
  List<Association> toModel() {
    return map((event) => event.toModel()).toList();
  }
}

extension ExtendedAssociationIterableStreamToModel
    on Stream<Iterable<ExtendedAssociation>> {
  Stream<List<Association>> toModel() {
    return map((event) => event.toModel());
  }
}

extension ExtendedAssociationStreamToModel on Stream<ExtendedAssociation> {
  Stream<Association> toModel() {
    return map((event) => event.toModel());
  }
}

extension ExtendedAssociationFutureToModel on Future<ExtendedAssociation?> {
  Future<Association?> toModel() {
    return then((value) => value?.toModel());
  }
}
