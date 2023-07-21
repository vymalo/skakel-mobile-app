import 'package:test/test.dart';
import 'package:skakel_api/skakel_api.dart';


/// tests for ChatApi
void main() {
  final instance = SkakelApi().getChatApi();

  group(ChatApi, () {
    // Add a member to a chat
    //
    //Future<Chat> addMemberToChat(int id, { User user }) async
    test('test addMemberToChat', () async {
      // TODO
    });

    // Create a new chat
    //
    //Future<Chat> createChat({ Chat chat }) async
    test('test createChat', () async {
      // TODO
    });

    // Delete a chat by ID
    //
    //Future deleteChat(int id) async
    test('test deleteChat', () async {
      // TODO
    });

    // Get all chats
    //
    //Future<BuiltList<Chat>> getAllChats() async
    test('test getAllChats', () async {
      // TODO
    });

    // Get a chat by ID
    //
    //Future<Chat> getChatById(int id) async
    test('test getChatById', () async {
      // TODO
    });

    // Remove a member from a chat
    //
    //Future removeMemberFromChat(int id, int userId) async
    test('test removeMemberFromChat', () async {
      // TODO
    });

    // Update an existing chat
    //
    //Future<Chat> updateChat(int id, { Chat chat }) async
    test('test updateChat', () async {
      // TODO
    });

  });
}
