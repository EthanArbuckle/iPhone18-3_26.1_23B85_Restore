@interface PrimaryAccountWatcher
- (void)accountWasAdded:(id)a3;
- (void)accountWasModified:(id)a3;
- (void)accountWasRemoved:(id)a3;
@end

@implementation PrimaryAccountWatcher

- (void)accountWasAdded:(id)a3
{
  v4 = a3;
  v5 = self;
  PrimaryAccountWatcher.accountWasAdded(_:)(v4);
}

- (void)accountWasRemoved:(id)a3
{
  v4 = a3;
  v5 = self;
  PrimaryAccountWatcher.accountWasRemoved(_:)(v4);
}

- (void)accountWasModified:(id)a3
{
  v4 = a3;
  v5 = self;
  PrimaryAccountWatcher.accountWasModified(_:)(v4);
}

@end