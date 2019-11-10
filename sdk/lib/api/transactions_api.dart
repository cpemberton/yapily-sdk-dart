import 'package:jaguar_retrofit/annotations/annotations.dart';
import 'package:jaguar_retrofit/jaguar_retrofit.dart';
import 'package:jaguar_serializer/jaguar_serializer.dart';
import 'package:jaguar_mimetype/jaguar_mimetype.dart';
import 'dart:async';

import 'package:yapily_sdk/model/api_list_response_of_transaction.dart';

part 'transactions_api.jretro.dart';

@GenApiClient()
class TransactionsApi extends ApiClient with _$TransactionsApiClient {
    final Route base;
    final Map<String, CodecRepo> converters;
    final Duration timeout;

    TransactionsApi({this.base, this.converters, this.timeout = const Duration(minutes: 2)});

    /// Get account transactions
    ///
    /// 
    @GetReq(path: "/accounts/:accountId/transactions", metadata: {"auth": [ {"type": "http", "name": "basicAuth" },  {"type": "oauth2", "name": "tokenAuth" }]})
    Future<ApiListResponseOfTransaction> getTransactionsUsingGET(
            @PathParam("accountId") String accountId
        ,
            @Header("consent") String consent
        ,
            @QueryParam("with") List<String> with_, 
        
            @QueryParam("from") String from, 
        
            @QueryParam("before") String before, 
        
            @QueryParam("limit") int limit, 
        
            @QueryParam("sort") String sort, 
        
            @QueryParam("offset") int offset
        ) {
        return super.getTransactionsUsingGET(
        accountId
        ,
        consent
        ,
        with_, 
        
        from, 
        
        before, 
        
        limit, 
        
        sort, 
        
        offset

        ).timeout(timeout);
    }


}
