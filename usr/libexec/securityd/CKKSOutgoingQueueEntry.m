@interface CKKSOutgoingQueueEntry
+ (id)allInState:(id)a3 contextID:(id)a4 zoneID:(id)a5 error:(id *)a6;
+ (id)allWithUUID:(id)a3 states:(id)a4 contextID:(id)a5 zoneID:(id)a6 error:(id *)a7;
+ (id)countsByStateWithContextID:(id)a3 zoneID:(id)a4 error:(id *)a5;
+ (id)fetch:(int64_t)a3 state:(id)a4 contextID:(id)a5 zoneID:(id)a6 error:(id *)a7;
+ (id)fromDatabase:(id)a3 state:(id)a4 contextID:(id)a5 zoneID:(id)a6 error:(id *)a7;
+ (id)fromDatabaseRow:(id)a3;
+ (id)keyForItem:(SecDbItem *)a3 contextID:(id)a4 zoneID:(id)a5 keyCache:(id)a6 error:(id *)a7;
+ (id)sqlColumns;
+ (id)tryFromDatabase:(id)a3 contextID:(id)a4 zoneID:(id)a5 error:(id *)a6;
+ (id)tryFromDatabase:(id)a3 state:(id)a4 contextID:(id)a5 zoneID:(id)a6 error:(id *)a7;
+ (id)withItem:(SecDbItem *)a3 action:(id)a4 contextID:(id)a5 zoneID:(id)a6 keyCache:(id)a7 error:(id *)a8;
+ (int64_t)countByState:(id)a3 contextID:(id)a4 zoneID:(id)a5 error:(id *)a6;
- (BOOL)intransactionMarkAsError:(id)a3 viewState:(id)a4 error:(id *)a5;
- (BOOL)intransactionMoveToState:(id)a3 viewState:(id)a4 error:(id *)a5;
- (BOOL)isEqual:(id)a3;
- (CKKSOutgoingQueueEntry)initWithCKKSItem:(id)a3 action:(id)a4 state:(id)a5 waitUntil:(id)a6 accessGroup:(id)a7;
- (NSString)contextID;
- (NSString)uuid;
- (id)description;
- (id)sqlValues;
- (id)whereClauseToFindSelf;
- (void)setUuid:(id)a3;
@end

@implementation CKKSOutgoingQueueEntry

- (BOOL)intransactionMarkAsError:(id)a3 viewState:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = +[CKKSViewManager manager];
  v11 = [(CKKSOutgoingQueueEntry *)self uuid];
  v12 = [v10 claimCallbackForUUID:v11];

  if (v12)
  {
    (v12)[2](v12, 0, v8);
  }

  v18 = 0;
  [(CKKSSQLDatabaseObject *)self deleteFromDatabase:&v18];
  v13 = v18;
  if (v13)
  {
    v14 = [v9 zoneName];
    v15 = sub_100019104(@"ckks", v14);

    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v20 = self;
      v21 = 2112;
      v22 = v8;
      v23 = 2112;
      v24 = v13;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Couldn't delete %@ (due to error %@): %@", buf, 0x20u);
    }

    if (a5)
    {
      v16 = v13;
      *a5 = v13;
    }
  }

  return v13 == 0;
}

- (BOOL)intransactionMoveToState:(id)a3 viewState:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if ([(CKKSOutgoingQueueEntry *)v8 isEqualToString:@"deleted"])
  {
    v10 = +[CKKSViewManager manager];
    v11 = [(CKKSOutgoingQueueEntry *)self uuid];
    v12 = [v10 claimCallbackForUUID:v11];

    if (v12)
    {
      (*(v12 + 16))(v12, 1, 0);
    }

    v41 = 0;
    [(CKKSSQLDatabaseObject *)self deleteFromDatabase:&v41];
    v13 = v41;
    if (v13)
    {
      v14 = v13;
      v15 = [v9 zoneName];
      v16 = sub_100019104(@"ckks", v15);

      if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
LABEL_18:

        goto LABEL_23;
      }

      *buf = 138412546;
      v43 = self;
      v44 = 2112;
      v45 = v14;
      v17 = "Couldn't delete %@: %@";
      v18 = v16;
      v19 = 22;
LABEL_7:
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, v17, buf, v19);
      goto LABEL_18;
    }

    goto LABEL_32;
  }

  v20 = [(CKKSOutgoingQueueEntry *)self state];
  if ([v20 isEqualToString:@"inflight"])
  {
    v21 = [(CKKSOutgoingQueueEntry *)v8 isEqualToString:@"new"];

    if (v21)
    {
      v22 = [(CKKSOutgoingQueueEntry *)self uuid];
      v23 = [(CKKSOutgoingQueueEntry *)self item];
      v24 = [v23 contextID];
      v25 = [v9 zoneID];
      v40 = 0;
      v12 = [CKKSOutgoingQueueEntry tryFromDatabase:v22 state:@"new" contextID:v24 zoneID:v25 error:&v40];
      v26 = v40;

      if (v26)
      {
        v27 = [v9 zoneName];
        v28 = sub_100019104(@"ckksoutgoing", v27);

        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v43 = v26;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Couldn't fetch an overwriting OQE, assuming one doesn't exist: %@", buf, 0xCu);
        }
      }

      else if (v12)
      {
        v32 = [v9 zoneName];
        v33 = sub_100019104(@"ckksoutgoing", v32);

        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v43 = self;
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "New modification has come in behind inflight %@; dropping failed change", buf, 0xCu);
        }

        v39 = 0;
        [(CKKSOutgoingQueueEntry *)self intransactionMoveToState:@"deleted" viewState:v9 error:&v39];
        v34 = v39;
        if (v34)
        {
          v14 = v34;
          v35 = [v9 zoneName];
          v16 = sub_100019104(@"ckksoutgoing", v35);

          if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_18;
          }

          *buf = 138412290;
          v43 = v14;
          v17 = "Couldn't delete in-flight OQE: %@";
          v18 = v16;
          v19 = 12;
          goto LABEL_7;
        }

LABEL_32:

        v14 = 0;
        goto LABEL_33;
      }

      [(CKKSOutgoingQueueEntry *)self setState:v8];
      v38 = v26;
      [(CKKSSQLDatabaseObject *)self saveToDatabase:&v38];
      v14 = v38;

      if (v14)
      {
        v29 = [v9 zoneName];
        v16 = sub_100019104(@"ckks", v29);

        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412802;
          v43 = self;
          v44 = 2112;
          v45 = v8;
          v46 = 2112;
          v47 = v14;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Couldn't save %@ as %@: %@", buf, 0x20u);
        }

        v12 = 0;
        goto LABEL_18;
      }

      v12 = 0;
      goto LABEL_32;
    }
  }

  else
  {
  }

  [(CKKSOutgoingQueueEntry *)self setState:v8];
  v37 = 0;
  [(CKKSSQLDatabaseObject *)self saveToDatabase:&v37];
  v14 = v37;
  if (!v14)
  {
    goto LABEL_33;
  }

  v30 = [v9 zoneName];
  v12 = sub_100019104(@"ckks", v30);

  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412802;
    v43 = self;
    v44 = 2112;
    v45 = v8;
    v46 = 2112;
    v47 = v14;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Couldn't save %@ as %@: %@", buf, 0x20u);
  }

LABEL_23:

  if (a5)
  {
    v31 = v14;
    *a5 = v14;
  }

LABEL_33:

  return v14 == 0;
}

- (id)sqlValues
{
  v3 = objc_alloc_init(NSISO8601DateFormatter);
  v4 = [(CKKSOutgoingQueueEntry *)self item];
  v5 = [v4 sqlValues];
  v6 = [v5 mutableCopy];

  v7 = [(CKKSOutgoingQueueEntry *)self action];
  [v6 setObject:v7 forKeyedSubscript:@"action"];

  v8 = [(CKKSOutgoingQueueEntry *)self state];
  [v6 setObject:v8 forKeyedSubscript:@"state"];

  v9 = [(CKKSOutgoingQueueEntry *)self waitUntil];
  if (!v9 || (v10 = v9, -[CKKSOutgoingQueueEntry waitUntil](self, "waitUntil"), v11 = objc_claimAutoreleasedReturnValue(), [v3 stringFromDate:v11], v12 = objc_claimAutoreleasedReturnValue(), v11, v10, !v12))
  {
    v12 = +[NSNull null];
  }

  [v6 setObject:v12 forKeyedSubscript:@"waituntil"];

  v13 = [(CKKSOutgoingQueueEntry *)self accessgroup];
  [v6 setObject:v13 forKeyedSubscript:@"accessgroup"];

  return v6;
}

- (id)whereClauseToFindSelf
{
  v14[0] = @"contextID";
  v3 = [(CKKSOutgoingQueueEntry *)self item];
  v4 = [v3 contextID];

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = +[NSNull null];
  }

  v6 = v5;

  v15[0] = v6;
  v14[1] = @"UUID";
  v7 = [(CKKSOutgoingQueueEntry *)self uuid];
  v15[1] = v7;
  v14[2] = @"state";
  v8 = [(CKKSOutgoingQueueEntry *)self state];
  v15[2] = v8;
  v14[3] = @"ckzone";
  v9 = [(CKKSOutgoingQueueEntry *)self item];
  v10 = [v9 zoneID];
  v11 = [v10 zoneName];
  v15[3] = v11;
  v12 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:4];

  return v12;
}

- (void)setUuid:(id)a3
{
  v4 = a3;
  v5 = [(CKKSOutgoingQueueEntry *)self item];
  [v5 setUuid:v4];
}

- (NSString)uuid
{
  v2 = [(CKKSOutgoingQueueEntry *)self item];
  v3 = [v2 uuid];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(CKKSOutgoingQueueEntry *)self item];
    v7 = [v5 item];
    if (![v6 isEqual:v7])
    {
      v15 = 0;
LABEL_22:

      goto LABEL_23;
    }

    v8 = [(CKKSOutgoingQueueEntry *)self action];
    v9 = [v5 action];
    if (![v8 isEqual:v9])
    {
      v15 = 0;
LABEL_21:

      goto LABEL_22;
    }

    v10 = [(CKKSOutgoingQueueEntry *)self state];
    v11 = [v5 state];
    if (![v10 isEqual:v11])
    {
      v15 = 0;
LABEL_20:

      goto LABEL_21;
    }

    v12 = [(CKKSOutgoingQueueEntry *)self waitUntil];
    if (v12 || ([v5 waitUntil], (v19 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v25 = v11;
      v13 = [(CKKSOutgoingQueueEntry *)self waitUntil];
      v23 = [v5 waitUntil];
      v24 = v13;
      [v13 timeIntervalSinceDate:?];
      if (fabs(v14) >= 1.0)
      {
        v15 = 0;
        v11 = v25;
        goto LABEL_17;
      }

      v21 = v12;
      v22 = v10;
      v20 = 1;
      v11 = v25;
    }

    else
    {
      v21 = 0;
      v22 = v10;
      v19 = 0;
      v20 = 0;
    }

    v16 = [(CKKSOutgoingQueueEntry *)self accessgroup];
    v17 = [v5 accessgroup];
    v15 = [v16 isEqual:v17];

    if (!v20)
    {
      v12 = v21;
      v10 = v22;
      if (v21)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    v12 = v21;
    v10 = v22;
LABEL_17:

    if (v12)
    {
LABEL_19:

      goto LABEL_20;
    }

LABEL_18:

    goto LABEL_19;
  }

  v15 = 0;
LABEL_23:

  return v15;
}

- (NSString)contextID
{
  v2 = [(CKKSOutgoingQueueEntry *)self item];
  v3 = [v2 contextID];

  return v3;
}

- (CKKSOutgoingQueueEntry)initWithCKKSItem:(id)a3 action:(id)a4 state:(id)a5 waitUntil:(id)a6 accessGroup:(id)a7
{
  v20 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v21.receiver = self;
  v21.super_class = CKKSOutgoingQueueEntry;
  v17 = [(CKKSOutgoingQueueEntry *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_item, a3);
    objc_storeStrong(&v18->_action, a4);
    objc_storeStrong(&v18->_state, a5);
    objc_storeStrong(&v18->_accessgroup, a7);
    objc_storeStrong(&v18->_waitUntil, a6);
  }

  return v18;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(CKKSOutgoingQueueEntry *)self contextID];
  v6 = [(CKKSOutgoingQueueEntry *)self item];
  v7 = [v6 zoneID];
  v8 = [v7 zoneName];
  v9 = [(CKKSOutgoingQueueEntry *)self action];
  v10 = [(CKKSOutgoingQueueEntry *)self item];
  v11 = [v10 uuid];
  v12 = [(CKKSOutgoingQueueEntry *)self state];
  v13 = [NSString stringWithFormat:@"<%@[%@](%@): %@ %@ (%@)>", v4, v5, v8, v9, v11, v12];

  return v13;
}

+ (int64_t)countByState:(id)a3 contextID:(id)a4 zoneID:(id)a5 error:(id *)a6
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
  v24[2] = sub_1000CEDDC;
  v24[3] = &unk_100344498;
  v24[4] = &v25;
  [CKKSSQLDatabaseObject queryDatabaseTable:v12 where:v21 columns:&off_100365760 groupBy:0 orderBy:0 limit:-1 processRow:v24 error:a6];

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
  v21[2] = sub_1000CF048;
  v21[3] = &unk_1003385E8;
  v19 = v9;
  v22 = v19;
  [CKKSSQLDatabaseObject queryDatabaseTable:v10 where:v18 columns:&off_100365730 groupBy:&off_100365748 orderBy:0 limit:-1 processRow:v21 error:a5];

  return v19;
}

+ (id)fromDatabaseRow:(id)a3
{
  v3 = a3;
  v4 = [CKKSOutgoingQueueEntry alloc];
  v5 = [CKKSItem fromDatabaseRow:v3];
  v6 = [v3 objectForKeyedSubscript:@"action"];
  v7 = [v6 asString];
  v8 = [v3 objectForKeyedSubscript:@"state"];
  v9 = [v8 asString];
  v10 = [v3 objectForKeyedSubscript:@"waituntil"];
  v11 = [v10 asISO8601Date];
  v12 = [v3 objectForKeyedSubscript:@"accessgroup"];

  v13 = [v12 asString];
  v14 = [(CKKSOutgoingQueueEntry *)v4 initWithCKKSItem:v5 action:v7 state:v9 waitUntil:v11 accessGroup:v13];

  return v14;
}

+ (id)sqlColumns
{
  v2 = +[CKKSItem sqlColumns];
  v3 = [v2 arrayByAddingObjectsFromArray:&off_100365718];

  return v3;
}

+ (id)allWithUUID:(id)a3 states:(id)a4 contextID:(id)a5 zoneID:(id)a6 error:(id *)a7
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v32[0] = @"contextID";
  v14 = v12;
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = +[NSNull null];
  }

  v17 = v16;

  v33[0] = v17;
  v32[1] = @"UUID";
  v18 = v10;
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

  v33[1] = v21;
  v32[2] = @"state";
  v22 = [[CKKSSQLWhereIn alloc] initWithValues:v11];
  v33[2] = v22;
  v32[3] = @"ckzone";
  v23 = [v13 zoneName];
  v24 = v23;
  if (v23)
  {
    v25 = v23;
  }

  else
  {
    v25 = +[NSNull null];
  }

  v26 = v25;

  v33[3] = v26;
  v27 = [NSDictionary dictionaryWithObjects:v33 forKeys:v32 count:4];
  v28 = [a1 allWhere:v27 error:a7];

  return v28;
}

+ (id)allInState:(id)a3 contextID:(id)a4 zoneID:(id)a5 error:(id *)a6
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
  v28[1] = @"state";
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
  v26 = [a1 allWhere:v25 error:a6];

  return v26;
}

+ (id)fetch:(int64_t)a3 state:(id)a4 contextID:(id)a5 zoneID:(id)a6 error:(id *)a7
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = objc_alloc_init(NSISO8601DateFormatter);
  v35[0] = @"contextID";
  v14 = v11;
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = +[NSNull null];
  }

  v17 = v16;

  v36[0] = v17;
  v35[1] = @"state";
  v18 = v10;
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

  v36[1] = v21;
  v35[2] = @"ckzone";
  v22 = [v12 zoneName];

  v32 = v17;
  if (v22)
  {
    v23 = v22;
  }

  else
  {
    v23 = +[NSNull null];
  }

  v24 = v23;

  v36[2] = v24;
  v35[3] = @"waituntil";
  v25 = [CKKSSQLWhereNullOrValue alloc];
  v26 = +[NSDate date];
  v27 = [v13 stringFromDate:v26];
  v28 = [(CKKSSQLWhereValue *)v25 initWithOperation:4 value:v27];
  v36[3] = v28;
  v29 = [NSDictionary dictionaryWithObjects:v36 forKeys:v35 count:4];
  v30 = [a1 fetch:a3 where:v29 error:a7];

  return v30;
}

+ (id)tryFromDatabase:(id)a3 state:(id)a4 contextID:(id)a5 zoneID:(id)a6 error:(id *)a7
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v35[0] = @"contextID";
  v14 = v12;
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = +[NSNull null];
  }

  v17 = v16;

  v36[0] = v17;
  v35[1] = @"UUID";
  v18 = v10;
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

  v36[1] = v21;
  v35[2] = @"state";
  v22 = v11;
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

  v36[2] = v25;
  v35[3] = @"ckzone";
  v26 = [v13 zoneName];
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

  v36[3] = v29;
  v30 = [NSDictionary dictionaryWithObjects:v36 forKeys:v35 count:4];
  v31 = [a1 tryFromDatabaseWhere:v30 error:a7];

  return v31;
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

+ (id)fromDatabase:(id)a3 state:(id)a4 contextID:(id)a5 zoneID:(id)a6 error:(id *)a7
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v35[0] = @"contextID";
  v14 = v12;
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = +[NSNull null];
  }

  v17 = v16;

  v36[0] = v17;
  v35[1] = @"UUID";
  v18 = v10;
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

  v36[1] = v21;
  v35[2] = @"state";
  v22 = v11;
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

  v36[2] = v25;
  v35[3] = @"ckzone";
  v26 = [v13 zoneName];
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

  v36[3] = v29;
  v30 = [NSDictionary dictionaryWithObjects:v36 forKeys:v35 count:4];
  v31 = [a1 fromDatabaseWhere:v30 error:a7];

  return v31;
}

+ (id)withItem:(SecDbItem *)a3 action:(id)a4 contextID:(id)a5 zoneID:(id)a6 keyCache:(id)a7 error:(id *)a8
{
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v137 = 0;
  v18 = [v16 zoneName];
  v19 = sub_100019104(@"ckksitem", v18);

  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412547;
    v139 = v14;
    v140 = 2113;
    v141 = a3;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Creating a (%@) outgoing queue entry for: %{private}@", buf, 0x16u);
  }

  if (!sub_10001A700(a3) || ([(SecDbItem *)v14 isEqual:@"delete"]& 1) != 0)
  {
    v136 = 0;
    v20 = [a1 keyForItem:a3 contextID:v15 zoneID:v16 keyCache:v17 error:&v136];
    v21 = v136;
    v22 = v21;
    v131 = v15;
    if (!v20 || v21)
    {
      v32 = +[NSError errorWithDomain:code:description:underlying:](NSError, "errorWithDomain:code:description:underlying:", @"CKKSErrorDomain", [v21 code], @"No key for item", v21);
      v33 = [v16 zoneName];
      v34 = sub_100019104(@"ckksitem", v33);

      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412547;
        v139 = v32;
        v140 = 2113;
        v141 = a3;
        v35 = "no key for item: %@ %{private}@";
LABEL_24:
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, v35, buf, 0x16u);
      }
    }

    else
    {
      v23 = sub_10001B350(a3, 0x10000, 0, &v137);
      if (v23)
      {
        v24 = v23;
        [(__CFDictionary *)v23 setObject:a3->var1->var0 forKey:kSecClass];
        v25 = sub_100015BFC(a3, &off_100343C98, &v137);
        v129 = v24;
        v130 = v25;
        if (v25)
        {
          CFRetain(v25);
          v26 = v137;
          if (!v137)
          {
            objc_opt_class();
            v27 = v130;
            if (objc_opt_isKindOfClass())
            {
              v125 = [NSError errorWithDomain:@"CKKSErrorDomain" code:15 description:@"UUID not found in object" underlying:0];
              v28 = [v16 zoneName];
              v29 = sub_100019104(@"ckksitem", v28);

              if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412547;
                v139 = v125;
                v140 = 2113;
                v141 = a3;
                _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "couldn't fetch UUID: %@ %{private}@", buf, 0x16u);
              }

              v15 = v131;
              v30 = v125;
              if (a8)
              {
                v30 = v125;
                *a8 = v30;
              }

              v31 = 0;
              v32 = v129;
              goto LABEL_36;
            }

            v49 = sub_100015BFC(a3, &off_100343C48, &v137);
            v32 = v49;
            if (v49)
            {
              CFRetain(v49);
              v50 = v137;
              if (!v137)
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v51 = [v16 zoneName];
                  v52 = sub_100019104(@"ckksitem", v51);

                  if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138477827;
                    v139 = a3;
                    _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_ERROR, "couldn't fetch accessgroup: %{private}@", buf, 0xCu);
                  }

                  v32 = @"no-group";
                  v27 = v130;
                  v53 = v131;
                }

                else
                {
                  v53 = v131;
                }

                v124 = [CKKSMirrorEntry tryFromDatabase:v27 contextID:v53 zoneID:v16 error:a8];
                v127 = v14;
                v135 = 0;
                v59 = [CKKSOutgoingQueueEntry tryFromDatabase:v27 state:@"new" contextID:v53 zoneID:v16 error:&v135];
                v60 = v135;
                v123 = v59;
                if (v59)
                {
                  v114 = v60;
                  v61 = [v59 action];
                  v62 = [v61 isEqual:@"add"];

                  v63 = v127;
                  if (!v62)
                  {
                    goto LABEL_57;
                  }

                  if ([(__CFString *)v127 isEqual:@"modify"])
                  {
                    v63 = @"add";
                    v64 = @"add";

                    goto LABEL_57;
                  }

                  v63 = v127;
                  if (![(__CFString *)v127 isEqual:@"delete"]|| (v63 = v127, v124))
                  {
LABEL_57:
                    v65 = [v123 action];
                    if ([v65 isEqual:@"delete"])
                    {
                      v128 = [(__CFString *)v127 isEqual:@"add"];

                      if (!v128)
                      {
                        v127 = v63;
LABEL_66:
                        if (v124)
                        {
LABEL_67:
                          v69 = [v124 item];
                          v70 = [v69 generationCount];

                          v112 = v70;
                          if (!v123 && [(__CFString *)v127 isEqualToString:@"modify"])
                          {
                            v118 = [v124 item];
                            v133 = 0;
                            v71 = [CKKSItemEncrypter decryptItemToDictionary:v118 keyCache:v17 error:&v133];
                            v72 = v133;
                            log = [v71 mutableCopy];

                            v116 = [(__CFString *)v129 mutableCopy];
                            v119 = v72;
                            if (v72)
                            {
                              v73 = [v16 zoneName];
                              v74 = sub_100019104(@"ckksitem", v73);

                              if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
                              {
                                *buf = 138412290;
                                v139 = v119;
                                _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_ERROR, "Unable to decrypt current CKME: %@", buf, 0xCu);
                              }

                              goto LABEL_91;
                            }

                            [log setObject:0 forKeyedSubscript:?];
                            v109 = kSecAttrSHA1;
                            [log setObject:0 forKeyedSubscript:?];
                            [v116 setObject:0 forKeyedSubscript:kSecAttrModificationDate];
                            [v116 setObject:0 forKeyedSubscript:v109];
                            if (![log isEqualToDictionary:v116])
                            {
LABEL_91:

LABEL_92:
LABEL_93:

                              goto LABEL_96;
                            }

                            v77 = [v16 zoneName];
                            v78 = sub_100019104(@"ckksitem", v77);

                            v27 = v130;
                            if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
                            {
                              *buf = 138412290;
                              v139 = v130;
                              _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_DEFAULT, "Update to item only changes mdat; skipping %@", buf, 0xCu);
                            }

                            goto LABEL_89;
                          }

LABEL_96:
                          v80 = kSecAttrPCSPlaintextServiceIdentifier;
                          loga = [(__CFString *)v129 objectForKeyedSubscript:kSecAttrPCSPlaintextServiceIdentifier];
                          [(__CFString *)v129 setObject:0 forKeyedSubscript:v80];
                          v81 = kSecAttrPCSPlaintextPublicKey;
                          v120 = [(__CFString *)v129 objectForKeyedSubscript:kSecAttrPCSPlaintextPublicKey];
                          [(__CFString *)v129 setObject:0 forKeyedSubscript:v81];
                          v82 = kSecAttrPCSPlaintextPublicIdentity;
                          v117 = [(__CFString *)v129 objectForKeyedSubscript:kSecAttrPCSPlaintextPublicIdentity];
                          [(__CFString *)v129 setObject:0 forKeyedSubscript:v82];
                          v83 = [CKKSItem alloc];
                          v84 = [v20 uuid];
                          v85 = [(CKKSItem *)v83 initWithUUID:v130 parentKeyUUID:v84 contextID:v131 zoneID:v16 encodedCKRecord:0 encItem:0 wrappedkey:0 generationCount:v112 encver:2 plaintextPCSServiceIdentifier:loga plaintextPCSPublicKey:v120 plaintextPCSPublicIdentity:v117];

                          v111 = v85;
                          if (!v85)
                          {
                            v113 = [NSError errorWithDomain:@"CKKSErrorDomain" code:16 description:@"Couldn't create an item" underlying:0];
                            v96 = [v16 zoneName];
                            v97 = sub_100019104(@"ckksitem", v96);

                            if (os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
                            {
                              *buf = 138412547;
                              v139 = v113;
                              v140 = 2113;
                              v141 = a3;
                              _os_log_impl(&_mh_execute_header, v97, OS_LOG_TYPE_ERROR, "couldn't create an item: %@ %{private}@", buf, 0x16u);
                            }

                            v27 = v130;
                            if (a8)
                            {
                              v98 = v113;
                              v31 = 0;
                              *a8 = v113;
                            }

                            else
                            {
                              v31 = 0;
                            }

                            v15 = v131;
                            v79 = v127;
                            goto LABEL_116;
                          }

                          v107 = [v124 item];
                          v132 = 0;
                          v86 = [CKKSItemEncrypter encryptCKKSItem:v85 dataDictionary:v129 updatingCKKSItem:v107 parentkey:v20 keyCache:v17 error:&v132];
                          v87 = v132;

                          v113 = v87;
                          v110 = v86;
                          if (!v86 || v87)
                          {
                            v108 = [NSError errorWithDomain:@"CKKSErrorDomain" code:[(SecDbItem *)v87 code] description:@"Couldn't encrypt item" underlying:v87];
                            v99 = [v16 zoneName];
                            v100 = sub_100019104(@"ckksitem", v99);

                            v92 = v100;
                            v101 = os_log_type_enabled(v100, OS_LOG_TYPE_ERROR);
                            v27 = v130;
                            if (v101)
                            {
                              *buf = 138412547;
                              v139 = v108;
                              v140 = 2113;
                              v141 = a3;
                              v93 = "couldn't encrypt item: %@ %{private}@";
                              v94 = v92;
                              v95 = 22;
                              goto LABEL_109;
                            }
                          }

                          else
                          {
                            v88 = [v86 encitem];
                            v89 = [v88 length];

                            v106 = v89;
                            v90 = v89 >= 0x100000;
                            v27 = v130;
                            if (!v90)
                            {
                              v79 = v127;
                              v31 = [[CKKSOutgoingQueueEntry alloc] initWithCKKSItem:v110 action:v127 state:@"new" waitUntil:0 accessGroup:v32];
                              v15 = v131;
LABEL_113:

LABEL_116:
                              goto LABEL_117;
                            }

                            v108 = [NSError errorWithDomain:@"CKKSErrorDomain" code:65 description:@"Object size too large"];
                            v91 = [v16 zoneName];
                            oslog = sub_100019104(@"ckksitem", v91);

                            v92 = oslog;
                            if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
                            {
                              *buf = 134218499;
                              v139 = v106;
                              v140 = 2112;
                              v141 = v108;
                              v142 = 2113;
                              v143 = a3;
                              v93 = "Object Size (%lu bytes) too large: %@ %{private}@";
                              v94 = oslog;
                              v95 = 32;
LABEL_109:
                              _os_log_impl(&_mh_execute_header, v94, OS_LOG_TYPE_ERROR, v93, buf, v95);
                            }
                          }

                          v15 = v131;
                          v102 = v108;
                          if (a8)
                          {
                            v102 = v108;
                            *a8 = v102;
                          }

                          v31 = 0;
                          v79 = v127;
                          goto LABEL_113;
                        }

LABEL_95:
                        v112 = 0;
                        goto LABEL_96;
                      }

                      v127 = @"modify";
                      v66 = @"modify";
                      v65 = v63;
                    }

                    else
                    {
                      v127 = v63;
                    }

LABEL_65:

                    goto LABEL_66;
                  }

                  [v123 deleteFromDatabase:a8];
                }

                else
                {
                  if (v60)
                  {
                    v115 = v60;
                    v67 = [v16 zoneName];
                    v68 = sub_100019104(@"ckksitem", v67);

                    if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138412290;
                      v139 = v115;
                      _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_ERROR, "Unable to fetch an existing OQE due to error: %@", buf, 0xCu);
                    }

                    v65 = v115;
                    v114 = 0;
                    goto LABEL_65;
                  }

                  if (v124)
                  {
                    v114 = 0;
                    goto LABEL_67;
                  }

                  if (![(__CFString *)v127 isEqualToString:@"delete"])
                  {
                    v114 = 0;
                    goto LABEL_95;
                  }

                  v134 = 0;
                  v119 = [CKKSOutgoingQueueEntry tryFromDatabase:v27 contextID:v131 zoneID:v16 error:&v134];
                  v114 = v134;
                  if (v114)
                  {
                    v75 = [v16 zoneName];
                    v76 = sub_100019104(@"ckksitem", v75);

                    log = v76;
                    if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138412290;
                      v139 = v114;
                      _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_ERROR, "Unable to fetch an existing OQE (any state) due to error: %@", buf, 0xCu);
                    }

                    v112 = 0;
                    goto LABEL_92;
                  }

                  if (v119)
                  {
                    v112 = 0;
                    v114 = 0;
                    goto LABEL_93;
                  }

                  v103 = [v16 zoneName];
                  v104 = sub_100019104(@"ckksitem", v103);

                  v114 = v104;
                  if (os_log_type_enabled(v104, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412290;
                    v27 = v130;
                    v139 = v130;
                    _os_log_impl(&_mh_execute_header, v104, OS_LOG_TYPE_ERROR, "Asked to delete a record for which we don't have a CKME or any OQE, ignoring: %@", buf, 0xCu);
LABEL_89:
                    v31 = 0;
                    v15 = v131;
                    goto LABEL_90;
                  }
                }

                v31 = 0;
                v27 = v130;
                v15 = v131;
LABEL_90:
                v79 = v127;
LABEL_117:

LABEL_36:
                goto LABEL_37;
              }
            }

            else
            {
              v50 = v137;
            }

            Code = CFErrorGetCode(v50);
            v55 = v137;
            v126 = [NSError errorWithDomain:@"CKKSErrorDomain" code:Code description:@"accessgroup not found in object" underlying:v137];

            v56 = [v16 zoneName];
            v57 = sub_100019104(@"ckksitem", v56);

            if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412547;
              v139 = v126;
              v140 = 2113;
              v141 = a3;
              _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_ERROR, "couldn't fetch access group from item: %@ %{private}@", buf, 0x16u);
            }

            v27 = v130;
            v15 = v131;
            v58 = v126;
            if (a8)
            {
              v58 = v126;
              *a8 = v58;
            }

            v31 = 0;
            goto LABEL_36;
          }
        }

        else
        {
          v26 = v137;
        }

        v44 = [NSError errorWithDomain:@"CKKSErrorDomain" code:15 description:@"No UUID for item" underlying:v26];

        v45 = [v16 zoneName];
        v46 = sub_100019104(@"ckksitem", v45);

        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412547;
          v139 = v44;
          v140 = 2113;
          v141 = a3;
          _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_ERROR, "No UUID for item: %@ %{private}@", buf, 0x16u);
        }

        v15 = v131;
        if (a8)
        {
          v47 = v44;
          *a8 = v44;
        }

        v31 = 0;
        v32 = v129;
        v27 = v130;
        goto LABEL_36;
      }

      v40 = CFErrorGetCode(v137);
      v41 = v137;
      v32 = [NSError errorWithDomain:@"CKKSErrorDomain" code:v40 description:@"Couldn't create object plist" underlying:v137];

      v42 = [v16 zoneName];
      v34 = sub_100019104(@"ckksitem", v42);

      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412547;
        v139 = v32;
        v140 = 2113;
        v141 = a3;
        v35 = "no plist: %@ %{private}@";
        goto LABEL_24;
      }
    }

    if (a8)
    {
      v43 = v32;
      v27 = 0;
      v31 = 0;
      *a8 = v32;
    }

    else
    {
      v27 = 0;
      v31 = 0;
    }

    v15 = v131;
    goto LABEL_36;
  }

  v36 = [v16 zoneName];
  v37 = sub_100019104(@"ckksitem", v36);

  if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412547;
    v139 = v14;
    v140 = 2113;
    v141 = a3;
    _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "Rejecting (%@) outgoing queue entry creation for tombstone item: %{private}@", buf, 0x16u);
  }

  v38 = [NSError errorWithDomain:@"CKKSErrorDomain" code:65 description:@"Tombstone modification not allowed"];
  v20 = v38;
  if (a8)
  {
    v39 = v38;
    v31 = 0;
    *a8 = v20;
  }

  else
  {
    v31 = 0;
  }

LABEL_37:

  return v31;
}

+ (id)keyForItem:(SecDbItem *)a3 contextID:(id)a4 zoneID:(id)a5 keyCache:(id)a6 error:(id *)a7
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (a3)
  {
    v14 = sub_100015B5C(a3, kSecAttrAccessible);
    if ([v14 isEqualToString:kSecAttrAccessibleWhenUnlocked])
    {
      v15 = &off_100344678;
    }

    else
    {
      if (([v14 isEqualToString:kSecAttrAccessibleAlwaysPrivate] & 1) == 0 && (objc_msgSend(v14, "isEqualToString:", kSecAttrAccessibleAfterFirstUnlock) & 1) == 0)
      {
        v34 = [NSString stringWithFormat:@"can't pick key class for protection %@", v14];
        v19 = [NSError errorWithDomain:@"CKKSErrorDomain" code:17 description:v34];

        v35 = [v12 zoneName];
        v36 = sub_100019104(@"ckks-key", v35);

        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412547;
          v44 = v19;
          v45 = 2113;
          v46 = a3;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "can't pick key class: %@ %{private}@", buf, 0x16u);
        }

        if (a7)
        {
          v37 = v19;
          v18 = 0;
          *a7 = v19;
        }

        else
        {
          v18 = 0;
        }

        goto LABEL_35;
      }

      v15 = &off_100344860;
    }

    v39 = a7;
    v19 = *v15;
    if (v13)
    {
      v42 = 0;
      v20 = &v42;
      v21 = &v42;
      v22 = v13;
    }

    else
    {
      v22 = CKKSKey;
      v41 = 0;
      v20 = &v41;
      v21 = &v41;
    }

    v23 = [(__objc2_class *)v22 currentKeyForClass:v19 contextID:v11 zoneID:v12 error:v21];
    v24 = *v20;
    v25 = v24;
    if (!v23 || v24)
    {
      v28 = [v12 zoneName];
      v29 = sub_100019104(@"ckks-key", v28);

      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v44 = v19;
        v45 = 2112;
        v46 = v25;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "Couldn't find current key for %@: %@", buf, 0x16u);
      }

      if (v39)
      {
        v30 = v25;
        v18 = 0;
        *v39 = v25;
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v40 = 0;
      v26 = [(__CFString *)v23 ensureKeyLoadedForContextID:v11 cache:v13 error:&v40];
      v27 = v40;

      if (v26)
      {
        v18 = v23;
      }

      else
      {
        v31 = [v12 zoneName];
        v32 = sub_100019104(@"ckks-key", v31);

        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v44 = v23;
          v45 = 2112;
          v46 = v27;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "Couldn't load key(%@): %@", buf, 0x16u);
        }

        if (v39)
        {
          v33 = v27;
          v18 = 0;
          *v39 = v27;
        }

        else
        {
          v18 = 0;
        }
      }
    }

LABEL_35:
    goto LABEL_36;
  }

  v16 = [v12 zoneName];
  v17 = sub_100019104(@"ckks-key", v16);

  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Cannot select a key for no item!", buf, 2u);
  }

  if (a7)
  {
    [NSError errorWithDomain:@"CKKSErrorDomain" code:57 description:@"can't pick a key class for an empty item"];
    *a7 = v18 = 0;
  }

  else
  {
    v18 = 0;
  }

LABEL_36:

  return v18;
}

@end