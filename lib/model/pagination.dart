part of yapily_sdk.api;

class Pagination {
  
  Next next = null;
  

  FilterAndSort self = null;
  

  int totalCount = null;
  
  Pagination();

  @override
  String toString() {
    return 'Pagination[next=$next, self=$self, totalCount=$totalCount, ]';
  }

  Pagination.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    next =
      
      
      new Next.fromJson(json['next'])
;
    self =
      
      
      new FilterAndSort.fromJson(json['self'])
;
    totalCount =
        json['totalCount']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'next': next,
      'self': self,
      'totalCount': totalCount
     };
  }

  static List<Pagination> listFromJson(List<dynamic> json) {
    return json == null ? new List<Pagination>() : json.map((value) => new Pagination.fromJson(value)).toList();
  }

  static Map<String, Pagination> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Pagination>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Pagination.fromJson(value));
    }
    return map;
  }
}

