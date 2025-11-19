@interface CLPeopleDensityClassifier
- (BOOL)ingestBTLEAdvertisement:(const void *)a3;
- (id).cxx_construct;
- (id)initAndMarkScanningStarted:(id)a3;
- (id)isUserAloneAt:(double)a3 withHints:(id)a4;
- (void)dealloc;
- (void)markScanningStopped;
@end

@implementation CLPeopleDensityClassifier

- (id)initAndMarkScanningStarted:(id)a3
{
  v8.receiver = self;
  v8.super_class = CLPeopleDensityClassifier;
  v4 = [(CLPeopleDensityClassifier *)&v8 init];
  result = 0;
  if (a3)
  {
    if (v4)
    {
      v4->_classifierConfig = [a3 copy];
      v4->_scanSessionStartTimestamp = +[NSDate date];
      memset(v6, 0, sizeof(v6));
      v7 = 1065353216;
      sub_1005D7B24(&v4->_advertisementsByAddress, v6);
      sub_1005D7A5C(v6);
      return v4;
    }
  }

  return result;
}

- (BOOL)ingestBTLEAdvertisement:(const void *)a3
{
  if (!sub_1005D7C24(&self->_advertisementsByAddress.__table_.__bucket_list_.__ptr_, a3))
  {
    memset(v7, 0, sizeof(v7));
    sub_1005D74D4(__p, a3, v7);
    sub_1005D7D20(&self->_advertisementsByAddress.__table_.__bucket_list_.__ptr_, __p);
    v11 = &v10;
    sub_1005D7594(&v11);
    if (v9 < 0)
    {
      operator delete(__p[0]);
    }

    v11 = v7;
    sub_1005D7594(&v11);
  }

  v5 = sub_1005D7C24(&self->_advertisementsByAddress.__table_.__bucket_list_.__ptr_, a3);
  if (!v5)
  {
    sub_1000432E8("unordered_map::at: key not found");
  }

  sub_1005D7064((v5 + 5), a3);
  return 1;
}

- (id)isUserAloneAt:(double)a3 withHints:(id)a4
{
  scanSessionStopTimestamp = self->_scanSessionStopTimestamp;
  if (!scanSessionStopTimestamp)
  {
    if (qword_1025D4840 != -1)
    {
      sub_1018DBC50();
    }

    v18 = qword_1025D4848;
    if (os_log_type_enabled(qword_1025D4848, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_ERROR, "Session hasn't stopped yet; failed to infer any people density result from the current session", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018DBD68();
    }

    return 0;
  }

  if ([(NSDate *)scanSessionStopTimestamp compare:self->_scanSessionStartTimestamp, a3]== NSOrderedAscending)
  {
    if (qword_1025D4840 != -1)
    {
      sub_1018DBC50();
    }

    v19 = qword_1025D4848;
    if (os_log_type_enabled(qword_1025D4848, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_ERROR, "Session stop time is earlier than the start time; failed to infer any people density result from the current session", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018DBC64();
    }

    return 0;
  }

  *buf = 0u;
  v25 = 0u;
  v26 = 1065353216;
  for (i = self->_advertisementsByAddress.__table_.__first_node_.__next_; i; i = *i)
  {
    v7 = i[5];
    v8 = i[6];
    while (v7 != v8)
    {
      if (*(v7 + 23) < 0)
      {
        sub_100007244(__p, *v7, *(v7 + 1));
      }

      else
      {
        v9 = *v7;
        v22 = *(v7 + 2);
        *__p = v9;
      }

      v23 = *(v7 + 24);
      if ([(CLPeopleDensityMediumSignalClassifierConfig *)self->_classifierConfig isInMidRangeRssi:DWORD1(v23)])
      {
        sub_1003C9040(buf, __p);
        if (SHIBYTE(v22) < 0)
        {
          operator delete(__p[0]);
        }

        break;
      }

      if (SHIBYTE(v22) < 0)
      {
        operator delete(__p[0]);
      }

      v7 = (v7 + 40);
    }
  }

  v10 = [NSDictionary alloc];
  v11 = [v10 initWithObjectsAndKeys:{+[NSNumber numberWithUnsignedLong:](NSNumber, "numberWithUnsignedLong:", *(&v25 + 1)), @"NumOfMidRangeRssiDevices", 0}];
  v12 = [[NSDateInterval alloc] initWithStartDate:self->_scanSessionStartTimestamp endDate:self->_scanSessionStopTimestamp];
  v13 = *(&v25 + 1);
  v14 = [CLPeopleDensityResult alloc];
  if (v13)
  {
    v15 = 100;
  }

  else
  {
    v15 = 0;
  }

  v16 = [(CLPeopleDensityResult *)v14 initWithState:v15 confidence:v12 observationInterval:v11 additionalInfo:1.0];

  v17 = v16;
  sub_1003C94DC(buf);
  return v16;
}

- (void)markScanningStopped
{
  if (!self->_scanSessionStopTimestamp)
  {
    self->_scanSessionStopTimestamp = +[NSDate date];
  }
}

- (void)dealloc
{
  if (qword_1025D4840 != -1)
  {
    sub_1018DBC50();
  }

  v3 = qword_1025D4848;
  if (os_log_type_enabled(qword_1025D4848, OS_LOG_TYPE_DEBUG))
  {
    scanSessionStartTimestamp = self->_scanSessionStartTimestamp;
    *buf = 138477827;
    v7 = scanSessionStartTimestamp;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "Dealloc classification session: start,%{private}@", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018DBE6C(self);
  }

  v5.receiver = self;
  v5.super_class = CLPeopleDensityClassifier;
  [(CLPeopleDensityClassifier *)&v5 dealloc];
}

- (id).cxx_construct
{
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  *(self + 10) = 1065353216;
  return self;
}

@end