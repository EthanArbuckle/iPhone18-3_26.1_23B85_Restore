@interface GKCloudKitMultiplayer
+ (id)formattedContact:(id)contact;
+ (id)lastSevenDigits:(id)digits;
+ (id)msgServiceQueue;
+ (id)packFakeRealTimeBulletinWithZoneData:(id)data;
+ (id)packFakeTurnBasedBulletinWithZoneData:(id)data;
+ (id)sessionCache;
+ (void)acceptShareMetadata:(id)metadata retryCount:(int)count completionHandler:(id)handler;
+ (void)databaseForZoneID:(id)d withCompletionHandler:(id)handler;
+ (void)deleteInviteRecordWithRecordID:(id)d fromDatabase:(id)database;
+ (void)generateAndStoreInviteBulletinForRecord:(id)record database:(id)database;
+ (void)getAssociatedAccountsWithCompletionHandler:(id)handler;
+ (void)handleCloudKitShareMetadata:(id)metadata completionHandler:(id)handler;
+ (void)handleLegacyShareMetadata:(id)metadata needsAccept:(BOOL)accept completionHandler:(id)handler;
+ (void)isOwnZoneID:(id)d withCompletionHandler:(id)handler;
+ (void)refetchUserRecordID;
+ (void)searchAndSaveIdentityForRecord:(id)record database:(id)database completionHandler:(id)handler;
+ (void)userRecordIDWithCompletionHandler:(id)handler;
@end

@implementation GKCloudKitMultiplayer

+ (id)sessionCache
{
  if (qword_1003B91A0 != -1)
  {
    sub_10028D4C4();
  }

  v3 = qword_1003B9198;

  return v3;
}

+ (void)userRecordIDWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  sessionCache = [self sessionCache];
  [sessionCache userRecordIDWithCompletionHandler:handlerCopy];
}

+ (void)refetchUserRecordID
{
  sessionCache = [self sessionCache];
  [sessionCache refetchUserRecordID];
}

+ (void)isOwnZoneID:(id)d withCompletionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  ownerName = [dCopy ownerName];
  v9 = [ownerName isEqualToString:CKCurrentUserDefaultName];

  if (v9)
  {
    handlerCopy[2](handlerCopy, 1);
  }

  else
  {
    sessionCache = [self sessionCache];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000F7FE8;
    v11[3] = &unk_1003616B8;
    v13 = handlerCopy;
    v12 = dCopy;
    [sessionCache userRecordIDWithCompletionHandler:v11];
  }
}

+ (void)databaseForZoneID:(id)d withCompletionHandler:(id)handler
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000F813C;
  v7[3] = &unk_1003668E0;
  handlerCopy = handler;
  v6 = handlerCopy;
  [self isOwnZoneID:d withCompletionHandler:v7];
}

+ (void)handleCloudKitShareMetadata:(id)metadata completionHandler:(id)handler
{
  metadataCopy = metadata;
  handlerCopy = handler;
  share = [metadataCopy share];
  recordID = [share recordID];

  zoneID = [recordID zoneID];
  zoneName = [zoneID zoneName];

  if (([zoneName isEqualToString:@"com.apple.legacygaming.invites"] & 1) == 0)
  {
    if (!os_log_GKGeneral)
    {
      v20 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_ERROR))
    {
      sub_10028D4D8();
    }

LABEL_17:
    handlerCopy[2](handlerCopy, 0);
    goto LABEL_19;
  }

  if (!os_log_GKGeneral)
  {
    v12 = GKOSLoggers();
  }

  v13 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v36 = metadataCopy;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Handle CloudKit share metadata - %@", buf, 0xCu);
  }

  v14 = +[GKReporter reporter];
  [v14 recordMessageInviteProcessingTimestamp];

  v15 = +[GKInviteURLManager sharedManager];
  acceptingInProgressRecordIDs = [v15 acceptingInProgressRecordIDs];
  v17 = [acceptingInProgressRecordIDs containsObject:recordID];

  if (!v17)
  {
    v21 = +[GKInviteURLManager sharedManager];
    acceptingInProgressRecordIDs2 = [v21 acceptingInProgressRecordIDs];
    [acceptingInProgressRecordIDs2 addObject:recordID];

    v23 = [GKDispatchGroup dispatchGroupWithName:@"acceptShareWithShareMetadata"];
    LOBYTE(acceptingInProgressRecordIDs2) = [metadataCopy participantStatus] != 2;
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_1000F8560;
    v30[3] = &unk_100366908;
    selfCopy = self;
    v31 = metadataCopy;
    v34 = acceptingInProgressRecordIDs2;
    v24 = v23;
    v32 = v24;
    [v24 perform:v30];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_1000F8670;
    v26[3] = &unk_100361068;
    v27 = recordID;
    v28 = v24;
    v29 = handlerCopy;
    v25 = v24;
    [v25 notifyOnMainQueueWithBlock:v26];

    goto LABEL_19;
  }

  if (!os_log_GKGeneral)
  {
    v18 = GKOSLoggers();
  }

  v19 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Already processing same share metadata, returning.", buf, 2u);
  }

  if (handlerCopy)
  {
    goto LABEL_17;
  }

LABEL_19:
}

+ (void)handleLegacyShareMetadata:(id)metadata needsAccept:(BOOL)accept completionHandler:(id)handler
{
  acceptCopy = accept;
  metadataCopy = metadata;
  handlerCopy = handler;
  v10 = [GKDispatchGroup dispatchGroupWithName:@"acceptShareWithShareMetadata"];
  if (acceptCopy)
  {
    v11 = v18;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000F88D8;
    v18[3] = &unk_100361FB8;
    v18[4] = metadataCopy;
    v18[6] = self;
    v18[5] = v10;
  }

  else
  {
    v11 = v17;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1000F8AF0;
    v17[3] = &unk_100361FB8;
    v17[4] = metadataCopy;
    v17[5] = v10;
    v17[6] = self;
  }

  [v10 perform:v11];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000F8EDC;
  v14[3] = &unk_100360EB0;
  v15 = v10;
  v16 = handlerCopy;
  v12 = v10;
  v13 = handlerCopy;
  [v12 notifyOnMainQueueWithBlock:v14];
}

+ (void)acceptShareMetadata:(id)metadata retryCount:(int)count completionHandler:(id)handler
{
  metadataCopy = metadata;
  handlerCopy = handler;
  v10 = [CKAcceptSharesOperation alloc];
  v25 = metadataCopy;
  v11 = [NSArray arrayWithObjects:&v25 count:1];
  v12 = [v10 initWithShareMetadatas:v11];

  v13 = +[GKCloudKitMultiplayerUtils cloudKitOperationConfigurationForSocialGamingSessionsContainer];
  [v12 setConfiguration:v13];

  v17 = _NSConcreteStackBlock;
  v18 = 3221225472;
  v19 = sub_1000F90E4;
  v20 = &unk_1003669F8;
  v22 = handlerCopy;
  selfCopy = self;
  v21 = metadataCopy;
  countCopy = count;
  v14 = handlerCopy;
  v15 = metadataCopy;
  [v12 setAcceptSharesCompletionBlock:&v17];
  v16 = [CKContainer containerWithIdentifier:@"com.apple.socialgaming.sessions", v17, v18, v19, v20];
  [v16 addOperation:v12];
}

+ (id)packFakeRealTimeBulletinWithZoneData:(id)data
{
  dataCopy = data;
  if (!os_log_GKGeneral)
  {
    v4 = GKOSLoggers();
  }

  v5 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    *&buf[4] = dataCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "packFakeRealTimeBulletinWithZoneData: %@", buf, 0xCu);
  }

  v6 = objc_alloc_init(NSMutableDictionary);
  v7 = +[GKPlayerCredentialController sharedController];
  v8 = +[GKDataRequestManager sharedManager];
  v9 = [v7 primaryCredentialForEnvironment:{objc_msgSend(v8, "currentEnvironment")}];

  [v6 setObject:&off_100382568 forKeyedSubscript:GKPushCommandKey];
  v82 = v9;
  playerInternal = [v9 playerInternal];
  playerID = [playerInternal playerID];
  [v6 setObject:playerID forKeyedSubscript:@"i"];

  v12 = [dataCopy objectForKeyedSubscript:@"session-token"];

  if (v12)
  {
    v13 = [dataCopy objectForKeyedSubscript:@"session-token"];
    [v6 setObject:v13 forKeyedSubscript:@"s"];
  }

  else
  {
    [v6 setObject:&stru_100374F10 forKeyedSubscript:@"s"];
  }

  v14 = [dataCopy objectForKeyedSubscript:@"playerID"];

  if (v14)
  {
    v15 = [dataCopy objectForKeyedSubscript:@"playerID"];
    [v6 setObject:v15 forKeyedSubscript:@"I"];
  }

  else
  {
    [v6 setObject:&stru_100374F10 forKeyedSubscript:@"I"];
  }

  v16 = [dataCopy objectForKeyedSubscript:@"self-push-token"];

  if (v16)
  {
    v17 = [dataCopy objectForKeyedSubscript:@"self-push-token"];
    [v6 setObject:v17 forKeyedSubscript:@"P"];
  }

  else
  {
    [v6 setObject:&stru_100374F10 forKeyedSubscript:@"P"];
  }

  v18 = [dataCopy objectForKeyedSubscript:@"self-nat-type"];

  if (v18)
  {
    v19 = [dataCopy objectForKeyedSubscript:@"self-nat-type"];
    [v6 setObject:v19 forKeyedSubscript:@"N"];
  }

  else
  {
    [v6 setObject:&stru_100374F10 forKeyedSubscript:@"N"];
  }

  v20 = [dataCopy objectForKeyedSubscript:@"self-nat-ip"];

  if (v20)
  {
    v21 = [dataCopy objectForKeyedSubscript:@"self-nat-ip"];
    [v6 setObject:v21 forKeyedSubscript:@"A"];
  }

  else
  {
    [v6 setObject:&stru_100374F10 forKeyedSubscript:@"A"];
  }

  v22 = [dataCopy objectForKeyedSubscript:@"self-blob"];

  if (v22)
  {
    v23 = [dataCopy objectForKeyedSubscript:@"self-blob"];
    [v6 setObject:v23 forKeyedSubscript:@"B"];
  }

  else
  {
    [v6 setObject:&stru_100374F10 forKeyedSubscript:@"B"];
  }

  v24 = [dataCopy objectForKeyedSubscript:@"blob-type"];

  if (v24)
  {
    v25 = [dataCopy objectForKeyedSubscript:@"blob-type"];
    [v6 setObject:v25 forKeyedSubscript:@"g"];
  }

  else
  {
    [v6 setObject:&stru_100374F10 forKeyedSubscript:@"g"];
  }

  v26 = [dataCopy objectForKeyedSubscript:@"self-nat-type"];
  integerValue = [v26 integerValue];

  *buf = integerValue;
  v28 = [&stru_100374F10 dataUsingEncoding:4];
  v29 = +[NSMutableData dataWithCapacity:](NSMutableData, "dataWithCapacity:", [v28 length] + 2);
  [v29 appendBytes:buf length:1];
  v30 = [dataCopy objectForKeyedSubscript:@"matchType"];
  integerValue2 = [v30 integerValue];

  v85 = integerValue2 == 1;
  [v29 appendBytes:&v85 length:1];
  v81 = v28;
  [v29 appendData:v28];
  [v29 appendBytes:&unk_1002C2AB0 length:1];
  v32 = [dataCopy objectForKeyedSubscript:@"inviteVersion"];
  unsignedIntValue = [v32 unsignedIntValue];

  v84 = unsignedIntValue;
  [v29 appendBytes:&v84 length:1];
  v80 = v29;
  v34 = [v29 base64EncodedStringWithOptions:0];
  v35 = [NSMutableDictionary dictionaryWithObjectsAndKeys:v34, @"s", 0];
  v36 = [dataCopy objectForKeyedSubscript:@"g"];

  if (v36)
  {
    v37 = [dataCopy objectForKeyedSubscript:@"g"];
    [v35 setObject:v37 forKey:@"g"];
  }

  else
  {
    [v35 setObject:&stru_100374F10 forKey:@"g"];
  }

  v38 = [dataCopy objectForKeyedSubscript:@"a"];

  if (v38)
  {
    v39 = [dataCopy objectForKeyedSubscript:@"a"];
    [v35 setObject:v39 forKey:@"a"];
  }

  else
  {
    [v35 setObject:&stru_100374F10 forKey:@"a"];
  }

  v40 = GKTransportPseudonymKey;
  v41 = [dataCopy objectForKeyedSubscript:GKTransportPseudonymKey];
  v42 = v41;
  if (v41)
  {
    v43 = v41;
  }

  else
  {
    v43 = &stru_100374F10;
  }

  [v35 setObject:v43 forKey:v40];

  v44 = GKInviteSessionIDKey;
  v45 = [dataCopy objectForKeyedSubscript:GKInviteSessionIDKey];
  v46 = v45;
  if (v45)
  {
    v47 = v45;
  }

  else
  {
    v47 = &stru_100374F10;
  }

  [v35 setObject:v47 forKey:v44];

  v48 = GKSuggestedTransportVersionPushShortKey;
  v49 = [dataCopy objectForKeyedSubscript:GKSuggestedTransportVersionPushShortKey];
  if (v49)
  {
    [v35 setObject:v49 forKey:v48];
  }

  else
  {
    v50 = [NSNumber numberWithInteger:1];
    [v35 setObject:v50 forKey:v48];
  }

  v51 = +[NSMutableDictionary dictionary];
  v52 = [dataCopy objectForKeyedSubscript:@"bundle-id"];
  v53 = v52;
  if (v52)
  {
    v54 = v52;
  }

  else
  {
    v54 = &stru_100374F10;
  }

  [v51 setObject:v54 forKey:@"i"];

  v55 = [dataCopy objectForKeyedSubscript:@"bundle-version"];
  v56 = v55;
  if (v55)
  {
    v57 = v55;
  }

  else
  {
    v57 = &stru_100374F10;
  }

  [v51 setObject:v57 forKey:@"v"];

  v58 = [dataCopy objectForKeyedSubscript:@"short-bundle-version"];
  v59 = v58;
  if (v58)
  {
    v60 = v58;
  }

  else
  {
    v60 = &stru_100374F10;
  }

  [v51 setObject:v60 forKey:@"V"];

  v61 = [dataCopy objectForKeyedSubscript:@"adam-id"];
  if (v61)
  {
    [v51 setObject:v61 forKey:@"a"];
  }

  v62 = [dataCopy objectForKeyedSubscript:@"p"];
  v63 = v62;
  if (v62)
  {
    v64 = v62;
  }

  else
  {
    v64 = &stru_100374F10;
  }

  [v51 setObject:v64 forKey:@"p"];

  [v6 setObject:v51 forKeyedSubscript:@"d"];
  [v6 setObject:&__kCFBooleanTrue forKeyedSubscript:GKInviteIsFromMessageKey];
  v65 = GKInviteArchivedParticipantInfoKey;
  v66 = [dataCopy objectForKeyedSubscript:GKInviteArchivedParticipantInfoKey];

  if (!v66)
  {
    goto LABEL_67;
  }

  v79 = v34;
  v67 = +[GKServiceInterface plistClasses];
  v68 = [dataCopy objectForKeyedSubscript:v65];
  v83 = 0;
  v69 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v67 fromData:v68 error:&v83];
  v70 = v83;

  if (!v70)
  {
    v72 = GKInviteGameParticipantsKey;
    v73 = [v69 objectForKeyedSubscript:GKInviteGameParticipantsKey];

    if (v73)
    {
      v74 = [v69 objectForKeyedSubscript:v72];
      [v35 setObject:v74 forKey:v72];
    }

    v75 = GKInviteLobbyParticipantsKey;
    v76 = [v69 objectForKeyedSubscript:GKInviteLobbyParticipantsKey];

    if (v76)
    {
      v77 = [v69 objectForKeyedSubscript:v75];
      [v35 setObject:v77 forKey:v75];
    }

    v34 = v79;
LABEL_67:
    [v6 setObject:v35 forKeyedSubscript:@"x"];
    goto LABEL_68;
  }

  if (!os_log_GKGeneral)
  {
    v71 = GKOSLoggers();
  }

  v34 = v79;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_ERROR))
  {
    sub_10028D67C();
  }

  [v6 setObject:v35 forKeyedSubscript:@"x"];

LABEL_68:

  return v6;
}

+ (id)packFakeTurnBasedBulletinWithZoneData:(id)data
{
  dataCopy = data;
  v4 = objc_alloc_init(NSMutableDictionary);
  v5 = +[GKPlayerCredentialController sharedController];
  v6 = +[GKDataRequestManager sharedManager];
  v7 = [v5 primaryCredentialForEnvironment:{objc_msgSend(v6, "currentEnvironment")}];

  [v4 setObject:&off_100382580 forKeyedSubscript:GKPushCommandKey];
  playerInternal = [v7 playerInternal];
  playerID = [playerInternal playerID];
  [v4 setObject:playerID forKeyedSubscript:@"i"];

  [v4 setObject:&stru_100374F10 forKeyedSubscript:@"m"];
  v10 = [NSNumber numberWithInteger:1];
  [v4 setObject:v10 forKeyedSubscript:@"t"];

  v11 = [dataCopy objectForKeyedSubscript:@"session-id"];

  if (v11)
  {
    v12 = [dataCopy objectForKeyedSubscript:@"session-id"];
    [v4 setObject:v12 forKeyedSubscript:@"s"];
  }

  else
  {
    [v4 setObject:&stru_100374F10 forKeyedSubscript:@"s"];
  }

  v13 = [dataCopy objectForKeyedSubscript:@"playerID"];

  if (v13)
  {
    v14 = [dataCopy objectForKeyedSubscript:@"playerID"];
    [v4 setObject:v14 forKeyedSubscript:@"I"];
  }

  else
  {
    [v4 setObject:&stru_100374F10 forKeyedSubscript:@"I"];
  }

  v15 = +[NSMutableDictionary dictionary];
  v16 = [dataCopy objectForKeyedSubscript:@"bundle-id"];

  if (v16)
  {
    v17 = [dataCopy objectForKeyedSubscript:@"bundle-id"];
    [v15 setObject:v17 forKey:@"i"];
  }

  else
  {
    [v15 setObject:&stru_100374F10 forKey:@"i"];
  }

  v18 = [dataCopy objectForKeyedSubscript:@"bundle-version"];

  if (v18)
  {
    v19 = [dataCopy objectForKeyedSubscript:@"bundle-version"];
    [v15 setObject:v19 forKey:@"v"];
  }

  else
  {
    [v15 setObject:&stru_100374F10 forKey:@"v"];
  }

  v20 = [dataCopy objectForKeyedSubscript:@"short-bundle-version"];

  if (v20)
  {
    v21 = [dataCopy objectForKeyedSubscript:@"short-bundle-version"];
    [v15 setObject:v21 forKey:@"V"];
  }

  else
  {
    [v15 setObject:&stru_100374F10 forKey:@"V"];
  }

  v22 = [dataCopy objectForKeyedSubscript:@"adam-id"];

  if (v22)
  {
    v23 = [dataCopy objectForKeyedSubscript:@"adam-id"];
    [v15 setObject:v23 forKey:@"a"];
  }

  else
  {
    [v15 setObject:&stru_100374F10 forKey:@"a"];
  }

  [v4 setObject:v15 forKeyedSubscript:@"d"];
  [v4 setObject:&__kCFBooleanTrue forKeyedSubscript:GKInviteIsFromMessageKey];

  return v4;
}

+ (void)generateAndStoreInviteBulletinForRecord:(id)record database:(id)database
{
  recordCopy = record;
  databaseCopy = database;
  v7 = +[GKInviteURLManager sharedManager];
  v8 = [v7 isRecordEqualToMostRecentInviteShare:recordCopy];

  if (v8)
  {
    v9 = [recordCopy objectForKeyedSubscript:@"connectionData"];

    if (v9)
    {
      v10 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s:%d %s", "GKCloudKitMultiplayer.m", 503, "+[GKCloudKitMultiplayer generateAndStoreInviteBulletinForRecord:database:]");
      v11 = [GKDispatchGroup dispatchGroupWithName:v10];

      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_1000FA744;
      v15[3] = &unk_100360FF0;
      v16 = recordCopy;
      v17 = databaseCopy;
      [v11 perform:v15];
      [v11 notifyOnMainQueueWithBlock:&stru_100366A40];
    }

    else
    {
      if (!os_log_GKGeneral)
      {
        v14 = GKOSLoggers();
      }

      if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_ERROR))
      {
        sub_10028D7C8();
      }
    }
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v12 = GKOSLoggers();
    }

    v13 = os_log_GKMatch;
    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_ERROR))
    {
      sub_10028D6E4(v13, recordCopy);
    }
  }
}

+ (id)msgServiceQueue
{
  if (qword_1003B91B0 != -1)
  {
    sub_10028D904();
  }

  v3 = qword_1003B91A8;

  return v3;
}

+ (void)getAssociatedAccountsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  msgServiceQueue = [objc_opt_class() msgServiceQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000FADD0;
  block[3] = &unk_100360FA0;
  v7 = handlerCopy;
  v5 = handlerCopy;
  dispatch_async(msgServiceQueue, block);
}

+ (id)formattedContact:(id)contact
{
  contactCopy = contact;
  if (IMStringIsEmail())
  {
    lowercaseString = [contactCopy lowercaseString];
    stringByRemovingWhitespace = [NSMutableString stringWithString:lowercaseString];
LABEL_5:

    goto LABEL_7;
  }

  if (IMStringIsPhoneNumber())
  {
    lowercaseString = +[NSCharacterSet punctuationCharacterSet];
    v6 = [contactCopy stringByRemovingCharactersFromSet:lowercaseString];
    v7 = +[NSCharacterSet symbolCharacterSet];
    v8 = [v6 stringByRemovingCharactersFromSet:v7];
    stringByRemovingWhitespace = [v8 stringByRemovingWhitespace];

    goto LABEL_5;
  }

  stringByRemovingWhitespace = +[NSMutableString string];
LABEL_7:

  return stringByRemovingWhitespace;
}

+ (id)lastSevenDigits:(id)digits
{
  digitsCopy = digits;
  if ([digitsCopy length] == 7)
  {
    v4 = 0;
  }

  else
  {
    v4 = [digitsCopy length] - 7;
  }

  v5 = [digitsCopy substringFromIndex:v4];

  return v5;
}

+ (void)searchAndSaveIdentityForRecord:(id)record database:(id)database completionHandler:(id)handler
{
  recordCopy = record;
  databaseCopy = database;
  handlerCopy = handler;
  if (!os_log_GKGeneral)
  {
    v11 = GKOSLoggers();
  }

  v12 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "GK-InviteMessage: begin searchAndSaveIdentityForRecord", buf, 2u);
  }

  v13 = +[GKPlayerCredentialController sharedController];
  v14 = +[GKDataRequestManager sharedManager];
  v15 = [v13 primaryCredentialForEnvironment:{objc_msgSend(v14, "currentEnvironment")}];

  playerInternal = [v15 playerInternal];
  playerID = [playerInternal playerID];

  if (playerID)
  {
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1000FB2B4;
    v20[3] = &unk_100366A88;
    v21 = recordCopy;
    selfCopy = self;
    v22 = playerID;
    v23 = databaseCopy;
    v24 = handlerCopy;
    [GKCloudKitMultiplayer getAssociatedAccountsWithCompletionHandler:v20];
  }

  else if (handlerCopy)
  {
    if (!os_log_GKGeneral)
    {
      v18 = GKOSLoggers();
    }

    v19 = os_log_GKMatch;
    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_ERROR))
    {
      sub_10028D918(v19);
    }

    (*(handlerCopy + 2))(handlerCopy, recordCopy, 0);
  }
}

+ (void)deleteInviteRecordWithRecordID:(id)d fromDatabase:(id)database
{
  dCopy = d;
  if (dCopy)
  {
    databaseCopy = database;
    v7 = [CKModifyRecordsOperation alloc];
    v12 = dCopy;
    v8 = [NSArray arrayWithObjects:&v12 count:1];
    v9 = [v7 initWithRecordsToSave:0 recordIDsToDelete:v8];

    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000FBCE4;
    v10[3] = &unk_100366AB0;
    v11 = dCopy;
    [v9 setModifyRecordsCompletionBlock:v10];
    [databaseCopy addOperation:v9];
  }
}

@end