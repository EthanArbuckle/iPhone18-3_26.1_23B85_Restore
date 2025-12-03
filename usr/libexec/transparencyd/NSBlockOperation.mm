@interface NSBlockOperation
+ (id)named:(id)named withBlock:(id)block;
@end

@implementation NSBlockOperation

+ (id)named:(id)named withBlock:(id)block
{
  namedCopy = named;
  v6 = [NSBlockOperation blockOperationWithBlock:block];
  [v6 setName:namedCopy];

  return v6;
}

@end