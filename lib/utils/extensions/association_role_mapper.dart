import 'package:skakel_api/skakel_api.dart' as api;
import 'package:skakel_mobile/models/association_role.dart';

extension AssociationRoleToApi on AssociationRole {
  api.AssociationRole toApi() {
    switch (this) {
      case AssociationRole.admin:
        return api.AssociationRole.admin;
      case AssociationRole.member:
        return api.AssociationRole.member;
    }
  }
}

extension ApiToAssociationRole on api.AssociationRole {
  AssociationRole toModel() {
    switch(this) {
      case api.AssociationRole.admin:
        return AssociationRole.admin;
      case api.AssociationRole.member:
        return AssociationRole.member;
      default:
        throw Exception('Unknown association role: $this');
    }
  }
}