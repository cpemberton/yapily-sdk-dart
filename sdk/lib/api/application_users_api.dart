import 'package:jaguar_retrofit/annotations/annotations.dart';
import 'package:jaguar_retrofit/jaguar_retrofit.dart';
import 'package:jaguar_serializer/jaguar_serializer.dart';
import 'package:jaguar_mimetype/jaguar_mimetype.dart';
import 'dart:async';

import 'package:yapily_sdk/model/new_application_user.dart';
import 'package:yapily_sdk/model/application_user.dart';
import 'package:yapily_sdk/model/api_response_of_bulk_user_delete_details.dart';
import 'package:yapily_sdk/model/user_delete_request.dart';
import 'package:yapily_sdk/model/api_response_of_user_delete_response.dart';
import 'package:yapily_sdk/model/api_list_response_of_bulk_user_delete.dart';

part 'application_users_api.jretro.dart';

@GenApiClient()
class ApplicationUsersApi extends ApiClient with _$ApplicationUsersApiClient {
    final Route base;
    final Map<String, CodecRepo> converters;
    final Duration timeout;

    ApplicationUsersApi({this.base, this.converters, this.timeout = const Duration(minutes: 2)});

    /// Add an application user
    ///
    /// 
    @PostReq(path: "/users", metadata: {"auth": [ {"type": "http", "name": "basicAuth" },  {"type": "oauth2", "name": "tokenAuth" }]})
    Future<ApplicationUser> addUserUsingPOST(
            
            @AsBody() NewApplicationUser newApplicationUser
        ) {
        return super.addUserUsingPOST(

        
        newApplicationUser
        ).timeout(timeout);
    }

    /// Delete an application user and sub-resources (including consent resources on institution APIs if they exist)
    ///
    /// 
    @DeleteReq(path: "/users/:userUuid", metadata: {"auth": [ {"type": "http", "name": "basicAuth" },  {"type": "oauth2", "name": "tokenAuth" }]})
    Future<ApiResponseOfUserDeleteResponse> deleteUserUsingDELETE(
            @PathParam("userUuid") String userUuid
        ) {
        return super.deleteUserUsingDELETE(
        userUuid

        ).timeout(timeout);
    }

    /// Get details of a user deletion job
    ///
    /// 
    @GetReq(path: "/delete-users/:job-id", metadata: {"auth": [ {"type": "http", "name": "basicAuth" },  {"type": "oauth2", "name": "tokenAuth" }]})
    Future<ApiResponseOfBulkUserDeleteDetails> getDeleteUsersJobUsingGET(
            @PathParam("job-id") String jobId
        ) {
        return super.getDeleteUsersJobUsingGET(
        jobId

        ).timeout(timeout);
    }

    /// Get details of all user deletion jobs
    ///
    /// 
    @GetReq(path: "/delete-users", metadata: {"auth": [ {"type": "http", "name": "basicAuth" },  {"type": "oauth2", "name": "tokenAuth" }]})
    Future<ApiListResponseOfBulkUserDelete> getDeleteUsersJobsUsingGET(
        ) {
        return super.getDeleteUsersJobsUsingGET(

        ).timeout(timeout);
    }

    /// Get an application user
    ///
    /// 
    @GetReq(path: "/users/:userUuid", metadata: {"auth": [ {"type": "http", "name": "basicAuth" },  {"type": "oauth2", "name": "tokenAuth" }]})
    Future<ApplicationUser> getUserUsingGET(
            @PathParam("userUuid") String userUuid
        ) {
        return super.getUserUsingGET(
        userUuid

        ).timeout(timeout);
    }

    /// Get application users
    ///
    /// 
    @GetReq(path: "/users", metadata: {"auth": [ {"type": "http", "name": "basicAuth" },  {"type": "oauth2", "name": "tokenAuth" }]})
    Future<List<ApplicationUser>> getUsersUsingGET(
        ) {
        return super.getUsersUsingGET(

        ).timeout(timeout);
    }

    /// Start a job to delete application users by specifying their identifiers
    ///
    /// 
    @PostReq(path: "/delete-users", metadata: {"auth": [ {"type": "http", "name": "basicAuth" },  {"type": "oauth2", "name": "tokenAuth" }]})
    Future<ApiResponseOfBulkUserDeleteDetails> startDeleteUsersJobUsingPOST(
            
            @AsBody() UserDeleteRequest userDeleteRequest
        ) {
        return super.startDeleteUsersJobUsingPOST(

        
        userDeleteRequest
        ).timeout(timeout);
    }


}
