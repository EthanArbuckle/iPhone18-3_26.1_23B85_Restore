@interface CKKSSQLDatabaseObject
+ (BOOL)_deleteAll:(id *)all;
+ (BOOL)deleteAll:(id *)all;
+ (BOOL)deleteAllWithContextID:(id)d error:(id *)error;
+ (BOOL)deleteAllWithContextID:(id)d zoneID:(id)iD error:(id *)error;
+ (BOOL)deleteFromTable:(id)table where:(id)where connection:(__OpaqueSecDbConnection *)connection error:(id *)error;
+ (BOOL)performCKKSTransaction:(id)transaction;
+ (BOOL)queryDatabaseTable:(id)table where:(id)where columns:(id)columns groupBy:(id)by orderBy:(id)orderBy limit:(int64_t)limit processRow:(id)row error:(id *)self0;
+ (BOOL)queryMaxValueForField:(id)field inTable:(id)table where:(id)where columns:(id)columns processRow:(id)row;
+ (BOOL)saveToDatabaseTable:(id)table row:(id)row connection:(__OpaqueSecDbConnection *)connection error:(id *)error;
+ (id)allParentKeyUUIDsInContextID:(id)d zoneID:(id)iD error:(id *)error;
+ (id)allUUIDsWithContextID:(id)d inZones:(id)zones error:(id *)error;
+ (id)allUUIDsWithContextID:(id)d zoneID:(id)iD error:(id *)error;
+ (id)allWhere:(id)where error:(id *)error;
+ (id)allWithContextID:(id)d error:(id *)error;
+ (id)allWithContextID:(id)d zoneID:(id)iD error:(id *)error;
+ (id)fetch:(unint64_t)fetch where:(id)where orderBy:(id)by error:(id *)error;
+ (id)fromDatabaseRow:(id)row;
+ (id)fromDatabaseWhere:(id)where error:(id *)error;
+ (id)groupByClause:(id)clause;
+ (id)makeWhereClause:(id)clause;
+ (id)orderByClause:(id)clause;
+ (id)quotedString:(id)string;
+ (id)sqlColumns;
+ (id)sqlTable;
+ (id)tryFromDatabaseWhere:(id)where error:(id *)error;
+ (void)bindWhereClause:(sqlite3_stmt *)clause whereDict:(id)dict cferror:(__CFError *)cferror;
- (BOOL)_deleteFromDatabase:(id *)database;
- (BOOL)_saveToDatabaseWithConnection:(__OpaqueSecDbConnection *)connection error:(id *)error;
- (BOOL)deleteFromDatabase:(id *)database;
- (BOOL)saveToDatabaseWithConnection:(__OpaqueSecDbConnection *)connection error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)memoizeOriginalSelfWhereClause;
- (id)sqlValues;
- (id)whereClauseToFindSelf;
@end

@implementation CKKSSQLDatabaseObject

- (id)memoizeOriginalSelfWhereClause
{
  whereClauseToFindSelf = [(CKKSSQLDatabaseObject *)self whereClauseToFindSelf];
  originalSelfWhereClause = self->_originalSelfWhereClause;
  self->_originalSelfWhereClause = whereClauseToFindSelf;

  return self;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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

- (BOOL)_deleteFromDatabase:(id *)database
{
  sqlTable = [objc_opt_class() sqlTable];
  whereClauseToFindSelf = [(CKKSSQLDatabaseObject *)self whereClauseToFindSelf];
  LOBYTE(database) = [CKKSSQLDatabaseObject deleteFromTable:sqlTable where:whereClauseToFindSelf connection:0 error:database];

  return database;
}

- (BOOL)deleteFromDatabase:(id *)database
{
  v5 = objc_autoreleasePoolPush();
  v10 = 0;
  v6 = [(CKKSSQLDatabaseObject *)self _deleteFromDatabase:&v10];
  v7 = v10;
  objc_autoreleasePoolPop(v5);
  if (database)
  {
    v8 = v7;
    *database = v7;
  }

  return v6;
}

- (BOOL)_saveToDatabaseWithConnection:(__OpaqueSecDbConnection *)connection error:(id *)error
{
  whereClauseToFindSelf = [(CKKSSQLDatabaseObject *)self whereClauseToFindSelf];
  originalSelfWhereClause = [(CKKSSQLDatabaseObject *)self originalSelfWhereClause];
  if (!originalSelfWhereClause)
  {
    goto LABEL_4;
  }

  v9 = originalSelfWhereClause;
  originalSelfWhereClause2 = [(CKKSSQLDatabaseObject *)self originalSelfWhereClause];
  v11 = [originalSelfWhereClause2 isEqualToDictionary:whereClauseToFindSelf];

  if ((v11 & 1) != 0 || ([objc_opt_class() sqlTable], v12 = objc_claimAutoreleasedReturnValue(), -[CKKSSQLDatabaseObject originalSelfWhereClause](self, "originalSelfWhereClause"), v13 = objc_claimAutoreleasedReturnValue(), v14 = +[CKKSSQLDatabaseObject deleteFromTable:where:connection:error:](CKKSSQLDatabaseObject, "deleteFromTable:where:connection:error:", v12, v13, connection, error), v13, v12, v14))
  {
LABEL_4:
    sqlTable = [objc_opt_class() sqlTable];
    sqlValues = [(CKKSSQLDatabaseObject *)self sqlValues];
    v17 = [CKKSSQLDatabaseObject saveToDatabaseTable:sqlTable row:sqlValues connection:connection error:error];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (BOOL)saveToDatabaseWithConnection:(__OpaqueSecDbConnection *)connection error:(id *)error
{
  v7 = objc_autoreleasePoolPush();
  v12 = 0;
  v8 = [(CKKSSQLDatabaseObject *)self _saveToDatabaseWithConnection:connection error:&v12];
  v9 = v12;
  objc_autoreleasePoolPop(v7);
  if (error)
  {
    v10 = v9;
    *error = v9;
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

+ (id)fromDatabaseRow:(id)row
{
  rowCopy = row;
  v5 = NSStringFromSelector(a2);
  v6 = [NSString stringWithFormat:@"A subclass must override %@", v5];
  v7 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

+ (id)fetch:(unint64_t)fetch where:(id)where orderBy:(id)by error:(id *)error
{
  whereCopy = where;
  byCopy = by;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_10009FDD4;
  v21 = sub_10009FDE4;
  v22 = objc_alloc_init(NSMutableArray);
  sqlTable = [self sqlTable];
  sqlColumns = [self sqlColumns];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10009FDEC;
  v16[3] = &unk_1003363B8;
  v16[4] = &v17;
  v16[5] = self;
  [CKKSSQLDatabaseObject queryDatabaseTable:sqlTable where:whereCopy columns:sqlColumns groupBy:0 orderBy:byCopy limit:fetch processRow:v16 error:error];

  v14 = v18[5];
  _Block_object_dispose(&v17, 8);

  return v14;
}

+ (id)allWhere:(id)where error:(id *)error
{
  whereCopy = where;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_10009FDD4;
  v16 = sub_10009FDE4;
  v17 = objc_alloc_init(NSMutableArray);
  sqlTable = [self sqlTable];
  sqlColumns = [self sqlColumns];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10009FFFC;
  v11[3] = &unk_1003363B8;
  v11[4] = &v12;
  v11[5] = self;
  [CKKSSQLDatabaseObject queryDatabaseTable:sqlTable where:whereCopy columns:sqlColumns groupBy:0 orderBy:0 limit:-1 processRow:v11 error:error];

  v9 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v9;
}

+ (id)tryFromDatabaseWhere:(id)where error:(id *)error
{
  whereCopy = where;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_10009FDD4;
  v16 = sub_10009FDE4;
  v17 = 0;
  sqlTable = [self sqlTable];
  sqlColumns = [self sqlColumns];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000A01EC;
  v11[3] = &unk_1003363B8;
  v11[4] = &v12;
  v11[5] = self;
  [CKKSSQLDatabaseObject queryDatabaseTable:sqlTable where:whereCopy columns:sqlColumns groupBy:0 orderBy:0 limit:-1 processRow:v11 error:error];

  v9 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v9;
}

+ (id)fromDatabaseWhere:(id)where error:(id *)error
{
  whereCopy = where;
  v7 = [self tryFromDatabaseWhere:whereCopy error:error];
  v8 = v7;
  if (error && !v7)
  {
    v12 = NSLocalizedDescriptionKey;
    whereCopy = [NSString stringWithFormat:@"%@ does not exist in database where %@", objc_opt_class(), whereCopy];
    v13 = whereCopy;
    v10 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    *error = [NSError errorWithDomain:@"securityd" code:-25300 userInfo:v10];
  }

  return v8;
}

+ (BOOL)_deleteAll:(id *)all
{
  sqlTable = [self sqlTable];
  LOBYTE(all) = [CKKSSQLDatabaseObject deleteFromTable:sqlTable where:0 connection:0 error:all];

  return all;
}

+ (BOOL)deleteAll:(id *)all
{
  v5 = objc_autoreleasePoolPush();
  v10 = 0;
  v6 = [self _deleteAll:&v10];
  v7 = v10;
  objc_autoreleasePoolPop(v5);
  if (all)
  {
    v8 = v7;
    *all = v7;
  }

  return v6;
}

+ (BOOL)performCKKSTransaction:(id)transaction
{
  cf = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000A05C4;
  v8[3] = &unk_100336390;
  transactionCopy = transaction;
  v9 = transactionCopy;
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

+ (BOOL)queryMaxValueForField:(id)field inTable:(id)table where:(id)where columns:(id)columns processRow:(id)row
{
  fieldCopy = field;
  tableCopy = table;
  whereCopy = where;
  columnsCopy = columns;
  rowCopy = row;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1000A091C;
  v24[3] = &unk_100336340;
  selfCopy = self;
  v17 = fieldCopy;
  v25 = v17;
  v18 = tableCopy;
  v26 = v18;
  v19 = columnsCopy;
  v27 = v19;
  v20 = whereCopy;
  v28 = v20;
  v30 = &v32;
  v21 = rowCopy;
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

+ (id)quotedString:(id)string
{
  stringCopy = string;
  v4 = sqlite3_mprintf("%q", [stringCopy UTF8String]);
  if (!v4)
  {
    abort();
  }

  v5 = v4;
  v6 = [NSString stringWithUTF8String:v4];
  sqlite3_free(v5);

  return v6;
}

+ (BOOL)queryDatabaseTable:(id)table where:(id)where columns:(id)columns groupBy:(id)by orderBy:(id)orderBy limit:(int64_t)limit processRow:(id)row error:(id *)self0
{
  tableCopy = table;
  whereCopy = where;
  columnsCopy = columns;
  byCopy = by;
  orderByCopy = orderBy;
  rowCopy = row;
  context = objc_autoreleasePoolPush();
  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v45 = 0;
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_1000A112C;
  v32[3] = &unk_100336318;
  v22 = columnsCopy;
  v33 = v22;
  v23 = whereCopy;
  v34 = v23;
  v24 = byCopy;
  v35 = v24;
  v25 = orderByCopy;
  v36 = v25;
  limitCopy = limit;
  v26 = tableCopy;
  v37 = v26;
  v39 = &v42;
  selfCopy = self;
  v27 = rowCopy;
  v38 = v27;
  sub_100008A70(1, 1, 0, &v45, v32);
  v28 = v43[3];

  _Block_object_dispose(&v42, 8);
  objc_autoreleasePoolPop(context);
  if (error)
  {
    v29 = v28;
    *error = v28;
  }

  return v28 == 0;
}

+ (BOOL)deleteFromTable:(id)table where:(id)where connection:(__OpaqueSecDbConnection *)connection error:(id *)error
{
  tableCopy = table;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000A1758;
  v18[3] = &unk_100336278;
  whereCopy = where;
  v19 = whereCopy;
  v12 = tableCopy;
  v20 = v12;
  v21 = &v23;
  selfCopy = self;
  v13 = objc_retainBlock(v18);
  v14 = v13;
  if (connection)
  {
    (v13[2])(v13, connection);
  }

  else
  {
    sub_100008A70(1, 1, 0, (v24 + 3), v13);
  }

  v15 = v24[3];
  if (error)
  {
    v16 = v15;
    *error = v15;
  }

  else if (v15)
  {
    v24[3] = 0;
    CFRelease(v15);
  }

  _Block_object_dispose(&v23, 8);
  return v15 == 0;
}

+ (void)bindWhereClause:(sqlite3_stmt *)clause whereDict:(id)dict cferror:(__CFError *)cferror
{
  dictCopy = dict;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x2020000000;
  v16 = 1;
  allKeys = [dictCopy allKeys];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000A19CC;
  v10[3] = &unk_100336208;
  v9 = dictCopy;
  v11 = v9;
  v12 = v15;
  clauseCopy = clause;
  cferrorCopy = cferror;
  [allKeys enumerateObjectsUsingBlock:v10];

  _Block_object_dispose(v15, 8);
}

+ (id)orderByClause:(id)clause
{
  clauseCopy = clause;
  v4 = clauseCopy;
  if (clauseCopy && [clauseCopy count])
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

+ (id)groupByClause:(id)clause
{
  clauseCopy = clause;
  if (clauseCopy)
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
    [clauseCopy enumerateObjectsUsingBlock:v6];

    _Block_object_dispose(v9, 8);
  }

  else
  {
    v4 = &stru_100348050;
  }

  return v4;
}

+ (id)makeWhereClause:(id)clause
{
  clauseCopy = clause;
  if (clauseCopy)
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
    [clauseCopy enumerateKeysAndObjectsUsingBlock:v6];

    _Block_object_dispose(v9, 8);
  }

  else
  {
    v4 = &stru_100348050;
  }

  return v4;
}

+ (BOOL)saveToDatabaseTable:(id)table row:(id)row connection:(__OpaqueSecDbConnection *)connection error:(id *)error
{
  tableCopy = table;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000A2604;
  v17[3] = &unk_100336190;
  rowCopy = row;
  v18 = rowCopy;
  v11 = tableCopy;
  v19 = v11;
  v20 = &v21;
  v12 = objc_retainBlock(v17);
  v13 = v12;
  if (connection)
  {
    (v12[2])(v12, connection);
  }

  else
  {
    sub_100008A70(1, 1, 0, (v22 + 3), v12);
  }

  v14 = v22[3];
  if (error)
  {
    v15 = v14;
    *error = v14;
  }

  else if (v14)
  {
    v22[3] = 0;
    CFRelease(v14);
  }

  _Block_object_dispose(&v21, 8);
  return v14 == 0;
}

+ (BOOL)deleteAllWithContextID:(id)d error:(id *)error
{
  dCopy = d;
  sqlTable = [self sqlTable];
  v15 = @"contextID";
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

  v16 = v11;
  v12 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
  v13 = [CKKSSQLDatabaseObject deleteFromTable:sqlTable where:v12 connection:0 error:error];

  return v13;
}

+ (BOOL)deleteAllWithContextID:(id)d zoneID:(id)iD error:(id *)error
{
  dCopy = d;
  iDCopy = iD;
  sqlTable = [self sqlTable];
  v21[0] = @"contextID";
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

  v21[1] = @"ckzone";
  v22[0] = v14;
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

  v22[1] = v17;
  v18 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:2];
  v19 = [CKKSSQLDatabaseObject deleteFromTable:sqlTable where:v18 connection:0 error:error];

  return v19;
}

+ (id)allWithContextID:(id)d error:(id *)error
{
  v13 = @"contextID";
  dCopy = d;
  v7 = dCopy;
  if (dCopy)
  {
    v8 = dCopy;
  }

  else
  {
    v8 = +[NSNull null];
  }

  v9 = v8;

  v14 = v9;
  v10 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v11 = [self allWhere:v10 error:error];

  return v11;
}

+ (id)allWithContextID:(id)d zoneID:(id)iD error:(id *)error
{
  dCopy = d;
  iDCopy = iD;
  v21[0] = @"contextID";
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

  v21[1] = @"ckzone";
  v22[0] = v13;
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

  v22[1] = v17;
  v18 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:2];
  v19 = [self allWhere:v18 error:error];

  return v19;
}

+ (id)allParentKeyUUIDsInContextID:(id)d zoneID:(id)iD error:(id *)error
{
  dCopy = d;
  iDCopy = iD;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_1000C9840;
  v27 = sub_1000C9850;
  v28 = +[NSMutableSet set];
  sqlTable = [self sqlTable];
  v29[0] = @"contextID";
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

  v30[0] = v14;
  v29[1] = @"ckzone";
  zoneName = [iDCopy zoneName];
  v16 = zoneName;
  if (zoneName)
  {
    v17 = zoneName;
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
  [CKKSSQLDatabaseObject queryDatabaseTable:sqlTable where:v19 columns:&off_100365700 groupBy:0 orderBy:0 limit:-1 processRow:v22 error:error];

  v20 = v24[5];
  _Block_object_dispose(&v23, 8);

  return v20;
}

+ (id)allUUIDsWithContextID:(id)d zoneID:(id)iD error:(id *)error
{
  dCopy = d;
  iDCopy = iD;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_1000C9840;
  v27 = sub_1000C9850;
  v28 = objc_alloc_init(NSMutableArray);
  sqlTable = [self sqlTable];
  v29[0] = @"contextID";
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

  v30[0] = v14;
  v29[1] = @"ckzone";
  zoneName = [iDCopy zoneName];
  v16 = zoneName;
  if (zoneName)
  {
    v17 = zoneName;
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
  [CKKSSQLDatabaseObject queryDatabaseTable:sqlTable where:v19 columns:&off_1003656E8 groupBy:0 orderBy:0 limit:-1 processRow:v22 error:error];

  v20 = v24[5];
  _Block_object_dispose(&v23, 8);

  return v20;
}

+ (id)allUUIDsWithContextID:(id)d inZones:(id)zones error:(id *)error
{
  dCopy = d;
  zonesCopy = zones;
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
  v11 = zonesCopy;
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

        zoneName = [*(*(&v26 + 1) + 8 * i) zoneName];
        [v10 addObject:zoneName];
      }

      v12 = [v11 countByEnumeratingWithState:&v26 objects:v38 count:16];
    }

    while (v12);
  }

  sqlTable = [self sqlTable];
  v36[0] = @"contextID";
  v17 = dCopy;
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
  [CKKSSQLDatabaseObject queryDatabaseTable:sqlTable where:v22 columns:&off_1003656D0 groupBy:0 orderBy:0 limit:-1 processRow:v25 error:error];

  v23 = v31[5];
  _Block_object_dispose(&v30, 8);

  return v23;
}

@end