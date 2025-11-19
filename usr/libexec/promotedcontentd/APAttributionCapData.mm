@interface APAttributionCapData
- (BOOL)_loadAllDataFromKeychainForKey:(id)a3 clickCountData:(id *)a4 downloadData:(id *)a5;
- (BOOL)capDataFromKeyChain:(id)a3 adamID:(id)a4;
- (id)restoreCapDataArrayFromPlist:(id)a3;
- (void)_clearCapDownloadDataProperties;
- (void)loadCapData:(id)a3;
@end

@implementation APAttributionCapData

- (void)loadCapData:(id)a3
{
  v4 = a3;
  v22[0] = @"ADCapDataKeychainKey";
  v22[1] = @"ADLandingCapDataKeychainKey";
  v22[2] = @"ADIris1CapDataKeychainKey";
  v22[3] = @"ADIris2CapDataKeychainKey";
  v22[4] = @"ADIris3CapDataKeychainKey";
  v22[5] = @"ADFloraCapDataKeychainKey";
  v22[6] = @"ADMetisCapDataKeychainKey";
  [NSArray arrayWithObjects:v22 count:7];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v18 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (!v6)
  {

LABEL_11:
    v13 = APLogForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [v4 stringValue];
      *buf = 138543362;
      v20 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "No Cap data found for adamID %{public}@", buf, 0xCu);
    }

    goto LABEL_14;
  }

  v7 = v6;
  v8 = 0;
  v9 = *v16;
  do
  {
    for (i = 0; i != v7; i = i + 1)
    {
      if (*v16 != v9)
      {
        objc_enumerationMutation(v5);
      }

      v11 = *(*(&v15 + 1) + 8 * i);
      v12 = objc_autoreleasePoolPush();
      v8 |= [(APAttributionCapData *)self capDataFromKeyChain:v11 adamID:v4, v15];
      objc_autoreleasePoolPop(v12);
    }

    v7 = [v5 countByEnumeratingWithState:&v15 objects:v21 count:16];
  }

  while (v7);

  if ((v8 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
}

- (BOOL)_loadAllDataFromKeychainForKey:(id)a3 clickCountData:(id *)a4 downloadData:(id *)a5
{
  v8 = a3;
  v9 = objc_autoreleasePoolPush();
  v22 = 0;
  v10 = [APKeychainServices objectForPropertyListKey:v8 error:&v22];
  v11 = v22;
  if (v10 && [v10 length])
  {
    v21 = 0;
    v12 = [NSPropertyListSerialization propertyListWithData:v10 options:0 format:0 error:&v21];
    v13 = v21;

    objc_autoreleasePoolPop(v9);
    if (v13)
    {
      v14 = APLogForCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v24 = v13;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Error restoring cap data %{public}@", buf, 0xCu);
      }

      v15 = 0;
    }

    else
    {
      v18 = [v12 objectForKey:@"ADToroIDKey"];
      v15 = v18 != 0;
      if (v18)
      {
        if (a4)
        {
          v19 = [v12 objectForKey:@"ADToroClickTypeKey"];
          *a4 = [(APAttributionCapData *)self restoreCapDataArrayFromPlist:v19];
        }

        if (a5)
        {
          v20 = [v12 objectForKey:@"ADDownloadTypeKey"];
          *a5 = [(APAttributionCapData *)self restoreCapDataArrayFromPlist:v20];
        }
      }

      else
      {
        APSimulateCrashNoKillProcess();
      }
    }
  }

  else
  {
    v16 = APLogForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "No data to restore. Initializing an empty Cap Data object.", buf, 2u);
    }

    objc_autoreleasePoolPop(v9);
    v15 = 0;
    v12 = v11;
  }

  return v15;
}

- (BOOL)capDataFromKeyChain:(id)a3 adamID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v84 = 0;
  v85 = 0;
  v9 = [(APAttributionCapData *)self _loadAllDataFromKeychainForKey:v6 clickCountData:&v85 downloadData:&v84];
  v10 = v85;
  v75 = v84;
  objc_autoreleasePoolPop(v8);
  if (!v9)
  {
    v25 = 0;
    v24 = v75;
    goto LABEL_61;
  }

  v11 = APLogForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v7 stringValue];
    *buf = 138543362;
    v88 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Attempting to attach click information for Adam ID: %{public}@", buf, 0xCu);
  }

  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v13 = [v10 reverseObjectEnumerator];
  v14 = [v13 countByEnumeratingWithState:&v80 objects:v93 count:16];
  v74 = v10;
  if (v14)
  {
    v15 = v14;
    v72 = self;
    v16 = v6;
    v17 = *v81;
LABEL_6:
    v18 = 0;
    while (1)
    {
      if (*v81 != v17)
      {
        objc_enumerationMutation(v13);
      }

      v19 = *(*(&v80 + 1) + 8 * v18);
      v20 = [v19 identifier];
      v21 = [v7 stringValue];
      v22 = [v20 isEqualToString:v21];

      if (v22)
      {
        break;
      }

      if (v15 == ++v18)
      {
        v15 = [v13 countByEnumeratingWithState:&v80 objects:v93 count:16];
        if (v15)
        {
          goto LABEL_6;
        }

        v23 = 0;
        v6 = v16;
        v24 = v75;
        self = v72;
        goto LABEL_30;
      }
    }

    v26 = APLogForCategory();
    v6 = v16;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = [v7 stringValue];
      v28 = [v19 dictionaryRepresentation];
      v29 = [v28 jsonString];
      *buf = 138543874;
      v88 = v16;
      v89 = 2114;
      v90 = v27;
      v91 = 2114;
      v92 = v29;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Found a click cap object from %{public}@ for Adam ID %{public}@: %{public}@", buf, 0x20u);
    }

    v23 = v19;
    self = v72;
    if (!v23)
    {
      v24 = v75;
      goto LABEL_31;
    }

    [v23 timestamp];
    v31 = v30;
    [(APAttributionCapData *)v72 searchAdClickTimestamp];
    v24 = v75;
    if (v31 <= v32)
    {
      goto LABEL_31;
    }

    v33 = [v23 dictionaryRepresentation];
    v34 = [v33 jsonString];
    v13 = [NSString stringWithFormat:@" click cap data with data from %@:\n%@", v6, v34];

    [(APAttributionCapData *)v72 searchAdClickTimestamp];
    v36 = v35;
    v37 = APLogForCategory();
    v38 = os_log_type_enabled(v37, OS_LOG_TYPE_INFO);
    if (v36 == 0.0)
    {
      if (v38)
      {
        *buf = 138543362;
        v88 = v13;
        v39 = "Adding %{public}@";
LABEL_25:
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, v39, buf, 0xCu);
      }
    }

    else if (v38)
    {
      *buf = 138543362;
      v88 = v13;
      v39 = "Replacing %{public}@";
      goto LABEL_25;
    }

    [v23 timestamp];
    [(APAttributionCapData *)v72 setSearchAdClickTimestamp:?];
    v40 = [v23 adMetadata];
    [(APAttributionCapData *)v72 setAdMetadata:v40];

    [(APAttributionCapData *)v72 _clearCapDownloadDataProperties];
    if ([v6 isEqualToString:@"ADCapDataKeychainKey"])
    {
      v41 = 1;
    }

    else
    {
      v41 = 2;
    }

    [(APAttributionCapData *)v72 setClickOrigin:v41];
    goto LABEL_30;
  }

  v23 = 0;
  v24 = v75;
LABEL_30:

LABEL_31:
  v42 = APLogForCategory();
  if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
  {
    v43 = [v7 stringValue];
    *buf = 138543362;
    v88 = v43;
    _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_INFO, "Attempting to attach download information for Adam ID: %{public}@", buf, 0xCu);
  }

  v73 = v23;

  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v44 = [v24 reverseObjectEnumerator];
  v45 = [v44 countByEnumeratingWithState:&v76 objects:v86 count:16];
  if (!v45)
  {
    v53 = 0;
    v10 = v74;
    goto LABEL_59;
  }

  v46 = v45;
  v71 = v6;
  v47 = *v77;
  while (2)
  {
    for (i = 0; i != v46; i = i + 1)
    {
      if (*v77 != v47)
      {
        objc_enumerationMutation(v44);
      }

      v49 = *(*(&v76 + 1) + 8 * i);
      v50 = [v49 identifier];
      v51 = [v7 stringValue];
      v52 = [v50 isEqualToString:v51];

      if (v52)
      {
        v54 = APLogForCategory();
        if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
        {
          v55 = [v7 stringValue];
          v56 = [v49 dictionaryRepresentation];
          v57 = [v56 jsonString];
          *buf = 138543618;
          v88 = v55;
          v89 = 2114;
          v90 = v57;
          _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_INFO, "Found a download object for Adam ID %{public}@: %{public}@", buf, 0x16u);
        }

        v53 = v49;
        v6 = v71;
        v10 = v74;
        if (!v53 || ([v53 timestamp], v59 = v58, -[APAttributionCapData downloadClickTimestamp](self, "downloadClickTimestamp"), v59 <= v60))
        {
          v24 = v75;
          goto LABEL_60;
        }

        v61 = [v53 dictionaryRepresentation];
        v62 = [v61 jsonString];
        v44 = [NSString stringWithFormat:@" download cap data with data from %@:\n%@", v71, v62];

        [(APAttributionCapData *)self downloadClickTimestamp];
        v64 = v63;
        v65 = APLogForCategory();
        v66 = os_log_type_enabled(v65, OS_LOG_TYPE_INFO);
        if (v64 == 0.0)
        {
          if (v66)
          {
            *buf = 138543362;
            v88 = v44;
            v67 = "Adding %{public}@";
LABEL_53:
            _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_INFO, v67, buf, 0xCu);
          }
        }

        else if (v66)
        {
          *buf = 138543362;
          v88 = v44;
          v67 = "Replacing %{public}@";
          goto LABEL_53;
        }

        -[APAttributionCapData setAttributionDownloadType:](self, "setAttributionDownloadType:", [v53 downloadType]);
        [v53 timestamp];
        [(APAttributionCapData *)self setDownloadClickTimestamp:?];
        v68 = [v53 adMetadata];
        [(APAttributionCapData *)self setAdMetadata:v68];

        if ([v71 isEqualToString:@"ADCapDataKeychainKey"])
        {
          v69 = 1;
        }

        else
        {
          v69 = 2;
        }

        [(APAttributionCapData *)self setClickOrigin:v69];
        goto LABEL_58;
      }
    }

    v46 = [v44 countByEnumeratingWithState:&v76 objects:v86 count:16];
    if (v46)
    {
      continue;
    }

    break;
  }

  v53 = 0;
  v6 = v71;
  v10 = v74;
LABEL_58:
  v24 = v75;
LABEL_59:

LABEL_60:
  v25 = (v10 | v24) != 0;

LABEL_61:
  return v25;
}

- (void)_clearCapDownloadDataProperties
{
  [(APAttributionCapData *)self setDownloadClickTimestamp:0.0];

  [(APAttributionCapData *)self setAttributionDownloadType:0];
}

- (id)restoreCapDataArrayFromPlist:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v3 count]);
  if (v3)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v14 + 1) + 8 * i);
          v11 = [APAttributionFrequencyCap alloc];
          v12 = [(APAttributionFrequencyCap *)v11 initWithDictionary:v10, v14];
          [v4 addObject:v12];
        }

        v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }
  }

  return v4;
}

@end