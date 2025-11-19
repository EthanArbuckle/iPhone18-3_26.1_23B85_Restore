@interface NSBlockOperation
+ (id)named:(id)a3 withBlock:(id)a4;
@end

@implementation NSBlockOperation

+ (id)named:(id)a3 withBlock:(id)a4
{
  v5 = a3;
  v6 = [NSBlockOperation blockOperationWithBlock:a4];
  [v6 setName:v5];

  return v6;
}

@end