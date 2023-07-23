import 'package:skakel_api/skakel_api.dart' as api;
import 'package:skakel_mobile/models/chat_type.dart';

/// This extension is used to convert a ChatType to an api ChatType.
extension ChatTypeToApi on ChatType {
  api.ChatType toApi() {
    switch (this) {
      case ChatType.simple:
        return api.ChatType.simple;
      case ChatType.group:
        return api.ChatType.group;
      default:
        throw Exception('ChatTypeMapper.toApi: unknown sync status');
    }
  }
}

/// This extension is used to convert an api ChatType to a ChatType.
extension ApiToChatType on api.ChatType {
  ChatType toModel() {
    switch (this) {
      case api.ChatType.simple:
        return ChatType.simple;
      case api.ChatType.group:
        return ChatType.group;
      default:
        throw Exception('ChatTypeMapper.toModel: unknown sync status');
    }
  }
}
