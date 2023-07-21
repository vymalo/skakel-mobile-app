import 'package:test/test.dart';
import 'package:skakel_api/skakel_api.dart';


/// tests for AttachmentApi
void main() {
  final instance = SkakelApi().getAttachmentApi();

  group(AttachmentApi, () {
    // Delete an attachment by ID
    //
    //Future deleteAttachment(int id) async
    test('test deleteAttachment', () async {
      // TODO
    });

    // Get an attachment by ID
    //
    //Future<Uint8List> getAttachmentById(int id) async
    test('test getAttachmentById', () async {
      // TODO
    });

    // Get attachments by query parameters
    //
    //Future<BuiltList<Attachment>> getAttachmentsByQuery({ int chatId, int userId, String type }) async
    test('test getAttachmentsByQuery', () async {
      // TODO
    });

    // Upload a new attachment
    //
    //Future uploadAttachment({ MultipartFile body }) async
    test('test uploadAttachment', () async {
      // TODO
    });

  });
}
