uint64_t sub_1005E3A68(uint64_t a1, CLConnectionMessage **a2)
{
  if (qword_1025D46D0 != -1)
  {
    sub_1018DE3D8();
  }

  v4 = qword_1025D46D8;
  if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289026;
    *&buf[4] = 0;
    v26 = 2082;
    v27 = "";
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:kCLConnectionMessageLabelObservationsBetweenDates received in CLMiLoConnectionSubscription}", buf, 0x12u);
  }

  *buf = 0;
  if ((sub_1005E5ADC(a1, buf) & 1) == 0)
  {
    v24[0] = &off_10254ECD8;
    v23[0] = @"CLMiLoConnectionReturnCode";
    v23[1] = @"CLMiLoConnectionErrorMessage";
    v24[1] = [NSNumber numberWithInteger:*buf];
    v15 = v24;
    v16 = v23;
LABEL_17:
    v17 = 2;
    goto LABEL_18;
  }

  v5 = objc_opt_class();
  v6 = [NSSet setWithObjects:v5, objc_opt_class(), 0];
  DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v6);
  if (!DictionaryOfClasses || (v8 = DictionaryOfClasses, ![DictionaryOfClasses objectForKeyedSubscript:@"CLMiLoConnectionServiceIdentifier"]) || !objc_msgSend(v8, "objectForKeyedSubscript:", @"CLMiLoConnectionRequestIdentifier") || !objc_msgSend(v8, "objectForKeyedSubscript:", @"CLMiLoConnectionPlaceLabelIdentifier") || !objc_msgSend(v8, "objectForKeyedSubscript:", @"CLMiLoConnectionObservationStartDate") || !objc_msgSend(v8, "objectForKeyedSubscript:", @"CLMiLoConnectionObservationEndDate"))
  {
    v21[0] = @"CLMiLoConnectionReturnCode";
    v21[1] = @"CLMiLoConnectionErrorMessage";
    v22[0] = &off_10254ECD8;
    v22[1] = &off_10254ECA8;
    v15 = v22;
    v16 = v21;
    goto LABEL_17;
  }

  v9 = [v8 objectForKeyedSubscript:@"CLMiLoConnectionServiceIdentifier"];
  v10 = [v8 objectForKeyedSubscript:@"CLMiLoConnectionRequestIdentifier"];
  v11 = [v8 objectForKeyedSubscript:@"CLMiLoConnectionPlaceLabelIdentifier"];
  v12 = [v8 objectForKeyedSubscript:@"CLMiLoConnectionObservationStartDate"];
  v13 = [v8 objectForKeyedSubscript:@"CLMiLoConnectionObservationEndDate"];
  v14 = (a1 + 88);
  if (*(a1 + 111) < 0)
  {
    v14 = *v14;
  }

  [*(a1 + 64) requestLabelObservationsForClient:+[NSString stringWithUTF8String:](NSString withServiceIdentifier:"stringWithUTF8String:" withRequestIdentifier:v14) withPlaceIdentifier:v9 betweenStartDate:v10 endDate:v11 withConnectionToken:{v12, v13, *(a1 + 72)}];
  v19 = @"CLMiLoConnectionReturnCode";
  v20 = &off_10254EC18;
  v15 = &v20;
  v16 = &v19;
  v17 = 1;
LABEL_18:
  [NSDictionary dictionaryWithObjects:v15 forKeys:v16 count:v17];
  return CLConnectionMessage::sendReply();
}

uint64_t sub_1005E3DA4(uint64_t a1, CLConnectionMessage **a2)
{
  if (qword_1025D46D0 != -1)
  {
    sub_1018DE3D8();
  }

  v4 = qword_1025D46D8;
  if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289026;
    v24 = 2082;
    v25 = "";
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:kCLConnectionMessageRemoveLabels received in CLMiLoConnectionSubscription}", buf, 0x12u);
  }

  *buf = 0;
  if ((sub_1005E5ADC(a1, buf) & 1) == 0)
  {
    v22[0] = &off_10254ECD8;
    v21[0] = @"CLMiLoConnectionReturnCode";
    v21[1] = @"CLMiLoConnectionErrorMessage";
    v22[1] = [NSNumber numberWithInteger:*buf];
    v13 = v22;
    v14 = v21;
LABEL_15:
    v15 = 2;
    goto LABEL_16;
  }

  v5 = objc_opt_class();
  v6 = [NSSet setWithObjects:v5, objc_opt_class(), 0];
  DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v6);
  if (!DictionaryOfClasses || (v8 = DictionaryOfClasses, ![DictionaryOfClasses objectForKeyedSubscript:@"CLMiLoConnectionServiceIdentifier"]) || !objc_msgSend(v8, "objectForKeyedSubscript:", @"CLMiLoConnectionRequestIdentifier") || !objc_msgSend(v8, "objectForKeyedSubscript:", @"CLMiLoConnectionLabelArray"))
  {
    v19[0] = @"CLMiLoConnectionReturnCode";
    v19[1] = @"CLMiLoConnectionErrorMessage";
    v20[0] = &off_10254ECD8;
    v20[1] = &off_10254ECA8;
    v13 = v20;
    v14 = v19;
    goto LABEL_15;
  }

  v9 = [v8 objectForKeyedSubscript:@"CLMiLoConnectionServiceIdentifier"];
  v10 = [v8 objectForKeyedSubscript:@"CLMiLoConnectionRequestIdentifier"];
  v11 = [v8 objectForKeyedSubscript:@"CLMiLoConnectionLabelArray"];
  v12 = (a1 + 88);
  if (*(a1 + 111) < 0)
  {
    v12 = *v12;
  }

  [*(a1 + 64) requestRemoveLabelsForClient:+[NSString stringWithUTF8String:](NSString withServiceIdentifier:"stringWithUTF8String:" withRequestIdentifier:v12) withLabels:v9 withConnectionToken:{v10, v11, *(a1 + 72)}];
  v17 = @"CLMiLoConnectionReturnCode";
  v18 = &off_10254EC18;
  v13 = &v18;
  v14 = &v17;
  v15 = 1;
LABEL_16:
  [NSDictionary dictionaryWithObjects:v13 forKeys:v14 count:v15];
  return CLConnectionMessage::sendReply();
}

uint64_t sub_1005E4074(uint64_t a1, CLConnectionMessage **a2)
{
  if (qword_1025D46D0 != -1)
  {
    sub_1018DE3D8();
  }

  v4 = qword_1025D46D8;
  if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289026;
    v24 = 2082;
    v25 = "";
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:kCLConnectionMessageStartUpdatingMicroLocation received in CLMiLoConnectionSubscription}", buf, 0x12u);
  }

  *buf = 0;
  if ((sub_1005E5ADC(a1, buf) & 1) == 0)
  {
    v22[0] = &off_10254ECD8;
    v21[0] = @"CLMiLoConnectionReturnCode";
    v21[1] = @"CLMiLoConnectionErrorMessage";
    v22[1] = [NSNumber numberWithInteger:*buf];
    v13 = v22;
    v14 = v21;
LABEL_15:
    v15 = 2;
    goto LABEL_16;
  }

  v5 = objc_opt_class();
  v6 = [NSSet setWithObjects:v5, objc_opt_class(), 0];
  DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v6);
  if (!DictionaryOfClasses || (v8 = DictionaryOfClasses, ![DictionaryOfClasses objectForKeyedSubscript:@"CLMiLoConnectionServiceIdentifier"]) || !objc_msgSend(v8, "objectForKeyedSubscript:", @"CLMiLoConnectionRequestIdentifier") || !objc_msgSend(v8, "objectForKeyedSubscript:", @"CLMiLoConnectionUpdateConfiguration"))
  {
    v19[0] = @"CLMiLoConnectionReturnCode";
    v19[1] = @"CLMiLoConnectionErrorMessage";
    v20[0] = &off_10254ECD8;
    v20[1] = &off_10254ECA8;
    v13 = v20;
    v14 = v19;
    goto LABEL_15;
  }

  v9 = [v8 objectForKeyedSubscript:@"CLMiLoConnectionServiceIdentifier"];
  v10 = [v8 objectForKeyedSubscript:@"CLMiLoConnectionRequestIdentifier"];
  v11 = [v8 objectForKeyedSubscript:@"CLMiLoConnectionUpdateConfiguration"];
  v12 = (a1 + 88);
  if (*(a1 + 111) < 0)
  {
    v12 = *v12;
  }

  [*(a1 + 64) requestStartUpdatingMicroLocationForClient:+[NSString stringWithUTF8String:](NSString withServiceIdentifier:"stringWithUTF8String:" withRequestIdentifier:v12) withConfiguration:v9 withConnectionToken:{v10, v11, *(a1 + 72)}];
  v17 = @"CLMiLoConnectionReturnCode";
  v18 = &off_10254EC18;
  v13 = &v18;
  v14 = &v17;
  v15 = 1;
LABEL_16:
  [NSDictionary dictionaryWithObjects:v13 forKeys:v14 count:v15];
  return CLConnectionMessage::sendReply();
}

uint64_t sub_1005E4344(uint64_t a1, CLConnectionMessage **a2)
{
  if (qword_1025D46D0 != -1)
  {
    sub_1018DE3D8();
  }

  v4 = qword_1025D46D8;
  if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289026;
    v23 = 2082;
    v24 = "";
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:kCLConnectionMessageStopUpdatingMicroLocation received in CLMiLoConnectionSubscription}", buf, 0x12u);
  }

  *buf = 0;
  if ((sub_1005E5ADC(a1, buf) & 1) == 0)
  {
    v21[0] = &off_10254ECD8;
    v20[0] = @"CLMiLoConnectionReturnCode";
    v20[1] = @"CLMiLoConnectionErrorMessage";
    v21[1] = [NSNumber numberWithInteger:*buf];
    v12 = v21;
    v13 = v20;
LABEL_14:
    v14 = 2;
    goto LABEL_15;
  }

  v5 = objc_opt_class();
  v6 = [NSSet setWithObjects:v5, objc_opt_class(), 0];
  DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v6);
  if (!DictionaryOfClasses || (v8 = DictionaryOfClasses, ![DictionaryOfClasses objectForKeyedSubscript:@"CLMiLoConnectionServiceIdentifier"]) || !objc_msgSend(v8, "objectForKeyedSubscript:", @"CLMiLoConnectionRequestIdentifier"))
  {
    v18[0] = @"CLMiLoConnectionReturnCode";
    v18[1] = @"CLMiLoConnectionErrorMessage";
    v19[0] = &off_10254ECD8;
    v19[1] = &off_10254ECA8;
    v12 = v19;
    v13 = v18;
    goto LABEL_14;
  }

  v9 = [v8 objectForKeyedSubscript:@"CLMiLoConnectionServiceIdentifier"];
  v10 = [v8 objectForKeyedSubscript:@"CLMiLoConnectionRequestIdentifier"];
  v11 = (a1 + 88);
  if (*(a1 + 111) < 0)
  {
    v11 = *v11;
  }

  [*(a1 + 64) requestStopUpdatingMicroLocationForClient:+[NSString stringWithUTF8String:](NSString withServiceIdentifier:"stringWithUTF8String:" withRequestIdentifier:v11) withConnectionToken:{v9, v10, *(a1 + 72)}];
  v16 = @"CLMiLoConnectionReturnCode";
  v17 = &off_10254EC18;
  v12 = &v17;
  v13 = &v16;
  v14 = 1;
LABEL_15:
  [NSDictionary dictionaryWithObjects:v12 forKeys:v13 count:v14];
  return CLConnectionMessage::sendReply();
}

uint64_t sub_1005E45E4(uint64_t a1)
{
  if (qword_1025D46D0 != -1)
  {
    sub_1018DE3D8();
  }

  v2 = qword_1025D46D8;
  if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289026;
    *&buf[4] = 0;
    v12 = 2082;
    v13 = "";
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:kCLConnectionMessageMiLoQueryConnectionStatus received in CLMiLoConnectionSubscription}", buf, 0x12u);
  }

  *buf = 0;
  if (sub_1005E5ADC(a1, buf))
  {
    [*(a1 + 64) queryMiloConnectionStatus:*(a1 + 72)];
    v7 = @"CLMiLoConnectionReturnCode";
    v8 = &off_10254EC18;
    v3 = &v8;
    v4 = &v7;
    v5 = 1;
  }

  else
  {
    v10[0] = &off_10254ECF0;
    v9[0] = @"CLMiLoConnectionReturnCode";
    v9[1] = @"CLMiLoConnectionErrorMessage";
    v10[1] = [NSNumber numberWithInteger:*buf];
    v3 = v10;
    v4 = v9;
    v5 = 2;
  }

  [NSDictionary dictionaryWithObjects:v3 forKeys:v4 count:v5, v7, v8];
  return CLConnectionMessage::sendReply();
}

uint64_t sub_1005E4770(uint64_t a1, CLConnectionMessage **a2)
{
  if (qword_1025D46D0 != -1)
  {
    sub_1018DE3D8();
  }

  v4 = qword_1025D46D8;
  if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289026;
    v19 = 2082;
    v20 = "";
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:kCLConnectionMessageMiLoEnableMiLoAtCurrentLocation received in CLMiLoConnectionSubscription}", buf, 0x12u);
  }

  *buf = 0;
  if ((sub_1005E5ADC(a1, buf) & 1) == 0)
  {
    v17[0] = &off_10254ECD8;
    v16[0] = @"CLMiLoConnectionReturnCode";
    v16[1] = @"CLMiLoConnectionErrorMessage";
    v17[1] = [NSNumber numberWithInteger:*buf];
    v8 = v17;
    v9 = v16;
LABEL_12:
    v10 = 2;
    goto LABEL_13;
  }

  v5 = [NSSet setWithObjects:objc_opt_class(), 0];
  DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v5);
  if (!DictionaryOfClasses || (v7 = DictionaryOfClasses, ![DictionaryOfClasses objectForKeyedSubscript:@"CLMiLoConnectionServiceIdentifier"]) || !objc_msgSend(v7, "objectForKeyedSubscript:", @"CLMiLoConnectionRequestIdentifier"))
  {
    v14[0] = @"CLMiLoConnectionReturnCode";
    v14[1] = @"CLMiLoConnectionErrorMessage";
    v15[0] = &off_10254ECD8;
    v15[1] = &off_10254ECA8;
    v8 = v15;
    v9 = v14;
    goto LABEL_12;
  }

  [*(a1 + 64) enableMiLoAtCurrentLocationWithServiceIdentifier:objc_msgSend(v7 withRequestIdentifier:"objectForKeyedSubscript:" connectionToken:{@"CLMiLoConnectionServiceIdentifier", objc_msgSend(v7, "objectForKeyedSubscript:", @"CLMiLoConnectionRequestIdentifier", *(a1 + 72)}];
  v12 = @"CLMiLoConnectionReturnCode";
  v13 = &off_10254EC18;
  v8 = &v13;
  v9 = &v12;
  v10 = 1;
LABEL_13:
  [NSDictionary dictionaryWithObjects:v8 forKeys:v9 count:v10];
  return CLConnectionMessage::sendReply();
}

uint64_t sub_1005E49DC(uint64_t a1, CLConnectionMessage **a2)
{
  if (qword_1025D46D0 != -1)
  {
    sub_1018DE3D8();
  }

  v4 = qword_1025D46D8;
  if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289026;
    v20 = 2082;
    v21 = "";
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:kCLConnectionMessageRemoveCustomLOI received in CLMiLoConnectionSubscription}", buf, 0x12u);
  }

  *buf = 0;
  if ((sub_1005E5ADC(a1, buf) & 1) == 0)
  {
    v18[0] = &off_10254ECD8;
    v17[0] = @"CLMiLoConnectionReturnCode";
    v17[1] = @"CLMiLoConnectionErrorMessage";
    v18[1] = [NSNumber numberWithInteger:*buf];
    v9 = v18;
    v10 = v17;
LABEL_13:
    v11 = 2;
    goto LABEL_14;
  }

  v5 = objc_opt_class();
  v6 = [NSSet setWithObjects:v5, objc_opt_class(), 0];
  DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v6);
  if (!DictionaryOfClasses || (v8 = DictionaryOfClasses, ![DictionaryOfClasses objectForKeyedSubscript:@"CLMiLoConnectionServiceIdentifier"]) || !objc_msgSend(v8, "objectForKeyedSubscript:", @"CLMiLoConnectionRequestIdentifier") || !objc_msgSend(v8, "objectForKeyedSubscript:", @"CLMiLoConnectionLOIIdentifier"))
  {
    v15[0] = @"CLMiLoConnectionReturnCode";
    v15[1] = @"CLMiLoConnectionErrorMessage";
    v16[0] = &off_10254ECD8;
    v16[1] = &off_10254ECA8;
    v9 = v16;
    v10 = v15;
    goto LABEL_13;
  }

  [*(a1 + 64) requestRemoveCustomLoiWithServiceIdentifier:objc_msgSend(v8 withRequestIdentifier:"objectForKeyedSubscript:" withLoiIdentifier:@"CLMiLoConnectionServiceIdentifier" withConnectionToken:{objc_msgSend(v8, "objectForKeyedSubscript:", @"CLMiLoConnectionRequestIdentifier", objc_msgSend(v8, "objectForKeyedSubscript:", @"CLMiLoConnectionLOIIdentifier", *(a1 + 72)}];
  v13 = @"CLMiLoConnectionReturnCode";
  v14 = &off_10254EC18;
  v9 = &v14;
  v10 = &v13;
  v11 = 1;
LABEL_14:
  [NSDictionary dictionaryWithObjects:v9 forKeys:v10 count:v11];
  return CLConnectionMessage::sendReply();
}

uint64_t sub_1005E4C88(uint64_t a1, CLConnectionMessage **a2)
{
  if (qword_1025D46D0 != -1)
  {
    sub_1018DE3D8();
  }

  v4 = qword_1025D46D8;
  if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    *&buf[4] = 0;
    v25 = 2082;
    v26 = "";
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:kCLConnectionMessageRequestModelLearning received in CLMiLoConnectionSubscription}", buf, 0x12u);
  }

  v17 = 0;
  if (sub_1005E5ADC(a1, &v17))
  {
    sub_10000EC00(buf, "com.apple.locationd.private_info");
    v5 = sub_1001C2F40(a1);
    v6 = v5;
    if (v27 < 0)
    {
      operator delete(*buf);
      if (v6)
      {
        goto LABEL_8;
      }
    }

    else if (v5)
    {
LABEL_8:
      v7 = [NSSet setWithObjects:objc_opt_class(), 0];
      DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v7);
      v9 = DictionaryOfClasses;
      if (DictionaryOfClasses && [DictionaryOfClasses objectForKeyedSubscript:@"CLMiLoConnectionServiceIdentifier"] && objc_msgSend(v9, "objectForKeyedSubscript:", @"CLMiLoConnectionRequestIdentifier"))
      {
        v10 = [v9 objectForKeyedSubscript:@"CLMiLoConnectionServiceIdentifier"];
        v11 = [v9 objectForKeyedSubscript:@"CLMiLoConnectionRequestIdentifier"];
        v12 = (a1 + 88);
        if (*(a1 + 111) < 0)
        {
          v12 = *v12;
        }

        [*(a1 + 64) requestMicroLocationLearningForClient:+[NSString stringWithUTF8String:](NSString withServiceIdentifier:"stringWithUTF8String:" withRequestIdentifier:{v12), v10, v11}];
        v18 = @"CLMiLoConnectionReturnCode";
        v19 = &off_10254EC18;
        [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
        return CLConnectionMessage::sendReply();
      }

      else
      {
        if (qword_1025D46D0 != -1)
        {
          sub_1018DE3EC();
        }

        v15 = qword_1025D46D8;
        if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 68289026;
          *&buf[4] = 0;
          v25 = 2082;
          v26 = "";
          _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:invalid data for kCLConnectionMessageRequestModelLearning}", buf, 0x12u);
        }

        v20[0] = @"CLMiLoConnectionReturnCode";
        v20[1] = @"CLMiLoConnectionErrorMessage";
        v21[0] = &off_10254ECD8;
        v21[1] = &off_10254ECA8;
        [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:2];
        return CLConnectionMessage::sendReply();
      }
    }

    if (qword_1025D46D0 != -1)
    {
      sub_1018DE3EC();
    }

    v16 = qword_1025D46D8;
    if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      v25 = 2082;
      v26 = "";
      _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:not qualified for kCLConnectionMessageRequestModelLearning}", buf, 0x12u);
    }

    v22[0] = @"CLMiLoConnectionReturnCode";
    v22[1] = @"CLMiLoConnectionErrorMessage";
    v23[0] = &off_10254ECD8;
    v23[1] = [NSNumber numberWithInteger:1];
    [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:2];
    return CLConnectionMessage::sendReply();
  }

  else
  {
    if (qword_1025D46D0 != -1)
    {
      sub_1018DE3EC();
    }

    v14 = qword_1025D46D8;
    if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      v25 = 2082;
      v26 = "";
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:not qualified for MiLo connection}", buf, 0x12u);
    }

    v29[0] = &off_10254ECD8;
    v28[0] = @"CLMiLoConnectionReturnCode";
    v28[1] = @"CLMiLoConnectionErrorMessage";
    v29[1] = [NSNumber numberWithInteger:v17];
    [NSDictionary dictionaryWithObjects:v29 forKeys:v28 count:2];
    return CLConnectionMessage::sendReply();
  }
}

void sub_1005E5140(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005E5164(uint64_t a1, CLConnectionMessage **a2)
{
  if (qword_1025D46D0 != -1)
  {
    sub_1018DE3D8();
  }

  v4 = qword_1025D46D8;
  if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    *&buf[4] = 0;
    v24 = 2082;
    v25 = "";
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:kCLConnectionMessageRequestPurgeMiLoData received in CLMiLoConnectionSubscription}", buf, 0x12u);
  }

  v16 = 0;
  if (sub_1005E5ADC(a1, &v16))
  {
    sub_10000EC00(buf, "com.apple.locationd.milo_purge_data");
    v5 = sub_1001C2F40(a1);
    v6 = v5;
    if (v26 < 0)
    {
      operator delete(*buf);
      if (v6)
      {
        goto LABEL_8;
      }
    }

    else if (v5)
    {
LABEL_8:
      v7 = [NSSet setWithObjects:objc_opt_class(), 0];
      DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v7);
      v9 = DictionaryOfClasses;
      if (DictionaryOfClasses && [DictionaryOfClasses objectForKeyedSubscript:@"CLMiLoConnectionRequestIdentifier"])
      {
        v10 = [v9 objectForKeyedSubscript:@"CLMiLoConnectionRequestIdentifier"];
        v11 = (a1 + 88);
        if (*(a1 + 111) < 0)
        {
          v11 = *v11;
        }

        [*(a1 + 64) requestPurgeAllMiLoDataFromClient:+[NSString stringWithUTF8String:](NSString withRequestIdentifier:{"stringWithUTF8String:", v11), v10}];
        v17 = @"CLMiLoConnectionReturnCode";
        v18 = &off_10254EC18;
        [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
        return CLConnectionMessage::sendReply();
      }

      else
      {
        if (qword_1025D46D0 != -1)
        {
          sub_1018DE3EC();
        }

        v15 = qword_1025D46D8;
        if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 68289026;
          *&buf[4] = 0;
          v24 = 2082;
          v25 = "";
          _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:invalid data for kCLConnectionMessageRequestPurgeMiLoData}", buf, 0x12u);
        }

        v19[0] = @"CLMiLoConnectionReturnCode";
        v19[1] = @"CLMiLoConnectionErrorMessage";
        v20[0] = &off_10254ECD8;
        v20[1] = &off_10254ECA8;
        [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:2];
        return CLConnectionMessage::sendReply();
      }
    }

    if (qword_1025D46D0 != -1)
    {
      sub_1018DE3EC();
    }

    v14 = qword_1025D46D8;
    if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      v24 = 2082;
      v25 = "";
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:not qualified for kCLConnectionMessageRequestMiLoExportDatabaseTables}", buf, 0x12u);
    }

    v21[0] = @"CLMiLoConnectionReturnCode";
    v21[1] = @"CLMiLoConnectionErrorMessage";
    v22[0] = &off_10254ECD8;
    v22[1] = [NSNumber numberWithInteger:1];
    [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:2];
    return CLConnectionMessage::sendReply();
  }

  else
  {
    if (qword_1025D46D0 != -1)
    {
      sub_1018DE3EC();
    }

    v13 = qword_1025D46D8;
    if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      v24 = 2082;
      v25 = "";
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:not qualified for kCLConnectionMessageRequestPurgeMiLoData}", buf, 0x12u);
    }

    v28[0] = &off_10254ECD8;
    v27[0] = @"CLMiLoConnectionReturnCode";
    v27[1] = @"CLMiLoConnectionErrorMessage";
    v28[1] = [NSNumber numberWithInteger:v16];
    [NSDictionary dictionaryWithObjects:v28 forKeys:v27 count:2];
    return CLConnectionMessage::sendReply();
  }
}

void sub_1005E55E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005E5608(uint64_t a1, CLConnectionMessage **a2)
{
  if (qword_1025D46D0 != -1)
  {
    sub_1018DE3D8();
  }

  v4 = qword_1025D46D8;
  if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    *&buf[4] = 0;
    LOWORD(v23) = 2082;
    *(&v23 + 2) = "";
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:kCLConnectionMessageRequestMiLoExportDatabaseTables received in CLMiLoConnectionSubscription}", buf, 0x12u);
  }

  v15 = 0;
  if (sub_1005E5ADC(a1, &v15))
  {
    sub_10000EC00(buf, "com.apple.locationd.microlocation.export-db");
    v5 = sub_1001C2F40(a1);
    v6 = v5;
    if (SHIBYTE(v23) < 0)
    {
      operator delete(*buf);
      if (v6)
      {
        goto LABEL_8;
      }
    }

    else if (v5)
    {
LABEL_8:
      v7 = [NSSet setWithObjects:objc_opt_class(), 0];
      DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v7);
      v9 = DictionaryOfClasses;
      if (DictionaryOfClasses && [DictionaryOfClasses objectForKeyedSubscript:@"CLMiLoConnectionRequestIdentifier"])
      {
        v10 = [v9 objectForKeyedSubscript:@"CLMiLoConnectionRequestIdentifier"];
        *buf = 0;
        v23 = 0uLL;
        sub_100F35660(a1);
        if (v23 >= 0)
        {
          v11 = buf;
        }

        else
        {
          v11 = *buf;
        }

        [*(a1 + 64) requestExportMiLoDatabaseTablesFromClient:+[NSString stringWithUTF8String:](NSString withRequestIdentifier:"stringWithUTF8String:" connectionToken:{v11), v10, *(a1 + 72)}];
        v16 = @"CLMiLoConnectionReturnCode";
        v17 = &off_10254EC18;
        [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
        CLConnectionMessage::sendReply();
        if (SHIBYTE(v23) < 0)
        {
          operator delete(*buf);
        }
      }

      else
      {
        if (qword_1025D46D0 != -1)
        {
          sub_1018DE3EC();
        }

        v14 = qword_1025D46D8;
        if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 68289026;
          *&buf[4] = 0;
          LOWORD(v23) = 2082;
          *(&v23 + 2) = "";
          _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:invalid data for kCLConnectionMessageRequestMiLoExportDatabaseTables}", buf, 0x12u);
        }

        v18[0] = @"CLMiLoConnectionReturnCode";
        v18[1] = @"CLMiLoConnectionErrorMessage";
        v19[0] = &off_10254ECD8;
        v19[1] = &off_10254ECA8;
        [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:2];
        CLConnectionMessage::sendReply();
      }

      return;
    }

    if (qword_1025D46D0 != -1)
    {
      sub_1018DE3EC();
    }

    v13 = qword_1025D46D8;
    if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      LOWORD(v23) = 2082;
      *(&v23 + 2) = "";
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:not qualified for kCLConnectionMessageRequestMiLoExportDatabaseTables}", buf, 0x12u);
    }

    v20[0] = @"CLMiLoConnectionReturnCode";
    v20[1] = @"CLMiLoConnectionErrorMessage";
    v21[0] = &off_10254ECD8;
    v21[1] = [NSNumber numberWithInteger:1];
    [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:2];
    CLConnectionMessage::sendReply();
  }

  else
  {
    if (qword_1025D46D0 != -1)
    {
      sub_1018DE3EC();
    }

    v12 = qword_1025D46D8;
    if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      LOWORD(v23) = 2082;
      *(&v23 + 2) = "";
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:not qualified for CLMiLoConnection}", buf, 0x12u);
    }

    v25[0] = &off_10254ECD8;
    v24[0] = @"CLMiLoConnectionReturnCode";
    v24[1] = @"CLMiLoConnectionErrorMessage";
    v25[1] = [NSNumber numberWithInteger:v15];
    [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:2];
    CLConnectionMessage::sendReply();
  }
}

void sub_1005E5AB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005E5ADC(uint64_t a1, uint64_t *a2)
{
  sub_10000EC00(&__p, "com.apple.locationd.milo_connection");
  v4 = sub_1001C2F40(a1);
  v5 = v4;
  if (v13 < 0)
  {
    operator delete(__p);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_6:
    if (qword_1025D46D0 != -1)
    {
      sub_1018DE3EC();
    }

    v7 = qword_1025D46D8;
    if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_DEFAULT))
    {
      __p = 68289026;
      v11 = 2082;
      v12 = "";
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:SPI request, client is not entitled for CLMiLoConnection}", &__p, 0x12u);
    }

    v8 = 1;
    goto LABEL_16;
  }

  if ((v4 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (sub_100E7133C())
  {
    return 1;
  }

  if (qword_1025D46D0 != -1)
  {
    sub_1018DE3EC();
  }

  v9 = qword_1025D46D8;
  if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_DEFAULT))
  {
    __p = 68289026;
    v11 = 2082;
    v12 = "";
    _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:SPI request, CLMiLoConnection is not available on this platform}", &__p, 0x12u);
  }

  v8 = 2;
LABEL_16:
  result = 0;
  *a2 = v8;
  return result;
}

void sub_1005E5C80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005E5D04(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

uint64_t sub_1005E5D84(uint64_t a1)
{
  sub_1005E7000(a1 + 24);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

id sub_1005E5DC0(void *a1)
{
  v2 = [a1 binaryVersion];
  [a1 sizeOfType];
  if (v2)
  {
    if (getenv("_INTERSILO_UNIT_TEST"))
    {
      if (qword_1025D41A0 != -1)
      {
        sub_1018DE5E4();
      }

      v3 = qword_1025D41A8;
      if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_ERROR))
      {
        v6 = 134218498;
        v7 = v2;
        v8 = 2048;
        v9 = 0;
        v10 = 2080;
        v11 = 0x8000000101C80B49 & 0x7FFFFFFFFFFFFFFFLL;
        _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", &v6, 0x20u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018DE5F8();
      }
    }

    else
    {
      if (qword_1025D41A0 != -1)
      {
        sub_1018DE5E4();
      }

      v5 = qword_1025D41A8;
      if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_FAULT))
      {
        v6 = 134218498;
        v7 = v2;
        v8 = 2048;
        v9 = 0;
        v10 = 2080;
        v11 = 0x8000000101C80B49 & 0x7FFFFFFFFFFFFFFFLL;
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_FAULT, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", &v6, 0x20u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018DE6E8();
      }
    }

    return 0;
  }

  else
  {

    return [a1 cppObjectPtr];
  }
}

id sub_1005E5FF4(void *a1)
{
  v2 = [a1 binaryVersion];
  [a1 sizeOfType];
  if (v2)
  {
    if (getenv("_INTERSILO_UNIT_TEST"))
    {
      if (qword_1025D41A0 != -1)
      {
        sub_1018DE5E4();
      }

      v3 = qword_1025D41A8;
      if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_ERROR))
      {
        v6 = 134218498;
        v7 = v2;
        v8 = 2048;
        v9 = 0;
        v10 = 2080;
        v11 = 0x8000000101C80B7CLL & 0x7FFFFFFFFFFFFFFFLL;
        _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", &v6, 0x20u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018DE7D8();
      }
    }

    else
    {
      if (qword_1025D41A0 != -1)
      {
        sub_1018DE5E4();
      }

      v5 = qword_1025D41A8;
      if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_FAULT))
      {
        v6 = 134218498;
        v7 = v2;
        v8 = 2048;
        v9 = 0;
        v10 = 2080;
        v11 = 0x8000000101C80B7CLL & 0x7FFFFFFFFFFFFFFFLL;
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_FAULT, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", &v6, 0x20u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018DE8C8();
      }
    }

    return 0;
  }

  else
  {

    return [a1 cppObjectPtr];
  }
}

id sub_1005E61F8(void *a1)
{
  v2 = [a1 binaryVersion];
  [a1 sizeOfType];
  if (v2)
  {
    if (getenv("_INTERSILO_UNIT_TEST"))
    {
      if (qword_1025D41A0 != -1)
      {
        sub_1018DE5E4();
      }

      v3 = qword_1025D41A8;
      if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_ERROR))
      {
        v6 = 134218498;
        v7 = v2;
        v8 = 2048;
        v9 = 0;
        v10 = 2080;
        v11 = 0x8000000101C80BADLL & 0x7FFFFFFFFFFFFFFFLL;
        _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", &v6, 0x20u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018DE9B8();
      }
    }

    else
    {
      if (qword_1025D41A0 != -1)
      {
        sub_1018DE5E4();
      }

      v5 = qword_1025D41A8;
      if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_FAULT))
      {
        v6 = 134218498;
        v7 = v2;
        v8 = 2048;
        v9 = 0;
        v10 = 2080;
        v11 = 0x8000000101C80BADLL & 0x7FFFFFFFFFFFFFFFLL;
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_FAULT, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", &v6, 0x20u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018DEAA8();
      }
    }

    return 0;
  }

  else
  {

    return [a1 cppObjectPtr];
  }
}

id sub_1005E63FC(void *a1)
{
  v2 = [a1 binaryVersion];
  [a1 sizeOfType];
  if (!v2)
  {
    return sub_1005E67D8(&v6, a1);
  }

  if (getenv("_INTERSILO_UNIT_TEST"))
  {
    if (qword_1025D41A0 != -1)
    {
      sub_1018DE5E4();
    }

    v3 = qword_1025D41A8;
    if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218498;
      v8 = v2;
      v9 = 2048;
      v10 = 0;
      v11 = 2080;
      v12 = 0x8000000101C80BE8 & 0x7FFFFFFFFFFFFFFFLL;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", buf, 0x20u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018DEB98();
    }
  }

  else
  {
    if (qword_1025D41A0 != -1)
    {
      sub_1018DE5E4();
    }

    v5 = qword_1025D41A8;
    if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_FAULT))
    {
      *buf = 134218498;
      v8 = v2;
      v9 = 2048;
      v10 = 0;
      v11 = 2080;
      v12 = 0x8000000101C80BE8 & 0x7FFFFFFFFFFFFFFFLL;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_FAULT, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", buf, 0x20u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018DEC88();
    }
  }

  return 0;
}

id sub_1005E65D4(void *a1)
{
  v2 = [a1 binaryVersion];
  [a1 sizeOfType];
  if (v2)
  {
    if (getenv("_INTERSILO_UNIT_TEST"))
    {
      if (qword_1025D41A0 != -1)
      {
        sub_1018DE5E4();
      }

      v3 = qword_1025D41A8;
      if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_ERROR))
      {
        v6 = 134218498;
        v7 = v2;
        v8 = 2048;
        v9 = 0;
        v10 = 2080;
        v11 = 0x8000000101C80BE8 & 0x7FFFFFFFFFFFFFFFLL;
        _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", &v6, 0x20u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018DED78();
      }
    }

    else
    {
      if (qword_1025D41A0 != -1)
      {
        sub_1018DE5E4();
      }

      v5 = qword_1025D41A8;
      if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_FAULT))
      {
        v6 = 134218498;
        v7 = v2;
        v8 = 2048;
        v9 = 0;
        v10 = 2080;
        v11 = 0x8000000101C80BE8 & 0x7FFFFFFFFFFFFFFFLL;
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_FAULT, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", &v6, 0x20u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018DEE68();
      }
    }

    return 0;
  }

  else
  {

    return [a1 cppObjectPtr];
  }
}

id sub_1005E67D8(uint64_t a1, void *a2)
{
  if (![a2 cppObjectPtr] && objc_msgSend(objc_msgSend(a2, "compatibilityInfo"), "isEqual:", &off_10254ED08))
  {
    if ([objc_msgSend(a2 "serialized")] != 8)
    {
      sub_1018DEF58();
    }

    [a2 setCppObjectPtr:{objc_msgSend(objc_msgSend(a2, "serialized"), "bytes")}];
  }

  return [a2 cppObjectPtr];
}

id sub_1005E6860(void *a1)
{
  v2 = [a1 binaryVersion];
  [a1 sizeOfType];
  if (v2)
  {
    if (getenv("_INTERSILO_UNIT_TEST"))
    {
      if (qword_1025D41A0 != -1)
      {
        sub_1018DE5E4();
      }

      v3 = qword_1025D41A8;
      if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_ERROR))
      {
        v6 = 134218498;
        v7 = v2;
        v8 = 2048;
        v9 = 0;
        v10 = 2080;
        v11 = 0x8000000101C80C24 & 0x7FFFFFFFFFFFFFFFLL;
        _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", &v6, 0x20u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018DF128();
      }
    }

    else
    {
      if (qword_1025D41A0 != -1)
      {
        sub_1018DE5E4();
      }

      v5 = qword_1025D41A8;
      if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_FAULT))
      {
        v6 = 134218498;
        v7 = v2;
        v8 = 2048;
        v9 = 0;
        v10 = 2080;
        v11 = 0x8000000101C80C24 & 0x7FFFFFFFFFFFFFFFLL;
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_FAULT, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", &v6, 0x20u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018DF218();
      }
    }

    return 0;
  }

  else
  {

    return [a1 cppObjectPtr];
  }
}

id sub_1005E6A64(void *a1)
{
  v2 = [a1 binaryVersion];
  [a1 sizeOfType];
  if (v2)
  {
    if (getenv("_INTERSILO_UNIT_TEST"))
    {
      if (qword_1025D41A0 != -1)
      {
        sub_1018DE5E4();
      }

      v3 = qword_1025D41A8;
      if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_ERROR))
      {
        v6 = 134218498;
        v7 = v2;
        v8 = 2048;
        v9 = 0;
        v10 = 2080;
        v11 = 0x8000000101C80C61 & 0x7FFFFFFFFFFFFFFFLL;
        _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", &v6, 0x20u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018DF308();
      }
    }

    else
    {
      if (qword_1025D41A0 != -1)
      {
        sub_1018DE5E4();
      }

      v5 = qword_1025D41A8;
      if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_FAULT))
      {
        v6 = 134218498;
        v7 = v2;
        v8 = 2048;
        v9 = 0;
        v10 = 2080;
        v11 = 0x8000000101C80C61 & 0x7FFFFFFFFFFFFFFFLL;
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_FAULT, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", &v6, 0x20u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018DF3F8();
      }
    }

    return 0;
  }

  else
  {

    return [a1 cppObjectPtr];
  }
}

__n128 sub_1005E6CC4(uint64_t a1, uint64_t a2)
{
  *a2 = off_102462D40;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_1005E6CF4(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v3 = *a3;
  *a3 = 0;
  *(a3 + 1) = 0;
  sub_1005E6DA0(a1 + 8, a2, &v3);
  if (*(&v3 + 1))
  {
    sub_100008080(*(&v3 + 1));
  }
}

void sub_1005E6D3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005E6D54(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1005E6DA0(uint64_t a1, uint64_t a2, CLConnectionMessage **a3)
{
  v6 = (*(*a2 + 16))(a2);
  DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a3, v6);
  sub_100005548(v15, DictionaryOfClasses);
  v14 = 0;
  if (sub_10001CB4C(v15, "kCLConnectionMessageSubscribeKey", &v14))
  {
    v8 = *a1;
    v9 = *(a1 + 8);
    v10 = (a2 + (v9 >> 1));
    if (v9)
    {
      v8 = *(*v10 + v8);
    }

    v8(v10, v14, v15);
  }

  else
  {
    if (qword_1025D4790 != -1)
    {
      sub_1018DF4E8();
    }

    v11 = qword_1025D4798;
    if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289026;
      v17 = 0;
      v18 = 2082;
      v19 = "";
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Couldn't get value for kCLConnectionMessageSubscribeKey key}", buf, 0x12u);
      if (qword_1025D4790 != -1)
      {
        sub_1018DF4E8();
      }
    }

    v12 = qword_1025D4798;
    if (os_signpost_enabled(qword_1025D4798))
    {
      *buf = 68289026;
      v17 = 0;
      v18 = 2082;
      v19 = "";
      _os_signpost_emit_with_name_impl(dword_100000000, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Couldn't get value for kCLConnectionMessageSubscribeKey key", "{msg%{public}.0s:Couldn't get value for kCLConnectionMessageSubscribeKey key}", buf, 0x12u);
    }
  }

  return sub_100005DA4(v15);
}

uint64_t sub_1005E7000(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

__n128 sub_1005E70DC(uint64_t a1, uint64_t a2)
{
  *a2 = off_102462DF0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_1005E710C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  *a3 = 0;
  a3[1] = 0;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = (a2 + (v6 >> 1));
  if (v6)
  {
    v5 = *(*v7 + v5);
  }

  v8 = v3;
  v9 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5(v7, &v8);
  if (v9)
  {
    sub_100008080(v9);
  }

  if (v4)
  {
    sub_100008080(v4);
  }
}

void sub_1005E71AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  if (v10)
  {
    sub_100008080(v10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005E71D0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1005E721C(uint64_t a1, const void **a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 56 * a3;
    do
    {
      sub_1005E7298(a1, a2);
      a2 += 7;
      v5 -= 56;
    }

    while (v5);
  }

  return a1;
}

const void **sub_1005E7298(void *a1, const void **a2)
{
  v4 = sub_100007070(a1, a2);
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
    sub_1005E74F4();
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

  if (!sub_100019DF4(a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_1005E74E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1005E7570(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005E7570(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_1005E76CC(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void *sub_1005E75BC(void *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100007244(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    __dst[2] = *(a2 + 2);
    *__dst = v4;
  }

  sub_1005E7634((__dst + 3), a2 + 24);
  return __dst;
}

void sub_1005E7618(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005E7634(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void sub_1005E76CC(uint64_t a1)
{
  sub_1005E7000(a1 + 24);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t sub_1005E771C(uint64_t a1)
{
  sub_1005E7758(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_1005E7758(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_1005E76CC((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_1005E78F4(id a1)
{
  sub_10001A3E8();
  if (sub_10001CF3C())
  {
    byte_102658248 = 1;
  }
}

void sub_1005E7D70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100008080(a12);
  }

  operator delete();
}

void sub_1005E7ECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  sub_101896E40((v11 + 8), (v10 + 8));
  operator delete();
}

uint64_t sub_1005E81CC(uint64_t a1)
{
  if (qword_1025D4230 != -1)
  {
    sub_1018DF71C();
  }

  v2 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "Aggregating ElevationGrade db records", v4, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018DF730();
  }

  return sub_1005E8278(*(*(a1 + 32) + 128));
}

uint64_t sub_1005E8278(uint64_t a1)
{
  if (*(a1 + 40))
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018DF814();
    }

    v2 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      v3 = sub_1000137E0();
      v4 = *(*(a1 + 24) + 132);
      v17 = 134218240;
      *v18 = v3;
      *&v18[8] = 1024;
      v19 = v4;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "Aggregating records start %f, count ~%d", &v17, 0x12u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018DF828();
    }

    v5 = (*(**(a1 + 24) + 32))(*(a1 + 24), a1);
    if (qword_1025D48A0 != -1)
    {
      sub_1018DF944();
    }

    v6 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      v7 = sub_1000137E0();
      v8 = *(*(a1 + 24) + 132);
      v17 = 134218240;
      *v18 = v7;
      *&v18[8] = 1024;
      v19 = v8;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "Aggregating records stop %f, count ~%d", &v17, 0x12u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018DF96C();
    }

    v9 = *(a1 + 24);
    v10 = *(v9 + 132);
    if (sub_1005EA05C(v9, a1) * 1.2 < v10)
    {
      if (qword_1025D48A0 != -1)
      {
        sub_1018DF944();
      }

      v11 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(a1 + 24);
        v13 = *(v12 + 132);
        v14 = sub_1005EA05C(v12, a1);
        v17 = 67109376;
        *v18 = v13;
        *&v18[4] = 1024;
        *&v18[6] = v14;
        _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "#Warning Number of records after aggregation is %d and it greatly exceeds the number of records estimated to be needed %d", &v17, 0xEu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018DFA88((a1 + 24), a1);
      }
    }

    return v5;
  }

  else
  {
    v16 = *(**(a1 + 24) + 32);

    return v16();
  }
}

id sub_1005E8854(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1005E88EC;
  v4[3] = &unk_102462ED0;
  v5 = *(a1 + 40);
  return sub_1005F5534(518400.0, a2, 32, v2, 300, 0, 1, 1, 0, v4);
}

id sub_1005E88EC(uint64_t a1, char a2, uint64_t a3)
{
  v6 = [objc_msgSend(*(a1 + 32) "universe")];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1005E898C;
  v8[3] = &unk_102462EA8;
  v11 = a2;
  v9 = *(a1 + 32);
  v10 = a3;
  return [v6 async:v8];
}

id sub_1005E898C(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 32);
  if (v2 == 1)
  {
    [v3 saveCurrentSyncProgress];
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);

    return [v4 continueSync:v5];
  }

  else
  {
    ++v3[42];
    if (qword_1025D4530 != -1)
    {
      sub_1018DF538();
    }

    v7 = qword_1025D4538;
    if (os_log_type_enabled(qword_1025D4538, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 48);
      v9 = 138412290;
      v10 = v8;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_ERROR, "[WatchService] Transfer to phone failed with error, %@", &v9, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018DFDDC();
    }

    return [*(a1 + 32) setActivityAsDone:*(a1 + 40)];
  }
}

void sub_1005E90CC(uint64_t a1, _xpc_activity_s *a2)
{
  if (qword_1025D4530 != -1)
  {
    sub_1018DF538();
  }

  v4 = qword_1025D4538;
  if (os_log_type_enabled(qword_1025D4538, OS_LOG_TYPE_INFO))
  {
    v7 = 134349056;
    state = xpc_activity_get_state(a2);
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "[WatchService] Sync timer fired (%{public}ld)", &v7, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018E01D8();
  }

  *(*(a1 + 32) + 160) = os_transaction_create();
  [*(a1 + 40) onSyncActivity:a2];
  if (xpc_activity_get_state(a2) == 2 && !xpc_activity_set_state(a2, 4))
  {
    if (qword_1025D4530 != -1)
    {
      sub_1018DFCB8();
    }

    v5 = qword_1025D4538;
    if (os_log_type_enabled(qword_1025D4538, OS_LOG_TYPE_FAULT))
    {
      v6 = xpc_activity_get_state(a2);
      v7 = 134349056;
      state = v6;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_FAULT, "[WatchService] Failed to mark activity as Continue. Current state is %{public}ld", &v7, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018E02E0();
    }
  }
}

id sub_1005E950C(uint64_t a1)
{
  [*(a1 + 32) resetAnalytics];
  *(*(a1 + 32) + 144) = 0;
  *(*(a1 + 32) + 148) = 0;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 continueSync:v3];
}

void *sub_1005E9DD4(void *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[5];
    if (v3)
    {
      sub_100008080(v3);
    }

    v4 = v2[3];
    if (v4)
    {
      sub_100008080(v4);
    }

    v5 = v2[1];
    if (v5)
    {
      sub_100008080(v5);
    }

    operator delete();
  }

  return result;
}

void sub_1005E9E50(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 8);
    if (v2)
    {
      sub_100008080(v2);
    }

    operator delete();
  }
}

uint64_t sub_1005E9EA8(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_100DC1170();

    operator delete();
  }

  return result;
}

void *sub_1005E9F60(void *a1, unsigned __int8 *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_102462FB0;
  sub_100DC116C(a1 + 3, *a2);
  return a1;
}

void sub_1005E9FE0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_102462FB0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1005EA05C(uint64_t a1, double **a2)
{
  v3 = *a2;
  v2 = a2[1];
  v4 = (*a2)[1];
  v5 = *(a1 + 136);
  if (v4 <= v5)
  {
    v4 = *(a1 + 136);
  }

  v6 = v3 + 3;
  if (v3 + 3 == v2)
  {
    v7 = 0;
  }

  else
  {
    LODWORD(v7) = 0;
    v8 = *v3;
    do
    {
      v9 = *v6;
      v10 = v6[1];
      v6 += 3;
      v7 = (v7 + ((v9 - v8) / v4));
      if (v10 <= v5)
      {
        v4 = *(a1 + 136);
      }

      else
      {
        v4 = v10;
      }

      v8 = v9;
    }

    while (v6 != v2);
  }

  if (v4 != 1.79769313e308)
  {
    if (qword_1025D4200 != -1)
    {
      sub_1018E0CC4();
    }

    v11 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "#Warning No expiration rule was added so the number of records will be unbounded.", v13, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018E0CD8();
    }
  }

  return v7;
}

uint64_t sub_1005EA160(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t a7, uint64_t a8)
{
  v10 = a4[1];
  v26 = *a4;
  v27 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = a5[1];
  v24 = *a5;
  v25 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = a6[1];
  v22 = *a6;
  v23 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *buf = xmmword_102658258;
  *&buf[16] = unk_102658268;
  *&buf[32] = xmmword_102658278;
  sub_100C72EC8(a1, a2, 8, &v26, &v24, &v22, a8, a7, buf);
  if (v23)
  {
    sub_100008080(v23);
  }

  if (v25)
  {
    sub_100008080(v25);
  }

  if (v27)
  {
    sub_100008080(v27);
  }

  *a1 = off_102463020;
  v13 = *a3;
  *(a1 + 352) = *a3;
  v14 = a3[1];
  *(a1 + 360) = v14;
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
    v13 = *(a1 + 352);
  }

  *(a1 + 368) = 10000;
  *(a1 + 372) = 0;
  *(a1 + 376) = 0;
  if (((*(*v13 + 16))(v13, a1 + 368) & 1) == 0)
  {
    *(a1 + 368) = 10000;
  }

  sub_10001CAF4(buf);
  v15 = sub_10001CB4C(*buf, "StationaryLocationHarvest", (a1 + 373));
  if (*&buf[8])
  {
    sub_100008080(*&buf[8]);
  }

  if ((v15 & 1) == 0)
  {
    *(a1 + 373) = 0;
  }

  if (qword_1025D47D0 != -1)
  {
    sub_1018E0DBC();
  }

  v16 = qword_1025D47D8;
  if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_INFO))
  {
    v17 = *(a1 + 368);
    v18 = *(a1 + 373);
    v19 = (*(*a1 + 168))(a1);
    v20 = (*(**(a1 + 56) + 64))(*(a1 + 56)) - *(a1 + 96);
    *buf = 68290307;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 2050;
    *&buf[20] = 8;
    *&buf[28] = 1025;
    *&buf[30] = v17;
    *&buf[34] = 1025;
    *&buf[36] = v18;
    *&buf[40] = 2049;
    *&buf[42] = v19;
    v29 = 2049;
    v30 = v20;
    _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_INFO, "{msg%{public}.0s:construction, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld, maxHarvestPointCount:%{private}d, allowStationaryHarvest:%{private}hhd, curHarvestPointCount:%{private}lu, timeSinceLastUpload_s:%{private}.09f}", buf, 0x3Cu);
  }

  return a1;
}

void sub_1005EA494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a12)
  {
    sub_100008080(a12);
  }

  if (a14)
  {
    sub_100008080(a14);
  }

  if (a16)
  {
    sub_100008080(a16);
  }

  JUMPOUT(0x1005EA48CLL);
}

id sub_1005EA4C4(uint64_t a1)
{
  v1 = [*(a1 + 72) requestArchivesForHarvester:8];

  return [v1 count];
}

id sub_1005EA4F4(uint64_t a1)
{
  v2 = (*(**(a1 + 56) + 64))(*(a1 + 56));
  v3 = v2 - (*(*a1 + 192))(a1);
  v4 = *(a1 + 72);

  return [v4 pruneSecondaryDataOlderThan:8 forHarvester:v3];
}

uint64_t sub_1005EA598(uint64_t a1, uint64_t a2)
{
  sub_10004FD18(v11);
  v4 = (a1 + 280);
  v5 = unk_102658268;
  *v4 = xmmword_102658258;
  v4[1] = v5;
  *(v4 + 25) = unk_102658271;
  if (sub_100185ADC(a2, "Pressure", v11))
  {
    sub_1010FCEEC(v4, v11);
  }

  if (qword_1025D47D0 != -1)
  {
    sub_1018E0DBC();
  }

  v6 = qword_1025D47D8;
  if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_INFO))
  {
    sub_1010FCB7C(__p);
    if (v10 >= 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = __p[0];
    }

    *buf = 68289539;
    v13 = 0;
    v14 = 2082;
    v15 = "";
    v16 = 2050;
    v17 = 8;
    v18 = 2081;
    v19 = v7;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_INFO, "{msg%{public}.0s:harvest-apply-rules, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld, rules:%{private, location:escape_only}s}", buf, 0x26u);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return sub_100005DA4(v11);
}

void sub_1005EA710(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_100005DA4(va);
  _Unwind_Resume(a1);
}

id sub_1005EA74C(uint64_t a1)
{
  v2 = [*(a1 + 72) requestArchivesForHarvester:8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  result = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (result)
  {
    v4 = result;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [[CLHUploadRequest alloc] initWithArchive:*(*(&v8 + 1) + 8 * v6)];
        -[CLHUploadRequest setEndpoint:](v7, "setEndpoint:", [objc_msgSend(*(a1 + 80) "endpointSelector")]);
        [*(a1 + 80) submitRequest:v7];

        v6 = v6 + 1;
      }

      while (v4 != v6);
      result = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      v4 = result;
    }

    while (result);
  }

  return result;
}

uint64_t sub_1005EA880(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = sub_1000183C0(a1);
  (*(*v2 + 24))(v2, v3, 1);
  v4 = *(a1 + 56);
  v5 = sub_1000183C0(a1);
  (*(*v4 + 24))(v4, v5, 3);
  return 1;
}

uint64_t sub_1005EA918(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = sub_1000183C0(a1);
  (*(*v2 + 32))(v2, v3, 1);
  v4 = *(a1 + 56);
  v5 = sub_1000183C0(a1);
  v6 = *(*v4 + 32);

  return v6(v4, v5, 3);
}

void sub_1005EA9B8(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  v5 = *a4;
  v6 = v5 < 0x39;
  v7 = 0x110000000000C20uLL >> v5;
  if (qword_1025D47D0 != -1)
  {
    sub_1018E0DE4();
  }

  v8 = v6 & v7;
  v9 = qword_1025D47D8;
  if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
  {
    v10 = *(a1 + 372);
    v11[0] = 68289795;
    v11[1] = 0;
    v12 = 2082;
    v13 = "";
    v14 = 2050;
    v15 = 8;
    v16 = 1025;
    v17 = v10;
    v18 = 1025;
    v19 = v8;
    _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:received motion state notif, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld, oldIsDriving:%{private}hhd, newIsDriving:%{private}hhd}", v11, 0x28u);
  }

  *(a1 + 372) = v8;
}

uint64_t sub_1005EAAD4(void *a1)
{
  *a1 = off_102463020;
  v2 = a1[45];
  if (v2)
  {
    sub_100008080(v2);
  }

  return sub_100401ED8(a1);
}

void sub_1005EAB30(void *a1)
{
  *a1 = off_102463020;
  v2 = a1[45];
  if (v2)
  {
    sub_100008080(v2);
  }

  sub_100401ED8(a1);

  operator delete();
}

void sub_1005EAECC(id a1)
{
  if (sub_10098EAD4())
  {
    byte_102658298 = 1;
  }
}

void *sub_1005EB444(uint64_t a1, void *a2)
{
  result = sub_1005EB484(a1, "CLGyroCalibrationDatabase", a2);
  *result = off_102463178;
  return result;
}

uint64_t sub_1005EB484(uint64_t a1, char *a2, void *a3)
{
  *a1 = off_102463380;
  sub_10000EC00((a1 + 8), a2);
  *(a1 + 32) = a3;
  *(a1 + 40) = [a3 silo];
  *(a1 + 48) = 0;
  *(a1 + 64) = 0;
  *(a1 + 56) = a1 + 64;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = a1 + 88;
  *(a1 + 104) = 0;
  *(a1 + 108) = 0;
  return a1;
}

void sub_1005EB514(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005EB534(uint64_t a1)
{
  *a1 = off_102463380;
  [*(a1 + 48) invalidate];

  sub_10018F070(a1 + 80, *(a1 + 88));
  sub_10047BD74(a1 + 56, *(a1 + 64));
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t sub_1005EB64C()
{
  if (qword_1025D42F0 != -1)
  {
    sub_1018E0FB4();
  }

  v0 = off_1025D42F8;
  if (os_log_type_enabled(off_1025D42F8, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_INFO, "Warning: Not implemented.", v2, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018E0FC8();
  }

  return 0;
}

uint64_t sub_1005EB6E4()
{
  if (qword_1025D42F0 != -1)
  {
    sub_1018E0FB4();
  }

  v0 = off_1025D42F8;
  if (os_log_type_enabled(off_1025D42F8, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_INFO, "Warning: Not implemented.", v2, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018E10B0();
  }

  return 0x80000000;
}

uint64_t sub_1005EB77C(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1005EB80C;
  block[3] = &unk_102447418;
  block[4] = a1;
  if (qword_1026582B0 != -1)
  {
    dispatch_once(&qword_1026582B0, block);
  }

  return byte_1026582A8;
}

id sub_1005EB80C(uint64_t a1)
{
  result = [objc_msgSend(*(a1 + 32) "vendor")];
  byte_1026582A8 = result;
  return result;
}

void sub_1005EB8FC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  operator delete();
}

uint64_t sub_1005EB92C(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t a5, uint64_t a6)
{
  *a1 = off_102463460;
  *(a1 + 8) = [[CLNotifierClientAdapter alloc] initWithClient:a1];
  *(a1 + 24) = a5;
  *(a1 + 32) = a6;
  if (*(a3 + 23) >= 0)
  {
    v12 = a3;
  }

  else
  {
    v12 = *a3;
  }

  v13 = [objc_msgSend(a4 "vendor")];
  *(a1 + 16) = v13;
  v14 = v13;
  if (a2)
  {
    [*(a1 + 16) setDelegateEntityName:a2];
  }

  [*(a1 + 16) registerDelegate:*(a1 + 8) inSilo:{objc_msgSend(a4, "silo")}];
  return a1;
}

void sub_1005EBA14(uint64_t a1)
{
  sub_1005EBAAC(a1);

  operator delete();
}

uint64_t sub_1005EBAAC(uint64_t a1)
{
  *a1 = off_102463460;
  v2 = (a1 + 8);
  [*(a1 + 16) forget:*(a1 + 8)];

  [*v2 invalidate];
  *v2 = 0;
  *(a1 + 16) = 0;
  return a1;
}

double sub_1005EBB1C(double *a1, double *a2, double *a3, double a4, double a5, double a6)
{
  v11 = __sincos_stret(a4 * 0.0174532925);
  v12 = __sincos_stret(a5 * 0.0174532925);
  v13 = 6378137.0 / sqrt(v11.__sinval * -0.00669437999 * v11.__sinval + 1.0);
  v14 = v11.__cosval * (v13 + a6);
  *a1 = v12.__cosval * v14;
  *a2 = v12.__sinval * v14;
  result = v11.__sinval * (a6 + v13 * 0.99330562);
  *a3 = result;
  return result;
}

void sub_1005EBBDC(double *a1, long double *a2, double *a3, long double a4, long double a5, long double a6)
{
  v9 = sqrt(a5 * a5 + a4 * a4);
  *a2 = atan2(a5, a4) / 0.0174532925;
  v10 = v9 * 0.99330562;
  v11 = 0.0;
  v12 = 1.57079633;
  if (v9 * 0.99330562 != 0.0)
  {
    __y = a6;
    v13 = 0;
    v14 = 0.0;
    v12 = 0.0;
    do
    {
      v15 = v12;
      v12 = atan2(__y, v10);
      v16 = __sincos_stret(v12);
      v17 = 6378137.0 / sqrt(v16.__sinval * -0.00669437999 * v16.__sinval + 1.0);
      v11 = v9 / v16.__cosval - v17;
      if (vabdd_f64(v15, v12) >= 0.000001)
      {
        if (v13 > 8)
        {
          goto LABEL_13;
        }
      }

      else if (vabdd_f64(v14, v11) < 0.001 || v13 >= 9)
      {
        goto LABEL_13;
      }

      ++v13;
      v10 = v9 * (v17 / (v11 + v17) * -0.00669437999 + 1.0);
      v14 = v9 / v16.__cosval - v17;
    }

    while (v10 != 0.0);
    v12 = 1.57079633;
  }

LABEL_13:
  *a1 = v12 / 0.0174532925;
  *a3 = v11;
}

double sub_1005EBD4C(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  *a1 = off_1024634A0;
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 128) = 26;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 170) = 0u;
  return result;
}

uint64_t sub_1005EBDB0(uint64_t a1)
{
  *a1 = off_1024634A0;
  v2 = *(a1 + 152);
  if (v2)
  {
    sub_100008080(v2);
  }

  v6 = (a1 + 72);
  sub_1005ECEA4(&v6);
  v6 = (a1 + 48);
  sub_1005ECEA4(&v6);
  v3 = *(a1 + 24);
  if (v3)
  {
    *(a1 + 32) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    sub_100008080(v4);
  }

  return a1;
}

void sub_1005EBE44(uint64_t a1)
{
  sub_1005EBDB0(a1);

  operator delete();
}

uint64_t sub_1005EBE98(uint64_t a1)
{
  if ((*(a1 + 184) & 1) == 0)
  {
    if (*(a1 + 48) != *(a1 + 56))
    {
      sub_1005ED6A4();
    }

    *(a1 + 184) = 1;
  }

  return 1;
}

void sub_1005EC264(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  if (a16)
  {
    sub_100008080(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005EC2A4(uint64_t a1)
{
  v1 = *(a1 + 184);
  if (v1 == 1)
  {
    if ((*(a1 + 185) & 1) == 0)
    {
      if (*(a1 + 72) != *(a1 + 80))
      {
        v6[0] = 0;
        v6[1] = 0;
        *buf = v6;
        v7 = xmmword_101C661F0;
        sub_1005ED858(&v4, &v7, 2);
        sub_10099658C();
      }

      *(a1 + 185) = 1;
      return v1;
    }
  }

  else
  {
    if (qword_1025D4520 != -1)
    {
      sub_1018E1204();
    }

    v2 = qword_1025D4528;
    if (os_log_type_enabled(qword_1025D4528, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "CLCyclingFTPCache, attempting to query cache records before preparing the query", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018E1218();
    }
  }

  return v1;
}

void sub_1005EC660(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24)
{
  if (a18)
  {
    sub_100008080(a18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005EC6B4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 144);
  if (v3)
  {
    v3[1] = *v3;
  }

  v5 = *(a1 + 24);
  v4 = *(a1 + 32);
  if (v5 != v4)
  {
    v6 = *(a1 + 24);
    while (*v6 != a2)
    {
      v6 += 8;
      v5 += 8;
      if (v6 == v4)
      {
        v5 = *(a1 + 32);
        break;
      }
    }
  }

  if (v4 != v5)
  {
    v7 = (v4 - (v5 + 8));
    if (v4 != v5 + 8)
    {
      memmove(v5, v5 + 8, v4 - (v5 + 8));
    }

    *(a1 + 32) = &v7[v5];
  }

  *(a1 + 184) = 0;
  sub_1005EC7D4((a1 + 48));
  sub_1005EC7D4((a1 + 72));
  if (qword_1025D4520 != -1)
  {
    sub_1018E1204();
  }

  v8 = qword_1025D4528;
  if (os_log_type_enabled(qword_1025D4528, OS_LOG_TYPE_DEBUG))
  {
    v10[0] = 0;
    _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "CLCyclingFTPCache, release()", v10, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018E130C();
  }

  return 1;
}

void sub_1005EC7D4(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  if (v3 != *a1)
  {
    do
    {
      v4 = *(v3 - 24);
      if (v4)
      {
        *(v3 - 16) = v4;
        operator delete(v4);
      }

      v5 = *(v3 - 32);
      if (v5)
      {
        sub_100008080(v5);
      }

      v6 = (v3 - 64);
      sub_1004CA974(&v6);
      v3 -= 80;
    }

    while (v3 != v2);
  }

  a1[1] = v2;
}

uint64_t sub_1005EC850(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 96);
  if (a1 + 96 != a2 || *(a1 + 120) != *(a2 + 24) || *(a1 + 112) != *(a2 + 16) || *(a1 + 128) != *(a2 + 32))
  {
    sub_10099668C(*(a1 + 8), a2);
    uuid_copy(v4, a2);
    *(a1 + 112) = *(a2 + 16);
    *(a1 + 128) = *(a2 + 32);
    v5 = *(a1 + 144);
    if (v5)
    {
      v5[1] = *v5;
    }

    v7 = *(a2 + 48);
    v6 = *(a2 + 56);
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    v8 = *(a1 + 152);
    *(a1 + 144) = v7;
    *(a1 + 152) = v6;
    if (v8)
    {
      sub_100008080(v8);
    }
  }

  return 1;
}

void sub_1005EC91C(double a1, double a2)
{
  v2 = a1;
  v3 = a2;
  v4 = 0u;
  v5 = 0u;
  *__p = 0u;
  v7 = 0u;
  sub_1005ED6A4();
}

void sub_1005ECD08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20)
{
  sub_1005ECF28(&a9);
  if (a20)
  {
    sub_100008080(a20);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1005ECD58(uint64_t a1)
{
  sub_1005EBE98(a1);
  sub_1005EC2A4(a1);
  v2 = *(a1 + 72);
  v15 = *(a1 + 80);
  v16 = a1;
  if (v2 == v15)
  {
    LOBYTE(v3) = 1;
  }

  else
  {
    v3 = 1;
    do
    {
      v4 = v2[5];
      v5 = *v4;
      v6 = v4[1];
      while (v5 != v6)
      {
        v7 = *(v5 + 48);
        if (v7 && *v7 == v7[1])
        {
          sub_1005EC850(v16, v5);
        }

        v8 = v2[2];
        v9 = v2[3];
        while (v8 != v9)
        {
          v10 = *v8;
          v11 = v8[1];
          if (v11)
          {
            atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v13 = *(v10 + 56);
          v12 = *(v10 + 64);
          while (v13 != v12)
          {
            v3 &= (*(**v13 + 64))(*v13, v5);
            ++v13;
          }

          if (v11)
          {
            sub_100008080(v11);
          }

          v8 += 2;
        }

        v5 += 88;
      }

      v2 += 10;
    }

    while (v2 != v15);
  }

  return v3 & 1;
}

void sub_1005ECE8C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100008080(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005ECEA4(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1005EC7D4(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t sub_1005ECF28(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    sub_100008080(v3);
  }

  v5 = (a1 + 16);
  sub_1004CA974(&v5);
  return a1;
}

uint64_t sub_1005ECF80(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *v4 = *a2;
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  sub_1005ED1F0(v4 + 16, *(a2 + 16), *(a2 + 24), (*(a2 + 24) - *(a2 + 16)) >> 4);
  v5 = *(a2 + 48);
  *(v4 + 40) = *(a2 + 40);
  *(v4 + 48) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  *(v4 + 56) = 0;
  *(v4 + 64) = 0;
  *(v4 + 72) = 0;
  result = sub_1005ED338(v4 + 56, *(a2 + 56), *(a2 + 64), (*(a2 + 64) - *(a2 + 56)) >> 3);
  *(a1 + 8) = v4 + 80;
  return result;
}

void sub_1005ED020(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v5 = *(v3 + 48);
  if (v5)
  {
    sub_100008080(v5);
  }

  sub_1004CA974(va);
  *(v2 + 8) = v3;
  _Unwind_Resume(a1);
}

uint64_t sub_1005ED050(uint64_t *a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x333333333333333)
  {
    sub_10028C64C();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 4);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 4) >= 0x199999999999999)
  {
    v6 = 0x333333333333333;
  }

  else
  {
    v6 = v3;
  }

  v19 = a1;
  if (v6)
  {
    sub_1005ED3F0(a1, v6);
  }

  v7 = 80 * v2;
  v16 = 0;
  v17 = v7;
  v18 = 80 * v2;
  *v7 = *a2;
  v8 = 80 * v2;
  *(v8 + 16) = 0;
  *(v7 + 24) = 0;
  *(v7 + 32) = 0;
  sub_1005ED1F0(v8 + 16, *(a2 + 16), *(a2 + 24), (*(a2 + 24) - *(a2 + 16)) >> 4);
  v9 = *(a2 + 48);
  *(v7 + 40) = *(a2 + 40);
  *(v7 + 48) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  *(v7 + 56) = 0;
  *(v7 + 64) = 0;
  *(v7 + 72) = 0;
  sub_1005ED338(v7 + 56, *(a2 + 56), *(a2 + 64), (*(a2 + 64) - *(a2 + 56)) >> 3);
  *&v18 = v18 + 80;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  sub_1005ED448(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = a1[2];
  v15 = v18;
  *(a1 + 1) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  sub_1005ED61C(&v16);
  return v15;
}

void sub_1005ED1BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  v7 = *(v4 + 48);
  if (v7)
  {
    sub_100008080(v7);
  }

  *(v5 - 40) = v3;
  sub_1004CA974((v5 - 40));
  sub_1005ED61C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005ED1F0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1004CA834(result, a4);
  }

  return result;
}

void sub_1005ED258(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_1004CA974(&a9);
  _Unwind_Resume(a1);
}

void *sub_1005ED278(uint64_t a1, void *a2, void *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v9 = a4;
  v7[0] = a1;
  v7[1] = &v9;
  v7[2] = &v10;
  if (a2 != a3)
  {
    do
    {
      v5 = a2[1];
      *v4 = *a2;
      v4[1] = v5;
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      a2 += 2;
      v4 += 2;
    }

    while (a2 != a3);
    v10 = v4;
  }

  v8 = 1;
  sub_1005ED300(v7);
  return v4;
}

uint64_t sub_1005ED300(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1004CA930(a1);
  }

  return a1;
}

uint64_t sub_1005ED338(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1005ED3B4(result, a4);
  }

  return result;
}

void sub_1005ED398(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005ED3B4(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    sub_10045E858(a1, a2);
  }

  sub_10028C64C();
}

void sub_1005ED3F0(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x333333333333334)
  {
    operator new();
  }

  sub_1001D0818();
}

uint64_t sub_1005ED448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = a4;
  v12 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  if (a2 == a3)
  {
    v11 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      *(a4 + 24) = 0;
      *(a4 + 32) = 0;
      *(a4 + 16) = 0;
      *(a4 + 16) = *(v6 + 16);
      *(a4 + 32) = *(v6 + 32);
      *(v6 + 16) = 0;
      *(v6 + 24) = 0;
      *(v6 + 32) = 0;
      *(a4 + 40) = *(v6 + 40);
      *(v6 + 40) = 0;
      *(v6 + 48) = 0;
      *(a4 + 56) = 0;
      *(a4 + 64) = 0;
      *(a4 + 72) = 0;
      *(a4 + 56) = *(v6 + 56);
      *(a4 + 72) = *(v6 + 72);
      *(v6 + 56) = 0;
      *(v6 + 64) = 0;
      *(v6 + 72) = 0;
      v6 += 80;
      a4 += 80;
    }

    while (v6 != a3);
    v13 = a4;
    v11 = 1;
    while (v5 != a3)
    {
      v7 = *(v5 + 56);
      if (v7)
      {
        *(v5 + 64) = v7;
        operator delete(v7);
      }

      v8 = *(v5 + 48);
      if (v8)
      {
        sub_100008080(v8);
      }

      v14 = (v5 + 16);
      sub_1004CA974(&v14);
      v5 += 80;
    }
  }

  return sub_1005ED554(v10);
}

uint64_t sub_1005ED554(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1005ED5A0(*a1, **(a1 + 16), **(a1 + 16), **(a1 + 8), **(a1 + 8));
  }

  return a1;
}

void sub_1005ED5A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 != a5)
  {
    v11[5] = v5;
    v11[6] = v6;
    v8 = a3;
    do
    {
      v9 = *(v8 - 24);
      if (v9)
      {
        *(v8 - 16) = v9;
        operator delete(v9);
      }

      v10 = *(v8 - 32);
      if (v10)
      {
        sub_100008080(v10);
      }

      v11[0] = (v8 - 64);
      sub_1004CA974(v11);
      v8 -= 80;
    }

    while (v8 != a5);
  }
}

uint64_t sub_1005ED61C(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 80;
    v4 = *(i - 24);
    if (v4)
    {
      *(i - 16) = v4;
      operator delete(v4);
    }

    v5 = *(i - 32);
    if (v5)
    {
      sub_100008080(v5);
    }

    v7 = (i - 64);
    sub_1004CA974(&v7);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

double sub_1005ED710(uint64_t a1, uint64_t a2)
{
  result = 0.0;
  *(a1 + 8) = 0u;
  *a1 = off_102463500;
  *(a1 + 24) = *a2;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 40) = *(a2 + 16);
  *(a1 + 56) = *(a2 + 32);
  *(a2 + 32) = 0;
  *(a2 + 16) = 0u;
  *(a1 + 64) = *(a2 + 40);
  *(a2 + 40) = 0u;
  *(a1 + 96) = 0;
  *(a1 + 80) = 0u;
  *(a1 + 80) = *(a2 + 56);
  *(a1 + 96) = *(a2 + 72);
  *(a2 + 72) = 0;
  *(a2 + 56) = 0u;
  return result;
}

void sub_1005ED7AC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_102463500;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1005ED800(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 72);
  if (v3)
  {
    sub_100008080(v3);
  }

  v4 = (a1 + 40);
  sub_1004CA974(&v4);
}

void *sub_1005ED858(void *a1, uint64_t *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 8 * a3;
    do
    {
      sub_1005ED8D8(a1, v4, a2++);
      v6 -= 8;
    }

    while (v6);
  }

  return a1;
}

uint64_t sub_1005ED8D8(void *a1, void *a2, uint64_t *a3)
{
  v3 = *sub_1005ED970(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

void *sub_1005ED970(void *a1, void *a2, void *a3, void *a4, uint64_t *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = a2[4], *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (v10[4] < *a5)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = v16[4];
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = a1 + 1;
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= a4[4])
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = v20[4];
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = a1 + 1;
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

void *sub_1005EDB8C(void *a1, uint64_t *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_102463550;
  sub_100D977E0((a1 + 3), a2, *a3);
  return a1;
}

void sub_1005EDC0C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_102463550;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

id sub_1005EDE2C(uint64_t a1)
{
  if (qword_1025D47A0 != -1)
  {
    sub_1018E1400();
  }

  v2 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "#SettingsMirror Received kCLCommonDaemonPreferencesChangedNotification", v4, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018E1414();
  }

  return [*(a1 + 32) refresh];
}

id sub_1005EDECC(uint64_t a1)
{
  if (qword_1025D47A0 != -1)
  {
    sub_1018E1400();
  }

  v2 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "#SettingsMirror Received kCLCommonManagedConfigurationProfileListChangedNotification", v4, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018E1504();
  }

  return [*(a1 + 32) refresh];
}

void sub_1005EE07C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005EE134(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100008080(a12);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1005EE17C(uint64_t a1, uint64_t a2)
{
  v3 = 11;
  result = sub_1007C3C8C(a1, &v3, qword_1026582B8, a2);
  *result = off_1024635C0;
  return result;
}

void sub_1005EE1D4(uint64_t a1)
{
  sub_100ED90F4(a1);

  operator delete();
}

uint64_t sub_1005EE238(uint64_t a1, FILE *a2)
{
  if (!a2)
  {
    sub_1018E1750(qword_1025D48A0 == -1);
  }

  if (qword_1025D48A0 != -1)
  {
    sub_1018E15F4();
  }

  v4 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "TransitMac, Traversing transit mac tile", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018E1608();
  }

  memset(&v44, 0, sizeof(v44));
  do
  {
    v5 = fread(__ptr, 1uLL, 0x400uLL, a2);
    std::string::append(&v44, __ptr, v5);
  }

  while (v5 && !feof(a2) && !ferror(a2));
  if (ferror(a2))
  {
    v6 = 0;
    goto LABEL_57;
  }

  if (qword_1025D48A0 != -1)
  {
    sub_1018E16E4();
  }

  v7 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
  {
    size = HIBYTE(v44.__r_.__value_.__r.__words[2]);
    if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v44.__r_.__value_.__l.__size_;
    }

    *buf = 134217984;
    *v58 = size;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "TransitMac, Transit mac tile size = %lu", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018E170C(buf);
    v36 = HIBYTE(v44.__r_.__value_.__r.__words[2]);
    if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v36 = v44.__r_.__value_.__l.__size_;
    }

    v45 = 134217984;
    *v46 = v36;
    v37 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "virtual BOOL CLTransitMacTile::traverseTileFile(FILE *, const CLTileFile::TraverseDetails &)", "%s\n", v37);
    if (v37 != buf)
    {
      free(v37);
    }
  }

  if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = &v44;
  }

  else
  {
    v9 = v44.__r_.__value_.__r.__words[0];
  }

  if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = HIBYTE(v44.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v10 = v44.__r_.__value_.__l.__size_;
  }

  v11 = [NSData dataWithBytes:v9 length:v10];
  v12 = objc_autoreleasePoolPush();
  v13 = [[PBDataReader alloc] initWithData:v11];
  v14 = objc_opt_new();
  v15 = [v14 readFrom:v13];
  if (!v14)
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018E16E4();
    }

    v19 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_FAULT, "TransitMac, failed to allocate transit mac tile", buf, 2u);
    }

    if (!sub_10000A100(121, 0))
    {
      goto LABEL_55;
    }

    goto LABEL_72;
  }

  if ((v15 & 1) == 0)
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018E16E4();
    }

    v20 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      v21 = HIBYTE(v44.__r_.__value_.__r.__words[2]);
      if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v21 = v44.__r_.__value_.__l.__size_;
      }

      *buf = 134349056;
      *v58 = v21;
      _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_FAULT, "TransitMac, failed to decode transit mac tile protobuf, encrypted=%{public}lu", buf, 0xCu);
    }

    if (!sub_10000A100(121, 0))
    {
      goto LABEL_55;
    }

    sub_1018E170C(buf);
    v22 = HIBYTE(v44.__r_.__value_.__r.__words[2]);
    if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v22 = v44.__r_.__value_.__l.__size_;
    }

    v45 = 134349056;
    *v46 = v22;
    v23 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 0, "virtual BOOL CLTransitMacTile::traverseTileFile(FILE *, const CLTileFile::TraverseDetails &)", "%s\n", v23);
    goto LABEL_73;
  }

  if ([v14 hasVersion] && objc_msgSend(v14, "hasGenerationTimeSecs") && objc_msgSend(v14, "macsCount"))
  {
    [v14 generationTimeSecs];
    v17 = v16;
    if ([v14 hasExpirationAgeSecs])
    {
      v18 = [v14 expirationAgeSecs];
    }

    else
    {
      v18 = 31536000;
    }

    v26 = [v14 version];
    v27 = [v14 tileX];
    v28 = [v14 tileY];
    v29 = v17 - kCFAbsoluteTimeIntervalSince1970;
    *(a1 + 184) = v26;
    *(a1 + 52) = v27;
    *(a1 + 56) = v28;
    *(a1 + 64) = -1;
    *(a1 + 176) = v17 - kCFAbsoluteTimeIntervalSince1970;
    *(a1 + 200) = v18;
    if (qword_1025D48A0 != -1)
    {
      sub_1018E16E4();
    }

    v30 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      v31 = [v14 version];
      v32 = [v14 tileX];
      v33 = [v14 tileY];
      Current = CFAbsoluteTimeGetCurrent();
      v35 = [v14 macsCount];
      *buf = 67110656;
      *v58 = v31;
      *&v58[4] = 1024;
      *&v58[6] = v32;
      v59 = 1024;
      v60 = v33;
      v61 = 2048;
      v62 = v29;
      v63 = 2048;
      v64 = Current - v29;
      v65 = 1024;
      v66 = v18;
      v67 = 2048;
      v68 = v35;
      _os_log_impl(dword_100000000, v30, OS_LOG_TYPE_DEBUG, "TransitMac, ver,%d, x, %d, y, %d, generated, %.01lf, age, %.01f, ageThresh, %d, numOfMacs, %lu", buf, 0x38u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018E170C(buf);
      v38 = [v14 version];
      v39 = [v14 tileX];
      v40 = [v14 tileY];
      v41 = CFAbsoluteTimeGetCurrent();
      v42 = [v14 macsCount];
      v45 = 67110656;
      *v46 = v38;
      *&v46[4] = 1024;
      *&v46[6] = v39;
      v47 = 1024;
      v48 = v40;
      v49 = 2048;
      v50 = v29;
      v51 = 2048;
      v52 = v41 - v29;
      v53 = 1024;
      v54 = v18;
      v55 = 2048;
      v56 = v42;
      v43 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "virtual BOOL CLTransitMacTile::traverseTileFile(FILE *, const CLTileFile::TraverseDetails &)", "%s\n", v43);
      if (v43 != buf)
      {
        free(v43);
      }
    }

    v6 = 1;
    goto LABEL_56;
  }

  if (qword_1025D48A0 != -1)
  {
    sub_1018E16E4();
  }

  v24 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_FAULT, "TransitMac, failed to get fields in transit mac tile", buf, 2u);
  }

  if (sub_10000A100(121, 0))
  {
LABEL_72:
    sub_1018E170C(buf);
    LOWORD(v45) = 0;
    v23 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 0, "virtual BOOL CLTransitMacTile::traverseTileFile(FILE *, const CLTileFile::TraverseDetails &)", "%s\n", v23);
LABEL_73:
    if (v23 != buf)
    {
      free(v23);
    }
  }

LABEL_55:
  v6 = 0;
LABEL_56:
  objc_autoreleasePoolPop(v12);
LABEL_57:
  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44.__r_.__value_.__l.__data_);
  }

  return v6;
}

void sub_1005EEAE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005EEB3C(uint64_t a1, id **a2, void *a3)
{
  if (!a3)
  {
    sub_1018E19B0(qword_1025D48A0 == -1);
  }

  if (qword_1025D48A0 != -1)
  {
    sub_1018E15F4();
  }

  v6 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "TransitMac, Searching transit mac tile", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018E18D4();
  }

  a3[1] = *a3;
  sub_100B4FFA8((a1 + 48), a1 + 8, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v8 = fopen(p_p, "rb");
  if (v8)
  {
    memset(&v56, 0, sizeof(v56));
    do
    {
      v9 = fread(&__ptr, 1uLL, 0x400uLL, v8);
      std::string::append(&v56, &__ptr, v9);
    }

    while (v9 && !feof(v8) && !ferror(v8));
    if (ferror(v8))
    {
      if (qword_1025D48A0 != -1)
      {
        sub_1018E16E4();
      }

      v10 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
      {
        v11 = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v11 = __p.__r_.__value_.__r.__words[0];
        }

        *buf = 136315138;
        v64 = v11;
        _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "TransitMac, failed to read tile file, %s", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018E170C(buf);
        v44 = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v44 = __p.__r_.__value_.__r.__words[0];
        }

        v59 = 136315138;
        v60 = v44;
        v45 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "BOOL CLTransitMacTile::extractTransitMacAddresses(std::vector<uint64_t> *, std::vector<CLTilesManager_Type::TransitMac> *)", "%s\n", v45);
        if (v45 != buf)
        {
          free(v45);
        }
      }

      fclose(v8);
    }

    else
    {
      fclose(v8);
      if ((v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v15 = &v56;
      }

      else
      {
        v15 = v56.__r_.__value_.__r.__words[0];
      }

      if ((v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v56.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v56.__r_.__value_.__l.__size_;
      }

      v17 = [[PBDataReader alloc] initWithData:{+[NSData dataWithBytes:length:](NSData, "dataWithBytes:length:", v15, size)}];
      v18 = objc_opt_new();
      if ([v18 readFrom:v17])
      {
        if ([v18 macsCount])
        {
          v54 = 0u;
          v55 = 0u;
          v52 = 0u;
          v53 = 0u;
          v19 = [v18 macs];
          v20 = [v19 countByEnumeratingWithState:&v52 objects:v58 count:16];
          if (v20)
          {
            v21 = *v53;
            do
            {
              for (i = 0; i != v20; i = i + 1)
              {
                if (*v53 != v21)
                {
                  objc_enumerationMutation(v19);
                }

                v23 = *(*(&v52 + 1) + 8 * i);
                v24 = *a2;
                v25 = a2[1];
                v26 = [v23 mac];
                if (v24 != v25)
                {
                  while (*v24 != v26)
                  {
                    if (++v24 == v25)
                    {
                      v24 = v25;
                      break;
                    }
                  }
                }

                if (v24 != a2[1])
                {
                  v27 = [v23 mac];
                  v29 = a3[1];
                  v28 = a3[2];
                  if (v29 >= v28)
                  {
                    v31 = *a3;
                    v32 = v29 - *a3;
                    v33 = v32 >> 3;
                    v34 = (v32 >> 3) + 1;
                    if (v34 >> 61)
                    {
                      sub_10028C64C();
                    }

                    v35 = v28 - v31;
                    if (v35 >> 2 > v34)
                    {
                      v34 = v35 >> 2;
                    }

                    v36 = v35 >= 0x7FFFFFFFFFFFFFF8;
                    v37 = 0x1FFFFFFFFFFFFFFFLL;
                    if (!v36)
                    {
                      v37 = v34;
                    }

                    if (v37)
                    {
                      sub_1000B9708(a3, v37);
                    }

                    *(8 * v33) = v27;
                    v30 = 8 * v33 + 8;
                    memcpy(0, v31, v32);
                    v38 = *a3;
                    *a3 = 0;
                    a3[1] = v30;
                    a3[2] = 0;
                    if (v38)
                    {
                      operator delete(v38);
                    }
                  }

                  else
                  {
                    *v29 = v27;
                    v30 = (v29 + 1);
                  }

                  a3[1] = v30;
                }
              }

              v20 = [v19 countByEnumeratingWithState:&v52 objects:v58 count:16];
            }

            while (v20);
          }
        }

        else
        {
          if (qword_1025D48A0 != -1)
          {
            sub_1018E16E4();
          }

          v42 = qword_1025D48A8;
          if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
          {
            v43 = &__p;
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v43 = __p.__r_.__value_.__r.__words[0];
            }

            *buf = 136315138;
            v64 = v43;
            _os_log_impl(dword_100000000, v42, OS_LOG_TYPE_DEBUG, "TransitMac, empty tile??, %s", buf, 0xCu);
          }

          if (sub_10000A100(121, 2))
          {
            sub_1018E170C(buf);
            v50 = &__p;
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v50 = __p.__r_.__value_.__r.__words[0];
            }

            v59 = 136315138;
            v60 = v50;
            v51 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 2, "BOOL CLTransitMacTile::extractTransitMacAddresses(std::vector<uint64_t> *, std::vector<CLTilesManager_Type::TransitMac> *)", "%s\n", v51);
            if (v51 != buf)
            {
              free(v51);
            }
          }
        }

        v14 = 1;
        goto LABEL_74;
      }

      if (qword_1025D48A0 != -1)
      {
        sub_1018E16E4();
      }

      v39 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
      {
        v40 = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v40 = __p.__r_.__value_.__r.__words[0];
        }

        *buf = 136315138;
        v64 = v40;
        _os_log_impl(dword_100000000, v39, OS_LOG_TYPE_DEBUG, "TransitMac, failed to parse tile file, %s", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018E170C(buf);
        v48 = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v48 = __p.__r_.__value_.__r.__words[0];
        }

        v59 = 136315138;
        v60 = v48;
        v49 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "BOOL CLTransitMacTile::extractTransitMacAddresses(std::vector<uint64_t> *, std::vector<CLTilesManager_Type::TransitMac> *)", "%s\n", v49);
        if (v49 != buf)
        {
          free(v49);
        }
      }
    }

    v14 = 0;
LABEL_74:
    if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v56.__r_.__value_.__l.__data_);
    }

    goto LABEL_76;
  }

  if (qword_1025D48A0 != -1)
  {
    sub_1018E16E4();
  }

  v12 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
  {
    v13 = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v13 = __p.__r_.__value_.__r.__words[0];
    }

    *buf = 136315138;
    v64 = v13;
    _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "TransitMac, failed to open tile file, %s", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018E170C(buf);
    v46 = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v46 = __p.__r_.__value_.__r.__words[0];
    }

    __ptr = 136315138;
    v62 = v46;
    v47 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLTransitMacTile::extractTransitMacAddresses(std::vector<uint64_t> *, std::vector<CLTilesManager_Type::TransitMac> *)", "%s\n", v47);
    if (v47 != buf)
    {
      free(v47);
    }
  }

  v14 = 0;
LABEL_76:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v14;
}

void sub_1005EF3DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005EF450@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v38 = *(a1 + 40);
  (*(*v38 + 16))(v38);
  v40 = 256;
  sub_10003848C(v29);
  v4 = sub_100038730(&v30, "CLTileFile(", 11);
  v5 = sub_100038730(v4, "tileId=", 7);
  sub_100B4EFD4(a1 + 48, __p);
  if ((v28 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v28 & 0x80u) == 0)
  {
    v7 = v28;
  }

  else
  {
    v7 = __p[1];
  }

  v8 = sub_100038730(v5, v6, v7);
  v9 = sub_100038730(v8, ", localFilename=", 16);
  v10 = *(a1 + 31);
  if (v10 >= 0)
  {
    v11 = a1 + 8;
  }

  else
  {
    v11 = *(a1 + 8);
  }

  if (v10 >= 0)
  {
    v12 = *(a1 + 31);
  }

  else
  {
    v12 = *(a1 + 16);
  }

  v13 = sub_100038730(v9, v11, v12);
  v14 = sub_100038730(v13, ", tempFilename=", 15);
  v17 = *(a1 + 208);
  v16 = a1 + 208;
  v15 = v17;
  v18 = *(v16 + 23);
  if (v18 >= 0)
  {
    v19 = v16;
  }

  else
  {
    v19 = v15;
  }

  if (v18 >= 0)
  {
    v20 = *(v16 + 23);
  }

  else
  {
    v20 = *(v16 + 8);
  }

  v21 = sub_100038730(v14, v19, v20);
  sub_100038730(v21, ")", 1);
  if (v28 < 0)
  {
    operator delete(__p[0]);
  }

  if ((v37 & 0x10) != 0)
  {
    v23 = v36;
    if (v36 < v33)
    {
      v36 = v33;
      v23 = v33;
    }

    locale = v32[4].__locale_;
  }

  else
  {
    if ((v37 & 8) == 0)
    {
      v22 = 0;
      a2[23] = 0;
      goto LABEL_34;
    }

    locale = v32[1].__locale_;
    v23 = v32[3].__locale_;
  }

  v22 = v23 - locale;
  if ((v23 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100061080();
  }

  if (v22 >= 0x17)
  {
    operator new();
  }

  a2[23] = v22;
  if (v22)
  {
    memmove(a2, locale, v22);
  }

LABEL_34:
  a2[v22] = 0;
  v30 = v25;
  if (v35 < 0)
  {
    operator delete(v34);
  }

  std::locale::~locale(v32);
  std::iostream::~basic_iostream();
  result = std::ios::~ios();
  if (HIBYTE(v40) == 1)
  {
    if (v40)
    {
      return pthread_mutex_unlock(v39);
    }

    else
    {
      return (*(*v38 + 24))(v38);
    }
  }

  return result;
}

void sub_1005EF7DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  std::ios::~ios();
  sub_1017EC98C(v16 - 72);
  _Unwind_Resume(a1);
}

uint64_t sub_1005EF830()
{
  if (qword_1025D48A0 != -1)
  {
    sub_1018E15F4();
  }

  v0 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
  {
    *v2 = 0;
    _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_DEBUG, "This instance has no : TEST_testBinarySearch", v2, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018E1B34();
  }

  return 0;
}

BOOL sub_1005EF8C8()
{
  v1 = qword_1025D48A8;

  return os_log_type_enabled(v1, OS_LOG_TYPE_FAULT);
}

void sub_1005EFD0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    sub_100008080(a18);
  }

  _Unwind_Resume(exception_object);
}

id sub_1005EFF68(uint64_t a1, unsigned int *a2, _OWORD *a3, void *a4)
{
  v4 = *a2;
  v5 = a3[7];
  v11[6] = a3[6];
  v11[7] = v5;
  v6 = a3[9];
  v11[8] = a3[8];
  v11[9] = v6;
  v7 = a3[3];
  v11[2] = a3[2];
  v11[3] = v7;
  v8 = a3[5];
  v11[4] = a3[4];
  v11[5] = v8;
  v9 = a3[1];
  v11[0] = *a3;
  v11[1] = v9;
  return [a4 onMotionStateNotification:v4 data:v11];
}

id sub_1005EFFEC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 24);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1005F0060;
  v4[3] = &unk_102447418;
  v4[4] = v1;
  return [v2 async:v4];
}

void sub_1005F0664(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, char a37)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  sub_1005F3518(&a37);
  _Unwind_Resume(a1);
}

id sub_1005F06B8(uint64_t a1)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3321888768;
  v4[2] = sub_1005F36F0;
  v4[3] = &unk_102463788;
  v4[4] = *a1;
  v5 = *(a1 + 8);
  if (*(a1 + 39) < 0)
  {
    sub_100007244(v6, *(a1 + 16), *(a1 + 24));
  }

  else
  {
    *v6 = *(a1 + 16);
    v7 = *(a1 + 32);
  }

  v9 = *(a1 + 56);
  v10 = *(a1 + 72);
  v11[0] = *(a1 + 88);
  *(v11 + 12) = *(a1 + 100);
  v8 = *(a1 + 40);
  if (*(a1 + 143) < 0)
  {
    sub_100007244(__p, *(a1 + 120), *(a1 + 128));
  }

  else
  {
    *__p = *(a1 + 120);
    v13 = *(a1 + 136);
  }

  v2 = [v4 copy];
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v7) < 0)
  {
    operator delete(v6[0]);
  }

  return v2;
}

void sub_1005F07E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_1005F168C(uint64_t a1, uint64_t a2)
{
  *(*(a1 + 32) + 36) = a2 == 2;
  result = *(a1 + 32);
  if (result[32] == 1)
  {
    return [result updateStatusBarLabel];
  }

  return result;
}

id *sub_1005F1D5C(id *result, int a2)
{
  if (!a2)
  {
    return result;
  }

  v2 = result;
  v3 = *(result + 136);
  if (v3)
  {
    result = [result[4] submitFalseDetectionMetricsWithType:1];
    v3 = *(v2 + 136);
    if ((v3 & 2) == 0)
    {
LABEL_4:
      if ((v3 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_10;
    }
  }

  else if ((result[17] & 2) == 0)
  {
    goto LABEL_4;
  }

  result = [v2[4] submitFalseDetectionMetricsWithType:2];
  v3 = *(v2 + 136);
  if ((v3 & 4) == 0)
  {
LABEL_5:
    if ((v3 & 8) == 0)
    {
      goto LABEL_6;
    }

LABEL_11:
    result = [v2[4] submitFalseDetectionMetricsWithType:8];
    if ((v2[17] & 0x10) == 0)
    {
      return result;
    }

    goto LABEL_12;
  }

LABEL_10:
  result = [v2[4] submitFalseDetectionMetricsWithType:4];
  v3 = *(v2 + 136);
  if ((v3 & 8) != 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  if ((v3 & 0x10) == 0)
  {
    return result;
  }

LABEL_12:
  v4 = v2[4];

  return [v4 submitFalseDetectionMetricsWithType:16];
}

id sub_1005F24C8(uint64_t a1, char a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1005F2540;
  v5[3] = &unk_102463700;
  v6 = a2;
  v5[4] = v2;
  return [v3 async:v5];
}

void sub_1005F2540(uint64_t a1)
{
  if (qword_1025D4250 != -1)
  {
    sub_1018E1EA8();
  }

  v2 = qword_1025D4258;
  if (os_log_type_enabled(qword_1025D4258, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 40);
    v4[0] = 67109120;
    v4[1] = v3;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "status bar assertion acquired, %d", v4, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018E38E8(a1);
  }

  if ((*(a1 + 40) & 1) == 0)
  {
    [*(a1 + 32) clearStatusBarColorAndText];
  }
}

id sub_1005F2628(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 24);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1005F269C;
  v4[3] = &unk_102447418;
  v4[4] = v1;
  return [v2 async:v4];
}

id sub_1005F269C(uint64_t a1)
{
  if (qword_1025D4250 != -1)
  {
    sub_1018E1EA8();
  }

  v2 = qword_1025D4258;
  if (os_log_type_enabled(qword_1025D4258, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "status bar assertion invalidated", v4, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018E39DC();
  }

  return [*(a1 + 32) clearStatusBarColorAndText];
}

id sub_1005F29CC(uint64_t a1, void *a2)
{
  v6[0] = [NSString stringWithFormat:@"%f", *(*(a1 + 32) + 152), @"accelLatency"];
  v5[1] = @"gpsLatency";
  v6[1] = [NSString stringWithFormat:@"%f", *(*(a1 + 32) + 160)];
  v5[2] = @"basebandLatency";
  v6[2] = [NSString stringWithFormat:@"%f", *(*(a1 + 32) + 168)];
  v5[3] = @"wifiLatency";
  v6[3] = [NSString stringWithFormat:@"%f", *(*(a1 + 32) + 176)];
  v5[4] = @"btLatency";
  v6[4] = [NSString stringWithFormat:@"%f", *(*(a1 + 32) + 184)];
  v5[5] = @"exitFromNoHints";
  v6[5] = [NSString stringWithFormat:@"%f", *(*(a1 + 32) + 200)];
  v5[6] = @"exitFromLastBTHint";
  v6[6] = [NSString stringWithFormat:@"%f", *(*(a1 + 32) + 208)];
  v5[7] = @"BTHintFromLastMotionHintDuration";
  v6[7] = [NSString stringWithFormat:@"%f", *(*(a1 + 32) + 216)];
  v5[8] = @"motionExitsWithBTCount";
  v6[8] = [NSString stringWithFormat:@"%d", *(*(a1 + 32) + 136)];
  v5[9] = @"sequentialVehicularIndex";
  v6[9] = [NSString stringWithFormat:@"%d", *(*(a1 + 32) + 144)];
  v5[10] = @"vehicularDuration";
  v6[10] = [NSString stringWithFormat:@"%f", *(*(a1 + 32) + 192)];
  return [a2 writeData:{+[NSJSONSerialization dataWithJSONObject:options:error:](NSJSONSerialization, "dataWithJSONObject:options:error:", +[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", v6, v5, 11), 0, 0)}];
}

uint64_t sub_1005F3518(uint64_t a1)
{
  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

uint64_t sub_1005F355C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (qword_1026582C0 != -1)
  {
    sub_1018E4214();
  }

  v10 = dlsym(qword_1026582C8, "OSAWriteLogForSubmission");
  off_1025D75B8 = v10;

  return (v10)(a1, a2, a3, a4, a5);
}

uint64_t sub_1005F36D0(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    operator delete();
  }

  return result;
}

char *sub_1005F36F0@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  v2 = result;
  *a2 = *(result + 4);
  *(a2 + 8) = result[40];
  if (result[71] < 0)
  {
    result = sub_100007244((a2 + 16), *(result + 6), *(result + 7));
  }

  else
  {
    *(a2 + 16) = *(result + 3);
    *(a2 + 32) = *(result + 8);
  }

  *(a2 + 56) = *(v2 + 88);
  *(a2 + 72) = *(v2 + 104);
  *(a2 + 88) = *(v2 + 120);
  *(a2 + 100) = *(v2 + 132);
  *(a2 + 40) = *(v2 + 72);
  if (v2[175] < 0)
  {
    return sub_100007244((a2 + 120), *(v2 + 19), *(v2 + 20));
  }

  *(a2 + 120) = *(v2 + 152);
  *(a2 + 136) = *(v2 + 21);
  return result;
}

void sub_1005F379C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 39) < 0)
  {
    operator delete(*(v1 + 16));
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_1005F37B8(_BYTE *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 32);
  result[40] = *(a2 + 40);
  *(result + 4) = v4;
  if (*(a2 + 71) < 0)
  {
    result = sub_100007244(result + 48, *(a2 + 48), *(a2 + 56));
  }

  else
  {
    v5 = *(a2 + 48);
    *(result + 8) = *(a2 + 64);
    *(result + 3) = v5;
  }

  *(v3 + 72) = *(a2 + 72);
  v6 = *(a2 + 88);
  v7 = *(a2 + 104);
  v8 = *(a2 + 120);
  *(v3 + 132) = *(a2 + 132);
  *(v3 + 120) = v8;
  *(v3 + 104) = v7;
  *(v3 + 88) = v6;
  if (*(a2 + 175) < 0)
  {
    return sub_100007244(v3 + 152, *(a2 + 152), *(a2 + 160));
  }

  v9 = *(a2 + 152);
  *(v3 + 21) = *(a2 + 168);
  *(v3 + 152) = v9;
  return result;
}

void sub_1005F3864(_Unwind_Exception *exception_object)
{
  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
  }

  _Unwind_Resume(exception_object);
}

void sub_1005F3880(uint64_t a1)
{
  if (*(a1 + 175) < 0)
  {
    operator delete(*(a1 + 152));
  }

  if (*(a1 + 71) < 0)
  {
    v2 = *(a1 + 48);

    operator delete(v2);
  }
}

void sub_1005F38D8()
{
  if ((atomic_load_explicit(&qword_1025D4918, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D4918))
    {
      v0 = 256;
      qword_1025D4908 = 0;
      unk_1025D4910 = 0;
      qword_1025D4900 = 0;
      sub_10015D8A0(&qword_1025D4900, &v0, &v1, 2);
      __cxa_atexit(sub_10037DED4, &qword_1025D4900, dword_100000000);
      __cxa_guard_release(&qword_1025D4918);
    }
  }
}

void sub_1005F3AB0(CLCompanionNotifierAdapter *self, SEL a2)
{
  [(CLNotifierServiceAdapter *)self setAdaptedNotifier:sub_1005F3AF4([(CLCompanionNotifierAdapter *)self universe])];
  if (![(CLNotifierServiceAdapter *)self notifier])
  {
    sub_1018E423C();
  }
}

uint64_t sub_1005F3AF4(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1005F3D14;
  block[3] = &unk_102447418;
  block[4] = a1;
  if (qword_102658360 != -1)
  {
    dispatch_once(&qword_102658360, block);
  }

  return qword_102637060;
}

void sub_1005F3B84(CLCompanionNotifierAdapter *self, SEL a2)
{
  v2 = *(*[(CLNotifierServiceAdapter *)self notifier]+ 16);

  v2();
}

void sub_1005F3D14()
{
  sub_10001A3E8();
  if (sub_10001CF3C())
  {
    operator new();
  }

  operator new();
}

void sub_1005F3DC0(uint64_t a1, void *a2)
{
  v3 = sub_1005F41AC(a1, "CLCompanionNotifier", a2);
  *v3 = off_1024637E8;
  *(v3 + 109) = 0;
  *(v3 + 111) = 0;
  *(v3 + 112) = 0x7FEFFFFFFFFFFFFFLL;
  v4 = (v3 + 112);
  v5 = [*(v3 + 40) newTimer];
  *(a1 + 128) = 0u;
  *(a1 + 120) = v5;
  *(a1 + 144) = 0u;
  v6 = sub_100011660();
  sub_100185AC0(v6, &v8);
  sub_1000B9370(v8, "CompanionStateSyncInterval", v4);
  if (v9)
  {
    sub_100008080(v9);
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1005F4258;
  v7[3] = &unk_102449A78;
  v7[4] = a1;
  [*(a1 + 120) setHandler:v7];
  sub_100D8556C();
}

void sub_1005F40CC(_Unwind_Exception *a1)
{
  v4 = *(v1 + 144);
  *(v1 + 144) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(v1 + 136);
  *(v1 + 136) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *v2;
  *v2 = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  sub_1005F482C(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1005F41AC(uint64_t a1, char *a2, void *a3)
{
  *a1 = off_102463C58;
  sub_10000EC00((a1 + 8), a2);
  *(a1 + 32) = a3;
  *(a1 + 40) = [a3 silo];
  *(a1 + 48) = 0;
  *(a1 + 64) = 0;
  *(a1 + 56) = a1 + 64;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = a1 + 88;
  *(a1 + 104) = 0;
  *(a1 + 108) = 0;
  return a1;
}

void sub_1005F423C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005F4280(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1018E43B0();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v7 = _os_activity_create(dword_100000000, "CL: CLCompanionNotifier::onDataProtectionNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v7, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1018E43C4();
    }

    v8 = qword_1025D47F8;
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
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLCompanionNotifier::onDataProtectionNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  if (*a2 == 1)
  {
    *(a4 + 109) = *(a3 + 4);
    if (qword_102637068)
    {
      v9 = [qword_102637068 isConnected];
    }

    else
    {
      v9 = 0;
    }

    sub_1005F4A20(a4, v9);
  }

  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1005F4474(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1018E43B0();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLCompanionNotifier::onFitnessTrackingNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1018E43C4();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLCompanionNotifier::onFitnessTrackingNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_1005F59A4(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1005F4640(uint64_t a1, uint64_t a2, uint64_t a3, id *a4)
{
  CLProfilingIdentify();
  [objc_msgSend(a4[4] "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1018E43B0();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v10 = 1;
    v7 = _os_activity_create(dword_100000000, "CL: CLCompanionNotifier::onMotionStateObserverNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v7, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1018E43C4();
    }

    v8 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v12 = 0;
      v13 = 2082;
      v14 = "";
      v15 = 2082;
      v16 = "activity";
      v17 = 2050;
      v18 = a4;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLCompanionNotifier::onMotionStateObserverNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v10 = 0;
  }

  (*(*a4 + 29))(a4, a2, a3);
  if (v10 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

uint64_t sub_1005F482C(uint64_t a1)
{
  *a1 = off_102463C58;
  [*(a1 + 48) invalidate];

  sub_10018F070(a1 + 80, *(a1 + 88));
  sub_10047BD74(a1 + 56, *(a1 + 64));
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

CLCompanionTransport *sub_1005F48B0(uint64_t a1, uint64_t a2)
{
  result = [[CLCompanionTransport alloc] initWithSilo:*(a1 + 40) iDSService:a2];
  qword_102637068 = result;
  if (result)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1005F49F0;
    v6[3] = &unk_1024638D8;
    v6[4] = a1;
    [(CLCompanionTransport *)result setReceivedMessageHandler:v6];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1005F4A18;
    v5[3] = &unk_1024638F8;
    v5[4] = a1;
    [qword_102637068 setConnectionUpdateHandler:v5];
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_1005F4FE4;
    v4[3] = &unk_1024638F8;
    v4[4] = a1;
    return [qword_102637068 setDeviceNearbyHandler:v4];
  }

  return result;
}

void sub_1005F4A20(uint64_t a1, uint64_t a2)
{
  v3 = qword_102637068;
  if (qword_102637068)
  {
    if (a2 && (v5 = [qword_102637068 pairedDevice], v3 = qword_102637068, v5))
    {
      v6 = [objc_msgSend(objc_msgSend(qword_102637068 "pairedDevice")];
      v3 = qword_102637068;
    }

    else
    {
      v6 = "Unknown";
    }

    v7 = *(a1 + 111);
    if ([v3 pairedDevice])
    {
      v8 = [qword_102637068 pairedDevice];
      if (v8)
      {
        [v8 operatingSystemVersion];
        v9 = *buf;
      }

      else
      {
        v9 = 0;
        memset(buf, 0, 24);
      }
    }

    else
    {
      v9 = 0;
    }

    if ([qword_102637068 pairedDevice])
    {
      v10 = [qword_102637068 pairedDevice];
      if (v10)
      {
        [v10 operatingSystemVersion];
        v11 = *v36;
      }

      else
      {
        v11 = 0;
        v35 = 0;
        *v36 = 0;
        *&v36[8] = 0;
      }
    }

    else
    {
      v11 = 0;
    }

    v12 = (v7 & 1) == 0;
    if ([qword_102637068 pairedDevice])
    {
      v13 = [qword_102637068 pairedDevice];
      if (v13)
      {
        [v13 operatingSystemVersion];
        v14 = v34;
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }

    v15 = sub_1005F52D4(a1);
    LODWORD(v35) = 5;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v42 = 0u;
    memset(buf, 0, sizeof(buf));
    buf[0] = a2;
    (*(*a1 + 152))(a1, &v35, buf, 1, 0xFFFFFFFFLL, 0);
    LODWORD(v35) = 6;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v42 = 0u;
    memset(&buf[16], 0, 32);
    buf[0] = a2;
    buf[1] = v12;
    *&buf[2] = 0;
    *&buf[4] = v9;
    *&buf[8] = v11;
    *&buf[12] = v14;
    buf[16] = v15;
    *&buf[17] = 0;
    buf[19] = 0;
    (*(*a1 + 152))(a1, &v35, buf, 1, 0xFFFFFFFFLL, 0);
    (*(*a1 + 208))(a1, a2);
    v16 = [objc_msgSend(qword_102637068 "pairedDevice")] == 6;
    v17 = sub_1000A23E0();
    sub_100E041F0(v17, a2, v16);
    v18 = sub_1005F540C();
    if (sub_1000DA93C())
    {
      v19 = sub_1000DA93C();
      sub_101240074(v19, a2, v6, v18);
    }

    if (sub_100ACCA54())
    {
      v20 = sub_100ACCA54();
      sub_100ACCF3C(v20, a2, v18);
    }

    v21 = objc_autoreleasePoolPush();
    v22 = objc_alloc_init(ALActivityLog);
    [(ALActivityLog *)v22 setTimestamp:CFAbsoluteTimeGetCurrent()];
    [(ALActivityLog *)v22 setIdsStatus:objc_alloc_init(ALCLIDSStatus)];
    if (([*(a1 + 152) isEqualToString:{objc_msgSend(objc_msgSend(qword_102637068, "pairedDevice"), "uniqueIDOverride")}] & 1) == 0)
    {

      *(a1 + 152) = 0;
      *(a1 + 152) = [objc_msgSend(objc_msgSend(qword_102637068 "pairedDevice")];
      -[ALCLIDSStatus setPairedModelId:](-[ALActivityLog idsStatus](v22, "idsStatus"), "setPairedModelId:", [objc_msgSend(qword_102637068 "pairedDevice")]);
    }

    [(ALCLIDSStatus *)[(ALActivityLog *)v22 idsStatus] setConnectionStatus:a2];
    [-[CLServiceVendor proxyForService:](+[CLServiceVendor sharedInstance](CLServiceVendor "sharedInstance")];
    if (objc_opt_class())
    {
      v23 = IDSCopyLocalDeviceUniqueID();
      if (qword_1025D4440 != -1)
      {
        sub_1018E43EC();
      }

      v24 = qword_1025D4448;
      if (os_log_type_enabled(qword_1025D4448, OS_LOG_TYPE_DEFAULT))
      {
        [qword_102637068 pairedDeviceLastSeenTimestamp];
        v26 = v25;
        v27 = [objc_msgSend(objc_msgSend(qword_102637068 "pairedDevice")];
        v28 = [v23 UTF8String];
        *buf = 67110146;
        *&buf[4] = a2;
        *&buf[8] = 2048;
        *&buf[10] = v26;
        *&buf[18] = 2080;
        *&buf[20] = v6;
        *&buf[28] = 2080;
        *&buf[30] = v27;
        *&buf[38] = 2080;
        *&buf[40] = v28;
        _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_DEFAULT, "IDS connection update,status,%d,prevDisconnection,%f,modelID,%s,uniqueIDOverride,%s,localDeviceID,%s", buf, 0x30u);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4440 != -1)
        {
          sub_1018E43EC();
        }

        [qword_102637068 pairedDeviceLastSeenTimestamp];
        v30 = v29;
        v31 = [objc_msgSend(objc_msgSend(qword_102637068 "pairedDevice")];
        v32 = [v23 UTF8String];
        LODWORD(v35) = 67110146;
        HIDWORD(v35) = a2;
        *v36 = 2048;
        *&v36[2] = v30;
        *&v36[10] = 2080;
        *&v36[12] = v6;
        v37 = 2080;
        v38 = v31;
        v39 = 2080;
        v40 = v32;
        v33 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CLCompanionNotifier::connectionUpdate(BOOL)", "%s\n", v33);
        if (v33 != buf)
        {
          free(v33);
        }
      }
    }

    objc_autoreleasePoolPop(v21);
  }
}

void sub_1005F4FEC(uint64_t a1, int a2)
{
  if (qword_102637068)
  {
    if ([qword_102637068 pairedDevice])
    {
      v4 = [objc_msgSend(qword_102637068 "pairedDevice")];
    }

    else
    {
      v4 = 0;
    }

    if ([qword_102637068 pairedDevice])
    {
      v5 = [objc_msgSend(qword_102637068 "pairedDevice")];
    }

    else
    {
      v5 = 0;
    }

    [qword_102637068 pairedDeviceLastNearbyTimestamp];
    v9 = 13;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    *&v11[8] = 0u;
    LOBYTE(buf) = v4;
    BYTE1(buf) = a2;
    BYTE2(buf) = v5;
    *(&buf + 3) = 0;
    HIBYTE(buf) = 0;
    *v11 = v6;
    (*(*a1 + 152))(a1, &v9, &buf, 1, 0xFFFFFFFFLL, 0);
    if (qword_1025D4440 != -1)
    {
      sub_1018E43EC();
    }

    v7 = qword_1025D4448;
    if (os_log_type_enabled(qword_1025D4448, OS_LOG_TYPE_DEFAULT))
    {
      [qword_102637068 pairedDeviceLastNearbyTimestamp];
      LODWORD(buf) = 67109376;
      HIDWORD(buf) = a2;
      *v11 = 2048;
      *&v11[2] = v8;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "Companion proximity update, nearby %d, nearbyTimestamp %f", &buf, 0x12u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018E4414(a2);
    }
  }
}

id sub_1005F51C4()
{
  result = qword_102637068;
  if (qword_102637068)
  {
    return [qword_102637068 isConnected];
  }

  return result;
}

uint64_t sub_1005F51D8(void *a1)
{
  *a1 = off_1024637E8;
  if (qword_102637068)
  {
  }

  v2 = a1[18];
  a1[18] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[17];
  a1[17] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[16];
  a1[16] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return sub_1005F482C(a1);
}

uint64_t sub_1005F52D4(uint64_t a1)
{
  if (*(a1 + 111))
  {
    return 0;
  }

  if (qword_102637068)
  {
    if ([qword_102637068 pairedDevice])
    {
      v8 = 0u;
      v9 = 0u;
      v6 = 0u;
      v7 = 0u;
      v2 = [&off_1025542B8 countByEnumeratingWithState:&v6 objects:v10 count:16];
      if (v2)
      {
        v3 = v2;
        v4 = *v7;
LABEL_7:
        v5 = 0;
        while (1)
        {
          if (*v7 != v4)
          {
            objc_enumerationMutation(&off_1025542B8);
          }

          if ([objc_msgSend(objc_msgSend(qword_102637068 "pairedDevice")])
          {
            return 0;
          }

          if (v3 == ++v5)
          {
            v3 = [&off_1025542B8 countByEnumeratingWithState:&v6 objects:v10 count:16];
            result = 1;
            if (v3)
            {
              goto LABEL_7;
            }

            return result;
          }
        }
      }
    }
  }

  return 1;
}

uint64_t sub_1005F540C()
{
  result = qword_102637068;
  if (qword_102637068)
  {
    result = [qword_102637068 pairedDevice];
    if (result)
    {
      v6 = 0u;
      v7 = 0u;
      v4 = 0u;
      v5 = 0u;
      result = [&off_1025542D0 countByEnumeratingWithState:&v4 objects:v8 count:16];
      if (result)
      {
        v1 = result;
        v2 = *v5;
        while (2)
        {
          for (i = 0; i != v1; i = i + 1)
          {
            if (*v5 != v2)
            {
              objc_enumerationMutation(&off_1025542D0);
            }

            if ([objc_msgSend(objc_msgSend(qword_102637068 "pairedDevice")])
            {
              return 1;
            }
          }

          v1 = [&off_1025542D0 countByEnumeratingWithState:&v4 objects:v8 count:16];
          result = 0;
          if (v1)
          {
            continue;
          }

          break;
        }
      }
    }
  }

  return result;
}

id sub_1005F5534(double a1, uint64_t a2, int a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, uint64_t a10)
{
  if (qword_1025D4440 != -1)
  {
    sub_1018E4544();
  }

  v18 = qword_1025D4448;
  if (os_log_type_enabled(qword_1025D4448, OS_LOG_TYPE_INFO))
  {
    *buf = 67110912;
    v23 = a3;
    v24 = 2048;
    v25 = [a4 length];
    v26 = 2048;
    v27 = a5;
    v28 = 1024;
    v29 = a6;
    v30 = 1024;
    v31 = a7;
    v32 = 1024;
    v33 = a8;
    v34 = 2048;
    v35 = a1;
    v36 = 1024;
    v37 = a9;
    _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_INFO, "Sending message,type,%d,size,%lu,priority,%ld,fireAndForget,%d,encrypt,%d,bypassConnectionCheck,%d,timeout,%f,nonWaking,%d", buf, 0x3Eu);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4440 != -1)
    {
      sub_1018E43EC();
    }

    [a4 length];
    v20 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLCompanionNotifier::sendCompanionMessage(CLCompanionNotifier_Type::Type, NSData *, IDSMessagePriority, BOOL, BOOL, BOOL, CFTimeInterval, BOOL, CLCompanionTransportCompletionHandler) const", "%s\n", v20);
    if (v20 != buf)
    {
      free(v20);
    }
  }

  result = qword_102637068;
  if (qword_102637068)
  {
    LOBYTE(v21) = a9;
    return [qword_102637068 sendMessage:a4 type:a3 priority:a5 fireAndForget:a6 encrypt:a7 bypassConnectionCheck:a8 timeout:a1 nonWaking:v21 completionHandler:a10];
  }

  else if (a10)
  {
    return (*(a10 + 16))(a10, 0, 0);
  }

  return result;
}

uint64_t sub_1005F585C(_DWORD *a1)
{
  v1 = *a1 - 2;
  if (v1 > 3)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return dword_101C81860[v1];
  }
}

void sub_1005F5894(uint64_t a1, int a2)
{
  v2 = 1.79769313e308;
  if (a2)
  {
    v2 = 10.0;
  }

  *(a1 + 112) = v2;
  v3 = (a1 + 112);
  [*(a1 + 120) setNextFireDelay:v2 interval:v2];
  if (qword_1025D4440 != -1)
  {
    sub_1018E4544();
  }

  v4 = qword_1025D4448;
  if (os_log_type_enabled(qword_1025D4448, OS_LOG_TYPE_DEBUG))
  {
    v5 = *v3;
    if (*v3 == 1.79769313e308)
    {
      v5 = 0.0;
    }

    v6 = 134217984;
    v7 = v5;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "timer interval,%f", &v6, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018E4558(v3);
  }
}

void sub_1005F59A4(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4)
{
  if (!*a3)
  {
    *(a1 + 110) = *(a4 + 3);
    *(a1 + 111) = *(a4 + 2);
  }

  if (qword_102637068)
  {
    v5 = [qword_102637068 isConnected];
  }

  else
  {
    v5 = 0;
  }

  sub_1005F4A20(a1, v5);
}

void sub_1005F5DA4(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_1018E4924();
    }

    v4 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
    {
      v9 = 68289282;
      v10 = 0;
      v11 = 2082;
      v12 = "";
      v13 = 2114;
      v14 = a3;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#CLCompanionNotifier IDS service failed to initialize, Error:%{public, location:escape_only}@}", &v9, 0x1Cu);
      if (qword_1025D47A0 != -1)
      {
        sub_1018E4938();
      }
    }

    v5 = off_1025D47A8;
    if (os_signpost_enabled(off_1025D47A8))
    {
      v9 = 68289282;
      v10 = 0;
      v11 = 2082;
      v12 = "";
      v13 = 2114;
      v14 = a3;
      _os_signpost_emit_with_name_impl(dword_100000000, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#CLCompanionNotifier IDS service failed to initialize", "{msg%{public}.0s:#CLCompanionNotifier IDS service failed to initialize, Error:%{public, location:escape_only}@}", &v9, 0x1Cu);
    }
  }

  else
  {
    if (qword_102658368)
    {

      qword_102658368 = 0;
    }

    qword_102658368 = a2;
    if (qword_1025D4200 != -1)
    {
      sub_1018E4670();
    }

    v8 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 68289026;
      v10 = 0;
      v11 = 2082;
      v12 = "";
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#CLCompanionNotifier IDS became available so resuming silo (CLCompanionTransport)}", &v9, 0x12u);
    }

    [*(a1 + 32) resume];
  }
}

void *sub_1005F5FB8(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4, uint64_t a5)
{
  result = sub_100058A40(a1, 0, a2, a3, a4, a5);
  *result = &off_102463980;
  return result;
}

void sub_1005F60CC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  operator delete();
}

BOOL sub_1005F61D4(uint64_t a1, void *a2, int *a3)
{
  v5 = *(a1 + 88);
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = a1 + 88;
  do
  {
    if (*(v5 + 32) >= a2)
    {
      v6 = v5;
    }

    v5 = *(v5 + 8 * (*(v5 + 32) < a2));
  }

  while (v5);
  if (v6 != a1 + 88 && *(v6 + 32) <= a2)
  {
    v13 = *(v6 + 48);
    v11 = v6 + 48;
    v12 = v13;
    if (!v13)
    {
      goto LABEL_24;
    }

    v14 = *a3;
    v15 = v11;
    do
    {
      if (*(v12 + 28) >= v14)
      {
        v15 = v12;
      }

      v12 = *(v12 + 8 * (*(v12 + 28) < v14));
    }

    while (v12);
    if (v15 == v11 || v14 < *(v15 + 28))
    {
LABEL_24:
      v15 = v11;
    }

    return v15 != v11;
  }

  else
  {
LABEL_8:
    if (qword_1025D47F0 != -1)
    {
      sub_1018E43B0();
    }

    v7 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_FAULT))
    {
      v8 = (a1 + 8);
      if (*(a1 + 31) < 0)
      {
        v8 = *v8;
      }

      v16 = 136446466;
      v17 = v8;
      v18 = 1026;
      v19 = a2;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "%{public}s; client %{public}d does not exist", &v16, 0x12u);
    }

    v9 = sub_10000A100(121, 0);
    result = 0;
    if (v9)
    {
      sub_1018E4B60(a1, a2);
      return 0;
    }
  }

  return result;
}

void sub_1005F64EC(uint64_t a1, int *a2, uint64_t a3, int a4)
{
  if ((*(a1 + 108) & 1) == 0)
  {
    v4 = *(a1 + 64);
    if (!v4)
    {
      goto LABEL_9;
    }

    v5 = *a2;
    v6 = a1 + 64;
    do
    {
      if (*(v4 + 32) >= v5)
      {
        v6 = v4;
      }

      v4 = *(v4 + 8 * (*(v4 + 32) < v5));
    }

    while (v4);
    if (v6 == a1 + 64 || v5 < *(v6 + 32))
    {
LABEL_9:
      v9 = v10;
      memset(v10, 0, 32);
      sub_1005F7700(buf, a2, &v9);
      sub_10047D8C8();
    }

    if (a4)
    {
      operator new();
    }

    v7 = *(v6 + 72);
    *(v6 + 64) = 0;
    *(v6 + 72) = 0;
    if (v7)
    {
      sub_100008080(v7);
    }

    if (*(v6 + 56))
    {
      sub_1005F7270();
    }
  }
}

void sub_1005F69FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_101865570(va);
  sub_101864718(v9 - 144);
  _Unwind_Resume(a1);
}

void sub_1005F6A28(uint64_t a1)
{
  if (*(a1 + 108) == 1)
  {
    if (qword_1025D47F0 != -1)
    {
      sub_1018E43B0();
    }

    v2 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      v3 = (a1 + 8);
      if (*(a1 + 31) < 0)
      {
        v3 = *v3;
      }

      *buf = 136315138;
      v20 = v3;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "%s; already shutdown; not listing clients", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018E4D80(a1);
    }
  }

  else
  {
    if (qword_1025D47F0 != -1)
    {
      sub_1018E43B0();
    }

    v4 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      v5 = (a1 + 8);
      if (*(a1 + 31) < 0)
      {
        v5 = *v5;
      }

      v6 = *(a1 + 96);
      *buf = 136315394;
      v20 = v5;
      v21 = 2048;
      v22[0] = v6;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "%s; listing clients, num clients: %zu", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018E4C60(a1);
    }

    v7 = *(a1 + 80);
    if (v7 != (a1 + 88))
    {
      do
      {
        v8 = v7[5];
        if (v8 != v7 + 6)
        {
          do
          {
            if (qword_1025D47F0 != -1)
            {
              sub_1018E43C4();
            }

            v9 = qword_1025D47F8;
            if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
            {
              v10 = (a1 + 8);
              if (*(a1 + 31) < 0)
              {
                v10 = *(a1 + 8);
              }

              v11 = *(v7 + 8);
              v12 = *(v8 + 7);
              *buf = 136315650;
              v20 = v10;
              v21 = 1024;
              LODWORD(v22[0]) = v11;
              WORD2(v22[0]) = 1024;
              *(v22 + 6) = v12;
              _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "%s; clients, id: %d, notification: %d", buf, 0x18u);
            }

            if (sub_10000A100(121, 2))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1025D47F0 != -1)
              {
                sub_1018E43C4();
              }

              v16 = _os_log_send_and_compose_impl();
              sub_100152C7C("Generic", 1, 0, 2, "virtual void CLNotifier<CLCompanionNotifier_Type::Notification, CLCompanionNotifier_Type::NotificationData, char, CLCompanionNotifier_Type::RegistrationInfo>::listClients() [Notification_T = CLCompanionNotifier_Type::Notification, NotificationData_T = CLCompanionNotifier_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = CLCompanionNotifier_Type::RegistrationInfo]", "%s\n", v16);
              if (v16 != buf)
              {
                free(v16);
              }
            }

            v13 = v8[1];
            if (v13)
            {
              do
              {
                v14 = v13;
                v13 = *v13;
              }

              while (v13);
            }

            else
            {
              do
              {
                v14 = v8[2];
                v15 = *v14 == v8;
                v8 = v14;
              }

              while (!v15);
            }

            v8 = v14;
          }

          while (v14 != v7 + 6);
        }

        v17 = v7[1];
        if (v17)
        {
          do
          {
            v18 = v17;
            v17 = *v17;
          }

          while (v17);
        }

        else
        {
          do
          {
            v18 = v7[2];
            v15 = *v18 == v7;
            v7 = v18;
          }

          while (!v15);
        }

        v7 = v18;
      }

      while (v18 != (a1 + 88));
    }
  }
}

double sub_1005F6F04(uint64_t a1, double **a2)
{
  v2 = *a2;
  result = **a2;
  v4 = 0.0;
  while (v2 != a2[1])
  {
    v4 = v4 + v2[2];
    v2 += 3;
  }

  return result;
}

uint64_t sub_1005F6F30(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double sub_1005F7004(uint64_t a1, double **a2)
{
  v2 = a2[1];
  result = **a2;
  v4 = 0.0;
  if (*a2 != v2)
  {
    v5 = *a2;
    do
    {
      v4 = v4 + v5[2];
      v5 += 3;
    }

    while (v5 != v2);
  }

  return result;
}

uint64_t sub_1005F7054(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1005F7138(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1005F7224(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1005F7344(void *a1, int *a2, void *a3)
{
  if ((*(a1 + 108) & 1) == 0)
  {
    v5 = a1 + 8;
    v4 = a1[8];
    if (v4)
    {
      v8 = *a2;
      v9 = (a1 + 8);
      do
      {
        if (*(v4 + 32) >= v8)
        {
          v9 = v4;
        }

        v4 = *(v4 + 8 * (*(v4 + 32) < v8));
      }

      while (v4);
      if (v9 != v5 && v8 >= *(v9 + 32))
      {
        v37 = v9;
        v10 = sub_1000589A4(a3);
        (*(*a1 + 184))(a1, a2, v10, v9 + 80);
        v11 = *(v9 + 40);
        if (v11 != (v9 + 48))
        {
          v12 = a1 + 11;
          v13 = a1 + 1;
          do
          {
            v14 = *v12;
            if (!*v12)
            {
              goto LABEL_18;
            }

            v15 = *(v11 + 8);
            v16 = a1 + 11;
            do
            {
              if (*(v14 + 32) >= v15)
              {
                v16 = v14;
              }

              v14 = *(v14 + 8 * (*(v14 + 32) < v15));
            }

            while (v14);
            if (v16 != v12 && (v17 = *(v16 + 8), v15 >= v17))
            {
              v36 = v16;
              sub_1000593D8(a1, &v36, &v37, a3);
              v21 = a1[8];
              if (!v21)
              {
                return;
              }

              v22 = *a2;
              v23 = v5;
              do
              {
                if (*(v21 + 32) >= v22)
                {
                  v23 = v21;
                }

                v21 = *(v21 + 8 * (*(v21 + 32) < v22));
              }

              while (v21);
              if (v23 == v5 || v22 < *(v23 + 32))
              {
                return;
              }

              v37 = v23;
              v25 = *(v23 + 48);
              v11 = (v23 + 48);
              v24 = v25;
              if (v25)
              {
                v26 = v11;
                v27 = v24;
                do
                {
                  if (*(v27 + 32) >= v17)
                  {
                    v26 = v27;
                  }

                  v27 = *(v27 + 8 * (*(v27 + 32) < v17));
                }

                while (v27);
                if (v26 == v11 || v17 < *(v26 + 8))
                {
                  do
                  {
                    v28 = *(v24 + 32);
                    v29 = v17 < v28;
                    v30 = v17 >= v28;
                    if (v29)
                    {
                      v11 = v24;
                    }

                    v24 = *(v24 + 8 * v30);
                  }

                  while (v24);
                }

                else
                {
                  v31 = v26[1];
                  if (v31)
                  {
                    do
                    {
                      v11 = v31;
                      v31 = *v31;
                    }

                    while (v31);
                  }

                  else
                  {
                    do
                    {
                      v11 = v26[2];
                      v32 = *v11 == v26;
                      v26 = v11;
                    }

                    while (!v32);
                  }
                }
              }
            }

            else
            {
LABEL_18:
              v36 = a1 + 11;
              if (qword_1025D47F0 != -1)
              {
                sub_1018E43C4();
              }

              v18 = qword_1025D47F8;
              if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_FAULT))
              {
                v19 = a1 + 1;
                if (*(a1 + 31) < 0)
                {
                  v19 = *v13;
                }

                v20 = *(v11 + 8);
                *buf = 136446466;
                v43 = v19;
                v44 = 1026;
                v45 = v20;
                _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_FAULT, "%{public}s; unknown client %{public}d", buf, 0x12u);
              }

              if (sub_10000A100(121, 0))
              {
                bzero(buf, 0x65CuLL);
                if (qword_1025D47F0 != -1)
                {
                  sub_1018E43C4();
                }

                v33 = a1 + 1;
                if (*(a1 + 31) < 0)
                {
                  v33 = *v13;
                }

                v34 = *(v11 + 8);
                v38 = 136446466;
                v39 = v33;
                v40 = 1026;
                v41 = v34;
                v35 = _os_log_send_and_compose_impl();
                sub_100152C7C("Generic", 1, 0, 0, "void CLNotifier<CLCompanionNotifier_Type::Notification, CLCompanionNotifier_Type::NotificationData, char, CLCompanionNotifier_Type::RegistrationInfo>::invokeClientsWithData(const Notification_T &, CLCppContainer *) [Notification_T = CLCompanionNotifier_Type::Notification, NotificationData_T = CLCompanionNotifier_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = CLCompanionNotifier_Type::RegistrationInfo]", "%s\n", v35);
                if (v35 != buf)
                {
                  free(v35);
                }
              }
            }
          }

          while (v11 != (v37 + 48));
        }
      }
    }
  }
}

uint64_t sub_1005F7700(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  sub_1005F7758((a1 + 8), a3);
  v5 = *(a3 + 32);
  *(a1 + 32) = *(a3 + 24);
  *(a1 + 40) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 48) = *(a3 + 40);
  return a1;
}

void *sub_1005F7758(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_1005F77B0(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t sub_1005F77B0(uint64_t result, int *a2, int *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_1005F7838(v5, v5 + 1, v4 + 8);
      v6 = *(v4 + 1);
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = *(v4 + 2);
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t sub_1005F7838(void *a1, uint64_t *a2, int *a3)
{
  v3 = *sub_1005A4918(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

void sub_1005F78F0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_102463D38;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1005F794C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    operator delete();
  }

  return result;
}

id sub_1005F796C(void *a1)
{
  v2 = [a1 binaryVersion];
  [a1 sizeOfType];
  if (!v2)
  {
    return sub_1005F7B44(&v6, a1);
  }

  if (getenv("_INTERSILO_UNIT_TEST"))
  {
    if (qword_1025D41A0 != -1)
    {
      sub_1018E4E90();
    }

    v3 = qword_1025D41A8;
    if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218498;
      v8 = v2;
      v9 = 2048;
      v10 = 0;
      v11 = 2080;
      v12 = 0x8000000101C81800 & 0x7FFFFFFFFFFFFFFFLL;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", buf, 0x20u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018E4EA4();
    }
  }

  else
  {
    if (qword_1025D41A0 != -1)
    {
      sub_1018E4E90();
    }

    v5 = qword_1025D41A8;
    if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_FAULT))
    {
      *buf = 134218498;
      v8 = v2;
      v9 = 2048;
      v10 = 0;
      v11 = 2080;
      v12 = 0x8000000101C81800 & 0x7FFFFFFFFFFFFFFFLL;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_FAULT, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", buf, 0x20u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018E4F94();
    }
  }

  return 0;
}

id sub_1005F7B44(uint64_t a1, void *a2)
{
  if (![a2 cppObjectPtr] && objc_msgSend(objc_msgSend(a2, "compatibilityInfo"), "isEqual:", &off_10254ED50))
  {
    if ([objc_msgSend(a2 "serialized")] != 192)
    {
      sub_1018E5264();
    }

    [a2 setCppObjectPtr:{objc_msgSend(objc_msgSend(a2, "serialized"), "bytes")}];
  }

  return [a2 cppObjectPtr];
}

id sub_1005F7BFC(void *a1)
{
  v2 = [a1 binaryVersion];
  [a1 sizeOfType];
  if (!v2)
  {
    return sub_1005F7FD8(&v6, a1);
  }

  if (getenv("_INTERSILO_UNIT_TEST"))
  {
    if (qword_1025D41A0 != -1)
    {
      sub_1018E4E90();
    }

    v3 = qword_1025D41A8;
    if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218498;
      v8 = v2;
      v9 = 2048;
      v10 = 0;
      v11 = 2080;
      v12 = 0x8000000101C81830 & 0x7FFFFFFFFFFFFFFFLL;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", buf, 0x20u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018E53D8();
    }
  }

  else
  {
    if (qword_1025D41A0 != -1)
    {
      sub_1018E4E90();
    }

    v5 = qword_1025D41A8;
    if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_FAULT))
    {
      *buf = 134218498;
      v8 = v2;
      v9 = 2048;
      v10 = 0;
      v11 = 2080;
      v12 = 0x8000000101C81830 & 0x7FFFFFFFFFFFFFFFLL;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_FAULT, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", buf, 0x20u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018E54C8();
    }
  }

  return 0;
}

id sub_1005F7DD4(void *a1)
{
  v2 = [a1 binaryVersion];
  [a1 sizeOfType];
  if (v2)
  {
    if (getenv("_INTERSILO_UNIT_TEST"))
    {
      if (qword_1025D41A0 != -1)
      {
        sub_1018E4E90();
      }

      v3 = qword_1025D41A8;
      if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_ERROR))
      {
        v6 = 134218498;
        v7 = v2;
        v8 = 2048;
        v9 = 0;
        v10 = 2080;
        v11 = 0x8000000101C81830 & 0x7FFFFFFFFFFFFFFFLL;
        _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", &v6, 0x20u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018E55B8();
      }
    }

    else
    {
      if (qword_1025D41A0 != -1)
      {
        sub_1018E4E90();
      }

      v5 = qword_1025D41A8;
      if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_FAULT))
      {
        v6 = 134218498;
        v7 = v2;
        v8 = 2048;
        v9 = 0;
        v10 = 2080;
        v11 = 0x8000000101C81830 & 0x7FFFFFFFFFFFFFFFLL;
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_FAULT, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", &v6, 0x20u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018E56A8();
      }
    }

    return 0;
  }

  else
  {

    return [a1 cppObjectPtr];
  }
}

id sub_1005F7FD8(uint64_t a1, void *a2)
{
  if (![a2 cppObjectPtr] && objc_msgSend(objc_msgSend(a2, "compatibilityInfo"), "isEqual:", &off_10254ED50))
  {
    if ([objc_msgSend(a2 "serialized")] != 8)
    {
      sub_1018E5264();
    }

    [a2 setCppObjectPtr:{objc_msgSend(objc_msgSend(a2, "serialized"), "bytes")}];
  }

  return [a2 cppObjectPtr];
}

uint64_t sub_1005F8060()
{
  qword_1026582D0 = off_102463A58;
  qword_1026582E8 = &qword_1026582D0;
  __cxa_atexit(sub_1003EE78C, &qword_1026582D0, dword_100000000);
  qword_1026582F0 = off_102463AD8;
  qword_102658308 = &qword_1026582F0;
  __cxa_atexit(sub_1003EE78C, &qword_1026582F0, dword_100000000);
  qword_102658310 = off_102463B58;
  qword_102658328 = &qword_102658310;
  __cxa_atexit(sub_1003EE790, &qword_102658310, dword_100000000);
  qword_102658330 = off_102463BD8;
  qword_102658348 = &qword_102658330;
  __cxa_atexit(sub_1003EE790, &qword_102658330, dword_100000000);
  __cxa_atexit(sub_1005A704C, aAcc800fp_0, dword_100000000);

  return __cxa_atexit(sub_1005A704C, aDmfp_0, dword_100000000);
}

void sub_1005F835C()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_1005F8580()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_1005F87A4()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_1005F89C8()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_1005F8BEC()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_1005F8E10()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_1005F9034()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_1005F9258()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_1005F947C()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_1005F96A0()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_1005F98C4()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_1005F9AE8()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_1005F9D0C()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_1005F9F30()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_1005FA154()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_1005FA378()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_1005FA59C()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_1005FA7C0()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_1005FA9E4()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_1005FAC08()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_1005FAE2C()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_1005FB050()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_1005FB274()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_1005FB498()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_1005FB6BC()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_1005FB8E0()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_1005FBB04()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_1005FBD28()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_1005FBF4C()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_1005FC170()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_1005FC394()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_1005FC5B8()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_1005FC7DC()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_1005FCA00()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_1005FCC24()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_1005FCE48()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_1005FD06C()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_1005FD290()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_1005FD4B4()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}

void sub_1005FD6D8()
{
  if (qword_1025D4850 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v0 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v1 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_signpost_emit_with_name_impl(dword_100000000, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Killing locationd to trace sqlite statement creating failures", "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4850 != -1)
      {
        dispatch_once(&qword_1025D4850, &stru_102463F58);
      }
    }

    v2 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Killing locationd to trace sqlite statement creating failures, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
LABEL_11:
    dispatch_once(&qword_1025D4850, &stru_102463F58);
  }
}