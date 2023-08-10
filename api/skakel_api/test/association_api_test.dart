import 'package:test/test.dart';
import 'package:skakel_api/skakel_api.dart';


/// tests for AssociationApi
void main() {
  final instance = SkakelApi().getAssociationApi();

  group(AssociationApi, () {
    // Add an association by ID
    //
    //Future<Association> addAssociationById({ AssociationInfo associationInfo }) async
    test('test addAssociationById', () async {
      // TODO
    });

    // Delete an Association by ID
    //
    //Future deleteAssociationById(String id) async
    test('test deleteAssociationById', () async {
      // TODO
    });

    // Get a association by ID
    //
    //Future<Association> getAssociationById(String id) async
    test('test getAssociationById', () async {
      // TODO
    });

    // Get all Associations
    //
    //Future<BuiltList<Association>> queryAssociations() async
    test('test queryAssociations', () async {
      // TODO
    });

    // Update a association by ID
    //
    //Future<Association> updateAssociationById(String id, { AssociationInfo associationInfo }) async
    test('test updateAssociationById', () async {
      // TODO
    });

  });
}
