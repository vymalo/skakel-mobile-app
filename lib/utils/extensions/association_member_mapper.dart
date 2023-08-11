import 'package:skakel_api/skakel_api.dart' as api;
import 'package:skakel_mobile/db/db.dart';
import 'package:skakel_mobile/models/association_member.dart';
import 'package:skakel_mobile/utils/extensions/association_role_mapper.dart';
import 'package:skakel_mobile/utils/extensions/sync_status_mapper.dart';

extension AssociationMemberToApi on AssociationMember {
  api.AssociationMember toApi() {
    final builder = api.AssociationMemberBuilder();
    builder.id = id;
    builder.version = version;
    builder.createdAt = createdAt;
    builder.updatedAt = updatedAt;
    builder.syncStatus = syncStatus.toApi();
    builder.associationId = associationId;
    builder.userId = userId;
    builder.role = role.toApi();

    return builder.build();
  }
}

extension ApiAssociationMemberIterableToApi on Iterable<AssociationMember> {
  List<api.AssociationMember> toApi() {
    return map((event) => event.toApi()).toList();
  }
}

extension ApiAssociationMemberToModel on api.AssociationMember {
  AssociationMember toModel() {
    return AssociationMember(
      id: id!,
      version: version!,
      createdAt: createdAt!,
      updatedAt: updatedAt!,
      syncStatus: syncStatus!.toModel(),
      associationId: associationId!,
      userId: userId!,
      role: role!.toModel(),
    );
  }
}

extension ApiIterableAssociationMemberToModel
    on Iterable<api.AssociationMember> {
  List<AssociationMember> toModel() {
    return map((event) => event.toModel()).toList();
  }
}

extension AssociationMemberToModel on association_members {
  AssociationMember toModel() {
    return AssociationMember(
      id: id,
      version: version,
      createdAt: createdAt,
      updatedAt: updatedAt,
      syncStatus: syncStatus,
      associationId: associationId,
      userId: userId,
      role: role,
    );
  }
}

extension AssociationMemberIterableToModel on Iterable<association_members> {
  List<AssociationMember> toModel() {
    return map((event) => event.toModel()).toList();
  }
}

extension AssociationMemberIterableStreamToModel
    on Stream<Iterable<association_members>> {
  Stream<List<AssociationMember>> toModel() {
    return map((event) => event.toModel());
  }
}

extension AssociationMemberStreamToModel on Stream<association_members> {
  Stream<AssociationMember> toModel() {
    return map((event) => event.toModel());
  }
}

extension AssociationMemberFutureToModel on Future<association_members?> {
  Future<AssociationMember?> toModel() {
    return then((value) => value?.toModel());
  }
}
