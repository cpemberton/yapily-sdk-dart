part of yapily_sdk.api;

class Transaction {
  /* Transaction Id returned by the institution if present */
  String id = null;
  
/* Transaction date as defined by the institution */
  DateTime date = null;
  
/* Date and (if available) time that transaction is posted */
  DateTime bookingDateTime = null;
  
/* The actual or expected date and time transaction is cleared */
  DateTime valueDateTime = null;
  
/* The status of the transaction */
  String status = null;
  //enum statusEnum {  ACCOUNT_CHECK,  BOOKED,  DECLINED,  PENDING,  REFUNDED,  RETRYING,  REVERSED,  UPCOMING,  };
/* Deprecated. Use the amount value in `transactionAmount` instead */
  num amount = null;
  
/* Deprecated. Use the currency value in `transactionAmount` instead */
  String currency = null;
  

  Amount transactionAmount = null;
  

  CurrencyExchange currencyExchange = null;
  
/* If present, contains details of any charges applied during this transaction */
  ChargeDetails chargeDetails = null;
  
/* Transaction reference */
  String reference = null;
  

  List<StatementReference> statementReferences = [];
  
/* Unstructured text containing details of the transaction. Usage varies according to the institution */
  String description = null;
  
/* Further information related to the transaction. Usage varies according to the institution */
  List<String> transactionInformation = [];
  

  AddressDetails addressDetails = null;
  

  IsoBankTransactionCode isoBankTransactionCode = null;
  

  ProprietaryBankTransactionCode proprietaryBankTransactionCode = null;
  
/* Running account balance after transaction has been applied */
  Balance balance = null;
  
/* Merchant details */
  Merchant merchant = null;
  
  Transaction();

  @override
  String toString() {
    return 'Transaction[id=$id, date=$date, bookingDateTime=$bookingDateTime, valueDateTime=$valueDateTime, status=$status, amount=$amount, currency=$currency, transactionAmount=$transactionAmount, currencyExchange=$currencyExchange, chargeDetails=$chargeDetails, reference=$reference, statementReferences=$statementReferences, description=$description, transactionInformation=$transactionInformation, addressDetails=$addressDetails, isoBankTransactionCode=$isoBankTransactionCode, proprietaryBankTransactionCode=$proprietaryBankTransactionCode, balance=$balance, merchant=$merchant, ]';
  }

  Transaction.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id =
        json['id']
    ;
    date = json['date'] == null ? null : DateTime.parse(json['date']);
    bookingDateTime = json['bookingDateTime'] == null ? null : DateTime.parse(json['bookingDateTime']);
    valueDateTime = json['valueDateTime'] == null ? null : DateTime.parse(json['valueDateTime']);
    status =
        json['status']
    ;
    amount =
        json['amount']
    ;
    currency =
        json['currency']
    ;
    transactionAmount =
      
      
      new Amount.fromJson(json['transactionAmount'])
;
    currencyExchange =
      
      
      new CurrencyExchange.fromJson(json['currencyExchange'])
;
    chargeDetails =
      
      
      new ChargeDetails.fromJson(json['chargeDetails'])
;
    reference =
        json['reference']
    ;
    statementReferences =
      StatementReference.listFromJson(json['statementReferences'])
;
    description =
        json['description']
    ;
    transactionInformation =
        (json['transactionInformation'] as List).map((item) => item as String).toList()
    ;
    addressDetails =
      
      
      new AddressDetails.fromJson(json['addressDetails'])
;
    isoBankTransactionCode =
      
      
      new IsoBankTransactionCode.fromJson(json['isoBankTransactionCode'])
;
    proprietaryBankTransactionCode =
      
      
      new ProprietaryBankTransactionCode.fromJson(json['proprietaryBankTransactionCode'])
;
    balance =
      
      
      new Balance.fromJson(json['balance'])
;
    merchant =
      
      
      new Merchant.fromJson(json['merchant'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'date': date == null ? '' : date.toUtc().toIso8601String(),
      'bookingDateTime': bookingDateTime == null ? '' : bookingDateTime.toUtc().toIso8601String(),
      'valueDateTime': valueDateTime == null ? '' : valueDateTime.toUtc().toIso8601String(),
      'status': status,
      'amount': amount,
      'currency': currency,
      'transactionAmount': transactionAmount,
      'currencyExchange': currencyExchange,
      'chargeDetails': chargeDetails,
      'reference': reference,
      'statementReferences': statementReferences,
      'description': description,
      'transactionInformation': transactionInformation,
      'addressDetails': addressDetails,
      'isoBankTransactionCode': isoBankTransactionCode,
      'proprietaryBankTransactionCode': proprietaryBankTransactionCode,
      'balance': balance,
      'merchant': merchant
     };
  }

  static List<Transaction> listFromJson(List<dynamic> json) {
    return json == null ? new List<Transaction>() : json.map((value) => new Transaction.fromJson(value)).toList();
  }

  static Map<String, Transaction> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Transaction>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Transaction.fromJson(value));
    }
    return map;
  }
}

