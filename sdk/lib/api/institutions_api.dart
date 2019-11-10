import 'package:jaguar_retrofit/annotations/annotations.dart';
import 'package:jaguar_retrofit/jaguar_retrofit.dart';
import 'package:jaguar_serializer/jaguar_serializer.dart';
import 'package:jaguar_mimetype/jaguar_mimetype.dart';
import 'dart:async';

import 'package:yapily_sdk/model/institution.dart';
import 'package:yapily_sdk/model/api_list_response_of_institution.dart';
import 'package:yapily_sdk/model/api_list_response_of_feature_details.dart';

part 'institutions_api.jretro.dart';

@GenApiClient()
class InstitutionsApi extends ApiClient with _$InstitutionsApiClient {
    final Route base;
    final Map<String, CodecRepo> converters;
    final Duration timeout;

    InstitutionsApi({this.base, this.converters, this.timeout = const Duration(minutes: 2)});

    /// Retrieve details for Yapily&#39;s institution features
    ///
    /// 
    @GetReq(path: "/features", metadata: {"auth": [ {"type": "http", "name": "basicAuth" },  {"type": "oauth2", "name": "tokenAuth" }]})
    Future<ApiListResponseOfFeatureDetails> getFeatureDetailsUsingGET(
        ) {
        return super.getFeatureDetailsUsingGET(

        ).timeout(timeout);
    }

    /// Retrieves details of a specific institution available in Yapily
    ///
    /// 
    @GetReq(path: "/institutions/:institutionId", metadata: {"auth": [ {"type": "http", "name": "basicAuth" },  {"type": "oauth2", "name": "tokenAuth" }]})
    Future<Institution> getInstitutionUsingGET(
            @PathParam("institutionId") String institutionId
        ) {
        return super.getInstitutionUsingGET(
        institutionId

        ).timeout(timeout);
    }

    /// Retrieves the list of institutions available in Yapily
    ///
    /// 
    @GetReq(path: "/institutions", metadata: {"auth": [ {"type": "http", "name": "basicAuth" },  {"type": "oauth2", "name": "tokenAuth" }]})
    Future<ApiListResponseOfInstitution> getInstitutionsUsingGET(
        ) {
        return super.getInstitutionsUsingGET(

        ).timeout(timeout);
    }


}
