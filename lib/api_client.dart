part of yapily_sdk.api;

class QueryParam {
  String name;
  String value;

  QueryParam(this.name, this.value);
}

class ApiClient {

  String basePath;
  var client = new Client();

  Map<String, String> _defaultHeaderMap = {};
  Map<String, Authentication> _authentications = {};

  final _RegList = new RegExp(r'^List<(.*)>$');
  final _RegMap = new RegExp(r'^Map<String,(.*)>$');

  ApiClient.withAuth(HttpBasicAuth authentication) {
    // Setup authentications (key: authentication name, value: authentication).
    this.basePath = "https://api.yapily.com:443";
    _authentications['basicAuth'] = authentication;
  }

  ApiClient({this.basePath: "https://api.yapily.com:443"}) {
    // Setup authentications (key: authentication name, value: authentication).
    _authentications['basicAuth'] = new HttpBasicAuth();
  }

  void addDefaultHeader(String key, String value) {
     _defaultHeaderMap[key] = value;
  }

  dynamic _deserialize(dynamic value, String targetType) {
    try {
      switch (targetType) {
        case 'String':
          return '$value';
        case 'int':
          return value is int ? value : int.parse('$value');
        case 'bool':
          return value is bool ? value : '$value'.toLowerCase() == 'true';
        case 'double':
          return value is double ? value : double.parse('$value');
        case 'ATMBranch':
          return new ATMBranch.fromJson(value);
        case 'ATMGeoLocation':
          return new ATMGeoLocation.fromJson(value);
        case 'ATMGeographicCoordinates':
          return new ATMGeographicCoordinates.fromJson(value);
        case 'ATMLocation':
          return new ATMLocation.fromJson(value);
        case 'ATMLocationOtherLocationCategory':
          return new ATMLocationOtherLocationCategory.fromJson(value);
        case 'ATMMapServiceLinks':
          return new ATMMapServiceLinks.fromJson(value);
        case 'ATMOpenData':
          return new ATMOpenData.fromJson(value);
        case 'ATMOpenDataATM':
          return new ATMOpenDataATM.fromJson(value);
        case 'ATMOpenDataBrand':
          return new ATMOpenDataBrand.fromJson(value);
        case 'ATMOpenDataOtherATMServices':
          return new ATMOpenDataOtherATMServices.fromJson(value);
        case 'ATMOpenDataOtherAccessibility':
          return new ATMOpenDataOtherAccessibility.fromJson(value);
        case 'ATMOpenDataResponse':
          return new ATMOpenDataResponse.fromJson(value);
        case 'ATMPostalAddress':
          return new ATMPostalAddress.fromJson(value);
        case 'ATMSite':
          return new ATMSite.fromJson(value);
        case 'Account':
          return new Account.fromJson(value);
        case 'AccountAuthorisationRequest':
          return new AccountAuthorisationRequest.fromJson(value);
        case 'AccountRequest':
          return new AccountRequest.fromJson(value);
        case 'AgeEligibility':
          return new AgeEligibility.fromJson(value);
        case 'ApiListResponseOfAccount':
          return new ApiListResponseOfAccount.fromJson(value);
        case 'ApiListResponseOfFeatureDetails':
          return new ApiListResponseOfFeatureDetails.fromJson(value);
        case 'ApiListResponseOfInstitution':
          return new ApiListResponseOfInstitution.fromJson(value);
        case 'ApiListResponseOfTransaction':
          return new ApiListResponseOfTransaction.fromJson(value);
        case 'ApiResponseOfAccount':
          return new ApiResponseOfAccount.fromJson(value);
        case 'ApiResponseOfAuthorisationRequestResponse':
          return new ApiResponseOfAuthorisationRequestResponse.fromJson(value);
        case 'ApiResponseOfConsent':
          return new ApiResponseOfConsent.fromJson(value);
        case 'ApiResponseOfIdentity':
          return new ApiResponseOfIdentity.fromJson(value);
        case 'ApiResponseOfListOfATMOpenDataResponse':
          return new ApiResponseOfListOfATMOpenDataResponse.fromJson(value);
        case 'ApiResponseOfListOfPersonalCurrentAccountData':
          return new ApiResponseOfListOfPersonalCurrentAccountData.fromJson(value);
        case 'ApiResponseOfPaymentResponse':
          return new ApiResponseOfPaymentResponse.fromJson(value);
        case 'ApiResponseOfTransferResponse':
          return new ApiResponseOfTransferResponse.fromJson(value);
        case 'Application':
          return new Application.fromJson(value);
        case 'ApplicationUser':
          return new ApplicationUser.fromJson(value);
        case 'AuthorisationRequestResponse':
          return new AuthorisationRequestResponse.fromJson(value);
        case 'Consent':
          return new Consent.fromJson(value);
        case 'CoreProduct':
          return new CoreProduct.fromJson(value);
        case 'Country':
          return new Country.fromJson(value);
        case 'CreateConsentAccessToken':
          return new CreateConsentAccessToken.fromJson(value);
        case 'CreditCheck':
          return new CreditCheck.fromJson(value);
        case 'CreditInterest':
          return new CreditInterest.fromJson(value);
        case 'CreditInterestCreditInterestEligibility':
          return new CreditInterestCreditInterestEligibility.fromJson(value);
        case 'CreditInterestTierBand':
          return new CreditInterestTierBand.fromJson(value);
        case 'CreditInterestTierBandSet':
          return new CreditInterestTierBandSet.fromJson(value);
        case 'Eligibility':
          return new Eligibility.fromJson(value);
        case 'EligibilityOtherEligibility':
          return new EligibilityOtherEligibility.fromJson(value);
        case 'FeatureDetails':
          return new FeatureDetails.fromJson(value);
        case 'IDVerificationCheck':
          return new IDVerificationCheck.fromJson(value);
        case 'Identity':
          return new Identity.fromJson(value);
        case 'IdentityAddress':
          return new IdentityAddress.fromJson(value);
        case 'Institution':
          return new Institution.fromJson(value);
        case 'InstitutionConsent':
          return new InstitutionConsent.fromJson(value);
        case 'Media':
          return new Media.fromJson(value);
        case 'Merchant':
          return new Merchant.fromJson(value);
        case 'NewApplicationUser':
          return new NewApplicationUser.fromJson(value);
        case 'OtherApplicationFrequency':
          return new OtherApplicationFrequency.fromJson(value);
        case 'OtherBankInterestType':
          return new OtherBankInterestType.fromJson(value);
        case 'OtherCalculationFrequency':
          return new OtherCalculationFrequency.fromJson(value);
        case 'OtherFeeRateType':
          return new OtherFeeRateType.fromJson(value);
        case 'OtherFeeType':
          return new OtherFeeType.fromJson(value);
        case 'OtherResidencyType':
          return new OtherResidencyType.fromJson(value);
        case 'OtherType':
          return new OtherType.fromJson(value);
        case 'Overdraft':
          return new Overdraft.fromJson(value);
        case 'OverdraftFeeApplicableRange':
          return new OverdraftFeeApplicableRange.fromJson(value);
        case 'OverdraftOtherFeeType':
          return new OverdraftOtherFeeType.fromJson(value);
        case 'OverdraftOverdraftFeeChargeCap':
          return new OverdraftOverdraftFeeChargeCap.fromJson(value);
        case 'OverdraftOverdraftFeeChargeDetail':
          return new OverdraftOverdraftFeeChargeDetail.fromJson(value);
        case 'OverdraftOverdraftFeesCharges':
          return new OverdraftOverdraftFeesCharges.fromJson(value);
        case 'OverdraftOverdraftFeesCharges1':
          return new OverdraftOverdraftFeesCharges1.fromJson(value);
        case 'OverdraftOverdraftTierBand':
          return new OverdraftOverdraftTierBand.fromJson(value);
        case 'OverdraftOverdraftTierBandSet':
          return new OverdraftOverdraftTierBandSet.fromJson(value);
        case 'PaymentResponse':
          return new PaymentResponse.fromJson(value);
        case 'PersonalCurrentAccountBrand':
          return new PersonalCurrentAccountBrand.fromJson(value);
        case 'PersonalCurrentAccountData':
          return new PersonalCurrentAccountData.fromJson(value);
        case 'PersonalCurrentAccountPCA':
          return new PersonalCurrentAccountPCA.fromJson(value);
        case 'PersonalCurrentAccountPCAMarketingState':
          return new PersonalCurrentAccountPCAMarketingState.fromJson(value);
        case 'ResidencyEligibility':
          return new ResidencyEligibility.fromJson(value);
        case 'ResponseListMeta':
          return new ResponseListMeta.fromJson(value);
        case 'ResponseMeta':
          return new ResponseMeta.fromJson(value);
        case 'SortCodePaymentAuthRequest':
          return new SortCodePaymentAuthRequest.fromJson(value);
        case 'SortCodePaymentRequest':
          return new SortCodePaymentRequest.fromJson(value);
        case 'Transaction':
          return new Transaction.fromJson(value);
        case 'TransferRequest':
          return new TransferRequest.fromJson(value);
        case 'TransferResponse':
          return new TransferResponse.fromJson(value);
        default:
          {
            Match match;
            if (value is List &&
                (match = _RegList.firstMatch(targetType)) != null) {
              var newTargetType = match[1];
              return value.map((v) => _deserialize(v, newTargetType)).toList();
            } else if (value is Map &&
                (match = _RegMap.firstMatch(targetType)) != null) {
              var newTargetType = match[1];
              return new Map.fromIterables(value.keys,
                  value.values.map((v) => _deserialize(v, newTargetType)));
            }
          }
      }
    } catch (e, stack) {
      throw new ApiException.withInner(500, 'Exception during deserialization.', e, stack);
    }
    throw new ApiException(500, 'Could not find a suitable class for deserialization');
  }

  dynamic deserialize(String json, String targetType) {
    // Remove all spaces.  Necessary for reg expressions as well.
    targetType = targetType.replaceAll(' ', '');

    if (targetType == 'String') return json;

    var decodedJson = CONVERTER.jsonDecode(json);
    return _deserialize(decodedJson, targetType);
  }

  String serialize(Object obj) {
    String serialized = '';
    if (obj == null) {
      serialized = '';
    } else {
      serialized = CONVERTER.jsonEncode(obj);
    }
    return serialized;
  }

  // We don't use a Map<String, String> for queryParams.
  // If collectionFormat is 'multi' a key might appear multiple times.
  Future<Response> invokeAPI(String path,
                             String method,
                             Iterable<QueryParam> queryParams,
                             Object body,
                             Map<String, String> headerParams,
                             Map<String, String> formParams,
                             String contentType,
                             List<String> authNames) async {

    _updateParamsForAuth(authNames, queryParams, headerParams);

    var ps = queryParams.where((p) => p.value != null).map((p) => '${p.name}=${p.value}');
    String queryString = ps.isNotEmpty ?
                         '?' + ps.join('&') :
                         '';

    String url = basePath + path + queryString;

    headerParams.addAll(_defaultHeaderMap);
    headerParams['Content-Type'] = contentType;

    if(body is MultipartRequest) {
      var request = new MultipartRequest(method, Uri.parse(url));
      request.fields.addAll(body.fields);
      request.files.addAll(body.files);
      request.headers.addAll(body.headers);
      request.headers.addAll(headerParams);
      var response = await client.send(request);
      return Response.fromStream(response);
    } else {
      var msgBody = contentType == "application/x-www-form-urlencoded" ? formParams : serialize(body);
      switch(method) {
        case "POST":
          return client.post(url, headers: headerParams, body: msgBody);
        case "PUT":
          return client.put(url, headers: headerParams, body: msgBody);
        case "DELETE":
          return client.delete(url, headers: headerParams);
        case "PATCH":
          return client.patch(url, headers: headerParams, body: msgBody);
        default:
          return client.get(url, headers: headerParams);
      }
    }
  }

  /// Update query and header parameters based on authentication settings.
  /// @param authNames The authentications to apply
  void _updateParamsForAuth(List<String> authNames, List<QueryParam> queryParams, Map<String, String> headerParams) {
    authNames.forEach((authName) {
      Authentication auth = _authentications[authName];
      if (auth == null) throw new ArgumentError("Authentication undefined: " + authName);
      auth.applyToParams(queryParams, headerParams);
    });
  }

  void setAccessToken(String accessToken) {
    _authentications.forEach((key, auth) {
      if (auth is OAuth) {
        auth.setAccessToken(accessToken);
      }
    });
  }
}
