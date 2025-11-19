void sub_1000836DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_100083758(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3321888768;
  v3[2] = sub_100083844;
  v3[3] = &unk_10013D178;
  sub_10001EF44(v4, a1 + 32);
  sub_100083844(v3);
  sub_10001E0C0(v4);
  objc_autoreleasePoolPop(v2);
}

void sub_100083864(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1 + 32);
  v11 = v7;
  v12 = v8;
  v13 = v9;
  if (v13)
  {
    v14 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289539;
      v31 = 0;
      v32 = 2082;
      v33 = "";
      v34 = 2113;
      *v35 = v12;
      *&v35[8] = 2113;
      *&v35[10] = v13;
      v15 = "{msg%{public}.0s:#safd,downloadFailed, response:%{private, location:escape_only}@, error:%{private, location:escape_only}@}";
      v16 = v14;
      v17 = 38;
LABEL_19:
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, v15, buf, v17);
    }

LABEL_20:

LABEL_21:
    v25 = 0;
    goto LABEL_22;
  }

  if (!v12)
  {
    v18 = -1;
    goto LABEL_16;
  }

  v18 = [v12 statusCode];
  if (v18 != 200)
  {
LABEL_16:
    v26 = SALogObjectGeneral;
    if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    *buf = 68289539;
    v31 = 0;
    v32 = 2082;
    v33 = "";
    v34 = 1025;
    *v35 = v18;
    *&v35[4] = 2113;
    *&v35[6] = v12;
    v15 = "{msg%{public}.0s:#safd,downloadFailedWithResponse, resultCode:%{private}d, response:%{private, location:escape_only}@}";
    v16 = v26;
LABEL_18:
    v17 = 34;
    goto LABEL_19;
  }

  v19 = SALogObjectGeneral;
  if (!v11)
  {
    if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    *buf = 68289539;
    v31 = 0;
    v32 = 2082;
    v33 = "";
    v34 = 1025;
    *v35 = 200;
    *&v35[4] = 2113;
    *&v35[6] = v12;
    v15 = "{msg%{public}.0s:#safd,tempFileInvalid, resultCode:%{private}d, response:%{private, location:escape_only}@}";
    v16 = v19;
    goto LABEL_18;
  }

  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289539;
    v31 = 0;
    v32 = 2082;
    v33 = "";
    v34 = 1025;
    *v35 = 200;
    *&v35[4] = 2113;
    *&v35[6] = v12;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#safd,downloadSuccess, resultCode:%{private}d, response:%{private, location:escape_only}@}", buf, 0x22u);
  }

  v20 = [v11 path];
  v21 = [v20 UTF8String];
  v22 = (a1 + 40);
  v23 = a1 + 40;
  if (*(a1 + 63) < 0)
  {
    v23 = *v22;
  }

  v24 = sub_1000746E8(v21, v23);

  if (!v24)
  {
    goto LABEL_21;
  }

  if (*(a1 + 63) < 0)
  {
    v22 = *v22;
  }

  v25 = sub_1000743F8(v22, *(a1 + 96));
LABEL_22:
  v27 = *v10;
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3321888768;
  v28[2] = sub_100083C3C;
  v28[3] = &unk_10013D1A8;
  v28[4] = v10;
  sub_10001EF44(v29, a1 + 64);
  v29[32] = v25;
  dispatch_async(v27, v28);
  sub_10001E0C0(v29);
}

void sub_100083C3C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_autoreleasePoolPush();
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3321888768;
  v4[2] = sub_100083D40;
  v4[3] = &unk_10013D1A8;
  v4[4] = v2;
  sub_10001EF44(v5, a1 + 40);
  v5[32] = *(a1 + 72);
  sub_100083D40(v4);
  sub_10001E0C0(v5);
  objc_autoreleasePoolPop(v3);
}

uint64_t sub_100083D54(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 63) < 0)
  {
    sub_100004CEC((a1 + 40), *(a2 + 40), *(a2 + 48));
  }

  else
  {
    v4 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 40) = v4;
  }

  return sub_10001EF44(a1 + 64, a2 + 64);
}

void sub_100083DAC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 63) < 0)
  {
    operator delete(*(v1 + 40));
  }

  _Unwind_Resume(exception_object);
}

void sub_100083DC8(uint64_t a1)
{
  sub_10001E0C0(a1 + 64);
  if (*(a1 + 63) < 0)
  {
    v2 = *(a1 + 40);

    operator delete(v2);
  }
}

void sub_100083F8C(id a1)
{
  qword_10014ADA8 = objc_alloc_init(SAFileDownloaderDelegate);

  _objc_release_x1();
}

void sub_100083FC8(uint64_t a1)
{
  v2 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v3 = (a1 + 24);
    if (*(a1 + 47) < 0)
    {
      if (*(a1 + 32))
      {
        v3 = *v3;
      }

      else
      {
        v3 = "<empty>";
      }
    }

    else if (!*(a1 + 47))
    {
      v3 = "<empty>";
    }

    v4 = (a1 + 72);
    if (*(a1 + 95) < 0)
    {
      v4 = *v4;
    }

    v5 = (a1 + 96);
    if (*(a1 + 119) < 0)
    {
      v5 = *v5;
    }

    v7 = *(a1 + 12);
    v6 = *(a1 + 16);
    v9 = *(a1 + 4);
    v8 = *(a1 + 8);
    v10 = (a1 + 120);
    if (*(a1 + 143) < 0)
    {
      v10 = *v10;
    }

    v11[0] = 68291075;
    v11[1] = 0;
    v12 = 2082;
    v13 = "";
    v14 = 1025;
    v15 = v9;
    v16 = 1025;
    v17 = v7;
    v18 = 1025;
    v19 = v6;
    v20 = 1025;
    v21 = v8;
    v22 = 2081;
    v23 = v3;
    v24 = 2081;
    v25 = v4;
    v26 = 2081;
    v27 = v5;
    v28 = 2081;
    v29 = v10;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#countryAssetConfig,log, pullpc:%{private}d, appc:%{private}d, efficacyParticipationPercentage:%{private}d, wowControls:%{private}d, pullCname:%{private, location:escape_only}s, efficacyManifestFileName:%{private, location:escape_only}s, codebookFileName:%{private, location:escape_only}s, countrySupport:%{private, location:escape_only}s}", v11, 0x52u);
  }
}

void sub_100084138(const void **a1, _DWORD *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      sub_10000509C();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFCLL;
    v12 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      sub_10001CF60(a1, v12);
    }

    v13 = (4 * (v8 >> 2));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

void sub_100084218(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289283;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 2113;
    *&buf[20] = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#countryAssetConfig,onAssetReceived, asset:%{private, location:escape_only}@}", buf, 0x1Cu);
  }

  v5 = v3;
  v6 = SALogObjectGeneral;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289283;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 2113;
    *&buf[20] = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#dbg,#countryAssetConfig,readAPNConfigAsset, asset:%{private, location:escape_only}@}", buf, 0x1Cu);
  }

  v105 = v5;

  if (!v5)
  {
    v12 = SALogObjectGeneral;
    if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_98;
    }

    *buf = 68289026;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    v13 = "{msg%{public}.0s:#countryAssetConfig,#warning,readAPNConfigAsset,nilAssetDictionary}";
    goto LABEL_22;
  }

  v7 = [v5 objectForKey:@"config"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

    v12 = SALogObjectGeneral;
    if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_98;
    }

    *buf = 68289026;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    v13 = "{msg%{public}.0s:#countryAssetConfig,#warning,readAPNConfigAsset,nilConfig}";
LABEL_22:
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v13, buf, 0x12u);
    goto LABEL_98;
  }

  v8 = v7;

  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  v9 = [v8 objectForKey:{@"countrySupport", v5}];
  if (v9)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      SACommonUtils::getStringValue(v9, buf);
      if (*(a1 + 143) < 0)
      {
        operator delete(*(a1 + 120));
      }

      *(a1 + 120) = *buf;
      *(a1 + 136) = *&buf[16];
    }
  }

  v10 = [v8 objectForKey:@"metrics"];
  if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  *(a1 + 4) = -1;
  v14 = [v11 objectForKey:@"pullpc"];
  if (v14)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      *(a1 + 4) = [v14 intValue];
    }
  }

  *(a1 + 12) = -1;
  v15 = [v11 objectForKey:@"appc"];
  if (v15)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      *(a1 + 12) = [v15 intValue];
    }
  }

  *(a1 + 16) = 100;
  v16 = [v11 objectForKey:@"efficacyParticipationPercentage"];
  if (v16)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      *(a1 + 16) = [v16 intValue];
    }
  }

  *(a1 + 144) = -1;
  v17 = [v11 objectForKey:@"onAlertReceivedDuration"];
  if (v17)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      *(a1 + 144) = [v17 intValue];
    }
  }

  *(a1 + 232) = 1;
  v18 = [v11 objectForKey:@"motionHarvestOnlyInCountry"];
  if (v18)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      *(a1 + 232) = [v18 intValue] != 0;
    }
  }

  v19 = [v8 objectForKey:@"apns"];
  if (v19 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  *(a1 + 8) = 1;
  v21 = [v20 objectForKey:@"wowControls"];
  if (v21)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      *(a1 + 8) = [v21 intValue];
    }
  }

  v22 = [v8 objectForKey:@"pull"];
  if (v22 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v24 = [v23 objectForKey:@"server"];
  if (v24)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      SACommonUtils::getStringValue(v24, buf);
      if (*(a1 + 47) < 0)
      {
        operator delete(*(a1 + 24));
      }

      *(a1 + 24) = *buf;
      *(a1 + 40) = *&buf[16];
    }
  }

  v25 = [v8 objectForKey:@"livability"];
  if (v25 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  v27 = [v26 objectForKey:@"weaEnrichmentChannel"];
  if (v27)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      SACommonUtils::getStringValue(v27, buf);
      if (*(a1 + 71) < 0)
      {
        operator delete(*(a1 + 48));
      }

      *(a1 + 48) = *buf;
      *(a1 + 64) = *&buf[16];
    }
  }

  v28 = [v8 objectForKey:@"security"];
  if (v28 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v29 = v28;
  }

  else
  {
    v29 = 0;
  }

  v30 = [v29 objectForKey:@"codebookFileName"];
  if (v30)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      SACommonUtils::getStringValue(v30, buf);
      if (*(a1 + 119) < 0)
      {
        operator delete(*(a1 + 96));
      }

      *(a1 + 96) = *buf;
      *(a1 + 112) = *&buf[16];
    }
  }

  v31 = [v29 objectForKey:@"codebookDownloadPeriodSeconds"];
  if (v31)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      *(a1 + 20) = [v31 intValue];
    }
  }

  v32 = [v8 objectForKey:@"edcfu"];
  if (v32 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v33 = v32;
  }

  else
  {
    v33 = 0;
  }

  *(a1 + 236) = 0;
  v34 = [v33 objectForKey:@"uptakeCoefficient"];
  if (v34)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v34 doubleValue];
      *&v35 = v35;
      *(a1 + 236) = LODWORD(v35);
    }
  }

  v36 = [v8 objectForKey:@"features"];
  if (v36 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v37 = v36;
  }

  else
  {
    v37 = 0;
  }

  *(a1 + 320) = 1;
  v38 = [v37 objectForKey:@"richHI"];
  if (v38)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      *(a1 + 320) = [v38 intValue] != 0;
    }
  }

  *(a1 + 321) = 1;
  v39 = [v37 objectForKey:@"mapsDisplay"];
  if (v39)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      *(a1 + 321) = [v39 intValue] != 0;
    }
  }

  *a1 = 1;
  v5 = v105;
LABEL_98:

  v40 = v105;
  v41 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289283;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 2113;
    *&buf[20] = v40;
    _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#countryAssetConfig,readEqSensingAsset, asset:%{private, location:escape_only}@}", buf, 0x1Cu);
  }

  if (!v105)
  {
    v48 = SALogObjectGeneral;
    if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_129;
    }

    *buf = 68289026;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    v49 = "{msg%{public}.0s:#countryAssetConfig,readEqSensingAsset,nil asset dictionary}";
    goto LABEL_114;
  }

  v42 = [v40 objectForKey:@"config"];
  if (!v42 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

    v48 = SALogObjectGeneral;
    if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_129;
    }

    *buf = 68289026;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    v49 = "{msg%{public}.0s:#countryAssetConfig,readEqSensingAsset,nil config}";
LABEL_114:
    _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, v49, buf, 0x12u);
    goto LABEL_129;
  }

  v43 = [v42 objectForKey:@"eqSensing"];
  if (v43 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    *(a1 + 160) = 0xBFF0000000000000;
    v44 = [v43 objectForKey:@"manifestDownloadPeriod"];
    if (v44)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v44 doubleValue];
        *(a1 + 160) = v45;
      }
    }

    v46 = (a1 + 168);
    if (*(a1 + 191) < 0)
    {
      *(a1 + 176) = 0;
      v47 = *(a1 + 168);
    }

    else
    {
      *(a1 + 191) = 0;
      v47 = (a1 + 168);
    }

    *v47 = 0;
    v51 = [v43 objectForKey:{@"manifestFileName", v105}];
    if (v51)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        SACommonUtils::getStringValue(v51, buf);
        if (*(a1 + 191) < 0)
        {
          operator delete(*v46);
        }

        *v46 = *buf;
        *(a1 + 184) = *&buf[16];
      }
    }

    v106 = 0;
    *__str = 0;
    SACommonUtils::readArrayFromKey(v43, @"motionHarvestToggles", &v106, __str);
    v52 = *__str;
    if (v52)
    {
      v53 = [NSArray arrayWithArray:v52];
      v54 = *(a1 + 192);
      *(a1 + 192) = v53;
    }

    v55 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289283;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2113;
      *&buf[20] = v52;
      _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#countryAssetConfig,readEqSensingAsset, toggles:%{private, location:escape_only}@}", buf, 0x1Cu);
    }
  }

  else
  {

    v50 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#countryAssetConfig,readEqSensingAsset,nil eqSensing dictionary}", buf, 0x12u);
    }
  }

LABEL_129:
  v56 = v40;
  v57 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289283;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 2113;
    *&buf[20] = v56;
    _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#countryAssetConfig,readRollingMetricAsset, metrics:%{private, location:escape_only}@}", buf, 0x1Cu);
  }

  if (!v105)
  {
    v61 = SALogObjectGeneral;
    if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_165;
    }

    *buf = 68289026;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    v62 = "{msg%{public}.0s:#countryAssetConfig,readRollingMetricAsset,nilAssetDictionary}";
    goto LABEL_141;
  }

  v58 = [v56 objectForKey:@"config"];
  if (!v58 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

    v61 = SALogObjectGeneral;
    if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_165;
    }

    *buf = 68289026;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    v62 = "{msg%{public}.0s:#countryAssetConfig,readRollingMetricAsset,nilConfig}";
LABEL_141:
    _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, v62, buf, 0x12u);
    goto LABEL_165;
  }

  v59 = [v58 objectForKey:@"metrics"];
  if (v59 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v60 = v59;
  }

  else
  {
    v60 = 0;
  }

  v63 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289283;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 2113;
    *&buf[20] = v60;
    _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#countryAssetConfig,readRollingMetricAsset, metricsData:%{private, location:escape_only}@}", buf, 0x1Cu);
  }

  memset(__str, 0, 24);
  v64 = [v60 objectForKey:{@"rmEnable", v105}];
  if (v64)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v65 = [v64 intValue]!= 0;

      *(a1 + 148) = v65 | 0x100;
      v64 = SALogObjectGeneral;
      if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
      {
        if ((*(a1 + 149) & 1) == 0)
        {
          sub_100086A78();
        }

        v66 = *(a1 + 148);
        *buf = 68289282;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 1026;
        *&buf[20] = v66;
        _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#countryAssetConfig,readRollingMetricAsset, rmSupport:%{public}d}", buf, 0x18u);
      }
    }
  }

  v67 = [v60 objectForKey:@"rmPeriodInSeconds"];
  if (v67)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v68 = [v67 intValue];

      *(a1 + 152) = v68;
      *(a1 + 156) = 1;
      v67 = SALogObjectGeneral;
      if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
      {
        if ((*(a1 + 156) & 1) == 0)
        {
          sub_100086A78();
        }

        v69 = *(a1 + 152);
        *buf = 68289282;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 1026;
        *&buf[20] = v69;
        _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#countryAssetConfig,readRollingMetricAsset, metricPeriod:%{public}d}", buf, 0x18u);
      }
    }
  }

  v70 = [v60 objectForKey:@"efficacyManifestFileName"];
  if (v70 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    SACommonUtils::getStringValue(v70, buf);
    *__str = *buf;
    *&__str[16] = *&buf[16];

    v71 = (a1 + 72);
    std::string::operator=((a1 + 72), __str);
    v72 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a1 + 95) < 0)
      {
        v71 = *v71;
      }

      *buf = 68289283;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2081;
      *&buf[20] = v71;
      _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#countryAssetConfig,readRollingMetricAsset, efficacyManifestFileName:%{private, location:escape_only}s}", buf, 0x1Cu);
    }

    if ((__str[23] & 0x80000000) != 0)
    {
      operator delete(*__str);
    }
  }

  else
  {
  }

LABEL_165:
  v73 = v56;
  v74 = [v73 objectForKey:@"config"];
  if (v74)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v75 = [v74 objectForKey:@"mapConfig"];
      if (!v75 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {

        v99 = SALogObjectGeneral;
        if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 68289026;
          *&buf[4] = 0;
          *&buf[8] = 2082;
          *&buf[10] = "";
          _os_log_impl(&_mh_execute_header, v99, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#countryAssetConfig,readMapCacheAsset,mapConfigNil}", buf, 0x12u);
        }

        goto LABEL_215;
      }

      *(a1 + 244) = 259200;
      v76 = [v75 objectForKey:@"cacheIntervalSeconds"];
      if (v76)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v76 doubleValue];
          *(a1 + 244) = v77;
        }
      }

      *(a1 + 248) = 0x408F400000000000;
      v78 = [v75 objectForKey:@"distinctLocationDistanceMeters"];
      if (v78)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v78 doubleValue];
          *(a1 + 248) = v79;
        }
      }

      *(a1 + 256) = 0x40F5180000000000;
      v80 = [v75 objectForKey:@"cacheHistorySeconds"];
      if (v80)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v80 doubleValue];
          *(a1 + 256) = v81;
        }
      }

      *(a1 + 296) = 3600;
      v82 = [v75 objectForKey:@"minDwellingDurationForRegionToMapsPrecacheSeconds"];
      if (v82)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v82 doubleValue];
          *(a1 + 296) = v83;
        }
      }

      *(a1 + 300) = 5;
      v84 = [v75 objectForKey:@"maxNumberOfRegionsAllowedForMapsPrecache"];
      if (v84)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v84 doubleValue];
          *(a1 + 300) = v85;
        }
      }

      *(a1 + 304) = 100000;
      v86 = [v75 objectForKey:@"radiusOfRegionForMapsPrecachingMeters"];
      if (v86)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v86 doubleValue];
          *(a1 + 304) = v87;
        }
      }

      *(a1 + 308) = 1209600;
      v88 = [v75 objectForKey:@"mapsPrecachingExpirationAgeSeconds"];
      if (v88)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v88 doubleValue];
          *(a1 + 308) = v89;
        }
      }

      *(a1 + 312) = 2592000;
      v90 = [v75 objectForKey:@"mapsPrecachingLOILookBackTimeSeconds"];
      if (v90)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v90 doubleValue];
          *(a1 + 312) = v91;
        }
      }

      *(a1 + 240) = *(a1 + 244) > 0;
      v92 = [v75 objectForKey:@"cacheRadiiKm"];
      if (v92 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        if ([v92 count])
        {
          v108 = 0u;
          v109 = 0u;
          memset(__str, 0, sizeof(__str));
          v92 = v92;
          v93 = [v92 countByEnumeratingWithState:__str objects:buf count:16];
          if (v93)
          {
            v94 = **&__str[16];
            do
            {
              for (i = 0; i != v93; i = i + 1)
              {
                if (**&__str[16] != v94)
                {
                  objc_enumerationMutation(v92);
                }

                v96 = *(*&__str[8] + 8 * i);
                if (v96)
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    [v96 doubleValue];
                    v106 = (v97 * 1000.0);
                    sub_100084138((a1 + 272), &v106);
                  }
                }
              }

              v93 = [v92 countByEnumeratingWithState:__str objects:buf count:16];
            }

            while (v93);
          }

LABEL_214:
LABEL_215:

          goto LABEL_216;
        }
      }

      else
      {

        v92 = 0;
      }

      *buf = 100000;
      sub_100084138((a1 + 272), buf);
      *buf = 200000;
      sub_100084138((a1 + 272), buf);
      *buf = 400000;
      sub_100084138((a1 + 272), buf);
      *buf = 500000;
      sub_100084138((a1 + 272), buf);
      v100 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289026;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        _os_log_impl(&_mh_execute_header, v100, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#countryAssetConfig,readMapCacheAsset,cacheRadiiKmNil}", buf, 0x12u);
      }

      goto LABEL_214;
    }
  }

  v98 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    _os_log_impl(&_mh_execute_header, v98, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#countryAssetConfig,readMapCacheAsset,configIsNil}", buf, 0x12u);
  }

LABEL_216:

  v101 = *(a1 + 200);
  if (!v101)
  {
    operator new();
  }

  sub_10006F5C0(v101, v73);
  v102 = *(a1 + 208);
  if (!v102)
  {
    operator new();
  }

  sub_10006F5C0(v102, v73);
  v103 = *(a1 + 216);
  if (!v103)
  {
    operator new();
  }

  sub_10006F5C0(v103, v73);
  v104 = *(a1 + 224);
  if (!v104)
  {
    operator new();
  }

  sub_10006F5C0(v104, v73);
  *a1 = 1;
}

void sub_10008628C(uint64_t a1, double *a2)
{
  v4 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *__p = 68289026;
    *&__p[8] = 2082;
    *&__p[10] = "";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#countryAssetConfig,getEarthquakeSensingConfig}", __p, 0x12u);
  }

  v5 = *(sub_100042820() + 45);
  v6 = sub_100042820();
  if (*(v6 + 391) < 0)
  {
    sub_100004CEC(__p, v6[46], v6[47]);
  }

  else
  {
    *__p = *(v6 + 23);
    *&__p[16] = v6[48];
  }

  if (v5 <= 0.0)
  {
    v5 = *(a1 + 160);
  }

  *a2 = v5;
  v7 = (a2 + 1);
  v8 = __p[23];
  if (__p[23] < 0)
  {
    v8 = *&__p[8];
  }

  if (v8)
  {
    v9 = __p;
  }

  else
  {
    v9 = (a1 + 168);
  }

  std::string::operator=(v7, v9);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }
}

void sub_1000863D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000863FC(unsigned __int8 *a1, BOOL *a2)
{
  v4 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 68289026;
    v12 = 0;
    v13 = 2082;
    v14 = "";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#countryAssetConfig,getRollingMetrics}", &v11, 0x12u);
  }

  if ((sub_100042820()[35] & 0x80000000) != 0)
  {
    if (a1[149] == 1)
    {
      v5 = a1[148];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = *(sub_100042820() + 70);
  }

  *a2 = v5 != 0;
  if ((*(sub_100042820() + 71) & 0x80000000) == 0)
  {
    v7 = sub_100042820() + 71;
LABEL_12:
    LODWORD(v6) = *v7;
    v8 = v6;
    goto LABEL_13;
  }

  if (a1[156] == 1)
  {
    v7 = a1 + 152;
    goto LABEL_12;
  }

  v8 = 4294967300.0;
LABEL_13:
  *(a2 + 1) = v8;
  v9 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *a2;
    v11 = 68289538;
    v12 = 0;
    v13 = 2082;
    v14 = "";
    v15 = 1026;
    v16 = v10;
    v17 = 2050;
    v18 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#countryAssetConfig,getRollingMetrics, rmSupported:%{public}d, rollingPeriodSeconds:%{public}lu}", &v11, 0x22u);
  }
}

void sub_1000865C4(uint64_t a1, void *a2, void *a3, float64_t a4, float64_t a5)
{
  sub_10008672C(a1, &v31);
  v7 = v31;
  v8 = v32;
  if (v31 != v32)
  {
    v9.f64[0] = a4;
    v9.f64[1] = a5;
    v14 = v9;
    do
    {
      sub_10006E650(v15, v7);
      v10 = vmovn_s64(vcgeq_f64(v14, v25));
      v10.i32[0] = vuzp1_s16(v10, v10).u32[0];
      v10.i32[1] = vuzp1_s16(*&v25, vmovn_s64(vcgeq_f64(v26, v14))).i32[1];
      if (vminv_u16(v10))
      {
        v11 = v24;
        *a2 = v23;
        *a3 = v11;
      }

      v33 = &v30;
      sub_100005208(&v33);
      v33 = &v29;
      sub_100005208(&v33);
      if (__p)
      {
        v28 = __p;
        operator delete(__p);
      }

      if (v22 < 0)
      {
        operator delete(v21);
      }

      if (v20 < 0)
      {
        operator delete(v19);
      }

      if (v18 < 0)
      {
        operator delete(v17);
      }

      if (v16 < 0)
      {
        operator delete(v15[1]);
      }

      v7 += 280;
    }

    while (v7 != v8);
  }

  v15[0] = &v31;
  sub_10006EB04(v15);
}

void sub_100086710(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14)
{
  a14 = (v14 - 112);
  sub_10006EB04(&a14);
  _Unwind_Resume(a1);
}

void sub_10008672C(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEBUG))
  {
    v6[0] = 68289026;
    v6[1] = 0;
    v7 = 2082;
    v8 = "";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#dbg,#asset,getApnsTransportConfigData}", v6, 0x12u);
  }

  v5 = *(a1 + 200);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (v5)
  {
    sub_100086AC4(a2, *(v5 + 8), *(v5 + 16), 0xAF8AF8AF8AF8AF8BLL * ((*(v5 + 16) - *(v5 + 8)) >> 3));
  }
}

void sub_100086834(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 224);
  if (v2)
  {
    if ((v2 + 8) != a2)
    {
      v5 = *(v2 + 8);
      v4 = *(v2 + 16);
      v6 = v4 - v5;
      v7 = a2[2];
      v8 = *a2;
      if (v7 - *a2 < (v4 - v5))
      {
        v9 = 0xCCCCCCCCCCCCCCCDLL * (v6 >> 3);
        if (v8)
        {
          v10 = a2[1];
          v11 = *a2;
          if (v10 != v8)
          {
            do
            {
              v10 -= 40;
              sub_1000470C4(v10);
            }

            while (v10 != v8);
            v11 = *a2;
          }

          a2[1] = v8;
          operator delete(v11);
          v7 = 0;
          *a2 = 0;
          a2[1] = 0;
          a2[2] = 0;
        }

        if (v9 <= 0x666666666666666)
        {
          v12 = 0xCCCCCCCCCCCCCCCDLL * (v7 >> 3);
          v13 = 2 * v12;
          if (2 * v12 <= v9)
          {
            v13 = v9;
          }

          if (v12 >= 0x333333333333333)
          {
            v14 = 0x666666666666666;
          }

          else
          {
            v14 = v13;
          }

          if (v14 <= 0x666666666666666)
          {
            sub_1000799C0(a2, v14);
          }
        }

        sub_10000509C();
      }

      v16 = a2[1] - v8;
      if (v16 >= v6)
      {
        v17 = sub_100086D08(v5, v4, *a2);
        for (i = a2[1]; i != v17; sub_1000470C4(i))
        {
          i -= 40;
        }

        a2[1] = v17;
      }

      else
      {
        sub_100086D08(v5, (v5 + v16), *a2);
        a2[1] = sub_100086C20(v5 + v16, v4, a2[1]);
      }
    }
  }

  else
  {
    v15 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v19[0] = 68289026;
      v19[1] = 0;
      v20 = 2082;
      v21 = "";
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#countryAssetConfig,getGeoChannelMaps,asset not defined}", v19, 0x12u);
    }
  }
}

void sub_100086A78()
{
  exception = __cxa_allocate_exception(8uLL);
}

uint64_t sub_100086AC4(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_100086B4C(result, a4);
  }

  return result;
}

void sub_100086B2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_10006EB04(&a9);
  _Unwind_Resume(a1);
}

void sub_100086B4C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xEA0EA0EA0EA0EBLL)
  {
    sub_10006EAA8(a1, a2);
  }

  sub_10000509C();
}

uint64_t sub_100086B9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      sub_10006E650(a4, v6);
      v6 += 280;
      a4 += 280;
      v7 -= 280;
    }

    while (v6 != a3);
  }

  return a4;
}

void sub_100086BFC(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 - 280;
    do
    {
      v4 = sub_10006E900(v4) - 280;
      v2 += 280;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100086C20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v6 = 0;
    do
    {
      v7 = a3 + v6;
      v8 = a1 + v6;
      v9 = *(a1 + v6 + 8);
      *v7 = *(a1 + v6);
      *(v7 + 8) = v9;
      if (v9)
      {
        atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      }

      if (*(v8 + 39) < 0)
      {
        sub_100004CEC((v7 + 16), *(v8 + 16), *(a1 + v6 + 24));
      }

      else
      {
        v10 = *(v8 + 16);
        *(v7 + 32) = *(v8 + 32);
        *(v7 + 16) = v10;
      }

      v6 += 40;
    }

    while (v8 + 40 != a2);
    a3 += v6;
  }

  return a3;
}

void sub_100086CCC(_Unwind_Exception *exception_object)
{
  v4 = v1 + v2;
  v5 = *(v4 + 8);
  if (v5)
  {
    sub_10002A838(v5);
  }

  if (v2)
  {
    v6 = v4 - 40;
    v7 = -v2;
    do
    {
      sub_1000470C4(v6);
      v6 -= 40;
      v7 += 40;
    }

    while (v7);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100086D08(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      v7 = *v5;
      v6 = v5[1];
      if (v6)
      {
        atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
      }

      v8 = *(a3 + 8);
      *a3 = v7;
      *(a3 + 8) = v6;
      if (v8)
      {
        sub_10002A838(v8);
      }

      std::string::operator=((a3 + 16), (v5 + 2));
      a3 += 40;
      v5 += 5;
    }

    while (v5 != a2);
  }

  return a3;
}

BOOL sub_100086D84(uint64_t a1, void *a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, unsigned int *a7)
{
  v8 = SACommonUtils::copyDataAndReturnNewLen((a3 + 36), (a1 + *a4), a2, 4u, 4uLL, a4, a7);
  v9 = v8;
  if (v8)
  {
    *a4 = v8;
  }

  v10 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *a4;
    v13[0] = 68289283;
    v13[1] = 0;
    v14 = 2082;
    v15 = "";
    v16 = 1025;
    v17 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ibp,readSentTime, offset:%{private}d}", v13, 0x18u);
  }

  return v9 != 0;
}

BOOL sub_100086E90(uint64_t a1, void *a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, unsigned int *a7)
{
  v17 = 0;
  v10 = SACommonUtils::copyDataAndReturnNewLen(&v17, (a1 + *a4), a2, 1u, 1uLL, a4, a7);
  v11 = v10;
  if (v10)
  {
    *a4 = v10;
  }

  v12 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(a1 + *a4);
    *buf = 68289539;
    v19 = 0;
    v20 = 2082;
    v21 = "";
    v22 = 1025;
    v23 = v13;
    v24 = 1025;
    v25 = v17;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ibp,readAndValidateExpInfo, alertData[offset]:%{private}d, unsignedByte:%{private}d}", buf, 0x1Eu);
    v12 = SALogObjectGeneral;
  }

  v14 = v17;
  *(a3 + 40) = v17 & 3;
  *(a3 + 41) = v14 >> 2;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v15 = *a4;
    *buf = 68289283;
    v19 = 0;
    v20 = 2082;
    v21 = "";
    v22 = 1025;
    v23 = v15;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ibp,readAndValidateExpInfo, offset:%{private}d}", buf, 0x18u);
  }

  return v11 != 0;
}

BOOL sub_10008703C(uint64_t a1, void *a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, unsigned int *a7)
{
  v8 = SACommonUtils::copyDataAndReturnNewLen((a3 + 42), (a1 + *a4), a2, 2u, 2uLL, a4, a7);
  v9 = v8;
  if (v8)
  {
    *a4 = v8;
  }

  v10 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *a4;
    v13[0] = 68289283;
    v13[1] = 0;
    v14 = 2082;
    v15 = "";
    v16 = 1025;
    v17 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ibp,readOriginTime, offset:%{private}d}", v13, 0x18u);
  }

  return v9 != 0;
}

BOOL sub_100087148(uint64_t a1, void *a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, unsigned int *a7)
{
  v8 = SACommonUtils::copyDataAndReturnNewLen((a3 + 96), (a1 + *a4), a2, 1u, 1uLL, a4, a7);
  v9 = v8;
  if (v8)
  {
    *a4 = v8;
  }

  v10 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *a4;
    v13[0] = 68289283;
    v13[1] = 0;
    v14 = 2082;
    v15 = "";
    v16 = 1025;
    v17 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ibp,readAdvertiserTime, offset:%{private}d}", v13, 0x18u);
  }

  return v9 != 0;
}

BOOL sub_100087254(uint64_t a1, void *a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int *a7)
{
  v13 = 0;
  v8 = SACommonUtils::copyDataAndReturnNewLen(&v13, (a1 + *a3), a2, 1u, 1uLL, a3, a7);
  v9 = v8;
  if (v8)
  {
    *a3 = v8;
  }

  v10 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *a3;
    *buf = 68289283;
    v15 = 0;
    v16 = 2082;
    v17 = "";
    v18 = 1025;
    v19 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ibp,readAndValidateReserveByte, offset:%{private}d}", buf, 0x18u);
  }

  return v9 != 0;
}

BOOL sub_100087364(uint64_t a1, void *a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, unsigned int *a7)
{
  v8 = SACommonUtils::copyDataAndReturnNewLen((a3 + 46), (a1 + *a4), a2, 1u, 1uLL, a4, a7);
  v9 = v8;
  if (v8)
  {
    *a4 = v8;
  }

  v10 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *a4;
    v13[0] = 68289283;
    v13[1] = 0;
    v14 = 2082;
    v15 = "";
    v16 = 1025;
    v17 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ibp,readMagnitude, offset:%{private}d}", v13, 0x18u);
  }

  return v9 != 0;
}

BOOL sub_100087470(uint64_t a1, void *a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, unsigned int *a7)
{
  v8 = SACommonUtils::copyDataAndReturnNewLen((a3 + 47), (a1 + *a4), a2, 1u, 1uLL, a4, a7);
  v9 = v8;
  if (v8)
  {
    *a4 = v8;
  }

  v10 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *a4;
    v13[0] = 68289283;
    v13[1] = 0;
    v14 = 2082;
    v15 = "";
    v16 = 1025;
    v17 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ibp,readMMI, offset:%{private}d}", v13, 0x18u);
  }

  return v9 != 0;
}

BOOL sub_10008757C(uint64_t a1, void *a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, unsigned int *a7)
{
  v18 = 0;
  v10 = SACommonUtils::copyDataAndReturnNewLen(&v18, (a1 + *a4), a2, 1u, 1uLL, a4, a7);
  v11 = v10;
  if (v10)
  {
    *a4 = v10;
    v12 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + v11);
      *buf = 68289539;
      v20 = 0;
      v21 = 2082;
      v22 = "";
      v23 = 1025;
      v24 = v13;
      v25 = 1025;
      v26 = v18;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ibp,readAndValidateGeoCode, alertData[offset]:%{private}d, unsignedByte:%{private}d}", buf, 0x1Eu);
    }

    v14 = v18;
    *(a3 + 48) = v18 & 0xF;
    *(a3 + 49) = v14 >> 5;
  }

  v15 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v16 = *a4;
    *buf = 68289283;
    v20 = 0;
    v21 = 2082;
    v22 = "";
    v23 = 1025;
    v24 = v16;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ibp,readAndValidateGeoCode, offset:%{private}d}", buf, 0x18u);
  }

  return v11 != 0;
}

BOOL sub_100087724(uint64_t a1, void *a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, unsigned int *a7)
{
  v18 = 0;
  v9 = SACommonUtils::copyDataAndReturnNewLen(&v18, (a1 + *a4), a2, 5u, 5uLL, a4, a7);
  v10 = v9;
  if (v9)
  {
    *a4 = v9;
    v11 = v18;
    v12 = v18 & 0x7FFFE;
    v13 = (v18 >> 19) & 0xFFFFF;
    *(a3 + 52) = v18 & 0x7FFFE;
    *(a3 + 56) = v13;
    v14 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289795;
      v20 = 0;
      v21 = 2082;
      v22 = "";
      v23 = 1025;
      v24 = v12;
      v25 = 1025;
      v26 = v13;
      v27 = 2049;
      v28 = v11;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ibp,readAndValidateEpiCenter, epi_latitude:%{private}d, epi_longitude:%{private}d, unsignedByte:%{private}llu}", buf, 0x28u);
    }
  }

  v15 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v16 = *a4;
    *buf = 68289539;
    v20 = 0;
    v21 = 2082;
    v22 = "";
    v23 = 1025;
    v24 = v16;
    v25 = 1025;
    v26 = v10 != 0;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ibp,readAndValidateEpiCenter, offset:%{private}d, res:%{private}d}", buf, 0x1Eu);
  }

  return v10 != 0;
}

BOOL sub_1000878E4(uint64_t a1, void *a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, unsigned int *a7)
{
  v9 = SACommonUtils::copyDataAndReturnNewLen((a3 + 60), (a1 + *a4), a2, 1u, 1uLL, a4, a7);
  v10 = v9;
  if (v9)
  {
    *a4 = v9;
  }

  v11 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(a3 + 60);
    v13 = *a4;
    v15[0] = 68289539;
    v15[1] = 0;
    v16 = 2082;
    v17 = "";
    v18 = 1025;
    v19 = v12;
    v20 = 1025;
    v21 = v13;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ibp,readAndValidateStrongShakeRadius, strongShakeRadius:%{private}d, offset:%{private}d}", v15, 0x1Eu);
  }

  return v10 != 0;
}

BOOL sub_1000879FC(uint64_t a1, void *a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, unsigned int *a7)
{
  v8 = SACommonUtils::copyDataAndReturnNewLen((a3 + 61), (a1 + *a4), a2, 1u, 1uLL, a4, a7);
  v9 = v8;
  if (v8)
  {
    *a4 = v8;
  }

  v10 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *a4;
    v13[0] = 68289283;
    v13[1] = 0;
    v14 = 2082;
    v15 = "";
    v16 = 1025;
    v17 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ibp,readAndValidateRange, offset:%{private}d}", v13, 0x18u);
  }

  return v9 != 0;
}

BOOL sub_100087B08(uint64_t a1, void *a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, unsigned int *a7)
{
  v8 = SACommonUtils::copyDataAndReturnNewLen((a3 + 62), (a1 + *a4), a2, 2u, 2uLL, a4, a7);
  v9 = v8;
  if (v8)
  {
    *a4 = v8;
  }

  v10 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *a4;
    v13[0] = 68289283;
    v13[1] = 0;
    v14 = 2082;
    v15 = "";
    v16 = 1025;
    v17 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ibp,readAndValidateLanguageCode, offset:%{private}d}", v13, 0x18u);
  }

  return v9 != 0;
}

BOOL sub_100087C14(uint64_t a1, void *a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, unsigned int *a7)
{
  v8 = SACommonUtils::copyDataAndReturnNewLen((a3 + 64), (a1 + *a4), a2, 2u, 2uLL, a4, a7);
  v9 = v8;
  if (v8)
  {
    *a4 = v8;
  }

  v10 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *a4;
    v13[0] = 68289283;
    v13[1] = 0;
    v14 = 2082;
    v15 = "";
    v16 = 1025;
    v17 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ibp,readAndValidateCountryCode, offset:%{private}d}", v13, 0x18u);
  }

  return v9 != 0;
}

BOOL sub_100087D20(uint64_t a1, void *a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, unsigned int *a7)
{
  v8 = SACommonUtils::copyDataAndReturnNewLen((a3 + 66), (a1 + *a4), a2, 1u, 1uLL, a4, a7);
  v9 = v8;
  if (v8)
  {
    *a4 = v8;
  }

  v10 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *a4;
    v13[0] = 68289283;
    v13[1] = 0;
    v14 = 2082;
    v15 = "";
    v16 = 1025;
    v17 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ibp,readAndValidateMessageLen, offset:%{private}d}", v13, 0x18u);
  }

  return v9 != 0;
}

BOOL sub_100087E2C(uint64_t a1, void *a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, unsigned int *a7)
{
  v8 = SACommonUtils::copyDataAndReturnNewLen((a3 + 72), (a1 + *a4), a2, *(a3 + 66), *(a3 + 66), a4, a7);
  v9 = v8;
  if (v8)
  {
    *a4 = v8;
  }

  v10 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *a4;
    v13[0] = 68289283;
    v13[1] = 0;
    v14 = 2082;
    v15 = "";
    v16 = 1025;
    v17 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ibp,readAndValidateMessageData, offset:%{private}d}", v13, 0x18u);
  }

  return v9 != 0;
}

uint64_t sub_100087F38(char *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int *a7)
{
  if (a1 && a2)
  {
    __p[0] = 0;
    __p[1] = 0;
    v294 = 0;
    v304 = 0;
    v305 = 0;
    v306 = 0;
    v292 = 0;
    *__s = 0;
    v10 = SACommonUtils::copyDataAndReturnNewLen(__s, a1, a2, 3u, 3uLL, &v292, a7);
    v11 = v10;
    if (v10)
    {
      v292 = v10;
      sub_1000060C4(buf, __s);
      if (SHIBYTE(v294) < 0)
      {
        operator delete(__p[0]);
      }

      *__p = *buf;
      v294 = *&buf[16];
    }

    v12 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v14 = __p;
      if (v294 < 0)
      {
        v14 = __p[0];
      }

      *buf = 68289795;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 1025;
      *&buf[20] = v292;
      *&buf[24] = 2081;
      *&buf[26] = a1;
      *&buf[34] = 2081;
      *&buf[36] = v14;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ibp,readAndValidateRegionCode, offset:%{private}d, alertData:%{private, location:escape_only}s, regionCode:%{private, location:escape_only}s}", buf, 0x2Cu);
    }

    if (v11)
    {
      v15 = SACommonUtils::copyDataAndReturnNewLen(&v295, &a1[v292], a2, 2u, 2uLL, &v292, v13);
      if (v15)
      {
        v292 = v15;
      }

      v16 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289283;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 1025;
        *&buf[20] = v295;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ibp,readAndValidateSender, Sender:%{private}d}", buf, 0x18u);
      }

      v17 = sub_10008BE20(v295);
      v295 = v17;
      v18 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289283;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 1025;
        *&buf[20] = v17;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ibp,readAndValidateSender, Sender:%{private}d}", buf, 0x18u);
        v18 = SALogObjectGeneral;
      }

      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289283;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 1025;
        *&buf[20] = v292;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ibp,readAndValidateSender, offset:%{private}d}", buf, 0x18u);
      }

      v20 = SACommonUtils::copyDataAndReturnNewLen(v296, &a1[v292], a2, 1u, 1uLL, &v292, v19);
      v21 = v20 != 0;
      if (v20)
      {
        v292 = v20;
      }

      v22 = v296[0];
      v23 = SALogObjectGeneral;
      if (v296[0] != 18)
      {
        if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 68289283;
          *&buf[4] = 0;
          *&buf[8] = 2082;
          *&buf[10] = "";
          *&buf[18] = 1025;
          *&buf[20] = v22;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ibp,readAndValidateEventByte,invalid, eventType:%{private}d}", buf, 0x18u);
          v21 = 0;
          v23 = SALogObjectGeneral;
        }

        else
        {
          v21 = 0;
        }
      }

      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289283;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 1025;
        *&buf[20] = v292;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ibp,readAndValidateEventByte, offset:%{private}d}", buf, 0x18u);
      }

      if (v21)
      {
        __s[0] = 0;
        v49 = SACommonUtils::copyDataAndReturnNewLen(__s, &a1[v292], a2, 1u, 1uLL, &v292, v48);
        v50 = v49 != 0;
        if (v49)
        {
          v292 = v49;
          v296[1] = __s[0] & 0xF;
          v51 = __s[0] >> 4;
          v297 = __s[0] >> 4;
        }

        else
        {
          v51 = v297;
        }

        v61 = SALogObjectGeneral;
        if (v51 != 1)
        {
          if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 68289539;
            *&buf[4] = 0;
            *&buf[8] = 2082;
            *&buf[10] = "";
            *&buf[18] = 1025;
            *&buf[20] = v51;
            *&buf[24] = 1025;
            *&buf[26] = __s[0];
            _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ibp,readAndValidateEventInfo,invalid, eventInfoEventCategory:%{private}d, unsignedByte:%{private}d}", buf, 0x1Eu);
            v50 = 0;
            v61 = SALogObjectGeneral;
          }

          else
          {
            v50 = 0;
          }
        }

        if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 68289283;
          *&buf[4] = 0;
          *&buf[8] = 2082;
          *&buf[10] = "";
          *&buf[18] = 1025;
          *&buf[20] = v292;
          _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ibp,readAndValidateEventInfo, offset:%{private}d}", buf, 0x18u);
        }

        if (v50)
        {
          __s[0] = 0;
          v63 = SACommonUtils::copyDataAndReturnNewLen(__s, &a1[v292], a2, 1u, 1uLL, &v292, v62);
          v64 = v63 != 0;
          if (v63)
          {
            v292 = v63;
            v65 = __s[0] & 0x1F;
            v298 = __s[0] & 0x1F;
            v299 = (__s[0] & 0x20) != 0;
          }

          else
          {
            v65 = v298;
          }

          v75 = SALogObjectGeneral;
          if (v65 != 4)
          {
            if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 68289283;
              *&buf[4] = 0;
              *&buf[8] = 2082;
              *&buf[10] = "";
              *&buf[18] = 1025;
              *&buf[20] = v65;
              _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ibp,readAndValidateAlertInfo,invalid, alertInfoAlertType:%{private}d}", buf, 0x18u);
              v64 = 0;
              v75 = SALogObjectGeneral;
            }

            else
            {
              v64 = 0;
            }
          }

          if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 68289283;
            *&buf[4] = 0;
            *&buf[8] = 2082;
            *&buf[10] = "";
            *&buf[18] = 1025;
            *&buf[20] = v292;
            _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ibp,readAndValidateAlertInfo, offset:%{private}d}", buf, 0x18u);
          }

          if (v64)
          {
            __s[0] = 0;
            v77 = SACommonUtils::copyDataAndReturnNewLen(__s, &a1[v292], a2, 1u, 1uLL, &v292, v76);
            v78 = v77;
            if (v77)
            {
              v292 = v77;
              v300 = __s[0] & 3;
              v301 = (__s[0] >> 3) & 0xF;
              v302 = __s[0] >> 7;
            }

            v79 = SALogObjectGeneral;
            if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 68289283;
              *&buf[4] = 0;
              *&buf[8] = 2082;
              *&buf[10] = "";
              *&buf[18] = 1025;
              *&buf[20] = v292;
              _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ibp,readAndValidateMsgInfo, offset:%{private}d}", buf, 0x18u);
            }

            if (v78)
            {
              if (sub_100086D84(a1, a2, __p, &v292, v80, v81, v82))
              {
                if (sub_100086E90(a1, a2, __p, &v292, v83, v84, v85))
                {
                  if (sub_10008703C(a1, a2, __p, &v292, v86, v87, v88))
                  {
                    if (sub_100087254(a1, a2, &v292, v89, v90, v91, v92))
                    {
                      if (sub_100087148(a1, a2, __p, &v292, v93, v94, v95))
                      {
                        if (sub_100087364(a1, a2, __p, &v292, v96, v97, v98))
                        {
                          if (sub_100087470(a1, a2, __p, &v292, v99, v100, v101))
                          {
                            if (sub_10008757C(a1, a2, __p, &v292, v102, v103, v104))
                            {
                              if (sub_100087724(a1, a2, __p, &v292, v105, v106, v107))
                              {
                                if (sub_1000878E4(a1, a2, __p, &v292, v108, v109, v110))
                                {
                                  if (sub_1000879FC(a1, a2, __p, &v292, v111, v112, v113))
                                  {
                                    if ((v302 & 1) == 0)
                                    {
LABEL_90:
                                      sub_10008A74C(__p, a3);
                                      v117 = SALogObjectGeneral;
                                      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
                                      {
                                        v120 = *(a3 + 152);
                                        v119 = a3 + 152;
                                        v118 = v120;
                                        if (*(v119 + 23) >= 0)
                                        {
                                          v118 = v119;
                                        }

                                        v121 = *(v119 + 200);
                                        v122 = *(v119 + 232);
                                        v123 = *(v119 + 32);
                                        v124 = *(v119 + 40);
                                        v125 = *(v119 + 48);
                                        v126 = *(v119 + 56);
                                        v127 = *(v119 + 64);
                                        v128 = *(v119 + 168);
                                        *buf = 68292355;
                                        *&buf[4] = 0;
                                        *&buf[8] = 2082;
                                        *&buf[10] = "";
                                        *&buf[18] = 2081;
                                        *&buf[20] = "info";
                                        *&buf[28] = 2081;
                                        *&buf[30] = "igAlertFlow";
                                        *&buf[38] = 2081;
                                        *&buf[40] = "ibp";
                                        v309 = 2081;
                                        v310 = "parse";
                                        v311 = 2081;
                                        v312 = v118;
                                        v313 = 1025;
                                        v314 = v121;
                                        v315 = 1025;
                                        v316 = v122;
                                        v317 = 2049;
                                        v318 = v123;
                                        v319 = 2049;
                                        v320 = v124;
                                        v321 = 2049;
                                        v322 = v125;
                                        v323 = 2049;
                                        v324 = v126;
                                        v325 = 2049;
                                        v326 = v127;
                                        v327 = 2049;
                                        v328 = v128;
                                        _os_log_impl(&_mh_execute_header, v117, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:parse Ble alert done, alertLevel:%{private, location:escape_only}s, purpose:%{private, location:escape_only}s, class:%{private, location:escape_only}s, function:%{private, location:escape_only}s, uid:%{private, location:escape_only}s, interface:%{private}d, transport:%{private}d, ingressToServerTime:%{private}.3f, egressFromSourceTime:%{private}.3f, eventOriginTime:%{private}.3f, effectiveTime:%{private}.3f, expiryTime:%{private}.3f, advTime:%{private}.3f}", buf, 0x8Cu);
                                      }

                                      v25 = 1;
                                      goto LABEL_175;
                                    }

                                    if (sub_100087B08(a1, a2, __p, &v292, v114, v115, v116))
                                    {
                                      if (sub_100087C14(a1, a2, __p, &v292, v247, v248, v249))
                                      {
                                        if (sub_100087D20(a1, a2, __p, &v292, v250, v251, v252))
                                        {
                                          if (!v303 || sub_100087E2C(a1, a2, __p, &v292, v253, v254, v255))
                                          {
                                            goto LABEL_90;
                                          }

                                          v37 = SALogObjectGeneral;
                                          if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
                                          {
                                            *buf = 68289026;
                                            *&buf[4] = 0;
                                            *&buf[8] = 2082;
                                            *&buf[10] = "";
                                            _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ibp,parse,invalid messageData}", buf, 0x12u);
                                            v37 = SALogObjectGeneral;
                                          }

                                          if (!os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
                                          {
LABEL_174:
                                            sub_10008A74C(__p, a3);
                                            v25 = 0;
LABEL_175:
                                            if (SHIBYTE(v306) < 0)
                                            {
                                              operator delete(v304);
                                            }

                                            if (SHIBYTE(v294) < 0)
                                            {
                                              operator delete(__p[0]);
                                            }

                                            return v25;
                                          }

                                          v256 = *(a3 + 152);
                                          if (*(a3 + 175) >= 0)
                                          {
                                            v256 = a3 + 152;
                                          }

                                          v257 = *(a3 + 352);
                                          v258 = *(a3 + 384);
                                          v259 = *(a3 + 184);
                                          v260 = *(a3 + 192);
                                          v261 = *(a3 + 200);
                                          v262 = *(a3 + 208);
                                          v263 = *(a3 + 216);
                                          v264 = *(a3 + 320);
                                          *buf = 68292355;
                                          *&buf[4] = 0;
                                          *&buf[8] = 2082;
                                          *&buf[10] = "";
                                          *&buf[18] = 2081;
                                          *&buf[20] = "warning";
                                          *&buf[28] = 2081;
                                          *&buf[30] = "igAlertFlow";
                                          *&buf[38] = 2081;
                                          *&buf[40] = "ibp";
                                          v309 = 2081;
                                          v310 = "parse";
                                          v311 = 2081;
                                          v312 = v256;
                                          v313 = 1025;
                                          v314 = v257;
                                          v315 = 1025;
                                          v316 = v258;
                                          v317 = 2049;
                                          v318 = v259;
                                          v319 = 2049;
                                          v320 = v260;
                                          v321 = 2049;
                                          v322 = v261;
                                          v323 = 2049;
                                          v324 = v262;
                                          v325 = 2049;
                                          v326 = v263;
                                          v327 = 2049;
                                          v328 = v264;
                                          v47 = "{msg%{public}.0s:invalid message data, alertLevel:%{private, location:escape_only}s, purpose:%{private, location:escape_only}s, class:%{private, location:escape_only}s, function:%{private, location:escape_only}s, uid:%{private, location:escape_only}s, interface:%{private}d, transport:%{private}d, ingressToServerTime:%{private}.3f, egressFromSourceTime:%{private}.3f, eventOriginTime:%{private}.3f, effectiveTime:%{private}.3f, expiryTime:%{private}.3f, advTime:%{private}.3f}";
                                        }

                                        else
                                        {
                                          v37 = SALogObjectGeneral;
                                          if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
                                          {
                                            *buf = 68289026;
                                            *&buf[4] = 0;
                                            *&buf[8] = 2082;
                                            *&buf[10] = "";
                                            _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ibp,parse,invalid MessageLen}", buf, 0x12u);
                                            v37 = SALogObjectGeneral;
                                          }

                                          if (!os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
                                          {
                                            goto LABEL_174;
                                          }

                                          v283 = *(a3 + 152);
                                          if (*(a3 + 175) >= 0)
                                          {
                                            v283 = a3 + 152;
                                          }

                                          v284 = *(a3 + 352);
                                          v285 = *(a3 + 384);
                                          v286 = *(a3 + 184);
                                          v287 = *(a3 + 192);
                                          v288 = *(a3 + 200);
                                          v289 = *(a3 + 208);
                                          v290 = *(a3 + 216);
                                          v291 = *(a3 + 320);
                                          *buf = 68292355;
                                          *&buf[4] = 0;
                                          *&buf[8] = 2082;
                                          *&buf[10] = "";
                                          *&buf[18] = 2081;
                                          *&buf[20] = "warning";
                                          *&buf[28] = 2081;
                                          *&buf[30] = "igAlertFlow";
                                          *&buf[38] = 2081;
                                          *&buf[40] = "ibp";
                                          v309 = 2081;
                                          v310 = "parse";
                                          v311 = 2081;
                                          v312 = v283;
                                          v313 = 1025;
                                          v314 = v284;
                                          v315 = 1025;
                                          v316 = v285;
                                          v317 = 2049;
                                          v318 = v286;
                                          v319 = 2049;
                                          v320 = v287;
                                          v321 = 2049;
                                          v322 = v288;
                                          v323 = 2049;
                                          v324 = v289;
                                          v325 = 2049;
                                          v326 = v290;
                                          v327 = 2049;
                                          v328 = v291;
                                          v47 = "{msg%{public}.0s:invalid MessageLen, alertLevel:%{private, location:escape_only}s, purpose:%{private, location:escape_only}s, class:%{private, location:escape_only}s, function:%{private, location:escape_only}s, uid:%{private, location:escape_only}s, interface:%{private}d, transport:%{private}d, ingressToServerTime:%{private}.3f, egressFromSourceTime:%{private}.3f, eventOriginTime:%{private}.3f, effectiveTime:%{private}.3f, expiryTime:%{private}.3f, advTime:%{private}.3f}";
                                        }
                                      }

                                      else
                                      {
                                        v37 = SALogObjectGeneral;
                                        if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
                                        {
                                          *buf = 68289026;
                                          *&buf[4] = 0;
                                          *&buf[8] = 2082;
                                          *&buf[10] = "";
                                          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ibp,parse,invalid CountryCode}", buf, 0x12u);
                                          v37 = SALogObjectGeneral;
                                        }

                                        if (!os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
                                        {
                                          goto LABEL_174;
                                        }

                                        v274 = *(a3 + 152);
                                        if (*(a3 + 175) >= 0)
                                        {
                                          v274 = a3 + 152;
                                        }

                                        v275 = *(a3 + 352);
                                        v276 = *(a3 + 384);
                                        v277 = *(a3 + 184);
                                        v278 = *(a3 + 192);
                                        v279 = *(a3 + 200);
                                        v280 = *(a3 + 208);
                                        v281 = *(a3 + 216);
                                        v282 = *(a3 + 320);
                                        *buf = 68292355;
                                        *&buf[4] = 0;
                                        *&buf[8] = 2082;
                                        *&buf[10] = "";
                                        *&buf[18] = 2081;
                                        *&buf[20] = "warning";
                                        *&buf[28] = 2081;
                                        *&buf[30] = "igAlertFlow";
                                        *&buf[38] = 2081;
                                        *&buf[40] = "ibp";
                                        v309 = 2081;
                                        v310 = "parse";
                                        v311 = 2081;
                                        v312 = v274;
                                        v313 = 1025;
                                        v314 = v275;
                                        v315 = 1025;
                                        v316 = v276;
                                        v317 = 2049;
                                        v318 = v277;
                                        v319 = 2049;
                                        v320 = v278;
                                        v321 = 2049;
                                        v322 = v279;
                                        v323 = 2049;
                                        v324 = v280;
                                        v325 = 2049;
                                        v326 = v281;
                                        v327 = 2049;
                                        v328 = v282;
                                        v47 = "{msg%{public}.0s:invalid country code, alertLevel:%{private, location:escape_only}s, purpose:%{private, location:escape_only}s, class:%{private, location:escape_only}s, function:%{private, location:escape_only}s, uid:%{private, location:escape_only}s, interface:%{private}d, transport:%{private}d, ingressToServerTime:%{private}.3f, egressFromSourceTime:%{private}.3f, eventOriginTime:%{private}.3f, effectiveTime:%{private}.3f, expiryTime:%{private}.3f, advTime:%{private}.3f}";
                                      }
                                    }

                                    else
                                    {
                                      v37 = SALogObjectGeneral;
                                      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
                                      {
                                        *buf = 68289026;
                                        *&buf[4] = 0;
                                        *&buf[8] = 2082;
                                        *&buf[10] = "";
                                        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ibp,parse,invalid Lang Code}", buf, 0x12u);
                                        v37 = SALogObjectGeneral;
                                      }

                                      if (!os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
                                      {
                                        goto LABEL_174;
                                      }

                                      v265 = *(a3 + 152);
                                      if (*(a3 + 175) >= 0)
                                      {
                                        v265 = a3 + 152;
                                      }

                                      v266 = *(a3 + 352);
                                      v267 = *(a3 + 384);
                                      v268 = *(a3 + 184);
                                      v269 = *(a3 + 192);
                                      v270 = *(a3 + 200);
                                      v271 = *(a3 + 208);
                                      v272 = *(a3 + 216);
                                      v273 = *(a3 + 320);
                                      *buf = 68292355;
                                      *&buf[4] = 0;
                                      *&buf[8] = 2082;
                                      *&buf[10] = "";
                                      *&buf[18] = 2081;
                                      *&buf[20] = "warning";
                                      *&buf[28] = 2081;
                                      *&buf[30] = "igAlertFlow";
                                      *&buf[38] = 2081;
                                      *&buf[40] = "ibp";
                                      v309 = 2081;
                                      v310 = "parse";
                                      v311 = 2081;
                                      v312 = v265;
                                      v313 = 1025;
                                      v314 = v266;
                                      v315 = 1025;
                                      v316 = v267;
                                      v317 = 2049;
                                      v318 = v268;
                                      v319 = 2049;
                                      v320 = v269;
                                      v321 = 2049;
                                      v322 = v270;
                                      v323 = 2049;
                                      v324 = v271;
                                      v325 = 2049;
                                      v326 = v272;
                                      v327 = 2049;
                                      v328 = v273;
                                      v47 = "{msg%{public}.0s:invalid language code, alertLevel:%{private, location:escape_only}s, purpose:%{private, location:escape_only}s, class:%{private, location:escape_only}s, function:%{private, location:escape_only}s, uid:%{private, location:escape_only}s, interface:%{private}d, transport:%{private}d, ingressToServerTime:%{private}.3f, egressFromSourceTime:%{private}.3f, eventOriginTime:%{private}.3f, effectiveTime:%{private}.3f, expiryTime:%{private}.3f, advTime:%{private}.3f}";
                                    }
                                  }

                                  else
                                  {
                                    v37 = SALogObjectGeneral;
                                    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
                                    {
                                      *buf = 68289026;
                                      *&buf[4] = 0;
                                      *&buf[8] = 2082;
                                      *&buf[10] = "";
                                      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ibp,parse,invalid Range}", buf, 0x12u);
                                      v37 = SALogObjectGeneral;
                                    }

                                    if (!os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
                                    {
                                      goto LABEL_174;
                                    }

                                    v237 = *(a3 + 152);
                                    if (*(a3 + 175) >= 0)
                                    {
                                      v237 = a3 + 152;
                                    }

                                    v238 = *(a3 + 352);
                                    v239 = *(a3 + 384);
                                    v240 = *(a3 + 184);
                                    v241 = *(a3 + 192);
                                    v242 = *(a3 + 200);
                                    v243 = *(a3 + 208);
                                    v244 = *(a3 + 216);
                                    v245 = *(a3 + 320);
                                    *buf = 68292355;
                                    *&buf[4] = 0;
                                    *&buf[8] = 2082;
                                    *&buf[10] = "";
                                    *&buf[18] = 2081;
                                    *&buf[20] = "warning";
                                    *&buf[28] = 2081;
                                    *&buf[30] = "igAlertFlow";
                                    *&buf[38] = 2081;
                                    *&buf[40] = "ibp";
                                    v309 = 2081;
                                    v310 = "parse";
                                    v311 = 2081;
                                    v312 = v237;
                                    v313 = 1025;
                                    v314 = v238;
                                    v315 = 1025;
                                    v316 = v239;
                                    v317 = 2049;
                                    v318 = v240;
                                    v319 = 2049;
                                    v320 = v241;
                                    v321 = 2049;
                                    v322 = v242;
                                    v323 = 2049;
                                    v324 = v243;
                                    v325 = 2049;
                                    v326 = v244;
                                    v327 = 2049;
                                    v328 = v245;
                                    v47 = "{msg%{public}.0s:invalid Range, alertLevel:%{private, location:escape_only}s, purpose:%{private, location:escape_only}s, class:%{private, location:escape_only}s, function:%{private, location:escape_only}s, uid:%{private, location:escape_only}s, interface:%{private}d, transport:%{private}d, ingressToServerTime:%{private}.3f, egressFromSourceTime:%{private}.3f, eventOriginTime:%{private}.3f, effectiveTime:%{private}.3f, expiryTime:%{private}.3f, advTime:%{private}.3f}";
                                  }
                                }

                                else
                                {
                                  v37 = SALogObjectGeneral;
                                  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
                                  {
                                    *buf = 68289026;
                                    *&buf[4] = 0;
                                    *&buf[8] = 2082;
                                    *&buf[10] = "";
                                    _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ibp,parse,invalid strong shake radius}", buf, 0x12u);
                                    v37 = SALogObjectGeneral;
                                  }

                                  if (!os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
                                  {
                                    goto LABEL_174;
                                  }

                                  v228 = *(a3 + 152);
                                  if (*(a3 + 175) >= 0)
                                  {
                                    v228 = a3 + 152;
                                  }

                                  v229 = *(a3 + 352);
                                  v230 = *(a3 + 384);
                                  v231 = *(a3 + 184);
                                  v232 = *(a3 + 192);
                                  v233 = *(a3 + 200);
                                  v234 = *(a3 + 208);
                                  v235 = *(a3 + 216);
                                  v236 = *(a3 + 320);
                                  *buf = 68292355;
                                  *&buf[4] = 0;
                                  *&buf[8] = 2082;
                                  *&buf[10] = "";
                                  *&buf[18] = 2081;
                                  *&buf[20] = "warning";
                                  *&buf[28] = 2081;
                                  *&buf[30] = "igAlertFlow";
                                  *&buf[38] = 2081;
                                  *&buf[40] = "ibp";
                                  v309 = 2081;
                                  v310 = "parse";
                                  v311 = 2081;
                                  v312 = v228;
                                  v313 = 1025;
                                  v314 = v229;
                                  v315 = 1025;
                                  v316 = v230;
                                  v317 = 2049;
                                  v318 = v231;
                                  v319 = 2049;
                                  v320 = v232;
                                  v321 = 2049;
                                  v322 = v233;
                                  v323 = 2049;
                                  v324 = v234;
                                  v325 = 2049;
                                  v326 = v235;
                                  v327 = 2049;
                                  v328 = v236;
                                  v47 = "{msg%{public}.0s:invalid strong shake radius, alertLevel:%{private, location:escape_only}s, purpose:%{private, location:escape_only}s, class:%{private, location:escape_only}s, function:%{private, location:escape_only}s, uid:%{private, location:escape_only}s, interface:%{private}d, transport:%{private}d, ingressToServerTime:%{private}.3f, egressFromSourceTime:%{private}.3f, eventOriginTime:%{private}.3f, effectiveTime:%{private}.3f, expiryTime:%{private}.3f, advTime:%{private}.3f}";
                                }
                              }

                              else
                              {
                                v37 = SALogObjectGeneral;
                                if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
                                {
                                  *buf = 68289026;
                                  *&buf[4] = 0;
                                  *&buf[8] = 2082;
                                  *&buf[10] = "";
                                  _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ibp,parse,invalid epi center}", buf, 0x12u);
                                  v37 = SALogObjectGeneral;
                                }

                                if (!os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
                                {
                                  goto LABEL_174;
                                }

                                v219 = *(a3 + 152);
                                if (*(a3 + 175) >= 0)
                                {
                                  v219 = a3 + 152;
                                }

                                v220 = *(a3 + 352);
                                v221 = *(a3 + 384);
                                v222 = *(a3 + 184);
                                v223 = *(a3 + 192);
                                v224 = *(a3 + 200);
                                v225 = *(a3 + 208);
                                v226 = *(a3 + 216);
                                v227 = *(a3 + 320);
                                *buf = 68292355;
                                *&buf[4] = 0;
                                *&buf[8] = 2082;
                                *&buf[10] = "";
                                *&buf[18] = 2081;
                                *&buf[20] = "warning";
                                *&buf[28] = 2081;
                                *&buf[30] = "igAlertFlow";
                                *&buf[38] = 2081;
                                *&buf[40] = "ibp";
                                v309 = 2081;
                                v310 = "parse";
                                v311 = 2081;
                                v312 = v219;
                                v313 = 1025;
                                v314 = v220;
                                v315 = 1025;
                                v316 = v221;
                                v317 = 2049;
                                v318 = v222;
                                v319 = 2049;
                                v320 = v223;
                                v321 = 2049;
                                v322 = v224;
                                v323 = 2049;
                                v324 = v225;
                                v325 = 2049;
                                v326 = v226;
                                v327 = 2049;
                                v328 = v227;
                                v47 = "{msg%{public}.0s:invalid epi center, alertLevel:%{private, location:escape_only}s, purpose:%{private, location:escape_only}s, class:%{private, location:escape_only}s, function:%{private, location:escape_only}s, uid:%{private, location:escape_only}s, interface:%{private}d, transport:%{private}d, ingressToServerTime:%{private}.3f, egressFromSourceTime:%{private}.3f, eventOriginTime:%{private}.3f, effectiveTime:%{private}.3f, expiryTime:%{private}.3f, advTime:%{private}.3f}";
                              }
                            }

                            else
                            {
                              v37 = SALogObjectGeneral;
                              if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
                              {
                                *buf = 68289026;
                                *&buf[4] = 0;
                                *&buf[8] = 2082;
                                *&buf[10] = "";
                                _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ibp,parse,invalid GeoCode}", buf, 0x12u);
                                v37 = SALogObjectGeneral;
                              }

                              if (!os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
                              {
                                goto LABEL_174;
                              }

                              v210 = *(a3 + 152);
                              if (*(a3 + 175) >= 0)
                              {
                                v210 = a3 + 152;
                              }

                              v211 = *(a3 + 352);
                              v212 = *(a3 + 384);
                              v213 = *(a3 + 184);
                              v214 = *(a3 + 192);
                              v215 = *(a3 + 200);
                              v216 = *(a3 + 208);
                              v217 = *(a3 + 216);
                              v218 = *(a3 + 320);
                              *buf = 68292355;
                              *&buf[4] = 0;
                              *&buf[8] = 2082;
                              *&buf[10] = "";
                              *&buf[18] = 2081;
                              *&buf[20] = "warning";
                              *&buf[28] = 2081;
                              *&buf[30] = "igAlertFlow";
                              *&buf[38] = 2081;
                              *&buf[40] = "ibp";
                              v309 = 2081;
                              v310 = "parse";
                              v311 = 2081;
                              v312 = v210;
                              v313 = 1025;
                              v314 = v211;
                              v315 = 1025;
                              v316 = v212;
                              v317 = 2049;
                              v318 = v213;
                              v319 = 2049;
                              v320 = v214;
                              v321 = 2049;
                              v322 = v215;
                              v323 = 2049;
                              v324 = v216;
                              v325 = 2049;
                              v326 = v217;
                              v327 = 2049;
                              v328 = v218;
                              v47 = "{msg%{public}.0s:invalid GeoCode, alertLevel:%{private, location:escape_only}s, purpose:%{private, location:escape_only}s, class:%{private, location:escape_only}s, function:%{private, location:escape_only}s, uid:%{private, location:escape_only}s, interface:%{private}d, transport:%{private}d, ingressToServerTime:%{private}.3f, egressFromSourceTime:%{private}.3f, eventOriginTime:%{private}.3f, effectiveTime:%{private}.3f, expiryTime:%{private}.3f, advTime:%{private}.3f}";
                            }
                          }

                          else
                          {
                            v37 = SALogObjectGeneral;
                            if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
                            {
                              *buf = 68289026;
                              *&buf[4] = 0;
                              *&buf[8] = 2082;
                              *&buf[10] = "";
                              _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ibp,parse,invalid MMI}", buf, 0x12u);
                              v37 = SALogObjectGeneral;
                            }

                            if (!os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
                            {
                              goto LABEL_174;
                            }

                            v201 = *(a3 + 152);
                            if (*(a3 + 175) >= 0)
                            {
                              v201 = a3 + 152;
                            }

                            v202 = *(a3 + 352);
                            v203 = *(a3 + 384);
                            v204 = *(a3 + 184);
                            v205 = *(a3 + 192);
                            v206 = *(a3 + 200);
                            v207 = *(a3 + 208);
                            v208 = *(a3 + 216);
                            v209 = *(a3 + 320);
                            *buf = 68292355;
                            *&buf[4] = 0;
                            *&buf[8] = 2082;
                            *&buf[10] = "";
                            *&buf[18] = 2081;
                            *&buf[20] = "warning";
                            *&buf[28] = 2081;
                            *&buf[30] = "igAlertFlow";
                            *&buf[38] = 2081;
                            *&buf[40] = "ibp";
                            v309 = 2081;
                            v310 = "parse";
                            v311 = 2081;
                            v312 = v201;
                            v313 = 1025;
                            v314 = v202;
                            v315 = 1025;
                            v316 = v203;
                            v317 = 2049;
                            v318 = v204;
                            v319 = 2049;
                            v320 = v205;
                            v321 = 2049;
                            v322 = v206;
                            v323 = 2049;
                            v324 = v207;
                            v325 = 2049;
                            v326 = v208;
                            v327 = 2049;
                            v328 = v209;
                            v47 = "{msg%{public}.0s:invalid intensity, alertLevel:%{private, location:escape_only}s, purpose:%{private, location:escape_only}s, class:%{private, location:escape_only}s, function:%{private, location:escape_only}s, uid:%{private, location:escape_only}s, interface:%{private}d, transport:%{private}d, ingressToServerTime:%{private}.3f, egressFromSourceTime:%{private}.3f, eventOriginTime:%{private}.3f, effectiveTime:%{private}.3f, expiryTime:%{private}.3f, advTime:%{private}.3f}";
                          }
                        }

                        else
                        {
                          v37 = SALogObjectGeneral;
                          if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
                          {
                            *buf = 68289026;
                            *&buf[4] = 0;
                            *&buf[8] = 2082;
                            *&buf[10] = "";
                            _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ibp,parse,invalid magnitude}", buf, 0x12u);
                            v37 = SALogObjectGeneral;
                          }

                          if (!os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
                          {
                            goto LABEL_174;
                          }

                          v192 = *(a3 + 152);
                          if (*(a3 + 175) >= 0)
                          {
                            v192 = a3 + 152;
                          }

                          v193 = *(a3 + 352);
                          v194 = *(a3 + 384);
                          v195 = *(a3 + 184);
                          v196 = *(a3 + 192);
                          v197 = *(a3 + 200);
                          v198 = *(a3 + 208);
                          v199 = *(a3 + 216);
                          v200 = *(a3 + 320);
                          *buf = 68292355;
                          *&buf[4] = 0;
                          *&buf[8] = 2082;
                          *&buf[10] = "";
                          *&buf[18] = 2081;
                          *&buf[20] = "warning";
                          *&buf[28] = 2081;
                          *&buf[30] = "igAlertFlow";
                          *&buf[38] = 2081;
                          *&buf[40] = "ibp";
                          v309 = 2081;
                          v310 = "parse";
                          v311 = 2081;
                          v312 = v192;
                          v313 = 1025;
                          v314 = v193;
                          v315 = 1025;
                          v316 = v194;
                          v317 = 2049;
                          v318 = v195;
                          v319 = 2049;
                          v320 = v196;
                          v321 = 2049;
                          v322 = v197;
                          v323 = 2049;
                          v324 = v198;
                          v325 = 2049;
                          v326 = v199;
                          v327 = 2049;
                          v328 = v200;
                          v47 = "{msg%{public}.0s:invalid magnitude, alertLevel:%{private, location:escape_only}s, purpose:%{private, location:escape_only}s, class:%{private, location:escape_only}s, function:%{private, location:escape_only}s, uid:%{private, location:escape_only}s, interface:%{private}d, transport:%{private}d, ingressToServerTime:%{private}.3f, egressFromSourceTime:%{private}.3f, eventOriginTime:%{private}.3f, effectiveTime:%{private}.3f, expiryTime:%{private}.3f, advTime:%{private}.3f}";
                        }
                      }

                      else
                      {
                        v37 = SALogObjectGeneral;
                        if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
                        {
                          *buf = 68289026;
                          *&buf[4] = 0;
                          *&buf[8] = 2082;
                          *&buf[10] = "";
                          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ibp,parse,invalid  advertiserTime}", buf, 0x12u);
                          v37 = SALogObjectGeneral;
                        }

                        if (!os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
                        {
                          goto LABEL_174;
                        }

                        v183 = *(a3 + 152);
                        if (*(a3 + 175) >= 0)
                        {
                          v183 = a3 + 152;
                        }

                        v184 = *(a3 + 352);
                        v185 = *(a3 + 384);
                        v186 = *(a3 + 184);
                        v187 = *(a3 + 192);
                        v188 = *(a3 + 200);
                        v189 = *(a3 + 208);
                        v190 = *(a3 + 216);
                        v191 = *(a3 + 320);
                        *buf = 68292355;
                        *&buf[4] = 0;
                        *&buf[8] = 2082;
                        *&buf[10] = "";
                        *&buf[18] = 2081;
                        *&buf[20] = "warning";
                        *&buf[28] = 2081;
                        *&buf[30] = "igAlertFlow";
                        *&buf[38] = 2081;
                        *&buf[40] = "ibp";
                        v309 = 2081;
                        v310 = "parse";
                        v311 = 2081;
                        v312 = v183;
                        v313 = 1025;
                        v314 = v184;
                        v315 = 1025;
                        v316 = v185;
                        v317 = 2049;
                        v318 = v186;
                        v319 = 2049;
                        v320 = v187;
                        v321 = 2049;
                        v322 = v188;
                        v323 = 2049;
                        v324 = v189;
                        v325 = 2049;
                        v326 = v190;
                        v327 = 2049;
                        v328 = v191;
                        v47 = "{msg%{public}.0s:invalid advertiserTime, alertLevel:%{private, location:escape_only}s, purpose:%{private, location:escape_only}s, class:%{private, location:escape_only}s, function:%{private, location:escape_only}s, uid:%{private, location:escape_only}s, interface:%{private}d, transport:%{private}d, ingressToServerTime:%{private}.3f, egressFromSourceTime:%{private}.3f, eventOriginTime:%{private}.3f, effectiveTime:%{private}.3f, expiryTime:%{private}.3f, advTime:%{private}.3f}";
                      }
                    }

                    else
                    {
                      v37 = SALogObjectGeneral;
                      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 68289026;
                        *&buf[4] = 0;
                        *&buf[8] = 2082;
                        *&buf[10] = "";
                        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ibp,parse,invalid res byte 1}", buf, 0x12u);
                        v37 = SALogObjectGeneral;
                      }

                      if (!os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
                      {
                        goto LABEL_174;
                      }

                      v174 = *(a3 + 152);
                      if (*(a3 + 175) >= 0)
                      {
                        v174 = a3 + 152;
                      }

                      v175 = *(a3 + 352);
                      v176 = *(a3 + 384);
                      v177 = *(a3 + 184);
                      v178 = *(a3 + 192);
                      v179 = *(a3 + 200);
                      v180 = *(a3 + 208);
                      v181 = *(a3 + 216);
                      v182 = *(a3 + 320);
                      *buf = 68292355;
                      *&buf[4] = 0;
                      *&buf[8] = 2082;
                      *&buf[10] = "";
                      *&buf[18] = 2081;
                      *&buf[20] = "warning";
                      *&buf[28] = 2081;
                      *&buf[30] = "igAlertFlow";
                      *&buf[38] = 2081;
                      *&buf[40] = "ibp";
                      v309 = 2081;
                      v310 = "parse";
                      v311 = 2081;
                      v312 = v174;
                      v313 = 1025;
                      v314 = v175;
                      v315 = 1025;
                      v316 = v176;
                      v317 = 2049;
                      v318 = v177;
                      v319 = 2049;
                      v320 = v178;
                      v321 = 2049;
                      v322 = v179;
                      v323 = 2049;
                      v324 = v180;
                      v325 = 2049;
                      v326 = v181;
                      v327 = 2049;
                      v328 = v182;
                      v47 = "{msg%{public}.0s:invalid reserved Byte 1, alertLevel:%{private, location:escape_only}s, purpose:%{private, location:escape_only}s, class:%{private, location:escape_only}s, function:%{private, location:escape_only}s, uid:%{private, location:escape_only}s, interface:%{private}d, transport:%{private}d, ingressToServerTime:%{private}.3f, egressFromSourceTime:%{private}.3f, eventOriginTime:%{private}.3f, effectiveTime:%{private}.3f, expiryTime:%{private}.3f, advTime:%{private}.3f}";
                    }
                  }

                  else
                  {
                    v37 = SALogObjectGeneral;
                    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 68289026;
                      *&buf[4] = 0;
                      *&buf[8] = 2082;
                      *&buf[10] = "";
                      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ibp,parse,invalid originTime}", buf, 0x12u);
                      v37 = SALogObjectGeneral;
                    }

                    if (!os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
                    {
                      goto LABEL_174;
                    }

                    v165 = *(a3 + 152);
                    if (*(a3 + 175) >= 0)
                    {
                      v165 = a3 + 152;
                    }

                    v166 = *(a3 + 352);
                    v167 = *(a3 + 384);
                    v168 = *(a3 + 184);
                    v169 = *(a3 + 192);
                    v170 = *(a3 + 200);
                    v171 = *(a3 + 208);
                    v172 = *(a3 + 216);
                    v173 = *(a3 + 320);
                    *buf = 68292355;
                    *&buf[4] = 0;
                    *&buf[8] = 2082;
                    *&buf[10] = "";
                    *&buf[18] = 2081;
                    *&buf[20] = "warning";
                    *&buf[28] = 2081;
                    *&buf[30] = "igAlertFlow";
                    *&buf[38] = 2081;
                    *&buf[40] = "ibp";
                    v309 = 2081;
                    v310 = "parse";
                    v311 = 2081;
                    v312 = v165;
                    v313 = 1025;
                    v314 = v166;
                    v315 = 1025;
                    v316 = v167;
                    v317 = 2049;
                    v318 = v168;
                    v319 = 2049;
                    v320 = v169;
                    v321 = 2049;
                    v322 = v170;
                    v323 = 2049;
                    v324 = v171;
                    v325 = 2049;
                    v326 = v172;
                    v327 = 2049;
                    v328 = v173;
                    v47 = "{msg%{public}.0s:invalid originTime, alertLevel:%{private, location:escape_only}s, purpose:%{private, location:escape_only}s, class:%{private, location:escape_only}s, function:%{private, location:escape_only}s, uid:%{private, location:escape_only}s, interface:%{private}d, transport:%{private}d, ingressToServerTime:%{private}.3f, egressFromSourceTime:%{private}.3f, eventOriginTime:%{private}.3f, effectiveTime:%{private}.3f, expiryTime:%{private}.3f, advTime:%{private}.3f}";
                  }
                }

                else
                {
                  v37 = SALogObjectGeneral;
                  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 68289026;
                    *&buf[4] = 0;
                    *&buf[8] = 2082;
                    *&buf[10] = "";
                    _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ibp,parse,invalid ExpInfo}", buf, 0x12u);
                    v37 = SALogObjectGeneral;
                  }

                  if (!os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
                  {
                    goto LABEL_174;
                  }

                  v156 = *(a3 + 152);
                  if (*(a3 + 175) >= 0)
                  {
                    v156 = a3 + 152;
                  }

                  v157 = *(a3 + 352);
                  v158 = *(a3 + 384);
                  v159 = *(a3 + 184);
                  v160 = *(a3 + 192);
                  v161 = *(a3 + 200);
                  v162 = *(a3 + 208);
                  v163 = *(a3 + 216);
                  v164 = *(a3 + 320);
                  *buf = 68292355;
                  *&buf[4] = 0;
                  *&buf[8] = 2082;
                  *&buf[10] = "";
                  *&buf[18] = 2081;
                  *&buf[20] = "warning";
                  *&buf[28] = 2081;
                  *&buf[30] = "igAlertFlow";
                  *&buf[38] = 2081;
                  *&buf[40] = "ibp";
                  v309 = 2081;
                  v310 = "parse";
                  v311 = 2081;
                  v312 = v156;
                  v313 = 1025;
                  v314 = v157;
                  v315 = 1025;
                  v316 = v158;
                  v317 = 2049;
                  v318 = v159;
                  v319 = 2049;
                  v320 = v160;
                  v321 = 2049;
                  v322 = v161;
                  v323 = 2049;
                  v324 = v162;
                  v325 = 2049;
                  v326 = v163;
                  v327 = 2049;
                  v328 = v164;
                  v47 = "{msg%{public}.0s:invalid ExpInfo, alertLevel:%{private, location:escape_only}s, purpose:%{private, location:escape_only}s, class:%{private, location:escape_only}s, function:%{private, location:escape_only}s, uid:%{private, location:escape_only}s, interface:%{private}d, transport:%{private}d, ingressToServerTime:%{private}.3f, egressFromSourceTime:%{private}.3f, eventOriginTime:%{private}.3f, effectiveTime:%{private}.3f, expiryTime:%{private}.3f, advTime:%{private}.3f}";
                }
              }

              else
              {
                v37 = SALogObjectGeneral;
                if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 68289026;
                  *&buf[4] = 0;
                  *&buf[8] = 2082;
                  *&buf[10] = "";
                  _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ibp,parse,invalid sentTime}", buf, 0x12u);
                  v37 = SALogObjectGeneral;
                }

                if (!os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_174;
                }

                v147 = *(a3 + 152);
                if (*(a3 + 175) >= 0)
                {
                  v147 = a3 + 152;
                }

                v148 = *(a3 + 352);
                v149 = *(a3 + 384);
                v150 = *(a3 + 184);
                v151 = *(a3 + 192);
                v152 = *(a3 + 200);
                v153 = *(a3 + 208);
                v154 = *(a3 + 216);
                v155 = *(a3 + 320);
                *buf = 68292355;
                *&buf[4] = 0;
                *&buf[8] = 2082;
                *&buf[10] = "";
                *&buf[18] = 2081;
                *&buf[20] = "warning";
                *&buf[28] = 2081;
                *&buf[30] = "igAlertFlow";
                *&buf[38] = 2081;
                *&buf[40] = "ibp";
                v309 = 2081;
                v310 = "parse";
                v311 = 2081;
                v312 = v147;
                v313 = 1025;
                v314 = v148;
                v315 = 1025;
                v316 = v149;
                v317 = 2049;
                v318 = v150;
                v319 = 2049;
                v320 = v151;
                v321 = 2049;
                v322 = v152;
                v323 = 2049;
                v324 = v153;
                v325 = 2049;
                v326 = v154;
                v327 = 2049;
                v328 = v155;
                v47 = "{msg%{public}.0s:invalid sentTime, alertLevel:%{private, location:escape_only}s, purpose:%{private, location:escape_only}s, class:%{private, location:escape_only}s, function:%{private, location:escape_only}s, uid:%{private, location:escape_only}s, interface:%{private}d, transport:%{private}d, ingressToServerTime:%{private}.3f, egressFromSourceTime:%{private}.3f, eventOriginTime:%{private}.3f, effectiveTime:%{private}.3f, expiryTime:%{private}.3f, advTime:%{private}.3f}";
              }
            }

            else
            {
              v37 = SALogObjectGeneral;
              if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 68289026;
                *&buf[4] = 0;
                *&buf[8] = 2082;
                *&buf[10] = "";
                _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ibp,parse,invalid MsgInfo}", buf, 0x12u);
                v37 = SALogObjectGeneral;
              }

              if (!os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_174;
              }

              v138 = *(a3 + 152);
              if (*(a3 + 175) >= 0)
              {
                v138 = a3 + 152;
              }

              v139 = *(a3 + 352);
              v140 = *(a3 + 384);
              v141 = *(a3 + 184);
              v142 = *(a3 + 192);
              v143 = *(a3 + 200);
              v144 = *(a3 + 208);
              v145 = *(a3 + 216);
              v146 = *(a3 + 320);
              *buf = 68292355;
              *&buf[4] = 0;
              *&buf[8] = 2082;
              *&buf[10] = "";
              *&buf[18] = 2081;
              *&buf[20] = "warning";
              *&buf[28] = 2081;
              *&buf[30] = "igAlertFlow";
              *&buf[38] = 2081;
              *&buf[40] = "ibp";
              v309 = 2081;
              v310 = "parse";
              v311 = 2081;
              v312 = v138;
              v313 = 1025;
              v314 = v139;
              v315 = 1025;
              v316 = v140;
              v317 = 2049;
              v318 = v141;
              v319 = 2049;
              v320 = v142;
              v321 = 2049;
              v322 = v143;
              v323 = 2049;
              v324 = v144;
              v325 = 2049;
              v326 = v145;
              v327 = 2049;
              v328 = v146;
              v47 = "{msg%{public}.0s:invalid MsgInfo, alertLevel:%{private, location:escape_only}s, purpose:%{private, location:escape_only}s, class:%{private, location:escape_only}s, function:%{private, location:escape_only}s, uid:%{private, location:escape_only}s, interface:%{private}d, transport:%{private}d, ingressToServerTime:%{private}.3f, egressFromSourceTime:%{private}.3f, eventOriginTime:%{private}.3f, effectiveTime:%{private}.3f, expiryTime:%{private}.3f, advTime:%{private}.3f}";
            }
          }

          else
          {
            v37 = SALogObjectGeneral;
            if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 68289026;
              *&buf[4] = 0;
              *&buf[8] = 2082;
              *&buf[10] = "";
              _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ibp,parse,invalid AlertInfo}", buf, 0x12u);
              v37 = SALogObjectGeneral;
            }

            if (!os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_174;
            }

            v129 = *(a3 + 152);
            if (*(a3 + 175) >= 0)
            {
              v129 = a3 + 152;
            }

            v130 = *(a3 + 352);
            v131 = *(a3 + 384);
            v132 = *(a3 + 184);
            v133 = *(a3 + 192);
            v134 = *(a3 + 200);
            v135 = *(a3 + 208);
            v136 = *(a3 + 216);
            v137 = *(a3 + 320);
            *buf = 68292355;
            *&buf[4] = 0;
            *&buf[8] = 2082;
            *&buf[10] = "";
            *&buf[18] = 2081;
            *&buf[20] = "warning";
            *&buf[28] = 2081;
            *&buf[30] = "igAlertFlow";
            *&buf[38] = 2081;
            *&buf[40] = "ibp";
            v309 = 2081;
            v310 = "parse";
            v311 = 2081;
            v312 = v129;
            v313 = 1025;
            v314 = v130;
            v315 = 1025;
            v316 = v131;
            v317 = 2049;
            v318 = v132;
            v319 = 2049;
            v320 = v133;
            v321 = 2049;
            v322 = v134;
            v323 = 2049;
            v324 = v135;
            v325 = 2049;
            v326 = v136;
            v327 = 2049;
            v328 = v137;
            v47 = "{msg%{public}.0s:invalid AlertInfo, alertLevel:%{private, location:escape_only}s, purpose:%{private, location:escape_only}s, class:%{private, location:escape_only}s, function:%{private, location:escape_only}s, uid:%{private, location:escape_only}s, interface:%{private}d, transport:%{private}d, ingressToServerTime:%{private}.3f, egressFromSourceTime:%{private}.3f, eventOriginTime:%{private}.3f, effectiveTime:%{private}.3f, expiryTime:%{private}.3f, advTime:%{private}.3f}";
          }
        }

        else
        {
          v37 = SALogObjectGeneral;
          if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 68289026;
            *&buf[4] = 0;
            *&buf[8] = 2082;
            *&buf[10] = "";
            _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ibp,parse,invalid EventInfo}", buf, 0x12u);
            v37 = SALogObjectGeneral;
          }

          if (!os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_174;
          }

          v66 = *(a3 + 152);
          if (*(a3 + 175) >= 0)
          {
            v66 = a3 + 152;
          }

          v67 = *(a3 + 352);
          v68 = *(a3 + 384);
          v69 = *(a3 + 184);
          v70 = *(a3 + 192);
          v71 = *(a3 + 200);
          v72 = *(a3 + 208);
          v73 = *(a3 + 216);
          v74 = *(a3 + 320);
          *buf = 68292355;
          *&buf[4] = 0;
          *&buf[8] = 2082;
          *&buf[10] = "";
          *&buf[18] = 2081;
          *&buf[20] = "warning";
          *&buf[28] = 2081;
          *&buf[30] = "igAlertFlow";
          *&buf[38] = 2081;
          *&buf[40] = "ibp";
          v309 = 2081;
          v310 = "parse";
          v311 = 2081;
          v312 = v66;
          v313 = 1025;
          v314 = v67;
          v315 = 1025;
          v316 = v68;
          v317 = 2049;
          v318 = v69;
          v319 = 2049;
          v320 = v70;
          v321 = 2049;
          v322 = v71;
          v323 = 2049;
          v324 = v72;
          v325 = 2049;
          v326 = v73;
          v327 = 2049;
          v328 = v74;
          v47 = "{msg%{public}.0s:invalid EventInfo, alertLevel:%{private, location:escape_only}s, purpose:%{private, location:escape_only}s, class:%{private, location:escape_only}s, function:%{private, location:escape_only}s, uid:%{private, location:escape_only}s, interface:%{private}d, transport:%{private}d, ingressToServerTime:%{private}.3f, egressFromSourceTime:%{private}.3f, eventOriginTime:%{private}.3f, effectiveTime:%{private}.3f, expiryTime:%{private}.3f, advTime:%{private}.3f}";
        }
      }

      else
      {
        v37 = SALogObjectGeneral;
        if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 68289026;
          *&buf[4] = 0;
          *&buf[8] = 2082;
          *&buf[10] = "";
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ibp,parse,invalid EventByte}", buf, 0x12u);
          v37 = SALogObjectGeneral;
        }

        if (!os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_174;
        }

        v52 = *(a3 + 152);
        if (*(a3 + 175) >= 0)
        {
          v52 = a3 + 152;
        }

        v53 = *(a3 + 352);
        v54 = *(a3 + 384);
        v55 = *(a3 + 184);
        v56 = *(a3 + 192);
        v57 = *(a3 + 200);
        v58 = *(a3 + 208);
        v59 = *(a3 + 216);
        v60 = *(a3 + 320);
        *buf = 68292355;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 2081;
        *&buf[20] = "warning";
        *&buf[28] = 2081;
        *&buf[30] = "igAlertFlow";
        *&buf[38] = 2081;
        *&buf[40] = "ibp";
        v309 = 2081;
        v310 = "parse";
        v311 = 2081;
        v312 = v52;
        v313 = 1025;
        v314 = v53;
        v315 = 1025;
        v316 = v54;
        v317 = 2049;
        v318 = v55;
        v319 = 2049;
        v320 = v56;
        v321 = 2049;
        v322 = v57;
        v323 = 2049;
        v324 = v58;
        v325 = 2049;
        v326 = v59;
        v327 = 2049;
        v328 = v60;
        v47 = "{msg%{public}.0s:invalid EventByte, alertLevel:%{private, location:escape_only}s, purpose:%{private, location:escape_only}s, class:%{private, location:escape_only}s, function:%{private, location:escape_only}s, uid:%{private, location:escape_only}s, interface:%{private}d, transport:%{private}d, ingressToServerTime:%{private}.3f, egressFromSourceTime:%{private}.3f, eventOriginTime:%{private}.3f, effectiveTime:%{private}.3f, expiryTime:%{private}.3f, advTime:%{private}.3f}";
      }
    }

    else
    {
      v37 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289026;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ibp,parse,invalid region code}", buf, 0x12u);
        v37 = SALogObjectGeneral;
      }

      if (!os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_174;
      }

      v38 = *(a3 + 152);
      if (*(a3 + 175) >= 0)
      {
        v38 = a3 + 152;
      }

      v39 = *(a3 + 352);
      v40 = *(a3 + 384);
      v41 = *(a3 + 184);
      v42 = *(a3 + 192);
      v43 = *(a3 + 200);
      v44 = *(a3 + 208);
      v45 = *(a3 + 216);
      v46 = *(a3 + 320);
      *buf = 68292355;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2081;
      *&buf[20] = "warning";
      *&buf[28] = 2081;
      *&buf[30] = "igAlertFlow";
      *&buf[38] = 2081;
      *&buf[40] = "ibp";
      v309 = 2081;
      v310 = "parse";
      v311 = 2081;
      v312 = v38;
      v313 = 1025;
      v314 = v39;
      v315 = 1025;
      v316 = v40;
      v317 = 2049;
      v318 = v41;
      v319 = 2049;
      v320 = v42;
      v321 = 2049;
      v322 = v43;
      v323 = 2049;
      v324 = v44;
      v325 = 2049;
      v326 = v45;
      v327 = 2049;
      v328 = v46;
      v47 = "{msg%{public}.0s:invalid region code, alertLevel:%{private, location:escape_only}s, purpose:%{private, location:escape_only}s, class:%{private, location:escape_only}s, function:%{private, location:escape_only}s, uid:%{private, location:escape_only}s, interface:%{private}d, transport:%{private}d, ingressToServerTime:%{private}.3f, egressFromSourceTime:%{private}.3f, eventOriginTime:%{private}.3f, effectiveTime:%{private}.3f, expiryTime:%{private}.3f, advTime:%{private}.3f}";
    }

    _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, v47, buf, 0x8Cu);
    goto LABEL_174;
  }

  v24 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ibp,parse,invalid data}", buf, 0x12u);
    v24 = SALogObjectGeneral;
  }

  v25 = 0;
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v28 = *(a3 + 152);
    v27 = a3 + 152;
    v26 = v28;
    if (*(v27 + 23) >= 0)
    {
      v26 = v27;
    }

    v29 = *(v27 + 200);
    v30 = *(v27 + 232);
    v31 = *(v27 + 32);
    v32 = *(v27 + 40);
    v33 = *(v27 + 48);
    v34 = *(v27 + 56);
    v35 = *(v27 + 64);
    v36 = *(v27 + 168);
    *buf = 68292355;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 2081;
    *&buf[20] = "warning";
    *&buf[28] = 2081;
    *&buf[30] = "igAlertFlow";
    *&buf[38] = 2081;
    *&buf[40] = "ibp";
    v309 = 2081;
    v310 = "parse";
    v311 = 2081;
    v312 = v26;
    v313 = 1025;
    v314 = v29;
    v315 = 1025;
    v316 = v30;
    v317 = 2049;
    v318 = v31;
    v319 = 2049;
    v320 = v32;
    v321 = 2049;
    v322 = v33;
    v323 = 2049;
    v324 = v34;
    v325 = 2049;
    v326 = v35;
    v327 = 2049;
    v328 = v36;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:invalid data, alertLevel:%{private, location:escape_only}s, purpose:%{private, location:escape_only}s, class:%{private, location:escape_only}s, function:%{private, location:escape_only}s, uid:%{private, location:escape_only}s, interface:%{private}d, transport:%{private}d, ingressToServerTime:%{private}.3f, egressFromSourceTime:%{private}.3f, eventOriginTime:%{private}.3f, effectiveTime:%{private}.3f, expiryTime:%{private}.3f, advTime:%{private}.3f}", buf, 0x8Cu);
    return 0;
  }

  return v25;
}

void sub_10008A738(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10008B014(va);
  _Unwind_Resume(a1);
}

void sub_10008A74C(uint64_t *a1, uint64_t a2)
{
  v5 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 23) >= 0)
    {
      v6 = a1;
    }

    else
    {
      v6 = *a1;
    }

    v7 = *(a1 + 12);
    v8 = *(a1 + 26);
    v9 = *(a1 + 27);
    v10 = *(a1 + 28);
    v11 = *(a1 + 29);
    v12 = *(a1 + 30);
    v13 = *(a1 + 31);
    v14 = *(a1 + 32);
    v15 = *(a1 + 33);
    v16 = *(a1 + 9);
    v17 = *(a1 + 40);
    v18 = *(a1 + 41);
    v19 = *(a1 + 21);
    v20 = *(a1 + 96);
    v21 = *(a1 + 46);
    v22 = *(a1 + 47);
    v23 = *(a1 + 48);
    v24 = *(a1 + 49);
    v25 = *(a1 + 13);
    v26 = *(a1 + 14);
    v27 = *(a1 + 61);
    *buf = 68294659;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 2081;
    *&buf[20] = v6;
    v92 = 1025;
    *v93 = v7;
    *&v93[4] = 1025;
    *&v93[6] = v8;
    LOWORD(v94) = 1025;
    *(&v94 + 2) = v9;
    HIWORD(v94) = 1025;
    *v95 = v10;
    *&v95[4] = 1025;
    *&v95[6] = v11;
    v96 = 1025;
    *v97 = v12;
    *&v97[4] = 1025;
    *&v97[6] = v13;
    *v98 = 1025;
    *&v98[2] = v14;
    *&v98[6] = 1025;
    *&v98[8] = v15;
    *&v98[12] = 2049;
    *&v98[14] = v16;
    *&v98[22] = 1025;
    *&v98[24] = v17;
    *&v98[28] = 1025;
    *v99 = v18;
    *&v99[4] = 1025;
    *&v99[6] = v19;
    *v100 = 1025;
    *&v100[2] = v20;
    *&v100[6] = 1025;
    *&v100[8] = v21;
    *&v100[12] = 1025;
    *&v100[14] = v22;
    *&v100[18] = 1025;
    *v101 = v23;
    *&v101[4] = 1025;
    *&v101[6] = v24;
    *v102 = 1025;
    *&v102[2] = v25;
    *&v102[6] = 1025;
    *&v102[8] = v26;
    *&v102[12] = 1025;
    *&v102[14] = v27;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ibp,updateBleDataToAlertData, regionCode:%{private, location:escape_only}s, Sender:%{private}d, eventType:%{private}d, eventInfoPayloadLayout:%{private}d, eventInfoEventCategory:%{private}d, alertInfoAlertType:%{private}d, alertInfoFloodFill:%{private}d, msgInfoMsgType:%{private}d, msgInfoResponseType:%{private}d, msgInfoLanguageFlag:%{private}d, sentTime:%{private}llu, expirationLen:%{private}d, expirationNum:%{private}d, orginTimeOffsetFromSentTime:%{private}d, bleAdvertiseTime:%{private}d, Magnitude:%{private}d, MMI:%{private}d, GeoCodeType:%{private}d, geoCodeScale:%{private}d, epi_latitude:%{private}d, epi_longitude:%{private}d, effectiveDistance:%{private}d}", buf, 0x9Eu);
  }

  v28 = 10.0;
  v29 = ((*(a1 + 46) & 0xF) + 10 * (*(a1 + 46) >> 4)) / 10.0;
  LODWORD(v28) = *(a1 + 9);
  v30 = v28 + -978307200.0;
  *(a2 + 192) = v30;
  *(a2 + 256) = v29;
  *(a2 + 208) = v30;
  LOBYTE(v2) = *(a1 + 96);
  v31 = sub_100017254();
  v32 = *(a2 + 192);
  *(a2 + 320) = v32 + v2 * v31 / 1000.0;
  v33 = *(a1 + 40);
  if (v33 <= 3)
  {
    *(a2 + 216) = v32 + (dword_1000E34B0[v33] * *(a1 + 41));
  }

  v34 = *(a1 + 21);
  if ((v34 & 0x8000u) != 0)
  {
    v35 = -((v34 >> 2) & 0x1FFF);
  }

  else
  {
    v35 = v34 >> 2;
  }

  v36 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v38 = *(a2 + 200);
    *buf = 68290051;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 2049;
    *&buf[20] = v38;
    v92 = 1025;
    *v93 = v35;
    *&v93[4] = 1025;
    *&v93[6] = v34 & 3;
    LOWORD(v94) = 1025;
    *(&v94 + 2) = v34 >> 15;
    _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ibp,updateBleDataToAlertData, OriginTime:%{private}3f, originTimeUnitCount:%{private}d, originTimeUnit:%{private}d, isNegative:%{private}d}", buf, 0x2Eu);
  }

  LODWORD(v37) = *(a1 + 9);
  v39 = v37 + -978307200.0;
  if ((v34 & 3) > 1)
  {
    v42 = v39 + (10 * v35);
    v43 = v39 + (60 * v35);
    if ((v34 & 3) == 2)
    {
      v41 = v42;
    }

    else
    {
      v41 = v43;
    }
  }

  else
  {
    v40 = v35;
    if ((v34 & 3) != 0)
    {
      v41 = v39 + v40;
    }

    else
    {
      v41 = v39 + v40 * 0.01;
    }
  }

  *(a2 + 200) = v41;
  v44 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289283;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 2049;
    *&buf[20] = v41;
    _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ibp,updateBleDataToAlertData, OriginTime:%{private}3f}", buf, 0x1Cu);
  }

  *(a2 + 304) = *(a1 + 26);
  if (*(a1 + 23) >= 0)
  {
    v45 = a1;
  }

  else
  {
    v45 = *a1;
  }

  sub_1000060C4(buf, v45);
  if (*(a2 + 55) < 0)
  {
    operator delete(*(a2 + 32));
  }

  HIDWORD(v46) = *&buf[4];
  *(a2 + 32) = *buf;
  *(a2 + 48) = *&buf[16];
  LODWORD(v46) = *(a1 + 9);
  v47 = v46 + -978307200.0;
  *(a2 + 184) = v47;
  v48 = *(a1 + 52);
  v49.i64[0] = v48;
  v49.i64[1] = HIDWORD(v48);
  v90 = vaddq_f64(vdivq_f64(vmulq_f64(vcvtq_f64_u64(v49), vdupq_n_s64(0x3FF3C6A7EF9DB22DuLL)), vdupq_n_s64(0x40AC200000000000uLL)), xmmword_1000E2F70);
  *(a2 + 240) = v90;
  *(a2 + 180) = *(a1 + 31);
  *(a2 + 308) = *(a1 + 29);
  *(a2 + 312) = *(a1 + 12);
  v50 = ((*(a1 + 47) & 0xF) + 10 * (*(a1 + 47) >> 4)) / 10.0;
  *(a2 + 264) = v50;
  v51 = *(a1 + 49);
  *(a2 + 315) = v51;
  *(a2 + 314) = *(a1 + 48);
  v52 = sub_10008AF70(v51, *(a1 + 61));
  *(a2 + 288) = v52;
  v53 = sub_10008AF70(v51, *(a1 + 60));
  *(a2 + 296) = v53;
  v54 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v55 = *(a2 + 175);
    if (v55 < 0)
    {
      v56 = *(a2 + 152);
      v57 = *(a2 + 160) == 0;
    }

    else
    {
      v56 = (a2 + 152);
      v57 = v55 == 0;
    }

    if (v57)
    {
      v58 = "";
    }

    else
    {
      v58 = v56;
    }

    if (*(a1 + 23) < 0)
    {
      if (a1[1])
      {
        v59 = *a1;
      }

      else
      {
        v59 = "";
      }
    }

    else if (*(a1 + 23))
    {
      v59 = a1;
    }

    else
    {
      v59 = "";
    }

    v60 = *(a2 + 192);
    v61 = *(a2 + 200);
    v62 = *(a2 + 208);
    v63 = *(a2 + 216);
    v64 = *(a2 + 256);
    v66 = *(a2 + 224);
    v65 = *(a2 + 232);
    v68 = *(a2 + 272);
    v67 = *(a2 + 280);
    v69 = *(a2 + 320);
    *buf = 68293635;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 2081;
    *&buf[20] = v58;
    v92 = 2081;
    *v93 = v59;
    *&v93[8] = 2049;
    v94 = *&v47;
    *v95 = 2049;
    *&v95[2] = v60;
    v96 = 2049;
    *v97 = v61;
    *&v97[8] = 2049;
    *v98 = v62;
    *&v98[8] = 2049;
    *&v98[10] = v63;
    *&v98[18] = 2049;
    *&v98[20] = v65;
    *&v98[28] = 2049;
    *v99 = v90.f64[0];
    *&v99[8] = 2049;
    *v100 = v90.f64[1];
    *&v100[8] = 2049;
    *&v100[10] = v64;
    *&v100[18] = 2049;
    *v101 = v66;
    *&v101[8] = 2053;
    *v102 = v68;
    *&v102[8] = 2053;
    *&v102[10] = v67;
    *&v102[18] = 2049;
    *v103 = v50;
    *&v103[8] = 2049;
    *v104 = v69;
    *&v104[8] = 1025;
    *v105 = v52;
    *&v105[4] = 1025;
    *&v105[6] = v53;
    _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ibp,updateBleDataToAlertData, bleAlertUID:%{private, location:escape_only}s, regionCode:%{private, location:escape_only}s, ingress_to_server_ts:%{private}0.3f, egress_from_source_ts:%{private}0.3f, event_origin_ts:%{private}0.3f, effective:%{private}0.3f, expires:%{private}0.3f, event_update_number:%{private}0.3f, epi_latitude:%{private}0.3f, epi_longitude:%{private}0.3f, magnitude:%{private}0.3f, depth:%{private}0.3f, mmiLat:%{sensitive}0.3f, mmiLon:%{sensitive}0.3f, mmiLevel:%{private}0.3f, bleAdvertiseTime:%{private}0.3f, effectiveDistance:%{private}d, strongShakeRadius:%{private}d}", buf, 0xBEu);
    v54 = SALogObjectGeneral;
  }

  if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 175) >= 0)
    {
      v70 = a2 + 152;
    }

    else
    {
      v70 = *(a2 + 152);
    }

    v71 = *(a2 + 352);
    v72 = *(a2 + 384);
    v74 = *(a2 + 184);
    v73 = *(a2 + 192);
    v76 = *(a2 + 200);
    v75 = *(a2 + 208);
    v77 = *(a2 + 216);
    v78 = *(a2 + 320);
    if (*(a1 + 23) < 0)
    {
      if (a1[1])
      {
        v79 = *a1;
      }

      else
      {
        v79 = "";
      }
    }

    else if (*(a1 + 23))
    {
      v79 = a1;
    }

    else
    {
      v79 = "";
    }

    v80 = *(a2 + 296);
    v81 = *(a2 + 288);
    v82 = *(a2 + 240);
    v83 = *(a2 + 248);
    v84 = *(a2 + 224);
    v85 = *(a2 + 232);
    v87 = *(a2 + 272);
    v86 = *(a2 + 280);
    v89 = *(a2 + 256);
    v88 = *(a2 + 264);
    *buf = 68295171;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 2081;
    *&buf[20] = "info";
    v92 = 2081;
    *v93 = "igAlertFlow";
    *&v93[8] = 2081;
    v94 = "ibp";
    *v95 = 2081;
    *&v95[2] = "updateBleDataToAlertData";
    v96 = 2081;
    *v97 = v70;
    *&v97[8] = 1025;
    *v98 = v71;
    *&v98[4] = 1025;
    *&v98[6] = v72;
    *&v98[10] = 2049;
    *&v98[12] = v74;
    *&v98[20] = 2049;
    *&v98[22] = v73;
    *v99 = 2049;
    *&v99[2] = v76;
    *v100 = 2049;
    *&v100[2] = v75;
    *&v100[10] = 2049;
    *&v100[12] = v77;
    *v101 = 2049;
    *&v101[2] = v78;
    *v102 = 2081;
    *&v102[2] = v79;
    *&v102[10] = 2049;
    *&v102[12] = v85;
    *v103 = 2049;
    *&v103[2] = v82;
    *v104 = 2049;
    *&v104[2] = v83;
    *v105 = 2049;
    *&v105[2] = v89;
    v106 = 2049;
    v107 = v84;
    v108 = 2053;
    v109 = v87;
    v110 = 2053;
    v111 = v86;
    v112 = 2049;
    v113 = v88;
    v114 = 1025;
    v115 = v81;
    v116 = 1025;
    v117 = v80;
    _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:updateBleDataToAlertData done, alertLevel:%{private, location:escape_only}s, purpose:%{private, location:escape_only}s, class:%{private, location:escape_only}s, function:%{private, location:escape_only}s, uid:%{private, location:escape_only}s, interface:%{private}d, transport:%{private}d, ingressToServerTime:%{private}.3f, egressFromSourceTime:%{private}.3f, eventOriginTime:%{private}.3f, effectiveTime:%{private}.3f, expiryTime:%{private}.3f, advTime:%{private}.3f, regionCode:%{private, location:escape_only}s, event_update_number:%{private}0.3f, epi_latitude:%{private}0.3f, epi_longitude:%{private}0.3f, magnitude:%{private}0.3f, depth:%{private}0.3f, mmiLat:%{sensitive}0.3f, mmiLon:%{sensitive}0.3f, mmiLevel:%{private}0.3f, effectiveDistance:%{private}d, strongShakeRadius:%{private}d}", buf, 0xF2u);
  }
}

double sub_10008AF70(int a1, int a2)
{
  result = 0.0;
  if (a1 > 3)
  {
    if (a1 > 5)
    {
      if (a1 == 6)
      {
        v4 = 1000;
      }

      else
      {
        if (a1 != 7)
        {
          return result;
        }

        v4 = 2000;
      }
    }

    else if (a1 == 4)
    {
      v4 = 200;
    }

    else
    {
      v4 = 500;
    }

    return (a2 * v4);
  }

  if (a1 <= 1)
  {
    if (a1)
    {
      if (a1 != 1)
      {
        return result;
      }

      return (5 * a2);
    }

    else
    {
      return (2 * a2);
    }
  }

  if (a1 != 2)
  {
    v4 = 100;
    return (a2 * v4);
  }

  return (10 * a2);
}

uint64_t sub_10008B014(uint64_t a1)
{
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_10008B058(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  sub_10008B39C(v15, a3);
  sub_10001EF44(v14, a4);
  v8 = v7;
  *a1 = off_10013F5D0;
  a1[1] = v8;
  sub_10001E0C0(v14);
  sub_10008B31C(v15);
  *a1 = off_10013D238;
  a1[2] = 0;
  sub_10008B39C((a1 + 3), a3);
  sub_10001EF44((a1 + 7), a4);
  v9 = sub_1000175DC();
  v13[0] = off_10013D2A0;
  v13[1] = a1;
  v13[3] = v13;
  sub_1000178C4(v9, 5, v13);
  sub_100017F8C(v13);
  v10 = sub_1000175DC();
  v12[0] = off_10013D2A0;
  v12[1] = a1;
  v12[3] = v12;
  sub_1000178C4(v10, 6, v12);
  sub_100017F8C(v12);

  return a1;
}

void sub_10008B1D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100017F8C(va);
  sub_10001E0C0(v3 + 56);
  sub_10008B31C(v3 + 24);

  _Unwind_Resume(a1);
}

uint64_t sub_10008B24C(uint64_t a1, char a2, double a3, double a4, double a5, double a6, double a7)
{
  v13 = a4;
  v14 = a3;
  v11 = a6;
  v12 = a5;
  v10 = a2;
  v9 = a7;
  v7 = *(a1 + 24);
  if (!v7)
  {
    sub_1000053C4();
  }

  return (*(*v7 + 48))(v7, &v14, &v13, &v12, &v11, &v10, &v9);
}

void sub_10008B2C4(uint64_t a1)
{
  sub_10008B838(a1);

  operator delete();
}

uint64_t sub_10008B31C(uint64_t a1)
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

uint64_t sub_10008B39C(uint64_t a1, uint64_t a2)
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

uint64_t sub_10008B4A4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10013D2A0;
  a2[1] = v2;
  return result;
}

void sub_10008B4D0(uint64_t a1, id *a2)
{
  v3 = *a2;
  v4 = *(a1 + 8);
  v5 = *(v4 + 16);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10008B5BC;
  v7[3] = &unk_100139F08;
  v8 = v3;
  v9 = v4;
  v6 = v3;
  dispatch_async(v5, v7);
}

uint64_t sub_10008B570(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10008B5BC(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = v2;
  if (!v2)
  {
    v10 = SALogObjectGeneral;
    if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_16;
    }

    v16 = 68289026;
    v17 = 0;
    v18 = 2082;
    v19 = "";
    v11 = "{msg%{public}.0s:#lmTest,InvalidTestInputObject}";
    v12 = v10;
    v13 = 18;
    goto LABEL_15;
  }

  int64 = xpc_dictionary_get_int64(v2, "TestMessageType");
  if (int64 == 5)
  {
    v14 = xpc_dictionary_get_int64(v3, "LocationAuthorizationChanged") != 0;
    sub_1000030E8(v1 + 56, v14);
    goto LABEL_16;
  }

  if (int64 == 6)
  {
    v5 = xpc_dictionary_get_double(v3, "LocationChangedLat");
    v6 = xpc_dictionary_get_double(v3, "LocationChangedLon");
    v7 = xpc_dictionary_get_double(v3, "LocationChangedHunc");
    v8 = fabs(v5);
    if (v8 <= 90.0)
    {
      v9 = fabs(v6);
      if (v9 <= 180.0 && (fabs(v8 + -0.0000001) > 0.0000001 || fabs(v9 + -0.0000001) > 0.0000001) && v7 > 0.0)
      {
        sub_10008B24C(v1 + 24, 0, v5, v6, 0.0, v7, 0.0);
        goto LABEL_16;
      }
    }

    v15 = SALogObjectGeneral;
    if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_16;
    }

    v16 = 68289795;
    v17 = 0;
    v18 = 2082;
    v19 = "";
    v20 = 2053;
    v21 = v5;
    v22 = 2053;
    v23 = v6;
    v24 = 2049;
    v25 = v7;
    v11 = "{msg%{public}.0s:#lmTest,InvalidTestInputs, lat:%{sensitive}0.1f, lon:%{sensitive}0.1f, hunc:%{private}0.1f}";
    v12 = v15;
    v13 = 48;
LABEL_15:
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v11, &v16, v13);
  }

LABEL_16:
}

uint64_t sub_10008B838(uint64_t a1)
{
  *a1 = off_10013D238;
  sub_10001E0C0(a1 + 56);
  sub_10008B31C(a1 + 24);

  return a1;
}

void sub_10008B894(void *a1)
{
  a1;
  if (*(sub_100042820() + 273) == 1)
  {
    operator new();
  }

  sub_10008BA24();
}

void sub_10008B9A8(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10013D330;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_10008BA90(void *a1, void **a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_10013D380;
  sub_100005410((a1 + 3), *a2);
  return a1;
}

void sub_10008BB10(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10013D380;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_10008BB8C(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  sub_10000532C(v7, a3);
  *a1 = off_100138DC0;
  sub_1000052AC(v7);
  *a1 = off_10013D3D0;
  a1[1] = v5;
  return a1;
}

void sub_10008BC8C(uint64_t a1)
{

  operator delete();
}

uint64_t sub_10008BCD8(unsigned int a1)
{
  v2 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 68289026;
    v7 = 0;
    v8 = 2082;
    v9 = "";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#igUtils,inferAlertPurpose}", &v6, 0x12u);
  }

  if (a1 > 4)
  {
    v3 = 0;
  }

  else
  {
    v3 = dword_1000E36A8[a1];
  }

  v4 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 68289539;
    v7 = 0;
    v8 = 2082;
    v9 = "";
    v10 = 1025;
    v11 = a1;
    v12 = 1025;
    v13 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:igUtils,inferAlertPurpose, alertTyep:%{private}d, purpose:%{private}d}", &v6, 0x1Eu);
  }

  return v3;
}

uint64_t sub_10008BE20(int a1)
{
  v2 = sub_100042820();
  if (*(v2 + 439) < 0)
  {
    sub_100004CEC(&__str, v2[52], v2[53]);
  }

  else
  {
    __str = *(v2 + 52);
  }

  v3 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  v4 = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
  size = __str.__r_.__value_.__l.__size_;
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v6 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v6 = __str.__r_.__value_.__l.__size_;
  }

  if (v6)
  {
    v7 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      p_str = __str.__r_.__value_.__r.__words[0];
      if (v4 >= 0)
      {
        p_str = &__str;
      }

      *buf = 68289283;
      *&buf[4] = 0;
      *v34 = 2082;
      *&v34[2] = "";
      v35 = 2081;
      v36 = p_str;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ibp,updateSenderId, SenderConfig:%{private, location:escape_only}s}", buf, 0x1Cu);
      v3 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      size = __str.__r_.__value_.__l.__size_;
      LOBYTE(v4) = *(&__str.__r_.__value_.__s + 23);
    }

    v9 = (v4 & 0x80u) == 0 ? &__str : __str.__r_.__value_.__r.__words[0];
    v10 = (v4 & 0x80u) == 0 ? v3 : size;
    v11 = v10 - 1;
    if (v10 >= 1)
    {
      v12 = v9 + v10;
      v13 = v9;
      do
      {
        v14 = memchr(v13, 46, v10);
        if (!v14)
        {
          break;
        }

        if (*v14 == 46)
        {
          if (v14 != v12)
          {
            v15 = v14 - v9;
            if (v15 != -1 && v15 < v11)
            {
              std::string::basic_string(buf, &__str, 0, v15, &v27);
              v16 = BYTE3(v36);
              v17 = BYTE3(v36);
              if (SBYTE3(v36) < 0)
              {
                v16 = *v34;
              }

              if (v16)
              {
                std::string::basic_string(&v27, &__str, v15 + 1, 0xFFFFFFFFFFFFFFFFLL, v29);
                v18 = HIBYTE(v27.__r_.__value_.__r.__words[2]);
                v19 = SHIBYTE(v27.__r_.__value_.__r.__words[2]);
                if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v18 = v27.__r_.__value_.__l.__size_;
                }

                if (v18)
                {
                  v20 = SBYTE3(v36) >= 0 ? buf : *buf;
                  v21 = atoi(v20);
                  v22 = v19 >= 0 ? &v27 : v27.__r_.__value_.__r.__words[0];
                  v23 = atoi(v22);
                  if (v21 == a1 && v21 >= 64513)
                  {
                    v24 = v23;
                    if (v23 <= 64512)
                    {
                      v25 = SALogObjectGeneral;
                      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
                      {
                        *v29 = 68289026;
                        v30 = 0;
                        v31 = 2082;
                        v32 = "";
                        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ibp,updateSenderId,valid for Normal test}", v29, 0x12u);
                        LOBYTE(v19) = *(&v27.__r_.__value_.__s + 23);
                      }

                      LOWORD(a1) = v24;
                    }
                  }
                }

                if ((v19 & 0x80) != 0)
                {
                  operator delete(v27.__r_.__value_.__l.__data_);
                }

                v17 = BYTE3(v36);
              }

              if (v17 < 0)
              {
                operator delete(*buf);
              }

              LOBYTE(v4) = *(&__str.__r_.__value_.__s + 23);
            }
          }

          break;
        }

        v13 = (v14 + 1);
        v10 = v12 - v13;
      }

      while (v12 - v13 >= 1);
    }
  }

  if ((v4 & 0x80) != 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_10008C10C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  if (a18 < 0)
  {
    operator delete(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_10008C148(void *a1)
{
  a1;
  if (*(sub_100042820() + 408) == 1)
  {
    operator new();
  }

  operator new();
}

void sub_10008C264(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  *a1 = v5;
  v6 = *(a3 + 24);
  if (v6)
  {
    if (v6 == a3)
    {
      a1[4] = a1 + 1;
      (*(**(a3 + 24) + 24))(*(a3 + 24), a1 + 1);
LABEL_6:
      a1[5] = 0;
      v7 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 68289026;
        v9 = 2082;
        v10 = "";
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#bletransport,init}", &v8, 0x12u);
      }

      sub_100018058(v5);
    }

    v6 = (*(*v6 + 16))(v6);
  }

  a1[4] = v6;
  goto LABEL_6;
}

uint64_t sub_10008C454(uint64_t a1)
{
  v2 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 68289026;
    v5[1] = 0;
    v6 = 2082;
    v7 = "";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#bletransport,release}", v5, 0x12u);
  }

  v3 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  sub_10008DC14(a1 + 8);

  return a1;
}

void sub_10008C550(uint64_t a1, char a2)
{
  v4 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    buf = 68289026;
    v11 = 2082;
    v12 = "";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#bletransport,onSubscriptionForBLEDiscoveryChange}", &buf, 0x12u);
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    if (a2)
    {
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_10008C778;
      v7[3] = &unk_10013D450;
      v7[4] = a1;
      v9 = 0;
      v8[0] = off_10013D480;
      v8[1] = objc_retainBlock(v7);
      v9 = v8;
      (*(*v5 + 24))(v5, v8);
      sub_1000733B0(v8);
    }

    else
    {
      (*(*v5 + 32))(*(a1 + 40));
    }
  }

  else
  {
    v6 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      buf = 68289026;
      v11 = 2082;
      v12 = "";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#bletransport,onSubscriptionForBLEDiscoveryChange,invalid fBleTransportInterface}", &buf, 0x12u);
    }
  }
}

void sub_10008C75C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1000733B0(va);
  _Unwind_Resume(a1);
}

void sub_10008C778(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v46 = a2;
  v3 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    v59 = 0;
    LOWORD(v60) = 2082;
    *(&v60 + 2) = "";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#bletransport,onBleCoreAlertCb}", buf, 0x12u);
  }

  buf[0] = 0;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  memset(v66, 0, sizeof(v66));
  memset(v67, 0, sizeof(v67));
  v68 = 5;
  v74 = 0u;
  v75 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v76 = 0;
  v77 = -1;
  v78 = 0;
  v79 = 0;
  v80 = 0;
  v81 = 0;
  v82 = 0;
  v85 = 0;
  v83 = 0;
  v84 = 0;
  v88 = 0;
  v89 = 0;
  v86 = 0;
  v87 = 0;
  v57 = 0;
  memset(v56, 0, sizeof(v56));
  memset(v55, 0, 28);
  v49 = 0;
  v4 = sub_100002DB0();
  if ((sub_10007A4E8(v4) & 1) == 0)
  {
    v39 = SALogObjectGeneral;
    if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_50;
    }

    *v50 = 68289026;
    *&v50[4] = 0;
    *&v50[8] = 2082;
    *&v50[10] = "";
    v40 = "{msg%{public}.0s:#blecore,onBleCoreAlertCb,ble receive not supported}";
    v41 = v39;
    v42 = OS_LOG_TYPE_ERROR;
LABEL_35:
    _os_log_impl(&_mh_execute_header, v41, v42, v40, v50, 0x12u);
    goto LABEL_50;
  }

  v5 = [v46 safetyAlertsSignature];
  if (![v5 length])
  {

    goto LABEL_33;
  }

  v6 = [v46 safetyAlertsAlertData];
  v7 = [v6 length] == 0;

  if (v7)
  {
LABEL_33:
    v43 = SALogObjectGeneral;
    if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_50;
    }

    *v50 = 68289026;
    *&v50[4] = 0;
    *&v50[8] = 2082;
    *&v50[10] = "";
    v40 = "{msg%{public}.0s:#bletransport,onBleCoreAlertCb,invalid data}";
    v41 = v43;
    v42 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_35;
  }

  v8 = [v46 safetyAlertsAlertID];
  v9 = [v46 safetyAlertsAlertID];
  v10 = [v9 length];
  if (v10 >= 3)
  {
    v11 = 3;
  }

  else
  {
    v11 = v10;
  }

  [v8 getBytes:&v49 length:{v11, v46}];

  v12 = [v46 safetyAlertsSignature];
  v13 = [v46 safetyAlertsSignature];
  [v12 getBytes:v56 length:{objc_msgSend(v13, "length")}];

  v14 = [v46 safetyAlertsAlertData];
  v15 = [v46 safetyAlertsAlertData];
  [v14 getBytes:v55 length:{objc_msgSend(v15, "length")}];

  v16 = [v46 safetyAlertsAlertData];
  v17 = [v16 length];

  v18 = SALogObjectGeneral;
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = [v46 safetyAlertsAlertData];
    v20 = [v19 length];
    v21 = [v46 safetyAlertsSignature];
    v22 = [v21 length];
    *v50 = 68289539;
    *&v50[4] = 0;
    *&v50[8] = 2082;
    *&v50[10] = "";
    *&v50[18] = 2049;
    *&v50[20] = v20;
    v51 = 2049;
    v52 = v22;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#bletransport,onBleCoreAlertCb, safetyAlertsAlertData.length:%{private}llu, safetyAlertsSignature.length:%{private}llu}", v50, 0x26u);
  }

  memset(&v48, 0, sizeof(v48));
  memset(&__str, 0, sizeof(__str));
  if ((SACommonUtils::convertCharToHex(v56, 0x38u, &v48) & 1) == 0)
  {
    v37 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *v50 = 68289026;
      *&v50[4] = 0;
      *&v50[8] = 2082;
      *&v50[10] = "";
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#bletransport,preparePDUAndSignatureForValidation,invalid signature}", v50, 0x12u);
      v37 = SALogObjectGeneral;
    }

    if (!os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_46;
    }

LABEL_43:
    *v50 = 68289026;
    *&v50[4] = 0;
    *&v50[8] = 2082;
    *&v50[10] = "";
    v44 = "{msg%{public}.0s:#bletransport,onBleCoreAlertCb,invalid PDU or Sign}";
LABEL_44:
    v45 = v37;
LABEL_45:
    _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, v44, v50, 0x12u);
    goto LABEL_46;
  }

  *&v50[12] = *(v55 + 12);
  *v50 = v55[0];
  v50[17] = 0;
  if ((SACommonUtils::convertCharToHex(v50, 0x1Cu, &__str) & 1) == 0)
  {
    v37 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v90 = 68289026;
      v91 = 2082;
      v92 = "";
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#bletransport,preparePDUAndSignatureForValidation,invalid data}", &v90, 0x12u);
      v37 = SALogObjectGeneral;
    }

    if (!os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_46;
    }

    goto LABEL_43;
  }

  v23 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v24 = &v48;
    if ((v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v24 = v48.__r_.__value_.__r.__words[0];
    }

    p_str = &__str;
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_str = __str.__r_.__value_.__r.__words[0];
    }

    *v50 = 68289539;
    *&v50[4] = 0;
    *&v50[8] = 2082;
    *&v50[10] = "";
    *&v50[18] = 2081;
    *&v50[20] = v24;
    v51 = 2081;
    v52 = p_str;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#bletransport,onBleCoreAlertCb, hexSignatureStringh:%{private, location:escape_only}s, hexDataString:%{private, location:escape_only}s}", v50, 0x26u);
  }

  std::string::operator=(&v66[1], &__str);
  std::string::operator=(v66, &v48);
  v26 = SACommonUtils::convertCharToHex(&v49, 3u, v67);
  v27 = SALogObjectGeneral;
  if ((v26 & 1) == 0)
  {
    if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_46;
    }

    *v50 = 68289026;
    *&v50[4] = 0;
    *&v50[8] = 2082;
    *&v50[10] = "";
    v44 = "{msg%{public}.0s:#bletransport,onBleCoreAlertCb,invalid UID}";
    v45 = v27;
    goto LABEL_45;
  }

  v28 = SALogObjectGeneral;
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v29 = [v46 safetyAlertsAlertID];
    v30 = v29;
    if (v67[23] >= 0)
    {
      v31 = v67;
    }

    else
    {
      v31 = *v67;
    }

    *v50 = 68289795;
    *&v50[8] = 2082;
    *&v50[10] = "";
    *&v50[18] = 2113;
    *&v50[20] = v29;
    v51 = 2081;
    v52 = v31;
    v53 = 2081;
    v54 = &v49;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#bletransport,onBleCoreAlertCb,UID, data.inDevice.safetyAlertsAlertID:%{private, location:escape_only}@, igneousAlertInformation.bleAlertUID:%{private, location:escape_only}s, alertUID:%{private, location:escape_only}s}", v50, 0x30u);
  }

  if ((sub_100087F38(v55, v17, buf, v32, v33, v34, v35) & 1) == 0)
  {
    v37 = SALogObjectGeneral;
    if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_46;
    }

    *v50 = 68289026;
    *&v50[4] = 0;
    *&v50[8] = 2082;
    *&v50[10] = "";
    v44 = "{msg%{public}.0s:#bletransport,onBleCoreAlertCb,PDU decode failed}";
    goto LABEL_44;
  }

  v80 = [v46 bleRSSI];
  v36 = *(v2 + 32);
  v37 = SALogObjectGeneral;
  v38 = os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT);
  if (v36)
  {
    if (v38)
    {
      *v50 = 68289026;
      *&v50[4] = 0;
      *&v50[8] = 2082;
      *&v50[10] = "";
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#bletransport,onBleCoreAlertCb,fOnBLEAlertCb}", v50, 0x12u);
      v36 = *(v2 + 32);
      if (!v36)
      {
        sub_1000053C4();
      }
    }

    (*(*v36 + 48))(v36, buf);
    goto LABEL_46;
  }

  if (v38)
  {
    *v50 = 68289026;
    *&v50[4] = 0;
    *&v50[8] = 2082;
    *&v50[10] = "";
    v44 = "{msg%{public}.0s:#bletransport,onBleCoreAlertCb,fOnBLEAlertCb failed}";
    goto LABEL_44;
  }

LABEL_46:
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v48.__r_.__value_.__l.__data_);
  }

LABEL_50:
  sub_10002D754(buf);
}

void sub_10008D068(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  sub_10002D754(&a41);

  _Unwind_Resume(a1);
}

void sub_10008D160(uint64_t a1, uint64_t a2)
{
  v4 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#bletransport,startAdvertisingIgneousAlert}", buf, 0x12u);
  }

  sub_10008DAEC(a1);
  if (!*a1)
  {
    v12 = SALogObjectGeneral;
    if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 68289026;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    v13 = "{msg%{public}.0s:#bletransport,startAdvertisingIgneousAlert,fDispatchQueue invalid}";
    goto LABEL_19;
  }

  if (!*(a1 + 40))
  {
    v12 = SALogObjectGeneral;
    if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 68289026;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    v13 = "{msg%{public}.0s:#bletransport,startAdvertisingIgneousAlert,invalid fBleTransportInterface}";
LABEL_19:
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v13, buf, 0x12u);
    return;
  }

  location = 0;
  v44 = 0;
  v45 = 0;
  v46 = 0;
  v47 = 1;
  *buf = 0;
  *&buf[8] = 0;
  *&buf[21] = 0;
  *&buf[16] = 0;
  v5 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v6 = a2 + 128;
    if (*(a2 + 151) < 0)
    {
      v6 = *(a2 + 128);
    }

    *v49 = 68289283;
    v50 = 0;
    v51 = 2082;
    v52 = "";
    v53 = 2081;
    v54 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#bletransport,getBleRelayData,, alertData:%{private, location:escape_only}s}", v49, 0x1Cu);
  }

  v7 = *(a2 + 151);
  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a2 + 136);
  }

  if (!v7)
  {
    v14 = SALogObjectGeneral;
    if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_26;
    }

    *v49 = 68289026;
    v50 = 0;
    v51 = 2082;
    v52 = "";
    v15 = "{msg%{public}.0s:#bletransport,getBleRelayData,invalid data}";
LABEL_24:
    v16 = v14;
    v17 = 18;
LABEL_25:
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, v15, v49, v17);
    goto LABEL_26;
  }

  v48 = 0;
  if (!SACommonUtils::convertHexToChar((a2 + 128), buf, 0x1Cu, &v48))
  {
    v14 = SALogObjectGeneral;
    if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_26;
    }

    *v49 = 68289026;
    v50 = 0;
    v51 = 2082;
    v52 = "";
    v15 = "{msg%{public}.0s:#bletransport,getBleRelayData,can't read data}";
    goto LABEL_24;
  }

  v8 = v48;
  if (v48 == 28)
  {
    Current = CFAbsoluteTimeGetCurrent();
    v10 = *(a2 + 192);
    buf[17] = ((Current - v10) * 1000.0 / sub_100017254());
    v11 = [NSData dataWithBytes:buf length:28];
    goto LABEL_27;
  }

  v26 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *v49 = 68289283;
    v50 = 0;
    v51 = 2082;
    v52 = "";
    v53 = 1025;
    LODWORD(v54) = v8;
    v15 = "{msg%{public}.0s:#bletransport,getBleRelayData,invalid data payload., encodedDataLen:%{private}d}";
    v16 = v26;
    v17 = 24;
    goto LABEL_25;
  }

LABEL_26:
  v11 = 0;
LABEL_27:
  v44 = v11;
  v48 = 0;
  v57 = 0;
  v56 = 0u;
  memset(&buf[1], 0, 32);
  buf[0] = 48;
  v18 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v19 = a2 + 104;
    if (*(a2 + 127) < 0)
    {
      v19 = *(a2 + 104);
    }

    *v49 = 68289283;
    v50 = 0;
    v51 = 2082;
    v52 = "";
    v53 = 2081;
    v54 = v19;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#bletransport,getSignature,, Signature:%{private, location:escape_only}s}", v49, 0x1Cu);
  }

  v20 = *(a2 + 127);
  if ((v20 & 0x80u) != 0)
  {
    v20 = *(a2 + 112);
  }

  if (!v20)
  {
    v22 = SALogObjectGeneral;
    if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_48;
    }

    *v49 = 68289026;
    v50 = 0;
    v51 = 2082;
    v52 = "";
    v25 = "{msg%{public}.0s:#bletransport,getSignature,invalid data}";
LABEL_47:
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, v25, v49, 0x12u);
    goto LABEL_48;
  }

  if (!SACommonUtils::convertHexToChar((a2 + 104), buf, 0x38u, &v48))
  {
    v22 = SALogObjectGeneral;
    if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_48;
    }

    *v49 = 68289026;
    v50 = 0;
    v51 = 2082;
    v52 = "";
    v25 = "{msg%{public}.0s:#bletransport,getSignature,can't read signature}";
    goto LABEL_47;
  }

  v21 = v48;
  v22 = SALogObjectGeneral;
  v23 = os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT);
  if (v21 != 56)
  {
    if (v23)
    {
      *v49 = 68289026;
      v50 = 0;
      v51 = 2082;
      v52 = "";
      v25 = "{msg%{public}.0s:#bletransport,getSignature,invalid signature.}";
      goto LABEL_47;
    }

LABEL_48:
    v24 = 0;
    goto LABEL_49;
  }

  if (v23)
  {
    *v49 = 68289283;
    v50 = 0;
    v51 = 2082;
    v52 = "";
    v53 = 1025;
    LODWORD(v54) = 56;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#bletransport,readIndexDataAndSignature,, encodedDataLen:%{private}d}", v49, 0x18u);
  }

  v24 = [NSData dataWithBytes:buf length:56];
LABEL_49:
  v27 = v45;
  v45 = v24;

  v48 = 48;
  v28 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v29 = a2 + 152;
    if (*(a2 + 175) < 0)
    {
      v29 = *(a2 + 152);
    }

    *buf = 68289283;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 2081;
    *&buf[20] = v29;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#bletransport,getBleUID,, bleAlertUID:%{private, location:escape_only}s}", buf, 0x1Cu);
  }

  v30 = *(a2 + 175);
  if ((v30 & 0x80u) != 0)
  {
    v30 = *(a2 + 160);
  }

  if (!v30)
  {
    v35 = SALogObjectGeneral;
    if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_67;
    }

    *buf = 68289026;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    v36 = "{msg%{public}.0s:#bletransport,getBleUID,invalid data}";
LABEL_65:
    v37 = v35;
    v38 = 18;
LABEL_66:
    _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, v36, buf, v38);
    goto LABEL_67;
  }

  *v49 = 0;
  if (!SACommonUtils::convertHexToChar((a2 + 152), &v48, 3u, v49))
  {
    v35 = SALogObjectGeneral;
    if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_67;
    }

    *buf = 68289026;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    v36 = "{msg%{public}.0s:#bletransport,getBleUID,can't read UID}";
    goto LABEL_65;
  }

  v31 = *v49;
  v32 = SALogObjectGeneral;
  v33 = os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT);
  if (v31 == 3)
  {
    if (v33)
    {
      *buf = 68289283;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 1025;
      *&buf[20] = 3;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#bletransport,getBleUID,, encodedDataLen:%{private}d}", buf, 0x18u);
    }

    v34 = [NSData dataWithBytes:&v48 length:3];
    goto LABEL_68;
  }

  if (v33)
  {
    *buf = 68289283;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 1025;
    *&buf[20] = v31;
    v36 = "{msg%{public}.0s:#bletransport,getBleUID,invalid UID., encodedDataLen:%{private}d}";
    v37 = v32;
    v38 = 24;
    goto LABEL_66;
  }

LABEL_67:
  v34 = 0;
LABEL_68:
  v39 = v46;
  v46 = v34;

  if (v44 && v45 && v46)
  {
    objc_storeStrong(&location, *a1);
    v42 = sub_100016FE8();
    v43 = 266;
    v47 = sub_100017130();
    (*(**(a1 + 40) + 16))(*(a1 + 40), &location);
  }

  else
  {
    v40 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#bletransport,startAdvertisingIgneousAlert invalid BLE info}", buf, 0x12u);
    }
  }
}

void sub_10008DAD0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10008DBD0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10008DAEC(uint64_t a1)
{
  v2 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 68289026;
    v4[1] = 0;
    v5 = 2082;
    v6 = "";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#bletransport,stopAdvertisingIgneousAlertOverBLE}", v4, 0x12u);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(*result + 40))(result);
  }

  return result;
}

uint64_t sub_10008DC14(uint64_t a1)
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

void sub_10008DCC0(uint64_t a1)
{

  operator delete();
}

id sub_10008DD14(uint64_t a1, void *a2)
{
  *a2 = off_10013D480;
  result = objc_retainBlock(*(a1 + 8));
  a2[1] = result;
  return result;
}

uint64_t sub_10008DD5C(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  return _objc_release_x1();
}

uint64_t sub_10008DD6C(uint64_t a1, id *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  v4 = *(v2 + 16);

  return v4(v2, v3);
}

uint64_t sub_10008DDB4(uint64_t a1, uint64_t a2)
{
  if (sub_10000F5B0(a2, &off_10013D4F0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_10008DE00()
{
  if ((atomic_load_explicit(&qword_10014ADB8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_10014ADB8))
  {
    __cxa_atexit(nullsub_189, &unk_10014ADB0, &_mh_execute_header);
    __cxa_guard_release(&qword_10014ADB8);
  }

  return &unk_10014ADB0;
}

uint64_t sub_10008DE80(SAPlatformInfo *a1)
{
  if ([*SAPlatformInfo::instance(a1) isEqualToString:@"iPhone"])
  {
    sub_100017378(buf);
    v1 = sub_10008E020();
    sub_10008FEA0(v1, buf);
    v2 = buf[0];
    v3 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v6[0] = 68289282;
      v6[1] = 0;
      v7 = 2082;
      v8 = "";
      v9 = 1026;
      v10 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#fs,isBLERelaySupported, isSupported:%{public}d}", v6, 0x18u);
    }

    sub_100017590(&v16);
    sub_100017590(&v15);
  }

  else
  {
    v4 = SALogObjectGeneral;
    v2 = 0;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      v12 = 0;
      v13 = 2082;
      v14 = "";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#fs,isBLERelaySupported,not supported on this HW}", buf, 0x12u);
      return 0;
    }
  }

  return v2;
}

uint64_t *sub_10008E020()
{
  if ((atomic_load_explicit(&qword_10014ADC0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_10014ADC0))
  {
    sub_10008E0EC();
  }

  return &qword_10014ADC8;
}

uint64_t sub_10008E0B0(uint64_t a1)
{
  sub_100090E34(a1 + 32);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_10008E0EC()
{
  sub_1000060C4(&qword_10014ADC8, "default");
  byte_10014ADE0 = 0;
  xmmword_10014ADE8 = 0u;
  unk_10014ADF8 = 0u;
  dword_10014AE08 = 1065353216;
  v0 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    *&buf[4] = 0;
    v2[0] = 2082;
    *&v2[1] = &unk_1000E37F0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#asset,init}", buf, 0x12u);
  }

  sub_100090E94();
}

void sub_10008E22C(_Unwind_Exception *a1)
{
  sub_100090E34(&xmmword_10014ADE8);
  if (byte_10014ADDF < 0)
  {
    operator delete(qword_10014ADC8);
  }

  _Unwind_Resume(a1);
}

void sub_10008E270(uint64_t a1)
{
  sub_1000060C4(&v8, &unk_1000E37F0);
  v2 = (a1 + 48);
  while (1)
  {
    v2 = *v2;
    if (!v2)
    {
      break;
    }

    v3 = *(v2 + 39);
    if (v3 >= 0)
    {
      v4 = (v2 + 2);
    }

    else
    {
      v4 = v2[2];
    }

    if (v3 >= 0)
    {
      v5 = *(v2 + 39);
    }

    else
    {
      v5 = v2[3];
    }

    std::string::append(&v8, v4, v5);
    std::string::append(&v8, ",", 1uLL);
  }

  v6 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v7 = &v8;
    if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v7 = v8.__r_.__value_.__r.__words[0];
    }

    *buf = 68289283;
    v10 = 0;
    v11 = 2082;
    v12 = &unk_1000E37F0;
    v13 = 2081;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#assetConfig,log, supportedCountries:%{private, location:escape_only}s}", buf, 0x1Cu);
  }

  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }
}

void sub_10008E3E0(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289283;
    v23[0] = 2082;
    *&v23[1] = &unk_1000E37F0;
    v24 = 2113;
    v25 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#assetConfig,onAssetReceived, asset:%{private, location:escape_only}@}", buf, 0x1Cu);
  }

  v15 = v2;
  if (!v2)
  {
    v14 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      v23[0] = 2082;
      *&v23[1] = &unk_1000E37F0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#assetConfig,onAssetReceived,asset nil}", buf, 0x12u);
    }

    sub_100090E94();
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = *v18;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v17 + 1) + 8 * i);
        if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v9 = [v4 objectForKey:v8];
          if (v9)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v10 = v8;
              sub_1000060C4(&__p, [v8 UTF8String]);
              v11 = v9;
              sub_100090E94();
            }
          }

          v13 = SALogObjectGeneral;
          if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 68289283;
            v23[0] = 2082;
            *&v23[1] = &unk_1000E37F0;
            v24 = 2113;
            v25 = v9;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#assetConfig,onAssetReceived,invalid countryAsset, countryAssetId:%{private, location:escape_only}@}", buf, 0x1Cu);
          }
        }

        else
        {
          v12 = SALogObjectGeneral;
          if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 68289283;
            v23[0] = 2082;
            *&v23[1] = &unk_1000E37F0;
            v24 = 2113;
            v25 = v8;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#assetConfig,onAssetReceived,invalid country, countryNameId:%{private, location:escape_only}@}", buf, 0x1Cu);
          }
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v5);
  }
}

void sub_10008E914(const std::string *a1, double *a2)
{
  v4 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 68289026;
    LOWORD(v6[0]) = 2082;
    *(v6 + 2) = &unk_1000E37F0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#assetConfig,getEarthquakeSensingConfig}", &v5, 0x12u);
  }

  sub_10008EA1C(a1, &v5);
  sub_10008628C(v5, a2);
  if (v6[0])
  {
    sub_10002A838(v6[0]);
  }
}

void sub_10008E9FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_10002A838(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10008EA1C(const std::string *a1@<X0>, void *a2@<X8>)
{
  sub_100090278(&v18, a1);
  v4 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v5 = &v18;
    if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v5 = v18.__r_.__value_.__r.__words[0];
    }

    *buf = 68289283;
    *&buf[4] = 0;
    v20[0] = 2082;
    *&v20[1] = &unk_1000E37F0;
    v20[5] = 2081;
    v21 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#assetConfig,currentCountryAssetConfig, currentCountryAssetKey:%{private, location:escape_only}s}", buf, 0x1Cu);
  }

  if (!sub_10005B888(&a1[1].__r_.__value_.__l.__size_, &v18.__r_.__value_.__l.__data_))
  {
    v12 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      v20[0] = 2082;
      *&v20[1] = &unk_1000E37F0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#assetConfig,currentCountryAssetConfig,config not found}", buf, 0x12u);
    }

    sub_100090E94();
  }

  sub_100090278(&__p, a1);
  v6 = sub_100039B6C(&a1[1].__r_.__value_.__l.__size_, &__p);
  v7 = v6;
  v8 = a1[1].__r_.__value_.__r.__words[2];
  if (!*&v8)
  {
    goto LABEL_26;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v6;
    if (v6 >= *&v8)
    {
      v11 = v6 % *&v8;
    }
  }

  else
  {
    v11 = (*&v8 - 1) & v6;
  }

  v13 = *(a1[1].__r_.__value_.__l.__size_ + 8 * v11);
  if (!v13 || (v14 = *v13) == 0)
  {
LABEL_26:
    operator new();
  }

  while (1)
  {
    v15 = v14[1];
    if (v15 == v7)
    {
      break;
    }

    if (v10 > 1)
    {
      if (v15 >= *&v8)
      {
        v15 %= *&v8;
      }
    }

    else
    {
      v15 &= *&v8 - 1;
    }

    if (v15 != v11)
    {
      goto LABEL_26;
    }

LABEL_25:
    v14 = *v14;
    if (!v14)
    {
      goto LABEL_26;
    }
  }

  if (!sub_10004E530(&a1[1].__r_.__value_.__l.__size_, v14 + 2, &__p.__r_.__value_.__l.__data_))
  {
    goto LABEL_25;
  }

  *a2 = v14[5];
  v16 = v14[6];
  a2[1] = v16;
  if (v16)
  {
    atomic_fetch_add_explicit(v16 + 1, 1uLL, memory_order_relaxed);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }
}

void sub_10008EE18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21)
{
  sub_100071DBC(&a21);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(a1);
}

void sub_10008EE7C(const std::string *a1, BOOL *a2)
{
  v4 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 68289026;
    LOWORD(v6[0]) = 2082;
    *(v6 + 2) = &unk_1000E37F0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#assetConfig,getRollingMetrics}", &v5, 0x12u);
  }

  sub_10008EA1C(a1, &v5);
  sub_1000863FC(v5, a2);
  if (v6[0])
  {
    sub_10002A838(v6[0]);
  }
}

void sub_10008EF64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_10002A838(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10008EF84(const std::string *a1, void *a2, void *a3, float64_t a4, float64_t a5)
{
  v10 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 68289026;
    LOWORD(v12[0]) = 2082;
    *(v12 + 2) = &unk_1000E37F0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#assetConfig,getIgneousOffsetsForRegion}", &v11, 0x12u);
  }

  sub_10008EA1C(a1, &v11);
  sub_1000865C4(v11, a2, a3, a4, a5);
  if (v12[0])
  {
    sub_10002A838(v12[0]);
  }
}

void sub_10008F08C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_10002A838(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10008F0AC(const std::string *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 68289026;
    LOWORD(v9[0]) = 2082;
    *(v9 + 2) = &unk_1000E37F0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#assetConfig,getSupportedAlertTypesForCountry}", &v8, 0x12u);
  }

  sub_10008EA1C(a1, &v8);
  if (v9[0])
  {
    sub_10002A838(v9[0]);
  }
}

uint64_t sub_10008F1BC(const std::string *a1)
{
  sub_10008EA1C(a1, &v3);
  v1 = *(v3 + 4);
  if (v4)
  {
    sub_10002A838(v4);
  }

  return v1;
}

BOOL sub_10008F1FC(const std::string *a1)
{
  sub_10008EA1C(a1, &v3);
  v1 = *(v3 + 8);
  if (v4)
  {
    sub_10002A838(v4);
  }

  return v1 != 0;
}

uint64_t sub_10008F240(const std::string *a1)
{
  sub_10008EA1C(a1, &v3);
  v1 = *(v3 + 12);
  if (v4)
  {
    sub_10002A838(v4);
  }

  return v1;
}

uint64_t sub_10008F280(const std::string *a1)
{
  sub_10008EA1C(a1, &v3);
  v1 = *(v3 + 16);
  if (v4)
  {
    sub_10002A838(v4);
  }

  return v1;
}

uint64_t sub_10008F2C0(const std::string *a1)
{
  sub_10008EA1C(a1, &v3);
  v1 = *(v3 + 20);
  if (v4)
  {
    sub_10002A838(v4);
  }

  return v1;
}

void sub_10008F300(const std::string *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10008EA1C(a1, &v5);
  if (*(v5 + 47) < 0)
  {
    sub_100004CEC(a2, *(v5 + 24), *(v5 + 32));
  }

  else
  {
    v3 = *(v5 + 24);
    *(a2 + 16) = *(v5 + 40);
    *a2 = v3;
  }

  v4 = v6;
  if (v6)
  {

    sub_10002A838(v4);
  }
}

void sub_10008F384(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_10002A838(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10008F39C(const std::string *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10008EA1C(a1, &v5);
  if (*(v5 + 71) < 0)
  {
    sub_100004CEC(a2, *(v5 + 48), *(v5 + 56));
  }

  else
  {
    v3 = *(v5 + 48);
    *(a2 + 16) = *(v5 + 64);
    *a2 = v3;
  }

  v4 = v6;
  if (v6)
  {

    sub_10002A838(v4);
  }
}

void sub_10008F420(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_10002A838(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10008F438(const std::string *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10008EA1C(a1, &v5);
  if (*(v5 + 95) < 0)
  {
    sub_100004CEC(a2, *(v5 + 72), *(v5 + 80));
  }

  else
  {
    v3 = *(v5 + 72);
    *(a2 + 16) = *(v5 + 88);
    *a2 = v3;
  }

  v4 = v6;
  if (v6)
  {

    sub_10002A838(v4);
  }
}

void sub_10008F4BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_10002A838(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10008F4D4(const std::string *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10008EA1C(a1, &v5);
  if (*(v5 + 119) < 0)
  {
    sub_100004CEC(a2, *(v5 + 96), *(v5 + 104));
  }

  else
  {
    v3 = *(v5 + 96);
    *(a2 + 16) = *(v5 + 112);
    *a2 = v3;
  }

  v4 = v6;
  if (v6)
  {

    sub_10002A838(v4);
  }
}

void sub_10008F558(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_10002A838(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10008F570(const std::string *a1)
{
  sub_10008EA1C(a1, &v3);
  v1 = *(v3 + 321);
  if (v4)
  {
    sub_10002A838(v4);
  }

  return v1;
}

void sub_10008F5B0(const std::string *a1, uint64_t a2)
{
  sub_10008EA1C(a1, &v4);
  sub_10008F62C(v4, a2);
  v3 = v5;
  if (v5)
  {

    sub_10002A838(v3);
  }
}

void sub_10008F614(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_10002A838(a10);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_10008F62C(uint64_t a1, uint64_t a2)
{
  v4 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289026;
    *&buf[4] = 0;
    LOWORD(v31) = 2082;
    *(&v31 + 2) = &unk_1000E37F0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#dbg,#asset,getIgneousProtocolConfigData}", buf, 0x12u);
  }

  v5 = *(a1 + 216);
  if (v5)
  {
    if (v5 + 8 == a2)
    {
      result = *(v5 + 56);
      v28 = *(v5 + 72);
      *(a2 + 80) = *(v5 + 88);
      *(a2 + 48) = result;
      *(a2 + 64) = v28;
    }

    else
    {
      sub_1000409A0(a2, *(v5 + 8), *(v5 + 16), 0xAAAAAAAAAAAAAAABLL * ((*(v5 + 16) - *(v5 + 8)) >> 3));
      sub_1000409A0((a2 + 24), *(v5 + 32), *(v5 + 40), 0xAAAAAAAAAAAAAAABLL * ((*(v5 + 40) - *(v5 + 32)) >> 3));
      result = *(v5 + 56);
      v7 = *(v5 + 72);
      *(a2 + 80) = *(v5 + 88);
      *(a2 + 48) = result;
      *(a2 + 64) = v7;
      *(a2 + 120) = *(v5 + 128);
      v8 = *(v5 + 112);
      v9 = *(a2 + 96);
      if (v9)
      {
        for (i = 0; i != v9; ++i)
        {
          *(*(a2 + 88) + 8 * i) = 0;
        }

        v11 = *(a2 + 104);
        *(a2 + 104) = 0;
        *(a2 + 112) = 0;
        if (v11)
        {
          _ZF = v8 == 0;
        }

        else
        {
          _ZF = 1;
        }

        if (_ZF)
        {
          v13 = v11;
        }

        else
        {
          do
          {
            *buf = v11 + 2;
            *&v31 = v11 + 5;
            sub_10006C8DC(buf, (v8 + 2));
            v13 = *v11;
            sub_100090520(a2 + 88, v11);
            v8 = *v8;
            if (v13)
            {
              v14 = v8 == 0;
            }

            else
            {
              v14 = 1;
            }

            v11 = v13;
          }

          while (!v14);
        }

        sub_10002DA64(a2 + 88, v13);
      }

      if (v8)
      {
        operator new();
      }

      result.n128_u32[0] = *(v5 + 168);
      *(a2 + 160) = result.n128_u32[0];
      v15 = *(v5 + 152);
      v16 = *(a2 + 136);
      if (v16)
      {
        for (j = 0; j != v16; ++j)
        {
          *(*(a2 + 128) + 8 * j) = 0;
        }

        v18 = *(a2 + 144);
        *(a2 + 144) = 0;
        *(a2 + 152) = 0;
        if (v18)
        {
          v19 = v15 == 0;
        }

        else
        {
          v19 = 1;
        }

        if (v19)
        {
          v20 = v18;
        }

        else
        {
          do
          {
            *(v18 + 8) = *(v15 + 8);
            *(v18 + 24) = *(v15 + 24);
            std::string::operator=((v18 + 4), (v15 + 4));
            if (v18 != v15)
            {
              *(v18 + 22) = *(v15 + 22);
              sub_10006A454(v18 + 7, v15[9], 0);
              sub_10006AC94(v18 + 12, v15[12], v15[13], (v15[13] - v15[12]) >> 6);
            }

            v18[15] = v15[15];
            v20 = *v18;
            v21 = *(v18 + 8);
            v18[1] = v21;
            v22 = sub_1000909A8(a2 + 128, v21, v18 + 8);
            sub_10006A728((a2 + 128), v18, v22);
            v15 = *v15;
            if (!v20)
            {
              break;
            }

            v18 = v20;
          }

          while (v15);
        }

        sub_10002D840(a2 + 128, v20);
      }

      if (v15)
      {
        operator new();
      }
    }
  }

  else
  {
    v37 = 1065353216;
    *&v39[8] = 0u;
    __asm { FMOV            V1.2D, #-1.0 }

    v33 = _Q1;
    v34 = _Q1;
    v35 = 0xBFF0000000000000;
    memset(v36, 0, sizeof(v36));
    v38 = 0u;
    *v39 = 0u;
    *&v39[16] = 1065353216;
    sub_100040B40(a2);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v31 = 0uLL;
    *buf = 0;
    sub_100040B40(a2 + 24);
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    memset(v32, 0, sizeof(v32));
    v27 = v34;
    *(a2 + 48) = v33;
    *(a2 + 64) = v27;
    *(a2 + 80) = v35;
    sub_10006B200(a2 + 88, v36);
    sub_10006B300(a2 + 128, &v38);
    sub_10002D804(&v38);
    sub_10002DA28(v36);
    v29 = v32;
    sub_100005208(&v29);
    v29 = buf;
    sub_100005208(&v29);
  }

  return result;
}

void sub_10008FD78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10006B400(va, v5);
  _Unwind_Resume(a1);
}

void sub_10008FEA0(const std::string *a1, uint64_t a2)
{
  sub_10008EA1C(a1, &v4);
  sub_10008FF1C(v4, a2);
  v3 = v5;
  if (v5)
  {

    sub_10002A838(v3);
  }
}

void sub_10008FF04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_10002A838(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10008FF1C(uint64_t a1, uint64_t a2)
{
  v4 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEBUG))
  {
    *v10 = 68289026;
    *&v10[8] = 2082;
    *&v10[10] = &unk_1000E37F0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#dbg,#asset,getBleTransportConfigData}", v10, 0x12u);
  }

  v5 = *(a1 + 208);
  if (v5)
  {
    v6 = *(v5 + 8);
    v7 = *(v5 + 24);
    *(a2 + 28) = *(v5 + 36);
    *a2 = v6;
    *(a2 + 16) = v7;
    if (v5 + 8 != a2)
    {
      *(a2 + 80) = *(v5 + 88);
      sub_10006F704((a2 + 48), *(v5 + 72), 0);
      *(a2 + 120) = *(v5 + 128);
      sub_10006F704((a2 + 88), *(v5 + 112), 0);
    }

    v8 = *(v5 + 136);
    *(a2 + 144) = *(v5 + 152);
    *(a2 + 128) = v8;
  }

  else
  {
    sub_100017378(v10);
    v9 = *&v10[16];
    *a2 = *v10;
    *(a2 + 16) = v9;
    *(a2 + 28) = *&v10[28];
    sub_100017480(a2 + 48, v11);
    sub_100017480(a2 + 88, v12);
    *(a2 + 128) = v13;
    *(a2 + 144) = v14;
    sub_100017590(v12);
    sub_100017590(v11);
  }
}

void sub_1000900A0(const std::string *a1@<X0>, void *a2@<X8>)
{
  sub_10008EA1C(a1, &v4);
  sub_10008672C(v4, a2);
  v3 = v5;
  if (v5)
  {

    sub_10002A838(v3);
  }
}

void sub_100090104(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_10002A838(a10);
  }

  _Unwind_Resume(exception_object);
}

float sub_10009011C(const std::string *a1)
{
  sub_10008EA1C(a1, &v3);
  v1 = *(v3 + 236);
  if (v4)
  {
    sub_10002A838(v4);
  }

  return v1;
}

uint64_t sub_10009015C(const std::string *a1)
{
  sub_10008EA1C(a1, &v3);
  v1 = *(v3 + 144);
  if (v4)
  {
    sub_10002A838(v4);
  }

  return v1;
}

void sub_10009019C(const std::string *a1, uint64_t a2)
{
  sub_10008EA1C(a1, &v4);
  sub_100090218(v4, a2);
  v3 = v5;
  if (v5)
  {

    sub_10002A838(v3);
  }
}

void sub_100090200(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_10002A838(a10);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_100090218(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 256);
  *a2 = *(a1 + 240);
  *(a2 + 16) = v4;
  if (a1 + 240 != a2)
  {
    sub_100090D08((a2 + 32), *(a1 + 272), *(a1 + 280), (*(a1 + 280) - *(a1 + 272)) >> 2);
  }

  result = *(a1 + 296);
  *(a2 + 72) = *(a1 + 312);
  *(a2 + 56) = result;
  return result;
}

void sub_100090278(std::string *a1, const std::string *a2)
{
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  v4 = sub_100002DB0();
  std::string::operator=(a1, (v4 + 5));
  if (!sub_10005B888(&a2[1].__r_.__value_.__l.__size_, &a1->__r_.__value_.__l.__data_))
  {
    std::string::operator=(a1, a2);
  }

  v5 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEBUG))
  {
    if ((a1->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = a1;
    }

    else
    {
      v6 = a1->__r_.__value_.__r.__words[0];
    }

    v7[0] = 68289283;
    v7[1] = 0;
    v8 = 2082;
    v9 = &unk_1000E37F0;
    v10 = 2081;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#assetConfig,assetCountryName, countryName:%{private, location:escape_only}s}", v7, 0x1Cu);
  }
}

void sub_100090384(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000903A0(const std::string *a1, uint64_t *a2)
{
  sub_10008EA1C(a1, &v4);
  sub_100086834(v4, a2);
  v3 = v5;
  if (v5)
  {

    sub_10002A838(v3);
  }
}

void sub_100090404(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_10002A838(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10009041C(const std::string *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10008EA1C(a1, &v5);
  if (*(v5 + 143) < 0)
  {
    sub_100004CEC(a2, *(v5 + 120), *(v5 + 128));
  }

  else
  {
    v3 = *(v5 + 120);
    *(a2 + 16) = *(v5 + 136);
    *a2 = v3;
  }

  v4 = v6;
  if (v6)
  {

    sub_10002A838(v4);
  }
}

void sub_1000904A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_10002A838(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000904B8(const std::string *a1, void *a2)
{
  sub_10008EA1C(a1, &v4);
  *a2 = *(v4 + 192);
  v3 = v5;
  if (v5)
  {

    sub_10002A838(v3);
  }
}

void sub_100090520(uint64_t a1, void *a2)
{
  v4 = sub_100039B6C(a1, a2 + 16);
  *(a2 + 1) = v4;
  v5 = *(a1 + 8);
  v6 = (*(a1 + 24) + 1);
  v7 = *(a1 + 32);
  if (!v5 || (v7 * v5) < v6)
  {
    v8 = 1;
    if (v5 >= 3)
    {
      v8 = (v5 & (v5 - 1)) != 0;
    }

    v9 = v8 | (2 * v5);
    v10 = vcvtps_u32_f32(v6 / v7);
    if (v9 <= v10)
    {
      prime = v10;
    }

    else
    {
      prime = v9;
    }

    if (prime == 1)
    {
      prime = 2;
    }

    else if ((prime & (prime - 1)) != 0)
    {
      prime = std::__next_prime(prime);
      v5 = *(a1 + 8);
    }

    if (prime > v5)
    {
LABEL_13:
      if (!(prime >> 61))
      {
        operator new();
      }

      sub_100004E38();
    }

    if (prime < v5)
    {
      v12 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
      if (v5 < 3 || (v13 = vcnt_s8(v5), v13.i16[0] = vaddlv_u8(v13), v13.u32[0] > 1uLL))
      {
        v12 = std::__next_prime(v12);
      }

      else
      {
        v14 = 1 << -__clz(v12 - 1);
        if (v12 >= 2)
        {
          v12 = v14;
        }
      }

      if (prime <= v12)
      {
        prime = v12;
      }

      if (prime < v5)
      {
        if (prime)
        {
          goto LABEL_13;
        }

        v15 = *a1;
        *a1 = 0;
        if (v15)
        {
          operator delete(v15);
        }

        *(a1 + 8) = 0;
      }
    }

    v5 = *(a1 + 8);
  }

  v16 = vcnt_s8(v5);
  v16.i16[0] = vaddlv_u8(v16);
  v17 = v16.u32[0];
  if (v16.u32[0] > 1uLL)
  {
    v18 = v4;
    if (v5 <= v4)
    {
      v18 = v4 % v5;
    }
  }

  else
  {
    v18 = (v5 - 1) & v4;
  }

  v19 = *(*a1 + 8 * v18);
  if (v19)
  {
    v20 = *v19;
    if (*v19)
    {
      v21 = 0;
      do
      {
        v22 = v20[1];
        if (v17 > 1)
        {
          v23 = v20[1];
          if (v22 >= v5)
          {
            v23 = v22 % v5;
          }
        }

        else
        {
          v23 = v22 & (v5 - 1);
        }

        if (v23 != v18)
        {
          break;
        }

        v24 = v22 == v4 && sub_10004E530(a1, v20 + 2, a2 + 2);
        if ((v21 & (v24 != (v21 & 1))) != 0)
        {
          break;
        }

        v21 |= v24 != (v21 & 1);
        v19 = *v19;
        v20 = *v19;
      }

      while (*v19);
      v5 = *(a1 + 8);
      v25 = vcnt_s8(v5);
      v25.i16[0] = vaddlv_u8(v25);
      v17 = v25.u32[0];
    }
  }

  v26 = *(a2 + 1);
  if (v17 > 1)
  {
    if (v26 >= v5)
    {
      v26 %= v5;
    }
  }

  else
  {
    v26 &= v5 - 1;
  }

  if (!v19)
  {
    *a2 = *(a1 + 16);
    *(a1 + 16) = a2;
    *(*a1 + 8 * v26) = a1 + 16;
    if (!*a2)
    {
      goto LABEL_66;
    }

    v27 = *(*a2 + 8);
    if (v17 > 1)
    {
      if (v27 >= v5)
      {
        v27 %= v5;
      }
    }

    else
    {
      v27 &= v5 - 1;
    }

LABEL_65:
    *(*a1 + 8 * v27) = a2;
    goto LABEL_66;
  }

  *a2 = *v19;
  *v19 = a2;
  if (*a2)
  {
    v27 = *(*a2 + 8);
    if (v17 > 1)
    {
      if (v27 >= v5)
      {
        v27 %= v5;
      }
    }

    else
    {
      v27 &= v5 - 1;
    }

    if (v27 != v26)
    {
      goto LABEL_65;
    }
  }

LABEL_66:
  ++*(a1 + 24);
}

uint64_t *sub_1000909A8(uint64_t a1, unint64_t a2, unsigned __int16 *a3)
{
  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) + 1);
  v8 = *(a1 + 32);
  if (!v6 || (v8 * v6) < v7)
  {
    v9 = 1;
    if (v6 >= 3)
    {
      v9 = (v6 & (v6 - 1)) != 0;
    }

    v10 = v9 | (2 * v6);
    v11 = vcvtps_u32_f32(v7 / v8);
    if (v10 <= v11)
    {
      prime = v11;
    }

    else
    {
      prime = v10;
    }

    if (prime == 1)
    {
      prime = 2;
    }

    else if ((prime & (prime - 1)) != 0)
    {
      prime = std::__next_prime(prime);
      v6 = *(a1 + 8);
    }

    if (prime > v6)
    {
LABEL_13:
      if (!(prime >> 61))
      {
        operator new();
      }

      sub_100004E38();
    }

    if (prime < v6)
    {
      v13 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
      if (v6 < 3 || (v14 = vcnt_s8(v6), v14.i16[0] = vaddlv_u8(v14), v14.u32[0] > 1uLL))
      {
        v13 = std::__next_prime(v13);
      }

      else
      {
        v15 = 1 << -__clz(v13 - 1);
        if (v13 >= 2)
        {
          v13 = v15;
        }
      }

      if (prime <= v13)
      {
        prime = v13;
      }

      if (prime >= v6)
      {
        v6 = *(a1 + 8);
      }

      else
      {
        if (prime)
        {
          goto LABEL_13;
        }

        v26 = *a1;
        *a1 = 0;
        if (v26)
        {
          operator delete(v26);
        }

        v6 = 0;
        *(a1 + 8) = 0;
      }
    }
  }

  v16 = vcnt_s8(v6);
  v16.i16[0] = vaddlv_u8(v16);
  if (v16.u32[0] > 1uLL)
  {
    v17 = a2;
    if (v6 <= a2)
    {
      v17 = a2 % v6;
    }
  }

  else
  {
    v17 = (v6 - 1) & a2;
  }

  v18 = *(*a1 + 8 * v17);
  if (!v18)
  {
    return 0;
  }

  v19 = 0;
  do
  {
    result = v18;
    v18 = *v18;
    if (!v18)
    {
      break;
    }

    v21 = v18[1];
    if (v16.u32[0] > 1uLL)
    {
      v22 = v18[1];
      if (v21 >= v6)
      {
        v22 = v21 % v6;
      }
    }

    else
    {
      v22 = v21 & (v6 - 1);
    }

    if (v22 != v17)
    {
      break;
    }

    v23 = v21 == a2 && *(v18 + 8) == *a3;
    v24 = v23 != (v19 & 1);
    v25 = v19 & v24;
    v19 |= v24;
  }

  while (v25 != 1);
  return result;
}

void *sub_100090D08(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 2)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 62))
    {
      v9 = v7 >> 1;
      if (v7 >> 1 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v10 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_10001CF24(v6, v10);
    }

    sub_10000509C();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 2)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

uint64_t sub_100090E34(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      sub_10004190C((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void sub_100091094(_Unwind_Exception *a1)
{
  if (*(v1 + 167) < 0)
  {
    operator delete(*(v1 + 144));
  }

  if (*(v1 + 143) < 0)
  {
    operator delete(*(v1 + 120));
  }

  if (*(v1 + 119) < 0)
  {
    operator delete(v3[3]);
  }

  if (*(v1 + 95) < 0)
  {
    operator delete(*v3);
  }

  if (*(v1 + 71) < 0)
  {
    operator delete(*v2);
  }

  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v5);
  _Unwind_Resume(a1);
}

void sub_10009113C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10013D510;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_100091190(uint64_t a1)
{
  v2 = *(a1 + 296);
  if (v2)
  {
    *(a1 + 304) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 248);
  *(a1 + 248) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(a1 + 240);
  *(a1 + 240) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(a1 + 232);
  *(a1 + 232) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(a1 + 224);
  *(a1 + 224) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  if (*(a1 + 215) < 0)
  {
    operator delete(*(a1 + 192));
  }

  if (*(a1 + 167) < 0)
  {
    operator delete(*(a1 + 144));
  }

  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  if (*(a1 + 71) < 0)
  {
    v7 = *(a1 + 48);

    operator delete(v7);
  }
}

const void **sub_100091304(void *a1, const void **a2)
{
  v4 = sub_100039B6C(a1, a2);
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

  if (!sub_10004E530(a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_10009158C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100071DBC(va);
  _Unwind_Resume(a1);
}

void sub_1000915A4(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
LABEL_6:
    if (!(prime >> 61))
    {
      operator new();
    }

    sub_100004E38();
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
      if (prime)
      {
        goto LABEL_6;
      }

      v8 = *a1;
      *a1 = 0;
      if (v8)
      {
        operator delete(v8);
      }

      *(a1 + 8) = 0;
    }
  }
}

void sub_1000917A8(uint64_t a1, double *a2, uint64_t a3)
{
  v3 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    *&buf[4] = 0;
    LOWORD(v73[0]) = 2082;
    *(v73 + 2) = "";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#chsel,getChannels}", buf, 0x12u);
  }

  v4 = sub_10008E020();
  sub_1000900A0(v4, &v63);
  *&v5 = *a2;
  v6 = a2[1];
  v7 = *a2 != 0.0;
  if (v6 != 0.0)
  {
    v7 = 1;
  }

  if (v6 <= 180.0 && v6 >= -180.0 && *&v5 <= 90.0 && *&v5 >= -90.0 && v7)
  {
    v8 = v63;
    v55 = v64;
    if (v63 != v64)
    {
      *&v5 = 68290051;
      v54 = v5;
      do
      {
        v9 = sub_10006E650(buf, v8);
        memset(&__p, 0, sizeof(__p));
        v10 = *a2;
        if (*a2 >= v83 && v10 <= v85)
        {
          v12 = a2[1];
          if (v12 >= v84 && v12 <= v86)
          {
            GlobalTileIdFromLatLonAndGridSizeInDegrees = SAGridId::generateGlobalTileIdFromLatLonAndGridSizeInDegrees(v9, v10, v12, v87, v81, v82);
            v15 = v91[0];
            v16 = v91[1];
            while (v15 != v16)
            {
              sub_1000060C4(&v58, "");
              if (v90 <= 0x64 && (v17 = v90, arc4random_uniform(0x64u) <= v17))
              {
                std::to_string(&__dst, GlobalTileIdFromLatLonAndGridSizeInDegrees);
                v19 = v15[23];
                if (v19 >= 0)
                {
                  v20 = v15;
                }

                else
                {
                  v20 = *v15;
                }

                if (v19 >= 0)
                {
                  v21 = *(v15 + 23);
                }

                else
                {
                  v21 = *(v15 + 1);
                }

                v22 = std::string::insert(&__dst, 0, v20, v21);
                v23 = v22->__r_.__value_.__r.__words[0];
                v71[0] = v22->__r_.__value_.__l.__size_;
                *(v71 + 7) = *(&v22->__r_.__value_.__r.__words[1] + 7);
                v24 = HIBYTE(v22->__r_.__value_.__r.__words[2]);
                v22->__r_.__value_.__l.__size_ = 0;
                v22->__r_.__value_.__r.__words[2] = 0;
                v22->__r_.__value_.__r.__words[0] = 0;
                if (v60 < 0)
                {
                  operator delete(v58);
                }

                v58 = v23;
                *v59 = v71[0];
                *&v59[7] = *(v71 + 7);
                v60 = v24;
                if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__dst.__r_.__value_.__l.__data_);
                  v24 = v60;
                  v23 = v58;
                }

                if (v24 >= 0)
                {
                  v25 = &v58;
                }

                else
                {
                  v25 = v23;
                }

                v26 = [NSString stringWithUTF8String:v25, v54];
                v27 = [v26 dataUsingEncoding:4];

                if (v27)
                {
                  v28 = [v27 base64EncodedStringWithOptions:0];
                  v29 = v28;
                  if (v28)
                  {
                    v30 = v28;
                    sub_1000060C4(&__dst, [v29 UTF8String]);
                    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(__p.__r_.__value_.__l.__data_);
                    }

                    __p = __dst;
                    v62 = 2;
                    v31 = SALogObjectGeneral;
                    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
                    {
                      v32 = v15;
                      if (v15[23] < 0)
                      {
                        v32 = *v15;
                      }

                      p_p = &__p;
                      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                      {
                        p_p = __p.__r_.__value_.__r.__words[0];
                      }

                      __dst.__r_.__value_.__r.__words[0] = v54;
                      LOWORD(__dst.__r_.__value_.__r.__words[1]) = 2082;
                      *(&__dst.__r_.__value_.__r.__words[1] + 2) = "";
                      WORD1(__dst.__r_.__value_.__r.__words[2]) = 1025;
                      HIDWORD(__dst.__r_.__value_.__r.__words[2]) = GlobalTileIdFromLatLonAndGridSizeInDegrees;
                      *v66 = 2081;
                      *&v66[2] = v32;
                      v67 = 2081;
                      v68 = p_p;
                      v69 = 1025;
                      v70 = 2;
                      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#chsel,getChannels,Dithering, tileIdKey:%{private}d, channelPrefix:%{private, location:escape_only}s, channelId:%{private, location:escape_only}s, channelType:%{private}d}", &__dst, 0x32u);
                    }

                    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                    {
                      sub_100004CEC(&__dst, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
                    }

                    else
                    {
                      __dst = __p;
                    }

                    *v66 = v62;
                    sub_100047118(a3, &__dst);
                    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(__dst.__r_.__value_.__l.__data_);
                    }
                  }
                }
              }

              else
              {
                v18 = SALogObjectGeneral;
                if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
                {
                  __dst.__r_.__value_.__r.__words[0] = 68289026;
                  LOWORD(__dst.__r_.__value_.__r.__words[1]) = 2082;
                  *(&__dst.__r_.__value_.__r.__words[1] + 2) = "";
                  _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#chsel,getChannels,pp is 0}", &__dst, 0x12u);
                }
              }

              if (v60 < 0)
              {
                operator delete(v58);
              }

              v15 += 24;
            }

            v34 = v93[0];
            v35 = v93[1];
            while (v34 != v35)
            {
              sub_1000060C4(&v58, "");
              if (v92 <= 0x64 && (v36 = v92, arc4random_uniform(0x64u) <= v36))
              {
                std::to_string(&__dst, GlobalTileIdFromLatLonAndGridSizeInDegrees);
                v38 = v34[23];
                if (v38 >= 0)
                {
                  v39 = v34;
                }

                else
                {
                  v39 = *v34;
                }

                if (v38 >= 0)
                {
                  v40 = *(v34 + 23);
                }

                else
                {
                  v40 = *(v34 + 1);
                }

                v41 = std::string::insert(&__dst, 0, v39, v40);
                v42 = v41->__r_.__value_.__r.__words[0];
                v71[0] = v41->__r_.__value_.__l.__size_;
                *(v71 + 7) = *(&v41->__r_.__value_.__r.__words[1] + 7);
                v43 = HIBYTE(v41->__r_.__value_.__r.__words[2]);
                v41->__r_.__value_.__l.__size_ = 0;
                v41->__r_.__value_.__r.__words[2] = 0;
                v41->__r_.__value_.__r.__words[0] = 0;
                if (v60 < 0)
                {
                  operator delete(v58);
                }

                v58 = v42;
                *v59 = v71[0];
                *&v59[7] = *(v71 + 7);
                v60 = v43;
                if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__dst.__r_.__value_.__l.__data_);
                  v43 = v60;
                  v42 = v58;
                }

                if (v43 >= 0)
                {
                  v44 = &v58;
                }

                else
                {
                  v44 = v42;
                }

                v45 = [NSString stringWithUTF8String:v44, v54];
                v46 = [v45 dataUsingEncoding:4];

                if (v46)
                {
                  v47 = [v46 base64EncodedStringWithOptions:0];
                  v48 = v47;
                  if (v47)
                  {
                    v49 = v47;
                    sub_1000060C4(&__dst, [v48 UTF8String]);
                    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(__p.__r_.__value_.__l.__data_);
                    }

                    __p = __dst;
                    v62 = 2;
                    v50 = SALogObjectGeneral;
                    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
                    {
                      v51 = v34;
                      if (v34[23] < 0)
                      {
                        v51 = *v34;
                      }

                      v52 = &__p;
                      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                      {
                        v52 = __p.__r_.__value_.__r.__words[0];
                      }

                      __dst.__r_.__value_.__r.__words[0] = v54;
                      LOWORD(__dst.__r_.__value_.__r.__words[1]) = 2082;
                      *(&__dst.__r_.__value_.__r.__words[1] + 2) = "";
                      WORD1(__dst.__r_.__value_.__r.__words[2]) = 1025;
                      HIDWORD(__dst.__r_.__value_.__r.__words[2]) = GlobalTileIdFromLatLonAndGridSizeInDegrees;
                      *v66 = 2081;
                      *&v66[2] = v51;
                      v67 = 2081;
                      v68 = v52;
                      v69 = 1025;
                      v70 = 2;
                      _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#chsel,getChannels,Non-Dithering, tileIdKey:%{private}d, channelPrefix:%{private, location:escape_only}s, channelId:%{private, location:escape_only}s, channelType:%{private}d}", &__dst, 0x32u);
                    }

                    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                    {
                      sub_100004CEC(&__dst, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
                    }

                    else
                    {
                      __dst = __p;
                    }

                    *v66 = v62;
                    sub_100047118(a3, &__dst);
                    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(__dst.__r_.__value_.__l.__data_);
                    }
                  }
                }
              }

              else
              {
                v37 = SALogObjectGeneral;
                if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
                {
                  __dst.__r_.__value_.__r.__words[0] = 68289026;
                  LOWORD(__dst.__r_.__value_.__r.__words[1]) = 2082;
                  *(&__dst.__r_.__value_.__r.__words[1] + 2) = "";
                  _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#chsel,getChannels,pp is 0}", &__dst, 0x12u);
                }
              }

              if (v60 < 0)
              {
                operator delete(v58);
              }

              v34 += 24;
            }
          }
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        __dst.__r_.__value_.__r.__words[0] = v93;
        sub_100005208(&__dst);
        __dst.__r_.__value_.__r.__words[0] = v91;
        sub_100005208(&__dst);
        if (v88)
        {
          v89 = v88;
          operator delete(v88);
        }

        if (v80 < 0)
        {
          operator delete(v79);
        }

        if (v78 < 0)
        {
          operator delete(v77);
        }

        if (v76 < 0)
        {
          operator delete(v75);
        }

        if (v74 < 0)
        {
          operator delete(v73[0]);
        }

        v8 += 280;
      }

      while (v8 != v55);
    }
  }

  else
  {
    v53 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      LOWORD(v73[0]) = 2082;
      *(v73 + 2) = "";
      _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#chsel,getChannels,invalid locationd}", buf, 0x12u);
    }
  }

  *buf = &v63;
  sub_10006EB04(buf);
}

void sub_10009201C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, char *a50)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  sub_10006E900(&a50);
  a50 = &a34;
  sub_10006EB04(&a50);
  _Unwind_Resume(a1);
}

void sub_100092130(uint64_t a1, double *a2, uint64_t a3)
{
  v5 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    *&buf[4] = 0;
    LOWORD(v52[0]) = 2082;
    *(v52 + 2) = "";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#chsel,updateIgneousLivabilityChannels}", buf, 0x12u);
  }

  v6 = sub_10008E020();
  sub_1000900A0(v6, &v42);
  *&v7 = *a2;
  v8 = a2[1];
  v9 = *a2 != 0.0;
  if (v8 != 0.0)
  {
    v9 = 1;
  }

  if (v8 <= 180.0 && v8 >= -180.0 && *&v7 <= 90.0 && *&v7 >= -90.0 && v9)
  {
    v10 = v42;
    v11 = v43;
    if (v42 != v43)
    {
      *&v7 = 68290051;
      v35 = v7;
      do
      {
        v12 = sub_10006E650(buf, v10);
        memset(&v40, 0, sizeof(v40));
        v13 = v60;
        if ((v60 & 0x80u) != 0)
        {
          v13 = v59;
        }

        if (v13)
        {
          v14 = *a2;
          if (*a2 >= v63 && v14 <= v65)
          {
            v16 = a2[1];
            if (v16 >= v64 && v16 <= v66)
            {
              GlobalTileIdFromLatLonAndGridSizeInDegrees = SAGridId::generateGlobalTileIdFromLatLonAndGridSizeInDegrees(v12, v14, v16, v67, v61, v62);
              sub_1000060C4(&__p, "");
              std::to_string(&__dst, GlobalTileIdFromLatLonAndGridSizeInDegrees);
              v36 = GlobalTileIdFromLatLonAndGridSizeInDegrees;
              if ((v60 & 0x80u) == 0)
              {
                v19 = &v58;
              }

              else
              {
                v19 = v58;
              }

              if ((v60 & 0x80u) == 0)
              {
                v20 = v60;
              }

              else
              {
                v20 = v59;
              }

              v21 = std::string::insert(&__dst, 0, v19, v20);
              v22 = v21->__r_.__value_.__r.__words[0];
              v50[0] = v21->__r_.__value_.__l.__size_;
              *(v50 + 7) = *(&v21->__r_.__value_.__r.__words[1] + 7);
              v23 = HIBYTE(v21->__r_.__value_.__r.__words[2]);
              v21->__r_.__value_.__l.__size_ = 0;
              v21->__r_.__value_.__r.__words[2] = 0;
              v21->__r_.__value_.__r.__words[0] = 0;
              if (v39 < 0)
              {
                operator delete(__p);
              }

              __p = v22;
              *v38 = v50[0];
              *&v38[7] = *(v50 + 7);
              v39 = v23;
              if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__dst.__r_.__value_.__l.__data_);
                v23 = v39;
                v22 = __p;
              }

              if (v23 >= 0)
              {
                p_p = &__p;
              }

              else
              {
                p_p = v22;
              }

              v25 = [NSString stringWithUTF8String:p_p, v35];
              v26 = [v25 dataUsingEncoding:4];

              if (v26)
              {
                v27 = [v26 base64EncodedStringWithOptions:0];
                v28 = v27;
                if (v27)
                {
                  v29 = v27;
                  v30 = a3;
                  sub_1000060C4(&__dst, [v28 UTF8String]);
                  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v40.__r_.__value_.__l.__data_);
                  }

                  v40 = __dst;
                  v41 = 2;
                  v31 = SALogObjectGeneral;
                  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
                  {
                    v32 = &v58;
                    if ((v60 & 0x80u) != 0)
                    {
                      v32 = v58;
                    }

                    v33 = &v40;
                    if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                    {
                      v33 = v40.__r_.__value_.__r.__words[0];
                    }

                    __dst.__r_.__value_.__r.__words[0] = v35;
                    LOWORD(__dst.__r_.__value_.__r.__words[1]) = 2082;
                    *(&__dst.__r_.__value_.__r.__words[1] + 2) = "";
                    WORD1(__dst.__r_.__value_.__r.__words[2]) = 1025;
                    HIDWORD(__dst.__r_.__value_.__r.__words[2]) = v36;
                    *v45 = 2081;
                    *&v45[2] = v32;
                    v46 = 2081;
                    v47 = v33;
                    v48 = 1025;
                    v49 = 2;
                    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#chsel,updateIgneousLivabilityChannels,livabilityChannel, tileIdKey:%{private}d, channelPrefix:%{private, location:escape_only}s, channelId:%{private, location:escape_only}s, channelType:%{private}d}", &__dst, 0x32u);
                  }

                  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
                  {
                    sub_100004CEC(&__dst, v40.__r_.__value_.__l.__data_, v40.__r_.__value_.__l.__size_);
                  }

                  else
                  {
                    __dst = v40;
                  }

                  a3 = v30;
                  *v45 = v41;
                  sub_100047118(v30, &__dst);
                  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(__dst.__r_.__value_.__l.__data_);
                  }
                }
              }

              if (v39 < 0)
              {
                operator delete(__p);
              }

              if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v40.__r_.__value_.__l.__data_);
              }
            }
          }
        }

        __dst.__r_.__value_.__r.__words[0] = &v71;
        sub_100005208(&__dst);
        __dst.__r_.__value_.__r.__words[0] = &v70;
        sub_100005208(&__dst);
        if (v68)
        {
          v69 = v68;
          operator delete(v68);
        }

        if (v60 < 0)
        {
          operator delete(v58);
        }

        if (v57 < 0)
        {
          operator delete(v56);
        }

        if (v55 < 0)
        {
          operator delete(v54);
        }

        if (v53 < 0)
        {
          operator delete(v52[0]);
        }

        v10 += 280;
      }

      while (v10 != v11);
    }
  }

  else
  {
    v34 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      LOWORD(v52[0]) = 2082;
      *(v52 + 2) = "";
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#chsel,getChannels,invalid locationd}", buf, 0x12u);
    }
  }

  *buf = &v42;
  sub_10006EB04(buf);
}

void sub_100092678(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char *a44)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  sub_10006E900(&a44);
  a44 = &a28;
  sub_10006EB04(&a44);
  _Unwind_Resume(a1);
}

uint64_t sub_100092734(uint64_t a1, double *a2)
{
  v3 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    *&buf[4] = 0;
    LOWORD(v20[0]) = 2082;
    *(v20 + 2) = "";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#chsel,isLocationWithinIgneousCoveredRegion}", buf, 0x12u);
  }

  v4 = sub_10008E020();
  sub_1000900A0(v4, &v16);
  v5 = *a2;
  v6 = a2[1];
  v7 = *a2 != 0.0;
  if (v6 != 0.0)
  {
    v7 = 1;
  }

  if (v6 <= 180.0 && v6 >= -180.0 && v5 <= 90.0 && v5 >= -90.0 && v7)
  {
    v8 = v16;
    for (i = v17; v8 != i; v8 += 280)
    {
      sub_10006E650(buf, v8);
      v10 = *a2 < v28 || *a2 > v30;
      if (v10 || (v11 = a2[1], v11 < v29))
      {
        v18 = v35;
        sub_100005208(&v18);
        v18 = v34;
        sub_100005208(&v18);
        if (__p)
        {
          v33 = __p;
          operator delete(__p);
        }

        if (v27 < 0)
        {
          operator delete(v26);
        }

        if (v25 < 0)
        {
          operator delete(v24);
        }

        if (v23 < 0)
        {
          operator delete(v22);
        }

        if (v21 < 0)
        {
          operator delete(v20[0]);
        }
      }

      else
      {
        v12 = v31;
        v18 = v35;
        sub_100005208(&v18);
        v18 = v34;
        sub_100005208(&v18);
        if (__p)
        {
          v33 = __p;
          operator delete(__p);
        }

        if (v27 < 0)
        {
          operator delete(v26);
        }

        if (v25 < 0)
        {
          operator delete(v24);
        }

        if (v23 < 0)
        {
          operator delete(v22);
        }

        if (v21 < 0)
        {
          operator delete(v20[0]);
        }

        if (v11 <= v12)
        {
          v14 = 1;
          goto LABEL_42;
        }
      }
    }
  }

  else
  {
    v13 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      LOWORD(v20[0]) = 2082;
      *(v20 + 2) = "";
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#chsel,isLocationWithinIgneousCoveredRegion,invalid locationd}", buf, 0x12u);
    }
  }

  v14 = 0;
LABEL_42:
  *buf = &v16;
  sub_10006EB04(buf);
  return v14;
}

void sub_100092BD4(void *a1, void *a2)
{
  v3 = a2;
  *a1 = off_10013D560;
  v4 = v3;
  a1[1] = v4;
  a1[2] = 0;
  v5[0] = off_10013D5A0;
  v5[1] = a1;
  v5[3] = v5;
  sub_10009320C((a1 + 3), v4, 30.0);
}

void sub_100092CBC(_Unwind_Exception *a1)
{
  sub_1000933D4(v1 + 24);

  _Unwind_Resume(a1);
}

uint64_t sub_100092CFC(uint64_t a1)
{
  *a1 = off_10013D560;
  sub_1000933D4(a1 + 24);

  return a1;
}

void sub_100092D54(uint64_t a1)
{
  sub_100092CFC(a1);

  operator delete();
}

void sub_100092D8C(uint64_t a1, int a2)
{
  v4 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 68289282;
    v7[1] = 0;
    v8 = 2082;
    v9 = "";
    v10 = 1026;
    v11 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#wow,assertWoW,scheduled, state:%{public}hhd}", v7, 0x18u);
  }

  if (a2)
  {
    v5 = sub_10008E020();
    LOBYTE(v7[0]) = sub_10008F1FC(v5);
    v6 = -1.0;
    if (v7[0])
    {
      goto LABEL_8;
    }
  }

  else
  {
    LOBYTE(v7[0]) = 0;
  }

  v6 = 0.0;
LABEL_8:
  sub_100092E8C((a1 + 24), v7, v6);
}

void sub_100092E8C(unsigned __int8 *a1, unsigned __int8 *a2, double a3)
{
  v6 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v12 = 0;
    v13 = 2082;
    v14 = "";
    v15 = 2050;
    v16 = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saHysteresis,setValue, delay:%{public}0.2f}", buf, 0x1Cu);
  }

  if (a3 < 0.0)
  {
    a3 = *(a1 + 1);
  }

  if (a3 == 0.0)
  {
    v7 = *a2;
    if ((a1[64] & 1) != 0 || a1[1] != 1 || *a1 != v7)
    {
      *a1 = v7 | 0x100;
      a1[64] = 0;
      (*(**(a1 + 3) + 40))(*(a1 + 3));
      v8 = *(a1 + 2);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100093438;
      block[3] = &unk_1001390D0;
      block[4] = a1;
      dispatch_async(v8, block);
    }
  }

  else
  {
    v9 = *a2;
    if (a1[1] != 1 || *a1 != v9)
    {
      *a1 = v9 | 0x100;
      a1[64] = 0;
      (*(**(a1 + 3) + 40))(*(a1 + 3));
      sub_1000935DC(a1);
    }
  }
}

uint64_t sub_1000930FC(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10013D5A0;
  a2[1] = v2;
  return result;
}

id sub_100093128(uint64_t a1, unsigned __int8 *a2)
{
  result = *(*(a1 + 8) + 16);
  if (result)
  {
    return [result assertWoW:*a2];
  }

  return result;
}

uint64_t sub_100093140(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10009318C(uint64_t a1)
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

void sub_10009320C(uint64_t a1, void *a2, double a3)
{
  v5 = a2;
  *a1 = 0;
  *(a1 + 8) = a3;
  *(a1 + 16) = v5;
  operator new();
}

void sub_1000932DC(_Unwind_Exception *a1)
{
  v4 = *(v1 + 24);
  *(v1 + 24) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10009333C(uint64_t a1, uint64_t a2)
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

uint64_t sub_1000933D4(uint64_t a1)
{
  sub_10009318C(a1 + 32);
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_100093438(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_autoreleasePoolPush();
  sub_1000934C8(v1);
  objc_autoreleasePoolPop(v2);
}

void sub_1000934C8(unsigned __int8 *a1)
{
  v2 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 68289026;
    v7[1] = 0;
    v8 = 2082;
    v9 = "";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saHysteresis,onHysteresisTimerExpired}", v7, 0x12u);
  }

  v3 = a1[1];
  v4 = a1[3];
  if (v3 == v4 && v3 != 0)
  {
    v3 = *a1;
    v4 = a1[2];
  }

  if (v3 != v4)
  {
    *(a1 + 1) = *a1;
    v6 = *(a1 + 7);
    if (v6)
    {
      (*(*v6 + 48))(v6, a1 + 2);
    }
  }
}

uint64_t sub_1000935DC(uint64_t a1)
{
  v1 = *(a1 + 24);
  v3[0] = off_10013D630;
  v3[1] = a1;
  v3[3] = v3;
  (*(*v1 + 16))(v1, v3);
  return sub_10000F274(v3);
}

void sub_100093688(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10000F274(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10009370C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10013D630;
  a2[1] = v2;
  return result;
}

void sub_100093738(uint64_t a1)
{
  v1 = *(a1 + 8);
  v1[64] = 0;
  sub_1000934C8(v1);
}

uint64_t sub_100093744(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100093790(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  *a1 = v5;
  sub_10000F1DC(a1 + 8, a3);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 104) = 0;
  *(a1 + 112) = 1;
  *(a1 + 120) = 5;
  *(a1 + 128) = 0xBFF0000000000000;
  *(a1 + 136) = 257;
  *(a1 + 140) = 0;
  *(a1 + 144) = 0;

  return a1;
}

id *sub_100093830(id *a1)
{
  sub_10001CB38((a1 + 6));
  sub_10000F274((a1 + 1));

  return a1;
}

void sub_10009386C(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    v1 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ChannelSelectorScheduler,#warning,activityAlreadyScheduled}", buf, 0x12u);
    }
  }

  else
  {
    memset(buf, 0, sizeof(buf));
    __asm { FMOV            V1.2D, #-1.0 }

    v27 = 0u;
    v28 = _Q1;
    v29 = _Q1;
    v30 = 0xBFF0000000000000;
    memset(v31, 0, sizeof(v31));
    v32 = 1065353216;
    memset(v33, 0, sizeof(v33));
    v34 = 1065353216;
    v8 = sub_10008E020();
    sub_10008F5B0(v8, buf);
    v10 = [*SAPlatformInfo::instance(v9) isEqualToString:@"Watch"];
    v11 = v28;
    if (v10)
    {
      v12 = *&v28;
    }

    else
    {
      v12 = *(&v28 + 1);
    }

    if (v12 <= 0.0)
    {
      v12 = 30.0;
    }

    v13 = v12;
    v14 = SALogObjectGeneral;
    v15 = v12;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 68289794;
      *&v17[4] = 0;
      v18 = 2082;
      v19 = "";
      v20 = 2050;
      v21 = v13;
      v22 = 2050;
      v23 = v11;
      v24 = 2050;
      v25 = *(&v11 + 1);
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ChannelSelectorScheduler,scheduleBgSysTask, delayPeriod:%{public}0.3f, watchHysteresis:%{public}0.3f, phoneHysteresis:%{public}0.3f}", v17, 0x30u);
    }

    sub_10001D128((a1 + 48), [@"com.apple.safetyalerts.icu" UTF8String]);
    objc_storeStrong((a1 + 72), *a1);
    v16[0] = off_10013D6B0;
    v16[1] = a1;
    v16[3] = v16;
    sub_10001CBD0((a1 + 80), v16);
    *(a1 + 120) = 1;
    *(a1 + 128) = v15;
    *(a1 + 136) = 0;
    *(a1 + 138) = 1;
    *(a1 + 112) = 1;
    sub_100060DE4(a1 + 48);
    sub_10000F274(v16);
    *(a1 + 40) = 1;
    sub_10002D804(v33);
    sub_10002DA28(v31);
    *v17 = &buf[24];
    sub_100005208(v17);
    *v17 = buf;
    sub_100005208(v17);
  }
}

void sub_100093B2C(uint64_t a1)
{
  v2 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 68289026;
    v5 = 0;
    v6 = 2082;
    v7 = "";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ChannelSelectorScheduler,cancelBgSysTaskCalled}", &v4, 0x12u);
  }

  if (*(a1 + 40) == 1)
  {
    sub_100060BEC((a1 + 48));
    *(a1 + 40) = 0;
    v3 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 68289026;
      v5 = 0;
      v6 = 2082;
      v7 = "";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ChannelSelectorScheduler,cancelBgSysTask,cancelled}", &v4, 0x12u);
    }
  }
}

uint64_t sub_100093CD0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10013D6B0;
  a2[1] = v2;
  return result;
}

uint64_t sub_100093CFC(uint64_t a1)
{
  v2 = *(*(a1 + 8) + 32);
  if (!v2)
  {
    sub_1000053C4();
  }

  v3 = *(*v2 + 48);

  return v3();
}

uint64_t sub_100093D48(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100093D94(uint64_t a1, void *a2, uint64_t a3, __int128 *a4, __int128 *a5, double a6)
{
  *a1 = a2;
  sub_1000947A4(a1 + 8, a3);
  *(a1 + 40) = 0;
  if (*(a4 + 23) < 0)
  {
    sub_100004CEC((a1 + 48), *a4, *(a4 + 1));
  }

  else
  {
    v11 = *a4;
    *(a1 + 64) = *(a4 + 2);
    *(a1 + 48) = v11;
  }

  if (*(a5 + 23) < 0)
  {
    sub_100004CEC((a1 + 72), *a5, *(a5 + 1));
  }

  else
  {
    v12 = *a5;
    *(a1 + 88) = *(a5 + 2);
    *(a1 + 72) = v12;
  }

  *(a1 + 104) = 0u;
  *(a1 + 96) = a6;
  *(a1 + 120) = 0u;
  *(a1 + 160) = 0;
  *(a1 + 168) = 1;
  *(a1 + 176) = 5;
  *(a1 + 184) = 0xBFF0000000000000;
  *(a1 + 192) = 257;
  *(a1 + 196) = 0;
  *(a1 + 200) = 0;
  v13 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v14[0] = 68289026;
    v14[1] = 0;
    v15 = 2082;
    v16 = "";
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#md,init}", v14, 0x12u);
  }

  operator new();
}

void sub_100093F64(_Unwind_Exception *a1)
{
  if (*(v1 + 71) < 0)
  {
    operator delete(*(v4 + 8));
  }

  sub_100022C98(v4, 0);
  sub_10009483C(v3);

  _Unwind_Resume(a1);
}

void sub_100093FFC(uint64_t a1, uint64_t a2, double a3)
{
  if (a3 <= 0.0)
  {
    v6 = SALogObjectGeneral;
    if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v7 = (a1 + 48);
    if (*(a1 + 71) < 0)
    {
      v7 = *v7;
    }

    v10 = 68289283;
    v11 = 0;
    v12 = 2082;
    v13 = "";
    v14 = 2081;
    v15 = v7;
    v8 = "{msg%{public}.0s:#md,setDownloadParameters,negative download period, id:%{private, location:escape_only}s}";
LABEL_16:
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v8, &v10, 0x1Cu);
    return;
  }

  v4 = *(a2 + 23);
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 8);
  }

  if (!v4)
  {
    v6 = SALogObjectGeneral;
    if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v9 = (a1 + 48);
    if (*(a1 + 71) < 0)
    {
      v9 = *v9;
    }

    v10 = 68289283;
    v11 = 0;
    v12 = 2082;
    v13 = "";
    v14 = 2081;
    v15 = v9;
    v8 = "{msg%{public}.0s:#md,setDownloadParameters,empty file name, id:%{private, location:escape_only}s}";
    goto LABEL_16;
  }

  *(a1 + 96) = a3;
  v5 = (a1 + 72);

  std::string::operator=(v5, a2);
}

void sub_1000941A0(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (!v2 || (*(v2 + 32) & 1) == 0)
  {
    v8 = SALogObjectGeneral;
    if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v9 = (a1 + 48);
    if (*(a1 + 71) < 0)
    {
      v9 = *v9;
    }

    *buf = 68289283;
    v17 = 0;
    v18 = 2082;
    v19 = "";
    v20 = 2081;
    v21 = v9;
    v10 = "{msg%{public}.0s:#md,invalid file downloader, id:%{private, location:escape_only}s}";
    v11 = v8;
LABEL_18:
    v12 = 28;
    goto LABEL_19;
  }

  v3 = *(a1 + 71);
  if ((v3 & 0x8000000000000000) == 0)
  {
    if (*(a1 + 71))
    {
      goto LABEL_5;
    }

LABEL_22:
    v13 = SALogObjectGeneral;
    if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 68289026;
    v17 = 0;
    v18 = 2082;
    v19 = "";
    v10 = "{msg%{public}.0s:#md,start,empty identifier}";
    v11 = v13;
    v12 = 18;
LABEL_19:
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v10, buf, v12);
    return;
  }

  if (!*(a1 + 56))
  {
    goto LABEL_22;
  }

LABEL_5:
  v4 = (a1 + 48);
  if (*(a1 + 96) <= 0.0)
  {
    v14 = SALogObjectGeneral;
    if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    if ((v3 & 0x80000000) != 0)
    {
      v4 = *v4;
    }

    *buf = 68289283;
    v17 = 0;
    v18 = 2082;
    v19 = "";
    v20 = 2081;
    v21 = v4;
    v10 = "{msg%{public}.0s:#md,start,negative download period, id:%{private, location:escape_only}s}";
    v11 = v14;
    goto LABEL_18;
  }

  v5 = *(a1 + 95);
  if (v5 < 0)
  {
    v5 = *(a1 + 80);
  }

  v6 = SALogObjectGeneral;
  v7 = os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT);
  if (!v5)
  {
    if (!v7)
    {
      return;
    }

    if ((v3 & 0x80000000) != 0)
    {
      v4 = *v4;
    }

    *buf = 68289283;
    v17 = 0;
    v18 = 2082;
    v19 = "";
    v20 = 2081;
    v21 = v4;
    v10 = "{msg%{public}.0s:#md,start,empty file name, id:%{private, location:escape_only}s}";
    v11 = v6;
    goto LABEL_18;
  }

  if (v7)
  {
    *buf = 68289026;
    v17 = 0;
    v18 = 2082;
    v19 = "";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#md,updateBgSysTask}", buf, 0x12u);
    LOBYTE(v3) = *(a1 + 71);
  }

  if ((v3 & 0x80) != 0)
  {
    v4 = *v4;
  }

  sub_10001D128((a1 + 104), v4);
  objc_storeStrong((a1 + 128), *a1);
  v15[0] = off_10013D760;
  v15[1] = a1;
  v15[3] = v15;
  sub_10001CBD0((a1 + 136), v15);
  *(a1 + 176) = 4;
  *(a1 + 184) = *(a1 + 96);
  *(a1 + 192) = 257;
  *(a1 + 168) = 1;
  sub_100060DE4(a1 + 104);
  sub_10000F274(v15);
}

uint64_t sub_1000944FC(uint64_t a1)
{
  v2 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v3 = (a1 + 48);
    if (*(a1 + 71) < 0)
    {
      v3 = *v3;
    }

    v5[0] = 68289283;
    v5[1] = 0;
    v6 = 2082;
    v7 = "";
    v8 = 2081;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#md,released, id:%{private, location:escape_only}s}", v5, 0x1Cu);
  }

  sub_10001CB38(a1 + 104);
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  sub_100022C98((a1 + 40), 0);
  sub_10009483C(a1 + 8);

  return a1;
}

__n128 sub_100094618(std::string *a1, uint64_t a2, std::string *this)
{
  v5 = *(a2 + 23);
  if (v5 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  if (v5 >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    v7 = *(a2 + 8);
  }

  v8 = std::string::insert(this, 0, v6, v7);
  result = *v8;
  *a1 = *v8->n128_u8;
  v8->n128_u64[0] = 0;
  v8->n128_u64[1] = 0;
  v8[1].n128_u64[0] = 0;
  return result;
}

uint64_t sub_100094678(uint64_t a1, int a2)
{
  v4 = *(a1 + 32);
  v5 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v6 = (v4 + 48);
    if (*(v4 + 71) < 0)
    {
      v6 = *v6;
    }

    v9[0] = 68289539;
    v9[1] = 0;
    v10 = 2082;
    v11 = "";
    v12 = 1025;
    v13 = a2;
    v14 = 2081;
    v15 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#md,downloadManifest,download completed, result:%{private}hhd, id:%{private, location:escape_only}s}", v9, 0x22u);
  }

  v7 = *(v4 + 32);
  LOBYTE(v9[0]) = a2;
  if (!v7)
  {
    sub_1000053C4();
  }

  return (*(*v7 + 48))(v7, a1 + 40, v9);
}

uint64_t sub_1000947A4(uint64_t a1, uint64_t a2)
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

uint64_t sub_10009483C(uint64_t a1)
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

uint64_t sub_10009492C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10013D760;
  a2[1] = v2;
  return result;
}

void sub_100094958(uint64_t a1)
{
  v1 = *(a1 + 8);
  if ((*(v1 + 95) & 0x8000000000000000) != 0)
  {
    if (*(v1 + 80))
    {
      goto LABEL_3;
    }

LABEL_11:
    v8 = SALogObjectGeneral;
    if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v9 = (v1 + 48);
    if (*(v1 + 71) < 0)
    {
      v9 = *v9;
    }

    *buf = 68289283;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 2081;
    *&buf[20] = v9;
    v5 = "{msg%{public}.0s:#md,downloadManifest,invalidFilename, id:%{private, location:escape_only}s}";
    v6 = v8;
    v7 = 28;
    goto LABEL_15;
  }

  if (!*(v1 + 95))
  {
    goto LABEL_11;
  }

LABEL_3:
  v2 = sub_100002DB0();
  if (*(v2 + 137) != 1 || (*(v2 + 136) & 1) == 0)
  {
    v4 = SALogObjectGeneral;
    if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 68289283;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 1025;
    *&buf[20] = 0;
    v5 = "{msg%{public}.0s:#md,#warning,downloadManifest,notSupportedByConfig, isMotionHarvestAllowed:%{private}hhd}";
    v6 = v4;
    v7 = 24;
    goto LABEL_15;
  }

  if (([*SAPlatformInfo::instance(v2) isEqualToString:@"iPhone"] & 1) == 0)
  {
    v10 = SALogObjectGeneral;
    if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 68289026;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    v5 = "{msg%{public}.0s:#md,#warning,downloadManifest,notSupportedOnPlatform}";
    v6 = v10;
    v7 = 18;
LABEL_15:
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v5, buf, v7);
    return;
  }

  v3 = sub_100042820();
  if (*(v3 + 239) < 0)
  {
    sub_100004CEC(__p, v3[27], v3[28]);
  }

  else
  {
    *__p = *(v3 + 27);
    v37 = v3[29];
  }

  v11 = HIBYTE(v37);
  LOBYTE(v12) = HIBYTE(v37);
  v13 = __p[1];
  if (v37 >= 0)
  {
    v14 = HIBYTE(v37);
  }

  else
  {
    v14 = __p[1];
  }

  if (!v14)
  {
    v15 = sub_10008E020();
    sub_10008F300(v15, buf);
    if (SHIBYTE(v37) < 0)
    {
      operator delete(__p[0]);
    }

    v37 = *&buf[16];
    *__p = *buf;
    v11 = HIBYTE(*&buf[16]);
    v13 = *&buf[8];
    v12 = HIBYTE(*&buf[16]);
  }

  if ((v12 & 0x80u) != 0)
  {
    v11 = v13;
  }

  if (!v11)
  {
    v29 = SALogObjectGeneral;
    if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_60;
    }

    v32 = (v1 + 48);
    if (*(v1 + 71) < 0)
    {
      v32 = *v32;
    }

    *buf = 68289283;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 2081;
    *&buf[20] = v32;
    v31 = "{msg%{public}.0s:#md,downloadManifest,pull channel name unavailable, id:%{private, location:escape_only}s}";
    goto LABEL_49;
  }

  v16 = *(v1 + 40);
  if (v16 && (*(v16 + 32) & 1) != 0)
  {
    v17 = (v1 + 72);
    SACommonUtils::getHashForString((v1 + 72), buf);
    sub_100094618(&v35, __p, buf);
    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    v18 = container_system_group_path_for_identifier();
    if (v18)
    {
      v19 = [NSURL fileURLWithFileSystemRepresentation:v18 isDirectory:1 relativeToURL:0];
      v20 = [v19 path];
      if (*(v1 + 95) < 0)
      {
        v17 = *v17;
      }

      v21 = [NSString stringWithUTF8String:v17];
      v22 = [v20 stringByAppendingPathComponent:v21];

      v23 = v22;
      v24 = [v22 UTF8String];
      v25 = strlen(v24);
      std::string::__init(&v34, v24, v25);
      free(v18);
      v26 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289026;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#md,downloadManifest,downloading}", buf, 0x12u);
      }

      v27 = *(v1 + 40);
      v28 = *(sub_100042820() + 39);
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3321888768;
      *&buf[16] = sub_100094678;
      *&buf[24] = &unk_10013D720;
      v39 = v1;
      if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
      {
        sub_100004CEC(&v40, v34.__r_.__value_.__l.__data_, v34.__r_.__value_.__l.__size_);
      }

      else
      {
        v40 = v34;
      }

      v42 = 0;
      v41[0] = off_10013A1E8;
      v41[1] = objc_retainBlock(buf);
      v42 = v41;
      sub_100082E9C(v27, &v35, &v34, 3, v41, v28);
      sub_10001E0C0(v41);
      if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v40.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v34.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v33 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289026;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#md,downloadManifest,igneous group container not available}", buf, 0x12u);
      }
    }

    if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v35.__r_.__value_.__l.__data_);
    }

    goto LABEL_60;
  }

  v29 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v30 = (v1 + 48);
    if (*(v1 + 71) < 0)
    {
      v30 = *v30;
    }

    *buf = 68289283;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 2081;
    *&buf[20] = v30;
    v31 = "{msg%{public}.0s:#md,downloadManifest,downloader not available, id:%{private, location:escape_only}s}";
LABEL_49:
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, v31, buf, 0x1Cu);
  }

LABEL_60:
  if (SHIBYTE(v37) < 0)
  {
    operator delete(__p[0]);
  }
}