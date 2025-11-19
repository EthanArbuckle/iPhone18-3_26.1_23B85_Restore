@interface GKContactsIntegrationEligibilityChecker
- (BOOL)isEligibleAllowingIneligibility:(unint64_t)a3 usingSettings:(id)a4 localPlayerInternal:(id)a5 isConnectionManagerReady:(BOOL)a6 withContext:(id)a7;
- (unint64_t)currentIneligibilityUsingSettings:(id)a3 localPlayerInternal:(id)a4 isConnectionManagerReady:(BOOL)a5 loggingEnabled:(BOOL)a6 withContext:(id)a7;
@end

@implementation GKContactsIntegrationEligibilityChecker

- (BOOL)isEligibleAllowingIneligibility:(unint64_t)a3 usingSettings:(id)a4 localPlayerInternal:(id)a5 isConnectionManagerReady:(BOOL)a6 withContext:(id)a7
{
  v7 = a6;
  v12 = os_log_GKContacts;
  v13 = a7;
  v14 = a5;
  v15 = a4;
  LOBYTE(v7) = [(GKContactsIntegrationEligibilityChecker *)self isEligibleAllowingIneligibility:a3 usingSettings:v15 localPlayerInternal:v14 isConnectionManagerReady:v7 loggingEnabled:os_log_is_debug_enabled(v12) withContext:v13];

  return v7;
}

- (unint64_t)currentIneligibilityUsingSettings:(id)a3 localPlayerInternal:(id)a4 isConnectionManagerReady:(BOOL)a5 loggingEnabled:(BOOL)a6 withContext:(id)a7
{
  v8 = a6;
  v11 = a3;
  v12 = a4;
  v13 = a7;
  if (v8)
  {
    v14 = +[NSMutableString string];
    if (v11)
    {
LABEL_3:
      v15 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    v14 = 0;
    if (v11)
    {
      goto LABEL_3;
    }
  }

  [v14 appendString:{@"MissingSettings, "}];
  v15 = 1;
LABEL_6:
  if (([v11 allowUpdates] & 1) == 0)
  {
    [v14 appendString:{@"NotAllowedInSettings, "}];
    v15 |= 0x10uLL;
  }

  if (v12)
  {
    if ([v12 hasAcknowledgedLatestGDPR])
    {
      goto LABEL_13;
    }

    v16 = @"HasNotAcceptedGDPR, ";
    v17 = 32;
  }

  else
  {
    v16 = @"NoPrimaryPlayer, ";
    v17 = 2;
  }

  [v14 appendString:v16];
  v15 |= v17;
LABEL_13:
  if (!a5)
  {
    [v14 appendString:{@"IDSMissingAccount, "}];
    v15 |= 4uLL;
  }

  if (([v11 allowUpdatesWithoutFriends] & 1) == 0)
  {
    v18 = +[GKFriendListEntryCacheObject _gkFetchRequest];
    v19 = [v13 _gkCountObjectsFromRequest:v18];

    if (!v19)
    {
      [v14 appendString:{@"NoFriends, "}];
      v15 |= 8uLL;
    }
  }

  if ([v14 length])
  {
    if (!os_log_GKGeneral)
    {
      v20 = GKOSLoggers();
    }

    v21 = os_log_GKContacts;
    if (os_log_type_enabled(os_log_GKContacts, OS_LOG_TYPE_DEBUG))
    {
      sub_10029496C(v14, v21);
    }
  }

  return v15;
}

@end