@interface ICCollaborationController
- (ICCollaborationController)initWithCloudContext:(id)context;
- (id)containerForAccountID:(id)d;
- (id)containerForUserRecordID:(id)d;
- (id)existingShareForObject:(id)object;
- (id)fetchShareForObjectWithManagedObjectID:(id)d;
- (id)newShareForObject:(id)object;
- (id)objectForShare:(id)share accountID:(id)d context:(id)context;
- (id)rootRecordForObject:(id)object;
- (void)acceptShareWithMetadata:(id)metadata callbackQueue:(id)queue completionHandler:(id)handler;
- (void)acceptShareWithMetadata:(id)metadata container:(id)container accountID:(id)d fetchObjectWithCompletionHandler:(id)handler;
- (void)createShareForObjectWithManagedObjectID:(id)d appIconData:(id)data queue:(id)queue completionHandler:(id)handler;
- (void)didSaveShare:(id)share accountID:(id)d queue:(id)queue completionHandler:(id)handler;
- (void)didStopSharing:(id)sharing recordID:(id)d accountID:(id)iD queue:(id)queue completionHandler:(id)handler;
- (void)fetchShareIfNecessaryForObject:(id)object completionHandler:(id)handler;
- (void)populateShare:(id)share withObject:(id)object;
- (void)prepareShare:(id)share forObject:(id)object completionHandler:(id)handler;
- (void)saveServerShare:(id)share accountID:(id)d completionHandler:(id)handler;
- (void)saveShare:(id)share forObject:(id)object completionHandler:(id)handler;
- (void)saveShare:(id)share withRootRecord:(id)record object:(id)object completionHandler:(id)handler;
@end

@implementation ICCollaborationController

- (ICCollaborationController)initWithCloudContext:(id)context
{
  contextCopy = context;
  v8.receiver = self;
  v8.super_class = ICCollaborationController;
  v5 = [(ICCollaborationController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(ICCollaborationController *)v5 setCloudContext:contextCopy];
  }

  return v6;
}

- (id)fetchShareForObjectWithManagedObjectID:(id)d
{
  dCopy = d;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_1000C0F08;
  v20 = sub_1000C0F18;
  v21 = 0;
  cloudContext = [(ICCollaborationController *)self cloudContext];
  newBackgroundContext = [cloudContext newBackgroundContext];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000C0F20;
  v11[3] = &unk_1008DBFF0;
  v7 = dCopy;
  v12 = v7;
  v8 = newBackgroundContext;
  selfCopy = self;
  v15 = &v16;
  v13 = v8;
  [v8 performBlockAndWait:v11];
  v9 = v17[5];

  _Block_object_dispose(&v16, 8);

  return v9;
}

- (void)createShareForObjectWithManagedObjectID:(id)d appIconData:(id)data queue:(id)queue completionHandler:(id)handler
{
  dCopy = d;
  dataCopy = data;
  queueCopy = queue;
  handlerCopy = handler;
  cloudContext = [(ICCollaborationController *)self cloudContext];
  newBackgroundContext = [cloudContext newBackgroundContext];

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000C114C;
  v21[3] = &unk_1008DC0A8;
  v22 = dCopy;
  v23 = newBackgroundContext;
  selfCopy = self;
  v25 = dataCopy;
  v26 = queueCopy;
  v27 = handlerCopy;
  v16 = queueCopy;
  v17 = dataCopy;
  v18 = handlerCopy;
  v19 = newBackgroundContext;
  v20 = dCopy;
  [v19 performBlockAndWait:v21];
}

- (id)rootRecordForObject:(id)object
{
  objectCopy = object;
  ckServerRecord = [objectCopy ckServerRecord];
  newlyCreatedRecord = [ckServerRecord copy];

  if (!newlyCreatedRecord)
  {
    v6 = +[REMLog cloudkitCollaboration];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10076B124(objectCopy);
    }

    newlyCreatedRecord = [objectCopy newlyCreatedRecord];
  }

  return newlyCreatedRecord;
}

- (id)newShareForObject:(id)object
{
  objectCopy = object;
  v5 = [(ICCollaborationController *)self rootRecordForObject:objectCopy];
  ckServerRecord = [objectCopy ckServerRecord];
  share = [ckServerRecord share];
  recordID = [share recordID];

  v9 = [CKShare alloc];
  if (recordID)
  {
    v10 = [v9 initWithRootRecord:v5 shareID:recordID];
    v11 = +[REMLog cloudkitCollaboration];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      ic_loggingDescription = [v10 ic_loggingDescription];
      shortLoggingDescription = [objectCopy shortLoggingDescription];
      v18 = 138412546;
      v19 = ic_loggingDescription;
      v20 = 2112;
      v21 = shortLoggingDescription;
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
      ic_loggingDescription = [v10 ic_loggingDescription];
      shortLoggingDescription = [objectCopy shortLoggingDescription];
      v18 = 138412546;
      v19 = ic_loggingDescription;
      v20 = 2112;
      v21 = shortLoggingDescription;
      v14 = "Created share %@ for %@";
      v15 = v11;
      v16 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_6;
    }
  }

  [(ICCollaborationController *)self populateShare:v10 withObject:objectCopy];
  return v10;
}

- (void)populateShare:(id)share withObject:(id)object
{
  shareCopy = share;
  objectCopy = object;
  shareTitle = [objectCopy shareTitle];
  [shareCopy setObject:shareTitle forKeyedSubscript:CKShareTitleKey];

  shareType = [objectCopy shareType];
  [shareCopy setObject:shareType forKeyedSubscript:CKShareTypeKey];

  recordID = [objectCopy recordID];
  if (recordID)
  {
    v10 = [[CKReference alloc] initWithRecordID:recordID action:0];
    [shareCopy setObject:v10 forKeyedSubscript:@"RootRecord"];
  }

  else
  {
    ic_loggingDescription = [shareCopy ic_loggingDescription];
    shortLoggingDescription = [objectCopy shortLoggingDescription];
    v10 = [NSString stringWithFormat:@"Trying to populate share %@ with no record ID for %@", ic_loggingDescription, shortLoggingDescription];

    [objc_opt_class() faultAndPromptToFileRadarWithICTap2RadarType:5 title:@"populateShare with nil recordID" description:&stru_1008FE8A0 logMessage:v10];
  }

  recordType = [objectCopy recordType];

  if (recordType)
  {
    recordType2 = [objectCopy recordType];
    [shareCopy setObject:recordType2 forKeyedSubscript:@"RootRecordType"];
  }

  else
  {
    recordType2 = +[REMLog cloudkitCollaboration];
    if (os_log_type_enabled(recordType2, OS_LOG_TYPE_FAULT))
    {
      sub_10076B1B0(shareCopy, objectCopy);
    }
  }
}

- (id)existingShareForObject:(id)object
{
  objectCopy = object;
  v5 = REMCRMergeableOrderedSet_ptr;
  v6 = +[REMLog cloudkitCollaboration];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    shortLoggingDescription = [objectCopy shortLoggingDescription];
    *buf = 138412290;
    v44 = shortLoggingDescription;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Checking for an existing share for %@", buf, 0xCu);
  }

  v8 = objectCopy;
  v41 = v8;
  if (v8)
  {
    selfCopy = self;
    for (i = v8; ; i = v23)
    {
      cloudkitCollaboration = [v5[50] cloudkitCollaboration];
      if (os_log_type_enabled(cloudkitCollaboration, OS_LOG_TYPE_INFO))
      {
        shortLoggingDescription2 = [i shortLoggingDescription];
        [i ckServerShare];
        v13 = v12 = v5;
        ic_loggingDescription = [v13 ic_loggingDescription];
        ckServerRecord = [i ckServerRecord];
        share = [ckServerRecord share];
        recordID = [share recordID];
        ic_loggingDescription2 = [recordID ic_loggingDescription];
        *buf = 138412802;
        v44 = shortLoggingDescription2;
        v45 = 2112;
        v46 = ic_loggingDescription;
        v47 = 2112;
        v48 = ic_loggingDescription2;
        _os_log_impl(&_mh_execute_header, cloudkitCollaboration, OS_LOG_TYPE_INFO, "Checking for share on %@ serverShare=%@ serverRecord.share=%@", buf, 0x20u);

        v5 = v12;
      }

      ckServerShare = [i ckServerShare];
      if (ckServerShare)
      {
        v29 = ckServerShare;
        [(ICCollaborationController *)selfCopy populateShare:ckServerShare withObject:i];
        goto LABEL_21;
      }

      ckServerRecord2 = [i ckServerRecord];
      share2 = [ckServerRecord2 share];

      if (share2)
      {
        break;
      }

      parentCloudObject = [i parentCloudObject];
      v23 = parentCloudObject;
      if (!parentCloudObject)
      {
        goto LABEL_19;
      }

      recordID2 = [parentCloudObject recordID];
      zoneID = [recordID2 zoneID];
      recordID3 = [i recordID];
      zoneID2 = [recordID3 zoneID];
      v28 = [zoneID isEqual:zoneID2];

      if ((v28 & 1) == 0)
      {
        cloudkitCollaboration2 = [v5[50] cloudkitCollaboration];
        if (os_log_type_enabled(cloudkitCollaboration2, OS_LOG_TYPE_FAULT))
        {
          shortLoggingDescription3 = [v23 shortLoggingDescription];
          shortLoggingDescription4 = [i shortLoggingDescription];
          recordID4 = [v23 recordID];
          zoneID3 = [recordID4 zoneID];
          ic_loggingDescription3 = [zoneID3 ic_loggingDescription];
          recordID5 = [i recordID];
          zoneID4 = [recordID5 zoneID];
          ic_loggingDescription4 = [zoneID4 ic_loggingDescription];
          *buf = 138413058;
          v44 = shortLoggingDescription3;
          v45 = 2112;
          v46 = shortLoggingDescription4;
          v47 = 2112;
          v48 = ic_loggingDescription3;
          v49 = 2112;
          v50 = ic_loggingDescription4;
          _os_log_fault_impl(&_mh_execute_header, cloudkitCollaboration2, OS_LOG_TYPE_FAULT, "Not checking parent object %@ for %@ because it's not in the same zone (object in %@ and parent in %@)", buf, 0x2Au);
        }

LABEL_19:
        goto LABEL_20;
      }
    }

    cloudkitCollaboration3 = [v5[50] cloudkitCollaboration];
    if (os_log_type_enabled(cloudkitCollaboration3, OS_LOG_TYPE_ERROR))
    {
      sub_10076B260(buf, v41, &v44, cloudkitCollaboration3);
    }
  }

LABEL_20:
  i = 0;
  v29 = 0;
LABEL_21:

  return v29;
}

- (void)prepareShare:(id)share forObject:(id)object completionHandler:(id)handler
{
  shareCopy = share;
  objectCopy = object;
  handlerCopy = handler;
  v11 = +[REMLog cloudkitCollaboration];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    ic_loggingDescription = [shareCopy ic_loggingDescription];
    shortLoggingDescription = [objectCopy shortLoggingDescription];
    *buf = 138412546;
    v26 = ic_loggingDescription;
    v27 = 2112;
    v28 = shortLoggingDescription;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Preparing share %@ for %@", buf, 0x16u);
  }

  managedObjectContext = [objectCopy managedObjectContext];
  [(ICCollaborationController *)self setObjectContext:managedObjectContext];

  cloudContext = [(ICCollaborationController *)self cloudContext];
  recordID = [objectCopy recordID];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000C2100;
  v20[3] = &unk_1008DAB10;
  v21 = objectCopy;
  selfCopy = self;
  v23 = shareCopy;
  v24 = handlerCopy;
  v17 = handlerCopy;
  v18 = shareCopy;
  v19 = objectCopy;
  [cloudContext finishOperationsForRecordID:recordID completionHandler:v20];
}

- (void)saveShare:(id)share forObject:(id)object completionHandler:(id)handler
{
  shareCopy = share;
  objectCopy = object;
  handlerCopy = handler;
  if (!objectCopy)
  {
    sub_10076B2D8();
  }

  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_1000C0F08;
  v25 = sub_1000C0F18;
  v26 = [(ICCollaborationController *)self rootRecordForObject:objectCopy];
  v11 = v22[5];
  if (v11)
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000C2608;
    v15[3] = &unk_1008DC0F8;
    v16 = objectCopy;
    selfCopy = self;
    v18 = shareCopy;
    v20 = &v21;
    v19 = handlerCopy;
    [(ICCollaborationController *)self saveShare:v18 withRootRecord:v11 object:v16 completionHandler:v15];

    v12 = v16;
  }

  else
  {
    v13 = +[REMLog cloudkitCollaboration];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      shortLoggingDescription = [objectCopy shortLoggingDescription];
      sub_10076B388(shortLoggingDescription, buf, v13);
    }

    v12 = [NSError errorWithDomain:@"com.apple.reminders" code:208 userInfo:0];
    (*(handlerCopy + 2))(handlerCopy, 0, v12);
  }

  _Block_object_dispose(&v21, 8);
}

- (void)saveShare:(id)share withRootRecord:(id)record object:(id)object completionHandler:(id)handler
{
  shareCopy = share;
  recordCopy = record;
  objectCopy = object;
  handlerCopy = handler;
  accountCKIdentifier = [objectCopy accountCKIdentifier];
  if ([accountCKIdentifier length])
  {
    v30 = [(ICCollaborationController *)self containerForAccountID:accountCKIdentifier];
    v13 = [CKModifyRecordsOperation alloc];
    v49[0] = shareCopy;
    v49[1] = recordCopy;
    v14 = [NSArray arrayWithObjects:v49 count:2];
    v15 = [v13 initWithRecordsToSave:v14 recordIDsToDelete:0];

    [v15 setQualityOfService:17];
    privateCloudDatabase = [v30 privateCloudDatabase];
    [v15 setDatabase:privateCloudDatabase];

    objc_initWeak(&location, v15);
    v17 = +[REMLog cloudkitCollaboration];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      ic_loggingDescription = [shareCopy ic_loggingDescription];
      ic_loggingDescription2 = [recordCopy ic_loggingDescription];
      v20 = objc_loadWeakRetained(&location);
      ic_loggingDescription3 = [v20 ic_loggingDescription];
      ckIdentifier = [objectCopy ckIdentifier];
      *buf = 138413058;
      v42 = ic_loggingDescription;
      v43 = 2112;
      v44 = ic_loggingDescription2;
      v45 = 2114;
      v46 = ic_loggingDescription3;
      v47 = 2114;
      v48 = ckIdentifier;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Saving Share: %@ with root record: %@ %{public}@ %{public}@", buf, 0x2Au);
    }

    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_1000C2CC0;
    v33[3] = &unk_1008DC1B0;
    objc_copyWeak(&v39, &location);
    v34 = objectCopy;
    v35 = recordCopy;
    v36 = accountCKIdentifier;
    v37 = shareCopy;
    v38 = handlerCopy;
    [v15 setModifyRecordsCompletionBlock:v33];
    v23 = objc_alloc_init(CKOperationGroup);
    [v23 setName:@"SaveShare"];
    [v23 setQuantity:1];
    [v23 setExpectedSendSize:1];
    [v23 setExpectedReceiveSize:1];
    [v15 setGroup:v23];
    database = [v15 database];
    [database addOperation:v15];

    objc_destroyWeak(&v39);
    objc_destroyWeak(&location);

    goto LABEL_9;
  }

  v25 = +[REMLog cloudkitCollaboration];
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    ckIdentifier2 = [objectCopy ckIdentifier];
    ic_loggingDescription4 = [shareCopy ic_loggingDescription];
    recordID = [recordCopy recordID];
    ic_loggingDescription5 = [recordID ic_loggingDescription];
    *buf = 138543874;
    v42 = ckIdentifier2;
    v43 = 2112;
    v44 = ic_loggingDescription4;
    v45 = 2112;
    v46 = ic_loggingDescription5;
    _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Trying to saveShare with nil or empty accountID: ckIdentifier: %{public}@, share: %@, rootRecordID: %@", buf, 0x20u);
  }

  if (handlerCopy)
  {
    v30 = ICGenericError();
    (*(handlerCopy + 2))(handlerCopy, 0, v30);
LABEL_9:
  }
}

- (void)fetchShareIfNecessaryForObject:(id)object completionHandler:(id)handler
{
  objectCopy = object;
  handlerCopy = handler;
  accountCKIdentifier = [objectCopy accountCKIdentifier];
  if ([accountCKIdentifier length])
  {
    ckServerRecord = [objectCopy ckServerRecord];
    share = [ckServerRecord share];
    recordID = [share recordID];

    if (recordID && ([objectCopy ckServerShare], v12 = objc_claimAutoreleasedReturnValue(), v12, !v12))
    {
      v14 = +[REMLog cloudkitCollaboration];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        ckServerRecord2 = [objectCopy ckServerRecord];
        share2 = [ckServerRecord2 share];
        recordID2 = [share2 recordID];
        ic_loggingDescription = [recordID2 ic_loggingDescription];
        shortLoggingDescription = [objectCopy shortLoggingDescription];
        *buf = 138412546;
        v41 = ic_loggingDescription;
        v42 = 2112;
        v43 = shortLoggingDescription;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Need to fetch share %@ for %@", buf, 0x16u);
      }

      cloudContext = [(ICCollaborationController *)self cloudContext];
      v20 = [cloudContext containerForAccountID:accountCKIdentifier];

      v21 = [CKFetchRecordsOperation alloc];
      v39 = recordID;
      v22 = [NSArray arrayWithObjects:&v39 count:1];
      v23 = [v21 initWithRecordIDs:v22];

      v24 = [v20 databaseWithDatabaseScope:{objc_msgSend(recordID, "rd_ckDatabaseScope")}];
      [v23 setDatabase:v24];

      [v23 setQueuePriority:8];
      [v23 setQualityOfService:17];
      objc_initWeak(&location, v23);
      v25 = +[REMLog cloudkitCollaboration];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        ic_loggingDescription2 = [recordID ic_loggingDescription];
        ic_loggingDescription3 = [v23 ic_loggingDescription];
        *buf = 138412546;
        v41 = ic_loggingDescription2;
        v42 = 2112;
        v43 = ic_loggingDescription3;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "Fetching share %@ with %@", buf, 0x16u);
      }

      v31[0] = _NSConcreteStackBlock;
      v31[1] = 3221225472;
      v31[2] = sub_1000C3A88;
      v31[3] = &unk_1008DC1D8;
      recordID = recordID;
      v32 = recordID;
      objc_copyWeak(&v37, &location);
      v33 = objectCopy;
      selfCopy = self;
      v35 = accountCKIdentifier;
      v36 = handlerCopy;
      [v23 setFetchRecordsCompletionBlock:v31];
      v28 = objc_alloc_init(CKOperationGroup);
      [v28 setName:@"FetchShare"];
      [v28 setQuantity:1];
      [v28 setExpectedSendSize:1];
      [v28 setExpectedReceiveSize:1];
      [v23 setGroup:v28];
      database = [v23 database];
      [database addOperation:v23];

      objc_destroyWeak(&v37);
      objc_destroyWeak(&location);
    }

    else
    {
      (*(handlerCopy + 2))(handlerCopy, 0);
    }

    goto LABEL_14;
  }

  v13 = +[REMLog cloudkitCollaboration];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    sub_10076B7C0(objectCopy);
  }

  if (handlerCopy)
  {
    recordID = [NSError errorWithDomain:@"com.apple.reminders" code:214 userInfo:0];
    (*(handlerCopy + 2))(handlerCopy, recordID);
LABEL_14:
  }
}

- (void)didSaveShare:(id)share accountID:(id)d queue:(id)queue completionHandler:(id)handler
{
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000C3DC8;
  v12[3] = &unk_1008DAC68;
  queueCopy = queue;
  handlerCopy = handler;
  v10 = handlerCopy;
  v11 = queueCopy;
  [(ICCollaborationController *)self saveServerShare:share accountID:d completionHandler:v12];
}

- (void)saveServerShare:(id)share accountID:(id)d completionHandler:(id)handler
{
  shareCopy = share;
  dCopy = d;
  handlerCopy = handler;
  cloudContext = [(ICCollaborationController *)self cloudContext];
  newBackgroundContext = [cloudContext newBackgroundContext];

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000C3FAC;
  v17[3] = &unk_1008DAD58;
  v17[4] = self;
  v18 = shareCopy;
  v19 = dCopy;
  v20 = newBackgroundContext;
  v21 = handlerCopy;
  v13 = handlerCopy;
  v14 = newBackgroundContext;
  v15 = dCopy;
  v16 = shareCopy;
  [v14 performBlockAndWait:v17];
}

- (id)objectForShare:(id)share accountID:(id)d context:(id)context
{
  shareCopy = share;
  dCopy = d;
  contextCopy = context;
  v11 = [shareCopy objectForKeyedSubscript:@"RootRecord"];
  recordID = [v11 recordID];
  if (recordID)
  {
    v13 = [shareCopy objectForKeyedSubscript:@"RootRecordType"];
    if (!v13)
    {
      v14 = +[REMLog cloudkitCollaboration];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        sub_10076B850(shareCopy);
      }
    }

    cloudContext = [(ICCollaborationController *)self cloudContext];
    v16 = [cloudContext existingCloudObjectForRecordID:recordID recordType:v13 accountID:dCopy context:contextCopy];
  }

  else
  {
    v13 = +[REMLog cloudkitCollaboration];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      sub_10076B8DC(shareCopy);
    }

    v16 = 0;
  }

  return v16;
}

- (void)didStopSharing:(id)sharing recordID:(id)d accountID:(id)iD queue:(id)queue completionHandler:(id)handler
{
  sharingCopy = sharing;
  dCopy = d;
  iDCopy = iD;
  queueCopy = queue;
  handlerCopy = handler;
  if (sharingCopy | dCopy)
  {
    cloudContext = [(ICCollaborationController *)self cloudContext];
    newBackgroundContext = [cloudContext newBackgroundContext];

    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1000C44A8;
    v20[3] = &unk_1008DC200;
    v21 = sharingCopy;
    selfCopy = self;
    v23 = iDCopy;
    v24 = newBackgroundContext;
    v25 = dCopy;
    v26 = queueCopy;
    v27 = handlerCopy;
    v19 = newBackgroundContext;
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

- (void)acceptShareWithMetadata:(id)metadata callbackQueue:(id)queue completionHandler:(id)handler
{
  metadataCopy = metadata;
  queueCopy = queue;
  handlerCopy = handler;
  v11 = +[REMLog cloudkitCollaboration];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = metadataCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Accepting share for metadata %@", &buf, 0xCu);
  }

  cloudContext = [(ICCollaborationController *)self cloudContext];
  newBackgroundContext = [cloudContext newBackgroundContext];

  callingParticipant = [metadataCopy callingParticipant];
  userIdentity = [callingParticipant userIdentity];
  userRecordID = [userIdentity userRecordID];

  *&buf = 0;
  *(&buf + 1) = &buf;
  v56 = 0x3032000000;
  v57 = sub_1000C0F08;
  v58 = sub_1000C0F18;
  v59 = 0;
  cloudContext2 = [(ICCollaborationController *)self cloudContext];
  containersByAccountID = [cloudContext2 containersByAccountID];
  v19 = [containersByAccountID count] == 0;

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

  v23 = [(ICCollaborationController *)self containerForUserRecordID:userRecordID];
  options = [v23 options];
  accountOverrideInfo = [options accountOverrideInfo];
  accountID = [accountOverrideInfo accountID];
  v27 = *(*(&buf + 1) + 40);
  *(*(&buf + 1) + 40) = accountID;

  if (!v23)
  {
LABEL_7:
    v28 = +[REMLog cloudkitCollaboration];
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *v51 = 0;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Accepting share: Single account or unable to fetch container. Using containerWithIdentifier.", v51, 2u);
    }

    containerIdentifier = [metadataCopy containerIdentifier];
    v23 = [CKContainer containerWithIdentifier:containerIdentifier];

    options2 = [v23 options];
    accountOverrideInfo2 = [options2 accountOverrideInfo];
    accountID2 = [accountOverrideInfo2 accountID];
    v33 = *(*(&buf + 1) + 40);
    *(*(&buf + 1) + 40) = accountID2;
  }

  if (![*(*(&buf + 1) + 40) length])
  {
    v34 = +[REMLog cloudkitCollaboration];
    if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
    {
      recordName = [userRecordID recordName];
      cloudContext3 = [(ICCollaborationController *)self cloudContext];
      containersByAccountID2 = [cloudContext3 containersByAccountID];
      v38 = [containersByAccountID2 count];
      *v51 = 138543618;
      v52 = recordName;
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
    v49 = newBackgroundContext;
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
    (*(handlerCopy + 2))(handlerCopy, v36, 0, 0);

    goto LABEL_23;
  }

  v41[0] = _NSConcreteStackBlock;
  v41[1] = 3221225472;
  v41[2] = sub_1000C4E64;
  v41[3] = &unk_1008DC2C8;
  v41[4] = self;
  v42 = metadataCopy;
  v47 = &buf;
  v43 = newBackgroundContext;
  v44 = queueCopy;
  v46 = handlerCopy;
  v45 = v23;
  [v43 performBlockAndWait:v41];

LABEL_23:
  _Block_object_dispose(&buf, 8);
}

- (id)containerForUserRecordID:(id)d
{
  recordName = [d recordName];
  cloudContext = [(ICCollaborationController *)self cloudContext];
  containersByAccountID = [cloudContext containersByAccountID];
  allValues = [containersByAccountID allValues];

  v8 = +[REMLog cloudkitCollaboration];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    cloudContext2 = [(ICCollaborationController *)self cloudContext];
    containersByAccountID2 = [cloudContext2 containersByAccountID];
    allKeys = [containersByAccountID2 allKeys];
    *buf = 138543362;
    v30 = allKeys;
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
  v14 = allValues;
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

        if ([v20 isEqualToString:recordName])
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

- (id)containerForAccountID:(id)d
{
  dCopy = d;
  if ([dCopy length])
  {
    cloudContext = [(ICCollaborationController *)self cloudContext];
    containersByAccountID = [cloudContext containersByAccountID];
    v7 = [containersByAccountID objectForKeyedSubscript:dCopy];
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

- (void)acceptShareWithMetadata:(id)metadata container:(id)container accountID:(id)d fetchObjectWithCompletionHandler:(id)handler
{
  metadataCopy = metadata;
  containerCopy = container;
  dCopy = d;
  handlerCopy = handler;
  share = [metadataCopy share];
  v32 = [share URL];

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
    v48 = dCopy;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Accepting shared object at URL: %@, account ID = %{public}@", buf, 0x16u);
  }

  cloudContext = [(ICCollaborationController *)self cloudContext];
  v15 = [CKAcceptSharesOperation alloc];
  v44 = metadataCopy;
  v16 = [NSArray arrayWithObjects:&v44 count:1];
  v17 = [v15 initWithShareMetadatas:v16];

  [v17 setQualityOfService:17];
  [v17 setQueuePriority:8];
  configuration = [v17 configuration];
  [configuration setContainer:v31];

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
  v20 = metadataCopy;
  v35 = v20;
  objc_copyWeak(&v40, &location);
  v21 = handlerCopy;
  v39 = v21;
  v22 = dCopy;
  v36 = v22;
  selfCopy = self;
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
    share2 = [v20 share];
    ic_loggingDescription = [share2 ic_loggingDescription];
    ic_loggingDescription2 = [v17 ic_loggingDescription];
    *buf = 138412546;
    v46 = ic_loggingDescription;
    v47 = 2112;
    v48 = ic_loggingDescription2;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Accepting %@ with %@", buf, 0x16u);
  }

  operationQueue = [cloudContext operationQueue];
  [operationQueue addOperation:v17];

  [cloudContext errorAndPromptToFileRadarWithICTap2RadarTypeTooManyOperationsInOperationQueueIfNecessary];
  objc_destroyWeak(&v40);

  objc_destroyWeak(&location);
}

@end