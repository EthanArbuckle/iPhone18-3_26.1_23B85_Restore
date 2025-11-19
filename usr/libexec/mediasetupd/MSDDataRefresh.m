@interface MSDDataRefresh
+ (void)cacheLastRefreshforHomes:(id)a3;
+ (void)clearLastRefreshTSForHomes;
- (BOOL)_shouldPreformRefresh:(id)a3;
- (BOOL)_shouldProceedWithExecution:(id)a3;
- (MSDDataRefresh)initWithReason:(unint64_t)a3;
- (MSDDataRefresh)initWithReason:(unint64_t)a3 withDelay:(double)a4;
- (void)_checkDataSanity:(id)a3 publicDBInfo:(id)a4 home:(id)a5 completion:(id)a6;
- (void)_checkZoneAndDefaultRecordInEachHome:(id)a3 completion:(id)a4;
- (void)_createAndSaveAppleMusicRecord:(id)a3 publicDBInfo:(id)a4 home:(id)a5 completion:(id)a6;
- (void)_deleteRecordZone:(id)a3 completion:(id)a4;
- (void)_deleteZombieRecordZonesIfAnyInHomes:(id)a3 completion:(id)a4;
- (void)_handleCKShareError:(id)a3 home:(id)a4;
- (void)_initializeCKAndServiceInfoForHome:(id)a3 completion:(id)a4;
- (void)_performDataRefresh:(id)a3;
- (void)_refreshDatabases:(id)a3;
- (void)_saveMediaServiceConfigInfo:(id)a3 record:(id)a4 completion:(id)a5;
- (void)_setupShareForParticipant:(id)a3 home:(id)a4 completion:(id)a5;
- (void)_shareThisRecordIfApplicable:(id)a3 home:(id)a4 completion:(id)a5;
- (void)_updateDefaultService:(id)a3 record:(id)a4 completion:(id)a5;
- (void)performRefreshWithCompletion:(id)a3;
- (void)refreshDataAfterDelay;
@end

@implementation MSDDataRefresh

- (MSDDataRefresh)initWithReason:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = MSDDataRefresh;
  result = [(MSDDataRefresh *)&v5 init];
  if (result)
  {
    result->_refreshReason = a3;
    result->_delay = 0.0;
  }

  return result;
}

- (MSDDataRefresh)initWithReason:(unint64_t)a3 withDelay:(double)a4
{
  v7.receiver = self;
  v7.super_class = MSDDataRefresh;
  result = [(MSDDataRefresh *)&v7 init];
  if (result)
  {
    result->_refreshReason = a3;
    result->_delay = a4;
  }

  return result;
}

- (void)performRefreshWithCompletion:(id)a3
{
  v4 = a3;
  v5 = sub_100030FE4();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = MSDDataRefreshReasonToString(self->_refreshReason);
    delay = self->_delay;
    *buf = 136315650;
    v14 = "[MSDDataRefresh performRefreshWithCompletion:]";
    v15 = 2112;
    v16 = v6;
    v17 = 2048;
    v18 = delay;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s reason: %@ delay: %f", buf, 0x20u);
  }

  objc_initWeak(buf, self);
  v8 = +[MSDCloudManager sharedManager];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10001AB10;
  v10[3] = &unk_1000518A0;
  v9 = v4;
  v10[4] = self;
  v11 = v9;
  objc_copyWeak(&v12, buf);
  [v8 isCloudKitAccessAvailable:v10];

  objc_destroyWeak(&v12);
  objc_destroyWeak(buf);
}

- (void)_performDataRefresh:(id)a3
{
  v4 = a3;
  v5 = +[MSDHomeManager sharedManager];
  v6 = [v5 allHomes];

  if (v6 && [v6 count])
  {
    v7 = sub_100030FE4();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138477827;
      v22 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Homes user is part of %{private}@", buf, 0xCu);
    }

    v8 = [v6 hmf_objectsPassingTest:&stru_1000518E0];
    v9 = [v8 count];
    v10 = sub_100030FE4();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (v9)
    {
      if (v11)
      {
        *buf = 138477827;
        v22 = v8;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Performing update on the following homes: %{private}@", buf, 0xCu);
      }

      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_10001B05C;
      v16[3] = &unk_100051958;
      v18 = v4;
      v16[4] = self;
      v8 = v8;
      v17 = v8;
      [(MSDDataRefresh *)self _checkZoneAndDefaultRecordInEachHome:v8 completion:v16];

      v12 = v18;
    }

    else
    {
      if (v11)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Skipping CloudKit refresh. Homes do not contain valid accessories for media setup.", buf, 2u);
      }

      if (!v4)
      {
        goto LABEL_12;
      }

      v14 = MSErrorDomain;
      v19 = MSUserInfoErrorStringKey;
      v20 = @"Failed to perform refresh. No valid accessories in home to setup.";
      v12 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
      v15 = [NSError errorWithDomain:v14 code:3 userInfo:v12];
      (*(v4 + 2))(v4, 0, v15);
    }

LABEL_11:

LABEL_12:
    goto LABEL_13;
  }

  if (v4)
  {
    v13 = MSErrorDomain;
    v23 = MSUserInfoErrorStringKey;
    v24 = @"Failed to perform refresh. No homes available.";
    v8 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    v12 = [NSError errorWithDomain:v13 code:3 userInfo:v8];
    (*(v4 + 2))(v4, 0, v12);
    goto LABEL_11;
  }

LABEL_13:
}

- (void)_checkZoneAndDefaultRecordInEachHome:(id)a3 completion:(id)a4
{
  v6 = a3;
  v18 = a4;
  v7 = dispatch_group_create();
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x2020000000;
  v31 = 0;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v6;
  v8 = [obj countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v8)
  {
    v9 = *v27;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v26 + 1) + 8 * i);
        v12 = sub_100030FE4();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138477827;
          v33 = v11;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Starting refresh for Home : %{private}@", buf, 0xCu);
        }

        if ([v11 isCurrentUserRestrictedGuest])
        {
          v13 = sub_100030FE4();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            v14 = [v11 currentUser];
            v15 = [v14 uniqueIdentifier];
            *buf = 138477827;
            v33 = v15;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Determined user (%{private}@) to be a restricted guest. Skipping setting up media in the home", buf, 0xCu);
          }
        }

        else
        {
          dispatch_group_enter(v7);
          v23[0] = _NSConcreteStackBlock;
          v23[1] = 3221225472;
          v23[2] = sub_10001B800;
          v23[3] = &unk_100051068;
          v25 = v30;
          v23[4] = v11;
          v24 = v7;
          [(MSDDataRefresh *)self _initializeCKAndServiceInfoForHome:v11 completion:v23];
        }
      }

      v8 = [obj countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v8);
  }

  v16 = dispatch_get_global_queue(2, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001B90C;
  block[3] = &unk_100051980;
  v21 = v18;
  v22 = v30;
  v17 = v18;
  dispatch_group_notify(v7, v16, block);

  _Block_object_dispose(v30, 8);
}

- (void)_deleteZombieRecordZonesIfAnyInHomes:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ((+[MSDeviceInfo isDeviceAppleTV](MSDeviceInfo, "isDeviceAppleTV") & 1) != 0 || +[MSDeviceInfo isDeviceAudioAccessory])
  {
    v8 = sub_100030FE4();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "** Deletion of recordZones will be handled by the iOS device **", buf, 2u);
    }

    if (v7)
    {
      v7[2](v7, 0);
    }
  }

  else
  {
    v9 = [v6 na_map:&stru_1000519C0];
    v10 = +[CKContainer MSDCloudKitContainer];
    v11 = [v10 privateCloudDatabase];

    v12 = +[CKFetchRecordZonesOperation fetchAllRecordZonesOperation];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10001BB84;
    v16[3] = &unk_100051A60;
    v21 = v7;
    v17 = v11;
    v18 = v9;
    v19 = v6;
    v20 = self;
    v13 = v9;
    v14 = v11;
    [v12 setFetchRecordZonesCompletionBlock:v16];
    [v12 setQualityOfService:17];
    v15 = [v14 operationConfiguration];
    [v12 setConfiguration:v15];

    [v14 addOperation:v12];
  }
}

- (void)_deleteRecordZone:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[CKContainer MSDCloudKitContainer];
  v8 = [v7 privateCloudDatabase];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10001C6A8;
  v11[3] = &unk_100051A88;
  v12 = v5;
  v13 = v6;
  v9 = v6;
  v10 = v5;
  [v8 deleteRecordZone:v10 withOptions:0 completion:v11];
}

- (void)_refreshDatabases:(id)a3
{
  v3 = a3;
  v4 = dispatch_group_create();
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x3032000000;
  v20[3] = sub_10001C0EC;
  v20[4] = sub_10001C0FC;
  v21 = 0;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x2020000000;
  v19 = 0;
  dispatch_group_enter(v4);
  v5 = +[CKContainer MSDCloudKitContainer];
  v6 = [v5 privateCloudDatabase];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10001C9B8;
  v14[3] = &unk_100051AB0;
  v16 = v20;
  v17 = v18;
  v7 = v4;
  v15 = v7;
  [v6 refreshDatabase:0 completion:v14];

  v8 = dispatch_get_global_queue(2, 0);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10001CA54;
  v10[3] = &unk_100051AD8;
  v11 = v3;
  v12 = v18;
  v13 = v20;
  v9 = v3;
  dispatch_group_notify(v7, v8, v10);

  _Block_object_dispose(v18, 8);
  _Block_object_dispose(v20, 8);
}

+ (void)clearLastRefreshTSForHomes
{
  v2 = sub_100030FE4();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_10001FA7C();
  }

  v3 = +[MSDDefaultsManager sharedManager];
  [v3 removeObjectForDefault:@"lastDataRefresh"];
}

+ (void)cacheLastRefreshforHomes:(id)a3
{
  v3 = a3;
  v4 = +[MSDDefaultsManager sharedManager];
  v5 = +[NSDate date];
  [v5 timeIntervalSinceReferenceDate];
  v6 = [NSNumber numberWithDouble:?];
  [v4 setObject:v6 forDefault:@"lastDataRefresh"];

  v8 = [v3 na_map:&stru_100051AF8];

  v7 = +[MSDDefaultsManager sharedManager];
  [v7 setObject:v8 forDefault:@"homesRefreshed"];
}

- (void)refreshDataAfterDelay
{
  objc_initWeak(&location, self);
  v3 = sub_100030FE4();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    delay = self->_delay;
    v5 = MSDDataRefreshReasonToString(self->_refreshReason);
    *buf = 134218242;
    v11 = delay;
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Scheduling Refresh task after %f with reason: %@", buf, 0x16u);
  }

  v6 = dispatch_time(0, (self->_delay * 1000000000.0));
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001D020;
  v7[3] = &unk_1000509C0;
  objc_copyWeak(&v8, &location);
  dispatch_after(v6, &_dispatch_main_q, v7);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)_initializeCKAndServiceInfoForHome:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MSDFetchCKDataOptions);
  [(MSDFetchCKDataOptions *)v8 setCreateNewZoneIfMissing:1];
  [(MSDFetchCKDataOptions *)v8 setUserInitiatedRequest:0];
  v9 = +[CKContainer MSDCloudKitContainer];
  v10 = [v9 privateCloudDatabase];

  objc_initWeak(&location, self);
  v11 = [v6 uniqueIdentifier];
  v12 = [v11 UUIDString];
  v13 = [v6 currentUser];
  v14 = [v13 uniqueIdentifier];
  v15 = [v14 UUIDString];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10001D37C;
  v18[3] = &unk_100051B70;
  v16 = v7;
  v20 = v16;
  objc_copyWeak(&v21, &location);
  v17 = v6;
  v19 = v17;
  [v10 fetchRecordZoneFor:v12 user:v15 withOptions:v8 completion:v18];

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
}

- (void)_checkDataSanity:(id)a3 publicDBInfo:(id)a4 home:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [CKRecordID alloc];
  v15 = [v11 serviceID];
  v16 = [v10 zoneID];
  v17 = [v14 initWithRecordName:v15 zoneID:v16];

  v18 = [CKRecordID alloc];
  v19 = [v10 zoneID];
  v20 = [v18 initWithRecordName:MSDefaultServiceRecordName zoneID:v19];

  if (v17 && v20)
  {
    objc_initWeak(&location, self);
    v21 = +[CKContainer MSDCloudKitContainer];
    v22 = [v21 privateCloudDatabase];

    v42[0] = v17;
    v42[1] = v20;
    v23 = [NSArray arrayWithObjects:v42 count:2];
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_10001D8B8;
    v33[3] = &unk_100051BC0;
    objc_copyWeak(&v40, &location);
    v39 = v13;
    v34 = v17;
    v35 = v20;
    v36 = v12;
    v37 = v10;
    v38 = v11;
    [v22 fetchRecordWithIDS:v23 withOptions:0 completion:v33];

    objc_destroyWeak(&v40);
    objc_destroyWeak(&location);
  }

  else
  {
    v24 = sub_100030FE4();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      sub_10001FC44(v24, v25, v26, v27, v28, v29, v30, v31);
    }

    if (v13)
    {
      v32 = [NSError errorWithDomain:CKErrorDomain code:12 userInfo:0];
      (*(v13 + 2))(v13, v32);
    }
  }
}

- (BOOL)_shouldProceedWithExecution:(id)a3
{
  v3 = a3;
  v4 = [v3 CKErrorHasErrorCode:11];
  v5 = sub_100030FE4();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Unknown item error, Okay to continue, we will create new record", v8, 2u);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_10001FCBC();
  }

  return v4;
}

- (void)_createAndSaveAppleMusicRecord:(id)a3 publicDBInfo:(id)a4 home:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = sub_100030FE4();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138477827;
    v31 = v11;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Creating AppleMusic Service record with PublicDB Info : %{private}@", buf, 0xCu);
  }

  v15 = [v11 serviceID];
  v16 = [CKRecord createRecordWithName:v15 recordType:MSServiceAccountRecordType recordZone:v10];

  v17 = [v12 uniqueIdentifier];
  v18 = [v17 UUIDString];

  v19 = [v12 currentUser];
  v20 = [v19 uniqueIdentifier];
  v21 = [v20 UUIDString];

  v22 = sub_100030FE4();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138478083;
    v31 = v18;
    v32 = 2113;
    v33 = v21;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Adding Home Entries HomeID : %{private}@ HomeUserID : %{private}@", buf, 0x16u);
  }

  [v16 setRecordFieldForKey:MSHomeParticipantHomeIdentifier value:v18];
  [v16 setRecordFieldForKey:MSHomeParticipantHomeUserIdentifier value:v21];
  objc_initWeak(buf, self);
  v23 = [v11 serviceID];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_10001E080;
  v26[3] = &unk_100051BE8;
  v24 = v13;
  v28 = v24;
  objc_copyWeak(&v29, buf);
  v25 = v12;
  v27 = v25;
  [(MSDDataRefresh *)self _saveMediaServiceConfigInfo:v23 record:v16 completion:v26];

  objc_destroyWeak(&v29);
  objc_destroyWeak(buf);
}

- (void)_shareThisRecordIfApplicable:(id)a3 home:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = sub_100030FE4();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v9 isCurrentUserHomeOwner];
    v13 = @"NO";
    v20 = "[MSDDataRefresh _shareThisRecordIfApplicable:home:completion:]";
    *buf = 136315651;
    if (v12)
    {
      v13 = @"YES";
    }

    v21 = 2113;
    v22 = v9;
    v23 = 2112;
    v24 = v13;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s %{private}@ CurrentUserOwner: %@", buf, 0x20u);
  }

  if ([v9 isCurrentUserHomeOwner] || objc_msgSend(v9, "isCurrentUserRestrictedGuest"))
  {
    if (v10)
    {
      v10[2](v10, 0);
    }
  }

  else
  {
    v14 = sub_100030FE4();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [v8 recordID];
      *buf = 138477827;
      v20 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Setting up share for participant with recordID %{private}@", buf, 0xCu);
    }

    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10001E560;
    v16[3] = &unk_100051C10;
    v17 = v9;
    v18 = v10;
    [(MSDDataRefresh *)self _setupShareForParticipant:v8 home:v17 completion:v16];
  }
}

- (void)_updateDefaultService:(id)a3 record:(id)a4 completion:(id)a5
{
  v7 = a5;
  v8 = MSDefaultServiceRecordName;
  v9 = MSDefaultServiceRecordType;
  v10 = a4;
  v11 = a3;
  v12 = [v10 recordID];
  v13 = [v12 zoneID];
  v14 = [CKRecord createRecordWithName:v8 recordType:v9 recordZone:v13];

  v15 = MediaServiceIdentifier;
  v16 = [v10 recordFieldForKey:MediaServiceIdentifier];

  v17 = [v11 currentUser];

  v18 = [v17 uniqueIdentifier];
  v19 = [v18 UUIDString];

  v20 = sub_100030FE4();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138478083;
    v27 = v16;
    v28 = 2113;
    v29 = v19;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Setting default service identifier %{private}@ and homeUserID %{private}@", buf, 0x16u);
  }

  [v14 setRecordFieldForKey:v15 value:v16];
  [v14 setRecordFieldForKey:MSHomeParticipantHomeUserIdentifier value:v19];
  v21 = +[CKContainer MSDCloudKitContainer];
  v22 = [v21 privateCloudDatabase];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10001E934;
  v24[3] = &unk_100051C38;
  v25 = v7;
  v23 = v7;
  [v22 saveRecord:v14 completionHandler:v24];
}

- (void)_saveMediaServiceConfigInfo:(id)a3 record:(id)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = a4;
  v10 = sub_100030FE4();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138477827;
    v17 = v7;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Attempting to save record for Apple Music with service info : %{private}@", buf, 0xCu);
  }

  [v9 setRecordFieldForKey:MediaServiceIdentifier value:v7];
  v11 = +[CKContainer MSDCloudKitContainer];
  v12 = [v11 privateCloudDatabase];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10001EB9C;
  v14[3] = &unk_100051C38;
  v15 = v8;
  v13 = v8;
  [v12 saveRecord:v9 withOptions:0 completion:v14];
}

- (void)_setupShareForParticipant:(id)a3 home:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = [MSDHomeCloudShareCreate cloudShareForHome:v8];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10001ED68;
  v14[3] = &unk_100051C60;
  v14[4] = self;
  v15 = v8;
  v16 = v9;
  v12 = v9;
  v13 = v8;
  [v11 setupShareForHomeParticipant:v10 completion:v14];
}

- (BOOL)_shouldPreformRefresh:(id)a3
{
  v3 = a3;
  v4 = +[MSDDefaultsManager sharedManager];
  v5 = [v4 objectForDefault:@"lastDataRefresh"];
  [v5 doubleValue];
  v7 = v6;

  v8 = [NSDate dateWithTimeIntervalSinceReferenceDate:v7];
  v9 = +[NSDate date];
  v10 = [v8 dateByAddingTimeInterval:MSPrivateDatabaseRefreshIntervalInSecs];
  v11 = [v9 compare:v10];

  if (v11 == -1)
  {
    v13 = +[MSDDefaultsManager sharedManager];
    v14 = [v13 objectForDefault:@"homesRefreshed"];

    v15 = [v3 na_map:&stru_100051C80];
    v16 = v15;
    LOBYTE(v12) = 1;
    if (v14 && v15)
    {
      v17 = [[NSSet alloc] initWithArray:v14];
      v18 = [[NSSet alloc] initWithArray:v16];
      v12 = [v17 isEqualToSet:v18] ^ 1;
    }
  }

  else
  {
    LOBYTE(v12) = 1;
  }

  return v12;
}

- (void)_handleCKShareError:(id)a3 home:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = sub_100030FE4();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v25 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Encountered error when trying to share recordZone with owner %@", buf, 0xCu);
  }

  v8 = [v5 domain];
  if (![v8 isEqualToString:HMErrorDomain])
  {
    goto LABEL_15;
  }

  v9 = [v5 code];

  if (v9 == 8)
  {
    v10 = sub_100030FE4();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "HomeOwner device did not respond in time, hit HomeKit timeout error", buf, 2u);
    }

    v11 = [v6 uniqueIdentifier];
    v12 = [v11 UUIDString];
    v8 = [NSString stringWithFormat:@"%@_%@", @"CKShareErrorRetryCount", v12];

    v13 = +[MSDDefaultsManager sharedManager];
    v14 = [v13 objectForDefault:v8];
    v15 = [v14 integerValue];

    if (v15 == MSCKShareTimeoutErrorMaxRetryCount)
    {
      v16 = sub_100030FE4();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Hit max retry count, aborting..", buf, 2u);
      }

      v17 = [MSDBackgroundActivityTask alloc];
      v18 = [(MSDBackgroundActivityTask *)v17 initWithIdentifier:kBackgroundActivityUserShareRetryTaskIdentifier];
      [(MSDBackgroundActivityTask *)v18 invalidate];
    }

    else
    {
      v19 = v15 + 1;
      v20 = sub_100030FE4();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134349315;
        v25 = v19;
        v26 = 2113;
        v27 = v8;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Updating value of retry count %{public}lu for %{private}@", buf, 0x16u);
      }

      v21 = +[MSDDefaultsManager sharedManager];
      v22 = [NSNumber numberWithUnsignedInteger:v19];
      [v21 setObject:v22 forDefault:v8];

      v23 = [MSDBackgroundActivityTask alloc];
      v18 = [(MSDBackgroundActivityTask *)v23 initWithIdentifier:kBackgroundActivityUserShareRetryTaskIdentifier];
      [(MSDBackgroundActivityTask *)v18 invalidate];
      [(MSDBackgroundActivityTask *)v18 setAllowBattery:1];
      [(MSDBackgroundActivityTask *)v18 setRepeats:0];
      [(MSDBackgroundActivityTask *)v18 setRequireNetworkConnection:1];
      [(MSDBackgroundActivityTask *)v18 setInterval:MSCKShareTimeoutRetryIntervalInSecs];
      [(MSDBackgroundActivityTask *)v18 setRequireInexpensiveNetworkConnection:1];
      [(MSDBackgroundActivityTask *)v18 setActivityBlock:&stru_100051CC0];
      [(MSDBackgroundActivityTask *)v18 schedule];
    }

LABEL_15:
  }
}

@end