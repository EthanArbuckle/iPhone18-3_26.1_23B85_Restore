@interface ANCMissedCallAlert
- (ANCMissedCallAlert)initWithRecentCall:(id)call manager:(id)manager queue:(id)queue;
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

- (ANCMissedCallAlert)initWithRecentCall:(id)call manager:(id)manager queue:(id)queue
{
  callCopy = call;
  managerCopy = manager;
  queueCopy = queue;
  v15.receiver = self;
  v15.super_class = ANCMissedCallAlert;
  v12 = [(ANCAlert *)&v15 initWithCategoryID:2];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_recentCall, call);
    objc_storeStrong(&v13->_manager, manager);
    objc_storeStrong(&v13->_queue, queue);
  }

  return v13;
}

- (id)appIdentifier
{
  v3 = objc_alloc_init(TUCallProviderManager);
  recentCall = [(ANCMissedCallAlert *)self recentCall];
  v5 = [v3 providerForRecentCall:recentCall];

  v6 = [(ANCAlert *)self _appIdentifierForTUCallProvider:v5];

  return v6;
}

- (id)title
{
  recentCall = [(ANCMissedCallAlert *)self recentCall];
  callerNameForDisplay = [recentCall callerNameForDisplay];

  return callerNameForDisplay;
}

- (id)subtitle
{
  recentCall = [(ANCMissedCallAlert *)self recentCall];
  callerIdLabel = [recentCall callerIdLabel];

  return callerIdLabel;
}

- (id)message
{
  v2 = +[NSBundle mobileBluetoothBundle];
  v3 = [v2 localizedStringForKey:@"MISSED_CALL" value:@"Missed Call" table:0];

  return v3;
}

- (id)date
{
  recentCall = [(ANCMissedCallAlert *)self recentCall];
  date = [recentCall date];

  return date;
}

- (BOOL)hasPositiveAction
{
  recentCall = [(ANCMissedCallAlert *)self recentCall];
  callerId = [recentCall callerId];
  v4 = callerId != 0;

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
  recentCall = [(ANCMissedCallAlert *)self recentCall];
  callerId = [recentCall callerId];

  if (!callerId)
  {
    return 0;
  }

  v5 = objc_alloc_init(TUCallProviderManager);
  recentCall2 = [(ANCMissedCallAlert *)self recentCall];
  v7 = [v5 providerForRecentCall:recentCall2];

  if (v7)
  {
    v8 = [[TUDialRequest alloc] initWithProvider:v7];
    recentCall3 = [(ANCMissedCallAlert *)self recentCall];
    callerId2 = [recentCall3 callerId];
    v11 = [TUHandle handleWithDestinationID:callerId2];
    [v8 setHandle:v11];

    queue = [(ANCMissedCallAlert *)self queue];
    v13 = [TUCallCenter callCenterWithQueue:queue];
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
  recentCall = [(ANCMissedCallAlert *)self recentCall];
  uniqueId = [recentCall uniqueId];
  v5 = [NSPredicate predicateWithFormat:@"uniqueId == %@", uniqueId];

  manager = [(ANCMissedCallAlert *)self manager];
  [manager markAllCallsAsReadWithPredicate:v5];

  return 1;
}

@end