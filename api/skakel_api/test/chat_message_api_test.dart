import 'package:test/test.dart';
import 'package:skakel_api/skakel_api.dart';


/// tests for ChatMessageApi
void main() {
  final instance = SkakelApi().getChatMessageApi();

  group(ChatMessageApi, () {
    // Add a reaction to a chat message
    //
    //Future addReactionToChatMessage(int id, { AddReactionToChatMessageRequest addReactionToChatMessageRequest }) async
    test('test addReactionToChatMessage', () async {
      // TODO
    });

    // Delete a chat message by ID
    //
    //Future deleteChatMessage(int id) async
    test('test deleteChatMessage', () async {
      // TODO
    });

    // Get all chat messages
    //
    //Future<BuiltList<ChatMessage>> getAllChatMessages() async
    test('test getAllChatMessages', () async {
      // TODO
    });

    // Get a chat message by ID
    //
    //Future<ChatMessage> getChatMessageById(int id) async
    test('test getChatMessageById', () async {
      // TODO
    });

    // Remove a reaction from a chat message
    //
    //Future removeReactionFromChatMessage(int id, String reaction) async
    test('test removeReactionFromChatMessage', () async {
      // TODO
    });

    // Send a message to a chat
    //
    //Future<ChatMessage> sendMessageToChat(int id, { ChatMessage chatMessage }) async
    test('test sendMessageToChat', () async {
      // TODO
    });

    // Update an existing chat message
    //
    //Future<ChatMessage> updateChatMessage(int id, { ChatMessage chatMessage }) async
    test('test updateChatMessage', () async {
      // TODO
    });

  });
}
