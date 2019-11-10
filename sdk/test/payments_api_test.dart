import 'package:yapily_sdk/api.dart';
import 'package:test/test.dart';


/// tests for PaymentsApi
void main() {
  var instance = new PaymentsApi();

  group('tests for PaymentsApi', () {
    // Initiate a payment for user to authorise
    //
    //Future<ApiResponseOfPaymentAuthorisationRequestResponse> createPaymentAuthorisationUsingPOST(PaymentAuthorisationRequest paymentAuthRequest) async 
    test('test createPaymentAuthorisationUsingPOST', () async {
      // TODO
    });

    // Initiate a new single payment for user to authorise
    //
    //Future<ApiResponseOfAuthorisationRequestResponse> createPaymentAuthorisationWithSortCodeUsingPOST(SortCodePaymentAuthRequest paymentAuthRequest) async 
    test('test createPaymentAuthorisationWithSortCodeUsingPOST', () async {
      // TODO
    });

    // Create a payment
    //
    //Future<ApiResponseOfPaymentResponse> createPaymentUsingPOST(String consent, PaymentRequest paymentRequest) async 
    test('test createPaymentUsingPOST', () async {
      // TODO
    });

    // Create a new single payment
    //
    //Future<ApiResponseOfPaymentResponse> createPaymentWithSortCodeUsingPOST(String consent, SortCodePaymentRequest paymentRequest) async 
    test('test createPaymentWithSortCodeUsingPOST', () async {
      // TODO
    });

    // Get status of a payment
    //
    //Future<ApiResponseOfPaymentResponse> getPaymentStatusUsingGET(String paymentId, String consent) async 
    test('test getPaymentStatusUsingGET', () async {
      // TODO
    });

    // Get payments detail
    //
    //Future<ApiResponseOfPaymentResponses> getPaymentsUsingGET(String paymentId, String consent) async 
    test('test getPaymentsUsingGET', () async {
      // TODO
    });

  });
}
