@interface CKKSCurrentItemPointer
+ (BOOL)deleteAll:(id)all contextID:(id)d error:(id *)error;
+ (BOOL)intransactionRecordChanged:(id)changed contextID:(id)d resync:(BOOL)resync error:(id *)error;
+ (BOOL)intransactionRecordDeleted:(id)deleted contextID:(id)d resync:(BOOL)resync error:(id *)error;
+ (id)allInZone:(id)zone contextID:(id)d error:(id *)error;
+ (id)fromDatabase:(id)database contextID:(id)d state:(id)state zoneID:(id)iD error:(id *)error;
+ (id)fromDatabaseRow:(id)row;
+ (id)remoteItemPointers:(id)pointers contextID:(id)d error:(id *)error;
+ (id)tryFromDatabase:(id)database contextID:(id)d state:(id)state zoneID:(id)iD error:(id *)error;
+ (int64_t)countByState:(id)state contextID:(id)d zone:(id)zone error:(id *)error;
- (BOOL)matchesCKRecord:(id)record;
- (id)description;
- (id)initForIdentifier:(id)identifier contextID:(id)d currentItemUUID:(id)iD state:(id)state zoneID:(id)zoneID encodedCKRecord:(id)record;
- (id)sqlValues;
- (id)updateCKRecord:(id)record zoneID:(id)d;
- (id)whereClauseToFindSelf;
- (void)setFromCKRecord:(id)record;
@end

@implementation CKKSCurrentItemPointer

- (id)whereClauseToFindSelf
{
  v13[0] = @"contextID";
  contextID = [(CKKSCKRecordHolder *)self contextID];
  v4 = contextID;
  if (contextID)
  {
    v5 = contextID;
  }

  else
  {
    v5 = +[NSNull null];
  }

  v6 = v5;

  v14[0] = v6;
  v13[1] = @"identifier";
  identifier = [(CKKSCurrentItemPointer *)self identifier];
  v14[1] = identifier;
  v13[2] = @"ckzone";
  zoneID = [(CKKSCKRecordHolder *)self zoneID];
  zoneName = [zoneID zoneName];
  v14[2] = zoneName;
  v13[3] = @"state";
  state = [(CKKSCurrentItemPointer *)self state];
  v14[3] = state;
  v11 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:4];

  return v11;
}

- (id)sqlValues
{
  v26[0] = @"contextID";
  contextID = [(CKKSCKRecordHolder *)self contextID];
  v4 = contextID;
  if (contextID)
  {
    v5 = contextID;
  }

  else
  {
    v5 = +[NSNull null];
  }

  v6 = v5;

  v27[0] = v6;
  v26[1] = @"identifier";
  identifier = [(CKKSCurrentItemPointer *)self identifier];
  v27[1] = identifier;
  v26[2] = @"currentItemUUID";
  currentItemUUID = [(CKKSCurrentItemPointer *)self currentItemUUID];
  v9 = currentItemUUID;
  if (currentItemUUID)
  {
    v10 = currentItemUUID;
  }

  else
  {
    v10 = +[NSNull null];
  }

  v11 = v10;

  v27[2] = v11;
  v26[3] = @"state";
  state = [(CKKSCurrentItemPointer *)self state];
  v13 = state;
  if (state)
  {
    v14 = state;
  }

  else
  {
    v14 = +[NSNull null];
  }

  v15 = v14;

  v27[3] = v15;
  v26[4] = @"ckzone";
  zoneID = [(CKKSCKRecordHolder *)self zoneID];
  zoneName = [zoneID zoneName];

  if (zoneName)
  {
    v18 = zoneName;
  }

  else
  {
    v18 = +[NSNull null];
  }

  v19 = v18;

  v27[4] = v19;
  v26[5] = @"ckrecord";
  encodedCKRecord = [(CKKSCKRecordHolder *)self encodedCKRecord];
  v21 = [encodedCKRecord base64EncodedStringWithOptions:0];

  if (v21)
  {
    v22 = v21;
  }

  else
  {
    v22 = +[NSNull null];
  }

  v23 = v22;

  v27[5] = v23;
  v24 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:6];

  return v24;
}

- (void)setFromCKRecord:(id)record
{
  recordCopy = record;
  recordType = [recordCopy recordType];
  v5 = [recordType isEqualToString:@"currentitem"];

  if ((v5 & 1) == 0)
  {
    recordType2 = [recordCopy recordType];
    v12 = [NSString stringWithFormat:@"CKRecordType (%@) was not %@", recordType2, @"currentitem"];
    v13 = [NSException exceptionWithName:@"WrongCKRecordTypeException" reason:v12 userInfo:0];
    v14 = v13;

    objc_exception_throw(v13);
  }

  [(CKKSCKRecordHolder *)self setStoredCKRecord:recordCopy];
  recordID = [recordCopy recordID];
  recordName = [recordID recordName];
  [(CKKSCurrentItemPointer *)self setIdentifier:recordName];

  v8 = [recordCopy objectForKeyedSubscript:@"item"];
  recordID2 = [v8 recordID];
  recordName2 = [recordID2 recordName];
  [(CKKSCurrentItemPointer *)self setCurrentItemUUID:recordName2];
}

- (BOOL)matchesCKRecord:(id)record
{
  recordCopy = record;
  recordType = [recordCopy recordType];
  v6 = [recordType isEqualToString:@"currentitem"];

  if (!v6)
  {
    goto LABEL_4;
  }

  recordID = [recordCopy recordID];
  recordName = [recordID recordName];
  identifier = [(CKKSCurrentItemPointer *)self identifier];
  v10 = [recordName isEqualToString:identifier];

  if (v10)
  {
    v11 = [recordCopy objectForKeyedSubscript:@"item"];
    recordID2 = [v11 recordID];
    recordName2 = [recordID2 recordName];
    currentItemUUID = [(CKKSCurrentItemPointer *)self currentItemUUID];
    v15 = [recordName2 isEqualToString:currentItemUUID];
  }

  else
  {
LABEL_4:
    v15 = 0;
  }

  return v15;
}

- (id)updateCKRecord:(id)record zoneID:(id)d
{
  recordCopy = record;
  dCopy = d;
  recordType = [recordCopy recordType];
  v9 = [recordType isEqualToString:@"currentitem"];

  if ((v9 & 1) == 0)
  {
    recordType2 = [recordCopy recordType];
    v21 = [NSString stringWithFormat:@"CKRecordType (%@) was not %@", recordType2, @"currentitem"];
    v22 = [NSException exceptionWithName:@"WrongCKRecordTypeException" reason:v21 userInfo:0];
    v23 = v22;

    goto LABEL_8;
  }

  recordID = [recordCopy recordID];
  recordName = [recordID recordName];
  identifier = [(CKKSCurrentItemPointer *)self identifier];
  v13 = [recordName isEqualToString:identifier];

  if ((v13 & 1) == 0)
  {
    recordType2 = [recordCopy recordID];
    recordName2 = [recordType2 recordName];
    identifier2 = [(CKKSCurrentItemPointer *)self identifier];
    v26 = [NSString stringWithFormat:@"CKRecord name (%@) was not %@", recordName2, identifier2];
    v22 = [NSException exceptionWithName:@"WrongCKRecordNameException" reason:v26 userInfo:0];
    v27 = v22;

LABEL_8:
    objc_exception_throw(v22);
  }

  v14 = [CKReference alloc];
  v15 = [CKRecordID alloc];
  currentItemUUID = [(CKKSCurrentItemPointer *)self currentItemUUID];
  v17 = [v15 initWithRecordName:currentItemUUID zoneID:dCopy];
  v18 = [v14 initWithRecordID:v17 action:0];
  [recordCopy setObject:v18 forKeyedSubscript:@"item"];

  return recordCopy;
}

- (id)description
{
  contextID = [(CKKSCKRecordHolder *)self contextID];
  zoneID = [(CKKSCKRecordHolder *)self zoneID];
  zoneName = [zoneID zoneName];
  identifier = [(CKKSCurrentItemPointer *)self identifier];
  currentItemUUID = [(CKKSCurrentItemPointer *)self currentItemUUID];
  v8 = [NSString stringWithFormat:@"<CKKSCurrentItemPointer[%@](%@) %@: %@>", contextID, zoneName, identifier, currentItemUUID];

  return v8;
}

- (id)initForIdentifier:(id)identifier contextID:(id)d currentItemUUID:(id)iD state:(id)state zoneID:(id)zoneID encodedCKRecord:(id)record
{
  identifierCopy = identifier;
  iDCopy = iD;
  stateCopy = state;
  v21.receiver = self;
  v21.super_class = CKKSCurrentItemPointer;
  v18 = [(CKKSCKRecordHolder *)&v21 initWithCKRecordType:@"currentitem" encodedCKRecord:record contextID:d zoneID:zoneID];
  p_isa = &v18->super.super.super.isa;
  if (v18)
  {
    objc_storeStrong(&v18->_state, state);
    objc_storeStrong(p_isa + 8, identifier);
    objc_storeStrong(p_isa + 9, iD);
  }

  return p_isa;
}

+ (BOOL)intransactionRecordDeleted:(id)deleted contextID:(id)d resync:(BOOL)resync error:(id *)error
{
  deletedCopy = deleted;
  dCopy = d;
  zoneID = [(__CFString *)deletedCopy zoneID];
  zoneName = [zoneID zoneName];
  v12 = sub_100019104(@"currentitem", zoneName);

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v46 = @"currentitem";
    v47 = 2112;
    v48 = deletedCopy;
    _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "CloudKit notification: deleted current item pointer(%@): %@", buf, 0x16u);
  }

  recordName = [(__CFString *)deletedCopy recordName];
  zoneID2 = [(__CFString *)deletedCopy zoneID];
  v44 = 0;
  v15 = [CKKSCurrentItemPointer tryFromDatabase:recordName contextID:dCopy state:@"remote" zoneID:zoneID2 error:&v44];
  v16 = v44;

  if (!v16)
  {
    v43 = 0;
    [v15 deleteFromDatabase:&v43];
    v22 = v43;
    if (v22)
    {
      v16 = v22;
      if (error)
      {
        v23 = v22;
        *error = v16;
      }

      zoneID3 = [(__CFString *)deletedCopy zoneID];
      zoneName2 = [zoneID3 zoneName];
      v20 = sub_100019104(@"currentitem", zoneName2);

      if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_14;
      }

      *buf = 138412546;
      v46 = deletedCopy;
      v47 = 2112;
      v48 = v16;
      v21 = "Failed to delete remote CKKSCurrentItemPointer %@: %@";
      goto LABEL_13;
    }

    recordName2 = [(__CFString *)deletedCopy recordName];
    zoneID4 = [(__CFString *)deletedCopy zoneID];
    v42 = 0;
    v20 = [CKKSCurrentItemPointer tryFromDatabase:recordName2 contextID:dCopy state:@"local" zoneID:zoneID4 error:&v42];
    v16 = v42;

    if (v16)
    {
      if (error)
      {
        v30 = v16;
        *error = v16;
      }

      zoneID5 = [(__CFString *)deletedCopy zoneID];
      zoneName3 = [zoneID5 zoneName];
      v33 = sub_100019104(@"currentitem", zoneName3);

      if (!os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_27;
      }

      *buf = 138412546;
      v46 = deletedCopy;
      v47 = 2112;
      v48 = v16;
      v34 = "Failed to find local CKKSCurrentItemPointer %@: %@";
    }

    else
    {
      v41 = 0;
      [v20 deleteFromDatabase:&v41];
      v35 = v41;
      if (!v35)
      {
        zoneID6 = [(__CFString *)deletedCopy zoneID];
        zoneName4 = [zoneID6 zoneName];
        v33 = sub_100019104(@"currentitem", zoneName4);

        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412546;
          v46 = deletedCopy;
          v47 = 2112;
          v48 = 0;
          _os_log_debug_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEBUG, "CKKSCurrentItemPointer was deleted: %@ error: %@", buf, 0x16u);
        }

        v16 = 0;
        v26 = 1;
        goto LABEL_28;
      }

      v16 = v35;
      if (error)
      {
        v36 = v35;
        *error = v16;
      }

      zoneID7 = [(__CFString *)deletedCopy zoneID];
      zoneName5 = [zoneID7 zoneName];
      v33 = sub_100019104(@"currentitem", zoneName5);

      if (!os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
LABEL_27:
        v26 = 0;
LABEL_28:

        goto LABEL_15;
      }

      *buf = 138412546;
      v46 = deletedCopy;
      v47 = 2112;
      v48 = v16;
      v34 = "Failed to delete local CKKSCurrentItemPointer %@: %@";
    }

    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, v34, buf, 0x16u);
    goto LABEL_27;
  }

  if (error)
  {
    v17 = v16;
    *error = v16;
  }

  zoneID8 = [(__CFString *)deletedCopy zoneID];
  zoneName6 = [zoneID8 zoneName];
  v20 = sub_100019104(@"currentitem", zoneName6);

  if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_14;
  }

  *buf = 138412546;
  v46 = deletedCopy;
  v47 = 2112;
  v48 = v16;
  v21 = "Failed to find remote CKKSCurrentItemPointer to delete %@: %@";
LABEL_13:
  _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, v21, buf, 0x16u);
LABEL_14:
  v26 = 0;
LABEL_15:

  return v26;
}

+ (BOOL)intransactionRecordChanged:(id)changed contextID:(id)d resync:(BOOL)resync error:(id *)error
{
  resyncCopy = resync;
  changedCopy = changed;
  dCopy = d;
  if (!resyncCopy)
  {
    goto LABEL_16;
  }

  errorCopy = error;
  recordID = [changedCopy recordID];
  recordName = [recordID recordName];
  recordID2 = [changedCopy recordID];
  zoneID = [recordID2 zoneID];
  v54 = 0;
  v15 = [CKKSCurrentItemPointer tryFromDatabase:recordName contextID:dCopy state:@"local" zoneID:zoneID error:&v54];
  v16 = v54;

  recordID3 = [changedCopy recordID];
  recordName2 = [recordID3 recordName];
  recordID4 = [changedCopy recordID];
  zoneID2 = [recordID4 zoneID];
  v53 = v16;
  v21 = [CKKSCurrentItemPointer tryFromDatabase:recordName2 contextID:dCopy state:@"remote" zoneID:zoneID2 error:&v53];
  v22 = v53;

  if (v22)
  {
    recordID5 = [changedCopy recordID];
    zoneID3 = [recordID5 zoneID];
    zoneName = [zoneID3 zoneName];
    v26 = sub_100019104(@"ckksresync", zoneName);

    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v56 = v22;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "error loading cip: %@", buf, 0xCu);
    }
  }

  if (v15 | v21)
  {
    if ([v15 matchesCKRecord:changedCopy] & 1) != 0 || (objc_msgSend(v21, "matchesCKRecord:", changedCopy))
    {
      recordID6 = [changedCopy recordID];
      zoneID4 = [recordID6 zoneID];
      zoneName2 = [zoneID4 zoneName];
      v30 = sub_100019104(@"ckksresync", zoneName2);

      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v56 = changedCopy;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Already know about this current item pointer, skipping update: %@", buf, 0xCu);
      }

      goto LABEL_25;
    }

    recordID7 = [changedCopy recordID];
    zoneID5 = [recordID7 zoneID];
    zoneName3 = [zoneID5 zoneName];
    v34 = sub_100019104(@"ckksresync", zoneName3);

    if (!os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    *buf = 138412802;
    v56 = v15;
    v57 = 2112;
    v58 = v21;
    v59 = 2112;
    v60 = changedCopy;
    v35 = "BUG: Local current item pointer doesn't match resynced CloudKit record(s): %@ %@ %@";
    v36 = v34;
    v37 = 32;
    goto LABEL_14;
  }

  recordID8 = [changedCopy recordID];
  zoneID6 = [recordID8 zoneID];
  zoneName4 = [zoneID6 zoneName];
  v34 = sub_100019104(@"ckksresync", zoneName4);

  if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v56 = changedCopy;
    v35 = "BUG: No current item pointer matching resynced CloudKit record: %@";
    v36 = v34;
    v37 = 12;
LABEL_14:
    _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, v35, buf, v37);
  }

LABEL_15:
  error = errorCopy;

LABEL_16:
  v15 = [(CKKSCKRecordHolder *)[CKKSCurrentItemPointer alloc] initWithCKRecord:changedCopy contextID:dCopy];
  [v15 setState:@"remote"];
  v52 = 0;
  v38 = [v15 saveToDatabase:&v52];
  v39 = v52;
  if (v38)
  {
    v40 = v39 == 0;
  }

  else
  {
    v40 = 0;
  }

  if (v40)
  {
    v22 = 0;
LABEL_25:
    v46 = 1;
    goto LABEL_27;
  }

  v22 = v39;
  recordID9 = [changedCopy recordID];
  zoneID7 = [recordID9 zoneID];
  zoneName5 = [zoneID7 zoneName];
  v44 = sub_100019104(@"currentitem", zoneName5);

  if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412802;
    v56 = v15;
    v57 = 2112;
    v58 = v22;
    v59 = 2112;
    v60 = changedCopy;
    _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, "Couldn't save current item pointer to database: %@: %@ %@", buf, 0x20u);
  }

  if (error)
  {
    v45 = v22;
    v46 = 0;
    *error = v22;
  }

  else
  {
    v46 = 0;
  }

LABEL_27:

  return v46;
}

+ (int64_t)countByState:(id)state contextID:(id)d zone:(id)zone error:(id *)error
{
  stateCopy = state;
  dCopy = d;
  zoneCopy = zone;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = -1;
  sqlTable = [objc_opt_class() sqlTable];
  v29[0] = @"contextID";
  v13 = dCopy;
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = +[NSNull null];
  }

  v16 = v15;

  v30[0] = v16;
  v29[1] = @"ckzone";
  zoneName = [zoneCopy zoneName];
  v18 = zoneName;
  if (zoneName)
  {
    v19 = zoneName;
  }

  else
  {
    v19 = +[NSNull null];
  }

  v20 = v19;

  v29[2] = @"state";
  v30[1] = v20;
  v30[2] = stateCopy;
  v21 = [NSDictionary dictionaryWithObjects:v30 forKeys:v29 count:3];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1000F72D8;
  v24[3] = &unk_100344498;
  v24[4] = &v25;
  [CKKSSQLDatabaseObject queryDatabaseTable:sqlTable where:v21 columns:&off_100365850 groupBy:0 orderBy:0 limit:-1 processRow:v24 error:error];

  v22 = v26[3];
  _Block_object_dispose(&v25, 8);

  return v22;
}

+ (id)fromDatabaseRow:(id)row
{
  rowCopy = row;
  v4 = [CKKSCurrentItemPointer alloc];
  v20 = [rowCopy objectForKeyedSubscript:@"identifier"];
  asString = [v20 asString];
  v19 = [rowCopy objectForKeyedSubscript:@"contextID"];
  asString2 = [v19 asString];
  v18 = [rowCopy objectForKeyedSubscript:@"currentItemUUID"];
  asString3 = [v18 asString];
  v6 = [rowCopy objectForKeyedSubscript:@"state"];
  asString4 = [v6 asString];
  v8 = [CKRecordZoneID alloc];
  v9 = [rowCopy objectForKeyedSubscript:@"ckzone"];
  asString5 = [v9 asString];
  v11 = [v8 initWithZoneName:asString5 ownerName:CKCurrentUserDefaultName];
  v12 = [rowCopy objectForKeyedSubscript:@"ckrecord"];

  asBase64DecodedData = [v12 asBase64DecodedData];
  v14 = [(CKKSCurrentItemPointer *)v4 initForIdentifier:asString contextID:asString2 currentItemUUID:asString3 state:asString4 zoneID:v11 encodedCKRecord:asBase64DecodedData];

  return v14;
}

+ (BOOL)deleteAll:(id)all contextID:(id)d error:(id *)error
{
  allCopy = all;
  sqlTable = [self sqlTable];
  v12 = @"ckzone";
  zoneName = [allCopy zoneName];

  v13 = zoneName;
  v10 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  LOBYTE(error) = [CKKSSQLDatabaseObject deleteFromTable:sqlTable where:v10 connection:0 error:error];

  return error;
}

+ (id)allInZone:(id)zone contextID:(id)d error:(id *)error
{
  v11 = @"ckzone";
  zoneName = [zone zoneName];
  v12 = zoneName;
  v8 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  v9 = [self allWhere:v8 error:error];

  return v9;
}

+ (id)remoteItemPointers:(id)pointers contextID:(id)d error:(id *)error
{
  v11[0] = @"state";
  v11[1] = @"ckzone";
  v12[0] = @"remote";
  zoneName = [pointers zoneName];
  v12[1] = zoneName;
  v8 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:2];
  v9 = [self allWhere:v8 error:error];

  return v9;
}

+ (id)tryFromDatabase:(id)database contextID:(id)d state:(id)state zoneID:(id)iD error:(id *)error
{
  v19[0] = @"contextID";
  v19[1] = @"identifier";
  v20[0] = d;
  v20[1] = database;
  v20[2] = state;
  v19[2] = @"state";
  v19[3] = @"ckzone";
  stateCopy = state;
  dCopy = d;
  databaseCopy = database;
  zoneName = [iD zoneName];
  v20[3] = zoneName;
  v16 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:4];

  v17 = [self tryFromDatabaseWhere:v16 error:error];

  return v17;
}

+ (id)fromDatabase:(id)database contextID:(id)d state:(id)state zoneID:(id)iD error:(id *)error
{
  v19[0] = @"contextID";
  v19[1] = @"identifier";
  v20[0] = d;
  v20[1] = database;
  v20[2] = state;
  v19[2] = @"state";
  v19[3] = @"ckzone";
  stateCopy = state;
  dCopy = d;
  databaseCopy = database;
  zoneName = [iD zoneName];
  v20[3] = zoneName;
  v16 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:4];

  v17 = [self fromDatabaseWhere:v16 error:error];

  return v17;
}

@end