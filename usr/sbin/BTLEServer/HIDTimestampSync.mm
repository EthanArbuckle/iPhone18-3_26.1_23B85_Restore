@interface HIDTimestampSync
- (BOOL)isTimestampSyncEnabled;
- (BOOL)obtainTimestampFromDriver:(unint64_t *)driver count:(unint64_t *)count period:(unsigned int *)period;
- (BOOL)timestampSyncIsValid:(unint64_t)valid hostTimestamp:(unint64_t)timestamp btSyncTimestampUs:(unint64_t)us;
- (HIDTimestampSync)initWithBtClockMask:(unint64_t)mask;
- (int64_t)calculateTimestampDifference:(unint64_t)difference current:(unint64_t)current threshold:(unint64_t)threshold compensation:(unint64_t)compensation errorHandler:(id)handler;
- (unint64_t)applyInverseTimestampOffset:(unint64_t)offset;
- (unint64_t)applyTimestampOffset:(unsigned int)offset precise:(BOOL)precise;
- (unint64_t)machTimeToMicrosec:(unint64_t)microsec;
- (unint64_t)microsecToMachTime:(unint64_t)time;
- (void)dealloc;
- (void)processTimestampSync:(unsigned int)sync phase:(unsigned int)phase;
@end

@implementation HIDTimestampSync

- (HIDTimestampSync)initWithBtClockMask:(unint64_t)mask
{
  v18.receiver = self;
  v18.super_class = HIDTimestampSync;
  v4 = [(HIDTimestampSync *)&v18 init];
  v5 = v4;
  if (v4)
  {
    v4->_btClockMask = mask;
    v6 = [(HIDTimestampSync *)v4 convertBTClockToMicrosec:mask];
    v5->_btSyncCompensation = &v6[[(HIDTimestampSync *)v5 convertBTClockToMicrosec:1]];
    v5->_syncService = 0;
    v7 = IOServiceNameMatching("AppleMultitouchTimestampSync");
    if (v7)
    {
      existing = 0;
      if (IOServiceGetMatchingServices(kIOMainPortDefault, v7, &existing))
      {
        if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
        {
          sub_1000760B8();
        }
      }

      else
      {
        v10 = IOIteratorNext(existing);
        if (v10)
        {
          v5->_syncService = v10;
          v11 = qword_1000DDBC8;
          if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
          {
            v16[0] = 0;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Found AppleMultitouchTimestampSync driver", v16, 2u);
          }
        }

        if (existing)
        {
          IOObjectRelease(existing);
        }

        if (v5->_syncService)
        {
          v12 = [[HIDTimestampSyncErrorHandler alloc] initWithSubType:@"InterruptReportTimestampErrors"];
          reportErrorHandler = v5->_reportErrorHandler;
          v5->_reportErrorHandler = v12;

          v14 = [[HIDTimestampSyncErrorHandler alloc] initWithSubType:@"TimestampSyncErrors"];
          btSyncErrorHandler = v5->_btSyncErrorHandler;
          v5->_btSyncErrorHandler = v14;

          v8 = v5;
          goto LABEL_9;
        }
      }
    }

    else if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_10007612C();
    }
  }

  v8 = 0;
LABEL_9:

  return v8;
}

- (void)dealloc
{
  syncService = self->_syncService;
  if (syncService)
  {
    IOObjectRelease(syncService);
    self->_syncService = 0;
  }

  v4.receiver = self;
  v4.super_class = HIDTimestampSync;
  [(HIDTimestampSync *)&v4 dealloc];
}

- (BOOL)obtainTimestampFromDriver:(unint64_t *)driver count:(unint64_t *)count period:(unsigned int *)period
{
  syncService = self->_syncService;
  if (!syncService)
  {
    sub_1000762C0(&v20);
    return v20;
  }

  if (driver)
  {
    CFProperty = IORegistryEntryCreateCFProperty(syncService, @"Last Timestamp Sync", kCFAllocatorDefault, 0);
    if (!CFProperty)
    {
      sub_1000761AC(&v17);
      return v17;
    }

    v11 = CFProperty;
    CFNumberGetValue(CFProperty, kCFNumberSInt64Type, driver);
    CFRelease(v11);
  }

  if (count)
  {
    v12 = IORegistryEntryCreateCFProperty(self->_syncService, @"Timestamp Sync Count", kCFAllocatorDefault, 0);
    if (!v12)
    {
      sub_100076208(&v18);
      return v18;
    }

    v13 = v12;
    CFNumberGetValue(v12, kCFNumberSInt64Type, count);
    CFRelease(v13);
  }

  if (period)
  {
    v14 = IORegistryEntryCreateCFProperty(self->_syncService, @"Timestamp Sync Period", kCFAllocatorDefault, 0);
    if (!v14)
    {
      sub_100076264(&v19);
      return v19;
    }

    v15 = v14;
    CFNumberGetValue(v14, kCFNumberSInt32Type, period);
    CFRelease(v15);
  }

  return 1;
}

- (BOOL)isTimestampSyncEnabled
{
  p_periodMs = &self->_periodMs;
  if (self->_periodMs)
  {
    v4 = [(HIDTimestampSync *)self machTimeToMicrosec:mach_absolute_time()]- self->_lastHostTimestampUs;
    if (v4 < 2000 * self->_periodMs)
    {
      return 1;
    }

    v7 = 0;
    v5 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
    {
      sub_10007631C(p_periodMs, v4, v5);
    }

    if ([(HIDTimestampSync *)self obtainTimestampFromDriver:0 count:0 period:&v7])
    {
      if (v7)
      {
        return 1;
      }

      sub_1000763A8(p_periodMs);
    }
  }

  return 0;
}

- (unint64_t)applyTimestampOffset:(unsigned int)offset precise:(BOOL)precise
{
  preciseCopy = precise;
  if (![(HIDTimestampSync *)self isTimestampSyncEnabled])
  {
    return 0;
  }

  v7 = [(HIDTimestampSync *)self convertBTClockToMicrosec:offset];
  if (preciseCopy)
  {
    v8 = 2000 * self->_periodMs;
    btSyncCompensation = self->_btSyncCompensation;
  }

  else
  {
    btSyncCompensation = self->_btSyncCompensation;
    v8 = btSyncCompensation;
  }

  v10 = [(HIDTimestampSync *)self calculateTimestampDifference:self->_lastBTSyncTimestampUs current:v7 threshold:v8 compensation:btSyncCompensation errorHandler:self->_reportErrorHandler];
  if (!v10 && self->_lastBTSyncTimestampUs != v7)
  {
    if (![(HIDTimestampSyncErrorHandler *)self->_reportErrorHandler isMuted])
    {
      v12 = qword_1000DDBC8;
      if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
      {
        lastBTSyncTimestampUs = self->_lastBTSyncTimestampUs;
        periodMs = self->_periodMs;
        v16 = 134218496;
        v17 = v7;
        v18 = 2048;
        v19 = lastBTSyncTimestampUs;
        v20 = 1024;
        v21 = periodMs;
        _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Packet timestamp (%llu) is out of sync with BT (ts=%lluus, period=%ums). Ignoring.", &v16, 0x1Cu);
      }
    }

    return 0;
  }

  v11 = self->_lastHostTimestampUs + v10;
  [(HIDTimestampSyncErrorHandler *)self->_reportErrorHandler reportSuccess];
  return v11;
}

- (unint64_t)applyInverseTimestampOffset:(unint64_t)offset
{
  if (![(HIDTimestampSync *)self isTimestampSyncEnabled])
  {
    return 0;
  }

  if (!self->_lastBTSyncTimestampUsValid)
  {
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_100076414();
    }

    return 0;
  }

  v5 = offset - self->_lastHostTimestampUs;
  v6 = self->_lastBTSyncTimestampUs + v5;
  v7 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
  {
    lastBTSyncTimestampUs = self->_lastBTSyncTimestampUs;
    lastHostTimestampUs = self->_lastHostTimestampUs;
    v11 = 134219008;
    v12 = lastHostTimestampUs;
    v13 = 2048;
    offsetCopy = offset;
    v15 = 2048;
    v16 = v5;
    v17 = 2048;
    v18 = lastBTSyncTimestampUs;
    v19 = 2048;
    v20 = v6;
    _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Diff from last host tsync (%7lluµs) to current packet host tstamp (%7lluµs) = %+5lldµs. Applied to last BT tsync (%7lldµs) results in packet BT tstamp = %7lldµs", &v11, 0x34u);
  }

  return v6;
}

- (int64_t)calculateTimestampDifference:(unint64_t)difference current:(unint64_t)current threshold:(unint64_t)threshold compensation:(unint64_t)compensation errorHandler:(id)handler
{
  handlerCopy = handler;
  if (compensation < threshold || (v12 = compensation - difference, compensation < difference) || (v13 = compensation - current, compensation < current))
  {
    [NSString stringWithFormat:@"Compensation should be equal or larger than timestamps and threshold.(compensation=%llu, threshold=%llu, previous=%llu, current=%llu)", compensation, threshold, difference, current, v18];
    v15 = LABEL_8:;
    [handlerCopy reportFailure:v15];

    v14 = 0;
    goto LABEL_9;
  }

  if ((current - difference) > threshold || (current - difference) < -threshold)
  {
    if (current <= difference)
    {
      v14 = v12 + current;
      if ((v12 + current) > threshold)
      {
        [NSString stringWithFormat:@"Timestamp going backwards (%llu=>%llu, diff=%lld). This is not a rollover(threshold=%llu, compensation=%llu).", difference, current, current - difference, threshold, compensation];
        goto LABEL_8;
      }

      v17 = qword_1000DDBC8;
      if (!os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_9;
      }
    }

    else
    {
      v14 = v13 + difference;
      if ((v13 + difference) > threshold)
      {
        [NSString stringWithFormat:@"Compensation should be equal or larger than timestamps and threshold.Timestamp jump (%llu=>%llu, diff=%lld). This is not a rollover(threshold=%llu, compensation=%llu).", difference, current, current - difference, threshold, compensation];
        goto LABEL_8;
      }

      v17 = qword_1000DDBC8;
      if (!os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_9;
      }
    }

    *buf = 134219008;
    differenceCopy = difference;
    v21 = 2048;
    currentCopy = current;
    v23 = 2048;
    v24 = v14;
    v25 = 2048;
    thresholdCopy = threshold;
    v27 = 2048;
    compensationCopy = compensation;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Rollover detected (%llu=>%llu). Return diff=%lld (threshold=%llu, compensation=%llu)", buf, 0x34u);
    goto LABEL_9;
  }

  v14 = current - difference;
LABEL_9:

  return v14;
}

- (BOOL)timestampSyncIsValid:(unint64_t)valid hostTimestamp:(unint64_t)timestamp btSyncTimestampUs:(unint64_t)us
{
  lastHostTimestampCount = self->_lastHostTimestampCount;
  if (lastHostTimestampCount)
  {
    if (timestamp != 1 && lastHostTimestampCount + 1 != timestamp)
    {
      btSyncErrorHandler = self->_btSyncErrorHandler;
      valid = [NSString stringWithFormat:@"Host timestamp jump detected (%llu:%llu -> %llu:%llu). Discard this BTSync packet.", lastHostTimestampCount, self->_lastHostTimestampUs, timestamp, valid];
      [(HIDTimestampSyncErrorHandler *)btSyncErrorHandler reportFailure:valid];

      lastHostTimestampUs = self->_lastHostTimestampUs;
      v12 = self->_lastHostTimestampCount;
      kdebug_trace();
      return 0;
    }

    if (timestamp < 2)
    {
      v21 = 0;
    }

    else
    {
      v19 = self->_lastHostTimestampUs;
      v20 = [(HIDTimestampSync *)self calculateTimestampDifference:self->_lastBTSyncTimestampUs current:us threshold:2000 * self->_periodMs compensation:self->_btSyncCompensation errorHandler:self->_btSyncErrorHandler];
      v21 = valid - v19 - v20;
      if (self->_lastHostTimestampUs && self->_lastBTSyncTimestampUs)
      {
        kdebug_trace();
      }

      if (v20 || self->_lastBTSyncTimestampUs == us)
      {
        [(HIDTimestampSyncErrorHandler *)self->_btSyncErrorHandler reportSuccess];
      }
    }

    v22 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
    {
      v24 = self->_lastHostTimestampUs;
      v23 = self->_lastHostTimestampCount;
      lastBTSyncTimestampUs = self->_lastBTSyncTimestampUs;
      *buf = 134219520;
      timestampCopy2 = v23;
      v28 = 2048;
      validCopy2 = v24;
      v30 = 2048;
      usCopy2 = timestamp;
      v32 = 2048;
      validCopy = valid;
      v34 = 2048;
      v35 = lastBTSyncTimestampUs;
      v36 = 2048;
      usCopy = us;
      v38 = 2048;
      v39 = v21;
      v16 = "New timestamp sync (Host=%llu:%llu->%llu:%llu, BT=%llu->%llu, drift=%lld)";
      v17 = v22;
      v18 = 72;
      goto LABEL_17;
    }
  }

  else
  {
    v15 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218496;
      timestampCopy2 = timestamp;
      v28 = 2048;
      validCopy2 = valid;
      v30 = 2048;
      usCopy2 = us;
      v16 = "First timestamp sync (Host=%llu:%llu, BT=%llu)";
      v17 = v15;
      v18 = 32;
LABEL_17:
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, v16, buf, v18);
    }
  }

  return 1;
}

- (unint64_t)machTimeToMicrosec:(unint64_t)microsec
{
  v4 = dword_1000DDB04;
  if (!dword_1000DDB04)
  {
    mach_timebase_info(&dword_1000DDB00);
    v4 = dword_1000DDB04;
  }

  return microsec / v4 * dword_1000DDB00 / 0x3E8;
}

- (unint64_t)microsecToMachTime:(unint64_t)time
{
  v4 = dword_1000DDB0C;
  if (!dword_1000DDB0C)
  {
    mach_timebase_info(&dword_1000DDB08);
    v4 = dword_1000DDB0C;
  }

  return 1000 * time * v4 / dword_1000DDB08;
}

- (void)processTimestampSync:(unsigned int)sync phase:(unsigned int)phase
{
  v6 = [(HIDTimestampSync *)self convertBTClockToMicrosec:sync];
  v11 = 0;
  v12 = 0;
  if ([(HIDTimestampSync *)self obtainTimestampFromDriver:&v12 count:&v11 period:&self->_periodMs])
  {
    v7 = v6 + phase;
    v8 = 1000 * v12;
    if ([(HIDTimestampSync *)self timestampSyncIsValid:1000 * v12 hostTimestamp:v11 btSyncTimestampUs:v7])
    {
      self->_lastBTSyncTimestampUs = v7;
      v9 = 1;
    }

    else
    {
      v9 = 0;
    }

    self->_lastBTSyncTimestampUsValid = v9;
    v10 = v11;
    self->_lastHostTimestampUs = v8;
    self->_lastHostTimestampCount = v10;
  }
}

@end