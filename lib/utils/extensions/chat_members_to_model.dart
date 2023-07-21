import 'package:skakel_mobile/db/db.dart';
import 'package:skakel_mobile/db/models/chat_member.dart';

extension ChatsToModel on List<chat_members> {
  List<ChatMember> toModel() {
    return map((cm) => cm.toModel()).toList();
  }
}

extension ChatsStreamToModel on Stream<List<chat_members>> {
  Stream<List<ChatMember>> toModel() {
    return map((cm) => cm.toModel());
  }
}

extension ChatStreamToModel on Stream<chat_members> {
  Stream<ChatMember> toModel() {
    return map((cm) => cm.toModel());
  }
}

extension ChatToModel on chat_members {
  ChatMember toModel() {
    return ChatMember(
      id: id,
      createdAt: createdAt,
      updatedAt: updatedAt,
      syncStatus: syncStatus,
      version: version,
      chatId: chatId,
      memberId: memberId,
    );
  }
}
