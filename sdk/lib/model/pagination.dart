import 'package:jaguar_serializer/jaguar_serializer.dart';


import 'package:yapily_sdk/model/next.dart';

import 'package:yapily_sdk/model/filter_and_sort.dart';

part 'pagination.jser.dart';

class Pagination {
  
  @Alias('next', isNullable: false,  )
  final Next next;
  
  @Alias('self', isNullable: false,  )
  final FilterAndSort self;
  
  @Alias('totalCount', isNullable: false,  )
  final int totalCount;
  

  Pagination(
      

{
     this.next = null,  
     this.self = null,  
     this.totalCount = null 
    
    }
  );

  @override
  String toString() {
    return 'Pagination[next=$next, self=$self, totalCount=$totalCount, ]';
  }
}

@GenSerializer(nullableFields: true)
class PaginationSerializer extends Serializer<Pagination> with _$PaginationSerializer {

}

