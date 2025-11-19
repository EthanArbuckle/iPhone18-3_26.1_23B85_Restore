@interface CKKSCurrentItemPointer
+ (BOOL)deleteAll:(id)a3 contextID:(id)a4 error:(id *)a5;
+ (BOOL)intransactionRecordChanged:(id)a3 contextID:(id)a4 resync:(BOOL)a5 error:(id *)a6;
+ (BOOL)intransactionRecordDeleted:(id)a3 contextID:(id)a4 resync:(BOOL)a5 error:(id *)a6;
+ (id)allInZone:(id)a3 contextID:(id)a4 error:(id *)a5;
+ (id)fromDatabase:(id)a3 contextID:(id)a4 state:(id)a5 zoneID:(id)a6 error:(id *)a7;
+ (id)fromDatabaseRow:(id)a3;
+ (id)remoteItemPointers:(id)a3 contextID:(id)a4 error:(id *)a5;
+ (id)tryFromDatabase:(id)a3 contextID:(id)a4 state:(id)a5 zoneID:(id)a6 error:(id *)a7;
+ (int64_t)countByState:(id)a3 contextID:(id)a4 zone:(id)a5 error:(id *)a6;
- (BOOL)matchesCKRecord:(id)a3;
- (id)description;
- (id)initForIdentifier:(id)a3 contextID:(id)a4 currentItemUUID:(id)a5 state:(id)a6 zoneID:(id)a7 encodedCKRecord:(id)a8;
- (id)sqlValues;
- (id)updateCKRecord:(id)a3 zoneID:(id)a4;
- (id)whereClauseToFindSelf;
- (void)setFromCKRecord:(id)a3;
@end

@implementation CKKSCurrentItemPointer

- (id)whereClauseToFindSelf
{
  v13[0] = @"contextID";
  v3 = [(CKKSCKRecordHolder *)self contextID];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = +[NSNull null];
  }

  v6 = v5;

  v14[0] = v6;
  v13[1] = @"identifier";
  v7 = [(CKKSCurrentItemPointer *)self identifier];
  v14[1] = v7;
  v13[2] = @"ckzone";
  v8 = [(CKKSCKRecordHolder *)self zoneID];
  v9 = [v8 zoneName];
  v14[2] = v9;
  v13[3] = @"state";
  v10 = [(CKKSCurrentItemPointer *)self state];
  v14[3] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:4];

  return v11;
}

- (id)sqlValues
{
  v26[0] = @"contextID";
  v3 = [(CKKSCKRecordHolder *)self contextID];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = +[NSNull null];
  }

  v6 = v5;

  v27[0] = v6;
  v26[1] = @"identifier";
  v7 = [(CKKSCurrentItemPointer *)self identifier];
  v27[1] = v7;
  v26[2] = @"currentItemUUID";
  v8 = [(CKKSCurrentItemPointer *)self currentItemUUID];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = +[NSNull null];
  }

  v11 = v10;

  v27[2] = v11;
  v26[3] = @"state";
  v12 = [(CKKSCurrentItemPointer *)self state];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = +[NSNull null];
  }

  v15 = v14;

  v27[3] = v15;
  v26[4] = @"ckzone";
  v16 = [(CKKSCKRecordHolder *)self zoneID];
  v17 = [v16 zoneName];

  if (v17)
  {
    v18 = v17;
  }

  else
  {
    v18 = +[NSNull null];
  }

  v19 = v18;

  v27[4] = v19;
  v26[5] = @"ckrecord";
  v20 = [(CKKSCKRecordHolder *)self encodedCKRecord];
  v21 = [v20 base64EncodedStringWithOptions:0];

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

- (void)setFromCKRecord:(id)a3
{
  v15 = a3;
  v4 = [v15 recordType];
  v5 = [v4 isEqualToString:@"currentitem"];

  if ((v5 & 1) == 0)
  {
    v11 = [v15 recordType];
    v12 = [NSString stringWithFormat:@"CKRecordType (%@) was not %@", v11, @"currentitem"];
    v13 = [NSException exceptionWithName:@"WrongCKRecordTypeException" reason:v12 userInfo:0];
    v14 = v13;

    objc_exception_throw(v13);
  }

  [(CKKSCKRecordHolder *)self setStoredCKRecord:v15];
  v6 = [v15 recordID];
  v7 = [v6 recordName];
  [(CKKSCurrentItemPointer *)self setIdentifier:v7];

  v8 = [v15 objectForKeyedSubscript:@"item"];
  v9 = [v8 recordID];
  v10 = [v9 recordName];
  [(CKKSCurrentItemPointer *)self setCurrentItemUUID:v10];
}

- (BOOL)matchesCKRecord:(id)a3
{
  v4 = a3;
  v5 = [v4 recordType];
  v6 = [v5 isEqualToString:@"currentitem"];

  if (!v6)
  {
    goto LABEL_4;
  }

  v7 = [v4 recordID];
  v8 = [v7 recordName];
  v9 = [(CKKSCurrentItemPointer *)self identifier];
  v10 = [v8 isEqualToString:v9];

  if (v10)
  {
    v11 = [v4 objectForKeyedSubscript:@"item"];
    v12 = [v11 recordID];
    v13 = [v12 recordName];
    v14 = [(CKKSCurrentItemPointer *)self currentItemUUID];
    v15 = [v13 isEqualToString:v14];
  }

  else
  {
LABEL_4:
    v15 = 0;
  }

  return v15;
}

- (id)updateCKRecord:(id)a3 zoneID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 recordType];
  v9 = [v8 isEqualToString:@"currentitem"];

  if ((v9 & 1) == 0)
  {
    v20 = [v6 recordType];
    v21 = [NSString stringWithFormat:@"CKRecordType (%@) was not %@", v20, @"currentitem"];
    v22 = [NSException exceptionWithName:@"WrongCKRecordTypeException" reason:v21 userInfo:0];
    v23 = v22;

    goto LABEL_8;
  }

  v10 = [v6 recordID];
  v11 = [v10 recordName];
  v12 = [(CKKSCurrentItemPointer *)self identifier];
  v13 = [v11 isEqualToString:v12];

  if ((v13 & 1) == 0)
  {
    v20 = [v6 recordID];
    v24 = [v20 recordName];
    v25 = [(CKKSCurrentItemPointer *)self identifier];
    v26 = [NSString stringWithFormat:@"CKRecord name (%@) was not %@", v24, v25];
    v22 = [NSException exceptionWithName:@"WrongCKRecordNameException" reason:v26 userInfo:0];
    v27 = v22;

LABEL_8:
    objc_exception_throw(v22);
  }

  v14 = [CKReference alloc];
  v15 = [CKRecordID alloc];
  v16 = [(CKKSCurrentItemPointer *)self currentItemUUID];
  v17 = [v15 initWithRecordName:v16 zoneID:v7];
  v18 = [v14 initWithRecordID:v17 action:0];
  [v6 setObject:v18 forKeyedSubscript:@"item"];

  return v6;
}

- (id)description
{
  v3 = [(CKKSCKRecordHolder *)self contextID];
  v4 = [(CKKSCKRecordHolder *)self zoneID];
  v5 = [v4 zoneName];
  v6 = [(CKKSCurrentItemPointer *)self identifier];
  v7 = [(CKKSCurrentItemPointer *)self currentItemUUID];
  v8 = [NSString stringWithFormat:@"<CKKSCurrentItemPointer[%@](%@) %@: %@>", v3, v5, v6, v7];

  return v8;
}

- (id)initForIdentifier:(id)a3 contextID:(id)a4 currentItemUUID:(id)a5 state:(id)a6 zoneID:(id)a7 encodedCKRecord:(id)a8
{
  v15 = a3;
  v16 = a5;
  v17 = a6;
  v21.receiver = self;
  v21.super_class = CKKSCurrentItemPointer;
  v18 = [(CKKSCKRecordHolder *)&v21 initWithCKRecordType:@"currentitem" encodedCKRecord:a8 contextID:a4 zoneID:a7];
  p_isa = &v18->super.super.super.isa;
  if (v18)
  {
    objc_storeStrong(&v18->_state, a6);
    objc_storeStrong(p_isa + 8, a3);
    objc_storeStrong(p_isa + 9, a5);
  }

  return p_isa;
}

+ (BOOL)intransactionRecordDeleted:(id)a3 contextID:(id)a4 resync:(BOOL)a5 error:(id *)a6
{
  v8 = a3;
  v9 = a4;
  v10 = [(__CFString *)v8 zoneID];
  v11 = [v10 zoneName];
  v12 = sub_100019104(@"currentitem", v11);

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v46 = @"currentitem";
    v47 = 2112;
    v48 = v8;
    _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "CloudKit notification: deleted current item pointer(%@): %@", buf, 0x16u);
  }

  v13 = [(__CFString *)v8 recordName];
  v14 = [(__CFString *)v8 zoneID];
  v44 = 0;
  v15 = [CKKSCurrentItemPointer tryFromDatabase:v13 contextID:v9 state:@"remote" zoneID:v14 error:&v44];
  v16 = v44;

  if (!v16)
  {
    v43 = 0;
    [v15 deleteFromDatabase:&v43];
    v22 = v43;
    if (v22)
    {
      v16 = v22;
      if (a6)
      {
        v23 = v22;
        *a6 = v16;
      }

      v24 = [(__CFString *)v8 zoneID];
      v25 = [v24 zoneName];
      v20 = sub_100019104(@"currentitem", v25);

      if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_14;
      }

      *buf = 138412546;
      v46 = v8;
      v47 = 2112;
      v48 = v16;
      v21 = "Failed to delete remote CKKSCurrentItemPointer %@: %@";
      goto LABEL_13;
    }

    v28 = [(__CFString *)v8 recordName];
    v29 = [(__CFString *)v8 zoneID];
    v42 = 0;
    v20 = [CKKSCurrentItemPointer tryFromDatabase:v28 contextID:v9 state:@"local" zoneID:v29 error:&v42];
    v16 = v42;

    if (v16)
    {
      if (a6)
      {
        v30 = v16;
        *a6 = v16;
      }

      v31 = [(__CFString *)v8 zoneID];
      v32 = [v31 zoneName];
      v33 = sub_100019104(@"currentitem", v32);

      if (!os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_27;
      }

      *buf = 138412546;
      v46 = v8;
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
        v39 = [(__CFString *)v8 zoneID];
        v40 = [v39 zoneName];
        v33 = sub_100019104(@"currentitem", v40);

        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412546;
          v46 = v8;
          v47 = 2112;
          v48 = 0;
          _os_log_debug_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEBUG, "CKKSCurrentItemPointer was deleted: %@ error: %@", buf, 0x16u);
        }

        v16 = 0;
        v26 = 1;
        goto LABEL_28;
      }

      v16 = v35;
      if (a6)
      {
        v36 = v35;
        *a6 = v16;
      }

      v37 = [(__CFString *)v8 zoneID];
      v38 = [v37 zoneName];
      v33 = sub_100019104(@"currentitem", v38);

      if (!os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
LABEL_27:
        v26 = 0;
LABEL_28:

        goto LABEL_15;
      }

      *buf = 138412546;
      v46 = v8;
      v47 = 2112;
      v48 = v16;
      v34 = "Failed to delete local CKKSCurrentItemPointer %@: %@";
    }

    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, v34, buf, 0x16u);
    goto LABEL_27;
  }

  if (a6)
  {
    v17 = v16;
    *a6 = v16;
  }

  v18 = [(__CFString *)v8 zoneID];
  v19 = [v18 zoneName];
  v20 = sub_100019104(@"currentitem", v19);

  if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_14;
  }

  *buf = 138412546;
  v46 = v8;
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

+ (BOOL)intransactionRecordChanged:(id)a3 contextID:(id)a4 resync:(BOOL)a5 error:(id *)a6
{
  v7 = a5;
  v9 = a3;
  v10 = a4;
  if (!v7)
  {
    goto LABEL_16;
  }

  v51 = a6;
  v11 = [v9 recordID];
  v12 = [v11 recordName];
  v13 = [v9 recordID];
  v14 = [v13 zoneID];
  v54 = 0;
  v15 = [CKKSCurrentItemPointer tryFromDatabase:v12 contextID:v10 state:@"local" zoneID:v14 error:&v54];
  v16 = v54;

  v17 = [v9 recordID];
  v18 = [v17 recordName];
  v19 = [v9 recordID];
  v20 = [v19 zoneID];
  v53 = v16;
  v21 = [CKKSCurrentItemPointer tryFromDatabase:v18 contextID:v10 state:@"remote" zoneID:v20 error:&v53];
  v22 = v53;

  if (v22)
  {
    v23 = [v9 recordID];
    v24 = [v23 zoneID];
    v25 = [v24 zoneName];
    v26 = sub_100019104(@"ckksresync", v25);

    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v56 = v22;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "error loading cip: %@", buf, 0xCu);
    }
  }

  if (v15 | v21)
  {
    if ([v15 matchesCKRecord:v9] & 1) != 0 || (objc_msgSend(v21, "matchesCKRecord:", v9))
    {
      v27 = [v9 recordID];
      v28 = [v27 zoneID];
      v29 = [v28 zoneName];
      v30 = sub_100019104(@"ckksresync", v29);

      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v56 = v9;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Already know about this current item pointer, skipping update: %@", buf, 0xCu);
      }

      goto LABEL_25;
    }

    v48 = [v9 recordID];
    v49 = [v48 zoneID];
    v50 = [v49 zoneName];
    v34 = sub_100019104(@"ckksresync", v50);

    if (!os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    *buf = 138412802;
    v56 = v15;
    v57 = 2112;
    v58 = v21;
    v59 = 2112;
    v60 = v9;
    v35 = "BUG: Local current item pointer doesn't match resynced CloudKit record(s): %@ %@ %@";
    v36 = v34;
    v37 = 32;
    goto LABEL_14;
  }

  v31 = [v9 recordID];
  v32 = [v31 zoneID];
  v33 = [v32 zoneName];
  v34 = sub_100019104(@"ckksresync", v33);

  if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v56 = v9;
    v35 = "BUG: No current item pointer matching resynced CloudKit record: %@";
    v36 = v34;
    v37 = 12;
LABEL_14:
    _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, v35, buf, v37);
  }

LABEL_15:
  a6 = v51;

LABEL_16:
  v15 = [(CKKSCKRecordHolder *)[CKKSCurrentItemPointer alloc] initWithCKRecord:v9 contextID:v10];
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
  v41 = [v9 recordID];
  v42 = [v41 zoneID];
  v43 = [v42 zoneName];
  v44 = sub_100019104(@"currentitem", v43);

  if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412802;
    v56 = v15;
    v57 = 2112;
    v58 = v22;
    v59 = 2112;
    v60 = v9;
    _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, "Couldn't save current item pointer to database: %@: %@ %@", buf, 0x20u);
  }

  if (a6)
  {
    v45 = v22;
    v46 = 0;
    *a6 = v22;
  }

  else
  {
    v46 = 0;
  }

LABEL_27:

  return v46;
}

+ (int64_t)countByState:(id)a3 contextID:(id)a4 zone:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = -1;
  v12 = [objc_opt_class() sqlTable];
  v29[0] = @"contextID";
  v13 = v10;
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
  v17 = [v11 zoneName];
  v18 = v17;
  if (v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = +[NSNull null];
  }

  v20 = v19;

  v29[2] = @"state";
  v30[1] = v20;
  v30[2] = v9;
  v21 = [NSDictionary dictionaryWithObjects:v30 forKeys:v29 count:3];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1000F72D8;
  v24[3] = &unk_100344498;
  v24[4] = &v25;
  [CKKSSQLDatabaseObject queryDatabaseTable:v12 where:v21 columns:&off_100365850 groupBy:0 orderBy:0 limit:-1 processRow:v24 error:a6];

  v22 = v26[3];
  _Block_object_dispose(&v25, 8);

  return v22;
}

+ (id)fromDatabaseRow:(id)a3
{
  v3 = a3;
  v4 = [CKKSCurrentItemPointer alloc];
  v20 = [v3 objectForKeyedSubscript:@"identifier"];
  v16 = [v20 asString];
  v19 = [v3 objectForKeyedSubscript:@"contextID"];
  v5 = [v19 asString];
  v18 = [v3 objectForKeyedSubscript:@"currentItemUUID"];
  v17 = [v18 asString];
  v6 = [v3 objectForKeyedSubscript:@"state"];
  v7 = [v6 asString];
  v8 = [CKRecordZoneID alloc];
  v9 = [v3 objectForKeyedSubscript:@"ckzone"];
  v10 = [v9 asString];
  v11 = [v8 initWithZoneName:v10 ownerName:CKCurrentUserDefaultName];
  v12 = [v3 objectForKeyedSubscript:@"ckrecord"];

  v13 = [v12 asBase64DecodedData];
  v14 = [(CKKSCurrentItemPointer *)v4 initForIdentifier:v16 contextID:v5 currentItemUUID:v17 state:v7 zoneID:v11 encodedCKRecord:v13];

  return v14;
}

+ (BOOL)deleteAll:(id)a3 contextID:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = [a1 sqlTable];
  v12 = @"ckzone";
  v9 = [v7 zoneName];

  v13 = v9;
  v10 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  LOBYTE(a5) = [CKKSSQLDatabaseObject deleteFromTable:v8 where:v10 connection:0 error:a5];

  return a5;
}

+ (id)allInZone:(id)a3 contextID:(id)a4 error:(id *)a5
{
  v11 = @"ckzone";
  v7 = [a3 zoneName];
  v12 = v7;
  v8 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  v9 = [a1 allWhere:v8 error:a5];

  return v9;
}

+ (id)remoteItemPointers:(id)a3 contextID:(id)a4 error:(id *)a5
{
  v11[0] = @"state";
  v11[1] = @"ckzone";
  v12[0] = @"remote";
  v7 = [a3 zoneName];
  v12[1] = v7;
  v8 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:2];
  v9 = [a1 allWhere:v8 error:a5];

  return v9;
}

+ (id)tryFromDatabase:(id)a3 contextID:(id)a4 state:(id)a5 zoneID:(id)a6 error:(id *)a7
{
  v19[0] = @"contextID";
  v19[1] = @"identifier";
  v20[0] = a4;
  v20[1] = a3;
  v20[2] = a5;
  v19[2] = @"state";
  v19[3] = @"ckzone";
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = [a6 zoneName];
  v20[3] = v15;
  v16 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:4];

  v17 = [a1 tryFromDatabaseWhere:v16 error:a7];

  return v17;
}

+ (id)fromDatabase:(id)a3 contextID:(id)a4 state:(id)a5 zoneID:(id)a6 error:(id *)a7
{
  v19[0] = @"contextID";
  v19[1] = @"identifier";
  v20[0] = a4;
  v20[1] = a3;
  v20[2] = a5;
  v19[2] = @"state";
  v19[3] = @"ckzone";
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = [a6 zoneName];
  v20[3] = v15;
  v16 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:4];

  v17 = [a1 fromDatabaseWhere:v16 error:a7];

  return v17;
}

@end