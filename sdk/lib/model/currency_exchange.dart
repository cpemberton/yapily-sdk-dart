part of yapily_sdk.api;

class CurrencyExchange {
  /* ISO 4217 currency code denoting the currency of the creditor */
  String sourceCurrency = null;
  
/* ISO 4217 currency code denoting the currency of the debtor */
  String targetCurrency = null;
  
/* ISO 4217 currency code denoting the currency used to set the exchange rate (GBP is the unit currency in the conversion of 1 GBP = x CUR) */
  String unitCurrency = null;
  
/* Currency exchange rate */
  num exchangeRate = null;
  
  CurrencyExchange();

  @override
  String toString() {
    return 'CurrencyExchange[sourceCurrency=$sourceCurrency, targetCurrency=$targetCurrency, unitCurrency=$unitCurrency, exchangeRate=$exchangeRate, ]';
  }

  CurrencyExchange.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    sourceCurrency =
        json['sourceCurrency']
    ;
    targetCurrency =
        json['targetCurrency']
    ;
    unitCurrency =
        json['unitCurrency']
    ;
    exchangeRate =
        json['exchangeRate']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'sourceCurrency': sourceCurrency,
      'targetCurrency': targetCurrency,
      'unitCurrency': unitCurrency,
      'exchangeRate': exchangeRate
     };
  }

  static List<CurrencyExchange> listFromJson(List<dynamic> json) {
    return json == null ? new List<CurrencyExchange>() : json.map((value) => new CurrencyExchange.fromJson(value)).toList();
  }

  static Map<String, CurrencyExchange> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CurrencyExchange>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CurrencyExchange.fromJson(value));
    }
    return map;
  }
}

