uint64_t sub_100311054(uint64_t a1)
{
  v2 = *(a1 + 1168);
  if (v2)
  {
    sub_100008080(v2);
  }

  if (*(a1 + 927) < 0)
  {
    operator delete(*(a1 + 904));
  }

  v3 = *(a1 + 816);
  if (v3)
  {
    sub_100008080(v3);
  }

  v4 = *(a1 + 688);
  if (v4)
  {
    sub_100008080(v4);
  }

  return a1;
}

void *sub_1003110CC(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x10;
  v3 = v1 - 16;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    sub_10045E858(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return sub_10045E430(a1, &v10);
}

void sub_100311254(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_1003112A0(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      sub_1003EE744(result, v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

void *sub_1003113A8(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x400;
  v3 = v1 - 1024;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    sub_1003EE744(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return sub_1003112A0(a1, &v10);
}

void sub_100311530(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1003115D4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    sub_10014588C(result);

    operator delete();
  }

  return result;
}

id sub_10031162C(void *a1)
{
  v2 = [a1 binaryVersion];
  [a1 sizeOfType];
  if (v2)
  {
    if (getenv("_INTERSILO_UNIT_TEST"))
    {
      if (qword_1025D41A0 != -1)
      {
        sub_101A82AFC();
      }

      v3 = qword_1025D41A8;
      if (!os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_ERROR))
      {
        return 0;
      }

      v8 = 134218498;
      v9 = v2;
      v10 = 2048;
      v11 = 0;
      v12 = 2080;
      v13 = 0x8000000101CFD8BDLL & 0x7FFFFFFFFFFFFFFFLL;
      v4 = v3;
      v5 = OS_LOG_TYPE_ERROR;
    }

    else
    {
      if (qword_1025D41A0 != -1)
      {
        sub_101A82AFC();
      }

      v7 = qword_1025D41A8;
      if (!os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_FAULT))
      {
        return 0;
      }

      v8 = 134218498;
      v9 = v2;
      v10 = 2048;
      v11 = 0;
      v12 = 2080;
      v13 = 0x8000000101CFD8BDLL & 0x7FFFFFFFFFFFFFFFLL;
      v4 = v7;
      v5 = OS_LOG_TYPE_FAULT;
    }

    _os_log_impl(dword_100000000, v4, v5, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", &v8, 0x20u);
    return 0;
  }

  return [a1 cppObjectPtr];
}

id sub_1003117F4(uint64_t a1, int a2, void *a3)
{
  result = sub_100311844(a3);
  if (result)
  {
    v6 = a2;
    return (*(a1 + 24))(0, &v6, result, *(a1 + 32));
  }

  return result;
}

id sub_100311844(void *a1)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    return sub_1007DA610(a1);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {

      return sub_1003118E0(a1);
    }

    else
    {
      return 0;
    }
  }
}

id sub_1003118E0(void *a1)
{
  v2 = [a1 binaryVersion];
  [a1 sizeOfType];
  if (v2)
  {
    if (getenv("_INTERSILO_UNIT_TEST"))
    {
      if (qword_1025D41A0 != -1)
      {
        sub_10193E4E4();
      }

      v3 = qword_1025D41A8;
      if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_ERROR))
      {
        v6 = 134218498;
        v7 = v2;
        v8 = 2048;
        v9 = 0;
        v10 = 2080;
        v11 = 0x8000000101CA72F9 & 0x7FFFFFFFFFFFFFFFLL;
        _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", &v6, 0x20u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_10193E708();
      }
    }

    else
    {
      if (qword_1025D41A0 != -1)
      {
        sub_10193E4E4();
      }

      v5 = qword_1025D41A8;
      if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_FAULT))
      {
        v6 = 134218498;
        v7 = v2;
        v8 = 2048;
        v9 = 0;
        v10 = 2080;
        v11 = 0x8000000101CA72F9 & 0x7FFFFFFFFFFFFFFFLL;
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_FAULT, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", &v6, 0x20u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_10193E810();
      }
    }

    return 0;
  }

  else
  {

    return [a1 cppObjectPtr];
  }
}

void sub_100311AE4(uint64_t a1, int *a2, unsigned int *a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101BD3BE0();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLStepCountNotifier::onFitnessTrackingNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101BD3BF4();
    }

    v9 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2082;
      v17 = "activity";
      v18 = 2050;
      v19 = a4;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLStepCountNotifier::onFitnessTrackingNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_100311CB0(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_100311CB0(uint64_t a1, uint64_t a2, int *a3, unsigned int *a4)
{
  v4 = *a3;
  if (*a3 <= 8)
  {
    if (((1 << v4) & 0x1EE) != 0)
    {
      if (qword_1025D4270 != -1)
      {
        sub_101BD36D0();
      }

      v6 = qword_1025D4278;
      if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_ERROR))
      {
        v7 = *a3;
        v12[0] = 67240192;
        v12[1] = v7;
        _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_ERROR, "Fitness Tracking: Invalid notification type %{public}d", v12, 8u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101BD5594(a3);
      }
    }

    else if (v4)
    {
      v10 = *a4;
      v11 = a1 + 3944;

      sub_100F7648C(v11, v10);
    }

    else
    {
      v9 = (a1 + 440);
      if (*(a4 + 3) == 1)
      {
        sub_100311E80(v9);

        sub_100633128((a1 + 296));
      }

      else
      {
        sub_10062FB60(v9);

        sub_10062F7A4((a1 + 296));
      }
    }
  }
}

uint64_t sub_100311E80(void *a1)
{
  if (qword_1025D4230 != -1)
  {
    sub_1018EA5C0();
  }

  v2 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[1];
    v5 = 136315138;
    v6 = v3;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "Enabling the spectators for %s buffer", &v5, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018ECB10();
  }

  return (*(*a1 + 80))(a1);
}

id sub_100311F80(uint64_t a1)
{
  if (qword_1025D48A0 != -1)
  {
    sub_101B2BA00();
  }

  v2 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 8);
    v5 = 136315138;
    v6 = v3;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "Start spectator for src %s", &v5, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101B31D7C();
  }

  return [*(*(a1 + 392) + 16) register:*(*(a1 + 392) + 8) forNotification:7 registrationInfo:0];
}

__n128 sub_10031206C(uint64_t a1, uint64_t a2)
{
  *(a1 + 1224) = *a2;
  if (a1 + 1224 != a2)
  {
    sub_100306558((a1 + 1232), *(a2 + 8), *(a2 + 16), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 16) - *(a2 + 8)) >> 3));
  }

  result = *(a2 + 32);
  *(a1 + 1256) = result;
  return result;
}

double sub_1003121B8(uint64_t a1, double *a2)
{
  Current = CFAbsoluteTimeGetCurrent();
  v5 = *(a1 + 2360);
  if (v5)
  {
    v6 = Current;
    v7 = Current + *a2;
    sub_100073BF8(v5, v7);
    if (*(a1 + 3032))
    {
      sub_10000AED0(buf);
      sub_10022127C(*(a1 + 2360), &__p);
      sub_100220CA4(&__p, 2u, buf, v6, *a2);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      sub_10021CB90(*(a1 + 3032));
      sub_10000CE1C(buf);
    }
  }

  else
  {
    if (qword_1025D4640 != -1)
    {
      sub_101A4014C();
    }

    v8 = off_1025D4648;
    if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "Fence: ignoring, setNextTrackingWake, shutdown?", buf, 2u);
    }

    v7 = 0.0;
    if (sub_10000A100(121, 2))
    {
      sub_101A430FC();
    }
  }

  return v7;
}

NSDictionary *sub_100312310(uint64_t a1)
{
  v2 = *(a1 + 32);
  v7[0] = @"fixType";
  v3 = (v2 + 568);
  if (*(v2 + 591) < 0)
  {
    v3 = *v3;
  }

  v8[0] = [NSString stringWithUTF8String:v3];
  v7[1] = @"wifiFixDistanceBeforeAndAfterUseOfAssociatedAp";
  LODWORD(v4) = llround(*(a1 + 40));
  v8[1] = [NSNumber numberWithInt:v4];
  v7[2] = @"wifiFixLocationOfInterestTypeString";
  v5 = (v2 + 512);
  if (*(v2 + 535) < 0)
  {
    v5 = *v5;
  }

  v8[2] = [NSString stringWithUTF8String:v5];
  return [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:3];
}

void sub_100312454(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = sub_100312494(a1, a2);

  sub_100BCDED0(v2, v3, 0);
}

id sub_100312494(uint64_t a1, void *a2)
{
  v16 = +[NSMutableArray array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v2 = [a2 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v18;
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v18 != v4)
        {
          objc_enumerationMutation(a2);
        }

        v6 = *(*(&v17 + 1) + 8 * i);
        v7 = sub_10031265C([v6 userType]);
        v8 = sub_100312700([v6 placeType]);
        v9 = sub_100BD0A38([objc_msgSend(v6 "mapItem")]);
        v10 = sub_100BD0A38([v6 referenceLocation]);
        v11 = sub_100BD0B24([v6 mapItem], v9);
        v12 = [_CLPlaceInference alloc];
        [v6 confidence];
        [v16 addObject:{objc_msgSend(v12, "initWithUserType:placeType:placemark:referenceLocation:confidence:preferredName:loiIdentifier:", v7, v8, v11, v10, objc_msgSend(v6, "preferredName"), objc_msgSend(v6, "loiIdentifier"), v13)}];
      }

      v3 = [a2 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v3);
  }

  return v16;
}

unint64_t sub_10031265C(unint64_t result)
{
  if (result >= 5)
  {
    v5 = v1;
    v6 = v2;
    if (qword_1025D4790 != -1)
    {
      sub_101A11D98();
    }

    v3 = qword_1025D4798;
    if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
    {
      *v4 = 0;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_FAULT, "#dsa Please update userSpecificPlaceTypeFromRTUserType", v4, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101A14AF4();
    }

    return 0;
  }

  return result;
}

uint64_t sub_100312700(unint64_t a1)
{
  if (a1 < 5)
  {
    return qword_101CEFFE8[a1];
  }

  v6 = v1;
  v7 = v2;
  if (qword_1025D4790 != -1)
  {
    sub_101A11D98();
  }

  v4 = qword_1025D4798;
  if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
  {
    *v5 = 0;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_FAULT, "#dsa Please update placeInferencePlaceTypeFromRTPlaceType", v5, 2u);
  }

  if (sub_10000A100(121, 0))
  {
    sub_101A14BD8();
  }

  return 2;
}

NSDictionary *sub_1003127B4(uint64_t a1)
{
  v3[0] = @"sources";
  v4[0] = [NSString stringWithUTF8String:*(a1 + 32)];
  v3[1] = @"scanApsBin";
  v4[1] = [NSNumber numberWithInt:*(a1 + 40)];
  v3[2] = @"als";
  v4[2] = [NSNumber numberWithInt:*(a1 + 44)];
  v3[3] = @"tiles";
  v4[3] = [NSNumber numberWithInt:*(a1 + 48)];
  v3[4] = @"invalid";
  v4[4] = [NSNumber numberWithInt:*(a1 + 52)];
  v3[5] = @"unknown";
  v4[5] = [NSNumber numberWithInt:*(a1 + 56)];
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:6];
}

void *sub_100312944(void *a1, char **a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_102451BF8;
  sub_1003129A0((a1 + 3), a2);
  return a1;
}

uint64_t sub_1003129A0(uint64_t a1, char **a2)
{
  sub_10000EC00(&__p, *a2);
  CLConnectionMessage::CLConnectionMessage();
  if (v5 < 0)
  {
    operator delete(__p);
  }

  return a1;
}

void sub_1003129FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100312A90(uint64_t a1, void *a2)
{
  v4 = [a2 objectForKeyedSubscript:@"kCLLocationStreamingMessageKeyPayload"];
  v5 = [a2 objectForKeyedSubscript:@"kCLLocationStreamingMessageKeyType"];
  if (v5)
  {
    v6 = v5;
    if (qword_1025D47B0 != -1)
    {
      sub_1018BAD4C();
    }

    v7 = qword_1025D47B8;
    if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_INFO))
    {
      *buf = 68289282;
      *&buf[4] = 0;
      v19 = 2082;
      v20 = "";
      v21 = 2082;
      v22 = [v6 UTF8String];
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#Rapport Got message, type:%{public, location:escape_only}s}", buf, 0x1Cu);
    }

    v8 = [objc_msgSend(a2 objectForKeyedSubscript:{@"kCLLocationStreamingMessageKeyVersion", "intValue"}];
    sub_100312E54();
    sub_10000EC00(buf, [v6 UTF8String]);
    v9 = sub_10045EF04(&qword_102656D88, buf);
    if (SBYTE3(v22) < 0)
    {
      operator delete(*buf);
    }

    if (v9 == &qword_102656D90)
    {
      v10 = -1;
      v11 = -1;
    }

    else
    {
      v11 = *(v9 + 56);
      v10 = *(v9 + 60);
      if (v8 >= v11 && v8 <= v10)
      {
        v16 = *(a1 + 32);
        v17[0] = _NSConcreteStackBlock;
        v17[1] = 3221225472;
        v17[2] = sub_100312E98;
        v17[3] = &unk_10245D410;
        v17[4] = v6;
        v17[5] = v4;
        [v16 withClients:v17];
        return;
      }
    }

    if (qword_1025D47B0 != -1)
    {
      sub_1018BAD60();
    }

    v12 = qword_1025D47B8;
    if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v6 UTF8String];
      *buf = 68290050;
      v19 = 2082;
      v20 = "";
      v21 = 2082;
      v22 = v13;
      v23 = 1026;
      v24 = v8;
      v25 = 1026;
      v26 = v11;
      v27 = 1026;
      v28 = v10;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Received message of unsupported version, type:%{public, location:escape_only}s, declared version:%{public}d, minimum version:%{public}d, maximum version:%{public}d}", buf, 0x2Eu);
    }
  }

  else
  {
    if (qword_1025D47B0 != -1)
    {
      sub_1018BAD4C();
    }

    v14 = qword_1025D47B8;
    if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289283;
      *&buf[4] = 0;
      v19 = 2082;
      v20 = "";
      v21 = 2113;
      v22 = a2;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#Rapport Missing message type, message:%{private, location:escape_only}@}", buf, 0x1Cu);
      if (qword_1025D47B0 != -1)
      {
        sub_1018BAD60();
      }
    }

    v15 = qword_1025D47B8;
    if (os_signpost_enabled(qword_1025D47B8))
    {
      *buf = 68289283;
      *&buf[4] = 0;
      v19 = 2082;
      v20 = "";
      v21 = 2113;
      v22 = a2;
      _os_signpost_emit_with_name_impl(dword_100000000, v15, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#Rapport Missing message type", "{msg%{public}.0s:#Rapport Missing message type, message:%{private, location:escape_only}@}", buf, 0x1Cu);
    }
  }
}

void sub_100312E30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100312E54()
{
  if ((atomic_load_explicit(&qword_102656D80, memory_order_acquire) & 1) == 0)
  {
    sub_1018BAD88();
  }

  if (qword_102656D78 != -1)
  {
    sub_1018BAE08();
  }
}

void sub_100313250(uint64_t a1)
{
  sub_10026F120(a1);

  operator delete();
}

void sub_100313288(uint64_t a1, char a2)
{
  v3 = v2;
  if (qword_102634C20 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1003134C0(v6, qword_102634C78);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 134218240;
    *(v9 + 4) = *(a1 + 16);

    *(v9 + 12) = 1024;
    *(v9 + 14) = a2 & 1;
    _os_log_impl(dword_100000000, v7, v8, "AONSense,onALFWiFiNotification,count,%ld,done,%{BOOL}d", v9, 0x12u);

    v10 = *(a1 + 16);
    if (!v10)
    {
      return;
    }
  }

  else
  {

    v10 = *(a1 + 16);
    if (!v10)
    {
      return;
    }
  }

  v11 = *((swift_isaMask & *v3) + 0xE8);
  v12 = *(type metadata accessor for ALWiFiNotification() - 8);
  v13 = a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
  v14 = *(v12 + 72);
  do
  {
    v11(v13);
    v13 += v14;
    --v10;
  }

  while (v10);
}

uint64_t sub_1003134C0(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void sub_1003134F8(uint64_t a1)
{
  v2 = type metadata accessor for ALWiFiScanResult();
  v114 = *(v2 - 8);
  v115 = v2;
  v3 = *(v114 + 64);
  (__chkstk_darwin)();
  v112 = &v104 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1003D6474(&qword_102634CA8);
  (__chkstk_darwin)();
  v5 = &v104 - v4;
  v122 = a1;
  ALWiFiNotification.scanResult.getter();
  v7 = v114;
  v6 = v115;
  if ((*(v114 + 48))(v5, 1, v115) == 1)
  {
    sub_1003D6658(v5, &qword_102634CA8);
    if (qword_102634C20 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_1003134C0(v8, qword_102634C78);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(dword_100000000, v9, v10, "AONSense,onEachNotfication,ScanResult,nil,return", v11, 2u);
    }
  }

  else
  {
    (*(v7 + 32))(v112, v5, v6);
    v12 = type metadata accessor for ALTimeStamp();
    v109 = &v104;
    v110 = *(v12 - 8);
    v111 = v12;
    (__chkstk_darwin)();
    v108 = &v104 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_1003D6474(&qword_102634CB0);
    (__chkstk_darwin)();
    v15 = &v104 - v14;
    ALWiFiNotification.timestamp.getter();
    v17 = v110;
    v16 = v111;
    if ((*(v110 + 48))(v15, 1, v111) == 1)
    {
      sub_1003D6658(v15, &qword_102634CB0);
      if (qword_102634C20 != -1)
      {
        swift_once();
      }

      v18 = type metadata accessor for Logger();
      sub_1003134C0(v18, qword_102634C78);
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(dword_100000000, v19, v20, "AONSense,onEachNotfication,timestamp,nil,return", v21, 2u);
      }

      (*(v114 + 8))(v112, v115);
    }

    else
    {
      (*(v17 + 32))(v108, v15, v16);
      v22 = COERCE_DOUBLE(ALTimeStamp.cfAbsoluteTimeSec.getter());
      if (v23)
      {
        v24 = 0.0;
      }

      else
      {
        v24 = v22;
      }

      Current = CFAbsoluteTimeGetCurrent();
      if (qword_102634C20 != -1)
      {
        swift_once();
      }

      v26 = type metadata accessor for Logger();
      v107 = sub_1003134C0(v26, qword_102634C78);
      sub_10001CF3C();
      sub_10001CF3C();
      sub_10001CF3C();
      v27 = sub_10001CF3C();
      __chkstk_darwin(v27);
      v28 = &v104 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v114 + 16))(v28, v112, v115);
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 68158720;
        *(v31 + 4) = 2;
        *(v31 + 8) = 2048;
        *(v31 + 10) = v24;
        *(v31 + 18) = 1040;
        *(v31 + 20) = 3;
        *(v31 + 24) = 2048;
        *(v31 + 26) = Current - v24;
        *(v31 + 34) = 2048;
        v32 = *(ALWiFiScanResult.accessPoints.getter() + 16);

        v105 = *(v114 + 8);
        v105(v28, v115);
        *(v31 + 36) = v32;
        _os_log_impl(dword_100000000, v29, v30, "AONSense,onEachNotfication,ScanResult,time,%.*f,age,%.*f,aps,%ld", v31, 0x2Cu);
      }

      else
      {
        v105 = *(v114 + 8);
        v105(v28, v115);
      }

      v128 = 0u;
      v129 = 0u;
      v127 = 0u;
      memset(v126, 0, sizeof(v126));
      sub_1003144F4(v126);
      BYTE8(v129) = ALWiFiNotification.simulated.getter() & 1;
      BYTE9(v129) = ALWiFiNotification.available.getter() & 1;
      v33 = ALWiFiNotification.associatedMac.getter();
      if (v34)
      {
        v35 = Logger.logObject.getter();
        v36 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          *v37 = 0;
          _os_log_impl(dword_100000000, v35, v36, "AONSense,associatedState,nil", v37, 2u);
        }

        sub_100314518(v125, &byte_102637A70);
        v38 = OBJC_IVAR____TtC10CLAONSense21CLAONSenseWiFiService_associatedState;
        v39 = v116;
        swift_beginAccess();
        sub_100314574(v39 + v38);
        sub_1013B1B44(v39 + v38, v125);
        sub_100314574(v125);
        swift_endAccess();
      }

      else
      {
        v40 = v33;
        v41 = OBJC_IVAR____TtC10CLAONSense21CLAONSenseWiFiService_associatedState;
        v42 = v116;
        swift_beginAccess();
        sub_100314518(v125, v42 + v41);
        LOBYTE(v42) = sub_10031451C(v125, v40);
        sub_100314574(v125);
        if ((v42 & 1) == 0)
        {
          v43 = nullsub_34(v40);
          sub_1013B2DF0(v125, v43);
          sub_100314600(v125, 1);
          v44 = v116;
          swift_beginAccess();
          sub_100314608(v44 + v41, v125);
          swift_endAccess();
          v45 = type metadata accessor for ALWiFiNotification();
          v46 = *(v45 - 8);
          __chkstk_darwin(v45);
          v48 = &v104 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v46 + 16))(v48, v122, v45);
          v49 = Logger.logObject.getter();
          v50 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v49, v50))
          {
            v51 = swift_slowAlloc();
            *v51 = 134283521;
            v52 = ALWiFiNotification.associatedMac.getter();
            if (v53)
            {
              v54 = 0;
            }

            else
            {
              v54 = v52;
            }

            (*(v46 + 8))(v48, v45);
            *(v51 + 4) = v54;
            _os_log_impl(dword_100000000, v49, v50, "AONSense,associatedState,update,%{private}llx", v51, 0xCu);
          }

          else
          {
            (*(v46 + 8))(v48, v45);
          }

          sub_10031466C(v125);
        }
      }

      *(&v127 + 1) = v24;
      v106 = ALWiFiScanResult.accessPoints.getter();
      v55 = v106;
      v56 = *(v106 + 16);
      if (v56)
      {
        v113 = OBJC_IVAR____TtC10CLAONSense21CLAONSenseWiFiService_associatedState;
        v57 = type metadata accessor for ALWiFiScanSingleAccessPoint();
        v58 = v57;
        v59 = *(v57 - 8);
        v60 = *(v59 + 16);
        v120 = v59 + 16;
        v121 = v60;
        v61 = v55 + ((*(v59 + 80) + 32) & ~*(v59 + 80));
        v62 = *(v59 + 64);
        v118 = *(v59 + 72);
        v119 = v62;
        v117 = (v59 + 8);
        do
        {
          v123 = &v104;
          __chkstk_darwin(v57);
          v64 = &v104 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
          v65 = v58;
          v121(v64, v61, v58);
          v66 = ALWiFiScanSingleAccessPoint.ageSec.getter();
          v67 = ALWiFiScanSingleAccessPoint.mac.getter();
          if (v68)
          {
            v67 = 0;
          }

          v69 = nullsub_34(v67);
          if ((v66 & dword_100000000) != 0)
          {
            v70 = 0.0;
          }

          else
          {
            v70 = *&v66;
          }

          memset(&v124, 0, sizeof(v124));
          sub_1003145B4(&v124);
          v71 = ALWiFiScanSingleAccessPoint.rssidB.getter();
          if ((v71 & dword_100000000) != 0)
          {
            v72 = 0;
          }

          else
          {
            v72 = v71;
          }

          v73 = ALWiFiScanSingleAccessPoint.channel.getter();
          if ((v73 & dword_100000000) != 0)
          {
            v74 = 0;
          }

          else
          {
            v74 = v73;
          }

          v75 = ALWiFiScanSingleAccessPoint.isAph.getter();
          v76 = ALWiFiScanSingleAccessPoint.isMoving.getter();
          sub_1003145C0(v125, v69, &v124, v72, 0, v74, v75 & 1, v76 & 1, v70, v24 - v70);
          std::string::~string(&v124);
          v124.__r_.__value_.__r.__words[0] = sub_10018D3FC(v125);
          v77 = sub_10018D3FC(&v124);
          v78 = ALWiFiNotification.associatedMac.getter();
          v58 = v65;
          if ((v79 & 1) == 0 && v77 == v78)
          {
            sub_100314600(v125, 1);
            v80 = v116;
            v81 = v113;
            swift_beginAccess();
            sub_100314608(v80 + v81, v125);
            swift_endAccess();
          }

          v82 = CFAbsoluteTimeGetCurrent();
          sub_10031460C(v125, v82);
          sub_100314614(&v128, v125);
          sub_10031466C(v125);
          v57 = (*v117)(v64, v65);
          v61 += v118;
          --v56;
        }

        while (v56);
      }

      ALWiFiNotification.associatedMac.getter();
      if ((v83 & 1) == 0)
      {
        v84 = OBJC_IVAR____TtC10CLAONSense21CLAONSenseWiFiService_associatedState;
        v85 = v116;
        swift_beginAccess();
        sub_100314518(v125, v85 + v84);
        LOBYTE(v84) = sub_1003146A0(v125);
        sub_100314574(v125);
        if ((v84 & 1) == 0)
        {
          v86 = type metadata accessor for ALWiFiNotification();
          v87 = *(v86 - 8);
          __chkstk_darwin(v86);
          v89 = &v104 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v87 + 16))(v89, v122, v86);
          v90 = Logger.logObject.getter();
          v91 = static os_log_type_t.fault.getter();
          if (os_log_type_enabled(v90, v91))
          {
            v92 = swift_slowAlloc();
            *v92 = 134283521;
            v93 = ALWiFiNotification.associatedMac.getter();
            if (v94)
            {
              v95 = 0;
            }

            else
            {
              v95 = v93;
            }

            (*(v87 + 8))(v89, v86);
            *(v92 + 4) = v95;
            _os_log_impl(dword_100000000, v90, v91, "The associatedState NOT set though associatedMac is valid %{private}llx", v92, 0xCu);
          }

          else
          {
            (*(v87 + 8))(v89, v86);
          }
        }
      }

      v96 = OBJC_IVAR____TtC10CLAONSense21CLAONSenseWiFiService_associatedState;
      v97 = v116;
      swift_beginAccess();
      sub_100314574(&v126[8]);
      sub_100314518(&v126[8], v97 + v96);
      v98 = Logger.logObject.getter();
      v99 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v98, v99))
      {
        v100 = swift_slowAlloc();
        *v100 = 134217984;
        swift_beginAccess();
        sub_1013B2D40(&v124, &v128);
        v101 = sub_1013B2D94(&v124);
        sub_1013B2DB8(&v124.__r_.__value_.__l.__data_);
        *(v100 + 4) = v101;
        _os_log_impl(dword_100000000, v98, v99, "AONSense,onEachNotfication,data.scan.size,%ld", v100, 0xCu);
      }

      v102 = (*((swift_isaMask & *v116) + 0xC0))();
      if (v102)
      {
        v103 = [objc_allocWithZone(CLAONSenseWiFiNotification) init];
        swift_beginAccess();
        [v103 setData:v126];
        v102(v103);
        sub_100318B78(v102);
      }

      (*(v110 + 8))(v108, v111);
      v105(v112, v115);
      sub_100318B88(v126);
    }
  }
}

void sub_100314458(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x100314460);
  }

  _Unwind_Resume(a1);
}

double sub_1003144F4(uint64_t a1)
{
  *a1 = -256;
  *(a1 + 8) = 0;
  *(a1 + 96) = 0;
  result = 0.0;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0;
  return result;
}

BOOL sub_10031451C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 88) != 1)
  {
    return 0;
  }

  v5[3] = v2;
  v5[4] = v3;
  v5[0] = *a1;
  return sub_10018D3FC(v5) == a2;
}

uint64_t sub_100314574(uint64_t a1)
{
  if (*(a1 + 88) == 1 && *(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void *sub_1003145B4(void *result)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  return result;
}

uint64_t sub_1003145C0(uint64_t result, uint64_t a2, __int128 *a3, int a4, int a5, int a6, char a7, char a8, double a9, double a10)
{
  *result = a2;
  v10 = *a3;
  *(result + 24) = *(a3 + 2);
  *(result + 8) = v10;
  *(a3 + 1) = 0;
  *(a3 + 2) = 0;
  *a3 = 0;
  *(result + 32) = a4;
  *(result + 36) = a5;
  *(result + 40) = a6;
  *(result + 48) = a9;
  *(result + 56) = a10;
  *(result + 64) = a7;
  *(result + 65) = a8;
  *(result + 68) = 0;
  *(result + 72) = 0;
  *(result + 80) = 0;
  return result;
}

uint64_t sub_100314614(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_10014E208(a1, a2);
  }

  else
  {
    sub_100314668(a1[1], a2);
    result = v3 + 88;
    a1[1] = v3 + 88;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_10031466C(uint64_t a1)
{
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t sub_100314704()
{
  v1 = (v0 + OBJC_IVAR____TtC10CLAONSense21CLAONSenseWiFiService__callback);
  swift_beginAccess();
  v2 = *v1;
  sub_100314760(*v1);
  return v2;
}

uint64_t sub_100314760(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void sub_1003147B4(uint64_t a1, void *a2)
{
  if (a2 && (v25 = *(a1 + 32), [a2 data]))
  {
    v24 = [a2 data];
    if (qword_1025D4620 != -1)
    {
      sub_1018CD624();
    }

    v3 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      v4 = [a2 type];
      v6 = v24[14];
      v5 = v24[15];
      v7 = v24[13];
      sub_100C5CFB0((v24 + 1), &__p);
      v8 = (v34 & 0x80000000) == 0 ? &__p : __p;
      *buf = 67240963;
      *&buf[4] = v4;
      v38 = 2050;
      v39 = v7;
      v40 = 2050;
      v41 = 0x2E8BA2E8BA2E8BA3 * ((v5 - v6) >> 3);
      v42 = 2081;
      v43 = v8;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "AONSense,wifiService,type,%{public}d,scanTime,%{public}.3f,count,%{public}zu,associated,%{private}s", buf, 0x26u);
      if (SBYTE3(v34) < 0)
      {
        operator delete(__p);
      }
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4620 != -1)
      {
        sub_1018CD58C();
      }

      v18 = [a2 type];
      v20 = v24[14];
      v19 = v24[15];
      v21 = v24[13];
      sub_100C5CFB0((v24 + 1), &v26);
      if (v29 >= 0)
      {
        v22 = &v26;
      }

      else
      {
        v22 = v26;
      }

      LODWORD(__p) = 67240963;
      HIDWORD(__p) = v18;
      v31 = 2050;
      v32 = v21;
      v33 = 2050;
      v34 = 0x2E8BA2E8BA2E8BA3 * ((v19 - v20) >> 3);
      v35 = 2081;
      v36 = v22;
      v23 = _os_log_send_and_compose_impl();
      if (v29 < 0)
      {
        operator delete(v26);
      }

      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLWifiService::startAONScanRequest()_block_invoke", "%s\n", v23);
      if (v23 != buf)
      {
        free(v23);
      }
    }

    v9 = objc_alloc_init(NSMutableArray);
    v10 = v24[14];
    v11 = v24[15];
    if (v10 != v11)
    {
      v12 = 0;
      do
      {
        [v9 addObject:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", (*(v10 + 56) + 0.5))}];
        if (qword_1025D4620 != -1)
        {
          sub_1018CD58C();
        }

        v13 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
        {
          sub_100C5CA98(v10, buf);
          v14 = buf;
          if ((v41 & 0x80000000) != 0)
          {
            v14 = *buf;
          }

          LODWORD(__p) = 67240451;
          HIDWORD(__p) = v12;
          v31 = 2081;
          v32 = v14;
          _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "AONSense,wifiService,ap,%{public}d,%{private}s", &__p, 0x12u);
          if (SBYTE3(v41) < 0)
          {
            operator delete(*buf);
          }

          ++v12;
        }

        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D4620 != -1)
          {
            sub_1018CD58C();
          }

          sub_100C5CA98(v10, &__p);
          p_p = &__p;
          if ((v34 & 0x80000000) != 0)
          {
            p_p = __p;
          }

          LODWORD(v26) = 67240451;
          HIDWORD(v26) = v12;
          v27 = 2081;
          v28 = p_p;
          v16 = _os_log_send_and_compose_impl();
          if (SBYTE3(v34) < 0)
          {
            operator delete(__p);
          }

          sub_100152C7C("Generic", 1, 0, 2, "BOOL CLWifiService::startAONScanRequest()_block_invoke", "%s\n", v16);
          if (v16 != buf)
          {
            free(v16);
          }

          ++v12;
        }

        v10 += 88;
      }

      while (v10 != v11);
    }

    [v25[85] processEventTimes:v9];
    *(v24 + 35) = 2;
    *buf = 12;
    (*(*v25 + 19))(v25, buf);
  }

  else
  {
    if (qword_1025D4620 != -1)
    {
      sub_1018CD624();
    }

    v17 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_FAULT, "AONSense,wifiService,data,null", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018D00C0();
    }
  }
}

void sub_100314D90(uint64_t a1, unsigned int *a2, __int16 *a3, void *a4)
{
  v6 = *a2;
  v7 = *a3;
  sub_1000FB724(v8, (a3 + 4));
  v12 = *(a3 + 13);
  memset(v13, 0, 24);
  sub_100288650(v13, *(a3 + 14), *(a3 + 15), 0x2E8BA2E8BA2E8BA3 * ((*(a3 + 15) - *(a3 + 14)) >> 3));
  v13[3] = *(a3 + 17);
  [a4 onWifiServiceNotification:v6 data:&v7];
  v14 = v13;
  sub_1000B96B4(&v14);
  if (v11 == 1 && v10 < 0)
  {
    operator delete(__p);
  }
}

void sub_100314EDC(uint64_t a1, unsigned int *a2, __int16 *a3, void *a4)
{
  v6 = *a2;
  v7 = *a3;
  sub_1000FB724(v8, (a3 + 4));
  v12 = *(a3 + 13);
  memset(v13, 0, 24);
  sub_100288650(v13, *(a3 + 14), *(a3 + 15), 0x2E8BA2E8BA2E8BA3 * ((*(a3 + 15) - *(a3 + 14)) >> 3));
  v13[3] = *(a3 + 17);
  [a4 onWiFiNotification:v6 data:&v7];
  v14 = v13;
  sub_1000B96B4(&v14);
  if (v11 == 1 && v10 < 0)
  {
    operator delete(__p);
  }
}

void sub_100314FE0(uint64_t a1, unsigned int *a2, __int16 *a3, void *a4)
{
  v6 = *a2;
  v7 = *a3;
  sub_1000FB724(v8, (a3 + 4));
  v12 = *(a3 + 13);
  memset(v13, 0, 24);
  sub_100288650(v13, *(a3 + 14), *(a3 + 15), 0x2E8BA2E8BA2E8BA3 * ((*(a3 + 15) - *(a3 + 14)) >> 3));
  v13[3] = *(a3 + 17);
  [a4 onWifiServiceNotification:v6 data:&v7];
  v14 = v13;
  sub_1000B96B4(&v14);
  if (v11 == 1 && v10 < 0)
  {
    operator delete(__p);
  }
}

void sub_1003150E4(uint64_t a1, unsigned int *a2, __int16 *a3, void *a4)
{
  v6 = *a2;
  v7 = *a3;
  sub_1000FB724(v8, (a3 + 4));
  v12 = *(a3 + 13);
  memset(v13, 0, 24);
  sub_100288650(v13, *(a3 + 14), *(a3 + 15), 0x2E8BA2E8BA2E8BA3 * ((*(a3 + 15) - *(a3 + 14)) >> 3));
  v13[3] = *(a3 + 17);
  [a4 onWifiServiceNotification:v6 data:&v7];
  v14 = v13;
  sub_1000B96B4(&v14);
  if (v11 == 1 && v10 < 0)
  {
    operator delete(__p);
  }
}

void sub_1003151E8(uint64_t a1, unsigned int *a2, __int16 *a3, void *a4)
{
  v6 = *a2;
  v7 = *a3;
  sub_1000FB724(v8, (a3 + 4));
  v12 = *(a3 + 13);
  memset(v13, 0, 24);
  sub_100288650(v13, *(a3 + 14), *(a3 + 15), 0x2E8BA2E8BA2E8BA3 * ((*(a3 + 15) - *(a3 + 14)) >> 3));
  v13[3] = *(a3 + 17);
  [a4 onWifiServiceNotification:v6 data:&v7];
  v14 = v13;
  sub_1000B96B4(&v14);
  if (v11 == 1 && v10 < 0)
  {
    operator delete(__p);
  }
}

uint64_t sub_1003152EC(uint64_t a1, uint64_t *a2, int a3)
{
  memset(v10, 0, sizeof(v10));
  sub_100288650(v10, *a2, a2[1], 0x2E8BA2E8BA2E8BA3 * ((a2[1] - *a2) >> 3));
  v6[0] = 0;
  v9 = 0;
  sub_1003153D0(a1, v10, a3, v6);
  if (v9 == 1 && v8 < 0)
  {
    operator delete(__p);
  }

  v11 = v10;
  sub_1000B96B4(&v11);
  return a1;
}

void sub_100315398(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  if (a23 == 1 && a15 < 0)
  {
    operator delete(__p);
  }

  *(v23 - 24) = v23 - 48;
  sub_1000B96B4((v23 - 24));
  _Unwind_Resume(a1);
}

uint64_t sub_1003153D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a1 + 24) = a3;
  sub_1000FB724((a1 + 32), a4);
  return a1;
}

void sub_10031542C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000B96B4(va);
  _Unwind_Resume(a1);
}

void sub_100315444(uint64_t a1, uint64_t a2)
{
  v5 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4 == 1)
  {
    if (*a1 == 1)
    {
      sub_100315678(a2, (a1 + 48));
    }

    sub_1008CB4E0(a1 + 96, -1171354717 * ((*(a2 + 8) - *a2) >> 3));
    memset(v9, 0, sizeof(v9));
    sub_100288650(v9, *a2, *(a2 + 8), 0x2E8BA2E8BA2E8BA3 * ((*(a2 + 8) - *a2) >> 3));
    v6 = v9;
    sub_100315A28(v9, @"bgScanCache");
    goto LABEL_9;
  }

  if (v4 == 2)
  {
    if (*a1 == 1)
    {
      sub_100315678(a2, (a1 + 8));
    }

    sub_100315A0C(a1 + 96, -1171354717 * ((*(a2 + 8) - *a2) >> 3));
    memset(v10, 0, sizeof(v10));
    sub_100288650(v10, *a2, *(a2 + 8), 0x2E8BA2E8BA2E8BA3 * ((*(a2 + 8) - *a2) >> 3));
    v6 = v10;
    sub_100315A28(v10, @"aonsensed");
LABEL_9:
    *buf = v6;
    sub_1000B96B4(buf);
    goto LABEL_16;
  }

  if (qword_1025D4620 != -1)
  {
    sub_101969CA8();
  }

  v7 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
  {
    v8 = sub_100C5D234(*v5);
    *buf = 136446210;
    *&buf[4] = v8;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_ERROR, "@Wsb, warning, received WSB scan from unsupported source %{public}s", buf, 0xCu);
  }

  if (sub_10000A100(121, 0))
  {
    sub_101969CBC(v5);
  }

LABEL_16:
  if (*a1 == 1)
  {
    sub_100316590(a1);
  }
}

void sub_100315654(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1000B96B4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100315678(uint64_t result, void *a2)
{
  v2 = *result;
  v3 = *(result + 8);
  if (*result != v3)
  {
    do
    {
      v9 = *v2;
      if (!sub_1002DFD60(a2, &v9))
      {
        memset(v8, 0, sizeof(v8));
        sub_100315788(a2, &v9);
        v10 = v8;
        sub_1000B96B4(&v10);
      }

      v5 = sub_1002DFD60(a2, &v9);
      if (!v5)
      {
        sub_1000432E8("unordered_map::at: key not found");
      }

      v6 = v5;
      v7 = v5[4];
      if (v7 >= v5[5])
      {
        result = sub_10014E208(v5 + 3, v2);
      }

      else
      {
        sub_1001005C4(v5[4], v2);
        result = v7 + 88;
        v6[4] = v7 + 88;
      }

      v6[4] = result;
      v2 += 11;
    }

    while (v2 != v3);
  }

  return result;
}

void sub_100315760(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14)
{
  a14 = &a10;
  sub_1000B96B4(&a14);
  _Unwind_Resume(a1);
}

void *sub_100315788(void *a1, void *a2)
{
  v4 = sub_10018D3FC(a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!sub_100195A00(v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

uint64_t sub_100315A0C(uint64_t result, int a2)
{
  *(result + 40) += a2;
  ++*(result + 52);
  return result;
}

void sub_100315A28(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1 != v3)
  {
    v4 = 0;
    v5 = *(v2 + 56);
    v43 = 0uLL;
    p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
    v44 = 0;
    v40 = 0;
    v41 = 0;
    v42 = 0;
    while (1)
    {
      if (vabdd_f64(v5, *(v2 + 56)) <= 4.0)
      {
        if (v4 >= v44)
        {
          goto LABEL_30;
        }
      }

      else
      {
        v7 = v43;
        v8 = v41;
        if (v41 >= v42)
        {
          v10 = 0xAAAAAAAAAAAAAAABLL * ((v41 - v40) >> 3);
          v11 = v10 + 1;
          if (v10 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            sub_10028C64C();
          }

          if (0x5555555555555556 * ((v42 - v40) >> 3) > v11)
          {
            v11 = 0x5555555555555556 * ((v42 - v40) >> 3);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v42 - v40) >> 3) >= 0x555555555555555)
          {
            v12 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v12 = v11;
          }

          v55[0] = &v40;
          if (v12)
          {
            sub_100288820(&v40, v12);
          }

          v13 = (8 * ((v41 - v40) >> 3));
          *v13 = 0;
          v13[1] = 0;
          v13[2] = 0;
          *v13 = v43;
          v13[2] = v44;
          v43 = 0uLL;
          v44 = 0;
          v9 = 24 * v10 + 24;
          v14 = (24 * v10 - (v41 - v40));
          memcpy(v13 - (v41 - v40), v40, v41 - v40);
          v15 = v40;
          v16 = v42;
          v40 = v14;
          v41 = v9;
          v42 = 0;
          *&buf[16] = v15;
          v54 = v16;
          *buf = v15;
          *&buf[8] = v15;
          sub_1003161FC(buf);
          p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
        }

        else
        {
          *v41 = 0;
          *(v8 + 1) = 0;
          *(v8 + 2) = 0;
          *v8 = v43;
          *(v8 + 2) = v44;
          v43 = 0uLL;
          v44 = 0;
          v9 = (v8 + 24);
        }

        v41 = v9;
        if (qword_1025D4630 != -1)
        {
          sub_101969B20();
        }

        v17 = 0x2E8BA2E8BA2E8BA3 * ((v4 - v7) >> 3);
        v18 = p_info[199];
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v19 = [a2 UTF8String];
          *buf = 136446978;
          *&buf[4] = v19;
          *&buf[12] = 2050;
          *&buf[14] = 0xAAAAAAAAAAAAAAABLL * ((v41 - v40) >> 3);
          *&buf[22] = 2050;
          v54 = v17;
          LOWORD(v55[0]) = 2050;
          *(v55 + 2) = v5;
          _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEFAULT, "@WsbGroupCheck, %{public}s, %{public}lu, aps, %{public}lu, time, %{public}.1f", buf, 0x2Au);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101969B48(buf);
          v21 = [a2 UTF8String];
          v45 = 136446978;
          v46 = v21;
          v47 = 2050;
          v48 = 0xAAAAAAAAAAAAAAABLL * ((v41 - v40) >> 3);
          v49 = 2050;
          v50 = v17;
          v51 = 2050;
          v52 = v5;
          v22 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "void createWsbGroups(CLWifiService_Type::AccessPointVector, NSString *)", "%s\n", v22);
          if (v22 != buf)
          {
            free(v22);
          }
        }

        v5 = *(v2 + 56);
        v20 = *(&v43 + 1);
        v4 = v43;
        while (v20 != v4)
        {
          if (*(v20 - 57) < 0)
          {
            operator delete(*(v20 - 80));
          }

          v20 -= 88;
        }

        *(&v43 + 1) = v4;
        if (v4 >= v44)
        {
LABEL_30:
          v4 = sub_10014E208(&v43, v2);
          goto LABEL_31;
        }
      }

      sub_1001005C4(v4, v2);
      v4 += 88;
LABEL_31:
      *(&v43 + 1) = v4;
      v2 += 88;
      if (v2 == v3)
      {
        v23 = v43;
        v24 = v41;
        if (v41 >= v42)
        {
          v27 = 0xAAAAAAAAAAAAAAABLL * ((v41 - v40) >> 3);
          v28 = v27 + 1;
          if (v27 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            sub_10028C64C();
          }

          if (0x5555555555555556 * ((v42 - v40) >> 3) > v28)
          {
            v28 = 0x5555555555555556 * ((v42 - v40) >> 3);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v42 - v40) >> 3) >= 0x555555555555555)
          {
            v29 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v29 = v28;
          }

          v55[0] = &v40;
          if (v29)
          {
            sub_100288820(&v40, v29);
          }

          v30 = (8 * ((v41 - v40) >> 3));
          *v30 = 0;
          v30[1] = 0;
          v30[2] = 0;
          *v30 = v43;
          v30[2] = v44;
          v43 = 0uLL;
          v44 = 0;
          v25 = 24 * v27 + 24;
          v31 = (24 * v27 - (v41 - v40));
          memcpy(v30 - (v41 - v40), v40, v41 - v40);
          v32 = v40;
          v33 = v42;
          v40 = v31;
          v41 = v25;
          v42 = 0;
          *&buf[16] = v32;
          v54 = v33;
          *buf = v32;
          *&buf[8] = v32;
          sub_1003161FC(buf);
        }

        else
        {
          *v41 = 0;
          *(v24 + 1) = 0;
          *(v24 + 2) = 0;
          *v24 = v43;
          *(v24 + 2) = v44;
          v43 = 0uLL;
          v44 = 0;
          v25 = (v24 + 24);
        }

        v41 = v25;
        if (qword_1025D4630 != -1)
        {
          sub_101969B20();
        }

        v34 = 0x2E8BA2E8BA2E8BA3 * ((v4 - v23) >> 3);
        v35 = p_info[199];
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          v36 = [a2 UTF8String];
          *buf = 136446978;
          *&buf[4] = v36;
          *&buf[12] = 2050;
          *&buf[14] = 0xAAAAAAAAAAAAAAABLL * ((v41 - v40) >> 3);
          *&buf[22] = 2050;
          v54 = v34;
          LOWORD(v55[0]) = 2050;
          *(v55 + 2) = v5;
          _os_log_impl(dword_100000000, v35, OS_LOG_TYPE_DEFAULT, "@WsbGroupCheck, %{public}s, %{public}lu, aps, %{public}lu, time, %{public}.1f", buf, 0x2Au);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101969B48(buf);
          v37 = [a2 UTF8String];
          v45 = 136446978;
          v46 = v37;
          v47 = 2050;
          v48 = 0xAAAAAAAAAAAAAAABLL * ((v41 - v40) >> 3);
          v49 = 2050;
          v50 = v34;
          v51 = 2050;
          v52 = v5;
          v38 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "void createWsbGroups(CLWifiService_Type::AccessPointVector, NSString *)", "%s\n", v38);
          if (v38 != buf)
          {
            free(v38);
          }
        }

        *buf = &v40;
        sub_1000F8D88(buf);
        *buf = &v43;
        sub_1000B96B4(buf);
        return;
      }
    }
  }

  if (qword_1025D4630 != -1)
  {
    sub_101969B8C();
  }

  v26 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    *&buf[4] = [a2 UTF8String];
    _os_log_impl(dword_100000000, v26, OS_LOG_TYPE_DEFAULT, "@WsbGroupCheck, %{public}s, empty", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101969BA0(a2);
  }
}

void sub_100316198(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, void **a21)
{
  a21 = &a14;
  sub_1000F8D88(&a21);
  a21 = &a17;
  sub_1000B96B4(&a21);
  _Unwind_Resume(a1);
}

void **sub_1003161FC(void **a1)
{
  sub_100316230(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_100316230(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    v4 = (i - 24);
    *(a1 + 16) = v4;
    v5 = v4;
    sub_1000B96B4(&v5);
  }
}

void sub_100316284(uint64_t a1, uint64_t **a2)
{
  v2 = *a2;
  if (*a2 != a2[1])
  {
    do
    {
      if (sub_100316684(v2) <= *(a1 + 88))
      {
        v2 += 11;
        v8 = a2[1];
      }

      else
      {
        if (qword_1025D4620 != -1)
        {
          sub_101969A30();
        }

        v5 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
        {
          sub_100C5CA98(v2, __p);
          v6 = v17 >= 0 ? __p : __p[0];
          *buf = 136380675;
          *&buf[4] = v6;
          _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "@Wsb, WsbScanComparator, removing AP %{private}s as it is too old", buf, 0xCu);
          if (v17 < 0)
          {
            operator delete(__p[0]);
          }
        }

        if (sub_10000A100(121, 2))
        {
          bzero(__p, 0x65CuLL);
          if (qword_1025D4620 != -1)
          {
            sub_101969A30();
          }

          sub_100C5CA98(v2, buf);
          v10 = buf;
          if (v13 < 0)
          {
            v10 = *buf;
          }

          v14 = 136380675;
          v15 = v10;
          v11 = _os_log_send_and_compose_impl();
          if (v13 < 0)
          {
            operator delete(*buf);
          }

          sub_100152C7C("Generic", 1, 0, 2, "void CLWsbScanComparator::removeAccessPointsTooOld(CLWifiService_Type::AccessPointVector &)", "%s\n", v11);
          if (v11 != __p)
          {
            free(v11);
          }
        }

        sub_1003166B0(__p, (v2 + 11), a2[1], v2);
        v8 = v7;
        for (i = a2[1]; i != v8; i -= 11)
        {
          if (*(i - 57) < 0)
          {
            operator delete(*(i - 10));
          }
        }

        a2[1] = v8;
      }
    }

    while (v2 != v8);
  }
}

void sub_10031650C(uint64_t a1, void *a2)
{
  for (i = a2[2]; i; i = sub_10031674C(a2, i))
  {
    while (1)
    {
      sub_100316284(a1, (i + 24));
      if (*(i + 24) == *(i + 32))
      {
        break;
      }

      i = *i;
      if (!i)
      {
        goto LABEL_6;
      }
    }
  }

LABEL_6:

  sub_1003167B0(a1, a2);
}

BOOL sub_100316590(uint64_t a1)
{
  for (i = *(a1 + 64); i; i = *i)
  {
    sub_1008DCF6C(a1, i + 2, i + 3);
  }

  sub_10031650C(a1, (a1 + 8));
  sub_10031650C(a1, (a1 + 48));
  v3 = *(a1 + 24);
  if (v3)
  {
    v4 = 0;
    do
    {
      v4 -= 1171354717 * ((v3[4] - v3[3]) >> 3);
      v3 = *v3;
    }

    while (v3);
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  sub_100316DE8(a1 + 96, v5);
  v6 = *(a1 + 64);
  if (v6)
  {
    v7 = 0;
    do
    {
      v7 -= 1171354717 * ((v6[4] - v6[3]) >> 3);
      v6 = *v6;
    }

    while (v6);
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  sub_100316DE0(a1 + 96, v8);
  sub_100316BC4((a1 + 96));

  return sub_10019C558((a1 + 96));
}

uint64_t sub_1003166B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      *a4 = *v5;
      if (*(a4 + 31) < 0)
      {
        operator delete(*(a4 + 8));
      }

      v7 = *(v5 + 8);
      *(a4 + 24) = *(v5 + 24);
      *(a4 + 8) = v7;
      *(v5 + 31) = 0;
      *(v5 + 8) = 0;
      v8 = *(v5 + 32);
      v9 = *(v5 + 48);
      v10 = *(v5 + 64);
      *(a4 + 80) = *(v5 + 80);
      *(a4 + 48) = v9;
      *(a4 + 64) = v10;
      *(a4 + 32) = v8;
      v5 += 88;
      a4 += 88;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t sub_10031674C(void *a1, uint64_t *a2)
{
  v2 = *a2;
  sub_100546628(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    if (v6 == 1)
    {
      v7 = v3 + 3;
      sub_1000B96B4(&v7);
    }

    operator delete(v3);
  }

  return v2;
}

void sub_1003167B0(uint64_t a1, uint64_t a2)
{
  for (i = *(a2 + 16); i; i = *i)
  {
    if (i[3] == i[4])
    {
      if (qword_1025D4620 != -1)
      {
        sub_101969A30();
      }

      v4 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_FAULT))
      {
        sub_10018F0D0(__p);
        v5 = __p;
        if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v5 = __p[0].__r_.__value_.__r.__words[0];
        }

        LODWORD(buf.__r_.__value_.__l.__data_) = 136380675;
        *(buf.__r_.__value_.__r.__words + 4) = v5;
        _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_FAULT, "@Wsb, failed validity check, mac %{private}s has 0 AP", &buf, 0xCu);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }
      }

      if (sub_10000A100(121, 0))
      {
        bzero(__p, 0x65CuLL);
        if (qword_1025D4620 != -1)
        {
          sub_101969A30();
        }

        sub_10018F0D0(&buf);
        v11 = _os_log_send_and_compose_impl();
        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(buf.__r_.__value_.__l.__data_);
        }

        sub_100152C7C("Generic", 1, 0, 0, "void CLWsbScanComparator::validityCheck(const std::unordered_map<CLMacAddress, CLWifiService_Type::AccessPointVector> &)", "%s\n", v11);
        if (v11 != __p)
        {
          free(v11);
        }
      }
    }

    v7 = i[3];
    v6 = i[4];
    while (v7 != v6)
    {
      if (sub_100316684(v7) > *(a1 + 88) + 0.2)
      {
        if (qword_1025D4620 != -1)
        {
          sub_101969A30();
        }

        v8 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
        {
          sub_100C5CA98(v7, __p);
          v9 = __p;
          if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v9 = __p[0].__r_.__value_.__r.__words[0];
          }

          LODWORD(buf.__r_.__value_.__l.__data_) = 136380931;
          *(buf.__r_.__value_.__r.__words + 4) = v9;
          WORD2(buf.__r_.__value_.__r.__words[1]) = 2050;
          *(&buf.__r_.__value_.__r.__words[1] + 6) = 0x3FC999999999999ALL;
          _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "@Wsb, failed validity check, ap is too old, %{private}s, buffer, %{public}.1f", &buf, 0x16u);
          if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p[0].__r_.__value_.__l.__data_);
          }
        }

        if (sub_10000A100(121, 2))
        {
          bzero(__p, 0x65CuLL);
          if (qword_1025D4620 != -1)
          {
            sub_101969A30();
          }

          sub_100C5CA98(v7, &buf);
          v10 = _os_log_send_and_compose_impl();
          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(buf.__r_.__value_.__l.__data_);
          }

          sub_100152C7C("Generic", 1, 0, 2, "void CLWsbScanComparator::validityCheck(const std::unordered_map<CLMacAddress, CLWifiService_Type::AccessPointVector> &)", "%s\n", v10);
          if (v10 != __p)
          {
            free(v10);
          }
        }
      }

      v7 += 11;
    }
  }
}

void sub_100316BC4(_DWORD *a1)
{
  if (qword_1025D4620 != -1)
  {
    sub_101963BC0();
  }

  v2 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    v4 = a1[16];
    v3 = a1[17];
    v14 = 67240448;
    v15 = v3;
    v16 = 1026;
    v17 = v4;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "@Wsb, WifiManager AP cache cnt, %{public}d, Aonsensed AP cache cnt, %{public}d", &v14, 0xEu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101963BD4(a1);
  }

  if (qword_1025D4620 != -1)
  {
    sub_101963CD8();
  }

  v5 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    v6 = a1[11];
    v7 = a1[12];
    v9 = a1[9];
    v8 = a1[10];
    v14 = 67240960;
    v15 = v6;
    v16 = 1026;
    v17 = v8;
    v18 = 1026;
    v19 = v7;
    v20 = 1026;
    v21 = v9;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "@Wsb, WifiManager AP total cnt, %{public}d, Aonsensed AP total cnt, %{public}d, NotificationScan AP total cnt, %{public}d, matched WSB AP cnt, %{public}d", &v14, 0x1Au);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101963D00(a1);
  }

  if (qword_1025D4620 != -1)
  {
    sub_101963CD8();
  }

  v10 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    v12 = a1[14];
    v11 = a1[15];
    v13 = a1[13];
    v14 = 67240704;
    v15 = v12;
    v16 = 1026;
    v17 = v11;
    v18 = 1026;
    v19 = v13;
    _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "@Wsb, WifiManager WSB notifications, %{public}d, scan notifications, %{public}d, Aonsensed notifications, %{public}d", &v14, 0x14u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101963E18(a1);
  }
}

BOOL sub_100316DF0(char *a1)
{
  sub_10001A3E8();
  v2 = sub_100316E74();
  v3 = sub_100316E68();
  v4 = v3 + 4;
  v5 = v2 == 0;
  if (v2)
  {
    v6 = 7;
  }

  else
  {
    v6 = 5;
  }

  if (!v5)
  {
    v4 = v3 + 6;
  }

  v7 = *v4;
  v8 = sub_100316E68()[v6];

  return sub_100316EDC(a1, v7 & 1, v8);
}

uint64_t sub_100316E74()
{
  if (qword_1026590E8 != -1)
  {
    sub_10015EEE0();
  }

  if (qword_1026592D8 != -1)
  {
    sub_10191B9BC();
  }

  return ((dword_1026592D0 - 182) < 0x3B) & (0x7000000000000FFuLL >> (dword_1026592D0 + 74));
}

BOOL sub_100316EDC(char *a1, BOOL a2, BOOL a3)
{
  if (a1 == 1)
  {
    sub_10001CAF4(&buf);
    v9 = 0;
    if (sub_10001CB4C(buf, "skipWifiManagerScans", &v9))
    {
      v5 = v9;
    }

    else
    {
      v5 = a3;
    }

LABEL_9:
    if (*(&buf + 1))
    {
      sub_100008080(*(&buf + 1));
    }

    return v5;
  }

  if (a1 == 2)
  {
    sub_10001CAF4(&buf);
    v9 = 0;
    if (sub_10001CB4C(buf, "skipAonsensedScans", &v9))
    {
      v5 = v9;
    }

    else
    {
      v5 = a2;
    }

    goto LABEL_9;
  }

  if (qword_1025D4620 != -1)
  {
    sub_101AE99A0();
  }

  v7 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf) = 136446210;
    *(&buf + 4) = sub_100C5D234(a1);
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_ERROR, "@Wsb, warning, unsupported WSB scan source %{public}s", &buf, 0xCu);
  }

  if (sub_10000A100(121, 0))
  {
    sub_101AE99B4(a1);
  }

  return 0;
}

void sub_100317054(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100008080(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_100317078(int *a1, uint64_t a2)
{
  v5 = a2;
  if ((sub_100317194(a1, &v5) & 1) == 0)
  {
    v7 = *a2;
    v8 = *(a2 + 16);
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *a2 = 0;
    v9 = *(a2 + 24);
    LOBYTE(v10) = 0;
    v17 = 0;
    if (*(a2 + 120) == 1)
    {
      v11 = *(a2 + 40);
      v4 = *(a2 + 80);
      v13 = *(a2 + 64);
      v14 = v4;
      v10 = *(a2 + 32);
      v12 = *(a2 + 56);
      *(a2 + 40) = 0;
      *(a2 + 48) = 0;
      *(a2 + 56) = 0;
      v15 = *(a2 + 96);
      v16 = *(a2 + 112);
      v17 = 1;
    }

    v6 = 8;
    sub_100103D88(a1, &v6);
    sub_1001039FC(&v6);
  }
}

void sub_100317178(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1001039FC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100317194(uint64_t a1, uint64_t *a2)
{
  result = 0;
  v4 = *a1 ^ (*a1 >> 31);
  if ((v4 - 9) >= 0x15)
  {
    if (v4 > 7)
    {
      if (v4 > 29)
      {
        if (v4 > 34)
        {
          if (v4 > 38)
          {
            sub_10053508C();
          }
        }

        else if (v4 <= 31)
        {
          if (v4 != 30)
          {
            sub_10053508C();
          }
        }

        else if (v4 != 32 && v4 != 33)
        {
          sub_10053508C();
        }
      }

      else if (v4 == 8)
      {
        v5 = *a2;
        sub_1000BB5F0((a1 + 8));
        *(a1 + 8) = *v5;
        *(a1 + 24) = *(v5 + 16);
        *v5 = 0;
        *(v5 + 8) = 0;
        *(v5 + 16) = 0;
        *(a1 + 32) = *(v5 + 24);
        sub_1000F8A78(a1 + 40, v5 + 32);
        return 1;
      }
    }

    else if (v4 < 8)
    {
      return result;
    }

    sub_10053508C();
  }

  return result;
}

void sub_100317298(uint64_t a1, uint64_t a2)
{
  sub_1001039FC(*a1);
  v4 = *a1;
  *(v4 + 8) = 0;
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *(v4 + 8) = *a2;
  *(v4 + 24) = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(v4 + 32) = *(a2 + 24);
  *(v4 + 40) = 0;
  *(v4 + 128) = 0;
  if (*(a2 + 120) == 1)
  {
    *(v4 + 40) = *(a2 + 32);
    v5 = *(a2 + 40);
    *(v4 + 64) = *(a2 + 56);
    *(v4 + 48) = v5;
    *(a2 + 48) = 0;
    *(a2 + 56) = 0;
    *(a2 + 40) = 0;
    v6 = *(a2 + 64);
    v7 = *(a2 + 80);
    v8 = *(a2 + 96);
    *(v4 + 120) = *(a2 + 112);
    *(v4 + 104) = v8;
    *(v4 + 88) = v7;
    *(v4 + 72) = v6;
    *(v4 + 128) = 1;
  }

  **a1 = *(a1 + 8);
}

void sub_100317354(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 120) == 1 && *(a2 + 63) < 0)
  {
    operator delete(*(a2 + 40));
  }

  v3 = a2;
  sub_1000B96B4(&v3);
}

__n128 sub_1003173A4(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *v2 = 0;
  *(v2 + 8) = 0;
  *(v2 + 16) = 0;
  result = *a2;
  *v2 = *a2;
  *(v2 + 16) = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(v2 + 24) = *(a2 + 24);
  *(v2 + 32) = 0;
  *(v2 + 120) = 0;
  if (*(a2 + 120) == 1)
  {
    *(v2 + 32) = *(a2 + 32);
    v4 = *(a2 + 40);
    *(v2 + 56) = *(a2 + 56);
    *(v2 + 40) = v4;
    *(a2 + 48) = 0;
    *(a2 + 56) = 0;
    *(a2 + 40) = 0;
    result = *(a2 + 64);
    v5 = *(a2 + 80);
    v6 = *(a2 + 96);
    *(v2 + 112) = *(a2 + 112);
    *(v2 + 80) = v5;
    *(v2 + 96) = v6;
    *(v2 + 64) = result;
    *(v2 + 120) = 1;
  }

  return result;
}

void sub_100317428(uint64_t a1, uint64_t a2)
{
  v10 = 0uLL;
  v11 = 0;
  sub_100288650(&v10, *a2, *(a2 + 8), 0x2E8BA2E8BA2E8BA3 * ((*(a2 + 8) - *a2) >> 3));
  v12 = *(a2 + 24);
  sub_1000FB724(&v13, a2 + 32);
  sub_1001039FC(*a1);
  v4 = *a1;
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *(v4 + 8) = v10;
  *(v4 + 24) = v11;
  v10 = 0uLL;
  v11 = 0;
  *(v4 + 32) = v12;
  *(v4 + 40) = 0;
  *(v4 + 128) = 0;
  v5 = v20;
  if (v20 == 1)
  {
    *(v4 + 40) = v13;
    v6 = v15;
    *(v4 + 48) = *__p;
    *(v4 + 64) = v6;
    __p[1] = 0;
    v15 = 0;
    __p[0] = 0;
    v7 = v19;
    v8 = v16;
    v9 = v17;
    *(v4 + 104) = v18;
    *(v4 + 88) = v9;
    *(v4 + 72) = v8;
    *(v4 + 120) = v7;
    *(v4 + 128) = 1;
    v5 = v20;
  }

  **a1 = *(a1 + 8);
  if ((v5 & 1) != 0 && SHIBYTE(v15) < 0)
  {
    operator delete(__p[0]);
  }

  v21 = &v10;
  sub_1000B96B4(&v21);
}

void sub_100317564(_Unwind_Exception *a1)
{
  *(v2 - 40) = v1;
  sub_1000B96B4((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1003184A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, void *__p, uint64_t a49, int a50, __int16 a51, char a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61)
{
  *(v61 - 240) = &a38;
  sub_1000F8D88((v61 - 240));
  *(v61 - 240) = &a41;
  sub_1000B96B4((v61 - 240));
  *(v61 - 240) = &a44;
  sub_1000B96B4((v61 - 240));
  sub_1007BE994(a17);
  _Unwind_Resume(a1);
}

NSDictionary *sub_100318598(uint64_t a1)
{
  v2 = @"aps";
  v3 = [NSNumber numberWithUnsignedLong:*(a1 + 32)];
  return [NSDictionary dictionaryWithObjects:&v3 forKeys:&v2 count:1];
}

uint64_t sub_10031861C(uint64_t a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_10028C64C();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    sub_100288820(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  v17 = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  sub_100288650(24 * v2, *a2, a2[1], 0x2E8BA2E8BA2E8BA3 * ((a2[1] - *a2) >> 3));
  v8 = v16 + 24;
  v9 = *(a1 + 8) - *a1;
  v10 = &v15[-v9];
  memcpy(&v15[-v9], *a1, v9);
  v11 = *a1;
  *a1 = v10;
  *(a1 + 8) = v8;
  v12 = *(a1 + 16);
  *(a1 + 16) = v17;
  v16 = v11;
  v17 = v12;
  v14 = v11;
  v15 = v11;
  sub_1003161FC(&v14);
  return v8;
}

void sub_10031874C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1003161FC(va);
  _Unwind_Resume(a1);
}

void sub_100318760(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  if (*a2 != a3)
  {
    sub_100288978(a3, *v4, *(v4 + 8), 0x2E8BA2E8BA2E8BA3 * ((*(v4 + 8) - *v4) >> 3));
  }

  *(a3 + 24) = *(v4 + 24);

  sub_1000F8F80(a3 + 32, v4 + 32);
}

uint64_t **sub_100318AF8@<X0>(uint64_t **result@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 1065353216;
  v3 = *result;
  v4 = result[1];
  while (v3 != v4)
  {
    v5 = *v3;
    result = sub_100188540(a2, &v5);
    v3 += 11;
  }

  return result;
}

uint64_t sub_100318B78(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100318B88(uint64_t a1)
{
  v3 = (a1 + 112);
  sub_1000B96B4(&v3);
  if (*(a1 + 96) == 1 && *(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void sub_10031903C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_1007BE994(v13);
  _Unwind_Resume(a1);
}

void *sub_10031906C(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 5) < a2)
  {
    if (a2 < 0x2AAAAAAAAAAAAABLL)
    {
      sub_1001A1980(result, a2);
    }

    sub_10028C64C();
  }

  return result;
}

uint64_t sub_10031912C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, double **a4@<X3>, int a5@<W4>, uint64_t *a6@<X8>)
{
  v8 = *(a1 + 6440);
  sub_10031B59C(a6, 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  v9 = "reproc";
  if (!a5)
  {
    v9 = "live";
  }

  v132 = v9;
  if (qword_1025D4630 != -1)
  {
    sub_10196A1AC();
  }

  v10 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_INFO))
  {
    v11 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3);
    *buf = 134349314;
    *&buf[4] = v11;
    *&buf[12] = 2082;
    *&buf[14] = v132;
    _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_INFO, "@WsbCalc, groups, %{public}lu, %{public}s", buf, 0x16u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10196A168(buf);
    v119 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3);
    *v202 = 134349314;
    *&v202[4] = v119;
    *&v202[12] = 2082;
    *&v202[14] = v132;
    v120 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "std::vector<Types::ComputedLocation> CL::Wifi1::Policies::PositionCalculation::HandleEvent::processScanGroups(const CLWifiService_Type::AccessPointGroups &, const CLAssociatedApHistory &, const std::vector<CLWifiAPLocation> &, Types::WsbPassType) const", "%s\n", v120);
    if (v120 != buf)
    {
      free(v120);
    }
  }

  v12 = *a4;
  v13 = a4[1];
  if (*a4 != v13)
  {
    do
    {
      if (!sub_10019A2D4(v12))
      {
        sub_10196A1C0();
        abort_report_np();
        __break(1u);
      }

      v12 += 12;
    }

    while (v12 != v13);
    v12 = *a4;
    v13 = a4[1];
  }

  memset(v177, 0, sizeof(v177));
  v178 = 1065353216;
  while (v12 != v13)
  {
    *buf = *v12;
    sub_10019E484(v177, buf);
    v12 += 12;
  }

  v160 = 0;
  v161 = 0;
  v162 = xmmword_101C75BF0;
  __asm { FMOV            V0.2D, #-1.0 }

  v163 = _Q0;
  v164 = _Q0;
  v165 = _Q0;
  v159 = 0xFFFF;
  v166 = 0;
  v167 = 0xBFF0000000000000;
  v169 = 0;
  v168 = 0;
  v171 = 0xBFF0000000000000;
  v170 = 0;
  v172 = 0x7FFFFFFF;
  v174 = 0;
  v175 = 0;
  v173 = 0;
  v176 = 0;
  v127 = a2[1];
  if (*a2 == v127)
  {
    v133 = 0;
    v131 = 0;
    v130 = 0;
  }

  else
  {
    v19 = *a2;
    v131 = 0;
    v142 = 0;
    v130 = 0;
    v133 = 0;
    v126 = a5 == 1;
    do
    {
      v157 = 0;
      __src = 0;
      v158 = 0;
      v143 = v19;
      *buf = *(*v19 + 56);
      v155 = sub_10031B734(a3, buf);
      v20 = sub_1001E2678(&v155);
      LOBYTE(v148) = 0;
      v154 = 0;
      v21 = *v143;
      v22 = v143[1];
      if (*v143 == v22)
      {
        v23 = 0;
        v24 = 1;
      }

      else
      {
        v23 = 0;
        v24 = 1;
        do
        {
          if (*(v21 + 72))
          {
            if (v20 && (*buf = *v21, sub_100195A00(&v155, buf)))
            {
              if (qword_1025D4630 != -1)
              {
                sub_10196A140();
              }

              v25 = qword_1025D4638;
              if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
              {
                v201[0].__r_.__value_.__r.__words[0] = *v21;
                sub_10018F0D0(buf);
                v26 = buf;
                if (buf[23] < 0)
                {
                  v26 = *buf;
                }

                *v202 = 136380675;
                *&v202[4] = v26;
                _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_DEBUG, "@Wsb, consistent associated AP %{private}s between associated AP history and aonsensed", v202, 0xCu);
                if ((buf[23] & 0x80000000) != 0)
                {
                  operator delete(*buf);
                }
              }

              if (sub_10000A100(121, 2))
              {
                sub_10196A168(buf);
                *v179 = *v21;
                sub_10018F0D0(v202);
                v60 = v202;
                if (v202[23] < 0)
                {
                  v60 = *v202;
                }

                LODWORD(v201[0].__r_.__value_.__l.__data_) = 136380675;
                *(v201[0].__r_.__value_.__r.__words + 4) = v60;
                v61 = _os_log_send_and_compose_impl();
                if ((v202[23] & 0x80000000) != 0)
                {
                  operator delete(*v202);
                }

                sub_100152C7C("Generic", 1, 0, 2, "std::vector<Types::ComputedLocation> CL::Wifi1::Policies::PositionCalculation::HandleEvent::processScanGroups(const CLWifiService_Type::AccessPointGroups &, const CLAssociatedApHistory &, const std::vector<CLWifiAPLocation> &, Types::WsbPassType) const", "%s\n", v61);
                if (v61 != buf)
                {
                  free(v61);
                }
              }

              v24 = 1;
            }

            else
            {
              if (qword_1025D4630 != -1)
              {
                sub_10196A140();
              }

              v28 = qword_1025D4638;
              if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
              {
                sub_10018F0D0(buf);
                v29 = buf[23];
                v30 = *buf;
                *v179 = *v21;
                sub_10018F0D0(v202);
                v31 = buf;
                if (v29 < 0)
                {
                  v31 = v30;
                }

                v32 = v202;
                if (v202[23] < 0)
                {
                  v32 = *v202;
                }

                LODWORD(v201[0].__r_.__value_.__l.__data_) = 136380931;
                *(v201[0].__r_.__value_.__r.__words + 4) = v31;
                WORD2(v201[0].__r_.__value_.__r.__words[1]) = 2081;
                *(&v201[0].__r_.__value_.__r.__words[1] + 6) = v32;
                _os_log_impl(dword_100000000, v28, OS_LOG_TYPE_DEBUG, "@Wsb, warning, inconsistent associated AP %{private}s vs %{private}s between associated AP history and aonsensed", v201, 0x16u);
                if ((v202[23] & 0x80000000) != 0)
                {
                  operator delete(*v202);
                }

                if ((buf[23] & 0x80000000) != 0)
                {
                  operator delete(*buf);
                }
              }

              if (sub_10000A100(121, 2))
              {
                sub_10196A168(buf);
                sub_10018F0D0(v202);
                v55 = v202[23];
                v56 = *v202;
                v144 = *v21;
                sub_10018F0D0(v201);
                v57 = v202;
                if (v55 < 0)
                {
                  v57 = v56;
                }

                v58 = v201;
                if ((v201[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v58 = v201[0].__r_.__value_.__r.__words[0];
                }

                *v179 = 136380931;
                *&v179[4] = v57;
                *&v179[12] = 2081;
                *&v179[14] = v58;
                v59 = _os_log_send_and_compose_impl();
                if (SHIBYTE(v201[0].__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v201[0].__r_.__value_.__l.__data_);
                }

                if ((v202[23] & 0x80000000) != 0)
                {
                  operator delete(*v202);
                }

                sub_100152C7C("Generic", 1, 0, 2, "std::vector<Types::ComputedLocation> CL::Wifi1::Policies::PositionCalculation::HandleEvent::processScanGroups(const CLWifiService_Type::AccessPointGroups &, const CLAssociatedApHistory &, const std::vector<CLWifiAPLocation> &, Types::WsbPassType) const", "%s\n", v59);
                if (v59 != buf)
                {
                  free(v59);
                }
              }

              v24 = 0;
            }

            v27 = *v21;
            v155 = *v21;
            v23 = 1;
            v20 = 1;
          }

          else
          {
            v27 = *v21;
          }

          *buf = v27;
          v33 = sub_1002DFD60(v177, buf);
          if (v33)
          {
            v34 = *(v33 + 7);
            v35 = *(v33 + 9);
            v36 = *(v33 + 13);
            v193 = *(v33 + 11);
            v194 = v36;
            *&buf[32] = v34;
            v192 = v35;
            v37 = *(v33 + 5);
            *buf = *(v33 + 3);
            *&buf[16] = v37;
            sub_10019E848(buf, *(v21 + 32), *(v21 + 40), *(v21 + 56));
            v38 = v157;
            if (v157 >= v158)
            {
              v44 = __src;
              v45 = v157 - __src;
              v46 = 0xAAAAAAAAAAAAAAABLL * ((v157 - __src) >> 5);
              v47 = v46 + 1;
              if (v46 + 1 > 0x2AAAAAAAAAAAAAALL)
              {
                sub_10028C64C();
              }

              if (0x5555555555555556 * ((v158 - __src) >> 5) > v47)
              {
                v47 = 0x5555555555555556 * ((v158 - __src) >> 5);
              }

              if (0xAAAAAAAAAAAAAAABLL * ((v158 - __src) >> 5) >= 0x155555555555555)
              {
                v47 = 0x2AAAAAAAAAAAAAALL;
              }

              if (v47)
              {
                sub_1001A1980(&__src, v47);
              }

              v48 = (32 * ((v157 - __src) >> 5));
              v49 = *&buf[16];
              *v48 = *buf;
              v48[1] = v49;
              v50 = *&buf[32];
              v51 = v192;
              v52 = v194;
              v48[4] = v193;
              v48[5] = v52;
              v48[2] = v50;
              v48[3] = v51;
              v43 = 96 * v46 + 96;
              v53 = (96 * v46 - v45);
              memcpy(v48 - v45, v44, v45);
              v54 = __src;
              __src = v53;
              v157 = v43;
              v158 = 0;
              if (v54)
              {
                operator delete(v54);
              }
            }

            else
            {
              v39 = *&buf[16];
              *v157 = *buf;
              v38[1] = v39;
              v40 = *&buf[32];
              v41 = v192;
              v42 = v194;
              v38[4] = v193;
              v38[5] = v42;
              v38[2] = v40;
              v38[3] = v41;
              v43 = (v38 + 6);
            }

            v157 = v43;
            if (*(v21 + 72) == 1)
            {
              v150 = *&buf[32];
              v151 = v192;
              v152 = v193;
              v153 = v194;
              v148 = *buf;
              v149 = *&buf[16];
              if ((v154 & 1) == 0)
              {
                v154 = 1;
              }
            }
          }

          v21 += 88;
        }

        while (v21 != v22);
      }

      if (v20 && (v23 & 1) == 0)
      {
        if (qword_1025D4630 != -1)
        {
          sub_10196A140();
        }

        v62 = qword_1025D4638;
        if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
        {
          sub_10018F0D0(buf);
          v63 = buf;
          if (buf[23] < 0)
          {
            v63 = *buf;
          }

          *v202 = 136380675;
          *&v202[4] = v63;
          _os_log_impl(dword_100000000, v62, OS_LOG_TYPE_DEBUG, "@Wsb, warning, aonsensed does not have associated AP %{private}s from associated AP history", v202, 0xCu);
          if ((buf[23] & 0x80000000) != 0)
          {
            operator delete(*buf);
          }
        }

        if (sub_10000A100(121, 2))
        {
          sub_10196A168(buf);
          sub_10018F0D0(v202);
          v102 = v202;
          if (v202[23] < 0)
          {
            v102 = *v202;
          }

          LODWORD(v201[0].__r_.__value_.__l.__data_) = 136380675;
          *(v201[0].__r_.__value_.__r.__words + 4) = v102;
          v103 = _os_log_send_and_compose_impl();
          if ((v202[23] & 0x80000000) != 0)
          {
            operator delete(*v202);
          }

          sub_100152C7C("Generic", 1, 0, 2, "std::vector<Types::ComputedLocation> CL::Wifi1::Policies::PositionCalculation::HandleEvent::processScanGroups(const CLWifiService_Type::AccessPointGroups &, const CLAssociatedApHistory &, const std::vector<CLWifiAPLocation> &, Types::WsbPassType) const", "%s\n", v103);
          if (v103 != buf)
          {
            free(v103);
          }
        }

        v64 = sub_1002DFD60(v177, &v155);
        if (v64 && (v65 = *(v64 + 3), v66 = *(v64 + 5), v67 = *(v64 + 7), v68 = *(v64 + 9), v69 = *(v64 + 13), v152 = *(v64 + 11), v153 = v69, v150 = v67, v151 = v68, v148 = v65, v149 = v66, (v154 & 1) == 0))
        {
          v24 = 0;
          v154 = 1;
        }

        else
        {
          v24 = 0;
        }
      }

      v205 = 0;
      v206 = 0;
      v210 = 0;
      v211 = 0;
      memset(v202, 0, sizeof(v202));
      v203 = 0u;
      v204 = 0;
      v207 = 0;
      v208 = 0;
      v209 = 0;
      v212 = 0u;
      *v213 = 0u;
      *&v213[14] = 0x100000000000000;
      v214 = 0xFFFFFFFFLL;
      __p = 0u;
      memset(v216, 0, 32);
      v145 = 0;
      v144 = 0;
      v147 = 0;
      v146 = 0;
      sub_10019D234(0, &__src, &__src, &v159, &v159, 0, 0, &v144, buf, *(*v143 + 56), v202, 0);
      v70 = *a6;
      v71 = *a6 + 184 * v142;
      *(v71 + 128) = v197;
      *(v71 + 144) = v198;
      *(v71 + 160) = v199;
      *(v71 + 176) = v200;
      *(v71 + 64) = v193;
      *(v71 + 80) = v194;
      *(v71 + 96) = v195;
      *(v71 + 112) = v196;
      *v71 = *buf;
      *(v71 + 16) = *&buf[16];
      *(v71 + 32) = *&buf[32];
      *(v71 + 48) = v192;
      if (0xD37A6F4DE9BD37A7 * ((a6[1] - v70) >> 3) <= v142)
      {
        sub_10046F324();
      }

      *(v71 + 76) = *(*v143 + 56);
      v72 = (v71 + 76);
      *(v71 + 96) = 4;
      sub_1001A9A10(a1, v71);
      sub_10031B7D8(*(a1 + 5048), (v71 + 76), v201);
      if (v20)
      {
        if (qword_1025D4630 != -1)
        {
          sub_10196A140();
        }

        v73 = qword_1025D4638;
        if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
        {
          sub_10018F0D0(buf);
          v74 = buf;
          if (buf[23] < 0)
          {
            v74 = *buf;
          }

          *v179 = 136380675;
          *&v179[4] = v74;
          _os_log_impl(dword_100000000, v73, OS_LOG_TYPE_DEFAULT, "@WsbLoc, associated AP, %{private}s", v179, 0xCu);
          if ((buf[23] & 0x80000000) != 0)
          {
            operator delete(*buf);
          }
        }

        if (sub_10000A100(121, 2))
        {
          sub_10196A168(buf);
          sub_10018F0D0(v179);
          v105 = v179;
          if (v179[23] < 0)
          {
            v105 = *v179;
          }

          LODWORD(v187) = 136380675;
          *(&v187 + 4) = v105;
          v106 = _os_log_send_and_compose_impl();
          if ((v179[23] & 0x80000000) != 0)
          {
            operator delete(*v179);
          }

          sub_100152C7C("Generic", 1, 0, 2, "std::vector<Types::ComputedLocation> CL::Wifi1::Policies::PositionCalculation::HandleEvent::processScanGroups(const CLWifiService_Type::AccessPointGroups &, const CLAssociatedApHistory &, const std::vector<CLWifiAPLocation> &, Types::WsbPassType) const", "%s\n", v106);
          if (v106 != buf)
          {
            free(v106);
          }
        }

        sub_1001A7094(&v187);
        sub_10000EC00(v179, "WSB");
        sub_1001AE1C8(buf, &v155, &v148, &v187, a1 + 6528, v179, v201);
        if ((v179[23] & 0x80000000) != 0)
        {
          operator delete(*v179);
        }

        if (*(&v187 + 1))
        {
          sub_100008080(*(&v187 + 1));
        }

        sub_1001ABDBC(buf, v71);
        sub_1001E4D1C(buf);
        ++v130;
        sub_1001E314C(buf);
      }

      else
      {
        if (qword_1025D4630 != -1)
        {
          sub_10196A140();
        }

        v75 = qword_1025D4638;
        if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v75, OS_LOG_TYPE_DEFAULT, "@WsbLoc, associated AP, none", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_10196A168(buf);
          *v179 = 0;
          v104 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "std::vector<Types::ComputedLocation> CL::Wifi1::Policies::PositionCalculation::HandleEvent::processScanGroups(const CLWifiService_Type::AccessPointGroups &, const CLAssociatedApHistory &, const std::vector<CLWifiAPLocation> &, Types::WsbPassType) const", "%s\n", v104);
          if (v104 != buf)
          {
            free(v104);
          }
        }

        LODWORD(v131) = v131 + 1;
      }

      v76 = v133;
      if (*(v71 + 180))
      {
        v76 = v133 + 1;
      }

      v133 = v76;
      *(v71 + 88) = *(a1 + 6288) * 1.5;
      v77 = (v145 - v144) >> 3;
      v78 = (-1431655765 * v77);
      v79 = v147;
      v141 = v78 - v147;
      v139 = sub_10031BA04(v78 - v147, -1431655765 * v77, 100);
      v138 = sub_10031BA04(v79, v78, 100);
      v80 = -1171354717 * ((v143[1] - *v143) >> 3);
      v81 = (v157 - __src) >> 5;
      v82 = (-1431655765 * v81);
      v137 = sub_10031BA04(-1431655765 * v81, -1171354717 * ((v143[1] - *v143) >> 3), 100);
      v136 = sub_10031BA04(v80 - v82, v80, 100);
      v135 = sub_10031BA04(v78, v80, 100);
      v134 = sub_10031BA04(v78, v82, 100);
      v83 = +[NSMutableDictionary dictionary];
      v189[0] = @"aps";
      v190[0] = [NSNumber numberWithUnsignedInt:v78];
      v189[1] = @"alsAps";
      v190[1] = [NSNumber numberWithUnsignedInt:v141];
      v189[2] = @"tileAps";
      v190[2] = [NSNumber numberWithUnsignedInt:v79];
      v189[3] = @"percentAlsAps";
      v190[3] = [NSNumber numberWithInt:v139];
      v189[4] = @"percentTileAps";
      v190[4] = [NSNumber numberWithInt:v138];
      v189[5] = @"pass";
      v190[5] = [NSString stringWithUTF8String:v132];
      v190[6] = &__kCFBooleanFalse;
      v189[6] = @"isWifiFixWithAssociatedAp";
      v189[7] = @"wifiFixType";
      sub_10000EC00(buf, "NormalWifi1");
      if (buf[23] >= 0)
      {
        v84 = buf;
      }

      else
      {
        v84 = *buf;
      }

      v190[7] = [NSString stringWithUTF8String:v84];
      v189[8] = @"isConsistentAssociatedApBetweenAssociatedApHistoryAndAonsensed";
      v190[8] = [NSNumber numberWithBool:v24 & 1];
      v189[9] = @"apsInScanGroup";
      v190[9] = [NSNumber numberWithUnsignedInt:v80];
      v189[10] = @"apsWithLocationInScanGroup";
      v190[10] = [NSNumber numberWithUnsignedInt:v82];
      v189[11] = @"apsWithoutLocationInScanGroup";
      v190[11] = [NSNumber numberWithUnsignedInt:(v80 - v82)];
      v189[12] = @"percentApsWithLocationInScanGroup";
      v190[12] = [NSNumber numberWithUnsignedInt:v137];
      v189[13] = @"percentApsWithoutLocationInScanGroup";
      v190[13] = [NSNumber numberWithUnsignedInt:v136];
      v189[14] = @"percentApsInScanGroupUsedInLocation";
      v190[14] = [NSNumber numberWithUnsignedInt:v135];
      v189[15] = @"percentApsWithLocationUsedInLocation";
      v190[15] = [NSNumber numberWithUnsignedInt:v134];
      [v83 setDictionary:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", v190, v189, 16)}];
      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }

      if (sub_100072814(v71))
      {
        v85 = *(v71 + 20);
        if (v85 < 20.0)
        {
          v85 = 20.0;
        }

        *(v71 + 20) = v85;
        *(v71 + 128) = sub_10031BBF8(*(v71 + 84));
        sub_100027CA8(v71);
        if (qword_1025D4630 != -1)
        {
          sub_10196A140();
        }

        v86 = qword_1025D4638;
        if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
        {
          sub_1001D78F4(v179);
          v87 = v179;
          if (v179[23] < 0)
          {
            v87 = *v179;
          }

          v88 = 0x2E8BA2E8BA2E8BA3 * ((v143[1] - *v143) >> 3);
          *buf = 136644099;
          *&buf[4] = v87;
          *&buf[12] = 1026;
          *&buf[14] = v78;
          *&buf[18] = 2050;
          *&buf[20] = v88;
          *&buf[28] = 1026;
          *&buf[30] = v141;
          *&buf[34] = 1026;
          *&buf[36] = v79;
          *&buf[40] = 1026;
          *&buf[42] = v126;
          _os_log_impl(dword_100000000, v86, OS_LOG_TYPE_DEFAULT, "@WsbLoc, fix, %{sensitive}s, aps, %{public}d, scan group size, %{public}lu, alsAps, %{public}u, tileAps, %{public}u, reproc, %{public}d", buf, 0x2Eu);
          if ((v179[23] & 0x80000000) != 0)
          {
            operator delete(*v179);
          }
        }

        if (sub_10000A100(121, 2))
        {
          sub_10196A168(buf);
          sub_1001D78F4(&v187);
          v110 = &v187;
          if (v188 < 0)
          {
            v110 = v187;
          }

          v111 = 0x2E8BA2E8BA2E8BA3 * ((v143[1] - *v143) >> 3);
          *v179 = 136644099;
          *&v179[4] = v110;
          *&v179[12] = 1026;
          *&v179[14] = v78;
          *&v179[18] = 2050;
          *&v179[20] = v111;
          v180 = 1026;
          v181 = v141;
          v182 = 1026;
          v183 = v79;
          v184 = 1026;
          v185 = v126;
          v112 = _os_log_send_and_compose_impl();
          if (v188 < 0)
          {
            operator delete(v187);
          }

          sub_100152C7C("Generic", 1, 0, 2, "std::vector<Types::ComputedLocation> CL::Wifi1::Policies::PositionCalculation::HandleEvent::processScanGroups(const CLWifiService_Type::AccessPointGroups &, const CLAssociatedApHistory &, const std::vector<CLWifiAPLocation> &, Types::WsbPassType) const", "%s\n", v112);
          if (v112 != buf)
          {
            free(v112);
          }
        }

        v89 = *v72;
        if (qword_1025D4630 != -1)
        {
          sub_10196A140();
        }

        v90 = qword_1025D4638;
        v91 = (v8 - v89) / 60.0;
        if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
        {
          *buf = 67240706;
          *&buf[4] = v78;
          *&buf[8] = 2050;
          *&buf[10] = v91;
          *&buf[18] = 2082;
          *&buf[20] = v132;
          _os_log_impl(dword_100000000, v90, OS_LOG_TYPE_DEBUG, "WsbMetric, fix, aps, %{public}d, age, %{public}0.1f, %{public}s", buf, 0x1Cu);
        }

        if (sub_10000A100(121, 2))
        {
          sub_10196A168(buf);
          *v179 = 67240706;
          *&v179[4] = v78;
          *&v179[8] = 2050;
          *&v179[10] = v91;
          *&v179[18] = 2082;
          *&v179[20] = v132;
          v113 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "std::vector<Types::ComputedLocation> CL::Wifi1::Policies::PositionCalculation::HandleEvent::processScanGroups(const CLWifiService_Type::AccessPointGroups &, const CLAssociatedApHistory &, const std::vector<CLWifiAPLocation> &, Types::WsbPassType) const", "%s\n", v113);
          if (v113 != buf)
          {
            free(v113);
          }
        }

        [v83 setObject:&__kCFBooleanTrue forKeyedSubscript:@"fix"];
        [v83 setObject:+[NSNumber numberWithDouble:](NSNumber forKeyedSubscript:{"numberWithDouble:", v91), @"age"}];
        [v83 setObject:+[NSNumber numberWithBool:](NSNumber forKeyedSubscript:{"numberWithBool:", *(v71 + 180) != 0), @"isWifiFixWithAssociatedAp"}];
        sub_10000EC00(buf, (&off_10247D428)[*(v71 + 180)]);
        if (buf[23] >= 0)
        {
          v92 = buf;
        }

        else
        {
          v92 = *buf;
        }

        [v83 setObject:+[NSString stringWithUTF8String:](NSString forKeyedSubscript:{"stringWithUTF8String:", v92), @"wifiFixType"}];
        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }

        if (*(v71 + 180))
        {
          [v83 setObject:&off_10254F128 forKeyedSubscript:@"aps"];
          [v83 setObject:&off_10254F140 forKeyedSubscript:@"alsAps"];
          [v83 setObject:&off_10254F140 forKeyedSubscript:@"tileAps"];
          [v83 setObject:&off_10254F140 forKeyedSubscript:@"percentAlsAps"];
          [v83 setObject:&off_10254F140 forKeyedSubscript:@"percentTileAps"];
          [v83 setObject:&off_10254F140 forKeyedSubscript:@"percentApsInScanGroupUsedInLocation"];
          [v83 setObject:&off_10254F140 forKeyedSubscript:@"percentApsWithLocationUsedInLocation"];
        }

        sub_10031BC20(buf, v201);
        if (sub_10031BC54(buf, v71))
        {
          sub_1010CFFFC(buf, v71);
          v94 = *(v71 + 20);
          if (v94 > 0.0)
          {
            v95 = v93 / v94;
          }

          else
          {
            v95 = -1.0;
          }

          [v83 setObject:+[NSNumber numberWithDouble:](NSNumber forKeyedSubscript:{"numberWithDouble:"), @"horizontalError"}];
          [v83 setObject:+[NSNumber numberWithDouble:](NSNumber forKeyedSubscript:{"numberWithDouble:", v95), @"horizontalErrorRatio"}];
          *&v96 = sub_1010D0010(buf, v179).n128_u64[0];
          [v83 setObject:+[NSNumber numberWithUnsignedInt:](NSNumber forKeyedSubscript:{"numberWithUnsignedInt:", v186, v96), @"referenceLocationType"}];
        }

        AnalyticsSendEventLazy();
        ++HIDWORD(v131);
      }

      else
      {
        if (qword_1025D4630 != -1)
        {
          sub_10196A140();
        }

        v97 = qword_1025D4638;
        if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_INFO))
        {
          v98 = 0x2E8BA2E8BA2E8BA3 * ((v143[1] - *v143) >> 3);
          v99 = *v72;
          *buf = 134349568;
          *&buf[4] = v98;
          *&buf[12] = 1026;
          *&buf[14] = v126;
          *&buf[18] = 2050;
          *&buf[20] = v99;
          _os_log_impl(dword_100000000, v97, OS_LOG_TYPE_INFO, "@WsbLoc, none, aps, %{public}lu, reproc, %{public}d, time, %{public}.3f", buf, 0x1Cu);
        }

        if (sub_10000A100(121, 2))
        {
          sub_10196A168(buf);
          v107 = 0x2E8BA2E8BA2E8BA3 * ((v143[1] - *v143) >> 3);
          v108 = *v72;
          *v179 = 134349568;
          *&v179[4] = v107;
          *&v179[12] = 1026;
          *&v179[14] = v126;
          *&v179[18] = 2050;
          *&v179[20] = v108;
          v109 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "std::vector<Types::ComputedLocation> CL::Wifi1::Policies::PositionCalculation::HandleEvent::processScanGroups(const CLWifiService_Type::AccessPointGroups &, const CLAssociatedApHistory &, const std::vector<CLWifiAPLocation> &, Types::WsbPassType) const", "%s\n", v109);
          if (v109 != buf)
          {
            free(v109);
          }
        }

        [v83 setObject:&__kCFBooleanFalse forKeyedSubscript:@"fix"];
      }

      if (qword_1025D4630 != -1)
      {
        sub_10196A140();
      }

      v100 = qword_1025D4638;
      if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138477827;
        *&buf[4] = v83;
        _os_log_impl(dword_100000000, v100, OS_LOG_TYPE_DEBUG, "@WsbMetric, result, %{private}@", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10196A168(buf);
        *v179 = 138477827;
        *&v179[4] = v83;
        v101 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "std::vector<Types::ComputedLocation> CL::Wifi1::Policies::PositionCalculation::HandleEvent::processScanGroups(const CLWifiService_Type::AccessPointGroups &, const CLAssociatedApHistory &, const std::vector<CLWifiAPLocation> &, Types::WsbPassType) const", "%s\n", v101);
        if (v101 != buf)
        {
          free(v101);
        }
      }

      AnalyticsSendEventLazy();
      *buf = &v144;
      sub_1001E56E8(buf);
      *buf = &v216[8];
      sub_1001E56E8(buf);
      if (__p)
      {
        *(&__p + 1) = __p;
        operator delete(__p);
      }

      if (__src)
      {
        v157 = __src;
        operator delete(__src);
      }

      ++v142;
      v19 = v143 + 3;
    }

    while (v143 + 3 != v127);
  }

  if (qword_1025D4630 != -1)
  {
    sub_10196A140();
  }

  v114 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
  {
    v115 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3);
    *buf = 67240706;
    *&buf[4] = HIDWORD(v131);
    *&buf[8] = 2050;
    *&buf[10] = v115;
    *&buf[18] = 2082;
    *&buf[20] = v132;
    _os_log_impl(dword_100000000, v114, OS_LOG_TYPE_DEFAULT, "WsbCalc, computed, %{public}d, of, %{public}lu, %{public}s", buf, 0x1Cu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10196A168(buf);
    v121 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3);
    *v202 = 67240706;
    *&v202[4] = HIDWORD(v131);
    *&v202[8] = 2050;
    *&v202[10] = v121;
    *&v202[18] = 2082;
    *&v202[20] = v132;
    v122 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "std::vector<Types::ComputedLocation> CL::Wifi1::Policies::PositionCalculation::HandleEvent::processScanGroups(const CLWifiService_Type::AccessPointGroups &, const CLAssociatedApHistory &, const std::vector<CLWifiAPLocation> &, Types::WsbPassType) const", "%s\n", v122);
    if (v122 != buf)
    {
      free(v122);
    }
  }

  if (HIDWORD(v131))
  {
    if (qword_1025D4630 != -1)
    {
      sub_10196A140();
    }

    v116 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446466;
      *&buf[4] = v132;
      *&buf[12] = 1026;
      *&buf[14] = HIDWORD(v131);
      _os_log_impl(dword_100000000, v116, OS_LOG_TYPE_DEBUG, "WsbMetric, groupresult, %{public}s, %{public}d", buf, 0x12u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10196A168(buf);
      *v202 = 136446466;
      *&v202[4] = v132;
      *&v202[12] = 1026;
      *&v202[14] = HIDWORD(v131);
      v124 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "std::vector<Types::ComputedLocation> CL::Wifi1::Policies::PositionCalculation::HandleEvent::processScanGroups(const CLWifiService_Type::AccessPointGroups &, const CLAssociatedApHistory &, const std::vector<CLWifiAPLocation> &, Types::WsbPassType) const", "%s\n", v124);
      if (v124 != buf)
      {
        free(v124);
      }
    }

    AnalyticsSendEventLazy();
  }

  if (qword_1025D4630 != -1)
  {
    sub_10196A140();
  }

  v117 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67240962;
    *&buf[4] = v130;
    *&buf[8] = 1026;
    *&buf[10] = v131;
    *&buf[14] = 1026;
    *&buf[16] = v133;
    *&buf[20] = 2082;
    *&buf[22] = v132;
    _os_log_impl(dword_100000000, v117, OS_LOG_TYPE_DEBUG, "@WsbMetric, wsbWithAssociatedAp, numAssociated, %{public}d, numUnassociated, %{public}d, numWifiFixesWithAssociatedAp, %{public}d, passType, %{public}s", buf, 0x1Eu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10196A168(buf);
    *v202 = 67240962;
    *&v202[4] = v130;
    *&v202[8] = 1026;
    *&v202[10] = v131;
    *&v202[14] = 1026;
    *&v202[16] = v133;
    *&v202[20] = 2082;
    *&v202[22] = v132;
    v123 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "std::vector<Types::ComputedLocation> CL::Wifi1::Policies::PositionCalculation::HandleEvent::processScanGroups(const CLWifiService_Type::AccessPointGroups &, const CLAssociatedApHistory &, const std::vector<CLWifiAPLocation> &, Types::WsbPassType) const", "%s\n", v123);
    if (v123 != buf)
    {
      free(v123);
    }
  }

  AnalyticsSendEventLazy();
  return sub_1004906DC(v177);
}

void sub_10031B3CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  sub_1004906DC(&STACK[0x360]);
  v29 = *a28;
  if (*a28)
  {
    *(a28 + 8) = v29;
    operator delete(v29);
  }

  _Unwind_Resume(a1);
}

void *sub_10031B59C(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_10031B65C(result, a2);
  }

  return result;
}

void sub_10031B5E4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_10031B600(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1642C8590B21643)
  {
    operator new();
  }

  sub_1001D0818();
}

void sub_10031B65C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1642C8590B21643)
  {
    sub_10031B600(a1, a2);
  }

  sub_10028C64C();
}

uint64_t sub_10031B6AC(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  if (a2)
  {
    v3 = v2 + 184 * a2;
    __asm { FMOV            V1.2D, #-1.0 }

    do
    {
      *v2 = 0xFFFF;
      *(v2 + 12) = 0;
      *(v2 + 4) = 0;
      *(v2 + 20) = xmmword_101C75BF0;
      *(v2 + 36) = _Q1;
      *(v2 + 52) = _Q1;
      *(v2 + 68) = _Q1;
      *(v2 + 84) = 0;
      *(v2 + 96) = 0;
      *(v2 + 104) = 0;
      *(v2 + 88) = 0xBFF0000000000000;
      *(v2 + 112) = 0;
      *(v2 + 116) = 0xBFF0000000000000;
      *(v2 + 124) = 0x7FFFFFFF;
      *(v2 + 136) = 0;
      *(v2 + 144) = 0;
      *(v2 + 128) = 0;
      *(v2 + 152) = 0;
      *(v2 + 156) = 0;
      *(v2 + 160) = 0;
      *(v2 + 168) = 0xBFF0000000000000;
      *(v2 + 176) = 0;
      v2 += 184;
    }

    while (v2 != v3);
    v2 = v3;
  }

  *(result + 8) = v2;
  return result;
}

uint64_t sub_10031B734(void *a1, double *a2)
{
  v2 = a1[1];
  if (a1[2] != v2)
  {
    v3 = a1[4];
    v4 = (*(v2 + 8 * (v3 / 0xAA)) + 24 * (v3 % 0xAA));
    v5 = *(v2 + 8 * ((a1[5] + v3) / 0xAA)) + 24 * ((a1[5] + v3) % 0xAA);
    if (v4 != v5)
    {
      v6 = (v2 + 8 * (v3 / 0xAA));
      v7 = *a2;
      while (v7 >= v4[1])
      {
        if (v7 < v4[2])
        {
          return *v4;
        }

        v4 += 3;
        if ((v4 - *v6) == 4080)
        {
          v8 = v6[1];
          ++v6;
          v4 = v8;
        }

        if (v4 == v5)
        {
          return 0xFFFFFFFFFFFFLL;
        }
      }
    }
  }

  return 0xFFFFFFFFFFFFLL;
}

void sub_10031B7D8(void *a1@<X0>, double *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1 + 6;
  v3 = a1[6];
  *a3 = 0xFFFF;
  *(a3 + 12) = 0;
  *(a3 + 4) = 0;
  *(a3 + 20) = xmmword_101C75BF0;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a3 + 36) = _Q0;
  *(a3 + 52) = _Q0;
  *(a3 + 68) = _Q0;
  *(a3 + 84) = 0;
  *(a3 + 96) = 0;
  *(a3 + 104) = 0;
  *(a3 + 88) = 0xBFF0000000000000;
  *(a3 + 112) = 0;
  *(a3 + 116) = 0xBFF0000000000000;
  *(a3 + 124) = 0x7FFFFFFF;
  *(a3 + 136) = 0;
  *(a3 + 144) = 0;
  *(a3 + 128) = 0;
  *(a3 + 152) = 0;
  if (v3)
  {
    v10 = a1[2];
    if (a1[3] == v10 || (v11 = a1[5], v12 = *(v10 + 8 * (v11 / 0x1A)) + 156 * (v11 % 0x1A), v13 = *(v10 + 8 * ((v3 + v11) / 0x1A)) + 156 * ((v3 + v11) % 0x1A), v12 == v13))
    {
      v16 = 1.79769313e308;
    }

    else
    {
      v14 = (v10 + 8 * (v11 / 0x1A));
      v15 = *a2;
      v16 = 1.79769313e308;
      do
      {
        v17 = vabdd_f64(v15, *(v12 + 76));
        if (v16 > v17)
        {
          v18 = *(v12 + 16);
          *a3 = *v12;
          *(a3 + 16) = v18;
          v19 = *(v12 + 32);
          v20 = *(v12 + 48);
          v21 = *(v12 + 80);
          *(a3 + 64) = *(v12 + 64);
          *(a3 + 80) = v21;
          *(a3 + 32) = v19;
          *(a3 + 48) = v20;
          v22 = *(v12 + 96);
          v23 = *(v12 + 112);
          v24 = *(v12 + 128);
          *(a3 + 140) = *(v12 + 140);
          *(a3 + 112) = v23;
          *(a3 + 128) = v24;
          *(a3 + 96) = v22;
          v16 = v17;
        }

        v12 += 156;
        if (v12 - *v14 == 4056)
        {
          v25 = v14[1];
          ++v14;
          v12 = v25;
        }
      }

      while (v12 != v13);
    }

    if (qword_1025D4600 != -1)
    {
      sub_101B44984();
    }

    v26 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      v27 = *v4;
      v28 = 134349312;
      v29 = v27;
      v30 = 2050;
      v31 = v16;
      _os_log_impl(dword_100000000, v26, OS_LOG_TYPE_DEBUG, "CLReferenceLocations, size %{public}zu, found closest reference location with timestamp delta %{public}.1f", &v28, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B449C0(v4, v16);
    }
  }
}

uint64_t sub_10031BA04(int a1, unsigned int a2, uint64_t a3)
{
  v3 = a3;
  v6 = a3;
  if (a2)
  {
    v6 = 100 * a1 / a2;
  }

  if (v6 >= 0x65)
  {
    if (qword_1025D4630 != -1)
    {
      sub_10196A1AC();
    }

    v7 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_FAULT))
    {
      *buf = 67240960;
      v11 = v6;
      v12 = 1026;
      v13 = a1;
      v14 = 1026;
      v15 = a2;
      v16 = 1026;
      v17 = v3;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "Invalid percentage: %{public}u. count: %{public}u, total: %{public}u, defaultPercentage: %{public}u", buf, 0x1Au);
    }

    if (sub_10000A100(121, 0))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4630 != -1)
      {
        sub_10196A140();
      }

      v9 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "uint32_t CL::Wifi1::Policies::PositionCalculation::percentage(uint32_t, uint32_t, uint32_t)", "%s\n", v9);
      if (v9 != buf)
      {
        free(v9);
      }
    }
  }

  return v6;
}

uint64_t sub_10031BBF8(unsigned int a1)
{
  if (a1 <= 0x40)
  {
    v1 = 0;
  }

  else
  {
    v1 = 25;
  }

  if (a1 <= 0x44)
  {
    v2 = v1;
  }

  else
  {
    v2 = 50;
  }

  if (a1 <= 0x4E)
  {
    return v2;
  }

  else
  {
    return 75;
  }
}

__n128 sub_10031BC20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 140) = *(a2 + 140);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

BOOL sub_10031BC54(uint64_t a1, uint64_t a2)
{
  result = sub_100072814(a1);
  if (result)
  {
    v5 = *(a1 + 96);
    v6 = v5 > 0xB;
    v7 = (1 << v5) & 0xC02;
    v8 = v6 || v7 == 0;
    if (v8 || *(a1 + 20) > 30.0)
    {
      return 0;
    }

    else
    {
      result = sub_100072814(a2);
      if (result)
      {
        return vabdd_f64(*(a1 + 76), *(a2 + 76)) <= 1.25;
      }
    }
  }

  return result;
}

NSDictionary *sub_10031BCDC(uint64_t a1)
{
  v7[0] = @"aps";
  v8[0] = [NSNumber numberWithUnsignedInt:*(a1 + 56)];
  v7[1] = @"alsAps";
  v8[1] = [NSNumber numberWithUnsignedInt:*(a1 + 60)];
  v7[2] = @"tileAps";
  v8[2] = [NSNumber numberWithUnsignedInt:*(a1 + 64)];
  v7[3] = @"percentAlsAps";
  v8[3] = [NSNumber numberWithInt:*(a1 + 68)];
  v7[4] = @"percentTileAps";
  v8[4] = [NSNumber numberWithInt:*(a1 + 72)];
  v7[5] = @"age";
  v8[5] = [NSNumber numberWithDouble:*(a1 + 32)];
  v7[6] = @"pass";
  v8[6] = [NSString stringWithUTF8String:*(a1 + 40)];
  v7[7] = @"isWifiFixWithAssociatedAp";
  v8[7] = [NSNumber numberWithBool:*(*(a1 + 48) + 180) != 0];
  v7[8] = @"wifiFixType";
  sub_10000EC00(__p, (&off_10247D428)[*(*(a1 + 48) + 180)]);
  if (v6 >= 0)
  {
    v2 = __p;
  }

  else
  {
    v2 = __p[0];
  }

  v8[8] = [NSString stringWithUTF8String:v2];
  v7[9] = @"apsInScanGroup";
  v8[9] = [NSNumber numberWithUnsignedInt:*(a1 + 76)];
  v7[10] = @"apsWithLocationInScanGroup";
  v8[10] = [NSNumber numberWithUnsignedInt:*(a1 + 80)];
  v7[11] = @"apsWithoutLocationInScanGroup";
  v8[11] = [NSNumber numberWithUnsignedInt:*(a1 + 84)];
  v7[12] = @"percentApsWithLocationInScanGroup";
  v8[12] = [NSNumber numberWithUnsignedInt:*(a1 + 88)];
  v7[13] = @"percentApsWithoutLocationInScanGroup";
  v8[13] = [NSNumber numberWithUnsignedInt:*(a1 + 92)];
  v7[14] = @"percentApsInScanGroupUsedInLocation";
  v8[14] = [NSNumber numberWithUnsignedInt:*(a1 + 96)];
  v7[15] = @"percentApsWithLocationUsedInLocation";
  v8[15] = [NSNumber numberWithUnsignedInt:*(a1 + 100)];
  v3 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:16];
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  return v3;
}

NSDictionary *sub_10031BFA0(uint64_t a1)
{
  v4[0] = @"groupResult";
  v2 = [NSString stringWithUTF8String:*(a1 + 32)];
  v4[1] = @"numInGroup";
  v5[0] = v2;
  v5[1] = [NSNumber numberWithUnsignedInt:*(a1 + 40)];
  return [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:2];
}

NSDictionary *sub_10031C048(uint64_t a1)
{
  v3[0] = @"numAssociated";
  v4[0] = [NSNumber numberWithInt:*(a1 + 40)];
  v3[1] = @"numUnassociated";
  v4[1] = [NSNumber numberWithInt:*(a1 + 44)];
  v3[2] = @"numWifiFixesWithAssociatedAp";
  v4[2] = [NSNumber numberWithInt:*(a1 + 48)];
  v3[3] = @"wsbPassType";
  v4[3] = [NSString stringWithUTF8String:*(a1 + 32)];
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:4];
}

void sub_10031C460(void *a1, uint64_t *a2, int a3)
{
  v5 = a1[801];
  if (v5)
  {
    memset(v60, 0, 24);
    sub_1000FA008(v60, *v5, *(v5 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(v5 + 8) - *v5) >> 3));
    sub_100103020(&v60[1] + 8, v5 + 24);
    v6 = *(v5 + 64);
    *&v63[1] = *(v5 + 80);
    v63[0] = v6;
  }

  else
  {
    v61 = 0;
    memset(v60, 0, sizeof(v60));
    v62 = 1065353216;
    LODWORD(v63[0]) = -1;
    memset(v63 + 4, 0, 20);
  }

  if (a3)
  {
    sub_1006E6C7C(&v60[1] + 1);
    v8 = *(&v60[0] + 1);
    v7 = *&v60[0];
    while (v8 != v7)
    {
      v8 -= 24;
      *buf = v8;
      sub_1000B96B4(buf);
    }

    *(&v60[0] + 1) = v7;
  }

  v57 = 0;
  v58 = 0;
  v59 = 0;
  v9 = *a2;
  if (a2[1] == *a2)
  {
    goto LABEL_67;
  }

  v10 = 0;
  v54 = 0;
  v55 = 0;
  v11 = 0;
  while (1)
  {
    v12 = a1[205];
    v13 = a1[206] - v12;
    if (v13)
    {
      if (0xD37A6F4DE9BD37A7 * (v13 >> 3) <= v10)
      {
        sub_10046F324();
      }

      if (*(v12 + 184 * v10 + 20) >= 0.0)
      {
        goto LABEL_39;
      }
    }

    v14 = (v9 + 24 * v10);
    if ((a3 & 1) == 0)
    {
      break;
    }

    v15 = a1[801];
    v16 = *v14;
    if (*(v15 + 68) != 2 || *(v16 + 56) > *(v15 + 80))
    {
      goto LABEL_24;
    }

    if (qword_1025D4630 != -1)
    {
      sub_101B0A5E0();
    }

    v17 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
    {
      v18 = *(*v14 + 56);
      v19 = 0x2E8BA2E8BA2E8BA3 * ((v14[1] - *v14) >> 3);
      *buf = 134349312;
      *&buf[4] = v18;
      *&buf[12] = 2050;
      *&buf[14] = v19;
      _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEFAULT, "@WsbDiscard, unknown, %{public}.1f, aps, %{public}ld", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B0A608(buf);
      v41 = *(*v14 + 56);
      v42 = 0x2E8BA2E8BA2E8BA3 * ((v14[1] - *v14) >> 3);
      v64 = 134349312;
      *v65 = v41;
      *&v65[8] = 2050;
      *&v65[10] = v42;
      v43 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "static std::shared_ptr<Types::Wsb> CL::Wifi1::Policies::PostPositionCalculationStateUpdate::HandleEvent::updateScanBuffer(const Input &, const CLWifiService_Type::AccessPointGroups &, BOOL)", "%s\n", v43);
      if (v43 != buf)
      {
        free(v43);
      }
    }

    ++v54;
LABEL_39:
    v9 = *a2;
    v10 = ++v11;
    if (0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3) <= v11)
    {
      if (v54 > 0)
      {
        if (qword_1025D4630 != -1)
        {
          sub_101B0A5E0();
        }

        v44 = qword_1025D4638;
        if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
        {
          *buf = 67240192;
          *&buf[4] = v54;
          _os_log_impl(dword_100000000, v44, OS_LOG_TYPE_DEBUG, "WsbMetric, groupresult, unknownaps, %{public}d", buf, 8u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101B0A608(buf);
          v64 = 67240192;
          *v65 = v54;
          v52 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "static std::shared_ptr<Types::Wsb> CL::Wifi1::Policies::PostPositionCalculationStateUpdate::HandleEvent::updateScanBuffer(const Input &, const CLWifiService_Type::AccessPointGroups &, BOOL)", "%s\n", v52);
          if (v52 != buf)
          {
            free(v52);
          }
        }

        AnalyticsSendEventLazy();
      }

      if (v55 < 1)
      {
        if (v54 >= 1)
        {
          goto LABEL_66;
        }
      }

      else
      {
        if (qword_1025D4630 != -1)
        {
          sub_101B0A5E0();
        }

        v45 = qword_1025D4638;
        if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
        {
          *buf = 67240192;
          *&buf[4] = v55;
          _os_log_impl(dword_100000000, v45, OS_LOG_TYPE_DEBUG, "WsbMetric, groupresult, alsmax, %{public}d", buf, 8u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101B0A608(buf);
          v64 = 67240192;
          *v65 = v55;
          v53 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "static std::shared_ptr<Types::Wsb> CL::Wifi1::Policies::PostPositionCalculationStateUpdate::HandleEvent::updateScanBuffer(const Input &, const CLWifiService_Type::AccessPointGroups &, BOOL)", "%s\n", v53);
          if (v53 != buf)
          {
            free(v53);
          }
        }

        AnalyticsSendEventLazy();
LABEL_66:
        AnalyticsSendEventLazy();
      }

LABEL_67:
      sub_10031D21C(v60, 0xAAAAAAAAAAAAAAABLL * ((*(&v60[0] + 1) - *&v60[0]) >> 3) - 0x5555555555555555 * ((v58 - v57) >> 3));
      v47 = v57;
      v46 = v58;
      while (v47 != v46)
      {
        sub_101052820(v60, v47);
        v47 += 24;
      }

      if (qword_1025D4630 != -1)
      {
        sub_101B0A5E0();
      }

      v48 = qword_1025D4638;
      if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
      {
        v49 = *(a1[801] + 80);
        *buf = 134349568;
        *&buf[4] = 0xAAAAAAAAAAAAAAABLL * ((*(&v60[0] + 1) - *&v60[0]) >> 3);
        *&buf[12] = 2050;
        *&buf[14] = v61;
        *&buf[22] = 2050;
        *&buf[24] = v49;
        _os_log_impl(dword_100000000, v48, OS_LOG_TYPE_DEFAULT, "@WsbReproc, update, groups, %{public}lu, unknownAPs, %{public}lu, deleteTo, %{public}0.1f", buf, 0x20u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101B0A608(buf);
        v50 = *(a1[801] + 80);
        v64 = 134349568;
        *v65 = 0xAAAAAAAAAAAAAAABLL * ((*(&v60[0] + 1) - *&v60[0]) >> 3);
        *&v65[8] = 2050;
        *&v65[10] = v61;
        *&v65[18] = 2050;
        *&v65[20] = v50;
        v51 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "static std::shared_ptr<Types::Wsb> CL::Wifi1::Policies::PostPositionCalculationStateUpdate::HandleEvent::updateScanBuffer(const Input &, const CLWifiService_Type::AccessPointGroups &, BOOL)", "%s\n", v51);
        if (v51 != buf)
        {
          free(v51);
        }
      }

      sub_101052960();
    }
  }

  v16 = *v14;
LABEL_24:
  if (v61 + 0x2E8BA2E8BA2E8BA3 * ((v14[1] - v16) >> 3) <= dword_1026630B0)
  {
    v23 = v60[0];
    v24 = v57;
    v25 = v58;
    if (0xAAAAAAAAAAAAAAABLL * ((*(&v23 + 1) - v23) >> 3) - 0x5555555555555555 * ((v25 - v24) >> 3) >= *(sub_100316E68() + 2))
    {
      if (qword_1025D4630 != -1)
      {
        sub_101B0A5E0();
      }

      v28 = qword_1025D4638;
      if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
      {
        v29 = *(sub_100316E68() + 2);
        v30 = *(*v14 + 56);
        v31 = 0x2E8BA2E8BA2E8BA3 * ((v14[1] - *v14) >> 3);
        *buf = 67240704;
        *&buf[4] = v29;
        *&buf[8] = 2050;
        *&buf[10] = v30;
        *&buf[18] = 2050;
        *&buf[20] = v31;
        _os_log_impl(dword_100000000, v28, OS_LOG_TYPE_DEFAULT, "@WsbDiscard, max %{public}d WSB gropus reached, %{public}.1f, aps, %{public}ld", buf, 0x1Cu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101B0A608(buf);
        v37 = *(sub_100316E68() + 2);
        v38 = *(*v14 + 56);
        v39 = 0x2E8BA2E8BA2E8BA3 * ((v14[1] - *v14) >> 3);
        v64 = 67240704;
        *v65 = v37;
        *&v65[4] = 2050;
        *&v65[6] = v38;
        *&v65[14] = 2050;
        *&v65[16] = v39;
        v40 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "static std::shared_ptr<Types::Wsb> CL::Wifi1::Policies::PostPositionCalculationStateUpdate::HandleEvent::updateScanBuffer(const Input &, const CLWifiService_Type::AccessPointGroups &, BOOL)", "%s\n", v40);
        if (v40 != buf)
        {
          free(v40);
        }
      }
    }

    else
    {
      v26 = v58;
      if (v58 >= v59)
      {
        v27 = sub_10031861C(&v57, v14);
      }

      else
      {
        *v58 = 0;
        *(v26 + 8) = 0;
        *(v26 + 16) = 0;
        sub_100288650(v26, *v14, v14[1], 0x2E8BA2E8BA2E8BA3 * ((v14[1] - *v14) >> 3));
        v27 = v26 + 24;
      }

      v58 = v27;
      v33 = *v14;
      v32 = v14[1];
      while (v33 != v32)
      {
        *buf = *v33;
        sub_100188540(&v60[1] + 1, buf);
        v33 += 11;
      }
    }
  }

  else
  {
    if (qword_1025D4630 != -1)
    {
      sub_101B0A5E0();
    }

    v20 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
    {
      v21 = *(*v14 + 56);
      v22 = 0x2E8BA2E8BA2E8BA3 * ((v14[1] - *v14) >> 3);
      *buf = 134349312;
      *&buf[4] = v21;
      *&buf[12] = 2050;
      *&buf[14] = v22;
      _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEFAULT, "@WsbDiscard, alsmax, %{public}.1f, aps, %{public}ld", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B0A608(buf);
      v34 = *(*v14 + 56);
      v35 = 0x2E8BA2E8BA2E8BA3 * ((v14[1] - *v14) >> 3);
      v64 = 134349312;
      *v65 = v34;
      *&v65[8] = 2050;
      *&v65[10] = v35;
      v36 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "static std::shared_ptr<Types::Wsb> CL::Wifi1::Policies::PostPositionCalculationStateUpdate::HandleEvent::updateScanBuffer(const Input &, const CLWifiService_Type::AccessPointGroups &, BOOL)", "%s\n", v36);
      if (v36 != buf)
      {
        free(v36);
      }
    }

    ++v55;
  }

  goto LABEL_39;
}

void sub_10031D19C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void **a53)
{
  a53 = &a34;
  sub_1000F8D88(&a53);
  sub_1010523F0(&a37);
  _Unwind_Resume(a1);
}

void *sub_10031D21C(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      sub_100288820(result, a2);
    }

    sub_10028C64C();
  }

  return result;
}

void sub_10031D368(uint64_t a1@<X0>, int a2@<W1>, _BYTE *a3@<X8>)
{
  *a3 = 0;
  a3[72] = 0;
  v4 = *(a1 + 6408);
  if (!*(v4 + 48))
  {
    return;
  }

  v5 = *(v4 + 68);
  if (v5 == 2)
  {
    return;
  }

  if (a2)
  {
    v7 = "WSB_Reprocess";
  }

  else
  {
    v7 = "WSB_Live";
  }

  if (a2)
  {
    v8 = 0;
    if (a2 != 1 || v5 != 1)
    {
      goto LABEL_23;
    }

LABEL_12:
    sub_100103020(v15, *(a1 + 6408) + 24);
    sub_10000EC00(v13, v7);
    v24[0] = 1;
    if (SHIBYTE(v14) < 0)
    {
      sub_100007244(v25, v13[0], v13[1]);
    }

    else
    {
      *v25 = *v13;
      *&v25[16] = v14;
    }

    sub_100BE182C(buf, v15, v24);
    sub_100BE15D4(a3, buf);
    if (v23 < 0)
    {
      operator delete(__p);
    }

    sub_1004906DC(buf);
    if ((v25[23] & 0x80000000) != 0)
    {
      operator delete(*v25);
    }

    if (SHIBYTE(v14) < 0)
    {
      operator delete(v13[0]);
    }

    sub_1004906DC(v15);
    v8 = 1;
    goto LABEL_23;
  }

  if ((sub_100103C94(a1 + 3312) & 1) != 0 && *(a1 + 1104) == 1)
  {
    goto LABEL_12;
  }

  v8 = 0;
LABEL_23:
  if (qword_1025D4630 != -1)
  {
    sub_101A188EC();
  }

  v9 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(*(a1 + 6408) + 48);
    *buf = 67240706;
    v17 = v8;
    v18 = 2082;
    v19 = v7;
    v20 = 2050;
    v21 = v10;
    _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "WsbAls, query, %{public}d, %{public}s, unknown, %{public}ld", buf, 0x1Cu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101A188A8(buf);
    v11 = *(*(a1 + 6408) + 48);
    v24[0] = 67240706;
    v24[1] = v8;
    *v25 = 2082;
    *&v25[2] = v7;
    *&v25[10] = 2050;
    *&v25[12] = v11;
    v12 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "static std::optional<Decisions::AlsRequestForWsb> CL::Wifi1::Policies::AlsQuery::HandleEvent::shouldQueryForWsb(const Input &, Types::WsbPassType)", "%s\n", v12);
    if (v12 != buf)
    {
      free(v12);
    }
  }
}

__n128 sub_10031D6C8(uint64_t a1, __n128 *a2)
{
  if (*(a1 + 72) == a2[4].n128_u8[8])
  {
    if (*(a1 + 72))
    {
      sub_100BE1788(a1, a2);
      *(a1 + 40) = a2[2].n128_u32[2];
      if (*(a1 + 71) < 0)
      {
        operator delete(*(a1 + 48));
      }

      result = a2[3];
      *(a1 + 64) = a2[4].n128_u64[0];
      *(a1 + 48) = result;
      a2[4].n128_u8[7] = 0;
      a2[3].n128_u8[0] = 0;
    }
  }

  else if (*(a1 + 72))
  {
    if (*(a1 + 71) < 0)
    {
      operator delete(*(a1 + 48));
    }

    sub_1004906DC(a1);
    *(a1 + 72) = 0;
  }

  else
  {
    sub_10067DFB8(a1, a2);
    *(a1 + 40) = a2[2].n128_u32[2];
    result = a2[3];
    *(a1 + 64) = a2[4].n128_u64[0];
    *(a1 + 48) = result;
    a2[3].n128_u64[1] = 0;
    a2[4].n128_u64[0] = 0;
    a2[3].n128_u64[0] = 0;
    *(a1 + 72) = 1;
  }

  return result;
}

uint64_t sub_10031D97C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_10031EC64(result, a4);
  }

  return result;
}

void sub_10031D9DC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10031DA64(uint64_t a1, uint64_t *a2)
{
  sub_10031DB74(a1, -1762037865 * ((a2[1] - *a2) >> 2));
  v4 = *a2;
  v5 = a2[1];
  if (*a2 != v5)
  {
    v6 = 0;
    do
    {
      v7 = (*(a1 + 24) + v6);
      v8 = *(v4 + v6 + 16);
      *v7 = *(v4 + v6);
      v7[1] = v8;
      v9 = *(v4 + v6 + 32);
      v10 = *(v4 + v6 + 48);
      v11 = *(v4 + v6 + 80);
      v7[4] = *(v4 + v6 + 64);
      v7[5] = v11;
      v7[2] = v9;
      v7[3] = v10;
      v12 = *(v4 + v6 + 96);
      v13 = *(v4 + v6 + 112);
      v14 = *(v4 + v6 + 128);
      *(v7 + 140) = *(v4 + v6 + 140);
      v7[7] = v13;
      v7[8] = v14;
      v7[6] = v12;
      v6 += 156;
    }

    while (v4 + v6 != v5);
    if (a2[1] != *a2)
    {
      v15 = 0;
      v16 = 0;
      do
      {
        memcpy((*(a1 + 32) + v16), &unk_101D12A20, 0x230uLL);
        v16 += 560;
        ++v15;
      }

      while (v15 < 0x6F96F96F96F96F97 * ((a2[1] - *a2) >> 2));
    }
  }

  return a1;
}

uint64_t sub_10031DB74(uint64_t a1, int a2)
{
  *a1 = a2;
  v3 = 156 * a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = 560 * a2;
  *(a1 + 24) = malloc_type_malloc(v3, 0x76EA0A95uLL);
  *(a1 + 32) = malloc_type_malloc(*(a1 + 16), 0x729E2850uLL);
  *(a1 + 40) = dispatch_data_create(*(a1 + 24), *(a1 + 8), 0, _dispatch_data_destructor_free);
  *(a1 + 48) = dispatch_data_create(*(a1 + 32), *(a1 + 16), 0, _dispatch_data_destructor_free);
  return a1;
}

void *sub_10031DC10(void *a1, uint64_t *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_102467EF8;
  sub_10031DA64((a1 + 3), a2);
  return a1;
}

void sub_10031DC6C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 808);
  if (v3)
  {
    v5 = sub_10030D934(v3);
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        sub_10030E2C0(*(a2 + 808), i, v8);
        if (sub_100072814(v8))
        {
          sub_1001D9E2C(*(a1 + 64), v8);
        }
      }
    }
  }
}

void sub_10031DCEC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 808);
  if (v3)
  {
    v5 = sub_10030D934(v3);
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        sub_10030E2C0(*(a2 + 808), i, v8);
        if (sub_100072814(v8))
        {
          sub_10054A680(a1, v8, 0);
        }
      }
    }
  }
}

uint64_t sub_10031DD70(uint64_t a1, int *a2)
{
  if (*(a1 + 1672) && (v4 = sub_10030D934(a2)) != 0)
  {
    v5 = v4;
    v6 = 0;
    v7 = 0;
    do
    {
      v7 |= [*(a1 + 1672) feedLocation:{v9, sub_10030E2C0(a2, v6++, v9).n128_f64[0]}];
    }

    while (v5 != v6);
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7 & 1;
}

void sub_10031DE04(uint64_t a1, uint64_t a2, int a3)
{
  if (*(a1 + 6120) >= 0x33uLL)
  {
    v4 = *(a1 + 6112);
    v5 = *(*(a1 + 6088) + 8 * (v4 / 0x49));
    if (qword_1025D4600 != -1)
    {
      sub_1018F7C0C();
    }

    v6 = (v5 + 56 * (v4 % 0x49));
    v7 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v6[1];
      v8 = v6[2];
      v10 = v8 - v9;
      if (v8 == v9)
      {
        v11 = 0xBFF0000000000000;
        v12 = 0xBFF0000000000000;
      }

      else
      {
        v11 = *(v9 + 76);
        v12 = *(v8 - 80);
      }

      v13 = *v6;
      v14 = sub_10000B1F8();
      *buf = 0;
      v15 = sub_10001A6B0(v14, buf);
      if (v6[1] == v6[2])
      {
        v17 = -1.0;
      }

      else
      {
        v16 = sub_10000B1F8();
        *buf = 0;
        v17 = sub_10001A6B0(v16, buf) - *(v6[2] - 80);
      }

      v18 = sub_10000B1F8();
      *buf = 1;
      v19 = sub_10001A6B0(v18, buf);
      *buf = 134350592;
      *&buf[4] = v13;
      *&buf[12] = 2050;
      *&buf[14] = 0x6F96F96F96F96F97 * (v10 >> 2);
      *&buf[22] = 2050;
      *&buf[24] = v11;
      *v132 = 2050;
      *&v132[2] = v12;
      *&v132[10] = 2050;
      *&v132[12] = v15;
      *&v132[20] = 2050;
      *&v132[22] = v17;
      *&v132[30] = 2050;
      *&v132[32] = v19;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "#WSB #Warning notifying WSB notification batch with MCT %{public}.3f size %{public}zu locations,start_cfat,%{public}.3f,end_cfat,%{public}.3f,now_cfat,%{public}.3f,last_sample_age_sec,%{public}.3f,now_mct,%{public}.3f", buf, 0x48u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4600 != -1)
      {
        sub_1018F7C0C();
      }

      v22 = v6[1];
      v21 = v6[2];
      v23 = *v6;
      v24 = v21 - v22;
      if (v21 == v22)
      {
        v25 = 0xBFF0000000000000;
        v26 = 0xBFF0000000000000;
      }

      else
      {
        v25 = *(v22 + 76);
        v26 = *(v21 - 80);
      }

      v27 = sub_1000281DC();
      if (v6[1] == v6[2])
      {
        v28 = -1.0;
      }

      else
      {
        v28 = sub_1000281DC() - *(v6[2] - 80);
      }

      *v116 = 134350592;
      *&v116[4] = v23;
      *&v116[12] = 2050;
      *&v116[14] = 0x6F96F96F96F96F97 * (v24 >> 2);
      v117 = 2050;
      v118 = v25;
      v119 = 2050;
      *v120 = v26;
      *&v120[8] = 2050;
      *&v120[10] = v27;
      *&v120[18] = 2050;
      *&v120[20] = v28;
      *&v120[28] = 2050;
      *&v120[30] = sub_10002F470();
      v29 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLLocationController::feedWifiLocationBatched(const CLLocationProvider_Type::NotificationData &, const BOOL)", "%s\n", v29);
      if (v29 != buf)
      {
        free(v29);
      }
    }

    sub_100021AFC(buf);
    v20 = *(v6 + 2);
    v136 = v6[6];
    v135 = v20;
    v115 = 0x6F96F96F96F96F97 * ((v6[2] - v6[1]) >> 2);
    sub_10067A74C();
  }

  v30 = 0;
  __src = 0;
  v113 = 0;
  v114 = 0;
  while (v30 < sub_10030D934(*(a2 + 808)))
  {
    sub_10030E2C0(*(a2 + 808), v30, buf);
    if (sub_100027FB4(buf))
    {
      *&buf[20] = round(*&buf[20] * 10.0) / 10.0 + 0.095014;
    }

    v32 = v113;
    if (v113 >= v114)
    {
      v41 = __src;
      v42 = v113 - __src;
      v43 = 0x6F96F96F96F96F97 * ((v113 - __src) >> 2);
      v44 = v43 + 1;
      if ((v43 + 1) > 0x1A41A41A41A41A4)
      {
        sub_10028C64C();
      }

      if (0xDF2DF2DF2DF2DF2ELL * ((v114 - __src) >> 2) > v44)
      {
        v44 = 0xDF2DF2DF2DF2DF2ELL * ((v114 - __src) >> 2);
      }

      if ((0x6F96F96F96F96F97 * ((v114 - __src) >> 2)) >= 0xD20D20D20D20D2)
      {
        v44 = 0x1A41A41A41A41A4;
      }

      if (v44)
      {
        sub_100238948(&__src, v44);
      }

      v45 = (4 * ((v113 - __src) >> 2));
      v46 = *&buf[16];
      *v45 = *buf;
      v45[1] = v46;
      v47 = *v132;
      v48 = *&v132[16];
      v49 = *v133;
      v45[4] = *&v132[32];
      v45[5] = v49;
      v45[2] = v47;
      v45[3] = v48;
      v50 = *&v133[16];
      v51 = *&v133[32];
      v52 = v134[0];
      *(v45 + 140) = *(v134 + 12);
      v45[7] = v51;
      v45[8] = v52;
      v45[6] = v50;
      v40 = (156 * v43 + 156);
      v53 = v45 - v42;
      memcpy(v45 - v42, v41, v42);
      v54 = __src;
      __src = v53;
      v113 = v40;
      v114 = 0;
      if (v54)
      {
        operator delete(v54);
      }
    }

    else
    {
      v33 = *&buf[16];
      *v113 = *buf;
      *(v32 + 1) = v33;
      v34 = *v132;
      v35 = *&v132[16];
      v36 = *v133;
      *(v32 + 4) = *&v132[32];
      *(v32 + 5) = v36;
      *(v32 + 2) = v34;
      *(v32 + 3) = v35;
      v37 = *&v133[16];
      v38 = *&v133[32];
      v39 = v134[0];
      *(v32 + 140) = *(v134 + 12);
      *(v32 + 7) = v38;
      *(v32 + 8) = v39;
      *(v32 + 6) = v37;
      v40 = (v32 + 156);
    }

    v113 = v40;
    ++v30;
  }

  v55 = 126 - 2 * __clz(0x6F96F96F96F96F97 * ((v113 - __src) >> 2));
  if (v113 == __src)
  {
    v56 = 0;
  }

  else
  {
    v56 = v55;
  }

  sub_1005317F8(__src, v113, v56, 1, v31);
  if (qword_1025D4600 != -1)
  {
    sub_1018F7C0C();
  }

  v57 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEFAULT))
  {
    if (v113 == __src)
    {
      v58 = 0xBFF0000000000000;
      v59 = 0xBFF0000000000000;
    }

    else
    {
      v58 = *(__src + 76);
      v59 = *(v113 - 10);
    }

    v60 = sub_10000B1F8();
    *v116 = 0;
    v61 = sub_10001A6B0(v60, v116);
    v62 = sub_10000B1F8();
    *v116 = 1;
    v63 = sub_10001A6B0(v62, v116);
    v64 = -1.0;
    v65 = -1.0;
    if (__src != v113)
    {
      v66 = sub_10000B1F8();
      *v116 = 0;
      v65 = sub_10001A6B0(v66, v116) - *(v113 - 10);
    }

    if ((*(a1 + 1712) & 1) == 0 && *(a1 + 1720) > 0.0)
    {
      v67 = sub_10000B1F8();
      *v116 = 0;
      v64 = sub_10001A6B0(v67, v116) - *(a1 + 1720);
    }

    *buf = 134350848;
    *&buf[4] = 0x6F96F96F96F96F97 * ((v113 - __src) >> 2);
    *&buf[12] = 2050;
    *&buf[14] = v58;
    *&buf[22] = 2050;
    *&buf[24] = v59;
    *v132 = 1026;
    *&v132[2] = a3;
    *&v132[6] = 2050;
    *&v132[8] = v61;
    *&v132[16] = 2050;
    *&v132[18] = v63;
    *&v132[26] = 2050;
    *&v132[28] = v65;
    *&v132[36] = 2050;
    *&v132[38] = v64;
    _os_log_impl(dword_100000000, v57, OS_LOG_TYPE_DEFAULT, "#WSB,got batch of %{public}zu WSB locations,start_cfat,%{public}.3f,end_cfat,%{public}.3f,hasDerivedSpeed,%{public}d,receipt_cfat,%{public}.3f,receipt_mct,%{public}.3f,last_sample_age_sec,%{public}.3f,sec_since_wake,%{public}.3f", buf, 0x4Eu);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4600 != -1)
    {
      sub_1018F7C0C();
    }

    if (v113 == __src)
    {
      v103 = 0xBFF0000000000000;
      v104 = 0xBFF0000000000000;
    }

    else
    {
      v103 = *(__src + 76);
      v104 = *(v113 - 10);
    }

    v105 = sub_1000281DC();
    v106 = sub_10002F470();
    v107 = -1.0;
    v108 = -1.0;
    if (__src != v113)
    {
      v108 = sub_1000281DC() - *(v113 - 10);
    }

    if ((*(a1 + 1712) & 1) == 0 && *(a1 + 1720) > 0.0)
    {
      v107 = sub_1000281DC() - *(a1 + 1720);
    }

    *v116 = 134350848;
    *&v116[4] = 0x6F96F96F96F96F97 * ((v113 - __src) >> 2);
    *&v116[12] = 2050;
    *&v116[14] = v103;
    v117 = 2050;
    v118 = v104;
    v119 = 1026;
    *v120 = a3;
    *&v120[4] = 2050;
    *&v120[6] = v105;
    *&v120[14] = 2050;
    *&v120[16] = v106;
    *&v120[24] = 2050;
    *&v120[26] = v108;
    *&v120[34] = 2050;
    *&v120[36] = v107;
    v109 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLLocationController::feedWifiLocationBatched(const CLLocationProvider_Type::NotificationData &, const BOOL)", "%s\n", v109);
    if (v109 != buf)
    {
      free(v109);
    }
  }

  v68 = __src;
  if (__src != v113)
  {
    do
    {
      if (qword_1025D4620 != -1)
      {
        sub_1018F97D0();
      }

      v69 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
      {
        v70 = *(v68 + 4);
        v71 = *(v68 + 12);
        v72 = *(v68 + 20);
        v73 = *(v68 + 44);
        v74 = *(v68 + 60);
        v75 = *(v68 + 24);
        v76 = *(v68 + 28);
        v77 = *(v68 + 36);
        v78 = *(v68 + 18);
        v79 = *(v68 + 52);
        v80 = *(v68 + 68);
        v81 = *(v68 + 35);
        v82 = *(v68 + 76);
        *buf = 134548737;
        *&buf[4] = v70;
        *&buf[12] = 2053;
        *&buf[14] = v71;
        *&buf[22] = 2050;
        *&buf[24] = v72;
        *v132 = 2049;
        *&v132[2] = v73;
        *&v132[10] = 2049;
        *&v132[12] = v74;
        *&v132[20] = 1026;
        *&v132[22] = v75;
        *&v132[26] = 2049;
        *&v132[28] = v76;
        *&v132[36] = 2050;
        *&v132[38] = v77;
        *&v132[46] = 2049;
        *v133 = v78;
        *&v133[8] = 2050;
        *&v133[10] = v79;
        *&v133[18] = 2050;
        *&v133[20] = v80;
        *&v133[28] = 1025;
        *&v133[30] = v81;
        *&v133[34] = 2050;
        *&v133[36] = v82;
        _os_log_impl(dword_100000000, v69, OS_LOG_TYPE_DEFAULT, "@ClxWsb, Fix, 1, ll, %{sensitive}.7f, %{sensitive}.7f, acc, %{public}.2f, speed, %{private}.1f, course, %{private}.1f, type, %{public}d, alt, %{private}.1f, altunc, %{public}.1f, ellipsoidalAlt, %{private}.1f, speedUnc, %{public}.1f, courseUnc, %{public}.1f, signalEnv, %{private}d, timestamp, %{public}.3f", buf, 0x7Cu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018F97F8(buf);
        v83 = *(v68 + 4);
        v84 = *(v68 + 12);
        v85 = *(v68 + 20);
        v86 = *(v68 + 44);
        v87 = *(v68 + 60);
        v88 = *(v68 + 24);
        v89 = *(v68 + 28);
        v90 = *(v68 + 36);
        v91 = *(v68 + 18);
        v92 = *(v68 + 52);
        v93 = *(v68 + 68);
        v94 = *(v68 + 35);
        v95 = *(v68 + 76);
        *v116 = 134548737;
        *&v116[4] = v83;
        *&v116[12] = 2053;
        *&v116[14] = v84;
        v117 = 2050;
        v118 = v85;
        v119 = 2049;
        *v120 = v86;
        *&v120[8] = 2049;
        *&v120[10] = v87;
        *&v120[18] = 1026;
        *&v120[20] = v88;
        *&v120[24] = 2049;
        *&v120[26] = v89;
        *&v120[34] = 2050;
        *&v120[36] = v90;
        v121 = 2049;
        v122 = v91;
        v123 = 2050;
        v124 = v92;
        v125 = 2050;
        v126 = v93;
        v127 = 1025;
        v128 = v94;
        v129 = 2050;
        v130 = v95;
        v96 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CLLocationController::feedWifiLocationBatched(const CLLocationProvider_Type::NotificationData &, const BOOL)", "%s\n", v96);
        if (v96 != buf)
        {
          free(v96);
        }
      }

      v68 += 156;
    }

    while (v68 != v113);
  }

  if (*(a1 + 679))
  {
    if (qword_1025D4600 != -1)
    {
      sub_1018F7C0C();
    }

    v97 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
    {
      v98 = sub_10000B1F8();
      *v116 = 1;
      v99 = sub_10001A6B0(v98, v116);
      *buf = 134349056;
      *&buf[4] = v99;
      _os_log_impl(dword_100000000, v97, OS_LOG_TYPE_INFO, "#WSB,location simulation is active,dropping WSB notification,receipt_mct,%{public}.3f", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018F8644(buf);
      v100 = sub_10002F470();
      *v116 = 134349056;
      *&v116[4] = v100;
      v101 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLLocationController::feedWifiLocationBatched(const CLLocationProvider_Type::NotificationData &, const BOOL)", "%s\n", v101);
      if (v101 != buf)
      {
        free(v101);
      }
    }
  }

  else
  {
    v102 = sub_10000B1F8();
    *v116 = 1;
    *buf = sub_10001A6B0(v102, v116);
    memset(&buf[8], 0, 24);
    sub_10031D97C(&buf[8], __src, v113, 0x6F96F96F96F96F97 * ((v113 - __src) >> 2));
    *&v132[16] = *(a2 + 952);
    *v132 = *(a2 + 936);
    sub_10031ECB4((a1 + 6080), buf);
    if (*&buf[8])
    {
      *&buf[16] = *&buf[8];
      operator delete(*&buf[8]);
    }
  }

  if (__src)
  {
    v113 = __src;
    operator delete(__src);
  }
}

void sub_10031EBCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, void *a38, uint64_t a39)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10031EC64(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1A41A41A41A41A5)
  {
    sub_100238948(a1, a2);
  }

  sub_10028C64C();
}

__n128 sub_10031ECB4(void *a1, __n128 *a2)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = 73 * ((v4 - v5) >> 3) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = a1[5] + a1[4];
  if (v6 == v7)
  {
    sub_10067A7C0(a1);
    v5 = a1[1];
    v7 = a1[5] + a1[4];
  }

  v8 = (*(v5 + 8 * (v7 / 0x49)) + 56 * (v7 % 0x49));
  v8->n128_u64[0] = a2->n128_u64[0];
  v8[1].n128_u64[0] = 0;
  v8[1].n128_u64[1] = 0;
  v8->n128_u64[1] = 0;
  sub_10031D97C(&v8->n128_i64[1], a2->n128_i64[1], a2[1].n128_i64[0], 0x6F96F96F96F96F97 * ((a2[1].n128_u64[0] - a2->n128_u64[1]) >> 2));
  result = a2[2];
  v8[3].n128_u64[0] = a2[3].n128_u64[0];
  v8[2] = result;
  ++a1[5];
  return result;
}

uint64_t sub_10031EDAC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 2884))
  {
    if (*(a1 + 2880) != 4 || *(a1 + 2840) == 1)
    {
      sub_100272FF0(a1);
    }

    v4 = *(a2 + 808);
    if (v4)
    {
      *&v5 = COERCE_DOUBLE(sub_10030D934(v4));
      if (*&v5 != 0.0)
      {
        *(a1 + 2754) = 0;
        *(a1 + 2872) = 0;
        v6 = *(a1 + 2792);
        if (v6 && v6[1] == 1 && (*v6 & 1) != 0)
        {
          v7 = 0;
          v8 = -1.0;
        }

        else
        {
          v8 = -1.0;
          if ((*(a1 + 2904) & 1) != 0 || (v13 = *(a1 + 208), v16 = *v13, v14 = v13 + 1, v15 = v16, v16 == v14))
          {
            v7 = 0;
          }

          else
          {
            v7 = 0;
            do
            {
              if ((*(v15 + 8) - 6) >= 3)
              {
                v17 = v15[5];
                if (v17)
                {
                  v18 = *(v17 + 8);
                  if (v18)
                  {
                    if (*(v18 + 16) > v8)
                    {
                      v7 = *(v15 + 8);
                      v8 = *(v18 + 16);
                    }
                  }
                }
              }

              v19 = v15[1];
              if (v19)
              {
                do
                {
                  v20 = v19;
                  v19 = *v19;
                }

                while (v19);
              }

              else
              {
                do
                {
                  v20 = v15[2];
                  v21 = *v20 == v15;
                  v15 = v20;
                }

                while (!v21);
              }

              v15 = v20;
            }

            while (v20 != v14);
          }
        }

        if (qword_1025D4770 != -1)
        {
          sub_1002F97A8();
        }

        v23 = qword_1025D4778;
        if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
        {
          v24 = *(a1 + 2904);
          buf[0] = 134349824;
          *&buf[1] = v5;
          v80 = 1026;
          *v81 = v7;
          *&v81[4] = 2050;
          *&v81[6] = v8;
          *&v81[14] = 1026;
          *&v81[16] = v24;
          _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_DEBUG, "#fusion,setWiFiLocationBatched,received batch of wsb locations,size,%{public}zu,lastNonCellLocationType,%{public}d,lastNonCellLocationFixMCT,%{public}.3f,APwakeup buffer processing mode,%{public}d", buf, 0x22u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101A7B5F4(buf);
          v48 = *(a1 + 2904);
          v69 = 134349824;
          v70 = *&v5;
          v71 = 1026;
          v72 = v7;
          v73 = 2050;
          v74 = v8;
          v75 = 1026;
          v76 = v48;
          v49 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::setWiFiLocationBatched(const CLLocationProvider_Type::NotificationData &)", "%s\n", v49);
          if (v49 != buf)
          {
            free(v49);
          }
        }

        v25 = 0;
        while (1)
        {
          sub_10030E2C0(*(a2 + 808), v25, v51);
          if (sub_100208064(v26, v57))
          {
            if (v54 > 0.0 && !sub_10002807C(v52, v53))
            {
              break;
            }
          }

          if (qword_1025D4770 != -1)
          {
            sub_100224830();
          }

          v27 = qword_1025D4778;
          if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
          {
            buf[0] = 134349056;
            *&buf[1] = v56;
            _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_DEBUG, "#fusion,setWiFiLocationBatched,invalid wsb location is skipped,wsb_location_iosTime,%{public}.3f", buf, 0xCu);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101A7B5F4(buf);
            v69 = 134349056;
            v70 = v56;
            v47 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::setWiFiLocationBatched(const CLLocationProvider_Type::NotificationData &)", "%s\n", v47);
            if (v47 != buf)
            {
              free(v47);
            }
          }

LABEL_62:
          if (v5 == ++v25)
          {
            return 1;
          }
        }

        sub_10030D6E4(*(a2 + 808), v25, &v69);
        v28 = v77;
        v50 = v77;
        if (v77 > 0.000001)
        {
          v29 = sub_10000B1F8();
          buf[0] = 1;
          if (v28 <= sub_10001A6B0(v29, buf))
          {
            goto LABEL_69;
          }
        }

        if (v56 <= 0.000001)
        {
          if (qword_1025D4770 != -1)
          {
            sub_100224830();
          }

          v34 = qword_1025D4778;
          if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
          {
            LOWORD(buf[0]) = 0;
            _os_log_impl(dword_100000000, v34, OS_LOG_TYPE_DEBUG, "#fusion,setWiFiLocationBatched,skipped wsb location with no valid timestamps", buf, 2u);
          }

          if (!sub_10000A100(121, 2))
          {
            goto LABEL_109;
          }

          sub_101A7B5F4(buf);
          *__p = 0;
          v35 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::setWiFiLocationBatched(const CLLocationProvider_Type::NotificationData &)", "%s\n", v35);
        }

        else
        {
          v30 = sub_10000B1F8();
          sub_10000AED4(v30, __p);
          *&v67 = 0.0;
          if (sub_100125300(__p, &v67))
          {
            v50 = v56 - *&v67;
LABEL_69:
            v31 = sub_10000B1F8();
            buf[0] = 1;
            v32 = sub_10001A6B0(v31, buf);
            if (v50 > 0.0 && v50 <= v32)
            {
              if (*(&v55 + 1) > 0.0)
              {
                if (*(&v55 + 1) > 300.0 || *&v55 < -500.0 || *&v55 > 5100.0)
                {
                  v55 = xmmword_101C76220;
                }

                else
                {
                  v33 = &v55 + 1;
                  if (*(&v55 + 1) < 1.0)
                  {
                    v33 = &unk_101CFC6E0;
                  }

                  *(&v55 + 1) = *v33;
                }
              }

              sub_1001FCD94();
            }

            if (qword_1025D4770 != -1)
            {
              sub_100224830();
            }

            v36 = qword_1025D4778;
            if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
            {
              v37 = sub_10000B1F8();
              buf[0] = 0;
              v38 = sub_10001A6B0(v37, buf);
              v39 = v56;
              sub_1001D78F4(__p);
              v40 = __p;
              if (v61 < 0)
              {
                v40 = *__p;
              }

              buf[0] = 134350083;
              *&buf[1] = v32;
              v80 = 2050;
              *v81 = v38;
              *&v81[8] = 2050;
              *&v81[10] = v50;
              *&v81[18] = 2050;
              v82 = v39;
              v83 = 2085;
              v84 = v40;
              _os_log_impl(dword_100000000, v36, OS_LOG_TYPE_DEBUG, "#fusion,setWiFiLocationBatched,detected invalid WSB mach continuous time,likely user changed device time,ignoring wsb sample,timeNowMCT,%{public}.3f,timeNowCFAT,%{public}.3f,wsbMCT,%{public}.3f,wsbCFAT,%{public}.3f,wsbLoc,%{sensitive}s", buf, 0x34u);
              if (SHIBYTE(v61) < 0)
              {
                operator delete(*__p);
              }
            }

            if (!sub_10000A100(121, 2))
            {
              goto LABEL_109;
            }

            sub_101A7B5F4(buf);
            v41 = sub_1000281DC();
            v42 = v56;
            sub_1001D78F4(&v67);
            v43 = &v67;
            if (v68 < 0)
            {
              v43 = v67;
            }

            *__p = 134350083;
            *&__p[4] = v32;
            v59 = 2050;
            v60 = v41;
            v61 = 2050;
            v62 = v50;
            v63 = 2050;
            v64 = v42;
            v65 = 2085;
            v66 = v43;
            v44 = _os_log_send_and_compose_impl();
            if (v68 < 0)
            {
              operator delete(v67);
            }

            sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::setWiFiLocationBatched(const CLLocationProvider_Type::NotificationData &)", "%s\n", v44);
            if (v44 == buf)
            {
              goto LABEL_109;
            }

            v45 = v44;
            goto LABEL_106;
          }

          if (qword_1025D4770 != -1)
          {
            sub_100224830();
          }

          v46 = qword_1025D4778;
          if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
          {
            LOWORD(buf[0]) = 0;
            _os_log_impl(dword_100000000, v46, OS_LOG_TYPE_DEBUG, "#fusion,setWiFiLocationBatched,cannot compute fMachContinuousToCFAbsoluteOffset_s,ignoring wsb sample", buf, 2u);
          }

          if (!sub_10000A100(121, 2))
          {
            goto LABEL_109;
          }

          sub_101A7B5F4(buf);
          v35 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::setWiFiLocationBatched(const CLLocationProvider_Type::NotificationData &)", "%s\n", v35);
        }

        if (v35 == buf)
        {
          goto LABEL_109;
        }

        v45 = v35;
LABEL_106:
        free(v45);
LABEL_109:
        if (v78)
        {
          sub_100008080(v78);
        }

        goto LABEL_62;
      }

      if (qword_1025D4770 != -1)
      {
        sub_1002F97A8();
      }

      v22 = qword_1025D4778;
      if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEBUG, "#fusion,setWiFiLocationBatched,has no location data,nothing to process.", buf, 2u);
      }

      result = sub_10000A100(121, 2);
      if (result)
      {
        goto LABEL_43;
      }
    }

    else
    {
      if (qword_1025D4770 != -1)
      {
        sub_1002F97A8();
      }

      v12 = qword_1025D4778;
      if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "#fusion,setWiFiLocationBatched,batch location data is nullptr,nothing to process.", buf, 2u);
      }

      result = sub_10000A100(121, 2);
      if (result)
      {
LABEL_43:
        sub_101A7B5F4(buf);
        LOWORD(v69) = 0;
        v11 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::setWiFiLocationBatched(const CLLocationProvider_Type::NotificationData &)", "%s\n", v11);
        goto LABEL_44;
      }
    }
  }

  else
  {
    if (qword_1025D4770 != -1)
    {
      sub_1002F97A8();
    }

    v9 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_ERROR, "#Error,Feed setWiFiLocationBatched,LC Fusion is not configured.", buf, 2u);
    }

    result = sub_10000A100(121, 0);
    if (result)
    {
      sub_101A7B5F4(buf);
      LOWORD(v69) = 0;
      v11 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "BOOL cllcf::CLLCFusion::setWiFiLocationBatched(const CLLocationProvider_Type::NotificationData &)", "%s\n", v11);
LABEL_44:
      if (v11 != buf)
      {
        free(v11);
      }

      return 0;
    }
  }

  return result;
}

void sub_100320654(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10037EA9C(a1);
  }

  _Unwind_Resume(a1);
}

double sub_10032066C(uint64_t a1)
{
  *a1 = &off_10246D800;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  return result;
}

uint64_t sub_10032069C(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      v5 = *(this + 1);
      if (v5 >= *(this + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
        *(this + 8) = TagFallback;
        if (!TagFallback)
        {
          return 1;
        }
      }

      else
      {
        *(this + 8) = TagFallback;
        *(this + 1) = v5 + 1;
        if (!TagFallback)
        {
          return 1;
        }
      }

      v7 = TagFallback >> 3;
      v8 = TagFallback & 7;
      if (TagFallback >> 3 <= 2)
      {
        break;
      }

      if (v7 == 3)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_21;
        }

        v12 = *(this + 1);
        v9 = *(this + 2);
        goto LABEL_46;
      }

      if (v7 == 4)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_21;
        }

        v13 = *(this + 1);
        v9 = *(this + 2);
LABEL_54:
        if (v13 >= v9 || (v29 = *v13, v29 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 32));
          if (!result)
          {
            return result;
          }

          v30 = *(this + 1);
          v9 = *(this + 2);
        }

        else
        {
          *(a1 + 32) = v29;
          v30 = v13 + 1;
          *(this + 1) = v30;
        }

        *(a1 + 52) |= 8u;
        if (v30 < v9 && *v30 == 40)
        {
          v10 = v30 + 1;
          *(this + 1) = v10;
LABEL_62:
          if (v10 >= v9 || (v31 = *v10, v31 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 40));
            if (!result)
            {
              return result;
            }

            v32 = *(this + 1);
            v9 = *(this + 2);
          }

          else
          {
            *(a1 + 40) = v31;
            v32 = v10 + 1;
            *(this + 1) = v32;
          }

          *(a1 + 52) |= 0x10u;
          if (v32 == v9 && (*(this + 11) || *(this + 6) == *(this + 10)))
          {
            *(this + 8) = 0;
            result = 1;
            *(this + 36) = 1;
            return result;
          }
        }
      }

      else
      {
        if (v7 == 5 && (TagFallback & 7) == 0)
        {
          v10 = *(this + 1);
          v9 = *(this + 2);
          goto LABEL_62;
        }

LABEL_21:
        if (v8 == 4)
        {
          return 1;
        }

        if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) == 0)
        {
          return 0;
        }
      }
    }

    if (v7 != 1)
    {
      if (v7 != 2 || (TagFallback & 7) != 0)
      {
        goto LABEL_21;
      }

      v11 = *(this + 1);
      v9 = *(this + 2);
      goto LABEL_38;
    }

    if (v8 != 2)
    {
      goto LABEL_21;
    }

    *(a1 + 52) |= 1u;
    v14 = *(a1 + 8);
    if (!v14)
    {
      operator new();
    }

    v33 = 0;
    v15 = *(this + 1);
    if (v15 >= *(this + 2) || *v15 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v33))
      {
        return 0;
      }
    }

    else
    {
      v33 = *v15;
      *(this + 1) = v15 + 1;
    }

    v16 = *(this + 14);
    v17 = *(this + 15);
    *(this + 14) = v16 + 1;
    if (v16 >= v17)
    {
      return 0;
    }

    v18 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v33);
    if (!sub_100320A44(v14, this, v19) || *(this + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v18);
    v20 = *(this + 14);
    v21 = __OFSUB__(v20, 1);
    v22 = v20 - 1;
    if (v22 < 0 == v21)
    {
      *(this + 14) = v22;
    }

    v23 = *(this + 1);
    v9 = *(this + 2);
    if (v23 < v9 && *v23 == 16)
    {
      v11 = v23 + 1;
      *(this + 1) = v11;
LABEL_38:
      if (v11 >= v9 || (v24 = *v11, v24 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 16));
        if (!result)
        {
          return result;
        }

        v25 = *(this + 1);
        v9 = *(this + 2);
      }

      else
      {
        *(a1 + 16) = v24;
        v25 = v11 + 1;
        *(this + 1) = v25;
      }

      *(a1 + 52) |= 2u;
      if (v25 < v9 && *v25 == 24)
      {
        v12 = v25 + 1;
        *(this + 1) = v12;
LABEL_46:
        if (v12 >= v9 || (v27 = *v12, v27 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 24));
          if (!result)
          {
            return result;
          }

          v28 = *(this + 1);
          v9 = *(this + 2);
        }

        else
        {
          *(a1 + 24) = v27;
          v28 = v12 + 1;
          *(this + 1) = v28;
        }

        *(a1 + 52) |= 4u;
        if (v28 < v9 && *v28 == 32)
        {
          v13 = v28 + 1;
          *(this + 1) = v13;
          goto LABEL_54;
        }
      }
    }
  }
}

uint64_t sub_100320A44(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v5 = *(this + 1);
        if (v5 >= *(this + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
        {
          TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
          *(this + 8) = TagFallback;
          if (!TagFallback)
          {
            return 1;
          }
        }

        else
        {
          *(this + 8) = TagFallback;
          *(this + 1) = v5 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v7 = TagFallback >> 3;
        v8 = TagFallback & 7;
        if (TagFallback >> 3 > 3)
        {
          if (v7 == 4)
          {
            if ((TagFallback & 7) == 0)
            {
              v17 = *(this + 1);
              v11 = *(this + 2);
              goto LABEL_59;
            }
          }

          else if (v7 == 5)
          {
            if ((TagFallback & 7) == 0)
            {
              v19 = *(this + 1);
              v11 = *(this + 2);
              goto LABEL_67;
            }
          }

          else if (v7 == 6 && (TagFallback & 7) == 0)
          {
            v12 = *(this + 1);
            v11 = *(this + 2);
            goto LABEL_75;
          }

          goto LABEL_26;
        }

        if (v7 != 1)
        {
          break;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_26;
        }

        v40 = 0;
        v14 = *(this + 1);
        v13 = *(this + 2);
        if (v14 >= v13 || (v15 = *v14, (v15 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v40);
          if (!result)
          {
            return result;
          }

          v15 = v40;
          v16 = *(this + 1);
          v13 = *(this + 2);
        }

        else
        {
          v16 = v14 + 1;
          *(this + 1) = v16;
        }

        *(a1 + 16) = v15 != 0;
        v18 = *(a1 + 48) | 1;
        *(a1 + 48) = v18;
        if (v16 < v13 && *v16 == 18)
        {
          *(this + 1) = v16 + 1;
          goto LABEL_35;
        }
      }

      if (v7 == 2)
      {
        break;
      }

      if (v7 == 3 && (TagFallback & 7) == 0)
      {
        v10 = *(this + 1);
        v9 = *(this + 2);
        goto LABEL_49;
      }

LABEL_26:
      if (v8 == 4)
      {
        return 1;
      }

      if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) == 0)
      {
        return 0;
      }
    }

    if (v8 != 2)
    {
      goto LABEL_26;
    }

    v18 = *(a1 + 48);
LABEL_35:
    *(a1 + 48) = v18 | 2;
    v21 = *(a1 + 8);
    if (!v21)
    {
      operator new();
    }

    v41 = 0;
    v22 = *(this + 1);
    if (v22 >= *(this + 2) || *v22 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v41))
      {
        return 0;
      }
    }

    else
    {
      v41 = *v22;
      *(this + 1) = v22 + 1;
    }

    v23 = *(this + 14);
    v24 = *(this + 15);
    *(this + 14) = v23 + 1;
    if (v23 >= v24)
    {
      return 0;
    }

    v25 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v41);
    if (!sub_10012C044(v21, this, v26) || *(this + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v25);
    v27 = *(this + 14);
    v28 = __OFSUB__(v27, 1);
    v29 = v27 - 1;
    if (v29 < 0 == v28)
    {
      *(this + 14) = v29;
    }

    v30 = *(this + 1);
    v9 = *(this + 2);
    if (v30 < v9 && *v30 == 24)
    {
      v10 = v30 + 1;
      *(this + 1) = v10;
LABEL_49:
      v39 = 0;
      if (v10 >= v9 || (v31 = *v10, (v31 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v39);
        if (!result)
        {
          return result;
        }

        v31 = v39;
      }

      else
      {
        *(this + 1) = v10 + 1;
      }

      if (v31 <= 6)
      {
        *(a1 + 48) |= 4u;
        *(a1 + 20) = v31;
      }

      v32 = *(this + 1);
      v11 = *(this + 2);
      if (v32 < v11 && *v32 == 32)
      {
        v17 = v32 + 1;
        *(this + 1) = v17;
LABEL_59:
        if (v17 >= v11 || (v33 = *v17, v33 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 40));
          if (!result)
          {
            return result;
          }

          v34 = *(this + 1);
          v11 = *(this + 2);
        }

        else
        {
          *(a1 + 40) = v33;
          v34 = v17 + 1;
          *(this + 1) = v34;
        }

        *(a1 + 48) |= 8u;
        if (v34 < v11 && *v34 == 40)
        {
          v19 = v34 + 1;
          *(this + 1) = v19;
LABEL_67:
          if (v19 >= v11 || (v35 = *v19, v35 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 24));
            if (!result)
            {
              return result;
            }

            v36 = *(this + 1);
            v11 = *(this + 2);
          }

          else
          {
            *(a1 + 24) = v35;
            v36 = v19 + 1;
            *(this + 1) = v36;
          }

          *(a1 + 48) |= 0x10u;
          if (v36 < v11 && *v36 == 48)
          {
            v12 = v36 + 1;
            *(this + 1) = v12;
LABEL_75:
            if (v12 >= v11 || (v37 = *v12, v37 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 32));
              if (!result)
              {
                return result;
              }

              v38 = *(this + 1);
              v11 = *(this + 2);
            }

            else
            {
              *(a1 + 32) = v37;
              v38 = v12 + 1;
              *(this + 1) = v38;
            }

            *(a1 + 48) |= 0x20u;
            if (v38 == v11 && (*(this + 11) || *(this + 6) == *(this + 10)))
            {
              *(this + 8) = 0;
              result = 1;
              *(this + 36) = 1;
              return result;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_100320E88(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 48);
  if (v4)
  {
    *a2 = *(result + 16);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_3;
  }

  v5 = *(result + 8);
  if (!v5)
  {
    v5 = *(qword_102637240 + 8);
  }

  result = sub_100321150(v5, a2 + 8);
  v4 = *(v3 + 48);
  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  result = sub_1003211AC(*(v3 + 20));
  *(a2 + 40) = result;
  v4 = *(v3 + 48);
  if ((v4 & 8) == 0)
  {
LABEL_5:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(a2 + 44) = *(v3 + 40);
  v4 = *(v3 + 48);
  if ((v4 & 0x10) == 0)
  {
LABEL_6:
    if ((v4 & 0x20) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

LABEL_15:
  *(a2 + 48) = *(v3 + 24);
  if ((v4 & 0x20) == 0)
  {
    return result;
  }

LABEL_7:
  *(a2 + 56) = *(v3 + 32);
  return result;
}

uint64_t sub_100320F38(uint64_t result, uint64_t a2, void *a3)
{
  v4 = result;
  v5 = *(result + 52);
  if (v5)
  {
    v6 = *(result + 8);
    if (!v6)
    {
      v6 = *(qword_102637248 + 8);
    }

    result = sub_100320E88(v6, a2);
    v5 = *(v4 + 52);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        return result;
      }

      goto LABEL_4;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  *a3 = *(v4 + 16);
  if ((v5 & 4) == 0)
  {
    return result;
  }

LABEL_4:
  a3[1] = *(v4 + 24);
  return result;
}

void sub_100320FA8(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if ((*(*a2 + 216) & 0x80) != 0)
  {
    LOBYTE(buf) = 0;
    *(&buf + 1) = 0;
    LODWORD(v15) = -1082130432;
    BYTE4(v15) = 0;
    DWORD2(v15) = 0;
    v16 = 0xFFFFFFFFFFFFFFFFLL;
    v17 = 0uLL;
    v13 = 0uLL;
    v5 = *(v2 + 56);
    if (!v5)
    {
      v5 = *(qword_102637FA0 + 56);
    }

    sub_100320F38(v5, &buf, &v13);
    v6 = *(a1 + 2168);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    v8 = buf;
    v9 = v15;
    v10 = v16;
    v11 = v17;
    block[2] = sub_100321A28;
    block[3] = &unk_1024FC618;
    block[4] = a1;
    v12 = v13;
    dispatch_async(v6, block);
  }

  else
  {
    if (qword_1025D4650 != -1)
    {
      sub_1002981B4();
    }

    v3 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "handleTimeTransferIndication";
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "#gpsd,#warning,#tt,no_data,%s", &buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101771108();
    }
  }
}

uint64_t sub_100321150(uint64_t result, uint64_t a2)
{
  v2 = *(result + 72);
  if (v2)
  {
    *a2 = *(result + 8);
    if ((v2 & 2) == 0)
    {
LABEL_3:
      if ((v2 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_3;
  }

  *(a2 + 8) = *(result + 16);
  if ((v2 & 4) == 0)
  {
LABEL_4:
    if ((v2 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  *(a2 + 12) = *(result + 20);
  if ((v2 & 8) == 0)
  {
LABEL_5:
    if ((v2 & 0x10) == 0)
    {
      return result;
    }

LABEL_11:
    *(a2 + 24) = *(result + 24);
    return result;
  }

LABEL_10:
  *(a2 + 16) = *(result + 64);
  if ((*(result + 72) & 0x10) != 0)
  {
    goto LABEL_11;
  }

  return result;
}

uint64_t sub_1003211AC(void *a1)
{
  result = (a1 - 1);
  if (result >= 6)
  {
    if (qword_1025D4650 != -1)
    {
      sub_101621394();
    }

    v3 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
    {
      v5[0] = 67109120;
      v5[1] = a1;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "Invalid value %d for proto::gnss::TimeQuality", v5, 8u);
    }

    v4 = sub_10000A100(121, 0);
    result = 0;
    if (v4)
    {
      sub_1016213A8(a1);
      return 0;
    }
  }

  return result;
}

void sub_100321298(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_1003212D0(a1);

  operator delete();
}

void sub_1003212D0(wireless_diagnostics::google::protobuf::MessageLite *this)
{
  *this = &off_10246D800;
  if (qword_102637248 != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

void sub_10032135C(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_100321394(a1);

  operator delete();
}

void sub_100321394(wireless_diagnostics::google::protobuf::MessageLite *this)
{
  *this = &off_10246D788;
  if (qword_102637240 != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

void sub_100321420(uint64_t a1, uint64_t a2, void **a3)
{
  if (*a3 && a3[1] > *a3)
  {
    sub_1003218A4(a1, a2, a3, &v22);
    if (qword_1025D4650 != -1)
    {
      sub_100154094();
    }

    v6 = qword_1025D4658;
    if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
LABEL_20:
      if (!sub_10000A100(121, 2))
      {
LABEL_21:
        sub_100321BE0(a1, a2);
        *v50 = v24;
        *&v50[16] = v25;
        *&v50[32] = v26;
        *buf = v22;
        *&buf[16] = v23;
        sub_1003220E0(a1, buf);
        if (*a2 == 1)
        {
          v15 = *(a1 + 2904);
          if (v15)
          {
            sub_100322B84(v15, *(a2 + 8), *a3, a3[1], *(a2 + 16));
          }
        }

        sub_100173FA0(a1, 0x1Cu);
        return;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1025D4650 != -1)
      {
        sub_100154094();
      }

      v16 = sub_100322924(&v22);
      if (*(&v22 + 2) >= 1.0e11)
      {
        if (*(&v22 + 2) <= 0.0)
        {
          v17 = 0;
          goto LABEL_35;
        }
      }

      else
      {
        v17 = 0;
        if (*(&v22 + 2) <= 0.0 || !v22)
        {
LABEL_35:
          v18 = *(a2 + 16);
          v19 = *a3;
          v20 = a3[1];
          v27 = 67111680;
          v28 = v16;
          v29 = 1024;
          v30 = v17;
          v31 = 1024;
          v32 = BYTE12(v22);
          v33 = 2048;
          v34 = v22;
          v35 = 2048;
          v36 = 604800000000000 * dword_102655D48;
          v37 = 2048;
          v38 = *(&v22 + 2);
          v39 = 2048;
          v40 = v18;
          v41 = 2048;
          v42 = v24;
          v43 = 1024;
          v44 = v26;
          v45 = 2048;
          v46 = v19;
          v47 = 2048;
          v48 = v20;
          v21 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "void CLGnssDaemonDevice::handleTimeTransferData(const gnss::TimeTransferData &, const GNSS::TimeMark &)", "%s\n", v21);
          if (v21 != buf)
          {
            free(v21);
          }

          goto LABEL_21;
        }
      }

      v17 = *(&v23 + 1) != -1;
      goto LABEL_35;
    }

    v7 = sub_100322924(&v22);
    if (*(&v22 + 2) >= 1.0e11)
    {
      if (*(&v22 + 2) <= 0.0)
      {
        v8 = 0;
        goto LABEL_19;
      }
    }

    else
    {
      v8 = 0;
      if (*(&v22 + 2) <= 0.0 || !v22)
      {
        goto LABEL_19;
      }
    }

    v8 = *(&v23 + 1) != -1;
LABEL_19:
    v12 = *(a2 + 16);
    v13 = *a3;
    v14 = a3[1];
    *buf = 67111680;
    *&buf[4] = v7;
    *&buf[8] = 1024;
    *&buf[10] = v8;
    *&buf[14] = 1024;
    *&buf[16] = BYTE12(v22);
    *&buf[20] = 2048;
    *&buf[22] = v22;
    *&buf[30] = 2048;
    *v50 = 604800000000000 * dword_102655D48;
    *&v50[8] = 2048;
    *&v50[10] = *(&v22 + 2);
    *&v50[18] = 2048;
    *&v50[20] = v12;
    *&v50[28] = 2048;
    *&v50[30] = v24;
    *&v50[38] = 1024;
    v51 = v26;
    v52 = 2048;
    v53 = v13;
    v54 = 2048;
    v55 = v14;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "#tt,pulseTimeValid,%d,fTimeValid,%d,LeapValid,%d,GPSNs,%llu,%llu,uncNs,%.1f,uncNsTT,%.1f,fBias,%lld,fSource,%d,before,%llu,after,%llu", buf, 0x60u);
    goto LABEL_20;
  }

  if (qword_1025D4650 != -1)
  {
    sub_1002981B4();
  }

  v9 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *a3;
    v11 = a3[1];
    *buf = 134349312;
    *&buf[4] = v10;
    *&buf[12] = 2050;
    *&buf[14] = v11;
    _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "#gpsd,#tt,#Warning,invalid ttPulseMark,before,%{public}llu,after,%{public}llu", buf, 0x16u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1017768D8();
  }
}

void sub_1003218A4(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = 0;
  *(a4 + 8) = -1082130432;
  *(a4 + 12) = 0;
  *(a4 + 16) = 0;
  *(a4 + 24) = xmmword_101DABC40;
  *(a4 + 48) = 0;
  *(a4 + 56) = 0;
  *(a4 + 40) = 0;
  *(a4 + 64) = 0;
  if (*a2)
  {
    *a4 = *(a2 + 8);
    v8 = sub_1000080EC(a3[1] - *a3) * 1000000000.0 + 1000000.0 + *(a2 + 16);
    *(a4 + 8) = v8;
    *(a4 + 12) = *(a1 + 1720);
    *(a4 + 16) = sub_10029E3E8();
    *(a4 + 24) = *(a2 + 32);
    *(a4 + 32) = 0;
    *(a4 + 48) = *a3;
    *(a4 + 64) = sub_100321A3C((a1 + 1864), a4);
  }

  else
  {
    if (qword_1025D4650 != -1)
    {
      sub_1002981B4();
    }

    v9 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      v10[0] = 68289026;
      v10[1] = 0;
      v11 = 2082;
      v12 = "";
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#tt,InvalidGpsWeek}", v10, 0x12u);
    }
  }
}

uint64_t sub_100321A3C(float *a1, float *a2)
{
  if (qword_1025D4650 != -1)
  {
    sub_101A3A9C4();
  }

  v4 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a1 + 48);
    v6 = *a2;
    v7 = *a1;
    v8 = (*a2 - *a1) * 0.000001;
    v9 = a2[2];
    v12[0] = 67110144;
    v12[1] = v5;
    v13 = 2050;
    v14 = v6;
    v15 = 2050;
    v16 = v7;
    v17 = 2050;
    v18 = v8;
    v19 = 2050;
    v20 = v9;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "#tt,posvalid,%d,ttTimeNs,%{public}llu,epochTimeNs,%{public}llu,diffMs,%{public}.2f,ttUncNs,%{public}.2f", v12, 0x30u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101A3AB3C(a1, a2);
  }

  if (*(a1 + 48) != 1 || *a2 <= *a1 || (*a2 - *a1) > 2999999999)
  {
    return 0;
  }

  v10 = a2[2];
  if (v10 < 2000000.0 && (~*(a1 + 34) & 3) == 0)
  {
    return 2;
  }

  return v10 < 10000000.0;
}

void sub_100321BE0(uint64_t a1, unsigned __int8 *a2)
{
  if (!*(a1 + 2904) && *(a1 + 2928) == 1 && *(a1 + 1672) && *a2 == 1 && *(a2 + 6))
  {
    *(a1 + 2864) = *(a2 + 1);
    *(a1 + 2872) = *(a2 + 4);
    *(a1 + 2816) = sub_10012BF30();
    *(a1 + 2880) = sub_10029E3E8();
    v4 = *(a2 + 6);
    *(a1 + 2824) = v4 / 0xF4240;
    v5 = -((v4 / 0xF4240) - v4 * 0.000001);
    *(a1 + 2832) = v5;
    v6 = *(a2 + 7) * 0.000001;
    *(a1 + 2836) = v6;
    if (qword_1025D4650 != -1)
    {
      sub_1002981B4();
    }

    v7 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      v8 = *(a1 + 2816);
      v9 = *(a2 + 6);
      v10 = *(a1 + 2824);
      v11 = *(a1 + 2832);
      v12 = *(a1 + 2836);
      *buf = 134219008;
      *v28 = v8;
      *&v28[8] = 2048;
      v29 = v9;
      *v30 = 2048;
      *&v30[2] = v10;
      v31 = 2048;
      v32 = v11;
      v33 = 2048;
      v34 = v12;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "#gpsd,#tt,baseband TFT data,mct,%.1f,bbNs,%llu,bbIntegerMs,%llu,bbSubMs,%.3f,bbUncMs,%.6f", buf, 0x34u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4650 != -1)
      {
        sub_100154094();
      }

      v26 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLGnssDaemonDevice::updateBasebandTimeFreqTransferData(const gnss::TimeTransferData &)", "%s\n", v26);
      if (v26 != buf)
      {
        free(v26);
      }
    }

    v13 = *(a1 + 1672);
    if (!v13)
    {
      sub_1000CF05C();
    }

    (*(*v13 + 48))(v13, a1 + 2816);
    *(a1 + 2816) = 0;
    *(a1 + 2824) = 0;
    __asm { FMOV            V0.2S, #-1.0 }

    *(a1 + 2832) = _D0;
    *(a1 + 2840) = 0x7FF8000000000000;
    *(a1 + 2848) = 3212836864;
    *(a1 + 2856) = 0x7FF8000000000000;
    *(a1 + 2864) = 0;
    *(a1 + 2872) = 3212836864;
    *(a1 + 2880) = 0x8000;
    *(a1 + 2882) = 0;
    *(a1 + 2888) = 0;
    *(a1 + 2896) = 0x8000;
    *(a1 + 2898) = 0;
    *(a1 + 2902) = 0;
  }

  else
  {
    if (qword_1025D4650 != -1)
    {
      sub_1002981B4();
    }

    v19 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      v20 = *(a1 + 2904) != 0;
      v21 = *(a1 + 2928);
      v22 = *(a1 + 1672) != 0;
      v23 = *a2;
      v24 = *(a2 + 6) != 0;
      *buf = 67241216;
      *v28 = v20;
      *&v28[4] = 1026;
      *&v28[6] = v21;
      LOWORD(v29) = 1026;
      *(&v29 + 2) = v22;
      HIWORD(v29) = 1026;
      *v30 = v23;
      *&v30[4] = 1026;
      *&v30[6] = v24;
      _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEFAULT, "#gpsd,updateBasebandTimeFreqTransferData,ttData,%{public}d,%{public}d,%{public}d,%{public}d,%{public}d", buf, 0x20u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4650 != -1)
      {
        sub_100154094();
      }

      v25 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLGnssDaemonDevice::updateBasebandTimeFreqTransferData(const gnss::TimeTransferData &)", "%s\n", v25);
      if (v25 != buf)
      {
        free(v25);
      }
    }
  }
}

void sub_1003220E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 1576);
  if (v2)
  {
    v3 = *(a2 + 16);
    v6[0] = *a2;
    v6[1] = v3;
    v7 = *(a2 + 64);
    v4 = *(a2 + 48);
    v6[2] = *(a2 + 32);
    v6[3] = v4;
    (*(*v2 + 48))(v2, v6);
  }

  else
  {
    if (qword_1025D4650 != -1)
    {
      sub_10174F5D8();
    }

    v5 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v6[0]) = 0;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_ERROR, "#tt, Time transfer callback is not set.", v6, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10174F6D4();
    }
  }
}

BOOL sub_1003221C0(uint64_t a1, uint64_t a2)
{
  v2 = **(a1 + 8);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 64);
  v4 = *(a2 + 48);
  v7[2] = *(a2 + 32);
  v7[3] = v4;
  v5 = ((*v2)[6])(v2, v7);
  return sub_1001752AC(v2[1], v5);
}

_UNKNOWN **sub_10032223C(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    if (qword_1025D4650 != -1)
    {
      sub_10168BBC0();
    }

    v7 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_ERROR, "#tt, received data when not expecting.  Stopping", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10168CD04();
    }

    sub_10168A93C(*(a1 + 8));
    v8 = **(a1 + 8);
    return *(*v8 - 8);
  }

  *(a1 + 16) = 0;
  if (!sub_100322924(a2))
  {
    goto LABEL_39;
  }

  v4 = *a2 / 0x2260FF9290000uLL;
  v5 = *a2 % 0x2260FF9290000uLL / 0xF4240;
  if (sub_1003229E8(v4, v5))
  {
    if (qword_1025D4650 != -1)
    {
      sub_10168BBC0();
    }

    v6 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67240704;
      *&buf[4] = v4;
      *&buf[8] = 1026;
      *&buf[10] = v5;
      *&buf[14] = 2050;
      *&buf[16] = sub_100322A38();
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "#Warning,#tt,imag,1,NotSettingTime,Gpsweek,%{public}d,GpsTowMs,%{public}d,BuildDate,%{public}.0lf", buf, 0x18u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10168CFE8(v4);
    }

    goto LABEL_39;
  }

  v10 = (a2 + 40);
  v9 = *(a2 + 40);
  if (v9 && (*a2 < v9 || *a2 > v9 + 604800000000000))
  {
    if (qword_1025D4650 != -1)
    {
      sub_10168BBC0();
    }

    v17 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      v18 = *v10 / 0x2260FF9290000uLL;
      *buf = 67240448;
      *&buf[4] = v4;
      *&buf[8] = 1026;
      *&buf[10] = v18;
      _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEFAULT, "#Warning,#tt,NotSettingTime,GpsWeek,%{public}d,ExtEphGpsWeek,%{public}d", buf, 0xEu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10168CDF0((a2 + 40));
    }

    goto LABEL_39;
  }

  if (qword_1025D4650 != -1)
  {
    sub_10168BBC0();
  }

  v11 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    v12 = *v10 / 0x2260FF9290000uLL;
    *buf = 67240448;
    *&buf[4] = v4;
    *&buf[8] = 1026;
    *&buf[10] = v12;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "#tt,GpsWeek,%{public}d,ExtEphGpsWeek,%{public}d", buf, 0xEu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10168CEEC((a2 + 40));
  }

  v13 = *(a1 + 8);
  if (*(v13 + 40) & 1) != 0 || (*(v13 + 84))
  {
LABEL_39:
    if (*(*(a1 + 8) + 40) == 1)
    {
      if (qword_1025D4650 != -1)
      {
        sub_10168BCB8();
      }

      v19 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEFAULT, "#tt,#warning,#imag,ignoring TT pulse", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10168D1F0();
      }
    }

    else
    {
      if (qword_1025D4650 != -1)
      {
        sub_10168BCB8();
      }

      v20 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEFAULT, "#tt,#warning,not sending TT to TM.", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10168D10C();
      }
    }

    v14 = 0;
    goto LABEL_53;
  }

  sub_100322AC8(&v33, a2);
  v14 = 0;
  if (v33 != 0x8000000000000000 && *(&v33 + 1) != 0.0 && v34 > 0.0)
  {
    if ((atomic_load_explicit(&qword_102666AF8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_102666AF8))
    {
      *&buf[32] = unk_1024F9570;
      *v36 = unk_1024F9580;
      *&v36[16] = unk_1024F9590;
      *buf = unk_1024F9550;
      *&buf[16] = unk_1024F9560;
      sub_10168B9A8(qword_102666AE0, buf, 5);
      __cxa_atexit(sub_10168B574, qword_102666AE0, dword_100000000);
      __cxa_guard_release(&qword_102666AF8);
    }

    v15 = *(a1 + 8);
    v16 = v34;
    *(v15 + 16) = v33;
    *(v15 + 32) = v16;
    [NSString stringWithUTF8String:*sub_1003DD9F8(qword_102666AE0, (a2 + 64))];
    TMProvideBBTime();
    v14 = 1;
  }

LABEL_53:
  if (qword_1025D4650 != -1)
  {
    sub_10168BCB8();
  }

  v21 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    v22 = *a2;
    v23 = *(a2 + 8);
    v24 = *(a2 + 12);
    v25 = *(a2 + 16);
    v27 = *(a2 + 24);
    v26 = *(a2 + 32);
    v28 = *(a2 + 48);
    v29 = *(a2 + 56);
    v30 = *(*(a1 + 8) + 84);
    *buf = 68291586;
    *&buf[8] = 2082;
    *&buf[4] = 0;
    *&buf[10] = "";
    *&buf[18] = 2050;
    *&buf[20] = v22;
    *&buf[28] = 2050;
    *&buf[30] = v26;
    *&buf[38] = 2050;
    *&buf[40] = v23;
    *v36 = 1026;
    *&v36[2] = v24;
    *&v36[6] = 1026;
    *&v36[8] = v25;
    *&v36[12] = 2050;
    *&v36[14] = v27;
    *&v36[22] = 2050;
    *&v36[24] = v28;
    v37 = 2050;
    v38 = v29;
    v39 = 1026;
    v40 = v14;
    v41 = 1026;
    v42 = v30;
    _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#tt,bbPulseTime, gps time ns:%{public}llu, bias ns:%{public}lld, uncertainty:%{public}f, leap seconds valid:%{public}hhd, leap seconds:%{public}d, receiver clock:%{public}llu, time before pulse:%{public}llu, time after pulse:%{public}llu, sent to timed:%{public}hhd, continuousMode:%{public}d}", buf, 0x66u);
  }

  v31 = *(a1 + 8);
  if ((*(v31 + 84) & 1) != 0 || *(a1 + 20) < *(v31 + 56))
  {
    v8 = *v31;
    return *(*v8 - 8);
  }

  sub_10168A93C(v31);
}

BOOL sub_100322924(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 1.0e11)
  {
    if (v1 <= 0.0)
    {
      return 0;
    }
  }

  else if (v1 <= 0.0 || *a1 == 0)
  {
    return 0;
  }

  if (*(a1 + 24) == -1)
  {
    return 0;
  }

  v3 = *(a1 + 48);
  if (!v3)
  {
    return v3;
  }

  v4 = *(a1 + 56);
  v5 = v4 > v3;
  v6 = v4 - v3;
  if (!v5 || *(a1 + 32) == 0x8000000000000000 || 604800000000000 * dword_102637B68 >= *a1)
  {
    return 0;
  }

  v3 = 0;
  if (v6 <= 0xF4240 && (*(a1 + 12) & 1) != 0)
  {
    return *(a1 + 64) != 0;
  }

  return v3;
}

double sub_100322A38()
{
  v0 = qword_102656780;
  if (!qword_102656780)
  {
    memset(&v2, 0, sizeof(v2));
    if (!strptime("Oct 23 2025 06:57:10", "%b %d %Y %H:%M:%S", &v2))
    {
      return 0.0;
    }

    v0 = mktime(&v2);
    qword_102656780 = v0;
  }

  result = v0 - kCFAbsoluteTimeIntervalSince1970;
  if (v0 <= 0)
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_100322AC8(uint64_t a1, uint64_t a2)
{
  *a1 = 0x8000000000000000;
  *(a1 + 8) = 0;
  *(a1 + 16) = 2143289344;
  if (sub_100322924(a2) && *(a2 + 12) == 1 && (*a2 & 0x8000000000000000) == 0)
  {
    *a1 = *a2 - *(a2 + 32) - 1000000000 * *(a2 + 16) - 662342400000000000;
    v4 = sub_1000080EC(*(a2 + 48));
    *(a1 + 8) = v4 + sub_1000080EC(*(a2 + 56) - *(a2 + 48)) * 0.5;
    *(a1 + 16) = *(a2 + 8);
  }

  return a1;
}

void sub_100322B84(uint64_t a1, void *a2, void *a3, uint64_t a4, float a5)
{
  if (qword_1025D4650 != -1)
  {
    sub_101689714();
  }

  v10 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
  {
    v11 = 134349312;
    v12 = a2;
    v13 = 2050;
    v14 = a3;
    _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_INFO, "#GnssTTPCIe,feedMachTimeToGPSTimeTransferNew,gpsTimeNs,%{public}llu,measBeginMach,%{public}llu", &v11, 0x16u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101689CA4(a2, a3);
  }

  *(a1 + 48) = a3;
  *(a1 + 56) = a4;
  *(a1 + 64) = a2;
  *(a1 + 72) = a5;
  sub_100322CA4(a1);
}

void sub_100322CA4(uint64_t a1)
{
  v3 = (a1 + 16);
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) && *(a1 + 32) && *(a1 + 12) == 1 && *(a1 + 40) == 1 && (v4 = *(a1 + 48)) != 0 && *(a1 + 56) > v4 && *(a1 + 64) && *(a1 + 72) > 0.0)
  {
    v5 = sub_1000080EC(v2);
    v6 = sub_1000080EC(*(a1 + 24));
    v7 = sub_1000080EC(*(a1 + 48));
    v8 = sub_1000080EC(*(a1 + 56));
    v9 = vabdd_f64(v5, v7);
    if (v9 > 2.0 || v6 > 0.0001 || v8 - v7 > 0.0001)
    {
      if (qword_1025D4650 != -1)
      {
        sub_101689714();
      }

      v32 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
      {
        *buf = 134349568;
        *v83 = v9;
        *&v83[8] = 2050;
        *&v83[10] = v6;
        *&v83[18] = 2050;
        *&v83[20] = v8 - v7;
        _os_log_impl(dword_100000000, v32, OS_LOG_TYPE_ERROR, "#GnssTTPCIe,diffModemGpsTimeTransferStartSec,%{public}f,modeTimeReadDurationSec,%{public}f,readDurationGpsTimeSec,%{public}f", buf, 0x20u);
      }

      if (sub_10000A100(121, 0))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4650 != -1)
        {
          sub_101689A0C();
        }

        v62 = 134349568;
        *v63 = v9;
        *&v63[8] = 2050;
        *&v63[10] = v6;
        *&v63[18] = 2050;
        *&v63[20] = v8 - v7;
        v33 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 0, "void CLDiscreteGPSToCellularModemTimeTransferViaMachTime::timeTransferNotification()", "%s\n", v33);
        if (v33 != buf)
        {
          free(v33);
        }
      }
    }

    else
    {
      v10 = *(a1 + 48) + ((*(a1 + 56) - *(a1 + 48)) >> 1);
      v11 = *(a1 + 16);
      v12 = *(a1 + 24);
      v13 = v11 + (v12 >> 1);
      if (v10 <= v13)
      {
        v14 = v11 + (v12 >> 1);
      }

      else
      {
        v14 = *(a1 + 48) + ((*(a1 + 56) - *(a1 + 48)) >> 1);
      }

      if (v13 >= v10)
      {
        v15 = *(a1 + 48) + ((*(a1 + 56) - *(a1 + 48)) >> 1);
      }

      else
      {
        v15 = v13;
      }

      v16 = v14 - v15;
      v17 = sub_1000080EC(v14 - v15);
      v18 = *(a1 + 32) / 19200000.0;
      if (qword_1025D4650 != -1)
      {
        v50 = v17;
        sub_101689714();
        v17 = v50;
      }

      v19 = v17 * 1000.0;
      v20 = v18 * 1000.0;
      v21 = qword_1025D4658;
      v22 = v8 - v7;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
      {
        v23 = *(a1 + 8);
        v24 = *(a1 + 64);
        v25 = *(a1 + 72);
        v26 = *(a1 + 32);
        *buf = 67243264;
        *v83 = v23;
        *&v83[4] = 2050;
        *&v83[6] = v16;
        *&v83[14] = 2050;
        *&v83[16] = v19;
        *&v83[24] = 2050;
        *&v83[26] = v7;
        v84 = 2050;
        v85 = v8;
        v86 = 2050;
        v87 = v8 - v7;
        v88 = 2050;
        v89 = v24;
        v90 = 2050;
        v91 = v25;
        v92 = 2050;
        v93 = v5;
        v94 = 2050;
        v95 = v6;
        v96 = 2050;
        v97 = v9;
        v98 = 2050;
        v99 = v26;
        v100 = 2050;
        v101 = v20;
        _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEFAULT, "#GnssTTPCIe,AP-GPS-Modem timings,seq,%{public}d,machTickDiffGpsModem,%{public}llu,machDiffGpsModemMsec,%{public}f,machTimeGpsTTStart,%{public}f,machTimeGpsTTEnd,%{public}f,readDurationGPSTimeSec,%{public}f,gpsTime_Ns,%{public}llu,gpsUnc,%{public}.2lf,machTimeModemTTStart,%{public}f,readDurationModemTimeSec,%{public}f,diffModemGpsTimeTransferStartSec,%{public}f,modemClockTicks,%{public}llu,modemClockMsec,%{public}f", buf, 0x80u);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4650 != -1)
        {
          sub_101689A0C();
        }

        v51 = *(a1 + 8);
        v52 = *(a1 + 64);
        v53 = *(a1 + 72);
        v54 = *(a1 + 32);
        v62 = 67243264;
        *v63 = v51;
        *&v63[4] = 2050;
        *&v63[6] = v16;
        *&v63[14] = 2050;
        *&v63[16] = v19;
        *&v63[24] = 2050;
        *&v63[26] = v7;
        v64 = 2050;
        v65 = v8;
        v66 = 2050;
        v67 = v8 - v7;
        v68 = 2050;
        v69 = v52;
        v70 = 2050;
        v71 = v53;
        v72 = 2050;
        v73 = v5;
        v74 = 2050;
        v75 = v6;
        v76 = 2050;
        v77 = v9;
        v78 = 2050;
        v79 = v54;
        v80 = 2050;
        v81 = v20;
        v55 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CLDiscreteGPSToCellularModemTimeTransferViaMachTime::timeTransferNotification()", "%s\n", v55);
        if (v55 != buf)
        {
          free(v55);
        }

        v22 = v8 - v7;
      }

      v27 = -v19;
      if (v13 < v10)
      {
        v27 = v19;
      }

      if (v19 <= 5.0)
      {
        v34 = v20 + v27;
        __y = 0.0;
        *(a1 + 80) = 0;
        *(a1 + 88) = 0;
        __asm { FMOV            V10.2S, #-1.0 }

        *(a1 + 96) = _D10;
        *(a1 + 104) = 0x7FF8000000000000;
        *(a1 + 112) = 3212836864;
        *(a1 + 120) = 0x7FF8000000000000;
        *(a1 + 128) = 0;
        *(a1 + 136) = 3212836864;
        *(a1 + 144) = 0x8000;
        *(a1 + 146) = 0;
        *(a1 + 152) = 0;
        *(a1 + 160) = 0x8000;
        *(a1 + 162) = 0;
        *(a1 + 166) = 0;
        *(a1 + 80) = sub_1000081AC();
        *(a1 + 128) = *(a1 + 64);
        *(a1 + 136) = *(a1 + 72);
        *(a1 + 144) = sub_10029E3E8();
        v40 = (v6 + v22) * 500.0;
        *(a1 + 100) = v40;
        v41 = modf(v34, &__y);
        v42 = __y;
        *(a1 + 96) = v41;
        *(a1 + 88) = v42;
        if (v40 < 0.1)
        {
          *(a1 + 100) = 1036831949;
        }

        if (qword_1025D4650 != -1)
        {
          sub_101689A0C();
        }

        v43 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
        {
          v44 = *(a1 + 8);
          v45 = *(a1 + 64);
          v46 = *(a1 + 88);
          v47 = *(a1 + 96);
          *buf = 67241216;
          *v83 = v44;
          *&v83[4] = 2050;
          *&v83[6] = v34;
          *&v83[14] = 2050;
          *&v83[16] = v45;
          *&v83[24] = 2050;
          *&v83[26] = v46;
          v84 = 2050;
          v85 = v47;
          _os_log_impl(dword_100000000, v43, OS_LOG_TYPE_DEFAULT, "#GnssTTPCIe,timeTransferNotification,final,seq,%{public}d,rtcMsec,%{public}.3lf,gnssNsec,%{public}llu,rtcIntMsec,%{public}llu,rtcSubMsec,%{public}.3lf", buf, 0x30u);
        }

        v48 = v3 - 1;
        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D4650 != -1)
          {
            sub_101689A0C();
          }

          v56 = *(a1 + 8);
          v57 = *(a1 + 64);
          v58 = *(a1 + 88);
          v59 = *(a1 + 96);
          v62 = 67241216;
          *v63 = v56;
          *&v63[4] = 2050;
          *&v63[6] = v34;
          *&v63[14] = 2050;
          *&v63[16] = v57;
          *&v63[24] = 2050;
          *&v63[26] = v58;
          v64 = 2050;
          v65 = v59;
          v60 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "void CLDiscreteGPSToCellularModemTimeTransferViaMachTime::timeTransferNotification()", "%s\n", v60);
          if (v60 != buf)
          {
            free(v60);
          }
        }

        v49 = *(a1 + 192);
        if (v49)
        {
          (*(*v49 + 48))(v49, a1 + 80);
          *(a1 + 80) = 0;
          *(a1 + 88) = 0;
          *(a1 + 96) = _D10;
          *(a1 + 104) = 0x7FF8000000000000;
          *(a1 + 112) = 3212836864;
          *(a1 + 120) = 0x7FF8000000000000;
          *(a1 + 128) = 0;
          *(a1 + 136) = 3212836864;
          *(a1 + 144) = 0x8000;
          *(a1 + 146) = 0;
          *(a1 + 152) = 0;
          *(a1 + 160) = 0x8000;
          *(a1 + 162) = 0;
          *(a1 + 166) = 0;
        }

        v48[8] = 0;
        *(v48 + 2) = 0u;
        *(v48 + 3) = 0u;
        *v48 = 0u;
        *(v48 + 1) = 0u;
      }

      else
      {
        if (qword_1025D4650 != -1)
        {
          sub_101689A0C();
        }

        v28 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v28, OS_LOG_TYPE_DEFAULT, "#GnssTTPCIe,drop,absMachDiffBetweenGpsAndModemTimeMSec>5.0", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101689A34();
        }
      }
    }
  }

  else
  {
    if (qword_1025D4650 != -1)
    {
      sub_101689714();
    }

    v29 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      v30 = *v3;
      if (*v3)
      {
        LODWORD(v30) = *(a1 + 24);
        if (v30)
        {
          v30 = *(a1 + 32);
          if (v30)
          {
            if (*(a1 + 12) == 1)
            {
              LODWORD(v30) = *(a1 + 40);
            }

            else
            {
              LODWORD(v30) = 0;
            }
          }
        }
      }

      v31 = *(a1 + 48);
      if (v31)
      {
        if (*(a1 + 56) <= v31)
        {
          LODWORD(v31) = 0;
        }

        else
        {
          v31 = *(a1 + 64);
          if (v31)
          {
            LODWORD(v31) = *(a1 + 72) > 0.0;
          }
        }
      }

      *buf = 67240448;
      *v83 = v30;
      *&v83[4] = 1026;
      *&v83[6] = v31;
      _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_DEFAULT, "#GnssTTPCIe,timeTransferNotification,modemTimeToMachTimeValid,%{public}d,gpsTimeToMachTimeValid,%{public}d", buf, 0xEu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101689B38(v3, a1);
    }
  }
}

_DWORD *sub_100323610(int a1, int a2, _DWORD *a3)
{
  if (!a3[6])
  {
    sub_101A26AB0();
  }

  v4 = a3[7];
  if (!v4)
  {
    sub_101A26A84();
  }

  v6 = a1;
  v7 = a2 - a1;
  if (a2 == a1)
  {
    sub_1000AB298(a3, 1, 1);
    result = sub_10032377C(a3, 0);
    *result = v6;
  }

  else if (a2 - a1 < 0)
  {

    return sub_1000AB298(a3, 0, 0);
  }

  else
  {
    if (v4 <= v7)
    {
      sub_101A26A58();
    }

    sub_1000AB298(a3, 1, v7 + 1);
    v9 = 0;
    v10 = a2 + 1;
    do
    {
      result = sub_10032377C(a3, v9);
      *result = v6++;
      ++v9;
    }

    while (v10 != v6);
  }

  return result;
}

_DWORD *sub_1003236F8@<X0>(int a1@<W0>, int a2@<W1>, uint64_t a3@<X8>)
{
  *(a3 + 24) = 0x300000001;
  *a3 = off_10249DC38;
  *(a3 + 8) = xmmword_101CF0680;
  *(a3 + 32) = a3 + 40;
  return sub_100323610(a1, a2, a3);
}

uint64_t sub_10032377C(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    sub_101A26B34();
  }

  if ((a2 & 0x80000000) != 0)
  {
    sub_101A26B08();
  }

  if (*(a1 + 16) <= a2)
  {
    sub_101A26ADC();
  }

  return v2 + 4 * a2;
}

_DWORD *sub_1003237B8(uint64_t a1, _DWORD *a2)
{
  if (a1 == a2)
  {
    sub_101A26924();
  }

  result = sub_1000AB298(a2, *(a1 + 12), *(a1 + 8));
  v5 = a2[2];
  if (v5)
  {
    v6 = 0;
    v7 = a2[3];
    do
    {
      if (v7)
      {
        for (i = 0; i != v7; ++i)
        {
          v9 = sub_1003238C0(a1, i, v6);
          result = sub_1003239D0(a2, v6, i);
          *result = v9;
        }
      }

      ++v6;
    }

    while (v6 != v5);
  }

  return result;
}

uint64_t sub_1003238C0(uint64_t a1, int a2, int a3)
{
  v3 = *(a1 + 32);
  if (!v3)
  {
    sub_101A269A8();
  }

  v4 = a2 + *(a1 + 20) * a3;
  if ((v4 & 0x80000000) != 0)
  {
    sub_101A2697C();
  }

  if (v4 >= *(a1 + 16))
  {
    sub_101A26950();
  }

  return *(v3 + 4 * v4);
}

uint64_t sub_100323904(uint64_t result, unsigned int a2, unsigned int a3)
{
  *(result + 24) = 0x100000003;
  *(result + 32) = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = off_10249DCC0;
  if (a2 > 3)
  {
    v3 = "this->max_num_rows_ >= num_rows";
    v4 = 422;
    goto LABEL_6;
  }

  if (a3 >= 2)
  {
    v3 = "this->max_num_cols_ >= num_cols";
    v4 = 423;
LABEL_6:
    __assert_rtn("SetMatrixSize", "cnmatrixbase.h", v4, v3);
  }

  *(result + 8) = a2;
  *(result + 12) = a3;
  *(result + 16) = a3 * a2;
  *(result + 20) = a2;
  *(result + 32) = result + 40;
  return result;
}

uint64_t sub_1003239D0(uint64_t a1, int a2, int a3)
{
  v3 = *(a1 + 32);
  if (!v3)
  {
    sub_101A26A2C();
  }

  v4 = a2 + *(a1 + 20) * a3;
  if ((v4 & 0x80000000) != 0)
  {
    sub_101A26A00();
  }

  if (v4 >= *(a1 + 16))
  {
    sub_101A269D4();
  }

  return v3 + 4 * v4;
}

uint64_t sub_100323A14@<X0>(unsigned int a1@<W0>, unsigned int a2@<W1>, _DWORD *a3@<X8>)
{
  if ((a1 & 0x80000000) != 0)
  {
    sub_101A261B4();
  }

  if ((a2 & 0x80000000) != 0)
  {
    sub_101A26188();
  }

  sub_100323AEC(a3, a1, a2);
  if (a3[6] < a1)
  {
    v7 = "nr <= Z.MaxNumRows()";
    v8 = 3363;
    goto LABEL_10;
  }

  if (a3[7] < a2)
  {
    v7 = "nc <= Z.MaxNumCols()";
    v8 = 3364;
LABEL_10:
    __assert_rtn("Zeros", "cnmatrixbase.h", v8, v7);
  }

  sub_1000AB298(a3, a1, a2);
  return sub_100323BB4(a3, 0.0);
}

uint64_t sub_100323AEC(uint64_t result, unsigned int a2, unsigned int a3)
{
  *(result + 24) = 0x400000004;
  *(result + 32) = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = off_10249DBF0;
  if (a2 > 4)
  {
    v3 = "this->max_num_rows_ >= num_rows";
    v4 = 422;
    goto LABEL_6;
  }

  if (a3 >= 5)
  {
    v3 = "this->max_num_cols_ >= num_cols";
    v4 = 423;
LABEL_6:
    __assert_rtn("SetMatrixSize", "cnmatrixbase.h", v4, v3);
  }

  *(result + 8) = a2;
  *(result + 12) = a3;
  *(result + 16) = a3 * a2;
  *(result + 20) = a2;
  *(result + 32) = result + 40;
  return result;
}

uint64_t sub_100323BB4(uint64_t result, double a2)
{
  v2 = *(result + 32);
  if (!v2)
  {
    sub_101A26BE4();
  }

  v3 = *(result + 16);
  if (v3 > 3)
  {
    v10 = (v2 + 8 * v3);
    v11 = (v3 - 1) >> 1;
    v12 = vdupq_lane_s64(*&a2, 0);
    do
    {
      *v2++ = v12;
      --v11;
    }

    while (v11);
    v10[-1] = v12;
  }

  else if (v3 >= 1)
  {
    v4 = (v3 + 1) & 0xFFFFFFFE;
    v5 = vdupq_n_s64(v3 - 1);
    v6 = xmmword_101C652A0;
    v7 = &v2->i64[1];
    v8 = vdupq_n_s64(2uLL);
    do
    {
      v9 = vmovn_s64(vcgeq_u64(v5, v6));
      if (v9.i8[0])
      {
        *(v7 - 1) = a2;
      }

      if (v9.i8[4])
      {
        *v7 = a2;
      }

      v6 = vaddq_s64(v6, v8);
      v7 += 2;
      v4 -= 2;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_100323C60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 24) = 0x300000003;
  *(a1 + 8) = xmmword_101CF0650;
  *(a1 + 32) = a1 + 40;
  *a1 = off_10249DD08;
  *(a1 + 144) = 0x100000003;
  *(a1 + 112) = a2;
  *(a1 + 120) = off_10249DCC0;
  *(a1 + 128) = xmmword_101CF0CE0;
  *(a1 + 152) = a1 + 160;
  v7 = a1 + 176;
  *(a1 + 200) = 0x100000003;
  *(a1 + 176) = off_10249DCC0;
  *(a1 + 184) = xmmword_101CF0CE0;
  *(a1 + 208) = a1 + 216;
  sub_1002BFAB4(a1 + 120, a3);
  sub_1002BFAB4(v7, a4);
  v8 = *(a1 + 136);
  if (*(a1 + 24) < v8)
  {
    v16 = "this->max_num_rows_ >= num_rows";
    v17 = 422;
    goto LABEL_12;
  }

  v9 = *(a1 + 192);
  if (*(a1 + 28) < v9)
  {
    v16 = "this->max_num_cols_ >= num_cols";
    v17 = 423;
LABEL_12:
    __assert_rtn("SetMatrixSize", "cnmatrixbase.h", v17, v16);
  }

  *(a1 + 8) = v8;
  *(a1 + 12) = v9;
  *(a1 + 16) = v9 * v8;
  *(a1 + 20) = v8;
  if (v9)
  {
    v10 = 0;
    for (i = 0; i != v9; ++i)
    {
      if (v8)
      {
        v12 = 0;
        v13 = v10;
        do
        {
          v14 = sub_1002BFB70(a2, *(*(a1 + 152) + v12), *(*(a1 + 208) + 4 * i));
          v12 += 4;
          *(*(a1 + 32) + 8 * v13++) = *v14;
        }

        while (4 * v8 != v12);
      }

      v10 += v8;
    }
  }

  return a1;
}

void sub_100323E38(_Unwind_Exception *a1)
{
  v1[22] = off_10249DC90;
  v1[15] = off_10249DC90;
  *v1 = off_1024721D0;
  _Unwind_Resume(a1);
}

uint64_t sub_100323E98(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2 != *(a2 + 8))
  {
    sub_101A261E0();
  }

  v5 = *(a1 + 12);
  if (v5 != *(a2 + 12))
  {
    sub_101A2620C();
  }

  if (v5)
  {
    v6 = 0;
    for (i = 0; i != v5; ++i)
    {
      if (v2)
      {
        for (j = 0; j != v2; ++j)
        {
          v9 = *(*(a2 + 32) + 8 * (v6 + j));
          *sub_1002BFB70(*(a1 + 112), *(*(a1 + 152) + 4 * j), *(*(a1 + 208) + 4 * i)) = v9;
          *sub_1000AC220(a1, j, i) = v9;
        }
      }

      v6 += v2;
    }
  }

  return a1;
}

double *sub_100323F74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 24) = 0x400000004;
  *a3 = off_10249DBF0;
  *(a3 + 8) = xmmword_101CF0660;
  *(a3 + 32) = a3 + 40;
  return sub_1000AC374(a1, a2, a3);
}

double *sub_100324050@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 24) = 0x400000001;
  *a3 = off_10249E090;
  *(a3 + 8) = xmmword_101CF0670;
  *(a3 + 32) = a3 + 40;
  return sub_1000AC374(a1, a2, a3);
}

uint64_t sub_100324130(uint64_t result, unsigned int a2, unsigned int a3)
{
  *(result + 24) = 0x100000004;
  *(result + 32) = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = off_10249DBA8;
  if (a2 > 4)
  {
    v3 = "this->max_num_rows_ >= num_rows";
    v4 = 422;
    goto LABEL_6;
  }

  if (a3 >= 2)
  {
    v3 = "this->max_num_cols_ >= num_cols";
    v4 = 423;
LABEL_6:
    __assert_rtn("SetMatrixSize", "cnmatrixbase.h", v4, v3);
  }

  *(result + 8) = a2;
  *(result + 12) = a3;
  *(result + 16) = a3 * a2;
  *(result + 20) = a2;
  *(result + 32) = result + 40;
  return result;
}

double *sub_1003241FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 24) = 0x100000001;
  *a3 = off_10249E0D8;
  *&v3 = 0x100000001;
  *(&v3 + 1) = 0x100000001;
  *(a3 + 8) = v3;
  *(a3 + 32) = a3 + 40;
  return sub_1000AC374(a1, a2, a3);
}

void sub_100324278(uint64_t a1, __int128 **a2)
{
  v4 = [[NSMutableArray alloc] initWithCapacity:0x6DB6DB6DB6DB6DB7 * (a2[1] - *a2)];
  sub_10001A3E8();
  v5 = sub_10001CF3C();
  v7 = *a2;
  v6 = a2[1];
  if (v5)
  {
    if (v7 != v6)
    {
      v42 = v6;
      v43 = v4;
      while (1)
      {
        v8 = *v7;
        v9 = *(v7 + 1);
        v45 = *(v7 + 2);
        v10 = *(v7 + 6);
        v11 = *(v7 + 7);
        v13 = *(v7 + 8);
        v12 = *(v7 + 9);
        v51 = *(v7 + 11);
        v52 = *(v7 + 10);
        v49 = *(v7 + 13);
        v50 = *(v7 + 12);
        v47 = *(v7 + 15);
        v48 = *(v7 + 14);
        v14 = *(v7 + 16);
        v15 = *(v7 + 21);
        v56 = *(v7 + 88);
        v57 = *(v7 + 68);
        v16 = *(v7 + 105);
        v17 = *(v7 + 106);
        v18 = *(v7 + 107);
        v54 = *(v7 + 108);
        v55 = *(v7 + 104);
        v53 = *(v7 + 109);
        v19 = *(v7 + 110);
        v46 = *(v7 + 111);
        if (v19)
        {
          v20 = *(a1 + 104);
          if (fabsf(v11) > v20 || fabsf(v13) > v20)
          {
            *(a1 + 96) = v9;
          }
        }

        if (v17 == 1)
        {
          break;
        }

        if (v9 - *(a1 + 96) <= *(a1 + 88) || (sub_1001E9DA0(*(a1 + 64)) & 1) != 0)
        {
          if (*(a1 + 108) == 1)
          {
            if (qword_1025D4600 != -1)
            {
              sub_101AB30B4();
            }

            v25 = qword_1025D4608;
            if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
            {
              v26 = v9 - *(a1 + 96);
              v27 = *(a1 + 88);
              *buf = 16909056;
              buf[4] = v17;
              *&buf[5] = 2050;
              *&buf[7] = v26;
              *&buf[15] = 2050;
              *&buf[17] = v27;
              _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_INFO, "#pbio, ending forced static period, input static flag, %{public}d, time since last non-negligible delta position, %{public}.3f, threshold, %{public}.3f", buf, 0x19u);
            }

            if (sub_10000A100(121, 2))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1025D4600 != -1)
              {
                sub_101AB30B4();
              }

              v35 = _os_log_send_and_compose_impl();
              sub_100152C7C("Generic", 1, 0, 2, "void CLProactiveInertialOdometryManager::exportBackgroundInertialOdometrySamplesToRoutine(const std::vector<CLPIOSample> &)", "%s\n", v35);
              if (v35 != buf)
              {
                free(v35);
              }
            }

            v24 = 0;
            LOBYTE(v17) = 2;
          }

          else
          {
            v24 = 0;
          }

          goto LABEL_26;
        }

        if (*(a1 + 108) != 1)
        {
          goto LABEL_10;
        }

        *(a1 + 108) = 1;
LABEL_33:
        v7 += 7;
        if (v7 == v6)
        {
          goto LABEL_52;
        }
      }

      if ((*(a1 + 108) & 1) == 0)
      {
LABEL_10:
        if (qword_1025D4600 != -1)
        {
          sub_101AB30B4();
        }

        v21 = qword_1025D4608;
        if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
        {
          v22 = v9 - *(a1 + 96);
          v23 = *(a1 + 88);
          *buf = 16909056;
          buf[4] = v17;
          *&buf[5] = 2050;
          *&buf[7] = v22;
          *&buf[15] = 2050;
          *&buf[17] = v23;
          _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_INFO, "#pbio, starting forced static period, input static flag, %{public}d, time since last non-negligible delta position, %{public}.3f, threshold, %{public}.3f", buf, 0x19u);
        }

        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D4600 != -1)
          {
            sub_101AB30B4();
          }

          v34 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "void CLProactiveInertialOdometryManager::exportBackgroundInertialOdometrySamplesToRoutine(const std::vector<CLPIOSample> &)", "%s\n", v34);
          if (v34 != buf)
          {
            free(v34);
          }
        }
      }

      v24 = 1;
      LOBYTE(v17) = 1;
LABEL_26:
      *(a1 + 108) = v24;
      if (*(a1 + 50) == 1)
      {
        if (qword_1025D4600 != -1)
        {
          sub_101AB30B4();
        }

        v28 = qword_1025D4608;
        if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
        {
          v29 = sub_10000B1F8();
          *buf = 0;
          v44 = sub_10001A6B0(v29, buf);
          v30 = sub_10000B1F8();
          *buf = 0;
          v31 = sub_10001A6B0(v30, buf);
          *buf = 134355457;
          *&buf[4] = v8;
          *&buf[12] = 2050;
          *&buf[14] = v9;
          *&buf[22] = 2050;
          *&buf[24] = v10;
          *v59 = 2049;
          *&v59[2] = v11;
          *&v59[10] = 2049;
          *&v59[12] = v13;
          *&v59[20] = 2049;
          *&v59[22] = v12;
          *&v59[30] = 2049;
          *v60 = v52;
          *&v60[8] = 2049;
          *&v60[10] = v51;
          *&v60[18] = 2049;
          *&v60[20] = v50;
          *&v60[28] = 2049;
          *&v60[30] = v49;
          *&v60[38] = 2049;
          *&v60[40] = v48;
          v61 = 2049;
          v62 = v47;
          v63 = 2049;
          v64 = v14;
          v65 = 2049;
          v66 = v15;
          v67 = 258;
          v68 = v16;
          v69 = 258;
          v70 = v55;
          v71 = 258;
          v72 = v17;
          v73 = 1025;
          v74 = v19 & 1;
          v75 = 1025;
          v76 = (v19 >> 1) & 1;
          v77 = 1024;
          v78 = (v19 >> 2) & 1;
          v79 = 1025;
          v80 = v19 >> 7;
          v6 = v42;
          v4 = v43;
          v81 = 257;
          v82 = v54;
          v83 = 257;
          v84 = v53;
          v85 = 257;
          v86 = v18;
          v87 = 2050;
          v88 = v44;
          v89 = 2050;
          v90 = v31 - v8;
          _os_log_impl(dword_100000000, v28, OS_LOG_TYPE_DEBUG, "#pbio Routine, userCfAbsoluteTimestamp_s, %{public}.3f, machContinuousTimestamp_s, %{public}.3f, sampleInterval_s, %{public}.3f, dPosX_m, %{private}+.3f, dPosY_m, %{private}+.3f, dPosZ_m, %{private}+.3f, dVelX_mps, %{private}+.3f, dVelY_mps, %{private}+.3f, dVelZ_mps, %{private}+.3f, qX, %{private}+.3f, qY, %{private}+.3f, qZ, %{private}+.3f, qW, %{private}+.3f, rotationToTrueNorthFromMagnetometer_rad, %{private}+.3f, referenceFrameContinuity, %{public}d, referenceFrame, %{public}d, staticFlag, %{public}d, isDeltaPositionValid, %{private}d, isRotationToTrueNorthFromMagnetometerValid, %{private}d, isDeltaVelocityValid, %d, isAttitudeValid, %{private}d, zuptIndicator, %{private}d, dotChangeIndicator, %{private}d, mountState, %{private}d,now, %{public}.3f, diffNowMinusSample, %{public}.3f", buf, 0xCCu);
        }

        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D4600 != -1)
          {
            sub_101AB30B4();
          }

          sub_1000281DC();
          sub_1000281DC();
          v33 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "void CLProactiveInertialOdometryManager::exportBackgroundInertialOdometrySamplesToRoutine(const std::vector<CLPIOSample> &)", "%s\n", v33);
          if (v33 != buf)
          {
            free(v33);
          }

          v6 = v42;
          v4 = v43;
        }
      }

      v32 = [CLBackgroundInertialOdometrySample alloc];
      *buf = v8;
      *&buf[8] = v9;
      *&buf[16] = v45;
      *&buf[24] = v10;
      *&buf[28] = v11;
      *v59 = v13;
      *&v59[4] = v12;
      *&v59[8] = v52;
      *&v59[12] = v51;
      *&v59[16] = v50;
      *&v59[20] = v49;
      *&v59[24] = v48;
      *&v59[28] = v47;
      *&v60[4] = v57;
      *v60 = v14;
      *&v60[20] = v15;
      *&v60[24] = v56;
      v60[40] = v55;
      v60[41] = v16;
      v60[42] = v17;
      v60[43] = v18;
      v60[44] = v54;
      v60[45] = v53;
      v60[46] = v19;
      v60[47] = v46;
      [v4 addObject:{objc_msgSend(v32, "initWithCLPIOSample:", buf)}];
      goto LABEL_33;
    }
  }

  else
  {
    for (; v7 != v6; v7 += 7)
    {
      v36 = [CLBackgroundInertialOdometrySample alloc];
      v37 = *v7;
      v38 = v7[2];
      *&buf[16] = v7[1];
      *v59 = v38;
      *buf = v37;
      v39 = v7[3];
      v40 = v7[4];
      v41 = v7[6];
      *&v60[16] = v7[5];
      *&v60[32] = v41;
      *&v59[16] = v39;
      *v60 = v40;
      [v4 addObject:{objc_msgSend(v36, "initWithCLPIOSample:", buf)}];
    }
  }

LABEL_52:
  sub_100324D54(a1, v4);
}

void sub_100324D54(id *a1, void *a2)
{
  if (qword_1025D4600 != -1)
  {
    sub_1002F9794();
  }

  v4 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    v8 = [a2 count];
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "#pbio forwarding %{public}zu samples to routine", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101AB363C();
  }

  v5 = [objc_msgSend(*a1 "silo")];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100324E98;
  v6[3] = &unk_102449BC0;
  v6[4] = a2;
  v6[5] = a1;
  dispatch_async(v5, v6);
}

id sub_100324E98(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (qword_1025D4600 != -1)
  {
    sub_1002F9794();
  }

  v3 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
  {
    v4 = [*(a1 + 32) count];
    *buf = 134283521;
    v14 = v4;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_INFO, "#pbio adding %{private}zu background inertial odometry samples to fRoutineManager", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101AB3734();
  }

  v5 = *(v2 + 16);
  v6 = *(a1 + 32);
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_100324FD8;
  v11 = &unk_10245D3C0;
  v12 = v6;
  return [v5 addBackgroundInertialOdometrySamples:? handler:?];
}

void sub_100324FD8(uint64_t a1, char *a2)
{
  if (a2)
  {
    if (qword_1025D4600 != -1)
    {
      sub_1002F9794();
    }

    v3 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_ERROR))
    {
      v7 = 138412290;
      v8 = a2;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "#pbio error adding background inertial odometry samples to routine: %@", &v7, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101AB382C(a2);
    }
  }

  else
  {
    if (qword_1025D4600 != -1)
    {
      sub_1002F9794();
    }

    v5 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
    {
      v6 = [*(a1 + 32) count];
      v7 = 134349056;
      v8 = v6;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_INFO, "#pbio successfully added %{public}zu background inertial odometry samples to routined.", &v7, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101AB3930();
    }
  }
}

uint64_t sub_100325170(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 40);
  if (!v3)
  {
    result = 0;
    goto LABEL_26;
  }

  if (v3)
  {
    v6 = *(a1 + 8);
    if (!v6)
    {
      v6 = *(qword_102636DE8 + 8);
    }

    v7 = *(v6 + 36);
    if (*(v6 + 36))
    {
      v8 = (v7 << 31 >> 31) & 9;
      if ((v7 & 2) != 0)
      {
        v8 += 9;
      }

      if ((v7 & 4) != 0)
      {
        v7 = v8 + 9;
      }

      else
      {
        v7 = v8;
      }
    }

    *(v6 + 32) = v7;
    v4 = v7 + 2;
    v3 = *(a1 + 40);
    if ((v3 & 2) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_15;
  }

  v4 = 0;
  if ((v3 & 2) != 0)
  {
LABEL_15:
    v9 = *(a1 + 16);
    if (!v9)
    {
      v9 = *(qword_102636DE8 + 16);
    }

    v10 = sub_100443164(v9, a2);
    v12 = v10;
    if (v10 >= 0x80)
    {
      v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10, v11);
    }

    else
    {
      v13 = 1;
    }

    v4 += v12 + v13 + 1;
    v3 = *(a1 + 40);
  }

LABEL_21:
  v14 = v4 + 5;
  if ((v3 & 4) == 0)
  {
    v14 = v4;
  }

  if ((v3 & 8) != 0)
  {
    v14 += 5;
  }

  result = v14 + ((v3 >> 3) & 2);
LABEL_26:
  *(a1 + 36) = result;
  return result;
}

void sub_10032528C(uint64_t *a1, std::string *this)
{
  v4 = *(a1 + 23);
  if ((v4 & 0x80u) != 0)
  {
    v4 = a1[1];
  }

  std::string::resize(this, 2 * v4, 32);
  v5 = *(a1 + 23);
  v6 = a1[1];
  if ((v5 & 0x80000000) == 0)
  {
    v6 = *(a1 + 23);
  }

  if (v6)
  {
    v7 = 0;
    v8 = 0;
    v9 = v5 >> 63;
    do
    {
      if (v9)
      {
        v10 = *a1;
      }

      else
      {
        v10 = a1;
      }

      v11 = a0123456789abcd[*(v10 + v8) >> 4];
      if ((this->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v12 = this;
      }

      else
      {
        v12 = this->__r_.__value_.__r.__words[0];
      }

      v12->__r_.__value_.__s.__data_[v7] = v11;
      if (*(a1 + 23) >= 0)
      {
        v13 = a1;
      }

      else
      {
        v13 = *a1;
      }

      v14 = a0123456789abcd[*(v13 + v8) & 0xF];
      if ((this->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v15 = this;
      }

      else
      {
        v15 = this->__r_.__value_.__r.__words[0];
      }

      v15->__r_.__value_.__s.__data_[v7 + 1] = v14;
      ++v8;
      v16 = *(a1 + 23);
      v9 = v16 >> 63;
      if ((v16 & 0x80000000) != 0)
      {
        v16 = a1[1];
      }

      v7 += 2;
    }

    while (v8 < v16);
  }
}

void sub_100326B7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_100B314E8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100326D18(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      v5 = *(this + 1);
      if (v5 >= *(this + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
        *(this + 8) = TagFallback;
        if (!TagFallback)
        {
          return 1;
        }
      }

      else
      {
        *(this + 8) = TagFallback;
        *(this + 1) = v5 + 1;
        if (!TagFallback)
        {
          return 1;
        }
      }

      v7 = TagFallback & 7;
      if (TagFallback >> 3 == 2)
      {
        break;
      }

      if (TagFallback >> 3 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_13;
      }

      v8 = *(this + 1);
      v9 = *(this + 2);
      if (v8 >= v9 || (v10 = *v8, v10 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 8));
        if (!result)
        {
          return result;
        }

        v11 = *(this + 1);
        v9 = *(this + 2);
      }

      else
      {
        *(a1 + 8) = v10;
        v11 = v8 + 1;
        *(this + 1) = v11;
      }

      *(a1 + 44) |= 1u;
      if (v11 < v9 && *v11 == 18)
      {
        do
        {
          *(this + 1) = v11 + 1;
LABEL_21:
          v13 = *(a1 + 28);
          v14 = *(a1 + 24);
          if (v14 >= v13)
          {
            if (v13 == *(a1 + 32))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 16), v13 + 1);
              v13 = *(a1 + 28);
            }

            *(a1 + 28) = v13 + 1;
            operator new();
          }

          v15 = *(a1 + 16);
          *(a1 + 24) = v14 + 1;
          v16 = *(v15 + 8 * v14);
          v26 = 0;
          v17 = *(this + 1);
          if (v17 >= *(this + 2) || *v17 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v26))
            {
              return 0;
            }
          }

          else
          {
            v26 = *v17;
            *(this + 1) = v17 + 1;
          }

          v18 = *(this + 14);
          v19 = *(this + 15);
          *(this + 14) = v18 + 1;
          if (v18 >= v19)
          {
            return 0;
          }

          v20 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v26);
          if (!sub_100ABE0E8(v16, this, v21) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v20);
          v22 = *(this + 14);
          v23 = __OFSUB__(v22, 1);
          v24 = v22 - 1;
          if (v24 < 0 == v23)
          {
            *(this + 14) = v24;
          }

          v11 = *(this + 1);
          v25 = *(this + 2);
        }

        while (v11 < v25 && *v11 == 18);
        if (v11 == v25 && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }
    }

    if (v7 == 2)
    {
      goto LABEL_21;
    }

LABEL_13:
    if (v7 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) == 0)
    {
      return 0;
    }
  }
}