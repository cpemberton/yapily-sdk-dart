library yapily_sdk.api;

import 'package:http/http.dart' as http;
import 'package:jaguar_serializer/jaguar_serializer.dart';
import 'package:jaguar_retrofit/jaguar_retrofit.dart';
import 'package:yapily_sdk/auth/api_key_auth.dart';
import 'package:yapily_sdk/auth/basic_auth.dart';
import 'package:yapily_sdk/auth/oauth.dart';
import 'package:jaguar_mimetype/jaguar_mimetype.dart';

import 'package:yapily_sdk/api/accounts_api.dart';
import 'package:yapily_sdk/api/application_users_api.dart';
import 'package:yapily_sdk/api/applications_api.dart';
import 'package:yapily_sdk/api/consents_api.dart';
import 'package:yapily_sdk/api/identity_api.dart';
import 'package:yapily_sdk/api/institutions_api.dart';
import 'package:yapily_sdk/api/institutions_open_data_api.dart';
import 'package:yapily_sdk/api/o_auth_api.dart';
import 'package:yapily_sdk/api/payments_api.dart';
import 'package:yapily_sdk/api/statements_api.dart';
import 'package:yapily_sdk/api/transactions_api.dart';
import 'package:yapily_sdk/api/transfers_api.dart';

import 'package:yapily_sdk/model/atm_map_service_links.dart';
import 'package:yapily_sdk/model/atm_open_data.dart';
import 'package:yapily_sdk/model/atm_open_data_brand.dart';
import 'package:yapily_sdk/model/atm_open_data_response.dart';
import 'package:yapily_sdk/model/account.dart';
import 'package:yapily_sdk/model/account_authorisation_request.dart';
import 'package:yapily_sdk/model/account_balance.dart';
import 'package:yapily_sdk/model/account_identification.dart';
import 'package:yapily_sdk/model/account_name.dart';
import 'package:yapily_sdk/model/account_request.dart';
import 'package:yapily_sdk/model/account_statement.dart';
import 'package:yapily_sdk/model/address.dart';
import 'package:yapily_sdk/model/address_details.dart';
import 'package:yapily_sdk/model/age_eligibility.dart';
import 'package:yapily_sdk/model/amount.dart';
import 'package:yapily_sdk/model/api_error.dart';
import 'package:yapily_sdk/model/api_list_response_of_account.dart';
import 'package:yapily_sdk/model/api_list_response_of_account_statement.dart';
import 'package:yapily_sdk/model/api_list_response_of_bulk_user_delete.dart';
import 'package:yapily_sdk/model/api_list_response_of_consent.dart';
import 'package:yapily_sdk/model/api_list_response_of_feature_details.dart';
import 'package:yapily_sdk/model/api_list_response_of_institution.dart';
import 'package:yapily_sdk/model/api_list_response_of_payment_response.dart';
import 'package:yapily_sdk/model/api_list_response_of_transaction.dart';
import 'package:yapily_sdk/model/api_response_of_account.dart';
import 'package:yapily_sdk/model/api_response_of_account_statement.dart';
import 'package:yapily_sdk/model/api_response_of_authorisation_request_response.dart';
import 'package:yapily_sdk/model/api_response_of_bulk_user_delete_details.dart';
import 'package:yapily_sdk/model/api_response_of_consent.dart';
import 'package:yapily_sdk/model/api_response_of_consent_delete_response.dart';
import 'package:yapily_sdk/model/api_response_of_identity.dart';
import 'package:yapily_sdk/model/api_response_of_list_of_atm_open_data_response.dart';
import 'package:yapily_sdk/model/api_response_of_list_of_personal_current_account_data.dart';
import 'package:yapily_sdk/model/api_response_of_payment_authorisation_request_response.dart';
import 'package:yapily_sdk/model/api_response_of_payment_response.dart';
import 'package:yapily_sdk/model/api_response_of_payment_responses.dart';
import 'package:yapily_sdk/model/api_response_of_transfer_response.dart';
import 'package:yapily_sdk/model/api_response_of_user_delete_response.dart';
import 'package:yapily_sdk/model/application.dart';
import 'package:yapily_sdk/model/application_user.dart';
import 'package:yapily_sdk/model/authorisation_request_response.dart';
import 'package:yapily_sdk/model/balance.dart';
import 'package:yapily_sdk/model/branch.dart';
import 'package:yapily_sdk/model/bulk_user_delete.dart';
import 'package:yapily_sdk/model/bulk_user_delete_details.dart';
import 'package:yapily_sdk/model/charge_details.dart';
import 'package:yapily_sdk/model/consent.dart';
import 'package:yapily_sdk/model/consent_auth_code_request.dart';
import 'package:yapily_sdk/model/consent_delete_response.dart';
import 'package:yapily_sdk/model/core_product.dart';
import 'package:yapily_sdk/model/country.dart';
import 'package:yapily_sdk/model/create_consent_access_token.dart';
import 'package:yapily_sdk/model/credit_check.dart';
import 'package:yapily_sdk/model/credit_interest.dart';
import 'package:yapily_sdk/model/credit_interest_credit_interest_eligibility.dart';
import 'package:yapily_sdk/model/credit_interest_tier_band.dart';
import 'package:yapily_sdk/model/credit_interest_tier_band_set.dart';
import 'package:yapily_sdk/model/credit_line.dart';
import 'package:yapily_sdk/model/currency_exchange.dart';
import 'package:yapily_sdk/model/eligibility.dart';
import 'package:yapily_sdk/model/eligibility_other_eligibility.dart';
import 'package:yapily_sdk/model/feature_details.dart';
import 'package:yapily_sdk/model/filter_and_sort.dart';
import 'package:yapily_sdk/model/frequency_request.dart';
import 'package:yapily_sdk/model/frequency_response.dart';
import 'package:yapily_sdk/model/geo_location1.dart';
import 'package:yapily_sdk/model/geographic_coordinates1.dart';
import 'package:yapily_sdk/model/id_verification_check.dart';
import 'package:yapily_sdk/model/identity.dart';
import 'package:yapily_sdk/model/identity_address.dart';
import 'package:yapily_sdk/model/inline_response2001_atm.dart';
import 'package:yapily_sdk/model/inline_response2001_other_atm_services.dart';
import 'package:yapily_sdk/model/inline_response2001_other_accessibility.dart';
import 'package:yapily_sdk/model/institution.dart';
import 'package:yapily_sdk/model/institution_consent.dart';
import 'package:yapily_sdk/model/iso_bank_transaction_code.dart';
import 'package:yapily_sdk/model/iso_code_details.dart';
import 'package:yapily_sdk/model/location.dart';
import 'package:yapily_sdk/model/location_other_location_category.dart';
import 'package:yapily_sdk/model/media.dart';
import 'package:yapily_sdk/model/merchant.dart';
import 'package:yapily_sdk/model/merchant_info.dart';
import 'package:yapily_sdk/model/monitoring_feature_status.dart';
import 'package:yapily_sdk/model/multi_authorisation.dart';
import 'package:yapily_sdk/model/new_application_user.dart';
import 'package:yapily_sdk/model/next.dart';
import 'package:yapily_sdk/model/one_time_token_request.dart';
import 'package:yapily_sdk/model/other_application_frequency.dart';
import 'package:yapily_sdk/model/other_bank_interest_type.dart';
import 'package:yapily_sdk/model/other_calculation_frequency.dart';
import 'package:yapily_sdk/model/other_fee_rate_type.dart';
import 'package:yapily_sdk/model/other_fee_type.dart';
import 'package:yapily_sdk/model/other_residency_type.dart';
import 'package:yapily_sdk/model/other_type.dart';
import 'package:yapily_sdk/model/overdraft.dart';
import 'package:yapily_sdk/model/overdraft_other_fee_type.dart';
import 'package:yapily_sdk/model/overdraft_overdraft_fee_charge_cap.dart';
import 'package:yapily_sdk/model/overdraft_overdraft_fee_charge_detail.dart';
import 'package:yapily_sdk/model/overdraft_overdraft_fees_charges.dart';
import 'package:yapily_sdk/model/overdraft_overdraft_fees_charges1.dart';
import 'package:yapily_sdk/model/overdraft_overdraft_tier_band.dart';
import 'package:yapily_sdk/model/overdraft_overdraft_tier_band_set.dart';
import 'package:yapily_sdk/model/pagination.dart';
import 'package:yapily_sdk/model/payee.dart';
import 'package:yapily_sdk/model/payment_authorisation_request.dart';
import 'package:yapily_sdk/model/payment_authorisation_request_response.dart';
import 'package:yapily_sdk/model/payment_request.dart';
import 'package:yapily_sdk/model/payment_response.dart';
import 'package:yapily_sdk/model/payment_responses.dart';
import 'package:yapily_sdk/model/payment_status_details.dart';
import 'package:yapily_sdk/model/periodic_payment_request.dart';
import 'package:yapily_sdk/model/personal_current_account_brand.dart';
import 'package:yapily_sdk/model/personal_current_account_data.dart';
import 'package:yapily_sdk/model/personal_current_account_pca.dart';
import 'package:yapily_sdk/model/personal_current_account_pca_marketing_state.dart';
import 'package:yapily_sdk/model/postal_address1.dart';
import 'package:yapily_sdk/model/proprietary_bank_transaction_code.dart';
import 'package:yapily_sdk/model/residency_eligibility.dart';
import 'package:yapily_sdk/model/response_entity.dart';
import 'package:yapily_sdk/model/response_list_meta.dart';
import 'package:yapily_sdk/model/response_meta.dart';
import 'package:yapily_sdk/model/site.dart';
import 'package:yapily_sdk/model/sort_code_payment_auth_request.dart';
import 'package:yapily_sdk/model/sort_code_payment_request.dart';
import 'package:yapily_sdk/model/statement_reference.dart';
import 'package:yapily_sdk/model/transaction.dart';
import 'package:yapily_sdk/model/transfer_request.dart';
import 'package:yapily_sdk/model/transfer_response.dart';
import 'package:yapily_sdk/model/user_delete_request.dart';
import 'package:yapily_sdk/model/user_delete_response.dart';
import 'package:yapily_sdk/model/yapily_access_token.dart';



final _jsonJaguarRepo = JsonRepo()
..add(ATMMapServiceLinksSerializer())
..add(ATMOpenDataSerializer())
..add(ATMOpenDataBrandSerializer())
..add(ATMOpenDataResponseSerializer())
..add(AccountSerializer())
..add(AccountAuthorisationRequestSerializer())
..add(AccountBalanceSerializer())
..add(AccountIdentificationSerializer())
..add(AccountNameSerializer())
..add(AccountRequestSerializer())
..add(AccountStatementSerializer())
..add(AddressSerializer())
..add(AddressDetailsSerializer())
..add(AgeEligibilitySerializer())
..add(AmountSerializer())
..add(ApiErrorSerializer())
..add(ApiListResponseOfAccountSerializer())
..add(ApiListResponseOfAccountStatementSerializer())
..add(ApiListResponseOfBulkUserDeleteSerializer())
..add(ApiListResponseOfConsentSerializer())
..add(ApiListResponseOfFeatureDetailsSerializer())
..add(ApiListResponseOfInstitutionSerializer())
..add(ApiListResponseOfPaymentResponseSerializer())
..add(ApiListResponseOfTransactionSerializer())
..add(ApiResponseOfAccountSerializer())
..add(ApiResponseOfAccountStatementSerializer())
..add(ApiResponseOfAuthorisationRequestResponseSerializer())
..add(ApiResponseOfBulkUserDeleteDetailsSerializer())
..add(ApiResponseOfConsentSerializer())
..add(ApiResponseOfConsentDeleteResponseSerializer())
..add(ApiResponseOfIdentitySerializer())
..add(ApiResponseOfListOfATMOpenDataResponseSerializer())
..add(ApiResponseOfListOfPersonalCurrentAccountDataSerializer())
..add(ApiResponseOfPaymentAuthorisationRequestResponseSerializer())
..add(ApiResponseOfPaymentResponseSerializer())
..add(ApiResponseOfPaymentResponsesSerializer())
..add(ApiResponseOfTransferResponseSerializer())
..add(ApiResponseOfUserDeleteResponseSerializer())
..add(ApplicationSerializer())
..add(ApplicationUserSerializer())
..add(AuthorisationRequestResponseSerializer())
..add(BalanceSerializer())
..add(BranchSerializer())
..add(BulkUserDeleteSerializer())
..add(BulkUserDeleteDetailsSerializer())
..add(ChargeDetailsSerializer())
..add(ConsentSerializer())
..add(ConsentAuthCodeRequestSerializer())
..add(ConsentDeleteResponseSerializer())
..add(CoreProductSerializer())
..add(CountrySerializer())
..add(CreateConsentAccessTokenSerializer())
..add(CreditCheckSerializer())
..add(CreditInterestSerializer())
..add(CreditInterestCreditInterestEligibilitySerializer())
..add(CreditInterestTierBandSerializer())
..add(CreditInterestTierBandSetSerializer())
..add(CreditLineSerializer())
..add(CurrencyExchangeSerializer())
..add(EligibilitySerializer())
..add(EligibilityOtherEligibilitySerializer())
..add(FeatureDetailsSerializer())
..add(FilterAndSortSerializer())
..add(FrequencyRequestSerializer())
..add(FrequencyResponseSerializer())
..add(GeoLocation1Serializer())
..add(GeographicCoordinates1Serializer())
..add(IDVerificationCheckSerializer())
..add(IdentitySerializer())
..add(IdentityAddressSerializer())
..add(InlineResponse2001ATMSerializer())
..add(InlineResponse2001OtherATMServicesSerializer())
..add(InlineResponse2001OtherAccessibilitySerializer())
..add(InstitutionSerializer())
..add(InstitutionConsentSerializer())
..add(IsoBankTransactionCodeSerializer())
..add(IsoCodeDetailsSerializer())
..add(LocationSerializer())
..add(LocationOtherLocationCategorySerializer())
..add(MediaSerializer())
..add(MerchantSerializer())
..add(MerchantInfoSerializer())
..add(MonitoringFeatureStatusSerializer())
..add(MultiAuthorisationSerializer())
..add(NewApplicationUserSerializer())
..add(NextSerializer())
..add(OneTimeTokenRequestSerializer())
..add(OtherApplicationFrequencySerializer())
..add(OtherBankInterestTypeSerializer())
..add(OtherCalculationFrequencySerializer())
..add(OtherFeeRateTypeSerializer())
..add(OtherFeeTypeSerializer())
..add(OtherResidencyTypeSerializer())
..add(OtherTypeSerializer())
..add(OverdraftSerializer())
..add(OverdraftOtherFeeTypeSerializer())
..add(OverdraftOverdraftFeeChargeCapSerializer())
..add(OverdraftOverdraftFeeChargeDetailSerializer())
..add(OverdraftOverdraftFeesChargesSerializer())
..add(OverdraftOverdraftFeesCharges1Serializer())
..add(OverdraftOverdraftTierBandSerializer())
..add(OverdraftOverdraftTierBandSetSerializer())
..add(PaginationSerializer())
..add(PayeeSerializer())
..add(PaymentAuthorisationRequestSerializer())
..add(PaymentAuthorisationRequestResponseSerializer())
..add(PaymentRequestSerializer())
..add(PaymentResponseSerializer())
..add(PaymentResponsesSerializer())
..add(PaymentStatusDetailsSerializer())
..add(PeriodicPaymentRequestSerializer())
..add(PersonalCurrentAccountBrandSerializer())
..add(PersonalCurrentAccountDataSerializer())
..add(PersonalCurrentAccountPCASerializer())
..add(PersonalCurrentAccountPCAMarketingStateSerializer())
..add(PostalAddress1Serializer())
..add(ProprietaryBankTransactionCodeSerializer())
..add(ResidencyEligibilitySerializer())
..add(ResponseEntitySerializer())
..add(ResponseListMetaSerializer())
..add(ResponseMetaSerializer())
..add(SiteSerializer())
..add(SortCodePaymentAuthRequestSerializer())
..add(SortCodePaymentRequestSerializer())
..add(StatementReferenceSerializer())
..add(TransactionSerializer())
..add(TransferRequestSerializer())
..add(TransferResponseSerializer())
..add(UserDeleteRequestSerializer())
..add(UserDeleteResponseSerializer())
..add(YapilyAccessTokenSerializer())
;
final Map<String, CodecRepo> defaultConverters = {
    MimeTypes.json: _jsonJaguarRepo,
};



final _defaultInterceptors = [OAuthInterceptor(), BasicAuthInterceptor(), ApiKeyAuthInterceptor()];

class YapilySdk {
    List<Interceptor> interceptors;
    String basePath = "http://api.yapily.com";
    Route _baseRoute;
    final Duration timeout;

    /**
    * Add custom global interceptors, put overrideInterceptors to true to set your interceptors only (auth interceptors will not be added)
    */
    YapilySdk({List<Interceptor> interceptors, bool overrideInterceptors = false, String baseUrl, this.timeout = const Duration(minutes: 2)}) {
        _baseRoute = Route(baseUrl ?? basePath).withClient(globalClient ?? http.Client());
        if(interceptors == null) {
            this.interceptors = _defaultInterceptors;
        }
        else if(overrideInterceptors){
            this.interceptors = interceptors;
        }
        else {
            this.interceptors = List.from(_defaultInterceptors)..addAll(interceptors);
        }

        this.interceptors.forEach((interceptor) {
            _baseRoute.before(interceptor.before);
            _baseRoute.after(interceptor.after);
        });
    }

    void setOAuthToken(String name, String token) {
        (_defaultInterceptors[0] as OAuthInterceptor).tokens[name] = token;
    }

    void setBasicAuth(String name, String username, String password) {
        (_defaultInterceptors[1] as BasicAuthInterceptor).authInfo[name] = BasicAuthInfo(username, password);
    }

    void setApiKey(String name, String apiKey) {
        (_defaultInterceptors[2] as ApiKeyAuthInterceptor).apiKeys[name] = apiKey;
    }

    
    /**
    * Get AccountsApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
    AccountsApi getAccountsApi({Route base, Map<String, CodecRepo> converters}) {
        if(base == null) {
            base = _baseRoute;
        }
        if(converters == null) {
            converters = defaultConverters;
        }
        return AccountsApi(base: base, converters: converters, timeout: timeout);
    }

    
    /**
    * Get ApplicationUsersApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
    ApplicationUsersApi getApplicationUsersApi({Route base, Map<String, CodecRepo> converters}) {
        if(base == null) {
            base = _baseRoute;
        }
        if(converters == null) {
            converters = defaultConverters;
        }
        return ApplicationUsersApi(base: base, converters: converters, timeout: timeout);
    }

    
    /**
    * Get ApplicationsApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
    ApplicationsApi getApplicationsApi({Route base, Map<String, CodecRepo> converters}) {
        if(base == null) {
            base = _baseRoute;
        }
        if(converters == null) {
            converters = defaultConverters;
        }
        return ApplicationsApi(base: base, converters: converters, timeout: timeout);
    }

    
    /**
    * Get ConsentsApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
    ConsentsApi getConsentsApi({Route base, Map<String, CodecRepo> converters}) {
        if(base == null) {
            base = _baseRoute;
        }
        if(converters == null) {
            converters = defaultConverters;
        }
        return ConsentsApi(base: base, converters: converters, timeout: timeout);
    }

    
    /**
    * Get IdentityApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
    IdentityApi getIdentityApi({Route base, Map<String, CodecRepo> converters}) {
        if(base == null) {
            base = _baseRoute;
        }
        if(converters == null) {
            converters = defaultConverters;
        }
        return IdentityApi(base: base, converters: converters, timeout: timeout);
    }

    
    /**
    * Get InstitutionsApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
    InstitutionsApi getInstitutionsApi({Route base, Map<String, CodecRepo> converters}) {
        if(base == null) {
            base = _baseRoute;
        }
        if(converters == null) {
            converters = defaultConverters;
        }
        return InstitutionsApi(base: base, converters: converters, timeout: timeout);
    }

    
    /**
    * Get InstitutionsOpenDataApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
    InstitutionsOpenDataApi getInstitutionsOpenDataApi({Route base, Map<String, CodecRepo> converters}) {
        if(base == null) {
            base = _baseRoute;
        }
        if(converters == null) {
            converters = defaultConverters;
        }
        return InstitutionsOpenDataApi(base: base, converters: converters, timeout: timeout);
    }

    
    /**
    * Get OAuthApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
    OAuthApi getOAuthApi({Route base, Map<String, CodecRepo> converters}) {
        if(base == null) {
            base = _baseRoute;
        }
        if(converters == null) {
            converters = defaultConverters;
        }
        return OAuthApi(base: base, converters: converters, timeout: timeout);
    }

    
    /**
    * Get PaymentsApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
    PaymentsApi getPaymentsApi({Route base, Map<String, CodecRepo> converters}) {
        if(base == null) {
            base = _baseRoute;
        }
        if(converters == null) {
            converters = defaultConverters;
        }
        return PaymentsApi(base: base, converters: converters, timeout: timeout);
    }

    
    /**
    * Get StatementsApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
    StatementsApi getStatementsApi({Route base, Map<String, CodecRepo> converters}) {
        if(base == null) {
            base = _baseRoute;
        }
        if(converters == null) {
            converters = defaultConverters;
        }
        return StatementsApi(base: base, converters: converters, timeout: timeout);
    }

    
    /**
    * Get TransactionsApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
    TransactionsApi getTransactionsApi({Route base, Map<String, CodecRepo> converters}) {
        if(base == null) {
            base = _baseRoute;
        }
        if(converters == null) {
            converters = defaultConverters;
        }
        return TransactionsApi(base: base, converters: converters, timeout: timeout);
    }

    
    /**
    * Get TransfersApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
    TransfersApi getTransfersApi({Route base, Map<String, CodecRepo> converters}) {
        if(base == null) {
            base = _baseRoute;
        }
        if(converters == null) {
            converters = defaultConverters;
        }
        return TransfersApi(base: base, converters: converters, timeout: timeout);
    }

    
}
