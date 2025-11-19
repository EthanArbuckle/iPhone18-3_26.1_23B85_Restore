@interface NSFileManager
+ (BOOL)copySQLiteFile:(id)a3 toPath:(id)a4 timeout:(double)a5 error:(id *)a6;
+ (BOOL)isSQLiteFile:(id)a3 error:(id *)a4;
+ (int)_getProtectionClassForFile:(id)a3 error:(id *)a4;
+ (void)removeJournalsForSQLiteFileAtPaths:(id)a3;
- (BOOL)cloneFile:(id)a3 to:(id)a4 expectingHash:(id)a5 correctOwnership:(BOOL)a6;
@end

@implementation NSFileManager

- (BOOL)cloneFile:(id)a3 to:(id)a4 expectingHash:(id)a5 correctOwnership:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = +[NSMutableArray array];
  v14 = copyfile_state_alloc();
  copyfile_state_set(v14, 6u, sub_10001EA90);
  copyfile_state_set(v14, 7u, v13);
  v15 = copyfile([v10 UTF8String], objc_msgSend(v11, "UTF8String"), v14, 0x1008000u);
  copyfile_state_free(v14);
  if (v15)
  {
    v18 = sub_100021268();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_100031B7C();
    }

    v20 = 0;
    v17 = 0;
    goto LABEL_18;
  }

  [NSFileManager removeJournalsForSQLiteFileAtPaths:v13];
  if (!v12)
  {
    v17 = 0;
    if (v6)
    {
      goto LABEL_5;
    }

LABEL_9:
    v20 = 0;
    v21 = 1;
    goto LABEL_10;
  }

  v16 = [NSURL fileURLWithString:v11];
  v17 = [v16 fileHash];

  if (([v17 isEqualToData:v12] & 1) == 0)
  {
    v18 = sub_100021268();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      v30 = v10;
      v31 = 2114;
      v32 = v17;
      v33 = 2114;
      v34 = v12;
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "File has been changed after device manifest generation: %{public}@ - Current hash:  %{public}@ - Expected hash:  %{public}@", buf, 0x20u);
    }

    v20 = 0;
    goto LABEL_18;
  }

  if (!v6)
  {
    goto LABEL_9;
  }

LABEL_5:
  v27[0] = NSFileOwnerAccountName;
  v27[1] = NSFileGroupOwnerAccountName;
  v28[0] = @"mobile";
  v28[1] = @"mobile";
  v18 = [NSDictionary dictionaryWithObjects:v28 forKeys:v27 count:2];
  v26 = 0;
  v19 = [(NSFileManager *)self setAttributes:v18 ofItemAtPath:v11 error:&v26];
  v20 = v26;
  if ((v19 & 1) == 0)
  {
    sub_100031C2C();
LABEL_18:

    if (![(NSFileManager *)self fileExistsAtPath:v11])
    {
      v21 = 0;
      goto LABEL_10;
    }

    v25 = v20;
    v23 = [(NSFileManager *)self removeItemAtPath:v11 error:&v25];
    v24 = v25;

    if (v23)
    {
      v21 = 0;
      v20 = v24;
      goto LABEL_10;
    }

    v18 = sub_100021268();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_100031CCC(v11, v24);
    }

    v21 = 0;
    v20 = v24;
    goto LABEL_7;
  }

  v21 = 1;
LABEL_7:

LABEL_10:
  return v21;
}

+ (BOOL)isSQLiteFile:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [NSURL fileURLWithPath:v5];
  v25[0] = 0;
  v7 = [NSFileHandle fileHandleForReadingFromURL:v6 error:v25];
  v8 = v25[0];
  v9 = v8;
  if (v7)
  {
    v10 = [v7 fileDescriptor];
    v23 = 0;
    v22 = 0;
    [v6 getResourceValue:&v23 forKey:NSURLIsRegularFileKey error:&v22];
    v11 = v23;
    v12 = v22;

    if ([v11 BOOLValue])
    {
      __buf = 0;
      v27 = 0;
      v13 = pread(v10, &__buf, 0x10uLL, 0);

      if (v13 < 0)
      {
        v17 = sub_100021268();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          sub_100031F8C();
        }

        v21 = v12;
        v18 = [NSString stringWithFormat:@"pread() error errno: %d - file: %@", *__error(), v5];
        sub_1000011F8(&v21, 0, v18);
        v16 = v21;

        v7 = 0;
        if (!a4)
        {
          v15 = 0;
          goto LABEL_17;
        }

        goto LABEL_15;
      }

      if (v13 == 16)
      {
        v7 = 0;
        if (__buf == 0x66206574694C5153 && v27 == 0x332074616D726FLL)
        {
          v15 = 1;
          goto LABEL_11;
        }
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    sub_100032024(v8, &v24);
    v11 = 0;
    v12 = v25[1];
  }

  if (a4)
  {
    v16 = v12;
LABEL_15:
    v19 = v16;
    v15 = 0;
    *a4 = v16;
    goto LABEL_17;
  }

  v15 = 0;
LABEL_11:
  v16 = v12;
LABEL_17:

  return v15;
}

+ (BOOL)copySQLiteFile:(id)a3 toPath:(id)a4 timeout:(double)a5 error:(id *)a6
{
  v8 = a3;
  v9 = a4;
  v10 = [v8 fileSystemRepresentation];
  v11 = [v9 fileSystemRepresentation];
  db = 0;
  ppDb = 0;
  +[NSDate timeIntervalSinceReferenceDate];
  v13 = v12;
  v14 = [MSDFileMetadata fileMetadatatWithPath:v8];
  v15 = sub_100021268();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543874;
    *&buf[4] = v8;
    v55 = 2114;
    v56 = v9;
    v57 = 2048;
    v58 = COERCE_DOUBLE([v14 getFileSize]);
    _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "Copying SQLite database at %{public}@ to %{public}@ (%lld bytes)", buf, 0x20u);
  }

  v51 = 0;
  v16 = [NSFileManager _getProtectionClassForFile:v8 error:&v51];
  v17 = v51;
  v18 = sqlite3_open_v2(v10, &ppDb, 65537, 0);
  if (v18)
  {
    v40 = v18;
    v50 = v17;
    v41 = ppDb;
    if (ppDb)
    {
      v41 = sqlite3_errmsg(ppDb);
    }

    v28 = [NSString stringWithFormat:@"Error opening SQLite file: %s (%d)", v41, v40];
    sub_1000011F8(&v50, 0, v28);
    v42 = v50;
    goto LABEL_51;
  }

  v19 = sub_100021268();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    sub_100032088();
  }

  v20 = sqlite3_open_v2(v11, &db, v16 | 0x10006, 0);
  if (v20)
  {
    v43 = v20;
    v49 = v17;
    v44 = db;
    if (db)
    {
      v44 = sqlite3_errmsg(db);
    }

    v28 = [NSString stringWithFormat:@"Error opening SQLite file: %s (%d)", v44, v43];
    sub_1000011F8(&v49, 0, v28);
    v42 = v49;
    goto LABEL_51;
  }

  v21 = sub_100021268();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    sub_1000320FC();
  }

  v22 = sqlite3_backup_init(db, "main", ppDb, "main");
  if (!v22)
  {
    v48 = v17;
    v45 = sqlite3_errcode(db);
    v28 = [NSString stringWithFormat:@"Error initializing backup connection. code: %d, msg: %s", v45, sqlite3_errmsg(db)];
    sub_1000011F8(&v48, 0, v28);
    v42 = v48;
LABEL_51:
    v46 = v42;

    v25 = 0;
    v17 = v46;
LABEL_18:

    goto LABEL_19;
  }

  v23 = v22;
  if (sqlite3_backup_step(v22, -1) == 101)
  {
    v24 = sub_100021268();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      sub_1000321D8(v24);
    }

    if ([v14 restoreAttribuesToPath:v9])
    {
      v25 = 1;
    }

    else
    {
      sub_10003221C();
      v25 = 0;
    }
  }

  else
  {
    sub_100032174(v17, &v47);
    v25 = 0;
    v17 = *buf;
  }

  v26 = sqlite3_backup_finish(v23);
  if (v26)
  {
    v27 = v26;
    v28 = sub_100021268();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      sub_10003224C(v27, v28);
    }

    goto LABEL_18;
  }

LABEL_19:
  if (ppDb)
  {
    if (sqlite3_close(ppDb))
    {
      v29 = sub_100021268();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        sub_1000322C4();
      }
    }

    ppDb = 0;
  }

  if (db)
  {
    if (sqlite3_close(db))
    {
      v30 = sub_100021268();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        sub_1000322C4();
      }
    }

    db = 0;
  }

  +[NSDate timeIntervalSinceReferenceDate];
  v32 = v31;
  v33 = sub_100021268();
  v34 = v33;
  if (v25)
  {
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      v35 = [v14 getFileSize];
      *buf = 138544130;
      *&buf[4] = v8;
      v55 = 2114;
      v56 = v9;
      v57 = 2048;
      v58 = v32 - v13;
      v59 = 2048;
      v60 = v35;
      _os_log_debug_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEBUG, "Finished copying SQLite database from %{public}@ to %{public}@ in %0.3fs (%lld bytes)", buf, 0x2Au);
    }
  }

  else
  {
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      sub_100032334();
    }

    v34 = +[NSFileManager defaultManager];
    if ([v34 fileExistsAtPath:v9])
    {
      v36 = +[NSFileManager defaultManager];
      v37 = [v36 removeItemAtPath:v9 error:0];

      if (v37)
      {
        goto LABEL_41;
      }

      v34 = sub_100021268();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        sub_1000323B0();
      }
    }
  }

LABEL_41:
  if (a6)
  {
    v38 = v17;
    *a6 = v17;
  }

  return v25;
}

+ (void)removeJournalsForSQLiteFileAtPaths:(id)a3
{
  v3 = a3;
  v4 = +[NSFileManager defaultManager];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v3;
  v19 = [obj countByEnumeratingWithState:&v26 objects:v33 count:16];
  v5 = 0;
  if (v19)
  {
    v18 = *v27;
    do
    {
      v6 = 0;
      do
      {
        if (*v27 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = v6;
        v7 = *(*(&v26 + 1) + 8 * v6);
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v8 = [&off_100056640 countByEnumeratingWithState:&v22 objects:v32 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v23;
          do
          {
            v11 = 0;
            do
            {
              if (*v23 != v10)
              {
                objc_enumerationMutation(&off_100056640);
              }

              v12 = [v7 stringByAppendingString:*(*(&v22 + 1) + 8 * v11)];
              if ([v4 fileExistsAtPath:v12])
              {
                v21 = v5;
                v13 = [v4 removeItemAtPath:v12 error:&v21];
                v14 = v21;

                v15 = sub_100021268();
                v16 = v15;
                if (v13)
                {
                  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 138543362;
                    v31 = v12;
                    _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "Removed copied SQLite file journal at %{public}@", buf, 0xCu);
                  }
                }

                else if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138543362;
                  v31 = v12;
                  _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Error removing copied SQLite file journal %{public}@", buf, 0xCu);
                }

                v5 = v14;
              }

              v11 = v11 + 1;
            }

            while (v9 != v11);
            v9 = [&off_100056640 countByEnumeratingWithState:&v22 objects:v32 count:16];
          }

          while (v9);
        }

        v6 = v20 + 1;
      }

      while ((v20 + 1) != v19);
      v19 = [obj countByEnumeratingWithState:&v26 objects:v33 count:16];
    }

    while (v19);
  }
}

+ (int)_getProtectionClassForFile:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = +[NSFileManager defaultManager];
  v15 = 0;
  v7 = [v6 attributesOfItemAtPath:v5 error:&v15];
  v8 = v15;

  v9 = [v7 objectForKey:NSFileProtectionKey];
  v10 = v9;
  if (v9)
  {
    if ([v9 isEqualToString:NSFileProtectionComplete])
    {
      v11 = 0x100000;
      if (!a4)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    if ([v10 isEqualToString:NSFileProtectionCompleteUnlessOpen])
    {
      v11 = 0x200000;
      if (!a4)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    if ([v10 isEqualToString:NSFileProtectionCompleteUntilFirstUserAuthentication])
    {
      v11 = 3145728;
      if (!a4)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    if (([v10 isEqualToString:NSFileProtectionNone] & 1) == 0)
    {
      v12 = sub_100021268();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v17 = v5;
        v18 = 2114;
        v19 = v10;
        _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Invalid file protection level for file %{public}@ - %{public}@. Defaulting to 'None'", buf, 0x16u);
      }
    }
  }

  v11 = 0x400000;
  if (a4)
  {
LABEL_16:
    v13 = v8;
    *a4 = v8;
  }

LABEL_17:

  return v11;
}

@end