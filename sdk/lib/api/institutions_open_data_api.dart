import 'package:jaguar_retrofit/annotations/annotations.dart';
import 'package:jaguar_retrofit/jaguar_retrofit.dart';
import 'package:jaguar_serializer/jaguar_serializer.dart';
import 'package:jaguar_mimetype/jaguar_mimetype.dart';
import 'dart:async';

import 'package:yapily_sdk/model/api_response_of_list_of_atm_open_data_response.dart';
import 'package:yapily_sdk/model/api_response_of_list_of_personal_current_account_data.dart';

part 'institutions_open_data_api.jretro.dart';

@GenApiClient()
class InstitutionsOpenDataApi extends ApiClient with _$InstitutionsOpenDataApiClient {
    final Route base;
    final Map<String, CodecRepo> converters;
    final Duration timeout;

    InstitutionsOpenDataApi({this.base, this.converters, this.timeout = const Duration(minutes: 2)});

    /// Retrieves data about all ATMs of the selected institution
    ///
    /// 
    @GetReq(path: "/institutions/:institutionId/atms", metadata: {"auth": [ {"type": "http", "name": "basicAuth" },  {"type": "oauth2", "name": "tokenAuth" }]})
    Future<ApiResponseOfListOfATMOpenDataResponse> getATMDataUsingGET(
            @PathParam("institutionId") String institutionId
        ) {
        return super.getATMDataUsingGET(
        institutionId

        ).timeout(timeout);
    }

    /// Retrieves details of personal current accounts for an institution
    ///
    /// 
    @GetReq(path: "/institutions/:institutionId/personal-current-accounts", metadata: {"auth": [ {"type": "http", "name": "basicAuth" },  {"type": "oauth2", "name": "tokenAuth" }]})
    Future<ApiResponseOfListOfPersonalCurrentAccountData> getPersonalCurrentAccountsUsingGET(
            @PathParam("institutionId") String institutionId
        ) {
        return super.getPersonalCurrentAccountsUsingGET(
        institutionId

        ).timeout(timeout);
    }


}
