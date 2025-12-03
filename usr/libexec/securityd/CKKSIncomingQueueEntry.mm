@interface CKKSIncomingQueueEntry
+ (BOOL)allIQEsHaveValidUnwrappingKeysInContextID:(id)d zoneID:(id)iD error:(id *)error;
+ (id)countNewEntriesByKeyWithContextID:(id)d zoneID:(id)iD error:(id *)error;
+ (id)countsByStateWithContextID:(id)d zoneID:(id)iD error:(id *)error;
+ (id)fetch:(int64_t)fetch startingAtUUID:(id)d state:(id)state action:(id)action contextID:(id)iD zoneID:(id)zoneID error:(id *)error;
+ (id)fromDatabase:(id)database contextID:(id)d zoneID:(id)iD error:(id *)error;
+ (id)fromDatabaseRow:(id)row;
+ (id)sqlColumns;
+ (id)tryFromDatabase:(id)database contextID:(id)d zoneID:(id)iD error:(id *)error;
+ (int64_t)countByState:(id)state contextID:(id)d zone:(id)zone error:(id *)error;
- (CKKSIncomingQueueEntry)initWithCKKSItem:(id)item action:(id)action state:(id)state;
- (NSString)contextID;
- (NSString)uuid;
- (id)description;
- (id)sqlValues;
- (id)whereClauseToFindSelf;
- (void)setUuid:(id)uuid;
@end

@implementation CKKSIncomingQueueEntry

- (id)sqlValues
{
  item = [(CKKSIncomingQueueEntry *)self item];
  sqlValues = [item sqlValues];
  v5 = [sqlValues mutableCopy];

  action = [(CKKSIncomingQueueEntry *)self action];
  [v5 setObject:action forKeyedSubscript:@"action"];

  state = [(CKKSIncomingQueueEntry *)self state];
  [v5 setObject:state forKeyedSubscript:@"state"];

  return v5;
}

- (id)whereClauseToFindSelf
{
  v11[0] = @"contextID";
  contextID = [(CKKSIncomingQueueEntry *)self contextID];
  v12[0] = contextID;
  v11[1] = @"UUID";
  uuid = [(CKKSIncomingQueueEntry *)self uuid];
  v12[1] = uuid;
  v11[2] = @"state";
  state = [(CKKSIncomingQueueEntry *)self state];
  v12[2] = state;
  v11[3] = @"ckzone";
  item = [(CKKSIncomingQueueEntry *)self item];
  zoneID = [item zoneID];
  zoneName = [zoneID zoneName];
  v12[3] = zoneName;
  v9 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:4];

  return v9;
}

- (void)setUuid:(id)uuid
{
  uuidCopy = uuid;
  item = [(CKKSIncomingQueueEntry *)self item];
  [item setUuid:uuidCopy];
}

- (NSString)uuid
{
  item = [(CKKSIncomingQueueEntry *)self item];
  uuid = [item uuid];

  return uuid;
}

- (NSString)contextID
{
  item = [(CKKSIncomingQueueEntry *)self item];
  contextID = [item contextID];

  return contextID;
}

- (CKKSIncomingQueueEntry)initWithCKKSItem:(id)item action:(id)action state:(id)state
{
  itemCopy = item;
  actionCopy = action;
  stateCopy = state;
  v15.receiver = self;
  v15.super_class = CKKSIncomingQueueEntry;
  v12 = [(CKKSIncomingQueueEntry *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_item, item);
    objc_storeStrong(&v13->_action, action);
    objc_storeStrong(&v13->_state, state);
  }

  return v13;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  item = [(CKKSIncomingQueueEntry *)self item];
  contextID = [item contextID];
  item2 = [(CKKSIncomingQueueEntry *)self item];
  zoneID = [item2 zoneID];
  zoneName = [zoneID zoneName];
  action = [(CKKSIncomingQueueEntry *)self action];
  item3 = [(CKKSIncomingQueueEntry *)self item];
  uuid = [item3 uuid];
  state = [(CKKSIncomingQueueEntry *)self state];
  v13 = [NSString stringWithFormat:@"<%@[%@](%@): %@ %@ (%@)>", v4, contextID, zoneName, action, uuid, state];

  return v13;
}

+ (BOOL)allIQEsHaveValidUnwrappingKeysInContextID:(id)d zoneID:(id)iD error:(id *)error
{
  dCopy = d;
  iDCopy = iD;
  v37 = 0;
  v9 = [(CKKSSQLDatabaseObject *)CKKSIncomingQueueEntry allParentKeyUUIDsInContextID:dCopy zoneID:iDCopy error:&v37];
  v10 = v37;
  if (v10)
  {
    zoneName = [iDCopy zoneName];
    v12 = sub_100019104(@"ckkskey", zoneName);

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v39 = v10;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Unable to find IQE parent keys: %@", buf, 0xCu);
    }

    if (error)
    {
      v13 = v10;
      v14 = 0;
      *error = v10;
    }

    else
    {
      v14 = 0;
    }

    goto LABEL_27;
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v15 = v9;
  v16 = [v15 countByEnumeratingWithState:&v33 objects:v42 count:16];
  if (!v16)
  {
    v14 = 1;
    goto LABEL_26;
  }

  v17 = v16;
  errorCopy = error;
  v18 = *v34;
  v31 = v9;
  while (2)
  {
    for (i = 0; i != v17; i = i + 1)
    {
      if (*v34 != v18)
      {
        objc_enumerationMutation(v15);
      }

      v20 = *(*(&v33 + 1) + 8 * i);
      v32 = 0;
      errorCopy = [CKKSKey tryFromDatabase:v20 contextID:dCopy zoneID:iDCopy error:&v32, errorCopy];
      v22 = v32;
      if (v22)
      {
        v23 = v22;
        zoneName2 = [iDCopy zoneName];
        v25 = sub_100019104(@"ckksheal", zoneName2);

        v9 = v31;
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v39 = v23;
          v40 = 2112;
          v41 = v20;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Unable to find key %@: %@", buf, 0x16u);
        }

        if (errorCopy)
        {
          v26 = v23;
          *errorCopy = v23;
        }

        goto LABEL_25;
      }

      if (!errorCopy)
      {
        zoneName3 = [iDCopy zoneName];
        v28 = sub_100019104(@"ckkskey", zoneName3);

        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v39 = v20;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Some item is encrypted under a non-existent key(%@).", buf, 0xCu);
        }

        v23 = 0;
        errorCopy = 0;
        v9 = v31;
LABEL_25:

        v14 = 0;
        v10 = 0;
        goto LABEL_26;
      }
    }

    v17 = [v15 countByEnumeratingWithState:&v33 objects:v42 count:16];
    v14 = 1;
    v10 = 0;
    v9 = v31;
    if (v17)
    {
      continue;
    }

    break;
  }

LABEL_26:

LABEL_27:
  return v14;
}

+ (id)countNewEntriesByKeyWithContextID:(id)d zoneID:(id)iD error:(id *)error
{
  dCopy = d;
  iDCopy = iD;
  v9 = objc_alloc_init(NSMutableDictionary);
  sqlTable = [objc_opt_class() sqlTable];
  v23[0] = @"contextID";
  v11 = dCopy;
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = +[NSNull null];
  }

  v14 = v13;

  v24[0] = v14;
  v23[1] = @"ckzone";
  zoneName = [iDCopy zoneName];

  if (zoneName)
  {
    v16 = zoneName;
  }

  else
  {
    v16 = +[NSNull null];
  }

  v17 = v16;

  v23[2] = @"state";
  v24[1] = v17;
  v24[2] = @"new";
  v18 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:3];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000D20E8;
  v21[3] = &unk_1003385E8;
  v19 = v9;
  v22 = v19;
  [CKKSSQLDatabaseObject queryDatabaseTable:sqlTable where:v18 columns:&off_1003657F0 groupBy:&off_100365808 orderBy:0 limit:-1 processRow:v21 error:error];

  return v19;
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
  v24[2] = sub_1000D23EC;
  v24[3] = &unk_100344498;
  v24[4] = &v25;
  [CKKSSQLDatabaseObject queryDatabaseTable:sqlTable where:v21 columns:&off_1003657D8 groupBy:0 orderBy:0 limit:-1 processRow:v24 error:error];

  v22 = v26[3];
  _Block_object_dispose(&v25, 8);

  return v22;
}

+ (id)countsByStateWithContextID:(id)d zoneID:(id)iD error:(id *)error
{
  dCopy = d;
  iDCopy = iD;
  v9 = objc_alloc_init(NSMutableDictionary);
  sqlTable = [objc_opt_class() sqlTable];
  v23[0] = @"contextID";
  v11 = dCopy;
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = +[NSNull null];
  }

  v14 = v13;

  v23[1] = @"ckzone";
  v24[0] = v14;
  zoneName = [iDCopy zoneName];

  if (zoneName)
  {
    v16 = zoneName;
  }

  else
  {
    v16 = +[NSNull null];
  }

  v17 = v16;

  v24[1] = v17;
  v18 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:2];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000D2658;
  v21[3] = &unk_1003385E8;
  v19 = v9;
  v22 = v19;
  [CKKSSQLDatabaseObject queryDatabaseTable:sqlTable where:v18 columns:&off_1003657A8 groupBy:&off_1003657C0 orderBy:0 limit:-1 processRow:v21 error:error];

  return v19;
}

+ (id)fromDatabaseRow:(id)row
{
  rowCopy = row;
  v4 = [CKKSIncomingQueueEntry alloc];
  v5 = [CKKSItem fromDatabaseRow:rowCopy];
  v6 = [rowCopy objectForKeyedSubscript:@"action"];
  asString = [v6 asString];
  v8 = [rowCopy objectForKeyedSubscript:@"state"];

  asString2 = [v8 asString];
  v10 = [(CKKSIncomingQueueEntry *)v4 initWithCKKSItem:v5 action:asString state:asString2];

  return v10;
}

+ (id)sqlColumns
{
  v2 = +[CKKSItem sqlColumns];
  v3 = [v2 arrayByAddingObjectsFromArray:&off_100365790];

  return v3;
}

+ (id)fetch:(int64_t)fetch startingAtUUID:(id)d state:(id)state action:(id)action contextID:(id)iD zoneID:(id)zoneID error:(id *)error
{
  dCopy = d;
  stateCopy = state;
  actionCopy = action;
  iDCopy = iD;
  zoneIDCopy = zoneID;
  v37 = @"contextID";
  v18 = iDCopy;
  v19 = v18;
  if (v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = +[NSNull null];
  }

  v21 = v20;

  v40[0] = v21;
  v38 = @"state";
  v22 = stateCopy;
  v23 = v22;
  if (v22)
  {
    v24 = v22;
  }

  else
  {
    v24 = +[NSNull null];
  }

  v25 = v24;

  v40[1] = v25;
  v39 = @"ckzone";
  zoneName = [zoneIDCopy zoneName];
  v27 = zoneName;
  if (zoneName)
  {
    v28 = zoneName;
  }

  else
  {
    v28 = +[NSNull null];
  }

  v29 = v28;

  v40[2] = v29;
  v30 = [NSDictionary dictionaryWithObjects:v40 forKeys:&v37 count:3];
  v31 = [v30 mutableCopy];

  [v31 setObject:actionCopy forKeyedSubscript:@"action"];
  if (dCopy)
  {
    v32 = [CKKSSQLWhereValue op:3 value:dCopy];
    [v31 setObject:v32 forKeyedSubscript:@"UUID"];
  }

  v33 = [self fetch:fetch where:v31 orderBy:&off_100365778 error:{error, self, fetch, error, v37, v38}];

  return v33;
}

+ (id)tryFromDatabase:(id)database contextID:(id)d zoneID:(id)iD error:(id *)error
{
  databaseCopy = database;
  dCopy = d;
  iDCopy = iD;
  v28[0] = @"contextID";
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

  v29[0] = v16;
  v28[1] = @"UUID";
  v17 = databaseCopy;
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

  v29[1] = v20;
  v28[2] = @"ckzone";
  zoneName = [iDCopy zoneName];
  v22 = zoneName;
  if (zoneName)
  {
    v23 = zoneName;
  }

  else
  {
    v23 = +[NSNull null];
  }

  v24 = v23;

  v29[2] = v24;
  v25 = [NSDictionary dictionaryWithObjects:v29 forKeys:v28 count:3];
  v26 = [self tryFromDatabaseWhere:v25 error:error];

  return v26;
}

+ (id)fromDatabase:(id)database contextID:(id)d zoneID:(id)iD error:(id *)error
{
  databaseCopy = database;
  dCopy = d;
  iDCopy = iD;
  v28[0] = @"contextID";
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

  v29[0] = v16;
  v28[1] = @"UUID";
  v17 = databaseCopy;
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

  v29[1] = v20;
  v28[2] = @"ckzone";
  zoneName = [iDCopy zoneName];
  v22 = zoneName;
  if (zoneName)
  {
    v23 = zoneName;
  }

  else
  {
    v23 = +[NSNull null];
  }

  v24 = v23;

  v29[2] = v24;
  v25 = [NSDictionary dictionaryWithObjects:v29 forKeys:v28 count:3];
  v26 = [self fromDatabaseWhere:v25 error:error];

  return v26;
}

@end