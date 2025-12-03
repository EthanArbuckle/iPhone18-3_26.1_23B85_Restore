@interface REMRemindersListDataView.GroupInvocation.PolymorphicListItem
- (REMObjectID)remObjectID;
@end

@implementation REMRemindersListDataView.GroupInvocation.PolymorphicListItem

- (REMObjectID)remObjectID
{
  remObjectID = [*self->modelObject & 0x7FFFFFFFFFFFFFFFLL remObjectID];

  return remObjectID;
}

@end