@interface RDSQLiteDBUtils
+ (BOOL)copySQLiteFileAtPath:(id)path toPath:(id)toPath timeout:(double)timeout error:(id *)error;
@end

@implementation RDSQLiteDBUtils

+ (BOOL)copySQLiteFileAtPath:(id)path toPath:(id)toPath timeout:(double)timeout error:(id *)error
{
  pathCopy = path;
  toPathCopy = toPath;
  v12 = toPathCopy;
  if (!pathCopy)
  {
    if (error)
    {
      v25 = objc_opt_class();
      v26 = NSStringFromClass(v25);
      v27 = NSStringFromSelector(a2);
      v28 = [NSString stringWithFormat:@"%@.%@", v26, v27];
      [NSString stringWithFormat:@"[%@] fromPath is nil", v28];
      v30 = LABEL_13:;
      *error = [REMError internalErrorWithDebugDescription:v30];
    }

LABEL_14:
    v24 = 0;
    goto LABEL_62;
  }

  if (!toPathCopy)
  {
    if (error)
    {
      v29 = objc_opt_class();
      v26 = NSStringFromClass(v29);
      v27 = NSStringFromSelector(a2);
      v28 = [NSString stringWithFormat:@"%@.%@", v26, v27];
      [NSString stringWithFormat:@"[%@] toPath is nil", v28];
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  v13 = pathCopy;
  v14 = v12;
  v15 = +[NSFileManager defaultManager];
  v127 = v13;
  fileSystemRepresentation = [v13 fileSystemRepresentation];
  fileSystemRepresentation2 = [v14 fileSystemRepresentation];
  db = 0;
  ppDb = 0;
  v18 = sqlite3_open_v2(fileSystemRepresentation, &ppDb, 1, 0);
  v19 = REMCRMergeableOrderedSet_ptr;
  v125 = v12;
  aSelector = a2;
  if (v18)
  {
    if (error)
    {
      v20 = v18;
      v21 = ppDb;
      if (ppDb)
      {
        v21 = sqlite3_errmsg(ppDb);
      }

      v120 = v21;
      v122 = v20;
      v22 = @"Error opening SQLite file: %s (%d)";
      v23 = -101;
      goto LABEL_8;
    }

    goto LABEL_38;
  }

  v31 = +[REMLogStore container];
  if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
  {
    v32 = objc_opt_class();
    v33 = NSStringFromClass(v32);
    v34 = NSStringFromSelector(aSelector);
    v35 = [NSString stringWithFormat:@"%@.%@", v33, v34];
    *buf = 138543618;
    v136 = v35;
    v137 = 2114;
    v138 = v127;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "[%{public}@] Opened SQLite file at %{public}@", buf, 0x16u);

    v19 = REMCRMergeableOrderedSet_ptr;
    a2 = aSelector;
  }

  stringByDeletingLastPathComponent = [v14 stringByDeletingLastPathComponent];
  v37 = [v15 createDirectoryAtPath:stringByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:error];

  if ((v37 & 1) == 0)
  {
LABEL_38:
    v24 = 0;
    goto LABEL_39;
  }

  v38 = &_s19ReminderKitInternal24REMRemindersListDataViewO25ScheduledDateBucketsModelVSeAAMc_ptr;
  +[NSDate timeIntervalSinceReferenceDate];
  v40 = v39;
  while (1)
  {
    v41 = _sqlite3_db_clone();
    if (v41 != 5)
    {
      v48 = v41;
      if (!v41)
      {
        container = [v19[51] container];
        if (os_log_type_enabled(container, OS_LOG_TYPE_INFO))
        {
          v50 = objc_opt_class();
          v51 = NSStringFromClass(v50);
          v52 = NSStringFromSelector(aSelector);
          v53 = [NSString stringWithFormat:@"%@.%@", v51, v52];
          *buf = 138543618;
          v136 = v53;
          v137 = 2114;
          v138 = v14;
          _os_log_impl(&_mh_execute_header, container, OS_LOG_TYPE_INFO, "[%{public}@] Cloning SQLite file to %{public}@", buf, 0x16u);

          v19 = REMCRMergeableOrderedSet_ptr;
        }

        v54 = sqlite3_open_v2(fileSystemRepresentation2, &db, 6, 0);
        if (v54)
        {
          if (error)
          {
            v55 = v54;
            if (db)
            {
              v56 = sqlite3_errmsg(db);
              if (db)
              {
                v57 = sqlite3_extended_errcode(db);
LABEL_73:
                v123 = v57;
                v124 = v55;
                v121 = v56;
                v98 = @"Error opening SQLite file: %s,%d (%d)";
                v99 = -101;
                goto LABEL_74;
              }
            }

            else
            {
              v56 = 0;
            }

            v57 = 0xFFFFFFFFLL;
            goto LABEL_73;
          }
        }

        else
        {
          container2 = [v19[51] container];
          if (os_log_type_enabled(container2, OS_LOG_TYPE_INFO))
          {
            v91 = objc_opt_class();
            v92 = NSStringFromClass(v91);
            v93 = NSStringFromSelector(aSelector);
            v94 = [NSString stringWithFormat:@"%@.%@", v92, v93];
            *buf = 138543874;
            v136 = v94;
            v137 = 2114;
            v138 = v14;
            v139 = 1024;
            LODWORD(v140) = 6;
            _os_log_impl(&_mh_execute_header, container2, OS_LOG_TYPE_INFO, "[%{public}@] Opened SQLite file for copying at %{public}@ with flags 0x%x", buf, 0x1Cu);
          }

          v95 = sqlite3_wal_checkpoint_v2(db, 0, 2, 0, 0);
          if (v95)
          {
            if (error)
            {
              v96 = v95;
              v97 = sqlite3_errmsg(db);
              v123 = sqlite3_extended_errcode(db);
              v124 = v96;
              v121 = v97;
              v98 = @"Error checkpointing copied SQLite file: %s,%d (%d)";
              v99 = -104;
LABEL_74:
              [REMError sqliteErrorWithCode:v99 path:v14 format:v98, v121, v123, v124];
              goto LABEL_75;
            }
          }

          else
          {
            container3 = [v19[51] container];
            if (os_log_type_enabled(container3, OS_LOG_TYPE_INFO))
            {
              v101 = objc_opt_class();
              v102 = NSStringFromClass(v101);
              v103 = NSStringFromSelector(aSelector);
              v103 = [NSString stringWithFormat:@"%@.%@", v102, v103];
              *buf = 138543618;
              v136 = v103;
              v137 = 2114;
              v138 = v127;
              _os_log_impl(&_mh_execute_header, container3, OS_LOG_TYPE_INFO, "[%{public}@] Checkpointed copied SQLite file at %{public}@", buf, 0x16u);
            }

            v105 = sqlite3_close(db);
            db = 0;
            if (!v105)
            {
              container4 = [v19[51] container];
              if (os_log_type_enabled(container4, OS_LOG_TYPE_INFO))
              {
                v109 = objc_opt_class();
                v110 = NSStringFromClass(v109);
                v111 = NSStringFromSelector(aSelector);
                v111 = [NSString stringWithFormat:@"%@.%@", v110, v111];
                *buf = 138543618;
                v136 = v111;
                v137 = 2114;
                v138 = v14;
                _os_log_impl(&_mh_execute_header, container4, OS_LOG_TYPE_INFO, "[%{public}@] Closed SQLite file at %{public}@", buf, 0x16u);
              }

              +[NSDate timeIntervalSinceReferenceDate];
              v114 = v113;
              container5 = [v19[51] container];
              if (os_log_type_enabled(container5, OS_LOG_TYPE_INFO))
              {
                v116 = objc_opt_class();
                v117 = NSStringFromClass(v116);
                v118 = NSStringFromSelector(aSelector);
                v118 = [NSString stringWithFormat:@"%@.%@", v117, v118];
                *buf = 138543874;
                v136 = v118;
                v137 = 2112;
                v138 = v127;
                v139 = 2048;
                v140 = v114 - v40;
                _os_log_impl(&_mh_execute_header, container5, OS_LOG_TYPE_INFO, "[%{public}@] Finished copying SQLite database at %@ in %0.3fs", buf, 0x20u);
              }

              v24 = 1;
              goto LABEL_82;
            }

            if (error)
            {
              v106 = v105;
              v107 = sqlite3_errmsg(0);
              v123 = sqlite3_extended_errcode(db);
              v124 = v106;
              v121 = v107;
              v98 = @"Error closing copied SQLite file: %s,%d (%d)";
              v99 = -105;
              goto LABEL_74;
            }
          }
        }

        v24 = 0;
        goto LABEL_82;
      }

      if (!error)
      {
        goto LABEL_38;
      }

      if (ppDb)
      {
        v58 = sqlite3_errmsg(ppDb);
        if (ppDb)
        {
          v59 = sqlite3_extended_errcode(ppDb);
LABEL_70:
          [REMError sqliteErrorWithCode:-103 path:v127 format:@"Error cloning SQLite file: %s, %d (%d)", v58, v59, v48];
LABEL_75:
          *error = v24 = 0;
LABEL_82:
          a2 = aSelector;
          goto LABEL_39;
        }
      }

      else
      {
        v58 = 0;
      }

      v59 = 0xFFFFFFFFLL;
      goto LABEL_70;
    }

    [v38[324] timeIntervalSinceReferenceDate];
    if (v42 - v40 >= timeout)
    {
      break;
    }

    container6 = [v19[51] container];
    if (os_log_type_enabled(container6, OS_LOG_TYPE_INFO))
    {
      v44 = objc_opt_class();
      v45 = NSStringFromClass(v44);
      v46 = NSStringFromSelector(a2);
      v47 = [NSString stringWithFormat:@"%@.%@", v45, v46];
      *buf = 138543618;
      v136 = v47;
      v137 = 2114;
      v138 = v127;
      _os_log_impl(&_mh_execute_header, container6, OS_LOG_TYPE_INFO, "[%{public}@] Waiting for busy SQLite database at %{public}@", buf, 0x16u);

      a2 = aSelector;
      v38 = &_s19ReminderKitInternal24REMRemindersListDataViewO25ScheduledDateBucketsModelVSeAAMc_ptr;

      v19 = REMCRMergeableOrderedSet_ptr;
    }

    [NSThread sleepForTimeInterval:0.1];
  }

  if (!error)
  {
    goto LABEL_38;
  }

  v22 = @"SQLite file is busy";
  v23 = -102;
LABEL_8:
  [REMError sqliteErrorWithCode:v23 path:v127 format:v22, v120, v122];
  *error = v24 = 0;
LABEL_39:
  if (ppDb)
  {
    v60 = sqlite3_close(ppDb);
    container7 = [v19[51] container];
    v62 = container7;
    if (v60)
    {
      if (os_log_type_enabled(container7, OS_LOG_TYPE_ERROR))
      {
        v63 = objc_opt_class();
        v64 = NSStringFromClass(v63);
        v65 = NSStringFromSelector(aSelector);
        v66 = [NSString stringWithFormat:@"%@.%@", v64, v65];
        *buf = 138543874;
        v136 = v66;
        v137 = 2114;
        v138 = v127;
        v139 = 1024;
        LODWORD(v140) = v60;
        _os_log_error_impl(&_mh_execute_header, v62, OS_LOG_TYPE_ERROR, "[%{public}@] Warn: Error closing SQLite file at %{public}@: %d", buf, 0x1Cu);

        v19 = REMCRMergeableOrderedSet_ptr;
        a2 = aSelector;
      }
    }

    else if (os_log_type_enabled(container7, OS_LOG_TYPE_INFO))
    {
      v67 = objc_opt_class();
      v68 = NSStringFromClass(v67);
      v69 = NSStringFromSelector(a2);
      v70 = [NSString stringWithFormat:@"%@.%@", v68, v69];
      *buf = 138543618;
      v136 = v70;
      v137 = 2114;
      v138 = v127;
      _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_INFO, "[%{public}@] Closed SQLite file at %{public}@", buf, 0x16u);

      a2 = aSelector;
    }
  }

  if (db)
  {
    v71 = sqlite3_close(db);
    container8 = [v19[51] container];
    v73 = container8;
    if (v71)
    {
      if (os_log_type_enabled(container8, OS_LOG_TYPE_ERROR))
      {
        v74 = objc_opt_class();
        v75 = NSStringFromClass(v74);
        v76 = a2;
        v77 = v75;
        v78 = NSStringFromSelector(v76);
        v79 = [NSString stringWithFormat:@"%@.%@", v77, v78];
        *buf = 138543874;
        v136 = v79;
        v137 = 2114;
        v138 = v14;
        v139 = 1024;
        LODWORD(v140) = v71;
        _os_log_error_impl(&_mh_execute_header, v73, OS_LOG_TYPE_ERROR, "[%{public}@] Warn: Error closing SQLite file at %{public}@: %d", buf, 0x1Cu);
      }
    }

    else if (os_log_type_enabled(container8, OS_LOG_TYPE_INFO))
    {
      v80 = objc_opt_class();
      v81 = NSStringFromClass(v80);
      v82 = NSStringFromSelector(a2);
      v83 = [NSString stringWithFormat:@"%@.%@", v81, v82];
      *buf = 138543618;
      v136 = v83;
      v137 = 2114;
      v138 = v14;
      _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_INFO, "[%{public}@] Closed SQLite file at %{public}@", buf, 0x16u);
    }
  }

  if (!v24)
  {
    [v15 removeItemAtPath:v14 error:0];
    v128 = 0u;
    v129 = 0u;
    v130 = 0u;
    v131 = 0u;
    v84 = [&off_1009055C0 countByEnumeratingWithState:&v128 objects:v134 count:16];
    if (v84)
    {
      v85 = v84;
      v86 = *v129;
      do
      {
        for (i = 0; i != v85; i = i + 1)
        {
          if (*v129 != v86)
          {
            objc_enumerationMutation(&off_1009055C0);
          }

          v88 = [v14 stringByAppendingString:*(*(&v128 + 1) + 8 * i)];
          [v15 removeItemAtPath:v88 error:0];
        }

        v85 = [&off_1009055C0 countByEnumeratingWithState:&v128 objects:v134 count:16];
      }

      while (v85);
    }
  }

  v12 = v125;
LABEL_62:

  return v24;
}

@end