import 'package:test/test.dart';
import 'package:skakel_api/skakel_api.dart';


/// tests for CallApi
void main() {
  final instance = SkakelApi().getCallApi();

  group(CallApi, () {
    // End a call by ID
    //
    //Future endCall(int id) async
    test('test endCall', () async {
      // TODO
    });

    // Get a call by ID
    //
    //Future<Call> getCallById(int id) async
    test('test getCallById', () async {
      // TODO
    });

    // Get calls by query parameters
    //
    //Future<BuiltList<Call>> getCallsByQuery({ int userId, String callType, DateTime startTime, DateTime endTime }) async
    test('test getCallsByQuery', () async {
      // TODO
    });

    // Initiate a new call
    //
    //Future<Call> initiateCall({ Call call }) async
    test('test initiateCall', () async {
      // TODO
    });

    // Invite a participant to a call
    //
    //Future<Call> inviteParticipantToCall(int id, { User user }) async
    test('test inviteParticipantToCall', () async {
      // TODO
    });

    // Remove a participant from a call
    //
    //Future removeParticipantFromCall(int id, int userId) async
    test('test removeParticipantFromCall', () async {
      // TODO
    });

  });
}
