@interface SKGenericOperation
- (BOOL)run;
@end

@implementation SKGenericOperation

- (BOOL)run
{
  v3 = [(SKGenericOperation *)self completionBlock];
  v3[2]();

  [(SKManagerOperation *)self finished];
  return 1;
}

@end