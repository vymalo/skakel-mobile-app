import 'package:skakel_mobile/db/db.dart';
import 'package:skakel_mobile/models/chat_member.dart';

/// This extension is used to convert a list of db models to a list of models.
extension ChatsToModel on List<chat_members> {
  List<ChatMember> toModel() {
    return map((cm) => cm.toModel()).toList();
  }
}

/// This extension is used to convert a Stream of db models to a Stream of models.
extension ChatsStreamToModel on Stream<List<chat_members>> {
  Stream<List<ChatMember>> toModel() {
    return map((cm) => cm.toModel());
  }
}

/// This extension is used to convert a Stream of db model to a Stream of model.
extension ChatStreamToModel on Stream<chat_members> {
  Stream<ChatMember> toModel() {
    return map((cm) => cm.toModel());
  }
}

/// This extension is used to convert a db model to a model object.
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
