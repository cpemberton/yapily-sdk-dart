import 'package:yapily_sdk/api.dart';
import 'package:test/test.dart';


/// tests for ApplicationUsersApi
void main() {
  var instance = new ApplicationUsersApi();

  group('tests for ApplicationUsersApi', () {
    // Add an application user
    //
    //Future<ApplicationUser> addUserUsingPOST(NewApplicationUser newApplicationUser) async 
    test('test addUserUsingPOST', () async {
      // TODO
    });

    // Delete an application user and sub-resources (including consent resources on institution APIs if they exist)
    //
    //Future<ApiResponseOfUserDeleteResponse> deleteUserUsingDELETE(String userUuid) async 
    test('test deleteUserUsingDELETE', () async {
      // TODO
    });

    // Get details of a user deletion job
    //
    //Future<ApiResponseOfBulkUserDeleteDetails> getDeleteUsersJobUsingGET(String jobId) async 
    test('test getDeleteUsersJobUsingGET', () async {
      // TODO
    });

    // Get details of all user deletion jobs
    //
    //Future<ApiListResponseOfBulkUserDelete> getDeleteUsersJobsUsingGET() async 
    test('test getDeleteUsersJobsUsingGET', () async {
      // TODO
    });

    // Get an application user
    //
    //Future<ApplicationUser> getUserUsingGET(String userUuid) async 
    test('test getUserUsingGET', () async {
      // TODO
    });

    // Get application users
    //
    //Future<List<ApplicationUser>> getUsersUsingGET() async 
    test('test getUsersUsingGET', () async {
      // TODO
    });

    // Start a job to delete application users by specifying their identifiers
    //
    //Future<ApiResponseOfBulkUserDeleteDetails> startDeleteUsersJobUsingPOST(UserDeleteRequest userDeleteRequest) async 
    test('test startDeleteUsersJobUsingPOST', () async {
      // TODO
    });

  });
}
