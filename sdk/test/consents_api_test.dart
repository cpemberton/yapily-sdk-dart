import 'package:yapily_sdk/api.dart';
import 'package:test/test.dart';


/// tests for ConsentsApi
void main() {
  var instance = new ConsentsApi();

  group('tests for ConsentsApi', () {
    // Post consent
    //
    //Future<Consent> addConsentUsingPOST(String userUuid, CreateConsentAccessToken createConsentAccessToken) async 
    test('test addConsentUsingPOST', () async {
      // TODO
    });

    // Post auth-code and auth-state
    //
    //Future<Consent> createConsentWithCodeUsingPOST(ConsentAuthCodeRequest consentByAuthCode) async 
    test('test createConsentWithCodeUsingPOST', () async {
      // TODO
    });

    // Delete consent
    //
    //Future<ApiResponseOfConsentDeleteResponse> deleteUsingDELETE(String consentId, { bool forceDelete }) async 
    test('test deleteUsingDELETE', () async {
      // TODO
    });

    // Get consent
    //
    //Future<ApiResponseOfConsent> getConsentByIdUsingGET(String consentId) async 
    test('test getConsentByIdUsingGET', () async {
      // TODO
    });

    // Post one time token
    //
    //Future<Consent> getConsentBySingleAccessConsentUsingPOST(OneTimeTokenRequest oneTimeToken) async 
    test('test getConsentBySingleAccessConsentUsingPOST', () async {
      // TODO
    });

    // Get consents sorted by creation date
    //
    //Future<ApiListResponseOfConsent> getConsentsUsingGET({ List<String> filter[applicationUserId], List<String> filter[userUuid], List<String> filter[institution], List<String> filter[status], String from, String before, int limit, int offset }) async 
    test('test getConsentsUsingGET', () async {
      // TODO
    });

    // Get latest user consents
    //
    //Future<List<Consent>> getUserConsentsUsingGET(String userUuid, { String filter[institution], int limit }) async 
    test('test getUserConsentsUsingGET', () async {
      // TODO
    });

  });
}
