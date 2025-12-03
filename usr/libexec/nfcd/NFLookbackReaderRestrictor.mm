@interface NFLookbackReaderRestrictor
- (BOOL)loadCustomDefaults;
- (BOOL)loadDefaultValues;
- (NFLookbackReaderRestrictor)initWithThermalMonitor:(id)monitor delegate:(id)delegate;
- (double)getCooloffTime;
- (double)maxReaderTime;
- (id)_allOperationsSince:(double)since referenceTime:(id)time;
- (id)description;
- (void)_getReaderOnTime:(double *)time andOff:(double *)off since:(double)since referenceTime:(id)referenceTime;
- (void)dealloc;
@end

@implementation NFLookbackReaderRestrictor

- (BOOL)loadCustomDefaults
{
  v3 = +[NSUserDefaults standardUserDefaults];
  v4 = [v3 arrayForKey:@"lookBackRestrictorWindows"];
  v5 = [v3 arrayForKey:@"lookBackRestrictorValues"];
  v6 = [v5 count];
  if (v6 != [v4 count])
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v32 = Logger;
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v48 = [v5 count];
      v49 = [v4 count];
      v37 = 45;
      if (isMetaClass)
      {
        v37 = 43;
      }

      v32(3, "%c[%{public}s %{public}s]:%i Invalid custom value count. Windows = %d, Values = %d", v37, ClassName, Name, 40, v48, v49);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v38 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      v39 = object_getClass(self);
      if (class_isMetaClass(v39))
      {
        v40 = 43;
      }

      else
      {
        v40 = 45;
      }

      *buf = 67110402;
      *v53 = v40;
      *&v53[4] = 2082;
      *&v53[6] = object_getClassName(self);
      v54 = 2082;
      v55 = sel_getName(a2);
      v56 = 1024;
      v57 = 40;
      v58 = 1024;
      *v59 = [v5 count];
      *&v59[4] = 1024;
      *&v59[6] = [v4 count];
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid custom value count. Windows = %d, Values = %d", buf, 0x2Eu);
    }

    goto LABEL_30;
  }

  if (![v5 count])
  {
LABEL_30:
    v30 = 0;
    goto LABEL_31;
  }

  v7 = [v5 count];
  self->_maxTimeWindows = v7;
  self->_timeWindows = malloc_type_calloc(1uLL, 8 * v7, 0x100004000313F17uLL);
  self->_maxOnTimesNominal = malloc_type_calloc(1uLL, 4 * self->_maxTimeWindows, 0x100004052888210uLL);
  self->_maxOnTimesBackOff = malloc_type_calloc(1uLL, 4 * self->_maxTimeWindows, 0x100004052888210uLL);
  v8 = malloc_type_calloc(1uLL, 4 * self->_maxTimeWindows, 0x100004052888210uLL);
  self->_maxOnTimesCritical = v8;
  if (!self->_timeWindows || !self->_maxOnTimesNominal || !self->_maxOnTimesBackOff || !v8)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v42 = NFLogGetLogger();
    if (v42)
    {
      v42(3, "%s:%i Error allocating buffers.", "[NFLookbackReaderRestrictor loadCustomDefaults]", 53);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v43 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      *v53 = "[NFLookbackReaderRestrictor loadCustomDefaults]";
      *&v53[8] = 1024;
      *&v53[10] = 53;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "%{public}s:%i Error allocating buffers.", buf, 0x12u);
    }

    timeWindows = self->_timeWindows;
    if (timeWindows)
    {
      free(timeWindows);
      self->_timeWindows = 0;
    }

    maxOnTimesNominal = self->_maxOnTimesNominal;
    if (maxOnTimesNominal)
    {
      free(maxOnTimesNominal);
      self->_maxOnTimesNominal = 0;
    }

    maxOnTimesBackOff = self->_maxOnTimesBackOff;
    if (maxOnTimesBackOff)
    {
      free(maxOnTimesBackOff);
      self->_maxOnTimesBackOff = 0;
    }

    maxOnTimesCritical = self->_maxOnTimesCritical;
    if (maxOnTimesCritical)
    {
      free(maxOnTimesCritical);
      v30 = 0;
      self->_maxOnTimesCritical = 0;
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  if (self->_maxTimeWindows < 1)
  {
    v30 = 1;
  }

  else
  {
    v50 = v3;
    v9 = 0;
    do
    {
      v10 = [v5 objectAtIndex:v9];
      [v10 floatValue];
      v12 = v11;

      v13 = [v4 objectAtIndex:v9];
      [v13 floatValue];
      self->_timeWindows[v9] = v14;

      self->_maxOnTimesNominal[v9] = v12;
      self->_maxOnTimesBackOff[v9] = v12;
      self->_maxOnTimesCritical[v9] = 0.0;
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v15 = NFLogGetLogger();
      if (v15)
      {
        v16 = v15;
        v17 = object_getClass(self);
        v18 = class_isMetaClass(v17);
        v19 = object_getClassName(self);
        v20 = sel_getName(a2);
        v22 = 45;
        if (v18)
        {
          v22 = 43;
        }

        v21 = self->_timeWindows[v9];
        v16(6, "%c[%{public}s %{public}s]:%i Using window of %f seconds with a max ratio of %f", v22, v19, v20, 79, v21, self->_maxOnTimesNominal[v9]);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v23 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = object_getClass(self);
        if (class_isMetaClass(v24))
        {
          v25 = 43;
        }

        else
        {
          v25 = 45;
        }

        v26 = object_getClassName(self);
        v27 = sel_getName(a2);
        v28 = self->_timeWindows[v9];
        v29 = self->_maxOnTimesNominal[v9];
        *buf = 67110402;
        *v53 = v25;
        *&v53[4] = 2082;
        *&v53[6] = v26;
        v54 = 2082;
        v55 = v27;
        v56 = 1024;
        v57 = 79;
        v58 = 2048;
        *v59 = v28;
        *&v59[8] = 2048;
        v60 = v29;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Using window of %f seconds with a max ratio of %f", buf, 0x36u);
      }

      ++v9;
    }

    while (v9 < self->_maxTimeWindows);
    v30 = 1;
    v3 = v50;
  }

LABEL_31:

  return v30;
}

- (BOOL)loadDefaultValues
{
  self->_maxTimeWindows = 3;
  self->_timeWindows = malloc_type_calloc(1uLL, 0x18uLL, 0x100004000313F17uLL);
  self->_maxOnTimesNominal = malloc_type_calloc(1uLL, 4 * self->_maxTimeWindows, 0x100004052888210uLL);
  self->_maxOnTimesBackOff = malloc_type_calloc(1uLL, 4 * self->_maxTimeWindows, 0x100004052888210uLL);
  v3 = malloc_type_calloc(1uLL, 4 * self->_maxTimeWindows, 0x100004052888210uLL);
  self->_maxOnTimesCritical = v3;
  timeWindows = self->_timeWindows;
  if (timeWindows && self->_maxOnTimesNominal && (self->_maxOnTimesBackOff ? (v5 = v3 == 0) : (v5 = 1), !v5))
  {
    *timeWindows = xmmword_100297AB8;
    timeWindows[2] = 180.0;
    maxOnTimesNominal = self->_maxOnTimesNominal;
    *maxOnTimesNominal = 0x3F3333333F4CCCCDLL;
    maxOnTimesNominal[2] = 0.6;
    maxOnTimesBackOff = self->_maxOnTimesBackOff;
    *maxOnTimesBackOff = 0x3F3333333F4CCCCDLL;
    maxOnTimesBackOff[2] = 0.6;
    maxOnTimesCritical = self->_maxOnTimesCritical;
    *maxOnTimesCritical = 0;
    maxOnTimesCritical[2] = 0.0;
    LOBYTE(v14) = 1;
  }

  else
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i Error allocating buffers.", "[NFLookbackReaderRestrictor loadDefaultValues]", 94);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v7 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v17 = "[NFLookbackReaderRestrictor loadDefaultValues]";
      v18 = 1024;
      v19 = 94;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}s:%i Error allocating buffers.", buf, 0x12u);
    }

    v8 = self->_timeWindows;
    if (v8)
    {
      free(v8);
      self->_timeWindows = 0;
    }

    v9 = self->_maxOnTimesNominal;
    if (v9)
    {
      free(v9);
      self->_maxOnTimesNominal = 0;
    }

    v10 = self->_maxOnTimesBackOff;
    if (v10)
    {
      free(v10);
      self->_maxOnTimesBackOff = 0;
    }

    v14 = self->_maxOnTimesCritical;
    if (v14)
    {
      free(v14);
      LOBYTE(v14) = 0;
      self->_maxOnTimesCritical = 0;
    }
  }

  return v14;
}

- (NFLookbackReaderRestrictor)initWithThermalMonitor:(id)monitor delegate:(id)delegate
{
  v20.receiver = self;
  v20.super_class = NFLookbackReaderRestrictor;
  v5 = [(NFReaderRestrictor *)&v20 initWithThermalMonitor:monitor delegate:delegate];
  if (!v5)
  {
    goto LABEL_16;
  }

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

    v7(6, "%c[%{public}s %{public}s]:%i Using lookback mechanism", v11, ClassName, Name, 125);
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
    v22 = v14;
    v23 = 2082;
    v24 = v15;
    v25 = 2082;
    v26 = v16;
    v27 = 1024;
    v28 = 125;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Using lookback mechanism", buf, 0x22u);
  }

  if (NFIsInternalBuild())
  {
    if (![(NFLookbackReaderRestrictor *)v5 loadCustomDefaults]&& ![(NFLookbackReaderRestrictor *)v5 loadDefaultValues])
    {
      goto LABEL_14;
    }

LABEL_16:
    v17 = v5;
    goto LABEL_17;
  }

  if ([(NFLookbackReaderRestrictor *)v5 loadDefaultValues])
  {
    goto LABEL_16;
  }

LABEL_14:
  v17 = 0;
LABEL_17:

  return v17;
}

- (void)dealloc
{
  timeWindows = self->_timeWindows;
  if (timeWindows)
  {
    free(timeWindows);
    self->_timeWindows = 0;
  }

  maxOnTimesNominal = self->_maxOnTimesNominal;
  if (maxOnTimesNominal)
  {
    free(maxOnTimesNominal);
    self->_maxOnTimesNominal = 0;
  }

  maxOnTimesBackOff = self->_maxOnTimesBackOff;
  if (maxOnTimesBackOff)
  {
    free(maxOnTimesBackOff);
    self->_maxOnTimesBackOff = 0;
  }

  maxOnTimesCritical = self->_maxOnTimesCritical;
  if (maxOnTimesCritical)
  {
    free(maxOnTimesCritical);
    self->_maxOnTimesCritical = 0;
  }

  v7.receiver = self;
  v7.super_class = NFLookbackReaderRestrictor;
  [(NFLookbackReaderRestrictor *)&v7 dealloc];
}

- (double)maxReaderTime
{
  thermalPressureNominal = [(NFReaderRestrictor *)self thermalPressureNominal];
  result = 20.0;
  if ((thermalPressureNominal & 1) == 0)
  {
    thermalPressureBackoff = [(NFReaderRestrictor *)self thermalPressureBackoff];
    result = 0.0;
    if (thermalPressureBackoff)
    {
      return 7.0;
    }
  }

  return result;
}

- (id)_allOperationsSince:(double)since referenceTime:(id)time
{
  timeCopy = time;
  readerOperations = [(NFReaderRestrictor *)self readerOperations];
  reverseObjectEnumerator = [readerOperations reverseObjectEnumerator];
  allObjects = [reverseObjectEnumerator allObjects];

  v10 = objc_opt_new();
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v11 = allObjects;
  v12 = [v11 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v27;
    while (2)
    {
      v15 = 0;
      do
      {
        if (*v27 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v26 + 1) + 8 * v15);
        if (v16)
        {
          v17 = *(v16 + 8);
        }

        else
        {
          v17 = 0;
        }

        v18 = v17;
        [timeCopy timeIntervalSinceDate:{v18, v26}];
        v20 = v19;

        if (v20 > since)
        {
          if (v16)
          {
            v22 = *(v16 + 16);
          }

          else
          {
            v22 = 0;
          }

          v23 = v22;
          v24 = [v23 isEqualToString:@"ReaderStarted"];

          if (v24)
          {
            [v10 insertObject:v16 atIndex:0];
          }

          goto LABEL_18;
        }

        [v10 insertObject:v16 atIndex:0];
        v15 = v15 + 1;
      }

      while (v13 != v15);
      v21 = [v11 countByEnumeratingWithState:&v26 objects:v30 count:16];
      v13 = v21;
      if (v21)
      {
        continue;
      }

      break;
    }
  }

LABEL_18:

  return v10;
}

- (void)_getReaderOnTime:(double *)time andOff:(double *)off since:(double)since referenceTime:(id)referenceTime
{
  referenceTimeCopy = referenceTime;
  v11 = [(NFLookbackReaderRestrictor *)self _allOperationsSince:referenceTimeCopy referenceTime:since];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v12 = [v11 countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (v12)
  {
    v13 = v12;
    timeCopy = time;
    offCopy = off;
    v39 = referenceTimeCopy;
    v14 = 0;
    v15 = 0;
    v16 = *v41;
    v17 = 0.0;
    v18 = 0.0;
    do
    {
      v19 = 0;
      do
      {
        if (*v41 != v16)
        {
          objc_enumerationMutation(v11);
        }

        v20 = *(*(&v40 + 1) + 8 * v19);
        if (v20)
        {
          v21 = *(v20 + 16);
        }

        else
        {
          v21 = 0;
        }

        v22 = v21;
        v23 = [v22 isEqualToString:@"ReaderStarted"];

        if (v23)
        {
          if (v15)
          {
            if (v20)
            {
              v24 = *(v20 + 8);
            }

            else
            {
              v24 = 0;
            }

            v25 = v24;
            [v25 timeIntervalSinceDate:v15];
            v17 = v26 + v17;
          }

          if (v20)
          {
            v15 = 0;
            v27 = *(v20 + 8);
            v28 = v14;
            v14 = v27;
          }

          else
          {
            v27 = 0;
            v15 = 0;
            v28 = v14;
            v14 = 0;
          }
        }

        else
        {
          if (v14)
          {
            if (v20)
            {
              v29 = *(v20 + 8);
            }

            else
            {
              v29 = 0;
            }

            v30 = v29;
            [v30 timeIntervalSinceDate:v14];
            v18 = v31 + v18;
          }

          if (v20)
          {
            v14 = 0;
            v27 = *(v20 + 8);
            v28 = v15;
            v15 = v27;
          }

          else
          {
            v27 = 0;
            v14 = 0;
            v28 = v15;
            v15 = 0;
          }
        }

        v32 = v27;

        v19 = v19 + 1;
      }

      while (v13 != v19);
      v33 = [v11 countByEnumeratingWithState:&v40 objects:v44 count:16];
      v13 = v33;
    }

    while (v33);
    referenceTimeCopy = v39;
    if (v14)
    {
      [v39 timeIntervalSinceDate:v14];
      v18 = v34 + v18;
    }

    time = timeCopy;
    off = offCopy;
  }

  else
  {
    v15 = 0;
    v14 = 0;
    v17 = 0.0;
    v18 = 0.0;
  }

  if ((v17 + v18) >= since)
  {
    v36 = v17;
  }

  else
  {
    v35 = since - v18;
    v36 = v35;
  }

  *time = v18;
  *off = v36;
}

- (double)getCooloffTime
{
  v18.receiver = self;
  v18.super_class = NFLookbackReaderRestrictor;
  currentTestTime = [(NFReaderRestrictor *)&v18 currentTestTime];
  if (currentTestTime)
  {
    v17.receiver = self;
    v17.super_class = NFLookbackReaderRestrictor;
    currentTestTime2 = [(NFReaderRestrictor *)&v17 currentTestTime];
  }

  else
  {
    currentTestTime2 = [NSDate dateWithTimeIntervalSinceNow:0.0];
  }

  v5 = currentTestTime2;

  if (self->_maxTimeWindows < 1)
  {
    v7 = 0.0;
  }

  else
  {
    v6 = 0;
    v7 = 0.0;
    while (1)
    {
      v8 = self->_timeWindows[v6];
      [(NFLookbackReaderRestrictor *)self getMaxOnTimeAtIndex:v6];
      v15 = 0.0;
      v16 = 0.0;
      if (v9 == 0.0)
      {
        break;
      }

      v10 = v9;
      [(NFLookbackReaderRestrictor *)self _getReaderOnTime:&v16 andOff:&v15 since:v5 referenceTime:v8];
      if (v16 != 0.0)
      {
        if (v16 / v10 - (v16 + v15) >= 1.0)
        {
          v11 = v16 / v10 - (v16 + v15);
        }

        else
        {
          v11 = 0.0;
        }

        if (v11 != 0.0)
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          Logger = NFLogGetLogger();
          if (Logger)
          {
            Logger(6, "%s:%i Cooloff of %f required for window %d", "[NFLookbackReaderRestrictor getCooloffTime]", 292, *&v11, v6);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v13 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136446978;
            v20 = "[NFLookbackReaderRestrictor getCooloffTime]";
            v21 = 1024;
            v22 = 292;
            v23 = 2048;
            v24 = v11;
            v25 = 1024;
            v26 = v6;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Cooloff of %f required for window %d", buf, 0x22u);
          }
        }

        if (v11 > v7)
        {
          v7 = v11;
        }
      }

      if (++v6 >= self->_maxTimeWindows)
      {
        goto LABEL_23;
      }
    }

    v7 = 315360000.0;
  }

LABEL_23:

  return v7;
}

- (id)description
{
  v25.receiver = self;
  v25.super_class = NFLookbackReaderRestrictor;
  v3 = [(NFReaderRestrictor *)&v25 description];
  v4 = [NSMutableString stringWithString:v3];

  v24.receiver = self;
  v24.super_class = NFLookbackReaderRestrictor;
  currentTestTime = [(NFReaderRestrictor *)&v24 currentTestTime];
  if (currentTestTime)
  {
    v23.receiver = self;
    v23.super_class = NFLookbackReaderRestrictor;
    currentTestTime2 = [(NFReaderRestrictor *)&v23 currentTestTime];
  }

  else
  {
    currentTestTime2 = [NSDate dateWithTimeIntervalSinceNow:0.0];
  }

  v7 = currentTestTime2;

  [v4 appendFormat:@"\n\t Time Windows = {"];
  if (self->_maxTimeWindows >= 1)
  {
    v8 = 0;
    do
    {
      [v4 appendFormat:@"%f, ", *&self->_timeWindows[v8++]];
    }

    while (v8 < self->_maxTimeWindows);
  }

  [v4 appendFormat:@"}\n"];
  [v4 appendFormat:@"\t Nominal Windows = {"];
  if (self->_maxTimeWindows >= 1)
  {
    v9 = 0;
    do
    {
      [v4 appendFormat:@"%f, ", self->_maxOnTimesNominal[v9++]];
    }

    while (v9 < self->_maxTimeWindows);
  }

  [v4 appendFormat:@"}\n"];
  [v4 appendFormat:@"\t Backoff Windows = {"];
  if (self->_maxTimeWindows >= 1)
  {
    v10 = 0;
    do
    {
      [v4 appendFormat:@"%f, ", self->_maxOnTimesBackOff[v10++]];
    }

    while (v10 < self->_maxTimeWindows);
  }

  [v4 appendFormat:@"}\n"];
  if ([(NFReaderRestrictor *)self thermalPressureCritical])
  {
    v11 = @"\t Current window = Critical\n";
  }

  else if ([(NFReaderRestrictor *)self thermalPressureBackoff])
  {
    v11 = @"\t Current window = Backoff\n";
  }

  else
  {
    v11 = @"\t Current window = Nominal\n";
  }

  [v4 appendFormat:v11];
  [v4 appendFormat:@"\t Current Windows state = {\n"];
  if (self->_maxTimeWindows >= 1)
  {
    v12 = 0;
    do
    {
      v13 = self->_timeWindows[v12];
      v21 = 0.0;
      v22 = 0.0;
      thermalPressureCritical = [(NFReaderRestrictor *)self thermalPressureCritical];
      v15 = &OBJC_IVAR___NFLookbackReaderRestrictor__maxOnTimesCritical;
      if ((thermalPressureCritical & 1) == 0)
      {
        thermalPressureBackoff = [(NFReaderRestrictor *)self thermalPressureBackoff];
        v17 = 2;
        if (thermalPressureBackoff)
        {
          v17 = 3;
        }

        v15 = &OBJC_IVAR___NFLookbackReaderRestrictor__maxTimeWindows[v17];
      }

      if ((*(&self->super.super.isa + *v15))[v12] == 0.0)
      {
        break;
      }

      [(NFLookbackReaderRestrictor *)self _getReaderOnTime:&v22 andOff:&v21 since:v7 referenceTime:v13];
      if (v22 + v21 != 0.0)
      {
        v18 = v22 / (v22 + v21);
        [v4 appendFormat:@"\t\t Window Size = %f, ON = %f, off = %f, total = %f, ratio = %f\n", *&v13, *&v22, *&v21, v22 + v21, v18];
      }

      ++v12;
    }

    while (v12 < self->_maxTimeWindows);
  }

  [v4 appendFormat:@"}\n"];
  readerOperations = [(NFReaderRestrictor *)self readerOperations];
  [v4 appendFormat:@"\t Operations = %@", readerOperations];

  return v4;
}

@end