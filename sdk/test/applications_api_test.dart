import 'package:yapily_sdk/api.dart';
import 'package:test/test.dart';


/// tests for ApplicationsApi
void main() {
  var instance = new ApplicationsApi();

  group('tests for ApplicationsApi', () {
    // Returns the details of the application that owns the request credentials
    //
    //Future<Application> getApplicationMeUsingGET() async 
    test('test getApplicationMeUsingGET', () async {
      // TODO
    });

    // JSON Web Key Set (JWKS) for authenticated application
    //
    //Future<Object> getJwksUsingGET() async 
    test('test getJwksUsingGET', () async {
      // TODO
    });

    // Revoke existing access tokens for application, which will also generate a new public key discoverable via /jwks
    //
    //Future<ResponseEntity> revokeTokensUsingPOST() async 
    test('test revokeTokensUsingPOST', () async {
      // TODO
    });

  });
}
