@interface NSBlockOperation
- (id)ic_shortLoggingOperationName;
@end

@implementation NSBlockOperation

- (id)ic_shortLoggingOperationName
{
  v2 = ICCKOperationShortClassNameNSBlockOperation;
  name = [(NSBlockOperation *)self name];
  v4 = blockOperationShortNameFromOperationName(name);
  v5 = [NSString stringWithFormat:@"%@-%@", v2, v4];

  return v5;
}

@end