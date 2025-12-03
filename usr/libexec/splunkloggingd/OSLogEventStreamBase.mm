@interface OSLogEventStreamBase
- (id)assignFilterPredicate:(id)predicate error:(id *)error;
@end

@implementation OSLogEventStreamBase

- (id)assignFilterPredicate:(id)predicate error:(id *)error
{
  predicateCopy = predicate;
  [(OSLogEventStreamBase *)self setFilterPredicate:predicateCopy];
  v6 = predicateCopy;

  return v6;
}

@end