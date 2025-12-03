@interface GKCDIDSInfo
+ (id)_gkObjectsMatchingContactAssociationIDs:(id)ds withContext:(id)context;
+ (id)_gkObjectsMatchingHandles:(id)handles withContext:(id)context;
- (BOOL)isExpiredForSettings:(id)settings;
- (int)cohortFromIDSConsent:(int)consent;
- (void)_gkUpdateEntryWithHandle:(id)handle contactAssociationID:(id)d supportsFriendingViaPush:(id)push supportsMessageTransportV2:(id)v2 cohort:(int)cohort;
- (void)_gkUpdateEntryWithHandle:(id)handle idsInfoResult:(id)result;
@end

@implementation GKCDIDSInfo

- (BOOL)isExpiredForSettings:(id)settings
{
  settingsCopy = settings;
  cohort = [(GKCDIDSInfo *)self cohort];

  if (cohort)
  {
    cohort2 = [(GKCDIDSInfo *)self cohort];
    intValue = [cohort2 intValue];

    [settingsCopy expirationTimeForCohort:intValue];
    v9 = v8;
    v10 = +[NSDate date];
    timeStamp = [(GKCDIDSInfo *)self timeStamp];
    [v10 timeIntervalSinceDate:timeStamp];
    v13 = v12 > v9;
  }

  else
  {
    v13 = 1;
  }

  return v13;
}

- (void)_gkUpdateEntryWithHandle:(id)handle idsInfoResult:(id)result
{
  handleCopy = handle;
  resultCopy = result;
  v8 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v8, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v9 = +[NSThread callStackSymbols];
    v10 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKCDIDSInfo(GKAdditions) _gkUpdateEntryWithHandle:idsInfoResult:]", v9];
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCDIDSInfo+GKAdditions.m"];
    lastPathComponent = [v11 lastPathComponent];
    v13 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v10, "-[GKCDIDSInfo(GKAdditions) _gkUpdateEntryWithHandle:idsInfoResult:]", [lastPathComponent UTF8String], 72);

    [NSException raise:@"GameKit Exception" format:@"%@", v13];
  }

  status = [resultCopy status];
  if (status == 2)
  {
    [(GKCDIDSInfo *)self _gkUpdateEntryWithHandle:handleCopy contactAssociationID:0 supportsFriendingViaPush:0 supportsMessageTransportV2:0 cohort:0];
  }

  else
  {
    if (status == 1)
    {
      gameCenterData = [resultCopy gameCenterData];
      contactsSharingState = [gameCenterData contactsSharingState];
      if (contactsSharingState)
      {
        contactsSharingState2 = [gameCenterData contactsSharingState];
        intValue = [contactsSharingState2 intValue];
      }

      else
      {
        intValue = 0xFFFFFFFFLL;
      }

      v24 = [(GKCDIDSInfo *)self cohortFromIDSConsent:intValue];
      contactsAssociationID = [gameCenterData contactsAssociationID];
      v26 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [resultCopy supportsFriendingViaPush]);
      v27 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [resultCopy supportsMessageTransportV2]);
      [(GKCDIDSInfo *)self _gkUpdateEntryWithHandle:handleCopy contactAssociationID:contactsAssociationID supportsFriendingViaPush:v26 supportsMessageTransportV2:v27 cohort:v24];

      goto LABEL_20;
    }

    if (!status)
    {
      gameCenterData = [(GKCDIDSInfo *)self contactAssociationID];
      contactsSharingState = [(GKCDIDSInfo *)self supportsFriendingViaPush];
      supportsMessageTransportV2 = [(GKCDIDSInfo *)self supportsMessageTransportV2];
      [(GKCDIDSInfo *)self _gkUpdateEntryWithHandle:handleCopy contactAssociationID:gameCenterData supportsFriendingViaPush:contactsSharingState supportsMessageTransportV2:supportsMessageTransportV2 cohort:0];

LABEL_20:
      goto LABEL_21;
    }

    if (!os_log_GKGeneral)
    {
      v20 = GKOSLoggers();
    }

    v21 = os_log_GKError;
    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      sub_1002940F8(v21);
    }

    if (!os_log_GKGeneral)
    {
      v22 = GKOSLoggers();
    }

    v23 = os_log_GKContacts;
    if (os_log_type_enabled(os_log_GKContacts, OS_LOG_TYPE_DEBUG))
    {
      sub_10029413C(v23, resultCopy);
    }
  }

LABEL_21:
}

- (int)cohortFromIDSConsent:(int)consent
{
  if ((consent + 1) < 3)
  {
    return dword_1002C2B28[consent + 1];
  }

  if (!os_log_GKGeneral)
  {
    v4 = GKOSLoggers();
  }

  v5 = os_log_GKError;
  result = os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR);
  if (result)
  {
    sub_1002941D8(v5);
    return 0;
  }

  return result;
}

- (void)_gkUpdateEntryWithHandle:(id)handle contactAssociationID:(id)d supportsFriendingViaPush:(id)push supportsMessageTransportV2:(id)v2 cohort:(int)cohort
{
  v7 = *&cohort;
  handleCopy = handle;
  dCopy = d;
  pushCopy = push;
  v2Copy = v2;
  v15 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v15, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v23 = v7;
    v16 = +[NSThread callStackSymbols];
    v17 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKCDIDSInfo(GKAdditions) _gkUpdateEntryWithHandle:contactAssociationID:supportsFriendingViaPush:supportsMessageTransportV2:cohort:]", v16];
    v18 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCDIDSInfo+GKAdditions.m"];
    lastPathComponent = [v18 lastPathComponent];
    v20 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v17, "-[GKCDIDSInfo(GKAdditions) _gkUpdateEntryWithHandle:contactAssociationID:supportsFriendingViaPush:supportsMessageTransportV2:cohort:]", [lastPathComponent UTF8String], 153);

    [NSException raise:@"GameKit Exception" format:@"%@", v20];
    v7 = v23;
  }

  if ([handleCopy length])
  {
    [(GKCDIDSInfo *)self setHandle:handleCopy];
    [(GKCDIDSInfo *)self setContactAssociationID:dCopy];
    v21 = +[NSDate date];
    [(GKCDIDSInfo *)self setTimeStamp:v21];

    v22 = [NSNumber numberWithInt:v7];
    [(GKCDIDSInfo *)self setCohort:v22];

    [(GKCDIDSInfo *)self setSupportsFriendingViaPush:pushCopy];
    [(GKCDIDSInfo *)self setSupportsMessageTransportV2:v2Copy];
  }
}

+ (id)_gkObjectsMatchingHandles:(id)handles withContext:(id)context
{
  contextCopy = context;
  handles = [NSPredicate predicateWithFormat:@"handle IN %@", handles];
  v8 = [self _gkObjectsMatchingPredicate:handles withContext:contextCopy];

  return v8;
}

+ (id)_gkObjectsMatchingContactAssociationIDs:(id)ds withContext:(id)context
{
  contextCopy = context;
  v7 = [NSPredicate predicateWithFormat:@"contactAssociationID in %@", ds];
  v8 = [self _gkObjectsMatchingPredicate:v7 withContext:contextCopy];

  return v8;
}

@end