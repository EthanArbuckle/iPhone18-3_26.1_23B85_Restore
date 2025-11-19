@interface REMAccountsListDataView.Invocation.PolymorphicListItem
- (REMObjectID)remObjectID;
@end

@implementation REMAccountsListDataView.Invocation.PolymorphicListItem

- (REMObjectID)remObjectID
{
  v2 = [*self->modelObject & 0x7FFFFFFFFFFFFFFFLL remObjectID];

  return v2;
}

@end