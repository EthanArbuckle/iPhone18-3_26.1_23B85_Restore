@interface misCTClientDelegates
- (void)subscriptionInfoDidChange;
- (void)tetheringStatus:(id)status connectionType:(int)type;
@end

@implementation misCTClientDelegates

- (void)tetheringStatus:(id)status connectionType:(int)type
{
  sub_100001108();
  if (type == 4)
  {
    v7 = +[misCTClientSharedInstance sharedInstance];

    [(misCTClientSharedInstance *)v7 processCTTetheringStatusChangeNotification:status];
  }

  else
  {
    [NSStringFromSelector(a2) UTF8String];
    sub_100001108();
  }
}

- (void)subscriptionInfoDidChange
{
  v2 = +[misCTClientSharedInstance sharedInstance];

  [(misCTClientSharedInstance *)v2 _updateDualSimStatus];
}

@end