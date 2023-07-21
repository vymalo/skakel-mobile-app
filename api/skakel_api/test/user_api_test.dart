import 'package:test/test.dart';
import 'package:skakel_api/skakel_api.dart';


/// tests for UserApi
void main() {
  final instance = SkakelApi().getUserApi();

  group(UserApi, () {
    // Create a new user
    //
    //Future<User> createUser({ User user }) async
    test('test createUser', () async {
      // TODO
    });

    // Delete a user by ID
    //
    //Future deleteUser(int id) async
    test('test deleteUser', () async {
      // TODO
    });

    // Get all users
    //
    //Future<BuiltList<User>> getAllUsers() async
    test('test getAllUsers', () async {
      // TODO
    });

    // Get a user by ID
    //
    //Future<User> getUserById(int id) async
    test('test getUserById', () async {
      // TODO
    });

    // Update an existing user
    //
    //Future<User> updateUser(int id, { User user }) async
    test('test updateUser', () async {
      // TODO
    });

  });
}
