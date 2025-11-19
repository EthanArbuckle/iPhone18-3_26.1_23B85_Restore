uint64_t sub_100778C94()
{
  v0 = sub_1000206B4();
  sub_1003046B4(v0);
  v1 = *(*sub_1000206B4() + 944);

  return v1();
}

uint64_t sub_100778D10(uint64_t a1, uint64_t a2)
{
  v3 = [sub_1000184F4(a1 a2)];
  sub_10000EC00(__p, [v3 UTF8String]);
  sub_100778DE4(a1, __p);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  [*(a1 + 608) removeObjectForKey:v3];
  sub_10000EC00(v5, [v3 UTF8String]);
  sub_1000337E4((a1 + 640), v5);
  if (v6 < 0)
  {
    operator delete(v5[0]);
  }

  return sub_100778C94();
}

void sub_100778DB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

id sub_100778DE4(uint64_t a1, uint64_t *a2)
{
  v3 = a2;
  if (*(a2 + 23) < 0)
  {
    v3 = *a2;
  }

  v4 = [NSString stringWithUTF8String:v3];
  v5 = +[NSMutableDictionary dictionary];
  v8 = qword_102659E90;
  v7 = qword_102659E98;
  if (qword_102659E90 != qword_102659E98)
  {
    *&v6 = 68289026;
    v19 = v6;
    do
    {
      v9 = *v8;
      v21 = 0;
      v22 = 0;
      sub_10004F9C8(v9, &v22, &v21);
      v10 = v21;
      v11 = v22;
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }

      v12 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
      {
        v13 = a2;
        if (*(a2 + 23) < 0)
        {
          v13 = *a2;
        }

        *buf = 68289538;
        v24 = 0;
        v25 = 2082;
        v26 = "";
        v27 = 2082;
        v28 = v13;
        v29 = 2050;
        v30 = v9;
        _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#usesync send stoptime due to expiry of temp assertion, client:%{public, location:escape_only}s, service:%{public, location:CLClientServiceType}lld}", buf, 0x26u);
      }

      Current = CFAbsoluteTimeGetCurrent();
      v15 = [*(a1 + 608) objectForKey:v4];
      if (v15)
      {
        [v15 doubleValue];
      }

      else
      {
        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
        }

        v17 = off_1025D47A8;
        if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v19;
          v24 = 0;
          v25 = 2082;
          v26 = "";
          _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#usesync #Warning Missing start time but stop location usage sync is called}", buf, 0x12u);
        }

        v16 = Current + -10.0;
      }

      [v5 setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:", v16, v19), v11}];
      [v5 setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:", Current), v10}];
      ++v8;
    }

    while (v8 != v7);
  }

  return [*(a1 + 1552) client:v4 didChangeUsageData:v5];
}

uint64_t sub_100779070(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [*(a1 + 136) registeredKeyPathForClientIdentifier:a2];
  if ([v5 isValidCKP])
  {
    v6 = [*(a1 + 136) intForKey:@"IncidentalUseMode" atKeyPath:v5 defaultValue:0];
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v7 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
    {
      LOWORD(v10[0]) = 0;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_INFO, "#IncidentalUseMode able to get client's incidental use mode", v10, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10192E7CC();
    }
  }

  else
  {
    v6 = 0;
  }

  if (qword_1025D47A0 != -1)
  {
    sub_10192D4D0();
  }

  v8 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    v10[0] = 67109120;
    v10[1] = v6;
    _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "#IncidentalUseMode  returning with value:%d", v10, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10192E8A8(v6);
  }

  return (*(a3 + 16))(a3, v6);
}

void sub_100779210(uint64_t a1, int a2, void *a3)
{
  if (objc_opt_class())
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v6 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289538;
      *&buf[4] = 0;
      LOWORD(v16) = 2082;
      *(&v16 + 2) = "";
      WORD5(v16) = 1026;
      HIDWORD(v16) = a2;
      LOWORD(v17) = 2114;
      *(&v17 + 2) = a3;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#LocationUtilityEvent Reported, utility:%{public}d, date:%{public, location:escape_only}@}", buf, 0x22u);
    }

    v7 = [a3 dateByAddingTimeInterval:-600.0];
    v8 = [[NSDateInterval alloc] initWithStartDate:v7 endDate:a3];
    AbsoluteTime = CFDateGetAbsoluteTime(v7);
    if (AbsoluteTime < CFAbsoluteTimeGetCurrent())
    {
      v10 = [[RTStoredLocationEnumerationOptions alloc] initWithDateInterval:v8 horizontalAccuracy:0 batchSize:0 boundingBoxLocation:14 type:0.0];
      [v10 setSmoothingRequired:1];
      *buf = 0;
      *&v16 = buf;
      *(&v16 + 1) = 0x3052000000;
      *&v17 = sub_1000474E4;
      *(&v17 + 1) = sub_10004844C;
      v18 = 0;
      v11 = [objc_msgSend(*(a1 + 32) "vendor")];
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_1007794F0;
      v13[3] = &unk_10246FE08;
      v13[5] = buf;
      v13[6] = a1;
      v13[4] = v8;
      v14 = a2;
      [v11 enumerateStoredLocationsWithOptions:v10 withReply:v13];
      _Block_object_dispose(buf, 8);
    }
  }

  else
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v12 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      LOWORD(v16) = 2082;
      *(&v16 + 2) = "";
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLPLocationConsumptionScoreInfo doesn't exist in this platform.}", buf, 0x12u);
    }
  }
}

void sub_1007794D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1007794F0(uint64_t a1, void *a2, uint64_t a3, int a4)
{
  if (a3)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v5 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_ERROR))
    {
      v29 = 68289282;
      v30 = 0;
      v31 = 2082;
      v32 = "";
      v33 = 2114;
      *v34 = a3;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#LocationUtilityEvent Got error fetching locations from CoreRoutine, error:%{public, location:escape_only}@}", &v29, 0x1Cu);
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }
    }

    v6 = off_1025D47A8;
    if (os_signpost_enabled(off_1025D47A8))
    {
      v29 = 68289282;
      v30 = 0;
      v31 = 2082;
      v32 = "";
      v33 = 2114;
      *v34 = a3;
      _os_signpost_emit_with_name_impl(dword_100000000, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#LocationUtilityEvent Got error fetching locations from CoreRoutine", "{msg%{public}.0s:#LocationUtilityEvent Got error fetching locations from CoreRoutine, error:%{public, location:escape_only}@}", &v29, 0x1Cu);
    }
  }

  else
  {
    v10 = *(a1 + 48);
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v11 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      v29 = 68289538;
      v30 = 0;
      v31 = 2082;
      v32 = "";
      v33 = 1026;
      *v34 = a4;
      *&v34[4] = 1026;
      *&v34[6] = [a2 count];
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#LocationUtilityEvent Reply back from CoreRoutine, enumerationCompleted:%{public}d, count:%{public}d}", &v29, 0x1Eu);
    }

    if (a4)
    {
      if (*(*(*(a1 + 40) + 8) + 40))
      {
        [objc_msgSend(*(v10 + 584) "startDate")];
        v13 = v12;
        [objc_msgSend(*(v10 + 584) "endDate")];
        v15 = v14;
        v16 = v13 + (v14 - v13) * 0.5;
        [objc_msgSend(*(*(*(a1 + 40) + 8) + 40) "timestamp")];
        if (v17 <= v16)
        {
          if (qword_1025D47A0 != -1)
          {
            sub_10192D4D0();
          }

          v25 = off_1025D47A8;
          if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_ERROR))
          {
            v26 = [*(*(*(a1 + 40) + 8) + 40) timestamp];
            v29 = 68290050;
            v31 = 2082;
            v30 = 0;
            v32 = "";
            v33 = 2114;
            *v34 = v26;
            *&v34[8] = 2050;
            v35 = v16;
            v36 = 2050;
            v37 = v13;
            v38 = 2050;
            v39 = v15;
            _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#LocationUtilityEvent Location timestamp is earlier than or equal to last interval in archive. Will not persist., lastLocation.timestamp:%{public, location:escape_only}@, lastLocationUtilityEventIntervalInArchiveMidPoint:%{public}.6f, lastLocationUtilityEventIntervalInArchiveStartTime:%{public}.6f, lastLocationUtilityEventIntervalInArchiveEndTime:%{public}.6f}", &v29, 0x3Au);
            if (qword_1025D47A0 != -1)
            {
              sub_10192D4D0();
            }
          }

          v27 = off_1025D47A8;
          if (os_signpost_enabled(off_1025D47A8))
          {
            v28 = [*(*(*(a1 + 40) + 8) + 40) timestamp];
            v29 = 68290050;
            v31 = 2082;
            v30 = 0;
            v32 = "";
            v33 = 2114;
            *v34 = v28;
            *&v34[8] = 2050;
            v35 = v16;
            v36 = 2050;
            v37 = v13;
            v38 = 2050;
            v39 = v15;
            _os_signpost_emit_with_name_impl(dword_100000000, v27, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#LocationUtilityEvent Location timestamp is earlier than or equal to last interval in archive. Will not persist.", "{msg%{public}.0s:#LocationUtilityEvent Location timestamp is earlier than or equal to last interval in archive. Will not persist., lastLocation.timestamp:%{public, location:escape_only}@, lastLocationUtilityEventIntervalInArchiveMidPoint:%{public}.6f, lastLocationUtilityEventIntervalInArchiveStartTime:%{public}.6f, lastLocationUtilityEventIntervalInArchiveEndTime:%{public}.6f}", &v29, 0x3Au);
          }
        }

        else
        {
          *&v18 = COERCE_DOUBLE([objc_msgSend(*(*(*(a1 + 40) + 8) + 40) "timestamp")]);
          *&v19 = COERCE_DOUBLE([objc_msgSend(*(*(*(a1 + 40) + 8) + 40) "timestamp")]);
          v20 = objc_alloc_init(CLPLocationConsumptionScoreInfo);
          [v20 setStartTime:CFDateGetAbsoluteTime(v18)];
          [v20 setStopTime:CFDateGetAbsoluteTime(v19)];
          [v20 setScore:*(a1 + 56)];
          [*(v10 + 576) writeSecondaryObject:v20 toField:1];
          if (qword_1025D47A0 != -1)
          {
            sub_10192D4D0();
          }

          v21 = off_1025D47A8;
          if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
          {
            v22 = [*(*(*(a1 + 40) + 8) + 40) timestamp];
            v29 = 68289794;
            v30 = 0;
            v31 = 2082;
            v32 = "";
            v33 = 2114;
            *v34 = v22;
            *&v34[8] = 2114;
            v35 = *&v18;
            v36 = 2114;
            v37 = *&v19;
            _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#LocationUtilityEvent Persist utility event interval, lastLocation.timestamp:%{public, location:escape_only}@, locationUtilityEventIntervalStart:%{public, location:escape_only}@, locationUtilityEventIntervalEnd:%{public, location:escape_only}@}", &v29, 0x30u);
          }

          *(v10 + 584) = [[NSDateInterval alloc] initWithStartDate:v18 endDate:v19];
        }
      }

      else
      {
        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
        }

        v23 = off_1025D47A8;
        if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
        {
          v24 = *(a1 + 32);
          v29 = 68289282;
          v30 = 0;
          v31 = 2082;
          v32 = "";
          v33 = 2114;
          *v34 = v24;
          _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#LocationUtilityEvent No locations in interval., interval:%{public, location:escape_only}@}", &v29, 0x1Cu);
        }
      }
    }

    else if ([a2 count])
    {

      *(*(*(a1 + 40) + 8) + 40) = [a2 lastObject];
    }
  }
}

id sub_100779AE8(uint64_t a1, uint64_t a2)
{
  if (objc_opt_class())
  {
    obj = +[NSMutableArray array];
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v4 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289282;
      v23 = 0;
      v24 = 2082;
      v25 = "";
      v26 = 2114;
      v27 = a2;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#LocationUtilityEvent Retrieval request, lookBackWindowStartDate:%{public, location:escape_only}@}", buf, 0x1Cu);
    }

    if (a2)
    {
      v5 = *(a1 + 576);
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_100779FE8;
      v21[3] = &unk_10246FE30;
      v21[4] = a2;
      v21[5] = obj;
      sub_100779E1C(v5, 0, v21);
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v6 = [obj countByEnumeratingWithState:&v17 objects:v32 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v18;
        do
        {
          v9 = 0;
          do
          {
            if (*v18 != v8)
            {
              objc_enumerationMutation(obj);
            }

            v10 = *(*(&v17 + 1) + 8 * v9);
            if (qword_1025D47A0 != -1)
            {
              sub_10192D4D0();
            }

            v11 = off_1025D47A8;
            if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
            {
              v12 = [v10 startDate];
              v13 = [v10 endDate];
              *buf = 68289794;
              v23 = 0;
              v24 = 2082;
              v25 = "";
              v26 = 2114;
              v27 = a2;
              v28 = 2114;
              v29 = v12;
              v30 = 2114;
              v31 = v13;
              _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#LocationUtilityEvent Retrieved interval, lookBackWindowStartDate:%{public, location:escape_only}@, intervalStartDate:%{public, location:escape_only}@, intervalEndDate:%{public, location:escape_only}@}", buf, 0x30u);
            }

            v9 = v9 + 1;
          }

          while (v7 != v9);
          v7 = [obj countByEnumeratingWithState:&v17 objects:v32 count:16];
        }

        while (v7);
      }
    }
  }

  else
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v14 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      v23 = 0;
      v24 = 2082;
      v25 = "";
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLPLocationConsumptionScoreInfo doesn't exist in this platform.}", buf, 0x12u);
    }

    return 0;
  }

  return obj;
}

void sub_100779E1C(void *a1, uint64_t a2, uint64_t a3)
{
  if (objc_opt_class())
  {
    *buf = 0;
    *&v10 = buf;
    *(&v10 + 1) = 0x2020000000;
    v11 = 0;
    v8[0] = 0;
    v8[1] = v8;
    v8[2] = 0x2020000000;
    v8[3] = 0;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100787370;
    v7[3] = &unk_102470088;
    v7[6] = buf;
    v7[7] = v8;
    v7[4] = a2;
    v7[5] = a3;
    [a1 iterateSecondaryData:objc_msgSend(a1 forField:"mappedSecondaryData") withHandler:{1, v7}];
    _Block_object_dispose(v8, 8);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v6 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      LOWORD(v10) = 2082;
      *(&v10 + 2) = "";
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLPLocationConsumptionScoreInfo doesn't exist in this platform.}", buf, 0x12u);
    }
  }
}

void sub_100779FE8(uint64_t a1, double a2, double a3)
{
  [*(a1 + 32) timeIntervalSinceReferenceDate];
  if ((a3 - a2) * 0.5 + a2 >= v6)
  {
    [*(a1 + 40) addObject:{objc_msgSend([NSDateInterval alloc], "initWithStartDate:endDate:", objc_msgSend([NSDate alloc], "initWithTimeIntervalSinceReferenceDate:", a2), objc_msgSend([NSDate alloc], "initWithTimeIntervalSinceReferenceDate:", a3))}];
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v7 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9[0] = 68289794;
      v9[1] = 0;
      v10 = 2082;
      v11 = "";
      v12 = 2114;
      v13 = v8;
      v14 = 1026;
      v15 = a2;
      v16 = 1026;
      v17 = a3;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#LocationUtilityEvent Retrieved interval prior, lookBackWindowStartDate:%{public, location:escape_only}@, startTime:%{public}d, endTime:%{public}d}", v9, 0x28u);
    }
  }
}

void sub_10077A174(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000184F4(a1, a2);
  if (![*(a1 + 120) locationRestricted])
  {
LABEL_6:
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    goto LABEL_8;
  }

  if (qword_1025D47A0 != -1)
  {
    sub_10028840C();
  }

  v4 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    *&buf[4] = 0;
    *v9 = 2082;
    *&v9[2] = "";
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#Warning location services settings are frozen by restrictions - resetting}", buf, 0x12u);
    goto LABEL_6;
  }

LABEL_8:
  v5 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    *&buf[4] = 0;
    *v9 = 2082;
    *&v9[2] = "";
    *&v9[10] = 2114;
    *&v9[12] = v3;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:resetting and disconnecting client, Client:%{public, location:escape_only}@}", buf, 0x1Cu);
  }

  sub_100773918(a1, v3);
  if (v3)
  {
    [v3 cppClientKey];
  }

  else
  {
    *buf = 0;
    *v9 = 0;
    *&v9[8] = 0;
  }

  sub_10004EB70((a1 + 752), buf);
  if ((v9[15] & 0x80000000) != 0)
  {
    operator delete(*buf);
    if (v3)
    {
      goto LABEL_15;
    }
  }

  else if (v3)
  {
LABEL_15:
    [v3 cppClientKey];
    goto LABEL_18;
  }

  *buf = 0;
  *v9 = 0;
  *&v9[8] = 0;
LABEL_18:
  sub_10004EB70((a1 + 776), buf);
  if ((v9[15] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  sub_10000EC00(__p, "ClientRemoved");
  sub_100777AC4(a1, v3, 1, __p);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10077A394(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_10077A3D0(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = [*(a1 + 136) registeredKeyPathForClientIdentifier:?];
  v9 = [*(a1 + 136) intForKey:@"IncidentalUseMode" atKeyPath:v8 defaultValue:0];
  if (v9 == a2)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v10 = off_1025D47A8;
    result = os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT);
    if (result)
    {
      *buf = 68289538;
      *&buf[4] = 0;
      v19 = 2082;
      v20 = "";
      v21 = 2050;
      v22 = a2;
      v23 = 2050;
      v24 = a2;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#IncidentalUseMode Ignoring setIncidentalUseMode for a state that's already set, current:%{public, location:CLClientIncidentalUseMode}lld, state:%{public, location:CLClientIncidentalUseMode}lld}", buf, 0x26u);
      return 0;
    }

    return result;
  }

  v12 = v9;
  if ([v8 isValidCKP])
  {
    [*(a1 + 136) setInt:a2 forKey:@"IncidentalUseMode" atKeyPath:v8];
    [*(a1 + 136) persist];
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v13 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289538;
      *&buf[4] = 0;
      v19 = 2082;
      v20 = "";
      v21 = 2050;
      v22 = v12;
      v23 = 2050;
      v24 = a2;
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#IncidentalUseMode able to SET client's incidental use mode, from:%{public, location:CLClientIncidentalUseMode}lld, to:%{public, location:CLClientIncidentalUseMode}lld}", buf, 0x26u);
    }

    sub_10000EC00(buf, "");
    sub_100018918(a1, v8, buf);
    if (SBYTE3(v22) < 0)
    {
      operator delete(*buf);
      if (!a4)
      {
        return 1;
      }
    }

    else if (!a4)
    {
      return 1;
    }

    sub_10077A7A0(a1, v8);
    sub_10000EC00(__p, "LocalIncidentalUseModeChange");
    sub_10077A934(a1, v8, __p);
    if (v17 < 0)
    {
      operator delete(__p[0]);
    }

    return 1;
  }

  if (qword_1025D47A0 != -1)
  {
    sub_10028840C();
  }

  v14 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_ERROR))
  {
    *buf = 68289282;
    *&buf[4] = 0;
    v19 = 2082;
    v20 = "";
    v21 = 2114;
    v22 = a3;
    _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Unable to find client to update #IncidentalUseMode, Client:%{public, location:escape_only}@}", buf, 0x1Cu);
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }
  }

  v15 = off_1025D47A8;
  result = os_signpost_enabled(off_1025D47A8);
  if (result)
  {
    *buf = 68289282;
    *&buf[4] = 0;
    v19 = 2082;
    v20 = "";
    v21 = 2114;
    v22 = a3;
    _os_signpost_emit_with_name_impl(dword_100000000, v15, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Unable to find client to update #IncidentalUseMode", "{msg%{public}.0s:Unable to find client to update #IncidentalUseMode, Client:%{public, location:escape_only}@}", buf, 0x1Cu);
    return 0;
  }

  return result;
}

void sub_10077A768(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

id sub_10077A7A0(uint64_t a1, uint64_t a2)
{
  v4 = [objc_msgSend(*(a1 + 136) arrayForKey:@"VectorClocks" atKeyPath:a2 defaultValue:{&off_102554420), "mutableCopy"}];
  v5 = [v4 mutableCopy];
  [v4 setObject:+[NSNumber numberWithUnsignedInt:](NSNumber atIndexedSubscript:{"numberWithUnsignedInt:", objc_msgSend(objc_msgSend(v4, "objectAtIndexedSubscript:", 0), "unsignedIntValue") + 1), 0}];
  [*(a1 + 136) setArray:v4 forKey:@"VectorClocks" atKeyPath:a2];
  if (qword_1025D47A0 != -1)
  {
    sub_10028840C();
  }

  v6 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 68289794;
    v8[1] = 0;
    v9 = 2082;
    v10 = "";
    v11 = 2114;
    v12 = a2;
    v13 = 2114;
    v14 = v5;
    v15 = 2114;
    v16 = v4;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:triggerLocalClockUpdate, Client:%{public, location:escape_only}@, previousVectorClocks:%{public, location:escape_only}@, vectorClocks:%{public, location:escape_only}@}", v8, 0x30u);
  }

  return [*(a1 + 136) persist];
}

void sub_10077A934(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  [objc_msgSend(*(a1 + 32) "silo")];
  if (+[CLAuthSyncManager isSupported]_0())
  {
    v6 = _os_activity_create(dword_100000000, "CL: #authsync coalesceOutgoingSyncMessage", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v6, &state);

    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v7 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      v8 = a3;
      if (*(a3 + 23) < 0)
      {
        v8 = *a3;
      }

      *buf = 68289794;
      v15 = 0;
      v16 = 2082;
      v17 = "";
      v18 = 2082;
      v19 = "activity";
      v20 = 2114;
      v21 = a2;
      v22 = 2082;
      v23 = v8;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#authsync coalesceOutgoingSyncMessage, event:%{public, location:escape_only}s, ckp:%{public, location:escape_only}@, reason:%{public, location:escape_only}s}", buf, 0x30u);
    }

    v9 = [*(a1 + 1592) objectForKey:a2];
    if (v9)
    {
      if (*(a3 + 23) < 0)
      {
        a3 = *a3;
      }

      v10 = [v9 stringByAppendingFormat:@"_%s", a3];
    }

    else
    {
      if (*(a3 + 23) < 0)
      {
        a3 = *a3;
      }

      v10 = [NSString stringWithUTF8String:a3];
    }

    [*(a1 + 1592) setObject:v10 forKey:a2];
    v11 = [*(a1 + 32) silo];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100790F40;
    v12[3] = &unk_102449BC0;
    v12[4] = a2;
    v12[5] = a1;
    [v11 async:v12];
    os_activity_scope_leave(&state);
  }
}

uint64_t sub_10077AB64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_100033370(a1, a3);
  [*(a1 + 136) setInt:a2 forKey:@"LocationButtonUseMode" atKeyPath:v5];
  [*(a1 + 136) persist];
  if (qword_1025D47A0 != -1)
  {
    sub_10028840C();
  }

  v6 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
  {
    v8[0] = 68289538;
    v8[1] = 0;
    v9 = 2082;
    v10 = "";
    v11 = 2114;
    v12 = v5;
    v13 = 2050;
    v14 = a2;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#LocationButtonUseMode updated, Client:%{public, location:escape_only}@, Mode:%{public, location:CLClientLocationButtonUseMode}lld}", v8, 0x26u);
  }

  return 1;
}

void sub_10077AC8C(uint64_t a1)
{
  if (qword_1025D47A0 != -1)
  {
    sub_10028840C();
  }

  v2 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
  {
    v3 = [*(a1 + 32) UTF8String];
    v4[0] = 68289282;
    v4[1] = 0;
    v5 = 2082;
    v6 = "";
    v7 = 2082;
    v8 = v3;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#SystemStatus Received and processed interval beginning message, MessageUUID:%{public, location:escape_only}s}", v4, 0x1Cu);
  }
}

void sub_10077AD68(uint64_t a1, void *a2, void *a3, void *a4)
{
  if (objc_opt_class())
  {
    memset(&__p, 0, sizeof(__p));
    if ([a4 isValidCKP])
    {
      v8 = sub_1000184F4(a1, a4);
      if (v8)
      {
        [v8 cppClientKey];
      }

      else
      {
        memset(buf, 0, 24);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      __p = *buf;
    }

    else
    {
      sub_100006044(&__p, [@"com.apple.locationd.all-location-clients-stop" UTF8String]);
    }

    *buf = &__p;
    v10 = sub_1007ADCC0(a3, &__p.__r_.__value_.__l.__data_);
    if (*(v10 + 5) == 0.0)
    {
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }

      v11 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
      {
        p_p = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        *buf = 68289283;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 2081;
        *&buf[20] = p_p;
        _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Updating location consumption info on start, Client:%{private, location:escape_only}s}", buf, 0x1Cu);
      }

      *(v10 + 5) = CFAbsoluteTimeGetCurrent();
      v13 = objc_alloc_init(CLPLocationConsumptionScoreInfo);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v14 = &__p;
      }

      else
      {
        v14 = __p.__r_.__value_.__r.__words[0];
      }

      [v13 setClientKey:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", v14, __p.__r_.__value_.__r.__words[0], __p.__r_.__value_.__l.__size_, __p.__r_.__value_.__r.__words[2])}];
      [v13 setStartTime:*(v10 + 5)];
      [a2 writeSecondaryObject:v13 toField:1];
      if (a1 + 808 != sub_10045EF04(a1 + 800, &__p.__r_.__value_.__l.__data_))
      {
        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
        }

        v15 = off_1025D47A8;
        if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
        {
          v16 = &__p;
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v16 = __p.__r_.__value_.__r.__words[0];
          }

          *buf = 68289282;
          *&buf[4] = 0;
          *&buf[8] = 2082;
          *&buf[10] = "";
          *&buf[18] = 2082;
          *&buf[20] = v16;
          _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Faulting for backtrace explaining usage score increment, Client:%{public, location:escape_only}s}", buf, 0x1Cu);
          if (qword_1025D47A0 != -1)
          {
            sub_10192D4D0();
          }
        }

        v17 = off_1025D47A8;
        if (os_signpost_enabled(off_1025D47A8))
        {
          v18 = &__p;
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v18 = __p.__r_.__value_.__r.__words[0];
          }

          *buf = 68289282;
          *&buf[4] = 0;
          *&buf[8] = 2082;
          *&buf[10] = "";
          *&buf[18] = 2082;
          *&buf[20] = v18;
          _os_signpost_emit_with_name_impl(dword_100000000, v17, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Faulting for backtrace explaining usage score increment", "{msg%{public}.0s:Faulting for backtrace explaining usage score increment, Client:%{public, location:escape_only}s}", buf, 0x1Cu);
        }
      }
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v9 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLPLocationConsumptionScoreInfo doesn't exist in this platform.}", buf, 0x12u);
    }
  }
}

void sub_10077B190(uint64_t a1)
{
  if (qword_1025D47A0 != -1)
  {
    sub_10028840C();
  }

  v2 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
  {
    v3 = [*(a1 + 32) UTF8String];
    v4[0] = 68289282;
    v4[1] = 0;
    v5 = 2082;
    v6 = "";
    v7 = 2082;
    v8 = v3;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#SystemStatus Received and processed interval end message, MessageUUID:%{public, location:escape_only}s}", v4, 0x1Cu);
  }
}

BOOL sub_10077B26C(uint64_t a1, uint64_t a2)
{
  if ([*(a1 + 120) locationRestricted])
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v4 = off_1025D47A8;
    result = os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO);
    if (result)
    {
      *buf = 68289282;
      v22 = 0;
      v23 = 2082;
      v24 = "";
      v25 = 2114;
      v26 = a2;
      v6 = "{msg%{public}.0s:#LocationButtonFirstUsage skip prompting. Restrictions enabled, Client:%{public, location:escape_only}@}";
      v7 = v4;
      v8 = OS_LOG_TYPE_INFO;
      v9 = 28;
LABEL_11:
      _os_log_impl(dword_100000000, v7, v8, v6, buf, v9);
      return 0;
    }

    return result;
  }

  if (!*(a1 + 272))
  {
    if ([objc_msgSend(*(a1 + 136) readonlyStoreAtKeyPath:{a2), "BOOLForKey:defaultValue:", @"DefaultAccuracyReduced", 0}])
    {
      v14 = 13;
    }

    else
    {
      v14 = 14;
    }

    sub_10000EC00(__p, "");
    sub_10023C2AC(v20, v14, a2, 0, __p);
    v15 = sub_1007755CC(a1, a2, 0, v20, 0);
    sub_10023DF30(v20);
    if (v19 < 0)
    {
      operator delete(__p[0]);
      if (v15)
      {
        return 1;
      }
    }

    else if (v15)
    {
      return 1;
    }

    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v16 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289282;
      v22 = 0;
      v23 = 2082;
      v24 = "";
      v25 = 2114;
      v26 = a2;
      _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#Warning Could not post #LocationButtonFirstUsage, Client:%{public, location:escape_only}@}", buf, 0x1Cu);
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }
    }

    v17 = off_1025D47A8;
    result = os_signpost_enabled(off_1025D47A8);
    if (result)
    {
      *buf = 68289282;
      v22 = 0;
      v23 = 2082;
      v24 = "";
      v25 = 2114;
      v26 = a2;
      _os_signpost_emit_with_name_impl(dword_100000000, v17, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#Warning Could not post #LocationButtonFirstUsage", "{msg%{public}.0s:#Warning Could not post #LocationButtonFirstUsage, Client:%{public, location:escape_only}@}", buf, 0x1Cu);
      return 0;
    }

    return result;
  }

  if (qword_1025D47A0 != -1)
  {
    sub_10028840C();
  }

  v10 = off_1025D47A8;
  result = os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    v11 = *(a1 + 272);
    v12 = *(v11 + 1);
    v13 = *v11;
    *buf = 68289794;
    v22 = 0;
    v23 = 2082;
    v24 = "";
    v25 = 2114;
    v26 = a2;
    v27 = 2114;
    v28 = v12;
    v29 = 2050;
    v30 = v13;
    v6 = "{msg%{public}.0s:#LocationButtonFirstUsage skip prompting. InflightPromptAuthorizationRequest found., Client:%{public, location:escape_only}@, inflightClient:%{public, location:escape_only}@, inflightRequestType:%{public, location:CLClientManager_Type::AuthorizationRequestType}lld}";
    v7 = v10;
    v8 = OS_LOG_TYPE_DEFAULT;
    v9 = 48;
    goto LABEL_11;
  }

  return result;
}

void sub_10077B5B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_10023DF30(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10077B5E8(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6)
{
  v10 = sub_100033370(a1, a2);
  v11 = [*(a1 + 136) intForKey:@"LocationButtonUseMode" atKeyPath:v10 defaultValue:0];
  v12 = [(CLClientManagerAuthorizationContext *)sub_10004FEC8(a1 transientAwareRegistrationResult:v10];
  if (qword_1025D47A0 != -1)
  {
    sub_10028840C();
  }

  v13 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    __p = 68290562;
    v22 = 2082;
    v23 = "";
    v24 = 2114;
    v25 = v10;
    v26 = 1026;
    v27 = a4;
    v28 = 1026;
    v29 = a5;
    v30 = 1026;
    v31 = a6;
    v32 = 2050;
    v33 = v11;
    v34 = 1026;
    v35 = v12;
    _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#TemporaryAuth Explicit temporary authorization request received, Client:%{public, location:escape_only}@, Granted:%{public}hhd, UsingLocationButton:%{public}hhd, VoiceInteractionEnabled:%{public}hhd, LocationButtonUseMode:%{public, location:CLClientLocationButtonUseMode}lld, TransientAwareRegistrationResult:%{public}d}", &__p, 0x3Eu);
  }

  if (a5 && (a4 & 1) == 0)
  {
    sub_10192E998();
  }

  if (!a5)
  {
    goto LABEL_17;
  }

  if (v12 != 4 && v12 != 2 || (a6 & 1) == 0 && v11)
  {
    if (v11 == 1)
    {
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }

      v14 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
      {
        __p = 68289282;
        v22 = 2082;
        v23 = "";
        v24 = 2114;
        v25 = v10;
        v15 = "{msg%{public}.0s:#TemporaryAuth could not be granted , #LocationButtonUse denied, Client:%{public, location:escape_only}@}";
        v16 = v14;
        v17 = 28;
LABEL_27:
        _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEFAULT, v15, &__p, v17);
        return;
      }

      return;
    }

LABEL_17:
    sub_10077B960(*(a1 + 136), v10, 1, a4);
    v18 = *(a1 + 272);
    if (v18 && (*(a1 + 312) == 2 || *v18 == 1))
    {
      [*(a1 + 136) setInt:2 forKey:@"CorrectiveCompensationEnabled" atKeyPath:v10];
      [*(a1 + 136) persist];
    }

    sub_10000EC00(&__p, "");
    sub_100018918(a1, v10, &__p);
    if (SBYTE3(v25) < 0)
    {
      operator delete(__p);
    }

    return;
  }

  v19 = sub_10077B26C(a1, v10);
  if (qword_1025D47A0 != -1)
  {
    sub_10192D4D0();
  }

  v20 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    __p = 68289538;
    v22 = 2082;
    v23 = "";
    v24 = 2114;
    v25 = v10;
    v26 = 1026;
    v27 = v19;
    v15 = "{msg%{public}.0s:#TemporaryAuth #LocationButtonUse prompting status, Client:%{public, location:escape_only}@, PromptingStatus:%{public}hhd}";
    v16 = v20;
    v17 = 34;
    goto LABEL_27;
  }
}

void sub_10077B93C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

id sub_10077B960(void *a1, uint64_t a2, int a3, int a4)
{
  if (![a1 registeredKeyPathForClientIdentifier:a2])
  {
    [a1 registerClient:a2 fromAuthSync:0];
  }

  v8 = [a1 intForKey:@"TemporaryAuthorization" atKeyPath:a2 defaultValue:0];
  if (a4)
  {
    v9 = v8 | a3;
LABEL_6:

    return [a1 setInt:v9 forKey:@"TemporaryAuthorization" atKeyPath:a2];
  }

  v9 = v8 & ~a3;
  if ((v8 & ~a3) != 0)
  {
    goto LABEL_6;
  }

  return [a1 removeValueForKey:@"TemporaryAuthorization" atKeyPath:a2];
}

void sub_10077BA38(uint64_t a1, void *a2, int a3)
{
  if (qword_1025D47A0 != -1)
  {
    sub_10028840C();
  }

  v6 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    __p = 68289538;
    v11 = 2082;
    v12 = "";
    v13 = 2114;
    v14 = a2;
    v15 = 1026;
    v16 = a3;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#TemporaryAuth-Precise, Client:%{public, location:escape_only}@, granted:%{public}hhd}", &__p, 0x22u);
  }

  v7 = (a1 + 136);
  if (a3)
  {
    v8 = 2;
  }

  else
  {
    v8 = 8;
  }

  if (a3)
  {
    v9 = 8;
  }

  else
  {
    v9 = 2;
  }

  sub_10077B960(*(a1 + 136), a2, v8, 1);
  sub_10077B960(*v7, a2, v9, 0);
  [*v7 persist];
  sub_10000EC00(&__p, "");
  sub_100018918(a1, a2, &__p);
  if (SBYTE3(v14) < 0)
  {
    operator delete(__p);
  }
}

void sub_10077BBA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10077BBC4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  __p[0] = 0;
  __p[1] = 0;
  v73 = 0;
  if (a4)
  {
    v6 = sub_100033370(a1, a4);
    v71 = v6;
    if (v6)
    {
      [v6 cppClientKey];
    }

    else
    {
      memset(buf, 0, 24);
    }

    if (SHIBYTE(v73) < 0)
    {
      operator delete(__p[0]);
    }

    *__p = *buf;
    v73 = *&buf[16];
  }

  else
  {
    v71 = 0;
    HIBYTE(v73) = 8;
    strcpy(__p, "*nobody*");
  }

  if (qword_1025D47A0 != -1)
  {
    sub_10192D4D0();
  }

  v7 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    v8 = "-";
    v9 = *(a1 + 720);
    if (a2)
    {
      v8 = "+";
    }

    *buf = 67109378;
    *&buf[4] = v9;
    *&buf[8] = 2080;
    *&buf[10] = v8;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "#CLEEA Emergency clients %d %s 1", buf, 0x12u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10192DC88(buf);
    v60 = "-";
    v61 = *(a1 + 720);
    if (a2)
    {
      v60 = "+";
    }

    v74 = 67109378;
    LODWORD(v75[0]) = v61;
    WORD2(v75[0]) = 2080;
    *(v75 + 6) = v60;
    v62 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLClientManager::markClientEmergencyEnablementTransition(BOOL, BOOL, CLClientKeyPath *)", "%s\n", v62);
    if (v62 != buf)
    {
      free(v62);
    }
  }

  if (a2)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v10 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = __p;
      if (v73 < 0)
      {
        v11 = __p[0];
      }

      *buf = 136446210;
      *&buf[4] = v11;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "#CLEEA adding emergency client,%{public}s", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10192DC88(buf);
      v63 = __p;
      if (v73 < 0)
      {
        v63 = __p[0];
      }

      v74 = 136446210;
      v75[0] = v63;
      v64 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLClientManager::markClientEmergencyEnablementTransition(BOOL, BOOL, CLClientKeyPath *)", "%s\n", v64);
      if (v64 != buf)
      {
        free(v64);
      }
    }

    if (*(a1 + 720))
    {
      v12 = *(a1 + 704);
      if (v12 != (a1 + 712))
      {
        do
        {
          if (qword_1025D47A0 != -1)
          {
            sub_10192D4D0();
          }

          v13 = v12 + 4;
          v14 = off_1025D47A8;
          if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
          {
            v15 = v12 + 4;
            if (*(v12 + 55) < 0)
            {
              v15 = *v13;
            }

            *buf = 136446210;
            *&buf[4] = v15;
            _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEFAULT, "#CLEEA %{public}s is still an emergency client", buf, 0xCu);
          }

          if (sub_10000A100(121, 2))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1025D47A0 != -1)
            {
              sub_10192D4D0();
            }

            if (*(v12 + 55) < 0)
            {
              v13 = *v13;
            }

            v74 = 136446210;
            v75[0] = v13;
            v19 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 2, "void CLClientManager::markClientEmergencyEnablementTransition(BOOL, BOOL, CLClientKeyPath *)", "%s\n", v19);
            if (v19 != buf)
            {
              free(v19);
            }
          }

          v16 = v12[1];
          if (v16)
          {
            do
            {
              v17 = v16;
              v16 = *v16;
            }

            while (v16);
          }

          else
          {
            do
            {
              v17 = v12[2];
              v18 = *v17 == v12;
              v12 = v17;
            }

            while (!v18);
          }

          v12 = v17;
        }

        while (v17 != (a1 + 712));
      }
    }

    else
    {
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }

      v33 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v33, OS_LOG_TYPE_DEFAULT, "#CLEEA First emergency client connected", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10192DC88(buf);
        LOWORD(v74) = 0;
        v67 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CLClientManager::markClientEmergencyEnablementTransition(BOOL, BOOL, CLClientKeyPath *)", "%s\n", v67);
        if (v67 != buf)
        {
          free(v67);
        }
      }
    }

    sub_1007446D4();
  }

  if (qword_1025D47A0 != -1)
  {
    sub_10192D4D0();
  }

  v20 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    v21 = __p;
    if (v73 < 0)
    {
      v21 = __p[0];
    }

    *buf = 136446210;
    *&buf[4] = v21;
    _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEFAULT, "#CLEEA removing emergency client,%{public}s", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10192DC88(buf);
    v65 = __p;
    if (v73 < 0)
    {
      v65 = __p[0];
    }

    v74 = 136446210;
    v75[0] = v65;
    v66 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLClientManager::markClientEmergencyEnablementTransition(BOOL, BOOL, CLClientKeyPath *)", "%s\n", v66);
    if (v66 != buf)
    {
      free(v66);
    }
  }

  v22 = (a1 + 704);
  v23 = sub_10045EF04(a1 + 704, __p);
  v24 = (a1 + 712);
  if (a1 + 712 == v23)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v34 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
    {
      v35 = __p;
      if (v73 < 0)
      {
        v35 = __p[0];
      }

      v36 = *(a1 + 720);
      *buf = 68289538;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2082;
      *&buf[20] = v35;
      v77 = 1026;
      v78 = v36;
      _os_log_impl(dword_100000000, v34, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#CLEEA Trying to remove emergency beneficiary which doesn't exist, MissingClientKey:%{public, location:escape_only}s, TotalMultisetSize:%{public}d}", buf, 0x22u);
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }
    }

    v37 = off_1025D47A8;
    if (os_signpost_enabled(off_1025D47A8))
    {
      v38 = __p;
      if (v73 < 0)
      {
        v38 = __p[0];
      }

      v39 = *(a1 + 720);
      *buf = 68289538;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2082;
      *&buf[20] = v38;
      v77 = 1026;
      v78 = v39;
      v40 = "#CLEEA Trying to remove emergency beneficiary which doesn't exist";
      v41 = "{msg%{public}.0s:#CLEEA Trying to remove emergency beneficiary which doesn't exist, MissingClientKey:%{public, location:escape_only}s, TotalMultisetSize:%{public}d}";
      goto LABEL_145;
    }
  }

  else
  {
    sub_1001D2ED0((a1 + 704), v23);
    v25 = *(a1 + 720);
    v69 = v25 == 0;
    if (v25)
    {
      v26 = *v22;
      if (*v22 != v24)
      {
        do
        {
          if (qword_1025D47A0 != -1)
          {
            sub_10192D4D0();
          }

          v27 = v26 + 4;
          v28 = off_1025D47A8;
          if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
          {
            v29 = v26 + 4;
            if (*(v26 + 55) < 0)
            {
              v29 = *v27;
            }

            *buf = 136446210;
            *&buf[4] = v29;
            _os_log_impl(dword_100000000, v28, OS_LOG_TYPE_DEFAULT, "#CLEEA %{public}s is still an emergency client", buf, 0xCu);
          }

          if (sub_10000A100(121, 2))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1025D47A0 != -1)
            {
              sub_10192D4D0();
            }

            if (*(v26 + 55) < 0)
            {
              v27 = *v27;
            }

            v74 = 136446210;
            v75[0] = v27;
            v32 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 2, "void CLClientManager::markClientEmergencyEnablementTransition(BOOL, BOOL, CLClientKeyPath *)", "%s\n", v32);
            if (v32 != buf)
            {
              free(v32);
            }
          }

          v30 = v26[1];
          if (v30)
          {
            do
            {
              v31 = v30;
              v30 = *v30;
            }

            while (v30);
          }

          else
          {
            do
            {
              v31 = v26[2];
              v18 = *v31 == v26;
              v26 = v31;
            }

            while (!v18);
          }

          v26 = v31;
        }

        while (v31 != v24);
      }
    }

    else
    {
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }

      v42 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v42, OS_LOG_TYPE_DEFAULT, "#CLEEA Last emergency client disconnected", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10192DC88(buf);
        LOWORD(v74) = 0;
        v68 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CLClientManager::markClientEmergencyEnablementTransition(BOOL, BOOL, CLClientKeyPath *)", "%s\n", v68);
        if (v68 != buf)
        {
          free(v68);
        }
      }
    }

    if (!a3)
    {
      goto LABEL_127;
    }

    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v43 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      v44 = __p;
      if (v73 < 0)
      {
        v44 = __p[0];
      }

      *buf = 68289282;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2082;
      *&buf[20] = v44;
      _os_log_impl(dword_100000000, v43, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#CLEPTO removing beneficiary for deauthorization override, Client:%{public, location:escape_only}s}", buf, 0x1Cu);
    }

    v45 = (a1 + 728);
    v46 = sub_10045EF04(a1 + 728, __p);
    v47 = (a1 + 736);
    if (a1 + 736 != v46)
    {
      sub_1001D2ED0((a1 + 728), v46);
      v48 = *v45;
      if (*v45 != v47)
      {
        do
        {
          if (qword_1025D47A0 != -1)
          {
            sub_10192D4D0();
          }

          v49 = v48 + 4;
          v50 = off_1025D47A8;
          if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
          {
            v51 = v48 + 4;
            if (*(v48 + 55) < 0)
            {
              v51 = *v49;
            }

            *buf = 136446210;
            *&buf[4] = v51;
            _os_log_impl(dword_100000000, v50, OS_LOG_TYPE_DEFAULT, "#CLEPTO (-) : %{public}s is still a beneficiary for deauthorization override", buf, 0xCu);
          }

          if (sub_10000A100(121, 2))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1025D47A0 != -1)
            {
              sub_10192D4D0();
            }

            if (*(v48 + 55) < 0)
            {
              v49 = *v49;
            }

            v74 = 136446210;
            v75[0] = v49;
            v54 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 2, "void CLClientManager::markClientEmergencyEnablementTransition(BOOL, BOOL, CLClientKeyPath *)", "%s\n", v54);
            if (v54 != buf)
            {
              free(v54);
            }
          }

          v52 = v48[1];
          if (v52)
          {
            do
            {
              v53 = v52;
              v52 = *v52;
            }

            while (v52);
          }

          else
          {
            do
            {
              v53 = v48[2];
              v18 = *v53 == v48;
              v48 = v53;
            }

            while (!v18);
          }

          v48 = v53;
        }

        while (v53 != v47);
      }

LABEL_127:
      if (v69)
      {
        sub_1004E8738(a2);
        sub_10000EC00(buf, "com.apple.locationd.CLEEA");
        sub_100773AF4(a1, buf, 1);
        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }

        [objc_msgSend(objc_msgSend(*(a1 + 32) "vendor")];
      }

      if (v71)
      {
        sub_10000EC00(buf, "");
        sub_100018918(a1, v71, buf);
        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }
      }

      goto LABEL_146;
    }

    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v55 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
    {
      v56 = __p;
      if (v73 < 0)
      {
        v56 = __p[0];
      }

      v57 = *(a1 + 744);
      *buf = 68289538;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2082;
      *&buf[20] = v56;
      v77 = 1026;
      v78 = v57;
      _os_log_impl(dword_100000000, v55, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#CLEPTO Trying to remove deauthorizationOverride beneficiary which doesn't exist, MissingClientKey:%{public, location:escape_only}s, TotalMultisetSize:%{public}d}", buf, 0x22u);
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }
    }

    v37 = off_1025D47A8;
    if (os_signpost_enabled(off_1025D47A8))
    {
      v58 = __p;
      if (v73 < 0)
      {
        v58 = __p[0];
      }

      v59 = *(a1 + 744);
      *buf = 68289538;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2082;
      *&buf[20] = v58;
      v77 = 1026;
      v78 = v59;
      v40 = "#CLEPTO Trying to remove deauthorizationOverride beneficiary which doesn't exist";
      v41 = "{msg%{public}.0s:#CLEPTO Trying to remove deauthorizationOverride beneficiary which doesn't exist, MissingClientKey:%{public, location:escape_only}s, TotalMultisetSize:%{public}d}";
LABEL_145:
      _os_signpost_emit_with_name_impl(dword_100000000, v37, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v40, v41, buf, 0x22u);
    }
  }

LABEL_146:
  if (SHIBYTE(v73) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10077CD78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10077CE04(uint64_t a1)
{
  sub_100565518(0, &v36);
  if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v36.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v36.__r_.__value_.__l.__size_;
  }

  if (!size)
  {
    sub_10192ECFC(v2, v3, v4, v5, v6, v7, v8, v9, v22, v23, v24, v25, v26, v27, v28, *(&v28 + 1), v29, *(&v29 + 1), v30, *(&v30 + 1), v31, *(&v31 + 1), v32, v33[0]);
    abort_report_np();
    __break(1u);
  }

  sub_100070148(__p, size + 17);
  if (v35 >= 0)
  {
    v11 = __p;
  }

  else
  {
    v11 = __p[0];
  }

  if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v12 = &v36;
  }

  else
  {
    v12 = v36.__r_.__value_.__r.__words[0];
  }

  memmove(v11, v12, size);
  strcpy(v11 + size, "significant.plist");
  if (v35 >= 0)
  {
    v13 = __p;
  }

  else
  {
    v13 = __p[0];
  }

  if (sub_100021690(v13))
  {
    sub_10004FD18(v33);
    if (v35 >= 0)
    {
      v14 = __p;
    }

    else
    {
      v14 = __p[0];
    }

    sub_1004F9C20(v33, v14);
    v15 = sub_10007005C(v33);
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v16 = [v15 countByEnumeratingWithState:&v28 objects:v37 count:16];
    if (v16)
    {
      v17 = *v29;
      do
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v29 != v17)
          {
            objc_enumerationMutation(v15);
          }

          v19 = *(*(&v28 + 1) + 8 * i);
          v20 = [*(a1 + 136) registeredKeyPathForClientIdentifier:{+[CLClientKeyPath clientKeyPathWithLegacyClientKey:](CLClientKeyPath, "clientKeyPathWithLegacyClientKey:", v19)}];
          if ([v20 isValidCKP])
          {
            sub_1000EA1BC(a1, v20, &v26);
            sub_100F3B42C(v26, [v15 objectForKeyedSubscript:v19]);
            if (v27)
            {
              sub_100008080(v27);
            }
          }
        }

        v16 = [v15 countByEnumeratingWithState:&v28 objects:v37 count:16];
      }

      while (v16);
    }

    if (v35 >= 0)
    {
      v21 = __p;
    }

    else
    {
      v21 = __p[0];
    }

    sub_1004E67B8(v21);
    sub_100005DA4(v33);
  }

  if (v35 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
  }
}

void sub_10077D08C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  sub_100005DA4(&a24);
  if (a31 < 0)
  {
    operator delete(__p);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10077D10C(uint64_t a1)
{
  sub_10001A3E8();
  result = sub_10001CF3C();
  if ((result & 1) == 0)
  {
    v3 = +[NSMutableArray array];
    v4 = *(a1 + 136);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10077D214;
    v7[3] = &unk_10246FF20;
    v7[4] = v3;
    [v4 iterateAllAnchorKeyPathsWithBlock:v7];
    v5 = [objc_msgSend(*(a1 + 32) "vendor")];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10077D274;
    v6[3] = &unk_10246FF40;
    v6[4] = a1;
    return [v5 checkApplications:v3 withReply:v6];
  }

  return result;
}

id sub_10077D214(uint64_t a1, void *a2)
{
  result = [a2 bundleId];
  if (result)
  {
    v5 = *(a1 + 32);
    v6 = [a2 legacyClientKey];

    return [v5 addObject:v6];
  }

  return result;
}

_BYTE *sub_10077D27C(double *a1, void *a2, void *a3, void *a4)
{
  if (qword_1025D47A0 != -1)
  {
    sub_10028840C();
  }

  v5 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [a2 count];
    v7 = [a2 count];
    v8 = &v7[[a3 count]];
    *buf = 134218240;
    *&buf[4] = v6;
    *&buf[12] = 2048;
    *&buf[14] = [a4 count] + v8;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "#ClearClient installation check found %ld uninstalled apps (amongst %ld bundle IDs)", buf, 0x16u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v51 = [a2 count];
    v52 = [a2 count];
    v53 = [a3 count];
    LODWORD(v76[0]) = 134218240;
    *(v76 + 4) = v51;
    WORD2(v76[1]) = 2048;
    *(&v76[1] + 6) = &v52[v53 + [a4 count]];
    v54 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLClientManager::handleAppInstallationStatus(NSArray<NSString *> *, NSArray<NSString *> *, NSArray<NSString *> *)", "%s\n", v54);
    if (v54 != buf)
    {
      free(v54);
    }
  }

  Current = CFAbsoluteTimeGetCurrent();
  v72 = 0.0;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v9 = [a2 countByEnumeratingWithState:&v68 objects:v82 count:16];
  if (!v9)
  {
    v11 = -1.0;
    goto LABEL_92;
  }

  v10 = *v69;
  v11 = -1.0;
  do
  {
    v12 = 0;
    do
    {
      if (*v69 != v10)
      {
        objc_enumerationMutation(a2);
      }

      v13 = *(*(&v68 + 1) + 8 * v12);
      v14 = objc_alloc_init(NSAutoreleasePool);
      v15 = sub_1000184F4(a1, [CLClientKeyPath clientKeyPathWithClientAnchor:v13 anchorType:105]);
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }

      v16 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        *&buf[4] = v15;
        _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEBUG, "#ClearClient %@ is missing ", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10192DC88(buf);
        LODWORD(v76[0]) = 138412290;
        *(v76 + 4) = v15;
        v26 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CLClientManager::handleAppInstallationStatus(NSArray<NSString *> *, NSArray<NSString *> *, NSArray<NSString *> *)", "%s\n", v26);
        if (v26 != buf)
        {
          free(v26);
        }
      }

      v72 = 2.22507386e-308;
      if (sub_10077E1DC(a1, v15, &v72))
      {
        v17 = v72;
        v18 = Current - v72;
        if (Current - v72 >= a1[30])
        {
          if (qword_1025D47A0 != -1)
          {
            sub_10192D4D0();
          }

          v19 = off_1025D47A8;
          if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
          {
            v20 = *(a1 + 30);
            *buf = 68289794;
            *&buf[4] = 0;
            *&buf[8] = 2082;
            *&buf[10] = "";
            *&buf[18] = 2114;
            *&buf[20] = v15;
            *&buf[28] = 2050;
            *&buf[30] = v18;
            *&buf[38] = 2050;
            *&buf[40] = v20;
            _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ClearClient Deleting entry as client has been missing beyond safe harbor threshold, Client:%{public, location:escape_only}@, missingTimeDuration_s:%{public}.09f, safe harbor threshold_s:%{public}.09f}", buf, 0x30u);
          }

          sub_10000EC00(__p, "ClientRemoved");
          sub_100777AC4(a1, v15, 1, __p);
          if (v67 < 0)
          {
            operator delete(__p[0]);
          }

          memset(v85, 0, 35);
          *v84 = 0u;
          memset(buf, 0, sizeof(buf));
          v86 = 0u;
          memset(v87, 0, 59);
          if (v15)
          {
            [v15 clientName];
            if (buf[23] < 0)
            {
              operator delete(*buf);
            }
          }

          else
          {
            v81 = 0;
            memset(v80, 0, sizeof(v80));
            *v79 = 0uLL;
            *v77 = 0uLL;
            memset(v78, 0, sizeof(v78));
            memset(v76, 0, sizeof(v76));
          }

          *buf = *v76;
          *&buf[16] = v76[2];
          HIBYTE(v76[2]) = 0;
          LOBYTE(v76[0]) = 0;
          if (buf[47] < 0)
          {
            operator delete(*&buf[24]);
          }

          *&buf[24] = *&v76[3];
          *&buf[40] = v76[5];
          HIBYTE(v76[5]) = 0;
          LOBYTE(v76[3]) = 0;
          if (SHIBYTE(v85[0]) < 0)
          {
            operator delete(v84[0]);
          }

          *v84 = *v77;
          v85[0] = v78[0];
          HIBYTE(v78[0]) = 0;
          LOBYTE(v77[0]) = 0;
          if (SHIBYTE(v85[3]) < 0)
          {
            operator delete(v85[1]);
          }

          *&v85[1] = *&v78[1];
          v85[3] = v78[3];
          HIBYTE(v78[3]) = 0;
          LOBYTE(v78[1]) = 0;
          LOWORD(v85[4]) = v78[4];
          BYTE2(v85[4]) = BYTE2(v78[4]);
          if (SBYTE7(v87[0]) < 0)
          {
            operator delete(v86);
          }

          v86 = *&v78[5];
          *&v87[0] = v78[7];
          HIBYTE(v78[7]) = 0;
          LOBYTE(v78[5]) = 0;
          if (SHIBYTE(v87[1]) < 0)
          {
            operator delete(*(&v87[0] + 1));
          }

          *(v87 + 8) = *v79;
          *(&v87[1] + 1) = *&v80[0];
          BYTE7(v80[0]) = 0;
          LOBYTE(v79[0]) = 0;
          if (SBYTE7(v87[3]) < 0)
          {
            operator delete(*&v87[2]);
            v87[2] = *(v80 + 8);
            *&v87[3] = *(&v80[1] + 1);
            HIBYTE(v80[1]) = 0;
            BYTE8(v80[0]) = 0;
            WORD4(v87[3]) = v81;
            BYTE10(v87[3]) = BYTE2(v81);
            if (SBYTE7(v80[0]) < 0)
            {
              operator delete(v79[0]);
            }
          }

          else
          {
            v87[2] = *(v80 + 8);
            *&v87[3] = *(&v80[1] + 1);
            HIBYTE(v80[1]) = 0;
            BYTE8(v80[0]) = 0;
            WORD4(v87[3]) = v81;
            BYTE10(v87[3]) = BYTE2(v81);
          }

          if (SHIBYTE(v78[7]) < 0)
          {
            operator delete(v78[5]);
          }

          if (SHIBYTE(v78[3]) < 0)
          {
            operator delete(v78[1]);
          }

          if (SHIBYTE(v78[0]) < 0)
          {
            operator delete(v77[0]);
          }

          if (SHIBYTE(v76[5]) < 0)
          {
            operator delete(v76[3]);
          }

          if (SHIBYTE(v76[2]) < 0)
          {
            operator delete(v76[0]);
          }

          LODWORD(v76[0]) = 1;
          (*(*a1 + 152))(a1, v76, buf, 0, 0xFFFFFFFFLL, 0);
          if (SBYTE7(v87[3]) < 0)
          {
            operator delete(*&v87[2]);
          }

          if (SHIBYTE(v87[1]) < 0)
          {
            operator delete(*(&v87[0] + 1));
          }

          if (SBYTE7(v87[0]) < 0)
          {
            operator delete(v86);
          }

          if (SHIBYTE(v85[3]) < 0)
          {
            operator delete(v85[1]);
          }

          if (SHIBYTE(v85[0]) < 0)
          {
            operator delete(v84[0]);
          }

          if (buf[47] < 0)
          {
            operator delete(*&buf[24]);
          }

          if (buf[23] < 0)
          {
            operator delete(*buf);
          }

          goto LABEL_44;
        }
      }

      else
      {
        v18 = 0.0;
        v17 = v72;
      }

      if (v17 == 2.22507386e-308)
      {
        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
        }

        v21 = off_1025D47A8;
        if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 68289538;
          *&buf[4] = 0;
          *&buf[8] = 2082;
          *&buf[10] = "";
          *&buf[18] = 2114;
          *&buf[20] = v15;
          *&buf[28] = 2050;
          *&buf[30] = Current;
          _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ClearClient Marking client as missing, Client:%{public, location:escape_only}@, missingTime_s:%{public}.09f}", buf, 0x26u);
        }

        sub_1007776F8(a1, v15, &Current);
        v22 = *(a1 + 17);
        *buf = _NSConcreteStackBlock;
        *&buf[8] = 3221225472;
        *&buf[16] = sub_1000352CC;
        *&buf[24] = &unk_10246FEF8;
        *&buf[40] = a1;
        *&buf[32] = v15;
        [v22 iterateIdentitiesRelatedToKeyPath:v15 withBlock:buf];
      }

      if (a1[30] - v18 < v11 || v11 == -1.0)
      {
        v11 = a1[30] - v18;
      }

      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }

      v24 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
      {
        v25 = *(a1 + 30);
        *buf = 138412802;
        *&buf[4] = v15;
        *&buf[12] = 2048;
        *&buf[14] = v18;
        *&buf[22] = 2048;
        *&buf[24] = v25;
        _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_DEBUG, "%@ has been missing for %.3fs (safe harbor threshold: %.3fs)", buf, 0x20u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10192DC88(buf);
        v27 = *(a1 + 30);
        LODWORD(v76[0]) = 138412802;
        *(v76 + 4) = v15;
        WORD2(v76[1]) = 2048;
        *(&v76[1] + 6) = *&v18;
        HIWORD(v76[2]) = 2048;
        v76[3] = v27;
        v28 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CLClientManager::handleAppInstallationStatus(NSArray<NSString *> *, NSArray<NSString *> *, NSArray<NSString *> *)", "%s\n", v28);
        if (v28 != buf)
        {
          free(v28);
        }
      }

LABEL_44:

      v12 = v12 + 1;
    }

    while (v9 != v12);
    v29 = [a2 countByEnumeratingWithState:&v68 objects:v82 count:16];
    v9 = v29;
  }

  while (v29);
LABEL_92:
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v30 = [a3 countByEnumeratingWithState:&v62 objects:v75 count:16];
  if (v30)
  {
    v31 = *v63;
    do
    {
      v32 = 0;
      do
      {
        if (*v63 != v31)
        {
          objc_enumerationMutation(a3);
        }

        v33 = *(*(&v62 + 1) + 8 * v32);
        v34 = objc_alloc_init(NSAutoreleasePool);
        v35 = sub_1000184F4(a1, [CLClientKeyPath clientKeyPathWithClientAnchor:v33 anchorType:105]);
        if (sub_10077E1DC(a1, v35, &v72))
        {
          if (qword_1025D47A0 != -1)
          {
            sub_10192D4D0();
          }

          v36 = off_1025D47A8;
          if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
          {
            v37 = *(a1 + 30);
            *buf = 68289538;
            *&buf[4] = 0;
            *&buf[8] = 2082;
            *&buf[10] = "";
            *&buf[18] = 2114;
            *&buf[20] = v35;
            *&buf[28] = 2050;
            *&buf[30] = v37;
            _os_log_impl(dword_100000000, v36, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ClearClient Client restored within safe harbor threshold - keeping, Client:%{public, location:escape_only}@, safe harbor threshold_s:%{public}.09f}", buf, 0x26u);
          }

          sub_1007778FC(a1, v35);
          v38 = *(a1 + 17);
          *buf = _NSConcreteStackBlock;
          *&buf[8] = 3221225472;
          *&buf[16] = sub_1000352CC;
          *&buf[24] = &unk_10246FEF8;
          *&buf[40] = a1;
          *&buf[32] = v35;
          [v38 iterateIdentitiesRelatedToKeyPath:v35 withBlock:buf];
        }

        v32 = v32 + 1;
      }

      while (v30 != v32);
      v30 = [a3 countByEnumeratingWithState:&v62 objects:v75 count:16];
    }

    while (v30);
  }

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v39 = [a4 countByEnumeratingWithState:&v58 objects:v74 count:16];
  if (v39)
  {
    v40 = *v59;
    do
    {
      v41 = 0;
      do
      {
        if (*v59 != v40)
        {
          objc_enumerationMutation(a4);
        }

        v42 = *(*(&v58 + 1) + 8 * v41);
        v43 = objc_alloc_init(NSAutoreleasePool);
        v44 = sub_1000184F4(a1, [CLClientKeyPath clientKeyPathWithClientAnchor:v42 anchorType:105]);
        if (sub_10077E1DC(a1, v44, &v72))
        {
          if (qword_1025D47A0 != -1)
          {
            sub_10192D4D0();
          }

          v45 = off_1025D47A8;
          if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
          {
            v46 = *(a1 + 30);
            *buf = 68289538;
            *&buf[4] = 0;
            *&buf[8] = 2082;
            *&buf[10] = "";
            *&buf[18] = 2114;
            *&buf[20] = v44;
            *&buf[28] = 2050;
            *&buf[30] = v46;
            _os_log_impl(dword_100000000, v45, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ClearClient Client restored (remotely) within safe harbor threshold - keeping, Client:%{public, location:escape_only}@, safe harbor threshold_s:%{public}.09f}", buf, 0x26u);
          }

          sub_1007778FC(a1, v44);
        }

        [*(a1 + 17) setBool:1 forKey:@"SyncedAuthForUninstalledApp" atKeyPath:v44];

        v41 = v41 + 1;
      }

      while (v39 != v41);
      v39 = [a4 countByEnumeratingWithState:&v58 objects:v74 count:16];
    }

    while (v39);
  }

  v47 = *(a1 + 31);
  if (v11 == -1.0)
  {
    [v47 setNextFireDelay:1.79769313e308];
  }

  else
  {
    [v47 nextFireDelay];
    if (v11 < v48)
    {
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }

      v49 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *&buf[4] = v11;
        _os_log_impl(dword_100000000, v49, OS_LOG_TYPE_DEFAULT, "#ClearClient updated AppUninstallTimer; next timer will fire in %.3fs", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10192EE54();
      }

      [*(a1 + 31) setNextFireDelay:v11];
    }
  }

  [*(a1 + 17) persist];
  sub_1001D2F14(a1);
  return sub_100044F7C(a1);
}

BOOL sub_10077E1DC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = [*(a1 + 136) registeredKeyPathForClientIdentifier:a2];
  if ([v5 isValidCKP])
  {
    v6 = [objc_msgSend(*(a1 + 136) readonlyStoreAtKeyPath:{v5), "dictionary"}];

    return sub_100D96710(v6, a3);
  }

  else
  {
    *a3 = 0x10000000000000;
    return 0;
  }
}

BOOL sub_10077E260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1000184F4(a1, a2);
  if (!&SBUserNotificationPendInSetupIfNotAllowedKey)
  {
    return 0;
  }

  v8 = v7;
  v9 = sub_100056238();
  v10 = sub_1007CB2E4(v9, @"LOCATION_ACCURACY");
  if (a3 == 1)
  {
    v12 = sub_100056238();
    v13 = @"IMPROVE_LOCATION_ACCURACY_BLUETOOTH";
LABEL_9:
    v14 = sub_1007CB2E4(v12, v13);
    goto LABEL_10;
  }

  if (!a3)
  {
    v11 = MGGetBoolAnswer();
    v12 = sub_100056238();
    if (v11)
    {
      v13 = @"IMPROVE_LOCATION_ACCURACY_WLAN";
    }

    else
    {
      v13 = @"IMPROVE_LOCATION_ACCURACY_WIFI";
    }

    goto LABEL_9;
  }

  v14 = 0;
LABEL_10:
  v15 = sub_100056238();
  v16 = sub_1007CB2E4(v15, @"OK");
  v17 = sub_100056238();
  v18 = sub_1007CB2E4(v17, @"SETTINGS");
  v19 = v18;
  if (v10 && v14 && v16 && v18)
  {
    keys = SBUserNotificationPendInSetupIfNotAllowedKey;
    *v35 = kCFUserNotificationAlertHeaderKey;
    *&v35[8] = kCFUserNotificationAlertMessageKey;
    *&v35[16] = kCFUserNotificationDefaultButtonTitleKey;
    v36 = kCFUserNotificationAlternateButtonTitleKey;
    values[0] = kCFBooleanTrue;
    values[1] = v10;
    values[2] = v14;
    values[3] = v16;
    values[4] = v18;
    v20 = CFDictionaryCreate(kCFAllocatorDefault, &keys, values, 5, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (v20)
    {
      error = 0;
      v21 = CFUserNotificationCreate(kCFAllocatorDefault, 0.0, 0, &error, v20);
      CFRelease(v20);
    }

    else
    {
      v21 = 0;
    }

    goto LABEL_19;
  }

  v21 = 0;
  if (v18)
  {
LABEL_19:
    CFRelease(v19);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (v21)
  {
    RunLoopSource = CFUserNotificationCreateRunLoopSource(kCFAllocatorDefault, v21, sub_1007A4864, 0);
    if (RunLoopSource)
    {
      v23 = sub_100107858();
      CFRunLoopAddSource(v23, RunLoopSource, kCFRunLoopCommonModes);
      CFRelease(RunLoopSource);
      CFRetain(v21);
      sub_10079B350(a4);
      *(a4 + 24) = v21;
      sub_10000EC00(__p, "");
      sub_10023C2AC(&keys, 15, v8, 0, __p);
      if (v32 < 0)
      {
        operator delete(__p[0]);
      }

      [*(a1 + 40) currentLatchedAbsoluteTimestamp];
      v25 = v24;
      CFRetain(v21);
      if (cf)
      {
        CFRelease(cf);
      }

      cf = v21;
      v38 = v25;
      operator new();
    }

    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v29 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
    {
      keys = 68289282;
      *v35 = 2082;
      *&v35[2] = "";
      *&v35[10] = 2114;
      *&v35[12] = v8;
      _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Could not create runloop source for ImproveAccuracyPrefs notification, Client:%{public, location:escape_only}@}", &keys, 0x1Cu);
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }
    }

    v30 = off_1025D47A8;
    if (os_signpost_enabled(off_1025D47A8))
    {
      keys = 68289282;
      *v35 = 2082;
      *&v35[2] = "";
      *&v35[10] = 2114;
      *&v35[12] = v8;
      _os_signpost_emit_with_name_impl(dword_100000000, v30, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Could not create runloop source for ImproveAccuracyPrefs notification", "{msg%{public}.0s:Could not create runloop source for ImproveAccuracyPrefs notification, Client:%{public, location:escape_only}@}", &keys, 0x1Cu);
    }

    CFRelease(v21);
    return 0;
  }

  if (qword_1025D47A0 != -1)
  {
    sub_10192D4D0();
  }

  v26 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_ERROR))
  {
    keys = 68289282;
    *v35 = 2082;
    *&v35[2] = "";
    *&v35[10] = 2114;
    *&v35[12] = v8;
    _os_log_impl(dword_100000000, v26, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Could not create ImproveAccuracyPrefs notification, Client:%{public, location:escape_only}@}", &keys, 0x1Cu);
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }
  }

  v27 = off_1025D47A8;
  result = os_signpost_enabled(off_1025D47A8);
  if (result)
  {
    keys = 68289282;
    *v35 = 2082;
    *&v35[2] = "";
    *&v35[10] = 2114;
    *&v35[12] = v8;
    _os_signpost_emit_with_name_impl(dword_100000000, v27, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Could not create ImproveAccuracyPrefs notification", "{msg%{public}.0s:Could not create ImproveAccuracyPrefs notification, Client:%{public, location:escape_only}@}", &keys, 0x1Cu);
    return 0;
  }

  return result;
}

id sub_10077E830(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v6 = (a1 + 1168);
  if (!*(a1 + 1168))
  {
    v7 = [NSDictionary alloc];
    sub_100565860(&v63);
    sub_10000EC00(&v62, off_1025D8450);
    if ((v62.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = &v62;
    }

    else
    {
      v8 = v62.__r_.__value_.__r.__words[0];
    }

    if ((v62.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v62.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v62.__r_.__value_.__l.__size_;
    }

    v10 = std::string::append(&v63, v8, size);
    v11 = *&v10->__r_.__value_.__l.__data_;
    *&v69 = *(&v10->__r_.__value_.__l + 2);
    *__p = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    if ((SBYTE7(v69) & 0x80u) == 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = __p[0];
    }

    *v6 = [v7 initWithContentsOfFile:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", v12)}];
    if (SBYTE7(v69) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v62.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v63.__r_.__value_.__l.__data_);
    }

    if (*v6)
    {
      *(a1 + 1176) = [objc_msgSend(*v6 "allKeys")];
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }

      v13 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
      {
        v14 = [objc_msgSend(*v6 "description")];
        LODWORD(__p[0]) = 136315138;
        *(__p + 4) = v14;
        _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "DAR map: %s", __p, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10192F1C4(v6);
      }

      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }

      v15 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
      {
        v16 = [objc_msgSend(*(a1 + 1176) "description")];
        LODWORD(__p[0]) = 136315138;
        *(__p + 4) = v16;
        _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEBUG, "DAR map sorted keys: %s", __p, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10192F2C4((a1 + 1176));
      }
    }

    else
    {
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }

      v17 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
      {
        sub_100565860(&v63);
        sub_10000EC00(&v62, off_1025D8450);
        if ((v62.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v18 = &v62;
        }

        else
        {
          v18 = v62.__r_.__value_.__r.__words[0];
        }

        if ((v62.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v19 = HIBYTE(v62.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v19 = v62.__r_.__value_.__l.__size_;
        }

        v20 = std::string::append(&v63, v18, v19);
        v21 = *&v20->__r_.__value_.__l.__data_;
        *&v69 = *(&v20->__r_.__value_.__l + 2);
        *__p = v21;
        v20->__r_.__value_.__l.__size_ = 0;
        v20->__r_.__value_.__r.__words[2] = 0;
        v20->__r_.__value_.__r.__words[0] = 0;
        v22 = __p;
        if (SBYTE7(v69) < 0)
        {
          v22 = __p[0];
        }

        LODWORD(buf) = 136446210;
        *(&buf + 4) = v22;
        _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_FAULT, "DAR: could not read map file %{public}s", &buf, 0xCu);
        if (SBYTE7(v69) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v62.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v63.__r_.__value_.__l.__data_);
        }
      }

      if (sub_10000A100(121, 0))
      {
        sub_10192DC88(__p);
        sub_100565860(&v62);
        sub_10000EC00(&buf, off_1025D8450);
        if ((v65 & 0x80u) == 0)
        {
          p_buf = &buf;
        }

        else
        {
          p_buf = buf;
        }

        if ((v65 & 0x80u) == 0)
        {
          v43 = v65;
        }

        else
        {
          v43 = *(&buf + 1);
        }

        v44 = std::string::append(&v62, p_buf, v43);
        v45 = *&v44->__r_.__value_.__l.__data_;
        v63.__r_.__value_.__r.__words[2] = v44->__r_.__value_.__r.__words[2];
        *&v63.__r_.__value_.__l.__data_ = v45;
        v44->__r_.__value_.__l.__size_ = 0;
        v44->__r_.__value_.__r.__words[2] = 0;
        v44->__r_.__value_.__r.__words[0] = 0;
        v46 = &v63;
        if ((v63.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v46 = v63.__r_.__value_.__r.__words[0];
        }

        v66 = 136446210;
        v67 = v46;
        v47 = _os_log_send_and_compose_impl();
        if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v63.__r_.__value_.__l.__data_);
        }

        if (v65 < 0)
        {
          operator delete(buf);
        }

        if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v62.__r_.__value_.__l.__data_);
        }

        sub_100152C7C("Generic", 1, 0, 0, "void CLClientManager::reduceAccuracy(const CLClientLocation &, CLClientManagerReduceAccuracyReplyBlock)", "%s\n", v47);
        if (v47 != __p)
        {
          free(v47);
        }
      }
    }
  }

  v58[0] = _NSConcreteStackBlock;
  v58[1] = 3221225472;
  v59 = sub_10077F0B8;
  v60 = &unk_10246FFA8;
  v61 = a3;
  if (*v6)
  {
    if (*(a1 + 1204) == -1.0 || vabdd_f64(*(a1 + 1260), *(a2 + 76)) > 604800.0 || sub_100117154(*(a1 + 1188), *(a1 + 1196), *(a2 + 4), *(a2 + 12)) > 500.0)
    {
      v23 = a2[7];
      v24 = a2[8];
      v25 = a2[5];
      v55 = a2[6];
      v56 = v23;
      v57[0] = v24;
      *(v57 + 12) = *(a2 + 140);
      v26 = a2[3];
      v27 = a2[4];
      v28 = a2[1];
      v51 = a2[2];
      v52 = v26;
      v53 = v27;
      v54 = v25;
      v49 = *a2;
      v50 = v28;
      v29 = *(a1 + 1576);
      *&v26 = *(a2 + 4);
      *&v27 = *(a2 + 12);
      v48[0] = _NSConcreteStackBlock;
      v48[1] = 3221225472;
      v48[2] = sub_10077F3CC;
      v48[3] = &unk_10246FFF0;
      v48[4] = v58;
      v48[5] = a1;
      return [v29 getNumberOfInputApsUsedInWifiTileForCoordinate:v48 withReply:{*&v26, *&v27}];
    }

    else
    {
      v36 = *(a1 + 1344);
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }

      v37 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(__p[0]) = 134217984;
        *(__p + 4) = v36;
        _os_log_impl(dword_100000000, v37, OS_LOG_TYPE_DEBUG, "DAR: applying cached quantization %f", __p, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10192F3C4();
      }

      v38 = a2[7];
      v74 = a2[6];
      v75 = v38;
      v76[0] = a2[8];
      *(v76 + 12) = *(a2 + 140);
      v39 = a2[3];
      v70 = a2[2];
      v71 = v39;
      v40 = a2[5];
      v72 = a2[4];
      v73 = v40;
      v41 = a2[1];
      *__p = *a2;
      v69 = v41;
      return v59(v58, __p, *&v36);
    }
  }

  else
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v31 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(__p[0]) = 134217984;
      *(__p + 4) = 0x3FB999999999999ALL;
      _os_log_impl(dword_100000000, v31, OS_LOG_TYPE_DEFAULT, "#Warning DAR: applying default quantization %f", __p, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10192F4CC();
    }

    v32 = a2[7];
    v74 = a2[6];
    v75 = v32;
    v76[0] = a2[8];
    *(v76 + 12) = *(a2 + 140);
    v33 = a2[3];
    v70 = a2[2];
    v71 = v33;
    v34 = a2[5];
    v72 = a2[4];
    v73 = v34;
    v35 = a2[1];
    *__p = *a2;
    v69 = v35;
    return v59(v58, __p, 0.1);
  }
}

void sub_10077EFC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, void *__p, uint64_t a53, int a54, __int16 a55, char a56, char a57)
{
  if (a57 < 0)
  {
    operator delete(__p);
  }

  if (a47 < 0)
  {
    operator delete(a42);
  }

  _Unwind_Resume(a1);
}

int64_t sub_10077F04C(id a1, id a2, id a3)
{
  v5 = [a2 integerValue];
  if (v5 > [a3 integerValue])
  {
    return 1;
  }

  v7 = [a2 integerValue];
  if (v7 >= [a3 integerValue])
  {
    return 0;
  }

  else
  {
    return -1;
  }
}

uint64_t sub_10077F0B8(uint64_t a1, uint64_t a2, double a3)
{
  if (qword_1025D47A0 != -1)
  {
    sub_10028840C();
  }

  v5 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
  {
    v6 = *(a2 + 4);
    v7 = *(a2 + 12);
    v8 = *(a2 + 20);
    *buf = 134546177;
    *&buf[4] = v6;
    *&buf[12] = 2053;
    *&buf[14] = v7;
    *&buf[22] = 2048;
    *&buf[24] = v8;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "DAR: original location: %{sensitive}.8f, %{sensitive}.8f, %.2f", buf, 0x20u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10192F5D0();
  }

  *(a2 + 4) = vmulq_n_f64(vrndaq_f64(vdivq_f64(*(a2 + 4), vdupq_lane_s64(*&a3, 0))), a3);
  *(a2 + 20) = sqrt(a3 * a3 * 5000000000.0 + *(a2 + 20) * *(a2 + 20));
  if (qword_1025D47A0 != -1)
  {
    sub_10192D4D0();
  }

  v9 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
  {
    v10 = *(a2 + 4);
    v11 = *(a2 + 12);
    v12 = *(a2 + 20);
    *buf = 134546177;
    *&buf[4] = v10;
    *&buf[12] = 2053;
    *&buf[14] = v11;
    *&buf[22] = 2048;
    *&buf[24] = v12;
    _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "DAR:  reduced location: %{sensitive}.8f, %{sensitive}.8f, %.2f", buf, 0x20u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v20 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLClientManager::reduceAccuracy(const CLClientLocation &, CLClientManagerReduceAccuracyReplyBlock)_block_invoke", "%s\n", v20);
    if (v20 != buf)
    {
      free(v20);
    }
  }

  v13 = *(a1 + 32);
  v14 = [CLLocation alloc];
  v15 = *(a2 + 112);
  v27 = *(a2 + 96);
  v28 = v15;
  v29[0] = *(a2 + 128);
  *(v29 + 12) = *(a2 + 140);
  v16 = *(a2 + 48);
  v23 = *(a2 + 32);
  v24 = v16;
  v17 = *(a2 + 80);
  v25 = *(a2 + 64);
  v26 = v17;
  v18 = *(a2 + 16);
  *buf = *a2;
  *&buf[16] = v18;
  return (*(v13 + 16))(v13, [v14 initWithClientLocation:buf]);
}

uint64_t sub_10077F3CC(uint64_t a1, int *a2)
{
  v4 = *(a1 + 40);
  v5 = [*(v4 + 1176) indexOfObject:-[NSNumber stringValue](+[NSNumber numberWithInt:](NSNumber inSortedRange:"numberWithInt:" options:a2) usingComparator:{"stringValue"), 0, objc_msgSend(*(v4 + 1176), "count"), 1024, &stru_10246FFC8}];
  if (v5 == [*(v4 + 1176) count] || objc_msgSend(objc_msgSend(*(v4 + 1176), "objectAtIndex:", v5), "integerValue") != a2)
  {
    --v5;
  }

  [objc_msgSend(*(v4 + 1168) objectForKey:{objc_msgSend(*(v4 + 1176), "objectAtIndex:", v5)), "doubleValue"}];
  v7 = v6;
  if (qword_1025D47A0 != -1)
  {
    sub_10028840C();
  }

  v8 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
  {
    *v15 = 134218240;
    *&v15[4] = v7;
    *&v15[12] = 1024;
    *&v15[14] = a2;
    _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "DAR: applying new quantization %f based on ap count %d", v15, 0x12u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10192F6EC(a2, v7);
    if (!a2)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (a2)
  {
LABEL_10:
    memmove((v4 + 1184), (a1 + 48), 0x9CuLL);
    *(v4 + 1344) = v7;
  }

LABEL_11:
  v9 = *(a1 + 32);
  v10 = *(a1 + 160);
  v20 = *(a1 + 144);
  v21 = v10;
  v22[0] = *(a1 + 176);
  *(v22 + 12) = *(a1 + 188);
  v11 = *(a1 + 96);
  v16 = *(a1 + 80);
  v17 = v11;
  v12 = *(a1 + 128);
  v18 = *(a1 + 112);
  v19 = v12;
  v13 = *(a1 + 64);
  *v15 = *(a1 + 48);
  *&v15[16] = v13;
  return (*(v9 + 16))(v7);
}

int64_t sub_10077F5CC(id a1, id a2, id a3)
{
  v5 = [a2 integerValue];
  if (v5 > [a3 integerValue])
  {
    return 1;
  }

  v7 = [a2 integerValue];
  if (v7 >= [a3 integerValue])
  {
    return 0;
  }

  else
  {
    return -1;
  }
}

void sub_10077F638(uint64_t *a1, uint64_t a2)
{
  v2 = a1[117];
  v3 = a1 + 118;
  if (v2 != a1 + 118)
  {
    while (1)
    {
      v6 = v2[4];
      if ((*(a2 + 16))(a2, v6))
      {
        break;
      }

      v7 = v2[1];
      if (v7)
      {
        do
        {
          v8 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v8 = v2[2];
          v9 = *v8 == v2;
          v2 = v8;
        }

        while (!v9);
      }

      v2 = v8;
      if (v8 == v3)
      {
        return;
      }
    }

    *(v6 + 8) = mach_continuous_time();
    sub_10077F82C(a1, v6);
    if (qword_1025D4790 != -1)
    {
      sub_10192F910();
    }

    v10 = qword_1025D4798;
    if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 68289282;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2050;
      v17 = v6;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#dic consuming a matching butterfly, eaten:%{public}p}", &v12, 0x1Cu);
      if (qword_1025D4790 != -1)
      {
        sub_10192DAA4();
      }
    }

    v11 = qword_1025D4798;
    if (os_signpost_enabled(qword_1025D4798))
    {
      v12 = 68289282;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2050;
      v17 = v6;
      _os_signpost_emit_with_name_impl(dword_100000000, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#dic consuming a matching butterfly", "{msg%{public}.0s:#dic consuming a matching butterfly, eaten:%{public}p}", &v12, 0x1Cu);
    }
  }
}

void sub_10077F82C(uint64_t *a1, unint64_t a2)
{
  v3 = a1[118];
  if (!v3)
  {
    goto LABEL_9;
  }

  v4 = a1;
  p_info = a1 + 118;
  do
  {
    v6 = v3[4];
    v7 = v6 >= a2;
    v8 = v6 < a2;
    if (v7)
    {
      p_info = v3;
    }

    v3 = v3[v8];
  }

  while (v3);
  if (p_info == a1 + 118 || p_info[4] > a2)
  {
LABEL_9:
    p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v9 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
    {
      *buf = 68290051;
      *&buf[4] = 0;
      v22 = 2082;
      v23 = "";
      v24 = 2114;
      v25 = sub_100008880(a2);
      v26 = 2050;
      v27 = a2;
      v28 = 2082;
      v29 = "assert";
      v30 = 2081;
      v31 = "iter != fDaemonIdentifiableClientsWithoutConnection.end()";
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:destroying disconnected #dic - not found, ClientKey:%{public, location:escape_only}@, this:%{public}p, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }
    }

    v10 = off_1025D47A8;
    if (os_signpost_enabled(off_1025D47A8))
    {
      v11 = sub_100008880(a2);
      *buf = 68290051;
      *&buf[4] = 0;
      v22 = 2082;
      v23 = "";
      v24 = 2114;
      v25 = v11;
      v26 = 2050;
      v27 = a2;
      v28 = 2082;
      v29 = "assert";
      v30 = 2081;
      v31 = "iter != fDaemonIdentifiableClientsWithoutConnection.end()";
      _os_signpost_emit_with_name_impl(dword_100000000, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "destroying disconnected #dic - not found", "{msg%{public}.0s:destroying disconnected #dic - not found, ClientKey:%{public, location:escape_only}@, this:%{public}p, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }
    }

    v4 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
    {
      v12 = sub_100008880(a2);
      *buf = 68290051;
      *&buf[4] = 0;
      v22 = 2082;
      v23 = "";
      v24 = 2114;
      v25 = v12;
      v26 = 2050;
      v27 = a2;
      v28 = 2082;
      v29 = "assert";
      v30 = 2081;
      v31 = "iter != fDaemonIdentifiableClientsWithoutConnection.end()";
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "{msg%{public}.0s:destroying disconnected #dic - not found, ClientKey:%{public, location:escape_only}@, this:%{public}p, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
    }

    v19 = 3670;
    v20 = "destroyDaemonIdentifiableClient";
    abort_report_np();
    __break(1u);
  }

  if (qword_1025D47A0 != -1)
  {
    sub_10028840C();
  }

  v13 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    v14 = sub_100008880(a2);
    *buf = 68289538;
    *&buf[4] = 0;
    v22 = 2082;
    v23 = "";
    v24 = 2114;
    v25 = v14;
    v26 = 2050;
    v27 = a2;
    _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:destroying #dic, ClientKeyPath:%{public, location:escape_only}@, this:%{public}p}", buf, 0x26u);
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }
  }

  v15 = off_1025D47A8;
  if (os_signpost_enabled(off_1025D47A8))
  {
    v16 = sub_100008880(a2);
    *buf = 68289538;
    *&buf[4] = 0;
    v22 = 2082;
    v23 = "";
    v24 = 2114;
    v25 = v16;
    v26 = 2050;
    v27 = a2;
    _os_signpost_emit_with_name_impl(dword_100000000, v15, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "destroying #dic", "{msg%{public}.0s:destroying #dic, ClientKeyPath:%{public, location:escape_only}@, this:%{public}p}", buf, 0x26u);
  }

  sub_10000EC00(buf, [[NSString stringWithFormat:?];
  v17 = sub_100008880(a2);
  v18 = (*(*a2 + 24))(a2);
  sub_1007733A4(v4, v17, buf, v18, 0, 0);
  sub_10045E8A0(v4 + 117, p_info);
  operator delete(p_info);
  (*(*a2 + 8))(a2);
  if (SBYTE3(v25) < 0)
  {
    operator delete(*buf);
  }
}

void sub_10077FD2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

id sub_10077FD50(uint64_t a1)
{
  v2 = [*(a1 + 40) newTimer];
  *(a1 + 144) = v2;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10077FDE8;
  v4[3] = &unk_102449A78;
  v4[4] = a1;
  [v2 setHandler:v4];
  return [*(a1 + 144) setNextFireDelay:600.0];
}

id sub_10077FDE8(uint64_t a1)
{
  v1 = *(a1 + 32);
  [*(v1 + 136) persist];
  v2 = *(v1 + 144);

  return [v2 setNextFireDelay:600.0];
}

id sub_10077FEB8(uint64_t a1, uint64_t a2)
{
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = [NSSet setWithObjects:v4, v5, v6, objc_opt_class(), 0];

  return [NSKeyedUnarchiver unarchivedObjectOfClasses:v7 fromData:a1 error:a2];
}

NSData *sub_10077FF70(uint64_t a1)
{
  v2 = +[NSMutableDictionary dictionary];
  [v2 setObject:&off_10254EF18 forKeyedSubscript:@"version"];
  v3 = +[NSMutableDictionary dictionary];
  v4 = *(a1 + 136);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1007801CC;
  v9[3] = &unk_10246FD68;
  v9[4] = v3;
  v9[5] = a1;
  [v4 iterateAllAnchorKeyPathsWithBlock:v9];
  [v2 setObject:v3 forKeyedSubscript:@"clients"];
  [v2 setObject:+[NSNumber numberWithBool:](NSNumber forKeyedSubscript:{"numberWithBool:", sub_1000193E0() == 1), @"global"}];
  v8 = 0;
  result = [NSKeyedArchiver archivedDataWithRootObject:v2 requiringSecureCoding:1 error:&v8];
  if (v8)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v6 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289282;
      v11 = 0;
      v12 = 2082;
      v13 = "";
      v14 = 2114;
      v15 = v8;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:failed to archive authorization decisions, error:%{public, location:escape_only}@}", buf, 0x1Cu);
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }
    }

    v7 = off_1025D47A8;
    if (os_signpost_enabled(off_1025D47A8))
    {
      *buf = 68289282;
      v11 = 0;
      v12 = 2082;
      v13 = "";
      v14 = 2114;
      v15 = v8;
      _os_signpost_emit_with_name_impl(dword_100000000, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "failed to archive authorization decisions", "{msg%{public}.0s:failed to archive authorization decisions, error:%{public, location:escape_only}@}", buf, 0x1Cu);
    }

    return 0;
  }

  return result;
}

void sub_1007801CC(uint64_t a1, void *a2)
{
  v4 = *(a1 + 40);
  if (a2)
  {
    [a2 clientName];
  }

  else
  {
    v19 = 0;
    *__p = 0u;
    v18 = 0u;
    v15 = 0u;
    *v16 = 0u;
    v13 = 0u;
    *v14 = 0u;
    *v11 = 0u;
    *v12 = 0u;
    *v9 = 0u;
    v10 = 0u;
    *v8 = 0u;
  }

  v5 = [a2 legacyClientKey];
  sub_10003B25C(v8);
  if (v15 >= 0)
  {
    v6 = &v14[1];
  }

  else
  {
    v6 = v14[1];
  }

  if ([[NSString stringWithUTF8String:?], "hasPrefix:", @"com.apple."])
  {
    goto LABEL_11;
  }

  v7 = HIBYTE(v12[0]);
  if (SHIBYTE(v12[0]) < 0)
  {
    v7 = v11[1];
  }

  if (v7)
  {
LABEL_11:
    [*(a1 + 32) setObject:objc_msgSend(objc_msgSend(*(v4 + 136) forKeyedSubscript:{"readonlyStoreAtKeyPath:", a2), "dictionary"), v5}];
  }

  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p[1]);
  }

  if (SHIBYTE(__p[0]) < 0)
  {
    operator delete(v16[0]);
  }

  if (SHIBYTE(v15) < 0)
  {
    operator delete(v14[1]);
  }

  if (SHIBYTE(v13) < 0)
  {
    operator delete(v12[1]);
  }

  if (SHIBYTE(v12[0]) < 0)
  {
    operator delete(v11[0]);
  }

  if (SHIBYTE(v10) < 0)
  {
    operator delete(v9[1]);
  }

  if (SHIBYTE(v9[0]) < 0)
  {
    operator delete(v8[0]);
  }
}

NSError *sub_100780350(uint64_t a1, uint64_t a2, void *a3)
{
  __s1 = 0;
  v18 = 0;
  v19 = 0;
  v5 = sub_1000206B4();
  if (sub_100005050(v5, @"kAuthorizationDecisionsConfirmationToken", &__s1))
  {
    v6 = [objc_msgSend(a3 "UUIDString")];
    v7 = strlen(v6);
    v8 = v7;
    v9 = HIBYTE(v19);
    if ((SHIBYTE(v19) & 0x8000000000000000) != 0)
    {
      if (v7 != v18)
      {
        goto LABEL_9;
      }

      if (v7 == -1)
      {
        sub_1003CC9DC();
      }

      p_s1 = __s1;
    }

    else
    {
      if (v7 != SHIBYTE(v19))
      {
        goto LABEL_9;
      }

      p_s1 = &__s1;
    }

    if (!memcmp(p_s1, v6, v8))
    {
      v13 = 0;
      if ((v9 & 0x80) == 0)
      {
        return v13;
      }

      goto LABEL_21;
    }
  }

LABEL_9:
  v16 = 0;
  sub_10077FEB8(a2, &v16);
  if (v16)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v11 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [-[NSError description](v16 "description")];
      *buf = 68289282;
      v21 = 0;
      v22 = 2082;
      v23 = "";
      v24 = 2082;
      v25 = v12;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Attempting to apply archived auth decisions; early return due to failure to unarchive authorization decisions, errorDesc:%{public, location:escape_only}s}", buf, 0x1Cu);
    }

    v13 = v16;
  }

  else
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v14 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      v21 = 0;
      v22 = 2082;
      v23 = "";
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#Warning Did not fail to unarchive authorization decisions! This is unexpected unless the archive came from a Sydro or earlier device. Early returning because this function must no-op.}", buf, 0x12u);
    }

    v13 = [NSError errorWithDomain:kCLErrorDomainPrivate code:5 userInfo:0];
  }

  if (v19 < 0)
  {
LABEL_21:
    operator delete(__s1);
  }

  return v13;
}

id sub_1007805C8(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 136) registeredKeyPathForClientIdentifier:a2];
  if ([v4 isValidCKP])
  {
    v5 = *(a1 + 136);

    return [v5 intForKey:@"CorrectiveCompensationEnabled" atKeyPath:v4 defaultValue:0];
  }

  else
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v7 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_ERROR))
    {
      v9 = 68289282;
      v10 = 0;
      v11 = 2082;
      v12 = "";
      v13 = 2114;
      v14 = a2;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#compensation failed to load persistent store for client, Client:%{public, location:escape_only}@}", &v9, 0x1Cu);
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }
    }

    v8 = off_1025D47A8;
    if (os_signpost_enabled(off_1025D47A8))
    {
      v9 = 68289282;
      v10 = 0;
      v11 = 2082;
      v12 = "";
      v13 = 2114;
      v14 = a2;
      _os_signpost_emit_with_name_impl(dword_100000000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#compensation failed to load persistent store for client", "{msg%{public}.0s:#compensation failed to load persistent store for client, Client:%{public, location:escape_only}@}", &v9, 0x1Cu);
    }

    return 0;
  }
}

void sub_1007807A8(uint64_t a1, char a2)
{
  v4 = sub_10001CF3C();
  v5 = *(a1 + 272);
  if (!v4)
  {
    if (v5)
    {
      v6 = *v5;
      goto LABEL_9;
    }

LABEL_15:

    sub_1007815E8(a1, a2);
    return;
  }

  if (!v5)
  {
    goto LABEL_15;
  }

  v6 = *v5;
  if (v6 == 17)
  {

    sub_1007808B0(a1, a2);
    return;
  }

LABEL_9:
  switch(v6)
  {
    case 15:

      sub_100781234(a1, a2);
      break;
    case 10:

      sub_10078104C(a1, a2);
      break;
    case 6:

      sub_1007809DC(a1, a2);
      return;
    default:
      goto LABEL_15;
  }
}

uint64_t sub_1007808B0(uint64_t a1, char a2)
{
  if ((a2 & 3) - 1 >= 2)
  {
    if ((a2 & 3) != 0)
    {
      if (qword_1025D47A0 != -1)
      {
        sub_10028840C();
      }

      v4 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
      {
        v6 = 134349056;
        v7 = 3;
        _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "#Pinning no user response to pinned location authorization (flags 0x%{public}lx)", &v6, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10192FA20();
      }
    }

    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  [objc_msgSend(objc_msgSend(*(a1 + 32) "vendor")];
  sub_10023DC84(*(a1 + 272));
  return sub_1007A3EE0((a1 + 272), 0);
}

uint64_t sub_1007809DC(uint64_t a1, char a2)
{
  v4 = sub_1000184F4(a1, *(*(a1 + 272) + 8));
  if ((a2 & 3u) > 1uLL)
  {
    if ((a2 & 3) == 3)
    {
      if (qword_1025D47A0 != -1)
      {
        sub_10028840C();
      }

      v7 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        *&buf[4] = v4;
        *&buf[12] = 2050;
        *&buf[14] = 3;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "#warning No user response to #reprompt for client %{public}@ (flags 0x%{public}lx)", buf, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10192FB14();
      }

      goto LABEL_17;
    }
  }

  else if ((a2 & 3) != 0)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v5 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      *&buf[4] = v4;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "User has selected 'WIU' on #reprompt for %{public}@, changing authorization.", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10192FC1C();
    }

    sub_100791600(a1, v4, 4, 0, v6, 1, 1);
LABEL_17:
    v23 = 0;
    goto LABEL_25;
  }

  if (qword_1025D47A0 != -1)
  {
    sub_10028840C();
  }

  v8 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = v4;
    _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "User has authorized continued access for %@ at #reprompt", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10192FD0C();
  }

  v23 = 1;
LABEL_25:
  [*(a1 + 136) setDouble:@"ConsumptionPeriodBegin" forKey:v4 atKeyPath:CFAbsoluteTimeGetCurrent()];
  sub_100565518(0, &v24);
  v9 = std::string::append(&v24, "locScoreInfoReport", 0x12uLL);
  v10 = *&v9->__r_.__value_.__l.__data_;
  *&buf[16] = *(&v9->__r_.__value_.__l + 2);
  *buf = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  if (buf[23] >= 0)
  {
    v11 = buf;
  }

  else
  {
    v11 = *buf;
  }

  v21 = [NSString stringWithUTF8String:v11];
  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  v12 = [*(a1 + 136) intForKey:@"ConsumptionCoolingRate" atKeyPath:v4 defaultValue:{0, v21}];
  v13 = [*(a1 + 136) intForKey:@"NextConsumptionThresholdScore" atKeyPath:v4 defaultValue:0];
  v14 = [*(a1 + 136) intForKey:@"NextNextConsumptionThresholdScore" atKeyPath:v4 defaultValue:0];
  if (v23)
  {
    if (v4)
    {
      [v4 cppClientKey];
    }

    else
    {
      memset(buf, 0, 24);
    }

    v24.__r_.__value_.__r.__words[0] = buf;
    v15 = *(sub_100046778((a1 + 464), buf) + 12);
    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    [*(a1 + 136) setInt:v14 forKey:@"NextConsumptionThresholdScore" atKeyPath:v4];
    [*(a1 + 136) removeValueForKey:@"NextNextConsumptionThresholdScore" atKeyPath:v4];
    if (v12 + 1 < 2)
    {
      v16 = v12 + 1;
    }

    else
    {
      v16 = 2;
    }

    if ((v13 + v13) < v14)
    {
      v17 = 1;
    }

    else
    {
      v17 = v16;
    }

    [*(a1 + 136) setInt:v17 forKey:@"ConsumptionCoolingRate" atKeyPath:v4];
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v18 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68290562;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2114;
      *&buf[20] = v4;
      v26 = 1026;
      v27 = v13;
      v28 = 1026;
      v29 = v14;
      v30 = 1026;
      v31 = v15;
      v32 = 1026;
      v33 = v12;
      v34 = 1026;
      v35 = v17;
      _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Setting #reprompt thresholds, Client:%{public, location:escape_only}@, priorThreshold:%{public}d, newThreshold:%{public}d, currentUsage:%{public}d, priorCooling:%{public}d, newCooling:%{public}d}", buf, 0x3Au);
    }
  }

  [*(a1 + 136) persist];
  AnalyticsSendEventLazy();
  v24.__r_.__value_.__r.__words[0] = 0;
  if (![+[NSFileManager removeItemAtPath:"removeItemAtPath:error:"]
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v19 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289282;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2114;
      *&buf[20] = v24.__r_.__value_.__r.__words[0];
      _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#warning Got error removing #reprompt checkpoint file, Error:%{public, location:escape_only}@}", buf, 0x1Cu);
    }
  }

  return sub_1007A3EE0((a1 + 272), 0);
}

void sub_100780FFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a33 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10078104C(uint64_t a1, char a2)
{
  v4 = sub_1000184F4(a1, *(*(a1 + 272) + 8));
  if (qword_1025D47A0 != -1)
  {
    sub_10028840C();
  }

  v5 = off_1025D47A8;
  v6 = os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    v9 = 68289538;
    *v10 = 0;
    *&v10[4] = 2082;
    *&v10[6] = "";
    *&v10[14] = 2114;
    *&v10[16] = v4;
    v11 = 1026;
    v12 = a2 & 3;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#AuthPrompt User responded on BigSwitch prompt, Client:%{public, location:escape_only}@, response:%{public}d}", &v9, 0x22u);
  }

  if ((a2 & 3u) <= 1uLL)
  {
    if ((a2 & 3) != 0)
    {
      sub_1007A5DBC(v6, "prefs:root=Privacy&path=LOCATION");
    }

    goto LABEL_9;
  }

  if ((a2 & 3) == 2)
  {
LABEL_9:
    sub_1007779F4(a1, v4);
    goto LABEL_16;
  }

  if (qword_1025D47A0 != -1)
  {
    sub_10192D4D0();
  }

  v7 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543618;
    *v10 = v4;
    *&v10[8] = 2050;
    *&v10[10] = 3;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "#warning no user response to client %{public}@ (flags 0x%{public}lx)", &v9, 0x16u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10192FDFC();
  }

LABEL_16:
  sub_10023DC84(*(a1 + 272));
  return sub_1007A3EE0((a1 + 272), 0);
}

void sub_100781234(uint64_t a1, char a2)
{
  v4 = sub_1000184F4(a1, *(*(a1 + 272) + 8));
  v5 = *(*(a1 + 272) + 48);
  if (qword_1025D47A0 != -1)
  {
    sub_10028840C();
  }

  v6 = off_1025D47A8;
  v7 = os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    *buf = 68289538;
    *&buf[4] = 0;
    v23 = 2082;
    v24 = "";
    v25 = 2114;
    v26 = v4;
    v27 = 1026;
    v28 = a2 & 3;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#AuthPrompt User responded on ImproveAccuracyPrefs prompt, Client:%{public, location:escape_only}@, response:%{public}d}", buf, 0x22u);
  }

  v8 = *(a1 + 1056);
  v9 = *(a1 + 1064);
  while (v8 != v9)
  {
    v7 = *(v8 + 3);
    if (v7)
    {
      v7 = CFEqual(v7, v5);
      v9 = *(a1 + 1064);
      if (v7)
      {
        break;
      }
    }

    v8 += 4;
  }

  if (v8 != v9)
  {
    if ((a2 & 3u) > 1uLL)
    {
      if ((a2 & 3) != 2)
      {
        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
        }

        v13 = off_1025D47A8;
        if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
        {
          v14 = "Unknown";
          if (*v8 == 1)
          {
            v14 = "Bluetooth";
          }

          if (*v8)
          {
            v15 = v14;
          }

          else
          {
            v15 = "Wifi";
          }

          sub_10000EC00(buf, v15);
          if (SBYTE3(v26) >= 0)
          {
            v16 = buf;
          }

          else
          {
            v16 = *buf;
          }

          v18 = 136446466;
          v19 = v16;
          v20 = 2050;
          v21 = 3;
          _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEFAULT, "#warning no user response for improve accuracy prefs notification %{public}s (flags 0x%{public}lx)", &v18, 0x16u);
          if (SBYTE3(v26) < 0)
          {
            operator delete(*buf);
          }
        }

        if (sub_10000A100(121, 2))
        {
          sub_10192FEFC(v8);
        }

        goto LABEL_42;
      }
    }

    else if ((a2 & 3) != 0)
    {
      if (!*v8)
      {
        v10 = "prefs:root=WIFI";
        goto LABEL_40;
      }

      if (*v8 == 1)
      {
        v10 = "prefs:root=Bluetooth";
LABEL_40:
        sub_1007A5DBC(v7, v10);
      }
    }

    Current = CFAbsoluteTimeGetCurrent();
    sub_10079B3EC(v8, Current);
LABEL_42:
    sub_10079B350(v8);
    sub_10023DC84(*(a1 + 272));
    sub_1007A3EE0((a1 + 272), 0);
    return;
  }

  if (qword_1025D47A0 != -1)
  {
    sub_10192D4D0();
  }

  v11 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
  {
    *buf = 68289282;
    *&buf[4] = 0;
    v23 = 2082;
    v24 = "";
    v25 = 2050;
    v26 = v5;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:ImproveAccuracyNotification object not created for notification, notification:%{public}p}", buf, 0x1Cu);
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }
  }

  v12 = off_1025D47A8;
  if (os_signpost_enabled(off_1025D47A8))
  {
    *buf = 68289282;
    *&buf[4] = 0;
    v23 = 2082;
    v24 = "";
    v25 = 2050;
    v26 = v5;
    _os_signpost_emit_with_name_impl(dword_100000000, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ImproveAccuracyNotification object not created for notification", "{msg%{public}.0s:ImproveAccuracyNotification object not created for notification, notification:%{public}p}", buf, 0x1Cu);
  }
}

void sub_1007815E8(uint64_t a1, char a2)
{
  v4 = sub_1000184F4(a1, *(*(a1 + 272) + 8));
  if (([v4 isValidCKP] & 1) == 0)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v5 = off_1025D47A8;
    if (!os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      v7 = **(a1 + 272);
      goto LABEL_9;
    }

    v6 = *(*(a1 + 272) + 8);
    *buf = 68289282;
    *&buf[4] = 0;
    *v94 = 2082;
    *&v94[2] = "";
    *&v94[10] = 2114;
    *&v94[12] = v6;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#Warning onClientUserNotification fInflightPromptAuthorizationRequest failed to evaluate to a real, registered client, Client:%{public, location:escape_only}@}", buf, 0x1Cu);
  }

  v7 = **(a1 + 272);
  if (qword_1025D47A0 != -1)
  {
    sub_10192D4D0();
  }

LABEL_9:
  v8 = off_1025D47A8;
  v9 = a2 & 3;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289794;
    *&buf[4] = 0;
    *v94 = 2082;
    *&v94[2] = "";
    *&v94[10] = 2114;
    *&v94[12] = v4;
    *&v94[20] = 1026;
    *&v94[22] = v7;
    *&v94[26] = 1026;
    *&v94[28] = a2 & 3;
    _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#AuthPrompt User responded to prompt for client, client:%{public, location:escape_only}@, requestType:%{public}d, response:%{public}d}", buf, 0x28u);
  }

  if (v9 == 3)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v10 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289282;
      *&buf[4] = 0;
      *v94 = 2082;
      *&v94[2] = "";
      *&v94[10] = 2114;
      *&v94[12] = v4;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#AuthPrompt User dismissed prompt for client, client:%{public, location:escape_only}@}", buf, 0x1Cu);
    }

    v97[0] = @"ClientKey";
    v98[0] = [v4 userlessClientKeyPath];
    v97[1] = @"RequestType";
    v98[1] = [NSNumber numberWithUnsignedInt:v7];
    v97[2] = @"Dismissed";
    v98[2] = &__kCFBooleanTrue;
    [NSDictionary dictionaryWithObjects:v98 forKeys:v97 count:3];
    AnalyticsSendEvent();
    sub_10023D820(*(a1 + 272), @"The user dismissed the prompt");
    sub_1007A3EE0((a1 + 272), 0);
    return;
  }

  v11 = *(*(a1 + 272) + 4);
  v12 = _os_feature_enabled_impl();
  v13 = *(a1 + 272);
  if (*(v13 + 39) < 0)
  {
    sub_100007244(__p, *(v13 + 16), *(v13 + 24));
  }

  else
  {
    *__p = *(v13 + 16);
    v86 = *(v13 + 32);
  }

  if (v7 <= 8)
  {
    if ((v7 - 1) >= 5)
    {
      if ((v7 - 7) >= 2)
      {
        goto LABEL_71;
      }

      if (v9 == 1)
      {
        v25 = 0;
        v9 = 4;
      }

      else
      {
        if (v9 != 2)
        {
          if (qword_1025D47A0 != -1)
          {
            sub_10192D4D0();
          }

          v81 = off_1025D47A8;
          if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
          {
            *buf = 68290051;
            *&buf[4] = 0;
            *v94 = 2082;
            *&v94[2] = "";
            *&v94[10] = 2114;
            *&v94[12] = v4;
            *&v94[20] = 1026;
            *&v94[22] = a2 & 3;
            *&v94[26] = 2082;
            *&v94[28] = "assert";
            v95 = 2081;
            v96 = "false";
            _os_log_impl(dword_100000000, v81, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Impossible response to WhenInUse Upgrade to Always prompt, client:%{public, location:escape_only}@, flags:%{public}d, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x36u);
            if (qword_1025D47A0 != -1)
            {
              sub_10192D4D0();
            }
          }

          v82 = off_1025D47A8;
          if (os_signpost_enabled(off_1025D47A8))
          {
            *buf = 68290051;
            *&buf[4] = 0;
            *v94 = 2082;
            *&v94[2] = "";
            *&v94[10] = 2114;
            *&v94[12] = v4;
            *&v94[20] = 1026;
            *&v94[22] = a2 & 3;
            *&v94[26] = 2082;
            *&v94[28] = "assert";
            v95 = 2081;
            v96 = "false";
            _os_signpost_emit_with_name_impl(dword_100000000, v82, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Impossible response to WhenInUse Upgrade to Always prompt", "{msg%{public}.0s:Impossible response to WhenInUse Upgrade to Always prompt, client:%{public, location:escape_only}@, flags:%{public}d, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x36u);
            if (qword_1025D47A0 != -1)
            {
              sub_10192D4D0();
            }
          }

          v83 = off_1025D47A8;
          if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
          {
            *buf = 68290051;
            *&buf[4] = 0;
            *v94 = 2082;
            *&v94[2] = "";
            *&v94[10] = 2114;
            *&v94[12] = v4;
            *&v94[20] = 1026;
            *&v94[22] = a2 & 3;
            *&v94[26] = 2082;
            *&v94[28] = "assert";
            v95 = 2081;
            v96 = "false";
            _os_log_impl(dword_100000000, v83, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Impossible response to WhenInUse Upgrade to Always prompt, client:%{public, location:escape_only}@, flags:%{public}d, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x36u);
          }

          goto LABEL_245;
        }

        v9 = 3;
        v25 = 1;
      }

      if (*(a1 + 264))
      {
        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
        }

        v43 = off_1025D47A8;
        if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
        {
          v44 = *(a1 + 288) != 0;
          *buf = 68289794;
          *&buf[4] = 0;
          *v94 = 2082;
          *&v94[2] = "";
          *&v94[10] = 2114;
          *&v94[12] = v4;
          *&v94[20] = 2050;
          *&v94[22] = v9;
          *&v94[30] = 1026;
          *&v94[32] = v44;
          _os_log_impl(dword_100000000, v43, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#provisional prompt response, Client:%{public, location:escape_only}@, GrantedStatus:%{public, location:CLClientAuthorizationStatus}lld, FollowupPending:%{public}hhd}", buf, 0x2Cu);
        }

        [*(a1 + 40) currentLatchedAbsoluteTimestamp];
        v46 = v45;
        v47 = *(a1 + 304);
        *(a1 + 304) = 0;
        v20 = -1.0;
        [*(a1 + 136) doubleForKey:@"ProvisionalMonitoringBegin" atKeyPath:v4 defaultValue:-1.0];
        v49 = v48;
        if (v48 != -1.0)
        {
          Current = CFAbsoluteTimeGetCurrent();
          if (qword_1025D47A0 != -1)
          {
            sub_10192D4D0();
          }

          v20 = Current - v49;
          v51 = off_1025D47A8;
          if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 68289538;
            *&buf[4] = 0;
            *v94 = 2082;
            *&v94[2] = "";
            *&v94[10] = 2114;
            *&v94[12] = v4;
            *&v94[20] = 2050;
            *&v94[22] = v20;
            _os_log_impl(dword_100000000, v51, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#provisional total duration, ClientKey:%{public, location:escape_only}@, duration:%{public}f}", buf, 0x26u);
          }
        }

        v52 = *(a1 + 288);
        if (v52)
        {
          (*(v52 + 16))(v52, v25);

          *(a1 + 288) = 0;
          v18 = 3;
        }

        else
        {
          v18 = 0;
        }

        v73 = sub_100033370(a1, v4);
        sub_100791C88(a1, v73, 1, 0, 1);
        v22 = 0;
        v71 = v46 - v47;
        goto LABEL_197;
      }

      sub_100791ACC(a1, v4, 0, 1);
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }

      v56 = off_1025D47A8;
      v20 = -1.0;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
      {
        v57 = *(a1 + 288) != 0;
        *buf = 68289794;
        *&buf[4] = 0;
        *v94 = 2082;
        *&v94[2] = "";
        *&v94[10] = 2114;
        *&v94[12] = v4;
        *&v94[20] = 2050;
        *&v94[22] = v9;
        *&v94[30] = 1026;
        *&v94[32] = v57;
        _os_log_impl(dword_100000000, v56, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Non-#provisional WIU to Always #AuthPrompt prompt response, ClientKey:%{public, location:escape_only}@, GrantedStatus:%{public, location:CLClientAuthorizationStatus}lld, BypassingSomeoneElseOnDeck:%{public}hhd}", buf, 0x2Cu);
      }

      goto LABEL_135;
    }

LABEL_28:
    if (v11)
    {
      if ((a2 & 3) != 0)
      {
        if (v9 != 1)
        {
          v15 = 0;
          v9 = 0;
LABEL_137:
          v23 = 1;
          goto LABEL_138;
        }

        goto LABEL_63;
      }

LABEL_64:
      v23 = 0;
      v24 = 0;
      v15 = 0;
      v9 = 2;
      goto LABEL_139;
    }

    if (v12)
    {
      if ((a2 & 3) == 0)
      {
        v15 = 0;
        goto LABEL_137;
      }

      if (v9 != 1)
      {
LABEL_63:
        v23 = 0;
        v15 = 0;
        v9 = 0;
LABEL_138:
        v24 = 1;
LABEL_139:
        if (*(a1 + 312) == 3)
        {
          *(a1 + 233) = 1;
          *buf = 0;
          *v94 = buf;
          *&v94[8] = 0x2020000000;
          *&v94[16] = 0;
          v58 = *(a1 + 136);
          v84[0] = _NSConcreteStackBlock;
          v84[1] = 3221225472;
          v84[2] = sub_1007A5D78;
          v84[3] = &unk_102470538;
          v84[4] = buf;
          [v58 iterateIdentitiesRelatedToKeyPath:v4 withBlock:v84];
          v59 = [NSString stringWithFormat:@"%@-%@", @"cl-user-zone", [[NSNumber numberWithUnsignedInteger:?]]];
          _Block_object_dispose(buf, 8);
          if (!v24)
          {
LABEL_141:
            if ((v7 - 3) < 0xFFFFFFFE)
            {
              v60 = v15;
            }

            else
            {
              v60 = 0;
            }

            if (v60 == 1)
            {
              v61 = sub_100033370(a1, v4);
              sub_100791C88(a1, v61, 0, 0, 1);
              v18 = 2;
            }

            else
            {
              v18 = 0;
            }

            goto LABEL_166;
          }
        }

        else
        {
          v59 = 0;
          if (!v24)
          {
            goto LABEL_141;
          }
        }

        if (v23)
        {
          sub_10077B960(*(a1 + 136), v4, 4, 1);
          [*(a1 + 136) setBool:1 forKey:@"AuthorizationPromptOptionTypeNegative" atKeyPath:v4];
          if (v11)
          {
            v18 = 14;
          }

          else
          {
            v18 = 13;
          }

          if (qword_1025D47A0 != -1)
          {
            sub_10192D4D0();
          }

          v62 = off_1025D47A8;
          if (!os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_166;
          }

          *buf = 68289282;
          *&buf[4] = 0;
          *v94 = 2082;
          *&v94[2] = "";
          *&v94[10] = 2114;
          *&v94[12] = v4;
          v63 = "{msg%{public}.0s:#TemporaryAuth Client has been granted temporary negative status, Client:%{public, location:escape_only}@}";
        }

        else
        {
          if (v59)
          {
            v4 = [v4 clientKeyPathWithReplacementSubIdentityId:v59 subIdentityType:122];
          }

          sub_10077B960(*(a1 + 136), v4, 1, 1);
          [*(a1 + 136) removeValueForKey:@"AuthorizationPromptOptionTypeNegative" atKeyPath:v4];
          if (v11)
          {
            v18 = 12;
          }

          else
          {
            v18 = 1;
          }

          if (qword_1025D47A0 != -1)
          {
            sub_10192D4D0();
          }

          v62 = off_1025D47A8;
          if (!os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_166;
          }

          *buf = 68289282;
          *&buf[4] = 0;
          *v94 = 2082;
          *&v94[2] = "";
          *&v94[10] = 2114;
          *&v94[12] = v4;
          v63 = "{msg%{public}.0s:#TemporaryAuth Client has been granted temporary positive status, ClientKey:%{public, location:escape_only}@}";
        }

        _os_log_impl(dword_100000000, v62, OS_LOG_TYPE_DEFAULT, v63, buf, 0x1Cu);
LABEL_166:
        v64 = *(a1 + 312) - 1;
        if (v64 > 2)
        {
          v65 = 0;
        }

        else
        {
          v65 = dword_101C8D928[v64];
        }

        if ((v7 & 0xFFFFFFFD) == 1)
        {
          v22 = 2;
        }

        else
        {
          v22 = v65;
        }

        v66 = HIBYTE(v86);
        if (v86 < 0)
        {
          v66 = __p[1];
        }

        if (v66)
        {
          sub_1007A4C58(a1, v4, __p);
        }

        else
        {
          v67 = [*(a1 + 136) registeredKeyPathForClientIdentifier:v4];
          if ([v67 isValidCKP])
          {
            [*(a1 + 136) removeValueForKey:@"AuthorizationPurposeKey" atKeyPath:v67];
          }
        }

LABEL_194:
        *(a1 + 312) = 0;
LABEL_195:
        v20 = -1.0;
        goto LABEL_196;
      }
    }

    else
    {
      if ((a2 & 3) == 0)
      {
        goto LABEL_64;
      }

      if (v9 == 1)
      {
        goto LABEL_63;
      }
    }

    v23 = 0;
    v24 = 0;
    v9 = 4;
    v15 = 1;
    goto LABEL_139;
  }

  if (v7 <= 12)
  {
    if (v7 == 9)
    {
      v38 = a2 & 3;
      if (v38 == 2)
      {
        v18 = 4;
      }

      else
      {
        v18 = 5;
      }

      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }

      v39 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
      {
        v40 = "NO";
        *buf = 68289538;
        *&buf[4] = 0;
        *&v94[2] = "";
        *v94 = 2082;
        if (v38 == 2)
        {
          v40 = "YES";
        }

        *&v94[10] = 2114;
        *&v94[12] = v4;
        *&v94[20] = 2082;
        *&v94[22] = v40;
        _os_log_impl(dword_100000000, v39, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Temporary relief from #compensation response, ClientKey:%{public, location:escape_only}@, TempPrecise:%{public, location:escape_only}s}", buf, 0x26u);
      }

      if (v38 == 2)
      {
        v41 = 2;
      }

      else
      {
        v41 = 8;
      }

      sub_10077B960(*(a1 + 136), v4, v41, 1);
      v42 = sub_100031744([objc_msgSend(*(a1 + 136) readonlyStoreAtKeyPath:{v4), "dictionary"}]);
      v9 = v42;
      if (v42)
      {
        if (v42 == 2)
        {
          v9 = 4;
        }

        else if (v42 == 4)
        {
          v9 = 3;
        }

        else
        {
          if (qword_1025D47A0 != -1)
          {
            sub_10192D4D0();
          }

          v75 = off_1025D47A8;
          if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
          {
            *buf = 68289538;
            *&buf[4] = 0;
            *v94 = 2082;
            *&v94[2] = "";
            *&v94[10] = 2114;
            *&v94[12] = v4;
            *&v94[20] = 2050;
            *&v94[22] = v9;
            _os_log_impl(dword_100000000, v75, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Unexpected authorization status for #TemporaryAuth precise promptee, ClientKey:%{public, location:escape_only}@, AuthMask:%{public}lu}", buf, 0x26u);
            if (qword_1025D47A0 != -1)
            {
              sub_10192D4D0();
            }
          }

          v76 = off_1025D47A8;
          if (os_signpost_enabled(off_1025D47A8))
          {
            *buf = 68289538;
            *&buf[4] = 0;
            *v94 = 2082;
            *&v94[2] = "";
            *&v94[10] = 2114;
            *&v94[12] = v4;
            *&v94[20] = 2050;
            *&v94[22] = v9;
            _os_signpost_emit_with_name_impl(dword_100000000, v76, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Unexpected authorization status for #TemporaryAuth precise promptee", "{msg%{public}.0s:Unexpected authorization status for #TemporaryAuth precise promptee, ClientKey:%{public, location:escape_only}@, AuthMask:%{public}lu}", buf, 0x26u);
          }

          v9 = 2;
        }
      }

      [NSNumber numberWithBool:v38 == 2];
      v22 = 0;
      goto LABEL_195;
    }

    if (v7 != 11)
    {
      if (v7 == 12)
      {
        v16 = a2 & 3;
        if (v16 == 2)
        {
          v17 = 3;
        }

        else
        {
          v17 = 2;
        }

        if ((a2 & 3) == 2)
        {
          v18 = 6;
        }

        else
        {
          v18 = 7;
        }

        sub_10077A3D0(a1, v17, v4, 1);
        [NSNumber numberWithBool:v16 == 2];
        [*(a1 + 1120) removeObject:v4];
        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
        }

        v19 = off_1025D47A8;
        v20 = -1.0;
        if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
        {
          v21 = "Disallowed";
          *buf = 68289538;
          *&v94[2] = "";
          *&buf[4] = 0;
          *v94 = 2082;
          if (v16 == 2)
          {
            v21 = "Allowed";
          }

          *&v94[10] = 2114;
          *&v94[12] = v4;
          *&v94[20] = 2082;
          *&v94[22] = v21;
          _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#AuthPrompt response, ClientKey:%{public, location:escape_only}@, IncidentalUseMode:%{public, location:escape_only}s}", buf, 0x26u);
        }

        v22 = 0;
        v9 = 4;
        goto LABEL_196;
      }

      goto LABEL_71;
    }

    goto LABEL_28;
  }

  if (v7 <= 17)
  {
    if ((v7 - 13) < 2)
    {
      if (v9 == 2)
      {
        v14 = 1;
      }

      else
      {
        if (v9 != 1)
        {
          if (qword_1025D47A0 != -1)
          {
            goto LABEL_246;
          }

          while (1)
          {
            v78 = off_1025D47A8;
            if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
            {
              *buf = 68290051;
              *&buf[4] = 0;
              *v94 = 2082;
              *&v94[2] = "";
              *&v94[10] = 2114;
              *&v94[12] = v4;
              *&v94[20] = 1026;
              *&v94[22] = a2 & 3;
              *&v94[26] = 2082;
              *&v94[28] = "assert";
              v95 = 2081;
              v96 = "false";
              _os_log_impl(dword_100000000, v78, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Impossible response to LocationButtonUse prompt, client:%{public, location:escape_only}@, flags:%{public}d, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x36u);
              if (qword_1025D47A0 != -1)
              {
                sub_10192D4D0();
              }
            }

            v79 = off_1025D47A8;
            if (os_signpost_enabled(off_1025D47A8))
            {
              *buf = 68290051;
              *&buf[4] = 0;
              *v94 = 2082;
              *&v94[2] = "";
              *&v94[10] = 2114;
              *&v94[12] = v4;
              *&v94[20] = 1026;
              *&v94[22] = a2 & 3;
              *&v94[26] = 2082;
              *&v94[28] = "assert";
              v95 = 2081;
              v96 = "false";
              _os_signpost_emit_with_name_impl(dword_100000000, v79, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Impossible response to LocationButtonUse prompt", "{msg%{public}.0s:Impossible response to LocationButtonUse prompt, client:%{public, location:escape_only}@, flags:%{public}d, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x36u);
              if (qword_1025D47A0 != -1)
              {
                sub_10192D4D0();
              }
            }

            v80 = off_1025D47A8;
            if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
            {
              *buf = 68290051;
              *&buf[4] = 0;
              *v94 = 2082;
              *&v94[2] = "";
              *&v94[10] = 2114;
              *&v94[12] = v4;
              *&v94[20] = 1026;
              *&v94[22] = a2 & 3;
              *&v94[26] = 2082;
              *&v94[28] = "assert";
              v95 = 2081;
              v96 = "false";
              _os_log_impl(dword_100000000, v80, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Impossible response to LocationButtonUse prompt, client:%{public, location:escape_only}@, flags:%{public}d, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x36u);
            }

LABEL_245:
            abort_report_np();
            __break(1u);
LABEL_246:
            sub_10192D4D0();
          }
        }

        v14 = 0;
        v9 = 0;
      }

      [*(a1 + 136) setInt:v9 forKey:@"LocationButtonUseMode" atKeyPath:v4];
      v53 = *(a1 + 136);
      if (v14)
      {
        sub_10077B960(v53, v4, 1, 1);
        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
        }

        v54 = off_1025D47A8;
        if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 68289282;
          *&buf[4] = 0;
          *v94 = 2082;
          *&v94[2] = "";
          *&v94[10] = 2114;
          *&v94[12] = v4;
          _os_log_impl(dword_100000000, v54, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#TemporaryAuth granted temporary auth , allowed chosen on #LocationButtonUse prompt, Client:%{public, location:escape_only}@}", buf, 0x1Cu);
        }

        v9 = 0;
        v18 = 8;
      }

      else
      {
        v55 = sub_100031744([objc_msgSend(v53 readonlyStoreAtKeyPath:{v4), "dictionary"}]);
        if (v55 >= 5)
        {
          v18 = 9;
          v9 = 2;
        }

        else
        {
          v9 = dword_101C8D934[v55];
          v18 = 9;
        }
      }

      v69 = *(a1 + 312) - 1;
      if (v69 > 2)
      {
        v70 = 0;
      }

      else
      {
        v70 = dword_101C8D928[v69];
      }

      if (v7 == 13)
      {
        v22 = 2;
      }

      else
      {
        v22 = v70;
      }

      goto LABEL_194;
    }

    if (v7 == 16)
    {
      v28 = a2 & 3;
      if (v28 == 1)
      {
        v18 = 10;
      }

      else
      {
        v18 = 11;
      }

      v29 = sub_100031744([objc_msgSend(*(a1 + 136) readonlyStoreAtKeyPath:{v4), "dictionary"}]);
      if (v29 > 4)
      {
        v9 = 2;
      }

      else
      {
        v9 = dword_101C8D934[v29];
      }

      [NSNumber numberWithBool:v28 == 1];
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }

      v35 = off_1025D47A8;
      v20 = -1.0;
      if (!os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_224;
      }

      v68 = "Disallowed";
      *buf = 68289538;
      *&v94[2] = "";
      *&buf[4] = 0;
      *v94 = 2082;
      if (v28 == 1)
      {
        v68 = "Allowed";
      }

      *&v94[10] = 2114;
      *&v94[12] = v4;
      *&v94[20] = 2082;
      *&v94[22] = v68;
      v37 = "{msg%{public}.0s:#AuthPrompt response, ClientKey:%{public, location:escape_only}@, IncidentalUseMode:%{public, location:escape_only}s}";
LABEL_223:
      _os_log_impl(dword_100000000, v35, OS_LOG_TYPE_DEFAULT, v37, buf, 0x26u);
LABEL_224:
      v22 = 0;
      goto LABEL_196;
    }

LABEL_71:
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v30 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
    {
      *buf = 67240448;
      *&buf[4] = a2 & 3;
      *v94 = 1026;
      *&v94[2] = v7;
      _os_log_impl(dword_100000000, v30, OS_LOG_TYPE_FAULT, "#AuthPrompt Received response (%{public}d) for invalid/unrecognized response type (%{public}d)", buf, 0xEu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10192DC88(buf);
      v89 = 67240448;
      v90 = a2 & 3;
      v91 = 1026;
      v92 = v7;
      v31 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "void CLClientManager::onClientUserNotification(CFOptionFlags)", "%s\n", v31);
      if (v31 != buf)
      {
        free(v31);
      }
    }

    goto LABEL_198;
  }

  if (v7 == 18)
  {
    v20 = -1.0;
    v9 = 2;
    if (_os_feature_enabled_impl())
    {
      v32 = a2 & 3;
      if (v32 == 2)
      {
        v33 = 3;
      }

      else
      {
        v33 = 2;
      }

      if ((a2 & 3) == 2)
      {
        v18 = 17;
      }

      else
      {
        v18 = 18;
      }

      [*(a1 + 136) setInt:v33 forKey:@"LearnedRoutesAccess" atKeyPath:v4];
      v34 = sub_100031744([objc_msgSend(*(a1 + 136) readonlyStoreAtKeyPath:{v4), "dictionary"}]);
      if (v34 <= 4)
      {
        v9 = dword_101C8D934[v34];
      }

      [NSNumber numberWithBool:v32 == 2];
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }

      v35 = off_1025D47A8;
      if (!os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_224;
      }

      v36 = "Disallowed";
      *buf = 68289538;
      *&v94[2] = "";
      *&buf[4] = 0;
      *v94 = 2082;
      if (v32 == 2)
      {
        v36 = "Allowed";
      }

      *&v94[10] = 2114;
      *&v94[12] = v4;
      *&v94[20] = 2082;
      *&v94[22] = v36;
      v37 = "{msg%{public}.0s:#AuthPrompt response, ClientKey:%{public, location:escape_only}@, LearnedRoutes:%{public, location:escape_only}s}";
      goto LABEL_223;
    }

LABEL_135:
    v22 = 0;
    v18 = 0;
    goto LABEL_196;
  }

  if (v7 != 19)
  {
    goto LABEL_71;
  }

  v20 = -1.0;
  if (_os_feature_enabled_impl())
  {
    [*(a1 + 136) removeValueForKey:@"VisitHistoryAccessAllowedTime" atKeyPath:v4];
    v26 = a2 & 3;
    if (v26 == 2)
    {
      [*(a1 + 136) setDouble:@"VisitHistoryAccessAllowedTime" forKey:v4 atKeyPath:CFAbsoluteTimeGetCurrent()];
      v18 = 15;
      v27 = 3;
    }

    else
    {
      v18 = 16;
      v27 = 2;
    }

    [*(a1 + 136) setInt:v27 forKey:@"VisitHistoryAccess" atKeyPath:v4];
    v74 = sub_100031744([objc_msgSend(*(a1 + 136) readonlyStoreAtKeyPath:{v4), "dictionary"}]);
    if (v74 > 4)
    {
      v9 = 2;
    }

    else
    {
      v9 = dword_101C8D934[v74];
    }

    [NSNumber numberWithBool:v26 == 2];
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v35 = off_1025D47A8;
    if (!os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_224;
    }

    v77 = "Disallowed";
    *buf = 68289538;
    *&v94[2] = "";
    *&buf[4] = 0;
    *v94 = 2082;
    if (v26 == 2)
    {
      v77 = "Allowed";
    }

    *&v94[10] = 2114;
    *&v94[12] = v4;
    *&v94[20] = 2082;
    *&v94[22] = v77;
    v37 = "{msg%{public}.0s:#AuthPrompt response, ClientKey:%{public, location:escape_only}@, VisitHistory:%{public, location:escape_only}s}";
    goto LABEL_223;
  }

  v22 = 0;
  v18 = 0;
  v9 = 2;
LABEL_196:
  v71 = -1.0;
LABEL_197:
  v87[0] = @"ClientKey";
  v88[0] = [v4 userlessClientKeyPath];
  v87[1] = @"Special";
  v88[1] = [NSNumber numberWithUnsignedInt:v18];
  v87[2] = @"RequestType";
  v88[2] = [NSNumber numberWithUnsignedInt:v7];
  v87[3] = @"GrantedStatus";
  v88[3] = [NSNumber numberWithUnsignedInt:v9];
  v87[4] = @"CCStatus";
  v88[4] = [NSNumber numberWithUnsignedInt:v22];
  v87[5] = @"OnDeckDuration";
  v88[5] = [NSNumber numberWithDouble:v71];
  v87[6] = @"ProvisionalMonitoringDuration";
  v88[6] = [NSNumber numberWithDouble:v20];
  [NSDictionary dictionaryWithObjects:v88 forKeys:v87 count:7];
  AnalyticsSendEvent();
  sub_100791600(a1, v4, v9, v22, v72, 1, 1);
  sub_10023DC84(*(a1 + 272));
  sub_1007A3EE0((a1 + 272), 0);
LABEL_198:
  if (SHIBYTE(v86) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_100782FAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_100783014(uint64_t a1, uint64_t a2)
{
  if (!sub_10001CF3C() || !sub_10003845C())
  {
    return 0;
  }

  if ([*(a1 + 120) locationRestricted])
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v4 = off_1025D47A8;
    if (!os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
    {
      return 0;
    }

    *buf = 68289026;
    v33 = 0;
    v34 = 2082;
    v35 = "";
    v5 = "{msg%{public}.0s:#createAndPostPinnedLocationAuthorization skip prompting. Restrictions enabled}";
    v6 = v4;
    v7 = OS_LOG_TYPE_INFO;
    v8 = 18;
    goto LABEL_13;
  }

  if (*(a1 + 272))
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v9 = off_1025D47A8;
    if (!os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      return 0;
    }

    v10 = **(a1 + 272);
    *buf = 68289282;
    v33 = 0;
    v34 = 2082;
    v35 = "";
    v36 = 2050;
    v37 = v10;
    v5 = "{msg%{public}.0s:#createAndPostPinnedLocationAuthorization skip prompting. InflightPromptAuthorizationRequest found., inflightRequestType:%{public, location:CLClientManager_Type::AuthorizationRequestType}lld}";
    v6 = v9;
    v7 = OS_LOG_TYPE_DEFAULT;
    v8 = 28;
LABEL_13:
    _os_log_impl(dword_100000000, v6, v7, v5, buf, v8);
    return 0;
  }

  v11 = 0;
  if (&SBUserNotificationPendInSetupIfNotAllowedKey && &SBUserNotificationHideOnClonedDisplay && &SBUserNotificationDefaultButtonTag && &SBUserNotificationExtensionIdentifierKey && &SBUserNotificationExtensionItemsKey)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v13 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      v33 = 0;
      v34 = 2082;
      v35 = "";
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#CUN Creating user notification for pinned location authorization}", buf, 0x12u);
    }

    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v15 = sub_100056238();
    v16 = sub_1007CB2E4(v15, @"LOCATION_PINNED_AUTHORIZATION_TITLE");
    if (v16)
    {
      CFDictionarySetValue(Mutable, kCFUserNotificationAlertHeaderKey, v16);
      CFRelease(v16);
    }

    v17 = sub_100056238();
    v18 = sub_1007CB2E4(v17, @"LOCATION_PINNED_AUTHORIZE");
    if (v18)
    {
      CFDictionarySetValue(Mutable, kCFUserNotificationOtherButtonTitleKey, v18);
      CFRelease(v18);
    }

    v19 = sub_100056238();
    v20 = sub_1007CB2E4(v19, @"LOCATION_PINNED_NOT_AUTHORIZE");
    if (v20)
    {
      CFDictionarySetValue(Mutable, kCFUserNotificationDefaultButtonTitleKey, v20);
      CFRelease(v20);
    }

    v21 = sub_100056238();
    v22 = sub_1007CB2E4(v21, @"LOCATION_PINNED_PERMISSION_EXPLANATION_FOR_LOCATION_BUTTONS");
    if (v22)
    {
      CFDictionarySetValue(Mutable, kCFUserNotificationAlertMessageKey, v22);
      CFRelease(v22);
    }

    CFDictionarySetValue(Mutable, SBUserNotificationPendInSetupIfNotAllowedKey, kCFBooleanTrue);
    if ((*(a1 + 232) & 1) == 0)
    {
      CFDictionarySetValue(Mutable, SBUserNotificationHideOnClonedDisplay, kCFBooleanTrue);
    }

    CFDictionarySetValue(Mutable, SBUserNotificationAllowInSetupKey, &__kCFBooleanTrue);
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v23 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_INFO, "#CUN Pinned location authorization prompt allowed during buddy-setup", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101930054();
    }

    CFDictionarySetValue(Mutable, SBUserNotificationDefaultButtonTag, [NSNumber numberWithInt:32]);
    v24 = [NSString stringWithUTF8String:"com.apple.corelocation.CoreLocationPinnedLocationAuthPromptPlugin"];
    if (v24 && sub_1004E87D0())
    {
      v31 = 0;
      v38 = [NSExtensionItem extensionItemForPinnedAuthorizationWithPayload:a2];
      v25 = [NSKeyedArchiver archivedDataWithRootObject:[NSArray arrayWithObjects:&v38 count:1] requiringSecureCoding:1 error:&v31];
      if (v31)
      {
        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
        }

        v26 = off_1025D47A8;
        if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
        {
          *buf = 68289283;
          v33 = 0;
          v34 = 2082;
          v35 = "";
          v36 = 2113;
          v37 = v31;
          _os_log_impl(dword_100000000, v26, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Failed archiving extension item, error:%{private, location:escape_only}@}", buf, 0x1Cu);
        }
      }

      else
      {
        v27 = v25;
        CFDictionarySetValue(Mutable, SBUserNotificationExtensionIdentifierKey, v24);
        CFDictionarySetValue(Mutable, SBUserNotificationExtensionItemsKey, v27);
      }
    }

    sub_10000EC00(__p, "");
    sub_10023C2AC(buf, 17, 0, 0, __p);
    if (v30 < 0)
    {
      operator delete(__p[0]);
    }

    [*(a1 + 40) currentLatchedAbsoluteTimestamp];
    v11 = sub_10078364C(0, buf, Mutable, v28);
    if (v11)
    {
      sub_100783A10();
    }

    sub_10023DF30(buf);
  }

  return v11;
}

BOOL sub_10078364C(uint64_t a1, int *a2, CFDictionaryRef dictionary, double a4)
{
  error = 0;
  v8 = *a2;
  v9 = CFUserNotificationCreate(kCFAllocatorDefault, 0.0, 0x20uLL, &error, dictionary);
  CFRelease(dictionary);
  if (v9)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v10 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289538;
      v21 = 0;
      v22 = 2082;
      v23 = "";
      v24 = 2114;
      v25 = a1;
      v26 = 1026;
      v27 = v8;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#CUN Created client user notification for client, Client:%{public, location:escape_only}@, requestType:%{public}d}", buf, 0x22u);
    }

    RunLoopSource = CFUserNotificationCreateRunLoopSource(kCFAllocatorDefault, v9, sub_1007A4864, 0);
    if (RunLoopSource)
    {
      v12 = RunLoopSource;
      sub_1007A48EC(a2, v9, a4);
      CFRelease(v9);
      v13 = sub_100107858();
      CFRunLoopAddSource(v13, v12, kCFRunLoopCommonModes);
      CFRelease(v12);
      return 1;
    }

    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v17 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289282;
      v21 = 0;
      v22 = 2082;
      v23 = "";
      v24 = 2114;
      v25 = a1;
      _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#CUN Could not create runloop source for  CFUserNotification, Client:%{public, location:escape_only}@}", buf, 0x1Cu);
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }
    }

    v18 = off_1025D47A8;
    if (os_signpost_enabled(off_1025D47A8))
    {
      *buf = 68289282;
      v21 = 0;
      v22 = 2082;
      v23 = "";
      v24 = 2114;
      v25 = a1;
      _os_signpost_emit_with_name_impl(dword_100000000, v18, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#CUN Could not create runloop source for  CFUserNotification", "{msg%{public}.0s:#CUN Could not create runloop source for  CFUserNotification, Client:%{public, location:escape_only}@}", buf, 0x1Cu);
    }

    CFRelease(v9);
    return 0;
  }

  if (qword_1025D47A0 != -1)
  {
    sub_10192D4D0();
  }

  v15 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
  {
    *buf = 68289282;
    v21 = 0;
    v22 = 2082;
    v23 = "";
    v24 = 2114;
    v25 = a1;
    _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#CUN Could not create CFUserNotification, Client:%{public, location:escape_only}@}", buf, 0x1Cu);
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }
  }

  v16 = off_1025D47A8;
  result = os_signpost_enabled(off_1025D47A8);
  if (result)
  {
    *buf = 68289282;
    v21 = 0;
    v22 = 2082;
    v23 = "";
    v24 = 2114;
    v25 = a1;
    _os_signpost_emit_with_name_impl(dword_100000000, v16, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#CUN Could not create CFUserNotification", "{msg%{public}.0s:#CUN Could not create CFUserNotification, Client:%{public, location:escape_only}@}", buf, 0x1Cu);
    return 0;
  }

  return result;
}

void sub_100783A80(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1007AAEB4;
  block[3] = &unk_102447418;
  block[4] = a1;
  if (qword_102659F78 != -1)
  {
    dispatch_once(&qword_102659F78, block);
  }
}

void sub_100783B08(uint64_t a1, uint64_t a2)
{
  v3 = sub_100033370(a1, a2);

  sub_1000F7D18(a1, v3, 1);
}

const __CFString *sub_100783B48(uint64_t a1, void *a2, void *a3)
{
  sub_10001A3E8();
  v6 = sub_10001CF3C();
  if (!a3 || !v6)
  {
    goto LABEL_5;
  }

  sub_10000EC00(&__p, [a3 UTF8String]);
  v7 = sub_10106229C(&__p);
  v8 = v7;
  if (SBYTE3(v28) < 0)
  {
    operator delete(__p);
    if (!v8)
    {
      goto LABEL_8;
    }

LABEL_5:
    v9 = [*(a1 + 136) stringForKey:@"PlatformSpecificBundleId" atKeyPath:a2 defaultValue:0];
    if (!v9)
    {
      v9 = [a2 bundleId];
    }

LABEL_11:
    v13 = +[NSMutableArray array];
    v14 = sub_100056238();
    v15 = sub_1007CB450(v14);
    if (v15)
    {
      [v13 addObject:v15];
    }

    if (v9)
    {
      v23 = 0;
      v16 = [[LSApplicationRecord alloc] initWithBundleIdentifier:v9 allowPlaceholder:0 error:&v23];
      if (v23)
      {
        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
        }

        v17 = off_1025D47A8;
        if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
        {
          v18 = [v9 UTF8String];
          __p = 68289538;
          v25 = 2082;
          v26 = "";
          v27 = 2082;
          v28 = v18;
          v29 = 2114;
          v30 = v23;
          _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Could not get LSApplicationRecord from cfDisplayIdentifier, cfDisplayIdentifier:%{public, location:escape_only}s, error:%{public, location:escape_only}@}", &__p, 0x26u);
        }
      }

      if (v16)
      {
        v19 = [v16 localizedNameWithPreferredLocalizations:v13];
        v12 = v19;
        if (v19)
        {
          CFRetain(v19);
LABEL_26:

          return v12;
        }
      }

      v20 = sub_1000E9840(v9);
      v21 = sub_1007A2BA8(v20);
    }

    else
    {
      if (![a2 bundlePath])
      {
        v12 = 0;
        goto LABEL_26;
      }

      v21 = sub_1007A2BA8([a2 bundlePath]);
    }

    v12 = v21;
    goto LABEL_26;
  }

  if (v7)
  {
    goto LABEL_5;
  }

LABEL_8:
  v10 = sub_101061E48(a3);
  if (!v10)
  {
    v9 = 0;
    goto LABEL_11;
  }

  v11 = sub_100056238();
  v12 = sub_100055A24(v11, v10, _kCFBundleDisplayNameKey, 0);
  CFRelease(v10);
  return v12;
}

void sub_100783DC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__CFString *sub_100783DEC(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000184F4(a1, a2);
  errorPtr = 0;
  v4 = sub_1007841C0(a1, v3);
  if (!v4)
  {
    if (qword_1025D4790 != -1)
    {
      sub_10192F910();
    }

    v5 = qword_1025D4798;
    if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289282;
      v20 = 0;
      v21 = 2082;
      v22 = "";
      v23 = 2114;
      v24 = v3;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:copyCombinedClientPurpose couldn't get bundle for client, ClientKeyPath:%{public, location:escape_only}@}", buf, 0x1Cu);
      if (qword_1025D4790 != -1)
      {
        sub_10192DAA4();
      }
    }

    v6 = qword_1025D4798;
    if (os_signpost_enabled(qword_1025D4798))
    {
      *buf = 68289282;
      v20 = 0;
      v21 = 2082;
      v22 = "";
      v23 = 2114;
      v24 = v3;
      _os_signpost_emit_with_name_impl(dword_100000000, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "copyCombinedClientPurpose couldn't get bundle for client", "{msg%{public}.0s:copyCombinedClientPurpose couldn't get bundle for client, ClientKeyPath:%{public, location:escape_only}@}", buf, 0x1Cu);
    }
  }

  v7 = sub_100784288(a1, v3, v4, 0, 1, 0);
  if (v7)
  {
    v8 = v7;
    goto LABEL_11;
  }

  v8 = sub_100784288(a1, v3, v4, 0, 0, 0);
  if (!v8)
  {
LABEL_11:
    v9 = 0;
    if (!v4)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v15 = sub_100784288(a1, v3, v4, 1, 0, 0);
  v16 = sub_100056238();
  if (v15)
  {
    v9 = sub_1007CB2E4(v16, @"LOCATION_CLIENT_PERMISSION_MESSAGE");
    v17 = CFStringCreateStringWithValidatedFormat(kCFAllocatorDefault, 0, @"%@ %@", v9, &errorPtr, v8, v15);
  }

  else
  {
    v9 = sub_1007CB2E4(v16, @"LOCATION_CLIENT_PERMISSION_MESSAGE_REDUCED");
    v17 = CFStringCreateStringWithValidatedFormat(kCFAllocatorDefault, 0, @"%@", v9, &errorPtr, v8);
  }

  v8 = v17;
  if (v4)
  {
LABEL_12:
    CFRelease(v4);
  }

LABEL_13:
  if (v9)
  {
    CFRelease(v9);
  }

  if (errorPtr)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v10 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
    {
      v11 = [-[__CFError localizedDescription](errorPtr "localizedDescription")];
      *buf = 68289538;
      v20 = 0;
      v21 = 2082;
      v22 = "";
      v23 = 2114;
      v24 = v3;
      v25 = 2082;
      v26 = v11;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#Error, couldn't copyCombinedClientPurpose for client due to error returned by CFStringCreateStringWithValidatedFormat., client:%{public, location:escape_only}@, error:%{public, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }
    }

    v12 = off_1025D47A8;
    if (os_signpost_enabled(off_1025D47A8))
    {
      v13 = [-[__CFError localizedDescription](errorPtr "localizedDescription")];
      *buf = 68289538;
      v20 = 0;
      v21 = 2082;
      v22 = "";
      v23 = 2114;
      v24 = v3;
      v25 = 2082;
      v26 = v13;
      _os_signpost_emit_with_name_impl(dword_100000000, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#Error, couldn't copyCombinedClientPurpose for client due to error returned by CFStringCreateStringWithValidatedFormat.", "{msg%{public}.0s:#Error, couldn't copyCombinedClientPurpose for client due to error returned by CFStringCreateStringWithValidatedFormat., client:%{public, location:escape_only}@, error:%{public, location:escape_only}s}", buf, 0x26u);
    }
  }

  return v8;
}

id sub_1007841C0(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 136) registeredKeyPathForClientIdentifier:a2];
  if (result)
  {
    v4 = result;
    v5 = [*(a1 + 136) stringForKey:@"BundleId" atKeyPath:result defaultValue:0];
    v6 = [*(a1 + 136) stringForKey:@"PlatformSpecificBundleId" atKeyPath:v4 defaultValue:0];
    v7 = [*(a1 + 136) stringForKey:@"BundlePath" atKeyPath:v4 defaultValue:0];

    return sub_101062B3C(v6, v5, v7, 0);
  }

  return result;
}

__CFString *sub_100784288(uint64_t a1, void *a2, __CFBundle *a3, void *a4, int a5, __CFString *a6)
{
  if (!a3)
  {
    return 0;
  }

  if (a4 >= 2)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v8 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      v24 = 138543618;
      v25 = a2;
      v26 = 1026;
      LODWORD(v27) = a4;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "Requesting client (%{public}@) purpose for unsupported registration type %{public}d", &v24, 0x12u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101930358(a2, a4);
    }

    return 0;
  }

  if (a5)
  {
    v12 = sub_100056238();
    v13 = &off_102459FA8;
LABEL_12:
    v14 = sub_100055A24(v12, a3, *v13, 0);
    goto LABEL_16;
  }

  if (!a4)
  {
    v23 = sub_100056238();
    v9 = sub_100055A24(v23, a3, @"NSLocationAlwaysUsageDescription", 0);
    if (v9)
    {
      goto LABEL_17;
    }

    v12 = sub_100056238();
    v13 = &off_102459F90;
    goto LABEL_12;
  }

  v16 = [(__CFString *)a6 length];
  v12 = sub_100056238();
  if (!v16)
  {
    v13 = &off_102459FA0;
    goto LABEL_12;
  }

  v14 = sub_1007CADA0(v12, a3, @"NSLocationAuthorizationPurposeDescriptionDictionary", a6, 0);
LABEL_16:
  v9 = v14;
  if (v14)
  {
LABEL_17:
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v17 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
    {
      v24 = 138412546;
      v25 = a2;
      v26 = 2080;
      v27 = [(__CFString *)v9 UTF8String];
      _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEBUG, "purpose string from %@'s bundle: '%s'", &v24, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101930138(a2, v9);
    }

    return v9;
  }

  v19 = [*(a1 + 136) registeredKeyPathForClientIdentifier:a2];
  if (![v19 isValidCKP])
  {
    return 0;
  }

  v20 = [*(a1 + 136) stringForKey:@"Purpose" atKeyPath:v19 defaultValue:0];
  v9 = 0;
  if (a4 != 1)
  {
    v21 = v20;
    if (v20)
    {
      if (qword_1025D47A0 != -1)
      {
        sub_10028840C();
      }

      v22 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
      {
        v24 = 138412546;
        v25 = v19;
        v26 = 2080;
        v27 = [v21 UTF8String];
        _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEBUG, "purpose string from %@'s property: '%s'", &v24, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101930248(v19, v21);
      }

      CFRetain(v21);
      return v21;
    }
  }

  return v9;
}

uint64_t sub_1007845CC(uint64_t a1, uint64_t a2, unsigned int *a3, NSDictionary *a4)
{
  v8 = *a3;
  v9 = sub_1000344B0(a2, 0);
  v10 = (*(*a2 + 96))(a2);
  v11 = sub_100019AB0(a1, v9);
  v12 = [-[NSArray objectAtIndexedSubscript:](v11 objectAtIndexedSubscript:{0), "intValue"}];
  v13 = [-[NSArray objectAtIndexedSubscript:](v11 objectAtIndexedSubscript:{1), "intValue"}];
  v14 = sub_100B20814(a2);
  if (v12 == 2 && (sub_100B2080C(a2) & v14 & 1) == 0)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v20 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289282;
      *&buf[4] = 0;
      *v46 = 2082;
      *&v46[2] = "";
      *&v46[10] = 2114;
      *&v46[12] = v9;
      _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#AuthPrompt Not showing prompt because the client asked us not to, Client:%{public, location:escape_only}@}", buf, 0x1Cu);
    }

    goto LABEL_24;
  }

  if ([*(a1 + 120) locationRestricted])
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v15 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289282;
      *&buf[4] = 0;
      *v46 = 2082;
      *&v46[2] = "";
      *&v46[10] = 2114;
      *&v46[12] = v9;
      _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#AuthPrompt location services settings are frozen by restrictions - denying, Client:%{public, location:escape_only}@}", buf, 0x1Cu);
    }

    sub_10023D820(a3, @"Restrictions are enabled.  Changing authorization isn't allowed");
    v12 = 2;
    if (v13 <= 8 && ((1 << v13) & 0x103) != 0)
    {
      return v13;
    }

    return v12;
  }

  if ([*(a1 + 120) locationServicesEnabledStatus])
  {
    if (v12 > 4 || v12 == 3)
    {
      return v12;
    }

    if (*(a1 + 272))
    {
      if (qword_1025D47A0 != -1)
      {
        sub_10028840C();
      }

      v16 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
      {
        v17 = +[CLClientKeyPath nullClientKeyPath];
        v18 = *(a1 + 272);
        if (v18)
        {
          v17 = *(v18 + 1);
          v19 = *v18;
        }

        else
        {
          v19 = 5;
        }

        *buf = 68290050;
        *v46 = 2082;
        *&buf[4] = 0;
        *&v46[2] = "";
        *&v46[10] = 2114;
        *&v46[12] = v9;
        *&v46[20] = 2050;
        *&v46[22] = v8;
        *&v46[30] = 2114;
        v47 = v17;
        v48 = 2050;
        v49 = v19;
        _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#AuthPrompt Ignoring request because authorization in progress, Client:%{public, location:escape_only}@, requestType:%{public, location:CLClientManager_Type::AuthorizationRequestType}lld, inflightClientKey:%{public, location:escape_only}@, inflightRequestType:%{public, location:CLClientManager_Type::AuthorizationRequestType}lld}", buf, 0x3Au);
      }

      sub_10023D820(a3, @"App is already presenting the user with an authorization prompt");
      return v12;
    }

    if ([*(a1 + 120) locationServicesEnabledStatus] != 1)
    {
      return v12;
    }

    if (v8 <= 0xB)
    {
      if (((1 << v8) & 0xB9E) != 0)
      {
        if (sub_100B311DC(a2))
        {
          sub_100B1FA00(a2);
          v22 = sub_1000539F8();
          v23 = sub_101061D8C([(CLClientKeyPath *)v22 bundleId]);
          if (qword_1025D47A0 != -1)
          {
            sub_10192D4D0();
          }

          v24 = off_1025D47A8;
          if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 68289794;
            *&buf[4] = 0;
            *v46 = 2082;
            *&v46[2] = "";
            *&v46[10] = 2114;
            *&v46[12] = v22;
            *&v46[20] = 2114;
            *&v46[22] = v9;
            *&v46[30] = 1026;
            LODWORD(v47) = v23;
            _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#AuthPrompt check if #webClip, NaturalIdentity:%{public, location:escape_only}@, Client:%{public, location:escape_only}@, isWebClip:%{public}hhd}", buf, 0x2Cu);
          }

          if (v23)
          {
            v43 = @"IsWebClip";
            v44 = [NSNumber numberWithBool:1];
            a4 = [NSDictionary dictionaryWithObjects:&v44 forKeys:&v43 count:1];
          }
        }

        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
        }

        v25 = off_1025D47A8;
        if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 68289538;
          *&buf[4] = 0;
          *v46 = 2082;
          *&v46[2] = "";
          *&v46[10] = 1026;
          *&v46[12] = v8;
          *&v46[16] = 2114;
          *&v46[18] = v9;
          _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Showing #AuthPrompt, requestType:%{public}d, Client:%{public, location:escape_only}@}", buf, 0x22u);
        }

        sub_1007AAEE4(v41, a3);
        v26 = sub_1007755CC(a1, v9, v10, v41, a4);
        sub_10023DF30(v41);
        if (v26)
        {
          goto LABEL_77;
        }

        return v12;
      }

      if (v8 == 5)
      {
        if (qword_1025D47A0 != -1)
        {
          sub_10028840C();
        }

        v38 = off_1025D47A8;
        if (!os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
        {
          return v12;
        }

        *buf = 68289282;
        *&buf[4] = 0;
        *v46 = 2082;
        *&v46[2] = "";
        *&v46[10] = 2114;
        *&v46[12] = v9;
        v39 = "{msg%{public}.0s:#AuthPrompt #Notice ERROR: Client is depending on legacy on-demand authorization, which is not supported for new apps, Client:%{public, location:escape_only}@}";
LABEL_98:
        _os_log_impl(dword_100000000, v38, OS_LOG_TYPE_DEFAULT, v39, buf, 0x1Cu);
        return v12;
      }

      if (v8 == 10)
      {
        if (qword_1025D47A0 != -1)
        {
          sub_10028840C();
        }

        v38 = off_1025D47A8;
        if (!os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
        {
          return v12;
        }

        *buf = 68289282;
        *&buf[4] = 0;
        *v46 = 2082;
        *&v46[2] = "";
        *&v46[10] = 2114;
        *&v46[12] = v9;
        v39 = "{msg%{public}.0s:#AuthPrompt Client requested a big switch prompt, but the big switch is already on, Client:%{public, location:escape_only}@}";
        goto LABEL_98;
      }
    }

    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v40 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
    {
      *buf = 67240192;
      *&buf[4] = v8;
      _os_log_impl(dword_100000000, v40, OS_LOG_TYPE_FAULT, "#AuthPrompt Unrecognized/invalid request type: %{public}d", buf, 8u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101930460();
    }

    return v12;
  }

  if (sub_1000F42C0())
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v21 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289282;
      *&buf[4] = 0;
      *v46 = 2082;
      *&v46[2] = "";
      *&v46[10] = 2114;
      *&v46[12] = v9;
      _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#AuthPrompt Not showing big switch re-enable prompt on OSX, Client:%{public, location:escape_only}@}", buf, 0x1Cu);
    }

    return 2;
  }

  if ((sub_100B2080C(a2) & 1) == 0)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v31 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289282;
      *&buf[4] = 0;
      *v46 = 2082;
      *&v46[2] = "";
      *&v46[10] = 2114;
      *&v46[12] = v9;
      _os_log_impl(dword_100000000, v31, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#AuthPrompt Not showing big switch re-enable prompt because the client asked us not to, Client:%{public, location:escape_only}@}", buf, 0x1Cu);
    }

LABEL_24:
    sub_10023D820(a3, @"App asked us not to show prompts");
    return 2;
  }

  if ((v14 & 1) == 0 && (!sub_100B20824(a2) || sub_100777988(a1, v9) >= *(a1 + 968)))
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v33 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289282;
      *&buf[4] = 0;
      *v46 = 2082;
      *&v46[2] = "";
      *&v46[10] = 2114;
      *&v46[12] = v9;
      _os_log_impl(dword_100000000, v33, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#AuthPrompt Not showing big switch re-enable prompt because the client has asked for too many, Client:%{public, location:escape_only}@}", buf, 0x1Cu);
    }

    sub_10023D820(a3, @"App asked us too many times to show big switch re-enable prompt.");
    return 2;
  }

  if (*(a1 + 272))
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v27 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      v28 = +[CLClientKeyPath nullClientKeyPath];
      v29 = *(a1 + 272);
      if (v29)
      {
        v28 = *(v29 + 1);
        v30 = *v29;
      }

      else
      {
        v30 = 5;
      }

      *buf = 68290050;
      *v46 = 2082;
      *&buf[4] = 0;
      *&v46[2] = "";
      *&v46[10] = 2114;
      *&v46[12] = v9;
      *&v46[20] = 2050;
      *&v46[22] = v8;
      *&v46[30] = 2114;
      v47 = v28;
      v48 = 2050;
      v49 = v30;
      _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#AuthPrompt Ignoring request because authorization in progress -- not showing big switch re-enable prompt, Client:%{public, location:escape_only}@, requestType:%{public, location:CLClientManager_Type::AuthorizationRequestType}lld, inflightClient:%{public, location:escape_only}@, inflightRequestType:%{public, location:CLClientManager_Type::AuthorizationRequestType}lld}", buf, 0x3Au);
    }

    sub_10023D820(a3, @"App is already presenting the user with an authorization prompt");
    return 2;
  }

  if (qword_1025D47A0 != -1)
  {
    sub_10028840C();
  }

  v34 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    *&buf[4] = 0;
    *v46 = 2082;
    *&v46[2] = "";
    *&v46[10] = 2114;
    *&v46[12] = v9;
    _os_log_impl(dword_100000000, v34, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Showing big switch #AuthPrompt, Client:%{public, location:escape_only}@}", buf, 0x1Cu);
  }

  *a3 = 10;
  sub_1007AAEE4(v42, a3);
  v35 = sub_1007851A4(a1, v9, v10, v42);
  sub_10023DF30(v42);
  v12 = 2;
  if (v35)
  {
    LODWORD(v8) = 10;
LABEL_77:
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v36 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289538;
      *&buf[4] = 0;
      *v46 = 2082;
      *&v46[2] = "";
      *&v46[10] = 2114;
      *&v46[12] = v9;
      *&v46[20] = 2050;
      *&v46[22] = v8;
      _os_log_impl(dword_100000000, v36, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#AuthPrompt posted, Client:%{public, location:escape_only}@, type:%{public, location:CLClientManager_Type::AuthorizationRequestType}lld}", buf, 0x26u);
    }

    v37 = *(a1 + 136);
    *buf = _NSConcreteStackBlock;
    *v46 = 3221225472;
    *&v46[8] = sub_1000352CC;
    *&v46[16] = &unk_10246FEF8;
    *&v46[24] = v9;
    v47 = a1;
    [v37 iterateIdentitiesRelatedToKeyPath:v9 withBlock:buf];
  }

  return v12;
}

void sub_10078517C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_10023DF30(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1007851A4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (sub_10001CF3C())
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v8 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "#Pinning per-app prompts are not allowed when LocationPinning is enabled.", buf, 2u);
    }

    result = sub_10000A100(121, 2);
    if (result)
    {
      sub_101930750();
      return 0;
    }
  }

  else
  {
    v10 = sub_1000184F4(a1, a2);
    if (!&SBUserNotificationPendInSetupIfNotAllowedKey)
    {
      return 0;
    }

    v11 = v10;
    v12 = sub_100783B48(a1, v10, a3);
    if (v12)
    {
      v13 = v12;
      errorPtr = 0;
      v14 = sub_100056238();
      v15 = sub_1007CB2E4(v14, @"LOCATION_DISABLED");
      v16 = CFStringCreateStringWithValidatedFormat(kCFAllocatorDefault, 0, @"%@", v15, &errorPtr, v13);
      if (errorPtr)
      {
        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
        }

        v17 = off_1025D47A8;
        if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
        {
          v18 = [-[__CFError localizedDescription](errorPtr "localizedDescription")];
          *buf = 68289538;
          *&buf[4] = 0;
          *v41 = 2082;
          *&v41[2] = "";
          *&v41[10] = 2114;
          *&v41[12] = v11;
          *&v41[20] = 2082;
          *&v41[22] = v18;
          _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#Error, couldn't createAndPostClientPrefsNotification for client due to error returned by CFStringCreateStringWithValidatedFormat., Client:%{public, location:escape_only}@, error:%{public, location:escape_only}s}", buf, 0x26u);
          if (qword_1025D47A0 != -1)
          {
            sub_10192D4D0();
          }
        }

        v19 = off_1025D47A8;
        if (os_signpost_enabled(off_1025D47A8))
        {
          v20 = [-[__CFError localizedDescription](errorPtr "localizedDescription")];
          *buf = 68289538;
          *&buf[4] = 0;
          *v41 = 2082;
          *&v41[2] = "";
          *&v41[10] = 2114;
          *&v41[12] = v11;
          *&v41[20] = 2082;
          *&v41[22] = v20;
          _os_signpost_emit_with_name_impl(dword_100000000, v19, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#Error, couldn't createAndPostClientPrefsNotification for client due to error returned by CFStringCreateStringWithValidatedFormat.", "{msg%{public}.0s:#Error, couldn't createAndPostClientPrefsNotification for client due to error returned by CFStringCreateStringWithValidatedFormat., Client:%{public, location:escape_only}@, error:%{public, location:escape_only}s}", buf, 0x26u);
        }

        return 0;
      }

      v23 = v16;
      v24 = sub_100056238();
      v25 = sub_1007CB2E4(v24, @"LOCATION_DISABLED_SETTINGS");
      v26 = sub_100056238();
      v27 = sub_1007CB2E4(v26, @"LOCATION_DISABLED_CANCEL");
      *buf = SBUserNotificationPendInSetupIfNotAllowedKey;
      *v41 = kCFUserNotificationAlertHeaderKey;
      *&v41[8] = __PAIR128__(kCFUserNotificationDefaultButtonTitleKey, kCFUserNotificationAlternateButtonTitleKey);
      values[0] = kCFBooleanTrue;
      values[1] = v23;
      values[2] = v25;
      values[3] = v27;
      v28 = CFDictionaryCreate(kCFAllocatorDefault, buf, values, 4, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      if (v15)
      {
        CFRelease(v15);
      }

      if (v23)
      {
        CFRelease(v23);
      }

      if (v25)
      {
        CFRelease(v25);
      }

      if (v27)
      {
        CFRelease(v27);
      }

      CFRelease(v13);
      error = 0;
      v29 = CFUserNotificationCreate(kCFAllocatorDefault, 0.0, 0, &error, v28);
      CFRelease(v28);
      if (v29)
      {
        RunLoopSource = CFUserNotificationCreateRunLoopSource(kCFAllocatorDefault, v29, sub_1007A4864, 0);
        if (RunLoopSource)
        {
          v31 = sub_100107858();
          CFRunLoopAddSource(v31, RunLoopSource, kCFRunLoopCommonModes);
          CFRelease(RunLoopSource);
          [*(a1 + 40) currentLatchedAbsoluteTimestamp];
          sub_1007A48EC(a4, v29, v32);
          CFRelease(v29);
          operator new();
        }

        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
        }

        v34 = off_1025D47A8;
        if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
        {
          *v37 = 138543362;
          v38 = v11;
          _os_log_impl(dword_100000000, v34, OS_LOG_TYPE_FAULT, "Could not create runloop source for client prefs notification for %{public}@", v37, 0xCu);
        }

        if (sub_10000A100(121, 0))
        {
          sub_101930560();
        }

        CFRelease(v29);
        return 0;
      }

      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }

      v33 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
      {
        *v37 = 138543362;
        v38 = v11;
        _os_log_impl(dword_100000000, v33, OS_LOG_TYPE_FAULT, "Could not create client prefs notification for %{public}@", v37, 0xCu);
      }

      result = sub_10000A100(121, 0);
      if (result)
      {
        sub_101930658();
        return 0;
      }
    }

    else
    {
      if (qword_1025D47A0 != -1)
      {
        sub_10028840C();
      }

      v21 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
      {
        *buf = 68289282;
        *&buf[4] = 0;
        *v41 = 2082;
        *&v41[2] = "";
        *&v41[10] = 2114;
        *&v41[12] = v11;
        _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:createClientPrefsNotification: BundleDisplayName nil, Client:%{public, location:escape_only}@}", buf, 0x1Cu);
        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
        }
      }

      v22 = off_1025D47A8;
      result = os_signpost_enabled(off_1025D47A8);
      if (result)
      {
        *buf = 68289282;
        *&buf[4] = 0;
        *v41 = 2082;
        *&v41[2] = "";
        *&v41[10] = 2114;
        *&v41[12] = v11;
        _os_signpost_emit_with_name_impl(dword_100000000, v22, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "createClientPrefsNotification: BundleDisplayName nil", "{msg%{public}.0s:createClientPrefsNotification: BundleDisplayName nil, Client:%{public, location:escape_only}@}", buf, 0x1Cu);
        return 0;
      }
    }
  }

  return result;
}

NSDictionary *sub_100785848(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_1000193E0();
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 1;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 1;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 1;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 1;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 1;
  v3 = +[NSMutableArray array];
  v4 = *(v1 + 136);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100785CFC;
  v15[3] = &unk_102470040;
  v15[4] = v3;
  v15[5] = @"Authorization";
  v15[6] = &v32;
  v15[7] = &v28;
  v15[8] = &v24;
  v15[9] = &v20;
  v15[10] = &v16;
  v15[11] = v1;
  [v4 iterateAllAnchorKeyPathsWithBlock:v15];
  v5 = log2([*(v1 + 136) clientCount]);
  if ([v3 count])
  {
    [*(v1 + 40) currentLatchedAbsoluteTimestamp];
    v7 = [v3 objectAtIndexedSubscript:{v6 % objc_msgSend(v3, "count")}];
    v8 = [*(v1 + 136) intForKey:@"Authorization" atKeyPath:v7 defaultValue:0];
    v9 = [*(v1 + 136) intForKey:@"CorrectiveCompensationEnabled" atKeyPath:v7 defaultValue:0];
    v10 = [*(v1 + 136) intForKey:@"IncidentalUseMode" atKeyPath:v7 defaultValue:0];
    v11 = [*(v1 + 136) intForKey:@"LearnedRoutesAccess" atKeyPath:v7 defaultValue:0];
    v12 = [*(v1 + 136) intForKey:@"VisitHistoryAccess" atKeyPath:v7 defaultValue:0];
    v36[0] = @"BigSwitchEnabled";
    v37[0] = [NSNumber numberWithBool:v2 == 1];
    v36[1] = @"AggLog2ClientCount";
    v37[1] = [NSNumber numberWithInt:v5];
    v36[2] = @"AggNoSSDisabled";
    v37[2] = [NSNumber numberWithBool:*(v25 + 24)];
    v36[3] = @"ClientKey";
    v37[3] = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", [objc_msgSend(v7 "userlessClientKeyPath")]);
    v36[4] = @"AuthMask";
    v37[4] = [NSNumber numberWithInt:v8];
    v36[5] = @"AggNoIUEligible";
    v37[5] = [NSNumber numberWithBool:*(v21 + 24)];
    v36[6] = @"AggNoIUDenied";
    v37[6] = [NSNumber numberWithBool:*(v17 + 24)];
    v36[7] = @"IUMode";
    v37[7] = [NSNumber numberWithInt:v10];
    v36[8] = @"AggNoAlwaysApps";
    v37[8] = [NSNumber numberWithBool:*(v33 + 24)];
    v36[9] = @"AggNoChosenCCOn";
    v37[9] = [NSNumber numberWithBool:*(v29 + 24)];
    v36[10] = @"CCStatus";
    v37[10] = [NSNumber numberWithInt:v9];
    v36[11] = @"LRAccess";
    v37[11] = [NSNumber numberWithInt:v11];
    v36[12] = @"VHAccess";
    v37[12] = [NSNumber numberWithInt:v12];
    v13 = [NSDictionary dictionaryWithObjects:v37 forKeys:v36 count:13];
  }

  else
  {
    v13 = 0;
  }

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v32, 8);
  return v13;
}

void sub_100785C8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  _Block_object_dispose(&a22, 8);
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose(&a34, 8);
  _Block_object_dispose(&a38, 8);
  _Unwind_Resume(a1);
}

void sub_100785CFC(uint64_t a1, void *a2)
{
  v4 = *(a1 + 88);
  v5 = [a2 legacyClientKey];
  if ([*(v4 + 136) hasValueForKey:@"SupportedAuthorizationMask" atKeyPath:a2] && (objc_msgSend(*(v4 + 136), "hasValueForKey:atKeyPath:", @"TimeMissing", a2) & 1) == 0)
  {
    [*(a1 + 32) addObject:a2];
  }

  v6 = [*(v4 + 136) intForKey:*(a1 + 40) atKeyPath:a2 defaultValue:0];
  v7 = [*(v4 + 136) intForKey:@"CorrectiveCompensationEnabled" atKeyPath:a2 defaultValue:0];
  v8 = [*(v4 + 136) intForKey:@"IncidentalUseMode" atKeyPath:a2 defaultValue:0];
  if (*(*(*(a1 + 48) + 8) + 24) == 1 && v6 == 4)
  {
    if (a2)
    {
      [a2 clientName];
      if (BYTE1(v20))
      {
        goto LABEL_14;
      }
    }

    else
    {
      v25 = 0;
      *__p = 0u;
      v24 = 0u;
      v21 = 0u;
      *v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      *v17 = 0u;
      *v18 = 0u;
      *v15 = 0u;
      v16 = 0u;
      *v14 = 0u;
    }

    *(*(*(a1 + 48) + 8) + 24) = 0;
LABEL_14:
    if (SHIBYTE(v24) < 0)
    {
      operator delete(__p[1]);
    }

    if (SHIBYTE(__p[0]) < 0)
    {
      operator delete(v22[0]);
    }

    if (SHIBYTE(v21) < 0)
    {
      operator delete(*(&v20 + 1));
    }

    if (SHIBYTE(v19) < 0)
    {
      operator delete(v18[1]);
    }

    if (SHIBYTE(v18[0]) < 0)
    {
      operator delete(v17[0]);
    }

    if (SHIBYTE(v16) < 0)
    {
      operator delete(v15[1]);
    }

    if (SHIBYTE(v15[0]) < 0)
    {
      operator delete(v14[0]);
    }
  }

  if (*(*(*(a1 + 56) + 8) + 24) == 1 && v7 == 2)
  {
    sub_10000EC00(v14, [v5 UTF8String]);
    if (sub_1013208AC(v14))
    {
      v11 = sub_1010626CC(v5);
      if (SHIBYTE(v15[0]) < 0)
      {
        operator delete(v14[0]);
      }

      if ((v11 & 1) == 0)
      {
        *(*(*(a1 + 56) + 8) + 24) = 0;
      }
    }

    else if (SHIBYTE(v15[0]) < 0)
    {
      operator delete(v14[0]);
    }
  }

  v12 = *(*(*(a1 + 64) + 8) + 24) == 1 && v6 == 1;
  if (v12 && ([@"com.apple.locationd.bundle-/System/Library/LocationBundles/WifiCalling.bundle" isEqualToString:v5] & 1) == 0)
  {
    if (a2)
    {
      [a2 clientName];
      if (BYTE1(v20))
      {
        *(*(*(a1 + 64) + 8) + 24) = 0;
      }
    }

    else
    {
      v25 = 0;
      *__p = 0u;
      v24 = 0u;
      v21 = 0u;
      *v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      *v17 = 0u;
      *v18 = 0u;
      *v15 = 0u;
      v16 = 0u;
      *v14 = 0u;
    }

    if (SHIBYTE(v24) < 0)
    {
      operator delete(__p[1]);
    }

    if (SHIBYTE(__p[0]) < 0)
    {
      operator delete(v22[0]);
    }

    if (SHIBYTE(v21) < 0)
    {
      operator delete(*(&v20 + 1));
    }

    if (SHIBYTE(v19) < 0)
    {
      operator delete(v18[1]);
    }

    if (SHIBYTE(v18[0]) < 0)
    {
      operator delete(v17[0]);
    }

    if (SHIBYTE(v16) < 0)
    {
      operator delete(v15[1]);
    }

    if (SHIBYTE(v15[0]) < 0)
    {
      operator delete(v14[0]);
    }
  }

  v13 = *(*(a1 + 72) + 8);
  if ((*(v13 + 24) & 1) != 0 || *(*(*(a1 + 80) + 8) + 24) == 1)
  {
    if (v8)
    {
      *(v13 + 24) = 0;
      if (v8 == 2)
      {
        *(*(*(a1 + 80) + 8) + 24) = 0;
      }
    }
  }
}

void sub_100786058(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

id sub_100786074(uint64_t a1)
{
  v56 = [[CLOSTransaction alloc] initWithDescription:"CLClientManager::getInternalState"];
  v61 = [objc_msgSend(*(a1 + 136) "getStateSummary")];
  v2 = +[NSMutableDictionary dictionary];
  obj = +[NSMutableArray array];
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v3 = *(a1 + 1104);
  v4 = [v3 countByEnumeratingWithState:&v68 objects:v73 count:16];
  if (v4)
  {
    v5 = *v69;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v69 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v68 + 1) + 8 * i);
        v8 = +[NSNumber numberWithUnsignedLong:](NSNumber, "numberWithUnsignedLong:", [*(a1 + 1104) objectForKeyedSubscript:v7]);
        [v2 setObject:objc_msgSend(objc_msgSend(*(a1 + 1104) forKeyedSubscript:{"objectForKeyedSubscript:", v7), "getStateSummary"), v8}];
        v9 = [*(a1 + 136) registeredKeyPathForClientIdentifier:{+[CLClientKeyPath clientKeyPathWithLegacyClientKey:](CLClientKeyPath, "clientKeyPathWithLegacyClientKey:", v7)}];
        if ([v9 isValidCKP])
        {
          [objc_msgSend(v61 objectForKeyedSubscript:{objc_msgSend(v9, "clientKey")), "setObject:forKeyedSubscript:", v8, @"AuthContext"}];
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v68 objects:v73 count:16];
    }

    while (v4);
  }

  v60 = +[NSMutableDictionary dictionary];
  v10 = *(a1 + 840);
  if (v10 != (a1 + 848))
  {
    do
    {
      v11 = v10[5];
      v12 = [NSNumber numberWithUnsignedLong:v11];
      [v60 setObject:sub_100B311E4(v11) forKeyedSubscript:v12];
      v13 = [objc_msgSend(v60 objectForKeyedSubscript:{v12), "objectForKeyedSubscript:", @"AuthContext"}];
      if (v13 && ![v2 objectForKeyedSubscript:v13])
      {
        [obj addObject:sub_100B20804(v11)];
      }

      v14 = v10[1];
      if (v14)
      {
        do
        {
          v15 = v14;
          v14 = *v14;
        }

        while (v14);
      }

      else
      {
        do
        {
          v15 = v10[2];
          v16 = *v15 == v10;
          v10 = v15;
        }

        while (!v16);
      }

      v10 = v15;
    }

    while (v15 != (a1 + 848));
  }

  v59 = +[NSMutableDictionary dictionary];
  v17 = *(a1 + 912);
  if (v17 != (a1 + 920))
  {
    do
    {
      v18 = v17[5];
      v19 = [NSNumber numberWithUnsignedLong:v18];
      [v59 setObject:sub_10102B830(v18) forKeyedSubscript:v19];
      v20 = [objc_msgSend(v59 objectForKeyedSubscript:{v19), "objectForKeyedSubscript:", @"AuthContext"}];
      if (v20 && ![v2 objectForKeyedSubscript:v20])
      {
        [obj addObject:*(v18 + 40)];
      }

      v21 = v17[1];
      if (v21)
      {
        do
        {
          v22 = v21;
          v21 = *v21;
        }

        while (v21);
      }

      else
      {
        do
        {
          v22 = v17[2];
          v16 = *v22 == v17;
          v17 = v22;
        }

        while (!v16);
      }

      v17 = v22;
    }

    while (v22 != (a1 + 920));
  }

  v58 = +[NSMutableDictionary dictionary];
  v23 = *(a1 + 936);
  if (v23 != (a1 + 944))
  {
    do
    {
      v24 = v23[4];
      v25 = [NSNumber numberWithUnsignedLong:v24];
      [v58 setObject:sub_10102B830(v24) forKeyedSubscript:v25];
      v26 = [objc_msgSend(v58 objectForKeyedSubscript:{v25), "objectForKeyedSubscript:", @"AuthContext"}];
      if (v26 && ![v2 objectForKeyedSubscript:v26])
      {
        [obj addObject:*(v24 + 40)];
      }

      v27 = v23[1];
      if (v27)
      {
        do
        {
          v28 = v27;
          v27 = *v27;
        }

        while (v27);
      }

      else
      {
        do
        {
          v28 = v23[2];
          v16 = *v28 == v23;
          v23 = v28;
        }

        while (!v16);
      }

      v23 = v28;
    }

    while (v28 != (a1 + 944));
  }

  v29 = +[NSMutableDictionary dictionary];
  for (j = *(a1 + 1016); j; j = *j)
  {
    for (k = j[7]; k; k = *k)
    {
      v32 = k[4];
      if (v32)
      {
        v33 = std::__shared_weak_count::lock(v32);
        if (v33)
        {
          v34 = v33;
          v35 = k[3];
          if (v35)
          {
            v36 = [NSNumber numberWithUnsignedLong:k[3]];
            [v29 setObject:(*(*v35 + 32))(v35) forKeyedSubscript:v36];
            v37 = [objc_msgSend(v29 objectForKeyedSubscript:{v36), "objectForKeyedSubscript:", @"AuthContext"}];
            if (v37)
            {
              if (![v2 objectForKeyedSubscript:v37])
              {
                [obj addObject:v35[17]];
              }
            }
          }

          sub_100008080(v34);
        }
      }
    }
  }

  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v38 = [obj countByEnumeratingWithState:&v64 objects:v72 count:16];
  if (v38)
  {
    v39 = *v65;
    do
    {
      for (m = 0; m != v38; m = m + 1)
      {
        if (*v65 != v39)
        {
          objc_enumerationMutation(obj);
        }

        v41 = *(*(&v64 + 1) + 8 * m);
        v42 = [NSNumber numberWithUnsignedLong:v41];
        if (![v2 objectForKeyedSubscript:v42])
        {
          [v2 setObject:objc_msgSend(v41 forKeyedSubscript:{"getStateSummary"), v42}];
        }
      }

      v38 = [obj countByEnumeratingWithState:&v64 objects:v72 count:16];
    }

    while (v38);
  }

  v57 = +[NSMutableDictionary dictionary];
  obja = +[NSMutableDictionary dictionary];
  v43 = *(a1 + 864);
  if (v43 != (a1 + 872))
  {
    do
    {
      v44 = v43[5];
      v45 = (*(*v44 + 32))(v44);
      if (v45)
      {
        v46 = [NSNumber numberWithUnsignedLong:v44];
        v48 = obja;
        {
          [v48 setObject:v45 forKeyedSubscript:v46];
        }
      }

      v50 = v43[1];
      if (v50)
      {
        do
        {
          v51 = v50;
          v50 = *v50;
        }

        while (v50);
      }

      else
      {
        do
        {
          v51 = v43[2];
          v16 = *v51 == v43;
          v43 = v51;
        }

        while (!v16);
      }

      v43 = v51;
    }

    while (v51 != (a1 + 872));
  }

  v52 = +[NSMutableDictionary dictionary];
  [v52 setObject:+[NSNumber numberWithDouble:](NSNumber forKeyedSubscript:{"numberWithDouble:", CFAbsoluteTimeGetCurrent()), @"CollectTimestamp"}];
  v53 = objc_alloc_init(NSDateFormatter);
  [v53 setDateFormat:@"yyyy-MM-dd HH:mm:ssZ"];
  [v52 setObject:objc_msgSend(v53 forKeyedSubscript:{"stringFromDate:", +[NSDate dateWithTimeIntervalSinceReferenceDate:](NSDate, "dateWithTimeIntervalSinceReferenceDate:", CFAbsoluteTimeGetCurrent())), @"CollectTime"}];
  [v52 setObject:-[NSProcessInfo operatingSystemVersionString](+[NSProcessInfo processInfo](NSProcessInfo forKeyedSubscript:{"processInfo"), "operatingSystemVersionString"), @"BuildVersion"}];
  v54 = +[NSMutableDictionary dictionary];
  [v54 setObject:v61 forKeyedSubscript:@"AuthorizationDatabaseState"];

  [v54 setObject:sub_100BA12D8(*(a1 + 400)) forKeyedSubscript:@"InUseLevelTrackerState"];
  [v54 setObject:v2 forKeyedSubscript:@"AuthorizationContextStates"];
  [v54 setObject:v60 forKeyedSubscript:@"DaemonClientStates"];
  [v54 setObject:v59 forKeyedSubscript:@"DaemonIdentifiableClientStates"];
  [v54 setObject:v58 forKeyedSubscript:@"DaemonIdentifiableClientWithoutConnectionStates"];
  [v54 setObject:v29 forKeyedSubscript:@"PersistentSubscriptionStates"];
  [v54 setObject:v57 forKeyedSubscript:@"InUseAssertionStates"];
  [v54 setObject:obja forKeyedSubscript:@"EmergencyAssertionStates"];
  [v54 setObject:v52 forKeyedSubscript:@"CollectionMetadata"];

  return v54;
}

void sub_100786930(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v12 = [*(a1 + 136) registeredKeyPathForClientIdentifier:a2];
  if ([v12 isValidCKP])
  {

    sub_100786AA8(a1, v12, a3, a4, a5, a6);
  }

  else
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v13 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
    {
      v14[0] = 68289282;
      v14[1] = 0;
      v15 = 2082;
      v16 = "";
      v17 = 2114;
      v18 = a2;
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#luHistorical client not found - fetching dateIntervals, Client:%{public, location:escape_only}@}", v14, 0x1Cu);
    }
  }
}

void sub_100786AA8(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  if (objc_opt_class())
  {
    v58 = sub_1000184F4(a1, a2);
    v54 = a6;
    v57 = a3;
    if ([objc_msgSend(a4 objectForKeyedSubscript:{@"com.apple.developer.corelocation.wilderness-safety", "BOOLValue"}])
    {
      obj = +[NSMutableArray array];
    }

    else
    {
      v13 = [objc_msgSend(a4 objectForKeyedSubscript:{@"com.apple.locationd.transcript-session", "BOOLValue"}];
      obj = +[NSMutableArray array];
      if (!v13)
      {
        v16 = 0;
        v14 = a1;
        v15 = 0;
        goto LABEL_11;
      }
    }

    v14 = a1;
    v15 = sub_100779AE8(a1, a5);
    v16 = 1;
LABEL_11:
    v17 = +[NSMutableArray array];
    v56 = v14;
    v18 = sub_100788F6C(v14, v58);
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v19 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      buf = 68290306;
      v71 = 2082;
      v72 = "";
      v73 = 2114;
      *v74 = a5;
      *&v74[8] = 2114;
      *&v74[10] = v18;
      v75 = 2114;
      v76 = [a3 startDate];
      v77 = 2114;
      v78 = [a3 endDate];
      v79 = 2114;
      v80 = v58;
      _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#LocationAttributionInfo #luHistorical calculateCheeseCoverage, lookbackWindowStartDate:%{public, location:escape_only}@, transcriptStartDate:%{public, location:escape_only}@, interestStartDate:%{public, location:escape_only}@, interestEndDate:%{public, location:escape_only}@, Client:%{public, location:escape_only}@}", &buf, 0x44u);
    }

    v20 = v16 ^ 1;
    if (!v18)
    {
      v20 = 1;
    }

    if (v20)
    {
      v21 = 0;
      if (!v16)
      {
LABEL_35:
        v65 = 0;
        v66 = &v65;
        v67 = 0x2020000000;
        v68 = 0;
        v31 = v17;
        if (_os_feature_enabled_impl())
        {
          v32 = *(v56 + 568);
          v64[0] = _NSConcreteStackBlock;
          v64[1] = 3221225472;
          v64[2] = sub_100789330;
          v64[3] = &unk_102470148;
          v64[6] = &v65;
          v64[7] = v56;
          v64[4] = v17;
          v64[5] = obj;
          sub_100779E1C(v32, v58, v64);
          if (qword_1025D47A0 != -1)
          {
            sub_10192D4D0();
            v31 = v17;
          }

          v33 = off_1025D47A8;
          if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
          {
            v34 = [obj count];
            buf = 68289538;
            v71 = 2082;
            v72 = "";
            v73 = 1026;
            *v74 = v34;
            *&v74[4] = 2114;
            *&v74[6] = v58;
            _os_log_impl(dword_100000000, v33, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#LocationAttributionInfo finished iterating through swiss cheese archive, resultCount:%{public}d, Client:%{public, location:escape_only}@}", &buf, 0x22u);
          }
        }

        while (1)
        {
          v35 = [v31 count];
          if (v35 <= *(v66 + 6))
          {
            break;
          }

          [obj addObject:{objc_msgSend(v31, "objectAtIndexedSubscript:")}];
          ++*(v66 + 6);
        }

        [objc_msgSend(v57 "startDate")];
        v37 = v36;
        [objc_msgSend(v57 "endDate")];
        v39 = v38;
        v40 = [obj count];
        if (v40)
        {
          v41 = v40 - 1;
          do
          {
            [objc_msgSend(objc_msgSend(obj objectAtIndexedSubscript:{v41), "startDate"), "timeIntervalSinceReferenceDate"}];
            v43 = v42;
            [objc_msgSend(objc_msgSend(obj objectAtIndexedSubscript:{v41), "endDate"), "timeIntervalSinceReferenceDate"}];
            v45 = v44;
            v46 = [objc_msgSend(obj objectAtIndexedSubscript:{v41), "intersectsDateInterval:", v57}];
            if (v43 < v37 || v45 > v39)
            {
              if (v46)
              {
                if (v43 < v37 || v45 <= v39 || v43 >= v39)
                {
                  if (v43 < v37 && v45 <= v39)
                  {
                    [obj replaceObjectAtIndex:v41 withObject:{objc_msgSend([NSDateInterval alloc], "initWithStartDate:endDate:", +[NSDate dateWithTimeIntervalSinceReferenceDate:](NSDate, "dateWithTimeIntervalSinceReferenceDate:", v37), +[NSDate dateWithTimeIntervalSinceReferenceDate:](NSDate, "dateWithTimeIntervalSinceReferenceDate:", v45))}];
                  }
                }

                else
                {
                  [obj replaceObjectAtIndex:v41 withObject:{objc_msgSend([NSDateInterval alloc], "initWithStartDate:endDate:", +[NSDate dateWithTimeIntervalSinceReferenceDate:](NSDate, "dateWithTimeIntervalSinceReferenceDate:", v43), +[NSDate dateWithTimeIntervalSinceReferenceDate:](NSDate, "dateWithTimeIntervalSinceReferenceDate:", v39))}];
                }
              }

              else
              {
                [obj removeObjectAtIndex:v41];
              }
            }

            --v41;
          }

          while (v41 != -1);
        }

        v62 = 0u;
        v63 = 0u;
        v60 = 0u;
        v61 = 0u;
        v47 = [obj countByEnumeratingWithState:&v60 objects:v69 count:16];
        if (v47)
        {
          v48 = *v61;
          do
          {
            v49 = 0;
            do
            {
              if (*v61 != v48)
              {
                objc_enumerationMutation(obj);
              }

              v50 = *(*(&v60 + 1) + 8 * v49);
              if (qword_1025D47A0 != -1)
              {
                sub_10192D4D0();
              }

              v51 = off_1025D47A8;
              if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
              {
                v52 = [v50 startDate];
                v53 = [v50 endDate];
                buf = 68289794;
                v71 = 2082;
                v72 = "";
                v73 = 2114;
                *v74 = v52;
                *&v74[8] = 2114;
                *&v74[10] = v53;
                v75 = 2114;
                v76 = v58;
                _os_log_impl(dword_100000000, v51, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#LocationAttributionInfo #luHistorical cheeseCoverage calculated and includes this interval, startDate:%{public, location:escape_only}@, endDate:%{public, location:escape_only}@, Client:%{public, location:escape_only}@}", &buf, 0x30u);
              }

              v49 = v49 + 1;
            }

            while (v47 != v49);
            v47 = [obj countByEnumeratingWithState:&v60 objects:v69 count:16];
          }

          while (v47);
        }

        (*(v55 + 16))(v55, obj);
        _Block_object_dispose(&v65, 8);
        return;
      }
    }

    else
    {
      v21 = +[NSMutableArray array];
      [v21 addObject:{objc_msgSend([NSDateInterval alloc], "initWithStartDate:endDate:", v18, +[NSDate now](NSDate, "now"))}];
      if (!v16)
      {
        goto LABEL_35;
      }
    }

    v22 = 0;
    v23 = 0;
    while (1)
    {
      if ([v15 count] <= v23)
      {
        if ([v21 count] <= v22)
        {
          goto LABEL_35;
        }

        v24 = v22;
      }

      else
      {
        v24 = v22;
      }

      v25 = [v15 count];
      v26 = [v21 count];
      v27 = v26;
      if (v26 <= v24)
      {
        v29 = 0.0;
        if (v25 <= v23)
        {
          goto LABEL_34;
        }
      }

      else
      {
        [objc_msgSend(objc_msgSend(v21 objectAtIndexedSubscript:{v24), "startDate"), "timeIntervalSinceReferenceDate"}];
        v29 = v28;
        if (v25 <= v23)
        {
          goto LABEL_32;
        }
      }

      [objc_msgSend(objc_msgSend(v15 objectAtIndexedSubscript:{v23), "startDate"), "timeIntervalSinceReferenceDate"}];
      if (v30 > v29 && v27 > v24)
      {
LABEL_32:
        v26 = [v17 addObject:{objc_msgSend(v21, "objectAtIndexedSubscript:", v24)}];
        ++v22;
        goto LABEL_34;
      }

      v26 = [v17 addObject:{objc_msgSend(v15, "objectAtIndexedSubscript:", v23++)}];
LABEL_34:
      sub_1007891C4(v26, v17);
    }
  }

  if (qword_1025D47A0 != -1)
  {
    sub_10028840C();
  }

  v12 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    buf = 68289026;
    v71 = 2082;
    v72 = "";
    _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLPLocationConsumptionScoreInfo doesn't exist in this platform.}", &buf, 0x12u);
  }
}

void sub_100787370(uint64_t a1, uint64_t a2)
{
  v3 = [[CLPLocationConsumptionScoreInfo alloc] initWithData:a2];
  if ([@"com.apple.locationd.all-location-clients-stop" isEqualToString:{objc_msgSend(v3, "clientKey")}])
  {
    v4 = *(*(*(a1 + 48) + 8) + 24);
    if (v4 > 0.0 && v4 < *(*(*(a1 + 56) + 8) + 24))
    {
      (*(*(a1 + 40) + 16))();
    }

    *(*(*(a1 + 56) + 8) + 24) = 0;
    goto LABEL_6;
  }

  if (([*(a1 + 32) isValidCKP] & 1) == 0)
  {
LABEL_11:
    v7 = *(a1 + 40);
    [v3 startTime];
    v9 = v8;
    [v3 stopTime];
    (*(v7 + 16))(v7, v9, v10);
    goto LABEL_19;
  }

  v5 = [objc_msgSend(*(a1 + 32) "clientKey")];
  v6 = [v3 hasStartTime];
  if ((v5 & 1) == 0)
  {
    if (v6)
    {
      [v3 startTime];
    }

    else
    {
      [v3 stopTime];
    }

    v12 = *(a1 + 56);
    goto LABEL_18;
  }

  if (v6 && [v3 hasStopTime])
  {
    goto LABEL_11;
  }

  if ([v3 hasStartTime])
  {
    [v3 startTime];
    v12 = *(a1 + 48);
LABEL_18:
    *(*(v12 + 8) + 24) = v11;
    goto LABEL_19;
  }

  if ([v3 hasStopTime])
  {
    v13 = *(*(*(a1 + 48) + 8) + 24);
    if (v13 > 0.0)
    {
      [v3 stopTime];
      if (v13 < v14)
      {
        v15 = *(a1 + 40);
        v16 = *(*(*(a1 + 48) + 8) + 24);
        [v3 stopTime];
        (*(v15 + 16))(v15, v16, v17);
LABEL_6:
        *(*(*(a1 + 48) + 8) + 24) = 0;
        goto LABEL_19;
      }
    }
  }

  if (qword_1025D47A0 != -1)
  {
    sub_10028840C();
  }

  v18 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_ERROR))
  {
    v19 = *(*(*(a1 + 48) + 8) + 24);
    v22 = 68289538;
    v23 = 0;
    v24 = 2082;
    v25 = "";
    v26 = 2050;
    v27 = v19;
    v28 = 2114;
    v29 = v3;
    _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Invalid ConsumptionScore interval, startTime:%{public}f, scoreInfo:%{public, location:escape_only}@}", &v22, 0x26u);
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }
  }

  v20 = off_1025D47A8;
  if (os_signpost_enabled(off_1025D47A8))
  {
    v21 = *(*(*(a1 + 48) + 8) + 24);
    v22 = 68289538;
    v23 = 0;
    v24 = 2082;
    v25 = "";
    v26 = 2050;
    v27 = v21;
    v28 = 2114;
    v29 = v3;
    _os_signpost_emit_with_name_impl(dword_100000000, v20, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Invalid ConsumptionScore interval", "{msg%{public}.0s:Invalid ConsumptionScore interval, startTime:%{public}f, scoreInfo:%{public, location:escape_only}@}", &v22, 0x26u);
  }

LABEL_19:
}

void sub_1007876D0(void *a1)
{
  sub_10000EC00(&__p, [@"com.apple.locationd.all-location-clients-stop" UTF8String]);
  v2 = sub_100046778(a1, &__p);
  if (SBYTE3(v14) < 0)
  {
    operator delete(__p);
  }

  v3 = a1[2];
  if (v3)
  {
    v4 = *(v2 + 5) + 10.0;
    do
    {
      v5 = v3[5];
      if (v5 > 0.0)
      {
        if (v5 <= v4)
        {
          *(v3 + 12) += (v4 - v5);
        }

        else
        {
          if (qword_1025D47A0 != -1)
          {
            sub_10192D4D0();
          }

          v6 = off_1025D47A8;
          if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_ERROR))
          {
            v7 = *(v3 + 5);
            __p = 68289538;
            v11 = 2082;
            v12 = "";
            v13 = 2050;
            v14 = v7;
            v15 = 2050;
            v16 = v4;
            _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Detected CFAbsoluteTime rollback when reading usage score, PreviousTimestamp:%{public}f, Timestamp:%{public}f}", &__p, 0x26u);
            if (qword_1025D47A0 != -1)
            {
              sub_10192D4D0();
            }
          }

          v8 = off_1025D47A8;
          if (os_signpost_enabled(off_1025D47A8))
          {
            v9 = *(v3 + 5);
            __p = 68289538;
            v11 = 2082;
            v12 = "";
            v13 = 2050;
            v14 = v9;
            v15 = 2050;
            v16 = v4;
            _os_signpost_emit_with_name_impl(dword_100000000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Detected CFAbsoluteTime rollback when reading usage score", "{msg%{public}.0s:Detected CFAbsoluteTime rollback when reading usage score, PreviousTimestamp:%{public}f, Timestamp:%{public}f}", &__p, 0x26u);
          }
        }
      }

      v3[5] = 0.0;
      v3 = *v3;
    }

    while (v3);
  }
}

void sub_100787910(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100787934(uint64_t a1, void *a2, uint64_t a3)
{
  if (objc_opt_class())
  {
    [a2 pruneSecondaryDataOlderThan:CFAbsoluteTimeGetCurrent() + -432000.0];
    v5 = [[CLOSTransaction alloc] initWithDescription:"com.apple.locationd.reading-score-archive"];
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v6 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      v12 = 0;
      v13 = 2082;
      v14 = "";
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Updating the #reprompt location consumption score info from archive}", buf, 0x12u);
    }

    v7 = objc_autoreleasePoolPush();
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100787BB8;
    v10[3] = &unk_1024700A8;
    v10[4] = a3;
    [a2 iterateSecondaryData:objc_msgSend(a2 forField:"mappedSecondaryData") withHandler:{1, v10}];
    objc_autoreleasePoolPop(v7);
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v8 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      v12 = 0;
      v13 = 2082;
      v14 = "";
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Finished - Updating the #reprompt location consumption score info from archive}", buf, 0x12u);
    }
  }

  else
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v9 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      v12 = 0;
      v13 = 2082;
      v14 = "";
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLPLocationConsumptionScoreInfo doesn't exist in this platform.}", buf, 0x12u);
    }
  }
}

void sub_100787BB8(uint64_t a1, uint64_t a2)
{
  v3 = [[CLPLocationConsumptionScoreInfo alloc] initWithData:a2];
  sub_100787C1C(*(a1 + 32), v3);
}

void sub_100787C1C(void *a1, void *a2)
{
  if (!objc_opt_class())
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v5 = off_1025D47A8;
    if (!os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 68289026;
    *&buf[4] = 0;
    v15 = 2082;
    v16 = "";
    v6 = "{msg%{public}.0s:CLPLocationConsumptionScoreInfo doesn't exist in this platform.}";
    v7 = v5;
    v8 = OS_LOG_TYPE_DEFAULT;
LABEL_26:
    _os_log_impl(dword_100000000, v7, v8, v6, buf, 0x12u);
    return;
  }

  if ([@"com.apple.locationd.all-location-clients-stop" isEqualToString:{objc_msgSend(a2, "clientKey")}])
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v4 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      v15 = 2082;
      v16 = "";
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Detected locationd startup; marking all historical clients as stopped}", buf, 0x12u);
    }

    sub_1007876D0(a1);
    return;
  }

  if (![a2 clientKey])
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v13 = off_1025D47A8;
    if (!os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
    {
      return;
    }

    *buf = 68289026;
    *&buf[4] = 0;
    v15 = 2082;
    v16 = "";
    v6 = "{msg%{public}.0s:Detected clientKey is empty}";
    v7 = v13;
    v8 = OS_LOG_TYPE_DEBUG;
    goto LABEL_26;
  }

  sub_10000EC00(buf, [objc_msgSend(a2 "clientKey")]);
  v9 = sub_100046778(a1, buf);
  if (v17 < 0)
  {
    operator delete(*buf);
  }

  sub_10000EC00(buf, [@"com.apple.locationd.all-location-clients-stop" UTF8String]);
  v10 = sub_100046778(a1, buf);
  if (v17 < 0)
  {
    operator delete(*buf);
  }

  if ([a2 hasStartTime] && objc_msgSend(a2, "hasStopTime"))
  {
    *(v9 + 12) += 500;
    [a2 stopTime];
  }

  else if ([a2 hasStartTime])
  {
    [a2 startTime];
    v9[5] = v12;
    [a2 startTime];
  }

  else
  {
    if (![a2 hasScore])
    {
      return;
    }

    *(v9 + 12) += [a2 score];
    v9[5] = 0;
    [a2 stopTime];
  }

  v10[5] = v11;
}

void sub_100787F4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100787F74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (objc_opt_class())
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v6 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "Registering pruning activity with check-in criteria for location consumption score info archive.", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101930834();
    }

    v7 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_BOOL(v7, XPC_ACTIVITY_REPEATING, 1);
    xpc_dictionary_set_BOOL(v7, XPC_ACTIVITY_REQUIRES_CLASS_B, 1);
    xpc_dictionary_set_string(v7, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_MAINTENANCE);
    xpc_dictionary_set_int64(v7, XPC_ACTIVITY_INTERVAL, 86400);
    xpc_dictionary_set_int64(v7, XPC_ACTIVITY_GRACE_PERIOD, 14400);
    xpc_dictionary_set_BOOL(v7, XPC_ACTIVITY_ALLOW_BATTERY, 1);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1007881DC;
    handler[3] = &unk_1024700F8;
    handler[4] = a2;
    handler[5] = a1;
    handler[6] = a3;
    xpc_activity_register("CLClientManager.loc-consumption-pruning", v7, handler);
    xpc_release(v7);
  }

  else
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v8 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      v11 = 0;
      v12 = 2082;
      v13 = "";
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLPLocationConsumptionScoreInfo doesn't exist in this platform.}", buf, 0x12u);
    }
  }
}

void sub_1007881DC(void *a1, xpc_activity_t activity)
{
  v3 = a1[5];
  state = xpc_activity_get_state(activity);
  if (state == 2)
  {
    v5 = *(v3 + 40);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100788338;
    v8[3] = &unk_1024700D0;
    v8[4] = a1[4];
    v8[5] = v3;
    v8[6] = a1[6];
    [v5 async:v8];
  }

  else
  {
    v6 = state;
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v7 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289282;
      v10 = 0;
      v11 = 2082;
      v12 = "";
      v13 = 2050;
      v14 = v6;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:skip consumption score pruning activity, Current State:%{public}ld}", buf, 0x1Cu);
    }
  }
}

void sub_100788348(uint64_t a1, void *a2, uint64_t a3)
{
  if (objc_opt_class())
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v6 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      LOWORD(v48) = 2082;
      *(&v48 + 2) = "";
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Pruning location consumption score info archive.}", buf, 0x12u);
    }

    v38 = [[CLOSTransaction alloc] initWithDescription:"com.apple.locationd.pruning-score-archive"];
    context = objc_autoreleasePoolPush();
    sub_1007ADFF8(v44, a3);
    v7 = [a2 pruneAndGetSecondaryDataOlderThan:CFAbsoluteTimeGetCurrent() + -259200.0];
    if ([v7 length])
    {
      *buf = 0;
      *&v48 = buf;
      *(&v48 + 1) = 0x5812000000;
      v49 = sub_100788C48;
      v50 = sub_100788C54;
      v51 = &unk_10238AE8B;
      memset(v52, 0, sizeof(v52));
      v53 = 1065353216;
      v43[0] = _NSConcreteStackBlock;
      v43[1] = 3221225472;
      v43[2] = sub_100788C5C;
      v43[3] = &unk_102470120;
      v43[4] = buf;
      [a2 iterateSecondaryData:v7 forField:1 withHandler:v43];
      sub_1007876D0((v48 + 48));
      for (i = *(v48 + 64); i; i = *i)
      {
        v9 = i + 2;
        v10 = sub_1005D7C24(v44, i + 2);
        v11 = v10;
        if (v10)
        {
          *(v10 + 12) -= *(i + 12);
          if (qword_1025D47A0 != -1)
          {
            sub_10192D4D0();
          }

          v12 = off_1025D47A8;
          if (!os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
          {
            continue;
          }

          if (*(i + 39) < 0)
          {
            v9 = *v9;
          }

          v13 = -*(i + 12);
          v14 = *(v11 + 12);
          v54 = 68289794;
          v55 = 2082;
          v56 = "";
          v57 = 2082;
          v58 = v9;
          v59 = 1026;
          v60 = v13;
          v61 = 1026;
          v62 = v14;
          v15 = v12;
          v16 = OS_LOG_TYPE_DEBUG;
          v17 = "{msg%{public}.0s:Pruning LocationConsumptionUsageScore, Client:%{public, location:escape_only}s, ScoreAdjustment:%{public}d, NewScore:%{public}d}";
          v18 = 40;
        }

        else
        {
          if (qword_1025D47A0 != -1)
          {
            sub_10192D4D0();
          }

          v19 = off_1025D47A8;
          if (!os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
          {
            continue;
          }

          v54 = 68289026;
          v55 = 2082;
          v56 = "";
          v15 = v19;
          v16 = OS_LOG_TYPE_DEFAULT;
          v17 = "{msg%{public}.0s:#Warning Found a client in pruned data, that does not exist in memory.}";
          v18 = 18;
        }

        _os_log_impl(dword_100000000, v15, v16, v17, &v54, v18);
      }

      _Block_object_dispose(buf, 8);
      sub_1003C94DC(v52);
    }

    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v20 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_INFO, "Before rotation stopping the active clients", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10192DC88(buf);
      LOWORD(v54) = 0;
      v34 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLClientManager::pruneAndRotateLocationConsumptionScoreArchiveAndUpdateTheStateAccordingly(CLHRequestArchive *, ConsumptionScoreMap &)", "%s\n", v34);
      if (v34 != buf)
      {
        free(v34);
      }
    }

    v21 = objc_alloc_init(NSMutableArray);
    for (j = v45; j; j = *j)
    {
      if (*(j + 5) > 0.0)
      {
        v23 = j + 2;
        if (*(j + 39) < 0)
        {
          v23 = *v23;
        }

        v24 = [NSString stringWithUTF8String:v23];
        if ([(NSString *)v24 isEqualToString:@"com.apple.locationd.all-location-clients-stop"])
        {
          sub_1000ED87C(a1, a2, v44, 0);
          [v21 addObject:{+[NSNull null](NSNull, "null")}];
        }

        else
        {
          v25 = [CLClientKeyPath clientKeyPathWithClientKey:v24];
          sub_1000ED87C(a1, a2, v44, v25);
          [v21 addObject:v25];
        }
      }
    }

    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v26 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v26, OS_LOG_TYPE_DEFAULT, "Rotating location consumption score info archive.", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10192DC88(buf);
      LOWORD(v54) = 0;
      v35 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLClientManager::pruneAndRotateLocationConsumptionScoreArchiveAndUpdateTheStateAccordingly(CLHRequestArchive *, ConsumptionScoreMap &)", "%s\n", v35);
      if (v35 != buf)
      {
        free(v35);
      }
    }

    [a2 rotateSecondaryFile];
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v27 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_INFO, "After rotation resuming the stopped clients", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10192DC88(buf);
      LOWORD(v54) = 0;
      v36 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLClientManager::pruneAndRotateLocationConsumptionScoreArchiveAndUpdateTheStateAccordingly(CLHRequestArchive *, ConsumptionScoreMap &)", "%s\n", v36);
      if (v36 != buf)
      {
        free(v36);
      }
    }

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v28 = [v21 countByEnumeratingWithState:&v39 objects:v46 count:16];
    if (v28)
    {
      v29 = *v40;
      do
      {
        for (k = 0; k != v28; k = k + 1)
        {
          if (*v40 != v29)
          {
            objc_enumerationMutation(v21);
          }

          v31 = *(*(&v39 + 1) + 8 * k);
          if ([v31 isEqual:{+[NSNull null](NSNull, "null")}])
          {
            v32 = 0;
          }

          else
          {
            v32 = v31;
          }

          sub_10077AD68(a1, a2, v44, v32);
        }

        v28 = [v21 countByEnumeratingWithState:&v39 objects:v46 count:16];
      }

      while (v28);
    }

    sub_1003C94DC(v44);
    objc_autoreleasePoolPop(context);
  }

  else
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v33 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      LOWORD(v48) = 2082;
      *(&v48 + 2) = "";
      _os_log_impl(dword_100000000, v33, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLPLocationConsumptionScoreInfo doesn't exist in this platform.}", buf, 0x12u);
    }
  }
}

void sub_100788C5C(uint64_t a1, uint64_t a2)
{
  v3 = [[CLPLocationConsumptionScoreInfo alloc] initWithData:a2];
  sub_100787C1C((*(*(a1 + 32) + 8) + 48), v3);
}

void sub_100788CC8(uint64_t a1)
{
  if (objc_opt_class())
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v2 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "Resetting resetLocationAttributionIntervalArchive", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101930910();
    }

    v3 = [CLHRequestArchive alloc];
    sub_100565518(0, &v11);
    v4 = std::string::append(&v11, "locationAttributionInfo/", 0x18uLL);
    v5 = *&v4->__r_.__value_.__l.__data_;
    *&buf[16] = *(&v4->__r_.__value_.__l + 2);
    *buf = v5;
    v4->__r_.__value_.__l.__size_ = 0;
    v4->__r_.__value_.__r.__words[2] = 0;
    v4->__r_.__value_.__r.__words[0] = 0;
    if (buf[23] >= 0)
    {
      v6 = buf;
    }

    else
    {
      v6 = *buf;
    }

    *(a1 + 568) = [(CLHRequestArchive *)v3 initWithDirectory:[NSString itemCountThresholdForAutoCleanUp:"stringWithUTF8String:" stringWithUTF8String:v6], 500];
    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v11.__r_.__value_.__l.__data_);
    }

    [*(a1 + 568) setRotationInterval:-1.0];
    v7 = (a1 + 568);
    sub_100787F74(a1, *(a1 + 568), a1 + 528);
    Current = CFAbsoluteTimeGetCurrent();
    v9 = objc_alloc_init(CLPLocationConsumptionScoreInfo);
    [v9 setClientKey:@"com.apple.locationd.all-location-clients-stop"];
    [v9 setStopTime:Current];
    [v9 setScore:0];
    [*v7 writeSecondaryObject:v9 toField:1];
  }

  else
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v10 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLPLocationConsumptionScoreInfo doesn't exist in this platform.}", buf, 0x12u);
    }
  }
}

void sub_100788F30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

NSDate *sub_100788F6C(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 136) dictionaryForKey:+[NSString stringWithUTF8String:](NSString atKeyPath:"stringWithUTF8String:" defaultValue:{off_1025D6538[0]), a2, 0}];
  if (!v3)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v7 = off_1025D47A8;
    if (!os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
    {
      return 0;
    }

    v13 = 68289282;
    v14 = 0;
    v15 = 2082;
    v16 = "";
    v17 = 2114;
    v18 = a2;
    v8 = "{msg%{public}.0s:#luHistorical TranscriptSession not found - fetching dateIntervals, Client:%{public, location:escape_only}@}";
    v9 = v7;
    v10 = OS_LOG_TYPE_DEBUG;
    goto LABEL_15;
  }

  v4 = [v3 objectForKeyedSubscript:@"startDate"];
  if (!v4)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v11 = off_1025D47A8;
    if (!os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      return 0;
    }

    v13 = 68289282;
    v14 = 0;
    v15 = 2082;
    v16 = "";
    v17 = 2114;
    v18 = a2;
    v8 = "{msg%{public}.0s:#luHistorical transcriptStartDate not found, Client:%{public, location:escape_only}@}";
    v9 = v11;
    v10 = OS_LOG_TYPE_DEFAULT;
LABEL_15:
    _os_log_impl(dword_100000000, v9, v10, v8, &v13, 0x1Cu);
    return 0;
  }

  [v4 doubleValue];
  v5 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
  if (qword_1025D47A0 != -1)
  {
    sub_10028840C();
  }

  v6 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 68289538;
    v14 = 0;
    v15 = 2082;
    v16 = "";
    v17 = 2114;
    v18 = a2;
    v19 = 2114;
    v20 = v5;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#luHistorical transcriptStartDate, Client:%{public, location:escape_only}@, startDate:%{public, location:escape_only}@}", &v13, 0x26u);
  }

  return v5;
}

void sub_1007891C4(uint64_t a1, void *a2)
{
  v3 = [a2 count];
  v4 = v3 - 2;
  if (v3 >= 2)
  {
    v5 = v3 - 1;
    v6 = [a2 objectAtIndexedSubscript:v4];
    v14 = [a2 objectAtIndexedSubscript:v5];
    [objc_msgSend(v6 "endDate")];
    v8 = v7;
    [objc_msgSend(v14 "startDate")];
    if (v8 >= v9)
    {
      [objc_msgSend(v6 "startDate")];
      v10 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
      [objc_msgSend(v6 "endDate")];
      v12 = v11;
      [objc_msgSend(v14 "endDate")];
      if (v12 < v13)
      {
        [objc_msgSend(v14 "endDate")];
        [a2 replaceObjectAtIndex:v4 withObject:{objc_msgSend([NSDateInterval alloc], "initWithStartDate:endDate:", v10, +[NSDate dateWithTimeIntervalSinceReferenceDate:](NSDate, "dateWithTimeIntervalSinceReferenceDate:"))}];
      }

      [a2 removeObjectAtIndex:v5];
    }
  }
}

void sub_100789330(uint64_t a1, double a2, double a3)
{
  if ([*(a1 + 32) count] > *(*(*(a1 + 48) + 8) + 24) && (v6 = objc_msgSend(*(a1 + 32), "objectAtIndexedSubscript:")) != 0 && (v7 = v6, objc_msgSend(objc_msgSend(v6, "startDate"), "timeIntervalSinceReferenceDate"), v8 <= a2))
  {
    v9 = [*(a1 + 40) addObject:v7];
    ++*(*(*(a1 + 48) + 8) + 24);
  }

  else
  {
    v9 = [*(a1 + 40) addObject:{objc_msgSend([NSDateInterval alloc], "initWithStartDate:endDate:", +[NSDate dateWithTimeIntervalSinceReferenceDate:](NSDate, "dateWithTimeIntervalSinceReferenceDate:", a2), +[NSDate dateWithTimeIntervalSinceReferenceDate:](NSDate, "dateWithTimeIntervalSinceReferenceDate:", a3))}];
  }

  v10 = *(a1 + 40);

  sub_1007891C4(v9, v10);
}

void sub_100789448(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4)
{
  [*(a1 + 32) silo];
  if ((*(a1 + 1600) & 1) == 0 && *a3 == 1)
  {
    v7 = *(a4 + 4);
    *(a1 + 1600) = v7;
    if (v7 == 1)
    {
      if (qword_1025D47A0 != -1)
      {
        sub_10028840C();
      }

      v8 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
      {
        v9[0] = 68289026;
        v9[1] = 0;
        v10 = 2082;
        v11 = "";
        _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#dic rehydration on device first unlock}", v9, 0x12u);
      }

      [*(*(a1 + 1584) + 16) unregister:*(*(a1 + 1584) + 8) forNotification:1];
      sub_100789568(a1);
    }
  }
}

void sub_100789568(uint64_t a1)
{
  __p = 0;
  v28 = 0;
  v29 = 0;
  v2 = *(a1 + 912);
  v3 = (a1 + 920);
  if (v2 != (a1 + 920))
  {
    v4 = 0;
    do
    {
      if (v4 >= v29)
      {
        v5 = (v4 - __p) >> 3;
        if ((v5 + 1) >> 61)
        {
          sub_10028C64C();
        }

        v6 = (v29 - __p) >> 2;
        if (v6 <= v5 + 1)
        {
          v6 = v5 + 1;
        }

        if (v29 - __p >= 0x7FFFFFFFFFFFFFF8)
        {
          v7 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v7 = v6;
        }

        if (v7)
        {
          sub_10045E858(&__p, v7);
        }

        *(8 * v5) = v2[4];
        v4 = (8 * v5 + 8);
        v8 = (8 * v5 - (v28 - __p));
        memcpy(v8, __p, v28 - __p);
        v9 = __p;
        __p = v8;
        v28 = v4;
        v29 = 0;
        if (v9)
        {
          operator delete(v9);
        }
      }

      else
      {
        *v4 = v2[4];
        v4 += 8;
      }

      v28 = v4;
      v10 = v2[1];
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v11 = v2[2];
          v12 = *v11 == v2;
          v2 = v11;
        }

        while (!v12);
      }

      v2 = v11;
    }

    while (v11 != v3);
    for (i = __p; i != v4; ++i)
    {
      sub_10011219C(a1, *i);
    }
  }

  v14 = *(a1 + 936);
  v25 = a1;
  v15 = (a1 + 944);
  if (v14 != v15)
  {
    do
    {
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }

      v16 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
      {
        v17 = sub_100008880(v14[4]);
        v18 = v14[4];
        *buf = 68289538;
        v31 = 0;
        v32 = 2082;
        v33 = "";
        v34 = 2114;
        v35 = v17;
        v36 = 2050;
        v37 = v18;
        _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#dic triggerRetirement due to rehydration, ClientKeyPath:%{public, location:escape_only}@, this:%{public}p}", buf, 0x26u);
        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
        }
      }

      v19 = off_1025D47A8;
      if (os_signpost_enabled(off_1025D47A8))
      {
        v20 = sub_100008880(v14[4]);
        v21 = v14[4];
        *buf = 68289538;
        v31 = 0;
        v32 = 2082;
        v33 = "";
        v34 = 2114;
        v35 = v20;
        v36 = 2050;
        v37 = v21;
        _os_signpost_emit_with_name_impl(dword_100000000, v19, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#dic triggerRetirement due to rehydration", "{msg%{public}.0s:#dic triggerRetirement due to rehydration, ClientKeyPath:%{public, location:escape_only}@, this:%{public}p}", buf, 0x26u);
      }

      sub_10102CAF8(v14[4]);
      v22 = v14[1];
      if (v22)
      {
        do
        {
          v23 = v22;
          v22 = *v22;
        }

        while (v22);
      }

      else
      {
        do
        {
          v23 = v14[2];
          v12 = *v23 == v14;
          v14 = v23;
        }

        while (!v12);
      }

      v14 = v23;
    }

    while (v23 != v15);
  }

  v24 = *(v25 + 136);
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_10078A1A0;
  v26[3] = &unk_10246FC30;
  v26[4] = v25;
  [v24 iterateAllAnchorKeyPathsWithBlock:v26];
  if (__p)
  {
    v28 = __p;
    operator delete(__p);
  }
}

void sub_100789928(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_1000184F4(a1, a2);
  v7 = [objc_msgSend(a4 dictionaryForKey:@"DIC" defaultValue:{0), "objectForKeyedSubscript:", -[NSNumber stringValue](+[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", a3), "stringValue")}];
  if (v7)
  {
    v19 = v7;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    obj = [v7 allKeys];
    v8 = [obj countByEnumeratingWithState:&v20 objects:v31 count:16];
    if (!v8)
    {
      return;
    }

    v9 = *v21;
    while (1)
    {
      v10 = 0;
      do
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = [v19 objectForKeyedSubscript:*(*(&v20 + 1) + 8 * v10)];
        if (a3 > 3)
        {
          switch(a3)
          {
            case 4:
              operator new();
            case 5:
              operator new();
            case 6:
              if ([objc_msgSend(v11 objectForKey:{@"SessionActive", "BOOLValue"}])
              {
                operator new();
              }

              if (qword_1025D47A0 != -1)
              {
                sub_10192D4D0();
              }

              v16 = off_1025D47A8;
              if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
              {
                __p = 68289538;
                v25 = 2082;
                v26 = "";
                v27 = 2114;
                v28 = v6;
                v29 = 1026;
                v30 = 6;
                v13 = v16;
                v14 = "{msg%{public}.0s:#dic CLDaemonServiceSession session is not active. Will skip on being a butterfly, Client:%{public, location:escape_only}@, dicType:%{public}d}";
                goto LABEL_34;
              }

              goto LABEL_35;
          }
        }

        else
        {
          switch(a3)
          {
            case 1:
              operator new();
            case 2:
              operator new();
            case 3:
              if ([objc_msgSend(v11 objectForKey:{@"SessionActive", "BOOLValue"}])
              {
                operator new();
              }

              if (qword_1025D47A0 != -1)
              {
                sub_10192D4D0();
              }

              v15 = off_1025D47A8;
              if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
              {
                __p = 68289538;
                v25 = 2082;
                v26 = "";
                v27 = 2114;
                v28 = v6;
                v29 = 1026;
                v30 = 3;
                v13 = v15;
                v14 = "{msg%{public}.0s:#dic CLDaemonBackgroundActivitySession session is not active. Will skip on being a butterfly, Client:%{public, location:escape_only}@, dicType:%{public}d}";
                goto LABEL_34;
              }

              goto LABEL_35;
          }
        }

        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
        }

        v12 = off_1025D47A8;
        if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
        {
          __p = 68289538;
          v25 = 2082;
          v26 = "";
          v27 = 2114;
          v28 = v6;
          v29 = 1026;
          v30 = a3;
          v13 = v12;
          v14 = "{msg%{public}.0s:#Warning #dic rehydration, unrecognized dic type, Client:%{public, location:escape_only}@, dicType:%{public}d}";
LABEL_34:
          _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEFAULT, v14, &__p, 0x22u);
        }

LABEL_35:
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [obj countByEnumeratingWithState:&v20 objects:v31 count:16];
      if (!v8)
      {
        return;
      }
    }
  }

  if (qword_1025D47A0 != -1)
  {
    sub_10028840C();
  }

  v17 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    __p = 68289538;
    v25 = 2082;
    v26 = "";
    v27 = 2114;
    v28 = v6;
    v29 = 1026;
    v30 = a3;
    _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:skip #dic rehydration, specified dic type does not exists, Client:%{public, location:escape_only}@, dicType:%{public}d}", &__p, 0x22u);
  }
}

id sub_10078A1A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 136);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10078A218;
  v5[3] = &unk_10246FC80;
  v5[4] = v2;
  return [v3 iterateIdentitiesRelatedToKeyPath:a2 withBlock:v5];
}

void sub_10078A218(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (qword_1025D47A0 != -1)
  {
    sub_10028840C();
  }

  v4 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 68289282;
    v12 = 0;
    v13 = 2082;
    v14 = "";
    v15 = 2114;
    v16 = a2;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#dic #rehydration started, Client:%{public, location:escape_only}@}", &v11, 0x1Cu);
  }

  if ([*(v3 + 136) hasValueForKey:@"DIC" atKeyPath:a2])
  {
    v5 = [*(v3 + 136) readonlyStoreAtKeyPath:a2];
    sub_100789928(v3, a2, 3, v5);
    sub_100789928(v3, a2, 1, v5);
    sub_100789928(v3, a2, 2, v5);
    sub_100789928(v3, a2, 4, v5);
    sub_100789928(v3, a2, 6, v5);
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v6 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 68289282;
      v12 = 0;
      v13 = 2082;
      v14 = "";
      v15 = 2114;
      v16 = a2;
      v7 = "{msg%{public}.0s:#dic #rehydration completed, Client:%{public, location:escape_only}@}";
      v8 = v6;
      v9 = OS_LOG_TYPE_DEFAULT;
LABEL_14:
      _os_log_impl(dword_100000000, v8, v9, v7, &v11, 0x1Cu);
    }
  }

  else
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v10 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
    {
      v11 = 68289282;
      v12 = 0;
      v13 = 2082;
      v14 = "";
      v15 = 2114;
      v16 = a2;
      v7 = "{msg%{public}.0s:skip #rehydration No #dic, Client:%{public, location:escape_only}@}";
      v8 = v10;
      v9 = OS_LOG_TYPE_DEBUG;
      goto LABEL_14;
    }
  }
}

void sub_10078A488(uint64_t a1, uint64_t a2, void *a3)
{
  if ([*(a1 + 136) hasValueForKey:@"SubIdentities" atKeyPath:a2])
  {
    if ([a3 objectForKeyedSubscript:@"RemoteUsage"])
    {
      v4 = [a3 objectForKeyedSubscript:@"RemoteUsage"];
      v5 = [v4 allKeys];
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v6 = [v5 countByEnumeratingWithState:&v32 objects:v36 count:16];
      if (v6)
      {
        v7 = *v33;
        do
        {
          for (i = 0; i != v6; i = i + 1)
          {
            if (*v33 != v7)
            {
              objc_enumerationMutation(v5);
            }

            v9 = *(*(&v32 + 1) + 8 * i);
            [v4 objectForKeyedSubscript:v9];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [objc_msgSend(a3 objectForKeyedSubscript:{@"RemoteUsage", "setObject:forKeyedSubscript:", objc_msgSend(objc_msgSend(v4, "objectForKeyedSubscript:", v9), "objectAtIndexedSubscript:", 1), v9}];
            }
          }

          v6 = [v5 countByEnumeratingWithState:&v32 objects:v36 count:16];
        }

        while (v6);
      }
    }

    v10 = 0;
    while (1)
    {
      v31 = 0uLL;
      sub_10004F9C8(v10, &v31 + 1, &v31);
      v12 = *(&v31 + 1);
      v11 = v31;
      if (v31 != 0)
      {
        break;
      }

LABEL_20:
      if (++v10 == 24)
      {
        return;
      }
    }

    v27 = 0;
    v28 = &v27;
    v29 = 0x2020000000;
    v30 = 0;
    v23 = 0;
    v24 = &v23;
    v25 = 0x2020000000;
    v26 = 0;
    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v22 = 0x7FEFFFFFFFFFFFFFLL;
    v15 = 0;
    v16 = &v15;
    v17 = 0x2020000000;
    v18 = 0xBFF0000000000000;
    [*(a1 + 136) iterateIdentitiesRelatedToKeyPath:? withBlock:?];
    if (*(v28 + 24) == 1)
    {
      v13 = [NSNumber numberWithDouble:v20[3]];
    }

    else
    {
      if (*(v24 + 24) != 1)
      {
LABEL_19:
        _Block_object_dispose(&v15, 8);
        _Block_object_dispose(&v19, 8);
        _Block_object_dispose(&v23, 8);
        _Block_object_dispose(&v27, 8);
        goto LABEL_20;
      }

      v13 = [NSNumber numberWithDouble:v16[3]];
      v12 = v11;
    }

    [a3 setObject:v13 forKeyedSubscript:v12];
    goto LABEL_19;
  }
}

void sub_10078A7A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a35, 8);
  _Unwind_Resume(a1);
}

void sub_10078A7EC(void *a1, void *a2)
{
  v4 = a1[9];
  v5 = objc_autoreleasePoolPush();
  if (([a2 isEqual:a1[4]] & 1) == 0 && +[CLAuthorizationDatabase keyPath:sharesAuthWithKeyPath:](CLAuthorizationDatabase, "keyPath:sharesAuthWithKeyPath:", a2, a1[4]))
  {
    v6 = [*(v4 + 136) readonlyStoreAtKeyPath:a2];
    [v6 doubleForKey:a1[10] defaultValue:-1.0];
    v8 = v7;
    [v6 doubleForKey:a1[11] defaultValue:-1.0];
    if (v8 == -1.0)
    {
      if (v9 != -1.0)
      {
        *(*(a1[7] + 8) + 24) = 1;
        v11 = *(a1[8] + 8);
        if (*(v11 + 24) < v9)
        {
          *(v11 + 24) = v9;
        }
      }
    }

    else
    {
      *(*(a1[5] + 8) + 24) = 1;
      v10 = *(a1[6] + 8);
      if (v8 < *(v10 + 24))
      {
        *(v10 + 24) = v8;
      }
    }
  }

  objc_autoreleasePoolPop(v5);
}