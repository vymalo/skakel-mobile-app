import 'package:test/test.dart';
import 'package:skakel_api/skakel_api.dart';


/// tests for ChatMemberApi
void main() {
  final instance = SkakelApi().getChatMemberApi();

  group(ChatMemberApi, () {
    // Add a member to a chat
    //
    //Future<ChatMember> addMemberToChat({ ChatMemberInfo chatMemberInfo }) async
    test('test addMemberToChat', () async {
      // TODO
    });

    // Get a chat member by ID
    //
    //Future<ChatMember> getChatMemberById(String id) async
    test('test getChatMemberById', () async {
      // TODO
    });

    // Get chat members by chat ID
    //
    //Future<ChatMember> getChatMembersByChatId(String chatId) async
    test('test getChatMembersByChatId', () async {
      // TODO
    });

    // Remove a member from a chat
    //
    //Future removeMemberFromChat(String id) async
    test('test removeMemberFromChat', () async {
      // TODO
    });

    // Update an existing chat member
    //
    //Future<ChatMember> updateChatMember(String id, { ChatMemberInfo chatMemberInfo }) async
    test('test updateChatMember', () async {
      // TODO
    });

  });
}
