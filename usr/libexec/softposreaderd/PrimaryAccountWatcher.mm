@interface PrimaryAccountWatcher
- (void)accountWasAdded:(id)added;
- (void)accountWasModified:(id)modified;
- (void)accountWasRemoved:(id)removed;
@end

@implementation PrimaryAccountWatcher

- (void)accountWasAdded:(id)added
{
  addedCopy = added;
  selfCopy = self;
  PrimaryAccountWatcher.accountWasAdded(_:)(addedCopy);
}

- (void)accountWasRemoved:(id)removed
{
  removedCopy = removed;
  selfCopy = self;
  PrimaryAccountWatcher.accountWasRemoved(_:)(removedCopy);
}

- (void)accountWasModified:(id)modified
{
  modifiedCopy = modified;
  selfCopy = self;
  PrimaryAccountWatcher.accountWasModified(_:)(modifiedCopy);
}

@end