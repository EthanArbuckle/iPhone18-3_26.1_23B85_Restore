@interface MSDHomeCloudShareCreate
+ (id)cloudShareForHome:(id)home;
+ (void)acceptInvitation:(id)invitation completion:(id)completion;
- (MSDHomeCloudShareCreate)initWithHome:(id)home;
- (void)_handleMultiplePeopleOnShare:(id)share completion:(id)completion;
- (void)_saveRecordAndShare:(id)share completion:(id)completion;
- (void)setupShareForHomeParticipant:(id)participant completion:(id)completion;
- (void)shareRecordWithOwner:(id)owner completion:(id)completion;
@end

@implementation MSDHomeCloudShareCreate

+ (id)cloudShareForHome:(id)home
{
  homeCopy = home;
  v5 = [[self alloc] initWithHome:homeCopy];

  return v5;
}

- (MSDHomeCloudShareCreate)initWithHome:(id)home
{
  homeCopy = home;
  v10.receiver = self;
  v10.super_class = MSDHomeCloudShareCreate;
  v6 = [(MSDHomeCloudShareCreate *)&v10 self];

  if (!v6)
  {
    goto LABEL_4;
  }

  if (homeCopy)
  {
    objc_storeStrong(v6 + 1, home);
LABEL_4:
    v7 = v6;
    goto LABEL_8;
  }

  v8 = sub_100030FE4();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_100010DAC();
  }

  v7 = 0;
LABEL_8:

  return v7;
}

+ (void)acceptInvitation:(id)invitation completion:(id)completion
{
  invitationCopy = invitation;
  completionCopy = completion;
  v7 = sub_100030FE4();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    shareToken = [invitationCopy shareToken];
    shareURL = [invitationCopy shareURL];
    user = [invitationCopy user];
    fromUser = [invitationCopy fromUser];
    *buf = 138478595;
    v22 = shareToken;
    v23 = 2113;
    v24 = shareURL;
    v25 = 2113;
    v26 = user;
    v27 = 2113;
    v28 = fromUser;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Invitation details shareToken %{private}@, shareURL %{private}@, ToUSer %{private}@, fromUSer %{private}@", buf, 0x2Au);
  }

  containerID = [invitationCopy containerID];
  v13 = [CKContainer containerWithIdentifier:containerID];

  shareURL2 = [invitationCopy shareURL];
  shareToken2 = [invitationCopy shareToken];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10000FCC8;
  v18[3] = &unk_100051360;
  v19 = v13;
  v20 = completionCopy;
  v16 = completionCopy;
  v17 = v13;
  [v17 fetchShareMetadataForShareURL:shareURL2 withShareToken:shareToken2 completion:v18];
}

- (void)setupShareForHomeParticipant:(id)participant completion:(id)completion
{
  participantCopy = participant;
  completionCopy = completion;
  v8 = sub_100030FE4();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    recordID = [participantCopy recordID];
    home = self->_home;
    *buf = 136315651;
    v31 = "[MSDHomeCloudShareCreate setupShareForHomeParticipant:completion:]";
    v32 = 2113;
    v33 = recordID;
    v34 = 2113;
    v35 = home;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s for recordID %{private}@ and home %{private}@", buf, 0x20u);
  }

  if (completionCopy)
  {
    recordType = [participantCopy recordType];
    if ([recordType isEqualToString:MSServiceAccountRecordType])
    {

LABEL_9:
      v15 = [CKShare alloc];
      recordID2 = [participantCopy recordID];
      zoneID = [recordID2 zoneID];
      v18 = [v15 initWithRecordZoneID:zoneID];

      v19 = sub_100030FE4();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        recordID3 = [v18 recordID];
        *buf = 138477827;
        v31 = recordID3;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Created CKShare with recordID %{private}@", buf, 0xCu);
      }

      v21 = +[CKContainer MSDCloudKitContainer];
      privateCloudDatabase = [v21 privateCloudDatabase];

      v22 = objc_alloc_init(MSDFetchCKDataOptions);
      [(MSDFetchCKDataOptions *)v22 setUserInitiatedRequest:0];
      recordID4 = [v18 recordID];
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_100010298;
      v26[3] = &unk_100051388;
      v27 = v18;
      selfCopy = self;
      v29 = completionCopy;
      v24 = v18;
      [privateCloudDatabase fetchRecordWithID:recordID4 withOptions:v22 completion:v26];

      goto LABEL_15;
    }

    recordType2 = [participantCopy recordType];
    v14 = [recordType2 isEqualToString:MSDefaultServiceRecordType];

    if (v14)
    {
      goto LABEL_9;
    }

    v25 = sub_100030FE4();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_100010EC8();
    }

    privateCloudDatabase = [NSError errorWithDomain:MSErrorDomain code:1 userInfo:0];
    (*(completionCopy + 2))(completionCopy, 0, privateCloudDatabase);
  }

  else
  {
    privateCloudDatabase = sub_100030FE4();
    if (os_log_type_enabled(privateCloudDatabase, OS_LOG_TYPE_ERROR))
    {
      sub_100010F04();
    }
  }

LABEL_15:
}

- (void)shareRecordWithOwner:(id)owner completion:(id)completion
{
  ownerCopy = owner;
  completionCopy = completion;
  if (completionCopy)
  {
    v8 = sub_100030FE4();
    v9 = v8;
    if (ownerCopy)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        home = self->_home;
        *buf = 136315651;
        v17 = "[MSDHomeCloudShareCreate shareRecordWithOwner:completion:]";
        v18 = 2113;
        v19 = ownerCopy;
        v20 = 2113;
        v21 = home;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s for record %{private}@ home %{private}@", buf, 0x20u);
      }

      v11 = self->_home;
      v12 = +[CKContainer MSDCloudKitContainer];
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_100010710;
      v14[3] = &unk_1000513B0;
      v15 = completionCopy;
      [(HMHome *)v11 establishShareWithHomeOwner:ownerCopy container:v12 allowWriteAccess:1 completionHandler:v14];

      v13 = v15;
    }

    else
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_1000110A4();
      }

      v13 = [NSError errorWithDomain:CKErrorDomain code:12 userInfo:0];
      (*(completionCopy + 2))(completionCopy, 0, v13);
    }
  }

  else
  {
    v13 = sub_100030FE4();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1000110E0();
    }
  }
}

- (void)_handleMultiplePeopleOnShare:(id)share completion:(id)completion
{
  shareCopy = share;
  completionCopy = completion;
  if (shareCopy)
  {
    participants = [shareCopy participants];
    v9 = [participants na_firstObjectPassingTest:&stru_1000513F0];

    if (v9)
    {
      permission = [v9 permission];
      acceptanceStatus = [v9 acceptanceStatus];
      v12 = sub_100030FE4();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = CKStringFromParticipantAcceptanceStatus();
        v14 = CKStringFromParticipantPermission();
        v18 = 138412546;
        v19 = v13;
        v20 = 2112;
        v21 = v14;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Current Participant status: Acceptance: %@ Permission: %@", &v18, 0x16u);
      }

      if (acceptanceStatus == 2 && permission == 3)
      {
        v15 = sub_100030FE4();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v18) = 0;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "All Participants in share have accepted with permission read/write", &v18, 2u);
        }

        if (completionCopy)
        {
          (*(completionCopy + 2))(completionCopy, 0, 0);
        }

        goto LABEL_21;
      }

      if (permission == 2)
      {
        [v9 setPermission:3];
        [shareCopy addParticipant:v9];
        [(MSDHomeCloudShareCreate *)self _saveRecordAndShare:shareCopy completion:completionCopy];
        goto LABEL_21;
      }

      if (permission != 3 || acceptanceStatus == 2)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v17 = sub_100030FE4();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_1000111D0();
      }
    }

    [(MSDHomeCloudShareCreate *)self shareRecordWithOwner:shareCopy completion:completionCopy];
LABEL_21:

    goto LABEL_22;
  }

  v16 = sub_100030FE4();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    sub_10001120C();
  }

  if (completionCopy)
  {
    v9 = [NSError errorWithDomain:MSErrorDomain code:1 userInfo:0];
    (*(completionCopy + 2))(completionCopy, 0, v9);
    goto LABEL_21;
  }

LABEL_22:
}

- (void)_saveRecordAndShare:(id)share completion:(id)completion
{
  completionCopy = completion;
  shareCopy = share;
  v8 = +[CKContainer MSDCloudKitContainer];
  privateCloudDatabase = [v8 privateCloudDatabase];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100010BE4;
  v11[3] = &unk_100051100;
  v11[4] = self;
  v12 = completionCopy;
  v10 = completionCopy;
  [privateCloudDatabase saveRecord:shareCopy withOptions:0 completion:v11];
}

@end