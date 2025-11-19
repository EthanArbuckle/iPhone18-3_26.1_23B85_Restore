@interface CKKSMirrorEntry
+ (id)allWithUUID:(id)a3 contextID:(id)a4 error:(id *)a5;
+ (id)countsByParentKeyWithContextID:(id)a3 zoneID:(id)a4 error:(id *)a5;
+ (id)countsByZoneNameWithContextID:(id)a3 error:(id *)a4;
+ (id)countsWithContextID:(id)a3 zoneID:(id)a4 error:(id *)a5;
+ (id)fromDatabase:(id)a3 contextID:(id)a4 zoneID:(id)a5 error:(id *)a6;
+ (id)fromDatabaseRow:(id)a3;
+ (id)pcsMirrorKeysForService:(id)a3 matchingKeys:(id)a4 error:(id *)a5;
+ (id)sqlColumns;
+ (id)tryFromDatabase:(id)a3 contextID:(id)a4 zoneID:(id)a5 error:(id *)a6;
- (BOOL)matchesCKRecord:(id)a3 checkServerFields:(BOOL)a4;
- (CKKSMirrorEntry)initWithCKKSItem:(id)a3;
- (CKKSMirrorEntry)initWithCKRecord:(id)a3 contextID:(id)a4;
- (NSString)uuid;
- (id)description;
- (id)sqlValues;
- (id)whereClauseToFindSelf;
- (void)setFromCKRecord:(id)a3;
- (void)setUuid:(id)a3;
@end

@implementation CKKSMirrorEntry

- (id)sqlValues
{
  v3 = [(CKKSMirrorEntry *)self item];
  v4 = [v3 sqlValues];
  v5 = [v4 mutableCopy];

  v6 = [NSNumber numberWithUnsignedLongLong:[(CKKSMirrorEntry *)self wasCurrent]];
  v7 = [v6 stringValue];
  [v5 setObject:v7 forKeyedSubscript:@"wascurrent"];

  return v5;
}

- (id)whereClauseToFindSelf
{
  v2 = [(CKKSMirrorEntry *)self item];
  v3 = [v2 whereClauseToFindSelf];

  return v3;
}

- (void)setUuid:(id)a3
{
  v4 = a3;
  v5 = [(CKKSMirrorEntry *)self item];
  [v5 setUuid:v4];
}

- (NSString)uuid
{
  v2 = [(CKKSMirrorEntry *)self item];
  v3 = [v2 uuid];

  return v3;
}

- (BOOL)matchesCKRecord:(id)a3 checkServerFields:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(CKKSMirrorEntry *)self item];
  v8 = [v7 matchesCKRecord:v6];

  if (v8 && v4)
  {
    v9 = [v6 objectForKeyedSubscript:@"server_wascurrent"];
    if (!v9 && ![(CKKSMirrorEntry *)self wasCurrent])
    {
      goto LABEL_6;
    }

    v10 = [v6 objectForKeyedSubscript:@"server_wascurrent"];
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

- (void)setFromCKRecord:(id)a3
{
  v4 = a3;
  v5 = [(CKKSMirrorEntry *)self item];
  [v5 setFromCKRecord:v4];

  v6 = [v4 objectForKeyedSubscript:@"server_wascurrent"];

  self->_wasCurrent = [v6 unsignedLongLongValue];
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(CKKSMirrorEntry *)self item];
  v6 = [v5 contextID];
  v7 = [(CKKSMirrorEntry *)self item];
  v8 = [v7 zoneID];
  v9 = [v8 zoneName];
  v10 = [(CKKSMirrorEntry *)self item];
  v11 = [v10 uuid];
  v12 = [NSString stringWithFormat:@"<%@[%@](%@): %@>", v4, v6, v9, v11];

  return v12;
}

- (CKKSMirrorEntry)initWithCKRecord:(id)a3 contextID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = CKKSMirrorEntry;
  v8 = [(CKKSMirrorEntry *)&v13 init];
  if (v8)
  {
    v9 = [[CKKSItem alloc] initWithCKRecord:v6 contextID:v7];
    item = v8->_item;
    v8->_item = v9;

    v11 = [v6 objectForKeyedSubscript:@"server_wascurrent"];
    v8->_wasCurrent = [v11 unsignedLongLongValue];
  }

  return v8;
}

- (CKKSMirrorEntry)initWithCKKSItem:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CKKSMirrorEntry;
  v6 = [(CKKSMirrorEntry *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_item, a3);
    v7->_wasCurrent = 0;
  }

  return v7;
}

+ (id)pcsMirrorKeysForService:(id)a3 matchingKeys:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v8, "count")}];
  v11 = [a1 sqlTable];
  v21 = @"pcss";
  v22 = v9;
  v12 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100107A70;
  v18[3] = &unk_100337158;
  v19 = v8;
  v13 = v10;
  v20 = v13;
  v14 = v8;
  [CKKSSQLDatabaseObject queryDatabaseTable:v11 where:v12 columns:&off_100365910 groupBy:0 orderBy:&off_100365928 limit:0 processRow:v18 error:a5];

  v15 = v20;
  v16 = v13;

  return v13;
}

+ (id)countsWithContextID:(id)a3 zoneID:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_100107D58;
  v26 = sub_100107D68;
  v27 = 0;
  v9 = [objc_opt_class() sqlTable];
  v28[0] = @"contextID";
  v10 = v7;
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
  v14 = [v8 zoneName];
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

  v29[1] = v17;
  v18 = [NSDictionary dictionaryWithObjects:v29 forKeys:v28 count:2];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100107D70;
  v21[3] = &unk_100344498;
  v21[4] = &v22;
  [CKKSSQLDatabaseObject queryDatabaseTable:v9 where:v18 columns:&off_1003658F8 groupBy:0 orderBy:0 limit:-1 processRow:v21 error:a5];

  v19 = v23[5];
  _Block_object_dispose(&v22, 8);

  return v19;
}

+ (id)countsByZoneNameWithContextID:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = objc_alloc_init(NSMutableDictionary);
  v7 = [objc_opt_class() sqlTable];
  v17 = @"contextID";
  v8 = v5;
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
  [CKKSSQLDatabaseObject queryDatabaseTable:v7 where:v12 columns:&off_1003658C8 groupBy:&off_1003658E0 orderBy:0 limit:-1 processRow:v15 error:a4];

  return v13;
}

+ (id)countsByParentKeyWithContextID:(id)a3 zoneID:(id)a4 error:(id *)a5
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
  v21[2] = sub_100108248;
  v21[3] = &unk_1003385E8;
  v19 = v9;
  v22 = v19;
  [CKKSSQLDatabaseObject queryDatabaseTable:v10 where:v18 columns:&off_100365898 groupBy:&off_1003658B0 orderBy:0 limit:-1 processRow:v21 error:a5];

  return v19;
}

+ (id)fromDatabaseRow:(id)a3
{
  v3 = a3;
  v4 = [CKKSMirrorEntry alloc];
  v5 = [CKKSItem fromDatabaseRow:v3];
  v6 = [(CKKSMirrorEntry *)v4 initWithCKKSItem:v5];

  v7 = objc_alloc_init(NSNumberFormatter);
  v8 = [v3 objectForKeyedSubscript:@"wascurrent"];

  v9 = [v8 asString];
  v10 = [v7 numberFromString:v9];
  -[CKKSMirrorEntry setWasCurrent:](v6, "setWasCurrent:", [v10 unsignedLongLongValue]);

  return v6;
}

+ (id)sqlColumns
{
  v2 = +[CKKSItem sqlColumns];
  v3 = [v2 arrayByAddingObjectsFromArray:&off_100365880];

  return v3;
}

+ (id)allWithUUID:(id)a3 contextID:(id)a4 error:(id *)a5
{
  v8 = a3;
  v20[0] = @"contextID";
  v9 = a4;
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = +[NSNull null];
  }

  v12 = v11;

  v20[1] = @"UUID";
  v21[0] = v12;
  v13 = v8;
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
  v18 = [a1 allWhere:v17 error:a5];

  return v18;
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