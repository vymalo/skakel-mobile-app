import 'package:test/test.dart';
import 'package:skakel_api/skakel_api.dart';


/// tests for UserSettingsApi
void main() {
  final instance = SkakelApi().getUserSettingsApi();

  group(UserSettingsApi, () {
    // Get user settings by user ID
    //
    //Future<UserSettings> getUserSettingsById(int id) async
    test('test getUserSettingsById', () async {
      // TODO
    });

    // Update user settings
    //
    //Future<UserSettings> updateUserSettings(int id, { UserSettings userSettings }) async
    test('test updateUserSettings', () async {
      // TODO
    });

  });
}
