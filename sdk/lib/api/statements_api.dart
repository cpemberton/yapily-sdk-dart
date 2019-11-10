import 'package:jaguar_retrofit/annotations/annotations.dart';
import 'package:jaguar_retrofit/jaguar_retrofit.dart';
import 'package:jaguar_serializer/jaguar_serializer.dart';
import 'package:jaguar_mimetype/jaguar_mimetype.dart';
import 'dart:async';

import 'package:yapily_sdk/model/api_list_response_of_account_statement.dart';
import 'package:yapily_sdk/model/api_response_of_account_statement.dart';

part 'statements_api.jretro.dart';

@GenApiClient()
class StatementsApi extends ApiClient with _$StatementsApiClient {
    final Route base;
    final Map<String, CodecRepo> converters;
    final Duration timeout;

    StatementsApi({this.base, this.converters, this.timeout = const Duration(minutes: 2)});

    /// Get account statement file
    ///
    /// 
    @GetReq(path: "/accounts/:accountId/statements/:statementId/file", metadata: {"auth": [ {"type": "http", "name": "basicAuth" },  {"type": "oauth2", "name": "tokenAuth" }]})
    Future<String> getStatementFileUsingGET(
            @PathParam("accountId") String accountId, 
            @PathParam("statementId") String statementId
        ,
            @Header("consent") String consent
        ) {
        return super.getStatementFileUsingGET(
        accountId, 
        statementId
        ,
        consent

        ).timeout(timeout);
    }

    /// Get account statement
    ///
    /// 
    @GetReq(path: "/accounts/:accountId/statements/:statementId", metadata: {"auth": [ {"type": "http", "name": "basicAuth" },  {"type": "oauth2", "name": "tokenAuth" }]})
    Future<ApiResponseOfAccountStatement> getStatementUsingGET(
            @PathParam("accountId") String accountId, 
            @PathParam("statementId") String statementId
        ,
            @Header("consent") String consent
        ) {
        return super.getStatementUsingGET(
        accountId, 
        statementId
        ,
        consent

        ).timeout(timeout);
    }

    /// Get account statements
    ///
    /// 
    @GetReq(path: "/accounts/:accountId/statements", metadata: {"auth": [ {"type": "http", "name": "basicAuth" },  {"type": "oauth2", "name": "tokenAuth" }]})
    Future<ApiListResponseOfAccountStatement> getStatementsUsingGET(
            @PathParam("accountId") String accountId
        ,
            @Header("consent") String consent
        ,
            @QueryParam("from") String from, 
        
            @QueryParam("before") String before, 
        
            @QueryParam("limit") int limit, 
        
            @QueryParam("sort") String sort, 
        
            @QueryParam("offset") int offset
        ) {
        return super.getStatementsUsingGET(
        accountId
        ,
        consent
        ,
        from, 
        
        before, 
        
        limit, 
        
        sort, 
        
        offset

        ).timeout(timeout);
    }


}
