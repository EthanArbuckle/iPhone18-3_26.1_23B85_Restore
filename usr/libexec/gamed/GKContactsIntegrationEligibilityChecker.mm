@interface GKContactsIntegrationEligibilityChecker
- (BOOL)isEligibleAllowingIneligibility:(unint64_t)ineligibility usingSettings:(id)settings localPlayerInternal:(id)internal isConnectionManagerReady:(BOOL)ready withContext:(id)context;
- (unint64_t)currentIneligibilityUsingSettings:(id)settings localPlayerInternal:(id)internal isConnectionManagerReady:(BOOL)ready loggingEnabled:(BOOL)enabled withContext:(id)context;
@end

@implementation GKContactsIntegrationEligibilityChecker

- (BOOL)isEligibleAllowingIneligibility:(unint64_t)ineligibility usingSettings:(id)settings localPlayerInternal:(id)internal isConnectionManagerReady:(BOOL)ready withContext:(id)context
{
  readyCopy = ready;
  v12 = os_log_GKContacts;
  contextCopy = context;
  internalCopy = internal;
  settingsCopy = settings;
  LOBYTE(readyCopy) = [(GKContactsIntegrationEligibilityChecker *)self isEligibleAllowingIneligibility:ineligibility usingSettings:settingsCopy localPlayerInternal:internalCopy isConnectionManagerReady:readyCopy loggingEnabled:os_log_is_debug_enabled(v12) withContext:contextCopy];

  return readyCopy;
}

- (unint64_t)currentIneligibilityUsingSettings:(id)settings localPlayerInternal:(id)internal isConnectionManagerReady:(BOOL)ready loggingEnabled:(BOOL)enabled withContext:(id)context
{
  enabledCopy = enabled;
  settingsCopy = settings;
  internalCopy = internal;
  contextCopy = context;
  if (enabledCopy)
  {
    v14 = +[NSMutableString string];
    if (settingsCopy)
    {
LABEL_3:
      v15 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    v14 = 0;
    if (settingsCopy)
    {
      goto LABEL_3;
    }
  }

  [v14 appendString:{@"MissingSettings, "}];
  v15 = 1;
LABEL_6:
  if (([settingsCopy allowUpdates] & 1) == 0)
  {
    [v14 appendString:{@"NotAllowedInSettings, "}];
    v15 |= 0x10uLL;
  }

  if (internalCopy)
  {
    if ([internalCopy hasAcknowledgedLatestGDPR])
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
  if (!ready)
  {
    [v14 appendString:{@"IDSMissingAccount, "}];
    v15 |= 4uLL;
  }

  if (([settingsCopy allowUpdatesWithoutFriends] & 1) == 0)
  {
    v18 = +[GKFriendListEntryCacheObject _gkFetchRequest];
    v19 = [contextCopy _gkCountObjectsFromRequest:v18];

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