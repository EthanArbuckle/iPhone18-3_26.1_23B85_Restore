@interface CKKSOutgoingQueueEntry
+ (id)allInState:(id)state contextID:(id)d zoneID:(id)iD error:(id *)error;
+ (id)allWithUUID:(id)d states:(id)states contextID:(id)iD zoneID:(id)zoneID error:(id *)error;
+ (id)countsByStateWithContextID:(id)d zoneID:(id)iD error:(id *)error;
+ (id)fetch:(int64_t)fetch state:(id)state contextID:(id)d zoneID:(id)iD error:(id *)error;
+ (id)fromDatabase:(id)database state:(id)state contextID:(id)d zoneID:(id)iD error:(id *)error;
+ (id)fromDatabaseRow:(id)row;
+ (id)keyForItem:(SecDbItem *)item contextID:(id)d zoneID:(id)iD keyCache:(id)cache error:(id *)error;
+ (id)sqlColumns;
+ (id)tryFromDatabase:(id)database contextID:(id)d zoneID:(id)iD error:(id *)error;
+ (id)tryFromDatabase:(id)database state:(id)state contextID:(id)d zoneID:(id)iD error:(id *)error;
+ (id)withItem:(SecDbItem *)item action:(id)action contextID:(id)d zoneID:(id)iD keyCache:(id)cache error:(id *)error;
+ (int64_t)countByState:(id)state contextID:(id)d zoneID:(id)iD error:(id *)error;
- (BOOL)intransactionMarkAsError:(id)error viewState:(id)state error:(id *)a5;
- (BOOL)intransactionMoveToState:(id)state viewState:(id)viewState error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (CKKSOutgoingQueueEntry)initWithCKKSItem:(id)item action:(id)action state:(id)state waitUntil:(id)until accessGroup:(id)group;
- (NSString)contextID;
- (NSString)uuid;
- (id)description;
- (id)sqlValues;
- (id)whereClauseToFindSelf;
- (void)setUuid:(id)uuid;
@end

@implementation CKKSOutgoingQueueEntry

- (BOOL)intransactionMarkAsError:(id)error viewState:(id)state error:(id *)a5
{
  errorCopy = error;
  stateCopy = state;
  v10 = +[CKKSViewManager manager];
  uuid = [(CKKSOutgoingQueueEntry *)self uuid];
  v12 = [v10 claimCallbackForUUID:uuid];

  if (v12)
  {
    (v12)[2](v12, 0, errorCopy);
  }

  v18 = 0;
  [(CKKSSQLDatabaseObject *)self deleteFromDatabase:&v18];
  v13 = v18;
  if (v13)
  {
    zoneName = [stateCopy zoneName];
    v15 = sub_100019104(@"ckks", zoneName);

    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      selfCopy = self;
      v21 = 2112;
      v22 = errorCopy;
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

- (BOOL)intransactionMoveToState:(id)state viewState:(id)viewState error:(id *)error
{
  stateCopy = state;
  viewStateCopy = viewState;
  if ([(CKKSOutgoingQueueEntry *)stateCopy isEqualToString:@"deleted"])
  {
    v10 = +[CKKSViewManager manager];
    uuid = [(CKKSOutgoingQueueEntry *)self uuid];
    v12 = [v10 claimCallbackForUUID:uuid];

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
      zoneName = [viewStateCopy zoneName];
      v16 = sub_100019104(@"ckks", zoneName);

      if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
LABEL_18:

        goto LABEL_23;
      }

      *buf = 138412546;
      selfCopy4 = self;
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

  state = [(CKKSOutgoingQueueEntry *)self state];
  if ([state isEqualToString:@"inflight"])
  {
    v21 = [(CKKSOutgoingQueueEntry *)stateCopy isEqualToString:@"new"];

    if (v21)
    {
      uuid2 = [(CKKSOutgoingQueueEntry *)self uuid];
      item = [(CKKSOutgoingQueueEntry *)self item];
      contextID = [item contextID];
      zoneID = [viewStateCopy zoneID];
      v40 = 0;
      v12 = [CKKSOutgoingQueueEntry tryFromDatabase:uuid2 state:@"new" contextID:contextID zoneID:zoneID error:&v40];
      v26 = v40;

      if (v26)
      {
        zoneName2 = [viewStateCopy zoneName];
        v28 = sub_100019104(@"ckksoutgoing", zoneName2);

        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          selfCopy4 = v26;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Couldn't fetch an overwriting OQE, assuming one doesn't exist: %@", buf, 0xCu);
        }
      }

      else if (v12)
      {
        zoneName3 = [viewStateCopy zoneName];
        v33 = sub_100019104(@"ckksoutgoing", zoneName3);

        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          selfCopy4 = self;
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "New modification has come in behind inflight %@; dropping failed change", buf, 0xCu);
        }

        v39 = 0;
        [(CKKSOutgoingQueueEntry *)self intransactionMoveToState:@"deleted" viewState:viewStateCopy error:&v39];
        v34 = v39;
        if (v34)
        {
          v14 = v34;
          zoneName4 = [viewStateCopy zoneName];
          v16 = sub_100019104(@"ckksoutgoing", zoneName4);

          if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_18;
          }

          *buf = 138412290;
          selfCopy4 = v14;
          v17 = "Couldn't delete in-flight OQE: %@";
          v18 = v16;
          v19 = 12;
          goto LABEL_7;
        }

LABEL_32:

        v14 = 0;
        goto LABEL_33;
      }

      [(CKKSOutgoingQueueEntry *)self setState:stateCopy];
      v38 = v26;
      [(CKKSSQLDatabaseObject *)self saveToDatabase:&v38];
      v14 = v38;

      if (v14)
      {
        zoneName5 = [viewStateCopy zoneName];
        v16 = sub_100019104(@"ckks", zoneName5);

        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412802;
          selfCopy4 = self;
          v44 = 2112;
          v45 = stateCopy;
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

  [(CKKSOutgoingQueueEntry *)self setState:stateCopy];
  v37 = 0;
  [(CKKSSQLDatabaseObject *)self saveToDatabase:&v37];
  v14 = v37;
  if (!v14)
  {
    goto LABEL_33;
  }

  zoneName6 = [viewStateCopy zoneName];
  v12 = sub_100019104(@"ckks", zoneName6);

  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412802;
    selfCopy4 = self;
    v44 = 2112;
    v45 = stateCopy;
    v46 = 2112;
    v47 = v14;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Couldn't save %@ as %@: %@", buf, 0x20u);
  }

LABEL_23:

  if (error)
  {
    v31 = v14;
    *error = v14;
  }

LABEL_33:

  return v14 == 0;
}

- (id)sqlValues
{
  v3 = objc_alloc_init(NSISO8601DateFormatter);
  item = [(CKKSOutgoingQueueEntry *)self item];
  sqlValues = [item sqlValues];
  v6 = [sqlValues mutableCopy];

  action = [(CKKSOutgoingQueueEntry *)self action];
  [v6 setObject:action forKeyedSubscript:@"action"];

  state = [(CKKSOutgoingQueueEntry *)self state];
  [v6 setObject:state forKeyedSubscript:@"state"];

  waitUntil = [(CKKSOutgoingQueueEntry *)self waitUntil];
  if (!waitUntil || (v10 = waitUntil, -[CKKSOutgoingQueueEntry waitUntil](self, "waitUntil"), v11 = objc_claimAutoreleasedReturnValue(), [v3 stringFromDate:v11], v12 = objc_claimAutoreleasedReturnValue(), v11, v10, !v12))
  {
    v12 = +[NSNull null];
  }

  [v6 setObject:v12 forKeyedSubscript:@"waituntil"];

  accessgroup = [(CKKSOutgoingQueueEntry *)self accessgroup];
  [v6 setObject:accessgroup forKeyedSubscript:@"accessgroup"];

  return v6;
}

- (id)whereClauseToFindSelf
{
  v14[0] = @"contextID";
  item = [(CKKSOutgoingQueueEntry *)self item];
  contextID = [item contextID];

  if (contextID)
  {
    v5 = contextID;
  }

  else
  {
    v5 = +[NSNull null];
  }

  v6 = v5;

  v15[0] = v6;
  v14[1] = @"UUID";
  uuid = [(CKKSOutgoingQueueEntry *)self uuid];
  v15[1] = uuid;
  v14[2] = @"state";
  state = [(CKKSOutgoingQueueEntry *)self state];
  v15[2] = state;
  v14[3] = @"ckzone";
  item2 = [(CKKSOutgoingQueueEntry *)self item];
  zoneID = [item2 zoneID];
  zoneName = [zoneID zoneName];
  v15[3] = zoneName;
  v12 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:4];

  return v12;
}

- (void)setUuid:(id)uuid
{
  uuidCopy = uuid;
  item = [(CKKSOutgoingQueueEntry *)self item];
  [item setUuid:uuidCopy];
}

- (NSString)uuid
{
  item = [(CKKSOutgoingQueueEntry *)self item];
  uuid = [item uuid];

  return uuid;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    item = [(CKKSOutgoingQueueEntry *)self item];
    item2 = [v5 item];
    if (![item isEqual:item2])
    {
      v15 = 0;
LABEL_22:

      goto LABEL_23;
    }

    action = [(CKKSOutgoingQueueEntry *)self action];
    action2 = [v5 action];
    if (![action isEqual:action2])
    {
      v15 = 0;
LABEL_21:

      goto LABEL_22;
    }

    state = [(CKKSOutgoingQueueEntry *)self state];
    state2 = [v5 state];
    if (![state isEqual:state2])
    {
      v15 = 0;
LABEL_20:

      goto LABEL_21;
    }

    waitUntil = [(CKKSOutgoingQueueEntry *)self waitUntil];
    if (waitUntil || ([v5 waitUntil], (v19 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v25 = state2;
      waitUntil2 = [(CKKSOutgoingQueueEntry *)self waitUntil];
      waitUntil3 = [v5 waitUntil];
      v24 = waitUntil2;
      [waitUntil2 timeIntervalSinceDate:?];
      if (fabs(v14) >= 1.0)
      {
        v15 = 0;
        state2 = v25;
        goto LABEL_17;
      }

      v21 = waitUntil;
      v22 = state;
      v20 = 1;
      state2 = v25;
    }

    else
    {
      v21 = 0;
      v22 = state;
      v19 = 0;
      v20 = 0;
    }

    accessgroup = [(CKKSOutgoingQueueEntry *)self accessgroup];
    accessgroup2 = [v5 accessgroup];
    v15 = [accessgroup isEqual:accessgroup2];

    if (!v20)
    {
      waitUntil = v21;
      state = v22;
      if (v21)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    waitUntil = v21;
    state = v22;
LABEL_17:

    if (waitUntil)
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
  item = [(CKKSOutgoingQueueEntry *)self item];
  contextID = [item contextID];

  return contextID;
}

- (CKKSOutgoingQueueEntry)initWithCKKSItem:(id)item action:(id)action state:(id)state waitUntil:(id)until accessGroup:(id)group
{
  itemCopy = item;
  actionCopy = action;
  stateCopy = state;
  untilCopy = until;
  groupCopy = group;
  v21.receiver = self;
  v21.super_class = CKKSOutgoingQueueEntry;
  v17 = [(CKKSOutgoingQueueEntry *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_item, item);
    objc_storeStrong(&v18->_action, action);
    objc_storeStrong(&v18->_state, state);
    objc_storeStrong(&v18->_accessgroup, group);
    objc_storeStrong(&v18->_waitUntil, until);
  }

  return v18;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  contextID = [(CKKSOutgoingQueueEntry *)self contextID];
  item = [(CKKSOutgoingQueueEntry *)self item];
  zoneID = [item zoneID];
  zoneName = [zoneID zoneName];
  action = [(CKKSOutgoingQueueEntry *)self action];
  item2 = [(CKKSOutgoingQueueEntry *)self item];
  uuid = [item2 uuid];
  state = [(CKKSOutgoingQueueEntry *)self state];
  v13 = [NSString stringWithFormat:@"<%@[%@](%@): %@ %@ (%@)>", v4, contextID, zoneName, action, uuid, state];

  return v13;
}

+ (int64_t)countByState:(id)state contextID:(id)d zoneID:(id)iD error:(id *)error
{
  stateCopy = state;
  dCopy = d;
  iDCopy = iD;
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
  zoneName = [iDCopy zoneName];
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
  v24[2] = sub_1000CEDDC;
  v24[3] = &unk_100344498;
  v24[4] = &v25;
  [CKKSSQLDatabaseObject queryDatabaseTable:sqlTable where:v21 columns:&off_100365760 groupBy:0 orderBy:0 limit:-1 processRow:v24 error:error];

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
  v21[2] = sub_1000CF048;
  v21[3] = &unk_1003385E8;
  v19 = v9;
  v22 = v19;
  [CKKSSQLDatabaseObject queryDatabaseTable:sqlTable where:v18 columns:&off_100365730 groupBy:&off_100365748 orderBy:0 limit:-1 processRow:v21 error:error];

  return v19;
}

+ (id)fromDatabaseRow:(id)row
{
  rowCopy = row;
  v4 = [CKKSOutgoingQueueEntry alloc];
  v5 = [CKKSItem fromDatabaseRow:rowCopy];
  v6 = [rowCopy objectForKeyedSubscript:@"action"];
  asString = [v6 asString];
  v8 = [rowCopy objectForKeyedSubscript:@"state"];
  asString2 = [v8 asString];
  v10 = [rowCopy objectForKeyedSubscript:@"waituntil"];
  asISO8601Date = [v10 asISO8601Date];
  v12 = [rowCopy objectForKeyedSubscript:@"accessgroup"];

  asString3 = [v12 asString];
  v14 = [(CKKSOutgoingQueueEntry *)v4 initWithCKKSItem:v5 action:asString state:asString2 waitUntil:asISO8601Date accessGroup:asString3];

  return v14;
}

+ (id)sqlColumns
{
  v2 = +[CKKSItem sqlColumns];
  v3 = [v2 arrayByAddingObjectsFromArray:&off_100365718];

  return v3;
}

+ (id)allWithUUID:(id)d states:(id)states contextID:(id)iD zoneID:(id)zoneID error:(id *)error
{
  dCopy = d;
  statesCopy = states;
  iDCopy = iD;
  zoneIDCopy = zoneID;
  v32[0] = @"contextID";
  v14 = iDCopy;
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
  v18 = dCopy;
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
  v22 = [[CKKSSQLWhereIn alloc] initWithValues:statesCopy];
  v33[2] = v22;
  v32[3] = @"ckzone";
  zoneName = [zoneIDCopy zoneName];
  v24 = zoneName;
  if (zoneName)
  {
    v25 = zoneName;
  }

  else
  {
    v25 = +[NSNull null];
  }

  v26 = v25;

  v33[3] = v26;
  v27 = [NSDictionary dictionaryWithObjects:v33 forKeys:v32 count:4];
  v28 = [self allWhere:v27 error:error];

  return v28;
}

+ (id)allInState:(id)state contextID:(id)d zoneID:(id)iD error:(id *)error
{
  stateCopy = state;
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
  v28[1] = @"state";
  v17 = stateCopy;
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
  v26 = [self allWhere:v25 error:error];

  return v26;
}

+ (id)fetch:(int64_t)fetch state:(id)state contextID:(id)d zoneID:(id)iD error:(id *)error
{
  stateCopy = state;
  dCopy = d;
  iDCopy = iD;
  v13 = objc_alloc_init(NSISO8601DateFormatter);
  v35[0] = @"contextID";
  v14 = dCopy;
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
  v18 = stateCopy;
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
  zoneName = [iDCopy zoneName];

  v32 = v17;
  if (zoneName)
  {
    v23 = zoneName;
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
  v30 = [self fetch:fetch where:v29 error:error];

  return v30;
}

+ (id)tryFromDatabase:(id)database state:(id)state contextID:(id)d zoneID:(id)iD error:(id *)error
{
  databaseCopy = database;
  stateCopy = state;
  dCopy = d;
  iDCopy = iD;
  v35[0] = @"contextID";
  v14 = dCopy;
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
  v18 = databaseCopy;
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

  v36[2] = v25;
  v35[3] = @"ckzone";
  zoneName = [iDCopy zoneName];
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

  v36[3] = v29;
  v30 = [NSDictionary dictionaryWithObjects:v36 forKeys:v35 count:4];
  v31 = [self tryFromDatabaseWhere:v30 error:error];

  return v31;
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

+ (id)fromDatabase:(id)database state:(id)state contextID:(id)d zoneID:(id)iD error:(id *)error
{
  databaseCopy = database;
  stateCopy = state;
  dCopy = d;
  iDCopy = iD;
  v35[0] = @"contextID";
  v14 = dCopy;
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
  v18 = databaseCopy;
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

  v36[2] = v25;
  v35[3] = @"ckzone";
  zoneName = [iDCopy zoneName];
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

  v36[3] = v29;
  v30 = [NSDictionary dictionaryWithObjects:v36 forKeys:v35 count:4];
  v31 = [self fromDatabaseWhere:v30 error:error];

  return v31;
}

+ (id)withItem:(SecDbItem *)item action:(id)action contextID:(id)d zoneID:(id)iD keyCache:(id)cache error:(id *)error
{
  actionCopy = action;
  dCopy = d;
  iDCopy = iD;
  cacheCopy = cache;
  v137 = 0;
  zoneName = [iDCopy zoneName];
  v19 = sub_100019104(@"ckksitem", zoneName);

  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412547;
    itemCopy4 = actionCopy;
    v140 = 2113;
    itemCopy11 = item;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Creating a (%@) outgoing queue entry for: %{private}@", buf, 0x16u);
  }

  if (!sub_10001A700(item) || ([(SecDbItem *)actionCopy isEqual:@"delete"]& 1) != 0)
  {
    v136 = 0;
    v20 = [self keyForItem:item contextID:dCopy zoneID:iDCopy keyCache:cacheCopy error:&v136];
    v21 = v136;
    v22 = v21;
    v131 = dCopy;
    if (!v20 || v21)
    {
      v32 = +[NSError errorWithDomain:code:description:underlying:](NSError, "errorWithDomain:code:description:underlying:", @"CKKSErrorDomain", [v21 code], @"No key for item", v21);
      zoneName2 = [iDCopy zoneName];
      v34 = sub_100019104(@"ckksitem", zoneName2);

      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412547;
        itemCopy4 = v32;
        v140 = 2113;
        itemCopy11 = item;
        v35 = "no key for item: %@ %{private}@";
LABEL_24:
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, v35, buf, 0x16u);
      }
    }

    else
    {
      v23 = sub_10001B350(item, 0x10000, 0, &v137);
      if (v23)
      {
        v24 = v23;
        [(__CFDictionary *)v23 setObject:item->var1->var0 forKey:kSecClass];
        v25 = sub_100015BFC(item, &off_100343C98, &v137);
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
              zoneName3 = [iDCopy zoneName];
              v29 = sub_100019104(@"ckksitem", zoneName3);

              if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412547;
                itemCopy4 = v125;
                v140 = 2113;
                itemCopy11 = item;
                _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "couldn't fetch UUID: %@ %{private}@", buf, 0x16u);
              }

              dCopy = v131;
              v30 = v125;
              if (error)
              {
                v30 = v125;
                *error = v30;
              }

              v31 = 0;
              v32 = v129;
              goto LABEL_36;
            }

            v49 = sub_100015BFC(item, &off_100343C48, &v137);
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
                  zoneName4 = [iDCopy zoneName];
                  v52 = sub_100019104(@"ckksitem", zoneName4);

                  if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138477827;
                    itemCopy4 = item;
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

                v124 = [CKKSMirrorEntry tryFromDatabase:v27 contextID:v53 zoneID:iDCopy error:error];
                v127 = actionCopy;
                v135 = 0;
                v59 = [CKKSOutgoingQueueEntry tryFromDatabase:v27 state:@"new" contextID:v53 zoneID:iDCopy error:&v135];
                v60 = v135;
                v123 = v59;
                if (v59)
                {
                  v114 = v60;
                  action = [v59 action];
                  v62 = [action isEqual:@"add"];

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
                    action2 = [v123 action];
                    if ([action2 isEqual:@"delete"])
                    {
                      v128 = [(__CFString *)v127 isEqual:@"add"];

                      if (!v128)
                      {
                        v127 = v63;
LABEL_66:
                        if (v124)
                        {
LABEL_67:
                          item = [v124 item];
                          generationCount = [item generationCount];

                          v112 = generationCount;
                          if (!v123 && [(__CFString *)v127 isEqualToString:@"modify"])
                          {
                            item2 = [v124 item];
                            v133 = 0;
                            v71 = [CKKSItemEncrypter decryptItemToDictionary:item2 keyCache:cacheCopy error:&v133];
                            v72 = v133;
                            log = [v71 mutableCopy];

                            v116 = [(__CFString *)v129 mutableCopy];
                            v119 = v72;
                            if (v72)
                            {
                              zoneName5 = [iDCopy zoneName];
                              v74 = sub_100019104(@"ckksitem", zoneName5);

                              if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
                              {
                                *buf = 138412290;
                                itemCopy4 = v119;
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

                            zoneName6 = [iDCopy zoneName];
                            v78 = sub_100019104(@"ckksitem", zoneName6);

                            v27 = v130;
                            if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
                            {
                              *buf = 138412290;
                              itemCopy4 = v130;
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
                          uuid = [v20 uuid];
                          v85 = [(CKKSItem *)v83 initWithUUID:v130 parentKeyUUID:uuid contextID:v131 zoneID:iDCopy encodedCKRecord:0 encItem:0 wrappedkey:0 generationCount:v112 encver:2 plaintextPCSServiceIdentifier:loga plaintextPCSPublicKey:v120 plaintextPCSPublicIdentity:v117];

                          v111 = v85;
                          if (!v85)
                          {
                            v113 = [NSError errorWithDomain:@"CKKSErrorDomain" code:16 description:@"Couldn't create an item" underlying:0];
                            zoneName7 = [iDCopy zoneName];
                            v97 = sub_100019104(@"ckksitem", zoneName7);

                            if (os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
                            {
                              *buf = 138412547;
                              itemCopy4 = v113;
                              v140 = 2113;
                              itemCopy11 = item;
                              _os_log_impl(&_mh_execute_header, v97, OS_LOG_TYPE_ERROR, "couldn't create an item: %@ %{private}@", buf, 0x16u);
                            }

                            v27 = v130;
                            if (error)
                            {
                              v98 = v113;
                              v31 = 0;
                              *error = v113;
                            }

                            else
                            {
                              v31 = 0;
                            }

                            dCopy = v131;
                            v79 = v127;
                            goto LABEL_116;
                          }

                          item3 = [v124 item];
                          v132 = 0;
                          v86 = [CKKSItemEncrypter encryptCKKSItem:v85 dataDictionary:v129 updatingCKKSItem:item3 parentkey:v20 keyCache:cacheCopy error:&v132];
                          v87 = v132;

                          v113 = v87;
                          v110 = v86;
                          if (!v86 || v87)
                          {
                            v108 = [NSError errorWithDomain:@"CKKSErrorDomain" code:[(SecDbItem *)v87 code] description:@"Couldn't encrypt item" underlying:v87];
                            zoneName8 = [iDCopy zoneName];
                            v100 = sub_100019104(@"ckksitem", zoneName8);

                            v92 = v100;
                            v101 = os_log_type_enabled(v100, OS_LOG_TYPE_ERROR);
                            v27 = v130;
                            if (v101)
                            {
                              *buf = 138412547;
                              itemCopy4 = v108;
                              v140 = 2113;
                              itemCopy11 = item;
                              v93 = "couldn't encrypt item: %@ %{private}@";
                              v94 = v92;
                              v95 = 22;
                              goto LABEL_109;
                            }
                          }

                          else
                          {
                            encitem = [v86 encitem];
                            v89 = [encitem length];

                            v106 = v89;
                            v90 = v89 >= 0x100000;
                            v27 = v130;
                            if (!v90)
                            {
                              v79 = v127;
                              v31 = [[CKKSOutgoingQueueEntry alloc] initWithCKKSItem:v110 action:v127 state:@"new" waitUntil:0 accessGroup:v32];
                              dCopy = v131;
LABEL_113:

LABEL_116:
                              goto LABEL_117;
                            }

                            v108 = [NSError errorWithDomain:@"CKKSErrorDomain" code:65 description:@"Object size too large"];
                            zoneName9 = [iDCopy zoneName];
                            oslog = sub_100019104(@"ckksitem", zoneName9);

                            v92 = oslog;
                            if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
                            {
                              *buf = 134218499;
                              itemCopy4 = v106;
                              v140 = 2112;
                              itemCopy11 = v108;
                              v142 = 2113;
                              itemCopy7 = item;
                              v93 = "Object Size (%lu bytes) too large: %@ %{private}@";
                              v94 = oslog;
                              v95 = 32;
LABEL_109:
                              _os_log_impl(&_mh_execute_header, v94, OS_LOG_TYPE_ERROR, v93, buf, v95);
                            }
                          }

                          dCopy = v131;
                          v102 = v108;
                          if (error)
                          {
                            v102 = v108;
                            *error = v102;
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
                      action2 = v63;
                    }

                    else
                    {
                      v127 = v63;
                    }

LABEL_65:

                    goto LABEL_66;
                  }

                  [v123 deleteFromDatabase:error];
                }

                else
                {
                  if (v60)
                  {
                    v115 = v60;
                    zoneName10 = [iDCopy zoneName];
                    v68 = sub_100019104(@"ckksitem", zoneName10);

                    if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138412290;
                      itemCopy4 = v115;
                      _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_ERROR, "Unable to fetch an existing OQE due to error: %@", buf, 0xCu);
                    }

                    action2 = v115;
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
                  v119 = [CKKSOutgoingQueueEntry tryFromDatabase:v27 contextID:v131 zoneID:iDCopy error:&v134];
                  v114 = v134;
                  if (v114)
                  {
                    zoneName11 = [iDCopy zoneName];
                    v76 = sub_100019104(@"ckksitem", zoneName11);

                    log = v76;
                    if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138412290;
                      itemCopy4 = v114;
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

                  zoneName12 = [iDCopy zoneName];
                  v104 = sub_100019104(@"ckksitem", zoneName12);

                  v114 = v104;
                  if (os_log_type_enabled(v104, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412290;
                    v27 = v130;
                    itemCopy4 = v130;
                    _os_log_impl(&_mh_execute_header, v104, OS_LOG_TYPE_ERROR, "Asked to delete a record for which we don't have a CKME or any OQE, ignoring: %@", buf, 0xCu);
LABEL_89:
                    v31 = 0;
                    dCopy = v131;
                    goto LABEL_90;
                  }
                }

                v31 = 0;
                v27 = v130;
                dCopy = v131;
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

            zoneName13 = [iDCopy zoneName];
            v57 = sub_100019104(@"ckksitem", zoneName13);

            if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412547;
              itemCopy4 = v126;
              v140 = 2113;
              itemCopy11 = item;
              _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_ERROR, "couldn't fetch access group from item: %@ %{private}@", buf, 0x16u);
            }

            v27 = v130;
            dCopy = v131;
            v58 = v126;
            if (error)
            {
              v58 = v126;
              *error = v58;
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

        zoneName14 = [iDCopy zoneName];
        v46 = sub_100019104(@"ckksitem", zoneName14);

        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412547;
          itemCopy4 = v44;
          v140 = 2113;
          itemCopy11 = item;
          _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_ERROR, "No UUID for item: %@ %{private}@", buf, 0x16u);
        }

        dCopy = v131;
        if (error)
        {
          v47 = v44;
          *error = v44;
        }

        v31 = 0;
        v32 = v129;
        v27 = v130;
        goto LABEL_36;
      }

      v40 = CFErrorGetCode(v137);
      v41 = v137;
      v32 = [NSError errorWithDomain:@"CKKSErrorDomain" code:v40 description:@"Couldn't create object plist" underlying:v137];

      zoneName15 = [iDCopy zoneName];
      v34 = sub_100019104(@"ckksitem", zoneName15);

      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412547;
        itemCopy4 = v32;
        v140 = 2113;
        itemCopy11 = item;
        v35 = "no plist: %@ %{private}@";
        goto LABEL_24;
      }
    }

    if (error)
    {
      v43 = v32;
      v27 = 0;
      v31 = 0;
      *error = v32;
    }

    else
    {
      v27 = 0;
      v31 = 0;
    }

    dCopy = v131;
    goto LABEL_36;
  }

  zoneName16 = [iDCopy zoneName];
  v37 = sub_100019104(@"ckksitem", zoneName16);

  if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412547;
    itemCopy4 = actionCopy;
    v140 = 2113;
    itemCopy11 = item;
    _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "Rejecting (%@) outgoing queue entry creation for tombstone item: %{private}@", buf, 0x16u);
  }

  v38 = [NSError errorWithDomain:@"CKKSErrorDomain" code:65 description:@"Tombstone modification not allowed"];
  v20 = v38;
  if (error)
  {
    v39 = v38;
    v31 = 0;
    *error = v20;
  }

  else
  {
    v31 = 0;
  }

LABEL_37:

  return v31;
}

+ (id)keyForItem:(SecDbItem *)item contextID:(id)d zoneID:(id)iD keyCache:(id)cache error:(id *)error
{
  dCopy = d;
  iDCopy = iD;
  cacheCopy = cache;
  if (item)
  {
    v14 = sub_100015B5C(item, kSecAttrAccessible);
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

        zoneName = [iDCopy zoneName];
        v36 = sub_100019104(@"ckks-key", zoneName);

        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412547;
          v44 = v19;
          v45 = 2113;
          itemCopy = item;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "can't pick key class: %@ %{private}@", buf, 0x16u);
        }

        if (error)
        {
          v37 = v19;
          v18 = 0;
          *error = v19;
        }

        else
        {
          v18 = 0;
        }

        goto LABEL_35;
      }

      v15 = &off_100344860;
    }

    errorCopy = error;
    v19 = *v15;
    if (cacheCopy)
    {
      v42 = 0;
      v20 = &v42;
      v21 = &v42;
      v22 = cacheCopy;
    }

    else
    {
      v22 = CKKSKey;
      v41 = 0;
      v20 = &v41;
      v21 = &v41;
    }

    v23 = [(__objc2_class *)v22 currentKeyForClass:v19 contextID:dCopy zoneID:iDCopy error:v21];
    v24 = *v20;
    v25 = v24;
    if (!v23 || v24)
    {
      zoneName2 = [iDCopy zoneName];
      v29 = sub_100019104(@"ckks-key", zoneName2);

      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v44 = v19;
        v45 = 2112;
        itemCopy = v25;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "Couldn't find current key for %@: %@", buf, 0x16u);
      }

      if (errorCopy)
      {
        v30 = v25;
        v18 = 0;
        *errorCopy = v25;
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v40 = 0;
      v26 = [(__CFString *)v23 ensureKeyLoadedForContextID:dCopy cache:cacheCopy error:&v40];
      v27 = v40;

      if (v26)
      {
        v18 = v23;
      }

      else
      {
        zoneName3 = [iDCopy zoneName];
        v32 = sub_100019104(@"ckks-key", zoneName3);

        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v44 = v23;
          v45 = 2112;
          itemCopy = v27;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "Couldn't load key(%@): %@", buf, 0x16u);
        }

        if (errorCopy)
        {
          v33 = v27;
          v18 = 0;
          *errorCopy = v27;
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

  zoneName4 = [iDCopy zoneName];
  v17 = sub_100019104(@"ckks-key", zoneName4);

  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Cannot select a key for no item!", buf, 2u);
  }

  if (error)
  {
    [NSError errorWithDomain:@"CKKSErrorDomain" code:57 description:@"can't pick a key class for an empty item"];
    *error = v18 = 0;
  }

  else
  {
    v18 = 0;
  }

LABEL_36:

  return v18;
}

@end