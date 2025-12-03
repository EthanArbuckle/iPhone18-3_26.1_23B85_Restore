@interface REMAccountsListDataView.Invocation.PolymorphicListItem
- (REMObjectID)remObjectID;
@end

@implementation REMAccountsListDataView.Invocation.PolymorphicListItem

- (REMObjectID)remObjectID
{
  remObjectID = [*self->modelObject & 0x7FFFFFFFFFFFFFFFLL remObjectID];

  return remObjectID;
}

@end