import 'package:jaguar_retrofit/annotations/annotations.dart';
import 'package:jaguar_retrofit/jaguar_retrofit.dart';
import 'package:jaguar_serializer/jaguar_serializer.dart';
import 'package:jaguar_mimetype/jaguar_mimetype.dart';
import 'dart:async';

import 'package:yapily_sdk/model/transfer_request.dart';
import 'package:yapily_sdk/model/api_response_of_transfer_response.dart';

part 'transfers_api.jretro.dart';

@GenApiClient()
class TransfersApi extends ApiClient with _$TransfersApiClient {
    final Route base;
    final Map<String, CodecRepo> converters;
    final Duration timeout;

    TransfersApi({this.base, this.converters, this.timeout = const Duration(minutes: 2)});

    /// Transfer money from one account to another account accessible with the same consent
    ///
    /// 
    @PutReq(path: "/accounts/:accountId/transfer", metadata: {"auth": [ {"type": "http", "name": "basicAuth" },  {"type": "oauth2", "name": "tokenAuth" }]})
    Future<ApiResponseOfTransferResponse> transferUsingPUT(
            @PathParam("accountId") String accountId
        ,
            @Header("consent") String consent
            ,
            @AsBody() TransferRequest transferRequest
        ) {
        return super.transferUsingPUT(
        accountId
        ,
        consent

        ,
        transferRequest
        ).timeout(timeout);
    }


}
