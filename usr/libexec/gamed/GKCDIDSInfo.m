@interface GKCDIDSInfo
+ (id)_gkObjectsMatchingContactAssociationIDs:(id)a3 withContext:(id)a4;
+ (id)_gkObjectsMatchingHandles:(id)a3 withContext:(id)a4;
- (BOOL)isExpiredForSettings:(id)a3;
- (int)cohortFromIDSConsent:(int)a3;
- (void)_gkUpdateEntryWithHandle:(id)a3 contactAssociationID:(id)a4 supportsFriendingViaPush:(id)a5 supportsMessageTransportV2:(id)a6 cohort:(int)a7;
- (void)_gkUpdateEntryWithHandle:(id)a3 idsInfoResult:(id)a4;
@end

@implementation GKCDIDSInfo

- (BOOL)isExpiredForSettings:(id)a3
{
  v4 = a3;
  v5 = [(GKCDIDSInfo *)self cohort];

  if (v5)
  {
    v6 = [(GKCDIDSInfo *)self cohort];
    v7 = [v6 intValue];

    [v4 expirationTimeForCohort:v7];
    v9 = v8;
    v10 = +[NSDate date];
    v11 = [(GKCDIDSInfo *)self timeStamp];
    [v10 timeIntervalSinceDate:v11];
    v13 = v12 > v9;
  }

  else
  {
    v13 = 1;
  }

  return v13;
}

- (void)_gkUpdateEntryWithHandle:(id)a3 idsInfoResult:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v8, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v9 = +[NSThread callStackSymbols];
    v10 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKCDIDSInfo(GKAdditions) _gkUpdateEntryWithHandle:idsInfoResult:]", v9];
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCDIDSInfo+GKAdditions.m"];
    v12 = [v11 lastPathComponent];
    v13 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v10, "-[GKCDIDSInfo(GKAdditions) _gkUpdateEntryWithHandle:idsInfoResult:]", [v12 UTF8String], 72);

    [NSException raise:@"GameKit Exception" format:@"%@", v13];
  }

  v14 = [v7 status];
  if (v14 == 2)
  {
    [(GKCDIDSInfo *)self _gkUpdateEntryWithHandle:v6 contactAssociationID:0 supportsFriendingViaPush:0 supportsMessageTransportV2:0 cohort:0];
  }

  else
  {
    if (v14 == 1)
    {
      v15 = [v7 gameCenterData];
      v16 = [v15 contactsSharingState];
      if (v16)
      {
        v18 = [v15 contactsSharingState];
        v19 = [v18 intValue];
      }

      else
      {
        v19 = 0xFFFFFFFFLL;
      }

      v24 = [(GKCDIDSInfo *)self cohortFromIDSConsent:v19];
      v25 = [v15 contactsAssociationID];
      v26 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v7 supportsFriendingViaPush]);
      v27 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v7 supportsMessageTransportV2]);
      [(GKCDIDSInfo *)self _gkUpdateEntryWithHandle:v6 contactAssociationID:v25 supportsFriendingViaPush:v26 supportsMessageTransportV2:v27 cohort:v24];

      goto LABEL_20;
    }

    if (!v14)
    {
      v15 = [(GKCDIDSInfo *)self contactAssociationID];
      v16 = [(GKCDIDSInfo *)self supportsFriendingViaPush];
      v17 = [(GKCDIDSInfo *)self supportsMessageTransportV2];
      [(GKCDIDSInfo *)self _gkUpdateEntryWithHandle:v6 contactAssociationID:v15 supportsFriendingViaPush:v16 supportsMessageTransportV2:v17 cohort:0];

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
      sub_10029413C(v23, v7);
    }
  }

LABEL_21:
}

- (int)cohortFromIDSConsent:(int)a3
{
  if ((a3 + 1) < 3)
  {
    return dword_1002C2B28[a3 + 1];
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

- (void)_gkUpdateEntryWithHandle:(id)a3 contactAssociationID:(id)a4 supportsFriendingViaPush:(id)a5 supportsMessageTransportV2:(id)a6 cohort:(int)a7
{
  v7 = *&a7;
  v24 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = dispatch_get_current_queue();
  if (dispatch_queue_get_specific(v15, @"com.apple.gamed.cachequeue") != @"com.apple.gamed.cachequeue")
  {
    v23 = v7;
    v16 = +[NSThread callStackSymbols];
    v17 = [NSString stringWithFormat:@"%s not invoked on managed object context queue at %@", "[GKCDIDSInfo(GKAdditions) _gkUpdateEntryWithHandle:contactAssociationID:supportsFriendingViaPush:supportsMessageTransportV2:cohort:]", v16];
    v18 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCDIDSInfo+GKAdditions.m"];
    v19 = [v18 lastPathComponent];
    v20 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_queueContext == (__bridge const void * _Nonnull)GKCacheQueueID)\n[%s (%s:%d)]", v17, "-[GKCDIDSInfo(GKAdditions) _gkUpdateEntryWithHandle:contactAssociationID:supportsFriendingViaPush:supportsMessageTransportV2:cohort:]", [v19 UTF8String], 153);

    [NSException raise:@"GameKit Exception" format:@"%@", v20];
    v7 = v23;
  }

  if ([v24 length])
  {
    [(GKCDIDSInfo *)self setHandle:v24];
    [(GKCDIDSInfo *)self setContactAssociationID:v12];
    v21 = +[NSDate date];
    [(GKCDIDSInfo *)self setTimeStamp:v21];

    v22 = [NSNumber numberWithInt:v7];
    [(GKCDIDSInfo *)self setCohort:v22];

    [(GKCDIDSInfo *)self setSupportsFriendingViaPush:v13];
    [(GKCDIDSInfo *)self setSupportsMessageTransportV2:v14];
  }
}

+ (id)_gkObjectsMatchingHandles:(id)a3 withContext:(id)a4
{
  v6 = a4;
  v7 = [NSPredicate predicateWithFormat:@"handle IN %@", a3];
  v8 = [a1 _gkObjectsMatchingPredicate:v7 withContext:v6];

  return v8;
}

+ (id)_gkObjectsMatchingContactAssociationIDs:(id)a3 withContext:(id)a4
{
  v6 = a4;
  v7 = [NSPredicate predicateWithFormat:@"contactAssociationID in %@", a3];
  v8 = [a1 _gkObjectsMatchingPredicate:v7 withContext:v6];

  return v8;
}

@end