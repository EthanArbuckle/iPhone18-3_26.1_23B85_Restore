@interface GKCloudKitMultiplayer
+ (id)formattedContact:(id)a3;
+ (id)lastSevenDigits:(id)a3;
+ (id)msgServiceQueue;
+ (id)packFakeRealTimeBulletinWithZoneData:(id)a3;
+ (id)packFakeTurnBasedBulletinWithZoneData:(id)a3;
+ (id)sessionCache;
+ (void)acceptShareMetadata:(id)a3 retryCount:(int)a4 completionHandler:(id)a5;
+ (void)databaseForZoneID:(id)a3 withCompletionHandler:(id)a4;
+ (void)deleteInviteRecordWithRecordID:(id)a3 fromDatabase:(id)a4;
+ (void)generateAndStoreInviteBulletinForRecord:(id)a3 database:(id)a4;
+ (void)getAssociatedAccountsWithCompletionHandler:(id)a3;
+ (void)handleCloudKitShareMetadata:(id)a3 completionHandler:(id)a4;
+ (void)handleLegacyShareMetadata:(id)a3 needsAccept:(BOOL)a4 completionHandler:(id)a5;
+ (void)isOwnZoneID:(id)a3 withCompletionHandler:(id)a4;
+ (void)refetchUserRecordID;
+ (void)searchAndSaveIdentityForRecord:(id)a3 database:(id)a4 completionHandler:(id)a5;
+ (void)userRecordIDWithCompletionHandler:(id)a3;
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

+ (void)userRecordIDWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [a1 sessionCache];
  [v5 userRecordIDWithCompletionHandler:v4];
}

+ (void)refetchUserRecordID
{
  v2 = [a1 sessionCache];
  [v2 refetchUserRecordID];
}

+ (void)isOwnZoneID:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 ownerName];
  v9 = [v8 isEqualToString:CKCurrentUserDefaultName];

  if (v9)
  {
    v7[2](v7, 1);
  }

  else
  {
    v10 = [a1 sessionCache];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000F7FE8;
    v11[3] = &unk_1003616B8;
    v13 = v7;
    v12 = v6;
    [v10 userRecordIDWithCompletionHandler:v11];
  }
}

+ (void)databaseForZoneID:(id)a3 withCompletionHandler:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000F813C;
  v7[3] = &unk_1003668E0;
  v8 = a4;
  v6 = v8;
  [a1 isOwnZoneID:a3 withCompletionHandler:v7];
}

+ (void)handleCloudKitShareMetadata:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 share];
  v9 = [v8 recordID];

  v10 = [v9 zoneID];
  v11 = [v10 zoneName];

  if (([v11 isEqualToString:@"com.apple.legacygaming.invites"] & 1) == 0)
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
    v7[2](v7, 0);
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
    v36 = v6;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Handle CloudKit share metadata - %@", buf, 0xCu);
  }

  v14 = +[GKReporter reporter];
  [v14 recordMessageInviteProcessingTimestamp];

  v15 = +[GKInviteURLManager sharedManager];
  v16 = [v15 acceptingInProgressRecordIDs];
  v17 = [v16 containsObject:v9];

  if (!v17)
  {
    v21 = +[GKInviteURLManager sharedManager];
    v22 = [v21 acceptingInProgressRecordIDs];
    [v22 addObject:v9];

    v23 = [GKDispatchGroup dispatchGroupWithName:@"acceptShareWithShareMetadata"];
    LOBYTE(v22) = [v6 participantStatus] != 2;
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_1000F8560;
    v30[3] = &unk_100366908;
    v33 = a1;
    v31 = v6;
    v34 = v22;
    v24 = v23;
    v32 = v24;
    [v24 perform:v30];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_1000F8670;
    v26[3] = &unk_100361068;
    v27 = v9;
    v28 = v24;
    v29 = v7;
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

  if (v7)
  {
    goto LABEL_17;
  }

LABEL_19:
}

+ (void)handleLegacyShareMetadata:(id)a3 needsAccept:(BOOL)a4 completionHandler:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v10 = [GKDispatchGroup dispatchGroupWithName:@"acceptShareWithShareMetadata"];
  if (v6)
  {
    v11 = v18;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000F88D8;
    v18[3] = &unk_100361FB8;
    v18[4] = v8;
    v18[6] = a1;
    v18[5] = v10;
  }

  else
  {
    v11 = v17;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1000F8AF0;
    v17[3] = &unk_100361FB8;
    v17[4] = v8;
    v17[5] = v10;
    v17[6] = a1;
  }

  [v10 perform:v11];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000F8EDC;
  v14[3] = &unk_100360EB0;
  v15 = v10;
  v16 = v9;
  v12 = v10;
  v13 = v9;
  [v12 notifyOnMainQueueWithBlock:v14];
}

+ (void)acceptShareMetadata:(id)a3 retryCount:(int)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [CKAcceptSharesOperation alloc];
  v25 = v8;
  v11 = [NSArray arrayWithObjects:&v25 count:1];
  v12 = [v10 initWithShareMetadatas:v11];

  v13 = +[GKCloudKitMultiplayerUtils cloudKitOperationConfigurationForSocialGamingSessionsContainer];
  [v12 setConfiguration:v13];

  v17 = _NSConcreteStackBlock;
  v18 = 3221225472;
  v19 = sub_1000F90E4;
  v20 = &unk_1003669F8;
  v22 = v9;
  v23 = a1;
  v21 = v8;
  v24 = a4;
  v14 = v9;
  v15 = v8;
  [v12 setAcceptSharesCompletionBlock:&v17];
  v16 = [CKContainer containerWithIdentifier:@"com.apple.socialgaming.sessions", v17, v18, v19, v20];
  [v16 addOperation:v12];
}

+ (id)packFakeRealTimeBulletinWithZoneData:(id)a3
{
  v3 = a3;
  if (!os_log_GKGeneral)
  {
    v4 = GKOSLoggers();
  }

  v5 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    *&buf[4] = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "packFakeRealTimeBulletinWithZoneData: %@", buf, 0xCu);
  }

  v6 = objc_alloc_init(NSMutableDictionary);
  v7 = +[GKPlayerCredentialController sharedController];
  v8 = +[GKDataRequestManager sharedManager];
  v9 = [v7 primaryCredentialForEnvironment:{objc_msgSend(v8, "currentEnvironment")}];

  [v6 setObject:&off_100382568 forKeyedSubscript:GKPushCommandKey];
  v82 = v9;
  v10 = [v9 playerInternal];
  v11 = [v10 playerID];
  [v6 setObject:v11 forKeyedSubscript:@"i"];

  v12 = [v3 objectForKeyedSubscript:@"session-token"];

  if (v12)
  {
    v13 = [v3 objectForKeyedSubscript:@"session-token"];
    [v6 setObject:v13 forKeyedSubscript:@"s"];
  }

  else
  {
    [v6 setObject:&stru_100374F10 forKeyedSubscript:@"s"];
  }

  v14 = [v3 objectForKeyedSubscript:@"playerID"];

  if (v14)
  {
    v15 = [v3 objectForKeyedSubscript:@"playerID"];
    [v6 setObject:v15 forKeyedSubscript:@"I"];
  }

  else
  {
    [v6 setObject:&stru_100374F10 forKeyedSubscript:@"I"];
  }

  v16 = [v3 objectForKeyedSubscript:@"self-push-token"];

  if (v16)
  {
    v17 = [v3 objectForKeyedSubscript:@"self-push-token"];
    [v6 setObject:v17 forKeyedSubscript:@"P"];
  }

  else
  {
    [v6 setObject:&stru_100374F10 forKeyedSubscript:@"P"];
  }

  v18 = [v3 objectForKeyedSubscript:@"self-nat-type"];

  if (v18)
  {
    v19 = [v3 objectForKeyedSubscript:@"self-nat-type"];
    [v6 setObject:v19 forKeyedSubscript:@"N"];
  }

  else
  {
    [v6 setObject:&stru_100374F10 forKeyedSubscript:@"N"];
  }

  v20 = [v3 objectForKeyedSubscript:@"self-nat-ip"];

  if (v20)
  {
    v21 = [v3 objectForKeyedSubscript:@"self-nat-ip"];
    [v6 setObject:v21 forKeyedSubscript:@"A"];
  }

  else
  {
    [v6 setObject:&stru_100374F10 forKeyedSubscript:@"A"];
  }

  v22 = [v3 objectForKeyedSubscript:@"self-blob"];

  if (v22)
  {
    v23 = [v3 objectForKeyedSubscript:@"self-blob"];
    [v6 setObject:v23 forKeyedSubscript:@"B"];
  }

  else
  {
    [v6 setObject:&stru_100374F10 forKeyedSubscript:@"B"];
  }

  v24 = [v3 objectForKeyedSubscript:@"blob-type"];

  if (v24)
  {
    v25 = [v3 objectForKeyedSubscript:@"blob-type"];
    [v6 setObject:v25 forKeyedSubscript:@"g"];
  }

  else
  {
    [v6 setObject:&stru_100374F10 forKeyedSubscript:@"g"];
  }

  v26 = [v3 objectForKeyedSubscript:@"self-nat-type"];
  v27 = [v26 integerValue];

  *buf = v27;
  v28 = [&stru_100374F10 dataUsingEncoding:4];
  v29 = +[NSMutableData dataWithCapacity:](NSMutableData, "dataWithCapacity:", [v28 length] + 2);
  [v29 appendBytes:buf length:1];
  v30 = [v3 objectForKeyedSubscript:@"matchType"];
  v31 = [v30 integerValue];

  v85 = v31 == 1;
  [v29 appendBytes:&v85 length:1];
  v81 = v28;
  [v29 appendData:v28];
  [v29 appendBytes:&unk_1002C2AB0 length:1];
  v32 = [v3 objectForKeyedSubscript:@"inviteVersion"];
  v33 = [v32 unsignedIntValue];

  v84 = v33;
  [v29 appendBytes:&v84 length:1];
  v80 = v29;
  v34 = [v29 base64EncodedStringWithOptions:0];
  v35 = [NSMutableDictionary dictionaryWithObjectsAndKeys:v34, @"s", 0];
  v36 = [v3 objectForKeyedSubscript:@"g"];

  if (v36)
  {
    v37 = [v3 objectForKeyedSubscript:@"g"];
    [v35 setObject:v37 forKey:@"g"];
  }

  else
  {
    [v35 setObject:&stru_100374F10 forKey:@"g"];
  }

  v38 = [v3 objectForKeyedSubscript:@"a"];

  if (v38)
  {
    v39 = [v3 objectForKeyedSubscript:@"a"];
    [v35 setObject:v39 forKey:@"a"];
  }

  else
  {
    [v35 setObject:&stru_100374F10 forKey:@"a"];
  }

  v40 = GKTransportPseudonymKey;
  v41 = [v3 objectForKeyedSubscript:GKTransportPseudonymKey];
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
  v45 = [v3 objectForKeyedSubscript:GKInviteSessionIDKey];
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
  v49 = [v3 objectForKeyedSubscript:GKSuggestedTransportVersionPushShortKey];
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
  v52 = [v3 objectForKeyedSubscript:@"bundle-id"];
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

  v55 = [v3 objectForKeyedSubscript:@"bundle-version"];
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

  v58 = [v3 objectForKeyedSubscript:@"short-bundle-version"];
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

  v61 = [v3 objectForKeyedSubscript:@"adam-id"];
  if (v61)
  {
    [v51 setObject:v61 forKey:@"a"];
  }

  v62 = [v3 objectForKeyedSubscript:@"p"];
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
  v66 = [v3 objectForKeyedSubscript:GKInviteArchivedParticipantInfoKey];

  if (!v66)
  {
    goto LABEL_67;
  }

  v79 = v34;
  v67 = +[GKServiceInterface plistClasses];
  v68 = [v3 objectForKeyedSubscript:v65];
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

+ (id)packFakeTurnBasedBulletinWithZoneData:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSMutableDictionary);
  v5 = +[GKPlayerCredentialController sharedController];
  v6 = +[GKDataRequestManager sharedManager];
  v7 = [v5 primaryCredentialForEnvironment:{objc_msgSend(v6, "currentEnvironment")}];

  [v4 setObject:&off_100382580 forKeyedSubscript:GKPushCommandKey];
  v8 = [v7 playerInternal];
  v9 = [v8 playerID];
  [v4 setObject:v9 forKeyedSubscript:@"i"];

  [v4 setObject:&stru_100374F10 forKeyedSubscript:@"m"];
  v10 = [NSNumber numberWithInteger:1];
  [v4 setObject:v10 forKeyedSubscript:@"t"];

  v11 = [v3 objectForKeyedSubscript:@"session-id"];

  if (v11)
  {
    v12 = [v3 objectForKeyedSubscript:@"session-id"];
    [v4 setObject:v12 forKeyedSubscript:@"s"];
  }

  else
  {
    [v4 setObject:&stru_100374F10 forKeyedSubscript:@"s"];
  }

  v13 = [v3 objectForKeyedSubscript:@"playerID"];

  if (v13)
  {
    v14 = [v3 objectForKeyedSubscript:@"playerID"];
    [v4 setObject:v14 forKeyedSubscript:@"I"];
  }

  else
  {
    [v4 setObject:&stru_100374F10 forKeyedSubscript:@"I"];
  }

  v15 = +[NSMutableDictionary dictionary];
  v16 = [v3 objectForKeyedSubscript:@"bundle-id"];

  if (v16)
  {
    v17 = [v3 objectForKeyedSubscript:@"bundle-id"];
    [v15 setObject:v17 forKey:@"i"];
  }

  else
  {
    [v15 setObject:&stru_100374F10 forKey:@"i"];
  }

  v18 = [v3 objectForKeyedSubscript:@"bundle-version"];

  if (v18)
  {
    v19 = [v3 objectForKeyedSubscript:@"bundle-version"];
    [v15 setObject:v19 forKey:@"v"];
  }

  else
  {
    [v15 setObject:&stru_100374F10 forKey:@"v"];
  }

  v20 = [v3 objectForKeyedSubscript:@"short-bundle-version"];

  if (v20)
  {
    v21 = [v3 objectForKeyedSubscript:@"short-bundle-version"];
    [v15 setObject:v21 forKey:@"V"];
  }

  else
  {
    [v15 setObject:&stru_100374F10 forKey:@"V"];
  }

  v22 = [v3 objectForKeyedSubscript:@"adam-id"];

  if (v22)
  {
    v23 = [v3 objectForKeyedSubscript:@"adam-id"];
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

+ (void)generateAndStoreInviteBulletinForRecord:(id)a3 database:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[GKInviteURLManager sharedManager];
  v8 = [v7 isRecordEqualToMostRecentInviteShare:v5];

  if (v8)
  {
    v9 = [v5 objectForKeyedSubscript:@"connectionData"];

    if (v9)
    {
      v10 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s:%d %s", "GKCloudKitMultiplayer.m", 503, "+[GKCloudKitMultiplayer generateAndStoreInviteBulletinForRecord:database:]");
      v11 = [GKDispatchGroup dispatchGroupWithName:v10];

      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_1000FA744;
      v15[3] = &unk_100360FF0;
      v16 = v5;
      v17 = v6;
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
      sub_10028D6E4(v13, v5);
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

+ (void)getAssociatedAccountsWithCompletionHandler:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() msgServiceQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000FADD0;
  block[3] = &unk_100360FA0;
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, block);
}

+ (id)formattedContact:(id)a3
{
  v3 = a3;
  if (IMStringIsEmail())
  {
    v4 = [v3 lowercaseString];
    v5 = [NSMutableString stringWithString:v4];
LABEL_5:

    goto LABEL_7;
  }

  if (IMStringIsPhoneNumber())
  {
    v4 = +[NSCharacterSet punctuationCharacterSet];
    v6 = [v3 stringByRemovingCharactersFromSet:v4];
    v7 = +[NSCharacterSet symbolCharacterSet];
    v8 = [v6 stringByRemovingCharactersFromSet:v7];
    v5 = [v8 stringByRemovingWhitespace];

    goto LABEL_5;
  }

  v5 = +[NSMutableString string];
LABEL_7:

  return v5;
}

+ (id)lastSevenDigits:(id)a3
{
  v3 = a3;
  if ([v3 length] == 7)
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 length] - 7;
  }

  v5 = [v3 substringFromIndex:v4];

  return v5;
}

+ (void)searchAndSaveIdentityForRecord:(id)a3 database:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
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

  v16 = [v15 playerInternal];
  v17 = [v16 playerID];

  if (v17)
  {
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1000FB2B4;
    v20[3] = &unk_100366A88;
    v21 = v8;
    v25 = a1;
    v22 = v17;
    v23 = v9;
    v24 = v10;
    [GKCloudKitMultiplayer getAssociatedAccountsWithCompletionHandler:v20];
  }

  else if (v10)
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

    (*(v10 + 2))(v10, v8, 0);
  }
}

+ (void)deleteInviteRecordWithRecordID:(id)a3 fromDatabase:(id)a4
{
  v5 = a3;
  if (v5)
  {
    v6 = a4;
    v7 = [CKModifyRecordsOperation alloc];
    v12 = v5;
    v8 = [NSArray arrayWithObjects:&v12 count:1];
    v9 = [v7 initWithRecordsToSave:0 recordIDsToDelete:v8];

    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000FBCE4;
    v10[3] = &unk_100366AB0;
    v11 = v5;
    [v9 setModifyRecordsCompletionBlock:v10];
    [v6 addOperation:v9];
  }
}

@end