@interface CKKSMirrorEntry
+ (id)allWithUUID:(id)d contextID:(id)iD error:(id *)error;
+ (id)countsByParentKeyWithContextID:(id)d zoneID:(id)iD error:(id *)error;
+ (id)countsByZoneNameWithContextID:(id)d error:(id *)error;
+ (id)countsWithContextID:(id)d zoneID:(id)iD error:(id *)error;
+ (id)fromDatabase:(id)database contextID:(id)d zoneID:(id)iD error:(id *)error;
+ (id)fromDatabaseRow:(id)row;
+ (id)pcsMirrorKeysForService:(id)service matchingKeys:(id)keys error:(id *)error;
+ (id)sqlColumns;
+ (id)tryFromDatabase:(id)database contextID:(id)d zoneID:(id)iD error:(id *)error;
- (BOOL)matchesCKRecord:(id)record checkServerFields:(BOOL)fields;
- (CKKSMirrorEntry)initWithCKKSItem:(id)item;
- (CKKSMirrorEntry)initWithCKRecord:(id)record contextID:(id)d;
- (NSString)uuid;
- (id)description;
- (id)sqlValues;
- (id)whereClauseToFindSelf;
- (void)setFromCKRecord:(id)record;
- (void)setUuid:(id)uuid;
@end

@implementation CKKSMirrorEntry

- (id)sqlValues
{
  item = [(CKKSMirrorEntry *)self item];
  sqlValues = [item sqlValues];
  v5 = [sqlValues mutableCopy];

  v6 = [NSNumber numberWithUnsignedLongLong:[(CKKSMirrorEntry *)self wasCurrent]];
  stringValue = [v6 stringValue];
  [v5 setObject:stringValue forKeyedSubscript:@"wascurrent"];

  return v5;
}

- (id)whereClauseToFindSelf
{
  item = [(CKKSMirrorEntry *)self item];
  whereClauseToFindSelf = [item whereClauseToFindSelf];

  return whereClauseToFindSelf;
}

- (void)setUuid:(id)uuid
{
  uuidCopy = uuid;
  item = [(CKKSMirrorEntry *)self item];
  [item setUuid:uuidCopy];
}

- (NSString)uuid
{
  item = [(CKKSMirrorEntry *)self item];
  uuid = [item uuid];

  return uuid;
}

- (BOOL)matchesCKRecord:(id)record checkServerFields:(BOOL)fields
{
  fieldsCopy = fields;
  recordCopy = record;
  item = [(CKKSMirrorEntry *)self item];
  v8 = [item matchesCKRecord:recordCopy];

  if (v8 && fieldsCopy)
  {
    v9 = [recordCopy objectForKeyedSubscript:@"server_wascurrent"];
    if (!v9 && ![(CKKSMirrorEntry *)self wasCurrent])
    {
      goto LABEL_6;
    }

    v10 = [recordCopy objectForKeyedSubscript:@"server_wascurrent"];
    v11 = [NSNumber numberWithUnsignedLongLong:[(CKKSMirrorEntry *)self wasCurrent]];
    v12 = [v10 isEqual:v11];

    if ((v12 & 1) == 0)
    {
      v13 = sub_100019104(@"ckksitem", 0);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        *v15 = 0;
        _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "was_current does not match", v15, 2u);
      }

      LOBYTE(v8) = 0;
    }

    else
    {
LABEL_6:
      LOBYTE(v8) = 1;
    }
  }

  return v8;
}

- (void)setFromCKRecord:(id)record
{
  recordCopy = record;
  item = [(CKKSMirrorEntry *)self item];
  [item setFromCKRecord:recordCopy];

  v6 = [recordCopy objectForKeyedSubscript:@"server_wascurrent"];

  self->_wasCurrent = [v6 unsignedLongLongValue];
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  item = [(CKKSMirrorEntry *)self item];
  contextID = [item contextID];
  item2 = [(CKKSMirrorEntry *)self item];
  zoneID = [item2 zoneID];
  zoneName = [zoneID zoneName];
  item3 = [(CKKSMirrorEntry *)self item];
  uuid = [item3 uuid];
  v12 = [NSString stringWithFormat:@"<%@[%@](%@): %@>", v4, contextID, zoneName, uuid];

  return v12;
}

- (CKKSMirrorEntry)initWithCKRecord:(id)record contextID:(id)d
{
  recordCopy = record;
  dCopy = d;
  v13.receiver = self;
  v13.super_class = CKKSMirrorEntry;
  v8 = [(CKKSMirrorEntry *)&v13 init];
  if (v8)
  {
    v9 = [[CKKSItem alloc] initWithCKRecord:recordCopy contextID:dCopy];
    item = v8->_item;
    v8->_item = v9;

    v11 = [recordCopy objectForKeyedSubscript:@"server_wascurrent"];
    v8->_wasCurrent = [v11 unsignedLongLongValue];
  }

  return v8;
}

- (CKKSMirrorEntry)initWithCKKSItem:(id)item
{
  itemCopy = item;
  v9.receiver = self;
  v9.super_class = CKKSMirrorEntry;
  v6 = [(CKKSMirrorEntry *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_item, item);
    v7->_wasCurrent = 0;
  }

  return v7;
}

+ (id)pcsMirrorKeysForService:(id)service matchingKeys:(id)keys error:(id *)error
{
  keysCopy = keys;
  serviceCopy = service;
  v10 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(keysCopy, "count")}];
  sqlTable = [self sqlTable];
  v21 = @"pcss";
  v22 = serviceCopy;
  v12 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100107A70;
  v18[3] = &unk_100337158;
  v19 = keysCopy;
  v13 = v10;
  v20 = v13;
  v14 = keysCopy;
  [CKKSSQLDatabaseObject queryDatabaseTable:sqlTable where:v12 columns:&off_100365910 groupBy:0 orderBy:&off_100365928 limit:0 processRow:v18 error:error];

  v15 = v20;
  v16 = v13;

  return v13;
}

+ (id)countsWithContextID:(id)d zoneID:(id)iD error:(id *)error
{
  dCopy = d;
  iDCopy = iD;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_100107D58;
  v26 = sub_100107D68;
  v27 = 0;
  sqlTable = [objc_opt_class() sqlTable];
  v28[0] = @"contextID";
  v10 = dCopy;
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = +[NSNull null];
  }

  v13 = v12;

  v29[0] = v13;
  v28[1] = @"ckzone";
  zoneName = [iDCopy zoneName];
  v15 = zoneName;
  if (zoneName)
  {
    v16 = zoneName;
  }

  else
  {
    v16 = +[NSNull null];
  }

  v17 = v16;

  v29[1] = v17;
  v18 = [NSDictionary dictionaryWithObjects:v29 forKeys:v28 count:2];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100107D70;
  v21[3] = &unk_100344498;
  v21[4] = &v22;
  [CKKSSQLDatabaseObject queryDatabaseTable:sqlTable where:v18 columns:&off_1003658F8 groupBy:0 orderBy:0 limit:-1 processRow:v21 error:error];

  v19 = v23[5];
  _Block_object_dispose(&v22, 8);

  return v19;
}

+ (id)countsByZoneNameWithContextID:(id)d error:(id *)error
{
  dCopy = d;
  v6 = objc_alloc_init(NSMutableDictionary);
  sqlTable = [objc_opt_class() sqlTable];
  v17 = @"contextID";
  v8 = dCopy;
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

  v18 = v11;
  v12 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100107F88;
  v15[3] = &unk_1003385E8;
  v13 = v6;
  v16 = v13;
  [CKKSSQLDatabaseObject queryDatabaseTable:sqlTable where:v12 columns:&off_1003658C8 groupBy:&off_1003658E0 orderBy:0 limit:-1 processRow:v15 error:error];

  return v13;
}

+ (id)countsByParentKeyWithContextID:(id)d zoneID:(id)iD error:(id *)error
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
  v21[2] = sub_100108248;
  v21[3] = &unk_1003385E8;
  v19 = v9;
  v22 = v19;
  [CKKSSQLDatabaseObject queryDatabaseTable:sqlTable where:v18 columns:&off_100365898 groupBy:&off_1003658B0 orderBy:0 limit:-1 processRow:v21 error:error];

  return v19;
}

+ (id)fromDatabaseRow:(id)row
{
  rowCopy = row;
  v4 = [CKKSMirrorEntry alloc];
  v5 = [CKKSItem fromDatabaseRow:rowCopy];
  v6 = [(CKKSMirrorEntry *)v4 initWithCKKSItem:v5];

  v7 = objc_alloc_init(NSNumberFormatter);
  v8 = [rowCopy objectForKeyedSubscript:@"wascurrent"];

  asString = [v8 asString];
  v10 = [v7 numberFromString:asString];
  -[CKKSMirrorEntry setWasCurrent:](v6, "setWasCurrent:", [v10 unsignedLongLongValue]);

  return v6;
}

+ (id)sqlColumns
{
  v2 = +[CKKSItem sqlColumns];
  v3 = [v2 arrayByAddingObjectsFromArray:&off_100365880];

  return v3;
}

+ (id)allWithUUID:(id)d contextID:(id)iD error:(id *)error
{
  dCopy = d;
  v20[0] = @"contextID";
  iDCopy = iD;
  v10 = iDCopy;
  if (iDCopy)
  {
    v11 = iDCopy;
  }

  else
  {
    v11 = +[NSNull null];
  }

  v12 = v11;

  v20[1] = @"UUID";
  v21[0] = v12;
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

  v21[1] = v16;
  v17 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:2];
  v18 = [self allWhere:v17 error:error];

  return v18;
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