@interface ANCMissedCallAlert
- (ANCMissedCallAlert)initWithRecentCall:(id)a3 manager:(id)a4 queue:(id)a5;
- (BOOL)hasPositiveAction;
- (BOOL)performNegativeAction;
- (BOOL)performPositiveAction;
- (id)appIdentifier;
- (id)date;
- (id)message;
- (id)negativeActionLabel;
- (id)positiveActionLabel;
- (id)subtitle;
- (id)title;
@end

@implementation ANCMissedCallAlert

- (ANCMissedCallAlert)initWithRecentCall:(id)a3 manager:(id)a4 queue:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = ANCMissedCallAlert;
  v12 = [(ANCAlert *)&v15 initWithCategoryID:2];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_recentCall, a3);
    objc_storeStrong(&v13->_manager, a4);
    objc_storeStrong(&v13->_queue, a5);
  }

  return v13;
}

- (id)appIdentifier
{
  v3 = objc_alloc_init(TUCallProviderManager);
  v4 = [(ANCMissedCallAlert *)self recentCall];
  v5 = [v3 providerForRecentCall:v4];

  v6 = [(ANCAlert *)self _appIdentifierForTUCallProvider:v5];

  return v6;
}

- (id)title
{
  v2 = [(ANCMissedCallAlert *)self recentCall];
  v3 = [v2 callerNameForDisplay];

  return v3;
}

- (id)subtitle
{
  v2 = [(ANCMissedCallAlert *)self recentCall];
  v3 = [v2 callerIdLabel];

  return v3;
}

- (id)message
{
  v2 = +[NSBundle mobileBluetoothBundle];
  v3 = [v2 localizedStringForKey:@"MISSED_CALL" value:@"Missed Call" table:0];

  return v3;
}

- (id)date
{
  v2 = [(ANCMissedCallAlert *)self recentCall];
  v3 = [v2 date];

  return v3;
}

- (BOOL)hasPositiveAction
{
  v2 = [(ANCMissedCallAlert *)self recentCall];
  v3 = [v2 callerId];
  v4 = v3 != 0;

  return v4;
}

- (id)positiveActionLabel
{
  v2 = +[NSBundle mobileBluetoothBundle];
  v3 = [v2 localizedStringForKey:@"DIAL" value:@"Dial" table:0];

  return v3;
}

- (id)negativeActionLabel
{
  v2 = +[NSBundle mobileBluetoothBundle];
  v3 = [v2 localizedStringForKey:@"CLEAR" value:@"Clear" table:0];

  return v3;
}

- (BOOL)performPositiveAction
{
  v3 = [(ANCMissedCallAlert *)self recentCall];
  v4 = [v3 callerId];

  if (!v4)
  {
    return 0;
  }

  v5 = objc_alloc_init(TUCallProviderManager);
  v6 = [(ANCMissedCallAlert *)self recentCall];
  v7 = [v5 providerForRecentCall:v6];

  if (v7)
  {
    v8 = [[TUDialRequest alloc] initWithProvider:v7];
    v9 = [(ANCMissedCallAlert *)self recentCall];
    v10 = [v9 callerId];
    v11 = [TUHandle handleWithDestinationID:v10];
    [v8 setHandle:v11];

    v12 = [(ANCMissedCallAlert *)self queue];
    v13 = [TUCallCenter callCenterWithQueue:v12];
    v14 = [v13 dialWithRequest:v8];
    v15 = v14 != 0;
  }

  else
  {
    v16 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_FAULT))
    {
      sub_10007B1DC(v16, self);
    }

    v15 = 0;
  }

  return v15;
}

- (BOOL)performNegativeAction
{
  v3 = [(ANCMissedCallAlert *)self recentCall];
  v4 = [v3 uniqueId];
  v5 = [NSPredicate predicateWithFormat:@"uniqueId == %@", v4];

  v6 = [(ANCMissedCallAlert *)self manager];
  [v6 markAllCallsAsReadWithPredicate:v5];

  return 1;
}

@end