@interface REMReminder
- (BOOL)isPhantom;
@end

@implementation REMReminder

- (BOOL)isPhantom
{
  list = [(REMReminder *)self list];
  if (list)
  {
    list2 = [(REMReminder *)self list];
    account = [list2 account];
    v6 = account == 0;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

@end