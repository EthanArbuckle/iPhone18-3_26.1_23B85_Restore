@interface APMetricBatch
+ (BOOL)removeBatchByFileSystemToken:(id)token;
- (APMetricBatch)initWithDestination:(id)destination purpose:(int64_t)purpose;
- (APMetricBatch)initWithPath:(id)path;
- (BOOL)shouldRotate;
- (NSArray)metrics;
- (id)_closedFileDirectory;
- (id)_closedFilePath;
- (id)_destinationHashFromPath:(id)path;
- (id)_openFileDirectory;
- (id)_openFilePath;
- (id)_purposeFromPath:(id)path;
- (id)eCServerDictionaryRepresentationWithBlock:(id)block;
- (id)fileSystemToken;
- (id)nextMetric;
- (void)_appendMetricToFile:(id)file;
- (void)_deleteByFilePath:(id)path;
- (void)close;
- (void)delete;
- (void)receivedMetric:(id)metric;
@end

@implementation APMetricBatch

- (BOOL)shouldRotate
{
  journeyBatchSettings = [(APMetricBatch *)self journeyBatchSettings];
  batchSizeUInteger = [journeyBatchSettings batchSizeUInteger];
  if (batchSizeUInteger)
  {
    v5 = batchSizeUInteger;
    storage = [(APMetricBatch *)self storage];
    v7 = [storage count] >= v5 + 2;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_openFilePath
{
  _openFileDirectory = [(APMetricBatch *)self _openFileDirectory];
  identifier = [(APMetricBatch *)self identifier];
  v5 = [_openFileDirectory stringByAppendingPathComponent:identifier];

  return v5;
}

- (id)_openFileDirectory
{
  openStoragePathPrefix = [(objc_class *)+[MetricsModuleClasses storageClass](MetricsModuleClasses openStoragePathPrefix];
  destinationHash = [(APMetricBatch *)self destinationHash];
  v5 = [NSNumber numberWithInteger:[(APMetricBatch *)self purpose]];
  stringValue = [v5 stringValue];

  v7 = [openStoragePathPrefix stringByAppendingPathComponent:destinationHash];
  v8 = [v7 stringByAppendingPathComponent:stringValue];

  return v8;
}

- (id)_purposeFromPath:(id)path
{
  pathCopy = path;
  closedStoragePathPrefix = [(objc_class *)+[MetricsModuleClasses storageClass](MetricsModuleClasses closedStoragePathPrefix];
  openStoragePathPrefix = [(objc_class *)+[MetricsModuleClasses storageClass](MetricsModuleClasses openStoragePathPrefix];
  v6 = closedStoragePathPrefix;
  if ([pathCopy hasPrefix:closedStoragePathPrefix] & 1) != 0 || (v6 = openStoragePathPrefix, (objc_msgSend(pathCopy, "hasPrefix:", openStoragePathPrefix)) || (v6 = @"s", objc_msgSend(pathCopy, "hasPrefix:", @"s")))
  {
    v7 = [pathCopy substringFromIndex:{-[__CFString length](v6, "length") + 1}];
  }

  else
  {
    v7 = 0;
  }

  pathComponents = [v7 pathComponents];
  if ([pathComponents count] < 2)
  {
    pathCopy = [NSString stringWithFormat:@"The path (%@) resulted in zero path components somehow!", pathCopy];
    v11 = APLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138739971;
      v14 = pathCopy;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "The path (%{sensitive}@) resulted in zero path components somehow!", buf, 0xCu);
    }

    APSimulateCrash();
    v9 = 0;
  }

  else
  {
    v9 = [pathComponents objectAtIndexedSubscript:1];
  }

  return v9;
}

- (id)_destinationHashFromPath:(id)path
{
  pathCopy = path;
  closedStoragePathPrefix = [(objc_class *)+[MetricsModuleClasses storageClass](MetricsModuleClasses closedStoragePathPrefix];
  openStoragePathPrefix = [(objc_class *)+[MetricsModuleClasses storageClass](MetricsModuleClasses openStoragePathPrefix];
  v6 = closedStoragePathPrefix;
  if ([pathCopy hasPrefix:closedStoragePathPrefix] & 1) != 0 || (v6 = openStoragePathPrefix, (objc_msgSend(pathCopy, "hasPrefix:", openStoragePathPrefix)) || (v6 = @"s", objc_msgSend(pathCopy, "hasPrefix:", @"s")))
  {
    v7 = [pathCopy substringFromIndex:{-[__CFString length](v6, "length") + 1}];
  }

  else
  {
    v7 = 0;
  }

  pathComponents = [v7 pathComponents];
  if ([pathComponents count])
  {
    firstObject = [pathComponents firstObject];
  }

  else
  {
    pathCopy = [NSString stringWithFormat:@"The path (%@) resulted in zero path components somehow!", pathCopy];
    v11 = APLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138739971;
      v14 = pathCopy;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "The path (%{sensitive}@) resulted in zero path components somehow!", buf, 0xCu);
    }

    APSimulateCrash();
    firstObject = 0;
  }

  return firstObject;
}

- (APMetricBatch)initWithPath:(id)path
{
  pathCopy = path;
  if (pathCopy)
  {
    if (qword_1004E6D70 != -1)
    {
      sub_10039471C();
    }

    v6 = [[APStorageManager alloc] initWithPathPrefix:@"m"];
    v36 = 0;
    v7 = [v6 fileForReadingAtKeyPath:pathCopy error:&v36];
    v8 = v36;
    if (v8)
    {
      pathCopy = [NSString stringWithFormat:@"Error unarchiving the contents of the file (%@)! %@", pathCopy, v8];
      v10 = APLogForCategory();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
LABEL_8:

        APSimulateCrash();
        selfCopy = 0;
LABEL_34:

        goto LABEL_35;
      }

      *buf = 138740227;
      *v38 = pathCopy;
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
      pathCopy = [NSString stringWithFormat:@"We didn't get a file (%@) back from the secure file manager!", pathCopy];
      v10 = APLogForCategory();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_8;
      }

      *buf = 138739971;
      *v38 = pathCopy;
      v11 = "We didn't get a file (%{sensitive}@) back from the secure file manager!";
      v12 = v10;
      v13 = 12;
      goto LABEL_7;
    }

    pathCopy = [v7 nextObject];
    nextObject = [v7 nextObject];
    v35.receiver = self;
    v35.super_class = APMetricBatch;
    v16 = [(APMetricBatch *)&v35 init];
    self = v16;
    if (v16)
    {
      v17 = [(APMetricBatch *)v16 _destinationHashFromPath:pathCopy];
      destinationHash = self->_destinationHash;
      self->_destinationHash = v17;

      v19 = [(APMetricBatch *)self _purposeFromPath:pathCopy];
      self->_purpose = [v19 intValue];

      self->_writable = 0;
      v20 = objc_alloc_init(APJourneyBatchSettings);
      journeyBatchSettings = self->_journeyBatchSettings;
      self->_journeyBatchSettings = v20;

      objc_storeStrong(&self->_secureFile, v7);
      objc_storeStrong(&self->_path, path);
    }

    if (pathCopy)
    {
      v22 = nextObject == 0;
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
        *v38 = pathCopy != 0;
        *&v38[4] = 1024;
        *&v38[6] = nextObject != 0;
        *v39 = 2117;
        *&v39[2] = pathCopy;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "File did not contain at least 2 elements! yyyyDDDHHmm: %d, identifierUUID: %d. %{sensitive}@", buf, 0x18u);
      }

      CreateDiagnosticReport();
      [(APMetricBatch *)self _deleteByFilePath:pathCopy];
    }

    else
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        if (self)
        {
          uUIDString = [nextObject UUIDString];
          v26 = [NSString stringWithFormat:@"%@.%@", pathCopy, uUIDString];
          identifier = self->_identifier;
          self->_identifier = v26;
        }

        v28 = APLogForCategory();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          identifier = [(APMetricBatch *)self identifier];
          *buf = 138543362;
          *v38 = identifier;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "created closed batch %{public}@", buf, 0xCu);
        }

        selfCopy = self;
        goto LABEL_33;
      }

      v30 = APLogForCategory();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v31 = objc_opt_class();
        v34 = v31;
        lastPathComponent = [pathCopy lastPathComponent];
        *buf = 138478083;
        *v38 = v31;
        *&v38[8] = 2114;
        *v39 = lastPathComponent;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "Expected UUID class type but decrypted type %{private}@ in batch %{public}@, please file a radar", buf, 0x16u);
      }
    }

    selfCopy = 0;
LABEL_33:

    goto LABEL_34;
  }

  selfCopy = 0;
LABEL_35:

  return selfCopy;
}

- (APMetricBatch)initWithDestination:(id)destination purpose:(int64_t)purpose
{
  destinationCopy = destination;
  v36.receiver = self;
  v36.super_class = APMetricBatch;
  v7 = [(APMetricBatch *)&v36 init];
  if (!v7)
  {
    goto LABEL_13;
  }

  v32 = destinationCopy;
  value = [destinationCopy value];
  v9 = +[NSDate date];
  yearDayOfYearHourMinute = [v9 yearDayOfYearHourMinute];

  v11 = +[NSUUID UUID];
  v31 = value;
  objc_storeStrong(&v7->_destinationHash, value);
  v7->_purpose = purpose;
  uUIDString = [v11 UUIDString];
  v13 = [NSString stringWithFormat:@"%@.%@", yearDayOfYearHourMinute, uUIDString];
  identifier = v7->_identifier;
  v7->_identifier = v13;

  v15 = [NSMutableArray arrayWithObjects:yearDayOfYearHourMinute, v11, 0];
  storage = v7->_storage;
  v7->_storage = v15;

  v7->_writable = 1;
  v17 = objc_alloc_init(APJourneyBatchSettings);
  journeyBatchSettings = v7->_journeyBatchSettings;
  v7->_journeyBatchSettings = v17;

  v19 = [[APStorageManager alloc] initWithPathPrefix:@"m"];
  _openFilePath = [(APMetricBatch *)v7 _openFilePath];
  v35 = 0;
  v21 = [v19 fileForWritingAtKeyPath:_openFilePath error:&v35];
  v22 = v35;
  v23 = sub_100007F08();
  lastPathComponent = [_openFilePath lastPathComponent];
  sub_1003947DC(v23, lastPathComponent, purpose);

  if (!v22)
  {
    v34 = 0;
    [v21 addObject:yearDayOfYearHourMinute error:&v34];
    v27 = v34;
    v33 = v27;
    [v21 addObject:v11 error:&v33];
    v22 = v33;

    v28 = APLogForCategory();
    v25 = v28;
    if (v22)
    {
      destinationCopy = v32;
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        *buf = 138740227;
        v38 = _openFilePath;
        v39 = 2114;
        v40 = v22;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Could not write to file (%{sensitive}@)! Error: %{public}@", buf, 0x16u);
      }

      goto LABEL_6;
    }

    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      identifier = [(APMetricBatch *)v7 identifier];
      *buf = 138543362;
      v38 = identifier;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "created open batch %{public}@", buf, 0xCu);
    }

    destinationCopy = v32;
LABEL_13:
    v26 = v7;
    goto LABEL_14;
  }

  v25 = APLogForCategory();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    *buf = 138740227;
    v38 = _openFilePath;
    v39 = 2114;
    v40 = v22;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Could not open file (%{sensitive}@)! Error: %{public}@", buf, 0x16u);
  }

  destinationCopy = v32;
LABEL_6:

  v26 = 0;
LABEL_14:

  return v26;
}

- (NSArray)metrics
{
  storage = [(APMetricBatch *)self storage];
  v3 = storage;
  if (storage)
  {
    v4 = [storage subarrayWithRange:{2, objc_msgSend(storage, "count") - 2}];
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
  secureFile = [(APMetricBatch *)self secureFile];
  nextObject = [secureFile nextObject];

  return nextObject;
}

- (id)eCServerDictionaryRepresentationWithBlock:(id)block
{
  blockCopy = block;
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
    nextMetric = [(APMetricBatch *)self nextMetric];
    if (nextMetric)
    {
      nextMetric2 = nextMetric;
      selfCopy = self;
      v11 = -9999;
      while (1)
      {
        if (blockCopy)
        {
          blockCopy[2](blockCopy, nextMetric2);
        }

        purpose = [nextMetric2 purpose];
        v13 = purpose;
        if (v11 != -9999)
        {
          v13 = v11;
          if (v11 != purpose)
          {
            break;
          }
        }

        v11 = v13;
        v14 = [NSString stringWithFormat:@"%ld", purpose];
        v15 = [v7 objectForKey:v14];
        if (!v15)
        {
          v15 = objc_alloc_init(NSMutableArray);
          [v7 setObject:v15 forKey:v14];
        }

        if (objc_opt_respondsToSelector())
        {
          ecServerDictionaryRepresentation = [nextMetric2 ecServerDictionaryRepresentation];
          if (ecServerDictionaryRepresentation)
          {
            v17 = ecServerDictionaryRepresentation;
            [v15 addObject:ecServerDictionaryRepresentation];
          }
        }

        objc_autoreleasePoolPop(v8);
        v8 = objc_autoreleasePoolPush();
        nextMetric2 = [(APMetricBatch *)selfCopy nextMetric];
        if (!nextMetric2)
        {
          v35 = blockCopy;
          objc_autoreleasePoolPop(v8);
          v18 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v7, "count")}];
          allKeys = [v7 allKeys];
          v37 = 0u;
          v38 = 0u;
          v39 = 0u;
          v40 = 0u;
          v20 = [allKeys countByEnumeratingWithState:&v37 objects:v44 count:16];
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
                  objc_enumerationMutation(allKeys);
                }

                v24 = *(*(&v37 + 1) + 8 * i);
                v25 = [v7 objectForKey:v24];
                v26 = [NSArray arrayWithArray:v25];
                [v18 setObject:v26 forKey:v24];
              }

              v21 = [allKeys countByEnumeratingWithState:&v37 objects:v44 count:16];
            }

            while (v21);
          }

          v27 = [NSDictionary dictionaryWithDictionary:v18];
          v42[0] = @"batch";
          identifier = [(APMetricBatch *)selfCopy identifier];
          v43[0] = identifier;
          v42[1] = @"events";
          v29 = [NSString stringWithFormat:@"%ld", [(APMetricBatch *)selfCopy purpose]];
          v30 = [v27 objectForKeyedSubscript:v29];
          v43[1] = v30;
          v42[2] = @"purpose";
          v31 = [NSNumber numberWithInteger:[(APMetricBatch *)selfCopy purpose]];
          v43[2] = v31;
          v6 = [NSDictionary dictionaryWithObjects:v43 forKeys:v42 count:3];

          blockCopy = v35;
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

- (void)receivedMetric:(id)metric
{
  metricCopy = metric;
  v5 = APLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    identifier = [(APMetricBatch *)self identifier];
    v11 = 138543362;
    v12 = identifier;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "received metric on batch %{public}@", &v11, 0xCu);
  }

  if ([(APMetricBatch *)self writable])
  {
    storage = [(APMetricBatch *)self storage];
    [storage addObject:metricCopy];
    v8 = objc_autoreleasePoolPush();
    [(APMetricBatch *)self _appendMetricToFile:metricCopy];
    objc_autoreleasePoolPop(v8);
  }

  else
  {
    v9 = APLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      identifier2 = [(APMetricBatch *)self identifier];
      v11 = 138543362;
      v12 = identifier2;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Attempt to write to a closed batch for %{public}@", &v11, 0xCu);
    }

    APSimulateCrash();
  }
}

- (id)_closedFileDirectory
{
  closedStoragePathPrefix = [(objc_class *)+[MetricsModuleClasses storageClass](MetricsModuleClasses closedStoragePathPrefix];
  destinationHash = [(APMetricBatch *)self destinationHash];
  v5 = [NSNumber numberWithInteger:[(APMetricBatch *)self purpose]];
  stringValue = [v5 stringValue];

  v7 = [closedStoragePathPrefix stringByAppendingPathComponent:destinationHash];
  v8 = [v7 stringByAppendingPathComponent:stringValue];

  return v8;
}

- (id)_closedFilePath
{
  _closedFileDirectory = [(APMetricBatch *)self _closedFileDirectory];
  identifier = [(APMetricBatch *)self identifier];
  v5 = [_closedFileDirectory stringByAppendingPathComponent:identifier];

  return v5;
}

- (void)_appendMetricToFile:(id)file
{
  fileCopy = file;
  storage = [(APMetricBatch *)self storage];
  _openFilePath = [(APMetricBatch *)self _openFilePath];
  v24 = 0;
  v7 = [NSKeyedArchiver archivedDataWithRootObject:fileCopy requiringSecureCoding:1 error:&v24];
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
    if (([v11 fileExistsAtPath:_openFilePath error:0]& 1) == 0)
    {
      v13 = APLogForCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        identifier = [(APMetricBatch *)self identifier];
        *buf = 138543362;
        v26 = identifier;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Trying to append metric to nonexistent file %{public}@", buf, 0xCu);
      }
    }

    v23 = 0;
    v15 = [v11 fileForAppendingAtKeyPath:_openFilePath error:&v23];
    v16 = v23;
    if (v16)
    {
      v10 = v16;
      v17 = APLogForCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 138739971;
        v26 = _openFilePath;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Could not open file (%{sensitive}@)!", buf, 0xCu);
      }
    }

    else
    {
      v22 = 0;
      [v15 addObject:fileCopy error:&v22];
      v10 = v22;
      v17 = +[NSDate date];
      if (v10)
      {
        v18 = APLogForCategory();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543619;
          v26 = fileCopy;
          v27 = 2117;
          v28 = _openFilePath;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Could not add metric (%{public}@) to file (%{sensitive}@)!", buf, 0x16u);
        }
      }

      else
      {
        timestamp = [fileCopy timestamp];
        [v17 timeIntervalSinceDate:timestamp];
        v21 = v20;

        v18 = sub_100007F08();
        sub_1003949C8(v18, [fileCopy purpose], v21);
      }
    }
  }

  else
  {
    v10 = v8;
    v11 = APLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [storage count];
      *buf = 134218243;
      v26 = v12;
      v27 = 2117;
      v28 = _openFilePath;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Could not archive metrics (%lu) to path (%{sensitive}@)!", buf, 0x16u);
    }
  }
}

- (void)close
{
  self->_writable = 0;
  storage = [(APMetricBatch *)self storage];
  v4 = [storage count];

  v5 = [[APStorageManager alloc] initWithPathPrefix:@"m"];
  _openFilePath = [(APMetricBatch *)self _openFilePath];
  _closedFilePath = [(APMetricBatch *)self _closedFilePath];
  v8 = sub_10032CDB8(APMetricsObservability, _openFilePath, v5);
  v9 = APLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    identifier = [(APMetricBatch *)self identifier];
    *buf = 138543362;
    v23 = identifier;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "close batch %{public}@", buf, 0xCu);
  }

  v21 = 0;
  v11 = [v5 moveItemAtPath:_openFilePath toPath:_closedFilePath error:&v21];
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
    lastPathComponent = [_openFilePath lastPathComponent];
    purpose = [(APMetricBatch *)self purpose];
    closedStoragePathPrefix = [(objc_class *)+[MetricsModuleClasses storageClass](MetricsModuleClasses closedStoragePathPrefix];
    sub_100394B50(v15, v8, lastPathComponent, purpose, v17, v5, closedStoragePathPrefix);
  }

  else
  {
    v15 = [NSString stringWithFormat:@"Error closing batch! Could not move file from (%@) to (%@)! %@", _openFilePath, _closedFilePath, v12];
    v16 = APLogForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138740483;
      v23 = _openFilePath;
      v24 = 2117;
      v25 = _closedFilePath;
      v26 = 2114;
      v27 = v13;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Error closing batch! Could not move file from (%{sensitive}@) to (%{sensitive}@)! %{public}@", buf, 0x20u);
    }

    APSimulateCrash();
  }
}

- (void)_deleteByFilePath:(id)path
{
  pathCopy = path;
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
    [objc_opt_class() removeBatchByFileSystemToken:pathCopy];
  }
}

- (void)delete
{
  secureFile = [(APMetricBatch *)self secureFile];
  [secureFile close];

  _closedFilePath = [(APMetricBatch *)self _closedFilePath];
  [(APMetricBatch *)self _deleteByFilePath:_closedFilePath];
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
    path = [(APMetricBatch *)self path];
    v6 = [path length];

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

+ (BOOL)removeBatchByFileSystemToken:(id)token
{
  tokenCopy = token;
  if ([tokenCopy length])
  {
    v4 = [[APStorageManager alloc] initWithPathPrefix:@"m"];
    v5 = sub_10032CE6C(APMetricsObservability, tokenCopy, v4);
    v14 = 0;
    v6 = [v4 removeObjectAtPath:tokenCopy error:&v14];
    v7 = v14;
    v8 = (v7 == 0) & v6;
    if (v8)
    {
      v9 = sub_100007F08();
      lastPathComponent = [tokenCopy lastPathComponent];
      v11 = [APMetricStorage_private batchPathToPurpose:tokenCopy];
      closedStoragePathPrefix = [(objc_class *)+[MetricsModuleClasses storageClass](MetricsModuleClasses closedStoragePathPrefix];
      sub_100394D3C(v9, v5, lastPathComponent, v11, v4, closedStoragePathPrefix);
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