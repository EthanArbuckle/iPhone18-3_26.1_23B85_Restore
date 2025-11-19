@interface MSDHomeCloudShareCreate
+ (id)cloudShareForHome:(id)a3;
+ (void)acceptInvitation:(id)a3 completion:(id)a4;
- (MSDHomeCloudShareCreate)initWithHome:(id)a3;
- (void)_handleMultiplePeopleOnShare:(id)a3 completion:(id)a4;
- (void)_saveRecordAndShare:(id)a3 completion:(id)a4;
- (void)setupShareForHomeParticipant:(id)a3 completion:(id)a4;
- (void)shareRecordWithOwner:(id)a3 completion:(id)a4;
@end

@implementation MSDHomeCloudShareCreate

+ (id)cloudShareForHome:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithHome:v4];

  return v5;
}

- (MSDHomeCloudShareCreate)initWithHome:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = MSDHomeCloudShareCreate;
  v6 = [(MSDHomeCloudShareCreate *)&v10 self];

  if (!v6)
  {
    goto LABEL_4;
  }

  if (v5)
  {
    objc_storeStrong(v6 + 1, a3);
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

+ (void)acceptInvitation:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = sub_100030FE4();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v5 shareToken];
    v9 = [v5 shareURL];
    v10 = [v5 user];
    v11 = [v5 fromUser];
    *buf = 138478595;
    v22 = v8;
    v23 = 2113;
    v24 = v9;
    v25 = 2113;
    v26 = v10;
    v27 = 2113;
    v28 = v11;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Invitation details shareToken %{private}@, shareURL %{private}@, ToUSer %{private}@, fromUSer %{private}@", buf, 0x2Au);
  }

  v12 = [v5 containerID];
  v13 = [CKContainer containerWithIdentifier:v12];

  v14 = [v5 shareURL];
  v15 = [v5 shareToken];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10000FCC8;
  v18[3] = &unk_100051360;
  v19 = v13;
  v20 = v6;
  v16 = v6;
  v17 = v13;
  [v17 fetchShareMetadataForShareURL:v14 withShareToken:v15 completion:v18];
}

- (void)setupShareForHomeParticipant:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100030FE4();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v6 recordID];
    home = self->_home;
    *buf = 136315651;
    v31 = "[MSDHomeCloudShareCreate setupShareForHomeParticipant:completion:]";
    v32 = 2113;
    v33 = v9;
    v34 = 2113;
    v35 = home;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s for recordID %{private}@ and home %{private}@", buf, 0x20u);
  }

  if (v7)
  {
    v11 = [v6 recordType];
    if ([v11 isEqualToString:MSServiceAccountRecordType])
    {

LABEL_9:
      v15 = [CKShare alloc];
      v16 = [v6 recordID];
      v17 = [v16 zoneID];
      v18 = [v15 initWithRecordZoneID:v17];

      v19 = sub_100030FE4();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = [v18 recordID];
        *buf = 138477827;
        v31 = v20;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Created CKShare with recordID %{private}@", buf, 0xCu);
      }

      v21 = +[CKContainer MSDCloudKitContainer];
      v12 = [v21 privateCloudDatabase];

      v22 = objc_alloc_init(MSDFetchCKDataOptions);
      [(MSDFetchCKDataOptions *)v22 setUserInitiatedRequest:0];
      v23 = [v18 recordID];
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_100010298;
      v26[3] = &unk_100051388;
      v27 = v18;
      v28 = self;
      v29 = v7;
      v24 = v18;
      [v12 fetchRecordWithID:v23 withOptions:v22 completion:v26];

      goto LABEL_15;
    }

    v13 = [v6 recordType];
    v14 = [v13 isEqualToString:MSDefaultServiceRecordType];

    if (v14)
    {
      goto LABEL_9;
    }

    v25 = sub_100030FE4();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_100010EC8();
    }

    v12 = [NSError errorWithDomain:MSErrorDomain code:1 userInfo:0];
    (*(v7 + 2))(v7, 0, v12);
  }

  else
  {
    v12 = sub_100030FE4();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100010F04();
    }
  }

LABEL_15:
}

- (void)shareRecordWithOwner:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = sub_100030FE4();
    v9 = v8;
    if (v6)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        home = self->_home;
        *buf = 136315651;
        v17 = "[MSDHomeCloudShareCreate shareRecordWithOwner:completion:]";
        v18 = 2113;
        v19 = v6;
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
      v15 = v7;
      [(HMHome *)v11 establishShareWithHomeOwner:v6 container:v12 allowWriteAccess:1 completionHandler:v14];

      v13 = v15;
    }

    else
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_1000110A4();
      }

      v13 = [NSError errorWithDomain:CKErrorDomain code:12 userInfo:0];
      (*(v7 + 2))(v7, 0, v13);
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

- (void)_handleMultiplePeopleOnShare:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [v6 participants];
    v9 = [v8 na_firstObjectPassingTest:&stru_1000513F0];

    if (v9)
    {
      v10 = [v9 permission];
      v11 = [v9 acceptanceStatus];
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

      if (v11 == 2 && v10 == 3)
      {
        v15 = sub_100030FE4();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v18) = 0;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "All Participants in share have accepted with permission read/write", &v18, 2u);
        }

        if (v7)
        {
          (*(v7 + 2))(v7, 0, 0);
        }

        goto LABEL_21;
      }

      if (v10 == 2)
      {
        [v9 setPermission:3];
        [v6 addParticipant:v9];
        [(MSDHomeCloudShareCreate *)self _saveRecordAndShare:v6 completion:v7];
        goto LABEL_21;
      }

      if (v10 != 3 || v11 == 2)
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

    [(MSDHomeCloudShareCreate *)self shareRecordWithOwner:v6 completion:v7];
LABEL_21:

    goto LABEL_22;
  }

  v16 = sub_100030FE4();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    sub_10001120C();
  }

  if (v7)
  {
    v9 = [NSError errorWithDomain:MSErrorDomain code:1 userInfo:0];
    (*(v7 + 2))(v7, 0, v9);
    goto LABEL_21;
  }

LABEL_22:
}

- (void)_saveRecordAndShare:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[CKContainer MSDCloudKitContainer];
  v9 = [v8 privateCloudDatabase];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100010BE4;
  v11[3] = &unk_100051100;
  v11[4] = self;
  v12 = v6;
  v10 = v6;
  [v9 saveRecord:v7 withOptions:0 completion:v11];
}

@end