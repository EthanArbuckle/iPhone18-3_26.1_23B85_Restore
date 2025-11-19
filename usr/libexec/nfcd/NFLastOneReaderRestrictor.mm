@interface NFLastOneReaderRestrictor
- (BOOL)_wasActiveTooLong;
- (NFLastOneReaderRestrictor)initWithThermalMonitor:(id)a3 delegate:(id)a4;
- (double)_getLastConnectionTime:(id)a3;
- (double)_getLastDisconnectionTime:(id)a3;
- (double)getCooloffTime;
- (double)maxReaderTime;
- (id)description;
@end

@implementation NFLastOneReaderRestrictor

- (NFLastOneReaderRestrictor)initWithThermalMonitor:(id)a3 delegate:(id)a4
{
  v19.receiver = self;
  v19.super_class = NFLastOneReaderRestrictor;
  v5 = [(NFReaderRestrictor *)&v19 initWithThermalMonitor:a3 delegate:a4];
  if (v5)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v7 = Logger;
      Class = object_getClass(v5);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(v5);
      Name = sel_getName(a2);
      v11 = 45;
      if (isMetaClass)
      {
        v11 = 43;
      }

      v7(6, "%c[%{public}s %{public}s]:%i Using last one mechanism", v11, ClassName, Name, 23);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v12 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = object_getClass(v5);
      if (class_isMetaClass(v13))
      {
        v14 = 43;
      }

      else
      {
        v14 = 45;
      }

      v15 = object_getClassName(v5);
      v16 = sel_getName(a2);
      *buf = 67109890;
      v21 = v14;
      v22 = 2082;
      v23 = v15;
      v24 = 2082;
      v25 = v16;
      v26 = 1024;
      v27 = 23;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Using last one mechanism", buf, 0x22u);
    }
  }

  return v5;
}

- (double)maxReaderTime
{
  v2 = [(NFLastOneReaderRestrictor *)self _wasActiveTooLong];
  result = 20.0;
  if (v2)
  {
    return 7.0;
  }

  return result;
}

- (double)getCooloffTime
{
  v24.receiver = self;
  v24.super_class = NFLastOneReaderRestrictor;
  v4 = [(NFReaderRestrictor *)&v24 currentTestTime];
  if (v4)
  {
    v23.receiver = self;
    v23.super_class = NFLastOneReaderRestrictor;
    v5 = [(NFReaderRestrictor *)&v23 currentTestTime];
  }

  else
  {
    v5 = [NSDate dateWithTimeIntervalSinceNow:0.0];
  }

  v6 = v5;

  [(NFLastOneReaderRestrictor *)self _getLastConnectionTime:v6];
  v8 = v7;
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v10 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    v14 = 45;
    if (isMetaClass)
    {
      v14 = 43;
    }

    v10(6, "%c[%{public}s %{public}s]:%i Last connection was for %f seconds", v14, ClassName, Name, 47, *&v8);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v15 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = object_getClass(self);
    if (class_isMetaClass(v16))
    {
      v17 = 43;
    }

    else
    {
      v17 = 45;
    }

    v18 = object_getClassName(self);
    v19 = sel_getName(a2);
    *buf = 67110146;
    v26 = v17;
    v27 = 2082;
    v28 = v18;
    v29 = 2082;
    v30 = v19;
    v31 = 1024;
    v32 = 47;
    v33 = 2048;
    v34 = v8;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Last connection was for %f seconds", buf, 0x2Cu);
  }

  if ([(NFReaderRestrictor *)self thermalPressureCritical])
  {
    v20 = 0.1;
  }

  else
  {
    v20 = 5.0;
    if ((![(NFReaderRestrictor *)self thermalPressureBackoff]|| v8 <= 5.0) && (![(NFLastOneReaderRestrictor *)self _wasActiveTooLong]|| v8 < 5.0))
    {
      if (v8 >= 19.0)
      {
        v20 = 5.0;
      }

      else
      {
        v20 = 0.0;
      }
    }
  }

  return v20;
}

- (BOOL)_wasActiveTooLong
{
  v26.receiver = self;
  v26.super_class = NFLastOneReaderRestrictor;
  v4 = [(NFReaderRestrictor *)&v26 currentTestTime];
  if (v4)
  {
    v25.receiver = self;
    v25.super_class = NFLastOneReaderRestrictor;
    v5 = [(NFReaderRestrictor *)&v25 currentTestTime];
  }

  else
  {
    v5 = [NSDate dateWithTimeIntervalSinceNow:0.0];
  }

  v6 = v5;

  [(NFLastOneReaderRestrictor *)self _getLastConnectionTime:v6];
  v8 = v7;
  [(NFLastOneReaderRestrictor *)self _getLastDisconnectionTime:v6];
  v10 = v9;
  if (v8 >= 20.0 || [(NFReaderRestrictor *)self thermalPressureBackoff])
  {
    v11 = 1;
  }

  else
  {
    if (v10 < 5.0)
    {
      [(NFReaderRestrictor *)self thermalPressureNominal];
    }

    v11 = 0;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v13 = Logger;
    Class = object_getClass(self);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(self);
    Name = sel_getName(a2);
    v17 = 45;
    if (isMetaClass)
    {
      v17 = 43;
    }

    v13(6, "%c[%{public}s %{public}s]:%i Reader: last connection = %f seconds ago, active too long is %d", v17, ClassName, Name, 86, *&v8, v11);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v18 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = object_getClass(self);
    if (class_isMetaClass(v19))
    {
      v20 = 43;
    }

    else
    {
      v20 = 45;
    }

    v21 = object_getClassName(self);
    v22 = sel_getName(a2);
    *buf = 67110402;
    v28 = v20;
    v29 = 2082;
    v30 = v21;
    v31 = 2082;
    v32 = v22;
    v33 = 1024;
    v34 = 86;
    v35 = 2048;
    v36 = v8;
    v37 = 1024;
    v38 = v11;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Reader: last connection = %f seconds ago, active too long is %d", buf, 0x32u);
  }

  return v11;
}

- (double)_getLastDisconnectionTime:(id)a3
{
  v5 = a3;
  v6 = [(NFReaderRestrictor *)self readerOperations];
  v7 = [v6 reverseObjectEnumerator];
  v8 = [v7 allObjects];

  if ([v8 count])
  {
    v9 = [v8 objectAtIndex:0];
    v10 = v9;
    if (v9)
    {
      v11 = *(v9 + 16);
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;
    v13 = [v12 isEqualToString:@"ReaderStopped"];

    if (v13)
    {
      if (v10)
      {
        v14 = v10[1];
      }

      else
      {
        v14 = 0;
      }

      v15 = v14;
      [v5 timeIntervalSinceDate:v15];
      v17 = v16;

LABEL_29:
      goto LABEL_30;
    }

    if ([v8 count] >= 2)
    {
      v18 = [v8 objectAtIndex:1];
      v19 = v18;
      if (v18)
      {
        v20 = *(v18 + 16);
      }

      else
      {
        v20 = 0;
      }

      v21 = v20;
      v22 = [v21 isEqualToString:@"ReaderStopped"];

      if (v22)
      {
        if (v19)
        {
          v23 = v19[1];
        }

        else
        {
          v23 = 0;
        }

        v24 = v23;
        if (v10)
        {
          v25 = v10[1];
        }

        else
        {
          v25 = 0;
        }

        v26 = v25;
        [v24 timeIntervalSinceDate:v26];
        v17 = v27;

        goto LABEL_29;
      }
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v29 = Logger;
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v33 = 45;
      if (isMetaClass)
      {
        v33 = 43;
      }

      v29(6, "%c[%{public}s %{public}s]:%i No stop reader operation stored", v33, ClassName, Name, 115);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v34 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v35 = object_getClass(self);
      if (class_isMetaClass(v35))
      {
        v36 = 43;
      }

      else
      {
        v36 = 45;
      }

      *buf = 67109890;
      v40 = v36;
      v41 = 2082;
      v42 = object_getClassName(self);
      v43 = 2082;
      v44 = sel_getName(a2);
      v45 = 1024;
      v46 = 115;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i No stop reader operation stored", buf, 0x22u);
    }

    v17 = 3.40282347e38;
    goto LABEL_29;
  }

  v17 = 0.0;
LABEL_30:

  return v17;
}

- (double)_getLastConnectionTime:(id)a3
{
  v5 = a3;
  v6 = [(NFReaderRestrictor *)self readerOperations];
  v7 = [v6 reverseObjectEnumerator];
  v8 = [v7 allObjects];

  if ([v8 count])
  {
    v9 = [v8 objectAtIndex:0];
    v10 = v9;
    if (v9)
    {
      v11 = *(v9 + 16);
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;
    v13 = [v12 isEqualToString:@"ReaderStarted"];

    if (v13)
    {
      if (v10)
      {
        v14 = v10[1];
      }

      else
      {
        v14 = 0;
      }

      v15 = v14;
      [v5 timeIntervalSinceDate:v15];
      v17 = v16;

LABEL_29:
      goto LABEL_30;
    }

    if ([v8 count] >= 2)
    {
      v18 = [v8 objectAtIndex:1];
      v19 = v18;
      if (v18)
      {
        v20 = *(v18 + 16);
      }

      else
      {
        v20 = 0;
      }

      v21 = v20;
      v22 = [v21 isEqualToString:@"ReaderStarted"];

      if (v22)
      {
        if (v19)
        {
          v23 = v19[1];
        }

        else
        {
          v23 = 0;
        }

        v24 = v23;
        if (v10)
        {
          v25 = v10[1];
        }

        else
        {
          v25 = 0;
        }

        v26 = v25;
        [v24 timeIntervalSinceDate:v26];
        v17 = v27;

        goto LABEL_29;
      }
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v29 = Logger;
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v33 = 45;
      if (isMetaClass)
      {
        v33 = 43;
      }

      v29(4, "%c[%{public}s %{public}s]:%i Unexpected state : No start reader operation stored", v33, ClassName, Name, 140);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v34 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v35 = object_getClass(self);
      if (class_isMetaClass(v35))
      {
        v36 = 43;
      }

      else
      {
        v36 = 45;
      }

      *buf = 67109890;
      v40 = v36;
      v41 = 2082;
      v42 = object_getClassName(self);
      v43 = 2082;
      v44 = sel_getName(a2);
      v45 = 1024;
      v46 = 140;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Unexpected state : No start reader operation stored", buf, 0x22u);
    }

    v17 = 0.0;
    goto LABEL_29;
  }

  v17 = 0.0;
LABEL_30:

  return v17;
}

- (id)description
{
  v8.receiver = self;
  v8.super_class = NFLastOneReaderRestrictor;
  v3 = [(NFReaderRestrictor *)&v8 description];
  v4 = [NSMutableString stringWithString:v3];

  [v4 appendFormat:@"\n"];
  if ([(NFReaderRestrictor *)self thermalPressureCritical])
  {
    v5 = @"\t Current window = Critical\n";
  }

  else if ([(NFReaderRestrictor *)self thermalPressureBackoff])
  {
    v5 = @"\t Current window = Backoff\n";
  }

  else
  {
    v5 = @"\t Current window = Nominal\n";
  }

  [v4 appendFormat:v5];
  v6 = [(NFReaderRestrictor *)self readerOperations];
  [v4 appendFormat:@"\t Operations = %@", v6];

  return v4;
}

@end