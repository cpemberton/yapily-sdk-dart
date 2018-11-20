part of yapily_sdk.api;

class FilterAndSort {
  
  DateTime before = null;
  

  DateTime from = null;
  

  int limit = null;
  

  String sort = null;
  //enum sortEnum {  date,  -date,  };
  FilterAndSort();

  @override
  String toString() {
    return 'FilterAndSort[before=$before, from=$from, limit=$limit, sort=$sort, ]';
  }

  FilterAndSort.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    before = json['before'] == null ? null : DateTime.parse(json['before']);
    from = json['from'] == null ? null : DateTime.parse(json['from']);
    limit =
        json['limit']
    ;
    sort =
        json['sort']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'before': before == null ? '' : before.toUtc().toIso8601String(),
      'from': from == null ? '' : from.toUtc().toIso8601String(),
      'limit': limit,
      'sort': sort
     };
  }

  static List<FilterAndSort> listFromJson(List<dynamic> json) {
    return json == null ? new List<FilterAndSort>() : json.map((value) => new FilterAndSort.fromJson(value)).toList();
  }

  static Map<String, FilterAndSort> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, FilterAndSort>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new FilterAndSort.fromJson(value));
    }
    return map;
  }
}

