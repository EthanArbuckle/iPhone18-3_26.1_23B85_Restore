@interface CKKSCurrentKeyPointer
+ (BOOL)deleteAll:(id)all error:(id *)error;
+ (BOOL)intransactionRecordChanged:(id)changed contextID:(id)d resync:(BOOL)resync flagHandler:(id)handler error:(id *)error;
+ (BOOL)intransactionRecordDeleted:(id)deleted contextID:(id)d error:(id *)error;
+ (id)all:(id)all error:(id *)error;
+ (id)forKeyClass:(id)class contextID:(id)d withKeyUUID:(id)iD zoneID:(id)zoneID error:(id *)error;
+ (id)fromDatabase:(id)database contextID:(id)d zoneID:(id)iD error:(id *)error;
+ (id)fromDatabaseRow:(id)row;
+ (id)tryFromDatabase:(id)database contextID:(id)d zoneID:(id)iD error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)matchesCKRecord:(id)record;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)initForClass:(id)class contextID:(id)d currentKeyUUID:(id)iD zoneID:(id)zoneID encodedCKRecord:(id)record;
- (id)sqlValues;
- (id)updateCKRecord:(id)record zoneID:(id)d;
- (id)whereClauseToFindSelf;
- (void)setFromCKRecord:(id)record;
@end

@implementation CKKSCurrentKeyPointer

- (id)sqlValues
{
  v19[0] = @"keyclass";
  keyclass = [(CKKSCurrentKeyPointer *)self keyclass];
  v20[0] = keyclass;
  v19[1] = @"contextID";
  contextID = [(CKKSCKRecordHolder *)self contextID];
  v20[1] = contextID;
  v19[2] = @"currentKeyUUID";
  currentKeyUUID = [(CKKSCurrentKeyPointer *)self currentKeyUUID];
  v6 = currentKeyUUID;
  if (currentKeyUUID)
  {
    v7 = currentKeyUUID;
  }

  else
  {
    v7 = +[NSNull null];
  }

  v8 = v7;

  v20[2] = v8;
  v19[3] = @"ckzone";
  zoneID = [(CKKSCKRecordHolder *)self zoneID];
  zoneName = [zoneID zoneName];

  if (zoneName)
  {
    v11 = zoneName;
  }

  else
  {
    v11 = +[NSNull null];
  }

  v12 = v11;

  v20[3] = v12;
  v19[4] = @"ckrecord";
  encodedCKRecord = [(CKKSCKRecordHolder *)self encodedCKRecord];
  v14 = [encodedCKRecord base64EncodedStringWithOptions:0];

  if (v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = +[NSNull null];
  }

  v16 = v15;

  v20[4] = v16;
  v17 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:5];

  return v17;
}

- (id)whereClauseToFindSelf
{
  v9[0] = @"contextID";
  contextID = [(CKKSCKRecordHolder *)self contextID];
  v10[0] = contextID;
  v9[1] = @"keyclass";
  keyclass = [(CKKSCurrentKeyPointer *)self keyclass];
  v10[1] = keyclass;
  v9[2] = @"ckzone";
  zoneID = [(CKKSCKRecordHolder *)self zoneID];
  zoneName = [zoneID zoneName];
  v10[2] = zoneName;
  v7 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:3];

  return v7;
}

- (void)setFromCKRecord:(id)record
{
  recordCopy = record;
  recordType = [recordCopy recordType];
  v6 = [recordType isEqualToString:@"currentkey"];

  if ((v6 & 1) == 0)
  {
    recordType2 = [recordCopy recordType];
    v15 = [NSString stringWithFormat:@"CKRecordType (%@) was not %@", recordType2, @"currentkey"];
    v16 = [NSException exceptionWithName:@"WrongCKRecordTypeException" reason:v15 userInfo:0];
    v17 = v16;

    objc_exception_throw(v16);
  }

  [(CKKSCKRecordHolder *)self setStoredCKRecord:recordCopy];
  recordID = [recordCopy recordID];
  recordName = [recordID recordName];
  [(CKKSCurrentKeyPointer *)self setKeyclass:recordName];

  v9 = [recordCopy objectForKeyedSubscript:@"parentkeyref"];
  recordID2 = [v9 recordID];
  recordName2 = [recordID2 recordName];
  [(CKKSCurrentKeyPointer *)self setCurrentKeyUUID:recordName2];

  currentKeyUUID = [(CKKSCurrentKeyPointer *)self currentKeyUUID];

  if (!currentKeyUUID)
  {
    v13 = sub_100019104(@"currentkey", 0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v19 = recordCopy;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "No current key UUID in record! How/why? %@", buf, 0xCu);
    }
  }
}

- (BOOL)matchesCKRecord:(id)record
{
  recordCopy = record;
  recordType = [recordCopy recordType];
  v6 = [recordType isEqualToString:@"currentkey"];

  if (!v6)
  {
    goto LABEL_4;
  }

  recordID = [recordCopy recordID];
  recordName = [recordID recordName];
  keyclass = [(CKKSCurrentKeyPointer *)self keyclass];
  v10 = [recordName isEqualToString:keyclass];

  if (v10)
  {
    v11 = [recordCopy objectForKeyedSubscript:@"parentkeyref"];
    recordID2 = [v11 recordID];
    recordName2 = [recordID2 recordName];
    currentKeyUUID = [(CKKSCurrentKeyPointer *)self currentKeyUUID];
    v15 = [recordName2 isEqualToString:currentKeyUUID];
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
  v9 = [recordType isEqualToString:@"currentkey"];

  if ((v9 & 1) == 0)
  {
    recordType2 = [recordCopy recordType];
    v21 = [NSString stringWithFormat:@"CKRecordType (%@) was not %@", recordType2, @"currentkey"];
    v22 = [NSException exceptionWithName:@"WrongCKRecordTypeException" reason:v21 userInfo:0];
    v23 = v22;

    goto LABEL_8;
  }

  recordID = [recordCopy recordID];
  recordName = [recordID recordName];
  keyclass = [(CKKSCurrentKeyPointer *)self keyclass];
  v13 = [recordName isEqualToString:keyclass];

  if ((v13 & 1) == 0)
  {
    recordType2 = [recordCopy recordID];
    recordName2 = [recordType2 recordName];
    keyclass2 = [(CKKSCurrentKeyPointer *)self keyclass];
    v26 = [NSString stringWithFormat:@"CKRecord name (%@) was not %@", recordName2, keyclass2];
    v22 = [NSException exceptionWithName:@"WrongCKRecordNameException" reason:v26 userInfo:0];
    v27 = v22;

LABEL_8:
    objc_exception_throw(v22);
  }

  v14 = [CKReference alloc];
  v15 = [CKRecordID alloc];
  currentKeyUUID = [(CKKSCurrentKeyPointer *)self currentKeyUUID];
  v17 = [v15 initWithRecordName:currentKeyUUID zoneID:dCopy];
  v18 = [v14 initWithRecordID:v17 action:0];
  [recordCopy setObject:v18 forKeyedSubscript:@"parentkeyref"];

  return recordCopy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = equalCopy;
    zoneID = [(CKKSCKRecordHolder *)self zoneID];
    zoneID2 = [v6 zoneID];
    if (![zoneID isEqual:zoneID2])
    {
      v12 = 0;
LABEL_23:

      goto LABEL_24;
    }

    currentKeyUUID = [(CKKSCurrentKeyPointer *)self currentKeyUUID];
    if (currentKeyUUID || ([v6 currentKeyUUID], (v21 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      currentKeyUUID2 = [(CKKSCurrentKeyPointer *)self currentKeyUUID];
      currentKeyUUID3 = [v6 currentKeyUUID];
      if (![currentKeyUUID2 isEqual:currentKeyUUID3])
      {
        v12 = 0;
LABEL_19:

        goto LABEL_20;
      }

      v20 = currentKeyUUID2;
      v11 = 1;
    }

    else
    {
      v21 = 0;
      v11 = 0;
    }

    keyclass = [(CKKSCurrentKeyPointer *)self keyclass];
    if (keyclass || ([v6 keyclass], (v18 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v22 = v11;
      keyclass2 = [(CKKSCurrentKeyPointer *)self keyclass];
      keyclass3 = [v6 keyclass];
      v12 = [keyclass2 isEqual:keyclass3];

      if (keyclass)
      {

        if (v22)
        {
          currentKeyUUID2 = v20;
          goto LABEL_19;
        }

LABEL_20:
        if (!currentKeyUUID)
        {
        }

        goto LABEL_23;
      }

      LOBYTE(v11) = v22;
      v16 = v19;
    }

    else
    {
      v16 = 0;
      v12 = 1;
    }

    currentKeyUUID2 = v20;
    if (v11)
    {
      goto LABEL_19;
    }

    goto LABEL_20;
  }

  v12 = 0;
LABEL_24:

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v11.receiver = self;
  v11.super_class = CKKSCurrentKeyPointer;
  v5 = [(CKKSCKRecordHolder *)&v11 copyWithZone:?];
  keyclass = [(CKKSCurrentKeyPointer *)self keyclass];
  v7 = [keyclass copyWithZone:zone];
  [v5 setKeyclass:v7];

  currentKeyUUID = [(CKKSCurrentKeyPointer *)self currentKeyUUID];
  v9 = [currentKeyUUID copyWithZone:zone];
  [v5 setCurrentKeyUUID:v9];

  return v5;
}

- (id)description
{
  zoneID = [(CKKSCKRecordHolder *)self zoneID];
  zoneName = [zoneID zoneName];
  contextID = [(CKKSCKRecordHolder *)self contextID];
  keyclass = [(CKKSCurrentKeyPointer *)self keyclass];
  currentKeyUUID = [(CKKSCurrentKeyPointer *)self currentKeyUUID];
  v8 = [NSString stringWithFormat:@"<CKKSCurrentKeyPointer(%@, %@) %@: %@>", zoneName, contextID, keyclass, currentKeyUUID];

  return v8;
}

- (id)initForClass:(id)class contextID:(id)d currentKeyUUID:(id)iD zoneID:(id)zoneID encodedCKRecord:(id)record
{
  classCopy = class;
  iDCopy = iD;
  v21.receiver = self;
  v21.super_class = CKKSCurrentKeyPointer;
  v15 = [(CKKSCKRecordHolder *)&v21 initWithCKRecordType:@"currentkey" encodedCKRecord:record contextID:d zoneID:zoneID];
  p_isa = &v15->super.super.super.isa;
  if (v15)
  {
    objc_storeStrong(&v15->_keyclass, class);
    objc_storeStrong(p_isa + 8, iD);
    currentKeyUUID = [p_isa currentKeyUUID];

    if (!currentKeyUUID)
    {
      v18 = sub_100019104(@"currentkey", 0);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *v20 = 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "created a CKKSCurrentKey with a nil currentKeyUUID. Why?", v20, 2u);
      }
    }
  }

  return p_isa;
}

+ (BOOL)intransactionRecordDeleted:(id)deleted contextID:(id)d error:(id *)error
{
  deletedCopy = deleted;
  dCopy = d;
  recordName = [deletedCopy recordName];
  zoneID = [deletedCopy zoneID];
  v25 = 0;
  v11 = [CKKSCurrentKeyPointer tryFromDatabase:recordName contextID:dCopy zoneID:zoneID error:&v25];

  v12 = v25;
  if (v12)
  {
    zoneID2 = [deletedCopy zoneID];
    zoneName = [zoneID2 zoneName];
    v15 = sub_100019104(@"ckkskey", zoneName);

    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v27 = v12;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "error loading ckp: %@", buf, 0xCu);
    }

    if (error)
    {
      v16 = v12;
      v17 = 0;
      *error = v12;
    }

    else
    {
      v17 = 0;
    }
  }

  else if (v11)
  {
    v24 = 0;
    [v11 deleteFromDatabase:&v24];
    v18 = v24;
    v17 = v18 == 0;
    if (v18)
    {
      zoneID3 = [deletedCopy zoneID];
      zoneName2 = [zoneID3 zoneName];
      v21 = sub_100019104(@"ckkskey", zoneName2);

      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v27 = v18;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "error deleting ckp: %@", buf, 0xCu);
      }

      if (error)
      {
        v22 = v18;
        *error = v18;
      }
    }
  }

  else
  {
    v17 = 1;
  }

  return v17;
}

+ (BOOL)intransactionRecordChanged:(id)changed contextID:(id)d resync:(BOOL)resync flagHandler:(id)handler error:(id *)error
{
  resyncCopy = resync;
  changedCopy = changed;
  dCopy = d;
  handlerCopy = handler;
  recordID = [(CKKSCurrentKeyPointer *)changedCopy recordID];
  recordName = [recordID recordName];
  recordID2 = [(CKKSCurrentKeyPointer *)changedCopy recordID];
  zoneID = [recordID2 zoneID];
  v60 = 0;
  v17 = [CKKSCurrentKeyPointer tryFromDatabase:recordName contextID:dCopy zoneID:zoneID error:&v60];
  v18 = v60;

  v58 = v18;
  if (v18)
  {
    recordID3 = [(CKKSCurrentKeyPointer *)changedCopy recordID];
    zoneID2 = [recordID3 zoneID];
    zoneName = [zoneID2 zoneName];
    v22 = sub_100019104(@"ckkskey", zoneName);

    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v62 = v18;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "error loading ckp: %@", buf, 0xCu);
    }
  }

  if (resyncCopy)
  {
    if (v17)
    {
      v23 = [(CKKSCurrentKeyPointer *)v17 matchesCKRecord:changedCopy];
      recordID4 = [(CKKSCurrentKeyPointer *)changedCopy recordID];
      zoneID3 = [recordID4 zoneID];
      zoneName2 = [zoneID3 zoneName];
      v27 = sub_100019104(@"ckksresync", zoneName2);

      if (v23)
      {
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v62 = changedCopy;
          v28 = "Current key pointer has 'changed', but it matches our local copy: %@";
          v29 = v27;
          v30 = OS_LOG_TYPE_DEFAULT;
LABEL_12:
          v34 = 12;
LABEL_15:
          _os_log_impl(&_mh_execute_header, v29, v30, v28, buf, v34);
        }
      }

      else if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v62 = v17;
        v63 = 2112;
        v64 = changedCopy;
        v28 = "BUG: Local current key pointer doesn't match resynced CloudKit record: %@ %@";
        v29 = v27;
        v30 = OS_LOG_TYPE_ERROR;
        v34 = 22;
        goto LABEL_15;
      }
    }

    else
    {
      recordID5 = [(CKKSCurrentKeyPointer *)changedCopy recordID];
      zoneID4 = [recordID5 zoneID];
      zoneName3 = [zoneID4 zoneName];
      v27 = sub_100019104(@"ckksresync", zoneName3);

      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v62 = changedCopy;
        v28 = "BUG: No current key pointer matching resynced CloudKit record: %@";
        v29 = v27;
        v30 = OS_LOG_TYPE_ERROR;
        goto LABEL_12;
      }
    }
  }

  v35 = [(CKKSCKRecordHolder *)[CKKSCurrentKeyPointer alloc] initWithCKRecord:changedCopy contextID:dCopy];
  v59 = 0;
  v36 = [(CKKSSQLDatabaseObject *)v35 saveToDatabase:&v59];
  v37 = v59;
  if (v37)
  {
    v38 = 0;
  }

  else
  {
    v38 = v36;
  }

  if (v38)
  {
    if ([(CKKSCurrentKeyPointer *)v17 matchesCKRecord:changedCopy])
    {
      v56 = v17;
      v39 = handlerCopy;
      recordID6 = [(CKKSCurrentKeyPointer *)changedCopy recordID];
      zoneID5 = [recordID6 zoneID];
      zoneName4 = [zoneID5 zoneName];
      v43 = sub_100019104(@"ckkskey", zoneName4);

      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v62 = changedCopy;
        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "Current key pointer modification doesn't change anything interesting; skipping reprocess: %@", buf, 0xCu);
      }

      handlerCopy = v39;
      v17 = v56;
    }

    else
    {
      [handlerCopy _onqueueHandleFlag:@"key_process_requested"];
    }
  }

  else
  {
    v57 = v17;
    v44 = handlerCopy;
    recordID7 = [(CKKSCurrentKeyPointer *)changedCopy recordID];
    zoneID6 = [recordID7 zoneID];
    zoneName5 = [zoneID6 zoneName];
    v48 = sub_100019104(@"ckkskey", zoneName5);

    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v62 = v35;
      v63 = 2112;
      v64 = v37;
      _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "Couldn't save current key pointer to database: %@: %@", buf, 0x16u);
    }

    recordID8 = [(CKKSCurrentKeyPointer *)changedCopy recordID];
    zoneID7 = [recordID8 zoneID];
    zoneName6 = [zoneID7 zoneName];
    v52 = sub_100019104(@"ckkskey", zoneName6);

    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v62 = changedCopy;
      _os_log_debug_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEBUG, "CKRecord was %@", buf, 0xCu);
    }

    handlerCopy = v44;
    v17 = v57;
    if (error)
    {
      v53 = v37;
      *error = v37;
    }
  }

  return v38;
}

+ (id)fromDatabaseRow:(id)row
{
  rowCopy = row;
  v4 = [CKKSCurrentKeyPointer alloc];
  v20 = [rowCopy objectForKeyedSubscript:@"keyclass"];
  asString = [v20 asString];
  v19 = [rowCopy objectForKeyedSubscript:@"contextID"];
  asString2 = [v19 asString];
  v7 = [rowCopy objectForKeyedSubscript:@"currentKeyUUID"];
  asString3 = [v7 asString];
  v9 = [CKRecordZoneID alloc];
  v10 = [rowCopy objectForKeyedSubscript:@"ckzone"];
  asString4 = [v10 asString];
  v12 = [v9 initWithZoneName:asString4 ownerName:CKCurrentUserDefaultName];
  v13 = [rowCopy objectForKeyedSubscript:@"ckrecord"];

  asBase64DecodedData = [v13 asBase64DecodedData];
  v15 = v4;
  v16 = asString;
  v17 = [(CKKSCurrentKeyPointer *)v15 initForClass:asString contextID:asString2 currentKeyUUID:asString3 zoneID:v12 encodedCKRecord:asBase64DecodedData];

  return v17;
}

+ (BOOL)deleteAll:(id)all error:(id *)error
{
  allCopy = all;
  sqlTable = [self sqlTable];
  v11 = @"ckzone";
  zoneName = [allCopy zoneName];

  v12 = zoneName;
  v9 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  LOBYTE(error) = [CKKSSQLDatabaseObject deleteFromTable:sqlTable where:v9 connection:0 error:error];

  return error;
}

+ (id)all:(id)all error:(id *)error
{
  v10 = @"ckzone";
  zoneName = [all zoneName];
  v11 = zoneName;
  v7 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v8 = [self allWhere:v7 error:error];

  return v8;
}

+ (id)forKeyClass:(id)class contextID:(id)d withKeyUUID:(id)iD zoneID:(id)zoneID error:(id *)error
{
  classCopy = class;
  dCopy = d;
  iDCopy = iD;
  zoneIDCopy = zoneID;
  v23 = 0;
  v16 = [self tryFromDatabase:classCopy contextID:dCopy zoneID:zoneIDCopy error:&v23];
  v17 = v23;
  v18 = v17;
  if (v17)
  {
    if (error)
    {
      v19 = v17;
      v20 = 0;
      *error = v18;
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    if (v16)
    {
      [v16 setCurrentKeyUUID:iDCopy];
      v21 = v16;
    }

    else
    {
      v21 = [[CKKSCurrentKeyPointer alloc] initForClass:classCopy contextID:dCopy currentKeyUUID:iDCopy zoneID:zoneIDCopy encodedCKRecord:0];
    }

    v20 = v21;
  }

  return v20;
}

+ (id)tryFromDatabase:(id)database contextID:(id)d zoneID:(id)iD error:(id *)error
{
  v16[0] = @"keyclass";
  v16[1] = @"contextID";
  v17[0] = database;
  v17[1] = d;
  v16[2] = @"ckzone";
  dCopy = d;
  databaseCopy = database;
  zoneName = [iD zoneName];
  v17[2] = zoneName;
  v13 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:3];

  v14 = [self tryFromDatabaseWhere:v13 error:error];

  return v14;
}

+ (id)fromDatabase:(id)database contextID:(id)d zoneID:(id)iD error:(id *)error
{
  v16[0] = @"keyclass";
  v16[1] = @"contextID";
  v17[0] = database;
  v17[1] = d;
  v16[2] = @"ckzone";
  dCopy = d;
  databaseCopy = database;
  zoneName = [iD zoneName];
  v17[2] = zoneName;
  v13 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:3];

  v14 = [self fromDatabaseWhere:v13 error:error];

  return v14;
}

@end