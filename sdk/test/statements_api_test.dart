import 'package:yapily_sdk/api.dart';
import 'package:test/test.dart';


/// tests for StatementsApi
void main() {
  var instance = new StatementsApi();

  group('tests for StatementsApi', () {
    // Get account statement file
    //
    //Future<String> getStatementFileUsingGET(String consent, String accountId, String statementId) async 
    test('test getStatementFileUsingGET', () async {
      // TODO
    });

    // Get account statement
    //
    //Future<ApiResponseOfAccountStatement> getStatementUsingGET(String consent, String accountId, String statementId) async 
    test('test getStatementUsingGET', () async {
      // TODO
    });

    // Get account statements
    //
    //Future<ApiListResponseOfAccountStatement> getStatementsUsingGET(String consent, String accountId, { String from, String before, int limit, String sort, int offset }) async 
    test('test getStatementsUsingGET', () async {
      // TODO
    });

  });
}
