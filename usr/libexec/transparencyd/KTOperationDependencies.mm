@interface KTOperationDependencies
- (KTStateFlagHandler)flagHandler;
@end

@implementation KTOperationDependencies

- (KTStateFlagHandler)flagHandler
{
  WeakRetained = objc_loadWeakRetained(&self->_flagHandler);

  return WeakRetained;
}

@end