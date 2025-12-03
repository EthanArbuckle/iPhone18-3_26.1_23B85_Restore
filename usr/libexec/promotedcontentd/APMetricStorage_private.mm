@interface APMetricStorage_private
+ (id)metricsFileManager;
+ (id)pathsToExpiredBatchesWithFileManager:(id)manager closedPathPrefix:(id)prefix;
+ (id)preparedDataPathForDestination:(id)destination purpose:(int64_t)purpose containsSignature:(BOOL)signature;
+ (id)signedPathFromUnsigned:(id)unsigned;
+ (int64_t)_countEventsInBatch:(id)batch;
+ (int64_t)batchPathToPurpose:(id)purpose;
+ (void)moveExistingOpenFilesToClosed:(id)closed closedPrefix:(id)prefix;
+ (void)removeExpiredBatchesFromClosedPrefix:(id)prefix;
+ (void)shelveClosedForChannel:(id)channel;
@end

@implementation APMetricStorage_private

+ (void)moveExistingOpenFilesToClosed:(id)closed closedPrefix:(id)prefix
{
  closedCopy = closed;
  prefixCopy = prefix;
  v8 = [[APStorageManager alloc] initWithPathPrefix:@"m"];
  v102 = 0;
  v9 = [v8 directoryExistsAtPath:closedCopy error:&v102];
  v10 = v102;
  if (v10)
  {
    v64 = v10;
    v11 = APLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138740227;
      v104 = closedCopy;
      v105 = 2114;
      v106 = v64;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Error determining status of open storage directory (%{sensitive}@)! %{public}@", buf, 0x16u);
    }

LABEL_80:

    v12 = v64;
LABEL_81:

    goto LABEL_82;
  }

  if (v9)
  {
    v101 = 0;
    v12 = [v8 contentsOfDirectoryAtPath:closedCopy error:&v101];
    v13 = v101;
    if (v13)
    {
      v11 = v13;
      v64 = v12;
      v14 = APLogForCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138740227;
        v104 = closedCopy;
        v105 = 2114;
        v106 = v11;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Error getting contents of open storage directory (%{sensitive}@)! %{public}@", buf, 0x16u);
      }

LABEL_79:

      goto LABEL_80;
    }

    if (!v12)
    {
      goto LABEL_81;
    }

    v15 = v12;
    if (![v12 count])
    {
      goto LABEL_81;
    }

    v69 = prefixCopy;
    selfCopy = self;
    v16 = +[NSMutableArray array];
    v97 = 0u;
    v98 = 0u;
    v99 = 0u;
    v100 = 0u;
    v64 = v15;
    v17 = v15;
    v18 = [v17 countByEnumeratingWithState:&v97 objects:v113 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v98;
      do
      {
        for (i = 0; i != v19; i = i + 1)
        {
          if (*v98 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = [closedCopy stringByAppendingPathComponent:*(*(&v97 + 1) + 8 * i)];
          [v16 addObject:v22];
        }

        v19 = [v17 countByEnumeratingWithState:&v97 objects:v113 count:16];
      }

      while (v19);
    }

    v63 = closedCopy;

    v23 = +[NSMutableArray array];
    v93 = 0u;
    v94 = 0u;
    v95 = 0u;
    v96 = 0u;
    v24 = v16;
    v25 = [v24 countByEnumeratingWithState:&v93 objects:v112 count:16];
    v73 = v8;
    obj = v24;
    if (!v25)
    {
      v27 = 0;
      prefixCopy = v69;
      goto LABEL_48;
    }

    v26 = v25;
    v27 = 0;
    v28 = *v94;
    prefixCopy = v69;
    while (1)
    {
      v29 = 0;
      v30 = v27;
      do
      {
        if (*v94 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v31 = *(*(&v93 + 1) + 8 * v29);

        v92 = 0;
        v32 = [v8 directoryExistsAtPath:v31 error:&v92];
        v33 = v92;
        if (v33)
        {
          v34 = v33;
          v35 = APLogForCategory();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138740227;
            v104 = v31;
            v105 = 2114;
            v30 = v34;
            v106 = v34;
            _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Error opening contents of open storage directory (%{sensitive}@)! %{public}@", buf, 0x16u);
          }

          else
          {
            v30 = v34;
          }

LABEL_29:

          v8 = v73;
          goto LABEL_30;
        }

        if (v32)
        {
          v91 = 0;
          v35 = [v8 contentsOfDirectoryAtPath:v31 error:&v91];
          v36 = v91;
          if (v36)
          {
            v30 = v36;
          }

          else if (v35 && [v35 count])
          {
            v89 = 0u;
            v90 = 0u;
            v87 = 0u;
            v88 = 0u;
            v35 = v35;
            v37 = [v35 countByEnumeratingWithState:&v87 objects:v111 count:16];
            if (v37)
            {
              v38 = v37;
              v39 = *v88;
              do
              {
                for (j = 0; j != v38; j = j + 1)
                {
                  if (*v88 != v39)
                  {
                    objc_enumerationMutation(v35);
                  }

                  v41 = [v31 stringByAppendingPathComponent:*(*(&v87 + 1) + 8 * j)];
                  [v23 addObject:v41];
                }

                v38 = [v35 countByEnumeratingWithState:&v87 objects:v111 count:16];
              }

              while (v38);
            }

            v30 = 0;
            prefixCopy = v69;
          }

          else
          {
            v30 = 0;
          }

          goto LABEL_29;
        }

        v30 = 0;
LABEL_30:
        v29 = v29 + 1;
      }

      while (v29 != v26);
      v27 = v30;
      v24 = obj;
      v42 = [obj countByEnumeratingWithState:&v93 objects:v112 count:16];
      v26 = v42;
      if (!v42)
      {
LABEL_48:

        v86 = 0u;
        v84 = 0u;
        v85 = 0u;
        v83 = 0u;
        v43 = v23;
        v44 = [v43 countByEnumeratingWithState:&v83 objects:v110 count:16];
        if (!v44)
        {
          closedCopy = v63;
          v11 = v27;
          goto LABEL_78;
        }

        v45 = v44;
        v46 = *v84;
        closedCopy = v63;
        v11 = v27;
        v61 = *v84;
        v62 = v43;
        while (1)
        {
          v47 = 0;
          v65 = v45;
          do
          {
            if (*v84 != v46)
            {
              v48 = v47;
              objc_enumerationMutation(v43);
              v47 = v48;
            }

            v68 = v47;
            v49 = *(*(&v83 + 1) + 8 * v47);

            v82 = 0;
            v74 = v49;
            v50 = [v8 contentsOfDirectoryAtPath:v49 error:&v82];
            v51 = v82;
            v67 = v50;
            if (v51)
            {
              v11 = v51;
              v52 = APLogForCategory();
              if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138740227;
                v104 = v74;
                v105 = 2114;
                v106 = v11;
                _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "Error getting contents of open storage directory (%{sensitive}@)! %{public}@", buf, 0x16u);
              }
            }

            else
            {
              if (!v50 || ![v50 count])
              {
                v11 = 0;
                goto LABEL_74;
              }

              v80 = 0u;
              v81 = 0u;
              v78 = 0u;
              v79 = 0u;
              v52 = v50;
              v75 = [v52 countByEnumeratingWithState:&v78 objects:v109 count:16];
              if (v75)
              {
                v76 = 0;
                v71 = *v79;
                v72 = v52;
                do
                {
                  for (k = 0; k != v75; k = k + 1)
                  {
                    if (*v79 != v71)
                    {
                      objc_enumerationMutation(v52);
                    }

                    v54 = [v74 stringByAppendingPathComponent:*(*(&v78 + 1) + 8 * k)];
                    v55 = [v54 substringFromIndex:{objc_msgSend(v54, "rangeOfString:", @"/"}];
                    v56 = [prefixCopy stringByAppendingPathComponent:v55];

                    v57 = sub_10032CDB8(APMetricsObservability, v54, v8);
                    v58 = [selfCopy _countEventsInBatch:v54];

                    v77 = 0;
                    LOBYTE(v55) = [v8 moveItemAtPath:v54 toPath:v56 error:&v77];
                    v76 = v77;
                    if (v55)
                    {
                      v59 = sub_100007F08();
                      lastPathComponent = [v54 lastPathComponent];
                      sub_100394B50(v59, v57, lastPathComponent, [selfCopy batchPathToPurpose:v54], v58, v73, prefixCopy);

                      v8 = v73;
                    }

                    else
                    {
                      v59 = APLogForCategory();
                      if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 138740483;
                        v104 = v54;
                        v105 = 2117;
                        v106 = v56;
                        v107 = 2114;
                        v108 = v76;
                        _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "Error moving file from (%{sensitive}@) to (%{sensitive}@)! %{public}@", buf, 0x20u);
                      }

                      prefixCopy = v69;
                    }

                    v52 = v72;
                  }

                  v75 = [v72 countByEnumeratingWithState:&v78 objects:v109 count:16];
                }

                while (v75);
                v43 = v62;
                closedCopy = v63;
                v11 = v76;
                v46 = v61;
                v45 = v65;
              }

              else
              {
                v11 = 0;
              }
            }

LABEL_74:
            v47 = v68 + 1;
          }

          while ((v68 + 1) != v45);
          v45 = [v43 countByEnumeratingWithState:&v83 objects:v110 count:16];
          if (!v45)
          {
LABEL_78:

            v14 = obj;
            goto LABEL_79;
          }
        }
      }
    }
  }

LABEL_82:
}

+ (void)removeExpiredBatchesFromClosedPrefix:(id)prefix
{
  prefixCopy = prefix;
  v5 = [[APStorageManager alloc] initWithPathPrefix:@"m"];
  v19 = prefixCopy;
  [self pathsToExpiredBatchesWithFileManager:v5 closedPathPrefix:prefixCopy];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = v26 = 0u;
  v6 = [obj countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v6)
  {
    v8 = v6;
    v21 = *v24;
    *&v7 = 138740227;
    v18 = v7;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v24 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v23 + 1) + 8 * i);
        lastPathComponent = [v10 lastPathComponent];
        v12 = [self batchPathToPurpose:v10];
        v13 = sub_100007F08();
        sub_1003948B0(v13, lastPathComponent, v10, v12);

        v14 = sub_10032CE6C(APMetricsObservability, v10, v5);
        v15 = APLogForCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          *buf = 138477827;
          v28 = v10;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Removing batch due to expiration: %{private}@", buf, 0xCu);
        }

        v22 = 0;
        [v5 removeObjectAtPath:v10 error:&v22];
        v16 = v22;
        if (v16)
        {
          v17 = APLogForCategory();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v18;
            v28 = v10;
            v29 = 2114;
            v30 = v16;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Error removing batch at (%{sensitive}@)! %{public}@", buf, 0x16u);
          }
        }

        else
        {
          v17 = sub_100007F08();
          sub_100394D3C(v17, v14, lastPathComponent, v12, v5, v19);
        }
      }

      v8 = [obj countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v8);
  }
}

+ (id)pathsToExpiredBatchesWithFileManager:(id)manager closedPathPrefix:(id)prefix
{
  managerCopy = manager;
  prefixCopy = prefix;
  v79 = 0;
  v7 = [managerCopy directoryExistsAtPath:prefixCopy error:&v79];
  v8 = v79;
  if (v8)
  {
    v9 = v8;
    goto LABEL_3;
  }

  if (!v7)
  {
    v10 = &__NSArray0__struct;
    goto LABEL_5;
  }

  v78 = 0;
  v9 = [managerCopy contentsOfDirectoryAtPath:prefixCopy error:&v78];
  v12 = v78;
  if (v12)
  {
    v13 = v12;
    v14 = APLogForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138740227;
      v85 = prefixCopy;
      v86 = 2114;
      v87 = v13;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Error getting contents of closed storage directory (%{sensitive}@)! %{public}@", buf, 0x16u);
    }

    v10 = &__NSArray0__struct;
    goto LABEL_13;
  }

  if (!v9 || ![v9 count])
  {
LABEL_3:
    v10 = &__NSArray0__struct;
    goto LABEL_4;
  }

  v15 = +[NSMutableArray array];
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v50 = v9;
  v16 = v9;
  v17 = [v16 countByEnumeratingWithState:&v74 objects:v83 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v75;
    do
    {
      for (i = 0; i != v18; i = i + 1)
      {
        if (*v75 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = [prefixCopy stringByAppendingPathComponent:*(*(&v74 + 1) + 8 * i)];
        [v15 addObject:v21];
      }

      v18 = [v16 countByEnumeratingWithState:&v74 objects:v83 count:16];
    }

    while (v18);
  }

  v51 = prefixCopy;

  v22 = +[NSMutableArray array];
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v23 = v15;
  v24 = [v23 countByEnumeratingWithState:&v70 objects:v82 count:16];
  v54 = managerCopy;
  v52 = v23;
  if (!v24)
  {
    v13 = 0;
    goto LABEL_52;
  }

  v25 = v24;
  v13 = 0;
  v26 = *v71;
  do
  {
    for (j = 0; j != v25; j = j + 1)
    {
      if (*v71 != v26)
      {
        objc_enumerationMutation(v23);
      }

      v28 = *(*(&v70 + 1) + 8 * j);

      v69 = 0;
      v29 = [managerCopy directoryExistsAtPath:v28 error:&v69];
      v30 = v69;
      if (v30)
      {
        v13 = v30;
        v31 = APLogForCategory();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138740227;
          v85 = v28;
          v86 = 2114;
          v87 = v13;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Error opening contents of closed storage directory (%{sensitive}@)! %{public}@", buf, 0x16u);
        }
      }

      else
      {
        if (!v29)
        {
          v13 = 0;
          continue;
        }

        v68 = 0;
        v31 = [managerCopy contentsOfDirectoryAtPath:v28 error:&v68];
        v32 = v68;
        if (v32)
        {
          v13 = v32;
        }

        else if (v31 && [v31 count])
        {
          v66 = 0u;
          v67 = 0u;
          v64 = 0u;
          v65 = 0u;
          v31 = v31;
          v33 = [v31 countByEnumeratingWithState:&v64 objects:v81 count:16];
          if (v33)
          {
            v34 = v33;
            v35 = *v65;
            do
            {
              for (k = 0; k != v34; k = k + 1)
              {
                if (*v65 != v35)
                {
                  objc_enumerationMutation(v31);
                }

                v37 = [v28 stringByAppendingPathComponent:*(*(&v64 + 1) + 8 * k)];
                [v22 addObject:v37];
              }

              v34 = [v31 countByEnumeratingWithState:&v64 objects:v81 count:16];
            }

            while (v34);
          }

          v13 = 0;
          managerCopy = v54;
          v23 = v52;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    v25 = [v23 countByEnumeratingWithState:&v70 objects:v82 count:16];
  }

  while (v25);
LABEL_52:

  v38 = +[NSMutableArray array];
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  obj = v22;
  v39 = [obj countByEnumeratingWithState:&v60 objects:v80 count:16];
  if (v39)
  {
    v40 = v39;
    v41 = *v61;
    do
    {
      v42 = 0;
      v43 = v13;
      do
      {
        if (*v61 != v41)
        {
          objc_enumerationMutation(obj);
        }

        v44 = *(*(&v60 + 1) + 8 * v42);
        v59 = v43;
        v45 = [v54 contentsOfDirectoryAtPath:v44 error:&v59];
        v13 = v59;

        v58[0] = _NSConcreteStackBlock;
        v58[1] = 3221225472;
        v58[2] = sub_100334448;
        v58[3] = &unk_10047E820;
        v58[4] = v44;
        v46 = [v45 mapObjectsUsingBlock:v58];
        [v38 addObjectsFromArray:v46];

        v42 = v42 + 1;
        v43 = v13;
      }

      while (v40 != v42);
      v40 = [obj countByEnumeratingWithState:&v60 objects:v80 count:16];
    }

    while (v40);
  }

  if (v13)
  {
    v47 = APLogForCategory();
    v9 = v50;
    prefixCopy = v51;
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138740227;
      v85 = v51;
      v86 = 2114;
      v87 = v13;
      _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "Error getting contents of closed storage directory (%{sensitive}@)! %{public}@", buf, 0x16u);
    }

    v10 = &__NSArray0__struct;
LABEL_63:
    v14 = v52;

    managerCopy = v54;
  }

  else
  {
    managerCopy = v54;
    v9 = v50;
    prefixCopy = v51;
    if (v38 && [v38 count])
    {
      v48 = +[NSDate date];
      v49 = [v48 dateByAddingTimeInterval:-604800.0];

      v55[0] = _NSConcreteStackBlock;
      v55[1] = 3221225472;
      v55[2] = sub_100334454;
      v55[3] = &unk_10047E848;
      v56 = v54;
      v57 = v49;
      v47 = v49;
      v10 = [v38 filteredArrayUsingBlock:v55];

      goto LABEL_63;
    }

    v10 = &__NSArray0__struct;
    v14 = v52;
  }

LABEL_13:
LABEL_4:

LABEL_5:

  return v10;
}

+ (void)shelveClosedForChannel:(id)channel
{
  channelCopy = channel;
  v4 = [[APStorageManager alloc] initWithPathPrefix:@"m"];
  v46[0] = @"c";
  destination = [channelCopy destination];
  value = [destination value];
  v46[1] = value;
  v7 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [channelCopy purpose]);
  stringValue = [v7 stringValue];
  v46[2] = stringValue;
  v9 = [NSArray arrayWithObjects:v46 count:3];
  v10 = [NSString pathWithComponents:v9];

  v45[0] = @"s";
  destination2 = [channelCopy destination];
  value2 = [destination2 value];
  v45[1] = value2;
  v32 = channelCopy;
  v13 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [channelCopy purpose]);
  stringValue2 = [v13 stringValue];
  v45[2] = stringValue2;
  v15 = [NSArray arrayWithObjects:v45 count:3];
  v16 = [NSString pathWithComponents:v15];

  v39 = 0;
  v17 = [v4 directoryExistsAtPath:v10 error:&v39];
  v18 = v39;
  if (v18)
  {
    v19 = v18;
    v20 = APLogForCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 138478083;
      v42 = v10;
      v43 = 2114;
      v44 = v19;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Error determining status of closed storage directory (%{private}@)! %{public}@", buf, 0x16u);
    }

LABEL_24:

    goto LABEL_25;
  }

  if (v17)
  {
    v38 = 0;
    v20 = [v4 contentsOfDirectoryAtPath:v10 error:&v38];
    v21 = v38;
    if (v21)
    {
      v19 = v21;
      v22 = APLogForCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        *buf = 138478083;
        v42 = v10;
        v43 = 2114;
        v44 = v19;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "Error accessing files in (%{private}@)! %{public}@", buf, 0x16u);
      }
    }

    else
    {
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v22 = v20;
      v23 = [v22 countByEnumeratingWithState:&v34 objects:v40 count:16];
      if (v23)
      {
        v24 = v23;
        v31 = v20;
        v19 = 0;
        v25 = *v35;
        do
        {
          for (i = 0; i != v24; i = i + 1)
          {
            if (*v35 != v25)
            {
              objc_enumerationMutation(v22);
            }

            v27 = *(*(&v34 + 1) + 8 * i);

            v28 = [v10 stringByAppendingPathComponent:v27];
            v29 = [v16 stringByAppendingPathComponent:v27];
            v33 = 0;
            [v4 moveItemAtPath:v28 toPath:v29 error:&v33];
            v19 = v33;

            if (v19)
            {
              v30 = APLogForCategory();
              if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
              {
                *buf = 138543362;
                v42 = v19;
                _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "Error shelved file. %{public}@", buf, 0xCu);
              }
            }
          }

          v24 = [v22 countByEnumeratingWithState:&v34 objects:v40 count:16];
        }

        while (v24);
        v20 = v31;
        channelCopy = v32;
      }

      else
      {
        v19 = 0;
      }
    }

    goto LABEL_24;
  }

  v19 = 0;
LABEL_25:
}

+ (id)metricsFileManager
{
  v2 = [[APStorageManager alloc] initWithPathPrefix:@"m"];

  return v2;
}

+ (id)signedPathFromUnsigned:(id)unsigned
{
  unsignedCopy = unsigned;
  v4 = [NSString stringWithFormat:@"/%@/", @"ws"];
  v5 = [NSString stringWithFormat:@"/%@/", @"ns"];
  v6 = [unsignedCopy stringByReplacingOccurrencesOfString:v5 withString:v4];

  return v6;
}

+ (id)preparedDataPathForDestination:(id)destination purpose:(int64_t)purpose containsSignature:(BOOL)signature
{
  v5 = @"ns";
  if (signature)
  {
    v5 = @"ws";
  }

  return [NSString stringWithFormat:@"%@/%@/%@/%ld", @"p", destination, v5, purpose];
}

+ (int64_t)batchPathToPurpose:(id)purpose
{
  pathComponents = [purpose pathComponents];
  if ([pathComponents count] >= 2)
  {
    v5 = [pathComponents objectAtIndexedSubscript:{objc_msgSend(pathComponents, "count") - 2}];
    v6 = [NSScanner scannerWithString:v5];
    v8 = 0;
    if (![v6 scanInt:&v8] || (objc_msgSend(v6, "isAtEnd") & 1) == 0 || (v4 = v8, v8 <= 0))
    {
      APSimulateCrashNoKillProcess();
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (int64_t)_countEventsInBatch:(id)batch
{
  batchCopy = batch;
  v4 = objc_autoreleasePoolPush();
  v5 = [objc_alloc(+[MetricsModuleClasses batchClass](MetricsModuleClasses "batchClass"))];
  v6 = -1;
  do
  {
    nextMetric = [v5 nextMetric];

    ++v6;
  }

  while (nextMetric);

  objc_autoreleasePoolPop(v4);
  return v6;
}

@end