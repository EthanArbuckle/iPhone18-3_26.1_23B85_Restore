@interface SKGenericOperation
- (BOOL)run;
@end

@implementation SKGenericOperation

- (BOOL)run
{
  completionBlock = [(SKGenericOperation *)self completionBlock];
  completionBlock[2]();

  [(SKManagerOperation *)self finished];
  return 1;
}

@end