import 'package:skakel_api/skakel_api.dart' as api;
import 'package:skakel_mobile/db/db.dart';
import 'package:skakel_mobile/models/chat_member.dart';
import 'package:skakel_mobile/utils/extensions/sync_status_mapper.dart';

/// This extension is used to convert a list of models to a list of api objects.
extension ModelToApiChatMember on ChatMember {
  api.ChatMember toApi() {
    final apiChatMember = api.ChatMemberBuilder()
      ..id = id
      ..version = version
      ..createdAt = createdAt
      ..updatedAt = updatedAt
      ..syncStatus = syncStatus.toApi()
      ..chatId = chatId
      ..userId = memberId;

    return apiChatMember.build();
  }
}

extension ModelToApiIterableChatMember on List<ChatMember> {
  Iterable<api.ChatMember> toApi() {
    return map((e) => e.toApi());
  }
}

/// This extension is used to convert a list of api models to a list of models.
extension ApiChatMembersToModel on Iterable<api.ChatMember> {
  List<ChatMember> toModel() {
    return map((e) => e.toModel()).toList();
  }
}

extension ApiChatMemberToModel on api.ChatMember {
  ChatMember toModel() => ChatMember(
        id: id!,
        createdAt: createdAt!,
        updatedAt: updatedAt!,
        syncStatus: syncStatus!.toModel(),
        version: version!,
        chatId: chatId,
        memberId: userId,
      );
}

extension ChatMemberToModel on chat_members {
  ChatMember toModel() => ChatMember(
        id: id,
        createdAt: createdAt,
        updatedAt: updatedAt,
        syncStatus: syncStatus,
        version: version,
        memberId: memberId,
        chatId: chatId,
      );
}

extension ChatMembersToModel on Iterable<chat_members> {
  List<ChatMember> toModel() {
    return map((e) => e.toModel()).toList();
  }
}

extension ChatMemberStreamListToModel on Stream<List<chat_members>> {
  Stream<List<ChatMember>> toModel() {
    return map((e) => e.toModel());
  }
}

extension ChatMemberStreamToModel on Stream<chat_members> {
  Stream<ChatMember> toModel() {
    return map((e) => e.toModel());
  }
}

extension ChatMemberFutureToModel on Future<chat_members?> {
  Future<ChatMember?> toModel() {
    return then((e) => e?.toModel());
  }
}
