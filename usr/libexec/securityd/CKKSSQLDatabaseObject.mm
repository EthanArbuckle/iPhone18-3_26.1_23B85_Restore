@interface CKKSSQLDatabaseObject
+ (BOOL)_deleteAll:(id *)a3;
+ (BOOL)deleteAll:(id *)a3;
+ (BOOL)deleteAllWithContextID:(id)a3 error:(id *)a4;
+ (BOOL)deleteAllWithContextID:(id)a3 zoneID:(id)a4 error:(id *)a5;
+ (BOOL)deleteFromTable:(id)a3 where:(id)a4 connection:(__OpaqueSecDbConnection *)a5 error:(id *)a6;
+ (BOOL)performCKKSTransaction:(id)a3;
+ (BOOL)queryDatabaseTable:(id)a3 where:(id)a4 columns:(id)a5 groupBy:(id)a6 orderBy:(id)a7 limit:(int64_t)a8 processRow:(id)a9 error:(id *)a10;
+ (BOOL)queryMaxValueForField:(id)a3 inTable:(id)a4 where:(id)a5 columns:(id)a6 processRow:(id)a7;
+ (BOOL)saveToDatabaseTable:(id)a3 row:(id)a4 connection:(__OpaqueSecDbConnection *)a5 error:(id *)a6;
+ (id)allParentKeyUUIDsInContextID:(id)a3 zoneID:(id)a4 error:(id *)a5;
+ (id)allUUIDsWithContextID:(id)a3 inZones:(id)a4 error:(id *)a5;
+ (id)allUUIDsWithContextID:(id)a3 zoneID:(id)a4 error:(id *)a5;
+ (id)allWhere:(id)a3 error:(id *)a4;
+ (id)allWithContextID:(id)a3 error:(id *)a4;
+ (id)allWithContextID:(id)a3 zoneID:(id)a4 error:(id *)a5;
+ (id)fetch:(unint64_t)a3 where:(id)a4 orderBy:(id)a5 error:(id *)a6;
+ (id)fromDatabaseRow:(id)a3;
+ (id)fromDatabaseWhere:(id)a3 error:(id *)a4;
+ (id)groupByClause:(id)a3;
+ (id)makeWhereClause:(id)a3;
+ (id)orderByClause:(id)a3;
+ (id)quotedString:(id)a3;
+ (id)sqlColumns;
+ (id)sqlTable;
+ (id)tryFromDatabaseWhere:(id)a3 error:(id *)a4;
+ (void)bindWhereClause:(sqlite3_stmt *)a3 whereDict:(id)a4 cferror:(__CFError *)a5;
- (BOOL)_deleteFromDatabase:(id *)a3;
- (BOOL)_saveToDatabaseWithConnection:(__OpaqueSecDbConnection *)a3 error:(id *)a4;
- (BOOL)deleteFromDatabase:(id *)a3;
- (BOOL)saveToDatabaseWithConnection:(__OpaqueSecDbConnection *)a3 error:(id *)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)memoizeOriginalSelfWhereClause;
- (id)sqlValues;
- (id)whereClauseToFindSelf;
@end

@implementation CKKSSQLDatabaseObject

- (id)memoizeOriginalSelfWhereClause
{
  v3 = [(CKKSSQLDatabaseObject *)self whereClauseToFindSelf];
  originalSelfWhereClause = self->_originalSelfWhereClause;
  self->_originalSelfWhereClause = v3;

  return self;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  objc_storeStrong(v4 + 1, self->_originalSelfWhereClause);
  return v4;
}

- (id)whereClauseToFindSelf
{
  v2 = NSStringFromSelector(a2);
  v3 = [NSString stringWithFormat:@"A subclass must override %@", v2];
  v4 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v3 userInfo:0];
  v5 = v4;

  objc_exception_throw(v4);
}

- (id)sqlValues
{
  v2 = NSStringFromSelector(a2);
  v3 = [NSString stringWithFormat:@"A subclass must override %@", v2];
  v4 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v3 userInfo:0];
  v5 = v4;

  objc_exception_throw(v4);
}

- (BOOL)_deleteFromDatabase:(id *)a3
{
  v5 = [objc_opt_class() sqlTable];
  v6 = [(CKKSSQLDatabaseObject *)self whereClauseToFindSelf];
  LOBYTE(a3) = [CKKSSQLDatabaseObject deleteFromTable:v5 where:v6 connection:0 error:a3];

  return a3;
}

- (BOOL)deleteFromDatabase:(id *)a3
{
  v5 = objc_autoreleasePoolPush();
  v10 = 0;
  v6 = [(CKKSSQLDatabaseObject *)self _deleteFromDatabase:&v10];
  v7 = v10;
  objc_autoreleasePoolPop(v5);
  if (a3)
  {
    v8 = v7;
    *a3 = v7;
  }

  return v6;
}

- (BOOL)_saveToDatabaseWithConnection:(__OpaqueSecDbConnection *)a3 error:(id *)a4
{
  v7 = [(CKKSSQLDatabaseObject *)self whereClauseToFindSelf];
  v8 = [(CKKSSQLDatabaseObject *)self originalSelfWhereClause];
  if (!v8)
  {
    goto LABEL_4;
  }

  v9 = v8;
  v10 = [(CKKSSQLDatabaseObject *)self originalSelfWhereClause];
  v11 = [v10 isEqualToDictionary:v7];

  if ((v11 & 1) != 0 || ([objc_opt_class() sqlTable], v12 = objc_claimAutoreleasedReturnValue(), -[CKKSSQLDatabaseObject originalSelfWhereClause](self, "originalSelfWhereClause"), v13 = objc_claimAutoreleasedReturnValue(), v14 = +[CKKSSQLDatabaseObject deleteFromTable:where:connection:error:](CKKSSQLDatabaseObject, "deleteFromTable:where:connection:error:", v12, v13, a3, a4), v13, v12, v14))
  {
LABEL_4:
    v15 = [objc_opt_class() sqlTable];
    v16 = [(CKKSSQLDatabaseObject *)self sqlValues];
    v17 = [CKKSSQLDatabaseObject saveToDatabaseTable:v15 row:v16 connection:a3 error:a4];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (BOOL)saveToDatabaseWithConnection:(__OpaqueSecDbConnection *)a3 error:(id *)a4
{
  v7 = objc_autoreleasePoolPush();
  v12 = 0;
  v8 = [(CKKSSQLDatabaseObject *)self _saveToDatabaseWithConnection:a3 error:&v12];
  v9 = v12;
  objc_autoreleasePoolPop(v7);
  if (a4)
  {
    v10 = v9;
    *a4 = v9;
  }

  return v8;
}

+ (id)sqlColumns
{
  v2 = NSStringFromSelector(a2);
  v3 = [NSString stringWithFormat:@"A subclass must override %@", v2];
  v4 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v3 userInfo:0];
  v5 = v4;

  objc_exception_throw(v4);
}

+ (id)sqlTable
{
  v2 = NSStringFromSelector(a2);
  v3 = [NSString stringWithFormat:@"A subclass must override %@", v2];
  v4 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v3 userInfo:0];
  v5 = v4;

  objc_exception_throw(v4);
}

+ (id)fromDatabaseRow:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(a2);
  v6 = [NSString stringWithFormat:@"A subclass must override %@", v5];
  v7 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

+ (id)fetch:(unint64_t)a3 where:(id)a4 orderBy:(id)a5 error:(id *)a6
{
  v10 = a4;
  v11 = a5;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_10009FDD4;
  v21 = sub_10009FDE4;
  v22 = objc_alloc_init(NSMutableArray);
  v12 = [a1 sqlTable];
  v13 = [a1 sqlColumns];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10009FDEC;
  v16[3] = &unk_1003363B8;
  v16[4] = &v17;
  v16[5] = a1;
  [CKKSSQLDatabaseObject queryDatabaseTable:v12 where:v10 columns:v13 groupBy:0 orderBy:v11 limit:a3 processRow:v16 error:a6];

  v14 = v18[5];
  _Block_object_dispose(&v17, 8);

  return v14;
}

+ (id)allWhere:(id)a3 error:(id *)a4
{
  v6 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_10009FDD4;
  v16 = sub_10009FDE4;
  v17 = objc_alloc_init(NSMutableArray);
  v7 = [a1 sqlTable];
  v8 = [a1 sqlColumns];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10009FFFC;
  v11[3] = &unk_1003363B8;
  v11[4] = &v12;
  v11[5] = a1;
  [CKKSSQLDatabaseObject queryDatabaseTable:v7 where:v6 columns:v8 groupBy:0 orderBy:0 limit:-1 processRow:v11 error:a4];

  v9 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v9;
}

+ (id)tryFromDatabaseWhere:(id)a3 error:(id *)a4
{
  v6 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_10009FDD4;
  v16 = sub_10009FDE4;
  v17 = 0;
  v7 = [a1 sqlTable];
  v8 = [a1 sqlColumns];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000A01EC;
  v11[3] = &unk_1003363B8;
  v11[4] = &v12;
  v11[5] = a1;
  [CKKSSQLDatabaseObject queryDatabaseTable:v7 where:v6 columns:v8 groupBy:0 orderBy:0 limit:-1 processRow:v11 error:a4];

  v9 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v9;
}

+ (id)fromDatabaseWhere:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [a1 tryFromDatabaseWhere:v6 error:a4];
  v8 = v7;
  if (a4 && !v7)
  {
    v12 = NSLocalizedDescriptionKey;
    v9 = [NSString stringWithFormat:@"%@ does not exist in database where %@", objc_opt_class(), v6];
    v13 = v9;
    v10 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    *a4 = [NSError errorWithDomain:@"securityd" code:-25300 userInfo:v10];
  }

  return v8;
}

+ (BOOL)_deleteAll:(id *)a3
{
  v4 = [a1 sqlTable];
  LOBYTE(a3) = [CKKSSQLDatabaseObject deleteFromTable:v4 where:0 connection:0 error:a3];

  return a3;
}

+ (BOOL)deleteAll:(id *)a3
{
  v5 = objc_autoreleasePoolPush();
  v10 = 0;
  v6 = [a1 _deleteAll:&v10];
  v7 = v10;
  objc_autoreleasePoolPop(v5);
  if (a3)
  {
    v8 = v7;
    *a3 = v7;
  }

  return v6;
}

+ (BOOL)performCKKSTransaction:(id)a3
{
  cf = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000A05C4;
  v8[3] = &unk_100336390;
  v3 = a3;
  v9 = v3;
  v4 = sub_100008A70(1, 1, 0, &cf, v8);
  if (cf)
  {
    v5 = sub_100019104(@"ckkssql", 0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v12 = cf;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "error performing database operation, major problems ahead: %@", buf, 0xCu);
    }

    v6 = cf;
    if (cf)
    {
      cf = 0;
      CFRelease(v6);
    }
  }

  return v4;
}

+ (BOOL)queryMaxValueForField:(id)a3 inTable:(id)a4 where:(id)a5 columns:(id)a6 processRow:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1000A091C;
  v24[3] = &unk_100336340;
  v31 = a1;
  v17 = v12;
  v25 = v17;
  v18 = v13;
  v26 = v18;
  v19 = v15;
  v27 = v19;
  v20 = v14;
  v28 = v20;
  v30 = &v32;
  v21 = v16;
  v29 = v21;
  sub_100008A70(0, 1, 0, &v35, v24);
  v22 = v33[3];
  if (v22)
  {
    v33[3] = 0;
    CFRelease(v22);
  }

  _Block_object_dispose(&v32, 8);
  return v22 == 0;
}

+ (id)quotedString:(id)a3
{
  v3 = a3;
  v4 = sqlite3_mprintf("%q", [v3 UTF8String]);
  if (!v4)
  {
    abort();
  }

  v5 = v4;
  v6 = [NSString stringWithUTF8String:v4];
  sqlite3_free(v5);

  return v6;
}

+ (BOOL)queryDatabaseTable:(id)a3 where:(id)a4 columns:(id)a5 groupBy:(id)a6 orderBy:(id)a7 limit:(int64_t)a8 processRow:(id)a9 error:(id *)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a9;
  context = objc_autoreleasePoolPush();
  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v45 = 0;
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_1000A112C;
  v32[3] = &unk_100336318;
  v22 = v18;
  v33 = v22;
  v23 = v17;
  v34 = v23;
  v24 = v19;
  v35 = v24;
  v25 = v20;
  v36 = v25;
  v40 = a8;
  v26 = v16;
  v37 = v26;
  v39 = &v42;
  v41 = a1;
  v27 = v21;
  v38 = v27;
  sub_100008A70(1, 1, 0, &v45, v32);
  v28 = v43[3];

  _Block_object_dispose(&v42, 8);
  objc_autoreleasePoolPop(context);
  if (a10)
  {
    v29 = v28;
    *a10 = v28;
  }

  return v28 == 0;
}

+ (BOOL)deleteFromTable:(id)a3 where:(id)a4 connection:(__OpaqueSecDbConnection *)a5 error:(id *)a6
{
  v10 = a3;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000A1758;
  v18[3] = &unk_100336278;
  v11 = a4;
  v19 = v11;
  v12 = v10;
  v20 = v12;
  v21 = &v23;
  v22 = a1;
  v13 = objc_retainBlock(v18);
  v14 = v13;
  if (a5)
  {
    (v13[2])(v13, a5);
  }

  else
  {
    sub_100008A70(1, 1, 0, (v24 + 3), v13);
  }

  v15 = v24[3];
  if (a6)
  {
    v16 = v15;
    *a6 = v15;
  }

  else if (v15)
  {
    v24[3] = 0;
    CFRelease(v15);
  }

  _Block_object_dispose(&v23, 8);
  return v15 == 0;
}

+ (void)bindWhereClause:(sqlite3_stmt *)a3 whereDict:(id)a4 cferror:(__CFError *)a5
{
  v7 = a4;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x2020000000;
  v16 = 1;
  v8 = [v7 allKeys];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000A19CC;
  v10[3] = &unk_100336208;
  v9 = v7;
  v11 = v9;
  v12 = v15;
  v13 = a3;
  v14 = a5;
  [v8 enumerateObjectsUsingBlock:v10];

  _Block_object_dispose(v15, 8);
}

+ (id)orderByClause:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && [v3 count])
  {
    v10[0] = 0;
    v10[1] = v10;
    v10[2] = 0x2020000000;
    v11 = 0;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000A1DE0;
    v7[3] = &unk_1003361E0;
    v9 = v10;
    v5 = objc_alloc_init(NSMutableString);
    v8 = v5;
    [v4 enumerateObjectsUsingBlock:v7];

    _Block_object_dispose(v10, 8);
  }

  else
  {
    v5 = &stru_100348050;
  }

  return v5;
}

+ (id)groupByClause:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v9[0] = 0;
    v9[1] = v9;
    v9[2] = 0x2020000000;
    v10 = 0;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000A1F70;
    v6[3] = &unk_1003361E0;
    v8 = v9;
    v4 = objc_alloc_init(NSMutableString);
    v7 = v4;
    [v3 enumerateObjectsUsingBlock:v6];

    _Block_object_dispose(v9, 8);
  }

  else
  {
    v4 = &stru_100348050;
  }

  return v4;
}

+ (id)makeWhereClause:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v9[0] = 0;
    v9[1] = v9;
    v9[2] = 0x2020000000;
    v10 = 0;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000A2100;
    v6[3] = &unk_1003361B8;
    v8 = v9;
    v4 = objc_alloc_init(NSMutableString);
    v7 = v4;
    [v3 enumerateKeysAndObjectsUsingBlock:v6];

    _Block_object_dispose(v9, 8);
  }

  else
  {
    v4 = &stru_100348050;
  }

  return v4;
}

+ (BOOL)saveToDatabaseTable:(id)a3 row:(id)a4 connection:(__OpaqueSecDbConnection *)a5 error:(id *)a6
{
  v9 = a3;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000A2604;
  v17[3] = &unk_100336190;
  v10 = a4;
  v18 = v10;
  v11 = v9;
  v19 = v11;
  v20 = &v21;
  v12 = objc_retainBlock(v17);
  v13 = v12;
  if (a5)
  {
    (v12[2])(v12, a5);
  }

  else
  {
    sub_100008A70(1, 1, 0, (v22 + 3), v12);
  }

  v14 = v22[3];
  if (a6)
  {
    v15 = v14;
    *a6 = v14;
  }

  else if (v14)
  {
    v22[3] = 0;
    CFRelease(v14);
  }

  _Block_object_dispose(&v21, 8);
  return v14 == 0;
}

+ (BOOL)deleteAllWithContextID:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [a1 sqlTable];
  v15 = @"contextID";
  v8 = v6;
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

  v16 = v11;
  v12 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
  v13 = [CKKSSQLDatabaseObject deleteFromTable:v7 where:v12 connection:0 error:a4];

  return v13;
}

+ (BOOL)deleteAllWithContextID:(id)a3 zoneID:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [a1 sqlTable];
  v21[0] = @"contextID";
  v11 = v8;
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

  v21[1] = @"ckzone";
  v22[0] = v14;
  v15 = [v9 zoneName];

  if (v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = +[NSNull null];
  }

  v17 = v16;

  v22[1] = v17;
  v18 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:2];
  v19 = [CKKSSQLDatabaseObject deleteFromTable:v10 where:v18 connection:0 error:a5];

  return v19;
}

+ (id)allWithContextID:(id)a3 error:(id *)a4
{
  v13 = @"contextID";
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = +[NSNull null];
  }

  v9 = v8;

  v14 = v9;
  v10 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v11 = [a1 allWhere:v10 error:a4];

  return v11;
}

+ (id)allWithContextID:(id)a3 zoneID:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v21[0] = @"contextID";
  v10 = v8;
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

  v21[1] = @"ckzone";
  v22[0] = v13;
  v14 = [v9 zoneName];
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

  v22[1] = v17;
  v18 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:2];
  v19 = [a1 allWhere:v18 error:a5];

  return v19;
}

+ (id)allParentKeyUUIDsInContextID:(id)a3 zoneID:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_1000C9840;
  v27 = sub_1000C9850;
  v28 = +[NSMutableSet set];
  v10 = [a1 sqlTable];
  v29[0] = @"contextID";
  v11 = v8;
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

  v30[0] = v14;
  v29[1] = @"ckzone";
  v15 = [v9 zoneName];
  v16 = v15;
  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = +[NSNull null];
  }

  v18 = v17;

  v30[1] = v18;
  v19 = [NSDictionary dictionaryWithObjects:v30 forKeys:v29 count:2];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1000C9858;
  v22[3] = &unk_100344498;
  v22[4] = &v23;
  [CKKSSQLDatabaseObject queryDatabaseTable:v10 where:v19 columns:&off_100365700 groupBy:0 orderBy:0 limit:-1 processRow:v22 error:a5];

  v20 = v24[5];
  _Block_object_dispose(&v23, 8);

  return v20;
}

+ (id)allUUIDsWithContextID:(id)a3 zoneID:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_1000C9840;
  v27 = sub_1000C9850;
  v28 = objc_alloc_init(NSMutableArray);
  v10 = [a1 sqlTable];
  v29[0] = @"contextID";
  v11 = v8;
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

  v30[0] = v14;
  v29[1] = @"ckzone";
  v15 = [v9 zoneName];
  v16 = v15;
  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = +[NSNull null];
  }

  v18 = v17;

  v30[1] = v18;
  v19 = [NSDictionary dictionaryWithObjects:v30 forKeys:v29 count:2];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1000C9B44;
  v22[3] = &unk_100344498;
  v22[4] = &v23;
  [CKKSSQLDatabaseObject queryDatabaseTable:v10 where:v19 columns:&off_1003656E8 groupBy:0 orderBy:0 limit:-1 processRow:v22 error:a5];

  v20 = v24[5];
  _Block_object_dispose(&v23, 8);

  return v20;
}

+ (id)allUUIDsWithContextID:(id)a3 inZones:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = sub_1000C9840;
  v34 = sub_1000C9850;
  v35 = +[NSMutableSet set];
  v10 = +[NSMutableArray array];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v11 = v9;
  v12 = [v11 countByEnumeratingWithState:&v26 objects:v38 count:16];
  if (v12)
  {
    v13 = *v27;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v27 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = [*(*(&v26 + 1) + 8 * i) zoneName];
        [v10 addObject:v15];
      }

      v12 = [v11 countByEnumeratingWithState:&v26 objects:v38 count:16];
    }

    while (v12);
  }

  v16 = [a1 sqlTable];
  v36[0] = @"contextID";
  v17 = v8;
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

  v36[1] = @"ckzone";
  v37[0] = v20;
  v21 = [[CKKSSQLWhereIn alloc] initWithValues:v10];
  v37[1] = v21;
  v22 = [NSDictionary dictionaryWithObjects:v37 forKeys:v36 count:2];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_1000C9EDC;
  v25[3] = &unk_100344498;
  v25[4] = &v30;
  [CKKSSQLDatabaseObject queryDatabaseTable:v16 where:v22 columns:&off_1003656D0 groupBy:0 orderBy:0 limit:-1 processRow:v25 error:a5];

  v23 = v31[5];
  _Block_object_dispose(&v30, 8);

  return v23;
}

@end