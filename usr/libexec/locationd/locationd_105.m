void sub_1007B24F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_100005DA4(&a16);
  _Unwind_Resume(a1);
}

void sub_1007B2524(uint64_t a1, char *a2)
{
  if (qword_1025D4870 != -1)
  {
    sub_10193645C();
  }

  v4 = qword_1025D4878;
  if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 56) UTF8String];
    v6 = a2;
    if (a2[23] < 0)
    {
      v6 = *a2;
    }

    v7 = *(a1 + 104);
    v8 = *(a1 + 112);
    v9 = *(a1 + 120);
    v10 = *(a1 + 128);
    v11 = *(a1 + 160);
    v12 = *(a1 + 168);
    v13 = 136382467;
    v14 = v5;
    v15 = 2082;
    v16 = v6;
    v17 = 2050;
    v18 = v7;
    v19 = 2050;
    v20 = v8;
    v21 = 2050;
    v22 = v9;
    v23 = 2050;
    v24 = v10;
    v25 = 2050;
    v26 = v11;
    v27 = 2050;
    v28 = v12;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "#CLMA,%{private}s,%{public}s,catalog download stats cache,lastAttemptedCatalogDownload,%{public}.1f,lastSuccessfulCatalogDownload,%{public}.1f,lastAttemptedAssetDownload,%{public}.1f,lastSuccessfulAssetDownload,%{public}.1f,lastDownloadNotTriggeredAwd,%{public}.1f,lastVersionReportingAwd,%{public}.1f", &v13, 0x52u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101936F10(a1, a2);
  }
}

void sub_1007B266C(uint64_t a1, xpc_activity_t activity)
{
  v2 = *(a1 + 32);
  state = xpc_activity_get_state(activity);
  if (state == 2)
  {
    if (qword_1025D4870 != -1)
    {
      sub_10193645C();
    }

    v4 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*(v2 + 56) UTF8String];
      *buf = 136380675;
      v12 = v5;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "#CLMA,%{private}s,catalog download activity handler triggered", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101937168();
    }

    v6 = [objc_msgSend(*(v2 + 48) "silo")];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1007B2854;
    block[3] = &unk_102449A78;
    block[4] = v2;
    dispatch_async(v6, block);
  }

  else
  {
    v7 = state;
    if (qword_1025D4870 != -1)
    {
      sub_10193645C();
    }

    v8 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [*(v2 + 56) UTF8String];
      *buf = 136380931;
      v12 = v9;
      v13 = 1026;
      v14 = v7;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "#CLMA,%{private}s,catalog download activity handler triggered with unexpected state %{public}d", buf, 0x12u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101937074();
    }
  }
}

void sub_1007B285C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  Current = CFAbsoluteTimeGetCurrent();
  v6 = [objc_msgSend(*(v4 + 48) "silo")];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1007B290C;
  v7[3] = &unk_102470BE8;
  v7[4] = *(a1 + 32);
  v7[5] = v4;
  v7[6] = a2;
  *&v7[7] = Current;
  dispatch_async(v6, v7);
}

void sub_1007B290C(uint64_t a1)
{
  v3 = (a1 + 48);
  v2 = *(a1 + 48);
  v4 = *(a1 + 40);
  *(v4 + 177) = 0;
  *(*(*(a1 + 32) + 8) + 108) = v2;
  *(*(*(a1 + 32) + 8) + 112) = vcvtpd_s64_f64(*(a1 + 56) - *(*(*(a1 + 32) + 8) + 56));
  if (v2)
  {
    if (qword_1025D4870 != -1)
    {
      sub_10193645C();
    }

    v5 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*(v4 + 56) UTF8String];
      v7 = *v3;
      *buf = 136380931;
      *&buf[4] = v6;
      *&buf[12] = 1026;
      *v51 = v7;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "#CLMA,%{private}s,catalog download failed with error %{public}d", buf, 0x12u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101937258(v4, v3);
    }

    *(*(*(a1 + 32) + 8) + 88) = 2;
  }

  else
  {
    if (qword_1025D4870 != -1)
    {
      sub_10193645C();
    }

    v8 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [*(v4 + 56) UTF8String];
      *buf = 136380675;
      *&buf[4] = v9;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "#CLMA,%{private}s,catalog download succeeded", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10193736C(v4);
    }

    *(*(*(a1 + 32) + 8) + 88) = 1;
    *(v4 + 112) = CFAbsoluteTimeGetCurrent();
    sub_1007B23B8(v4);
    (*(*v4 + 56))(v4, 2);
  }

  v10 = *(a1 + 32);
  v11 = *(*(v10 + 8) + 112);
  *buf = 147;
  *&buf[8] = v11;
  v56[0] = 0;
  v12 = *(*(v10 + 8) + 116);
  v56[2] = 148;
  v56[4] = v12;
  v56[10] = 0;
  v13 = *(*(v10 + 8) + 120);
  v56[12] = 149;
  v56[14] = v13;
  v56[20] = 0;
  LOBYTE(v13) = *(*(v10 + 8) + 132);
  v56[22] = 150;
  v57 = v13;
  v58 = 7;
  v14 = *(*(v10 + 8) + 108);
  v59 = 151;
  v60 = v14;
  v61 = 0;
  LODWORD(v10) = *(*(v10 + 8) + 92);
  v62 = 152;
  v63 = v10;
  v64 = 0;
  v36 = 0;
  v37 = 0;
  v35 = 0;
  sub_1007B6614(&v35, buf, &v65, 6uLL);
  for (i = 208; i != -32; i -= 40)
  {
    sub_10008F96C(&buf[i]);
  }

  v16 = *(v4 + 240);
  memset(v34, 0, sizeof(v34));
  sub_1007B68E0(v34, v35, v36, 0xCCCCCCCCCCCCCCCDLL * ((v36 - v35) >> 3));
  [v16 setMeasurements:sub_1007B2EC4(v34)];
  *buf = v34;
  sub_1007B6858(buf);
  v17 = *(v4 + 240);
  if (byte_102637887 < 0)
  {
    sub_100007244(__p, xmmword_102637870, *(&xmmword_102637870 + 1));
  }

  else
  {
    *__p = xmmword_102637870;
    v33 = unk_102637880;
  }

  [v17 submitEvent:sub_1007B2F90(__p)];
  if (SHIBYTE(v33) < 0)
  {
    operator delete(__p[0]);
  }

  if (qword_1025D4870 != -1)
  {
    sub_101936790();
  }

  v18 = qword_1025D4878;
  if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
  {
    v19 = *(*(a1 + 32) + 8);
    v20 = *(v19 + 116);
    v21 = *(v19 + 120);
    v22 = *(v19 + 132);
    v24 = *(v19 + 108);
    v23 = *(v19 + 112);
    LODWORD(v19) = *(v19 + 92);
    *buf = 67241472;
    *&buf[4] = v23;
    *&buf[8] = 1026;
    *&buf[10] = v20;
    *v51 = 1026;
    *&v51[2] = v21;
    v52 = 1026;
    v53 = v22;
    v54 = 1026;
    v55 = v24;
    LOWORD(v56[0]) = 1026;
    *(v56 + 2) = v19;
    _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEFAULT, "#CLMA,#careport,CatalogDownload,MACatalogDownloadDuration,%{public}d,MACatalogDownloadDaysSinceLastAttempt,%{public}d,MACatalogDownloadDaysSinceLastSuccess,%{public}d,MACatalogDownloadAggressiveCriteriaUsed,%{public}d,MACatalogDownloadResult,%{public}d,MACatalogDownloadAssetType,%{public}d", buf, 0x26u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101936A1C(buf);
    v25 = *(*(a1 + 32) + 8);
    v26 = *(v25 + 116);
    v27 = *(v25 + 120);
    v28 = *(v25 + 132);
    v30 = *(v25 + 108);
    v29 = *(v25 + 112);
    LODWORD(v25) = *(v25 + 92);
    v38 = 67241472;
    v39 = v29;
    v40 = 1026;
    v41 = v26;
    v42 = 1026;
    v43 = v27;
    v44 = 1026;
    v45 = v28;
    v46 = 1026;
    v47 = v30;
    v48 = 1026;
    v49 = v25;
    v31 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLMobileAsset::downloadCatalog()_block_invoke", "%s\n", v31);
    if (v31 != buf)
    {
      free(v31);
    }
  }

  sub_1007B1640(v4);
  *buf = &v35;
  sub_1007B6858(buf);
}

void sub_1007B2E50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char *a30)
{
  a30 = &a21;
  sub_1007B6858(&a30);
  _Unwind_Resume(a1);
}

id sub_1007B2EC4(uint64_t *a1)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3321888768;
  v3[2] = sub_1007B6A08;
  v3[3] = &unk_102470D80;
  memset(v4, 0, sizeof(v4));
  sub_1007B68E0(v4, *a1, a1[1], 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3));
  v1 = [v3 copy];
  v5 = v4;
  sub_1007B6858(&v5);
  return v1;
}

void sub_1007B2F78(_Unwind_Exception *a1)
{
  *(v2 - 24) = v1;
  sub_1007B6858((v2 - 24));
  _Unwind_Resume(a1);
}

id sub_1007B2F90(__int128 *a1)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3321888768;
  v3[2] = sub_1007B6A84;
  v3[3] = &unk_102470DB0;
  if (*(a1 + 23) < 0)
  {
    sub_100007244(&__p, *a1, *(a1 + 1));
  }

  else
  {
    __p = *a1;
    v5 = *(a1 + 2);
  }

  v1 = [v3 copy];
  if (SHIBYTE(v5) < 0)
  {
    operator delete(__p);
  }

  return v1;
}

void sub_1007B3044(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1007B3060(uint64_t a1, unint64_t a2)
{
  if (a2 < 7)
  {
    return dword_101C8D9B0[a2];
  }

  if (qword_1025D4870 != -1)
  {
    sub_10193645C();
  }

  v4 = qword_1025D4878;
  if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
  {
    v6[0] = 67240192;
    v6[1] = a2;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_ERROR, "#CLMA,assetStatePrecedence,asset has unexpected state,%{public}d", v6, 8u);
  }

  v5 = sub_10000A100(121, 0);
  result = 0;
  if (v5)
  {
    sub_10193746C(a2);
    return 0;
  }

  return result;
}

id sub_1007B3158(uint64_t a1, void *a2, unint64_t a3, _DWORD *a4)
{
  v5 = a3;
  v6 = a2;
  if (a3 > 9 || ((1 << a3) & 0x205) == 0)
  {
    if (qword_1025D4870 != -1)
    {
      sub_10193645C();
    }

    v38 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
    {
      v39 = [*(a1 + 56) UTF8String];
      *buf = 136381187;
      v63 = v39;
      v64 = 1026;
      *v65 = v5;
      *&v65[4] = 2113;
      *&v65[6] = [v6 queryParams];
      _os_log_impl(dword_100000000, v38, OS_LOG_TYPE_DEFAULT, "#CLMA,%{private}s,asset query failed with error %{public}d,queryParams,%{private}@", buf, 0x1Cu);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4870 != -1)
      {
        sub_101936790();
      }

      v41 = [*(a1 + 56) UTF8String];
      v55 = 136381187;
      v56 = v41;
      v57 = 1026;
      *v58 = v5;
      *&v58[4] = 2113;
      *&v58[6] = [v6 queryParams];
      v42 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "MAAsset *CLMobileAsset::getLatestVersionFromQuery(MAAssetQuery *, MAQueryResult, QueryFailureReason &)", "%s\n", v42);
      if (v42 != buf)
      {
        free(v42);
      }
    }

    v29 = 0;
    *a4 = 1;
    return v29;
  }

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = [a2 results];
  v7 = [obj countByEnumeratingWithState:&v51 objects:v61 count:16];
  if (!v7)
  {
    goto LABEL_35;
  }

  v8 = v7;
  v43 = v6;
  v44 = a4;
  v50 = 0;
  v9 = *v52;
  v48 = ASAttributeContentVersion;
  v49 = -1;
  v10 = -1;
  v11 = -1;
  do
  {
    v12 = 0;
    v45 = v10;
    v13 = v10 + 1;
    do
    {
      if (*v52 != v9)
      {
        objc_enumerationMutation(obj);
      }

      v14 = *(*(&v51 + 1) + 8 * v12);
      if (qword_1025D4870 != -1)
      {
        sub_101936790();
      }

      v15 = qword_1025D4878;
      if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
      {
        v16 = [*(a1 + 56) UTF8String];
        v17 = [v14 assetId];
        v18 = [v14 state];
        v19 = [v14 attributes];
        *buf = 136381443;
        v63 = v16;
        v64 = 2113;
        *v65 = v17;
        *&v65[8] = 1025;
        *&v65[10] = v18;
        v66 = 2113;
        v67 = v19;
        _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEFAULT, "#CLMA,%{private}s,assetID,%{private}@,state,%{private}d,attributes,%{private}@", buf, 0x26u);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4870 != -1)
        {
          sub_101936790();
        }

        v22 = [*(a1 + 56) UTF8String];
        v23 = [v14 assetId];
        v24 = [v14 state];
        v25 = [v14 attributes];
        v55 = 136381443;
        v56 = v22;
        v57 = 2113;
        *v58 = v23;
        *&v58[8] = 1025;
        *&v58[10] = v24;
        v59 = 2113;
        v60 = v25;
        v26 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "MAAsset *CLMobileAsset::getLatestVersionFromQuery(MAAssetQuery *, MAQueryResult, QueryFailureReason &)", "%s\n", v26);
        if (v26 != buf)
        {
          free(v26);
        }

        if (!v14)
        {
LABEL_21:
          v21 = -1;
          goto LABEL_22;
        }
      }

      else if (!v14)
      {
        goto LABEL_21;
      }

      v20 = [objc_msgSend(v14 "attributes")];
      if (!v20)
      {
        goto LABEL_21;
      }

      v21 = [v20 intValue];
LABEL_22:
      if (v21 > v11 || v21 == v11 && (v27 = [v14 state], v28 = sub_1007B3060(v27, v27), v28 > sub_1007B3060(v28, v50)))
      {
        v49 = v13;
        v50 = [v14 state];
        v11 = v21;
      }

      v12 = v12 + 1;
      ++v13;
    }

    while (v8 != v12);
    v10 = v45 + v8;
    v8 = [obj countByEnumeratingWithState:&v51 objects:v61 count:16];
  }

  while (v8);
  v6 = v43;
  a4 = v44;
  if (v11 != -1)
  {
    *v44 = 0;
    v29 = [objc_msgSend(v43 "results")];
    if (qword_1025D4870 != -1)
    {
      sub_101936790();
    }

    v30 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
    {
      v31 = [*(a1 + 56) UTF8String];
      v32 = [v29 assetId];
      v33 = [v29 state];
      v34 = [v29 attributes];
      *buf = 136381443;
      v63 = v31;
      v64 = 2113;
      *v65 = v32;
      *&v65[8] = 1025;
      *&v65[10] = v33;
      v66 = 2113;
      v67 = v34;
      _os_log_impl(dword_100000000, v30, OS_LOG_TYPE_DEFAULT, "#CLMA,%{private}s,found latest asset for query,assetID,%{private}@,state,%{private}d,attributes,%{private}@", buf, 0x26u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10193756C((a1 + 56), v29);
    }

    return v29;
  }

LABEL_35:
  if (qword_1025D4870 != -1)
  {
    sub_101936790();
  }

  v35 = qword_1025D4878;
  if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
  {
    v36 = [*(a1 + 56) UTF8String];
    v37 = [v6 queryParams];
    *buf = 136380931;
    v63 = v36;
    v64 = 2113;
    *v65 = v37;
    _os_log_impl(dword_100000000, v35, OS_LOG_TYPE_DEFAULT, "#CLMA,%{private}s,failed to find a suitable asset in the query results,queryParams,%{private}@", buf, 0x16u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1019376A0();
  }

  v29 = 0;
  *a4 = 2;
  return v29;
}

void sub_1007B3858(char *a1, void *a2)
{
  if (a2 && (v4 = [a2 attributes], (v5 = objc_msgSend(v4, "objectForKey:", ASAttributeContentVersion)) != 0))
  {
    v6 = [v5 intValue];
  }

  else
  {
    v6 = -1;
  }

  if (sub_1007AF7C8(a2))
  {
    if (qword_1025D4870 != -1)
    {
      sub_10193645C();
    }

    v7 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 7) UTF8String];
      *buf = 136381187;
      v81 = v8;
      v82 = 1026;
      v83 = v6;
      v84 = 2113;
      v85 = [a2 attributes];
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "#CLMA,%{private}s,asset is already downloaded,version,%{public}d,attributes,%{private}@", buf, 0x1Cu);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4870 != -1)
      {
        sub_101936790();
      }

      v23 = [*(a1 + 7) UTF8String];
      *v42 = 136381187;
      *&v42[4] = v23;
      *&v42[12] = 1026;
      *&v42[14] = v6;
      *&v42[18] = 2113;
      *&v42[20] = [a2 attributes];
      v24 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLMobileAsset::downloadAsset(MAAsset *)", "%s\n", v24);
      if (v24 != buf)
      {
        free(v24);
      }
    }

    (*(*a1 + 72))(a1, a2);
  }

  else
  {
    *v42 = 0;
    *&v42[8] = v42;
    *&v42[16] = 0x14812000000;
    *&v42[24] = sub_1000474F4;
    v43 = sub_100048458;
    v44 = &unk_10238AE8B;
    v46 = 0xBFF0000000000000;
    v47 = 0u;
    v48 = 0u;
    v50 = -1;
    v49 = 0;
    v51 = -2;
    v52 = -1;
    v53 = -1;
    v54 = -1;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v59 = -1;
    v60 = -1;
    v58 = 0;
    v61 = 0;
    v62 = 0;
    v63 = 0;
    v64 = 0;
    v65 = -1;
    v66 = -1;
    v67 = 0;
    v68 = 0;
    v69 = 0;
    v70 = 0;
    v71 = -1;
    v72 = -1;
    v73 = 0;
    __p = 0;
    v75 = 0;
    v77 = -1;
    v78 = -1;
    v76 = 0;
    v79 = 0;
    v45 = 1;
    Current = CFAbsoluteTimeGetCurrent();
    v10 = *&v42[8];
    *(*&v42[8] + 56) = Current;
    if (*(v10 + 87) < 0)
    {
      *(v10 + 72) = 19;
      v11 = *(v10 + 64);
    }

    else
    {
      v11 = (v10 + 64);
      *(v10 + 87) = 19;
    }

    strcpy(v11, "com.apple.locationd");
    v12 = *&v42[8];
    *(*&v42[8] + 92) = *(a1 + 18);
    v13 = *(v12 + 56);
    if (v13 > 0.0)
    {
      v14 = *(a1 + 15);
      if (v14 > 0.0)
      {
        *(v12 + 124) = llround((v13 - v14) / 86400.0);
      }
    }

    if (v13 > 0.0)
    {
      v15 = *(a1 + 16);
      if (v15 > 0.0)
      {
        *(v12 + 128) = llround((v13 - v15) / 86400.0);
      }
    }

    (*(*a1 + 32))(a1, a2, v12 + 48);
    v34[0] = -1;
    (*(*a1 + 48))(a1, a2, v34);
    v16 = [*(a1 + 29) description];
    if (qword_1025D4870 != -1)
    {
      sub_101936790();
    }

    v17 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [*(a1 + 7) UTF8String];
      v19 = [v16 UTF8String];
      v20 = [a2 attributes];
      *buf = 136381443;
      v81 = v18;
      v82 = 1026;
      v83 = v6;
      v84 = 2081;
      v85 = v19;
      v86 = 2113;
      v87 = v20;
      _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEFAULT, "#CLMA,%{private}s,preparing to download asset,version,%{public}d,options,%{private}s,attributes,%{private}@", buf, 0x26u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101936A1C(buf);
      v25 = [*(a1 + 7) UTF8String];
      v26 = [v16 UTF8String];
      v27 = [a2 attributes];
      v34[1] = 136381443;
      v35 = v25;
      v36 = 1026;
      v37 = v6;
      v38 = 2081;
      v39 = v26;
      v40 = 2113;
      v41 = v27;
      v28 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLMobileAsset::downloadAsset(MAAsset *)", "%s\n", v28);
      if (v28 != buf)
      {
        free(v28);
      }
    }

    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_1007B3FC8;
    v32[3] = &unk_102470C38;
    v33 = v6;
    v32[4] = a2;
    v32[5] = a1;
    [a2 attachProgressCallBack:v32];
    v21 = a2;
    a1[178] = 1;
    v22 = *(a1 + 29);
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_1007B4228;
    v29[3] = &unk_102470C88;
    v29[5] = v42;
    v29[6] = a1;
    v29[4] = a2;
    v30 = v6;
    v31 = v34[0];
    [a2 startDownload:v22 then:v29];
    *(a1 + 15) = CFAbsoluteTimeGetCurrent();
    sub_1007B23B8(a1);
    _Block_object_dispose(v42, 8);
    if (SHIBYTE(v76) < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v70) < 0)
    {
      operator delete(v68);
    }

    if (SHIBYTE(v64) < 0)
    {
      operator delete(v62);
    }

    if (SHIBYTE(v58) < 0)
    {
      operator delete(v56);
    }

    if (SBYTE7(v48) < 0)
    {
      operator delete(v47);
    }
  }
}

void sub_1007B3F88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  _Block_object_dispose(&a33, 8);
  sub_1007B65A0(&a39);
  _Unwind_Resume(a1);
}

void sub_1007B3FC8(uint64_t a1, void *a2)
{
  v4 = *(a1 + 40);
  if (qword_1025D4870 != -1)
  {
    sub_10193645C();
  }

  v5 = qword_1025D4878;
  if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEBUG))
  {
    v6 = [*(v4 + 56) UTF8String];
    v7 = *(a1 + 48);
    v8 = [a2 totalWritten];
    v9 = [a2 totalExpected];
    v10 = [*(a1 + 32) attributes];
    *buf = 136381699;
    v13 = v6;
    v14 = 1026;
    v15 = v7;
    v16 = 2050;
    v17 = v8;
    v18 = 2050;
    v19 = v9;
    v20 = 2113;
    v21 = v10;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "#CLMA,%{private}s,download progress for asset,version,%{public}d,totalWritten,%{public}lld,totalExpected,%{public}lld,attributes,%{private}@", buf, 0x30u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4870 != -1)
    {
      sub_101936790();
    }

    [*(v4 + 56) UTF8String];
    [a2 totalWritten];
    [a2 totalExpected];
    [*(a1 + 32) attributes];
    v11 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLMobileAsset::downloadAsset(MAAsset *)_block_invoke", "%s\n", v11);
    if (v11 != buf)
    {
      free(v11);
    }
  }
}

void sub_1007B4228(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 48);
  Current = CFAbsoluteTimeGetCurrent();
  v6 = [objc_msgSend(*(v4 + 48) "silo")];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1007B42DC;
  v8[3] = &unk_102470C60;
  v10 = v4;
  v11 = a2;
  v9 = *(a1 + 32);
  v7 = *(a1 + 56);
  v12 = Current;
  v13 = v7;
  dispatch_async(v6, v8);
}

void sub_1007B42DC(uint64_t a1)
{
  v2 = *(a1 + 48);
  *(v2 + 178) = 0;
  v3 = *(a1 + 56);
  *(*(*(a1 + 40) + 8) + 108) = v3;
  *(*(*(a1 + 40) + 8) + 112) = vcvtpd_s64_f64(*(a1 + 64) - *(*(*(a1 + 40) + 8) + 56));
  if (v3)
  {
    if (qword_1025D4870 != -1)
    {
      sub_10193645C();
    }

    v4 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*(v2 + 56) UTF8String];
      v6 = *(a1 + 72);
      v7 = *(a1 + 56);
      v8 = [*(a1 + 32) attributes];
      *buf = 136381443;
      *&buf[4] = v5;
      *&buf[12] = 1026;
      *v61 = v6;
      *&v61[4] = 1025;
      *v62 = v7;
      *&v62[4] = 2113;
      *&v62[6] = v8;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "#CLMA,%{private}s,asset download failed,version,%{public}d,result,%{private}d,attributes,%{private}@", buf, 0x22u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4870 != -1)
      {
        sub_101936790();
      }

      v42 = [*(v2 + 56) UTF8String];
      v43 = *(a1 + 72);
      v44 = *(a1 + 56);
      v45 = [*(a1 + 32) attributes];
      v55 = 136381443;
      *__p = v42;
      *&__p[8] = 1026;
      *&__p[10] = v43;
      *&__p[14] = 1025;
      *&__p[16] = v44;
      *&__p[20] = 2113;
      *&__p[22] = v45;
      v46 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLMobileAsset::downloadAsset(MAAsset *)_block_invoke", "%s\n", v46);
      if (v46 != buf)
      {
        free(v46);
      }
    }

    *(*(*(a1 + 40) + 8) + 88) = 4;
  }

  else
  {
    if (qword_1025D4870 != -1)
    {
      sub_10193645C();
    }

    v9 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [*(v2 + 56) UTF8String];
      v11 = *(a1 + 72);
      v12 = [objc_msgSend(objc_msgSend(*(a1 + 32) "getLocalUrl")];
      v13 = [*(a1 + 32) attributes];
      *buf = 136381443;
      *&buf[4] = v10;
      *&buf[12] = 1026;
      *v61 = v11;
      *&v61[4] = 2081;
      *v62 = v12;
      *&v62[8] = 2113;
      *&v62[10] = v13;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "#CLMA,%{private}s,asset download completed successfully,version,%{public}d,URL,%{private}s,attributes,%{private}@", buf, 0x26u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019377A0(v2, a1);
    }

    *(*(*(a1 + 40) + 8) + 88) = 3;
    *(v2 + 128) = CFAbsoluteTimeGetCurrent();
    sub_1007B23B8(v2);
    if ([*(a1 + 32) refreshState])
    {
      (*(*v2 + 72))(v2, *(a1 + 32));
    }
  }

  sub_1007B4B24(*(*(*(a1 + 40) + 8) + 104), *(*(*(a1 + 40) + 8) + 100), v53);
  v14 = *(a1 + 40);
  v15 = *(*(v14 + 8) + 112);
  *buf = 153;
  *&buf[8] = v15;
  *&v62[12] = 0;
  v16 = *(*(v14 + 8) + 124);
  LODWORD(v64) = 154;
  v65 = v16;
  v66 = 0;
  v17 = *(*(v14 + 8) + 128);
  v67 = 155;
  v68 = v17;
  v69 = 0;
  v18 = *(*(v14 + 8) + 108);
  v70 = 156;
  v71 = v18;
  v72 = 0;
  LOBYTE(v14) = *(*(v14 + 8) + 133);
  v73 = 157;
  v74 = v14;
  v19 = *(a1 + 76);
  v75 = 7;
  v76 = 158;
  v77 = v19;
  v78 = 0;
  v55 = 159;
  if (SHIBYTE(v54) < 0)
  {
    sub_100007244(&__p[4], v53[0], v53[1]);
    v20 = v55;
  }

  else
  {
    *&__p[4] = *v53;
    *&__p[20] = v54;
    v20 = 159;
  }

  v79 = v20;
  v80 = *&__p[4];
  v81 = *&__p[20];
  memset(&__p[4], 0, 24);
  v82 = 6;
  v51 = 0;
  v52 = 0;
  v50 = 0;
  sub_1007B6614(&v50, buf, &v83, 7uLL);
  for (i = 248; i != -32; i -= 40)
  {
    sub_10008F96C(&buf[i]);
  }

  if ((__p[27] & 0x80000000) != 0)
  {
    operator delete(*&__p[4]);
  }

  v22 = *(v2 + 240);
  memset(v49, 0, sizeof(v49));
  sub_1007B68E0(v49, v50, v51, 0xCCCCCCCCCCCCCCCDLL * ((v51 - v50) >> 3));
  [v22 setMeasurements:sub_1007B2EC4(v49)];
  *buf = v49;
  sub_1007B6858(buf);
  v23 = *(v2 + 240);
  if (byte_10263789F < 0)
  {
    sub_100007244(__dst, xmmword_102637888, *(&xmmword_102637888 + 1));
  }

  else
  {
    *__dst = xmmword_102637888;
    v48 = unk_102637898;
  }

  [v23 submitEvent:sub_1007B2F90(__dst)];
  if (SHIBYTE(v48) < 0)
  {
    operator delete(__dst[0]);
  }

  if (qword_1025D4870 != -1)
  {
    sub_101936790();
  }

  v24 = qword_1025D4878;
  if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
  {
    v25 = *(*(a1 + 40) + 8);
    v26 = *(v25 + 124);
    v27 = *(v25 + 128);
    v29 = *(v25 + 108);
    v28 = *(v25 + 112);
    v30 = *(v25 + 133);
    v31 = *(a1 + 76);
    v32 = v53;
    if (v54 < 0)
    {
      v32 = v53[0];
    }

    *buf = 67241730;
    *&buf[4] = v28;
    *&buf[8] = 1026;
    *&buf[10] = v26;
    *v61 = 1026;
    *&v61[2] = v27;
    *v62 = 1026;
    *&v62[2] = v29;
    *&v62[6] = 1026;
    *&v62[8] = v30;
    *&v62[12] = 1026;
    *&v62[14] = v31;
    v63 = 2082;
    v64 = v32;
    _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_DEFAULT, "#CLMA,#careport,AssetDownload,MAAssetDownloadDuration,%{public}d,MAAssetDownloadDaysSinceLastAttempt,%{public}d,MAAssetDownloadDaysSinceLastSuccess,%{public}d,MAAssetDownloadResult,%{public}d,MAAssetDownloadGenericAssetUsed,%{public}d,MAAssetDownloadAssetComponent,%{public}d,MAAssetDownloadAssetVersion,%{public}s", buf, 0x30u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101936A1C(buf);
    v33 = *(*(a1 + 40) + 8);
    v34 = *(v33 + 124);
    v35 = *(v33 + 128);
    v37 = *(v33 + 108);
    v36 = *(v33 + 112);
    v38 = *(v33 + 133);
    v39 = *(a1 + 76);
    v40 = v53;
    if (v54 < 0)
    {
      v40 = v53[0];
    }

    v55 = 67241730;
    *__p = v36;
    *&__p[4] = 1026;
    *&__p[6] = v34;
    *&__p[10] = 1026;
    *&__p[12] = v35;
    *&__p[16] = 1026;
    *&__p[18] = v37;
    *&__p[22] = 1026;
    *&__p[24] = v38;
    *&__p[28] = 1026;
    v57 = v39;
    v58 = 2082;
    v59 = v40;
    v41 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLMobileAsset::downloadAsset(MAAsset *)_block_invoke", "%s\n", v41);
    if (v41 != buf)
    {
      free(v41);
    }
  }

  *buf = &v50;
  sub_1007B6858(buf);
  if (SHIBYTE(v54) < 0)
  {
    operator delete(v53[0]);
  }
}

void sub_1007B4A64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, char *a38)
{
  a38 = &a20;
  sub_1007B6858(&a38);
  if (a28 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1007B4B24(int a1@<W0>, int a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  if (((a2 | a1) & 0x80000000) == 0)
  {
    std::to_string(&v13, a1);
    v5 = std::string::append(&v13, ".", 1uLL);
    v6 = *&v5->__r_.__value_.__l.__data_;
    v14.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
    *&v14.__r_.__value_.__l.__data_ = v6;
    v5->__r_.__value_.__l.__size_ = 0;
    v5->__r_.__value_.__r.__words[2] = 0;
    v5->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&__p, a2);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    v9 = std::string::append(&v14, p_p, size);
    v10 = v9->__r_.__value_.__l.__size_;
    *a3 = v9->__r_.__value_.__r.__words[0];
    *(a3 + 8) = v10;
    *(a3 + 15) = *(&v9->__r_.__value_.__r.__words[1] + 7);
    LOBYTE(v10) = *(&v9->__r_.__value_.__s + 23);
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    v11 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    *(a3 + 23) = v10;
    if (v11 < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v13.__r_.__value_.__l.__data_);
    }
  }
}

void sub_1007B4C1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

id sub_1007B4C68(uint64_t a1, void *a2)
{
  result = sub_1007AFA08(a2);
  if (result)
  {
    if (qword_1025D4870 != -1)
    {
      sub_10193645C();
    }

    v5 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEBUG))
    {
      v6 = [*(a1 + 56) UTF8String];
      *buf = 136380931;
      v10 = v6;
      v11 = 2113;
      v12 = [a2 attributes];
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "#CLMA,%{private}s,purging asset,attributes,%{private}@", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019378FC();
    }

    v7 = a2;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1007B4DD0;
    v8[3] = &unk_102470CB0;
    v8[4] = a2;
    v8[5] = a1;
    return [a2 purge:v8];
  }

  return result;
}

void sub_1007B4DD0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  if (a2)
  {
    v4 = a2;
    if (qword_1025D4870 != -1)
    {
      sub_10193645C();
    }

    v5 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
    {
      v6 = [*(v3 + 56) UTF8String];
      v7 = [*(a1 + 32) assetId];
      v8 = [*(a1 + 32) state];
      v9 = [*(a1 + 32) attributes];
      *buf = 136381699;
      v17 = v6;
      v18 = 1026;
      *v19 = v4;
      *&v19[4] = 2113;
      *&v19[6] = v7;
      v20 = 1025;
      LODWORD(v21[0]) = v8;
      WORD2(v21[0]) = 2113;
      *(v21 + 6) = v9;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_ERROR, "#CLMA,%{private}s,asset purge failed,error,%{public}d,assetID,%{private}@,state,%{private}d,attributes,%{private}@", buf, 0x2Cu);
    }

    if (sub_10000A100(121, 0))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4870 != -1)
      {
        sub_101936790();
      }

      [*(v3 + 56) UTF8String];
      [*(a1 + 32) assetId];
      [*(a1 + 32) state];
      [*(a1 + 32) attributes];
      v10 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "void CLMobileAsset::purgeAsset(MAAsset *)_block_invoke", "%s\n", v10);
      if (v10 != buf)
      {
        free(v10);
      }
    }
  }

  else
  {
    if (qword_1025D4870 != -1)
    {
      sub_10193645C();
    }

    v11 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEBUG))
    {
      v12 = [*(v3 + 56) UTF8String];
      v13 = [*(a1 + 32) assetId];
      v14 = [*(a1 + 32) state];
      v15 = [*(a1 + 32) attributes];
      *buf = 136381443;
      v17 = v12;
      v18 = 2113;
      *v19 = v13;
      *&v19[8] = 1025;
      *&v19[10] = v14;
      v20 = 2113;
      v21[0] = v15;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "#CLMA,%{private}s,asset purge succeeded,assetID,%{private}@,state,%{private}d,attributes,%{private}@", buf, 0x26u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101937A04(v3, a1);
    }
  }
}

void sub_1007B50FC(uint64_t a1, xpc_activity_t activity)
{
  v2 = *(a1 + 32);
  state = xpc_activity_get_state(activity);
  if (state == 2)
  {
    if (qword_1025D4870 != -1)
    {
      sub_10193645C();
    }

    v4 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*(v2 + 56) UTF8String];
      *buf = 136380675;
      v12 = v5;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "#CLMA,%{private}s,asset purge activity handler triggered", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101937C34();
    }

    v6 = [objc_msgSend(*(v2 + 48) "silo")];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1007B52E4;
    block[3] = &unk_102449A78;
    block[4] = v2;
    dispatch_async(v6, block);
  }

  else
  {
    v7 = state;
    if (qword_1025D4870 != -1)
    {
      sub_10193645C();
    }

    v8 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [*(v2 + 56) UTF8String];
      *buf = 136380931;
      v12 = v9;
      v13 = 1026;
      v14 = v7;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "#CLMA,%{private}s,asset purge activity handler triggered with unexpected state %{public}d", buf, 0x12u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101937B40();
    }
  }
}

void sub_1007B52EC(uint64_t a1)
{
  if (*(a1 + 178) == 1)
  {
    if (qword_1025D4870 != -1)
    {
      sub_10193645C();
    }

    v2 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
    {
      v3 = [*(a1 + 56) UTF8String];
      *buf = 136380675;
      v7 = v3;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "#CLMA,%{private}s,asset purge aborted due to an asset download in progress", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101937D24();
    }
  }

  else
  {
    v4 = [[MAAssetQuery alloc] initWithType:*(a1 + 64)];
    [v4 returnTypes:1];
    [v4 setDoNotBlockBeforeFirstUnlock:1];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1007B5454;
    v5[3] = &unk_102470CB0;
    v5[4] = v4;
    v5[5] = a1;
    [v4 queryMetaData:v5];
  }
}

void sub_1007B5454(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  v5 = [objc_msgSend(*(v4 + 48) "silo")];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1007B54F0;
  block[3] = &unk_1024700D0;
  block[5] = v4;
  block[6] = a2;
  block[4] = *(a1 + 32);
  dispatch_async(v5, block);
}

void sub_1007B54F0(uint64_t a1)
{
  v3 = *(a1 + 40);
  v2 = *(a1 + 48);
  v4 = v2 > 9;
  v5 = (1 << v2) & 0x205;
  if (v4 || v5 == 0)
  {
    if (qword_1025D4870 != -1)
    {
      sub_10193645C();
    }

    v37 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
    {
      v38 = [*(v3 + 56) UTF8String];
      v39 = *(a1 + 48);
      v40 = [*(a1 + 32) queryParams];
      *buf = 136381187;
      v59 = v38;
      v60 = 1026;
      *v61 = v39;
      *&v61[4] = 2113;
      *&v61[6] = v40;
      _os_log_impl(dword_100000000, v37, OS_LOG_TYPE_DEFAULT, "#CLMA,%{private}s,asset purge query failed with error %{public}d,queryParams,%{private}@", buf, 0x1Cu);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4870 != -1)
      {
        sub_101936790();
      }

      v41 = [*(v3 + 56) UTF8String];
      v42 = *(a1 + 48);
      v43 = [*(a1 + 32) queryParams];
      v51 = 136381187;
      v52 = v41;
      v53 = 1026;
      *v54 = v42;
      *&v54[4] = 2113;
      *&v54[6] = v43;
      v44 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLMobileAsset::queryForAssetsToPurge()_block_invoke", "%s\n", v44);
      if (v44 != buf)
      {
        free(v44);
      }
    }
  }

  else if (*(v3 + 178) == 1)
  {
    if (qword_1025D4870 != -1)
    {
      sub_10193645C();
    }

    v7 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(v3 + 56) UTF8String];
      *buf = 136380675;
      v59 = v8;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "#CLMA,%{private}s,asset purge query aborted due to an asset download in progress", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101937E14();
    }
  }

  else
  {
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    obj = [*(a1 + 32) results];
    v9 = [obj countByEnumeratingWithState:&v47 objects:v57 count:16];
    if (v9)
    {
      v10 = v9;
      p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
      v12 = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
      v13 = *v48;
      do
      {
        v14 = 0;
        do
        {
          if (*v48 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v47 + 1) + 8 * v14);
          if ((*(*v3 + 64))(v3, v15) && sub_1007AFA08(v15))
          {
            if (p_info[270] != -1)
            {
              sub_101936790();
            }

            v16 = v12[271];
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              v17 = [*(v3 + 56) UTF8String];
              v18 = [v15 assetId];
              v19 = [v15 state];
              v20 = [v15 attributes];
              *buf = 136381443;
              v59 = v17;
              v60 = 2113;
              *v61 = v18;
              p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
              *&v61[8] = 1025;
              *&v61[10] = v19;
              v12 = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
              v62 = 2113;
              v63 = v20;
              _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEFAULT, "#CLMA,%{private}s,attempting to purge asset,assetID,%{private}@,state,%{private}d,attributes,%{private}@", buf, 0x26u);
            }

            if (sub_10000A100(121, 2))
            {
              bzero(buf, 0x65CuLL);
              if (p_info[270] != -1)
              {
                sub_101936790();
              }

              v31 = [*(v3 + 56) UTF8String];
              v32 = [v15 assetId];
              v33 = [v15 state];
              v34 = [v15 attributes];
              v51 = 136381443;
              v52 = v31;
              v53 = 2113;
              *v54 = v32;
              *&v54[8] = 1025;
              *&v54[10] = v33;
              v55 = 2113;
              v56 = v34;
              v35 = _os_log_send_and_compose_impl();
              sub_100152C7C("Generic", 1, 0, 2, "void CLMobileAsset::queryForAssetsToPurge()_block_invoke", "%s\n", v35);
              if (v35 != buf)
              {
                free(v35);
              }

              p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
              v12 = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
            }

            sub_1007B4C68(v3, v15);
          }

          else
          {
            if (p_info[270] != -1)
            {
              sub_101936790();
            }

            v21 = v12[271];
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              v22 = [*(v3 + 56) UTF8String];
              v23 = [v15 assetId];
              v24 = [v15 state];
              v25 = [v15 attributes];
              *buf = 136381443;
              v59 = v22;
              p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
              v60 = 2113;
              *v61 = v23;
              v12 = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
              *&v61[8] = 1025;
              *&v61[10] = v24;
              v62 = 2113;
              v63 = v25;
              _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEFAULT, "#CLMA,%{private}s,not purging asset,assetID,%{private}@,state,%{private}d,attributes,%{private}@", buf, 0x26u);
            }

            if (sub_10000A100(121, 2))
            {
              bzero(buf, 0x65CuLL);
              if (p_info[270] != -1)
              {
                sub_101936790();
              }

              v26 = [*(v3 + 56) UTF8String];
              v27 = [v15 assetId];
              v28 = [v15 state];
              v29 = [v15 attributes];
              v51 = 136381443;
              v52 = v26;
              v53 = 2113;
              *v54 = v27;
              *&v54[8] = 1025;
              *&v54[10] = v28;
              v55 = 2113;
              v56 = v29;
              v30 = _os_log_send_and_compose_impl();
              sub_100152C7C("Generic", 1, 0, 2, "void CLMobileAsset::queryForAssetsToPurge()_block_invoke", "%s\n", v30);
              if (v30 != buf)
              {
                free(v30);
              }

              p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
              v12 = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
            }
          }

          v14 = v14 + 1;
        }

        while (v10 != v14);
        v36 = [obj countByEnumeratingWithState:&v47 objects:v57 count:16];
        v10 = v36;
      }

      while (v36);
    }
  }
}

void sub_1007B5C2C(uint64_t a1)
{
  if (qword_1025D4870 != -1)
  {
    sub_10193645C();
  }

  v2 = qword_1025D4878;
  if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 56) UTF8String];
    v4 = *(a1 + 112);
    *buf = 136380931;
    *&buf[4] = v3;
    *&buf[12] = 2050;
    v69 = v4;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "#CLMA,%{private}s,reporting catalog download not triggered event,lastSuccessfulCatalogDownload,%{public}.1f", buf, 0x16u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101937F04(a1);
  }

  memset(v24, 0, sizeof(v24));
  v25 = 0;
  v26 = -1;
  v27 = -2;
  v28 = -1;
  v29 = -1;
  v30 = -1;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v35 = -1;
  v36 = -1;
  v37 = 0;
  v38 = 0;
  v39 = 0;
  v41 = -1;
  v42 = -1;
  v40 = 0;
  v43 = 0;
  v44 = 0;
  v45 = 0;
  v46 = 0;
  v47 = -1;
  v48 = -1;
  v49 = 0;
  v50 = 0;
  v51 = 0;
  v52 = 0;
  v53 = -1;
  v54 = -1;
  v55 = 0;
  v22 = 1;
  Current = CFAbsoluteTimeGetCurrent();
  HIBYTE(v24[2]) = 19;
  strcpy(v24, "com.apple.locationd");
  v5 = *(a1 + 72);
  LODWORD(v24[3]) = 5;
  HIDWORD(v24[3]) = v5;
  if (Current > 0.0)
  {
    v6 = *(a1 + 104);
    if (v6 > 0.0)
    {
      HIDWORD(v28) = llround((Current - v6) / 86400.0);
    }
  }

  if (Current > 0.0)
  {
    v7 = *(a1 + 112);
    if (v7 > 0.0)
    {
      LODWORD(v29) = llround((Current - v7) / 86400.0);
    }
  }

  if (Current > 0.0)
  {
    v8 = *(a1 + 120);
    if (v8 > 0.0)
    {
      HIDWORD(v29) = llround((Current - v8) / 86400.0);
    }
  }

  if (Current <= 0.0 || (v9 = *(a1 + 128), v9 <= 0.0))
  {
    v10 = v30;
  }

  else
  {
    v10 = llround((Current - v9) / 86400.0);
    v30 = v10;
  }

  LOBYTE(v31) = *(a1 + 136);
  *buf = 162;
  *&buf[8] = HIDWORD(v29);
  v73[0] = 0;
  v73[2] = 163;
  v73[4] = v10;
  v73[10] = 0;
  v73[12] = 164;
  v73[14] = HIDWORD(v28);
  v73[20] = 0;
  v73[22] = 165;
  v73[24] = v29;
  v73[30] = 0;
  v73[32] = 160;
  v74 = v31;
  v75 = 7;
  v76 = 161;
  v77 = v5;
  v78 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  sub_1007B6614(&v19, buf, &v79, 6uLL);
  for (i = 208; i != -32; i -= 40)
  {
    sub_10008F96C(&buf[i]);
  }

  v12 = *(a1 + 240);
  memset(v18, 0, sizeof(v18));
  sub_1007B68E0(v18, v19, v20, 0xCCCCCCCCCCCCCCCDLL * ((v20 - v19) >> 3));
  [v12 setMeasurements:sub_1007B2EC4(v18)];
  *buf = v18;
  sub_1007B6858(buf);
  v13 = *(a1 + 240);
  if (byte_1026378B7 < 0)
  {
    sub_100007244(__p, xmmword_1026378A0, *(&xmmword_1026378A0 + 1));
  }

  else
  {
    *__p = xmmword_1026378A0;
    v17 = unk_1026378B0;
  }

  [v13 submitEvent:sub_1007B2F90(__p)];
  if (SHIBYTE(v17) < 0)
  {
    operator delete(__p[0]);
  }

  if (qword_1025D4870 != -1)
  {
    sub_101936790();
  }

  v14 = qword_1025D4878;
  if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67241472;
    *&buf[4] = HIDWORD(v29);
    *&buf[8] = 1026;
    *&buf[10] = v30;
    LOWORD(v69) = 1026;
    *(&v69 + 2) = HIDWORD(v28);
    HIWORD(v69) = 1026;
    v70 = v29;
    v71 = 1026;
    v72 = v31;
    LOWORD(v73[0]) = 1026;
    *(v73 + 2) = HIDWORD(v24[3]);
    _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEFAULT, "#CLMA,#careport,DownloadNotTriggered,MADownloadNotTriggeredDaysSinceLastAssetDownloadAttempt,%{public}d,MADownloadNotTriggeredDaysSinceLastAssetDownloadSuccess,%{public}d,MADownloadNotTriggeredDaysSinceLastCatalogDownloadAttempt,%{public}d,MADownloadNotTriggeredDaysSinceLastCatalogDownloadSuccess,%{public}d,MADownloadNotTriggeredAggressiveCriteriaUsed,%{public}d,MADownloadNotTriggeredAssetType,%{public}d", buf, 0x26u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101936A1C(buf);
    v56 = 67241472;
    v57 = HIDWORD(v29);
    v58 = 1026;
    v59 = v30;
    v60 = 1026;
    v61 = HIDWORD(v28);
    v62 = 1026;
    v63 = v29;
    v64 = 1026;
    v65 = v31;
    v66 = 1026;
    v67 = HIDWORD(v24[3]);
    v15 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLMobileAsset::reportDownloadNotTriggeredAwd()", "%s\n", v15);
    if (v15 != buf)
    {
      free(v15);
    }
  }

  *buf = &v19;
  sub_1007B6858(buf);
  if (SHIBYTE(v52) < 0)
  {
    operator delete(v50);
  }

  if (SHIBYTE(v46) < 0)
  {
    operator delete(v44);
  }

  if (SHIBYTE(v40) < 0)
  {
    operator delete(v38);
  }

  if (SHIBYTE(v34) < 0)
  {
    operator delete(v32);
  }

  if (SHIBYTE(v24[2]) < 0)
  {
    operator delete(v24[0]);
  }
}

void sub_1007B6204(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61)
{
  a61 = &a17;
  sub_1007B6858(&a61);
  sub_1007B65A0(&a20);
  _Unwind_Resume(a1);
}

void sub_1007B6288(uint64_t a1)
{
  if (qword_1025D4870 != -1)
  {
    sub_10193645C();
  }

  v2 = qword_1025D4878;
  if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 56) UTF8String];
    v10 = 136380675;
    *v11 = v3;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "#CLMA,%{private}s,reporting asset version info", &v10, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101938014(a1);
  }

  *&v11[4] = 0xBFF0000000000000;
  memset(v12, 0, sizeof(v12));
  v13 = 0;
  v14 = -1;
  v15 = -2;
  v16 = -1;
  v17 = -1;
  v18 = -1;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = -1;
  v24 = -1;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v29 = -1;
  v30 = -1;
  v28 = 0;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v35 = -1;
  v36 = -1;
  v37 = 0;
  __p = 0;
  v39 = 0;
  v40 = 0;
  v41 = -1;
  v42 = -1;
  v43 = 0;
  LOBYTE(v10) = 1;
  Current = CFAbsoluteTimeGetCurrent();
  *&v11[4] = Current;
  HIBYTE(v12[2]) = 19;
  strcpy(v12, "com.apple.locationd");
  v5 = *(a1 + 72);
  LODWORD(v12[3]) = 6;
  HIDWORD(v12[3]) = v5;
  if (Current > 0.0)
  {
    v6 = *(a1 + 104);
    if (v6 > 0.0)
    {
      HIDWORD(v16) = llround((Current - v6) / 86400.0);
    }
  }

  if (Current > 0.0)
  {
    v7 = *(a1 + 112);
    if (v7 > 0.0)
    {
      LODWORD(v17) = llround((Current - v7) / 86400.0);
    }
  }

  if (Current > 0.0)
  {
    v8 = *(a1 + 120);
    if (v8 > 0.0)
    {
      HIDWORD(v17) = llround((Current - v8) / 86400.0);
    }
  }

  if (Current > 0.0)
  {
    v9 = *(a1 + 128);
    if (v9 > 0.0)
    {
      v18 = llround((Current - v9) / 86400.0);
    }
  }

  (*(*a1 + 40))(a1, &v10);
  if (SHIBYTE(v40) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v34) < 0)
  {
    operator delete(v32);
  }

  if (SHIBYTE(v28) < 0)
  {
    operator delete(v26);
  }

  if (SHIBYTE(v22) < 0)
  {
    operator delete(v20);
  }

  if (SHIBYTE(v12[2]) < 0)
  {
    operator delete(v12[0]);
  }
}

uint64_t sub_1007B65A0(uint64_t a1)
{
  if (*(a1 + 255) < 0)
  {
    operator delete(*(a1 + 232));
  }

  if (*(a1 + 207) < 0)
  {
    operator delete(*(a1 + 184));
  }

  if (*(a1 + 159) < 0)
  {
    operator delete(*(a1 + 136));
  }

  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

uint64_t sub_1007B6614(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1007B669C(result, a4);
  }

  return result;
}

void sub_1007B667C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_1007B6858(&a9);
  _Unwind_Resume(a1);
}

void sub_1007B669C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    sub_1007B66E8(a1, a2);
  }

  sub_10028C64C();
}

void sub_1007B66E8(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  sub_1001D0818();
}

uint64_t sub_1007B6740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v7 = 0;
    do
    {
      *(a4 + v7) = *(a2 + v7);
      sub_10008852C(a4 + v7 + 8, a2 + v7 + 8);
      v7 += 40;
    }

    while (a2 + v7 != a3);
    a4 += v7;
  }

  return a4;
}

void sub_1007B67B4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    v4 = -v1;
    v5 = v2 - 32;
    do
    {
      sub_10008F96C(v5);
      v5 -= 40;
      v4 += 40;
    }

    while (v4);
  }

  _Unwind_Resume(exception_object);
}

float sub_1007B6828(_DWORD **a1, float *a2)
{
  result = *a2;
  **a1 = *a2;
  return result;
}

double sub_1007B6838(void **a1, double *a2)
{
  result = *a2;
  **a1 = *a2;
  return result;
}

void sub_1007B6858(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = v4 - 40;
        sub_10008F96C((v4 - 32));
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_1007B68E0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1007B669C(result, a4);
  }

  return result;
}

void sub_1007B6948(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_1007B6858(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_1007B6968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v7 = 0;
    do
    {
      *(a4 + v7) = *(a2 + v7);
      sub_10008852C(a4 + v7 + 8, a2 + v7 + 8);
      v7 += 40;
    }

    while (a2 + v7 != a3);
    a4 += v7;
  }

  return a4;
}

void sub_1007B69DC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    v4 = -v1;
    v5 = v2 - 32;
    do
    {
      sub_10008F96C(v5);
      v5 -= 40;
      v4 += 40;
    }

    while (v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1007B6A08@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return sub_1007B68E0(a2, *(a1 + 32), *(a1 + 40), 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 40) - *(a1 + 32)) >> 3));
}

uint64_t sub_1007B6A30(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v2 = a1 + 32;
  *(v2 + 16) = 0;
  return sub_1007B68E0(v2, *(a2 + 32), *(a2 + 40), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 40) - *(a2 + 32)) >> 3));
}

char *sub_1007B6A84@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  if (result[55] < 0)
  {
    return sub_100007244(a2, *(result + 4), *(result + 5));
  }

  *a2 = *(result + 2);
  *(a2 + 16) = *(result + 6);
  return result;
}

_BYTE *sub_1007B6AAC(_BYTE *result, uint64_t a2)
{
  if (*(a2 + 55) < 0)
  {
    return sub_100007244(result + 32, *(a2 + 32), *(a2 + 40));
  }

  v2 = *(a2 + 32);
  *(result + 6) = *(a2 + 48);
  *(result + 2) = v2;
  return result;
}

void sub_1007B6AD8(uint64_t a1)
{
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }
}

uint64_t sub_1007B6AEC(uint64_t result, float a2)
{
  *(v6 - 112) = a2;
  *(v5 + 4) = v2;
  *(v6 - 100) = 2113;
  *(v5 + 14) = v3;
  *(v6 - 90) = 1025;
  *(v6 - 88) = v4;
  *(v6 - 84) = 2113;
  *(v5 + 30) = result;
  return result;
}

uint64_t sub_1007B6B24(uint64_t result, float a2)
{
  *(v4 - 80) = a2;
  *(v3 + 4) = v2;
  *(v4 - 68) = 2113;
  *(v3 + 14) = result;
  return result;
}

uint64_t sub_1007B6B48@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, float a3@<S0>)
{
  *(v3 - 64) = a3;
  *(a2 + 4) = result;
  return result;
}

void sub_1007B6B54(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    getpid();
    proc_disable_cpumon();
    operator new();
  }

  sub_101938114();
}

void sub_1007B6D24(_OWORD *a1)
{
  *a1 = 0u;
  a1[1] = 0u;
  sub_1007B6B54(a1);
}

uint64_t sub_1007B6D54(uint64_t a1)
{
  v1 = a1 + 16;
  if (!*(a1 + 16))
  {
    sub_1019383E8();
  }

  v3 = 0;
  v4 = 1;
  do
  {
    v5 = v4;
    v6 = *(v1 + 8 * v3);
    (*(*v6 + 16))(v6);
    v7 = *(v1 + 8 * v3);
    *(v7 + 20) = 1;
    if (!*(a1 + 8 * v3))
    {
      sub_10053700C(v7);
      operator delete();
    }

    *(a1 + 8 * v3) = 0;
    *(v1 + 8 * v3) = 0;
    (*(*v6 + 24))(v6);
    v4 = 0;
    v3 = 1;
  }

  while ((v5 & 1) != 0);
  v8 = getpid();

  return _proc_set_cpumon_defaults(v8);
}

uint64_t sub_1007B6E88(uint64_t a1, float a2)
{
  if (qword_1025D42D0 != -1)
  {
    sub_101938568();
  }

  v4 = qword_1025D42D8;
  if (os_log_type_enabled(qword_1025D42D8, OS_LOG_TYPE_INFO))
  {
    v12 = 134217984;
    v13 = a2;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "dutyCycle,%f", &v12, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10193857C(a2);
  }

  v6 = *(a1 + 16);
  v5 = a1 + 16;
  if (!v6)
  {
    sub_1019386B4();
  }

  v7 = 0;
  v8 = 1;
  do
  {
    v9 = v8;
    v10 = *(v5 + 8 * v7);
    (*(*v10 + 16))(v10);
    *(*(v5 + 8 * v7) + 16) = a2;
    result = (*(*v10 + 24))(v10);
    v8 = 0;
    v7 = 1;
  }

  while ((v9 & 1) != 0);
  return result;
}

void sub_1007B6FF8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10037EA9C(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1007B7004(uint64_t a1)
{
  v2 = malloc_type_malloc(0x9007uLL, 0x80040B8603338uLL);
  v3 = (v2 + 4103) & 0xFFFFFFFFFFFFF000;
  *(v3 - 8) = v2;
  v4 = malloc_type_malloc(0x77uLL, 0x80040B8603338uLL);
  v5 = ((v4 + 71) & 0xFFFFFFFFFFFFFFC0);
  *(v5 - 1) = v4;
  v6 = malloc_type_malloc(0x9007uLL, 0x80040B8603338uLL);
  v7 = (v6 + 4103) & 0xFFFFFFFFFFFFF000;
  *(v7 - 8) = v6;
  v8 = malloc_type_malloc(0x247uLL, 0x80040B8603338uLL);
  v9 = 0;
  v10 = (v8 + 71) & 0xFFFFFFFFFFFFFFC0;
  *(v10 - 8) = v8;
  v11 = (v3 | 0x20);
  *&v12 = 0x5A5A5A5A5A5A5A5ALL;
  *(&v12 + 1) = 0x5A5A5A5A5A5A5A5ALL;
  *&v13 = 0xAAAAAAAAAAAAAAAALL;
  *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
  do
  {
    *(v11 - 2) = v12;
    *(v11 - 1) = v13;
    *v11 = v13;
    v11[1] = v12;
    v11 += 4;
    v9 += 8;
  }

  while (v9 < 0xFF9);
  *v5 = xmmword_101C8D9D0;
  v5[1] = xmmword_101C8D9E0;
  v5[2] = xmmword_101C8D9F0;
  while (1)
  {
    (*(*a1 + 16))(a1);
    v14 = *(a1 + 20);
    if (v14)
    {
      v15 = 2;
      v16 = 0.0;
    }

    else
    {
      v15 = 0;
      v16 = fminf(fmaxf(*(a1 + 16), 0.01), 1.0);
    }

    (*(*a1 + 24))(a1);
    if ((v14 & 1) == 0)
    {
      v17 = sub_1000137E0();
      sub_100377E00();
      v18 = sub_1000137E0();
      usleep(((v18 - v17) * (1.0 - v16) * 1000000.0 / v16));
      v15 = 0;
    }

    if (v15)
    {
      if (v3)
      {
        free(*(v3 - 8));
      }

      free(*(v5 - 1));
      if (v7)
      {
        free(*(v7 - 8));
      }

      if (v10)
      {
        free(*(v10 - 8));
      }

      sub_10053700C(a1);
      operator delete();
    }
  }
}

unsigned __int16 *sub_1007B72A0(uint64_t a1, int *a2, _DWORD *a3)
{
  if (qword_1025D45A0 != -1)
  {
    sub_101938834();
  }

  v6 = qword_1025D45A8;
  if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_DEBUG))
  {
    v7 = *a2;
    v8 = *a3;
    v9 = a3[2];
    v10 = *(a3 + 25);
    v13[0] = 67109888;
    v13[1] = v7;
    v14 = 2048;
    v15 = v8;
    v16 = 1024;
    v17 = v9;
    v18 = 2048;
    v19 = v10;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "Activity notification %d startTime %f activity %u workoutType %lu", v13, 0x22u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101938848(a2);
  }

  sub_1007B7418((a1 + 64), a3);
  result = sub_100726B38((a1 + 60872), a2);
  for (i = *(a1 + 32); i != a1 + 24; i = *(i + 8))
  {
    result = (*(**(i + 24) + 16))(*(i + 24), a1);
  }

  return result;
}

void *sub_1007B7418(unsigned __int16 *a1, const void *a2)
{
  v3 = *(a1 + 1);
  v4 = *a1 + a1[1];
  if (v4 < v3)
  {
    v3 = 0;
  }

  result = memcpy(&a1[152 * (v4 - v3) + 4], a2, 0x130uLL);
  v6 = a1[1];
  v7 = *(a1 + 1);
  if (v7 <= v6)
  {
    v8 = *a1 + 1;
    if (v8 < v7)
    {
      LOWORD(v7) = 0;
    }

    *a1 = v8 - v7;
  }

  else
  {
    a1[1] = v6 + 1;
  }

  return result;
}

void sub_1007B749C(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v5 = (a1 + 16);
  v6 = *(a1 + 16);
  sub_1003E66FC(a1 + 8, a2, a3);
  if (qword_1025D45A0 != -1)
  {
    sub_101938834();
  }

  v7 = qword_1025D45A8;
  if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_DEBUG))
  {
    v8 = *v5;
    *buf = 67109376;
    v11 = v8;
    v12 = 1024;
    v13 = v3;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "fActiveRefCount %d, leech %d", buf, 0xEu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10193897C(v5);
  }

  if (!v6 && *v5 == 1)
  {
    if (qword_1025D45A0 != -1)
    {
      sub_101938A98();
    }

    v9 = qword_1025D45A8;
    if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "creating activity dispatcher", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101938AC0();
    }

    if (*(a1 + 48))
    {
      operator new();
    }
  }
}

void sub_1007B76DC(uint64_t a1, uint64_t a2)
{
  if (sub_1003E6B84(a1 + 8, a2))
  {
    if (*(a1 + 16) != 1)
    {
      sub_101938BA4(qword_1025D45A0 == -1);
    }

    if (qword_1025D45A0 != -1)
    {
      sub_101938834();
    }

    v4 = qword_1025D45A8;
    if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "removing activity delegate", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101938D6C();
    }

    v5 = *(a1 + 48);
    if (v5)
    {
      (*(*v5 + 216))(v5);
    }
  }

  if (qword_1025D45A0 != -1)
  {
    sub_101938A98();
  }

  v6 = qword_1025D45A8;
  if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_INFO, "detaching activity client", v7, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101938E4C();
  }

  sub_1003E6D3C(a1 + 8, a2);
}

double sub_1007B7854(uint64_t a1, int a2)
{
  result = -1.0;
  if (a2 == 1 && *(a1 + 66))
  {
    v3 = *(a1 + 66) + *(a1 + 64) - 1;
    v4 = *(a1 + 68);
    if (v3 < v4)
    {
      v4 = 0;
    }

    return *(a1 + 304 * (v3 - v4) + 72);
  }

  return result;
}

void sub_1007B7898(void *a1)
{
  sub_1007B795C(a1);

  operator delete();
}

void sub_1007B78F0(uint64_t a1)
{
  sub_1007B795C((a1 - 8));

  operator delete();
}

void *sub_1007B795C(void *a1)
{
  *a1 = off_102470E10;
  a1[1] = off_102470E78;
  if (qword_1025D45A0 != -1)
  {
    sub_101938834();
  }

  v2 = qword_1025D45A8;
  if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "factory stream activity destroyed", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101938F2C(buf);
    v5 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "virtual CMDataProviderFactoryActivity::~CMDataProviderFactoryActivity()", "%s\n", v5);
    if (v5 != buf)
    {
      free(v5);
    }
  }

  v3 = a1[7];
  if (v3)
  {
    sub_100008080(v3);
  }

  a1[1] = off_10244FCF8;
  sub_1001FB750(a1 + 3);
  return a1;
}

void sub_1007B7B28(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

void *sub_1007B7BA0(void *a1, uint64_t *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_102470F08;
  sub_1007B7C98((a1 + 3), a2);
  return a1;
}

void sub_1007B7C1C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_102470F08;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1007B7C98(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  v5 = *a2;
  v6 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1007B7D0C(a1, &v5);
  if (v6)
  {
    sub_100008080(v6);
  }

  return a1;
}

void sub_1007B7CF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  _Unwind_Resume(exception_object);
}

double sub_1007B7D0C(uint64_t a1, void *a2)
{
  *(a1 + 16) = 0;
  *(a1 + 24) = a1 + 24;
  *(a1 + 32) = a1 + 24;
  *(a1 + 40) = 0;
  *a1 = off_102470E10;
  *(a1 + 8) = off_102470E78;
  v2 = a2[1];
  *(a1 + 48) = *a2;
  *(a1 + 56) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  *&result = 0xC800000000;
  *(a1 + 64) = 0xC800000000;
  *(a1 + 60872) = 0xC800000000;
  return result;
}

__n128 sub_1007B7DEC(uint64_t a1, uint64_t a2)
{
  *a2 = off_102470F58;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1007B7E24(void *a1)
{
  v1 = a1[2];
  v2 = a1[1];
  v3 = (a1[3] + (v1 >> 1));
  if (v1)
  {
    return (*(*v3 + v2))();
  }

  else
  {
    return v2(v3);
  }
}

uint64_t sub_1007B7E6C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1007B7EB8(uint64_t a1)
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

uint64_t sub_1007B7F38(uint64_t a1, char *a2, int a3, uint64_t a4, int a5, float a6)
{
  *(a1 + 8) = 0u;
  v12 = (a1 + 8);
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *a1 = off_102456270;
  sub_1003FFA38((a1 + 8));
  *v12 = off_1024562B8;
  *a1 = off_102471590;
  *(a1 + 72) = off_102471638;
  sub_101052EEC(a1 + 72, a2, a3, a1, a6, a4, a5, 0);
  *a1 = off_102471590;
  *(a1 + 176) = 0u;
  *(a1 + 72) = off_102471638;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 4;
  *(a1 + 368) = 0;
  *(a1 + 272) = 0u;
  *(a1 + 244) = 0u;
  *(a1 + 260) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 348) = 0u;
  *(a1 + 376) = 12000;
  *(a1 + 384) = off_102456270;
  sub_1003FFA38((a1 + 392));
  *(a1 + 392) = off_1024562B8;
  *(a1 + 456) = 0;
  *(a1 + 464) = 0;
  v13 = *(a1 + 112);
  v17 = a1 + 112;
  (*(v13 + 16))(a1 + 112);
  v18 = 256;
  if ((a3 & 1) == 0)
  {
    if (*(a4 + 23) < 0)
    {
      sub_100007244(__p, *a4, *(a4 + 8));
    }

    else
    {
      *__p = *a4;
      v16 = *(a4 + 16);
    }

    sub_101053788(a1 + 72);
  }

  *(a1 + 232) = 0xBFF0000000000000;
  (*(*(a1 + 112) + 24))(a1 + 112);
  return a1;
}

void sub_1007B8340(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  sub_1017EC98C(&a19);
  *a11 = v29;
  sub_1003FFCFC(v30);
  sub_100106180(v28);
  sub_1010532A4(v27);
  *v25 = a12;
  sub_1003FFCFC(v26);
  _Unwind_Resume(a1);
}

void *sub_1007B83E8(void *a1)
{
  *a1 = off_102471590;
  v2 = (a1 + 9);
  a1[9] = off_102471638;
  sub_1007BD834(a1, 0, 0);
  a1[48] = off_102456270;
  sub_1003FFCFC(a1 + 49);
  sub_100106180(a1 + 22);
  sub_1010532A4(v2);
  *a1 = off_102456270;
  sub_1003FFCFC(a1 + 1);
  return a1;
}

void sub_1007B84C0(void *a1)
{
  sub_1007B83E8(a1);

  operator delete();
}

void sub_1007B84F8(uint64_t a1)
{
  sub_1007B83E8((a1 - 72));

  operator delete();
}

uint64_t sub_1007B855C(uint64_t a1, uint64_t a2, sqlite3_int64 a3)
{
  v5 = a1;
  if (!sub_100099160(a1 + 72))
  {
    goto LABEL_28;
  }

  sub_100144CA0((v5 + 488), &v31);
  memset(out, 0, 37);
  uuid_unparse((a2 + 64), out);
  v6 = sub_100008880(v31);
  if (sub_1001A3BD4(v6, 1, *(a2 + 8)) && (v7 = sub_100008880(v31), sub_100073700(v7, 2, *(a2 + 16))) && (v8 = sub_100008880(v31), sub_100073700(v8, 3, *(a2 + 20))) && (v9 = sub_100008880(v31), sub_1001A3BD4(v9, 4, *(a2 + 24))) && (v10 = sub_100008880(v31), sub_1001A3BD4(v10, 5, *(a2 + 40))) && (v11 = sub_100008880(v31), sub_1001A3BD4(v11, 6, *(a2 + 56))) && (v12 = sub_100008880(v31), sub_10003DDD8(v12, 7, out)) && (v13 = sub_100008880(v31), sub_1001A3BD4(v13, 8, *(a2 + 80))) && (v14 = sub_100008880(v31), sub_1001A3BD4(v14, 9, *(a2 + 48))) && (v15 = sub_100008880(v31), sub_1001452C8(v15, 10, *(a2 + 96))) && (v16 = sub_100008880(v31), sub_1001452C8(v16, 11, *(a2 + 100))) && (v17 = sub_100008880(v31), sub_1001452C8(v17, 12, *(a2 + 104))) && (v18 = sub_100008880(v31), sub_1001452C8(v18, 13, *(a2 + 108))) && (v19 = sub_100008880(v31), sub_1001A3BD4(v19, 14, *(a2 + 32))) && (v20 = sub_100008880(v31), sub_1001A3BD4(v20, 15, *(a2 + 112))) && (v21 = sub_100008880(v31), sub_1001A3BD4(v21, 16, *(a2 + 88))) && (v22 = sub_100008880(v31), sub_1001A3BD4(v22, 17, *(a2 + 120))) && (v23 = sub_100008880(v31), sub_1001A3BD4(v23, 18, *(a2 + 128))) && (v24 = sub_100008880(v31), sub_1001452C8(v24, 19, *(a2 + 136))) && (v25 = sub_100008880(v31), sub_1001A3BD4(v25, 20, *(a2 + 144))) && (v26 = sub_100008880(v31), sub_1000728E4(v26, 21, a3)))
  {
    v5 = *(v5 + 80);
    v27 = sub_100008880(v31);
    LOBYTE(v5) = sub_1001A3DEC(v5, v27);
    v28 = 0;
  }

  else
  {
    v28 = 1;
  }

  v29 = v31;
  v31 = 0;
  if (v29)
  {
    (*(*v29 + 8))(v29);
  }

  if (v28)
  {
LABEL_28:
    LOBYTE(v5) = 0;
  }

  return v5 & 1;
}

void sub_1007B884C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_101880BC0();
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1007B8870(uint64_t a1, int a2, uint64_t a3)
{
  v7 = a1 + 112;
  v6 = *(a1 + 112);
  v8 = a1 + 72;
  v36[1] = a1 + 112;
  (*(v6 + 16))(a1 + 112);
  v37 = 256;
  if (sub_100099160(v8))
  {
    sub_100144CA0((a1 + 504), v36);
    v9 = sub_100008880(v36[0]);
    if (sub_100073700(v9, 1, a2))
    {
      v10 = sub_100008880(v36[0]);
      if (sqlite3_step(v10) == 100)
      {
        v11 = sub_100008880(v36[0]);
        *a3 = sqlite3_column_int(v11, 0);
        v12 = sub_100008880(v36[0]);
        *(a3 + 8) = sqlite3_column_double(v12, 1);
        v13 = sub_100008880(v36[0]);
        *(a3 + 16) = sqlite3_column_int(v13, 2);
        v14 = sub_100008880(v36[0]);
        *(a3 + 20) = sqlite3_column_int(v14, 3);
        v15 = sub_100008880(v36[0]);
        *(a3 + 24) = sqlite3_column_double(v15, 4);
        v16 = sub_100008880(v36[0]);
        *(a3 + 40) = sqlite3_column_double(v16, 5);
        v17 = sub_100008880(v36[0]);
        *(a3 + 56) = sqlite3_column_double(v17, 6);
        v18 = sub_100008880(v36[0]);
        v19 = sqlite3_column_text(v18, 7);
        uuid_parse(v19, (a3 + 64));
        v20 = sub_100008880(v36[0]);
        *(a3 + 80) = sqlite3_column_double(v20, 8);
        v21 = sub_100008880(v36[0]);
        *(a3 + 48) = sqlite3_column_double(v21, 9);
        v22 = sub_100008880(v36[0]);
        *(a3 + 96) = sqlite3_column_int(v22, 10);
        v23 = sub_100008880(v36[0]);
        *(a3 + 100) = sqlite3_column_int(v23, 11);
        v24 = sub_100008880(v36[0]);
        *(a3 + 104) = sqlite3_column_int(v24, 12);
        v25 = sub_100008880(v36[0]);
        *(a3 + 108) = sqlite3_column_int(v25, 13);
        v26 = sub_100008880(v36[0]);
        *(a3 + 32) = sqlite3_column_double(v26, 14);
        v27 = sub_100008880(v36[0]);
        *(a3 + 112) = sqlite3_column_double(v27, 15);
        v28 = sub_100008880(v36[0]);
        *(a3 + 88) = sqlite3_column_double(v28, 16);
        v29 = sub_100008880(v36[0]);
        *(a3 + 120) = sqlite3_column_double(v29, 17);
        v30 = sub_100008880(v36[0]);
        *(a3 + 128) = sqlite3_column_double(v30, 18);
        v31 = sub_100008880(v36[0]);
        *(a3 + 136) = sqlite3_column_int(v31, 19);
        v32 = sub_100008880(v36[0]);
        *(a3 + 144) = sqlite3_column_double(v32, 20);
      }
    }

    v33 = v36[0];
    v36[0] = 0;
    if (v33)
    {
      (*(*v33 + 8))(v33);
    }

    v34 = 100;
  }

  else
  {
    v34 = 109;
  }

  (*(*v7 + 24))(v7);
  return v34;
}

void sub_1007B8B44(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1007B8B78(uint64_t *a1)
{
  result = sub_100023B68(a1[10]);
  if (result)
  {
    sub_1007B8C0C(a1);
    sub_100608EC8(a1[10], "VO2MaxRetrocomputeHistory", &off_102471140, &off_1025D8600, 0);
    a1[63] = sub_100614C1C(a1[10], "SELECT * FROM VO2MaxRetrocomputeHistory WHERE algVersion = ? LIMIT 1");
    a1[64] = v3;
    a1[59] = sub_100614C1C(a1[10], "INSERT INTO VO2MaxRetrocomputeHistory (startTime, algVersion, status, firstSampleDate, lastSampleDate, lastSessionTimestamp, lastSessionId, meanDelta, lastSampleDatePrevAlg, numUpdatedEstimates, numNewEstimates, numLostEstimates, numLostEstimatesAfterLastSession, firstSummaryDate, lastTimestampToHealthKit, meanPercentileDelta, highPercentileMaxDelta, estimateVariabilityDelta, unavailableReasons, availableStartTime) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
    a1[60] = v4;
    result = sub_100614C1C(a1[10], "UPDATE VO2MaxRetrocomputeHistory SET startTime = ?, algVersion =?, status = ?, firstSampleDate = ?, lastSampleDate = ?, lastSessionTimestamp = ?, lastSessionId = ?, meanDelta = ?, lastSampleDatePrevAlg = ?, numUpdatedEstimates = ?, numNewEstimates = ?, numLostEstimates = ?, numLostEstimatesAfterLastSession = ?, firstSummaryDate = ?, lastTimestampToHealthKit = ?, meanPercentileDelta = ?, highPercentileMaxDelta = ?, estimateVariabilityDelta = ?, unavailableReasons = ?, availableStartTime = ? WHERE id = ?");
    a1[61] = result;
    a1[62] = v5;
  }

  return result;
}

BOOL sub_1007B8C0C(uint64_t a1)
{
  result = sub_10060A6D8(*(a1 + 80), "VO2MaxRetrocomputeHistory");
  if (result)
  {
    v3 = "startTime";
    v4 = 5;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    sub_100611268(*(a1 + 80), "VO2MaxRetrocomputeHistory", "startTime", &v3);
  }

  return result;
}

void sub_1007B913C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  sub_10026C504(&a61);
  _Unwind_Resume(a1);
}

void sub_1007B91E4(uint64_t a1)
{
  if (sub_100099160(a1 + 72))
  {
    sub_1000388D8(*(a1 + 80), "DELETE FROM VO2MaxRetrocomputeHistory");
  }

  if (qword_1025D4450 != -1)
  {
    sub_101938FDC();
  }

  v2 = qword_1025D4458;
  if (os_log_type_enabled(qword_1025D4458, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "[VO2MaxRetrocomputeHistory] Database inaccessible, unable to delete records.", v3, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101938FF0();
  }
}

void sub_1007B9308(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_101880BC0();
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1007B9328(uint64_t a1, uint64_t a2)
{
  result = sub_100099160(a1 + 72);
  if (result)
  {
    sub_100144CA0((a1 + 472), &v27);
    memset(out, 0, 37);
    uuid_unparse((a2 + 64), out);
    v5 = sub_100008880(v27);
    if (sub_1001A3BD4(v5, 1, *(a2 + 8)))
    {
      v6 = sub_100008880(v27);
      if (sub_100073700(v6, 2, *(a2 + 16)))
      {
        v7 = sub_100008880(v27);
        if (sub_100073700(v7, 3, *(a2 + 20)))
        {
          v8 = sub_100008880(v27);
          if (sub_1001A3BD4(v8, 4, *(a2 + 24)))
          {
            v9 = sub_100008880(v27);
            if (sub_1001A3BD4(v9, 5, *(a2 + 40)))
            {
              v10 = sub_100008880(v27);
              if (sub_1001A3BD4(v10, 6, *(a2 + 56)))
              {
                v11 = sub_100008880(v27);
                if (sub_10003DDD8(v11, 7, out))
                {
                  v12 = sub_100008880(v27);
                  if (sub_1001A3BD4(v12, 8, *(a2 + 80)))
                  {
                    v13 = sub_100008880(v27);
                    if (sub_1001A3BD4(v13, 9, *(a2 + 48)))
                    {
                      v14 = sub_100008880(v27);
                      if (sub_1001452C8(v14, 10, *(a2 + 96)))
                      {
                        v15 = sub_100008880(v27);
                        if (sub_1001452C8(v15, 11, *(a2 + 100)))
                        {
                          v16 = sub_100008880(v27);
                          if (sub_1001452C8(v16, 12, *(a2 + 104)))
                          {
                            v17 = sub_100008880(v27);
                            if (sub_1001452C8(v17, 13, *(a2 + 108)))
                            {
                              v18 = sub_100008880(v27);
                              if (sub_1001A3BD4(v18, 14, *(a2 + 32)))
                              {
                                v19 = sub_100008880(v27);
                                if (sub_1001A3BD4(v19, 15, *(a2 + 112)))
                                {
                                  v20 = sub_100008880(v27);
                                  if (sub_1001A3BD4(v20, 16, *(a2 + 88)))
                                  {
                                    v21 = sub_100008880(v27);
                                    if (sub_1001A3BD4(v21, 17, *(a2 + 120)))
                                    {
                                      v22 = sub_100008880(v27);
                                      if (sub_1001A3BD4(v22, 18, *(a2 + 128)))
                                      {
                                        v23 = sub_100008880(v27);
                                        if (sub_1001452C8(v23, 19, *(a2 + 136)))
                                        {
                                          v24 = sub_100008880(v27);
                                          if (sub_1001A3BD4(v24, 20, *(a2 + 144)))
                                          {
                                            v25 = *(a1 + 80);
                                            v26 = sub_100008880(v27);
                                            sub_1001A3DEC(v25, v26);
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    result = v27;
    v27 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

void sub_1007B95D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_101880BC0();
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1007B95FC(uint64_t a1, char *a2)
{
  if (!sub_10060A9FC(*(a1 + 80), a2))
  {
    if (qword_1025D4200 != -1)
    {
      sub_1019390F4();
    }

    v4 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf[0].__r_.__value_.__l.__data_) = 136446210;
      *(buf[0].__r_.__value_.__r.__words + 4) = a2;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "#Notice %{public}s needs autoincrement migration", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101939108(a2);
    }

    __p = 0;
    v26 = 0uLL;
    sub_10000EC00(buf, a2);
    v5 = std::string::append(buf, "AutoIncr", 8uLL);
    v6 = *&v5->__r_.__value_.__l.__data_;
    v24 = v5->__r_.__value_.__r.__words[2];
    v23 = v6;
    v5->__r_.__value_.__l.__size_ = 0;
    v5->__r_.__value_.__r.__words[2] = 0;
    v5->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(buf[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf[0].__r_.__value_.__l.__data_);
    }

    sub_10000EC00(buf, a2);
    v7 = std::string::append(buf, "Index", 5uLL);
    v8 = *&v7->__r_.__value_.__l.__data_;
    v22 = v7->__r_.__value_.__r.__words[2];
    *v21 = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(buf[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf[0].__r_.__value_.__l.__data_);
    }

    sub_100144A84(*(a1 + 80));
    if (v26 >= 0)
    {
      v9 = HIBYTE(v26);
    }

    else
    {
      v9 = v26;
    }

    v10 = buf;
    sub_100070148(buf, v9 + 21);
    if ((buf[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v10 = buf[0].__r_.__value_.__r.__words[0];
    }

    if (v9)
    {
      if (v26 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      memmove(v10, p_p, v9);
    }

    strcpy(v10 + v9, "DROP TABLE IF EXISTS ");
    if (v24 >= 0)
    {
      v12 = &v23;
    }

    else
    {
      v12 = v23;
    }

    if (v24 >= 0)
    {
      v13 = HIBYTE(v24);
    }

    else
    {
      v13 = *(&v23 + 1);
    }

    v14 = std::string::append(buf, v12, v13);
    v15 = v14->__r_.__value_.__r.__words[0];
    v28.__r_.__value_.__r.__words[0] = v14->__r_.__value_.__l.__size_;
    *(v28.__r_.__value_.__r.__words + 7) = *(&v14->__r_.__value_.__r.__words[1] + 7);
    v16 = HIBYTE(v14->__r_.__value_.__r.__words[2]);
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v26) < 0)
    {
      operator delete(__p);
    }

    __p = v15;
    *&v26 = v28.__r_.__value_.__r.__words[0];
    *(&v26 + 7) = *(v28.__r_.__value_.__r.__words + 7);
    HIBYTE(v26) = v16;
    if (SHIBYTE(buf[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf[0].__r_.__value_.__l.__data_);
      v16 = HIBYTE(v26);
      v15 = __p;
    }

    if (v16 >= 0)
    {
      v17 = &__p;
    }

    else
    {
      v17 = v15;
    }

    sub_1000388D8(*(a1 + 80), v17);
  }

  v18 = *(a1 + 80);
  if (*(v18 + 88) <= 0)
  {
    v19 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v19 = *(v18 + 88);
  }

  sub_1001B16EC(v18, v19);
  return 0;
}

void sub_1007BA6DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  if (a39 < 0)
  {
    operator delete(a34);
  }

  if (a46 < 0)
  {
    operator delete(a41);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1007BA9C0(void *a1, void *a2)
{
  (*(*a1 + 64))(buf);
  if ((SBYTE3(v20) & 0x80000000) == 0)
  {
    if (BYTE3(v20))
    {
      goto LABEL_3;
    }

LABEL_18:
    if (qword_1025D4200 != -1)
    {
      sub_101938F70();
    }

    v12 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *v18 = 2082;
      *&v18[2] = "";
      v19 = 2082;
      v20 = "assert";
      v21 = 2081;
      v22 = "getTableName() != ";
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Need to override getTableName in order to use default definition of getAllRecords, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4200 != -1)
      {
        sub_101938F70();
      }
    }

    v13 = qword_1025D4208;
    if (os_signpost_enabled(qword_1025D4208))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *v18 = 2082;
      *&v18[2] = "";
      v19 = 2082;
      v20 = "assert";
      v21 = 2081;
      v22 = "getTableName() != ";
      _os_signpost_emit_with_name_impl(dword_100000000, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Need to override getTableName in order to use default definition of getAllRecords", "{msg%{public}.0s:Need to override getTableName in order to use default definition of getAllRecords, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4200 != -1)
      {
        sub_101938F70();
      }
    }

    v14 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *v18 = 2082;
      *&v18[2] = "";
      v19 = 2082;
      v20 = "assert";
      v21 = 2081;
      v22 = "getTableName() != ";
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Need to override getTableName in order to use default definition of getAllRecords, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
    __break(1u);
  }

  v11 = *v18;
  operator delete(*buf);
  if (!v11)
  {
    goto LABEL_18;
  }

LABEL_3:
  result = sub_100099160(a1 + 9);
  if (result)
  {
    a2[1] = *a2;
    sub_10003848C(buf);
    v5 = sub_100038730(&v18[8], "SELECT * from ", 14);
    (*(*a1 + 64))(__p, a1);
    if ((SBYTE7(v16) & 0x80u) == 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = __p[0];
    }

    if ((SBYTE7(v16) & 0x80u) == 0)
    {
      v7 = BYTE7(v16);
    }

    else
    {
      v7 = __p[1];
    }

    v8 = sub_100038730(v5, v6, v7);
    sub_100038730(v8, " ORDER BY id ASC", 16);
    if (SBYTE7(v16) < 0)
    {
      operator delete(__p[0]);
    }

    v9 = a1[10];
    sub_100073518(buf, __p);
    if ((SBYTE7(v16) & 0x80u) == 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    sub_1000388D8(v9, v10);
  }

  return result;
}

void sub_1007BB078(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  if (v36)
  {
    (*(*v36 + 8))(v36);
  }

  sub_10026C504(&a36);
  _Unwind_Resume(a1);
}

uint64_t sub_1007BB100(void *a1)
{
  (*(*a1 + 64))(buf);
  if ((SBYTE3(v18) & 0x80000000) == 0)
  {
    if (BYTE3(v18))
    {
      goto LABEL_3;
    }

LABEL_18:
    if (qword_1025D4200 != -1)
    {
      sub_101938F70();
    }

    v9 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *v16 = 2082;
      *&v16[2] = "";
      v17 = 2082;
      v18 = "assert";
      v19 = 2081;
      v20 = "getTableName() != ";
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Need to override getTableName in order to use default definition of getEntriesByTimeRange, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4200 != -1)
      {
        sub_101938F70();
      }
    }

    v10 = qword_1025D4208;
    if (os_signpost_enabled(qword_1025D4208))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *v16 = 2082;
      *&v16[2] = "";
      v17 = 2082;
      v18 = "assert";
      v19 = 2081;
      v20 = "getTableName() != ";
      _os_signpost_emit_with_name_impl(dword_100000000, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Need to override getTableName in order to use default definition of getEntriesByTimeRange", "{msg%{public}.0s:Need to override getTableName in order to use default definition of getEntriesByTimeRange, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4200 != -1)
      {
        sub_101938F70();
      }
    }

    v11 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *v16 = 2082;
      *&v16[2] = "";
      v17 = 2082;
      v18 = "assert";
      v19 = 2081;
      v20 = "getTableName() != ";
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Need to override getTableName in order to use default definition of getEntriesByTimeRange, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
    __break(1u);
  }

  v8 = *v16;
  operator delete(*buf);
  if (!v8)
  {
    goto LABEL_18;
  }

LABEL_3:
  if (sub_100099160(a1 + 9))
  {
    sub_10003848C(buf);
    v2 = sub_100038730(&v16[8], "SELECT * FROM ", 14);
    (*(*a1 + 64))(__p, a1);
    if ((SBYTE7(v14) & 0x80u) == 0)
    {
      v3 = __p;
    }

    else
    {
      v3 = __p[0];
    }

    if ((SBYTE7(v14) & 0x80u) == 0)
    {
      v4 = BYTE7(v14);
    }

    else
    {
      v4 = __p[1];
    }

    v5 = sub_100038730(v2, v3, v4);
    sub_100038730(v5, " WHERE startTime > ? and startTime <= ? ORDER BY rowid ASC", 58);
    if (SBYTE7(v14) < 0)
    {
      operator delete(__p[0]);
    }

    v6 = a1[10];
    sub_100073518(buf, __p);
    if ((SBYTE7(v14) & 0x80u) == 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = __p[0];
    }

    sub_1000388D8(v6, v7);
  }

  return 2;
}

void sub_1007BB7FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  sub_10026C504(&a36);
  _Unwind_Resume(a1);
}

uint64_t sub_1007BB884(uint64_t a1)
{
  v3 = *(a1 + 112);
  v2 = a1 + 112;
  v4 = v2 - 40;
  v11 = v2;
  (*(v3 + 16))();
  if (!sub_100099160(v4))
  {
    sub_1007BDA80(a1);
  }

  if (qword_1025D4200 != -1)
  {
    sub_1019390F4();
  }

  v5 = qword_1025D4208;
  if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEBUG))
  {
    v6 = (a1 + 88);
    if (*(a1 + 111) < 0)
    {
      v6 = *v6;
    }

    *buf = 68289282;
    *&buf[8] = 2082;
    *&buf[10] = "";
    v13 = 2082;
    v14 = v6;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Database is already opened., name:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  if (*(a1 + 216))
  {
    if (qword_1025D4200 != -1)
    {
      sub_101938F70();
    }

    v7 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_FAULT))
    {
      v8 = *(a1 + 216);
      *buf = 134349056;
      *&buf[4] = v8;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "In memory buffer should have been empty! Instead it had a size of %{public}lu.", buf, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101938F98(buf);
      v10 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "virtual BOOL CLActivityRecorderDb<VO2MaxRetrocomputeHistory>::setDatabaseAccessible() [T = VO2MaxRetrocomputeHistory, DataProtectionPolicy = CLActivityDB::ClassCDataProtectionPolicy]", "%s\n", v10);
      if (v10 != buf)
      {
        free(v10);
      }
    }
  }

  (*(*v11 + 24))(v11);
  return 1;
}

void sub_1007BBF60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

__n128 sub_1007BBF9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  *a2 = *a3;
  *(a2 + 16) = v3;
  v4 = *(a3 + 32);
  v5 = *(a3 + 48);
  v6 = *(a3 + 80);
  *(a2 + 64) = *(a3 + 64);
  *(a2 + 80) = v6;
  *(a2 + 32) = v4;
  *(a2 + 48) = v5;
  result = *(a3 + 96);
  v8 = *(a3 + 112);
  v9 = *(a3 + 128);
  *(a2 + 144) = *(a3 + 144);
  *(a2 + 112) = v8;
  *(a2 + 128) = v9;
  *(a2 + 96) = result;
  return result;
}

id *sub_1007BBFD0(uint64_t a1, uint64_t a2, char a3)
{
  v32[0] = os_transaction_create();
  v32[1] = 0;
  if (*(a1 + 232) > 0.0 && (*(*a1 + 136))(a1, a1 + 224, a2))
  {
    (*(*a1 + 72))(a1, a1 + 224, a2);
    return sub_10001A420(v32);
  }

  if ((a3 & 1) == 0)
  {
    sub_100144A84(*(a1 + 80));
  }

  v41 = 0;
  v42 = 0.0;
  v43 = 4;
  v49 = 0;
  v44 = 0u;
  memset(v45, 0, sizeof(v45));
  v47 = 0u;
  memset(v48, 0, sizeof(v48));
  v46 = 0u;
  v6 = (*(*a1 + 104))(a1, &v41);
  if (v6 == 1)
  {
    (*(*a1 + 120))(a1, a2, 1);
  }

  else
  {
    if (v6)
    {
      if (qword_1025D4200 != -1)
      {
        sub_101938F70();
      }

      v14 = qword_1025D4208;
      if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_FAULT, "Failed to insert record due to failure from reading the most recent entry.", buf, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101938F98(buf);
        LOWORD(v33) = 0;
        v15 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 0, "virtual void CLActivityRecorderDb<VO2MaxRetrocomputeHistory>::sanitizeAndStoreRecordUL(const T &, BOOL) [T = VO2MaxRetrocomputeHistory, DataProtectionPolicy = CLActivityDB::ClassCDataProtectionPolicy]", "%s\n", v15);
        if (v15 != buf)
        {
          free(v15);
        }
      }

      goto LABEL_41;
    }

    v7 = *(a2 + 8);
    v8 = v42;
    v9 = v7 - v42;
    if (v7 - v42 < 0.0)
    {
      v9 = -(v7 - v42);
    }

    if (v9 > 604800.0)
    {
      if (qword_1025D4200 != -1)
      {
        sub_101938F70();
      }

      v10 = qword_1025D4208;
      if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(a2 + 8);
        *buf = 134349312;
        v38 = v42;
        v39 = 2050;
        v40 = v11;
        _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "#Notice Potential CM database inconsistency, time jump %{public}lf %{public}lf", buf, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101938F98(buf);
        v27 = *(a2 + 8);
        v33 = 134349312;
        v34 = v42;
        v35 = 2050;
        v36 = v27;
        v28 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "virtual void CLActivityRecorderDb<VO2MaxRetrocomputeHistory>::sanitizeAndStoreRecordUL(const T &, BOOL) [T = VO2MaxRetrocomputeHistory, DataProtectionPolicy = CLActivityDB::ClassCDataProtectionPolicy]", "%s\n", v28);
        if (v28 != buf)
        {
          free(v28);
        }
      }

      CLWriteStackshot();
      v7 = *(a2 + 8);
      v8 = v42;
    }

    if (v7 < v8)
    {
      if (v8 - v7 < 10.0)
      {
        if (qword_1025D4200 != -1)
        {
          sub_101938F70();
        }

        v12 = qword_1025D4208;
        if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
        {
          v13 = *(a2 + 8);
          *buf = 134217984;
          v38 = v13;
          _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_INFO, "Entry being recorded has a startTime in the recent past.  Deleting records after %f.", buf, 0xCu);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101938F98(buf);
          v29 = *(a2 + 8);
          v33 = 134217984;
          v34 = v29;
          v30 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "virtual void CLActivityRecorderDb<VO2MaxRetrocomputeHistory>::sanitizeAndStoreRecordUL(const T &, BOOL) [T = VO2MaxRetrocomputeHistory, DataProtectionPolicy = CLActivityDB::ClassCDataProtectionPolicy]", "%s\n", v30);
          if (v30 != buf)
          {
            free(v30);
          }
        }

        (*(*a1 + 88))(a1, a2);
        goto LABEL_40;
      }

      v16 = *(a1 + 136);
      if (qword_1025D4200 != -1)
      {
        sub_101938F70();
      }

      v17 = v7 - v8 - v16;
      v18 = qword_1025D4208;
      if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v38 = v17;
        _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_INFO, "Entry being recorded has a startTime in the substantial past.  Shift records by %f.", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101938F98(buf);
        v33 = 134217984;
        v34 = v17;
        v31 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "virtual void CLActivityRecorderDb<VO2MaxRetrocomputeHistory>::sanitizeAndStoreRecordUL(const T &, BOOL) [T = VO2MaxRetrocomputeHistory, DataProtectionPolicy = CLActivityDB::ClassCDataProtectionPolicy]", "%s\n", v31);
        if (v31 != buf)
        {
          free(v31);
        }
      }

      (*(*a1 + 96))(a1, v17);
    }

    (*(*a1 + 144))(a1, &v41, a1 + 224, a2);
    (*(*a1 + 120))(a1, a2, 1);
  }

LABEL_40:
  v19 = *(a2 + 16);
  *(a1 + 224) = *a2;
  *(a1 + 240) = v19;
  v20 = *(a2 + 32);
  v21 = *(a2 + 48);
  v22 = *(a2 + 80);
  *(a1 + 288) = *(a2 + 64);
  *(a1 + 304) = v22;
  *(a1 + 256) = v20;
  *(a1 + 272) = v21;
  v23 = *(a2 + 96);
  v24 = *(a2 + 112);
  v25 = *(a2 + 128);
  *(a1 + 368) = *(a2 + 144);
  *(a1 + 336) = v24;
  *(a1 + 352) = v25;
  *(a1 + 320) = v23;
LABEL_41:
  if ((a3 & 1) == 0)
  {
    sub_1001454E0(*(a1 + 80));
  }

  return sub_10001A420(v32);
}

void sub_1007BC73C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10001A420(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1007BC770(void *a1, uint64_t a2)
{
  (*(*a1 + 64))(buf);
  if ((SBYTE3(v20) & 0x80000000) == 0)
  {
    if (BYTE3(v20))
    {
      goto LABEL_3;
    }

LABEL_18:
    if (qword_1025D4200 != -1)
    {
      sub_101938F70();
    }

    v12 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *v18 = 2082;
      *&v18[2] = "";
      v19 = 2082;
      v20 = "assert";
      v21 = 2081;
      v22 = "getTableName() != ";
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Need to override getTableName in order to use default definition of deleteRecordsAfterInsertUL, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4200 != -1)
      {
        sub_101938F70();
      }
    }

    v13 = qword_1025D4208;
    if (os_signpost_enabled(qword_1025D4208))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *v18 = 2082;
      *&v18[2] = "";
      v19 = 2082;
      v20 = "assert";
      v21 = 2081;
      v22 = "getTableName() != ";
      _os_signpost_emit_with_name_impl(dword_100000000, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Need to override getTableName in order to use default definition of deleteRecordsAfterInsertUL", "{msg%{public}.0s:Need to override getTableName in order to use default definition of deleteRecordsAfterInsertUL, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4200 != -1)
      {
        sub_101938F70();
      }
    }

    v14 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *v18 = 2082;
      *&v18[2] = "";
      v19 = 2082;
      v20 = "assert";
      v21 = 2081;
      v22 = "getTableName() != ";
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Need to override getTableName in order to use default definition of deleteRecordsAfterInsertUL, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
    __break(1u);
  }

  v11 = *v18;
  operator delete(*buf);
  if (!v11)
  {
    goto LABEL_18;
  }

LABEL_3:
  result = sub_100099160(a1 + 9);
  if (result)
  {
    (*(*a1 + 120))(a1, a2, 1);
    sub_10003848C(buf);
    v5 = sub_100038730(&v18[8], "DELETE FROM ", 12);
    (*(*a1 + 64))(__p, a1);
    if ((v16 & 0x80u) == 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = __p[0];
    }

    if ((v16 & 0x80u) == 0)
    {
      v7 = v16;
    }

    else
    {
      v7 = __p[1];
    }

    v8 = sub_100038730(v5, v6, v7);
    sub_100038730(v8, " WHERE startTime > ?", 20);
    if (v16 < 0)
    {
      operator delete(__p[0]);
    }

    v9 = a1[10];
    sub_100073518(buf, __p);
    if ((v16 & 0x80u) == 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    sub_1000388D8(v9, v10);
  }

  return result;
}

void sub_1007BCCD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  sub_10026C504(&a20);
  _Unwind_Resume(a1);
}

uint64_t sub_1007BCD24(void *a1)
{
  (*(*a1 + 64))(buf);
  if ((SBYTE3(v18) & 0x80000000) == 0)
  {
    if (BYTE3(v18))
    {
      goto LABEL_3;
    }

LABEL_18:
    if (qword_1025D4200 != -1)
    {
      sub_101938F70();
    }

    v10 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *v16 = 2082;
      *&v16[2] = "";
      v17 = 2082;
      v18 = "assert";
      v19 = 2081;
      v20 = "getTableName() != ";
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Need to override getTableName in order to use default definition of shiftRecordsByUL, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4200 != -1)
      {
        sub_101938F70();
      }
    }

    v11 = qword_1025D4208;
    if (os_signpost_enabled(qword_1025D4208))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *v16 = 2082;
      *&v16[2] = "";
      v17 = 2082;
      v18 = "assert";
      v19 = 2081;
      v20 = "getTableName() != ";
      _os_signpost_emit_with_name_impl(dword_100000000, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Need to override getTableName in order to use default definition of shiftRecordsByUL", "{msg%{public}.0s:Need to override getTableName in order to use default definition of shiftRecordsByUL, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4200 != -1)
      {
        sub_101938F70();
      }
    }

    v12 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *v16 = 2082;
      *&v16[2] = "";
      v17 = 2082;
      v18 = "assert";
      v19 = 2081;
      v20 = "getTableName() != ";
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Need to override getTableName in order to use default definition of shiftRecordsByUL, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
    __break(1u);
  }

  v9 = *v16;
  operator delete(*buf);
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_3:
  result = sub_100099160(a1 + 9);
  if (result)
  {
    sub_10003848C(buf);
    v3 = sub_100038730(&v16[8], "UPDATE ", 7);
    (*(*a1 + 64))(__p, a1);
    if ((v14 & 0x80u) == 0)
    {
      v4 = __p;
    }

    else
    {
      v4 = __p[0];
    }

    if ((v14 & 0x80u) == 0)
    {
      v5 = v14;
    }

    else
    {
      v5 = __p[1];
    }

    v6 = sub_100038730(v3, v4, v5);
    sub_100038730(v6, " SET startTime = startTime + ?", 30);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }

    v7 = a1[10];
    sub_100073518(buf, __p);
    if ((v14 & 0x80u) == 0)
    {
      v8 = __p;
    }

    else
    {
      v8 = __p[0];
    }

    sub_1000388D8(v7, v8);
  }

  return result;
}

void sub_1007BD244(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  sub_10026C504(&a20);
  _Unwind_Resume(a1);
}

uint64_t sub_1007BD298(void *a1)
{
  (*(*a1 + 64))(buf);
  if ((SBYTE3(v18) & 0x80000000) == 0)
  {
    if (BYTE3(v18))
    {
      goto LABEL_3;
    }

LABEL_18:
    if (qword_1025D4200 != -1)
    {
      sub_101938F70();
    }

    v10 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *v16 = 2082;
      *&v16[2] = "";
      v17 = 2082;
      v18 = "assert";
      v19 = 2081;
      v20 = "getTableName() != ";
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Need to override getTableName in order to use default definition of getMostRecentRecordUL, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4200 != -1)
      {
        sub_101938F70();
      }
    }

    v11 = qword_1025D4208;
    if (os_signpost_enabled(qword_1025D4208))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *v16 = 2082;
      *&v16[2] = "";
      v17 = 2082;
      v18 = "assert";
      v19 = 2081;
      v20 = "getTableName() != ";
      _os_signpost_emit_with_name_impl(dword_100000000, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Need to override getTableName in order to use default definition of getMostRecentRecordUL", "{msg%{public}.0s:Need to override getTableName in order to use default definition of getMostRecentRecordUL, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4200 != -1)
      {
        sub_101938F70();
      }
    }

    v12 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *v16 = 2082;
      *&v16[2] = "";
      v17 = 2082;
      v18 = "assert";
      v19 = 2081;
      v20 = "getTableName() != ";
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Need to override getTableName in order to use default definition of getMostRecentRecordUL, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
    __break(1u);
  }

  v9 = *v16;
  operator delete(*buf);
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_3:
  if (sub_100099160(a1 + 9))
  {
    sub_10003848C(buf);
    v2 = sub_100038730(&v16[8], "SELECT * FROM ", 14);
    (*(*a1 + 64))(__p, a1);
    if ((v14 & 0x80u) == 0)
    {
      v3 = __p;
    }

    else
    {
      v3 = __p[0];
    }

    if ((v14 & 0x80u) == 0)
    {
      v4 = v14;
    }

    else
    {
      v4 = __p[1];
    }

    v5 = sub_100038730(v2, v3, v4);
    sub_100038730(v5, " ORDER BY ROWID DESC LIMIT 1", 28);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }

    v6 = a1[10];
    sub_100073518(buf, __p);
    if ((v14 & 0x80u) == 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = __p[0];
    }

    sub_1000388D8(v6, v7);
  }

  return 2;
}

void sub_1007BD7A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20)
{
  if (a13)
  {
    sub_101880BC0();
  }

  sub_10026C504(&a20);
  _Unwind_Resume(a1);
}

void sub_1007BD834(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (qword_1025D4200 != -1)
  {
    sub_1019390F4();
  }

  v6 = qword_1025D4208;
  if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
  {
    (*(*a1 + 64))(__p, a1);
    v7 = v12 >= 0 ? __p : __p[0];
    *buf = 136315138;
    v14 = v7;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_INFO, "%s insert handle set.", buf, 0xCu);
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (sub_10000A100(121, 2))
  {
    sub_10193928C(a1);
  }

  if ((!a2 || !a3) && a2 | a3)
  {
    if (qword_1025D4200 != -1)
    {
      sub_101938F70();
    }

    v8 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_ERROR))
    {
      (*(*a1 + 64))(__p, a1);
      v9 = v12 >= 0 ? __p : __p[0];
      *buf = 136315138;
      v14 = v9;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_ERROR, "%s, Invalid update finished handlers.", buf, 0xCu);
      if (v12 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (sub_10000A100(121, 0))
    {
      sub_1019393D4(a1);
    }
  }

  *(a1 + 456) = a2;
  v10 = *(a1 + 464);
  if (v10)
  {
    _Block_release(v10);
  }

  if (a3)
  {
    *(a1 + 464) = _Block_copy(a3);
  }
}

void sub_1007BDAFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1007BDB48(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = sub_100008880(*a2);
  v7 = sqlite3_step(v6);
  if (v7 == 101)
  {
    return 1;
  }

  if (v7 != 100)
  {
    return 2;
  }

  (*(*a1 + 128))(a1, a2, a3);
  return 0;
}

void sub_1007BDBD8(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1AF286BCA1AF287)
  {
    operator new();
  }

  sub_1001D0818();
}

void *sub_1007BE1F4(void *result, void *a2, void *a3)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  if (!a3)
  {
    *a2 = result[2];
    result[2] = a2;
    *(*result + 8 * v4) = result + 2;
    if (!*a2)
    {
      goto LABEL_19;
    }

    v6 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v6 >= *&v3)
      {
        v6 %= *&v3;
      }
    }

    else
    {
      v6 &= *&v3 - 1;
    }

LABEL_18:
    *(*result + 8 * v6) = a2;
    goto LABEL_19;
  }

  *a2 = *a3;
  *a3 = a2;
  if (*a2)
  {
    v6 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v6 >= *&v3)
      {
        v6 %= *&v3;
      }
    }

    else
    {
      v6 &= *&v3 - 1;
    }

    if (v6 != v4)
    {
      goto LABEL_18;
    }
  }

LABEL_19:
  ++result[3];
  return result;
}

void sub_1007BE2DC(uint64_t a1, size_t __n)
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
    goto LABEL_6;
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
LABEL_6:

      sub_1007BE3CC(a1, prime);
    }
  }
}

void sub_1007BE3CC(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_1001D0818();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void sub_1007BE5FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    sub_10014E5FC(&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007BE6B4(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_10014E5FC(v3, v2);
  _Unwind_Resume(a1);
}

void sub_1007BE6D0(uint64_t a1, uint64_t a2)
{
  sub_1000FB724(&v9, a2);
  sub_1001039FC(*a1);
  v3 = *a1;
  *(v3 + 8) = 0;
  *(v3 + 96) = 0;
  v4 = v16;
  if (v16 == 1)
  {
    *(v3 + 8) = v9;
    v5 = v11;
    *(v3 + 16) = *__p;
    *(v3 + 32) = v5;
    __p[1] = 0;
    v11 = 0;
    __p[0] = 0;
    v6 = v15;
    v7 = v12;
    v8 = v13;
    *(v3 + 72) = v14;
    *(v3 + 56) = v8;
    *(v3 + 40) = v7;
    *(v3 + 88) = v6;
    *(v3 + 96) = 1;
    v4 = v16;
  }

  **a1 = *(a1 + 8);
  if ((v4 & 1) != 0 && SHIBYTE(v11) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1007BE788(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v1 -= 3;
    v3 = v1;
    sub_1000B96B4(&v3);
  }
}

uint64_t sub_1007BE7D4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  if (a1 != a2)
  {
    sub_100731D80((a1 + 8), *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 2);
  }

  return a1;
}

void *sub_1007BE820(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0x6F96F96F96F96F97 * ((v7 - *result) >> 2) < a4)
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

    if (a4 <= 0x1A41A41A41A41A4)
    {
      v9 = 0x6F96F96F96F96F97 * (v7 >> 2);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0xD20D20D20D20D2)
      {
        v11 = 0x1A41A41A41A41A4;
      }

      else
      {
        v11 = v10;
      }

      sub_10031EC64(v6, v11);
    }

    sub_10028C64C();
  }

  v12 = result[1];
  v13 = v12 - v8;
  if (0x6F96F96F96F96F97 * ((v12 - v8) >> 2) >= a4)
  {
    v16 = a3 - __src;
    if (v16)
    {
      result = memmove(*result, __src, v16);
    }

    v15 = &v8[v16];
  }

  else
  {
    v14 = &__src[v13];
    if (v12 != v8)
    {
      result = memmove(*result, __src, v13);
      v12 = v6[1];
    }

    if (a3 != v14)
    {
      result = memmove(v12, v14, a3 - v14);
    }

    v15 = &v12[a3 - v14];
  }

  v6[1] = v15;
  return result;
}

uint64_t sub_1007BE994(uint64_t a1)
{
  sub_100107AE0(a1 + 3120);
  sub_1001054D8(a1 + 816);
  sub_1001039FC(a1);
  return a1;
}

uint64_t sub_1007BE9D0(uint64_t a1)
{
  v2 = *(a1 + 6536);
  if (v2)
  {
    sub_100008080(v2);
  }

  sub_100107AE0(a1 + 3120);
  sub_1001054D8(a1 + 816);
  sub_1001039FC(a1);
  return a1;
}

void sub_1007BEA18()
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

id sub_1007BECC4(id a1, SEL a2, id a3, id a4)
{
  if (!a4)
  {
    return 0;
  }

  if ([objc_msgSend(a3 "departureDate")] == -1)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_101939528();
    }

    v18 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
    {
      v20 = 68289283;
      v21 = 0;
      v22 = 2082;
      v23 = "";
      v24 = 2113;
      v25 = a3;
      _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#slv Malformed visit, visit:%{private, location:escape_only}@}", &v20, 0x1Cu);
      if (qword_1025D47A0 != -1)
      {
        sub_10193953C();
      }
    }

    v19 = off_1025D47A8;
    if (os_signpost_enabled(off_1025D47A8))
    {
      v20 = 68289283;
      v21 = 0;
      v22 = 2082;
      v23 = "";
      v24 = 2113;
      v25 = a3;
      _os_signpost_emit_with_name_impl(dword_100000000, v19, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#slv Malformed visit", "{msg%{public}.0s:#slv Malformed visit, visit:%{private, location:escape_only}@}", &v20, 0x1Cu);
    }

    return 0;
  }

  v6 = [a4 compare:{objc_msgSend(a3, "departureDate")}];
  v7 = [a4 compare:{objc_msgSend(a3, "arrivalDate")}];
  v8 = 0;
  if ([a3 hasArrivalDate] && v7 == -1)
  {
    v8 = [a3 arrivalDate];
  }

  v9 = 0;
  if ([a3 hasDepartureDate] && v6 == -1)
  {
    v9 = [a3 departureDate];
  }

  if (!(v8 | v9))
  {
    return 0;
  }

  v10 = [CLVisit alloc];
  [a3 coordinate];
  v12 = v11;
  v14 = v13;
  [a3 horizontalAccuracy];
  v16 = [v10 initWithCoordinate:v8 horizontalAccuracy:v9 arrivalDate:objc_msgSend(a3 departureDate:"detectionDate") detectionDate:objc_msgSend(a3 placeInference:{"_placeInference"), v12, v14, v15}];

  return v16;
}

void sub_1007BF700(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (a36 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007BF780(uint64_t a1, unsigned int *a2, uint64_t a3, void *a4)
{
  v6 = *a2;
  sub_1000350D0(v7, a3);
  v21 = *(a3 + 184);
  [a4 onClientManagerNotification:v6 data:v7];
  if (v20 < 0)
  {
    operator delete(__p);
  }

  if (v18 < 0)
  {
    operator delete(v17);
  }

  if (v16 < 0)
  {
    operator delete(v15);
  }

  if (v14 < 0)
  {
    operator delete(v13);
  }

  if (v12 < 0)
  {
    operator delete(v11);
  }

  if (v10 < 0)
  {
    operator delete(v9);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }
}

id sub_1007BF860(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1007C3B24;
  v3[3] = &unk_102447418;
  v3[4] = v1;
  return [objc_msgSend(objc_msgSend(v1 "universe")];
}

id sub_1007BF8E4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1007C3B2C;
  v3[3] = &unk_102447418;
  v3[4] = v1;
  return [objc_msgSend(objc_msgSend(v1 "universe")];
}

id sub_1007BF968(uint64_t a1)
{
  [*(a1 + 32) setArmed:1];
  v2 = *(a1 + 32);

  return [v2 checkForMonitoring];
}

BOOL sub_1007C04D8(id a1, id a2, NSDictionary *a3)
{
  [objc_msgSend(a2 detectionDate];
  v5 = v4;
  if (v4 <= -15.0)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_101939528();
    }

    v6 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      v8[0] = 68289283;
      v8[1] = 0;
      v9 = 2082;
      v10 = "";
      v11 = 2113;
      v12 = a2;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#slv Dropping old visit, visit:%{private, location:escape_only}@}", v8, 0x1Cu);
    }
  }

  return v5 > -15.0;
}

void sub_1007C0B58(uint64_t a1)
{
  v2 = [*(a1 + 32) keyForClient:*(a1 + 40)];
  if (v2)
  {
    v3 = v2;
    if ([*(a1 + 32) isClientWithKeyInterested:v2])
    {
      v4 = [*(a1 + 32) authorizationDateForClientWithKey:v3];
      v5 = [CLVisit _visitWithVisit:*(a1 + 48) authDate:v4];
      if (v5)
      {
        v6 = v5;
        if (qword_1025D47A0 != -1)
        {
          sub_101939528();
        }

        v7 = off_1025D47A8;
        if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
        {
          v8 = [v3 UTF8String];
          [v4 timeIntervalSinceReferenceDate];
          v20 = 68289795;
          v21 = 2082;
          v22 = "";
          v23 = 2082;
          v24 = v8;
          v25 = 2050;
          v26 = v9;
          v27 = 2113;
          v28 = v6;
          _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#slv Delivering visit to client, key:%{public, location:escape_only}s, authDate_s:%{public}.09f, mangled:%{private, location:escape_only}@}", &v20, 0x30u);
        }

        [*(a1 + 40) onSignificantLocationVisit:v6];
        return;
      }

      if (qword_1025D47A0 != -1)
      {
        sub_101939528();
      }

      v17 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
      {
        v18 = [v3 UTF8String];
        [v4 timeIntervalSinceReferenceDate];
        v20 = 68289538;
        v21 = 2082;
        v22 = "";
        v23 = 2082;
        v24 = v18;
        v25 = 2050;
        v26 = v19;
        v13 = "{msg%{public}.0s:#slv Client not authorized for visit, key:%{public, location:escape_only}s, authDate_s:%{public}.09f}";
        v14 = v17;
        v15 = OS_LOG_TYPE_DEFAULT;
        v16 = 38;
        goto LABEL_24;
      }
    }

    else
    {
      if (qword_1025D47A0 != -1)
      {
        sub_101939528();
      }

      v12 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
      {
        v20 = 68289282;
        v21 = 2082;
        v22 = "";
        v23 = 2082;
        v24 = [v3 UTF8String];
        v13 = "{msg%{public}.0s:#slv Not delivering visit to client... not interested, key:%{public, location:escape_only}s}";
        v14 = v12;
        v15 = OS_LOG_TYPE_DEBUG;
        v16 = 28;
LABEL_24:
        _os_log_impl(dword_100000000, v14, v15, v13, &v20, v16);
      }
    }
  }

  else
  {
    if (qword_1025D47A0 != -1)
    {
      sub_101939528();
    }

    v10 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
    {
      v20 = 68289026;
      v21 = 2082;
      v22 = "";
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#slv Cannot deliver a visit to a client without a key}", &v20, 0x12u);
      if (qword_1025D47A0 != -1)
      {
        sub_10193953C();
      }
    }

    v11 = off_1025D47A8;
    if (os_signpost_enabled(off_1025D47A8))
    {
      v20 = 68289026;
      v21 = 2082;
      v22 = "";
      _os_signpost_emit_with_name_impl(dword_100000000, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#slv Cannot deliver a visit to a client without a key", "{msg%{public}.0s:#slv Cannot deliver a visit to a client without a key}", &v20, 0x12u);
    }
  }
}

void sub_1007C150C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1007C1AD0(uint64_t a1, uint64_t a2)
{
  v3 = [CLClientKeyPath clientKeyPathWithLegacyClientKey:*(a1 + 32)];

  return sub_10077769C(a2, v3, 0);
}

id sub_1007C1B20(uint64_t a1)
{
  v3 = 0;
  result = [*(a1 + 32) interestForClientKey:objc_msgSend(*(a1 + 40) outInterest:{"UTF8String"), &v3}];
  if (v3 == 2)
  {
    sub_1004FA8B8([*(a1 + 32) clientInterest], objc_msgSend(*(a1 + 40), "UTF8String"), 0xFFFFFFFFLL);
    sub_1004FA8B8([*(a1 + 32) clientAuthDate], objc_msgSend(*(a1 + 40), "UTF8String"), 0xFFFFFFFFLL);
    return [*(a1 + 32) flushAll];
  }

  return result;
}

void sub_1007C1DEC(uint64_t a1)
{
  if (qword_1025D47A0 != -1)
  {
    sub_101939528();
  }

  v2 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 68289283;
    *&buf[4] = 0;
    v8 = 2082;
    v9 = "";
    v10 = 2113;
    v11 = v3;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#slv Sending out visit, visit:%{private, location:escape_only}@}", buf, 0x1Cu);
  }

  [objc_msgSend(*(a1 + 40) "recentVisits")];
  [objc_msgSend(objc_msgSend(*(a1 + 40) "universe")];
  v4 = 0;
  v5 = 0;
  v6 = 0;
  sub_1004FAFA0([*(a1 + 40) clientInterest]);
}

void sub_1007C2238(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, void **a17)
{
  a17 = &a14;
  sub_1001E56E8(&a17);
  _Unwind_Resume(a1);
}

void sub_1007C29C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, void **a39)
{
  sub_100039BE8(&a13);
  a39 = &a36;
  sub_1001E56E8(&a39);
  _Unwind_Resume(a1);
}

void sub_1007C3144(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100005DA4(va);
  _Unwind_Resume(a1);
}

void *sub_1007C3B34(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t sub_1007C3C8C(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_100ED8FC0(a1, a2, a3, a4);
  *v5 = off_102471790;
  *(v5 + 304) = "";
  *(v5 + 312) = 0;
  *(a1 + 320) = nullsub_34(0);
  return a1;
}

uint64_t sub_1007C3D00(uint64_t a1, size_t *a2, int *a3)
{
  sub_100EDBA64(a1, &v60);
  v6 = (a1 + 8);
  v7 = (a1 + 8);
  if (*(a1 + 31) < 0)
  {
    v7 = v6->__r_.__value_.__r.__words[0];
  }

  if (sub_100021690(v7))
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1019398B4();
    }

    v8 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      v9 = a1 + 8;
      if (*(a1 + 31) < 0)
      {
        v9 = v6->__r_.__value_.__r.__words[0];
      }

      *buf = 136315138;
      v67 = v9;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "TILE: mmapTile, prefer local file name because it exists, %s", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D48A0 != -1)
      {
        sub_1019398B4();
      }

      v41 = a1 + 8;
      if (*(a1 + 31) < 0)
      {
        v41 = v6->__r_.__value_.__r.__words[0];
      }

      v62 = 136315138;
      v63 = v41;
      v42 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void *CLTileFileWithTraversal::mmapTile(size_t &, int &)", "%s\n", v42);
      if (v42 != buf)
      {
        free(v42);
      }
    }

    std::string::operator=(&v60, v6);
  }

  if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = &v60;
  }

  else
  {
    v10 = v60.__r_.__value_.__r.__words[0];
  }

  v11 = open(v10, 0);
  *a3 = v11;
  if (v11 < 0)
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1019398B4();
    }

    v23 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v24 = &v60;
      }

      else
      {
        v24 = v60.__r_.__value_.__r.__words[0];
      }

      v25 = *__error();
      v26 = __error();
      v27 = strerror(*v26);
      *buf = 136315650;
      v67 = v24;
      v68 = 1024;
      *v69 = v25;
      *&v69[4] = 2080;
      *&v69[6] = v27;
      _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_FAULT, "TILE: mmapTile, can't open, %s, errno, %d, %s", buf, 0x1Cu);
    }

    if (!sub_10000A100(121, 0))
    {
      goto LABEL_57;
    }

    sub_1019398DC(buf);
    if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v28 = &v60;
    }

    else
    {
      v28 = v60.__r_.__value_.__r.__words[0];
    }

    goto LABEL_82;
  }

  if (fstat(v11, &v61) == -1)
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1019398B4();
    }

    v29 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v30 = &v60;
      }

      else
      {
        v30 = v60.__r_.__value_.__r.__words[0];
      }

      v31 = *__error();
      v32 = __error();
      v33 = strerror(*v32);
      *buf = 136315650;
      v67 = v30;
      v68 = 1024;
      *v69 = v31;
      *&v69[4] = 2080;
      *&v69[6] = v33;
      _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_FAULT, "TILE: can't stat, %s, errno, %d, %s", buf, 0x1Cu);
    }

    if (!sub_10000A100(121, 0))
    {
      goto LABEL_57;
    }

    sub_1019398DC(buf);
    if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v28 = &v60;
    }

    else
    {
      v28 = v60.__r_.__value_.__r.__words[0];
    }

LABEL_82:
    v43 = *__error();
    v44 = __error();
    v45 = strerror(*v44);
    v62 = 136315650;
    v63 = v28;
    v64 = 1024;
    *v65 = v43;
    *&v65[4] = 2080;
    *&v65[6] = v45;
    v46 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 0, "void *CLTileFileWithTraversal::mmapTile(size_t &, int &)", "%s\n", v46);
    if (v46 != buf)
    {
      free(v46);
    }

LABEL_57:
    v12 = 0;
    *a2 = 0;
    goto LABEL_58;
  }

  *a2 = 0;
  v12 = mmap(0, v61.st_size, 1, 2, *a3, 0);
  st_size = v61.st_size;
  v14 = fstat(*a3, &v61);
  v15 = v14 != -1;
  if (v14 == -1)
  {
    if (qword_1025D4620 != -1)
    {
      sub_101939920();
    }

    v16 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_FAULT))
    {
      if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v17 = &v60;
      }

      else
      {
        v17 = v60.__r_.__value_.__r.__words[0];
      }

      v18 = *__error();
      v19 = __error();
      v20 = strerror(*v19);
      *buf = 136446722;
      v67 = v17;
      v68 = 1026;
      *v69 = v18;
      *&v69[4] = 2082;
      *&v69[6] = v20;
      _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_FAULT, "TILE: can't stat, %{public}s, errno, %{public}d, %{public}s", buf, 0x1Cu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101939948(buf);
      v49 = (v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v60 : v60.__r_.__value_.__r.__words[0];
      v50 = *__error();
      v51 = __error();
      v52 = strerror(*v51);
      v62 = 136446722;
      v63 = v49;
      v64 = 1026;
      *v65 = v50;
      *&v65[4] = 2082;
      *&v65[6] = v52;
      v53 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "void *CLTileFileWithTraversal::mmapTile(size_t &, int &)", "%s\n", v53);
      if (v53 != buf)
      {
        free(v53);
      }
    }
  }

  if (st_size != v61.st_size)
  {
    if (qword_1025D4620 != -1)
    {
      sub_101939920();
    }

    v21 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_FAULT))
    {
      v22 = &v60;
      if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v22 = v60.__r_.__value_.__r.__words[0];
      }

      *buf = 136446722;
      v67 = v22;
      v68 = 2050;
      *v69 = st_size;
      *&v69[8] = 2050;
      *&v69[10] = v61.st_size;
      _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_FAULT, "TILE: mmap file size changed, %{public}s, size before mmap, %{public}ld, size after mmap, %{public}lld", buf, 0x20u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101939948(buf);
      v47 = &v60;
      if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v47 = v60.__r_.__value_.__r.__words[0];
      }

      v62 = 136446722;
      v63 = v47;
      v64 = 2050;
      *v65 = st_size;
      *&v65[8] = 2050;
      *&v65[10] = v61.st_size;
      v48 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "void *CLTileFileWithTraversal::mmapTile(size_t &, int &)", "%s\n", v48);
      if (v48 != buf)
      {
        free(v48);
      }
    }

    v15 = 0;
  }

  *a2 = v61.st_size;
  if (v12 == -1)
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1019398B4();
    }

    v35 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v36 = &v60;
      }

      else
      {
        v36 = v60.__r_.__value_.__r.__words[0];
      }

      v37 = v61.st_size;
      v38 = *__error();
      v39 = __error();
      v40 = strerror(*v39);
      *buf = 136315906;
      v67 = v36;
      v68 = 2048;
      *v69 = v37;
      *&v69[8] = 1024;
      *&v69[10] = v38;
      *&v69[14] = 2080;
      *&v69[16] = v40;
      _os_log_impl(dword_100000000, v35, OS_LOG_TYPE_FAULT, "TILE: mmap failed, %s, size, %lld, errno, %d, %s", buf, 0x26u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1019398DC(buf);
      v54 = (v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v60 : v60.__r_.__value_.__r.__words[0];
      v55 = v61.st_size;
      v56 = *__error();
      v57 = __error();
      v58 = strerror(*v57);
      v62 = 136315906;
      v63 = v54;
      v64 = 2048;
      *v65 = v55;
      *&v65[8] = 1024;
      *&v65[10] = v56;
      *&v65[14] = 2080;
      *&v65[16] = v58;
      v59 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "void *CLTileFileWithTraversal::mmapTile(size_t &, int &)", "%s\n", v59);
      if (v59 != buf)
      {
        free(v59);
      }
    }

    v12 = -1;
  }

  else if (v15)
  {
    goto LABEL_61;
  }

LABEL_58:
  close(*a3);
  *a3 = -1;
  if (v12 != -1)
  {
    munmap(v12, *a2);
  }

  v12 = 0;
  *a2 = 0;
LABEL_61:
  if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v60.__r_.__value_.__l.__data_);
  }

  return v12;
}

void sub_1007C47AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007C480C(int a1, void *a2, size_t a3, int a4)
{
  if ((a4 & 0x80000000) == 0)
  {
    close(a4);
  }

  if (a2)
  {

    munmap(a2, a3);
  }
}

uint64_t sub_1007C4864(uint64_t a1, uint64_t a2)
{
  v4 = sub_1007C3D00(a1, (a2 + 24), (a2 + 32));
  *(a2 + 40) = v4;
  if (v4)
  {
    v5 = *(a2 + 24) == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = !v5;
  if (v5)
  {
    *(&v8.__r_.__value_.__r.__words[1] + 4) = 0;
    *(v8.__r_.__value_.__r.__words + 4) = 0;
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *a2 = 0;
    *(a2 + 23) = 0;
    *(a2 + 24) = 0;
    *(a2 + 32) = -1;
    *(a2 + 36) = *&v8.__r_.__value_.__l.__data_;
    *(a2 + 52) = v8.__r_.__value_.__r.__words[2];
  }

  else
  {
    *(a2 + 48) = 0;
    sub_100EDBA64(a1, &v8);
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *a2 = v8;
  }

  return v6;
}

uint64_t sub_1007C4960(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  if (v2)
  {
    v4 = *(a2 + 24);
    v5 = *(a2 + 32);
    if ((v5 & 0x80000000) == 0)
    {
      close(v5);
    }

    munmap(v2, v4);
    *(&v7 + 4) = 0;
    HIDWORD(v7) = 0;
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *a2 = 0;
    *(a2 + 23) = 0;
    *(a2 + 24) = 0;
    *(a2 + 32) = -1;
    *(a2 + 36) = v7;
    *(a2 + 52) = 0;
  }

  return 1;
}

uint64_t sub_1007C4A1C(uint64_t a1, void *a2, _DWORD *a3)
{
  v5 = a2 + 6;
  v4 = a2[6];
  v7 = a2 + 3;
  v6 = a2[3];
  if (v4 >= v6)
  {
    result = 0;
    a3[1] = 0;
    a3[2] = 0;
    *a3 = 43962;
  }

  else if (v6 >= v4 + 12)
  {
    sub_100C3DBA0((a2[5] + v4), a3);
    a2[6] += a3[1] + a3[2] + 12;
    return 1;
  }

  else
  {
    if (qword_1025D48A0 != -1)
    {
      sub_10193998C();
    }

    v9 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      v10 = *v7;
      v11 = *v5;
      v14 = 134218496;
      v15 = v10;
      v16 = 2048;
      v17 = v11;
      v18 = 1024;
      v19 = 12;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_FAULT, "TILE: corrupt header, fileGetNextSection, size, %zd, readto, %lld, %d", &v14, 0x1Cu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1019399A0(v7, v5);
    }

    sub_100EE06F4(a1);
    return 0;
  }

  return result;
}

uint64_t sub_1007C4BA8(uint64_t a1, FILE *a2, uint64_t *a3)
{
  v5 = a1;
  v6 = *(a1 + 40);
  v96 = v6;
  (*(*v6 + 16))(v6);
  v97 = 256;
  v7 = a3[2];
  v91 = a3;
  *(v5 + 304) = *a3;
  *(v5 + 320) = v7;
  *(v5 + 296) = 1;
  p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
  if (qword_1025D48A0 != -1)
  {
    sub_10193998C();
  }

  v9 = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
  v10 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
  {
    v11 = *a3;
    v12 = *(a3 + 8);
    v13 = *(a3 + 9);
    *buf = 136315906;
    v121[0] = v11;
    LOWORD(v121[1]) = 1024;
    *(&v121[1] + 2) = v12;
    HIWORD(v121[1]) = 1024;
    LODWORD(v121[2]) = v13;
    WORD2(v121[2]) = 2048;
    *(&v121[2] + 6) = sub_10018D3FC((a3 + 2));
    _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "TILE: traverseTileFile, start, message, %s, isHeadersOnly, %d, isBinarySearch, %d, macAddressToSearch, %012llx", buf, 0x22u);
    v9 = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
    p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
  }

  if (sub_10000A100(121, 2))
  {
    sub_1019398DC(buf);
    v81 = *a3;
    v82 = *(a3 + 8);
    v83 = *(a3 + 9);
    LODWORD(v119[0]) = 136315906;
    *(v119 + 4) = v81;
    WORD6(v119[0]) = 1024;
    *(v119 + 14) = v82;
    WORD1(v119[1]) = 1024;
    DWORD1(v119[1]) = v83;
    WORD4(v119[1]) = 2048;
    *(&v119[1] + 10) = sub_10018D3FC((a3 + 2));
    v84 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "virtual BOOL CLTileFileWithTraversal::traverseTileFile(FILE *, const TraverseDetails &)", "%s\n", v84);
    v9 = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
    p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
    if (v84 != buf)
    {
      free(v84);
    }
  }

  if (!a2)
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1019398B4();
    }

    v15 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_FAULT, "TILE: traverseTileFile, can't open tile", buf, 2u);
    }

    if (!sub_10000A100(121, 0))
    {
      goto LABEL_19;
    }

LABEL_98:
    sub_1019398DC(buf);
    LOWORD(v119[0]) = 0;
    v85 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 0, "virtual BOOL CLTileFileWithTraversal::traverseTileFile(FILE *, const TraverseDetails &)", "%s\n", v85);
    if (v85 != buf)
    {
      free(v85);
    }

LABEL_19:
    v16 = 0;
    goto LABEL_60;
  }

  if (feof(a2))
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1019398B4();
    }

    v14 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_FAULT, "TILE: traverseTileFile, file is empty", buf, 2u);
    }

    if (!sub_10000A100(121, 0))
    {
      goto LABEL_19;
    }

    goto LABEL_98;
  }

  *(v119 + 4) = 192;
  LODWORD(v119[0]) = 109498;
  HIDWORD(v119[0]) = 381;
  memset(&v119[1], 0, 28);
  *(&v119[2] + 12) = vdup_n_s32(0xC47A0000);
  DWORD1(v119[3]) = -998637568;
  memset(&v119[3] + 8, 0, 148);
  LODWORD(v108) = 306106;
  *(&v108 + 4) = 176;
  HIDWORD(v108) = 381;
  *&v118[16] = 0;
  *&v118[20] = 0;
  v109 = 0u;
  v110 = 0u;
  v89 = v6;
  if (*(v5 + 296) != 1)
  {
LABEL_54:
    v16 = 1;
    goto LABEL_55;
  }

  while (1)
  {
    if (feof(a2))
    {
      goto LABEL_54;
    }

    v94 = 0;
    v95 = 0;
    __ptr = 0;
    v93 = 0;
    v17 = fread(&__ptr, 1uLL, 0xCuLL, a2);
    sub_100C3DBA0(&__ptr, &v94);
    v18 = v17 == 12;
    v16 = v17 != 12;
    if (!v18)
    {
      goto LABEL_55;
    }

    if (p_info[276] != -1)
    {
      sub_1019398B4();
    }

    v19 = v9[277];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v90 = v16;
      v20 = a2;
      v21 = v5;
      v22 = p_info;
      v23 = v9;
      v24 = *v91;
      v25 = v94;
      v26 = WORD1(v94);
      v28 = HIDWORD(v94);
      v27 = v95;
      v29 = sub_100ED73B4(WORD1(v94));
      *buf = 136316674;
      v121[0] = v24;
      LOWORD(v121[1]) = 2048;
      *(&v121[1] + 2) = 12;
      WORD1(v121[2]) = 1024;
      HIDWORD(v121[2]) = v25;
      LOWORD(v121[3]) = 1024;
      *(&v121[3] + 2) = v26;
      HIWORD(v121[3]) = 1024;
      LODWORD(v121[4]) = v27;
      WORD2(v121[4]) = 1024;
      *(&v121[4] + 6) = v28;
      WORD1(v121[5]) = 2080;
      *(&v121[5] + 4) = v29;
      _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEBUG, "TILE: thisSection, message, %s, readBytes, %lu, section, signature, 0x%x, sectionId, %d, sizeBytes, %d, headerSizeBytes, %d, name, %s", buf, 0x38u);
      v6 = v89;
      v9 = v23;
      p_info = v22;
      v5 = v21;
      a2 = v20;
      v16 = v90;
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019398DC(buf);
      v60 = v16;
      v61 = p_info;
      v62 = *v91;
      v63 = v94;
      v64 = WORD1(v94);
      v66 = HIDWORD(v94);
      v65 = v95;
      v67 = sub_100ED73B4(WORD1(v94));
      v98 = 136316674;
      *v99 = v62;
      *&v99[8] = 2048;
      *&v100 = 12;
      WORD4(v100) = 1024;
      *(&v100 + 10) = v63;
      HIWORD(v100) = 1024;
      v101 = v64;
      v102 = 1024;
      v103 = v65;
      v104 = 1024;
      v105 = v66;
      v106 = 2080;
      v107 = v67;
      v68 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "virtual BOOL CLTileFileWithTraversal::traverseTileFile(FILE *, const TraverseDetails &)", "%s\n", v68);
      v6 = v89;
      v9 = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
      p_info = v61;
      if (v68 != buf)
      {
        free(v68);
      }

      v16 = v60;
    }

    if (v94 != 43962)
    {
      break;
    }

    v30 = HIDWORD(v94);
    v31 = HIDWORD(v94) + 12;
    v32 = v31 + v95;
    if (v32 > 0x640000B)
    {
      if (p_info[276] != -1)
      {
        sub_1019398B4();
      }

      v75 = v9[277];
      if (os_log_type_enabled(v75, OS_LOG_TYPE_FAULT))
      {
        *buf = 134218240;
        v121[0] = v32;
        LOWORD(v121[1]) = 2048;
        *(&v121[1] + 2) = 104857612;
        _os_log_impl(dword_100000000, v75, OS_LOG_TYPE_FAULT, "TILE: invalid tile file, bad allocation size, totalBytesInSection, %lu, maxAllocationSize, %lu", buf, 0x16u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1019398DC(buf);
        v73 = v9;
        v98 = 134218240;
        *v99 = v32;
        *&v99[8] = 2048;
        *&v100 = 104857612;
        v74 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 0, "virtual BOOL CLTileFileWithTraversal::traverseTileFile(FILE *, const TraverseDetails &)", "%s\n", v74);
        goto LABEL_73;
      }

      goto LABEL_55;
    }

    v33 = malloc_type_malloc(HIDWORD(v94) + 12, 0x100004077774924uLL);
    v34 = v33;
    if (!v33)
    {
      if (p_info[276] != -1)
      {
        sub_1019398B4();
      }

      v76 = v9[277];
      if (os_log_type_enabled(v76, OS_LOG_TYPE_FAULT))
      {
        *buf = 134217984;
        v121[0] = v31;
        _os_log_impl(dword_100000000, v76, OS_LOG_TYPE_FAULT, "TILE: failed to allocate memory for, %lu", buf, 0xCu);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1019398DC(buf);
        v98 = 134217984;
        *v99 = v31;
        v77 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 0, "virtual BOOL CLTileFileWithTraversal::traverseTileFile(FILE *, const TraverseDetails &)", "%s\n", v77);
        if (v77 != buf)
        {
          free(v77);
        }

        v6 = v89;
      }

      goto LABEL_55;
    }

    v35 = fread(v33 + 12, 1uLL, v30, a2);
    if (v35 != v30)
    {
      v78 = v35;
      if (p_info[276] != -1)
      {
        sub_1019398B4();
      }

      v79 = v9[277];
      if (os_log_type_enabled(v79, OS_LOG_TYPE_FAULT))
      {
        *buf = 134218240;
        v121[0] = v78;
        LOWORD(v121[1]) = 2048;
        *(&v121[1] + 2) = v30;
        _os_log_impl(dword_100000000, v79, OS_LOG_TYPE_FAULT, "TILE: failed to read pSectionH, %lu, %lu", buf, 0x16u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1019398DC(buf);
        v98 = 134218240;
        *v99 = v78;
        *&v99[8] = 2048;
        *&v100 = v30;
        v87 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 0, "virtual BOOL CLTileFileWithTraversal::traverseTileFile(FILE *, const TraverseDetails &)", "%s\n", v87);
        if (v87 != buf)
        {
          free(v87);
        }

        v6 = v89;
      }

      free(v34);
      goto LABEL_95;
    }

    v36 = __ptr;
    *(v34 + 2) = v93;
    *v34 = v36;
    if (p_info[276] != -1)
    {
      sub_1019398B4();
    }

    v37 = v9[277];
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109888;
      LODWORD(v121[0]) = v94;
      WORD2(v121[0]) = 1024;
      *(v121 + 6) = WORD1(v94);
      WORD1(v121[1]) = 1024;
      HIDWORD(v121[1]) = HIDWORD(v94);
      LOWORD(v121[2]) = 1024;
      *(&v121[2] + 2) = v95;
      _os_log_impl(dword_100000000, v37, OS_LOG_TYPE_DEBUG, "TILE: section, signature, 0x%x, sectionId, %d, headerSizeBytes, %u, sizeBytes, %u", buf, 0x1Au);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019398DC(buf);
      v98 = 67109888;
      *v99 = v94;
      *&v99[4] = 1024;
      *&v99[6] = WORD1(v94);
      LOWORD(v100) = 1024;
      *(&v100 + 2) = HIDWORD(v94);
      WORD3(v100) = 1024;
      DWORD2(v100) = v95;
      v69 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "virtual BOOL CLTileFileWithTraversal::traverseTileFile(FILE *, const TraverseDetails &)", "%s\n", v69);
      if (v69 != buf)
      {
        free(v69);
      }
    }

    v38 = ftell(a2);
    (*(*v5 + 112))(v5, a2, &v94, v34, v91);
    switch(WORD1(v94))
    {
      case 1u:
        v119[0] = *v34;
        v50 = *(v34 + 1);
        v51 = *(v34 + 2);
        v52 = *(v34 + 4);
        v119[3] = *(v34 + 3);
        v119[4] = v52;
        v119[1] = v50;
        v119[2] = v51;
        v53 = *(v34 + 5);
        v54 = *(v34 + 6);
        v55 = *(v34 + 8);
        v119[7] = *(v34 + 7);
        v119[8] = v55;
        v119[5] = v53;
        v119[6] = v54;
        v56 = *(v34 + 9);
        v57 = *(v34 + 10);
        v58 = *(v34 + 11);
        *(&v119[11] + 12) = *(v34 + 188);
        v119[10] = v57;
        v119[11] = v58;
        v119[9] = v56;
        *&v59 = sub_100C3DBA4(v119, v119);
        (*(*v5 + 120))(v5, v119, v59);
        break;
      case 4u:
        v40 = *v34;
        v41 = *(v34 + 1);
        v42 = *(v34 + 3);
        v110 = *(v34 + 2);
        v111 = v42;
        v109 = v41;
        v108 = v40;
        v43 = *(v34 + 4);
        v44 = *(v34 + 5);
        v45 = *(v34 + 7);
        v114 = *(v34 + 6);
        v115 = v45;
        v112 = v43;
        v113 = v44;
        v46 = *(v34 + 8);
        v47 = *(v34 + 9);
        v48 = *(v34 + 10);
        *&v118[12] = *(v34 + 172);
        v117 = v47;
        *v118 = v48;
        v116 = v46;
        v49 = sub_100C3DC54(&v108, &v108);
        (*(*v5 + 128))(v5, &v108, v49);
        break;
      case 5u:
        v121[0] = 184;
        *buf = 371642;
        LODWORD(v121[1]) = 381;
        memset(&v121[1] + 4, 0, 32);
        memset(&v121[21] + 4, 0, 20);
        *&v39 = sub_100ED73D8(v34, buf);
        (*(*v5 + 168))(v5, buf, v39);
        break;
      default:
        goto LABEL_46;
    }

    if (*(v91 + 8) == 1)
    {
      *(v5 + 296) = 0;
    }

LABEL_46:
    free(v34);
    if (fseek(a2, v38 + v95, 0))
    {
      if (p_info[276] != -1)
      {
        sub_1019398B4();
      }

      v80 = v9[277];
      if (os_log_type_enabled(v80, OS_LOG_TYPE_FAULT))
      {
        *buf = 134218240;
        v121[0] = v38;
        LOWORD(v121[1]) = 1024;
        *(&v121[1] + 2) = v95;
        _os_log_impl(dword_100000000, v80, OS_LOG_TYPE_FAULT, "TILE: ERROR: failed to fseek to, currentFileOffset, %lu, %u", buf, 0x12u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1019398DC(buf);
        v98 = 134218240;
        *v99 = v38;
        *&v99[8] = 1024;
        LODWORD(v100) = v95;
        v88 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 0, "virtual BOOL CLTileFileWithTraversal::traverseTileFile(FILE *, const TraverseDetails &)", "%s\n", v88);
        if (v88 != buf)
        {
          free(v88);
        }

        v6 = v89;
      }

LABEL_95:
      v16 = 0;
      goto LABEL_55;
    }

    if ((*(v5 + 296) & 1) == 0)
    {
      goto LABEL_54;
    }
  }

  if (p_info[276] != -1)
  {
    sub_1019398B4();
  }

  v72 = v9[277];
  if (os_log_type_enabled(v72, OS_LOG_TYPE_FAULT))
  {
    *buf = 134218752;
    v121[0] = 12;
    LOWORD(v121[1]) = 1024;
    *(&v121[1] + 2) = v94;
    HIWORD(v121[1]) = 1024;
    LODWORD(v121[2]) = WORD1(v94);
    WORD2(v121[2]) = 1024;
    *(&v121[2] + 6) = v95;
    _os_log_impl(dword_100000000, v72, OS_LOG_TYPE_FAULT, "TILE: Invalid section signature, readBytes, %lu, section, signature, 0x%x, sectionId, %d, sizeBytes, %d", buf, 0x1Eu);
  }

  if (sub_10000A100(121, 0))
  {
    sub_1019398DC(buf);
    v73 = v9;
    v98 = 134218752;
    *v99 = 12;
    *&v99[8] = 1024;
    LODWORD(v100) = v94;
    WORD2(v100) = 1024;
    *(&v100 + 6) = WORD1(v94);
    WORD5(v100) = 1024;
    HIDWORD(v100) = v95;
    v74 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 0, "virtual BOOL CLTileFileWithTraversal::traverseTileFile(FILE *, const TraverseDetails &)", "%s\n", v74);
LABEL_73:
    if (v74 != buf)
    {
      free(v74);
    }

    v6 = v89;
    v9 = v73;
  }

LABEL_55:
  *(v5 + 296) = 0;
  if (p_info[276] != -1)
  {
    sub_1019398B4();
  }

  v70 = v9[277];
  if (os_log_type_enabled(v70, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v70, OS_LOG_TYPE_DEBUG, "TILE: traverseTileFile, done", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1019398DC(buf);
    LOWORD(v98) = 0;
    v86 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "virtual BOOL CLTileFileWithTraversal::traverseTileFile(FILE *, const TraverseDetails &)", "%s\n", v86);
    if (v86 != buf)
    {
      free(v86);
    }

    v6 = v89;
  }

LABEL_60:
  (*(*v6 + 24))(v6);
  return v16;
}

void sub_1007C5E84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

void sub_1007C5F0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1025D48A0 != -1)
  {
    sub_10193998C();
  }

  v4 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a3 + 2);
    v6[0] = 67109378;
    v6[1] = v5;
    v7 = 2080;
    v8 = sub_100ED73B4(v5);
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "TILE: CLTileFile, sectionId, %d, %s", v6, 0x12u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101939ACC(a3);
  }
}

void sub_1007C6000(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56) - kCFAbsoluteTimeIntervalSince1970;
  v5 = *(a2 + 192);
  if (v5 < 1)
  {
    v5 = 1209600;
  }

  *(a1 + 184) = *(a2 + 12);
  *(a1 + 52) = vrev64_s32(*(a2 + 16));
  *(a1 + 64) = -1;
  *(a1 + 176) = v4;
  *(a1 + 200) = v5;
  if (qword_1025D48A0 != -1)
  {
    sub_10193998C();
  }

  v6 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a2 + 12);
    v8 = *(a2 + 16);
    v9 = *(a2 + 28);
    v10 = *(a2 + 32);
    v11 = *(a2 + 36);
    v12 = *(a2 + 40);
    v13 = *(a2 + 44);
    v14 = *(a2 + 48);
    v15 = *(a2 + 52);
    v16 = *(a2 + 20);
    v17 = *(a2 + 24);
    v18 = *(a1 + 176);
    v19 = *(a2 + 192);
    v21 = *(a1 + 200);
    *buf = 67112705;
    v23 = v7;
    v24 = 1029;
    v25 = v8;
    v26 = 1029;
    v27 = v16;
    v28 = 2053;
    v29 = v9;
    v30 = 2053;
    v31 = v10;
    v32 = 2053;
    v33 = v11;
    v34 = 2053;
    v35 = v12;
    v36 = 2048;
    v37 = v13;
    v38 = 2048;
    v39 = v14;
    v40 = 2048;
    v41 = v15;
    v42 = 1024;
    v43 = v17;
    v44 = 2048;
    v45 = v18;
    v46 = 1024;
    v47 = v19;
    v48 = 1024;
    v49 = v21;
    v50 = 2048;
    v51 = CFAbsoluteTimeGetCurrent() - v18;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "TILE: tile, version, %d, y, %{sensitive}u, x, %{sensitive}u, corner, %{sensitive}.8f, %{sensitive}.8f, deltas, %{sensitive}.2f, %{sensitive}.2f, altitude, %f,  minAltitude, %f, maxAltitude, %f, numOfInputPoints, %d, generationTime, %.1f, expirationAge, %d, %d, age, %.1lf", buf, 0x80u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D48A0 != -1)
    {
      sub_1019398B4();
    }

    CFAbsoluteTimeGetCurrent();
    v20 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "virtual void CLTileFileWithTraversal::onTraversingTileHeader(const CLTilesManager_Type::TileHeader &)", "%s\n", v20);
    if (v20 != buf)
    {
      free(v20);
    }
  }
}

void sub_1007C63C4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40) - kCFAbsoluteTimeIntervalSince1970;
  v5 = *(a2 + 188);
  if ((*(*a1 + 24))(a1))
  {
    v6 = v5;
  }

  else
  {
    v6 = -1;
  }

  v7 = *(a2 + 176);
  *(a1 + 184) = *(a2 + 12);
  *(a1 + 52) = vrev64_s32(*(a2 + 16));
  *(a1 + 64) = v6;
  *(a1 + 176) = v4;
  *(a1 + 200) = v7;
  if (qword_1025D48A0 != -1)
  {
    sub_10193998C();
  }

  v8 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
  {
    sub_100B4EFD4(a1 + 48, &__p);
    v9 = (SBYTE1(v62) & 0x80u) == 0 ? &__p : __p;
    *buf = 136315138;
    *v37 = v9;
    _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "TILE: onTraversingTileHeaderKeyLatLon, tileid, %s", buf, 0xCu);
    if (SBYTE1(v62) < 0)
    {
      operator delete(__p);
    }
  }

  if (sub_10000A100(121, 2))
  {
    sub_101939BF0(a1);
  }

  if (qword_1025D48A0 != -1)
  {
    sub_1019398B4();
  }

  v10 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
  {
    v12 = *(a2 + 12);
    v11 = *(a2 + 16);
    v13 = *(a2 + 20);
    v14 = *(a2 + 24);
    v15 = *(a2 + 28);
    v16 = *(a2 + 32);
    v17 = *(a2 + 36);
    v18 = *(a1 + 176);
    v19 = *(a2 + 176);
    Current = CFAbsoluteTimeGetCurrent();
    v21 = *(a2 + 188);
    v22 = Current - *(a1 + 176);
    LODWORD(__p) = 67111681;
    HIDWORD(__p) = v12;
    v57 = 1029;
    v58 = v11;
    v59 = 1029;
    v60 = v13;
    v61 = 2053;
    v62 = v14;
    v63 = 2053;
    v64 = v15;
    v65 = 2053;
    v66 = v16;
    v67 = 2053;
    v68 = v17;
    v69 = 2048;
    v70 = v18;
    v71 = 1024;
    v72 = v19;
    v73 = 2048;
    v74 = v22;
    v75 = 2048;
    v76 = v21;
    _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "TILE: tile.keylatlon, version, %d, y, %{sensitive}u, x, %{sensitive}u, corner, %{sensitive}.8f, %{sensitive}.8f, deltas, %{sensitive}.2f, %{sensitive}.2f, generationTime, %.1f, expirationAge, %d, age, %.1lf, sec_key, %016llx", &__p, 0x60u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(&__p, 0x65CuLL);
    if (qword_1025D48A0 != -1)
    {
      sub_1019398B4();
    }

    v24 = *(a2 + 12);
    v23 = *(a2 + 16);
    v25 = *(a2 + 20);
    v27 = *(a2 + 24);
    v26 = *(a2 + 28);
    v29 = *(a2 + 32);
    v28 = *(a2 + 36);
    v30 = *(a1 + 176);
    v31 = *(a2 + 176);
    v32 = CFAbsoluteTimeGetCurrent();
    v33 = *(a2 + 188);
    v34 = v32 - *(a1 + 176);
    *buf = 67111681;
    *v37 = v24;
    *&v37[4] = 1029;
    *&v37[6] = v23;
    v38 = 1029;
    v39 = v25;
    v40 = 2053;
    v41 = v27;
    v42 = 2053;
    v43 = v26;
    v44 = 2053;
    v45 = v29;
    v46 = 2053;
    v47 = v28;
    v48 = 2048;
    v49 = v30;
    v50 = 1024;
    v51 = v31;
    v52 = 2048;
    v53 = v34;
    v54 = 2048;
    v55 = v33;
    v35 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "virtual void CLTileFileWithTraversal::onTraversingTileHeaderKeyLatLon(const CLTilesManager_Type::TileHeaderKeyLatLon &)", "%s\n", v35);
    if (v35 != &__p)
    {
      free(v35);
    }
  }
}

void sub_1007C67D0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40) - kCFAbsoluteTimeIntervalSince1970;
  v5 = *(a2 + 176);
  v6 = rand();
  *(a1 + 184) = *(a2 + 12);
  *(a1 + 52) = vrev64_s32(*(a2 + 16));
  *(a1 + 64) = -1;
  *(a1 + 176) = v4;
  *(a1 + 200) = v6 % 86400 + v5;
  if (qword_1025D48A0 != -1)
  {
    sub_10193998C();
  }

  v7 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
  {
    sub_100B4EFD4(a1 + 48, v68);
    v8 = SBYTE1(v74);
    v9 = *v68;
    sub_100B4F65C(a1 + 48, &__p);
    v10 = v68;
    if (v8 < 0)
    {
      v10 = v9;
    }

    if ((SBYTE1(v47) & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    *buf = 136315394;
    *&buf[4] = v10;
    v61 = 2080;
    v62 = p_p;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "TILE: tile.location, tileid, %s, serverName, %s", buf, 0x16u);
    if (SBYTE1(v47) < 0)
    {
      operator delete(__p);
    }

    if (SBYTE1(v74) < 0)
    {
      operator delete(*v68);
    }
  }

  if (sub_10000A100(121, 2))
  {
    sub_1019398DC(v68);
    sub_100B4EFD4(a1 + 48, &__p);
    v24 = SBYTE1(v47);
    v25 = __p;
    sub_100B4F65C(a1 + 48, buf);
    v26 = &__p;
    if (v24 < 0)
    {
      v26 = v25;
    }

    if (v63 >= 0)
    {
      v27 = buf;
    }

    else
    {
      v27 = *buf;
    }

    v64 = 136315394;
    v65 = v26;
    v66 = 2080;
    v67 = v27;
    v28 = _os_log_send_and_compose_impl();
    if (v63 < 0)
    {
      operator delete(*buf);
    }

    if (SBYTE1(v47) < 0)
    {
      operator delete(__p);
    }

    sub_100152C7C("Generic", 1, 0, 2, "virtual void CLTileFileWithTraversal::onTraversingTileHeaderLocation(const CLTilesManager_Type::TileHeaderLocation &)", "%s\n", v28);
    if (v28 != v68)
    {
      free(v28);
    }
  }

  if (qword_1025D48A0 != -1)
  {
    sub_1019398B4();
  }

  v12 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
  {
    v13 = *(a2 + 12);
    v14 = *(a2 + 16);
    v15 = *(a2 + 20);
    v16 = *(a2 + 24);
    v17 = *(a2 + 28);
    v18 = *(a2 + 32);
    v19 = *(a2 + 36);
    v20 = *(a1 + 176);
    v21 = *(a2 + 176);
    Current = CFAbsoluteTimeGetCurrent();
    *v68 = 67111425;
    v23 = Current - *(a1 + 176);
    *&v68[4] = v13;
    v69 = 1029;
    v70 = v14;
    v71 = 1029;
    v72 = v15;
    v73 = 2053;
    v74 = v16;
    v75 = 2053;
    v76 = v17;
    v77 = 2053;
    v78 = v18;
    v79 = 2053;
    v80 = v19;
    v81 = 2048;
    v82 = v20;
    v83 = 1024;
    v84 = v21;
    v85 = 2048;
    v86 = v23;
    _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "TILE: tile.location, version, %d, y, %{sensitive}u, x, %{sensitive}u, corner, %{sensitive}.8f, %{sensitive}.8f, deltas, %{sensitive}.2f, %{sensitive}.2f, generationTime, %.1f, expirationAge, %d, age, %.1lf", v68, 0x56u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(v68, 0x65CuLL);
    if (qword_1025D48A0 != -1)
    {
      sub_1019398B4();
    }

    v30 = *(a2 + 12);
    v29 = *(a2 + 16);
    v31 = *(a2 + 20);
    v32 = *(a2 + 24);
    v33 = *(a2 + 28);
    v34 = *(a2 + 32);
    v35 = *(a2 + 36);
    v36 = *(a1 + 176);
    v37 = *(a2 + 176);
    v38 = CFAbsoluteTimeGetCurrent();
    LODWORD(__p) = 67111425;
    v39 = v38 - *(a1 + 176);
    HIDWORD(__p) = v30;
    v42 = 1029;
    v43 = v29;
    v44 = 1029;
    v45 = v31;
    v46 = 2053;
    v47 = v32;
    v48 = 2053;
    v49 = v33;
    v50 = 2053;
    v51 = v34;
    v52 = 2053;
    v53 = v35;
    v54 = 2048;
    v55 = v36;
    v56 = 1024;
    v57 = v37;
    v58 = 2048;
    v59 = v39;
    v40 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "virtual void CLTileFileWithTraversal::onTraversingTileHeaderLocation(const CLTilesManager_Type::TileHeaderLocation &)", "%s\n", v40);
    if (v40 != v68)
    {
      free(v40);
    }
  }
}

void sub_1007C6D0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007C6D44(uint64_t a1, int *a2)
{
  if (qword_1025D48A0 != -1)
  {
    sub_10193998C();
  }

  v4 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
  {
    v5 = a2[1];
    v7 = a2[3];
    v6 = a2[4];
    v8[0] = 67109632;
    v8[1] = v5;
    v9 = 1024;
    v10 = v6;
    v11 = 1024;
    v12 = v7;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "TILE: tileMacIndexHeader, headerSizeBytes, %u, tileMacIndexHeader, entrySizeInBytes, %u, numOfEntries, %u", v8, 0x14u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101939D3C(a2);
  }

  *(a1 + 292) = 0;
}

void sub_1007C6E44(uint64_t a1, unsigned __int8 *a2)
{
  if (qword_1025D48A0 != -1)
  {
    sub_10193998C();
  }

  v4 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a1 + 292);
    v6 = *a2;
    v7 = a2[1];
    v8 = a2[2];
    v9 = a2[3];
    v10 = a2[4];
    v11 = a2[5];
    v12 = *(a2 + 6);
    v13[0] = 67110912;
    v13[1] = v5;
    v14 = 1024;
    v15 = v6;
    v16 = 1024;
    v17 = v7;
    v18 = 1024;
    v19 = v8;
    v20 = 1024;
    v21 = v9;
    v22 = 1024;
    v23 = v10;
    v24 = 1024;
    v25 = v11;
    v26 = 1024;
    v27 = v12;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "TILE: idx, %3u, mac,%x:%x:%x:%x:%x:%x, offset, %u", v13, 0x32u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101939E38(a1, a2);
  }

  ++*(a1 + 292);
}

void sub_1007C6F90(uint64_t a1, int *a2)
{
  *(a1 + 292) = 0;
  if (qword_1025D48A0 != -1)
  {
    sub_10193998C();
  }

  v3 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
  {
    v4 = a2[1];
    v6 = a2[3];
    v5 = a2[4];
    v7[0] = 67109632;
    v7[1] = v4;
    v8 = 1024;
    v9 = v5;
    v10 = 1024;
    v11 = v6;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "TILE: tileAccessPointTable, headerSizeBytes, %u, tileAccessPointTable, entrySizeInBytes, %u, numOfEntries, %u", v7, 0x14u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101939F9C(a2);
  }
}

void sub_1007C7084(uint64_t a1, unsigned __int8 *a2)
{
  v22 = 0;
  v23 = 0;
  sub_100EDF3F8(a1, *(a2 + 6) & 0xFFF, (*(a2 + 6) >> 12) & 0xFFF, &v23, &v22);
  if (qword_1025D48A0 != -1)
  {
    sub_1019398B4();
  }

  v4 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a1 + 292);
    v6 = *a2;
    v7 = a2[1];
    v8 = a2[2];
    v9 = a2[3];
    v10 = a2[4];
    v11 = a2[5];
    v12 = *(a2 + 6);
    *buf = 67111681;
    v47 = v5;
    v48 = 1024;
    v49 = v6;
    v50 = 1024;
    v51 = v7;
    v52 = 1024;
    v53 = v8;
    v54 = 1024;
    v55 = v9;
    v56 = 1024;
    v57 = v10;
    v58 = 1024;
    v59 = v11;
    v60 = 1024;
    v61 = v12 & 0xFFF;
    v62 = 1024;
    v63 = (v12 >> 12) & 0xFFF;
    v64 = 2053;
    v65 = v23;
    v66 = 2053;
    v67 = v22;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "TILE: mac, %3u, mac,%x:%x:%x:%x:%x:%x, y, %3d, x, %3d, loc, %{sensitive}14.10lf, %{sensitive}14.10lf", buf, 0x4Cu);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D48A0 != -1)
    {
      sub_1019398B4();
    }

    v13 = *(a1 + 292);
    v14 = *a2;
    v15 = a2[1];
    v16 = a2[2];
    v17 = a2[3];
    v18 = a2[4];
    v19 = a2[5];
    v20 = *(a2 + 6);
    v24 = 67111681;
    v25 = v13;
    v26 = 1024;
    v27 = v14;
    v28 = 1024;
    v29 = v15;
    v30 = 1024;
    v31 = v16;
    v32 = 1024;
    v33 = v17;
    v34 = 1024;
    v35 = v18;
    v36 = 1024;
    v37 = v19;
    v38 = 1024;
    v39 = v20 & 0xFFF;
    v40 = 1024;
    v41 = (v20 >> 12) & 0xFFF;
    v42 = 2053;
    v43 = v23;
    v44 = 2053;
    v45 = v22;
    v21 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "virtual void CLTileFileWithTraversal::onTraversingTileAPTableEntry(const CLTilesManager_Type::AccessPointEntry &)", "%s\n", v21);
    if (v21 != buf)
    {
      free(v21);
    }
  }

  ++*(a1 + 292);
}

void *sub_1007C7348(uint64_t a1, FILE *a2, uint64_t a3, void *a4, int a5, int a6)
{
  v11 = (a6 * a5);
  if (qword_1025D48A0 != -1)
  {
    sub_10193998C();
  }

  v12 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
  {
    v13 = *(a3 + 2);
    *buf = 67109632;
    v24 = v13;
    v25 = 1024;
    v26 = a4;
    v27 = 1024;
    v28 = a5;
    _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "TILE: read data, sectionId, %d, entriesOffset, %u, entriesNumToRead, %u", buf, 0x14u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D48A0 != -1)
    {
      sub_1019398B4();
    }

    v22 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void *CLTileFileWithTraversal::readDataEntries(FILE *, const CLTilesManager_Type::SectionHeader &, unsigned int, unsigned int, unsigned int)", "%s\n", v22);
    if (v22 != buf)
    {
      free(v22);
    }
  }

  v14 = malloc_type_malloc(v11, 0x100004077774924uLL);
  if (v14)
  {
    v15 = fseek(a2, (a6 * a4), 1);
    if (v15)
    {
      v16 = v15;
      if (qword_1025D48A0 != -1)
      {
        sub_1019398B4();
      }

      v17 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
      {
        *buf = 67109376;
        v24 = a4;
        v25 = 1024;
        v26 = v16;
        _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_FAULT, "TILE: ERROR: failed to skip entries pre read, %u, ret, %d", buf, 0xEu);
      }

      if (sub_10000A100(121, 0))
      {
        sub_10193A098(a4, v16);
      }

LABEL_21:
      free(v14);
      return 0;
    }

    v18 = fread(v14, 1uLL, v11, a2);
    if (v18 != v11)
    {
      v19 = v18;
      if (qword_1025D48A0 != -1)
      {
        sub_1019398B4();
      }

      v20 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
      {
        *buf = 67109376;
        v24 = v19;
        v25 = 1024;
        v26 = v11;
        _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_FAULT, "TILE: ERROR: failed to read bytes, %u, %u", buf, 0xEu);
      }

      if (sub_10000A100(121, 0))
      {
        sub_10193A1A8(v19, v11);
      }

      goto LABEL_21;
    }
  }

  return v14;
}

void sub_1007C81FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unsigned __int16 *sub_1007C8EF8(uint64_t a1, int *a2, int *a3)
{
  if (qword_1025D45A0 != -1)
  {
    sub_10193A76C();
  }

  v6 = qword_1025D45A8;
  if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_DEBUG))
  {
    v7 = *a2;
    v8 = *a3;
    v9 = *(a3 + 1);
    v10 = *(a3 + 2);
    *buf = 67109888;
    *v25 = v7;
    *&v25[4] = 1024;
    *&v25[6] = v8;
    *v26 = 2048;
    *&v26[2] = v9;
    *v27 = 2048;
    *&v27[2] = v10;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "HR notification %d src %d %f %f", buf, 0x22u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10193A780(a2);
  }

  if (*(a1 + 66))
  {
    v11 = *(a1 + 66) + *(a1 + 64) - 1;
    v12 = *(a1 + 68);
    if (v11 < v12)
    {
      v12 = 0;
    }

    v13 = *(a1 + 176 * (v11 - v12) + 112);
    v14 = *(a3 + 5);
    if (vabdd_f64(v14, v13) > 10.0)
    {
      if (qword_1025D45A0 != -1)
      {
        sub_10193A8B0();
      }

      v15 = qword_1025D45A8;
      if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        *v25 = 0x8000000101CD1128 & 0x7FFFFFFFFFFFFFFFLL;
        *&v25[8] = 2048;
        *v26 = v13;
        *&v26[8] = 2048;
        *v27 = v14;
        *&v27[8] = 2048;
        v28 = v14 - v13;
        _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEFAULT, "<%s> #Warning, unexpected gap, previousTime,%f,currentTime,%f,gap,%f", buf, 0x2Au);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D45A0 != -1)
        {
          sub_10193A8B0();
        }

        v23 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CMDataProvider::Util::logGapIfUnexpected(const T &, const T &, CFTimeInterval, GetTimeOperatorT) [T = CLCatherineNotifier_Type::NotificationData, GetTimeOperatorT = GetTimeOperator]", "%s\n", v23);
        if (v23 != buf)
        {
          free(v23);
        }
      }
    }

    v16 = (*(*a1 + 56))(a1);
    Current = CFAbsoluteTimeGetCurrent();
    v18 = *(a3 + 5);
    if (vabdd_f64(Current, v18) > v16)
    {
      if (qword_1025D45A0 != -1)
      {
        sub_10193A8B0();
      }

      v19 = Current - v18;
      v20 = qword_1025D45A8;
      if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        *v25 = 0x8000000101CD1128 & 0x7FFFFFFFFFFFFFFFLL;
        *&v25[8] = 2048;
        *v26 = v18;
        *&v26[8] = 2048;
        *v27 = v19;
        _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEFAULT, "<%s> #Warning, unexpected latency, time,%f,latency,%f", buf, 0x20u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10193A8D8(v18, v19);
      }
    }
  }

  sub_1007C9340((a1 + 64), a3);
  result = sub_100726B38((a1 + 8872), a2);
  for (i = *(a1 + 32); i != a1 + 24; i = *(i + 8))
  {
    result = (*(**(i + 24) + 16))(*(i + 24), a1);
  }

  return result;
}

unsigned __int16 *sub_1007C9340(unsigned __int16 *result, _OWORD *a2)
{
  v2 = *(result + 1);
  v3 = *result + result[1];
  if (v3 < v2)
  {
    v2 = 0;
  }

  v4 = &result[88 * (v3 - v2)];
  v6 = a2[1];
  v5 = a2[2];
  *(v4 + 4) = *a2;
  *(v4 + 12) = v6;
  *(v4 + 20) = v5;
  v7 = a2[5];
  v8 = a2[6];
  v9 = a2[4];
  *(v4 + 28) = a2[3];
  *(v4 + 52) = v8;
  *(v4 + 44) = v7;
  *(v4 + 36) = v9;
  v10 = a2[9];
  v11 = a2[10];
  v12 = a2[8];
  *(v4 + 60) = a2[7];
  *(v4 + 84) = v11;
  *(v4 + 76) = v10;
  *(v4 + 68) = v12;
  v13 = result[1];
  v14 = *(result + 1);
  if (v14 <= v13)
  {
    v15 = *result + 1;
    if (v15 < v14)
    {
      LOWORD(v14) = 0;
    }

    *result = v15 - v14;
  }

  else
  {
    result[1] = v13 + 1;
  }

  return result;
}

void sub_1007C93E0(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v5 = (a1 + 16);
  v6 = *(a1 + 16);
  sub_1003E66FC(a1 + 8, a2, a3);
  if (qword_1025D45A0 != -1)
  {
    sub_10193A76C();
  }

  v7 = qword_1025D45A8;
  if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_DEBUG))
  {
    v8 = *v5;
    *buf = 67109376;
    v11 = v8;
    v12 = 1024;
    v13 = v3;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "fActiveRefCount %d leech %d", buf, 0xEu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10193AA1C(v5);
  }

  if (!v6 && *v5 == 1)
  {
    if (qword_1025D45A0 != -1)
    {
      sub_10193A8B0();
    }

    v9 = qword_1025D45A8;
    if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "creating hr dispatcher", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10193AB38();
    }

    if (*(a1 + 48))
    {
      operator new();
    }
  }
}

void sub_1007C9620(uint64_t a1, uint64_t a2)
{
  if (sub_1003E6B84(a1 + 8, a2))
  {
    if (*(a1 + 16) != 1)
    {
      sub_10193AC1C(qword_1025D45A0 == -1);
    }

    if (qword_1025D45A0 != -1)
    {
      sub_10193A76C();
    }

    v4 = qword_1025D45A8;
    if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "removing HR delegate", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10193ADE4();
    }

    v5 = *(a1 + 48);
    if (v5)
    {
      (*(*v5 + 120))(v5);
    }
  }

  if (qword_1025D45A0 != -1)
  {
    sub_10193A8B0();
  }

  v6 = qword_1025D45A8;
  if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_INFO, "release HR client", v7, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10193AEC4();
  }

  sub_1003E6D3C(a1 + 8, a2);
}

double sub_1007C9798(uint64_t a1, int a2)
{
  result = -1.0;
  if (a2 == 1 && *(a1 + 66))
  {
    v3 = *(a1 + 66) + *(a1 + 64) - 1;
    v4 = *(a1 + 68);
    if (v3 < v4)
    {
      v4 = 0;
    }

    return *(a1 + 176 * (v3 - v4) + 112);
  }

  return result;
}

void sub_1007C97DC(void *a1)
{
  sub_1007C989C(a1);

  operator delete();
}

void sub_1007C9830(uint64_t a1)
{
  sub_1007C989C((a1 - 8));

  operator delete();
}

void *sub_1007C989C(void *a1)
{
  *a1 = off_1024718C8;
  a1[1] = off_102471930;
  if (qword_1025D45A0 != -1)
  {
    sub_10193A76C();
  }

  v2 = qword_1025D45A8;
  if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "factory stream hr destroyed", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10193AFA4(buf);
    v5 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "virtual CMDataProviderFactoryHR::~CMDataProviderFactoryHR()", "%s\n", v5);
    if (v5 != buf)
    {
      free(v5);
    }
  }

  v3 = a1[7];
  if (v3)
  {
    sub_100008080(v3);
  }

  a1[1] = off_10244FCF8;
  sub_1001FB750(a1 + 3);
  return a1;
}

void sub_1007C9A68(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

void *sub_1007C9AE0(void *a1, uint64_t *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_1024719C0;
  sub_1007C9BD8((a1 + 3), a2);
  return a1;
}

void sub_1007C9B5C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1024719C0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1007C9BD8(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  v5 = *a2;
  v6 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1007C9C4C(a1, &v5);
  if (v6)
  {
    sub_100008080(v6);
  }

  return a1;
}

void sub_1007C9C34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  _Unwind_Resume(exception_object);
}

double sub_1007C9C4C(uint64_t a1, void *a2)
{
  *(a1 + 16) = 0;
  *(a1 + 24) = a1 + 24;
  *(a1 + 32) = a1 + 24;
  *(a1 + 40) = 0;
  *a1 = off_1024718C8;
  *(a1 + 8) = off_102471930;
  v2 = a2[1];
  *(a1 + 48) = *a2;
  *(a1 + 56) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  *&result = 0x3200000000;
  *(a1 + 64) = 0x3200000000;
  *(a1 + 8872) = 0x3200000000;
  return result;
}

__n128 sub_1007C9D28(uint64_t a1, uint64_t a2)
{
  *a2 = off_102471A10;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1007C9D60(void *a1)
{
  v1 = a1[2];
  v2 = a1[1];
  v3 = (a1[3] + (v1 >> 1));
  if (v1)
  {
    return (*(*v3 + v2))();
  }

  else
  {
    return v2(v3);
  }
}

uint64_t sub_1007C9DA8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1007CA294(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100008080(a11);
  }

  if (STACK[0x690])
  {
    sub_100008080(STACK[0x690]);
  }

  _Unwind_Resume(a1);
}

void sub_1007CAA10(std::__shared_weak_count *a1)
{
  a1->__vftable = off_102471AC8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

const void *sub_1007CAACC(const void *a1)
{
  v2 = sub_100536F74(a1, "CLLocalization", 1, 1);
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  v3 = (v2 + 16);
  sub_1005658E8(&__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v5 = sub_100053C00(p_p);
  v6 = v5;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (!v6)
    {
      goto LABEL_12;
    }
  }

  else if (!v5)
  {
    goto LABEL_12;
  }

  v7 = CFGetTypeID(v6);
  if (v7 == CFStringGetTypeID())
  {
    v8 = CFURLCreateWithFileSystemPath(kCFAllocatorDefault, v6, kCFURLPOSIXPathStyle, 0);
    if (v8)
    {
      *v3 = CFBundleCreate(kCFAllocatorDefault, v8);
      CFRelease(v8);
    }
  }

  CFRelease(v6);
LABEL_12:
  sub_1007CAC2C(a1);
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, a1, sub_1007CAC68, @"com.apple.language.changed", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  return a1;
}

const __CFString *sub_1007CAC2C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    CFRelease(v2);
  }

  result = sub_100055D44(a1, *(a1 + 16));
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_1007CAC68(uint64_t a1, uint64_t a2)
{
  if (qword_1025D48A0 != -1)
  {
    sub_10193B164();
  }

  v3 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v5) = 0;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "language changed - refreshing", &v5, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10193B178();
  }

  v5 = a2;
  (*(*a2 + 16))(a2);
  v6 = 256;
  CFPreferencesSynchronize(@".GlobalPreferences", @"mobile", kCFPreferencesAnyHost);
  sub_1007CAC2C(a2);
  return (*(*a2 + 24))(a2);
}

const __CFString *sub_1007CADA0(uint64_t a1, __CFBundle *a2, const __CFString *a3, const __CFString *a4, int a5)
{
  if (qword_102659FB0 != -1)
  {
    sub_10193B150();
  }

  result = sub_100055A24(qword_1026372B0, a2, a4, a5);
  if (!a5 && !result)
  {
    v10 = [(__CFDictionary *)CFBundleGetInfoDictionary(a2) objectForKey:a3];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 objectForKey:a4];
      if (v11)
      {
        v12 = v11;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {

          return [v12 copy];
        }

        if (qword_1025D47A0 != -1)
        {
          sub_10193B290();
        }

        v24 = off_1025D47A8;
        if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
        {
          sub_1000238CC(a4, __p);
          if (v28 >= 0)
          {
            v25 = __p;
          }

          else
          {
            v25 = __p[0];
          }

          *buf = 68289282;
          v30 = 0;
          v31 = 2082;
          v32 = "";
          v33 = 2082;
          v34 = v25;
          _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:key does not contain a string value, key:%{public, location:escape_only}s}", buf, 0x1Cu);
          if (v28 < 0)
          {
            operator delete(__p[0]);
          }

          if (qword_1025D47A0 != -1)
          {
            sub_10193B2A4();
          }
        }

        v22 = off_1025D47A8;
        if (!os_signpost_enabled(off_1025D47A8))
        {
          return 0;
        }

        sub_1000238CC(a4, __p);
        if (v28 >= 0)
        {
          v26 = __p;
        }

        else
        {
          v26 = __p[0];
        }

        *buf = 68289282;
        v30 = 0;
        v31 = 2082;
        v32 = "";
        v33 = 2082;
        v34 = v26;
        v17 = "key does not contain a string value";
        v18 = "{msg%{public}.0s:key does not contain a string value, key:%{public, location:escape_only}s}";
      }

      else
      {
        if (qword_1025D47A0 != -1)
        {
          sub_10193B290();
        }

        v20 = off_1025D47A8;
        if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
        {
          sub_1000238CC(a4, __p);
          if (v28 >= 0)
          {
            v21 = __p;
          }

          else
          {
            v21 = __p[0];
          }

          *buf = 68289282;
          v30 = 0;
          v31 = 2082;
          v32 = "";
          v33 = 2082;
          v34 = v21;
          _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:key is not present, key:%{public, location:escape_only}s}", buf, 0x1Cu);
          if (v28 < 0)
          {
            operator delete(__p[0]);
          }

          if (qword_1025D47A0 != -1)
          {
            sub_10193B2A4();
          }
        }

        v22 = off_1025D47A8;
        if (!os_signpost_enabled(off_1025D47A8))
        {
          return 0;
        }

        sub_1000238CC(a4, __p);
        if (v28 >= 0)
        {
          v23 = __p;
        }

        else
        {
          v23 = __p[0];
        }

        *buf = 68289282;
        v30 = 0;
        v31 = 2082;
        v32 = "";
        v33 = 2082;
        v34 = v23;
        v17 = "key is not present";
        v18 = "{msg%{public}.0s:key is not present, key:%{public, location:escape_only}s}";
      }

      v19 = v22;
    }

    else
    {
      if (qword_1025D47A0 != -1)
      {
        sub_10193B290();
      }

      v13 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
      {
        sub_1000238CC(a3, __p);
        if (v28 >= 0)
        {
          v14 = __p;
        }

        else
        {
          v14 = __p[0];
        }

        *buf = 68289282;
        v30 = 0;
        v31 = 2082;
        v32 = "";
        v33 = 2082;
        v34 = v14;
        _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:description dictionary key does not contain a dictionary value, key:%{public, location:escape_only}s}", buf, 0x1Cu);
        if (v28 < 0)
        {
          operator delete(__p[0]);
        }

        if (qword_1025D47A0 != -1)
        {
          sub_10193B2A4();
        }
      }

      v15 = off_1025D47A8;
      if (!os_signpost_enabled(off_1025D47A8))
      {
        return 0;
      }

      sub_1000238CC(a3, __p);
      if (v28 >= 0)
      {
        v16 = __p;
      }

      else
      {
        v16 = __p[0];
      }

      *buf = 68289282;
      v30 = 0;
      v31 = 2082;
      v32 = "";
      v33 = 2082;
      v34 = v16;
      v17 = "description dictionary key does not contain a dictionary value";
      v18 = "{msg%{public}.0s:description dictionary key does not contain a dictionary value, key:%{public, location:escape_only}s}";
      v19 = v15;
    }

    _os_signpost_emit_with_name_impl(dword_100000000, v19, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v17, v18, buf, 0x1Cu);
    if (v28 < 0)
    {
      operator delete(__p[0]);
    }

    return 0;
  }

  return result;
}

const __CFString *sub_1007CB2E8(void *a1, const __CFString *a2)
{
  v4 = a1[3];
  (*(*a1 + 16))(a1);
  if (!a1[2])
  {
    v6 = 0;
    goto LABEL_12;
  }

  if (!v4)
  {
    sub_1007CAC2C(a1);
  }

  v5 = CFBundleCopyLocalizedStringForLocalization();
  v6 = v5;
  if (v5)
  {
    if (CFStringCompare(v5, a2, 0x100uLL))
    {
      goto LABEL_8;
    }

    CFRelease(v6);
  }

  v6 = CFBundleCopyLocalizedStringForLocalization();
  if (!v6)
  {
LABEL_10:
    v6 = CFBundleCopyLocalizedStringForLocalization();
    goto LABEL_12;
  }

LABEL_8:
  if (CFStringCompare(v6, a2, 0x100uLL) == kCFCompareEqualTo)
  {
    CFRelease(v6);
    goto LABEL_10;
  }

LABEL_12:
  (*(*a1 + 24))(a1);
  return v6;
}

void sub_1007CB43C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

const void *sub_1007CB450(uint64_t a1)
{
  (*(*a1 + 16))(a1);
  v2 = CFPreferencesCopyValue(@"AppleLanguages", @".GlobalPreferences", @"mobile", kCFPreferencesAnyHost);
  v3 = v2;
  if (v2)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v2, 0);
    CFRetain(ValueAtIndex);
    CFRelease(v3);
  }

  else
  {
    if (qword_1025D48A0 != -1)
    {
      sub_10193B164();
    }

    v5 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "#Warning could not get apple languages array", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10193B2CC(buf);
      v7 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "CFStringRef CLLocalization::copyUserPreferredLanguage()", "%s\n", v7);
      if (v7 != buf)
      {
        free(v7);
      }
    }

    ValueAtIndex = 0;
  }

  (*(*a1 + 24))(a1);
  return ValueAtIndex;
}

void sub_1007CB658(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1007CB6B8(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = &off_102471B68;
  *(a1 + 16) = 20;
  *(a1 + 24) = 1;
  *(a1 + 32) = &off_102471CA8;
  *a1 = off_102471E58;
  *(a1 + 40) = 1056964608;
  *(a1 + 48) = 0;
  v4 = a1 + 2528;
  bzero((a1 + 56), 0x9A8uLL);
  *(a1 + 2528) = xmmword_101C8E2B0;
  *(a1 + 2544) = unk_101C8E2C0;
  *(a1 + 2560) = xmmword_101C8E2D0;
  *(v4 + 44) = *(&xmmword_101C8E2D0 + 12);
  *(a1 + 2592) = 0;
  *(a1 + 2600) = a2;
  *(a1 + 2608) = 0;
  v6 = 0;
  sub_100126E84(v7, "RunningFormBypassIsRunning", &v6, 0);
  *(a1 + 2612) = v7[1];
  *(a1 + 2613) = 0;
  nullsub_34(a1 + 2615);
  *(a1 + 2632) = 0u;
  *(a1 + 2648) = 0u;
  *(a1 + 2616) = 0u;
  *(a1 + 2664) = 0x200000002;
  return a1;
}

void sub_1007CB7C8(_Unwind_Exception *a1)
{
  sub_1007D4B7C(v1 + 43);
  sub_1007D4AD0(v1 + 37);
  sub_100102BC8(v1 + 31);
  sub_100102BC8(v1 + 25);
  sub_1000F8B58(v1 + 19);
  sub_1000F8B58(v1 + 13);
  sub_1000F8B58(v1 + 7);
  _Unwind_Resume(a1);
}

void sub_1007CB814(uint64_t a1)
{
  v4 = 0;
  sub_100126E84(buf, "RunningFormBypassIsRunning", &v4, 0);
  *(a1 + 2612) = buf[1];
  if (qword_1025D44C0 != -1)
  {
    sub_10193B310();
  }

  v2 = qword_1025D44C8;
  if (os_log_type_enabled(qword_1025D44C8, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 2612);
    *buf = 136446466;
    v6 = "RunningFormBypassIsRunning";
    v7 = 1026;
    v8 = v3;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "[FormModels] default - %{public}s: %{public}d", buf, 0x12u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10193B338((a1 + 2612));
  }
}

void sub_1007CB928(uint64_t a1)
{
  *(a1 + 48) = 0;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0u;
  bzero((a1 + 456), 0x818uLL);
  v2 = *(a1 + 64);
  v3 = *(a1 + 72);
  *(a1 + 96) = 0;
  v4 = (v3 - v2) >> 3;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v5 = *(a1 + 72);
      v2 = (*(a1 + 64) + 8);
      *(a1 + 64) = v2;
      v4 = (v5 - v2) >> 3;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v6 = 85;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_8;
    }

    v6 = 170;
  }

  *(a1 + 88) = v6;
LABEL_8:
  v7 = *(a1 + 112);
  v8 = *(a1 + 120);
  *(a1 + 144) = 0;
  v9 = (v8 - v7) >> 3;
  if (v9 >= 3)
  {
    do
    {
      operator delete(*v7);
      v10 = *(a1 + 120);
      v7 = (*(a1 + 112) + 8);
      *(a1 + 112) = v7;
      v9 = (v10 - v7) >> 3;
    }

    while (v9 > 2);
  }

  if (v9 == 1)
  {
    v11 = 85;
  }

  else
  {
    if (v9 != 2)
    {
      goto LABEL_15;
    }

    v11 = 170;
  }

  *(a1 + 136) = v11;
LABEL_15:
  v12 = *(a1 + 160);
  v13 = *(a1 + 168);
  *(a1 + 192) = 0;
  v14 = (v13 - v12) >> 3;
  if (v14 >= 3)
  {
    do
    {
      operator delete(*v12);
      v15 = *(a1 + 168);
      v12 = (*(a1 + 160) + 8);
      *(a1 + 160) = v12;
      v14 = (v15 - v12) >> 3;
    }

    while (v14 > 2);
  }

  if (v14 == 1)
  {
    v16 = 85;
  }

  else
  {
    if (v14 != 2)
    {
      goto LABEL_22;
    }

    v16 = 170;
  }

  *(a1 + 184) = v16;
LABEL_22:
  v17 = *(a1 + 208);
  v18 = *(a1 + 216);
  *(a1 + 240) = 0;
  v19 = (v18 - v17) >> 3;
  if (v19 >= 3)
  {
    do
    {
      operator delete(*v17);
      v20 = *(a1 + 216);
      v17 = (*(a1 + 208) + 8);
      *(a1 + 208) = v17;
      v19 = (v20 - v17) >> 3;
    }

    while (v19 > 2);
  }

  if (v19 == 1)
  {
    v21 = 128;
  }

  else
  {
    if (v19 != 2)
    {
      goto LABEL_29;
    }

    v21 = 256;
  }

  *(a1 + 232) = v21;
LABEL_29:
  v22 = *(a1 + 256);
  v23 = *(a1 + 264);
  *(a1 + 288) = 0;
  v24 = (v23 - v22) >> 3;
  if (v24 >= 3)
  {
    do
    {
      operator delete(*v22);
      v25 = *(a1 + 264);
      v22 = (*(a1 + 256) + 8);
      *(a1 + 256) = v22;
      v24 = (v25 - v22) >> 3;
    }

    while (v24 > 2);
  }

  if (v24 == 1)
  {
    v26 = 128;
  }

  else
  {
    if (v24 != 2)
    {
      return;
    }

    v26 = 256;
  }

  *(a1 + 280) = v26;
}

void sub_1007CBB40(uint64_t a1, void *a2, void *a3)
{
  v6 = a2[1];
  v7 = 0x70381C0E070381C1;
  if (a2[2] == v6)
  {
    v8 = a2[5];
    v385 = a2 + 5;
    goto LABEL_11;
  }

  v8 = a2[5];
  v385 = a2 + 5;
  v9 = a2[4];
  v10 = (v6 + 8 * (v9 / 0x49));
  v11 = *v10;
  v12 = *v10 + 56 * (v9 % 0x49);
  v13 = *(v6 + 8 * ((v8 + v9) / 0x49)) + 56 * ((v8 + v9) % 0x49);
  if (v12 == v13)
  {
LABEL_11:
    v14 = 0.0;
    goto LABEL_12;
  }

  v14 = 0.0;
  do
  {
    v15 = *(v12 + 48) - *(v12 + 40);
    if (v15 > 0.0)
    {
      v14 = v14 + v15;
    }

    v12 += 56;
    if (v12 - v11 == 4088)
    {
      v16 = v10[1];
      ++v10;
      v11 = v16;
      v12 = v16;
    }
  }

  while (v12 != v13);
LABEL_12:
  *(a1 + 448) = v14 / v8;
  sub_1007CDBA4(a1);
  v17 = a3[5];
  if (v17)
  {
    v383 = sub_100CDBCEC(*(a1 + 464), *(*(a3[1] + 8 * ((v17 + a3[4] - 1) / 0x16uLL)) + 184 * ((v17 + a3[4] - 1) % 0x16uLL) + 80), *(a1 + 2536));
  }

  else
  {
    v383 = 0;
  }

  v18 = *(a1 + 48) + 1;
  *(a1 + 48) = v18;
  v386 = a2;
  if (*v385 >= 0x101uLL && (v18 & 0xF) == 0)
  {
    *(a1 + 48) = 0;
    memset(v402, 0, 20);
    if (sub_1007CDED4(a2, v402))
    {
      sub_1007CE348((a1 + 104), v402);
    }

    else
    {
      if (qword_1025D44C0 != -1)
      {
        sub_10193B454();
      }

      v19 = qword_1025D44C8;
      if (os_log_type_enabled(qword_1025D44C8, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_ERROR, "[FormModels] Failed to compute axis of rotation", buf, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_10193B468();
      }
    }
  }

  if (*(a1 + 464) > 0.0 && *v385 >= 0x201uLL)
  {
    v20 = a2[4] + *v385;
    v21 = a2[1];
    v22 = a2[2];
    v23 = (v21 + 8 * (v20 / 0x49));
    v24 = *v23 + 56 * (v20 % 0x49);
    if (v22 == v21)
    {
      v24 = 0;
    }

    v25 = v24 - *v23;
    v26 = 0x6DB6DB6DB6DB6DB7 * (v25 >> 3);
    if (v25 < 28729)
    {
      v46 = 585 - v26;
      v47 = (585 - v26) / 0x49uLL;
      v29 = &v23[-v47];
      v30 = *v29 + 56 * (73 * v47 - v46) + 4032;
    }

    else
    {
      v27 = v26 - 513;
      v28 = (v26 - 513) / 0x49uLL;
      v29 = &v23[v28];
      v30 = *v29 + 56 * (v27 - 73 * v28);
    }

    *buf = v29;
    *&buf[8] = v30;
    if (v22 == v21)
    {
      v48 = 0;
    }

    else
    {
      v48 = *v23 + 56 * (v20 % 0x49);
    }

    *v397 = v23;
    *&v397[8] = v48;
    sub_1007CE3F8(buf, v397, a1 + 1500, v402);
    sub_1007CE58C((a1 + 56), v402);
    goto LABEL_57;
  }

  *(a1 + 440) = 0;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 392) = 0u;
  v31 = *(a1 + 64);
  v32 = *(a1 + 72);
  *(a1 + 96) = 0;
  v33 = (v32 - v31) >> 3;
  if (v33 >= 3)
  {
    do
    {
      operator delete(*v31);
      v34 = *(a1 + 72);
      v31 = (*(a1 + 64) + 8);
      *(a1 + 64) = v31;
      v33 = (v34 - v31) >> 3;
    }

    while (v33 > 2);
  }

  if (v33 == 1)
  {
    v35 = 85;
  }

  else
  {
    if (v33 != 2)
    {
      goto LABEL_38;
    }

    v35 = 170;
  }

  *(a1 + 88) = v35;
LABEL_38:
  v36 = *(a1 + 160);
  v37 = *(a1 + 168);
  *(a1 + 192) = 0;
  v38 = (v37 - v36) >> 3;
  if (v38 >= 3)
  {
    do
    {
      operator delete(*v36);
      v39 = *(a1 + 168);
      v36 = (*(a1 + 160) + 8);
      *(a1 + 160) = v36;
      v38 = (v39 - v36) >> 3;
    }

    while (v38 > 2);
  }

  if (v38 == 1)
  {
    v40 = 85;
    goto LABEL_44;
  }

  if (v38 == 2)
  {
    v40 = 170;
LABEL_44:
    *(a1 + 184) = v40;
  }

  v41 = *(a1 + 208);
  v42 = *(a1 + 216);
  *(a1 + 240) = 0;
  v43 = (v42 - v41) >> 3;
  if (v43 >= 3)
  {
    do
    {
      operator delete(*v41);
      v44 = *(a1 + 216);
      v41 = (*(a1 + 208) + 8);
      *(a1 + 208) = v41;
      v43 = (v44 - v41) >> 3;
    }

    while (v43 > 2);
  }

  if (v43 == 1)
  {
    v45 = 128;
  }

  else
  {
    if (v43 != 2)
    {
      goto LABEL_57;
    }

    v45 = 256;
  }

  *(a1 + 232) = v45;
LABEL_57:
  v49 = *(a1 + 96);
  if (v49 < 2)
  {
    goto LABEL_71;
  }

  v50 = *(a1 + 88);
  v51 = v50 + v49;
  v52 = *(a1 + 64);
  v53 = *(a1 + 72);
  v54 = (v52 + 8 * (v51 / 0xAA));
  v55 = *v54 + 24 * (v51 % 0xAA);
  if (v53 == v52)
  {
    v55 = 0;
  }

  v56 = v55 - *v54;
  v57 = 0xAAAAAAAAAAAAAAABLL * (v56 >> 3);
  if (v56 < 25)
  {
    v63 = 170 - v57;
    v64 = (170 - v57) / 0xAA;
    v60 = &v54[-v64];
    v61 = *v60;
    v62 = *v60 + 24 * (170 * v64 - v63) + 4056;
  }

  else
  {
    v58 = v57 - 1;
    v59 = (v57 - 1) / 0xAA;
    v60 = &v54[v59];
    v61 = *v60;
    v62 = *v60 + 24 * (v58 - 170 * v59);
  }

  v65 = v62 - v61;
  v66 = 0xAAAAAAAAAAAAAAABLL * ((v62 - v61) >> 3);
  if (v65 < 25)
  {
    v67 = v60[-((170 - v66) / 0xAA)] + 24 * (170 * ((170 - v66) / 0xAA) - (170 - v66)) + 4056;
  }

  else
  {
    v67 = v60[(v66 - 1) / 0xAA] + 24 * ((v66 - 1) % 0xAA);
  }

  v68 = *(v67 + 8);
  v387 = *(v62 + 8);
  if (v68 <= 0.0 && *(v62 + 8) > 0.0)
  {
    *(a1 + 392) = *(a1 + 416);
    *(a1 + 408) = *(a1 + 432);
    *(a1 + 416) = *v62;
    *(a1 + 424) = 0;
    *(a1 + 432) = 0;
    goto LABEL_69;
  }

  if (v68 < 0.0 || v387 >= 0.0 || *(a1 + 392) <= 0.0 || *(a1 + 408) <= 0.0 || *(a1 + 416) <= 0.0 || *(a1 + 432) <= 0.0)
  {
    goto LABEL_69;
  }

  v331 = v62;
  v410 = 0;
  v409 = 0u;
  v408 = 0u;
  v407 = 0u;
  v406 = 0u;
  v405 = 0u;
  memset(buf, 0, sizeof(buf));
  v136 = (v52 + 8 * (v50 / 0xAA));
  if (v53 == v52)
  {
    v137 = 0;
    v138 = 0;
  }

  else
  {
    v137 = (*v136 + 24 * (v50 % 0xAA));
    v138 = (*v54 + 24 * (v51 % 0xAA));
  }

  v150 = a2;
  v151 = sub_1007CE63C(v136, v137, v54, v138, (a1 + 400));
  v153 = v152;
  v154 = *(a1 + 88) + *(a1 + 96);
  v155 = *(a1 + 64);
  v156 = (v155 + 8 * (v154 / 0xAA));
  if (*(a1 + 72) == v155)
  {
    v157 = 0;
  }

  else
  {
    v157 = (*v156 + 24 * (v154 % 0xAA));
  }

  v158 = v151;
  v159 = sub_1007CE724(v151, v152, v156, v157, (a1 + 424));
  v359 = v160;
  v161 = a2[4];
  v162 = a2[1];
  v163 = (v162 + 8 * (v161 / 0x49));
  v332 = v153;
  if (a2[2] == v162)
  {
    v164 = 0;
    v167 = 0;
    v166 = (v162 + (((((*v385 + v161) * 0x70381C0E070381C1uLL) >> 64) >> 2) & 0x1FFFFFFFFFFFFFF8));
  }

  else
  {
    v164 = *(v162 + 8 * (v161 / 0x49)) + 56 * (v161 % 0x49);
    v165 = *v385 + v161;
    v166 = (v162 + 8 * (v165 / 0x49));
    v167 = *v166 + 56 * (v165 % 0x49);
  }

  v358 = sub_1007CE808(v163, v164, v166, v167, (a1 + 400));
  v169 = v168;
  v170 = *(a1 + 2664);
  if (v170 == 1)
  {
    if (*(a1 + 2668) != 1)
    {
LABEL_169:
      v171 = sub_1007CE9B8(v158, v153, v159, v359, a1);
      goto LABEL_172;
    }
  }

  else if (v170 || *(a1 + 2668))
  {
    goto LABEL_169;
  }

  v171 = sub_1007CE904(v158, v153, v159, v359, a1);
LABEL_172:
  v377 = v172;
  if (v171 >= v159 && (v171 != v159 || v172 >= v359) || v172 == v153)
  {
    if (qword_1025D44C0 != -1)
    {
      sub_10193B310();
    }

    v174 = qword_1025D44C8;
    if (os_log_type_enabled(qword_1025D44C8, OS_LOG_TYPE_ERROR))
    {
      v175 = *(a1 + 2664);
      v176 = *(a1 + 2668);
      *v402 = 67240448;
      *&v402[4] = v175;
      *&v402[8] = 1026;
      *&v402[10] = v176;
      _os_log_impl(dword_100000000, v174, OS_LOG_TYPE_ERROR, "[FormModels] Unable to determine swing extrema. Verify correct watch orientation: Wrist=%{public}d, Crown=%{public}d", v402, 0xEu);
    }

    v150 = a2;
    if (sub_10000A100(121, 0))
    {
      sub_10193B554((a1 + 2664));
      v150 = a2;
    }
  }

  else
  {
    v410 = 1;
  }

  v177 = 0;
  v178 = *(a1 + 64);
  v179 = -1.79769313e308;
  v180 = 1.79769313e308;
  v181 = 0.0;
  v182 = v158;
  v183 = v332;
LABEL_184:
  v184 = v183 - 510;
  while (1)
  {
    if (*(a1 + 72) == v178)
    {
      v186 = 0;
    }

    else
    {
      v185 = *(a1 + 96) + *(a1 + 88);
      v186 = *(v178 + 8 * (v185 / 0xAA)) + 24 * (v185 % 0xAA);
    }

    if (v183 == v186 || v183 == v359)
    {
      break;
    }

    v173 = *v183;
    if (*v183 >= *v377)
    {
      v187 = fabsf(*(v183 + 2));
      v188 = *(v183 + 3);
      if (v179 < v188)
      {
        v179 = *(v183 + 3);
      }

      if (v180 > v188)
      {
        v180 = *(v183 + 3);
      }

      v173 = v187;
      v181 = v181 + v173;
      ++v177;
    }

    v183 += 3;
    v184 += 3;
    if (*v182 == v184)
    {
      v189 = v182[1];
      ++v182;
      v183 = v189;
      goto LABEL_184;
    }
  }

  v327 = v181;
  v329 = v180;
  v330 = v179;
  v395 = 0;
  __p = 0;
  v396 = 0;
  *v402 = v158;
  *&v402[8] = v332;
  *v397 = v159;
  *&v397[8] = v359;
  sub_1007CEA6C(v402, v397, &__p, v173);
  v328 = v177;
  if (v359 == v332)
  {
    v190 = 0;
    v191 = v158;
  }

  else
  {
    v192 = 170 * ((v159 - v158) >> 3);
    v193 = *v159;
    v191 = v158;
    v190 = v192 - 0x5555555555555555 * ((v359 - v193) >> 3) + 0x5555555555555555 * (v332 - *v158);
  }

  v194 = *(a1 + 136);
  v195 = *(a1 + 112);
  v196 = (v195 + 8 * (v194 / 0xAA));
  if (*(a1 + 120) == v195)
  {
    v197 = 0;
  }

  else
  {
    v197 = (*v196 + 24 * (v194 % 0xAA));
  }

  v393[0] = v195 + 8 * (v194 / 0xAA);
  v393[1] = v197;
  v198 = v150[1];
  if (v150[2] == v198)
  {
    v200 = 0;
  }

  else
  {
    v199 = v150[5] + v150[4];
    v200 = *(v198 + 8 * (v199 / 0x49)) + 56 * (v199 % 0x49);
  }

  if (v200 == v169)
  {
    v201 = 0.0;
  }

  else
  {
    v201 = *(v169 + 40);
  }

  if (v190 < 1)
  {
    v307.i32[0] = *(a1 + 2536);
    v316 = *(a1 + 448);
    v317 = -1.0;
    v202 = -1.79769313e308;
    v203 = 1.79769313e308;
    v314 = v332;
    goto LABEL_307;
  }

  v378 = 0;
  v351 = 0;
  v202 = -1.79769313e308;
  v203 = 1.79769313e308;
  v384 = 0.0;
  v204 = 0.0;
  v338 = 0.0;
  v339 = 0.0;
  v205 = 0.0;
  v335 = 0.0;
  v336 = 0.0;
  v206 = 0.0;
  v207 = 0.0;
  v344 = 0.0;
  v345 = -1.79769313e308;
  v348 = -1.79769313e308;
  v349 = 1.79769313e308;
  v208 = 0.0;
  v337 = 0.0;
  v340 = v190;
  v326 = v190 & ~(v190 >> 63);
  v333 = 0.0;
  v334 = 0.0;
  v209 = 0.0;
  v342 = 0.0;
  v343 = 0.0;
  v210 = 0.0;
  v350 = -1.79769313e308;
  v211 = 0.0;
  v376 = 0.0;
  v341 = 0.0;
  v346 = 0.0;
  v347 = 0.0;
  v379 = v332;
  do
  {
    v372 = v207;
    v374 = v208;
    v375 = v206;
    v392 = *(v169 + 40);
    v212 = sub_10011E6AC(v169);
    v213 = *(a1 + 136) + *(a1 + 144);
    v214 = *(a1 + 112);
    v215 = (v214 + 8 * (v213 / 0xAA));
    v382 = v212;
    v381 = v216;
    v380 = v217;
    v368 = v209;
    v369 = v210;
    v365 = v205;
    v367 = v211;
    if (*(a1 + 120) == v214)
    {
      v218 = 0;
    }

    else
    {
      v218 = *v215 + 24 * (v213 % 0xAA);
    }

    v219 = *(v169 + 28);
    v220 = *(v169 + 32);
    v221 = *(v169 + 36);
    v222 = v392;
    if (v218 == v197 || (v223 = 170 * (v215 - v196) - 0x5555555555555555 * ((v218 - *v215) >> 3) + 0x5555555555555555 * ((v197 - *v196) >> 3)) == 0)
    {
      v228 = *(v169 + 36);
      v226 = *(v169 + 32);
      v227 = *(v169 + 28);
    }

    else
    {
      v371 = v191;
      do
      {
        v224 = v223 >> 1;
        *v402 = v196;
        *&v402[8] = v197;
        sub_1000C9AF4(v402, v223 >> 1);
        v225 = *&v402[8];
        if (**&v402[8] < *(a1 + 400))
        {
          v197 = (*&v402[8] + 24);
          *&v402[8] += 24;
          v196 = *v402;
          if (v225 + 24 - **v402 == 4080)
          {
            v196 = (*v402 + 8);
            v197 = *(*v402 + 8);
          }

          v224 = v223 + ~v224;
        }

        v223 = v224;
      }

      while (v224);
      v227 = *(v169 + 28);
      v226 = *(v169 + 32);
      v228 = *(v169 + 36);
      v191 = v371;
    }

    v370 = v202;
    v229 = 0;
    v355 = vabds_f32(v221, v380 * (((v380 * v221) + (v381 * v220)) + (v382 * v219)));
    v356 = v221;
    v357 = fabsf(v220);
    v230 = v222 - v201;
    v231 = v197[2];
    v232 = v197[3];
    v233 = v197[4];
    v234 = ((v233 * v228) + (v232 * v226)) + (v231 * v227);
    v363 = fabsf(((v380 * (v233 * v234)) + (v381 * (v232 * v234))) + (v382 * (v231 * v234)));
    v353 = 1.0 - v363;
    v354 = v231 * v234;
    v235 = *(v169 + 16);
    v236 = *(v169 + 20);
    v237 = *(v169 + 24);
    v238 = ((v380 * v237) + (v381 * v236)) + (v382 * v235);
    v352 = v235 - (v382 * v238);
    *v397 = v352;
    *&v397[4] = v236 - (v381 * v238);
    *&v397[8] = v237 - (v380 * v238);
    v239 = 0.0;
    do
    {
      v239 = v239 + (*&v397[v229] * *&v397[v229]);
      v229 += 4;
    }

    while (v229 != 12);
    v361 = v379[2];
    v360 = v379[3];
    v240 = v379[4];
    if ((atomic_load_explicit(&qword_102659FD0, memory_order_acquire) & 1) == 0)
    {
      sub_10193B678();
    }

    v241 = sub_10065C438(*&qword_102659FD8, *(&qword_102659FD8 + 1), *&dword_102659FE0, v382, v381, v380);
    v242 = fabsf(v236);
    v243 = vabds_f32(v240, v240 * (((v380 * v240) + (v360 * v381)) + (v361 * v382)));
    v244 = (*&v241 * 57.296);
    v245 = v363;
    if (v230 <= 0.0)
    {
      v246 = 0.0;
    }

    else
    {
      v246 = v230 * (v365 + v363) * 0.5;
    }

    v366 = v242;
    if (v230 <= 0.0)
    {
      v247 = 0.0;
    }

    else
    {
      v247 = v230 * (v372 + v366) * 0.5;
    }

    v373 = v238;
    v248 = v230 * (v374 + v238) * 0.5;
    if (v230 <= 0.0)
    {
      v248 = 0.0;
    }

    v249 = v376 + v248;
    if (v230 <= 0.0)
    {
      v250 = 0.0;
    }

    else
    {
      v250 = v230 * (v375 + v244) * 0.5;
    }

    v251 = v243;
    v376 = v376 + v248;
    v252 = fabs(v249);
    v362 = v244;
    v364 = v363;
    if (v392 >= *v377)
    {
      v263 = fabsf(v352);
      v264 = v230 * (v335 + v244) * 0.5;
      if (v230 <= 0.0)
      {
        v264 = 0.0;
      }

      v343 = v343 + v264;
      v265 = (v334 + v357) * v230 * 0.5;
      if (v230 <= 0.0)
      {
        v265 = 0.0;
      }

      v347 = v347 + v265;
      v339 = v339 + v263;
      ++v351;
      v266 = v230 * (v336 + v252) * 0.5;
      if (v230 <= 0.0)
      {
        v266 = 0.0;
      }

      v342 = v342 + v266;
      v334 = v357;
      v335 = v244;
      v336 = v252;
    }

    else
    {
      v253 = fabsf(sqrtf(v239));
      v254 = (v354 * v353);
      if (v350 >= v254)
      {
        v255 = v350;
      }

      else
      {
        v255 = (v354 * v353);
      }

      v256 = v349;
      if (v349 > v254)
      {
        v256 = (v354 * v353);
      }

      v349 = v256;
      v350 = v255;
      v257 = v345;
      if (v345 < v355)
      {
        v257 = v355;
      }

      v345 = v257;
      v258 = v348;
      if (v348 < v356)
      {
        v258 = v356;
      }

      v348 = v258;
      v259 = v253;
      v260 = v230 * (v333 + v253) * 0.5;
      if (v230 <= 0.0)
      {
        v260 = 0.0;
      }

      v346 = v346 + v260;
      v261 = v230 * (v338 + v245) * 0.5;
      if (v230 <= 0.0)
      {
        v261 = 0.0;
      }

      v344 = v344 + v261;
      v262 = v230 * (v337 + v252) * 0.5;
      if (v230 <= 0.0)
      {
        v262 = 0.0;
      }

      v341 = v341 + v262;
      v333 = v259;
      v337 = v252;
      v338 = v245;
    }

    v202 = v370;
    v267 = 0;
    v209 = v368 + v246;
    v211 = v367 + v247;
    v210 = v369 + v250;
    v384 = v384 + v251;
    v268 = v378 + 1;
    v269 = *(v169 + 16);
    v270 = *(v169 + 20);
    v271 = *(v169 + 24);
    v272 = ((v380 * v271) + (v270 * v381)) + (v269 * v382);
    *&v388 = v269 - (v382 * v272);
    *(&v388 + 1) = v270 - (v381 * v272);
    *(&v388 + 2) = v271 - (v380 * v272);
    v273 = 0.0;
    do
    {
      v273 = v273 + (*(&v388 + v267) * *(&v388 + v267));
      v267 += 4;
    }

    while (v267 != 12);
    v274 = 0;
    v275 = sqrtf(v273);
    v276 = 0.0;
    do
    {
      v276 = v276 + (*(v169 + 28 + v274) * *(v169 + 28 + v274));
      v274 += 4;
    }

    while (v274 != 12);
    v277 = sqrtf(v276);
    if (v203 > v277)
    {
      v203 = v277;
    }

    v278 = (v380 * *(v169 + 36)) + (*(v169 + 32) * v381);
    if (v370 < (v278 + (*(v169 + 28) * v382)))
    {
      v202 = (v278 + (*(v169 + 28) * v382));
    }

    memset(v391, 0, 12);
    v279 = *(a1 + 136) + *(a1 + 144);
    v280 = *(a1 + 112);
    v281 = (v280 + 8 * (v279 / 0xAA));
    if (*(a1 + 120) == v280)
    {
      v282 = 0;
    }

    else
    {
      v282 = (*v281 + 24 * (v279 % 0xAA));
    }

    if ((sub_1007CEE2C(v393, v392, v281, v282, v391) & 1) == 0)
    {
      if (qword_1025D44C0 != -1)
      {
        sub_10193B310();
      }

      v283 = qword_1025D44C8;
      if (os_log_type_enabled(qword_1025D44C8, OS_LOG_TYPE_ERROR))
      {
        *v402 = 0;
        _os_log_impl(dword_100000000, v283, OS_LOG_TYPE_ERROR, "[FormModels] Failed to get primary axis of rotation", v402, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_10193B6C0(v402);
        v390 = 0;
        v300 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 0, "void CLRunning::FormModels::feedDeviceMotion(const DeviceMotionQueue &, const StepQueue &)", "%s\n", v300);
        if (v300 != v402)
        {
          free(v300);
        }
      }
    }

    v284 = __p + 12 * v378;
    v285 = (vmuls_lane_f32(*(v169 + 36), *(v391 + 4), 1) + (*(v391 + 1) * *(v169 + 32))) + (*v391 * *(v169 + 28));
    v286 = *v391 * v285;
    v287 = vmul_n_f32(*(v391 + 4), v285);
    v288 = *(v284 + 4);
    v289.i32[0] = vdup_lane_s32(v287, 1).u32[0];
    v289.f32[1] = v286;
    v290.i32[0] = vdup_lane_s32(v288, 1).u32[0];
    v290.i32[1] = *v284;
    v291 = (*(v169 + 24) * 9.8067) - ((v286 * v288.f32[0]) - (v287.f32[0] * *v284));
    *v402 = vsub_f32(vmul_f32(*(v169 + 16), vdup_n_s32(0x411CE80Au)), vmla_f32(vmul_f32(v288, vneg_f32(v289)), v290, v287));
    *&v402[8] = v291;
    v292 = *(a1 + 192);
    if (v292)
    {
      v293 = v292 + *(a1 + 184) - 1;
      v294 = *(a1 + 160);
      if (*(v294[v293 / 0xAA] + 3 * (v293 % 0xAA)) - v392 > 0.1)
      {
        v295 = *(a1 + 168);
        *(a1 + 192) = 0;
        v296 = (v295 - v294) >> 3;
        if (v296 >= 3)
        {
          do
          {
            operator delete(*v294);
            v297 = *(a1 + 168);
            v294 = (*(a1 + 160) + 8);
            *(a1 + 160) = v294;
            v296 = (v297 - v294) >> 3;
          }

          while (v296 > 2);
        }

        if (v296 == 1)
        {
          v298 = 85;
        }

        else
        {
          if (v296 != 2)
          {
            goto LABEL_290;
          }

          v298 = 170;
        }

        *(a1 + 184) = v298;
      }
    }

LABEL_290:
    sub_1007CF040((a1 + 152), &v392, v402);
    v379 += 6;
    if (v379 - *v191 == 4080)
    {
      v299 = v191[1];
      ++v191;
      v379 = v299;
    }

    v169 += 56;
    if (v169 - *v358 == 4088)
    {
      v169 = v358[1];
      ++v358;
    }

    v204 = v204 + v275;
    ++v378;
    v206 = v362;
    v205 = v364;
    v201 = v392;
    v207 = v366;
    v208 = v373;
  }

  while (v268 != v340);
  *&v304 = v342 + v341;
  *&v305 = v341;
  *(&v407 + 4) = __PAIR64__(v305, v304);
  v306 = v342;
  *(&v407 + 3) = v306;
  v307 = *(a1 + 2536);
  *buf = vrev64_s32(v307);
  v308 = 0.0;
  v309 = 0.0;
  if (v328 > 0)
  {
    v309 = v327 / v328;
  }

  *&v312 = v330 - v329;
  *&v405 = __PAIR64__(v312, LODWORD(v309));
  v313 = v350 - v349;
  v301 = v345;
  *&buf[28] = v301;
  *&buf[16] = v313;
  *&buf[12] = v344;
  *&buf[8] = v209;
  v302 = v211;
  *(&v405 + 2) = v302;
  v303 = v343;
  *(&v406 + 2) = v303;
  v314 = v332;
  if (v351 >= 1)
  {
    v308 = v339 / v351;
  }

  *&buf[24] = v308;
  *&buf[20] = v346;
  v310 = v348;
  *(&v405 + 3) = v310;
  v311 = v347;
  *&v406 = v311;
  *(&v406 + 1) = v210;
  if (v340)
  {
    v315 = v384 / v340;
  }

  else
  {
    v315 = 0.0;
  }

  *&v408 = v315;
  v316 = *(a1 + 448);
  *(&v408 + 1) = *v377 + v316;
  v317 = sqrt(v204 / v326);
LABEL_307:
  v318 = *v307.i32 * 100.0;
  *&v388 = v318;
  *(&v388 + 1) = v317;
  v319 = v203;
  *&v389 = v203;
  *(&v389 + 1) = v202;
  v320 = v202;
  v321 = *v314 + v316;
  v322 = v316 + *v359;
  if (v322 - v321 > 0.0)
  {
    v323 = 2.0 / (v322 - v321);
    *(&v408 + 1) = v323;
  }

  v391[0] = 0.0;
  if (sub_1007CF13C(&v388, v391))
  {
    *v402 = v391[0];
    *&v402[8] = v322;
    *&v402[16] = v388;
    v403 = v389;
    sub_1007CF1E8((a1 + 344), v402);
  }

  else
  {
    if (qword_1025D44C0 != -1)
    {
      sub_10193B310();
    }

    v324 = qword_1025D44C8;
    if (os_log_type_enabled(qword_1025D44C8, OS_LOG_TYPE_ERROR))
    {
      *v402 = 134218752;
      *&v402[4] = v318;
      *&v402[12] = 2048;
      *&v402[14] = v317;
      *&v402[22] = 2048;
      *&v402[24] = v319;
      LOWORD(v403) = 2048;
      *(&v403 + 2) = v320;
      _os_log_impl(dword_100000000, v324, OS_LOG_TYPE_ERROR, "[FormModels] Invalid StrideLength features (%.f,%.f,%.f,%.f)", v402, 0x2Au);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10193B6C0(v402);
      *v397 = 134218752;
      *&v397[4] = v318;
      *&v397[12] = 2048;
      *&v397[14] = v317;
      v398 = 2048;
      v399 = v319;
      v400 = 2048;
      v401 = v320;
      v325 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "void CLRunning::FormModels::feedDeviceMotion(const DeviceMotionQueue &, const StepQueue &)", "%s\n", v325);
      if (v325 != v402)
      {
        free(v325);
      }
    }
  }

  *&v409 = v321;
  *(&v409 + 1) = v322;
  sub_1007CF298((a1 + 296), buf);
  if (__p)
  {
    v395 = __p;
    operator delete(__p);
  }

  v62 = v331;
LABEL_69:
  if (*(a1 + 432) < v387)
  {
    *(a1 + 432) = v387;
    *(a1 + 424) = *v62;
  }

LABEL_71:
  v69 = *(a1 + 192);
  if (v69 >= 0x101)
  {
    v70 = (a1 + 328);
    v71 = &unk_102659000;
    v72 = &unk_102659000;
    do
    {
      if (!*(a1 + 336))
      {
        break;
      }

      v73 = *(a1 + 304);
      v74 = *(a1 + 312) == v73 ? 0 : *(v73 + 8 * (v70->i64[0] / 0x22uLL)) + 120 * (v70->i64[0] % 0x22uLL);
      v75 = *(a1 + 184);
      v76 = v75 / 0xAA;
      v77 = *(a1 + 160);
      if (*(a1 + 168) == v77)
      {
        v81 = 0;
        *v402 = v77 + 8 * (v75 / 0xAA);
        *&v402[8] = 0;
        v80 = (v77 + 8 * ((v75 + v69) / 0xAA));
      }

      else
      {
        v78 = *(v77 + 8 * v76);
        *v402 = v77 + 8 * v76;
        *&v402[8] = v78 + 24 * (v75 % 0xAA);
        v79 = v75 + v69;
        v80 = (v77 + 8 * (v79 / 0xAA));
        v81 = *v80 + 24 * (v79 % 0xAA);
      }

      *buf = v80;
      *&buf[8] = v81;
      sub_1007CF39C(v402, buf, a1 + 472, v397);
      v82 = *(*(*(a1 + 160) + 8 * ((*(a1 + 184) + 128) / 0xAAuLL)) + 24 * ((*(a1 + 184) + 128) % 0xAAuLL));
      v83 = v386[1];
      if (v386[2] == v83)
      {
        v87 = 0;
      }

      else
      {
        v84 = v386[4];
        v85 = ((v84 * v7) >> 64) >> 5;
        v86 = v84 - 73 * v85;
        v87 = (*(v83 + 8 * v85) + 56 * v86);
        v88 = *v385 + v84;
        v89 = ((v88 * v7) >> 64) >> 5;
        v90 = v88 - 73 * v89;
        if ((*(v83 + 8 * v89) + 56 * v90) != v87)
        {
          v91 = v72;
          v92 = v7;
          v93 = v90 + 73 * ((8 * v89 - 8 * v85) >> 3);
          v94 = v93 - v86;
          if (v93 == v86)
          {
            v7 = v92;
          }

          else
          {
            v95 = v71;
            v96 = v83 + 8 * v85;
            do
            {
              v97 = v94 >> 1;
              *v402 = v96;
              *&v402[8] = v87;
              sub_1007D4114(v402, v94 >> 1);
              v98 = *&v402[8];
              if (*(*&v402[8] + 40) < v82)
              {
                v87 = (*&v402[8] + 56);
                *&v402[8] += 56;
                v96 = *v402;
                if (v98 + 56 - **v402 == 4088)
                {
                  v96 = *v402 + 8;
                  v87 = *(*v402 + 8);
                }

                v97 = v94 + ~v97;
              }

              v94 = v97;
            }

            while (v97);
            v7 = v92;
            v71 = v95;
          }

          v72 = v91;
        }
      }

      v99 = sub_10011E6AC(v87);
      v102 = v82 + *(a1 + 448);
      if (v102 > *(v74 + 88))
      {
        v103 = ((v101 * *&v397[16]) + (*&v397[12] * v100)) + (*&v397[8] * v99);
        v104 = fabsf(v103);
        v105 = v71[504];
        if (v105 <= 0.0)
        {
          v106 = v104;
        }

        else
        {
          v106 = v104;
          v107 = v82 - v105;
          if (v107 <= 0.0)
          {
            v108 = 0.0;
          }

          else
          {
            v108 = v107 * (v72[503] + v106) * 0.5;
          }

          *&qword_102659FC8 = *&qword_102659FC8 + v108;
          *&v109 = v103;
          if (*&qword_1025D8730 < *&v109)
          {
            qword_1025D8730 = v109;
          }

          if (*&qword_1025D8738 > *&v109)
          {
            qword_1025D8738 = v109;
          }
        }

        v72[503] = v106;
        v71[504] = v82;
      }

      if (v102 >= *(v74 + 104))
      {
        v110 = *&qword_102659FC8;
        v111 = *&qword_1025D8730 - *&qword_1025D8738;
        *(v74 + 60) = v111;
        *(v74 + 64) = v110;
        v112 = sub_1007CF514(a1, v74);
        if (qword_1025D44C0 != -1)
        {
          sub_10193B310();
        }

        v113 = (v112 * 0.001);
        v114 = qword_1025D44C8;
        if (os_log_type_enabled(qword_1025D44C8, OS_LOG_TYPE_DEBUG))
        {
          v115 = *(v74 + 96);
          v116 = v82 + *(a1 + 448);
          *v402 = 134349824;
          *&v402[4] = v115;
          *&v402[12] = 2050;
          *&v402[14] = v116;
          *&v402[22] = 2050;
          *&v402[24] = v82;
          LOWORD(v403) = 2048;
          *(&v403 + 2) = v113;
          _os_log_impl(dword_100000000, v114, OS_LOG_TYPE_DEBUG, "[FormModels] VerticalOscillationEvent,startTime,%{public}.2f,endTime,%{public}.2f,timestamp,%{public}.2f,displacement,%.3f", v402, 0x2Au);
        }

        if (sub_10000A100(121, 2))
        {
          bzero(v402, 0x65CuLL);
          if (qword_1025D44C0 != -1)
          {
            sub_10193B310();
          }

          v117 = *(v74 + 96);
          v118 = v82 + *(a1 + 448);
          *buf = 134349824;
          *&buf[4] = v117;
          *&buf[12] = 2050;
          *&buf[14] = v118;
          *&buf[22] = 2050;
          *&buf[24] = v82;
          LOWORD(v405) = 2048;
          *(&v405 + 2) = v113;
          v119 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "void CLRunning::FormModels::feedDeviceMotion(const DeviceMotionQueue &, const StepQueue &)", "%s\n", v119);
          if (v119 != v402)
          {
            free(v119);
          }
        }

        *v70 = vaddq_s64(*v70, xmmword_101C66230);
        sub_1007D56B8(a1 + 296, 1);
        if (*(a1 + 336))
        {
          v74 = *(*(a1 + 304) + 8 * (*(a1 + 328) / 0x22uLL)) + 120 * (*(a1 + 328) % 0x22uLL);
        }

        if (*(v74 + 112) == 1)
        {
          *v402 = v82;
          *&v402[8] = v113;
          sub_1007CF6D8((a1 + 248), v402);
        }

        qword_1025D8730 = 0xFFEFFFFFFFFFFFFFLL;
        qword_1025D8738 = 0x7FEFFFFFFFFFFFFFLL;
        v72[503] = 0.0;
        v71[504] = 0.0;
        qword_102659FC8 = 0;
      }

      *(a1 + 184) = vaddq_s64(*(a1 + 184), xmmword_101C66230);
      sub_10027E208(a1 + 152, 1);
      v69 = *(a1 + 192);
    }

    while (v69 > 0x100);
  }

  v120 = *(a1 + 2608) + 1;
  *(a1 + 2608) = v120;
  v121 = v120 & 7;
  if (*v385 >= 0x80uLL && v121 == 0)
  {
    v123 = v386[4] + *v385;
    v124 = ((v123 * v7) >> 64) >> 5;
    v125 = v386[1];
    v126 = v386[2];
    v127 = (v125 + 8 * v124);
    v128 = *v127;
    v129 = *v127 + 56 * (v123 - 73 * v124);
    if (v126 == v125)
    {
      v129 = 0;
    }

    v130 = v129 - v128;
    v131 = 0x6DB6DB6DB6DB6DB7 * ((v129 - v128) >> 3);
    if (v130 < 7169)
    {
      v139 = 200 - v131;
      v140 = ((v139 * v7) >> 64) >> 5;
      v134 = &v127[-v140];
      v135 = (*v134 + 56 * (73 * v140 - v139) + 4032);
    }

    else
    {
      v132 = v131 - 128;
      v133 = ((v132 * v7) >> 64) >> 5;
      v134 = &v127[v133];
      v135 = (*v134 + 56 * (v132 - 73 * v133));
    }

    v141 = (v128 + 56 * (v123 - 73 * v124));
    if (v126 == v125)
    {
      v142 = 0;
    }

    else
    {
      v142 = v141;
    }

    sub_1007D58EC(v402, v134, v135, v127, v142);
    *(a1 + 2608) = 0;
    if ((v383 & 1) != 0 || *(a1 + 2612) == 1)
    {
      sub_1007CF798(a1, v402);
    }

    sub_1005A842C(v402);
  }

  v143 = *(a1 + 96);
  if (v143 >= 0x101)
  {
    do
    {
      *(a1 + 96) = v143 - 1;
      ++*(a1 + 88);
      sub_10027E208(a1 + 56, 1);
      v143 = *(a1 + 96);
    }

    while (v143 > 0x100);
  }

  v144 = *(a1 + 144);
  if (v144 >= 0x51)
  {
    do
    {
      *(a1 + 144) = v144 - 1;
      ++*(a1 + 136);
      sub_10027E208(a1 + 104, 1);
      v144 = *(a1 + 144);
    }

    while (v144 > 0x50);
  }

  v145 = *(a1 + 240);
  if (v145 >= 0x101)
  {
    do
    {
      *(a1 + 240) = v145 - 1;
      ++*(a1 + 232);
      sub_100014444(a1 + 200, 1);
      v145 = *(a1 + 240);
    }

    while (v145 > 0x100);
  }

  v146 = *(a1 + 288);
  if (v146 >= 0x23)
  {
    do
    {
      ++*(a1 + 280);
      *(a1 + 288) = v146 - 1;
      sub_100014444(a1 + 248, 1);
      v146 = *(a1 + 288);
    }

    while (v146 > 0x22);
  }

  v147 = *(a1 + 384);
  if (v147 >= 0x23)
  {
    do
    {
      ++*(a1 + 376);
      *(a1 + 384) = v147 - 1;
      sub_10047C698(a1 + 344, 1);
      v147 = *(a1 + 384);
    }

    while (v147 > 0x22);
  }

  v148 = *(a1 + 2656);
  if (v148 >= 0x441)
  {
    do
    {
      v149 = *(a1 + 2648);
      *(a1 + 2656) = v148 - 1;
      *(a1 + 2648) = v149 + 1;
      sub_1007D5E78(a1 + 2616, 1);
      v148 = *(a1 + 2656);
    }

    while (v148 > 0x440);
  }
}