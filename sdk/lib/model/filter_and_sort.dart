import 'package:jaguar_serializer/jaguar_serializer.dart';


part 'filter_and_sort.jser.dart';

class FilterAndSort {
  
  @Alias('before', isNullable: false,  )
  final DateTime before;
  
  @Alias('from', isNullable: false,  )
  final DateTime from;
  
  @Alias('limit', isNullable: false,  )
  final int limit;
  
  @Alias('offset', isNullable: false,  )
  final int offset;
  
  @Alias('sort', isNullable: false,
          
  )
  final String sort;
  //enum sortEnum {  date,  -date,  };

  FilterAndSort(
      

{
     this.before = null,  
     this.from = null,  
     this.limit = null,  
     this.offset = null,  
     this.sort = null 
    
    }
  );

  @override
  String toString() {
    return 'FilterAndSort[before=$before, from=$from, limit=$limit, offset=$offset, sort=$sort, ]';
  }
}

@GenSerializer(nullableFields: true)
class FilterAndSortSerializer extends Serializer<FilterAndSort> with _$FilterAndSortSerializer {

}

