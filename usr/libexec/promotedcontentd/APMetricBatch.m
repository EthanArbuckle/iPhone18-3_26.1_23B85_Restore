@interface APMetricBatch
+ (BOOL)removeBatchByFileSystemToken:(id)a3;
- (APMetricBatch)initWithDestination:(id)a3 purpose:(int64_t)a4;
- (APMetricBatch)initWithPath:(id)a3;
- (BOOL)shouldRotate;
- (NSArray)metrics;
- (id)_closedFileDirectory;
- (id)_closedFilePath;
- (id)_destinationHashFromPath:(id)a3;
- (id)_openFileDirectory;
- (id)_openFilePath;
- (id)_purposeFromPath:(id)a3;
- (id)eCServerDictionaryRepresentationWithBlock:(id)a3;
- (id)fileSystemToken;
- (id)nextMetric;
- (void)_appendMetricToFile:(id)a3;
- (void)_deleteByFilePath:(id)a3;
- (void)close;
- (void)delete;
- (void)receivedMetric:(id)a3;
@end

@implementation APMetricBatch

- (BOOL)shouldRotate
{
  v3 = [(APMetricBatch *)self journeyBatchSettings];
  v4 = [v3 batchSizeUInteger];
  if (v4)
  {
    v5 = v4;
    v6 = [(APMetricBatch *)self storage];
    v7 = [v6 count] >= v5 + 2;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_openFilePath
{
  v3 = [(APMetricBatch *)self _openFileDirectory];
  v4 = [(APMetricBatch *)self identifier];
  v5 = [v3 stringByAppendingPathComponent:v4];

  return v5;
}

- (id)_openFileDirectory
{
  v3 = [(objc_class *)+[MetricsModuleClasses storageClass](MetricsModuleClasses openStoragePathPrefix];
  v4 = [(APMetricBatch *)self destinationHash];
  v5 = [NSNumber numberWithInteger:[(APMetricBatch *)self purpose]];
  v6 = [v5 stringValue];

  v7 = [v3 stringByAppendingPathComponent:v4];
  v8 = [v7 stringByAppendingPathComponent:v6];

  return v8;
}

- (id)_purposeFromPath:(id)a3
{
  v3 = a3;
  v4 = [(objc_class *)+[MetricsModuleClasses storageClass](MetricsModuleClasses closedStoragePathPrefix];
  v5 = [(objc_class *)+[MetricsModuleClasses storageClass](MetricsModuleClasses openStoragePathPrefix];
  v6 = v4;
  if ([v3 hasPrefix:v4] & 1) != 0 || (v6 = v5, (objc_msgSend(v3, "hasPrefix:", v5)) || (v6 = @"s", objc_msgSend(v3, "hasPrefix:", @"s")))
  {
    v7 = [v3 substringFromIndex:{-[__CFString length](v6, "length") + 1}];
  }

  else
  {
    v7 = 0;
  }

  v8 = [v7 pathComponents];
  if ([v8 count] < 2)
  {
    v10 = [NSString stringWithFormat:@"The path (%@) resulted in zero path components somehow!", v3];
    v11 = APLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138739971;
      v14 = v3;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "The path (%{sensitive}@) resulted in zero path components somehow!", buf, 0xCu);
    }

    APSimulateCrash();
    v9 = 0;
  }

  else
  {
    v9 = [v8 objectAtIndexedSubscript:1];
  }

  return v9;
}

- (id)_destinationHashFromPath:(id)a3
{
  v3 = a3;
  v4 = [(objc_class *)+[MetricsModuleClasses storageClass](MetricsModuleClasses closedStoragePathPrefix];
  v5 = [(objc_class *)+[MetricsModuleClasses storageClass](MetricsModuleClasses openStoragePathPrefix];
  v6 = v4;
  if ([v3 hasPrefix:v4] & 1) != 0 || (v6 = v5, (objc_msgSend(v3, "hasPrefix:", v5)) || (v6 = @"s", objc_msgSend(v3, "hasPrefix:", @"s")))
  {
    v7 = [v3 substringFromIndex:{-[__CFString length](v6, "length") + 1}];
  }

  else
  {
    v7 = 0;
  }

  v8 = [v7 pathComponents];
  if ([v8 count])
  {
    v9 = [v8 firstObject];
  }

  else
  {
    v10 = [NSString stringWithFormat:@"The path (%@) resulted in zero path components somehow!", v3];
    v11 = APLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138739971;
      v14 = v3;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "The path (%{sensitive}@) resulted in zero path components somehow!", buf, 0xCu);
    }

    APSimulateCrash();
    v9 = 0;
  }

  return v9;
}

- (APMetricBatch)initWithPath:(id)a3
{
  v5 = a3;
  if (v5)
  {
    if (qword_1004E6D70 != -1)
    {
      sub_10039471C();
    }

    v6 = [[APStorageManager alloc] initWithPathPrefix:@"m"];
    v36 = 0;
    v7 = [v6 fileForReadingAtKeyPath:v5 error:&v36];
    v8 = v36;
    if (v8)
    {
      v9 = [NSString stringWithFormat:@"Error unarchiving the contents of the file (%@)! %@", v5, v8];
      v10 = APLogForCategory();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
LABEL_8:

        APSimulateCrash();
        v14 = 0;
LABEL_34:

        goto LABEL_35;
      }

      *buf = 138740227;
      *v38 = v5;
      *&v38[8] = 2114;
      *v39 = v8;
      v11 = "Error unarchiving the contents of the file (%{sensitive}@)! %{public}@";
      v12 = v10;
      v13 = 22;
LABEL_7:
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, v11, buf, v13);
      goto LABEL_8;
    }

    if (!v7)
    {
      v9 = [NSString stringWithFormat:@"We didn't get a file (%@) back from the secure file manager!", v5];
      v10 = APLogForCategory();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_8;
      }

      *buf = 138739971;
      *v38 = v5;
      v11 = "We didn't get a file (%{sensitive}@) back from the secure file manager!";
      v12 = v10;
      v13 = 12;
      goto LABEL_7;
    }

    v9 = [v7 nextObject];
    v15 = [v7 nextObject];
    v35.receiver = self;
    v35.super_class = APMetricBatch;
    v16 = [(APMetricBatch *)&v35 init];
    self = v16;
    if (v16)
    {
      v17 = [(APMetricBatch *)v16 _destinationHashFromPath:v5];
      destinationHash = self->_destinationHash;
      self->_destinationHash = v17;

      v19 = [(APMetricBatch *)self _purposeFromPath:v5];
      self->_purpose = [v19 intValue];

      self->_writable = 0;
      v20 = objc_alloc_init(APJourneyBatchSettings);
      journeyBatchSettings = self->_journeyBatchSettings;
      self->_journeyBatchSettings = v20;

      objc_storeStrong(&self->_secureFile, v7);
      objc_storeStrong(&self->_path, a3);
    }

    if (v9)
    {
      v22 = v15 == 0;
    }

    else
    {
      v22 = 1;
    }

    if (v22)
    {
      v23 = APLogForCategory();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109635;
        *v38 = v9 != 0;
        *&v38[4] = 1024;
        *&v38[6] = v15 != 0;
        *v39 = 2117;
        *&v39[2] = v5;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "File did not contain at least 2 elements! yyyyDDDHHmm: %d, identifierUUID: %d. %{sensitive}@", buf, 0x18u);
      }

      CreateDiagnosticReport();
      [(APMetricBatch *)self _deleteByFilePath:v5];
    }

    else
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        if (self)
        {
          v25 = [v15 UUIDString];
          v26 = [NSString stringWithFormat:@"%@.%@", v9, v25];
          identifier = self->_identifier;
          self->_identifier = v26;
        }

        v28 = APLogForCategory();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          v29 = [(APMetricBatch *)self identifier];
          *buf = 138543362;
          *v38 = v29;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "created closed batch %{public}@", buf, 0xCu);
        }

        v14 = self;
        goto LABEL_33;
      }

      v30 = APLogForCategory();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v31 = objc_opt_class();
        v34 = v31;
        v32 = [v5 lastPathComponent];
        *buf = 138478083;
        *v38 = v31;
        *&v38[8] = 2114;
        *v39 = v32;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "Expected UUID class type but decrypted type %{private}@ in batch %{public}@, please file a radar", buf, 0x16u);
      }
    }

    v14 = 0;
LABEL_33:

    goto LABEL_34;
  }

  v14 = 0;
LABEL_35:

  return v14;
}

- (APMetricBatch)initWithDestination:(id)a3 purpose:(int64_t)a4
{
  v6 = a3;
  v36.receiver = self;
  v36.super_class = APMetricBatch;
  v7 = [(APMetricBatch *)&v36 init];
  if (!v7)
  {
    goto LABEL_13;
  }

  v32 = v6;
  v8 = [v6 value];
  v9 = +[NSDate date];
  v10 = [v9 yearDayOfYearHourMinute];

  v11 = +[NSUUID UUID];
  v31 = v8;
  objc_storeStrong(&v7->_destinationHash, v8);
  v7->_purpose = a4;
  v12 = [v11 UUIDString];
  v13 = [NSString stringWithFormat:@"%@.%@", v10, v12];
  identifier = v7->_identifier;
  v7->_identifier = v13;

  v15 = [NSMutableArray arrayWithObjects:v10, v11, 0];
  storage = v7->_storage;
  v7->_storage = v15;

  v7->_writable = 1;
  v17 = objc_alloc_init(APJourneyBatchSettings);
  journeyBatchSettings = v7->_journeyBatchSettings;
  v7->_journeyBatchSettings = v17;

  v19 = [[APStorageManager alloc] initWithPathPrefix:@"m"];
  v20 = [(APMetricBatch *)v7 _openFilePath];
  v35 = 0;
  v21 = [v19 fileForWritingAtKeyPath:v20 error:&v35];
  v22 = v35;
  v23 = sub_100007F08();
  v24 = [v20 lastPathComponent];
  sub_1003947DC(v23, v24, a4);

  if (!v22)
  {
    v34 = 0;
    [v21 addObject:v10 error:&v34];
    v27 = v34;
    v33 = v27;
    [v21 addObject:v11 error:&v33];
    v22 = v33;

    v28 = APLogForCategory();
    v25 = v28;
    if (v22)
    {
      v6 = v32;
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        *buf = 138740227;
        v38 = v20;
        v39 = 2114;
        v40 = v22;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Could not write to file (%{sensitive}@)! Error: %{public}@", buf, 0x16u);
      }

      goto LABEL_6;
    }

    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      v29 = [(APMetricBatch *)v7 identifier];
      *buf = 138543362;
      v38 = v29;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "created open batch %{public}@", buf, 0xCu);
    }

    v6 = v32;
LABEL_13:
    v26 = v7;
    goto LABEL_14;
  }

  v25 = APLogForCategory();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    *buf = 138740227;
    v38 = v20;
    v39 = 2114;
    v40 = v22;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Could not open file (%{sensitive}@)! Error: %{public}@", buf, 0x16u);
  }

  v6 = v32;
LABEL_6:

  v26 = 0;
LABEL_14:

  return v26;
}

- (NSArray)metrics
{
  v2 = [(APMetricBatch *)self storage];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 subarrayWithRange:{2, objc_msgSend(v2, "count") - 2}];
  }

  else
  {
    v5 = APLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_FAULT, "Accessing 'metrics' property for read only batch is not supported. Please file a radar against Promoted Content | (New Bugs)", v7, 2u);
    }

    v4 = &__NSArray0__struct;
  }

  return v4;
}

- (id)nextMetric
{
  v2 = [(APMetricBatch *)self secureFile];
  v3 = [v2 nextObject];

  return v3;
}

- (id)eCServerDictionaryRepresentationWithBlock:(id)a3
{
  v4 = a3;
  if ([(APMetricBatch *)self writable])
  {
    v5 = APLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Attempt to get a dictionary representation for an open batch!", buf, 2u);
    }

    APSimulateCrash();
    v6 = 0;
  }

  else
  {
    v7 = [[NSMutableDictionary alloc] initWithCapacity:4];
    v8 = objc_autoreleasePoolPush();
    v9 = [(APMetricBatch *)self nextMetric];
    if (v9)
    {
      v10 = v9;
      v36 = self;
      v11 = -9999;
      while (1)
      {
        if (v4)
        {
          v4[2](v4, v10);
        }

        v12 = [v10 purpose];
        v13 = v12;
        if (v11 != -9999)
        {
          v13 = v11;
          if (v11 != v12)
          {
            break;
          }
        }

        v11 = v13;
        v14 = [NSString stringWithFormat:@"%ld", v12];
        v15 = [v7 objectForKey:v14];
        if (!v15)
        {
          v15 = objc_alloc_init(NSMutableArray);
          [v7 setObject:v15 forKey:v14];
        }

        if (objc_opt_respondsToSelector())
        {
          v16 = [v10 ecServerDictionaryRepresentation];
          if (v16)
          {
            v17 = v16;
            [v15 addObject:v16];
          }
        }

        objc_autoreleasePoolPop(v8);
        v8 = objc_autoreleasePoolPush();
        v10 = [(APMetricBatch *)v36 nextMetric];
        if (!v10)
        {
          v35 = v4;
          objc_autoreleasePoolPop(v8);
          v18 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v7, "count")}];
          v19 = [v7 allKeys];
          v37 = 0u;
          v38 = 0u;
          v39 = 0u;
          v40 = 0u;
          v20 = [v19 countByEnumeratingWithState:&v37 objects:v44 count:16];
          if (v20)
          {
            v21 = v20;
            v22 = *v38;
            do
            {
              for (i = 0; i != v21; i = i + 1)
              {
                if (*v38 != v22)
                {
                  objc_enumerationMutation(v19);
                }

                v24 = *(*(&v37 + 1) + 8 * i);
                v25 = [v7 objectForKey:v24];
                v26 = [NSArray arrayWithArray:v25];
                [v18 setObject:v26 forKey:v24];
              }

              v21 = [v19 countByEnumeratingWithState:&v37 objects:v44 count:16];
            }

            while (v21);
          }

          v27 = [NSDictionary dictionaryWithDictionary:v18];
          v42[0] = @"batch";
          v28 = [(APMetricBatch *)v36 identifier];
          v43[0] = v28;
          v42[1] = @"events";
          v29 = [NSString stringWithFormat:@"%ld", [(APMetricBatch *)v36 purpose]];
          v30 = [v27 objectForKeyedSubscript:v29];
          v43[1] = v30;
          v42[2] = @"purpose";
          v31 = [NSNumber numberWithInteger:[(APMetricBatch *)v36 purpose]];
          v43[2] = v31;
          v6 = [NSDictionary dictionaryWithObjects:v43 forKeys:v42 count:3];

          v4 = v35;
          goto LABEL_32;
        }
      }

      v33 = APLogForCategory();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "Purposes don't match", buf, 2u);
      }

      objc_autoreleasePoolPop(v8);
    }

    else
    {
      objc_autoreleasePoolPop(v8);
      v32 = APLogForCategory();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "Found an empty closed metric batch file!", buf, 2u);
      }
    }

    v6 = 0;
LABEL_32:
  }

  return v6;
}

- (void)receivedMetric:(id)a3
{
  v4 = a3;
  v5 = APLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [(APMetricBatch *)self identifier];
    v11 = 138543362;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "received metric on batch %{public}@", &v11, 0xCu);
  }

  if ([(APMetricBatch *)self writable])
  {
    v7 = [(APMetricBatch *)self storage];
    [v7 addObject:v4];
    v8 = objc_autoreleasePoolPush();
    [(APMetricBatch *)self _appendMetricToFile:v4];
    objc_autoreleasePoolPop(v8);
  }

  else
  {
    v9 = APLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [(APMetricBatch *)self identifier];
      v11 = 138543362;
      v12 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Attempt to write to a closed batch for %{public}@", &v11, 0xCu);
    }

    APSimulateCrash();
  }
}

- (id)_closedFileDirectory
{
  v3 = [(objc_class *)+[MetricsModuleClasses storageClass](MetricsModuleClasses closedStoragePathPrefix];
  v4 = [(APMetricBatch *)self destinationHash];
  v5 = [NSNumber numberWithInteger:[(APMetricBatch *)self purpose]];
  v6 = [v5 stringValue];

  v7 = [v3 stringByAppendingPathComponent:v4];
  v8 = [v7 stringByAppendingPathComponent:v6];

  return v8;
}

- (id)_closedFilePath
{
  v3 = [(APMetricBatch *)self _closedFileDirectory];
  v4 = [(APMetricBatch *)self identifier];
  v5 = [v3 stringByAppendingPathComponent:v4];

  return v5;
}

- (void)_appendMetricToFile:(id)a3
{
  v4 = a3;
  v5 = [(APMetricBatch *)self storage];
  v6 = [(APMetricBatch *)self _openFilePath];
  v24 = 0;
  v7 = [NSKeyedArchiver archivedDataWithRootObject:v4 requiringSecureCoding:1 error:&v24];
  v8 = v24;
  if (v7)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    v11 = [[APStorageManager alloc] initWithPathPrefix:@"m"];
    if (([v11 fileExistsAtPath:v6 error:0]& 1) == 0)
    {
      v13 = APLogForCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = [(APMetricBatch *)self identifier];
        *buf = 138543362;
        v26 = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Trying to append metric to nonexistent file %{public}@", buf, 0xCu);
      }
    }

    v23 = 0;
    v15 = [v11 fileForAppendingAtKeyPath:v6 error:&v23];
    v16 = v23;
    if (v16)
    {
      v10 = v16;
      v17 = APLogForCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 138739971;
        v26 = v6;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Could not open file (%{sensitive}@)!", buf, 0xCu);
      }
    }

    else
    {
      v22 = 0;
      [v15 addObject:v4 error:&v22];
      v10 = v22;
      v17 = +[NSDate date];
      if (v10)
      {
        v18 = APLogForCategory();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543619;
          v26 = v4;
          v27 = 2117;
          v28 = v6;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Could not add metric (%{public}@) to file (%{sensitive}@)!", buf, 0x16u);
        }
      }

      else
      {
        v19 = [v4 timestamp];
        [v17 timeIntervalSinceDate:v19];
        v21 = v20;

        v18 = sub_100007F08();
        sub_1003949C8(v18, [v4 purpose], v21);
      }
    }
  }

  else
  {
    v10 = v8;
    v11 = APLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [v5 count];
      *buf = 134218243;
      v26 = v12;
      v27 = 2117;
      v28 = v6;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Could not archive metrics (%lu) to path (%{sensitive}@)!", buf, 0x16u);
    }
  }
}

- (void)close
{
  self->_writable = 0;
  v3 = [(APMetricBatch *)self storage];
  v4 = [v3 count];

  v5 = [[APStorageManager alloc] initWithPathPrefix:@"m"];
  v6 = [(APMetricBatch *)self _openFilePath];
  v7 = [(APMetricBatch *)self _closedFilePath];
  v8 = sub_10032CDB8(APMetricsObservability, v6, v5);
  v9 = APLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = [(APMetricBatch *)self identifier];
    *buf = 138543362;
    v23 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "close batch %{public}@", buf, 0xCu);
  }

  v21 = 0;
  v11 = [v5 moveItemAtPath:v6 toPath:v7 error:&v21];
  v12 = v21;
  v13 = v12;
  if (v11)
  {
    v14 = v12 == 0;
  }

  else
  {
    v14 = 0;
  }

  if (v14)
  {
    v17 = v4 - 2;
    v15 = sub_100007F08();
    v18 = [v6 lastPathComponent];
    v19 = [(APMetricBatch *)self purpose];
    v20 = [(objc_class *)+[MetricsModuleClasses storageClass](MetricsModuleClasses closedStoragePathPrefix];
    sub_100394B50(v15, v8, v18, v19, v17, v5, v20);
  }

  else
  {
    v15 = [NSString stringWithFormat:@"Error closing batch! Could not move file from (%@) to (%@)! %@", v6, v7, v12];
    v16 = APLogForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138740483;
      v23 = v6;
      v24 = 2117;
      v25 = v7;
      v26 = 2114;
      v27 = v13;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Error closing batch! Could not move file from (%{sensitive}@) to (%{sensitive}@)! %{public}@", buf, 0x20u);
    }

    APSimulateCrash();
  }
}

- (void)_deleteByFilePath:(id)a3
{
  v4 = a3;
  if ([(APMetricBatch *)self writable])
  {
    v5 = APLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Attempt to delete an open batch!", v6, 2u);
    }

    APSimulateCrash();
  }

  else
  {
    [objc_opt_class() removeBatchByFileSystemToken:v4];
  }
}

- (void)delete
{
  v3 = [(APMetricBatch *)self secureFile];
  [v3 close];

  v4 = [(APMetricBatch *)self _closedFilePath];
  [(APMetricBatch *)self _deleteByFilePath:v4];
}

- (id)fileSystemToken
{
  if ([(APMetricBatch *)self writable])
  {
    v3 = APLogForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "fileSystemToken is available for closed batches only!", v8, 2u);
    }

    APSimulateCrash();
    v4 = &stru_1004810B8;
  }

  else
  {
    v5 = [(APMetricBatch *)self path];
    v6 = [v5 length];

    if (v6)
    {
      [(APMetricBatch *)self path];
    }

    else
    {
      [(APMetricBatch *)self _closedFilePath];
    }
    v4 = ;
  }

  return v4;
}

+ (BOOL)removeBatchByFileSystemToken:(id)a3
{
  v3 = a3;
  if ([v3 length])
  {
    v4 = [[APStorageManager alloc] initWithPathPrefix:@"m"];
    v5 = sub_10032CE6C(APMetricsObservability, v3, v4);
    v14 = 0;
    v6 = [v4 removeObjectAtPath:v3 error:&v14];
    v7 = v14;
    v8 = (v7 == 0) & v6;
    if (v8)
    {
      v9 = sub_100007F08();
      v10 = [v3 lastPathComponent];
      v11 = [APMetricStorage_private batchPathToPurpose:v3];
      v12 = [(objc_class *)+[MetricsModuleClasses storageClass](MetricsModuleClasses closedStoragePathPrefix];
      sub_100394D3C(v9, v5, v10, v11, v4, v12);
    }

    else
    {
      v9 = APLogForCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v16 = v7;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Error removing file at path! %{public}@", buf, 0xCu);
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end