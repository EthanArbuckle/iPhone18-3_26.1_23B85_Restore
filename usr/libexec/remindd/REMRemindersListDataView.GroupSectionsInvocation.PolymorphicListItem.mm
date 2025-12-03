@interface REMRemindersListDataView.GroupSectionsInvocation.PolymorphicListItem
- (REMObjectID)remObjectID;
@end

@implementation REMRemindersListDataView.GroupSectionsInvocation.PolymorphicListItem

- (REMObjectID)remObjectID
{
  remObjectID = [*self->modelObject & 0x7FFFFFFFFFFFFFFFLL remObjectID];

  return remObjectID;
}

@end