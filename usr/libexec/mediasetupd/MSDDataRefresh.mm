@interface MSDDataRefresh
+ (void)cacheLastRefreshforHomes:(id)homes;
+ (void)clearLastRefreshTSForHomes;
- (BOOL)_shouldPreformRefresh:(id)refresh;
- (BOOL)_shouldProceedWithExecution:(id)execution;
- (MSDDataRefresh)initWithReason:(unint64_t)reason;
- (MSDDataRefresh)initWithReason:(unint64_t)reason withDelay:(double)delay;
- (void)_checkDataSanity:(id)sanity publicDBInfo:(id)info home:(id)home completion:(id)completion;
- (void)_checkZoneAndDefaultRecordInEachHome:(id)home completion:(id)completion;
- (void)_createAndSaveAppleMusicRecord:(id)record publicDBInfo:(id)info home:(id)home completion:(id)completion;
- (void)_deleteRecordZone:(id)zone completion:(id)completion;
- (void)_deleteZombieRecordZonesIfAnyInHomes:(id)homes completion:(id)completion;
- (void)_handleCKShareError:(id)error home:(id)home;
- (void)_initializeCKAndServiceInfoForHome:(id)home completion:(id)completion;
- (void)_performDataRefresh:(id)refresh;
- (void)_refreshDatabases:(id)databases;
- (void)_saveMediaServiceConfigInfo:(id)info record:(id)record completion:(id)completion;
- (void)_setupShareForParticipant:(id)participant home:(id)home completion:(id)completion;
- (void)_shareThisRecordIfApplicable:(id)applicable home:(id)home completion:(id)completion;
- (void)_updateDefaultService:(id)service record:(id)record completion:(id)completion;
- (void)performRefreshWithCompletion:(id)completion;
- (void)refreshDataAfterDelay;
@end

@implementation MSDDataRefresh

- (MSDDataRefresh)initWithReason:(unint64_t)reason
{
  v5.receiver = self;
  v5.super_class = MSDDataRefresh;
  result = [(MSDDataRefresh *)&v5 init];
  if (result)
  {
    result->_refreshReason = reason;
    result->_delay = 0.0;
  }

  return result;
}

- (MSDDataRefresh)initWithReason:(unint64_t)reason withDelay:(double)delay
{
  v7.receiver = self;
  v7.super_class = MSDDataRefresh;
  result = [(MSDDataRefresh *)&v7 init];
  if (result)
  {
    result->_refreshReason = reason;
    result->_delay = delay;
  }

  return result;
}

- (void)performRefreshWithCompletion:(id)completion
{
  completionCopy = completion;
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
  v9 = completionCopy;
  v10[4] = self;
  v11 = v9;
  objc_copyWeak(&v12, buf);
  [v8 isCloudKitAccessAvailable:v10];

  objc_destroyWeak(&v12);
  objc_destroyWeak(buf);
}

- (void)_performDataRefresh:(id)refresh
{
  refreshCopy = refresh;
  v5 = +[MSDHomeManager sharedManager];
  allHomes = [v5 allHomes];

  if (allHomes && [allHomes count])
  {
    v7 = sub_100030FE4();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138477827;
      v22 = allHomes;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Homes user is part of %{private}@", buf, 0xCu);
    }

    v8 = [allHomes hmf_objectsPassingTest:&stru_1000518E0];
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
      v18 = refreshCopy;
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

      if (!refreshCopy)
      {
        goto LABEL_12;
      }

      v14 = MSErrorDomain;
      v19 = MSUserInfoErrorStringKey;
      v20 = @"Failed to perform refresh. No valid accessories in home to setup.";
      v12 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
      v15 = [NSError errorWithDomain:v14 code:3 userInfo:v12];
      (*(refreshCopy + 2))(refreshCopy, 0, v15);
    }

LABEL_11:

LABEL_12:
    goto LABEL_13;
  }

  if (refreshCopy)
  {
    v13 = MSErrorDomain;
    v23 = MSUserInfoErrorStringKey;
    v24 = @"Failed to perform refresh. No homes available.";
    v8 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    v12 = [NSError errorWithDomain:v13 code:3 userInfo:v8];
    (*(refreshCopy + 2))(refreshCopy, 0, v12);
    goto LABEL_11;
  }

LABEL_13:
}

- (void)_checkZoneAndDefaultRecordInEachHome:(id)home completion:(id)completion
{
  homeCopy = home;
  completionCopy = completion;
  v7 = dispatch_group_create();
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x2020000000;
  v31 = 0;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = homeCopy;
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
            currentUser = [v11 currentUser];
            uniqueIdentifier = [currentUser uniqueIdentifier];
            *buf = 138477827;
            v33 = uniqueIdentifier;
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
  v21 = completionCopy;
  v22 = v30;
  v17 = completionCopy;
  dispatch_group_notify(v7, v16, block);

  _Block_object_dispose(v30, 8);
}

- (void)_deleteZombieRecordZonesIfAnyInHomes:(id)homes completion:(id)completion
{
  homesCopy = homes;
  completionCopy = completion;
  if ((+[MSDeviceInfo isDeviceAppleTV](MSDeviceInfo, "isDeviceAppleTV") & 1) != 0 || +[MSDeviceInfo isDeviceAudioAccessory])
  {
    v8 = sub_100030FE4();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "** Deletion of recordZones will be handled by the iOS device **", buf, 2u);
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy, 0);
    }
  }

  else
  {
    v9 = [homesCopy na_map:&stru_1000519C0];
    v10 = +[CKContainer MSDCloudKitContainer];
    privateCloudDatabase = [v10 privateCloudDatabase];

    v12 = +[CKFetchRecordZonesOperation fetchAllRecordZonesOperation];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10001BB84;
    v16[3] = &unk_100051A60;
    v21 = completionCopy;
    v17 = privateCloudDatabase;
    v18 = v9;
    v19 = homesCopy;
    selfCopy = self;
    v13 = v9;
    v14 = privateCloudDatabase;
    [v12 setFetchRecordZonesCompletionBlock:v16];
    [v12 setQualityOfService:17];
    operationConfiguration = [v14 operationConfiguration];
    [v12 setConfiguration:operationConfiguration];

    [v14 addOperation:v12];
  }
}

- (void)_deleteRecordZone:(id)zone completion:(id)completion
{
  zoneCopy = zone;
  completionCopy = completion;
  v7 = +[CKContainer MSDCloudKitContainer];
  privateCloudDatabase = [v7 privateCloudDatabase];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10001C6A8;
  v11[3] = &unk_100051A88;
  v12 = zoneCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = zoneCopy;
  [privateCloudDatabase deleteRecordZone:v10 withOptions:0 completion:v11];
}

- (void)_refreshDatabases:(id)databases
{
  databasesCopy = databases;
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
  privateCloudDatabase = [v5 privateCloudDatabase];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10001C9B8;
  v14[3] = &unk_100051AB0;
  v16 = v20;
  v17 = v18;
  v7 = v4;
  v15 = v7;
  [privateCloudDatabase refreshDatabase:0 completion:v14];

  v8 = dispatch_get_global_queue(2, 0);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10001CA54;
  v10[3] = &unk_100051AD8;
  v11 = databasesCopy;
  v12 = v18;
  v13 = v20;
  v9 = databasesCopy;
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

+ (void)cacheLastRefreshforHomes:(id)homes
{
  homesCopy = homes;
  v4 = +[MSDDefaultsManager sharedManager];
  v5 = +[NSDate date];
  [v5 timeIntervalSinceReferenceDate];
  v6 = [NSNumber numberWithDouble:?];
  [v4 setObject:v6 forDefault:@"lastDataRefresh"];

  v8 = [homesCopy na_map:&stru_100051AF8];

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

- (void)_initializeCKAndServiceInfoForHome:(id)home completion:(id)completion
{
  homeCopy = home;
  completionCopy = completion;
  v8 = objc_alloc_init(MSDFetchCKDataOptions);
  [(MSDFetchCKDataOptions *)v8 setCreateNewZoneIfMissing:1];
  [(MSDFetchCKDataOptions *)v8 setUserInitiatedRequest:0];
  v9 = +[CKContainer MSDCloudKitContainer];
  privateCloudDatabase = [v9 privateCloudDatabase];

  objc_initWeak(&location, self);
  uniqueIdentifier = [homeCopy uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];
  currentUser = [homeCopy currentUser];
  uniqueIdentifier2 = [currentUser uniqueIdentifier];
  uUIDString2 = [uniqueIdentifier2 UUIDString];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10001D37C;
  v18[3] = &unk_100051B70;
  v16 = completionCopy;
  v20 = v16;
  objc_copyWeak(&v21, &location);
  v17 = homeCopy;
  v19 = v17;
  [privateCloudDatabase fetchRecordZoneFor:uUIDString user:uUIDString2 withOptions:v8 completion:v18];

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
}

- (void)_checkDataSanity:(id)sanity publicDBInfo:(id)info home:(id)home completion:(id)completion
{
  sanityCopy = sanity;
  infoCopy = info;
  homeCopy = home;
  completionCopy = completion;
  v14 = [CKRecordID alloc];
  serviceID = [infoCopy serviceID];
  zoneID = [sanityCopy zoneID];
  v17 = [v14 initWithRecordName:serviceID zoneID:zoneID];

  v18 = [CKRecordID alloc];
  zoneID2 = [sanityCopy zoneID];
  v20 = [v18 initWithRecordName:MSDefaultServiceRecordName zoneID:zoneID2];

  if (v17 && v20)
  {
    objc_initWeak(&location, self);
    v21 = +[CKContainer MSDCloudKitContainer];
    privateCloudDatabase = [v21 privateCloudDatabase];

    v42[0] = v17;
    v42[1] = v20;
    v23 = [NSArray arrayWithObjects:v42 count:2];
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_10001D8B8;
    v33[3] = &unk_100051BC0;
    objc_copyWeak(&v40, &location);
    v39 = completionCopy;
    v34 = v17;
    v35 = v20;
    v36 = homeCopy;
    v37 = sanityCopy;
    v38 = infoCopy;
    [privateCloudDatabase fetchRecordWithIDS:v23 withOptions:0 completion:v33];

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

    if (completionCopy)
    {
      v32 = [NSError errorWithDomain:CKErrorDomain code:12 userInfo:0];
      (*(completionCopy + 2))(completionCopy, v32);
    }
  }
}

- (BOOL)_shouldProceedWithExecution:(id)execution
{
  executionCopy = execution;
  v4 = [executionCopy CKErrorHasErrorCode:11];
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

- (void)_createAndSaveAppleMusicRecord:(id)record publicDBInfo:(id)info home:(id)home completion:(id)completion
{
  recordCopy = record;
  infoCopy = info;
  homeCopy = home;
  completionCopy = completion;
  v14 = sub_100030FE4();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138477827;
    v31 = infoCopy;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Creating AppleMusic Service record with PublicDB Info : %{private}@", buf, 0xCu);
  }

  serviceID = [infoCopy serviceID];
  v16 = [CKRecord createRecordWithName:serviceID recordType:MSServiceAccountRecordType recordZone:recordCopy];

  uniqueIdentifier = [homeCopy uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];

  currentUser = [homeCopy currentUser];
  uniqueIdentifier2 = [currentUser uniqueIdentifier];
  uUIDString2 = [uniqueIdentifier2 UUIDString];

  v22 = sub_100030FE4();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138478083;
    v31 = uUIDString;
    v32 = 2113;
    v33 = uUIDString2;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Adding Home Entries HomeID : %{private}@ HomeUserID : %{private}@", buf, 0x16u);
  }

  [v16 setRecordFieldForKey:MSHomeParticipantHomeIdentifier value:uUIDString];
  [v16 setRecordFieldForKey:MSHomeParticipantHomeUserIdentifier value:uUIDString2];
  objc_initWeak(buf, self);
  serviceID2 = [infoCopy serviceID];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_10001E080;
  v26[3] = &unk_100051BE8;
  v24 = completionCopy;
  v28 = v24;
  objc_copyWeak(&v29, buf);
  v25 = homeCopy;
  v27 = v25;
  [(MSDDataRefresh *)self _saveMediaServiceConfigInfo:serviceID2 record:v16 completion:v26];

  objc_destroyWeak(&v29);
  objc_destroyWeak(buf);
}

- (void)_shareThisRecordIfApplicable:(id)applicable home:(id)home completion:(id)completion
{
  applicableCopy = applicable;
  homeCopy = home;
  completionCopy = completion;
  v11 = sub_100030FE4();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    isCurrentUserHomeOwner = [homeCopy isCurrentUserHomeOwner];
    v13 = @"NO";
    v20 = "[MSDDataRefresh _shareThisRecordIfApplicable:home:completion:]";
    *buf = 136315651;
    if (isCurrentUserHomeOwner)
    {
      v13 = @"YES";
    }

    v21 = 2113;
    v22 = homeCopy;
    v23 = 2112;
    v24 = v13;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s %{private}@ CurrentUserOwner: %@", buf, 0x20u);
  }

  if ([homeCopy isCurrentUserHomeOwner] || objc_msgSend(homeCopy, "isCurrentUserRestrictedGuest"))
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy, 0);
    }
  }

  else
  {
    v14 = sub_100030FE4();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      recordID = [applicableCopy recordID];
      *buf = 138477827;
      v20 = recordID;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Setting up share for participant with recordID %{private}@", buf, 0xCu);
    }

    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10001E560;
    v16[3] = &unk_100051C10;
    v17 = homeCopy;
    v18 = completionCopy;
    [(MSDDataRefresh *)self _setupShareForParticipant:applicableCopy home:v17 completion:v16];
  }
}

- (void)_updateDefaultService:(id)service record:(id)record completion:(id)completion
{
  completionCopy = completion;
  v8 = MSDefaultServiceRecordName;
  v9 = MSDefaultServiceRecordType;
  recordCopy = record;
  serviceCopy = service;
  recordID = [recordCopy recordID];
  zoneID = [recordID zoneID];
  v14 = [CKRecord createRecordWithName:v8 recordType:v9 recordZone:zoneID];

  v15 = MediaServiceIdentifier;
  v16 = [recordCopy recordFieldForKey:MediaServiceIdentifier];

  currentUser = [serviceCopy currentUser];

  uniqueIdentifier = [currentUser uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];

  v20 = sub_100030FE4();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138478083;
    v27 = v16;
    v28 = 2113;
    v29 = uUIDString;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Setting default service identifier %{private}@ and homeUserID %{private}@", buf, 0x16u);
  }

  [v14 setRecordFieldForKey:v15 value:v16];
  [v14 setRecordFieldForKey:MSHomeParticipantHomeUserIdentifier value:uUIDString];
  v21 = +[CKContainer MSDCloudKitContainer];
  privateCloudDatabase = [v21 privateCloudDatabase];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10001E934;
  v24[3] = &unk_100051C38;
  v25 = completionCopy;
  v23 = completionCopy;
  [privateCloudDatabase saveRecord:v14 completionHandler:v24];
}

- (void)_saveMediaServiceConfigInfo:(id)info record:(id)record completion:(id)completion
{
  infoCopy = info;
  completionCopy = completion;
  recordCopy = record;
  v10 = sub_100030FE4();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138477827;
    v17 = infoCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Attempting to save record for Apple Music with service info : %{private}@", buf, 0xCu);
  }

  [recordCopy setRecordFieldForKey:MediaServiceIdentifier value:infoCopy];
  v11 = +[CKContainer MSDCloudKitContainer];
  privateCloudDatabase = [v11 privateCloudDatabase];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10001EB9C;
  v14[3] = &unk_100051C38;
  v15 = completionCopy;
  v13 = completionCopy;
  [privateCloudDatabase saveRecord:recordCopy withOptions:0 completion:v14];
}

- (void)_setupShareForParticipant:(id)participant home:(id)home completion:(id)completion
{
  homeCopy = home;
  completionCopy = completion;
  participantCopy = participant;
  v11 = [MSDHomeCloudShareCreate cloudShareForHome:homeCopy];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10001ED68;
  v14[3] = &unk_100051C60;
  v14[4] = self;
  v15 = homeCopy;
  v16 = completionCopy;
  v12 = completionCopy;
  v13 = homeCopy;
  [v11 setupShareForHomeParticipant:participantCopy completion:v14];
}

- (BOOL)_shouldPreformRefresh:(id)refresh
{
  refreshCopy = refresh;
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

    v15 = [refreshCopy na_map:&stru_100051C80];
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

- (void)_handleCKShareError:(id)error home:(id)home
{
  errorCopy = error;
  homeCopy = home;
  v7 = sub_100030FE4();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v25 = errorCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Encountered error when trying to share recordZone with owner %@", buf, 0xCu);
  }

  domain = [errorCopy domain];
  if (![domain isEqualToString:HMErrorDomain])
  {
    goto LABEL_15;
  }

  code = [errorCopy code];

  if (code == 8)
  {
    v10 = sub_100030FE4();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "HomeOwner device did not respond in time, hit HomeKit timeout error", buf, 2u);
    }

    uniqueIdentifier = [homeCopy uniqueIdentifier];
    uUIDString = [uniqueIdentifier UUIDString];
    domain = [NSString stringWithFormat:@"%@_%@", @"CKShareErrorRetryCount", uUIDString];

    v13 = +[MSDDefaultsManager sharedManager];
    v14 = [v13 objectForDefault:domain];
    integerValue = [v14 integerValue];

    if (integerValue == MSCKShareTimeoutErrorMaxRetryCount)
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
      v19 = integerValue + 1;
      v20 = sub_100030FE4();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134349315;
        v25 = v19;
        v26 = 2113;
        v27 = domain;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Updating value of retry count %{public}lu for %{private}@", buf, 0x16u);
      }

      v21 = +[MSDDefaultsManager sharedManager];
      v22 = [NSNumber numberWithUnsignedInteger:v19];
      [v21 setObject:v22 forDefault:domain];

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