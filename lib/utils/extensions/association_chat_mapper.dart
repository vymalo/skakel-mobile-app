import 'package:skakel_api/skakel_api.dart' as api;
import 'package:skakel_mobile/db/db.dart';
import 'package:skakel_mobile/models/association_chat.dart';
import 'package:skakel_mobile/utils/extensions/sync_status_mapper.dart';

extension AssociationChatToApi on AssociationChat {
  api.AssociationChat toApi() {
    final builder = api.AssociationChatBuilder();
    builder.id = id;
    builder.version = version;
    builder.createdAt = createdAt;
    builder.updatedAt = updatedAt;
    builder.syncStatus = syncStatus.toApi();
    builder.associationId = associationId;
    builder.chatId = chatId;

    return builder.build();
  }
}

extension ApiAssociationChatIterableToApi on Iterable<AssociationChat> {
  List<api.AssociationChat> toApi() {
    return map((event) => event.toApi()).toList();
  }
}

extension ApiAssociationChatToModel on api.AssociationChat {
  AssociationChat toModel() {
    return AssociationChat(
      id: id!,
      version: version!,
      createdAt: createdAt!,
      updatedAt: updatedAt!,
      syncStatus: syncStatus!.toModel(),
      associationId: associationId,
      chatId: chatId,
    );
  }
}

extension ApiIterableAssociationChatToModel on Iterable<api.AssociationChat> {
  List<AssociationChat> toModel() {
    return map((event) => event.toModel()).toList();
  }
}

extension AssociationChatToModel on association_chats {
  AssociationChat toModel() {
    return AssociationChat(
      id: id,
      version: version,
      createdAt: createdAt,
      updatedAt: updatedAt,
      syncStatus: syncStatus,
      associationId: associationId,
      chatId: chatId,
    );
  }
}

extension AssociationChatIterableToModel on Iterable<association_chats> {
  List<AssociationChat> toModel() {
    return map((event) => event.toModel()).toList();
  }
}

extension AssociationChatIterableStreamToModel
    on Stream<Iterable<association_chats>> {
  Stream<List<AssociationChat>> toModel() {
    return map((event) => event.toModel());
  }
}

extension AssociationChatStreamToModel on Stream<association_chats> {
  Stream<AssociationChat> toModel() {
    return map((event) => event.toModel());
  }
}

extension AssociationChatFutureToModel on Future<association_chats?> {
  Future<AssociationChat?> toModel() {
    return then((value) => value?.toModel());
  }
}
