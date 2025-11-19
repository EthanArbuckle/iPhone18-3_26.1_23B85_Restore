@interface OSLogEventStreamBase
- (id)assignFilterPredicate:(id)a3 error:(id *)a4;
@end

@implementation OSLogEventStreamBase

- (id)assignFilterPredicate:(id)a3 error:(id *)a4
{
  v5 = a3;
  [(OSLogEventStreamBase *)self setFilterPredicate:v5];
  v6 = v5;

  return v6;
}

@end