import 'package:yapily_sdk/api.dart';
import 'package:test/test.dart';


/// tests for AccountsApi
void main() {
  var instance = new AccountsApi();

  group('tests for AccountsApi', () {
    // Get account direct debits
    //
    //Future<ApiListResponseOfPaymentResponse> getAccountDirectDebitsUsingGET(String accountId, String consent, { int limit }) async 
    test('test getAccountDirectDebitsUsingGET', () async {
      // TODO
    });

    // Get account payments detail
    //
    //Future<ApiListResponseOfPaymentResponse> getAccountPeriodicPaymentsUsingGET(String accountId, String consent, { int limit }) async 
    test('test getAccountPeriodicPaymentsUsingGET', () async {
      // TODO
    });

    // Get account scheduled payments
    //
    //Future<ApiListResponseOfPaymentResponse> getAccountScheduledPaymentsUsingGET(String accountId, String consent, { int limit }) async 
    test('test getAccountScheduledPaymentsUsingGET', () async {
      // TODO
    });

    // Get account
    //
    //Future<ApiResponseOfAccount> getAccountUsingGET(String consent, String accountId) async 
    test('test getAccountUsingGET', () async {
      // TODO
    });

    // Get accounts
    //
    //Future<ApiListResponseOfAccount> getAccountsUsingGET(String consent) async 
    test('test getAccountsUsingGET', () async {
      // TODO
    });

    // Initiate a new account request for user to authorize
    //
    //Future<ApiResponseOfAuthorisationRequestResponse> initiateAccountRequestUsingPOST(AccountAuthorisationRequest accountAuthRequest) async 
    test('test initiateAccountRequestUsingPOST', () async {
      // TODO
    });

    // Re-authorize account request
    //
    //Future<ApiResponseOfAuthorisationRequestResponse> reAuthoriseAccountUsingPATCH(String consent) async 
    test('test reAuthoriseAccountUsingPATCH', () async {
      // TODO
    });

  });
}
