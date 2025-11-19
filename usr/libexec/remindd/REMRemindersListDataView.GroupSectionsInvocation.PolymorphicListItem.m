@interface REMRemindersListDataView.GroupSectionsInvocation.PolymorphicListItem
- (REMObjectID)remObjectID;
@end

@implementation REMRemindersListDataView.GroupSectionsInvocation.PolymorphicListItem

- (REMObjectID)remObjectID
{
  v2 = [*self->modelObject & 0x7FFFFFFFFFFFFFFFLL remObjectID];

  return v2;
}

@end