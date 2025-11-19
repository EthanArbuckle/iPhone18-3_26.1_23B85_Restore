@interface CKKSIncomingQueueEntry
+ (BOOL)allIQEsHaveValidUnwrappingKeysInContextID:(id)a3 zoneID:(id)a4 error:(id *)a5;
+ (id)countNewEntriesByKeyWithContextID:(id)a3 zoneID:(id)a4 error:(id *)a5;
+ (id)countsByStateWithContextID:(id)a3 zoneID:(id)a4 error:(id *)a5;
+ (id)fetch:(int64_t)a3 startingAtUUID:(id)a4 state:(id)a5 action:(id)a6 contextID:(id)a7 zoneID:(id)a8 error:(id *)a9;
+ (id)fromDatabase:(id)a3 contextID:(id)a4 zoneID:(id)a5 error:(id *)a6;
+ (id)fromDatabaseRow:(id)a3;
+ (id)sqlColumns;
+ (id)tryFromDatabase:(id)a3 contextID:(id)a4 zoneID:(id)a5 error:(id *)a6;
+ (int64_t)countByState:(id)a3 contextID:(id)a4 zone:(id)a5 error:(id *)a6;
- (CKKSIncomingQueueEntry)initWithCKKSItem:(id)a3 action:(id)a4 state:(id)a5;
- (NSString)contextID;
- (NSString)uuid;
- (id)description;
- (id)sqlValues;
- (id)whereClauseToFindSelf;
- (void)setUuid:(id)a3;
@end

@implementation CKKSIncomingQueueEntry

- (id)sqlValues
{
  v3 = [(CKKSIncomingQueueEntry *)self item];
  v4 = [v3 sqlValues];
  v5 = [v4 mutableCopy];

  v6 = [(CKKSIncomingQueueEntry *)self action];
  [v5 setObject:v6 forKeyedSubscript:@"action"];

  v7 = [(CKKSIncomingQueueEntry *)self state];
  [v5 setObject:v7 forKeyedSubscript:@"state"];

  return v5;
}

- (id)whereClauseToFindSelf
{
  v11[0] = @"contextID";
  v3 = [(CKKSIncomingQueueEntry *)self contextID];
  v12[0] = v3;
  v11[1] = @"UUID";
  v4 = [(CKKSIncomingQueueEntry *)self uuid];
  v12[1] = v4;
  v11[2] = @"state";
  v5 = [(CKKSIncomingQueueEntry *)self state];
  v12[2] = v5;
  v11[3] = @"ckzone";
  v6 = [(CKKSIncomingQueueEntry *)self item];
  v7 = [v6 zoneID];
  v8 = [v7 zoneName];
  v12[3] = v8;
  v9 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:4];

  return v9;
}

- (void)setUuid:(id)a3
{
  v4 = a3;
  v5 = [(CKKSIncomingQueueEntry *)self item];
  [v5 setUuid:v4];
}

- (NSString)uuid
{
  v2 = [(CKKSIncomingQueueEntry *)self item];
  v3 = [v2 uuid];

  return v3;
}

- (NSString)contextID
{
  v2 = [(CKKSIncomingQueueEntry *)self item];
  v3 = [v2 contextID];

  return v3;
}

- (CKKSIncomingQueueEntry)initWithCKKSItem:(id)a3 action:(id)a4 state:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = CKKSIncomingQueueEntry;
  v12 = [(CKKSIncomingQueueEntry *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_item, a3);
    objc_storeStrong(&v13->_action, a4);
    objc_storeStrong(&v13->_state, a5);
  }

  return v13;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v15 = [(CKKSIncomingQueueEntry *)self item];
  v5 = [v15 contextID];
  v6 = [(CKKSIncomingQueueEntry *)self item];
  v7 = [v6 zoneID];
  v8 = [v7 zoneName];
  v9 = [(CKKSIncomingQueueEntry *)self action];
  v10 = [(CKKSIncomingQueueEntry *)self item];
  v11 = [v10 uuid];
  v12 = [(CKKSIncomingQueueEntry *)self state];
  v13 = [NSString stringWithFormat:@"<%@[%@](%@): %@ %@ (%@)>", v4, v5, v8, v9, v11, v12];

  return v13;
}

+ (BOOL)allIQEsHaveValidUnwrappingKeysInContextID:(id)a3 zoneID:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v37 = 0;
  v9 = [(CKKSSQLDatabaseObject *)CKKSIncomingQueueEntry allParentKeyUUIDsInContextID:v7 zoneID:v8 error:&v37];
  v10 = v37;
  if (v10)
  {
    v11 = [v8 zoneName];
    v12 = sub_100019104(@"ckkskey", v11);

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v39 = v10;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Unable to find IQE parent keys: %@", buf, 0xCu);
    }

    if (a5)
    {
      v13 = v10;
      v14 = 0;
      *a5 = v10;
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
  v30 = a5;
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
      v21 = [CKKSKey tryFromDatabase:v20 contextID:v7 zoneID:v8 error:&v32, v30];
      v22 = v32;
      if (v22)
      {
        v23 = v22;
        v24 = [v8 zoneName];
        v25 = sub_100019104(@"ckksheal", v24);

        v9 = v31;
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v39 = v23;
          v40 = 2112;
          v41 = v20;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Unable to find key %@: %@", buf, 0x16u);
        }

        if (v30)
        {
          v26 = v23;
          *v30 = v23;
        }

        goto LABEL_25;
      }

      if (!v21)
      {
        v27 = [v8 zoneName];
        v28 = sub_100019104(@"ckkskey", v27);

        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v39 = v20;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Some item is encrypted under a non-existent key(%@).", buf, 0xCu);
        }

        v23 = 0;
        v21 = 0;
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

+ (id)countNewEntriesByKeyWithContextID:(id)a3 zoneID:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = objc_alloc_init(NSMutableDictionary);
  v10 = [objc_opt_class() sqlTable];
  v23[0] = @"contextID";
  v11 = v7;
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
  v15 = [v8 zoneName];

  if (v15)
  {
    v16 = v15;
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
  [CKKSSQLDatabaseObject queryDatabaseTable:v10 where:v18 columns:&off_1003657F0 groupBy:&off_100365808 orderBy:0 limit:-1 processRow:v21 error:a5];

  return v19;
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
  v24[2] = sub_1000D23EC;
  v24[3] = &unk_100344498;
  v24[4] = &v25;
  [CKKSSQLDatabaseObject queryDatabaseTable:v12 where:v21 columns:&off_1003657D8 groupBy:0 orderBy:0 limit:-1 processRow:v24 error:a6];

  v22 = v26[3];
  _Block_object_dispose(&v25, 8);

  return v22;
}

+ (id)countsByStateWithContextID:(id)a3 zoneID:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = objc_alloc_init(NSMutableDictionary);
  v10 = [objc_opt_class() sqlTable];
  v23[0] = @"contextID";
  v11 = v7;
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
  v15 = [v8 zoneName];

  if (v15)
  {
    v16 = v15;
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
  [CKKSSQLDatabaseObject queryDatabaseTable:v10 where:v18 columns:&off_1003657A8 groupBy:&off_1003657C0 orderBy:0 limit:-1 processRow:v21 error:a5];

  return v19;
}

+ (id)fromDatabaseRow:(id)a3
{
  v3 = a3;
  v4 = [CKKSIncomingQueueEntry alloc];
  v5 = [CKKSItem fromDatabaseRow:v3];
  v6 = [v3 objectForKeyedSubscript:@"action"];
  v7 = [v6 asString];
  v8 = [v3 objectForKeyedSubscript:@"state"];

  v9 = [v8 asString];
  v10 = [(CKKSIncomingQueueEntry *)v4 initWithCKKSItem:v5 action:v7 state:v9];

  return v10;
}

+ (id)sqlColumns
{
  v2 = +[CKKSItem sqlColumns];
  v3 = [v2 arrayByAddingObjectsFromArray:&off_100365790];

  return v3;
}

+ (id)fetch:(int64_t)a3 startingAtUUID:(id)a4 state:(id)a5 action:(id)a6 contextID:(id)a7 zoneID:(id)a8 error:(id *)a9
{
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v37 = @"contextID";
  v18 = v16;
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
  v22 = v14;
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
  v26 = [v17 zoneName];
  v27 = v26;
  if (v26)
  {
    v28 = v26;
  }

  else
  {
    v28 = +[NSNull null];
  }

  v29 = v28;

  v40[2] = v29;
  v30 = [NSDictionary dictionaryWithObjects:v40 forKeys:&v37 count:3];
  v31 = [v30 mutableCopy];

  [v31 setObject:v15 forKeyedSubscript:@"action"];
  if (v13)
  {
    v32 = [CKKSSQLWhereValue op:3 value:v13];
    [v31 setObject:v32 forKeyedSubscript:@"UUID"];
  }

  v33 = [a1 fetch:a3 where:v31 orderBy:&off_100365778 error:{a9, a1, a3, a9, v37, v38}];

  return v33;
}

+ (id)tryFromDatabase:(id)a3 contextID:(id)a4 zoneID:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v28[0] = @"contextID";
  v13 = v11;
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
  v17 = v10;
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
  v21 = [v12 zoneName];
  v22 = v21;
  if (v21)
  {
    v23 = v21;
  }

  else
  {
    v23 = +[NSNull null];
  }

  v24 = v23;

  v29[2] = v24;
  v25 = [NSDictionary dictionaryWithObjects:v29 forKeys:v28 count:3];
  v26 = [a1 tryFromDatabaseWhere:v25 error:a6];

  return v26;
}

+ (id)fromDatabase:(id)a3 contextID:(id)a4 zoneID:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v28[0] = @"contextID";
  v13 = v11;
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
  v17 = v10;
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
  v21 = [v12 zoneName];
  v22 = v21;
  if (v21)
  {
    v23 = v21;
  }

  else
  {
    v23 = +[NSNull null];
  }

  v24 = v23;

  v29[2] = v24;
  v25 = [NSDictionary dictionaryWithObjects:v29 forKeys:v28 count:3];
  v26 = [a1 fromDatabaseWhere:v25 error:a6];

  return v26;
}

@end