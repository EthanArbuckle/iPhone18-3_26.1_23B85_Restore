@interface ICCollaborationController
- (ICCollaborationController)initWithCloudContext:(id)a3;
- (id)containerForAccountID:(id)a3;
- (id)containerForUserRecordID:(id)a3;
- (id)existingShareForObject:(id)a3;
- (id)fetchShareForObjectWithManagedObjectID:(id)a3;
- (id)newShareForObject:(id)a3;
- (id)objectForShare:(id)a3 accountID:(id)a4 context:(id)a5;
- (id)rootRecordForObject:(id)a3;
- (void)acceptShareWithMetadata:(id)a3 callbackQueue:(id)a4 completionHandler:(id)a5;
- (void)acceptShareWithMetadata:(id)a3 container:(id)a4 accountID:(id)a5 fetchObjectWithCompletionHandler:(id)a6;
- (void)createShareForObjectWithManagedObjectID:(id)a3 appIconData:(id)a4 queue:(id)a5 completionHandler:(id)a6;
- (void)didSaveShare:(id)a3 accountID:(id)a4 queue:(id)a5 completionHandler:(id)a6;
- (void)didStopSharing:(id)a3 recordID:(id)a4 accountID:(id)a5 queue:(id)a6 completionHandler:(id)a7;
- (void)fetchShareIfNecessaryForObject:(id)a3 completionHandler:(id)a4;
- (void)populateShare:(id)a3 withObject:(id)a4;
- (void)prepareShare:(id)a3 forObject:(id)a4 completionHandler:(id)a5;
- (void)saveServerShare:(id)a3 accountID:(id)a4 completionHandler:(id)a5;
- (void)saveShare:(id)a3 forObject:(id)a4 completionHandler:(id)a5;
- (void)saveShare:(id)a3 withRootRecord:(id)a4 object:(id)a5 completionHandler:(id)a6;
@end

@implementation ICCollaborationController

- (ICCollaborationController)initWithCloudContext:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = ICCollaborationController;
  v5 = [(ICCollaborationController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(ICCollaborationController *)v5 setCloudContext:v4];
  }

  return v6;
}

- (id)fetchShareForObjectWithManagedObjectID:(id)a3
{
  v4 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_1000C0F08;
  v20 = sub_1000C0F18;
  v21 = 0;
  v5 = [(ICCollaborationController *)self cloudContext];
  v6 = [v5 newBackgroundContext];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000C0F20;
  v11[3] = &unk_1008DBFF0;
  v7 = v4;
  v12 = v7;
  v8 = v6;
  v14 = self;
  v15 = &v16;
  v13 = v8;
  [v8 performBlockAndWait:v11];
  v9 = v17[5];

  _Block_object_dispose(&v16, 8);

  return v9;
}

- (void)createShareForObjectWithManagedObjectID:(id)a3 appIconData:(id)a4 queue:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(ICCollaborationController *)self cloudContext];
  v15 = [v14 newBackgroundContext];

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000C114C;
  v21[3] = &unk_1008DC0A8;
  v22 = v10;
  v23 = v15;
  v24 = self;
  v25 = v11;
  v26 = v12;
  v27 = v13;
  v16 = v12;
  v17 = v11;
  v18 = v13;
  v19 = v15;
  v20 = v10;
  [v19 performBlockAndWait:v21];
}

- (id)rootRecordForObject:(id)a3
{
  v3 = a3;
  v4 = [v3 ckServerRecord];
  v5 = [v4 copy];

  if (!v5)
  {
    v6 = +[REMLog cloudkitCollaboration];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10076B124(v3);
    }

    v5 = [v3 newlyCreatedRecord];
  }

  return v5;
}

- (id)newShareForObject:(id)a3
{
  v4 = a3;
  v5 = [(ICCollaborationController *)self rootRecordForObject:v4];
  v6 = [v4 ckServerRecord];
  v7 = [v6 share];
  v8 = [v7 recordID];

  v9 = [CKShare alloc];
  if (v8)
  {
    v10 = [v9 initWithRootRecord:v5 shareID:v8];
    v11 = +[REMLog cloudkitCollaboration];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = [v10 ic_loggingDescription];
      v13 = [v4 shortLoggingDescription];
      v18 = 138412546;
      v19 = v12;
      v20 = 2112;
      v21 = v13;
      v14 = "Created share %@ with existing share reference for %@";
      v15 = v11;
      v16 = OS_LOG_TYPE_INFO;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v15, v16, v14, &v18, 0x16u);
    }
  }

  else
  {
    v10 = [v9 initWithRootRecord:v5];
    v11 = +[REMLog cloudkitCollaboration];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [v10 ic_loggingDescription];
      v13 = [v4 shortLoggingDescription];
      v18 = 138412546;
      v19 = v12;
      v20 = 2112;
      v21 = v13;
      v14 = "Created share %@ for %@";
      v15 = v11;
      v16 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_6;
    }
  }

  [(ICCollaborationController *)self populateShare:v10 withObject:v4];
  return v10;
}

- (void)populateShare:(id)a3 withObject:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 shareTitle];
  [v5 setObject:v7 forKeyedSubscript:CKShareTitleKey];

  v8 = [v6 shareType];
  [v5 setObject:v8 forKeyedSubscript:CKShareTypeKey];

  v9 = [v6 recordID];
  if (v9)
  {
    v10 = [[CKReference alloc] initWithRecordID:v9 action:0];
    [v5 setObject:v10 forKeyedSubscript:@"RootRecord"];
  }

  else
  {
    v11 = [v5 ic_loggingDescription];
    v12 = [v6 shortLoggingDescription];
    v10 = [NSString stringWithFormat:@"Trying to populate share %@ with no record ID for %@", v11, v12];

    [objc_opt_class() faultAndPromptToFileRadarWithICTap2RadarType:5 title:@"populateShare with nil recordID" description:&stru_1008FE8A0 logMessage:v10];
  }

  v13 = [v6 recordType];

  if (v13)
  {
    v14 = [v6 recordType];
    [v5 setObject:v14 forKeyedSubscript:@"RootRecordType"];
  }

  else
  {
    v14 = +[REMLog cloudkitCollaboration];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      sub_10076B1B0(v5, v6);
    }
  }
}

- (id)existingShareForObject:(id)a3
{
  v4 = a3;
  v5 = REMCRMergeableOrderedSet_ptr;
  v6 = +[REMLog cloudkitCollaboration];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [v4 shortLoggingDescription];
    *buf = 138412290;
    v44 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Checking for an existing share for %@", buf, 0xCu);
  }

  v8 = v4;
  v41 = v8;
  if (v8)
  {
    v40 = self;
    for (i = v8; ; i = v23)
    {
      v10 = [v5[50] cloudkitCollaboration];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = [i shortLoggingDescription];
        [i ckServerShare];
        v13 = v12 = v5;
        v14 = [v13 ic_loggingDescription];
        v15 = [i ckServerRecord];
        v16 = [v15 share];
        v17 = [v16 recordID];
        v18 = [v17 ic_loggingDescription];
        *buf = 138412802;
        v44 = v11;
        v45 = 2112;
        v46 = v14;
        v47 = 2112;
        v48 = v18;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Checking for share on %@ serverShare=%@ serverRecord.share=%@", buf, 0x20u);

        v5 = v12;
      }

      v19 = [i ckServerShare];
      if (v19)
      {
        v29 = v19;
        [(ICCollaborationController *)v40 populateShare:v19 withObject:i];
        goto LABEL_21;
      }

      v20 = [i ckServerRecord];
      v21 = [v20 share];

      if (v21)
      {
        break;
      }

      v22 = [i parentCloudObject];
      v23 = v22;
      if (!v22)
      {
        goto LABEL_19;
      }

      v24 = [v22 recordID];
      v25 = [v24 zoneID];
      v26 = [i recordID];
      v27 = [v26 zoneID];
      v28 = [v25 isEqual:v27];

      if ((v28 & 1) == 0)
      {
        v31 = [v5[50] cloudkitCollaboration];
        if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
        {
          v33 = [v23 shortLoggingDescription];
          v34 = [i shortLoggingDescription];
          v42 = [v23 recordID];
          v35 = [v42 zoneID];
          v36 = [v35 ic_loggingDescription];
          v37 = [i recordID];
          v38 = [v37 zoneID];
          v39 = [v38 ic_loggingDescription];
          *buf = 138413058;
          v44 = v33;
          v45 = 2112;
          v46 = v34;
          v47 = 2112;
          v48 = v36;
          v49 = 2112;
          v50 = v39;
          _os_log_fault_impl(&_mh_execute_header, v31, OS_LOG_TYPE_FAULT, "Not checking parent object %@ for %@ because it's not in the same zone (object in %@ and parent in %@)", buf, 0x2Au);
        }

LABEL_19:
        goto LABEL_20;
      }
    }

    v30 = [v5[50] cloudkitCollaboration];
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      sub_10076B260(buf, v41, &v44, v30);
    }
  }

LABEL_20:
  i = 0;
  v29 = 0;
LABEL_21:

  return v29;
}

- (void)prepareShare:(id)a3 forObject:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[REMLog cloudkitCollaboration];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = [v8 ic_loggingDescription];
    v13 = [v9 shortLoggingDescription];
    *buf = 138412546;
    v26 = v12;
    v27 = 2112;
    v28 = v13;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Preparing share %@ for %@", buf, 0x16u);
  }

  v14 = [v9 managedObjectContext];
  [(ICCollaborationController *)self setObjectContext:v14];

  v15 = [(ICCollaborationController *)self cloudContext];
  v16 = [v9 recordID];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000C2100;
  v20[3] = &unk_1008DAB10;
  v21 = v9;
  v22 = self;
  v23 = v8;
  v24 = v10;
  v17 = v10;
  v18 = v8;
  v19 = v9;
  [v15 finishOperationsForRecordID:v16 completionHandler:v20];
}

- (void)saveShare:(id)a3 forObject:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v9)
  {
    sub_10076B2D8();
  }

  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_1000C0F08;
  v25 = sub_1000C0F18;
  v26 = [(ICCollaborationController *)self rootRecordForObject:v9];
  v11 = v22[5];
  if (v11)
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000C2608;
    v15[3] = &unk_1008DC0F8;
    v16 = v9;
    v17 = self;
    v18 = v8;
    v20 = &v21;
    v19 = v10;
    [(ICCollaborationController *)self saveShare:v18 withRootRecord:v11 object:v16 completionHandler:v15];

    v12 = v16;
  }

  else
  {
    v13 = +[REMLog cloudkitCollaboration];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      v14 = [v9 shortLoggingDescription];
      sub_10076B388(v14, buf, v13);
    }

    v12 = [NSError errorWithDomain:@"com.apple.reminders" code:208 userInfo:0];
    (*(v10 + 2))(v10, 0, v12);
  }

  _Block_object_dispose(&v21, 8);
}

- (void)saveShare:(id)a3 withRootRecord:(id)a4 object:(id)a5 completionHandler:(id)a6
{
  v31 = a3;
  v32 = a4;
  v10 = a5;
  v11 = a6;
  v12 = [v10 accountCKIdentifier];
  if ([v12 length])
  {
    v30 = [(ICCollaborationController *)self containerForAccountID:v12];
    v13 = [CKModifyRecordsOperation alloc];
    v49[0] = v31;
    v49[1] = v32;
    v14 = [NSArray arrayWithObjects:v49 count:2];
    v15 = [v13 initWithRecordsToSave:v14 recordIDsToDelete:0];

    [v15 setQualityOfService:17];
    v16 = [v30 privateCloudDatabase];
    [v15 setDatabase:v16];

    objc_initWeak(&location, v15);
    v17 = +[REMLog cloudkitCollaboration];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = [v31 ic_loggingDescription];
      v19 = [v32 ic_loggingDescription];
      v20 = objc_loadWeakRetained(&location);
      v21 = [v20 ic_loggingDescription];
      v22 = [v10 ckIdentifier];
      *buf = 138413058;
      v42 = v18;
      v43 = 2112;
      v44 = v19;
      v45 = 2114;
      v46 = v21;
      v47 = 2114;
      v48 = v22;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Saving Share: %@ with root record: %@ %{public}@ %{public}@", buf, 0x2Au);
    }

    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_1000C2CC0;
    v33[3] = &unk_1008DC1B0;
    objc_copyWeak(&v39, &location);
    v34 = v10;
    v35 = v32;
    v36 = v12;
    v37 = v31;
    v38 = v11;
    [v15 setModifyRecordsCompletionBlock:v33];
    v23 = objc_alloc_init(CKOperationGroup);
    [v23 setName:@"SaveShare"];
    [v23 setQuantity:1];
    [v23 setExpectedSendSize:1];
    [v23 setExpectedReceiveSize:1];
    [v15 setGroup:v23];
    v24 = [v15 database];
    [v24 addOperation:v15];

    objc_destroyWeak(&v39);
    objc_destroyWeak(&location);

    goto LABEL_9;
  }

  v25 = +[REMLog cloudkitCollaboration];
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    v26 = [v10 ckIdentifier];
    v27 = [v31 ic_loggingDescription];
    v28 = [v32 recordID];
    v29 = [v28 ic_loggingDescription];
    *buf = 138543874;
    v42 = v26;
    v43 = 2112;
    v44 = v27;
    v45 = 2112;
    v46 = v29;
    _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Trying to saveShare with nil or empty accountID: ckIdentifier: %{public}@, share: %@, rootRecordID: %@", buf, 0x20u);
  }

  if (v11)
  {
    v30 = ICGenericError();
    (*(v11 + 2))(v11, 0, v30);
LABEL_9:
  }
}

- (void)fetchShareIfNecessaryForObject:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 accountCKIdentifier];
  if ([v8 length])
  {
    v9 = [v6 ckServerRecord];
    v10 = [v9 share];
    v11 = [v10 recordID];

    if (v11 && ([v6 ckServerShare], v12 = objc_claimAutoreleasedReturnValue(), v12, !v12))
    {
      v14 = +[REMLog cloudkitCollaboration];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v30 = [v6 ckServerRecord];
        v15 = [v30 share];
        v16 = [v15 recordID];
        v17 = [v16 ic_loggingDescription];
        v18 = [v6 shortLoggingDescription];
        *buf = 138412546;
        v41 = v17;
        v42 = 2112;
        v43 = v18;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Need to fetch share %@ for %@", buf, 0x16u);
      }

      v19 = [(ICCollaborationController *)self cloudContext];
      v20 = [v19 containerForAccountID:v8];

      v21 = [CKFetchRecordsOperation alloc];
      v39 = v11;
      v22 = [NSArray arrayWithObjects:&v39 count:1];
      v23 = [v21 initWithRecordIDs:v22];

      v24 = [v20 databaseWithDatabaseScope:{objc_msgSend(v11, "rd_ckDatabaseScope")}];
      [v23 setDatabase:v24];

      [v23 setQueuePriority:8];
      [v23 setQualityOfService:17];
      objc_initWeak(&location, v23);
      v25 = +[REMLog cloudkitCollaboration];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v26 = [v11 ic_loggingDescription];
        v27 = [v23 ic_loggingDescription];
        *buf = 138412546;
        v41 = v26;
        v42 = 2112;
        v43 = v27;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "Fetching share %@ with %@", buf, 0x16u);
      }

      v31[0] = _NSConcreteStackBlock;
      v31[1] = 3221225472;
      v31[2] = sub_1000C3A88;
      v31[3] = &unk_1008DC1D8;
      v11 = v11;
      v32 = v11;
      objc_copyWeak(&v37, &location);
      v33 = v6;
      v34 = self;
      v35 = v8;
      v36 = v7;
      [v23 setFetchRecordsCompletionBlock:v31];
      v28 = objc_alloc_init(CKOperationGroup);
      [v28 setName:@"FetchShare"];
      [v28 setQuantity:1];
      [v28 setExpectedSendSize:1];
      [v28 setExpectedReceiveSize:1];
      [v23 setGroup:v28];
      v29 = [v23 database];
      [v29 addOperation:v23];

      objc_destroyWeak(&v37);
      objc_destroyWeak(&location);
    }

    else
    {
      (*(v7 + 2))(v7, 0);
    }

    goto LABEL_14;
  }

  v13 = +[REMLog cloudkitCollaboration];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    sub_10076B7C0(v6);
  }

  if (v7)
  {
    v11 = [NSError errorWithDomain:@"com.apple.reminders" code:214 userInfo:0];
    (*(v7 + 2))(v7, v11);
LABEL_14:
  }
}

- (void)didSaveShare:(id)a3 accountID:(id)a4 queue:(id)a5 completionHandler:(id)a6
{
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000C3DC8;
  v12[3] = &unk_1008DAC68;
  v13 = a5;
  v14 = a6;
  v10 = v14;
  v11 = v13;
  [(ICCollaborationController *)self saveServerShare:a3 accountID:a4 completionHandler:v12];
}

- (void)saveServerShare:(id)a3 accountID:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(ICCollaborationController *)self cloudContext];
  v12 = [v11 newBackgroundContext];

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000C3FAC;
  v17[3] = &unk_1008DAD58;
  v17[4] = self;
  v18 = v8;
  v19 = v9;
  v20 = v12;
  v21 = v10;
  v13 = v10;
  v14 = v12;
  v15 = v9;
  v16 = v8;
  [v14 performBlockAndWait:v17];
}

- (id)objectForShare:(id)a3 accountID:(id)a4 context:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 objectForKeyedSubscript:@"RootRecord"];
  v12 = [v11 recordID];
  if (v12)
  {
    v13 = [v8 objectForKeyedSubscript:@"RootRecordType"];
    if (!v13)
    {
      v14 = +[REMLog cloudkitCollaboration];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        sub_10076B850(v8);
      }
    }

    v15 = [(ICCollaborationController *)self cloudContext];
    v16 = [v15 existingCloudObjectForRecordID:v12 recordType:v13 accountID:v9 context:v10];
  }

  else
  {
    v13 = +[REMLog cloudkitCollaboration];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      sub_10076B8DC(v8);
    }

    v16 = 0;
  }

  return v16;
}

- (void)didStopSharing:(id)a3 recordID:(id)a4 accountID:(id)a5 queue:(id)a6 completionHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (v12 | v13)
  {
    v17 = [(ICCollaborationController *)self cloudContext];
    v18 = [v17 newBackgroundContext];

    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1000C44A8;
    v20[3] = &unk_1008DC200;
    v21 = v12;
    v22 = self;
    v23 = v14;
    v24 = v18;
    v25 = v13;
    v26 = v15;
    v27 = v16;
    v19 = v18;
    [v19 performBlockAndWait:v20];
  }

  else
  {
    v19 = +[REMLog cloudkitCollaboration];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "didStopSharing: Invalid arguments, share or recordID must be non-nil.", buf, 2u);
    }
  }
}

- (void)acceptShareWithMetadata:(id)a3 callbackQueue:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[REMLog cloudkitCollaboration];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v8;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Accepting share for metadata %@", &buf, 0xCu);
  }

  v12 = [(ICCollaborationController *)self cloudContext];
  v13 = [v12 newBackgroundContext];

  v14 = [v8 callingParticipant];
  v15 = [v14 userIdentity];
  v16 = [v15 userRecordID];

  *&buf = 0;
  *(&buf + 1) = &buf;
  v56 = 0x3032000000;
  v57 = sub_1000C0F08;
  v58 = sub_1000C0F18;
  v59 = 0;
  v17 = [(ICCollaborationController *)self cloudContext];
  v18 = [v17 containersByAccountID];
  v19 = [v18 count] == 0;

  if (v19)
  {
    goto LABEL_7;
  }

  v20 = +[REMLog cloudkitCollaboration];
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *v51 = 0;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Accepting share: Accounts detected. Fetching container and accountID.", v51, 2u);
  }

  v21 = +[_TtC7remindd20RDDispatchQueue_ObjC utilityQueue];
  dispatch_assert_queue_not_V2(v21);

  v22 = +[_TtC7remindd20RDDispatchQueue_ObjC xpcDefaultQueue];
  dispatch_assert_queue_not_V2(v22);

  v23 = [(ICCollaborationController *)self containerForUserRecordID:v16];
  v24 = [v23 options];
  v25 = [v24 accountOverrideInfo];
  v26 = [v25 accountID];
  v27 = *(*(&buf + 1) + 40);
  *(*(&buf + 1) + 40) = v26;

  if (!v23)
  {
LABEL_7:
    v28 = +[REMLog cloudkitCollaboration];
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *v51 = 0;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Accepting share: Single account or unable to fetch container. Using containerWithIdentifier.", v51, 2u);
    }

    v29 = [v8 containerIdentifier];
    v23 = [CKContainer containerWithIdentifier:v29];

    v30 = [v23 options];
    v31 = [v30 accountOverrideInfo];
    v32 = [v31 accountID];
    v33 = *(*(&buf + 1) + 40);
    *(*(&buf + 1) + 40) = v32;
  }

  if (![*(*(&buf + 1) + 40) length])
  {
    v34 = +[REMLog cloudkitCollaboration];
    if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
    {
      v39 = [v16 recordName];
      v40 = [(ICCollaborationController *)self cloudContext];
      v37 = [v40 containersByAccountID];
      v38 = [v37 count];
      *v51 = 138543618;
      v52 = v39;
      v53 = 2048;
      v54 = v38;
      _os_log_fault_impl(&_mh_execute_header, v34, OS_LOG_TYPE_FAULT, "Accepting share: Unable to fetch account ID. Using primaryCloudKitAccountInContext. userRecordName=%{public}@, containers.count=%lu", v51, 0x16u);
    }

    v48[0] = _NSConcreteStackBlock;
    v48[1] = 3221225472;
    v48[2] = sub_1000C4DD0;
    v48[3] = &unk_1008D9C38;
    p_buf = &buf;
    v48[4] = self;
    v49 = v13;
    [v49 performBlockAndWait:v48];
  }

  if (!v23)
  {
    v35 = +[REMLog cloudkitCollaboration];
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      sub_10076B9DC();
    }

    goto LABEL_22;
  }

  if (![*(*(&buf + 1) + 40) length])
  {
    v35 = +[REMLog cloudkitCollaboration];
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      sub_10076B968();
    }

LABEL_22:

    v36 = ICGenericError();
    (*(v10 + 2))(v10, v36, 0, 0);

    goto LABEL_23;
  }

  v41[0] = _NSConcreteStackBlock;
  v41[1] = 3221225472;
  v41[2] = sub_1000C4E64;
  v41[3] = &unk_1008DC2C8;
  v41[4] = self;
  v42 = v8;
  v47 = &buf;
  v43 = v13;
  v44 = v9;
  v46 = v10;
  v45 = v23;
  [v43 performBlockAndWait:v41];

LABEL_23:
  _Block_object_dispose(&buf, 8);
}

- (id)containerForUserRecordID:(id)a3
{
  v4 = [a3 recordName];
  v5 = [(ICCollaborationController *)self cloudContext];
  v6 = [v5 containersByAccountID];
  v7 = [v6 allValues];

  v8 = +[REMLog cloudkitCollaboration];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(ICCollaborationController *)self cloudContext];
    v10 = [v9 containersByAccountID];
    v11 = [v10 allKeys];
    *buf = 138543362;
    v30 = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "containerForUserRecordID accountIDs=%{public}@", buf, 0xCu);
  }

  v12 = +[_TtC7remindd20RDDispatchQueue_ObjC utilityQueue];
  dispatch_assert_queue_not_V2(v12);

  v13 = +[_TtC7remindd20RDDispatchQueue_ObjC xpcDefaultQueue];
  dispatch_assert_queue_not_V2(v13);

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v14 = v7;
  v15 = [v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v15)
  {
    v17 = *v25;
    *&v16 = 138543362;
    v23 = v16;
    while (2)
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v25 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v24 + 1) + 8 * i);
        v20 = [ICCloudContext userRecordNameForContainer:v19, v23, v24];
        v21 = +[REMLog cloudkitCollaboration];
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v23;
          v30 = v20;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "containerForUserRecordID containerUserRecordName=%{public}@", buf, 0xCu);
        }

        if ([v20 isEqualToString:v4])
        {
          v15 = v19;

          goto LABEL_15;
        }
      }

      v15 = [v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }
  }

LABEL_15:

  return v15;
}

- (id)containerForAccountID:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = [(ICCollaborationController *)self cloudContext];
    v6 = [v5 containersByAccountID];
    v7 = [v6 objectForKeyedSubscript:v4];
  }

  else
  {
    v8 = +[REMLog cloudkitCollaboration];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      sub_10076BA50(v8);
    }

    v7 = 0;
  }

  return v7;
}

- (void)acceptShareWithMetadata:(id)a3 container:(id)a4 accountID:(id)a5 fetchObjectWithCompletionHandler:(id)a6
{
  v10 = a3;
  v30 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [v10 share];
  v32 = [v13 URL];

  if (!v32)
  {
    sub_10076BA94();
  }

  v14 = +[REMLog cloudkitCollaboration];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v46 = v32;
    v47 = 2114;
    v48 = v11;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Accepting shared object at URL: %@, account ID = %{public}@", buf, 0x16u);
  }

  v33 = [(ICCollaborationController *)self cloudContext];
  v15 = [CKAcceptSharesOperation alloc];
  v44 = v10;
  v16 = [NSArray arrayWithObjects:&v44 count:1];
  v17 = [v15 initWithShareMetadatas:v16];

  [v17 setQualityOfService:17];
  [v17 setQueuePriority:8];
  v18 = [v17 configuration];
  [v18 setContainer:v31];

  objc_initWeak(&location, v17);
  +[NSMutableDictionary dictionary];
  v41[0] = _NSConcreteStackBlock;
  v41[1] = 3221225472;
  v41[2] = sub_1000C5BA4;
  v19 = v41[3] = &unk_1008DC2F0;
  v42 = v19;
  [v17 setPerShareCompletionBlock:v41];
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_1000C5C0C;
  v34[3] = &unk_1008DC368;
  v20 = v10;
  v35 = v20;
  objc_copyWeak(&v40, &location);
  v21 = v12;
  v39 = v21;
  v22 = v11;
  v36 = v22;
  v37 = self;
  v23 = v19;
  v38 = v23;
  [v17 setAcceptSharesCompletionBlock:v34];
  v24 = objc_alloc_init(CKOperationGroup);
  [v24 setName:@"AcceptShare"];
  [v24 setQuantity:1];
  [v24 setExpectedSendSize:1];
  [v24 setExpectedReceiveSize:1];
  [v17 setGroup:v24];
  v25 = +[REMLog cloudkitCollaboration];
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v26 = [v20 share];
    v27 = [v26 ic_loggingDescription];
    v28 = [v17 ic_loggingDescription];
    *buf = 138412546;
    v46 = v27;
    v47 = 2112;
    v48 = v28;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Accepting %@ with %@", buf, 0x16u);
  }

  v29 = [v33 operationQueue];
  [v29 addOperation:v17];

  [v33 errorAndPromptToFileRadarWithICTap2RadarTypeTooManyOperationsInOperationQueueIfNecessary];
  objc_destroyWeak(&v40);

  objc_destroyWeak(&location);
}

@end