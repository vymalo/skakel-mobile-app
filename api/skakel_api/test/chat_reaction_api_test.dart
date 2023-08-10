import 'package:test/test.dart';
import 'package:skakel_api/skakel_api.dart';


/// tests for ChatReactionApi
void main() {
  final instance = SkakelApi().getChatReactionApi();

  group(ChatReactionApi, () {
    // Add a reaction to a chat message
    //
    //Future<ChatReaction> addReactionToChatMessage({ ChatReaction chatReaction }) async
    test('test addReactionToChatMessage', () async {
      // TODO
    });

    // Remove a reaction from a chat message
    //
    //Future<ChatReaction> getReactionFromChatMessage(String id) async
    test('test getReactionFromChatMessage', () async {
      // TODO
    });

    // Get reactions from a chat message
    //
    //Future<BuiltList<ChatReaction>> getReactionsFromChatMessage(String chatId) async
    test('test getReactionsFromChatMessage', () async {
      // TODO
    });

    // Put a reaction from a chat message
    //
    //Future<BuiltList<ChatReaction>> putReactionFromChatMessage(String id, { ChatReactionInfo chatReactionInfo }) async
    test('test putReactionFromChatMessage', () async {
      // TODO
    });

    // Remove a reaction from a chat message
    //
    //Future removeReactionFromChatMessage(String id) async
    test('test removeReactionFromChatMessage', () async {
      // TODO
    });

  });
}
