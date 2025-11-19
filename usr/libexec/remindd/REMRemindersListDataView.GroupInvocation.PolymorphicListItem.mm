@interface REMRemindersListDataView.GroupInvocation.PolymorphicListItem
- (REMObjectID)remObjectID;
@end

@implementation REMRemindersListDataView.GroupInvocation.PolymorphicListItem

- (REMObjectID)remObjectID
{
  v2 = [*self->modelObject & 0x7FFFFFFFFFFFFFFFLL remObjectID];

  return v2;
}

@end