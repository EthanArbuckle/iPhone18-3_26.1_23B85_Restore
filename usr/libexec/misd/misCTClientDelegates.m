@interface misCTClientDelegates
- (void)subscriptionInfoDidChange;
- (void)tetheringStatus:(id)a3 connectionType:(int)a4;
@end

@implementation misCTClientDelegates

- (void)tetheringStatus:(id)a3 connectionType:(int)a4
{
  sub_100001108();
  if (a4 == 4)
  {
    v7 = +[misCTClientSharedInstance sharedInstance];

    [(misCTClientSharedInstance *)v7 processCTTetheringStatusChangeNotification:a3];
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