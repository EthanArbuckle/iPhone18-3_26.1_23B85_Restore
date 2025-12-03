@interface NIBluetoothAdvertisementCache
- (BOOL)isSampleInCache:(id)cache;
- (NIBluetoothAdvertisementCache)init;
- (NSArray)allSamples;
- (id)cachedSamplesForIdentifier:(id)identifier;
- (void)addSample:(id)sample;
- (void)manageCacheSize;
- (void)removeStaleSamples;
@end

@implementation NIBluetoothAdvertisementCache

- (void)removeStaleSamples
{
  mach_continuous_time();
  TMConvertTicksToSeconds();
  v4 = v3;
  if (v3 - self->_lastCacheFlushSeconds > self->_flushIntervalSeconds)
  {
    self->_lastCacheFlushSeconds = v3;
    v5 = v3 - self->_maximumSampleAgeSeconds;
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_1001EAC7C;
    v23[3] = &unk_10099D808;
    *&v23[4] = v5;
    v6 = [NSPredicate predicateWithBlock:v23];
    v7 = objc_alloc_init(NSMutableArray);
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v8 = self->_cache;
    v9 = [(NSMutableDictionary *)v8 countByEnumeratingWithState:&v19 objects:v28 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v20;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v19 + 1) + 8 * i);
          v14 = [(NSMutableDictionary *)self->_cache objectForKey:v13, v19];
          [v14 filterUsingPredicate:v6];
          if (![v14 count])
          {
            [v7 addObject:v13];
          }
        }

        v10 = [(NSMutableDictionary *)v8 countByEnumeratingWithState:&v19 objects:v28 count:16];
      }

      while (v10);
    }

    if (v7 && [v7 count])
    {
      [(NSMutableDictionary *)self->_cache removeObjectsForKeys:v7];
      v15 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        v16 = v15;
        v17 = [v7 count];
        mach_continuous_time();
        TMConvertTicksToSeconds();
        *buf = 134218240;
        v25 = v17;
        v26 = 2048;
        v27 = v18 - v4;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Purged %lu devices from Bluetooth advertisement cache in %f seconds.", buf, 0x16u);
      }
    }

    [(NIBluetoothAdvertisementCache *)self manageCacheSize];
  }
}

- (NIBluetoothAdvertisementCache)init
{
  v7.receiver = self;
  v7.super_class = NIBluetoothAdvertisementCache;
  v2 = [(NIBluetoothAdvertisementCache *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    cache = v2->_cache;
    v2->_cache = v3;

    v2->_maximumSampleCount = 8;
    v2->_maximumSampleAgeSeconds = 1200.0;
    mach_continuous_time();
    TMConvertTicksToSeconds();
    v2->_lastCacheFlushSeconds = v5;
    v2->_flushIntervalSeconds = 60.0;
    v2->_maxDeviceCount = 100000;
  }

  return v2;
}

- (NSArray)allSamples
{
  v3 = +[NSMutableArray array];
  cache = self->_cache;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001EA95C;
  v7[3] = &unk_10099D7E8;
  v5 = v3;
  v8 = v5;
  [(NSMutableDictionary *)cache enumerateKeysAndObjectsUsingBlock:v7];

  return v5;
}

- (void)addSample:(id)sample
{
  sampleCopy = sample;
  identifier = [sampleCopy identifier];

  if (identifier)
  {
    cache = self->_cache;
    identifier2 = [sampleCopy identifier];
    v8 = [(NSMutableDictionary *)cache objectForKey:identifier2];

    if (!v8)
    {
      v9 = self->_cache;
      v10 = +[NSMutableArray array];
      identifier3 = [sampleCopy identifier];
      [(NSMutableDictionary *)v9 setObject:v10 forKey:identifier3];
    }

    v12 = self->_cache;
    identifier4 = [sampleCopy identifier];
    v14 = [(NSMutableDictionary *)v12 objectForKey:identifier4];

    [v14 addObject:sampleCopy];
    [(NIBluetoothAdvertisementCache *)self removeStaleSamples];
    if ([v14 count] > self->_maximumSampleCount)
    {
      [v14 removeObjectsInRange:{0, objc_msgSend(v14, "count") - self->_maximumSampleCount}];
    }
  }

  else
  {
    v15 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
    {
      sub_1004A9690(v15);
    }
  }
}

- (BOOL)isSampleInCache:(id)cache
{
  cacheCopy = cache;
  identifier = [cacheCopy identifier];

  if (identifier)
  {
    cache = self->_cache;
    identifier2 = [cacheCopy identifier];
    v8 = [(NSMutableDictionary *)cache objectForKey:identifier2];

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v9 = v8;
    identifier = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (identifier)
    {
      v10 = *v22;
      while (2)
      {
        for (i = 0; i != identifier; i = i + 1)
        {
          if (*v22 != v10)
          {
            objc_enumerationMutation(v9);
          }

          v12 = *(*(&v21 + 1) + 8 * i);
          channel = [cacheCopy channel];
          if (channel == [v12 channel])
          {
            [cacheCopy rssi];
            v15 = v14;
            [v12 rssi];
            if (v15 == v16)
            {
              [cacheCopy machContinuousTimeSeconds];
              v18 = v17;
              [v12 machContinuousTimeSeconds];
              if (vabdd_f64(v18, v19) < 0.001)
              {
                LOBYTE(identifier) = 1;
                goto LABEL_14;
              }
            }
          }
        }

        identifier = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (identifier)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:
  }

  return identifier;
}

- (void)manageCacheSize
{
  if ([(NSMutableDictionary *)self->_cache count]> self->_maxDeviceCount)
  {
    mach_continuous_time();
    TMConvertTicksToSeconds();
    v4 = v3;
    v5 = [(NSMutableDictionary *)self->_cache keysSortedByValueUsingComparator:&stru_10099D848];
    v6 = [v5 subarrayWithRange:{0, -[NSMutableDictionary count](self->_cache, "count") - self->_maxDeviceCount}];

    [(NSMutableDictionary *)self->_cache removeObjectsForKeys:v6];
    v7 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v7;
      v9 = [v6 count];
      mach_continuous_time();
      TMConvertTicksToSeconds();
      v11 = 134218240;
      v12 = v9;
      v13 = 2048;
      v14 = v10 - v4;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Cache limit reached. Purged %lu devices from Bluetooth advertisement cache in %f seconds.", &v11, 0x16u);
    }
  }
}

- (id)cachedSamplesForIdentifier:(id)identifier
{
  v3 = [(NSMutableDictionary *)self->_cache objectForKey:identifier];
  v4 = [v3 copy];

  return v4;
}

@end