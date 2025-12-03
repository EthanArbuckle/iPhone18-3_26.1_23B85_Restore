@interface NSCache
- (BOOL)rd_writeObject:(id)object forKey:(id)key toURL:(id)l error:(id *)error;
- (id)rd_objectsForSensor:(id)sensor fallbackURL:(id)l;
@end

@implementation NSCache

- (id)rd_objectsForSensor:(id)sensor fallbackURL:(id)l
{
  v7 = [(NSCache *)self objectForKey:?];
  if (!v7)
  {
    v10 = [NSData dataWithContentsOfURL:l];
    if (v10)
    {
      v19 = 0;
      v11 = [NSPropertyListSerialization propertyListWithData:v10 options:0 format:0 error:&v19];
      if (v11)
      {
        v12 = v19 == 0;
      }

      else
      {
        v12 = 0;
      }

      if (v12)
      {
        v13 = v11;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = qword_100071980;
          if (os_log_type_enabled(qword_100071980, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138543362;
            sensorCopy2 = v13;
            _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "Found plist data: %{public}@", buf, 0xCu);
          }

          v15 = [NSSet setWithArray:v13];
          goto LABEL_19;
        }
      }

      v16 = qword_100071980;
      if (os_log_type_enabled(qword_100071980, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        sensorCopy2 = sensor;
        v22 = 2114;
        v23 = v19;
        _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Failed to load client interest for sensor %{public}@, error %{public}@", buf, 0x16u);
      }
    }

    else
    {
      v17 = qword_100071980;
      if (os_log_type_enabled(qword_100071980, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        sensorCopy2 = l;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "No data found from URL %{public}@", buf, 0xCu);
      }
    }

    v15 = +[NSSet set];
LABEL_19:
    v8 = v15;
    [(NSCache *)self setObject:v15 forKey:sensor];
    return v8;
  }

  v8 = v7;
  v9 = qword_100071980;
  if (os_log_type_enabled(qword_100071980, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543618;
    sensorCopy2 = sensor;
    v22 = 2114;
    v23 = v8;
    _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "Found objects in cache for sensor: %{public}@, %{public}@", buf, 0x16u);
  }

  return v8;
}

- (BOOL)rd_writeObject:(id)object forKey:(id)key toURL:(id)l error:(id *)error
{
  v17 = 0;
  v8 = +[NSPropertyListSerialization dataWithPropertyList:format:options:error:](NSPropertyListSerialization, "dataWithPropertyList:format:options:error:", [object allObjects], 200, 0, &v17);
  v9 = v17;
  if (v8)
  {
    v10 = v17 == 0;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    result = [(NSData *)v8 writeToURL:l options:1 error:&v17];
    if (!result && (v14 = qword_100071980, v15 = result, v16 = os_log_type_enabled(qword_100071980, OS_LOG_TYPE_FAULT), result = v15, v16))
    {
      *buf = 138543618;
      lCopy2 = l;
      v20 = 2114;
      v21 = v17;
      _os_log_fault_impl(&_mh_execute_header, v14, OS_LOG_TYPE_FAULT, "Failed to write %{public}@ because %{public}@", buf, 0x16u);
      result = v15;
      if (!error)
      {
        return result;
      }
    }

    else if (!error)
    {
      return result;
    }

    v13 = v17;
    if (v17)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v11 = qword_100071980;
    if (!os_log_type_enabled(qword_100071980, OS_LOG_TYPE_ERROR))
    {
      result = 0;
      if (!error)
      {
        return result;
      }

      goto LABEL_7;
    }

    *buf = 138543618;
    lCopy2 = l;
    v20 = 2114;
    v21 = v9;
    _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Failed to serialize %{public}@ because %{public}@", buf, 0x16u);
    result = 0;
    if (error)
    {
LABEL_7:
      v13 = v17;
LABEL_12:
      *error = v13;
    }
  }

  return result;
}

@end