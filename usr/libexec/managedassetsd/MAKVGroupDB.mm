@interface MAKVGroupDB
- (BOOL)addBaseStoreToTable:(id)table baseGroup:(id)group baseStore:(id)store baseProfile:(id)profile error:(id *)error;
- (BOOL)addTable:(id)table fields:(id)fields attributes:(id)attributes error:(id *)error;
- (BOOL)batchDeleteData:(id)data batchKeys:(id)keys error:(id *)error;
- (BOOL)batchQuery:(id)query batchKeys:(id)keys attributes:(id)attributes records:(id *)records error:(id *)error;
- (BOOL)deleteData:(id)data keys:(id)keys error:(id *)error;
- (BOOL)deleteTable:(id)table error:(id *)error;
- (BOOL)executePreparedStatement:(sqlite3_stmt *)statement error:(id *)error;
- (BOOL)fetchQueryResultFor:(sqlite3_stmt *)for prependColumnName:(BOOL)name results:(id)results numCol:(int *)col seenSet:(id)set error:(id *)error;
- (BOOL)getBaseStoreNameFor:(id)for baseGroup:(id *)group baseStore:(id *)store baseProfile:(id *)profile error:(id *)error;
- (BOOL)hasTableWithError:(id *)error;
- (BOOL)query:(id)query keys:(id)keys desiredKeys:(id)desiredKeys nonNullKeys:(id)nullKeys records:(id *)records error:(id *)error;
- (BOOL)tableExists:(id)exists error:(id *)error;
- (BOOL)updateData:(id)data key:(id)key value:(id)value tsOptions:(unint64_t)options error:(id *)error;
- (BOOL)upgradeTable:(id)table fields:(id)fields attributes:(id)attributes missingNewColumn:(id)column hasDeletedColumn:(id)deletedColumn migrateData:(BOOL *)data error:(id *)error;
- (BOOL)upsert:(id)upsert records:(id)records tsOptions:(unint64_t)options error:(id *)error;
- (BOOL)verifyTableName:(id)name error:(id *)error;
- (MAKVGroupDB)initWithFile:(id)file identifier:(id)identifier attributes:(id)attributes dbShouldExist:(BOOL)exist readOnly:(BOOL)only isBase:(BOOL)base error:(id *)error;
- (id)queryColumnNames:(id)names orignalColumnsOut:(id *)out error:(id *)error;
- (id)queryTablesWithError:(id *)error;
- (int)buildStatementWithKeyValues:(id)values nonNullKeys:(id)keys openingStatement:(id)statement placeHolderOffset:(int)offset preparedStatement:(sqlite3_stmt *)preparedStatement error:(id *)error;
- (int)execSqlStatement:(id)statement error:(id *)error rowReader:(id)reader;
- (void)close;
@end

@implementation MAKVGroupDB

- (MAKVGroupDB)initWithFile:(id)file identifier:(id)identifier attributes:(id)attributes dbShouldExist:(BOOL)exist readOnly:(BOOL)only isBase:(BOOL)base error:(id *)error
{
  onlyCopy = only;
  existCopy = exist;
  fileCopy = file;
  identifierCopy = identifier;
  attributesCopy = attributes;
  v49.receiver = self;
  v49.super_class = MAKVGroupDB;
  v17 = [(MAKVGroupDB *)&v49 init];
  if (v17)
  {
    v48 = onlyCopy;
    v18 = [fileCopy copy];
    p_dbPath = &v17->_dbPath;
    dbPath = v17->_dbPath;
    v17->_dbPath = v18;

    v21 = [identifierCopy copy];
    identifier = v17->_identifier;
    v17->_identifier = v21;

    v23 = +[NSFileManager defaultManager];
    v24 = [v23 fileExistsAtPath:v17->_dbPath];
    v25 = v24;
    if (v24)
    {
      [MAUtilityHelper validatePathMatchingRealpath:*p_dbPath error:error];
      if (!*error)
      {
        v47 = attributesCopy;
        v26 = 0;
        if (v48)
        {
          v27 = 1;
        }

        else
        {
          v27 = 2;
        }

        v17->_flags = v27;
LABEL_26:
        v35 = sqlite3_open_v2([(NSString *)v17->_dbPath fileSystemRepresentation], &v17->_db, v17->_flags, 0);
        if (v35)
        {
          v52 = ManagedAssetsSqliteErrorKey;
          v36 = [NSNumber numberWithInt:v35];
          v53 = v36;
          v37 = [NSDictionary dictionaryWithObjects:&v53 forKeys:&v52 count:1];
          v44 = *p_dbPath;
          *error = createManagedAssetError();

          if (os_log_type_enabled(off_100127CE8, OS_LOG_TYPE_ERROR))
          {
            sub_1000259D0(&v17->_dbPath);
          }
        }

        else if ((v25 & 1) != 0 || ([MAUtilityHelper validatePathMatchingRealpath:*p_dbPath error:error], !*error))
        {
          v39 = off_100127CE8;
          if (os_log_type_enabled(off_100127CE8, OS_LOG_TYPE_INFO))
          {
            v40 = *p_dbPath;
            *buf = 138412546;
            v55 = v40;
            v56 = 1024;
            v57 = v26;
            _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_INFO, "opened sqliteDb:%@ protflag:%u", buf, 0x12u);
          }

          attributesCopy = v47;
          if (v48 || (v41 = [(MAKVGroupDB *)v17 execSqlStatement:@"pragma journal_mode = WAL;" error:error rowReader:0], !v41))
          {
            v28 = v17;
            goto LABEL_30;
          }

          v50 = ManagedAssetsSqliteErrorKey;
          v42 = [NSNumber numberWithInt:v41];
          v51 = v42;
          v43 = [NSDictionary dictionaryWithObjects:&v51 forKeys:&v50 count:1];
          v45 = *p_dbPath;
          *error = createManagedAssetError();

          if (os_log_type_enabled(off_100127CE8, OS_LOG_TYPE_ERROR))
          {
            sub_10002595C(&v17->_dbPath);
          }
        }

        sqlite3_close(v17->_db);
        v28 = 0;
        attributesCopy = v47;
LABEL_30:

        goto LABEL_31;
      }
    }

    else if (existCopy)
    {
      *error = createManagedAssetError();
      if (os_log_type_enabled(off_100127CE8, OS_LOG_TYPE_ERROR))
      {
        sub_1000258F4(&v17->_dbPath);
      }
    }

    else
    {
      v17->_flags = 2;
      stringByDeletingLastPathComponent = [(NSString *)v17->_dbPath stringByDeletingLastPathComponent];
      if ([v23 fileExistsAtPath:stringByDeletingLastPathComponent] & 1) != 0 || (objc_msgSend(v23, "createDirectoryAtPath:withIntermediateDirectories:attributes:error:", stringByDeletingLastPathComponent, 1, 0, error))
      {
        [MAUtilityHelper validatePathMatchingRealpath:stringByDeletingLastPathComponent error:error];
        if (!*error)
        {
          v30 = [attributesCopy objectForKeyedSubscript:NSFileProtectionKey];
          v46 = v30;
          v47 = attributesCopy;
          if (v30 && (v31 = v30, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            if ([v31 isEqualToString:NSFileProtectionComplete])
            {
              v26 = 0x100000;
            }

            else if ([v31 isEqualToString:NSFileProtectionCompleteUnlessOpen])
            {
              v26 = 0x200000;
            }

            else if ([v31 isEqualToString:NSFileProtectionNone])
            {
              v26 = 0x400000;
            }

            else
            {
              v26 = 3145728;
            }
          }

          else
          {
            v26 = 3145728;
          }

          v17->_flags |= v26 | 4;
          v32 = off_100127CE8;
          if (os_log_type_enabled(off_100127CE8, OS_LOG_TYPE_INFO))
          {
            v33 = v17->_dbPath;
            flags = v17->_flags;
            *buf = 138412802;
            v55 = v33;
            v56 = 1024;
            v57 = flags;
            v58 = 2112;
            v59 = v46;
            _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "create sqliteDb:%@ with flag:%u protAttr=%@", buf, 0x1Cu);
          }

          goto LABEL_26;
        }
      }

      else
      {
        *error = createManagedAssetError();
      }
    }

    v28 = 0;
    goto LABEL_30;
  }

  v28 = 0;
LABEL_31:

  return v28;
}

- (void)close
{
  v3 = off_100127CE8;
  if (os_log_type_enabled(off_100127CE8, OS_LOG_TYPE_INFO))
  {
    dbPath = self->_dbPath;
    v12 = 138412290;
    v13 = dbPath;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "closing sqliteDb:%@", &v12, 0xCu);
  }

  v5 = sqlite3_close(self->_db);
  if (v5)
  {
    v6 = v5;
    v7 = off_100127CE8;
    if (os_log_type_enabled(off_100127CE8, OS_LOG_TYPE_ERROR))
    {
      v8 = self->_dbPath;
      db = self->_db;
      v10 = v7;
      v11 = sqlite3_errmsg(db);
      v12 = 138412802;
      v13 = v8;
      v14 = 1024;
      v15 = v6;
      v16 = 2080;
      v17 = v11;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "failed to sqlite3_close %@ errorCode:%d error:%s", &v12, 0x1Cu);
    }
  }

  self->_db = 0;
}

- (int)execSqlStatement:(id)statement error:(id *)error rowReader:(id)reader
{
  statementCopy = statement;
  readerCopy = reader;
  ppStmt = 0;
  v10 = sqlite3_prepare_v2(self->_db, [statementCopy UTF8String], objc_msgSend(statementCopy, "lengthOfBytesUsingEncoding:", 4), &ppStmt, 0);
  if (v10)
  {
    v11 = v10;
    if (os_log_type_enabled(off_100127CE8, OS_LOG_TYPE_ERROR))
    {
      sub_100025A44();
    }

    v39 = ManagedAssetsSqliteErrorKey;
    v12 = [NSNumber numberWithInt:v11];
    v40 = v12;
    v13 = [NSDictionary dictionaryWithObjects:&v40 forKeys:&v39 count:1];
    sqlite3_errmsg(self->_db);
    *error = createManagedAssetError();
  }

  else
  {
    while (1)
    {
      v14 = sqlite3_step(ppStmt);
      v15 = v14;
      if (!readerCopy || v14 != 100)
      {
        break;
      }

      if ((readerCopy[2](readerCopy, ppStmt) & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    if ((v14 - 102) <= 0xFFFFFFFD)
    {
      if (os_log_type_enabled(off_100127CE8, OS_LOG_TYPE_ERROR))
      {
        sub_100025AB8();
      }

      v37 = ManagedAssetsSqliteErrorKey;
      v16 = [NSNumber numberWithInt:v15];
      v38 = v16;
      v17 = [NSDictionary dictionaryWithObjects:&v38 forKeys:&v37 count:1];
      v26 = v15;
      v27 = sqlite3_errmsg(self->_db);
      v25 = statementCopy;
      *error = createManagedAssetError();
    }

LABEL_13:
    v11 = sqlite3_finalize(ppStmt);
    if (v11)
    {
      v18 = off_100127CE8;
      if (os_log_type_enabled(off_100127CE8, OS_LOG_TYPE_ERROR))
      {
        db = self->_db;
        v23 = v18;
        v24 = sqlite3_errmsg(db);
        *buf = 138412802;
        v32 = statementCopy;
        v33 = 1024;
        v34 = v11;
        v35 = 2080;
        v36 = v24;
        _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "failed to sqlite3_finalize stmt:%@ errorCode:%d error:%s", buf, 0x1Cu);
      }

      if (!*error)
      {
        v29 = ManagedAssetsSqliteErrorKey;
        v19 = [NSNumber numberWithInt:v11, v25, v26, v27];
        v30 = v19;
        v20 = [NSDictionary dictionaryWithObjects:&v30 forKeys:&v29 count:1];
        sqlite3_errmsg(self->_db);
        *error = createManagedAssetError();
      }
    }

    if (os_log_type_enabled(off_100127CE8, OS_LOG_TYPE_DEBUG))
    {
      sub_100025B2C(self);
    }
  }

  return v11;
}

- (id)queryColumnNames:(id)names orignalColumnsOut:(id *)out error:(id *)error
{
  namesCopy = names;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_10001E2EC;
  v28 = sub_10001E2FC;
  v29 = +[NSMutableArray array];
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_10001E2EC;
  v22 = sub_10001E2FC;
  v23 = +[NSMutableArray array];
  namesCopy = [NSString stringWithFormat:@"PRAGMA table_info(%@)", namesCopy];;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10001E304;
  v17[3] = &unk_100116160;
  v17[4] = &v24;
  v17[5] = &v18;
  v10 = [(MAKVGroupDB *)self execSqlStatement:namesCopy error:error rowReader:v17];
  v11 = off_100127CE8;
  if (v10)
  {
    if (os_log_type_enabled(off_100127CE8, OS_LOG_TYPE_ERROR))
    {
      v14 = *error;
      *buf = 138412802;
      v31 = namesCopy;
      v32 = 1024;
      *v33 = v10;
      *&v33[4] = 2112;
      *&v33[6] = v14;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "failed to query column names for table: %@ rc=%d error:%@", buf, 0x1Cu);
    }

    v12 = 0;
  }

  else
  {
    if (os_log_type_enabled(off_100127CE8, OS_LOG_TYPE_DEBUG))
    {
      identifier = self->_identifier;
      v16 = v25[5];
      *buf = 138412802;
      v31 = identifier;
      v32 = 2112;
      *v33 = namesCopy;
      *&v33[8] = 2112;
      *&v33[10] = v16;
      _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "db: %@ table: %@ has columns: %@", buf, 0x20u);
    }

    *out = v19[5];
    v12 = [NSSet setWithArray:v25[5]];
  }

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v24, 8);

  return v12;
}

- (BOOL)hasTableWithError:(id *)error
{
  v4 = [(MAKVGroupDB *)self queryTablesWithError:?];
  v5 = v4;
  v6 = *error || !v4 || [v4 count] && (objc_msgSend(v5, "count") != 1 || (objc_msgSend(v5, "containsObject:", @"__masd_meta") & 1) == 0);

  return v6;
}

- (id)queryTablesWithError:(id *)error
{
  v5 = [NSString stringWithFormat:@"SELECT name FROM sqlite_master WHERE type = 'table'"];;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_10001E2EC;
  v17 = sub_10001E2FC;
  v18 = +[NSMutableArray array];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10001E64C;
  v12[3] = &unk_100116188;
  v12[4] = &v13;
  v6 = [(MAKVGroupDB *)self execSqlStatement:v5 error:error rowReader:v12];
  v7 = off_100127CE8;
  if (v6)
  {
    if (os_log_type_enabled(off_100127CE8, OS_LOG_TYPE_ERROR))
    {
      v10 = v14[5];
      v11 = *error;
      *buf = 138412802;
      v20 = v10;
      v21 = 1024;
      v22 = v6;
      v23 = 2112;
      v24 = v11;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "failed to get table namess in groupDb: %@ rc=%d error:%@", buf, 0x1Cu);
    }

    v8 = 0;
  }

  else
  {
    if (os_log_type_enabled(off_100127CE8, OS_LOG_TYPE_DEBUG))
    {
      sub_100025BA0(self);
    }

    v8 = [NSSet setWithArray:v14[5]];
  }

  _Block_object_dispose(&v13, 8);

  return v8;
}

- (BOOL)upgradeTable:(id)table fields:(id)fields attributes:(id)attributes missingNewColumn:(id)column hasDeletedColumn:(id)deletedColumn migrateData:(BOOL *)data error:(id *)error
{
  tableCopy = table;
  fieldsCopy = fields;
  attributesCopy = attributes;
  columnCopy = column;
  deletedColumnCopy = deletedColumn;
  if (data)
  {
    v20 = *data;
    *data = 0;
  }

  else
  {
    v20 = 0;
  }

  v77 = 0;
  v21 = [(MAKVGroupDB *)self queryTablesWithError:&v77];
  v22 = v77;
  v23 = &selRef_queryInUseStatusWithAuditToken_completion_;
  v64 = v21;
  v65 = deletedColumnCopy;
  if (v22)
  {
    v24 = v22;
    v25 = 0;
    v26 = 0;
LABEL_6:
    v27 = columnCopy;
    if (os_log_type_enabled(v23[413], OS_LOG_TYPE_ERROR))
    {
      sub_100025C1C();
    }

    v28 = v24;
    v29 = 0;
    *error = v24;
    goto LABEL_9;
  }

  lowercaseString = [tableCopy lowercaseString];
  v32 = [v21 containsObject:lowercaseString];

  if (v32)
  {
    if (!(columnCopy | deletedColumnCopy))
    {
      v26 = 0;
      v25 = 0;
      v24 = 0;
      goto LABEL_25;
    }

    v75 = 0;
    v76 = 0;
    [(MAKVGroupDB *)self queryColumnNames:tableCopy orignalColumnsOut:&v76 error:&v75];
    v25 = selfCopy = self;
    v33 = v76;
    v34 = v75;
    if (v34)
    {
      v24 = v34;

      v26 = 0;
      v23 = &selRef_queryInUseStatusWithAuditToken_completion_;
      goto LABEL_6;
    }

    v62 = columnCopy;
    if (columnCopy)
    {
      lowercaseString2 = [columnCopy lowercaseString];
      LODWORD(columnCopy) = [v25 containsObject:lowercaseString2] ^ 1;
    }

    v42 = 0;
    if (deletedColumnCopy && !columnCopy)
    {
      [deletedColumnCopy lowercaseString];
      v44 = v43 = attributesCopy;
      v42 = [v25 containsObject:v44];

      attributesCopy = v43;
    }

    if ((columnCopy | v42) != 1)
    {
      v26 = 0;
      v24 = 0;
      v29 = 1;
      columnCopy = v62;
      goto LABEL_10;
    }

    v61 = attributesCopy;
    if (v20)
    {
      v60 = tableCopy;
      v45 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [fieldsCopy count]);
      v71 = 0u;
      v72 = 0u;
      v73 = 0u;
      v74 = 0u;
      v59 = fieldsCopy;
      v46 = fieldsCopy;
      v47 = [v46 countByEnumeratingWithState:&v71 objects:v80 count:16];
      if (v47)
      {
        v48 = v47;
        v49 = *v72;
        do
        {
          for (i = 0; i != v48; i = i + 1)
          {
            if (*v72 != v49)
            {
              objc_enumerationMutation(v46);
            }

            v51 = *(*(&v71 + 1) + 8 * i);
            if ([v51 count])
            {
              v52 = [v51 objectAtIndexedSubscript:0];
              lowercaseString3 = [v52 lowercaseString];
              v54 = [v25 containsObject:lowercaseString3];

              if (v54)
              {
                [v45 addObject:v52];
              }
            }
          }

          v48 = [v46 countByEnumeratingWithState:&v71 objects:v80 count:16];
        }

        while (v48);
      }

      v69 = 0;
      v70 = 0;
      tableCopy = v60;
      v55 = [(MAKVGroupDB *)selfCopy query:v60 keys:&__NSDictionary0__struct desiredKeys:v45 nonNullKeys:0 records:&v70 error:&v69];
      v26 = v70;
      v24 = v69;

      fieldsCopy = v59;
      columnCopy = v62;
      if (!v55)
      {
        attributesCopy = v61;
        goto LABEL_47;
      }
    }

    else
    {
      v26 = 0;
      v24 = 0;
      columnCopy = v62;
    }

    v57 = off_100127CE8;
    if (os_log_type_enabled(off_100127CE8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v79 = tableCopy;
      _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "deleting incompatible store %@, to be receated", buf, 0xCu);
    }

    v68 = v24;
    [(MAKVGroupDB *)selfCopy deleteTable:tableCopy error:&v68];
    v58 = v68;

    v24 = v58;
    attributesCopy = v61;
    v23 = &selRef_queryInUseStatusWithAuditToken_completion_;
    if (v58)
    {
      goto LABEL_6;
    }
  }

  else
  {
    selfCopy = self;
    v26 = 0;
    v25 = 0;
    v23 = &selRef_queryInUseStatusWithAuditToken_completion_;
  }

  v35 = v23[413];
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v79 = tableCopy;
    _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "creating store %@", buf, 0xCu);
  }

  v67 = 0;
  v36 = [(MAKVGroupDB *)selfCopy addTable:tableCopy fields:fieldsCopy attributes:attributesCopy error:&v67];
  v24 = v67;
  if (!v36)
  {
    goto LABEL_47;
  }

  if ([v26 count] < 2)
  {
LABEL_25:
    v29 = 1;
    goto LABEL_10;
  }

  v27 = columnCopy;
  v37 = attributesCopy;
  v38 = off_100127CE8;
  if (os_log_type_enabled(off_100127CE8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v79 = tableCopy;
    _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "migrating data for store %@", buf, 0xCu);
  }

  v66 = v24;
  v39 = [(MAKVGroupDB *)selfCopy upsert:tableCopy records:v26 tsOptions:0 error:&v66];
  v40 = v66;

  if (!v39)
  {
    v24 = v40;
    attributesCopy = v37;
    columnCopy = v27;
LABEL_47:
    v23 = &selRef_queryInUseStatusWithAuditToken_completion_;
    if (!v24)
    {
      v56 = createManagedAssetError();
      v23 = &selRef_queryInUseStatusWithAuditToken_completion_;
      v24 = v56;
    }

    goto LABEL_6;
  }

  v29 = 1;
  *data = 1;
  v24 = v40;
  attributesCopy = v37;
LABEL_9:
  columnCopy = v27;
LABEL_10:

  return v29;
}

- (BOOL)addTable:(id)table fields:(id)fields attributes:(id)attributes error:(id *)error
{
  tableCopy = table;
  fieldsCopy = fields;
  attributesCopy = attributes;
  v13 = off_100127CE8;
  if (os_log_type_enabled(off_100127CE8, OS_LOG_TYPE_DEBUG))
  {
    identifier = self->_identifier;
    *buf = 138413058;
    v72 = identifier;
    v73 = 2112;
    v74 = tableCopy;
    v75 = 2112;
    v76 = fieldsCopy;
    v77 = 2112;
    v78 = attributesCopy;
    _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "db: %@ start to add table name:%@ fields:%@ attributes:%@", buf, 0x2Au);
  }

  p_prots = &OBJC_PROTOCOL___CKRecordValue.prots;
  if ([qword_100129400 numberOfMatchesInString:tableCopy options:0 range:{0, objc_msgSend(tableCopy, "length")}])
  {
    if (os_log_type_enabled(off_100127CE8, OS_LOG_TYPE_ERROR))
    {
      sub_100025C98();
    }

    createManagedAssetError();
    *error = v15 = 0;
  }

  else
  {
    selfCopy = self;
    v59 = +[NSMutableArray array];
    v16 = +[NSMutableString string];
    v17 = +[NSMutableString string];
    if (fieldsCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v67 = 0u;
      v68 = 0u;
      v65 = 0u;
      v66 = 0u;
      obj = fieldsCopy;
      v60 = v16;
      v51 = v17;
      v54 = [obj countByEnumeratingWithState:&v65 objects:v70 count:16];
      if (v54)
      {
        v18 = &_s8CloudKit12CKSyncEngineC5EventO13AccountChangeV0G4TypeO6signInyAISo10CKRecordIDC_tcAImFWC_ptr;
        v56 = *v66;
        v50 = attributesCopy;
        v52 = tableCopy;
        v53 = fieldsCopy;
        while (2)
        {
          v19 = 0;
          do
          {
            if (*v66 != v56)
            {
              objc_enumerationMutation(obj);
            }

            v20 = *(*(&v65 + 1) + 8 * v19);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0 || [v20 count] <= 2)
            {
              *error = createManagedAssetError();
              attributesCopy = v50;
              goto LABEL_64;
            }

            errorCopy = error;
            v22 = v18;
            v23 = [v20 objectAtIndexedSubscript:0];
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_60;
            }

            if (-[__objc2_prot_list numberOfMatchesInString:options:range:](p_prots[128], "numberOfMatchesInString:options:range:", v23, 0, 0, [v23 length]))
            {
              if (os_log_type_enabled(off_100127CE8, OS_LOG_TYPE_ERROR))
              {
                sub_100025D00();
              }

LABEL_60:
              createManagedAssetError();
              attributesCopy = v50;
              *errorCopy = v17 = v51;

              fieldsCopy = v53;
LABEL_65:

              v15 = 0;
              goto LABEL_69;
            }

            v24 = [v20 objectAtIndexedSubscript:1];
            v25 = v18[81];
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              *errorCopy = createManagedAssetError();

              attributesCopy = v50;
              goto LABEL_63;
            }

            intValue = [v24 intValue];
            v27 = [v20 objectAtIndexedSubscript:2];
            v28 = v18[81];
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              *errorCopy = createManagedAssetError();

              attributesCopy = v50;
              v16 = v60;
LABEL_63:
              fieldsCopy = v53;
LABEL_64:
              v17 = v51;
              goto LABEL_65;
            }

            v29 = p_prots;
            intValue2 = [v27 intValue];
            if ((intValue2 & 2) != 0)
            {
              [v59 addObject:v23];
            }

            if ([v60 length])
            {
              [v60 appendString:{@", "}];
            }

            v31 = &stru_10011AC38;
            if (intValue - 1 <= 3)
            {
              v31 = *(&off_100116270 + intValue - 1);
            }

            v32 = &stru_10011AC38;
            v33 = @"NOT NULL";
            if ((intValue2 & 8) == 0)
            {
              v33 = &stru_10011AC38;
            }

            v34 = @"UNIQUE";
            if ((intValue2 & 4) == 0)
            {
              v34 = &stru_10011AC38;
            }

            if ((intValue2 & 0x10) != 0)
            {
              v32 = @"DEFAULT 0";
            }

            v16 = v60;
            [v60 appendFormat:@"%@ %@ %@ %@ %@", v23, v31, v33, v34, v32];
            if (intValue2)
            {
              if ([v51 length])
              {
                [v51 appendString:{@", "}];
              }

              [v51 appendString:v23];
            }

            v19 = v19 + 1;
            fieldsCopy = v53;
            p_prots = v29;
            tableCopy = v52;
            v18 = v22;
            error = errorCopy;
          }

          while (v54 != v19);
          attributesCopy = v50;
          v17 = v51;
          v54 = [obj countByEnumeratingWithState:&v65 objects:v70 count:16];
          if (v54)
          {
            continue;
          }

          break;
        }
      }

      if (![v17 length])
      {
        v49 = obj;
        *error = createManagedAssetError();
      }

      if (![v16 length])
      {
        *error = createManagedAssetError();
      }

      v35 = [NSString stringWithFormat:@"CREATE TABLE IF NOT EXISTS %@ (%@, PRIMARY KEY(%@))", tableCopy, v16, v17];;
      if ([(MAKVGroupDB *)selfCopy execSqlStatement:v35 error:error rowReader:&stru_1001161C8])
      {
        v15 = 0;
      }

      else
      {
        v57 = v35;
        v37 = v17;
        errorCopy2 = error;
        v39 = fieldsCopy;
        v40 = attributesCopy;
        v63 = 0u;
        v64 = 0u;
        v61 = 0u;
        v62 = 0u;
        v41 = v59;
        v42 = [v41 countByEnumeratingWithState:&v61 objects:v69 count:16];
        if (v42)
        {
          v43 = v42;
          v44 = *v62;
          while (2)
          {
            for (i = 0; i != v43; i = i + 1)
            {
              if (*v62 != v44)
              {
                objc_enumerationMutation(v41);
              }

              v46 = [NSString stringWithFormat:@"CREATE INDEX IF NOT EXISTS %@_masd_idx ON %@ (%@)", *(*(&v61 + 1) + 8 * i), tableCopy, *(*(&v61 + 1) + 8 * i)];;
              v47 = [(MAKVGroupDB *)selfCopy execSqlStatement:v46 error:errorCopy2 rowReader:&stru_1001161E8];

              if (v47)
              {

                v15 = 0;
                attributesCopy = v40;
                v16 = v60;
                v17 = v51;
                fieldsCopy = v39;
                goto LABEL_67;
              }

              v16 = v60;
            }

            v43 = [v41 countByEnumeratingWithState:&v61 objects:v69 count:16];
            v37 = v51;
            if (v43)
            {
              continue;
            }

            break;
          }
        }

        if (os_log_type_enabled(off_100127CE8, OS_LOG_TYPE_DEBUG))
        {
          sub_100025D68(selfCopy);
        }

        v15 = 1;
        attributesCopy = v40;
        fieldsCopy = v39;
        v17 = v37;
LABEL_67:
        v35 = v57;
      }
    }

    else
    {
      createManagedAssetError();
      *error = v15 = 0;
    }

LABEL_69:
  }

  return v15;
}

- (BOOL)addBaseStoreToTable:(id)table baseGroup:(id)group baseStore:(id)store baseProfile:(id)profile error:(id *)error
{
  tableCopy = table;
  groupCopy = group;
  storeCopy = store;
  profileCopy = profile;
  if ([(MAKVGroupDB *)self tableExists:@"__masd_meta" error:error])
  {
    goto LABEL_6;
  }

  v16 = [(MAKVGroupDB *)self execSqlStatement:@"CREATE TABLE IF NOT EXISTS __masd_meta (tablename TEXT PRIMARY KEY error:basegroup TEXT rowReader:basestore TEXT, baseprofile TEXT);", error, &stru_100116208];
  if (!v16)
  {
    if (os_log_type_enabled(off_100127CE8, OS_LOG_TYPE_DEBUG))
    {
      sub_100025DE8(self);
      if (profileCopy)
      {
        goto LABEL_7;
      }

      goto LABEL_10;
    }

LABEL_6:
    if (profileCopy)
    {
LABEL_7:
      v18 = profileCopy;
LABEL_11:
      v19 = v18;
      v24[3] = v18;
      v25[0] = &off_10011E4A0;
      v24[0] = tableCopy;
      v24[1] = groupCopy;
      v24[2] = storeCopy;
      v21 = [NSArray arrayWithObjects:v24 count:4];
      v25[1] = v21;
      v20 = [NSArray arrayWithObjects:v25 count:2];

      v17 = [(MAKVGroupDB *)self upsert:@"__masd_meta" records:v20 tsOptions:0 error:error];
      goto LABEL_12;
    }

LABEL_10:
    v18 = +[NSNull null];
    goto LABEL_11;
  }

  if (!*error)
  {
    v26 = ManagedAssetsSqliteErrorKey;
    v19 = [NSNumber numberWithInt:v16];
    v27 = v19;
    v20 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    dbPath = self->_dbPath;
    createManagedAssetError();
    *error = v17 = 0;
LABEL_12:

    goto LABEL_13;
  }

  v17 = 0;
LABEL_13:

  return v17;
}

- (BOOL)getBaseStoreNameFor:(id)for baseGroup:(id *)group baseStore:(id *)store baseProfile:(id *)profile error:(id *)error
{
  forCopy = for;
  if ([(MAKVGroupDB *)self tableExists:@"__masd_meta" error:error])
  {
    v22 = @"tablename";
    v23 = forCopy;
    v13 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    v21 = 0;
    [(MAKVGroupDB *)self query:@"__masd_meta" keys:v13 desiredKeys:0 nonNullKeys:0 records:&v21 error:error];
    v14 = v21;

    v15 = [v14 count];
    v16 = v15 == 2;
    if (v15 == 2)
    {
      v17 = [v14 objectAtIndexedSubscript:1];
      *group = [v17 objectAtIndexedSubscript:1];

      v18 = [v14 objectAtIndexedSubscript:1];
      *store = [v18 objectAtIndexedSubscript:2];

      v19 = [v14 objectAtIndexedSubscript:1];
      *profile = [v19 objectAtIndexedSubscript:3];
    }

    else
    {
      *group = 0;
      *store = 0;
      *profile = 0;
    }
  }

  else
  {
    v16 = 0;
    *group = 0;
    *store = 0;
    *profile = 0;
  }

  return v16;
}

- (BOOL)upsert:(id)upsert records:(id)records tsOptions:(unint64_t)options error:(id *)error
{
  upsertCopy = upsert;
  recordsCopy = records;
  v10 = off_100127CE8;
  if (os_log_type_enabled(off_100127CE8, OS_LOG_TYPE_DEBUG))
  {
    identifier = self->_identifier;
    *buf = 136316162;
    v120 = "[MAKVGroupDB upsert:records:tsOptions:error:]";
    v121 = 2112;
    *v122 = identifier;
    *&v122[8] = 2112;
    *&v122[10] = upsertCopy;
    *&v122[18] = 2112;
    *&v122[20] = recordsCopy;
    v123 = 2048;
    optionsCopy = options;
    _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "%s db: %@ name:%@ values:%@ tsOptions:%lu", buf, 0x34u);
  }

  v11 = [recordsCopy count];
  if (v11 <= 1)
  {
    createManagedAssetError();
    *error = v12 = 0;
    goto LABEL_73;
  }

  v88 = v11;
  v13 = +[NSMutableString string];
  v14 = +[NSMutableString string];
  selfCopy = self;
  if ((options & 7) != 0)
  {
    v15 = +[NSDate date];
    [v15 timeIntervalSinceReferenceDate];
    v16 = [NSNumber numberWithDouble:?];
  }

  else
  {
    v16 = 0;
  }

  v91 = upsertCopy;
  v93 = v16;
  v104 = v13;
  v89 = recordsCopy;
  v17 = [recordsCopy objectAtIndexedSubscript:0];
  v95 = [v17 count];
  v108 = 0u;
  v109 = 0u;
  v110 = 0u;
  v111 = 0u;
  obj = v17;
  v18 = [obj countByEnumeratingWithState:&v108 objects:v118 count:16];
  v103 = v14;
  if (v18)
  {
    v19 = v18;
    v20 = 0;
    v21 = *v109;
    v99 = kMAKVCol_updatedDate;
    v100 = kMAKVCol_createdDate;
    v22 = -1;
    v23 = -1;
    do
    {
      v24 = 0;
      v97 = v20;
      do
      {
        if (*v109 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v25 = *(*(&v108 + 1) + 8 * v24);
        if ([v14 length])
        {
          [v14 appendString:{@", "}];
          [v104 appendString:{@", "}];
        }

        [v14 appendString:v25];
        [v104 appendString:@"?"];
        if ((options & 1) != 0 && [v100 isEqual:v25])
        {
          v23 = v20;
        }

        v14 = v103;
        if ((options & 2) != 0 && [v99 isEqual:v25])
        {
          v22 = v20;
        }

        ++v20;
        v24 = v24 + 1;
      }

      while (v19 != v24);
      v20 = v97 + v19;
      v19 = [obj countByEnumeratingWithState:&v108 objects:v118 count:16];
    }

    while (v19);
  }

  else
  {
    v20 = 0;
    v22 = -1;
    v23 = -1;
  }

  if (options)
  {
    upsertCopy = v91;
    v26 = v93;
    selfCopy2 = self;
    if (v23 < 0)
    {
      v28 = v104;
      if ([v14 length])
      {
        [v14 appendString:{@", "}];
        [v104 appendString:{@", "}];
      }

      [v14 appendString:kMAKVCol_createdDate];
      [v104 appendString:@"?"];
      v101 = v20 + 1;
    }

    else
    {
      v101 = v20;
      v20 = v23;
      v28 = v104;
    }
  }

  else
  {
    v101 = v20;
    v20 = v23;
    upsertCopy = v91;
    v26 = v93;
    v28 = v104;
    selfCopy2 = selfCopy;
  }

  if ((options & 2) != 0 && v22 < 0)
  {
    if ([v14 length])
    {
      [v14 appendString:{@", "}];
      [v28 appendString:{@", "}];
    }

    v29 = v20;
    [v14 appendString:kMAKVCol_updatedDate];
    [v28 appendString:@"?"];
    v98 = v101 + 1;
  }

  else
  {
    v29 = v20;
    v98 = v101;
    v101 = v22;
  }

  recordsCopy = v89;
  v30 = +[NSMutableString string];
  [v30 appendFormat:@"INSERT OR REPLACE INTO %@(%@) VALUES(%@);", upsertCopy, v14, v28];
  v31 = off_100127CE8;
  if (os_log_type_enabled(off_100127CE8, OS_LOG_TYPE_INFO))
  {
    v32 = v30;
    v33 = selfCopy2->_identifier;
    v34 = v31;
    v35 = [v32 length];
    *buf = 138412802;
    v120 = v33;
    v30 = v32;
    v121 = 2048;
    *v122 = v35;
    *&v122[8] = 2112;
    *&v122[10] = v32;
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "db: %@ generated upsert stmt-size:%lu stmt:%@", buf, 0x20u);
  }

  ppStmt = 0;
  v36 = sqlite3_prepare_v2(selfCopy2->_db, [v30 UTF8String], objc_msgSend(v30, "length"), &ppStmt, 0);
  if (v36)
  {
    v116 = ManagedAssetsSqliteErrorKey;
    v65 = [NSNumber numberWithInt:v36];
    v117 = v65;
    v66 = [NSDictionary dictionaryWithObjects:&v117 forKeys:&v116 count:1];
    sqlite3_errmsg(selfCopy2->_db);
    *error = createManagedAssetError();

    v67 = off_100127CE8;
    if (os_log_type_enabled(off_100127CE8, OS_LOG_TYPE_ERROR))
    {
      db = selfCopy2->_db;
      v71 = v67;
      v72 = sqlite3_errmsg(db);
      *buf = 138412802;
      v120 = v30;
      v121 = 1024;
      *v122 = v36;
      *&v122[4] = 2080;
      *&v122[6] = v72;
      v73 = "failed to sqlite3_prepare_v2 stmt:%@ errorCode:%d error:%s";
      v74 = v71;
      v75 = 28;
      goto LABEL_75;
    }

LABEL_70:
    v12 = 0;
    goto LABEL_72;
  }

  v90 = v30;
  v37 = v98;
  v38 = 1;
  v39 = (options >> 2) & 1;
  v87 = ManagedAssetsSqliteErrorKey;
  do
  {
    v92 = v38;
    v106 = [recordsCopy objectAtIndexedSubscript:{v82, v83, v84}];
    if (v37 >= 1)
    {
      for (i = 0; v98 != i; ++i)
      {
        if (v95 <= i)
        {
          v41 = 1;
        }

        else
        {
          v41 = v39;
        }

        if (v29 == i && v41)
        {
          v42 = ppStmt;
          v43 = v29 + 1;
        }

        else
        {
          v44 = ppStmt;
          if (((v101 == i) & v41) != 1)
          {
            v45 = [v106 objectAtIndexedSubscript:i];
            v46 = sub_1000205FC(v44, i + 1, v45, error);

            if (v46)
            {
              goto LABEL_71;
            }

            continue;
          }

          v43 = v101 + 1;
          v42 = ppStmt;
        }

        if (sub_1000205FC(v42, v43, v26, error))
        {
          goto LABEL_71;
        }
      }
    }

    v47 = off_100127CE8;
    if (os_log_type_enabled(off_100127CE8, OS_LOG_TYPE_DEBUG))
    {
      v58 = selfCopy->_identifier;
      *buf = 138412802;
      v120 = v58;
      v121 = 2112;
      *v122 = v30;
      *&v122[8] = 2112;
      *&v122[10] = v106;
      _os_log_debug_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEBUG, "db: %@ insert into stmt:%@ row:%@", buf, 0x20u);
    }

    v48 = sqlite3_step(ppStmt);
    v49 = v48;
    if (v48 != 101)
    {
      v114 = v87;
      v50 = [NSNumber numberWithInt:v48];
      v115 = v50;
      v51 = [NSDictionary dictionaryWithObjects:&v115 forKeys:&v114 count:1];
      v83 = v49;
      v84 = sqlite3_errmsg(selfCopy->_db);
      v82 = v30;
      *error = createManagedAssetError();

      v52 = off_100127CE8;
      v26 = v93;
      if (os_log_type_enabled(off_100127CE8, OS_LOG_TYPE_ERROR))
      {
        v59 = selfCopy->_db;
        v85 = selfCopy->_identifier;
        v60 = v52;
        v61 = sqlite3_errmsg(v59);
        *buf = 138413058;
        v120 = v85;
        v121 = 2112;
        *v122 = v30;
        *&v122[8] = 1024;
        *&v122[10] = v49;
        *&v122[14] = 2080;
        *&v122[16] = v61;
        _os_log_error_impl(&_mh_execute_header, v60, OS_LOG_TYPE_ERROR, "db: %@ failed to sqlite3_step stmt:%@ errorCode:%d error:%s", buf, 0x26u);
      }
    }

    v53 = sqlite3_reset(ppStmt);
    if (v53)
    {
      v54 = v53;
      if (!*error)
      {
        v112 = v87;
        v55 = [NSNumber numberWithInt:v53, v82];
        v113 = v55;
        v56 = [NSDictionary dictionaryWithObjects:&v113 forKeys:&v112 count:1];
        v83 = v54;
        v84 = sqlite3_errmsg(selfCopy->_db);
        v82 = v30;
        *error = createManagedAssetError();

        v26 = v93;
      }

      v57 = off_100127CE8;
      if (os_log_type_enabled(off_100127CE8, OS_LOG_TYPE_ERROR))
      {
        v62 = selfCopy->_db;
        v86 = selfCopy->_identifier;
        v63 = v57;
        v64 = sqlite3_errmsg(v62);
        *buf = 138413058;
        v120 = v86;
        v121 = 2112;
        *v122 = v30;
        *&v122[8] = 1024;
        *&v122[10] = v54;
        *&v122[14] = 2080;
        *&v122[16] = v64;
        _os_log_error_impl(&_mh_execute_header, v63, OS_LOG_TYPE_ERROR, "db: %@ failed to sqlite3_step stmt:%@ errorCode:%d error:%s", buf, 0x26u);
      }
    }

    if (*error)
    {
LABEL_71:
      sqlite3_finalize(ppStmt);

      v12 = 0;
      goto LABEL_72;
    }

    sqlite3_clear_bindings(ppStmt);

    v38 = v92 + 1;
    v37 = v98;
  }

  while ((v92 + 1) != v88);
  v76 = sqlite3_finalize(ppStmt);
  if (v76)
  {
    v77 = v76;
    v78 = off_100127CE8;
    if (os_log_type_enabled(off_100127CE8, OS_LOG_TYPE_ERROR))
    {
      v79 = selfCopy->_identifier;
      v80 = selfCopy->_db;
      v71 = v78;
      v81 = sqlite3_errmsg(v80);
      *buf = 138413058;
      v120 = v79;
      v30 = v90;
      v121 = 2112;
      *v122 = v90;
      *&v122[8] = 1024;
      *&v122[10] = v77;
      *&v122[14] = 2080;
      *&v122[16] = v81;
      v73 = "db: %@ failed to sqlite3_finalize stmt:%@ errorCode:%d error:%s";
      v74 = v71;
      v75 = 38;
LABEL_75:
      _os_log_error_impl(&_mh_execute_header, v74, OS_LOG_TYPE_ERROR, v73, buf, v75);
    }

    goto LABEL_70;
  }

  v12 = 1;
LABEL_72:

LABEL_73:
  return v12;
}

- (int)buildStatementWithKeyValues:(id)values nonNullKeys:(id)keys openingStatement:(id)statement placeHolderOffset:(int)offset preparedStatement:(sqlite3_stmt *)preparedStatement error:(id *)error
{
  valuesCopy = values;
  keysCopy = keys;
  statementCopy = statement;
  if ([valuesCopy count] || objc_msgSend(keysCopy, "count"))
  {
    selfCopy = self;
    v56 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [valuesCopy count]);
    [statementCopy appendString:@" WHERE "];
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v53 = valuesCopy;
    v13 = valuesCopy;
    v14 = [v13 countByEnumeratingWithState:&v62 objects:v75 count:16];
    v15 = v14 != 0;
    if (v14)
    {
      v16 = v14;
      v17 = 0;
      v18 = *v63;
      do
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v63 != v18)
          {
            objc_enumerationMutation(v13);
          }

          v20 = *(*(&v62 + 1) + 8 * i);
          if (v17)
          {
            [statementCopy appendString:@" AND "];
          }

          v21 = [v13 objectForKeyedSubscript:v20];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            v23 = @"%@ IS ?";
          }

          else
          {
            v23 = @"%@ = ?";
          }

          [statementCopy appendFormat:v23, v20];
          v24 = [v13 objectForKeyedSubscript:v20];
          [v56 addObject:v24];

          v17 = 1;
        }

        v16 = [v13 countByEnumeratingWithState:&v62 objects:v75 count:16];
      }

      while (v16);
    }

    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v25 = keysCopy;
    v26 = [v25 countByEnumeratingWithState:&v58 objects:v74 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v59;
      do
      {
        for (j = 0; j != v27; j = j + 1)
        {
          if (*v59 != v28)
          {
            objc_enumerationMutation(v25);
          }

          v30 = *(*(&v58 + 1) + 8 * j);
          if (v15)
          {
            [statementCopy appendString:@" AND "];
          }

          [statementCopy appendFormat:@"%@ IS NOT NULL", v30];
          v15 = 1;
        }

        v27 = [v25 countByEnumeratingWithState:&v58 objects:v74 count:16];
      }

      while (v27);
    }

    self = selfCopy;
    valuesCopy = v53;
  }

  else
  {
    v56 = 0;
  }

  [statementCopy appendString:@";"];
  v31 = off_100127CE8;
  if (os_log_type_enabled(off_100127CE8, OS_LOG_TYPE_INFO))
  {
    identifier = self->_identifier;
    v33 = v31;
    v34 = [statementCopy length];
    *buf = 138413058;
    v69 = identifier;
    v70 = 2048;
    v71 = v34;
    v72 = 2112;
    *v73 = statementCopy;
    *&v73[8] = 2112;
    *&v73[10] = valuesCopy;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "db: %@ generated stmt-size:%lu stmt:%@ keys:%@", buf, 0x2Au);
  }

  ppStmt = 0;
  v35 = sqlite3_prepare_v2(self->_db, [statementCopy UTF8String], objc_msgSend(statementCopy, "length"), &ppStmt, 0);
  if (v35)
  {
    v36 = v35;
    v66 = ManagedAssetsSqliteErrorKey;
    v37 = [NSNumber numberWithInt:v35];
    v67 = v37;
    v38 = [NSDictionary dictionaryWithObjects:&v67 forKeys:&v66 count:1];
    sqlite3_errmsg(self->_db);
    *error = createManagedAssetError();

    selfCopy2 = self;
    v40 = off_100127CE8;
    if (os_log_type_enabled(off_100127CE8, OS_LOG_TYPE_ERROR))
    {
      v46 = selfCopy2->_identifier;
      db = selfCopy2->_db;
      v48 = v40;
      v49 = sqlite3_errmsg(db);
      *buf = 138413058;
      v69 = v46;
      v70 = 2112;
      v71 = statementCopy;
      v72 = 1024;
      *v73 = v36;
      *&v73[4] = 2080;
      *&v73[6] = v49;
      _os_log_error_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "db: %@ failed to sqlite3_prepare_v2 stmt:%@ errorCode:%d error:%s", buf, 0x26u);
    }

    v41 = v56;
  }

  else
  {
    v41 = v56;
    if (v56)
    {
      v42 = 0;
      while ([v56 count] > v42)
      {
        v43 = ppStmt;
        v44 = [v56 objectAtIndexedSubscript:v42];
        v36 = sub_1000205FC(v43, offset + 1 + v42, v44, error);

        ++v42;
        if (v36)
        {
          sqlite3_finalize(ppStmt);
          goto LABEL_37;
        }
      }
    }

    v36 = 0;
    *preparedStatement = ppStmt;
  }

LABEL_37:

  return v36;
}

- (BOOL)executePreparedStatement:(sqlite3_stmt *)statement error:(id *)error
{
  v7 = sqlite3_step(statement);
  if ((v7 - 102) <= 0xFFFFFFFD)
  {
    v8 = v7;
    v30 = ManagedAssetsSqliteErrorKey;
    v9 = [NSNumber numberWithInt:v7];
    v31 = v9;
    v10 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    v20 = v8;
    v21 = sqlite3_errmsg(self->_db);
    *error = createManagedAssetError();

    v11 = off_100127CE8;
    if (os_log_type_enabled(off_100127CE8, OS_LOG_TYPE_ERROR))
    {
      identifier = self->_identifier;
      db = self->_db;
      v19 = v11;
      *buf = 138412802;
      v25 = identifier;
      v26 = 1024;
      v27 = v8;
      v28 = 2080;
      v29 = sqlite3_errmsg(db);
      _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "db: %@ failed to sqlite3_step stmt, errorCode:%d error:%s", buf, 0x1Cu);
    }
  }

  v12 = sqlite3_finalize(statement);
  if (v12)
  {
    if (!*error)
    {
      managedAssetsSqliteErrorKey = [NSNumber numberWithInt:v12, v20, v21, ManagedAssetsSqliteErrorKey];
      v23 = managedAssetsSqliteErrorKey;
      v14 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
      sqlite3_errmsg(self->_db);
      *error = createManagedAssetError();
    }

    v15 = off_100127CE8;
    if (os_log_type_enabled(off_100127CE8, OS_LOG_TYPE_ERROR))
    {
      sub_100025E68(self, v15);
    }
  }

  return *error == 0;
}

- (BOOL)fetchQueryResultFor:(sqlite3_stmt *)for prependColumnName:(BOOL)name results:(id)results numCol:(int *)col seenSet:(id)set error:(id *)error
{
  resultsCopy = results;
  setCopy = set;
  v14 = setCopy;
  selfCopy = self;
  if (col)
  {
    v15 = *col;
  }

  else
  {
    v15 = 0;
  }

  v16 = setCopy != 0;
  if (sqlite3_step(for) == 100)
  {
    *&v17 = 138412290;
    v31 = v17;
    nameCopy = name;
    while (1)
    {
      if (nameCopy)
      {
        v15 = sqlite3_column_count(for);
        v19 = [NSMutableArray arrayWithCapacity:v15];
        v20 = v14 != 0;
        if (v15 > v16)
        {
          do
          {
            v21 = [NSString stringWithUTF8String:sqlite3_column_name(for, v20)];
            [v19 addObject:v21];

            ++v20;
          }

          while (v15 != v20);
        }

        [resultsCopy addObject:{v19, v31}];
        if (col)
        {
          *col = v15;
        }
      }

      if (!v14)
      {
        goto LABEL_19;
      }

      v22 = sub_1000214A4(for, 0);
      v23 = v22;
      if (*error)
      {

        goto LABEL_28;
      }

      if (name || ![v14 containsObject:v22])
      {
        break;
      }

      v24 = off_100127CE8;
      if (os_log_type_enabled(off_100127CE8, OS_LOG_TYPE_DEBUG))
      {
        *buf = v31;
        v36 = v23;
        _os_log_debug_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "skip: rowid = %@", buf, 0xCu);
      }

LABEL_22:

      v27 = sqlite3_step(for);
      nameCopy = 0;
      if (v27 != 100)
      {
        goto LABEL_23;
      }
    }

    [v14 addObject:{v23, v31}];

LABEL_19:
    v23 = [NSMutableArray arrayWithCapacity:v15, v31];
    v25 = v14 != 0;
    if (v15 > v16)
    {
      do
      {
        v26 = sub_1000214A4(for, v25);
        [v23 addObject:v26];

        ++v25;
      }

      while (v15 != v25);
    }

    [resultsCopy addObject:v23];
    goto LABEL_22;
  }

LABEL_23:
  if (sqlite3_finalize(for))
  {
    v28 = off_100127CE8;
    if (os_log_type_enabled(off_100127CE8, OS_LOG_TYPE_ERROR))
    {
      sub_100025EFC(selfCopy, v28);
    }

LABEL_28:
    v29 = 0;
  }

  else
  {
    v29 = 1;
  }

  return v29;
}

- (BOOL)query:(id)query keys:(id)keys desiredKeys:(id)desiredKeys nonNullKeys:(id)nullKeys records:(id *)records error:(id *)error
{
  queryCopy = query;
  keysCopy = keys;
  desiredKeysCopy = desiredKeys;
  nullKeysCopy = nullKeys;
  if (os_log_type_enabled(off_100127CE8, OS_LOG_TYPE_DEBUG))
  {
    sub_100025F90();
  }

  v31 = keysCopy;
  v15 = queryCopy;
  v36 = 0;
  v16 = +[NSMutableArray array];
  v17 = +[NSMutableString string];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v18 = desiredKeysCopy;
  v19 = [v18 countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v33;
    do
    {
      for (i = 0; i != v20; i = i + 1)
      {
        if (*v33 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v32 + 1) + 8 * i);
        if ([v17 length])
        {
          [v17 appendString:{@", "}];
        }

        [v17 appendString:v23];
      }

      v20 = [v18 countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v20);
  }

  if (![v17 length])
  {
    [v17 appendString:@"*"];
  }

  v24 = +[NSMutableString string];
  [v24 appendFormat:@"SELECT %@ FROM %@", v17, v15];
  v25 = 0;
  if (![(MAKVGroupDB *)self buildStatementWithKeyValues:v31 nonNullKeys:nullKeysCopy openingStatement:v24 placeHolderOffset:0 preparedStatement:&v36 error:error])
  {
    v25 = [(MAKVGroupDB *)self fetchQueryResultFor:v36 prependColumnName:1 results:v16 numCol:0 seenSet:0 error:error];
    v26 = v16;
    *records = v16;
  }

  return v25;
}

- (BOOL)batchQuery:(id)query batchKeys:(id)keys attributes:(id)attributes records:(id *)records error:(id *)error
{
  queryCopy = query;
  keysCopy = keys;
  v13 = +[NSMutableArray array];
  if (![keysCopy count])
  {
    queryCopy = [NSString stringWithFormat:@"SELECT * FROM %@", queryCopy];;
    ppStmt = 0;
    if (sqlite3_prepare_v2(self->_db, [queryCopy UTF8String], objc_msgSend(queryCopy, "length"), &ppStmt, 0))
    {
      goto LABEL_5;
    }

    [(MAKVGroupDB *)self fetchQueryResultFor:ppStmt prependColumnName:1 results:v13 numCol:0 seenSet:0 error:error];

LABEL_17:
    v24 = v13;
    *records = v13;
    v15 = 1;
    goto LABEL_18;
  }

  if ([keysCopy count] != 1)
  {
    recordsCopy = records;
    v16 = queryCopy;
    v33 = 0;
    v17 = +[NSMutableSet set];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v27 = keysCopy;
    obj = keysCopy;
    v18 = [obj countByEnumeratingWithState:&v29 objects:v35 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v30;
      while (2)
      {
        for (i = 0; i != v19; i = i + 1)
        {
          if (*v30 != v20)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(*(&v29 + 1) + 8 * i);
          v23 = +[NSMutableString string];
          [v23 appendFormat:@"SELECT rowid, * FROM %@", v16];
          ppStmt = 0;
          if ([(MAKVGroupDB *)self buildStatementWithKeyValues:v22 nonNullKeys:0 openingStatement:v23 placeHolderOffset:0 preparedStatement:&ppStmt error:error])
          {

            v15 = 0;
            queryCopy = v16;
            keysCopy = v27;
            goto LABEL_18;
          }

          -[MAKVGroupDB fetchQueryResultFor:prependColumnName:results:numCol:seenSet:error:](self, "fetchQueryResultFor:prependColumnName:results:numCol:seenSet:error:", ppStmt, [v13 count] == 0, v13, &v33, v17, error);
        }

        v19 = [obj countByEnumeratingWithState:&v29 objects:v35 count:16];
        if (v19)
        {
          continue;
        }

        break;
      }
    }

    queryCopy = v16;
    records = recordsCopy;
    keysCopy = v27;
    goto LABEL_17;
  }

  queryCopy = [keysCopy objectAtIndexedSubscript:0];
  [(MAKVGroupDB *)self query:queryCopy keys:queryCopy desiredKeys:0 nonNullKeys:0 records:records error:error];
LABEL_5:

  v15 = 0;
LABEL_18:

  return v15;
}

- (BOOL)updateData:(id)data key:(id)key value:(id)value tsOptions:(unint64_t)options error:(id *)error
{
  dataCopy = data;
  keyCopy = key;
  valueCopy = value;
  v14 = off_100127CE8;
  if (os_log_type_enabled(off_100127CE8, OS_LOG_TYPE_DEBUG))
  {
    identifier = self->_identifier;
    *buf = 136316418;
    *&buf[4] = "[MAKVGroupDB updateData:key:value:tsOptions:error:]";
    v51 = 2112;
    v52 = identifier;
    v53 = 2112;
    v54 = dataCopy;
    v55 = 2112;
    v56 = keyCopy;
    v57 = 2112;
    v58 = valueCopy;
    v59 = 2048;
    optionsCopy = options;
    _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "%s db: %@ name:%@ key:%@ value:%@ tsOptions:%lu", buf, 0x3Eu);
  }

  selfCopy = self;
  v15 = +[NSMutableString string];
  v16 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [valueCopy count] + 1);
  if ((options & 6) != 0)
  {
    v17 = +[NSDate date];
    [v17 timeIntervalSinceReferenceDate];
    v18 = [NSNumber numberWithDouble:?];
  }

  else
  {
    v18 = 0;
  }

  v40 = keyCopy;
  v41 = dataCopy;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v19 = valueCopy;
  v20 = [v19 countByEnumeratingWithState:&v45 objects:v49 count:16];
  if (v20)
  {
    v21 = v20;
    optionsCopy2 = options;
    v22 = *v46;
    v23 = kMAKVCol_updatedDate;
    do
    {
      for (i = 0; i != v21; i = i + 1)
      {
        if (*v46 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v25 = *(*(&v45 + 1) + 8 * i);
        if ([v16 count])
        {
          [v15 appendFormat:@", "];
        }

        [v15 appendFormat:@"%@ = ?", v25];
        if (v18 && [v23 isEqual:v25])
        {
          if ((optionsCopy2 & 4) != 0)
          {
            [v16 addObject:v18];
          }

          else
          {
            v26 = [v19 objectForKeyedSubscript:v25];
            [v16 addObject:v26];
          }

          v27 = v18;
          v18 = 0;
        }

        else
        {
          v27 = [v19 objectForKeyedSubscript:v25];
          [v16 addObject:v27];
        }
      }

      v21 = [v19 countByEnumeratingWithState:&v45 objects:v49 count:16];
    }

    while (v21);
  }

  if (v18)
  {
    if ([v16 count])
    {
      [v15 appendFormat:@", "];
    }

    [v15 appendFormat:@"%@ = ?", kMAKVCol_updatedDate];
    [v16 addObject:v18];
    v28 = off_100127CE8;
    if (os_log_type_enabled(off_100127CE8, OS_LOG_TYPE_INFO))
    {
      v29 = selfCopy->_identifier;
      *buf = 136315906;
      *&buf[4] = "[MAKVGroupDB updateData:key:value:tsOptions:error:]";
      v51 = 2112;
      v52 = v29;
      v53 = 2112;
      v54 = dataCopy;
      v55 = 2112;
      v56 = v18;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "%s db: %@ name:%@ auto append updatedDate: %@", buf, 0x2Au);
    }
  }

  v30 = +[NSMutableString string];
  [v30 appendFormat:@"UPDATE %@ SET %@", dataCopy, v15];
  *buf = 0;
  if (-[MAKVGroupDB buildStatementWithKeyValues:nonNullKeys:openingStatement:placeHolderOffset:preparedStatement:error:](selfCopy, "buildStatementWithKeyValues:nonNullKeys:openingStatement:placeHolderOffset:preparedStatement:error:", v40, 0, v30, [v16 count], buf, error))
  {
LABEL_32:
    v37 = 0;
  }

  else
  {
    v31 = 0;
    while (1)
    {
      v32 = [v16 count];
      v33 = *buf;
      if (v32 <= v31)
      {
        break;
      }

      v34 = v31 + 1;
      v35 = [v16 objectAtIndexedSubscript:v31];
      v36 = sub_1000205FC(v33, v34, v35, error);

      v31 = v34;
      if (v36)
      {
        sqlite3_finalize(*buf);
        goto LABEL_32;
      }
    }

    v37 = [(MAKVGroupDB *)selfCopy executePreparedStatement:*buf error:error];
  }

  return v37;
}

- (BOOL)deleteData:(id)data keys:(id)keys error:(id *)error
{
  keysCopy = keys;
  dataCopy = data;
  v10 = +[NSMutableString string];
  [v10 appendFormat:@"DELETE FROM %@", dataCopy];

  v13 = 0;
  LODWORD(dataCopy) = [(MAKVGroupDB *)self buildStatementWithKeyValues:keysCopy nonNullKeys:0 openingStatement:v10 placeHolderOffset:0 preparedStatement:&v13 error:error];

  v11 = 0;
  if (!dataCopy)
  {
    v11 = [(MAKVGroupDB *)self executePreparedStatement:v13 error:error];
  }

  return v11;
}

- (BOOL)batchDeleteData:(id)data batchKeys:(id)keys error:(id *)error
{
  dataCopy = data;
  keysCopy = keys;
  if (![keysCopy count])
  {
    dataCopy = [NSString stringWithFormat:@"DELETE FROM %@", dataCopy];;
    ppStmt = 0;
    if (sqlite3_prepare_v2(self->_db, [dataCopy UTF8String], objc_msgSend(dataCopy, "length"), &ppStmt, 0))
    {
      v18 = 0;
      goto LABEL_19;
    }

    [(MAKVGroupDB *)self executePreparedStatement:ppStmt error:error];
LABEL_18:
    v18 = 1;
    goto LABEL_19;
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  dataCopy = keysCopy;
  v11 = [dataCopy countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (!v11)
  {
    goto LABEL_18;
  }

  v12 = v11;
  v20 = keysCopy;
  v13 = *v22;
  while (2)
  {
    for (i = 0; i != v12; i = i + 1)
    {
      if (*v22 != v13)
      {
        objc_enumerationMutation(dataCopy);
      }

      v15 = *(*(&v21 + 1) + 8 * i);
      v16 = +[NSMutableString string];
      [v16 appendFormat:@"DELETE FROM %@", dataCopy];
      ppStmt = 0;
      if ([(MAKVGroupDB *)self buildStatementWithKeyValues:v15 nonNullKeys:0 openingStatement:v16 placeHolderOffset:0 preparedStatement:&ppStmt error:error])
      {

LABEL_15:
        v18 = 0;
        goto LABEL_16;
      }

      [(MAKVGroupDB *)self executePreparedStatement:ppStmt error:error];
      v17 = *error;

      if (v17)
      {
        goto LABEL_15;
      }
    }

    v12 = [dataCopy countByEnumeratingWithState:&v21 objects:v26 count:16];
    v18 = 1;
    if (v12)
    {
      continue;
    }

    break;
  }

LABEL_16:
  keysCopy = v20;
LABEL_19:

  return v18;
}

- (BOOL)deleteTable:(id)table error:(id *)error
{
  tableCopy = table;
  tableCopy = [NSString stringWithFormat:@"DROP TABLE %@", tableCopy];;
  if ([(MAKVGroupDB *)self execSqlStatement:tableCopy error:error rowReader:&stru_100116228])
  {
    v8 = 0;
  }

  else
  {
    if (os_log_type_enabled(off_100127CE8, OS_LOG_TYPE_DEBUG))
    {
      sub_100026020(self);
    }

    v8 = *error == 0;
  }

  return v8;
}

- (BOOL)verifyTableName:(id)name error:(id *)error
{
  nameCopy = name;
  v7 = [(MAKVGroupDB *)self queryTablesWithError:error];
  lowercaseString = [nameCopy lowercaseString];
  v9 = [v7 containsObject:lowercaseString];

  if ((v9 & 1) == 0 && !*error)
  {
    *error = createManagedAssetError();
  }

  return v9;
}

- (BOOL)tableExists:(id)exists error:(id *)error
{
  existsCopy = exists;
  v7 = [(MAKVGroupDB *)self queryTablesWithError:error];
  v8 = off_100127CE8;
  if (os_log_type_enabled(off_100127CE8, OS_LOG_TYPE_DEBUG))
  {
    identifier = self->_identifier;
    v13 = *error;
    v14 = 138412802;
    v15 = identifier;
    v16 = 2112;
    v17 = v7;
    v18 = 2112;
    v19 = v13;
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "db: %@ tables:%@ error:%@", &v14, 0x20u);
  }

  lowercaseString = [existsCopy lowercaseString];

  v10 = [v7 containsObject:lowercaseString];
  return v10;
}

@end