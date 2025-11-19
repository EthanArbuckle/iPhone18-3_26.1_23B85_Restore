@interface NSBlockOperation
- (id)ic_shortLoggingOperationName;
@end

@implementation NSBlockOperation

- (id)ic_shortLoggingOperationName
{
  v2 = ICCKOperationShortClassNameNSBlockOperation;
  v3 = [(NSBlockOperation *)self name];
  v4 = blockOperationShortNameFromOperationName(v3);
  v5 = [NSString stringWithFormat:@"%@-%@", v2, v4];

  return v5;
}

@end