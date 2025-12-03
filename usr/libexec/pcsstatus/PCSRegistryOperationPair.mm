@interface PCSRegistryOperationPair
- (id)description;
- (id)init:(id)init finish:(id)finish;
@end

@implementation PCSRegistryOperationPair

- (id)init:(id)init finish:(id)finish
{
  initCopy = init;
  finishCopy = finish;
  v12.receiver = self;
  v12.super_class = PCSRegistryOperationPair;
  v9 = [(PCSRegistryOperationPair *)&v12 init];
  p_isa = &v9->super.isa;
  if (v9)
  {
    objc_storeStrong(&v9->_actualOperation, init);
    objc_storeStrong(p_isa + 2, finish);
  }

  return p_isa;
}

- (id)description
{
  actualOperation = [(PCSRegistryOperationPair *)self actualOperation];
  finishOperation = [(PCSRegistryOperationPair *)self finishOperation];
  v5 = [NSString stringWithFormat:@"<PCSRegistryOperationPair: %@, %@>", actualOperation, finishOperation];

  return v5;
}

@end