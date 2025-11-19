void sub_10028E324(uint64_t a1)
{
  [*(*(a1 + 32) + 32) removeObjectForKey:*(a1 + 40)];
  v2 = [*(*(a1 + 32) + 8) sessionState];
  [*(*(a1 + 32) + 8) unregisterNBAMMSSessionForToken:*(a1 + 40)];
  *(*(a1 + 32) + 24) = [*(*(a1 + 32) + 8) sessionState];
  v3 = [*(*(a1 + 32) + 16) sessionState];
  [*(*(a1 + 32) + 16) unregisterNBAMMSSessionForToken:*(a1 + 40)];
  *(*(a1 + 32) + 28) = [*(*(a1 + 32) + 16) sessionState];
  v4 = *(a1 + 32);
  v5 = *(v4 + 24);
  if (v2 == v5)
  {
    if (v2)
    {
      return;
    }

    v6 = *(v4 + 28);
    if (v3 == v6 || v6)
    {
      return;
    }
  }

  else if (v5 || *(v4 + 28))
  {
    return;
  }

  [*(v4 + 64) descriptions];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v7 = v14 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v19 count:16];
  if (v8)
  {
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
        {
          v12 = *(*(&v13 + 1) + 8 * v10);
          *buf = 138412290;
          v18 = v12;
          _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "#find-range,GF-CA: %@", buf, 0xCu);
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v13 objects:v19 count:16];
    }

    while (v8);
  }

  [*(*(a1 + 32) + 64) submitAnalytics];
}

id sub_10028E614(void *a1)
{
  [*(a1[4] + 8) refreshRangingForToken:a1[5] withNewStartOptions:a1[6]];
  v2 = a1[5];
  v3 = *(a1[4] + 16);
  v4 = a1[6];

  return [v3 refreshRangingForToken:v2 withNewStartOptions:v4];
}

id sub_10028E708(void *a1)
{
  [*(a1[4] + 8) updateAlgorithmAidingData:a1[6] token:a1[5]];
  v2 = a1[5];
  v3 = *(a1[4] + 16);
  v4 = a1[6];

  return [v3 updateAlgorithmAidingData:v4 token:v2];
}

id sub_10028E7FC(void *a1)
{
  [*(a1[4] + 8) updateSignallingData:a1[6] token:a1[5]];
  v2 = a1[5];
  v3 = *(a1[4] + 16);
  v4 = a1[6];

  return [v3 updateSignallingData:v4 token:v2];
}

void sub_10028EA68(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 96), 8);

  _Unwind_Resume(a1);
}

void sub_10028EA88(void *a1)
{
  v1 = a1 + 4;
  v2 = [*(a1[4] + 8) printableState];
  v3 = *(a1[5] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [*(*v1 + 16) printableState];
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  [*(*(a1[5] + 8) + 40) addObjectsFromArray:*(*(a1[6] + 8) + 40)];
  v8 = *(*(a1[5] + 8) + 40);
  v9 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"TokensToMutualAuthSessions (%d)", [*(*v1 + 32) count]);
  [v8 addObject:v9];

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = *(a1[4] + 32);
  v10 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v10)
  {
    v23 = *v31;
    do
    {
      v24 = v10;
      for (i = 0; i != v24; i = i + 1)
      {
        if (*v31 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v30 + 1) + 8 * i);
        v13 = objc_opt_new();
        v14 = [v12 descriptionInternal];
        v15 = [NSString stringWithFormat:@"    Token %@: ", v14];
        [v13 appendString:v15];

        v28 = 0u;
        v29 = 0u;
        v26 = 0u;
        v27 = 0u;
        v16 = [*(a1[4] + 32) objectForKey:v12];
        v17 = [v16 countByEnumeratingWithState:&v26 objects:v34 count:16];
        if (v17)
        {
          v18 = *v27;
          do
          {
            for (j = 0; j != v17; j = j + 1)
            {
              if (*v27 != v18)
              {
                objc_enumerationMutation(v16);
              }

              v20 = [*(*(&v26 + 1) + 8 * j) identityString];
              v21 = [NSString stringWithFormat:@"    ses-%@ ", v20];
              [v13 appendString:v21];
            }

            v17 = [v16 countByEnumeratingWithState:&v26 objects:v34 count:16];
          }

          while (v17);
        }

        [*(*(a1[5] + 8) + 40) addObject:v13];
      }

      v10 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v10);
  }
}

void sub_10028F3F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002903D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
  }

  _Unwind_Resume(a1);
}

void sub_1002905F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_10000AD84(a10);
  }

  _Unwind_Resume(a1);
}

void sub_1002906CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    sub_10000AD84(a13);
  }

  a9.super_class = NIServerFindingRangingProvider;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_10029120C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, id location)
{
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_100291C88(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_100292784(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, void *__p, uint64_t a60, uint64_t a61, char a62, uint64_t a63)
{
  _Block_object_dispose(&a62, 8);

  _Unwind_Resume(a1);
}

void sub_100292920(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(*(a1 + 32) + 8) + 40);
  v4 = [NSString stringWithFormat:@"        %@: %@", a2, a3];
  [v3 addObject:?];
}

void sub_1002935C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_100293600(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if (WeakRetained[9])
    {
      v4 = *(a1 + 56);
      if ((v4 - 2) >= 3)
      {
        if (v4 == 1)
        {
          [*(a1 + 32) rangingBecameAvailable];
        }

        else if (!v4)
        {
          __assert_rtn("[NIServerFindingRangingProvider rangingServiceDidUpdateState:cause:]_block_invoke", "NIServerFindingRanging.mm", 4199, "false");
        }
      }

      else
      {
        v12 = 0u;
        v13 = 0u;
        v10 = 0u;
        v11 = 0u;
        v5 = WeakRetained[14];
        v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v6)
        {
          v7 = *v11;
          do
          {
            for (i = 0; i != v6; i = i + 1)
            {
              if (*v11 != v7)
              {
                objc_enumerationMutation(v5);
              }

              v9 = *(*(&v10 + 1) + 8 * i);
              [*(a1 + 40) _resetRangingStateForToken:{v9, v10}];
              [*(a1 + 32) didStopRangingWithPeer:v9];
            }

            v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
          }

          while (v6);
        }

        [*(a1 + 32) rangingBecameUnavailable];
      }
    }

    else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004B732C();
    }
  }
}

void sub_100295078(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1002951C8(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_100295420(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_100295BF4(_Unwind_Exception *a1)
{
  v4 = v2;

  _Unwind_Resume(a1);
}

void sub_10029686C(id a1)
{
  if (+[NIPlatformInfo isInternalBuild])
  {
    v1 = +[NSUserDefaults standardUserDefaults];
    byte_1009EBD48 = [v1 BOOLForKey:@"FindingDisableMutualAuth"];

    v2 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      v3[0] = 67109120;
      v3[1] = byte_1009EBD48;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#find-range,#auth Disable mutual auth: %d", v3, 8u);
    }
  }

  else
  {
    byte_1009EBD48 = 0;
  }
}

char *sub_100296970(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t __len)
{
  v5 = __dst;
  if (__len < 1)
  {
    return v5;
  }

  v6 = __len;
  v7 = __src;
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (v9 - v10 < __len)
  {
    v11 = *a1;
    v12 = &v10[__len - *a1];
    if (v12 < 0)
    {
      sub_100019B38();
    }

    v13 = v9 - v11;
    if (2 * v13 > v12)
    {
      v12 = 2 * v13;
    }

    if (v13 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v14 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      operator new();
    }

    v30 = (__dst - v11);
    v31 = (__dst - v11 + __len);
    v32 = (__dst - v11);
    do
    {
      v33 = *v7++;
      *v32++ = v33;
      --v6;
    }

    while (v6);
    v34 = *(a1 + 8) - __dst;
    memcpy(v31, __dst, v34);
    v35 = &v31[v34];
    *(a1 + 8) = v5;
    v36 = *a1;
    v37 = &v30[*a1 - v5];
    memcpy(v37, *a1, &v5[-*a1]);
    *a1 = v37;
    *(a1 + 8) = v35;
    *(a1 + 16) = 0;
    if (v36)
    {
      operator delete(v36);
    }

    return v30;
  }

  v15 = v10 - __dst;
  if (v10 - __dst >= __len)
  {
    v26 = &__dst[__len];
    v27 = &v10[-__len];
    v28 = *(a1 + 8);
    if (v10 >= __len)
    {
      do
      {
        v29 = *v27++;
        *v28++ = v29;
      }

      while (v27 != v10);
    }

    *(a1 + 8) = v28;
    if (v10 != v26)
    {
      memmove(&__dst[__len], __dst, v10 - v26);
    }

    v23 = v5;
    v24 = v7;
    v25 = v6;
    goto LABEL_27;
  }

  v17 = a4 - &__src[v15];
  if (a4 != &__src[v15])
  {
    memmove(*(a1 + 8), &__src[v15], a4 - &__src[v15]);
  }

  v18 = &v10[v17];
  *(a1 + 8) = &v10[v17];
  if (v15 >= 1)
  {
    v19 = &v5[v6];
    v20 = &v10[v17];
    if (&v18[-v6] < v10)
    {
      v21 = a4 - &v7[v6];
      v22 = a4 - v7;
      do
      {
        v5[v22++] = v5[v21++];
      }

      while (&v5[v21] < v10);
      v20 = &v5[v22];
    }

    *(a1 + 8) = v20;
    if (v18 != v19)
    {
      memmove(&v5[v6], v5, v18 - v19);
    }

    v23 = v5;
    v24 = v7;
    v25 = v10 - v5;
LABEL_27:
    memmove(v23, v24, v25);
  }

  return v5;
}

uint64_t sub_100296B98(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    sub_100009AC4(result, a4);
  }

  return result;
}

void sub_100296BF0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_100296C2C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1009A1B80;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_100296CD4(uint64_t a1)
{

  operator delete();
}

id sub_100296D88(uint64_t a1, void *a2)
{
  *a2 = off_1009A1BD0;
  result = *(a1 + 8);
  a2[1] = result;
  return result;
}

void sub_100296DD8(id *a1)
{

  operator delete(a1);
}

void sub_100296E14(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  dispatch_assert_queue_V2(*(*(a1 + 8) + 8));
  [*(a1 + 8) _serviceRequestStatusUpdate:a3];
  if (v5)
  {

    sub_10000AD84(v5);
  }
}

void sub_100296E88(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_10000AD84(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100296EA0(uint64_t a1, uint64_t a2)
{
  if (sub_100023EF4(a2, &off_1009A1C30))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100296F18(uint64_t a1)
{

  operator delete();
}

id sub_100296FCC(uint64_t a1, void *a2)
{
  *a2 = off_1009A1C50;
  result = *(a1 + 8);
  a2[1] = result;
  return result;
}

void sub_10029701C(id *a1)
{

  operator delete(a1);
}

void sub_100297058(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  dispatch_assert_queue_V2(*(*(a1 + 8) + 8));
  [*(a1 + 8) _didReceiveNewSolution:a3];
  if (v5)
  {

    sub_10000AD84(v5);
  }
}

void sub_1002970CC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_10000AD84(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002970E4(uint64_t a1, uint64_t a2)
{
  if (sub_100023EF4(a2, &off_1009A1CB0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10029715C(uint64_t a1)
{

  operator delete();
}

id sub_100297210(uint64_t a1, void *a2)
{
  *a2 = off_1009A1CD0;
  result = *(a1 + 8);
  a2[1] = result;
  return result;
}

void sub_100297260(id *a1)
{

  operator delete(a1);
}

void sub_10029729C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  dispatch_assert_queue_V2(*(*(a1 + 8) + 8));
  [*(a1 + 8) _didReceivePeerData:a3];
  if (v5)
  {

    sub_10000AD84(v5);
  }
}

void sub_100297310(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_10000AD84(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100297328(uint64_t a1, uint64_t a2)
{
  if (sub_100023EF4(a2, &off_1009A1D30))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1002973A0(uint64_t a1)
{

  operator delete();
}

id sub_100297454(uint64_t a1, void *a2)
{
  *a2 = off_1009A1D50;
  result = *(a1 + 8);
  a2[1] = result;
  return result;
}

void sub_1002974A4(id *a1)
{

  operator delete(a1);
}

void sub_1002974E0(uint64_t a1, void *a2, unsigned int *a3)
{
  v4 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  v5 = *a3;
  dispatch_assert_queue_V2(*(*(a1 + 8) + 8));
  [*(a1 + 8) _didReceiveInvalidation:v5];
  if (v4)
  {

    sub_10000AD84(v4);
  }
}

void sub_100297554(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_10000AD84(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10029756C(uint64_t a1, uint64_t a2)
{
  if (sub_100023EF4(a2, &off_1009A1DB0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1002975E4(uint64_t a1)
{

  operator delete();
}

id sub_100297698(uint64_t a1, void *a2)
{
  *a2 = off_1009A1DD0;
  result = *(a1 + 8);
  a2[1] = result;
  return result;
}

void sub_1002976E8(id *a1)
{

  operator delete(a1);
}

void sub_100297724(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  dispatch_assert_queue_V2(*(*(a1 + 8) + 8));
  [*(a1 + 8) _didReceiveUnsuccessfulSolution:a3];
  if (v5)
  {

    sub_10000AD84(v5);
  }
}

void sub_100297798(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_10000AD84(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002977B0(uint64_t a1, uint64_t a2)
{
  if (sub_100023EF4(a2, &off_1009A1E30))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100297800(uint64_t a1)
{
  sub_10033B624(a1);

  operator delete();
}

void sub_100297840(uint64_t a1)
{
  sub_10033B624(a1 - 8);

  operator delete();
}

void *sub_100297900(void *a1, void *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_10098B6C8;
  sub_10031455C(a1 + 3, *a2);
  return a1;
}

uint64_t sub_100297960@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(result + 16);
  return result;
}

uint64_t sub_100297980(uint64_t result, void *a2, uint64_t a3, float a4)
{
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  *a3 = a4;
  *(a3 + 4) = result;
  *(a3 + 12) = 2080;
  *(a3 + 14) = v5;
  return result;
}

void sub_1002979A4(void *a1@<X0>, const char *a2@<X3>, uint8_t *a3@<X4>, NSObject *a4@<X8>)
{

  _os_log_error_impl(a1, a4, OS_LOG_TYPE_ERROR, a2, a3, 0x16u);
}

uint64_t sub_1002979D0(uint64_t result, float a2, uint64_t a3, uint64_t a4)
{
  *a4 = a2;
  *(a4 + 4) = result;
  *(a4 + 12) = 2112;
  *(a4 + 14) = v4;
  return result;
}

void sub_1002979FC()
{
  if ((atomic_load_explicit(&qword_1009E9448, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E9448))
  {
    sub_100004A08(byte_1009E9430, "PRRoseProviderNetworkListener");
    __cxa_atexit(&std::string::~string, byte_1009E9430, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E9448);
  }
}

void sub_100297AAC()
{
  if ((atomic_load_explicit(&qword_1009E9468, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E9468))
  {
    sub_100004A08(&qword_1009E9450, "com.apple.nearbyd.accessory.download");
    __cxa_atexit(&std::string::~string, &qword_1009E9450, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E9468);
  }
}

void sub_100297B5C()
{
  if ((atomic_load_explicit(&qword_1009E9488, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E9488))
  {
    sub_100004A08(&qword_1009E9470, "com.apple.nearbyd.accessory.files");
    __cxa_atexit(&std::string::~string, &qword_1009E9470, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E9488);
  }
}

void sub_100297C0C()
{
  if ((atomic_load_explicit(&qword_1009E94A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E94A8))
  {
    sub_100004A08(byte_1009E9490, "MA_");
    __cxa_atexit(&std::string::~string, byte_1009E9490, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E94A8);
  }
}

void sub_100297CBC()
{
  if ((atomic_load_explicit(&qword_1009E94C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E94C8))
  {
    sub_100004A08(byte_1009E94B0, "MB_");
    __cxa_atexit(&std::string::~string, byte_1009E94B0, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E94C8);
  }
}

void sub_100297D6C()
{
  if ((atomic_load_explicit(&qword_1009E94E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E94E8))
  {
    sub_100004A08(byte_1009E94D0, "D");
    __cxa_atexit(&std::string::~string, byte_1009E94D0, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E94E8);
  }
}

void sub_100297E1C()
{
  if ((atomic_load_explicit(&qword_1009E9508, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E9508))
  {
    sub_100004A08(&qword_1009E94F0, "A");
    __cxa_atexit(&std::string::~string, &qword_1009E94F0, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E9508);
  }
}

void sub_100297ECC()
{
  if ((atomic_load_explicit(&qword_1009E9528, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E9528))
  {
    sub_100004A08(byte_1009E9510, "FAS.bin");
    __cxa_atexit(&std::string::~string, byte_1009E9510, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E9528);
  }
}

void sub_100297F7C()
{
  if ((atomic_load_explicit(&qword_1009E9548, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1009E9548))
    {
      memset(v0, 0, 32);
      v0[2] = xmmword_100568BA0;
      qword_1009E9538 = 0;
      unk_1009E9540 = 0;
      qword_1009E9530 = 0;
      sub_100019AC4(&qword_1009E9530, v0, &v1, 6uLL);
      __cxa_atexit(sub_100017360, &qword_1009E9530, &_mh_execute_header);
      __cxa_guard_release(&qword_1009E9548);
    }
  }
}

void sub_100298070()
{
  v0 = objc_autoreleasePoolPush();
  sub_10041C9CC();
  v1 = std::string::insert(&v37, 0, "reverseLUT_A");
  v2 = *&v1->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v1->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v2;
  v1->__r_.__value_.__l.__size_ = 0;
  v1->__r_.__value_.__r.__words[2] = 0;
  v1->__r_.__value_.__r.__words[0] = 0;
  v3 = std::string::append(&v38, ".bin");
  v4 = *&v3->__r_.__value_.__l.__data_;
  qword_1009F2A88 = v3->__r_.__value_.__r.__words[2];
  xmmword_1009F2A78 = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F2A78, &_mh_execute_header);
  sub_10041C9CC();
  v5 = std::string::insert(&v37, 0, "reverseLUT_A");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v38, ".bin");
  v8 = *&v7->__r_.__value_.__l.__data_;
  qword_1009F2AA0 = v7->__r_.__value_.__r.__words[2];
  xmmword_1009F2A90 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F2A90, &_mh_execute_header);
  sub_10041C9CC();
  v9 = std::string::insert(&v37, 0, "reverseLUT_A");
  v10 = *&v9->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  v11 = std::string::append(&v38, ".bin");
  v12 = *&v11->__r_.__value_.__l.__data_;
  qword_1009F2AB8 = v11->__r_.__value_.__r.__words[2];
  xmmword_1009F2AA8 = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F2AA8, &_mh_execute_header);
  sub_10041C9CC();
  v13 = std::string::insert(&v37, 0, "reverseLUT_A");
  v14 = *&v13->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  v15 = std::string::append(&v38, ".bin");
  v16 = *&v15->__r_.__value_.__l.__data_;
  qword_1009F2AD0 = v15->__r_.__value_.__r.__words[2];
  xmmword_1009F2AC0 = v16;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F2AC0, &_mh_execute_header);
  sub_10041C9CC();
  v17 = std::string::insert(&v37, 0, "reverseLUT_A");
  v18 = *&v17->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v18;
  v17->__r_.__value_.__l.__size_ = 0;
  v17->__r_.__value_.__r.__words[2] = 0;
  v17->__r_.__value_.__r.__words[0] = 0;
  v19 = std::string::append(&v38, ".bin");
  v20 = *&v19->__r_.__value_.__l.__data_;
  qword_1009F2AE8 = v19->__r_.__value_.__r.__words[2];
  xmmword_1009F2AD8 = v20;
  v19->__r_.__value_.__l.__size_ = 0;
  v19->__r_.__value_.__r.__words[2] = 0;
  v19->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F2AD8, &_mh_execute_header);
  sub_10041C9CC();
  v21 = std::string::insert(&v37, 0, "reverseLUT_A");
  v22 = *&v21->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v22;
  v21->__r_.__value_.__l.__size_ = 0;
  v21->__r_.__value_.__r.__words[2] = 0;
  v21->__r_.__value_.__r.__words[0] = 0;
  v23 = std::string::append(&v38, ".bin");
  v24 = *&v23->__r_.__value_.__l.__data_;
  qword_1009F2B00 = v23->__r_.__value_.__r.__words[2];
  xmmword_1009F2AF0 = v24;
  v23->__r_.__value_.__l.__size_ = 0;
  v23->__r_.__value_.__r.__words[2] = 0;
  v23->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F2AF0, &_mh_execute_header);
  sub_10041C9CC();
  v25 = std::string::insert(&v37, 0, "reverseLUT_A");
  v26 = *&v25->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v26;
  v25->__r_.__value_.__l.__size_ = 0;
  v25->__r_.__value_.__r.__words[2] = 0;
  v25->__r_.__value_.__r.__words[0] = 0;
  v27 = std::string::append(&v38, ".bin");
  v28 = *&v27->__r_.__value_.__l.__data_;
  qword_1009F2B18 = v27->__r_.__value_.__r.__words[2];
  xmmword_1009F2B08 = v28;
  v27->__r_.__value_.__l.__size_ = 0;
  v27->__r_.__value_.__r.__words[2] = 0;
  v27->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F2B08, &_mh_execute_header);
  sub_10041C9CC();
  v29 = std::string::insert(&v37, 0, "reverseLUT_A");
  v30 = *&v29->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v29->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v30;
  v29->__r_.__value_.__l.__size_ = 0;
  v29->__r_.__value_.__r.__words[2] = 0;
  v29->__r_.__value_.__r.__words[0] = 0;
  v31 = std::string::append(&v38, ".bin");
  v32 = *&v31->__r_.__value_.__l.__data_;
  qword_1009F2B30 = v31->__r_.__value_.__r.__words[2];
  xmmword_1009F2B20 = v32;
  v31->__r_.__value_.__l.__size_ = 0;
  v31->__r_.__value_.__r.__words[2] = 0;
  v31->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F2B20, &_mh_execute_header);
  sub_10041C9CC();
  v33 = std::string::insert(&v37, 0, "reverseLUT_A");
  v34 = *&v33->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v33->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v34;
  v33->__r_.__value_.__l.__size_ = 0;
  v33->__r_.__value_.__r.__words[2] = 0;
  v33->__r_.__value_.__r.__words[0] = 0;
  v35 = std::string::append(&v38, ".bin");
  v36 = *&v35->__r_.__value_.__l.__data_;
  qword_1009F2B48 = v35->__r_.__value_.__r.__words[2];
  xmmword_1009F2B38 = v36;
  v35->__r_.__value_.__l.__size_ = 0;
  v35->__r_.__value_.__r.__words[2] = 0;
  v35->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F2B38, &_mh_execute_header);
  objc_autoreleasePoolPop(v0);
}

void sub_1002986B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_100298768(id a1)
{
  v1 = [[NIServerUsageAnalyticsAggregator alloc] _initInternal];
  v2 = qword_1009F2B78;
  qword_1009F2B78 = v1;
}

char *sub_100298928(uint64_t a1)
{
  v1 = [*(a1 + 32) _internalPrintableState];
  v2 = sub_10003FA2C(@"Aggregated Usage", v1);

  return v2;
}

void sub_1002989F4(uint64_t a1)
{
  v2 = qword_1009F2B70;
  if (os_log_type_enabled(qword_1009F2B70, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#ca-aggr,Notify unlock since boot", buf, 2u);
  }

  *(*(a1 + 32) + 16) = 1;
  v3 = +[BGSystemTaskScheduler sharedScheduler];
  [v3 deregisterTaskWithIdentifier:off_1009EBD50];

  v4 = +[BGSystemTaskScheduler sharedScheduler];
  v5 = *(a1 + 32);
  v6 = *(v5 + 8);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100298C78;
  v16[3] = &unk_1009A2298;
  v16[4] = v5;
  [v4 registerForTaskWithIdentifier:off_1009EBD50 usingQueue:v6 launchHandler:v16];

  v7 = +[BGSystemTaskScheduler sharedScheduler];
  v8 = [v7 taskRequestForIdentifier:off_1009EBD50];

  if (v8)
  {
    v9 = qword_1009F2B70;
    if (os_log_type_enabled(qword_1009F2B70, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#ca-aggr,Aggregation task previously requested - skip restarting", buf, 2u);
    }
  }

  else
  {
    v10 = [BGRepeatingSystemTaskRequest alloc];
    v11 = [v10 initWithIdentifier:off_1009EBD50];
    [*(a1 + 32) _backgroundTaskInterval];
    [v11 setInterval:?];
    [v11 setPriority:2];
    v12 = +[BGSystemTaskScheduler sharedScheduler];
    v15 = 0;
    [v12 submitTaskRequest:v11 error:&v15];
    v13 = v15;

    v14 = qword_1009F2B70;
    if (v13)
    {
      if (os_log_type_enabled(qword_1009F2B70, OS_LOG_TYPE_ERROR))
      {
        sub_1004B73DC();
      }
    }

    else if (os_log_type_enabled(qword_1009F2B70, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#ca-aggr,Aggregation task started", buf, 2u);
    }
  }
}

void sub_100298D2C(uint64_t a1)
{
  v2 = [*(a1 + 32) _dayNumberFromDate:*(a1 + 40)];
  v3 = *(a1 + 32);
  if (v3[16])
  {
    v4 = [v3 _shouldRecordUsage];
    v5 = qword_1009F2B70;
    v6 = os_log_type_enabled(qword_1009F2B70, OS_LOG_TYPE_DEFAULT);
    if (v4)
    {
      if (v6)
      {
        v7 = *(a1 + 48);
        v8 = v5;
        v9 = sub_10029906C(v7);
        v25 = 138412546;
        v26 = v9;
        v27 = 1024;
        v28 = v2;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#ca-aggr,Recording usage %@ (day %d)...", &v25, 0x12u);
      }

      v10 = [*(a1 + 32) _loadUsageRecords];
      v11 = [NSNumber numberWithInt:v2];
      v12 = [v10 objectForKeyedSubscript:v11];
      v13 = v12 == 0;

      if (v13)
      {
        v14 = [[_UWBUsageRecord alloc] initWithDayNumber:v2];
        v15 = [NSNumber numberWithInt:v2];
        [v10 setObject:v14 forKeyedSubscript:v15];
      }

      v16 = [NSNumber numberWithInt:v2];
      v17 = [v10 objectForKeyedSubscript:v16];
      v18 = [v17 recordUsage:*(a1 + 48)];

      if (v18)
      {
        [*(a1 + 32) _saveUsageRecords:v10];
        v19 = qword_1009F2B70;
        if (os_log_type_enabled(qword_1009F2B70, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v25) = 0;
          v20 = "#ca-aggr,Recording usage done";
LABEL_16:
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, v20, &v25, 2u);
        }
      }

      else
      {
        v19 = qword_1009F2B70;
        if (os_log_type_enabled(qword_1009F2B70, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v25) = 0;
          v20 = "#ca-aggr,Recording usage skipped, no change";
          goto LABEL_16;
        }
      }

      return;
    }

    if (v6)
    {
      v22 = *(a1 + 48);
      v23 = v5;
      v24 = sub_10029906C(v22);
      v25 = 138412546;
      v26 = v24;
      v27 = 1024;
      v28 = v2;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#ca-aggr,Recording usage %@ (day %d) skipped, not opted in", &v25, 0x12u);
    }
  }

  else
  {
    v21 = qword_1009F2B70;
    if (os_log_type_enabled(qword_1009F2B70, OS_LOG_TYPE_ERROR))
    {
      sub_1004B744C(a1, v21, v2);
    }
  }
}

const __CFString *sub_10029906C(unsigned int a1)
{
  if (a1 > 0xB)
  {
    return @"UNKNOWN";
  }

  else
  {
    return *(&off_1009A2460 + a1);
  }
}

uint64_t sub_100299180(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100299198(uint64_t a1)
{
  v2 = [*(a1 + 32) _internalPrintableState];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

int64_t sub_100299440(id a1, _UWBUsageRecord *a2, _UWBUsageRecord *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [(_UWBUsageRecord *)v4 dayNumber];
  if (v6 >= [(_UWBUsageRecord *)v5 dayNumber])
  {
    v8 = [(_UWBUsageRecord *)v4 dayNumber];
    v7 = v8 > [(_UWBUsageRecord *)v5 dayNumber];
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

void sub_1002994D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [NSString stringWithFormat:@"    %@", a2];
  [v2 addObject:?];
}

void sub_100299EA4(id a1)
{
  v1 = qword_1009F2B70;
  if (os_log_type_enabled(qword_1009F2B70, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "#ca-aggr,Aggregation task expiring", v2, 2u);
  }
}

void sub_100299F08(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  if ([v9 intValue] < *(a1 + 64))
  {
    v6 = [v9 intValue];
    if (v6 >= [*(a1 + 32) dayNumber])
    {
      [*(a1 + 32) aggregateUsageWith:v5];
    }

    v7 = [v9 intValue];
    if (v7 >= [*(a1 + 40) dayNumber])
    {
      [*(a1 + 40) aggregateUsageWith:v5];
    }

    v8 = [v9 intValue];
    if (v8 >= [*(a1 + 48) dayNumber])
    {
      [*(a1 + 48) aggregateUsageWith:v5];
      [*(a1 + 56) addObject:v5];
    }
  }
}

int64_t sub_10029A014(id a1, _UWBUsageRecord *a2, _UWBUsageRecord *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [(_UWBUsageRecord *)v4 dayNumber];
  if (v6 >= [(_UWBUsageRecord *)v5 dayNumber])
  {
    v8 = [(_UWBUsageRecord *)v4 dayNumber];
    v7 = v8 > [(_UWBUsageRecord *)v5 dayNumber];
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

void sub_10029A0AC(id a1, _UWBUsageRecord *a2, unint64_t a3, BOOL *a4)
{
  v4 = a2;
  v5 = qword_1009F2B70;
  if (os_log_type_enabled(qword_1009F2B70, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#ca-aggr,        %@", &v6, 0xCu);
  }
}

BOOL sub_10029A16C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 intValue] <= *(a1 + 32) - 33 || objc_msgSend(v3, "intValue") >= *(a1 + 32) + 3;

  return v4;
}

void sub_10029A1E0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = qword_1009F2B70;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) objectForKeyedSubscript:v3];
    v6 = 138412290;
    v7 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#ca-aggr,    %@", &v6, 0xCu);
  }

  [*(a1 + 32) setObject:0 forKeyedSubscript:v3];
}

void sub_10029A628(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [[_UWBUsageRecord alloc] initWithDictionary:v7];
  v4 = v3;
  if (v3)
  {
    v5 = *(a1 + 32);
    v6 = [NSNumber numberWithInt:[(_UWBUsageRecord *)v3 dayNumber]];
    [v5 setObject:v4 forKeyedSubscript:v6];
  }
}

void sub_10029A91C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  v20 = v19;

  _Unwind_Resume(a1);
}

void sub_10029A964(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = [a3 convertToDictionary];
  [v3 addObject:?];
}

void sub_10029AA88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10029B1B0()
{
  v0 = objc_autoreleasePoolPush();
  qword_1009F2B70 = os_log_create("com.apple.nearbyd", "Analytics");

  objc_autoreleasePoolPop(v0);
}

uint64_t sub_10029B230(uint64_t a1)
{
  if (*(a1 + 96) == 1 && *(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  sub_10002074C(a1 + 16, *(a1 + 24));
  return a1;
}

uint64_t sub_10029B27C(uint64_t a1)
{
  sub_10002074C(a1 + 24, *(a1 + 32));
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_10029B2E8(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *a3;
  sub_10029F1D8((a1 + 24), a3 + 16);
  v5 = *(a3 + 40);
  *(a1 + 60) = *(a3 + 52);
  *(a1 + 48) = v5;
  sub_10029F2B8(a1 + 80, (a3 + 72));
  v6 = *(a3 + 120);
  *(a1 + 112) = *(a3 + 104);
  *(a1 + 128) = v6;
  v7 = *(a3 + 136);
  v8 = *(a3 + 152);
  v9 = *(a3 + 184);
  *(a1 + 176) = *(a3 + 168);
  *(a1 + 192) = v9;
  *(a1 + 144) = v7;
  *(a1 + 160) = v8;
  v10 = *(a3 + 200);
  v11 = *(a3 + 216);
  v12 = *(a3 + 248);
  *(a1 + 240) = *(a3 + 232);
  *(a1 + 256) = v12;
  *(a1 + 208) = v10;
  *(a1 + 224) = v11;
  v13 = *(a3 + 264);
  v14 = *(a3 + 280);
  v15 = *(a3 + 296);
  *(a1 + 320) = *(a3 + 312);
  *(a1 + 288) = v14;
  *(a1 + 304) = v15;
  *(a1 + 272) = v13;
  return a1;
}

uint64_t sub_10029B3B8(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *a3;
  sub_10029F1D8((a1 + 24), a3 + 16);
  v5 = *(a3 + 40);
  *(a1 + 60) = *(a3 + 52);
  *(a1 + 48) = v5;
  sub_10029F2B8(a1 + 80, (a3 + 72));
  v6 = *(a3 + 120);
  *(a1 + 112) = *(a3 + 104);
  *(a1 + 128) = v6;
  v7 = *(a3 + 136);
  v8 = *(a3 + 152);
  v9 = *(a3 + 184);
  *(a1 + 176) = *(a3 + 168);
  *(a1 + 192) = v9;
  *(a1 + 144) = v7;
  *(a1 + 160) = v8;
  v10 = *(a3 + 200);
  v11 = *(a3 + 216);
  v12 = *(a3 + 248);
  *(a1 + 240) = *(a3 + 232);
  *(a1 + 256) = v12;
  *(a1 + 208) = v10;
  *(a1 + 224) = v11;
  v13 = *(a3 + 264);
  v14 = *(a3 + 280);
  v15 = *(a3 + 296);
  *(a1 + 320) = *(a3 + 312);
  *(a1 + 288) = v14;
  *(a1 + 304) = v15;
  *(a1 + 272) = v13;
  return a1;
}

uint64_t sub_10029B488(uint64_t a1)
{
  if (*(a1 + 104) == 1 && *(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  sub_10002074C(a1 + 24, *(a1 + 32));
  return a1;
}

uint64_t sub_10029B500(uint64_t a1)
{
  sub_1002A0818(a1 + 24, *(a1 + 32));
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_10029B540(uint64_t a1)
{
  if (*(a1 + 120) == 1 && *(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  sub_10002074C(a1 + 40, *(a1 + 48));
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_10029B5F4(uint64_t a1)
{
  sub_10029FE38(a1 + 24, *(a1 + 32));
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_10029B660(uint64_t a1, uint64_t a2, int *a3, const void **a4, const void **a5, int *a6, int *a7)
{
  v13 = qword_1009FA038;
  if (qword_1009FA038)
  {
    v14 = *a3;
    v15 = &qword_1009FA038;
    do
    {
      if (*(v13 + 32) >= v14)
      {
        v15 = v13;
      }

      v13 = *(v13 + 8 * (*(v13 + 32) < v14));
    }

    while (v13);
    if (v15 != &qword_1009FA038 && v14 >= *(v15 + 8))
    {
      v86 = a3;
      v16 = sub_1002A1E14(&qword_1009FA030, a3);
      sub_1002A0EF0(&v88, v16 + 5);
      if (v89 != sub_1000087BC(&v88, a4))
      {
        v90 = a4;
        v17 = sub_1002A1EF4(&v88, a4);
        sub_1002A0BBC(&v86, (v17 + 56));
        if (v87 != sub_1000087BC(&v86, a5))
        {
          v90 = a5;
          v18 = sub_1002A2040(&v86, a5);
          v19 = v18;
          *a2 = *(v18 + 56);
          if (v18 + 56 != a2)
          {
            sub_10029EC60((a2 + 16), *(v18 + 72), (v18 + 80));
          }

          goto LABEL_74;
        }

        sub_1002A0818(&v86, v87[0]);
      }

      sub_1002A0768(&v88, v89[0]);
    }
  }

  v20 = qword_1009FA050;
  if (qword_1009FA050)
  {
    v21 = *a3;
    v22 = &qword_1009FA050;
    do
    {
      if (*(v20 + 32) >= v21)
      {
        v22 = v20;
      }

      v20 = *(v20 + 8 * (*(v20 + 32) < v21));
    }

    while (v20);
    if (v22 != &qword_1009FA050 && v21 >= *(v22 + 8))
    {
      v86 = a3;
      v23 = sub_1002A1E14(&qword_1009FA048, a3);
      sub_1002A1490(&v88, (v23 + 5));
      v24 = v89[0];
      if (v89[0])
      {
        v25 = *a6;
        v26 = v89;
        v27 = v89[0];
        do
        {
          if (*(v27 + 8) >= v25)
          {
            v26 = v27;
          }

          v27 = v27[*(v27 + 8) < v25];
        }

        while (v27);
        if (v26 != v89 && v25 >= *(v26 + 8))
        {
          v90 = a6;
          v28 = sub_1002A1E14(&v88, a6);
          sub_1002A0BBC(&v86, v28 + 5);
          if (v87 != sub_1000087BC(&v86, a5))
          {
            v90 = a5;
            v29 = sub_1002A2040(&v86, a5);
            v30 = v29;
            *a2 = *(v29 + 56);
            if (v29 + 56 != a2)
            {
              sub_10029EC60((a2 + 16), *(v29 + 72), (v29 + 80));
            }

            v31 = *(v30 + 96);
            *(a2 + 52) = *(v30 + 108);
            *(a2 + 40) = v31;
            sub_10029EED4((a2 + 72), (v30 + 128));
            v32 = *(v30 + 160);
            *(a2 + 120) = *(v30 + 176);
            *(a2 + 104) = v32;
            v33 = *(v30 + 192);
            v34 = *(v30 + 208);
            v35 = *(v30 + 224);
            *(a2 + 184) = *(v30 + 240);
            *(a2 + 168) = v35;
            *(a2 + 152) = v34;
            *(a2 + 136) = v33;
            v36 = *(v30 + 256);
            v37 = *(v30 + 272);
            v38 = *(v30 + 288);
            *(a2 + 248) = *(v30 + 304);
            *(a2 + 232) = v38;
            *(a2 + 216) = v37;
            *(a2 + 200) = v36;
            v39 = *(v30 + 320);
            v40 = *(v30 + 336);
            v41 = *(v30 + 352);
            *(a2 + 312) = *(v30 + 368);
            *(a2 + 280) = v40;
            *(a2 + 296) = v41;
            *(a2 + 264) = v39;
            sub_1002A0818(&v86, v87[0]);
            sub_1002A1230(&v88, v89[0]);
            return;
          }

          sub_1002A0818(&v86, v87[0]);
          v24 = v89[0];
        }
      }

      sub_1002A1230(&v88, v24);
    }
  }

  v42 = qword_1009FA068;
  if (qword_1009FA068)
  {
    v43 = *a3;
    v44 = &qword_1009FA068;
    do
    {
      if (*(v42 + 32) >= v43)
      {
        v44 = v42;
      }

      v42 = *(v42 + 8 * (*(v42 + 32) < v43));
    }

    while (v42);
    if (v44 != &qword_1009FA068 && v43 >= *(v44 + 8))
    {
      v86 = a3;
      v45 = sub_1002A1E14(&qword_1009FA060, a3);
      sub_1002A0EF0(&v88, v45 + 5);
      v90 = &qword_1009F33F8;
      v46 = sub_1002A1EF4(&v88, &qword_1009F33F8);
      sub_1002A0BBC(&v86, (v46 + 56));
      if (v87 != sub_1000087BC(&v86, a5))
      {
        v90 = a5;
        v47 = sub_1002A2040(&v86, a5);
        v19 = v47;
        *a2 = *(v47 + 56);
        if (v47 + 56 != a2)
        {
          sub_10029EC60((a2 + 16), *(v47 + 72), (v47 + 80));
        }

        goto LABEL_74;
      }

      sub_1002A0818(&v86, v87[0]);
      sub_1002A0768(&v88, v89[0]);
    }
  }

  v48 = qword_1009FA080;
  if (qword_1009FA080)
  {
    v49 = *a3;
    v50 = &qword_1009FA080;
    do
    {
      if (*(v48 + 32) >= v49)
      {
        v50 = v48;
      }

      v48 = *(v48 + 8 * (*(v48 + 32) < v49));
    }

    while (v48);
    if (v50 != &qword_1009FA080 && v49 >= *(v50 + 8))
    {
      v86 = a3;
      v51 = sub_1002A1E14(&qword_1009FA078, a3);
      sub_1002A1AD4(&v88, v51 + 5);
      if (v89 != sub_1000087BC(&v88, a4))
      {
        v90 = a4;
        v52 = sub_1002A2358(&v88, a4);
        sub_1002A0148(&v86, v52 + 56);
        if (v87[0])
        {
          v53 = *a7;
          v54 = v87;
          v55 = v87[0];
          do
          {
            if (*(v55 + 8) >= v53)
            {
              v54 = v55;
            }

            v55 = v55[*(v55 + 8) < v53];
          }

          while (v55);
          if (v54 != v87 && v53 >= *(v54 + 8))
          {
            v90 = a7;
            v73 = sub_1002A24A4(&v86, a7);
            v74 = v73;
            *a2 = *(v73 + 5);
            if (v73 + 5 != a2)
            {
              sub_10029EC60((a2 + 16), v73[7], v73 + 8);
            }

            v75 = *(v74 + 5);
            *(a2 + 52) = *(v74 + 92);
            *(a2 + 40) = v75;
            sub_10029EED4((a2 + 72), (v74 + 14));
            v76 = *(v74 + 9);
            *(a2 + 120) = *(v74 + 10);
            *(a2 + 104) = v76;
            v77 = *(v74 + 11);
            v78 = *(v74 + 12);
            v79 = *(v74 + 13);
            *(a2 + 184) = *(v74 + 14);
            *(a2 + 168) = v79;
            *(a2 + 152) = v78;
            *(a2 + 136) = v77;
            v80 = *(v74 + 15);
            v81 = *(v74 + 16);
            v82 = *(v74 + 17);
            *(a2 + 248) = *(v74 + 18);
            *(a2 + 232) = v82;
            *(a2 + 216) = v81;
            *(a2 + 200) = v80;
            v83 = *(v74 + 19);
            v84 = *(v74 + 20);
            v85 = *(v74 + 21);
            *(a2 + 312) = v74[44];
            *(a2 + 280) = v84;
            *(a2 + 296) = v85;
            *(a2 + 264) = v83;
            sub_10029FE38(&v86, v87[0]);
            sub_1002A17D0(&v88, v89[0]);
            return;
          }
        }

        sub_10029FE38(&v86, v87[0]);
      }

      sub_1002A17D0(&v88, v89[0]);
    }
  }

  v56 = qword_1009FA098;
  if (qword_1009FA098)
  {
    v57 = *a3;
    v58 = &qword_1009FA098;
    do
    {
      if (*(v56 + 32) >= v57)
      {
        v58 = v56;
      }

      v56 = *(v56 + 8 * (*(v56 + 32) < v57));
    }

    while (v56);
    if (v58 != &qword_1009FA098 && v57 >= *(v58 + 8))
    {
      v86 = a3;
      v59 = sub_1002A1E14(&qword_1009FA090, a3);
      sub_1002A0EF0(&v88, v59 + 5);
      if (v89 == sub_1000087BC(&v88, a4))
      {
LABEL_75:
        sub_1002A0768(&v88, v89[0]);
        return;
      }

      v90 = a4;
      v60 = sub_1002A1EF4(&v88, a4);
      sub_1002A0BBC(&v86, (v60 + 56));
      v90 = &qword_1009F33F8;
      v61 = sub_1002A2040(&v86, &qword_1009F33F8);
      v19 = v61;
      *a2 = *(v61 + 56);
      if (v61 + 56 != a2)
      {
        sub_10029EC60((a2 + 16), *(v61 + 72), (v61 + 80));
      }

LABEL_74:
      v62 = *(v19 + 96);
      *(a2 + 52) = *(v19 + 108);
      *(a2 + 40) = v62;
      sub_10029EED4((a2 + 72), (v19 + 128));
      v63 = *(v19 + 160);
      *(a2 + 120) = *(v19 + 176);
      *(a2 + 104) = v63;
      v64 = *(v19 + 192);
      v65 = *(v19 + 208);
      v66 = *(v19 + 224);
      *(a2 + 184) = *(v19 + 240);
      *(a2 + 168) = v66;
      *(a2 + 152) = v65;
      *(a2 + 136) = v64;
      v67 = *(v19 + 256);
      v68 = *(v19 + 272);
      v69 = *(v19 + 288);
      *(a2 + 248) = *(v19 + 304);
      *(a2 + 232) = v69;
      *(a2 + 216) = v68;
      *(a2 + 200) = v67;
      v70 = *(v19 + 320);
      v71 = *(v19 + 336);
      v72 = *(v19 + 352);
      *(a2 + 312) = *(v19 + 368);
      *(a2 + 280) = v71;
      *(a2 + 296) = v72;
      *(a2 + 264) = v70;
      sub_1002A0818(&v86, v87[0]);
      goto LABEL_75;
    }
  }
}

void sub_10029BF00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char *a10, uint64_t a11, char a12, void *a13)
{
  sub_1002A0818(&a9, a10);
  sub_1002A1230(&a12, a13);
  _Unwind_Resume(a1);
}

void sub_10029BFA4(uint64_t a1, uint64_t a2, int *a3, uint64_t *a4, uint64_t *a5, int *a6, int *a7)
{
  v65 = sub_10029C99C(a3);
  v12 = +[NSUserDefaults standardUserDefaults];
  if (*(a4 + 23) >= 0)
  {
    v13 = a4;
  }

  else
  {
    v13 = *a4;
  }

  v63 = [NSString stringWithUTF8String:v13];
  if (*(a5 + 23) >= 0)
  {
    v14 = a5;
  }

  else
  {
    v14 = *a5;
  }

  v64 = [NSString stringWithUTF8String:v14];
  if (byte_1009F340F >= 0)
  {
    v15 = &qword_1009F33F8;
  }

  else
  {
    v15 = qword_1009F33F8;
  }

  v59 = [NSString stringWithUTF8String:v15];
  v16 = [v12 objectForKey:@"BtThresholdScannerModelAdvertiserModel"];
  v62 = [v12 objectForKey:@"BtThresholdScannerClassAdvertiserModel"];
  v60 = [v12 objectForKey:@"BtThresholdScannerModelAdvertiserClass"];
  v61 = [v12 objectForKey:@"BtThresholdAdvertiserModel"];
  v58 = [v12 objectForKey:@"BtThresholdScannerModel"];
  v17 = [v16 objectForKey:v65];

  if (v17)
  {
    v18 = [v16 objectForKeyedSubscript:v65];
    v19 = [v18 objectForKey:v63];

    if (v19)
    {
      v20 = [v18 objectForKeyedSubscript:v63];
      v21 = [v20 objectForKey:v64];

      if (v21)
      {
        v22 = [v20 objectForKey:v64];
        sub_10029CB68(v22, &v66);
        *a2 = v66;
        v23 = a2 + 24;
        sub_10002074C(a2 + 16, *(a2 + 24));
        v24 = v68;
        *(a2 + 16) = v67;
        *(a2 + 24) = v24;
        v25 = v69;
        *(a2 + 32) = v69;
        if (v25)
        {
          v24[2] = v23;
          v67 = &v68;
          v68 = 0;
          v69 = 0;
        }

        else
        {
          *(a2 + 16) = v23;
        }

LABEL_48:
        *(a2 + 40) = v70[0];
        *(a2 + 52) = *(v70 + 12);
        sub_10029F0B8(a2 + 72, &__p);
        *(a2 + 312) = v87;
        *(a2 + 200) = v80;
        *(a2 + 216) = v81;
        *(a2 + 232) = v82;
        *(a2 + 248) = v83;
        *(a2 + 136) = v76;
        *(a2 + 152) = v77;
        *(a2 + 168) = v78;
        *(a2 + 184) = v79;
        v54 = v75;
        *(a2 + 104) = v74;
        *(a2 + 120) = v54;
        v55 = v85;
        *(a2 + 264) = v84;
        *(a2 + 280) = v55;
        *(a2 + 296) = v86;
        if (v73 == 1 && v72 < 0)
        {
          operator delete(__p.n128_u64[0]);
        }

        sub_10002074C(&v67, v68);

LABEL_52:
        goto LABEL_58;
      }
    }
  }

  v26 = [v62 objectForKey:v65];

  if (v26)
  {
    v18 = [v62 objectForKeyedSubscript:v65];
    v27 = sub_10029D078(a6);
    v28 = [v18 objectForKey:v27];

    if (v28)
    {
      v29 = [v18 objectForKeyedSubscript:v27];
      v30 = [v29 objectForKey:v64];

      if (v30)
      {
        v31 = [v29 objectForKey:v64];
        sub_10029CB68(v31, &v66);
        *a2 = v66;
        v32 = a2 + 24;
        sub_10002074C(a2 + 16, *(a2 + 24));
        v33 = v68;
        *(a2 + 16) = v67;
        *(a2 + 24) = v33;
        v34 = v69;
        *(a2 + 32) = v69;
        if (v34)
        {
          v33[2] = v32;
          v67 = &v68;
          v68 = 0;
          v69 = 0;
        }

        else
        {
          *(a2 + 16) = v32;
        }

LABEL_54:
        *(a2 + 40) = v70[0];
        *(a2 + 52) = *(v70 + 12);
        sub_10029F0B8(a2 + 72, &__p);
        *(a2 + 312) = v87;
        *(a2 + 200) = v80;
        *(a2 + 216) = v81;
        *(a2 + 232) = v82;
        *(a2 + 248) = v83;
        *(a2 + 136) = v76;
        *(a2 + 152) = v77;
        *(a2 + 168) = v78;
        *(a2 + 184) = v79;
        v56 = v75;
        *(a2 + 104) = v74;
        *(a2 + 120) = v56;
        v57 = v85;
        *(a2 + 264) = v84;
        *(a2 + 280) = v57;
        *(a2 + 296) = v86;
        if (v73 == 1 && v72 < 0)
        {
          operator delete(__p.n128_u64[0]);
        }

        sub_10002074C(&v67, v68);

        goto LABEL_58;
      }
    }
  }

  v35 = [v61 objectForKey:v65];

  if (v35)
  {
    v36 = [v61 objectForKeyedSubscript:v65];
    v18 = [v36 objectForKeyedSubscript:v59];

    v37 = [v18 objectForKey:v64];

    if (v37)
    {
      v20 = [v18 objectForKey:v64];
      sub_10029CB68(v20, &v66);
      *a2 = v66;
      v38 = a2 + 24;
      sub_10002074C(a2 + 16, *(a2 + 24));
      v39 = v68;
      *(a2 + 16) = v67;
      *(a2 + 24) = v39;
      v40 = v69;
      *(a2 + 32) = v69;
      if (v40)
      {
        v39[2] = v38;
        v67 = &v68;
        v68 = 0;
        v69 = 0;
      }

      else
      {
        *(a2 + 16) = v38;
      }

      *(a2 + 40) = v70[0];
      *(a2 + 52) = *(v70 + 12);
      sub_10029F0B8(a2 + 72, &__p);
      *(a2 + 312) = v87;
      *(a2 + 200) = v80;
      *(a2 + 216) = v81;
      *(a2 + 232) = v82;
      *(a2 + 248) = v83;
      *(a2 + 136) = v76;
      *(a2 + 152) = v77;
      *(a2 + 168) = v78;
      *(a2 + 184) = v79;
      v47 = v75;
      *(a2 + 104) = v74;
      *(a2 + 120) = v47;
      v48 = v85;
      *(a2 + 264) = v84;
      *(a2 + 280) = v48;
      *(a2 + 296) = v86;
      if (v73 == 1 && v72 < 0)
      {
        operator delete(__p.n128_u64[0]);
      }

      sub_10002074C(&v67, v68);
      goto LABEL_52;
    }
  }

  v41 = [v60 objectForKey:v65];

  if (v41)
  {
    v18 = [v60 objectForKeyedSubscript:v65];
    v42 = [v18 objectForKey:v63];

    if (v42)
    {
      v27 = [v18 objectForKeyedSubscript:v63];
      v29 = sub_10029D078(a7);
      v43 = [v27 objectForKey:v29];

      if (v43)
      {
        v31 = [v27 objectForKey:v29];
        sub_10029CB68(v31, &v66);
        *a2 = v66;
        v44 = a2 + 24;
        sub_10002074C(a2 + 16, *(a2 + 24));
        v45 = v68;
        *(a2 + 16) = v67;
        *(a2 + 24) = v45;
        v46 = v69;
        *(a2 + 32) = v69;
        if (v46)
        {
          v45[2] = v44;
          v67 = &v68;
          v68 = 0;
          v69 = 0;
        }

        else
        {
          *(a2 + 16) = v44;
        }

        goto LABEL_54;
      }
    }
  }

  v49 = [v58 objectForKey:v65];

  if (v49)
  {
    v18 = [v58 objectForKeyedSubscript:v65];
    v50 = [v18 objectForKey:v63];

    if (!v50)
    {
LABEL_58:

      goto LABEL_59;
    }

    v20 = [v18 objectForKey:v63];
    v22 = [v20 objectForKeyedSubscript:v59];
    sub_10029CB68(v22, &v66);
    *a2 = v66;
    v51 = a2 + 24;
    sub_10002074C(a2 + 16, *(a2 + 24));
    v52 = v68;
    *(a2 + 16) = v67;
    *(a2 + 24) = v52;
    v53 = v69;
    *(a2 + 32) = v69;
    if (v53)
    {
      v52[2] = v51;
      v67 = &v68;
      v68 = 0;
      v69 = 0;
    }

    else
    {
      *(a2 + 16) = v51;
    }

    goto LABEL_48;
  }

LABEL_59:
}

id sub_10029C99C(int *a1)
{
  LODWORD(v6[0]) = 1;
  v6[1] = @"unspecified";
  v7 = 2;
  v8 = @"immediate";
  v9 = 8;
  v10 = @"armsReach";
  v11 = 9;
  v12 = @"extendedReach";
  v13 = 3;
  v14 = @"near";
  v15 = 4;
  v16 = @"desk";
  v17 = 5;
  v18 = @"vicinity";
  v19 = 6;
  v20 = @"sensorMax";
  v21 = 7;
  v22 = @"superImmediate";
  sub_10029EF78(v5, v6, 9);
  for (i = 17; i != -1; i -= 2)
  {
  }

  v6[0] = a1;
  v3 = sub_1001BF864(v5, a1)[5];
  sub_1001BF3F8(v5, v5[1]);

  return v3;
}

void sub_10029CB68(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;
  v4 = [v3 objectForKeyedSubscript:@"threshold"];
  [v4 floatValue];
  v6 = v5;

  if (v6 >= 0.0)
  {
    v9 = qword_1009F9820;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v3 objectForKeyedSubscript:@"threshold"];
      *buf = 138412290;
      *&buf[4] = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#btproximitydatabase Invalid OTA threshold value of: %@", buf, 0xCu);
    }
  }

  else
  {
    v7 = [v3 objectForKeyedSubscript:@"custom_threshold_type"];
    v8 = [v7 isEqualToString:@"default_bluetooth_filter"];

    if (v8)
    {
      *a2 = 0x300000008;
      *(a2 + 8) = v6;
      *buf = v6;
      sub_1001BD370((a2 + 16), buf, 1);
LABEL_12:
      *(a2 + 40) = xmmword_100563C70;
      *(a2 + 56) = 0x4024000000000000;
      *(a2 + 64) = 45;
      *(a2 + 72) = 0;
      *(a2 + 96) = 0;
      *(a2 + 104) = 0;
      *(a2 + 112) = 0;
      *(a2 + 116) = 1;
      *(a2 + 120) = 1;
      *(a2 + 128) = xmmword_100563C80;
      *(a2 + 144) = xmmword_100563C90;
      __asm { FMOV            V0.2D, #1.0 }

      *(a2 + 160) = _Q0;
      *(a2 + 176) = 0xC059000000000000;
      *(a2 + 184) = xmmword_100563CA0;
      *(a2 + 200) = vdup_n_s32(0x3DCCCCCDu);
      *(a2 + 208) = xmmword_100563BE0;
      *(a2 + 232) = 0;
      *(a2 + 240) = 0;
      *(a2 + 224) = 0x3FD999999999999ALL;
      *(a2 + 248) = xmmword_100563BF0;
      *(a2 + 264) = 5;
LABEL_13:
      *(a2 + 272) = 0x4000000000000000;
      *(a2 + 280) = 10;
      *(a2 + 288) = 0x4034000000000000;
      *(a2 + 296) = 3;
      *(a2 + 304) = xmmword_100563CB0;
      goto LABEL_14;
    }

    v17 = [v3 objectForKeyedSubscript:@"custom_threshold_type"];
    v18 = [v17 isEqualToString:@"rssi_estimator"];

    if (v18)
    {
      *a2 = 0x200000003;
      *(a2 + 8) = v6;
      *buf = v6;
      sub_1001BD370((a2 + 16), buf, 1);
      goto LABEL_12;
    }

    v19 = [v3 objectForKeyedSubscript:@"custom_threshold_type"];
    v20 = [v19 isEqualToString:@"default_setup"];

    if (v20)
    {
      *a2 = 0x300000010;
      *(a2 + 8) = v6;
      *buf = v6;
      sub_1001BD370((a2 + 16), buf, 1);
      goto LABEL_12;
    }

    v26 = [v3 objectForKeyedSubscript:@"custom_threshold_type"];
    v27 = [v26 isEqualToString:@"high_rate_hysteresis"];

    if (v27)
    {
      *a2 = 0x200000003;
      *(a2 + 8) = v6;
      *buf = v6;
      sub_1001BD370((a2 + 16), buf, 1);
      *(a2 + 40) = xmmword_1005690D0;
      *(a2 + 56) = 0x4000000000000000;
      *(a2 + 64) = 20;
      *(a2 + 72) = 0;
      *(a2 + 96) = 0;
      *(a2 + 104) = 0;
      *(a2 + 112) = 0;
      *(a2 + 116) = 1;
      *(a2 + 120) = 1;
      *(a2 + 128) = xmmword_100563C80;
      *(a2 + 144) = xmmword_100563C90;
      __asm { FMOV            V0.2D, #1.0 }

      *(a2 + 160) = _Q0;
      *(a2 + 184) = xmmword_100563CA0;
      *(a2 + 176) = 0xC059000000000000;
      *(a2 + 200) = vdup_n_s32(0x3DCCCCCDu);
      *(a2 + 208) = xmmword_100563BE0;
      *(a2 + 232) = 0;
      *(a2 + 240) = 0;
      *(a2 + 224) = 0x3FD999999999999ALL;
      *(a2 + 248) = xmmword_100563BF0;
      *(a2 + 264) = 5;
      goto LABEL_13;
    }
  }

  *a2 = xmmword_1009F3428;
  sub_10029F1D8((a2 + 16), qword_1009F3438);
  *(a2 + 40) = xmmword_1009F3450;
  *(a2 + 52) = *(&xmmword_1009F3450 + 12);
  sub_10029F2B8(a2 + 72, &byte_1009F3470);
  v11 = *&dword_1009F3540;
  *(a2 + 264) = xmmword_1009F3530;
  *(a2 + 280) = v11;
  *(a2 + 296) = xmmword_1009F3550;
  v12 = unk_1009F3500;
  *(a2 + 200) = xmmword_1009F34F0;
  *(a2 + 216) = v12;
  v13 = unk_1009F3520;
  *(a2 + 232) = xmmword_1009F3510;
  *(a2 + 248) = v13;
  v14 = unk_1009F34C0;
  *(a2 + 136) = *(&xmmword_1009F34A8 + 8);
  *(a2 + 152) = v14;
  v15 = unk_1009F34E0;
  *(a2 + 168) = *(&xmmword_1009F34C8 + 8);
  *(a2 + 184) = v15;
  v16 = *&byte_1009F34A0;
  *(a2 + 104) = xmmword_1009F3490;
  *(a2 + 312) = qword_1009F3560;
  *(a2 + 120) = v16;
LABEL_14:
}

id sub_10029D078(int *a1)
{
  v6[1] = @"DeviceClassInvalid";
  v7 = 1;
  v8 = @"DeviceClassMacBook";
  v9 = 2;
  v10 = @"DeviceClassMacBookAir";
  v11 = 3;
  v12 = @"DeviceClassMacBookPro";
  v13 = 4;
  v14 = @"DeviceClassiMac";
  v15 = 5;
  v16 = @"DeviceClassMacMini";
  v17 = 6;
  v18 = @"DeviceClassIpad";
  v19 = 7;
  v20 = @"DeviceClassIphone";
  v21 = 8;
  v22 = @"DeviceClassMax";
  v23 = 9;
  v24 = @"DeviceClassMacPro";
  v25 = 10;
  v26 = @"DeviceClassMacStudio";
  v27 = 11;
  v28 = @"DeviceClassAirTag";
  v29 = 12;
  v30 = @"DeviceClassDefaultMac";
  v31 = 13;
  v32 = @"DeviceClassAudioAccessory";
  v33 = 14;
  v34 = @"DeviceClassHomePod";
  v35 = 15;
  v36 = @"DeviceClassWatch";
  v37 = 16;
  LODWORD(v6[0]) = 0;
  v38 = @"DeviceClassRemote";
  v39 = 18;
  v40 = @"DeviceClassPencil";
  v41 = 19;
  v42 = @"DeviceClassGameController";
  sub_10029F158(v5, v6, 19);
  for (i = 37; i != -1; i -= 2)
  {
  }

  v6[0] = a1;
  v3 = sub_1001BF864(v5, a1)[5];
  sub_1001BF3F8(v5, v5[1]);

  return v3;
}

uint64_t sub_10029D308(uint64_t a1, char *__s)
{
  v2 = __s;
  v3 = __s[23];
  if (v3 < 0)
  {
    v4 = *__s;
    v5 = *(__s + 1);
  }

  else
  {
    v4 = __s;
    v5 = __s[23];
  }

  if (byte_1009F2E87 >= 0)
  {
    v6 = &qword_1009F2E70;
  }

  else
  {
    v6 = qword_1009F2E70;
  }

  if (byte_1009F2E87 >= 0)
  {
    v7 = byte_1009F2E87;
  }

  else
  {
    v7 = unk_1009F2E78;
  }

  if (v7)
  {
    if (v5 >= v7)
    {
      v12 = &v5[v4];
      v13 = *v6;
      a1 = v4;
      do
      {
        v14 = &v5[-v7];
        if (v14 == -1)
        {
          break;
        }

        a1 = memchr(a1, v13, (v14 + 1));
        if (!a1)
        {
          break;
        }

        v15 = a1;
        a1 = memcmp(a1, v6, v7);
        if (!a1)
        {
          if (v15 == v12 || v15 - v4 == -1)
          {
            break;
          }

          goto LABEL_40;
        }

        a1 = v15 + 1;
        v5 = &v12[-v15 - 1];
      }

      while (v5 >= v7);
    }

    v8 = sub_10029D8E4(a1, v2);
    if ((v8 & 1) == 0)
    {
      v9 = v2[23];
      if ((v9 & 0x8000000000000000) != 0)
      {
        v10 = *v2;
        v11 = *(v2 + 1);
      }

      else
      {
        v10 = v2;
        v11 = v2[23];
      }

      if (byte_1009F2ECF >= 0)
      {
        v16 = &qword_1009F2EB8;
      }

      else
      {
        v16 = qword_1009F2EB8;
      }

      if (byte_1009F2ECF >= 0)
      {
        v17 = byte_1009F2ECF;
      }

      else
      {
        v17 = unk_1009F2EC0;
      }

      if (!v17)
      {
        return 4;
      }

      if (v11 >= v17)
      {
        v19 = &v11[v10];
        v20 = *v16;
        v8 = v10;
        do
        {
          v21 = &v11[-v17];
          if (v21 == -1)
          {
            break;
          }

          v8 = memchr(v8, v20, (v21 + 1));
          if (!v8)
          {
            break;
          }

          v22 = v8;
          v8 = memcmp(v8, v16, v17);
          if (!v8)
          {
            if (v22 == v19 || v22 - v10 == -1)
            {
              break;
            }

            return 4;
          }

          v8 = v22 + 1;
          v11 = &v19[-v22 - 1];
        }

        while (v11 >= v17);
      }

      if ((v9 & 0x80000000) != 0)
      {
        v18 = *v2;
        v9 = *(v2 + 1);
      }

      else
      {
        v18 = v2;
      }

      if (byte_1009F2EE7 >= 0)
      {
        v42 = &qword_1009F2ED0;
      }

      else
      {
        v42 = qword_1009F2ED0;
      }

      if (byte_1009F2EE7 >= 0)
      {
        v43 = byte_1009F2EE7;
      }

      else
      {
        v43 = unk_1009F2ED8;
      }

      if (!v43)
      {
        return 5;
      }

      if (v9 >= v43)
      {
        v45 = &v9[v18];
        v46 = *v42;
        v8 = v18;
        do
        {
          if (&v9[-v43] == -1)
          {
            break;
          }

          v8 = memchr(v8, v46, &v9[-v43 + 1]);
          if (!v8)
          {
            break;
          }

          v47 = v8;
          v8 = memcmp(v8, v42, v43);
          if (!v8)
          {
            if (v47 == v45 || v47 - v18 == -1)
            {
              break;
            }

            return 5;
          }

          v8 = v47 + 1;
          v9 = &v45[-v47 - 1];
        }

        while (v9 >= v43);
      }

      v44 = sub_10029DB6C(v8, v2);
      if ((v44 & 1) != 0 || sub_10029DCC8(v44, v2))
      {
        return 5;
      }

      if (sub_10029D814(v2, byte_1009F2EE8, 0) != -1)
      {
        return 9;
      }

      if (sub_10029D814(v2, byte_1009F2F00, 0) != -1)
      {
        return 12;
      }

      if (sub_10029D814(v2, byte_1009F2F18, 0) != -1)
      {
        return 6;
      }

      if (sub_10029D814(v2, byte_1009F2F30, 0) != -1)
      {
        return 7;
      }

      if (sub_10029DF38(-1, v2))
      {
        return 13;
      }

      if (sub_10029D814(v2, byte_1009F2F90, 0) != -1)
      {
        return 14;
      }

      if (sub_10029D814(v2, byte_1009F2FA8, 0) != -1)
      {
        return 15;
      }

      if (sub_10029D814(v2, byte_1009F2FC0, 0) != -1)
      {
        return 16;
      }

      v48 = sub_10029E1E8(-1, v2);
      if (v48)
      {
        return 11;
      }

      if (sub_10029E35C(v48, v2))
      {
        return 18;
      }

      if (sub_10029D814(v2, &xmmword_1009F33C8, 0) != -1)
      {
        return 17;
      }

      if (sub_10029E434(-1, v2))
      {
        return 19;
      }

      return 0;
    }

    return 3;
  }

LABEL_40:
  if ((v3 & 0x80000000) != 0)
  {
    v23 = *v2;
    v24 = *(v2 + 1);
  }

  else
  {
    v23 = v2;
    v24 = v3;
  }

  if (byte_1009F2E9F >= 0)
  {
    v25 = &qword_1009F2E88;
  }

  else
  {
    v25 = qword_1009F2E88;
  }

  if (byte_1009F2E9F >= 0)
  {
    v26 = byte_1009F2E9F;
  }

  else
  {
    v26 = unk_1009F2E90;
  }

  if (!v26)
  {
    return 2;
  }

  if (v24 >= v26)
  {
    v31 = &v23[v24];
    v32 = *v25;
    v33 = v23;
    do
    {
      v34 = v24 - v26;
      if (v34 == -1)
      {
        break;
      }

      v35 = memchr(v33, v32, v34 + 1);
      if (!v35)
      {
        break;
      }

      v36 = v35;
      if (!memcmp(v35, v25, v26))
      {
        if (v36 == v31 || v36 - v23 == -1)
        {
          break;
        }

        return 2;
      }

      v33 = v36 + 1;
      v24 = v31 - (v36 + 1);
    }

    while (v24 >= v26);
  }

  if ((v3 & 0x80000000) != 0)
  {
    v27 = v2;
    v2 = *v2;
    v3 = *(v27 + 1);
  }

  if (byte_1009F2EB7 >= 0)
  {
    v28 = &qword_1009F2EA0;
  }

  else
  {
    v28 = qword_1009F2EA0;
  }

  if (byte_1009F2EB7 >= 0)
  {
    v29 = byte_1009F2EB7;
  }

  else
  {
    v29 = unk_1009F2EA8;
  }

  if (!v29)
  {
    return 3;
  }

  if (v3 >= v29)
  {
    v37 = &v2[v3];
    v38 = *v28;
    v39 = v2;
    do
    {
      if (v3 - v29 == -1)
      {
        break;
      }

      v40 = memchr(v39, v38, v3 - v29 + 1);
      if (!v40)
      {
        break;
      }

      v41 = v40;
      if (!memcmp(v40, v28, v29))
      {
        if (v41 == v37 || v41 - v2 == -1)
        {
          return 1;
        }

        return 3;
      }

      v39 = v41 + 1;
      v3 = v37 - (v41 + 1);
    }

    while (v3 >= v29);
  }

  return 1;
}

uint64_t sub_10029D814(uint64_t *a1, char *a2, unint64_t a3)
{
  v3 = a1;
  v4 = *(a1 + 23);
  if ((v4 & 0x8000000000000000) != 0)
  {
    v3 = *a1;
    v4 = a1[1];
  }

  v5 = a2[23];
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
    v7 = a2[23];
  }

  else
  {
    v7 = *(a2 + 1);
  }

  v8 = v4 - a3;
  if (v4 < a3)
  {
    return -1;
  }

  if (v7)
  {
    v9 = (v3 + v4);
    if (v8 >= v7)
    {
      v12 = (v3 + a3);
      v13 = *v6;
      do
      {
        if (v8 - v7 == -1)
        {
          break;
        }

        v14 = memchr(v12, v13, v8 - v7 + 1);
        if (!v14)
        {
          break;
        }

        v10 = v14;
        if (!memcmp(v14, v6, v7))
        {
          goto LABEL_14;
        }

        v12 = v10 + 1;
        v8 = v9 - (v10 + 1);
      }

      while (v8 >= v7);
    }

    v10 = v9;
LABEL_14:
    if (v10 == v9)
    {
      return -1;
    }

    else
    {
      return &v10[-v3];
    }
  }

  return a3;
}

BOOL sub_10029D8E4(uint64_t a1, char **a2)
{
  if ((atomic_load_explicit(&qword_1009F3818, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009F3818))
  {
    sub_100004A08(&qword_1009F3800, "Mac14,5");
    __cxa_atexit(&std::string::~string, &qword_1009F3800, &_mh_execute_header);
    __cxa_guard_release(&qword_1009F3818);
  }

  v3 = *(a2 + 23);
  if (v3 >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  if (v3 < 0)
  {
    v3 = a2[1];
  }

  if (byte_1009F3817 >= 0)
  {
    v5 = &qword_1009F3800;
  }

  else
  {
    v5 = qword_1009F3800;
  }

  if (byte_1009F3817 >= 0)
  {
    v6 = byte_1009F3817;
  }

  else
  {
    v6 = unk_1009F3808;
  }

  if (!v6)
  {
    return 1;
  }

  if (v3 >= v6)
  {
    v12 = &v3[v4];
    v13 = *v5;
    v14 = v4;
    do
    {
      v15 = &v3[-v6];
      if (v15 == -1)
      {
        break;
      }

      v16 = memchr(v14, v13, (v15 + 1));
      if (!v16)
      {
        break;
      }

      v17 = v16;
      if (!memcmp(v16, v5, v6))
      {
        if (v17 != v12 && v17 - v4 != -1)
        {
          return 1;
        }

        break;
      }

      v14 = v17 + 1;
      v3 = (v12 - (v17 + 1));
    }

    while (v3 >= v6);
  }

  if ((atomic_load_explicit(&qword_1009F3838, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009F3838))
  {
    sub_100004A08(&qword_1009F3820, "Mac14,6");
    __cxa_atexit(&std::string::~string, &qword_1009F3820, &_mh_execute_header);
    __cxa_guard_release(&qword_1009F3838);
  }

  v7 = *(a2 + 23);
  if (v7 >= 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  if (v7 < 0)
  {
    v7 = a2[1];
  }

  v9 = byte_1009F3837 >= 0 ? &qword_1009F3820 : qword_1009F3820;
  v10 = byte_1009F3837 >= 0 ? byte_1009F3837 : unk_1009F3828;
  if (!v10)
  {
    return 1;
  }

  if (v7 >= v10)
  {
    v18 = &v7[v8];
    v19 = *v9;
    v20 = v8;
    do
    {
      v21 = &v7[-v10];
      if (v21 == -1)
      {
        break;
      }

      v22 = memchr(v20, v19, (v21 + 1));
      if (!v22)
      {
        break;
      }

      v23 = v22;
      if (!memcmp(v22, v9, v10))
      {
        return v23 != v18 && v23 - v8 != -1;
      }

      v20 = v23 + 1;
      v7 = (v18 - (v23 + 1));
    }

    while (v7 >= v10);
  }

  return 0;
}

uint64_t sub_10029DB6C(uint64_t a1, char **a2)
{
  if ((atomic_load_explicit(&qword_1009F3898, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009F3898))
  {
    sub_100004A08(&qword_1009F3880, "Mac14,3");
    __cxa_atexit(&std::string::~string, &qword_1009F3880, &_mh_execute_header);
    __cxa_guard_release(&qword_1009F3898);
  }

  v3 = *(a2 + 23);
  if (v3 >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  if (v3 < 0)
  {
    v3 = a2[1];
  }

  if (byte_1009F3897 >= 0)
  {
    v5 = &qword_1009F3880;
  }

  else
  {
    v5 = qword_1009F3880;
  }

  if (byte_1009F3897 >= 0)
  {
    v6 = byte_1009F3897;
  }

  else
  {
    v6 = unk_1009F3888;
  }

  if (!v6)
  {
    return 1;
  }

  v7 = &v3[v4];
  if (v3 >= v6)
  {
    v11 = *v5;
    v12 = v4;
    do
    {
      v13 = &v3[-v6];
      if (v13 == -1)
      {
        break;
      }

      v14 = memchr(v12, v11, (v13 + 1));
      if (!v14)
      {
        break;
      }

      v8 = v14;
      if (!memcmp(v14, v5, v6))
      {
        return v8 != v7 && v8 - v4 != -1;
      }

      v12 = v8 + 1;
      v3 = (v7 - (v8 + 1));
    }

    while (v3 >= v6);
  }

  v8 = v7;
  return v8 != v7 && v8 - v4 != -1;
}

BOOL sub_10029DCC8(uint64_t a1, char **a2)
{
  if ((atomic_load_explicit(&qword_1009F3858, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009F3858))
  {
    sub_100004A08(&qword_1009F3840, "Mac13,1");
    __cxa_atexit(&std::string::~string, &qword_1009F3840, &_mh_execute_header);
    __cxa_guard_release(&qword_1009F3858);
  }

  if ((atomic_load_explicit(&qword_1009F3878, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009F3878))
  {
    sub_100004A08(&qword_1009F3860, "Mac13,2");
    __cxa_atexit(&std::string::~string, &qword_1009F3860, &_mh_execute_header);
    __cxa_guard_release(&qword_1009F3878);
  }

  v3 = *(a2 + 23);
  if (v3 >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  if (v3 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  if (byte_1009F3857 >= 0)
  {
    v6 = &qword_1009F3840;
  }

  else
  {
    v6 = qword_1009F3840;
  }

  if (byte_1009F3857 >= 0)
  {
    v7 = byte_1009F3857;
  }

  else
  {
    v7 = unk_1009F3848;
  }

  if (!v7)
  {
    return 1;
  }

  v8 = &v4[v5];
  if (v5 >= v7)
  {
    v12 = *v6;
    v13 = v5;
    v14 = v4;
    do
    {
      v15 = v13 - v7;
      if (v15 == -1)
      {
        break;
      }

      v16 = memchr(v14, v12, v15 + 1);
      if (!v16)
      {
        break;
      }

      v17 = v16;
      if (!memcmp(v16, v6, v7))
      {
        if (v17 != v8 && v17 - v4 != -1)
        {
          return 1;
        }

        break;
      }

      v14 = v17 + 1;
      v13 = v8 - (v17 + 1);
    }

    while (v13 >= v7);
  }

  v9 = byte_1009F3877 >= 0 ? &qword_1009F3860 : qword_1009F3860;
  v10 = byte_1009F3877 >= 0 ? byte_1009F3877 : unk_1009F3868;
  if (!v10)
  {
    return 1;
  }

  if (v5 >= v10)
  {
    v18 = *v9;
    v19 = v4;
    do
    {
      if (v5 - v10 == -1)
      {
        break;
      }

      v20 = memchr(v19, v18, v5 - v10 + 1);
      if (!v20)
      {
        break;
      }

      v21 = v20;
      if (!memcmp(v20, v9, v10))
      {
        return v21 != v8 && v21 - v4 != -1;
      }

      v19 = v21 + 1;
      v5 = v8 - (v21 + 1);
    }

    while (v5 >= v10);
  }

  return 0;
}

BOOL sub_10029DF38(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 23);
  if (v2 >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = *a2;
  }

  if (v2 >= 0)
  {
    v4 = *(a2 + 23);
  }

  else
  {
    v4 = *(a2 + 8);
  }

  if (byte_1009F304F >= 0)
  {
    v5 = &qword_1009F3038;
  }

  else
  {
    v5 = qword_1009F3038;
  }

  if (byte_1009F304F >= 0)
  {
    v6 = byte_1009F304F;
  }

  else
  {
    v6 = unk_1009F3040;
  }

  if (!v6)
  {
    return 1;
  }

  v8 = (v3 + v4);
  if (v4 >= v6)
  {
    v16 = *v5;
    v17 = v4;
    v18 = v3;
    do
    {
      v19 = v17 - v6;
      if (v19 == -1)
      {
        break;
      }

      v20 = memchr(v18, v16, v19 + 1);
      if (!v20)
      {
        break;
      }

      v21 = v20;
      if (!memcmp(v20, v5, v6))
      {
        if (v21 != v8 && &v21[-v3] != -1)
        {
          return 1;
        }

        break;
      }

      v18 = v21 + 1;
      v17 = v8 - (v21 + 1);
    }

    while (v17 >= v6);
  }

  v9 = byte_1009F3067 >= 0 ? &xmmword_1009F3050 : xmmword_1009F3050;
  v10 = byte_1009F3067 >= 0 ? byte_1009F3067 : *(&xmmword_1009F3050 + 1);
  if (!v10)
  {
    return 1;
  }

  if (v4 >= v10)
  {
    v22 = *v9;
    v23 = v4;
    v24 = v3;
    do
    {
      v25 = v23 - v10;
      if (v25 == -1)
      {
        break;
      }

      v26 = memchr(v24, v22, v25 + 1);
      if (!v26)
      {
        break;
      }

      v27 = v26;
      if (!memcmp(v26, v9, v10))
      {
        if (v27 != v8 && &v27[-v3] != -1)
        {
          return 1;
        }

        break;
      }

      v24 = v27 + 1;
      v23 = v8 - (v27 + 1);
    }

    while (v23 >= v10);
  }

  v11 = byte_1009F3007 >= 0 ? &qword_1009F2FF0 : qword_1009F2FF0;
  v12 = byte_1009F3007 >= 0 ? byte_1009F3007 : unk_1009F2FF8;
  if (!v12)
  {
    return 1;
  }

  if (v4 >= v12)
  {
    v28 = *v11;
    v29 = v4;
    v30 = v3;
    do
    {
      v31 = v29 - v12;
      if (v31 == -1)
      {
        break;
      }

      v32 = memchr(v30, v28, v31 + 1);
      if (!v32)
      {
        break;
      }

      v33 = v32;
      if (!memcmp(v32, v11, v12))
      {
        if (v33 != v8 && &v33[-v3] != -1)
        {
          return 1;
        }

        break;
      }

      v30 = v33 + 1;
      v29 = v8 - (v33 + 1);
    }

    while (v29 >= v12);
  }

  v13 = byte_1009F301F >= 0 ? &qword_1009F3008 : qword_1009F3008;
  v14 = byte_1009F301F >= 0 ? byte_1009F301F : unk_1009F3010;
  if (!v14)
  {
    return 1;
  }

  if (v4 >= v14)
  {
    v34 = *v13;
    v35 = v3;
    do
    {
      if (v4 - v14 == -1)
      {
        break;
      }

      v36 = memchr(v35, v34, v4 - v14 + 1);
      if (!v36)
      {
        break;
      }

      v37 = v36;
      if (!memcmp(v36, v13, v14))
      {
        if (v37 == v8 || &v37[-v3] == -1)
        {
          return sub_10029D814(a2, &xmmword_1009F3020, 0) != -1;
        }

        return 1;
      }

      v35 = v37 + 1;
      v4 = v8 - (v37 + 1);
    }

    while (v4 >= v14);
  }

  return sub_10029D814(a2, &xmmword_1009F3020, 0) != -1;
}

BOOL sub_10029E1E8(uint64_t a1, char **a2)
{
  v2 = *(a2 + 23);
  if (v2 >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = *a2;
  }

  if (v2 >= 0)
  {
    v4 = *(a2 + 23);
  }

  else
  {
    v4 = a2[1];
  }

  if (byte_1009F2F77 >= 0)
  {
    v5 = &qword_1009F2F60;
  }

  else
  {
    v5 = qword_1009F2F60;
  }

  if (byte_1009F2F77 >= 0)
  {
    v6 = byte_1009F2F77;
  }

  else
  {
    v6 = unk_1009F2F68;
  }

  if (!v6)
  {
    return 1;
  }

  v7 = &v3[v4];
  if (v4 >= v6)
  {
    v11 = *v5;
    v12 = v4;
    v13 = v3;
    do
    {
      v14 = v12 - v6;
      if (v14 == -1)
      {
        break;
      }

      v15 = memchr(v13, v11, v14 + 1);
      if (!v15)
      {
        break;
      }

      v16 = v15;
      if (!memcmp(v15, v5, v6))
      {
        if (v16 != v7 && v16 - v3 != -1)
        {
          return 1;
        }

        break;
      }

      v13 = v16 + 1;
      v12 = v7 - (v16 + 1);
    }

    while (v12 >= v6);
  }

  v8 = byte_1009F2F8F >= 0 ? &qword_1009F2F78 : qword_1009F2F78;
  v9 = byte_1009F2F8F >= 0 ? byte_1009F2F8F : unk_1009F2F80;
  if (!v9)
  {
    return 1;
  }

  if (v4 >= v9)
  {
    v17 = *v8;
    v18 = v3;
    do
    {
      if (v4 - v9 == -1)
      {
        break;
      }

      v19 = memchr(v18, v17, v4 - v9 + 1);
      if (!v19)
      {
        break;
      }

      v20 = v19;
      if (!memcmp(v19, v8, v9))
      {
        return v20 != v7 && v20 - v3 != -1;
      }

      v18 = v20 + 1;
      v4 = v7 - (v20 + 1);
    }

    while (v4 >= v9);
  }

  return 0;
}

uint64_t sub_10029E35C(uint64_t a1, char **a2)
{
  v2 = *(a2 + 23);
  if (v2 >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = *a2;
  }

  if (v2 < 0)
  {
    v2 = a2[1];
  }

  if (byte_1009F30AF >= 0)
  {
    v4 = &xmmword_1009F3098;
  }

  else
  {
    v4 = xmmword_1009F3098;
  }

  if (byte_1009F30AF >= 0)
  {
    v5 = byte_1009F30AF;
  }

  else
  {
    v5 = *(&xmmword_1009F3098 + 1);
  }

  if (!v5)
  {
    return 1;
  }

  v6 = &v2[v3];
  if (v2 >= v5)
  {
    v10 = *v4;
    v11 = v3;
    do
    {
      v12 = &v2[-v5];
      if (v12 == -1)
      {
        break;
      }

      v13 = memchr(v11, v10, (v12 + 1));
      if (!v13)
      {
        break;
      }

      v7 = v13;
      if (!memcmp(v13, v4, v5))
      {
        return v7 != v6 && v7 - v3 != -1;
      }

      v11 = v7 + 1;
      v2 = (v6 - (v7 + 1));
    }

    while (v2 >= v5);
  }

  v7 = v6;
  return v7 != v6 && v7 - v3 != -1;
}

uint64_t sub_10029E434(uint64_t a1, char **a2)
{
  v2 = *(a2 + 23);
  if (v2 >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = *a2;
  }

  if (v2 < 0)
  {
    v2 = a2[1];
  }

  if (byte_1009F33F7 >= 0)
  {
    v4 = &qword_1009F33E0;
  }

  else
  {
    v4 = qword_1009F33E0;
  }

  if (byte_1009F33F7 >= 0)
  {
    v5 = byte_1009F33F7;
  }

  else
  {
    v5 = unk_1009F33E8;
  }

  if (!v5)
  {
    return 1;
  }

  v6 = &v2[v3];
  if (v2 >= v5)
  {
    v10 = *v4;
    v11 = v3;
    do
    {
      v12 = &v2[-v5];
      if (v12 == -1)
      {
        break;
      }

      v13 = memchr(v11, v10, (v12 + 1));
      if (!v13)
      {
        break;
      }

      v7 = v13;
      if (!memcmp(v13, v4, v5))
      {
        return v7 != v6 && v7 - v3 != -1;
      }

      v11 = v7 + 1;
      v2 = (v6 - (v7 + 1));
    }

    while (v2 >= v5);
  }

  v7 = v6;
  return v7 != v6 && v7 - v3 != -1;
}

uint64_t *sub_10029E50C(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    sub_10017C290("map::at:  key not found");
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = *(v2 + 8);
      if (v3 >= v4)
      {
        break;
      }

      v2 = *v2;
      if (!v2)
      {
        goto LABEL_8;
      }
    }

    if (v4 >= v3)
    {
      return v2 + 5;
    }

    v2 = v2[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t sub_10029E564(uint64_t a1, const void **a2)
{
  v2 = *sub_10029FC14(a1, &v4, a2);
  if (!v2)
  {
    sub_10017C290("map::at:  key not found");
  }

  return v2 + 56;
}

__n128 sub_10029E5A4(__n128 *a1)
{
  a1[7].n128_u8[0] = 1;
  a1[7].n128_u8[8] = 0;
  a1[7].n128_u32[1] = 2;
  __asm { FMOV            V0.2D, #0.5 }

  a1[19] = result;
  return result;
}

void sub_10029E5C4(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v44 = a2;
  if (*(a3 + 23) < 0)
  {
    sub_1000056BC(__p, *a3, *(a3 + 8));
  }

  else
  {
    *__p = *a3;
    v42 = *(a3 + 16);
  }

  v10 = sub_10029D308(a1, __p);
  if (SHIBYTE(v42) < 0)
  {
    operator delete(__p[0]);
  }

  v43 = v10;
  if (*(a4 + 23) < 0)
  {
    sub_1000056BC(__dst, *a4, *(a4 + 8));
  }

  else
  {
    *__dst = *a4;
    v39 = *(a4 + 16);
  }

  v11 = sub_10029D308(a1, __dst);
  if (SHIBYTE(v39) < 0)
  {
    operator delete(__dst[0]);
  }

  v40 = v11;
  v12 = qword_1009FA020;
  if (!qword_1009FA020)
  {
    goto LABEL_18;
  }

  v13 = &qword_1009FA020;
  do
  {
    if (*(v12 + 32) >= a2)
    {
      v13 = v12;
    }

    v12 = *(v12 + 8 * (*(v12 + 32) < a2));
  }

  while (v12);
  if (v13 == &qword_1009FA020 || *(v13 + 8) > a2)
  {
LABEL_18:
    v44 = 1;
  }

  v34 = &v44;
  v14 = sub_1002A1E14(&qword_1009FA018, &v44);
  sub_1002A0428(&v36, (v14 + 5));
  v15 = v37[0];
  if (!v37[0])
  {
    goto LABEL_26;
  }

  v16 = v37;
  do
  {
    if (*(v15 + 8) >= v10)
    {
      v16 = v15;
    }

    v15 = v15[*(v15 + 8) < v10];
  }

  while (v15);
  if (v16 == v37 || v10 < *(v16 + 8))
  {
LABEL_26:
    v43 = 0;
  }

  v45 = &v43;
  v17 = sub_1002A1E14(&v36, &v43);
  sub_1002A0148(&v34, (v17 + 5));
  v18 = v35[0];
  if (!v35[0])
  {
    goto LABEL_34;
  }

  v19 = v35;
  do
  {
    if (*(v18 + 8) >= v11)
    {
      v19 = v18;
    }

    v18 = v18[*(v18 + 8) < v11];
  }

  while (v18);
  if (v19 == v35 || v11 < *(v19 + 8))
  {
LABEL_34:
    v40 = 0;
  }

  v45 = &v40;
  v20 = sub_1002A24A4(&v34, &v40);
  *a5 = *(v20 + 5);
  sub_10029F1D8((a5 + 16), (v20 + 7));
  v21 = *(v20 + 5);
  *(a5 + 52) = *(v20 + 92);
  *(a5 + 40) = v21;
  v22 = sub_10029F2B8(a5 + 72, v20 + 7);
  v23 = *(v20 + 9);
  *(a5 + 120) = *(v20 + 10);
  *(a5 + 104) = v23;
  v24 = *(v20 + 11);
  v25 = *(v20 + 12);
  v26 = *(v20 + 13);
  *(a5 + 184) = *(v20 + 14);
  *(a5 + 168) = v26;
  *(a5 + 152) = v25;
  *(a5 + 136) = v24;
  v27 = *(v20 + 15);
  v28 = *(v20 + 16);
  v29 = *(v20 + 17);
  *(a5 + 248) = *(v20 + 18);
  *(a5 + 232) = v29;
  *(a5 + 216) = v28;
  *(a5 + 200) = v27;
  v30 = *(v20 + 19);
  v31 = *(v20 + 20);
  v32 = *(v20 + 21);
  *(a5 + 312) = v20[44];
  *(a5 + 280) = v31;
  *(a5 + 296) = v32;
  *(a5 + 264) = v30;
  sub_10029B660(v22, a5, &v44, a3, a4, &v43, &v40);
  sub_10029BFA4(v33, a5, &v44, a3, a4, &v43, &v40);
  sub_10029E970((a5 + 72), a4);
  sub_10029FE38(&v34, v35[0]);
  sub_10029FDD8(&v36, v37[0]);
}

void sub_10029E8F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, char a12, void *a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  sub_10002074C(v27 + 16, *(v27 + 24));
  sub_10029FE38(&a9, a10);
  sub_10029FDD8(&a12, a13);
  _Unwind_Resume(a1);
}

std::string *sub_10029E970(std::string *__dst, const std::string *a2)
{
  if (__dst[1].__r_.__value_.__s.__data_[0] == 1)
  {
    std::string::operator=(__dst, a2);
  }

  else
  {
    if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
    {
      sub_1000056BC(__dst, a2->__r_.__value_.__l.__data_, a2->__r_.__value_.__l.__size_);
    }

    else
    {
      v3 = *&a2->__r_.__value_.__l.__data_;
      __dst->__r_.__value_.__r.__words[2] = a2->__r_.__value_.__r.__words[2];
      *&__dst->__r_.__value_.__l.__data_ = v3;
    }

    __dst[1].__r_.__value_.__s.__data_[0] = 1;
  }

  return __dst;
}

void *sub_10029E9E0(void *__dst, __int128 *a2, uint64_t a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_1000056BC(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    __dst[2] = *(a2 + 2);
    *__dst = v5;
  }

  sub_10029F7B4(__dst + 3, a3);
  return __dst;
}

void sub_10029EA40(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

char *sub_10029EA5C(char *__dst, __int128 *a2, uint64_t a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_1000056BC(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v5;
  }

  *(__dst + 24) = *a3;
  sub_10029F1D8(__dst + 5, a3 + 16);
  v6 = *(a3 + 40);
  *(__dst + 76) = *(a3 + 52);
  *(__dst + 4) = v6;
  sub_10029F2B8((__dst + 96), (a3 + 72));
  v7 = *(a3 + 120);
  *(__dst + 8) = *(a3 + 104);
  *(__dst + 9) = v7;
  v8 = *(a3 + 136);
  v9 = *(a3 + 152);
  v10 = *(a3 + 184);
  *(__dst + 12) = *(a3 + 168);
  *(__dst + 13) = v10;
  *(__dst + 10) = v8;
  *(__dst + 11) = v9;
  v11 = *(a3 + 200);
  v12 = *(a3 + 216);
  v13 = *(a3 + 248);
  *(__dst + 16) = *(a3 + 232);
  *(__dst + 17) = v13;
  *(__dst + 14) = v11;
  *(__dst + 15) = v12;
  v14 = *(a3 + 264);
  v15 = *(a3 + 280);
  v16 = *(a3 + 296);
  *(__dst + 42) = *(a3 + 312);
  *(__dst + 19) = v15;
  *(__dst + 20) = v16;
  *(__dst + 18) = v14;
  return __dst;
}

void sub_10029EB38(_Unwind_Exception *a1)
{
  sub_10002074C(v1 + 40, *(v1 + 48));
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

void *sub_10029EB68(void *__dst, __int128 *a2, const void ***a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_1000056BC(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    __dst[2] = *(a2 + 2);
    *__dst = v5;
  }

  sub_1002A0BBC(__dst + 3, a3);
  return __dst;
}

void sub_10029EBC8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10029EBE4(void *__dst, __int128 *a2, uint64_t a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_1000056BC(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    __dst[2] = *(a2 + 2);
    *__dst = v5;
  }

  sub_1002A0148(__dst + 3, a3);
  return __dst;
}

void sub_10029EC44(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t **sub_10029EC60(uint64_t **result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v12 = result;
    v13 = v8;
    v14 = v8;
    if (v8)
    {
      v13 = sub_10018A270(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          v8[4] = v9[4];
          sub_10029EDC4(v5, v8);
          v8 = v13;
          v14 = v13;
          if (v13)
          {
            v13 = sub_10018A270(v13);
          }

          v10 = v9[1];
          if (v10)
          {
            do
            {
              a2 = v10;
              v10 = *v10;
            }

            while (v10);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v11 = *a2 == v9;
              v9 = a2;
            }

            while (!v11);
          }

          if (!v8)
          {
            break;
          }

          v9 = a2;
        }

        while (a2 != a3);
      }
    }

    result = sub_10018A2C4(&v12);
  }

  if (a2 != a3)
  {
    sub_10029EE34();
  }

  return result;
}

void sub_10029EDB0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10018A2C4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10029EDC4(uint64_t **a1, uint64_t a2)
{
  v3 = a1 + 1;
  v4 = a1[1];
  if (v4)
  {
    do
    {
      while (1)
      {
        v3 = v4;
        if (*(a2 + 32) <= *(v4 + 4))
        {
          break;
        }

        v4 = *v4;
        v5 = v3;
        if (!*v3)
        {
          goto LABEL_8;
        }
      }

      v4 = v4[1];
    }

    while (v4);
    v5 = v3 + 1;
  }

  else
  {
    v5 = a1 + 1;
  }

LABEL_8:
  sub_100036FC8(a1, v3, v5, a2);
  return a2;
}

void sub_10029EED4(std::string *__dst, const std::string *a2)
{
  if (__dst[1].__r_.__value_.__s.__data_[0] == a2[1].__r_.__value_.__s.__data_[0])
  {
    if (__dst[1].__r_.__value_.__s.__data_[0])
    {

      std::string::operator=(__dst, a2);
    }
  }

  else if (__dst[1].__r_.__value_.__s.__data_[0])
  {
    if (SHIBYTE(__dst->__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst->__r_.__value_.__l.__data_);
    }

    __dst[1].__r_.__value_.__s.__data_[0] = 0;
  }

  else
  {
    if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
    {
      sub_1000056BC(__dst, a2->__r_.__value_.__l.__data_, a2->__r_.__value_.__l.__size_);
    }

    else
    {
      v3 = *&a2->__r_.__value_.__l.__data_;
      __dst->__r_.__value_.__r.__words[2] = a2->__r_.__value_.__r.__words[2];
      *&__dst->__r_.__value_.__l.__data_ = v3;
    }

    __dst[1].__r_.__value_.__s.__data_[0] = 1;
  }
}

void *sub_10029EF78(void *a1, int *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 16 * a3;
    do
    {
      sub_10029EFF8(a1, v4, a2);
      a2 += 4;
      v6 -= 16;
    }

    while (v6);
  }

  return a1;
}

uint64_t sub_10029EFF8(void *a1, uint64_t *a2, int *a3)
{
  v3 = *sub_10026D040(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

__n128 sub_10029F0B8(uint64_t a1, __n128 *a2)
{
  if (*(a1 + 24) == a2[1].n128_u8[8])
  {
    if (*(a1 + 24))
    {
      if (*(a1 + 23) < 0)
      {
        operator delete(*a1);
      }

      result = *a2;
      *(a1 + 16) = a2[1].n128_u64[0];
      *a1 = result;
      a2[1].n128_u8[7] = 0;
      a2->n128_u8[0] = 0;
    }
  }

  else if (*(a1 + 24))
  {
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    *(a1 + 24) = 0;
  }

  else
  {
    result = *a2;
    *(a1 + 16) = a2[1].n128_u64[0];
    *a1 = result;
    a2->n128_u64[1] = 0;
    a2[1].n128_u64[0] = 0;
    a2->n128_u64[0] = 0;
    *(a1 + 24) = 1;
  }

  return result;
}

void *sub_10029F158(void *a1, int *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 16 * a3;
    do
    {
      sub_10029EFF8(a1, v4, a2);
      a2 += 4;
      v6 -= 16;
    }

    while (v6);
  }

  return a1;
}

void *sub_10029F1D8(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_10029F230(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t sub_10029F230(uint64_t result, double *a2, double *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_1001BD3F0(v5, (v5 + 8), v4 + 4);
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

uint64_t sub_10029F2B8(uint64_t a1, __int128 *a2)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  sub_10029F308(a1, a2);
  return a1;
}

void sub_10029F2E8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1)
  {
    sub_1004B77A4(v1);
  }

  _Unwind_Resume(exception_object);
}

_OWORD *sub_10029F308(_OWORD *__dst, __int128 *a2)
{
  if (*(a2 + 24) == 1)
  {
    v2 = __dst;
    if (*(a2 + 23) < 0)
    {
      __dst = sub_1000056BC(__dst, *a2, *(a2 + 1));
    }

    else
    {
      v3 = *a2;
      *(__dst + 2) = *(a2 + 2);
      *__dst = v3;
    }

    v2[24] = 1;
  }

  return __dst;
}

void *sub_10029F36C(void *a1, unsigned int *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 32 * a3;
    do
    {
      sub_10029F3EC(a1, v4, a2);
      a2 += 8;
      v6 -= 32;
    }

    while (v6);
  }

  return a1;
}

uint64_t sub_10029F3EC(void *a1, uint64_t *a2, unsigned int *a3)
{
  result = *sub_10029F470(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    sub_10029F618();
  }

  return result;
}

uint64_t *sub_10029F470(void *a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, unsigned int *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 8), *a5 < v7))
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
    if (*(v10 + 8) < *a5)
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
          v18 = *(v16 + 32);
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

  if (a4 != v5 && v6 >= *(a4 + 8))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 32);
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

void sub_10029F6B4(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_10029F6D0(v3, v2);
  _Unwind_Resume(a1);
}

void sub_10029F6D0(uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 63) < 0)
    {
      operator delete(__p[5]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void *sub_10029F734(void *a1, int *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 16 * a3;
    do
    {
      sub_10026CFA8(a1, v4, a2);
      a2 += 4;
      v6 -= 16;
    }

    while (v6);
  }

  return a1;
}

void *sub_10029F7B4(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_10029F80C(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t sub_10029F80C(uint64_t result, int *a2, int *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_10026CFA8(v5, v5 + 1, v4 + 8);
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

void *sub_10029F894(void *a1, const void **a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 48 * a3;
    do
    {
      sub_10029F918(a1, v4, a2);
      a2 += 6;
      v6 -= 48;
    }

    while (v6);
  }

  return a1;
}

uint64_t sub_10029F918(void *a1, uint64_t a2, const void **a3)
{
  v3 = *sub_10029F9AC(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    sub_10029FB50();
  }

  return v3;
}

uint64_t sub_10029F9AC(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, const void **a5)
{
  v9 = (a1 + 1);
  if (a1 + 1 != a2 && !sub_100008750(a1, a5, (a2 + 32)))
  {
    if (!sub_100008750(a1, (a2 + 32), a5))
    {
      *a3 = a2;
      *a4 = a2;
      return a4;
    }

    a4 = (a2 + 8);
    v13 = *(a2 + 8);
    if (v13)
    {
      v14 = *(a2 + 8);
      do
      {
        v15 = v14;
        v14 = *v14;
      }

      while (v14);
    }

    else
    {
      v18 = a2;
      do
      {
        v15 = v18[2];
        v17 = *v15 == v18;
        v18 = v15;
      }

      while (!v17);
    }

    if (v15 != v9)
    {
      if (!sub_100008750(a1, a5, v15 + 4))
      {
        goto LABEL_28;
      }

      v13 = *a4;
    }

    if (v13)
    {
      *a3 = v15;
      return v15;
    }

    else
    {
      *a3 = a2;
    }

    return a4;
  }

  if (*a1 == a2)
  {
    v12 = a2;
LABEL_16:
    if (*a2)
    {
      *a3 = v12;
      return v12 + 8;
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  v11 = *a2;
  if (*a2)
  {
    do
    {
      v12 = v11;
      v11 = *(v11 + 8);
    }

    while (v11);
  }

  else
  {
    v16 = a2;
    do
    {
      v12 = *(v16 + 16);
      v17 = *v12 == v16;
      v16 = v12;
    }

    while (v17);
  }

  if (sub_100008750(a1, (v12 + 32), a5))
  {
    goto LABEL_16;
  }

LABEL_28:

  return sub_10029FC14(a1, a3, a5);
}

uint64_t sub_10029FBC8(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_10029FD28(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t sub_10029FC14(uint64_t a1, uint64_t *a2, const void **a3)
{
  v5 = a1 + 8;
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v8 = v4;
        if (!sub_100008750(a1, a3, (v4 + 32)))
        {
          break;
        }

        v4 = *v8;
        v5 = v8;
        if (!*v8)
        {
          goto LABEL_9;
        }
      }

      if (!sub_100008750(a1, (v8 + 32), a3))
      {
        break;
      }

      v5 = v8 + 8;
      v4 = *(v8 + 8);
    }

    while (v4);
  }

  else
  {
    v8 = a1 + 8;
  }

LABEL_9:
  *a2 = v8;
  return v5;
}

void *sub_10029FCB0(void *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_1000056BC(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    __dst[2] = *(a2 + 2);
    *__dst = v4;
  }

  sub_10029F7B4(__dst + 3, a2 + 24);
  return __dst;
}

void sub_10029FD0C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10029FD28(uint64_t a1)
{
  sub_10002074C(a1 + 24, *(a1 + 32));
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void sub_10029FD7C(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_10029FD7C(a1, *a2);
    sub_10029FD7C(a1, a2[1]);
    sub_10029FD28((a2 + 4));

    operator delete(a2);
  }
}

void sub_10029FDD8(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_10029FDD8(a1, *a2);
    sub_10029FDD8(a1, a2[1]);
    sub_10029FE38((a2 + 5), a2[6]);

    operator delete(a2);
  }
}

void sub_10029FE38(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_10029FE38(a1, *a2);
    sub_10029FE38(a1, a2[1]);
    sub_10029FE94((a2 + 4));

    operator delete(a2);
  }
}

void sub_10029FE94(uint64_t a1)
{
  if (*(a1 + 104) == 1 && *(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  v2 = *(a1 + 32);

  sub_10002074C(a1 + 24, v2);
}

void *sub_10029FEE8(void *a1, int *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 328 * a3;
    do
    {
      sub_10029FF6C(a1, v4, a2);
      a2 += 82;
      v6 -= 328;
    }

    while (v6);
  }

  return a1;
}

uint64_t sub_10029FF6C(void *a1, uint64_t *a2, int *a3)
{
  v3 = *sub_10026D040(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    sub_1002A0000();
  }

  return v3;
}

void sub_1002A00D4(_Unwind_Exception *a1)
{
  sub_10002074C(v2 + 56, *(v2 + 64));
  sub_1002A00FC(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1002A00FC(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_10029FE94(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void *sub_1002A0148(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_1002A01A0(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t sub_1002A01A0(uint64_t result, int *a2, int *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_10029FF6C(v5, v5 + 1, v4 + 8);
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

void *sub_1002A0228(void *a1, int *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 32 * a3;
    do
    {
      sub_1002A02A8(a1, v4, a2);
      a2 += 8;
      v6 -= 32;
    }

    while (v6);
  }

  return a1;
}

uint64_t sub_1002A02A8(void *a1, uint64_t *a2, int *a3)
{
  result = *sub_10026D040(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    sub_1002A032C();
  }

  return result;
}

void sub_1002A03AC(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1002A03C8(v3, v2);
  _Unwind_Resume(a1);
}

void sub_1002A03C8(uint64_t a1, void **a2)
{
  if (*(a1 + 8) == 1)
  {
    sub_10029FE38((a2 + 5), a2[6]);
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

void *sub_1002A0428(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_1002A0480(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t sub_1002A0480(uint64_t result, int *a2, int *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_1002A02A8(v5, v5 + 1, v4 + 8);
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

void *sub_1002A0508(void *a1, int *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 32 * a3;
    do
    {
      sub_1002A0588(a1, v4, a2);
      a2 += 8;
      v6 -= 32;
    }

    while (v6);
  }

  return a1;
}

uint64_t sub_1002A0588(void *a1, uint64_t *a2, int *a3)
{
  result = *sub_10026D040(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    sub_1002A060C();
  }

  return result;
}

void sub_1002A068C(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1002A06A8(v3, v2);
  _Unwind_Resume(a1);
}

void sub_1002A06A8(uint64_t a1, void **a2)
{
  if (*(a1 + 8) == 1)
  {
    sub_10029FDD8((a2 + 5), a2[6]);
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

void sub_1002A0708(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_1002A0708(a1, *a2);
    sub_1002A0708(a1, a2[1]);
    sub_10029FDD8((a2 + 5), a2[6]);

    operator delete(a2);
  }
}

void sub_1002A0768(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_1002A0768(a1, *a2);
    sub_1002A0768(a1, a2[1]);
    sub_1002A07C4((a2 + 4));

    operator delete(a2);
  }
}

void sub_1002A07C4(uint64_t a1)
{
  sub_1002A0818(a1 + 24, *(a1 + 32));
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void sub_1002A0818(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_1002A0818(a1, *a2);
    sub_1002A0818(a1, *(a2 + 1));
    if (a2[152] == 1 && a2[151] < 0)
    {
      operator delete(*(a2 + 16));
    }

    sub_10002074C((a2 + 72), *(a2 + 10));
    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

void *sub_1002A08A4(void *a1, const void **a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 344 * a3;
    do
    {
      sub_1002A0928(a1, v4, a2);
      a2 += 43;
      v6 -= 344;
    }

    while (v6);
  }

  return a1;
}

uint64_t sub_1002A0928(void *a1, uint64_t a2, const void **a3)
{
  result = *sub_10029F9AC(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    sub_1002A09AC();
  }

  return result;
}

void sub_1002A0A24(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1002A0B30(v3, v2);
  _Unwind_Resume(a1);
}

char *sub_1002A0A40(char *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_1000056BC(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v4;
  }

  *(__dst + 24) = *(a2 + 24);
  sub_10029F1D8(__dst + 5, a2 + 40);
  v5 = a2[4];
  *(__dst + 76) = *(a2 + 76);
  *(__dst + 4) = v5;
  sub_10029F2B8((__dst + 96), a2 + 6);
  v6 = a2[9];
  *(__dst + 8) = a2[8];
  *(__dst + 9) = v6;
  v7 = a2[10];
  v8 = a2[11];
  v9 = a2[13];
  *(__dst + 12) = a2[12];
  *(__dst + 13) = v9;
  *(__dst + 10) = v7;
  *(__dst + 11) = v8;
  v10 = a2[14];
  v11 = a2[15];
  v12 = a2[17];
  *(__dst + 16) = a2[16];
  *(__dst + 17) = v12;
  *(__dst + 14) = v10;
  *(__dst + 15) = v11;
  v13 = a2[18];
  v14 = a2[19];
  v15 = a2[20];
  *(__dst + 42) = *(a2 + 42);
  *(__dst + 19) = v14;
  *(__dst + 20) = v15;
  *(__dst + 18) = v13;
  return __dst;
}

void sub_1002A0B00(_Unwind_Exception *a1)
{
  sub_10002074C(v1 + 40, *(v1 + 48));
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

void sub_1002A0B30(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == 1)
  {
    if (*(a2 + 152) == 1 && *(a2 + 151) < 0)
    {
      operator delete(*(a2 + 128));
    }

    sub_10002074C(a2 + 72, *(a2 + 80));
    if (*(a2 + 55) < 0)
    {
      operator delete(*(a2 + 32));
    }
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

void *sub_1002A0BBC(void *a1, const void ***a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_1002A0C14(a1, *a2, a2 + 1);
  return a1;
}

uint64_t sub_1002A0C14(uint64_t result, const void **a2, const void ***a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_1002A0928(v5, (v5 + 1), v4 + 4);
      v6 = v4[1];
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
          v7 = v4[2];
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

void *sub_1002A0C9C(void *a1, const void **a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 48 * a3;
    do
    {
      sub_1002A0D20(a1, v4, a2);
      a2 += 6;
      v6 -= 48;
    }

    while (v6);
  }

  return a1;
}

uint64_t sub_1002A0D20(void *a1, uint64_t a2, const void **a3)
{
  v3 = *sub_10029F9AC(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    sub_1002A0DB4();
  }

  return v3;
}

uint64_t sub_1002A0E2C(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_1002A07C4(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void *sub_1002A0E78(void *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_1000056BC(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    __dst[2] = *(a2 + 2);
    *__dst = v4;
  }

  sub_1002A0BBC(__dst + 3, a2 + 3);
  return __dst;
}

void sub_1002A0ED4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1002A0EF0(void *a1, const void ***a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_1002A0F48(a1, *a2, a2 + 1);
  return a1;
}

uint64_t sub_1002A0F48(uint64_t result, const void **a2, const void ***a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_1002A0D20(v5, (v5 + 1), v4 + 4);
      v6 = v4[1];
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
          v7 = v4[2];
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

void *sub_1002A0FD0(void *a1, int *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 32 * a3;
    do
    {
      sub_1002A1050(a1, v4, a2);
      a2 += 8;
      v6 -= 32;
    }

    while (v6);
  }

  return a1;
}

uint64_t sub_1002A1050(void *a1, uint64_t *a2, int *a3)
{
  result = *sub_10026D040(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    sub_1002A10D4();
  }

  return result;
}

void sub_1002A1154(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1002A1170(v3, v2);
  _Unwind_Resume(a1);
}

void sub_1002A1170(uint64_t a1, void **a2)
{
  if (*(a1 + 8) == 1)
  {
    sub_1002A0768((a2 + 5), a2[6]);
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

void sub_1002A11D0(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_1002A11D0(a1, *a2);
    sub_1002A11D0(a1, a2[1]);
    sub_1002A0768((a2 + 5), a2[6]);

    operator delete(a2);
  }
}

void sub_1002A1230(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_1002A1230(a1, *a2);
    sub_1002A1230(a1, a2[1]);
    sub_1002A0818((a2 + 5), a2[6]);

    operator delete(a2);
  }
}

void *sub_1002A1290(void *a1, int *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 32 * a3;
    do
    {
      sub_1002A1310(a1, v4, a2);
      a2 += 8;
      v6 -= 32;
    }

    while (v6);
  }

  return a1;
}

uint64_t sub_1002A1310(void *a1, uint64_t *a2, int *a3)
{
  result = *sub_10026D040(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    sub_1002A1394();
  }

  return result;
}

void sub_1002A1414(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1002A1430(v3, v2);
  _Unwind_Resume(a1);
}

void sub_1002A1430(uint64_t a1, char **a2)
{
  if (*(a1 + 8) == 1)
  {
    sub_1002A0818((a2 + 5), a2[6]);
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

void *sub_1002A1490(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_1002A14E8(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t sub_1002A14E8(uint64_t result, int *a2, int *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_1002A1310(v5, v5 + 1, v4 + 8);
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

void *sub_1002A1570(void *a1, int *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 32 * a3;
    do
    {
      sub_1002A15F0(a1, v4, a2);
      a2 += 8;
      v6 -= 32;
    }

    while (v6);
  }

  return a1;
}

uint64_t sub_1002A15F0(void *a1, uint64_t *a2, int *a3)
{
  result = *sub_10026D040(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    sub_1002A1674();
  }

  return result;
}

void sub_1002A16F4(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1002A1710(v3, v2);
  _Unwind_Resume(a1);
}

void sub_1002A1710(uint64_t a1, void **a2)
{
  if (*(a1 + 8) == 1)
  {
    sub_1002A1230((a2 + 5), a2[6]);
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

void sub_1002A1770(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_1002A1770(a1, *a2);
    sub_1002A1770(a1, a2[1]);
    sub_1002A1230((a2 + 5), a2[6]);

    operator delete(a2);
  }
}

void sub_1002A17D0(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_1002A17D0(a1, *a2);
    sub_1002A17D0(a1, a2[1]);
    sub_1002A182C((a2 + 4));

    operator delete(a2);
  }
}

void sub_1002A182C(uint64_t a1)
{
  sub_10029FE38(a1 + 24, *(a1 + 32));
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void *sub_1002A1880(void *a1, const void **a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 48 * a3;
    do
    {
      sub_1002A1904(a1, v4, a2);
      a2 += 6;
      v6 -= 48;
    }

    while (v6);
  }

  return a1;
}

uint64_t sub_1002A1904(void *a1, uint64_t a2, const void **a3)
{
  v3 = *sub_10029F9AC(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    sub_1002A1998();
  }

  return v3;
}

uint64_t sub_1002A1A10(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_1002A182C(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void *sub_1002A1A5C(void *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_1000056BC(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    __dst[2] = *(a2 + 2);
    *__dst = v4;
  }

  sub_1002A0148(__dst + 3, a2 + 24);
  return __dst;
}

void sub_1002A1AB8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1002A1AD4(void *a1, const void ***a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_1002A1B2C(a1, *a2, a2 + 1);
  return a1;
}

uint64_t sub_1002A1B2C(uint64_t result, const void **a2, const void ***a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_1002A1904(v5, (v5 + 1), v4 + 4);
      v6 = v4[1];
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
          v7 = v4[2];
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

void *sub_1002A1BB4(void *a1, int *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 32 * a3;
    do
    {
      sub_1002A1C34(a1, v4, a2);
      a2 += 8;
      v6 -= 32;
    }

    while (v6);
  }

  return a1;
}

uint64_t sub_1002A1C34(void *a1, uint64_t *a2, int *a3)
{
  result = *sub_10026D040(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    sub_1002A1CB8();
  }

  return result;
}

void sub_1002A1D38(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1002A1D54(v3, v2);
  _Unwind_Resume(a1);
}

void sub_1002A1D54(uint64_t a1, void **a2)
{
  if (*(a1 + 8) == 1)
  {
    sub_1002A17D0((a2 + 5), a2[6]);
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

void sub_1002A1DB4(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_1002A1DB4(a1, *a2);
    sub_1002A1DB4(a1, a2[1]);
    sub_1002A17D0((a2 + 5), a2[6]);

    operator delete(a2);
  }
}

uint64_t *sub_1002A1E14(uint64_t a1, int *a2)
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
      v5 = *(v2 + 32);
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

uint64_t sub_1002A1EF4(uint64_t a1, const void **a2)
{
  v2 = *sub_10029FC14(a1, &v4, a2);
  if (!v2)
  {
    sub_1002A1F9C();
  }

  return v2;
}

uint64_t sub_1002A2040(uint64_t a1, const void **a2)
{
  result = *sub_10029FC14(a1, &v3, a2);
  if (!result)
  {
    sub_1002A20D8();
  }

  return result;
}

void sub_1002A2164(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1002A0B30(v3, v2);
  _Unwind_Resume(a1);
}

char *sub_1002A2180(char *__dst, __int128 **a2)
{
  v3 = *a2;
  if (*(*a2 + 23) < 0)
  {
    sub_1000056BC(__dst, *v3, *(v3 + 1));
  }

  else
  {
    v4 = *v3;
    *(__dst + 2) = *(v3 + 2);
    *__dst = v4;
  }

  *(__dst + 40) = 0u;
  *(__dst + 312) = 0u;
  *(__dst + 328) = 0u;
  *(__dst + 280) = 0u;
  *(__dst + 296) = 0u;
  *(__dst + 248) = 0u;
  *(__dst + 264) = 0u;
  *(__dst + 216) = 0u;
  *(__dst + 232) = 0u;
  *(__dst + 184) = 0u;
  *(__dst + 200) = 0u;
  *(__dst + 152) = 0u;
  *(__dst + 168) = 0u;
  *(__dst + 120) = 0u;
  *(__dst + 136) = 0u;
  *(__dst + 88) = 0u;
  *(__dst + 104) = 0u;
  *(__dst + 56) = 0u;
  *(__dst + 72) = 0u;
  *(__dst + 3) = 0x300000008;
  *(__dst + 4) = 0xC04E800000000000;
  v11 = 0xC04E800000000000;
  sub_1001BD370(__dst + 5, &v11, 1);
  *(__dst + 4) = xmmword_100563C70;
  *(__dst + 10) = 0x4024000000000000;
  *(__dst + 22) = 45;
  __dst[96] = 0;
  __dst[120] = 0;
  *(__dst + 16) = 0;
  __dst[136] = 0;
  *(__dst + 35) = 1;
  __dst[144] = 1;
  *(__dst + 152) = xmmword_100563C80;
  *(__dst + 168) = xmmword_100563C90;
  __asm { FMOV            V0.2D, #1.0 }

  *(__dst + 184) = _Q0;
  *(__dst + 25) = 0xC059000000000000;
  *(__dst + 13) = xmmword_100563CA0;
  *(__dst + 28) = vdup_n_s32(0x3DCCCCCDu);
  *(__dst + 232) = xmmword_100563BE0;
  *(__dst + 32) = 0;
  *(__dst + 33) = 0;
  *(__dst + 31) = 0x3FD999999999999ALL;
  *(__dst + 17) = xmmword_100563BF0;
  *(__dst + 72) = 5;
  *(__dst + 37) = 0x4000000000000000;
  *(__dst + 76) = 10;
  *(__dst + 39) = 0x4034000000000000;
  *(__dst + 80) = 3;
  *(__dst + 41) = 0x3FF0000000000000;
  *(__dst + 42) = 0x4008000000000000;
  return __dst;
}

void sub_1002A233C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002A2358(uint64_t a1, const void **a2)
{
  v2 = *sub_10029FC14(a1, &v4, a2);
  if (!v2)
  {
    sub_1002A2400();
  }

  return v2;
}

uint64_t *sub_1002A24A4(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    sub_1002A256C();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 32);
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

uint64_t sub_1002A2764(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __chkstk_darwin(a1, a2, a3);
  v1704 = 6;
  sub_10029B2E8(v1862, &v1704, &xmmword_1009F3428);
  v1703 = 7;
  sub_10029B2E8(&v1863, &v1703, &xmmword_1009F3428);
  v1702 = 0;
  sub_10029B2E8(v1864, &v1702, &xmmword_1009F3428);
  sub_10029FEE8(v1705, v1862, 3);
  v1865 = 1;
  sub_1002A0148(v1866, v1705);
  v1700 = 6;
  sub_10029B2E8(v1859, &v1700, &xmmword_1009F3428);
  v1699 = 7;
  sub_10029B2E8(&v1860, &v1699, &xmmword_1009F3428);
  v1698 = 0;
  sub_10029B2E8(v1861, &v1698, &xmmword_1009F3428);
  sub_10029FEE8(v1701, v1859, 3);
  v1867 = 2;
  sub_1002A0148(v1868, v1701);
  v1696 = 6;
  sub_10029B2E8(v1855, &v1696, &xmmword_1009F3428);
  v1695 = 4;
  sub_10029B2E8(&v1856, &v1695, &xmmword_1009F3428);
  v1694 = 7;
  sub_10029B2E8(&v1857, &v1694, &xmmword_1009F3428);
  v1693 = 0;
  sub_10029B2E8(v1858, &v1693, &xmmword_1009F3428);
  sub_10029FEE8(v1697, v1855, 4);
  v1869 = 3;
  sub_1002A0148(v1870, v1697);
  v1691 = 6;
  sub_10029B2E8(v1851, &v1691, &xmmword_1009F3428);
  v1690 = 3;
  v1661[0] = 0x300000008;
  v1661[1] = 0xC04F000000000000;
  v1741[0] = -62.0;
  sub_1001BD370(v1662, v1741, 1);
  v1663 = xmmword_100563C70;
  v1664 = 0x4024000000000000;
  v1665 = 45;
  LOBYTE(v1666) = 0;
  v1668 = 0;
  v1669 = 0;
  v1670 = 0;
  v1671 = 1;
  v1672 = 1;
  v1673 = xmmword_100563C80;
  v1674 = xmmword_100563C90;
  __asm { FMOV            V0.2D, #1.0 }

  v61 = _Q0;
  v1675 = _Q0;
  v1676 = 0xC059000000000000;
  v1677 = xmmword_100563CA0;
  v1678 = vdup_n_s32(0x3DCCCCCDu);
  v1679 = xmmword_100563BE0;
  v1681 = 0;
  v1682 = 0;
  v1680 = 0x3FD999999999999ALL;
  v1683 = xmmword_100563BF0;
  v1684 = 5;
  v1685 = 0x4000000000000000;
  v1686 = 10;
  v1687 = 0x4034000000000000;
  v1688 = 3;
  v1689 = xmmword_100563CB0;
  sub_10029B3B8(&v1852, &v1690, v1661);
  v1660 = 7;
  sub_10029B2E8(&v1853, &v1660, &xmmword_1009F3428);
  v1659 = 0;
  v1630[0] = 0x300000008;
  v1630[1] = 0xC04F000000000000;
  v1741[0] = -62.0;
  sub_1001BD370(v1631, v1741, 1);
  v1632 = xmmword_100563C70;
  v1633 = 0x4024000000000000;
  v1634 = 45;
  LOBYTE(v1635) = 0;
  v1637 = 0;
  v1638 = 0;
  v1639 = 0;
  v1640 = 1;
  v1641 = 1;
  v1642 = xmmword_100563C80;
  v1643 = xmmword_100563C90;
  v1644 = v61;
  v1645 = 0xC059000000000000;
  v1646 = xmmword_100563CA0;
  v1647 = vdup_n_s32(0x3DCCCCCDu);
  v1648 = xmmword_100563BE0;
  v1650 = 0;
  v1651 = 0;
  v1649 = 0x3FD999999999999ALL;
  v1652 = xmmword_100563BF0;
  v1653 = 5;
  v1654 = 0x4000000000000000;
  v1655 = 10;
  v1656 = 0x4034000000000000;
  v1657 = 3;
  v1658 = xmmword_100563CB0;
  sub_10029B3B8(v1854, &v1659, v1630);
  sub_10029FEE8(v1692, v1851, 4);
  v1871 = 4;
  sub_1002A0148(v1872, v1692);
  v1628 = 6;
  v1599[0] = 0x300000008;
  v1599[1] = 0xC04F19999999999ALL;
  v1741[0] = -62.2;
  sub_1001BD370(v1600, v1741, 1);
  v1601 = xmmword_100563C70;
  v1602 = 0x4024000000000000;
  v1603 = 45;
  LOBYTE(v1604) = 0;
  v1606 = 0;
  v1607 = 0;
  v1608 = 0;
  v1609 = 1;
  v1610 = 1;
  v1611 = xmmword_100563C80;
  v1612 = xmmword_100563C90;
  v1613 = v61;
  v1614 = 0xC059000000000000;
  v1615 = xmmword_100563CA0;
  v1616 = vdup_n_s32(0x3DCCCCCDu);
  v1617 = xmmword_100563BE0;
  v1619 = 0;
  v1620 = 0;
  v1618 = 0x3FD999999999999ALL;
  v1621 = xmmword_100563BF0;
  v1622 = 5;
  v1623 = 0x4000000000000000;
  v1624 = 10;
  v1625 = 0x4034000000000000;
  v1626 = 3;
  v1627 = xmmword_100563CB0;
  sub_10029B3B8(v1848, &v1628, v1599);
  v1598 = 7;
  sub_10029B2E8(&v1849, &v1598, &xmmword_1009F3428);
  v1597 = 0;
  v1568[0] = 0x300000008;
  v1568[1] = 0xC04F19999999999ALL;
  v1741[0] = -62.2;
  sub_1001BD370(v1569, v1741, 1);
  v1570 = xmmword_100563C70;
  v1571 = 0x4024000000000000;
  v1572 = 45;
  LOBYTE(v1573) = 0;
  v1575 = 0;
  v1576 = 0;
  v1577 = 0;
  v1578 = 1;
  v1579 = 1;
  v1580 = xmmword_100563C80;
  v1581 = xmmword_100563C90;
  v1582 = v61;
  v1583 = 0xC059000000000000;
  v1584 = xmmword_100563CA0;
  v1585 = vdup_n_s32(0x3DCCCCCDu);
  v1586 = xmmword_100563BE0;
  v1588 = 0;
  v1589 = 0;
  v1587 = 0x3FD999999999999ALL;
  v1590 = xmmword_100563BF0;
  v1591 = 5;
  v1592 = 0x4000000000000000;
  v1593 = 10;
  v1594 = 0x4034000000000000;
  v1595 = 3;
  v1596 = xmmword_100563CB0;
  sub_10029B3B8(v1850, &v1597, v1568);
  sub_10029FEE8(v1629, v1848, 3);
  v1873 = 5;
  sub_1002A0148(v1874, v1629);
  v1566 = 6;
  sub_10029B2E8(v1845, &v1566, &xmmword_1009F3428);
  v1565 = 7;
  sub_10029B2E8(&v1846, &v1565, &xmmword_1009F3428);
  v1564 = 0;
  sub_10029B2E8(v1847, &v1564, &xmmword_1009F3428);
  sub_10029FEE8(v1567, v1845, 3);
  v1875 = 9;
  sub_1002A0148(v1876, v1567);
  v1562 = 6;
  sub_10029B2E8(v1842, &v1562, &xmmword_1009F3428);
  v1561 = 7;
  sub_10029B2E8(&v1843, &v1561, &xmmword_1009F3428);
  v1560 = 0;
  sub_10029B2E8(v1844, &v1560, &xmmword_1009F3428);
  sub_10029FEE8(v1563, v1842, 3);
  v1877 = 12;
  sub_1002A0148(v1878, v1563);
  v1558 = 1;
  sub_10029B2E8(v1832, &v1558, &xmmword_1009F3428);
  v1557 = 3;
  v1528[0] = 0x300000008;
  v1528[1] = 0xC050933333333333;
  v1741[0] = -66.3;
  sub_1001BD370(v1529, v1741, 1);
  v1530 = xmmword_100563C70;
  v1531 = 0x4024000000000000;
  v1532 = 45;
  LOBYTE(v1533) = 0;
  v1535 = 0;
  v1536 = 0;
  v1537 = 0;
  v1538 = 1;
  v1539 = 1;
  v1540 = xmmword_100563C80;
  v1541 = xmmword_100563C90;
  v1542 = v61;
  v1543 = 0xC059000000000000;
  v1544 = xmmword_100563CA0;
  v1545 = vdup_n_s32(0x3DCCCCCDu);
  v1546 = xmmword_100563BE0;
  v1548 = 0;
  v1549 = 0;
  v1547 = 0x3FD999999999999ALL;
  v1550 = xmmword_100563BF0;
  v1551 = 5;
  v1552 = 0x4000000000000000;
  v1553 = 10;
  v1554 = 0x4034000000000000;
  v1555 = 3;
  v1556 = xmmword_100563CB0;
  sub_10029B3B8(&v1833, &v1557, v1528);
  v1527 = 2;
  v1498[0] = 0x300000008;
  v1498[1] = 0xC050B9999999999ALL;
  v1741[0] = -66.9;
  sub_1001BD370(v1499, v1741, 1);
  v1500 = xmmword_100563C70;
  v1501 = 0x4024000000000000;
  v1502 = 45;
  LOBYTE(v1503) = 0;
  v1505 = 0;
  v1506 = 0;
  v1507 = 0;
  v1508 = 1;
  v1509 = 1;
  v1510 = xmmword_100563C80;
  v1511 = xmmword_100563C90;
  v1512 = v61;
  v1513 = 0xC059000000000000;
  v1514 = xmmword_100563CA0;
  v1515 = vdup_n_s32(0x3DCCCCCDu);
  v1516 = xmmword_100563BE0;
  v1518 = 0;
  v1519 = 0;
  v1517 = 0x3FD999999999999ALL;
  v1520 = xmmword_100563BF0;
  v1521 = 5;
  v1522 = 0x4000000000000000;
  v1523 = 10;
  v1524 = 0x4034000000000000;
  v1525 = 3;
  v1526 = xmmword_100563CB0;
  sub_10029B3B8(&v1834, &v1527, v1498);
  v1497 = 4;
  v1468[0] = 0x300000008;
  v1468[1] = 0xC05079999999999ALL;
  v1741[0] = -65.9;
  sub_1001BD370(v1469, v1741, 1);
  v1470 = xmmword_100563C70;
  v1471 = 0x4024000000000000;
  v1472 = 45;
  LOBYTE(v1473) = 0;
  v1475 = 0;
  v1476 = 0;
  v1477 = 0;
  v1478 = 1;
  v1479 = 1;
  v1480 = xmmword_100563C80;
  v1481 = xmmword_100563C90;
  v1482 = v61;
  v1483 = 0xC059000000000000;
  v1484 = xmmword_100563CA0;
  v1485 = vdup_n_s32(0x3DCCCCCDu);
  v1486 = xmmword_100563BE0;
  v1488 = 0;
  v1489 = 0;
  v1487 = 0x3FD999999999999ALL;
  v1490 = xmmword_100563BF0;
  v1491 = 5;
  v1492 = 0x4000000000000000;
  v1493 = 10;
  v1494 = 0x4034000000000000;
  v1495 = 3;
  v1496 = xmmword_100563CB0;
  sub_10029B3B8(&v1835, &v1497, v1468);
  v1467 = 5;
  sub_10029B2E8(&v1836, &v1467, &xmmword_1009F3428);
  v1466 = 9;
  v1437[0] = 0x300000008;
  v1437[1] = 0xC04F400000000000;
  v1741[0] = -62.5;
  sub_1001BD370(v1438, v1741, 1);
  v1439 = xmmword_100563C70;
  v1440 = 0x4024000000000000;
  v1441 = 45;
  LOBYTE(v1442) = 0;
  v1444 = 0;
  v1445 = 0;
  v1446 = 0;
  v1447 = 1;
  v1448 = 1;
  v1449 = xmmword_100563C80;
  v1450 = xmmword_100563C90;
  v1451 = v61;
  v1452 = 0xC059000000000000;
  v1453 = xmmword_100563CA0;
  v1454 = vdup_n_s32(0x3DCCCCCDu);
  v1455 = xmmword_100563BE0;
  v1457 = 0;
  v1458 = 0;
  v1456 = 0x3FD999999999999ALL;
  v1459 = xmmword_100563BF0;
  v1460 = 5;
  v1461 = 0x4000000000000000;
  v1462 = 10;
  v1463 = 0x4034000000000000;
  v1464 = 3;
  v1465 = xmmword_100563CB0;
  sub_10029B3B8(&v1837, &v1466, v1437);
  v1436 = 12;
  sub_10029B2E8(&v1838, &v1436, &xmmword_1009F3428);
  v1435 = 6;
  sub_10029B2E8(&v1839, &v1435, &xmmword_1009F3428);
  v1434 = 18;
  v1405[0] = 0x200000003;
  v1405[1] = 0xC04E000000000000;
  v1741[0] = -60.0;
  sub_1001BD370(v1406, v1741, 1);
  v1407 = xmmword_1005690D0;
  v1408 = 0x4000000000000000;
  v1409 = 20;
  LOBYTE(v1410) = 0;
  v1412 = 0;
  v1413 = 0;
  v1414 = 0;
  v1415 = 1;
  v1416 = 1;
  v1417 = xmmword_100563C80;
  v1418 = xmmword_100563C90;
  v1419 = v61;
  v1420 = 0xC059000000000000;
  v1421 = xmmword_100563CA0;
  v1422 = vdup_n_s32(0x3DCCCCCDu);
  v1423 = xmmword_100563BE0;
  v1425 = 0;
  v1426 = 0;
  v1424 = 0x3FD999999999999ALL;
  v1427 = xmmword_100563BF0;
  v1428 = 5;
  v1429 = 0x4000000000000000;
  v1430 = 10;
  v1431 = 0x4034000000000000;
  v1432 = 3;
  v1433 = xmmword_100563CB0;
  sub_10029B3B8(&v1840, &v1434, v1405);
  v1404 = 0;
  v1375[0] = 0x300000008;
  v1375[1] = 0xC050B9999999999ALL;
  v1741[0] = -66.9;
  sub_1001BD370(v1376, v1741, 1);
  v1377 = xmmword_100563C70;
  v1378 = 0x4024000000000000;
  v1379 = 45;
  LOBYTE(v1380) = 0;
  v1382 = 0;
  v1383 = 0;
  v1384 = 0;
  v1385 = 1;
  v1386 = 1;
  v1387 = xmmword_100563C80;
  v1388 = xmmword_100563C90;
  v1389 = v61;
  v1390 = 0xC059000000000000;
  v1391 = xmmword_100563CA0;
  v1392 = vdup_n_s32(0x3DCCCCCDu);
  v1393 = xmmword_100563BE0;
  v1395 = 0;
  v1396 = 0;
  v1394 = 0x3FD999999999999ALL;
  v1397 = xmmword_100563BF0;
  v1398 = 5;
  v1399 = 0x4000000000000000;
  v1400 = 10;
  v1401 = 0x4034000000000000;
  v1402 = 3;
  v1403 = xmmword_100563CB0;
  sub_10029B3B8(v1841, &v1404, v1375);
  sub_10029FEE8(v1559, v1832, 10);
  v1879 = 6;
  sub_1002A0148(v1880, v1559);
  v1373 = 4;
  sub_10029B2E8(v1825, &v1373, &xmmword_1009F3428);
  v1372 = 1;
  sub_10029B2E8(&v1826, &v1372, &xmmword_1009F3428);
  v1371 = 5;
  sub_10029B2E8(&v1827, &v1371, &xmmword_1009F3428);
  v1370 = 12;
  sub_10029B2E8(&v1828, &v1370, &xmmword_1009F3428);
  v1369 = 18;
  v1340[0] = 0x200000003;
  v1340[1] = 0xC04E000000000000;
  v1741[0] = -60.0;
  sub_1001BD370(v1341, v1741, 1);
  v1342 = xmmword_1005690D0;
  v1343 = 0x4000000000000000;
  v1344 = 20;
  LOBYTE(v1345) = 0;
  v1347 = 0;
  v1348 = 0;
  v1349 = 0;
  v1350 = 1;
  v1351 = 1;
  v1352 = xmmword_100563C80;
  v1353 = xmmword_100563C90;
  v1354 = v61;
  v1355 = 0xC059000000000000;
  v1356 = xmmword_100563CA0;
  v1357 = vdup_n_s32(0x3DCCCCCDu);
  v1358 = xmmword_100563BE0;
  v1360 = 0;
  v1361 = 0;
  v1359 = 0x3FD999999999999ALL;
  v1362 = xmmword_100563BF0;
  v1363 = 5;
  v1364 = 0x4000000000000000;
  v1365 = 10;
  v1366 = 0x4034000000000000;
  v1367 = 3;
  v1368 = xmmword_100563CB0;
  sub_10029B3B8(&v1829, &v1369, v1340);
  v1339 = 7;
  v1310[0] = 0x300000008;
  v1310[1] = 0xC050000000000000;
  v1741[0] = -64.0;
  sub_1001BD370(v1311, v1741, 1);
  v1312 = xmmword_100563C70;
  v1313 = 0x4024000000000000;
  v1314 = 45;
  LOBYTE(v1315) = 0;
  v1317 = 0;
  v1318 = 0;
  v1319 = 0;
  v1320 = 1;
  v1321 = 1;
  v1322 = xmmword_100563C80;
  v1323 = xmmword_100563C90;
  v1324 = v61;
  v1325 = 0xC059000000000000;
  v1326 = xmmword_100563CA0;
  v1327 = vdup_n_s32(0x3DCCCCCDu);
  v1328 = xmmword_100563BE0;
  v1330 = 0;
  v1331 = 0;
  v1329 = 0x3FD999999999999ALL;
  v1332 = xmmword_100563BF0;
  v1333 = 5;
  v1334 = 0x4000000000000000;
  v1335 = 10;
  v1336 = 0x4034000000000000;
  v1337 = 3;
  v1338 = xmmword_100563CB0;
  sub_10029B3B8(&v1830, &v1339, v1310);
  v1309 = 0;
  sub_10029B2E8(v1831, &v1309, &xmmword_1009F3428);
  sub_10029FEE8(v1374, v1825, 7);
  v1881 = 7;
  sub_1002A0148(v1882, v1374);
  v1307 = 0;
  v1278[0] = 0x300000008;
  v1278[1] = 0xC050B9999999999ALL;
  v1741[0] = -66.9;
  sub_1001BD370(v1279, v1741, 1);
  v1280 = xmmword_100563C70;
  v1281 = 0x4024000000000000;
  v1282 = 45;
  LOBYTE(v1283) = 0;
  v1285 = 0;
  v1286 = 0;
  v1287 = 0;
  v1288 = 1;
  v1289 = 1;
  v1290 = xmmword_100563C80;
  v1291 = xmmword_100563C90;
  v1292 = v61;
  v1293 = 0xC059000000000000;
  v1294 = xmmword_100563CA0;
  v1295 = vdup_n_s32(0x3DCCCCCDu);
  v1296 = xmmword_100563BE0;
  v1298 = 0;
  v1299 = 0;
  v1297 = 0x3FD999999999999ALL;
  v1300 = xmmword_100563BF0;
  v1301 = 5;
  v1302 = 0x4000000000000000;
  v1303 = 10;
  v1304 = 0x4034000000000000;
  v1305 = 3;
  v1306 = xmmword_100563CB0;
  sub_10029B3B8(v1821, &v1307, v1278);
  sub_10029FEE8(v1308, v1821, 1);
  v1883 = 0;
  sub_1002A0148(v1884, v1308);
  sub_1002A0228(v1706, &v1865, 10);
  v1885 = 4;
  sub_1002A0428(v1886, v1706);
  v1275 = 7;
  v1246[0] = 0x300000008;
  v1246[1] = 0xC04CC00000000000;
  v1741[0] = -57.5;
  sub_1001BD370(v1247, v1741, 1);
  v1248 = xmmword_100563C70;
  v1249 = 0x4024000000000000;
  v1250 = 45;
  LOBYTE(v1251) = 0;
  v1253 = 0;
  v1254 = 0;
  v1255 = 0;
  v1256 = 1;
  v1257 = 1;
  v1258 = xmmword_100563C80;
  v1259 = xmmword_100563C90;
  v1260 = v61;
  v1261 = 0xC059000000000000;
  v1262 = xmmword_100563CA0;
  v1263 = vdup_n_s32(0x3DCCCCCDu);
  v1264 = xmmword_100563BE0;
  v1266 = 0;
  v1267 = 0;
  v1265 = 0x3FD999999999999ALL;
  v1268 = xmmword_100563BF0;
  v1269 = 5;
  v1270 = 0x4000000000000000;
  v1271 = 10;
  v1272 = 0x4034000000000000;
  v1273 = 3;
  v1274 = xmmword_100563CB0;
  sub_10029B3B8(v1801, &v1275, v1246);
  v1245 = 0;
  sub_10029B2E8(v1802, &v1245, &xmmword_1009F3428);
  sub_10029FEE8(v1276, v1801, 2);
  v1803 = 1;
  sub_1002A0148(v1804, v1276);
  v1243 = 7;
  v1214[0] = 0x300000008;
  v1214[1] = 0xC04B800000000000;
  v1741[0] = -55.0;
  sub_1001BD370(v1215, v1741, 1);
  v1216 = xmmword_100563C70;
  v1217 = 0x4024000000000000;
  v1218 = 45;
  LOBYTE(v1219) = 0;
  v1221 = 0;
  v1222 = 0;
  v1223 = 0;
  v1224 = 1;
  v1225 = 1;
  v1226 = xmmword_100563C80;
  v1227 = xmmword_100563C90;
  v1228 = v61;
  v1229 = 0xC059000000000000;
  v1230 = xmmword_100563CA0;
  v1231 = vdup_n_s32(0x3DCCCCCDu);
  v1232 = xmmword_100563BE0;
  v1234 = 0;
  v1235 = 0;
  v1233 = 0x3FD999999999999ALL;
  v1236 = xmmword_100563BF0;
  v1237 = 5;
  v1238 = 0x4000000000000000;
  v1239 = 10;
  v1240 = 0x4034000000000000;
  v1241 = 3;
  v1242 = xmmword_100563CB0;
  sub_10029B3B8(v1799, &v1243, v1214);
  v1213 = 0;
  sub_10029B2E8(v1800, &v1213, &xmmword_1009F3428);
  sub_10029FEE8(v1244, v1799, 2);
  v1805 = 2;
  sub_1002A0148(v1806, v1244);
  v1211 = 7;
  v1182[0] = 0x300000008;
  v1182[1] = 0xC04A000000000000;
  v1741[0] = -52.0;
  sub_1001BD370(v1183, v1741, 1);
  v1184 = xmmword_100563C70;
  v1185 = 0x4024000000000000;
  v1186 = 45;
  LOBYTE(v1187) = 0;
  v1189 = 0;
  v1190 = 0;
  v1191 = 0;
  v1192 = 1;
  v1193 = 1;
  v1194 = xmmword_100563C80;
  v1195 = xmmword_100563C90;
  v1196 = v61;
  v1197 = 0xC059000000000000;
  v1198 = xmmword_100563CA0;
  v1199 = vdup_n_s32(0x3DCCCCCDu);
  v1200 = xmmword_100563BE0;
  v1202 = 0;
  v1203 = 0;
  v1201 = 0x3FD999999999999ALL;
  v1204 = xmmword_100563BF0;
  v1205 = 5;
  v1206 = 0x4000000000000000;
  v1207 = 10;
  v1208 = 0x4034000000000000;
  v1209 = 3;
  v1210 = xmmword_100563CB0;
  sub_10029B3B8(v1797, &v1211, v1182);
  v1181 = 0;
  sub_10029B2E8(v1798, &v1181, &xmmword_1009F3428);
  sub_10029FEE8(v1212, v1797, 2);
  v1807 = 3;
  sub_1002A0148(v1808, v1212);
  v1179 = 7;
  v1150[0] = 0x300000008;
  v1150[1] = 0xC04A400000000000;
  v1741[0] = -52.5;
  sub_1001BD370(v1151, v1741, 1);
  v1152 = xmmword_100563C70;
  v1153 = 0x4024000000000000;
  v1154 = 45;
  LOBYTE(v1155) = 0;
  v1157 = 0;
  v1158 = 0;
  v1159 = 0;
  v1160 = 1;
  v1161 = 1;
  v1162 = xmmword_100563C80;
  v1163 = xmmword_100563C90;
  v1164 = v61;
  v1165 = 0xC059000000000000;
  v1166 = xmmword_100563CA0;
  v1167 = vdup_n_s32(0x3DCCCCCDu);
  v1168 = xmmword_100563BE0;
  v1170 = 0;
  v1171 = 0;
  v1169 = 0x3FD999999999999ALL;
  v1172 = xmmword_100563BF0;
  v1173 = 5;
  v1174 = 0x4000000000000000;
  v1175 = 10;
  v1176 = 0x4034000000000000;
  v1177 = 3;
  v1178 = xmmword_100563CB0;
  sub_10029B3B8(v1795, &v1179, v1150);
  v1149 = 0;
  sub_10029B2E8(v1796, &v1149, &xmmword_1009F3428);
  sub_10029FEE8(v1180, v1795, 2);
  v1809 = 4;
  sub_1002A0148(v1810, v1180);
  v1147 = 7;
  v1118[0] = 0x300000008;
  v1118[1] = 0xC048A66666666666;
  v1741[0] = -49.3;
  sub_1001BD370(v1119, v1741, 1);
  v1120 = xmmword_100563C70;
  v1121 = 0x4024000000000000;
  v1122 = 45;
  LOBYTE(v1123) = 0;
  v1125 = 0;
  v1126 = 0;
  v1127 = 0;
  v1128 = 1;
  v1129 = 1;
  v1130 = xmmword_100563C80;
  v1131 = xmmword_100563C90;
  v1132 = v61;
  v1133 = 0xC059000000000000;
  v1134 = xmmword_100563CA0;
  v1135 = vdup_n_s32(0x3DCCCCCDu);
  v1136 = xmmword_100563BE0;
  v1138 = 0;
  v1139 = 0;
  v1137 = 0x3FD999999999999ALL;
  v1140 = xmmword_100563BF0;
  v1141 = 5;
  v1142 = 0x4000000000000000;
  v1143 = 10;
  v1144 = 0x4034000000000000;
  v1145 = 3;
  v1146 = xmmword_100563CB0;
  sub_10029B3B8(v1793, &v1147, v1118);
  v1117 = 0;
  sub_10029B2E8(v1794, &v1117, &xmmword_1009F3428);
  sub_10029FEE8(v1148, v1793, 2);
  v1811 = 5;
  sub_1002A0148(v1812, v1148);
  v1115 = 7;
  sub_10029B2E8(v1791, &v1115, &xmmword_1009F3428);
  v1114 = 0;
  sub_10029B2E8(v1792, &v1114, &xmmword_1009F3428);
  sub_10029FEE8(v1116, v1791, 2);
  v1813 = 12;
  sub_1002A0148(v1814, v1116);
  v1112 = 4;
  v1083[0] = 0x300000008;
  v1083[1] = 0xC04A000000000000;
  v1741[0] = -52.0;
  sub_1001BD370(v1084, v1741, 1);
  v1085 = xmmword_100563C70;
  v1086 = 0x4024000000000000;
  v1087 = 45;
  LOBYTE(v1088) = 0;
  v1090 = 0;
  v1091 = 0;
  v1092 = 0;
  v1093 = 1;
  v1094 = 1;
  v1095 = xmmword_100563C80;
  v1096 = xmmword_100563C90;
  v1097 = v61;
  v1098 = 0xC059000000000000;
  v1099 = xmmword_100563CA0;
  v1100 = vdup_n_s32(0x3DCCCCCDu);
  v1101 = xmmword_100563BE0;
  v1103 = 0;
  v1104 = 0;
  v1102 = 0x3FD999999999999ALL;
  v1105 = xmmword_100563BF0;
  v1106 = 5;
  v1107 = 0x4000000000000000;
  v1108 = 10;
  v1109 = 0x4034000000000000;
  v1110 = 3;
  v1111 = xmmword_100563CB0;
  sub_10029B3B8(v1781, &v1112, v1083);
  v1082 = 1;
  v1053[0] = 0x300000008;
  v1053[1] = 0xC04B800000000000;
  v1741[0] = -55.0;
  sub_1001BD370(v1054, v1741, 1);
  v1055 = xmmword_100563C70;
  v1056 = 0x4024000000000000;
  v1057 = 45;
  LOBYTE(v1058) = 0;
  v1060 = 0;
  v1061 = 0;
  v1062 = 0;
  v1063 = 1;
  v1064 = 1;
  v1065 = xmmword_100563C80;
  v1066 = xmmword_100563C90;
  v1067 = v61;
  v1068 = 0xC059000000000000;
  v1069 = xmmword_100563CA0;
  v1070 = vdup_n_s32(0x3DCCCCCDu);
  v1071 = xmmword_100563BE0;
  v1073 = 0;
  v1074 = 0;
  v1072 = 0x3FD999999999999ALL;
  v1075 = xmmword_100563BF0;
  v1076 = 5;
  v1077 = 0x4000000000000000;
  v1078 = 10;
  v1079 = 0x4034000000000000;
  v1080 = 3;
  v1081 = xmmword_100563CB0;
  sub_10029B3B8(&v1782, &v1082, v1053);
  v1052 = 2;
  v1023[0] = 0x300000008;
  v1023[1] = 0xC04A800000000000;
  v1741[0] = -53.0;
  sub_1001BD370(v1024, v1741, 1);
  v1025 = xmmword_100563C70;
  v1026 = 0x4024000000000000;
  v1027 = 45;
  LOBYTE(v1028) = 0;
  v1030 = 0;
  v1031 = 0;
  v1032 = 0;
  v1033 = 1;
  v1034 = 1;
  v1035 = xmmword_100563C80;
  v1036 = xmmword_100563C90;
  v1037 = v61;
  v1038 = 0xC059000000000000;
  v1039 = xmmword_100563CA0;
  v1040 = vdup_n_s32(0x3DCCCCCDu);
  v1041 = xmmword_100563BE0;
  v1043 = 0;
  v1044 = 0;
  v1042 = 0x3FD999999999999ALL;
  v1045 = xmmword_100563BF0;
  v1046 = 5;
  v1047 = 0x4000000000000000;
  v1048 = 10;
  v1049 = 0x4034000000000000;
  v1050 = 3;
  v1051 = xmmword_100563CB0;
  sub_10029B3B8(&v1783, &v1052, v1023);
  v1022 = 3;
  v993[0] = 0x300000008;
  v993[1] = 0xC04B800000000000;
  v1741[0] = -55.0;
  sub_1001BD370(v994, v1741, 1);
  v995 = xmmword_100563C70;
  v996 = 0x4024000000000000;
  v997 = 45;
  LOBYTE(v998) = 0;
  v1000 = 0;
  v1001 = 0;
  v1002 = 0;
  v1003 = 1;
  v1004 = 1;
  v1005 = xmmword_100563C80;
  v1006 = xmmword_100563C90;
  v1007 = v61;
  v1008 = 0xC059000000000000;
  v1009 = xmmword_100563CA0;
  v1010 = vdup_n_s32(0x3DCCCCCDu);
  v1011 = xmmword_100563BE0;
  v1013 = 0;
  v1014 = 0;
  v1012 = 0x3FD999999999999ALL;
  v1015 = xmmword_100563BF0;
  v1016 = 5;
  v1017 = 0x4000000000000000;
  v1018 = 10;
  v1019 = 0x4034000000000000;
  v1020 = 3;
  v1021 = xmmword_100563CB0;
  sub_10029B3B8(&v1784, &v1022, v993);
  v992 = 5;
  v963[0] = 0x300000008;
  v963[1] = 0xC04E000000000000;
  v1741[0] = -60.0;
  sub_1001BD370(v964, v1741, 1);
  v965 = xmmword_100563C70;
  v966 = 0x4024000000000000;
  v967 = 45;
  LOBYTE(v968) = 0;
  v970 = 0;
  v971 = 0;
  v972 = 0;
  v973 = 1;
  v974 = 1;
  v975 = xmmword_100563C80;
  v976 = xmmword_100563C90;
  v977 = v61;
  v978 = 0xC059000000000000;
  v979 = xmmword_100563CA0;
  v980 = vdup_n_s32(0x3DCCCCCDu);
  v981 = xmmword_100563BE0;
  v983 = 0;
  v984 = 0;
  v982 = 0x3FD999999999999ALL;
  v985 = xmmword_100563BF0;
  v986 = 5;
  v987 = 0x4000000000000000;
  v988 = 10;
  v989 = 0x4034000000000000;
  v990 = 3;
  v991 = xmmword_100563CB0;
  sub_10029B3B8(&v1785, &v992, v963);
  v962 = 12;
  sub_10029B2E8(&v1786, &v962, &xmmword_1009F3428);
  v961 = 16;
  v932[0] = 0x300000008;
  v932[1] = 0xC045000000000000;
  v1741[0] = -42.0;
  sub_1001BD370(v933, v1741, 1);
  v934 = xmmword_100563C70;
  v935 = 0x4024000000000000;
  v936 = 45;
  LOBYTE(v937) = 0;
  v939 = 0;
  v940 = 0;
  v941 = 0;
  v942 = 1;
  v943 = 1;
  v944 = xmmword_100563C80;
  v945 = xmmword_100563C90;
  v946 = v61;
  v947 = 0xC059000000000000;
  v948 = xmmword_100563CA0;
  v949 = vdup_n_s32(0x3DCCCCCDu);
  v950 = xmmword_100563BE0;
  v952 = 0;
  v953 = 0;
  v951 = 0x3FD999999999999ALL;
  v954 = xmmword_100563BF0;
  v955 = 5;
  v956 = 0x4000000000000000;
  v957 = 10;
  v958 = 0x4034000000000000;
  v959 = 3;
  v960 = xmmword_100563CB0;
  sub_10029B3B8(&v1787, &v961, v932);
  v931 = 7;
  v902[0] = 0x300000008;
  v902[1] = 0xC046800000000000;
  v1741[0] = -45.0;
  sub_1001BD370(v903, v1741, 1);
  v904 = xmmword_100563C70;
  v905 = 0x4024000000000000;
  v906 = 45;
  LOBYTE(v907) = 0;
  v909 = 0;
  v910 = 0;
  v911 = 0;
  v912 = 1;
  v913 = 1;
  v914 = xmmword_100563C80;
  v915 = xmmword_100563C90;
  v916 = v61;
  v917 = 0xC059000000000000;
  v918 = xmmword_100563CA0;
  v919 = vdup_n_s32(0x3DCCCCCDu);
  v920 = xmmword_100563BE0;
  v922 = 0;
  v923 = 0;
  v921 = 0x3FD999999999999ALL;
  v924 = xmmword_100563BF0;
  v925 = 5;
  v926 = 0x4000000000000000;
  v927 = 10;
  v928 = 0x4034000000000000;
  v929 = 3;
  v930 = xmmword_100563CB0;
  sub_10029B3B8(&v1788, &v931, v902);
  v901 = 6;
  v872[0] = 0x300000008;
  v872[1] = 0xC045800000000000;
  v1741[0] = -43.0;
  sub_1001BD370(v873, v1741, 1);
  v874 = xmmword_100563C70;
  v875 = 0x4024000000000000;
  v876 = 45;
  LOBYTE(v877) = 0;
  v879 = 0;
  v880 = 0;
  v881 = 0;
  v882 = 1;
  v883 = 1;
  v884 = xmmword_100563C80;
  v885 = xmmword_100563C90;
  v886 = v61;
  v887 = 0xC059000000000000;
  v888 = xmmword_100563CA0;
  v889 = vdup_n_s32(0x3DCCCCCDu);
  v890 = xmmword_100563BE0;
  v892 = 0;
  v893 = 0;
  v891 = 0x3FD999999999999ALL;
  v894 = xmmword_100563BF0;
  v895 = 5;
  v896 = 0x4000000000000000;
  v897 = 10;
  v898 = 0x4034000000000000;
  v899 = 3;
  v900 = xmmword_100563CB0;
  sub_10029B3B8(&v1789, &v901, v872);
  v871 = 0;
  sub_10029B2E8(v1790, &v871, &xmmword_1009F3428);
  sub_10029FEE8(v1113, v1781, 10);
  v1815 = 7;
  sub_1002A0148(v1816, v1113);
  v869 = 6;
  v840[0] = 0x300000008;
  v840[1] = 0xC045800000000000;
  v1741[0] = -43.0;
  sub_1001BD370(v841, v1741, 1);
  v842 = xmmword_100563C70;
  v843 = 0x4024000000000000;
  v844 = 45;
  LOBYTE(v845) = 0;
  v847 = 0;
  v848 = 0;
  v849 = 0;
  v850 = 1;
  v851 = 1;
  v852 = xmmword_100563C80;
  v853 = xmmword_100563C90;
  v854 = v61;
  v855 = 0xC059000000000000;
  v856 = xmmword_100563CA0;
  v857 = vdup_n_s32(0x3DCCCCCDu);
  v858 = xmmword_100563BE0;
  v860 = 0;
  v861 = 0;
  v859 = 0x3FD999999999999ALL;
  v862 = xmmword_100563BF0;
  v863 = 5;
  v864 = 0x4000000000000000;
  v865 = 10;
  v866 = 0x4034000000000000;
  v867 = 3;
  v868 = xmmword_100563CB0;
  sub_10029B3B8(v1778, &v869, v840);
  v839 = 7;
  v810[0] = 0x300000008;
  v810[1] = 0xC045800000000000;
  v1741[0] = -43.0;
  sub_1001BD370(v811, v1741, 1);
  v812 = xmmword_100563C70;
  v813 = 0x4024000000000000;
  v814 = 45;
  LOBYTE(v815) = 0;
  v817 = 0;
  v818 = 0;
  v819 = 0;
  v820 = 1;
  v821 = 1;
  v822 = xmmword_100563C80;
  v823 = xmmword_100563C90;
  v824 = v61;
  v825 = 0xC059000000000000;
  v826 = xmmword_100563CA0;
  v827 = vdup_n_s32(0x3DCCCCCDu);
  v828 = xmmword_100563BE0;
  v830 = 0;
  v831 = 0;
  v829 = 0x3FD999999999999ALL;
  v832 = xmmword_100563BF0;
  v833 = 5;
  v834 = 0x4000000000000000;
  v835 = 10;
  v836 = 0x4034000000000000;
  v837 = 3;
  v838 = xmmword_100563CB0;
  sub_10029B3B8(&v1779, &v839, v810);
  v809 = 0;
  v780[0] = 0x300000008;
  v780[1] = 0xC045800000000000;
  v1741[0] = -43.0;
  sub_1001BD370(v781, v1741, 1);
  v782 = xmmword_100563C70;
  v783 = 0x4024000000000000;
  v784 = 45;
  LOBYTE(v785) = 0;
  v787 = 0;
  v788 = 0;
  v789 = 0;
  v790 = 1;
  v791 = 1;
  v792 = xmmword_100563C80;
  v793 = xmmword_100563C90;
  v794 = v61;
  v795 = 0xC059000000000000;
  v796 = xmmword_100563CA0;
  v797 = vdup_n_s32(0x3DCCCCCDu);
  v798 = xmmword_100563BE0;
  v800 = 0;
  v801 = 0;
  v799 = 0x3FD999999999999ALL;
  v802 = xmmword_100563BF0;
  v803 = 5;
  v804 = 0x4000000000000000;
  v805 = 10;
  v806 = 0x4034000000000000;
  v807 = 3;
  v808 = xmmword_100563CB0;
  sub_10029B3B8(v1780, &v809, v780);
  sub_10029FEE8(v870, v1778, 3);
  v1817 = 6;
  sub_1002A0148(v1818, v870);
  v778 = 0;
  sub_10029B2E8(v1774, &v778, &xmmword_1009F3428);
  sub_10029FEE8(v779, v1774, 1);
  v1819 = 0;
  sub_1002A0148(v1820, v779);
  sub_1002A0228(v1277, &v1803, 9);
  v1887 = 3;
  sub_1002A0428(v1888, v1277);
  v775 = 0;
  v746[0] = 0x300000008;
  v746[1] = 0xC050C00000000000;
  v1741[0] = -67.0;
  sub_1001BD370(v747, v1741, 1);
  v748 = xmmword_100563C70;
  v749 = 0x4024000000000000;
  v750 = 45;
  LOBYTE(v751) = 0;
  v753 = 0;
  v754 = 0;
  v755 = 0;
  v756 = 1;
  v757 = 1;
  v758 = xmmword_100563C80;
  v759 = xmmword_100563C90;
  v760 = v61;
  v761 = 0xC059000000000000;
  v762 = xmmword_100563CA0;
  v763 = vdup_n_s32(0x3DCCCCCDu);
  v764 = xmmword_100563BE0;
  v766 = 0;
  v767 = 0;
  v765 = 0x3FD999999999999ALL;
  v768 = xmmword_100563BF0;
  v769 = 5;
  v770 = 0x4000000000000000;
  v771 = 10;
  v772 = 0x4034000000000000;
  v773 = 3;
  v774 = xmmword_100563CB0;
  sub_10029B3B8(v1767, &v775, v746);
  v745 = 16;
  v716[0] = 0x200000003;
  v716[1] = 0xC052000000000000;
  v1741[0] = -72.0;
  sub_1001BD370(v717, v1741, 1);
  v718 = xmmword_1005690D0;
  v719 = 0x4000000000000000;
  v720 = 20;
  LOBYTE(v721) = 0;
  v723 = 0;
  v724 = 0;
  v725 = 0;
  v726 = 1;
  v727 = 1;
  v728 = xmmword_100563C80;
  v729 = xmmword_100563C90;
  v730 = v61;
  v731 = 0xC059000000000000;
  v732 = xmmword_100563CA0;
  v733 = vdup_n_s32(0x3DCCCCCDu);
  v734 = xmmword_100563BE0;
  v736 = 0;
  v737 = 0;
  v735 = 0x3FD999999999999ALL;
  v738 = xmmword_100563BF0;
  v739 = 5;
  v740 = 0x4000000000000000;
  v741 = 10;
  v742 = 0x4034000000000000;
  v743 = 3;
  v744 = xmmword_100563CB0;
  sub_10029B3B8(&v1768, &v745, v716);
  v715 = 18;
  v686[0] = 0x200000003;
  v686[1] = 0xC052000000000000;
  v1741[0] = -72.0;
  sub_1001BD370(v687, v1741, 1);
  v688 = xmmword_1005690D0;
  v689 = 0x4000000000000000;
  v690 = 20;
  LOBYTE(v691) = 0;
  v693 = 0;
  v694 = 0;
  v695 = 0;
  v696 = 1;
  v697 = 1;
  v698 = xmmword_100563C80;
  v699 = xmmword_100563C90;
  v700 = v61;
  v701 = 0xC059000000000000;
  v702 = xmmword_100563CA0;
  v703 = vdup_n_s32(0x3DCCCCCDu);
  v704 = xmmword_100563BE0;
  v706 = 0;
  v707 = 0;
  v705 = 0x3FD999999999999ALL;
  v708 = xmmword_100563BF0;
  v709 = 5;
  v710 = 0x4000000000000000;
  v711 = 10;
  v712 = 0x4034000000000000;
  v713 = 3;
  v714 = xmmword_100563CB0;
  sub_10029B3B8(&v1769, &v715, v686);
  sub_10029FEE8(v776, v1767, 3);
  v1770 = 7;
  sub_1002A0148(v1771, v776);
  v684 = 0;
  v655[0] = 0x300000008;
  v655[1] = 0xC050C00000000000;
  v1741[0] = -67.0;
  sub_1001BD370(v656, v1741, 1);
  v657 = xmmword_100563C70;
  v658 = 0x4024000000000000;
  v659 = 45;
  LOBYTE(v660) = 0;
  v662 = 0;
  v663 = 0;
  v664 = 0;
  v665 = 1;
  v666 = 1;
  v667 = xmmword_100563C80;
  v668 = xmmword_100563C90;
  v669 = v61;
  v670 = 0xC059000000000000;
  v671 = xmmword_100563CA0;
  v672 = vdup_n_s32(0x3DCCCCCDu);
  v673 = xmmword_100563BE0;
  v675 = 0;
  v676 = 0;
  v674 = 0x3FD999999999999ALL;
  v677 = xmmword_100563BF0;
  v678 = 5;
  v679 = 0x4000000000000000;
  v680 = 10;
  v681 = 0x4034000000000000;
  v682 = 3;
  v683 = xmmword_100563CB0;
  sub_10029B3B8(v1765, &v684, v655);
  v654 = 18;
  v625[0] = 0x200000003;
  v625[1] = 0xC051000000000000;
  v1741[0] = -68.0;
  sub_1001BD370(v626, v1741, 1);
  v627 = xmmword_1005690D0;
  v628 = 0x4000000000000000;
  v629 = 20;
  LOBYTE(v630) = 0;
  v632 = 0;
  v633 = 0;
  v634 = 0;
  v635 = 1;
  v636 = 1;
  v637 = xmmword_100563C80;
  v638 = xmmword_100563C90;
  v639 = v61;
  v640 = 0xC059000000000000;
  v641 = xmmword_100563CA0;
  v642 = vdup_n_s32(0x3DCCCCCDu);
  v643 = xmmword_100563BE0;
  v645 = 0;
  v646 = 0;
  v644 = 0x3FD999999999999ALL;
  v647 = xmmword_100563BF0;
  v648 = 5;
  v649 = 0x4000000000000000;
  v650 = 10;
  v651 = 0x4034000000000000;
  v652 = 3;
  v653 = xmmword_100563CB0;
  sub_10029B3B8(v1766, &v654, v625);
  sub_10029FEE8(v685, v1765, 2);
  v1772 = 6;
  sub_1002A0148(v1773, v685);
  sub_1002A0228(v777, &v1770, 2);
  v1889 = 5;
  sub_1002A0428(v1890, v777);
  v622 = 13;
  v593[0] = 0x200000003;
  v593[1] = 0xC04E000000000000;
  v1741[0] = -60.0;
  sub_1001BD370(v594, v1741, 1);
  v595 = xmmword_100563C70;
  v596 = 0x4024000000000000;
  v597 = 45;
  LOBYTE(v598) = 0;
  v600 = 0;
  v601 = 0;
  v602 = 0;
  v603 = 1;
  v604 = 1;
  v605 = xmmword_100563C80;
  v606 = xmmword_100563C90;
  v607 = v61;
  v608 = 0xC059000000000000;
  v609 = xmmword_100563CA0;
  v610 = vdup_n_s32(0x3DCCCCCDu);
  v611 = xmmword_100563BE0;
  v613 = 0;
  v614 = 0;
  v612 = 0x3FD999999999999ALL;
  v615 = xmmword_100563BF0;
  v616 = 5;
  v617 = 0x4000000000000000;
  v618 = 10;
  v619 = 0x4034000000000000;
  v620 = 3;
  v621 = xmmword_100563CB0;
  sub_10029B3B8(v1758, &v622, v593);
  sub_10029FEE8(v623, v1758, 1);
  v1763 = 7;
  sub_1002A0148(v1764, v623);
  sub_1002A0228(v624, &v1763, 1);
  v1891 = 8;
  sub_1002A0428(v1892, v624);
  v590 = 13;
  sub_10029B2E8(v1741, &v590, &qword_1009F36A8);
  v589 = 7;
  sub_10029B2E8(&v1742, &v589, &qword_1009F3568);
  v588 = 11;
  sub_10029B2E8(&v1743, &v588, &qword_1009F36A8);
  v587 = 14;
  v558[0] = 0x300000010;
  v558[1] = 0xC043800000000000;
  v1732[0] = -39.0;
  sub_1001BD370(v559, v1732, 1);
  v560 = xmmword_100563C70;
  v561 = 0x4024000000000000;
  v562 = 45;
  LOBYTE(v563) = 0;
  v565 = 0;
  v566 = 0;
  v567 = 0;
  v568 = 1;
  v569 = 1;
  v570 = xmmword_100563C80;
  v571 = xmmword_100563C90;
  v572 = v61;
  v573 = 0xC059000000000000;
  v574 = xmmword_100563CA0;
  v575 = vdup_n_s32(0x3DCCCCCDu);
  v576 = xmmword_100563BE0;
  v578 = 0;
  v579 = 0;
  v577 = 0x3FD999999999999ALL;
  v580 = xmmword_100563BF0;
  v581 = 5;
  v582 = 0x4000000000000000;
  v583 = 10;
  v584 = 0x4034000000000000;
  v585 = 3;
  v586 = xmmword_100563CB0;
  sub_10029B3B8(&v1744, &v587, v558);
  v557 = 6;
  v528[0] = 0x300000008;
  v528[1] = 0xC044000000000000;
  v1732[0] = -40.0;
  sub_1001BD370(v529, v1732, 1);
  v530 = xmmword_100563C70;
  v531 = 0x4024000000000000;
  v532 = 45;
  LOBYTE(v533) = 0;
  v535 = 0;
  v536 = 0;
  v537 = 0;
  v538 = 1;
  v539 = 1;
  v540 = xmmword_100563C80;
  v541 = xmmword_100563C90;
  v542 = v61;
  v543 = 0xC059000000000000;
  v544 = xmmword_100563CA0;
  v545 = vdup_n_s32(0x3DCCCCCDu);
  v546 = xmmword_100563BE0;
  v548 = 0;
  v549 = 0;
  v547 = 0x3FD999999999999ALL;
  v550 = xmmword_100563BF0;
  v551 = 5;
  v552 = 0x4000000000000000;
  v553 = 10;
  v554 = 0x4034000000000000;
  v555 = 3;
  v556 = xmmword_100563CB0;
  sub_10029B3B8(&v1745, &v557, v528);
  v527 = 15;
  v498[0] = 0x300000010;
  v498[1] = 0xC044000000000000;
  v1732[0] = -40.0;
  sub_1001BD370(v499, v1732, 1);
  v500 = xmmword_100563C70;
  v501 = 0x4024000000000000;
  v502 = 45;
  LOBYTE(v503) = 0;
  v505 = 0;
  v506 = 0;
  v507 = 0;
  v508 = 1;
  v509 = 1;
  v510 = xmmword_100563C80;
  v511 = xmmword_100563C90;
  v512 = v61;
  v513 = 0xC059000000000000;
  v514 = xmmword_100563CA0;
  v515 = vdup_n_s32(0x3DCCCCCDu);
  v516 = xmmword_100563BE0;
  v518 = 0;
  v519 = 0;
  v517 = 0x3FD999999999999ALL;
  v520 = xmmword_100563BF0;
  v521 = 5;
  v522 = 0x4000000000000000;
  v523 = 10;
  v524 = 0x4034000000000000;
  v525 = 3;
  v526 = xmmword_100563CB0;
  sub_10029B3B8(&v1746, &v527, v498);
  v497 = 16;
  v468[0] = 0x300000008;
  v468[1] = 0xC044000000000000;
  v1732[0] = -40.0;
  sub_1001BD370(v469, v1732, 1);
  v470 = xmmword_100563C70;
  v471 = 0x4024000000000000;
  v472 = 45;
  LOBYTE(v473) = 0;
  v475 = 0;
  v476 = 0;
  v477 = 0;
  v478 = 1;
  v479 = 1;
  v480 = xmmword_100563C80;
  v481 = xmmword_100563C90;
  v482 = v61;
  v483 = 0xC059000000000000;
  v484 = xmmword_100563CA0;
  v485 = vdup_n_s32(0x3DCCCCCDu);
  v486 = xmmword_100563BE0;
  v488 = 0;
  v489 = 0;
  v487 = 0x3FD999999999999ALL;
  v490 = xmmword_100563BF0;
  v491 = 5;
  v492 = 0x4000000000000000;
  v493 = 10;
  v494 = 0x4034000000000000;
  v495 = 3;
  v496 = xmmword_100563CB0;
  sub_10029B3B8(&v1747, &v497, v468);
  v467 = 17;
  v438[0] = 0x300000010;
  v438[1] = 0xC044000000000000;
  v1732[0] = -40.0;
  sub_1001BD370(v439, v1732, 1);
  v440 = xmmword_100563C70;
  v441 = 0x4024000000000000;
  v442 = 45;
  LOBYTE(v443) = 0;
  v445 = 0;
  v446 = 0;
  v447 = 0;
  v448 = 1;
  v449 = 1;
  v450 = xmmword_100563C80;
  v451 = xmmword_100563C90;
  v452 = v61;
  v453 = 0xC059000000000000;
  v454 = xmmword_100563CA0;
  v455 = vdup_n_s32(0x3DCCCCCDu);
  v456 = xmmword_100563BE0;
  v458 = 0;
  v459 = 0;
  v457 = 0x3FD999999999999ALL;
  v460 = xmmword_100563BF0;
  v461 = 5;
  v462 = 0x4000000000000000;
  v463 = 10;
  v464 = 0x4034000000000000;
  v465 = 3;
  v466 = xmmword_100563CB0;
  sub_10029B3B8(&v1748, &v467, v438);
  v437 = 18;
  v408[0] = 0x200000003;
  v408[1] = 0xC04B800000000000;
  v1732[0] = -55.0;
  sub_1001BD370(v409, v1732, 1);
  v410 = xmmword_1005690D0;
  v411 = 0x4000000000000000;
  v412 = 20;
  LOBYTE(v413) = 0;
  v415 = 0;
  v416 = 0;
  v417 = 0;
  v418 = 1;
  v419 = 1;
  v420 = xmmword_100563C80;
  v421 = xmmword_100563C90;
  v422 = v61;
  v423 = 0xC059000000000000;
  v424 = xmmword_100563CA0;
  v425 = vdup_n_s32(0x3DCCCCCDu);
  v426 = xmmword_100563BE0;
  v428 = 0;
  v429 = 0;
  v427 = 0x3FD999999999999ALL;
  v430 = xmmword_100563BF0;
  v431 = 5;
  v432 = 0x4000000000000000;
  v433 = 10;
  v434 = 0x4034000000000000;
  v435 = 3;
  v436 = xmmword_100563CB0;
  sub_10029B3B8(&v1749, &v437, v408);
  v407 = 19;
  sub_10029B2E8(&v1750, &v407, &qword_1009F36A8);
  v406 = 0;
  sub_10029B2E8(&v1751, &v406, &qword_1009F36A8);
  sub_10029FEE8(v591, v1741, 11);
  v1752 = 7;
  sub_1002A0148(v1753, v591);
  v404 = 13;
  sub_10029B2E8(v1732, &v404, &qword_1009F36A8);
  v403 = 7;
  v374[0] = 0x300000008;
  v374[1] = 0xC046800000000000;
  v1719[0] = -45.0;
  sub_1001BD370(v375, v1719, 1);
  v376 = xmmword_100563C70;
  v377 = 0x4024000000000000;
  v378 = 45;
  LOBYTE(v379) = 0;
  v381 = 0;
  v382 = 0;
  v383 = 0;
  v384 = 1;
  v385 = 1;
  v386 = xmmword_100563C80;
  v387 = xmmword_100563C90;
  v388 = v61;
  v389 = 0xC059000000000000;
  v390 = xmmword_100563CA0;
  v391 = vdup_n_s32(0x3DCCCCCDu);
  v392 = xmmword_100563BE0;
  v394 = 0;
  v395 = 0;
  v393 = 0x3FD999999999999ALL;
  v396 = xmmword_100563BF0;
  v397 = 5;
  v398 = 0x4000000000000000;
  v399 = 10;
  v400 = 0x4034000000000000;
  v401 = 3;
  v402 = xmmword_100563CB0;
  sub_10029B3B8(&v1733, &v403, v374);
  v373 = 11;
  sub_10029B2E8(&v1734, &v373, &qword_1009F36A8);
  v372 = 14;
  v343[0] = 0x300000008;
  v343[1] = 0xC046000000000000;
  v1719[0] = -44.0;
  sub_1001BD370(v344, v1719, 1);
  v345 = xmmword_100563C70;
  v346 = 0x4024000000000000;
  v347 = 45;
  LOBYTE(v348) = 0;
  v350 = 0;
  v351 = 0;
  v352 = 0;
  v353 = 1;
  v354 = 1;
  v355 = xmmword_100563C80;
  v356 = xmmword_100563C90;
  v357 = v61;
  v358 = 0xC059000000000000;
  v359 = xmmword_100563CA0;
  v360 = vdup_n_s32(0x3DCCCCCDu);
  v361 = xmmword_100563BE0;
  v363 = 0;
  v364 = 0;
  v362 = 0x3FD999999999999ALL;
  v365 = xmmword_100563BF0;
  v366 = 5;
  v367 = 0x4000000000000000;
  v368 = 10;
  v369 = 0x4034000000000000;
  v370 = 3;
  v371 = xmmword_100563CB0;
  sub_10029B3B8(&v1735, &v372, v343);
  v342 = 6;
  v313[0] = 0x300000008;
  v313[1] = 0xC044000000000000;
  v1719[0] = -40.0;
  sub_1001BD370(v314, v1719, 1);
  v315 = xmmword_100563C70;
  v316 = 0x4024000000000000;
  v317 = 45;
  LOBYTE(v318) = 0;
  v320 = 0;
  v321 = 0;
  v322 = 0;
  v323 = 1;
  v324 = 1;
  v325 = xmmword_100563C80;
  v326 = xmmword_100563C90;
  v327 = v61;
  v328 = 0xC059000000000000;
  v329 = xmmword_100563CA0;
  v330 = vdup_n_s32(0x3DCCCCCDu);
  v331 = xmmword_100563BE0;
  v333 = 0;
  v334 = 0;
  v332 = 0x3FD999999999999ALL;
  v335 = xmmword_100563BF0;
  v336 = 5;
  v337 = 0x4000000000000000;
  v338 = 10;
  v339 = 0x4034000000000000;
  v340 = 3;
  v341 = xmmword_100563CB0;
  sub_10029B3B8(&v1736, &v342, v313);
  v312 = 17;
  v283[0] = 0x300000008;
  v283[1] = 0xC042800000000000;
  v1719[0] = -37.0;
  sub_1001BD370(v284, v1719, 1);
  v285 = xmmword_100563C70;
  v286 = 0x4024000000000000;
  v287 = 45;
  LOBYTE(v288) = 0;
  v290 = 0;
  v291 = 0;
  v292 = 0;
  v293 = 1;
  v294 = 1;
  v295 = xmmword_100563C80;
  v296 = xmmword_100563C90;
  v297 = v61;
  v298 = 0xC059000000000000;
  v299 = xmmword_100563CA0;
  v300 = vdup_n_s32(0x3DCCCCCDu);
  v301 = xmmword_100563BE0;
  v303 = 0;
  v304 = 0;
  v302 = 0x3FD999999999999ALL;
  v305 = xmmword_100563BF0;
  v306 = 5;
  v307 = 0x4000000000000000;
  v308 = 10;
  v309 = 0x4034000000000000;
  v310 = 3;
  v311 = xmmword_100563CB0;
  sub_10029B3B8(&v1737, &v312, v283);
  v282 = 18;
  v253[0] = 0x200000003;
  v253[1] = 0xC04B000000000000;
  v1719[0] = -54.0;
  sub_1001BD370(v254, v1719, 1);
  v255 = xmmword_1005690D0;
  v256 = 0x4000000000000000;
  v257 = 20;
  LOBYTE(v258) = 0;
  v260 = 0;
  v261 = 0;
  v262 = 0;
  v263 = 1;
  v264 = 1;
  v265 = xmmword_100563C80;
  v266 = xmmword_100563C90;
  v267 = v61;
  v268 = 0xC059000000000000;
  v269 = xmmword_100563CA0;
  v270 = vdup_n_s32(0x3DCCCCCDu);
  v271 = xmmword_100563BE0;
  v273 = 0;
  v274 = 0;
  v272 = 0x3FD999999999999ALL;
  v275 = xmmword_100563BF0;
  v276 = 5;
  v277 = 0x4000000000000000;
  v278 = 10;
  v279 = 0x4034000000000000;
  v280 = 3;
  v281 = xmmword_100563CB0;
  sub_10029B3B8(&v1738, &v282, v253);
  v252 = 19;
  sub_10029B2E8(&v1739, &v252, &qword_1009F36A8);
  v251 = 0;
  sub_10029B2E8(v1740, &v251, &qword_1009F36A8);
  sub_10029FEE8(v405, v1732, 9);
  v1754 = 6;
  sub_1002A0148(v1755, v405);
  v249 = 0;
  sub_10029B2E8(v1728, &v249, &qword_1009F36A8);
  sub_10029FEE8(v250, v1728, 1);
  v1756 = 0;
  sub_1002A0148(v1757, v250);
  sub_1002A0228(v592, &v1752, 3);
  v1893 = 2;
  sub_1002A0428(v1894, v592);
  v246 = 16;
  v217[0] = 0x300000008;
  v217[1] = 0xC03D000000000000;
  v1717[0] = -29.0;
  sub_1001BD370(v218, v1717, 1);
  v219 = xmmword_100563C70;
  v220 = 0x4024000000000000;
  v221 = 45;
  LOBYTE(v222) = 0;
  v224 = 0;
  v225 = 0;
  v226 = 0;
  v227 = 1;
  v228 = 1;
  v229 = xmmword_100563C80;
  v230 = xmmword_100563C90;
  v231 = v61;
  v232 = 0xC059000000000000;
  v233 = xmmword_100563CA0;
  v234 = vdup_n_s32(0x3DCCCCCDu);
  v235 = xmmword_100563BE0;
  v237 = 0;
  v238 = 0;
  v236 = 0x3FD999999999999ALL;
  v239 = xmmword_100563BF0;
  v240 = 5;
  v241 = 0x4000000000000000;
  v242 = 10;
  v243 = 0x4034000000000000;
  v244 = 3;
  v245 = xmmword_100563CB0;
  sub_10029B3B8(v1719, &v246, v217);
  v216 = 14;
  v187[0] = 0x300000008;
  v187[1] = 0xC03D000000000000;
  v1717[0] = -29.0;
  sub_1001BD370(v188, v1717, 1);
  v189 = xmmword_100563C70;
  v190 = 0x4024000000000000;
  v191 = 45;
  LOBYTE(v192) = 0;
  v194 = 0;
  v195 = 0;
  v196 = 0;
  v197 = 1;
  v198 = 1;
  v199 = xmmword_100563C80;
  v200 = xmmword_100563C90;
  v201 = v61;
  v202 = 0xC059000000000000;
  v203 = xmmword_100563CA0;
  v204 = vdup_n_s32(0x3DCCCCCDu);
  v205 = xmmword_100563BE0;
  v207 = 0;
  v208 = 0;
  v206 = 0x3FD999999999999ALL;
  v209 = xmmword_100563BF0;
  v210 = 5;
  v211 = 0x4000000000000000;
  v212 = 10;
  v213 = 0x4034000000000000;
  v214 = 3;
  v215 = xmmword_100563CB0;
  sub_10029B3B8(&v1720, &v216, v187);
  v186 = 0;
  v157[0] = 0x300000008;
  v157[1] = 0xC03D000000000000;
  v1717[0] = -29.0;
  sub_1001BD370(v158, v1717, 1);
  v159 = xmmword_100563C70;
  v160 = 0x4024000000000000;
  v161 = 45;
  LOBYTE(v162) = 0;
  v164 = 0;
  v165 = 0;
  v166 = 0;
  v167 = 1;
  v168 = 1;
  v169 = xmmword_100563C80;
  v170 = xmmword_100563C90;
  v171 = v61;
  v172 = 0xC059000000000000;
  v173 = xmmword_100563CA0;
  v174 = vdup_n_s32(0x3DCCCCCDu);
  v175 = xmmword_100563BE0;
  v177 = 0;
  v178 = 0;
  v176 = 0x3FD999999999999ALL;
  v179 = xmmword_100563BF0;
  v180 = 5;
  v181 = 0x4000000000000000;
  v182 = 10;
  v183 = 0x4034000000000000;
  v184 = 3;
  v185 = xmmword_100563CB0;
  sub_10029B3B8(&v1721, &v186, v157);
  sub_10029FEE8(v247, v1719, 3);
  v1722 = 7;
  sub_1002A0148(v1723, v247);
  v155 = 14;
  v126[0] = 0x300000008;
  v126[1] = 0xC03D000000000000;
  v1713[0] = -29.0;
  sub_1001BD370(v127, v1713, 1);
  v128 = xmmword_100563C70;
  v129 = 0x4024000000000000;
  v130 = 45;
  LOBYTE(v131) = 0;
  v133 = 0;
  v134 = 0;
  v135 = 0;
  v136 = 1;
  v137 = 1;
  v138 = xmmword_100563C80;
  v139 = xmmword_100563C90;
  v140 = v61;
  v141 = 0xC059000000000000;
  v142 = xmmword_100563CA0;
  v143 = vdup_n_s32(0x3DCCCCCDu);
  v144 = xmmword_100563BE0;
  v146 = 0;
  v147 = 0;
  v145 = 0x3FD999999999999ALL;
  v148 = xmmword_100563BF0;
  v149 = 5;
  v150 = 0x4000000000000000;
  v151 = 10;
  v152 = 0x4034000000000000;
  v153 = 3;
  v154 = xmmword_100563CB0;
  sub_10029B3B8(v1717, &v155, v126);
  v125 = 0;
  v96[0] = 0x300000008;
  v96[1] = 0xC03D000000000000;
  v1713[0] = -29.0;
  sub_1001BD370(v97, v1713, 1);
  v98 = xmmword_100563C70;
  v99 = 0x4024000000000000;
  v100 = 45;
  LOBYTE(v101) = 0;
  v103 = 0;
  v104 = 0;
  v105 = 0;
  v106 = 1;
  v107 = 1;
  v108 = xmmword_100563C80;
  v109 = xmmword_100563C90;
  v110 = v61;
  v111 = 0xC059000000000000;
  v112 = xmmword_100563CA0;
  v113 = vdup_n_s32(0x3DCCCCCDu);
  v114 = xmmword_100563BE0;
  v116 = 0;
  v117 = 0;
  v115 = 0x3FD999999999999ALL;
  v118 = xmmword_100563BF0;
  v119 = 5;
  v120 = 0x4000000000000000;
  v121 = 10;
  v122 = 0x4034000000000000;
  v123 = 3;
  v124 = xmmword_100563CB0;
  sub_10029B3B8(v1718, &v125, v96);
  sub_10029FEE8(v156, v1717, 2);
  v1724 = 6;
  sub_1002A0148(v1725, v156);
  v94 = 0;
  v65[0] = 0x300000008;
  v65[1] = 0xC03D000000000000;
  v1707[0] = -29.0;
  sub_1001BD370(v66, v1707, 1);
  v67 = xmmword_100563C70;
  v68 = 0x4024000000000000;
  v69 = 45;
  LOBYTE(v70) = 0;
  v72 = 0;
  v73 = 0;
  v74 = 0;
  v75 = 1;
  v76 = 1;
  v77 = xmmword_100563C80;
  v78 = xmmword_100563C90;
  v79 = v61;
  v80 = 0xC059000000000000;
  v81 = xmmword_100563CA0;
  v82 = vdup_n_s32(0x3DCCCCCDu);
  v83 = xmmword_100563BE0;
  v85 = 0;
  v86 = 0;
  v84 = 0x3FD999999999999ALL;
  v87 = xmmword_100563BF0;
  v88 = 5;
  v89 = 0x4000000000000000;
  v90 = 10;
  v91 = 0x4034000000000000;
  v92 = 3;
  v93 = xmmword_100563CB0;
  sub_10029B3B8(v1713, &v94, v65);
  sub_10029FEE8(v95, v1713, 1);
  v1726 = 0;
  sub_1002A0148(v1727, v95);
  sub_1002A0228(v248, &v1722, 3);
  v1895 = 7;
  sub_1002A0428(v1896, v248);
  v62 = 0;
  sub_10029B2E8(v1707, &v62, &xmmword_1009F3428);
  sub_10029FEE8(v63, v1707, 1);
  v1711 = 0;
  sub_1002A0148(v1712, v63);
  sub_1002A0228(v64, &v1711, 1);
  v1897 = 1;
  sub_1002A0428(v1898, v64);
  sub_1002A0508(&qword_1009FA018, &v1885, 7);
  for (i = 0; i != -28; i -= 4)
  {
    sub_10029FDD8(&v1898[i], v1898[i + 1]);
  }

  sub_10029FDD8(v64, v64[1]);
  sub_10029FE38(v1712, v1712[1]);
  sub_10029FE38(v63, v63[1]);
  if (v1710 == 1 && v1709 < 0)
  {
    operator delete(v1708[7]);
  }

  sub_10002074C(v1708, v1708[1]);
  sub_10029FDD8(v248, v248[1]);
  for (j = 0; j != -12; j -= 4)
  {
    sub_10029FE38(&v1727[j], v1727[j + 1]);
  }

  sub_10029FE38(v95, v95[1]);
  if (v1716[0] == 1 && v1715 < 0)
  {
    operator delete(v1714[7]);
  }

  sub_10002074C(v1714, v1714[1]);
  if (v72 == 1 && v71 < 0)
  {
    operator delete(v70);
  }

  sub_10002074C(v66, v66[1]);
  sub_10029FE38(v156, v156[1]);
  v10 = 82;
  do
  {
    v11 = &v1717[v10];
    if (v1716[v10 * 8] == 1 && *(v11 - 225) < 0)
    {
      operator delete(*(v11 - 31));
    }

    sub_10002074C((v11 - 38), *(v11 - 37));
    v10 -= 41;
  }

  while (v10 * 8);
  if (v103 == 1 && v102 < 0)
  {
    operator delete(v101);
  }

  sub_10002074C(v97, v97[1]);
  if (v133 == 1 && v132 < 0)
  {
    operator delete(v131);
  }

  sub_10002074C(v127, v127[1]);
  sub_10029FE38(v247, v247[1]);
  v12 = 123;
  do
  {
    v13 = &v1719[v12];
    if (v1718[v12 * 8 + 104] == 1 && *(v13 - 225) < 0)
    {
      operator delete(*(v13 - 31));
    }

    sub_10002074C((v13 - 38), *(v13 - 37));
    v12 -= 41;
  }

  while (v12 * 8);
  if (v164 == 1 && v163 < 0)
  {
    operator delete(v162);
  }

  sub_10002074C(v158, v158[1]);
  if (v194 == 1 && v193 < 0)
  {
    operator delete(v192);
  }

  sub_10002074C(v188, v188[1]);
  if (v224 == 1 && v223 < 0)
  {
    operator delete(v222);
  }

  sub_10002074C(v218, v218[1]);
  sub_10029FDD8(v592, v592[1]);
  for (k = 0; k != -12; k -= 4)
  {
    sub_10029FE38(&v1757[k], v1757[k + 1]);
  }

  sub_10029FE38(v250, v250[1]);
  if (v1731[0] == 1 && v1730 < 0)
  {
    operator delete(v1729[7]);
  }

  sub_10002074C(v1729, v1729[1]);
  sub_10029FE38(v405, v405[1]);
  v15 = 369;
  do
  {
    v16 = &v1732[v15];
    if (v1731[v15 * 8] == 1 && *(v16 - 225) < 0)
    {
      operator delete(*(v16 - 31));
    }

    sub_10002074C((v16 - 38), *(v16 - 37));
    v15 -= 41;
  }

  while (v15 * 8);
  if (v260 == 1 && v259 < 0)
  {
    operator delete(v258);
  }

  sub_10002074C(v254, v254[1]);
  if (v290 == 1 && v289 < 0)
  {
    operator delete(v288);
  }

  sub_10002074C(v284, v284[1]);
  if (v320 == 1 && v319 < 0)
  {
    operator delete(v318);
  }

  sub_10002074C(v314, v314[1]);
  if (v350 == 1 && v349 < 0)
  {
    operator delete(v348);
  }

  sub_10002074C(v344, v344[1]);
  if (v381 == 1 && v380 < 0)
  {
    operator delete(v379);
  }

  sub_10002074C(v375, v375[1]);
  sub_10029FE38(v591, v591[1]);
  v17 = 451;
  do
  {
    v18 = &v1741[v17];
    if (v1740[v17 * 8 + 104] == 1 && *(v18 - 225) < 0)
    {
      operator delete(*(v18 - 31));
    }

    sub_10002074C((v18 - 38), *(v18 - 37));
    v17 -= 41;
  }

  while (v17 * 8);
  if (v415 == 1 && v414 < 0)
  {
    operator delete(v413);
  }

  sub_10002074C(v409, v409[1]);
  if (v445 == 1 && v444 < 0)
  {
    operator delete(v443);
  }

  sub_10002074C(v439, v439[1]);
  if (v475 == 1 && v474 < 0)
  {
    operator delete(v473);
  }

  sub_10002074C(v469, v469[1]);
  if (v505 == 1 && v504 < 0)
  {
    operator delete(v503);
  }

  sub_10002074C(v499, v499[1]);
  if (v535 == 1 && v534 < 0)
  {
    operator delete(v533);
  }

  sub_10002074C(v529, v529[1]);
  if (v565 == 1 && v564 < 0)
  {
    operator delete(v563);
  }

  sub_10002074C(v559, v559[1]);
  sub_10029FDD8(v624, v624[1]);
  sub_10029FE38(v1764, v1764[1]);
  sub_10029FE38(v623, v623[1]);
  if (v1761 == 1 && v1760 < 0)
  {
    operator delete(v1759[7]);
  }

  sub_10002074C(v1759, v1759[1]);
  if (v600 == 1 && v599 < 0)
  {
    operator delete(v598);
  }

  sub_10002074C(v594, v594[1]);
  sub_10029FDD8(v777, v777[1]);
  for (m = 0; m != -8; m -= 4)
  {
    sub_10029FE38(&v1773[m], v1773[m + 1]);
  }

  sub_10029FE38(v685, v685[1]);
  v20 = 164;
  do
  {
    v21 = &v1765[v20];
    if (v1762[v20 * 4] == 1 && *(v21 - 225) < 0)
    {
      operator delete(*(v21 - 31));
    }

    sub_10002074C((v21 - 76), *(v21 - 37));
    v20 -= 82;
  }

  while (v20 * 4);
  if (v632 == 1 && v631 < 0)
  {
    operator delete(v630);
  }

  sub_10002074C(v626, v626[1]);
  if (v662 == 1 && v661 < 0)
  {
    operator delete(v660);
  }

  sub_10002074C(v656, v656[1]);
  sub_10029FE38(v776, v776[1]);
  v22 = 246;
  do
  {
    v23 = &v1767[v22];
    if (v1766[v22 * 4 + 104] == 1 && *(v23 - 225) < 0)
    {
      operator delete(*(v23 - 31));
    }

    sub_10002074C((v23 - 76), *(v23 - 37));
    v22 -= 82;
  }

  while (v22 * 4);
  if (v693 == 1 && v692 < 0)
  {
    operator delete(v691);
  }

  sub_10002074C(v687, v687[1]);
  if (v723 == 1 && v722 < 0)
  {
    operator delete(v721);
  }

  sub_10002074C(v717, v717[1]);
  if (v753 == 1 && v752 < 0)
  {
    operator delete(v751);
  }

  sub_10002074C(v747, v747[1]);
  sub_10029FDD8(v1277, v1277[1]);
  v24 = 288;
  do
  {
    sub_10029FE38(&v1802[v24 + 304], *&v1802[v24 + 312]);
    v24 -= 32;
  }

  while (v24);
  sub_10029FE38(v779, v779[1]);
  if (v1777[0] == 1 && v1776 < 0)
  {
    operator delete(v1775[7]);
  }

  sub_10002074C(v1775, v1775[1]);
  sub_10029FE38(v870, v870[1]);
  v25 = 246;
  do
  {
    v26 = &v1778[v25];
    if (v1777[v25 * 4] == 1 && *(v26 - 225) < 0)
    {
      operator delete(*(v26 - 31));
    }

    sub_10002074C((v26 - 76), *(v26 - 37));
    v25 -= 82;
  }

  while (v25 * 4);
  if (v787 == 1 && v786 < 0)
  {
    operator delete(v785);
  }

  sub_10002074C(v781, v781[1]);
  if (v817 == 1 && v816 < 0)
  {
    operator delete(v815);
  }

  sub_10002074C(v811, v811[1]);
  if (v847 == 1 && v846 < 0)
  {
    operator delete(v845);
  }

  sub_10002074C(v841, v841[1]);
  sub_10029FE38(v1113, v1113[1]);
  v27 = 820;
  do
  {
    v28 = &v1781[v27];
    if (v1780[v27 * 4 + 104] == 1 && *(v28 - 225) < 0)
    {
      operator delete(*(v28 - 31));
    }

    sub_10002074C((v28 - 76), *(v28 - 37));
    v27 -= 82;
  }

  while (v27 * 4);
  if (v879 == 1 && v878 < 0)
  {
    operator delete(v877);
  }

  sub_10002074C(v873, v873[1]);
  if (v909 == 1 && v908 < 0)
  {
    operator delete(v907);
  }

  sub_10002074C(v903, v903[1]);
  if (v939 == 1 && v938 < 0)
  {
    operator delete(v937);
  }

  sub_10002074C(v933, v933[1]);
  if (v970 == 1 && v969 < 0)
  {
    operator delete(v968);
  }

  sub_10002074C(v964, v964[1]);
  if (v1000 == 1 && v999 < 0)
  {
    operator delete(v998);
  }

  sub_10002074C(v994, v994[1]);
  if (v1030 == 1 && v1029 < 0)
  {
    operator delete(v1028);
  }

  sub_10002074C(v1024, v1024[1]);
  if (v1060 == 1 && v1059 < 0)
  {
    operator delete(v1058);
  }

  sub_10002074C(v1054, v1054[1]);
  if (v1090 == 1 && v1089 < 0)
  {
    operator delete(v1088);
  }

  sub_10002074C(v1084, v1084[1]);
  sub_10029FE38(v1116, v1116[1]);
  v29 = 164;
  do
  {
    v30 = &v1791[v29];
    if (v1790[v29 * 4 + 104] == 1 && *(v30 - 225) < 0)
    {
      operator delete(*(v30 - 31));
    }

    sub_10002074C((v30 - 76), *(v30 - 37));
    v29 -= 82;
  }

  while (v29 * 4);
  sub_10029FE38(v1148, v1148[1]);
  v31 = 164;
  do
  {
    v32 = &v1793[v31];
    if (v1792[v31 * 4 + 104] == 1 && *(v32 - 225) < 0)
    {
      operator delete(*(v32 - 31));
    }

    sub_10002074C((v32 - 76), *(v32 - 37));
    v31 -= 82;
  }

  while (v31 * 4);
  if (v1125 == 1 && v1124 < 0)
  {
    operator delete(v1123);
  }

  sub_10002074C(v1119, v1119[1]);
  sub_10029FE38(v1180, v1180[1]);
  v33 = 164;
  do
  {
    v34 = &v1795[v33];
    if (v1794[v33 * 4 + 104] == 1 && *(v34 - 225) < 0)
    {
      operator delete(*(v34 - 31));
    }

    sub_10002074C((v34 - 76), *(v34 - 37));
    v33 -= 82;
  }

  while (v33 * 4);
  if (v1157 == 1 && v1156 < 0)
  {
    operator delete(v1155);
  }

  sub_10002074C(v1151, v1151[1]);
  sub_10029FE38(v1212, v1212[1]);
  v35 = 164;
  do
  {
    v36 = &v1797[v35];
    if (v1796[v35 * 4 + 104] == 1 && *(v36 - 225) < 0)
    {
      operator delete(*(v36 - 31));
    }

    sub_10002074C((v36 - 76), *(v36 - 37));
    v35 -= 82;
  }

  while (v35 * 4);
  if (v1189 == 1 && v1188 < 0)
  {
    operator delete(v1187);
  }

  sub_10002074C(v1183, v1183[1]);
  sub_10029FE38(v1244, v1244[1]);
  v37 = 164;
  do
  {
    v38 = &v1799[v37];
    if (v1798[v37 * 4 + 104] == 1 && *(v38 - 225) < 0)
    {
      operator delete(*(v38 - 31));
    }

    sub_10002074C((v38 - 76), *(v38 - 37));
    v37 -= 82;
  }

  while (v37 * 4);
  if (v1221 == 1 && v1220 < 0)
  {
    operator delete(v1219);
  }

  sub_10002074C(v1215, v1215[1]);
  sub_10029FE38(v1276, v1276[1]);
  v39 = 164;
  do
  {
    v40 = &v1801[v39];
    if (v1800[v39 * 4 + 104] == 1 && *(v40 - 225) < 0)
    {
      operator delete(*(v40 - 31));
    }

    sub_10002074C((v40 - 76), *(v40 - 37));
    v39 -= 82;
  }

  while (v39 * 4);
  if (v1253 == 1 && v1252 < 0)
  {
    operator delete(v1251);
  }

  sub_10002074C(v1247, v1247[1]);
  sub_10029FDD8(v1706, v1706[1]);
  v41 = 320;
  do
  {
    sub_10029FE38(&v1864[v41 + 304], *&v1864[v41 + 312]);
    v41 -= 32;
  }

  while (v41);
  sub_10029FE38(v1308, v1308[1]);
  if (v1824[0] == 1 && v1823 < 0)
  {
    operator delete(v1822[7]);
  }

  sub_10002074C(v1822, v1822[1]);
  if (v1285 == 1 && v1284 < 0)
  {
    operator delete(v1283);
  }

  sub_10002074C(v1279, v1279[1]);
  sub_10029FE38(v1374, v1374[1]);
  v42 = 574;
  do
  {
    v43 = &v1825[v42];
    if (v1824[v42 * 4] == 1 && *(v43 - 225) < 0)
    {
      operator delete(*(v43 - 31));
    }

    sub_10002074C((v43 - 76), *(v43 - 37));
    v42 -= 82;
  }

  while (v42 * 4);
  if (v1317 == 1 && v1316 < 0)
  {
    operator delete(v1315);
  }

  sub_10002074C(v1311, v1311[1]);
  if (v1347 == 1 && v1346 < 0)
  {
    operator delete(v1345);
  }

  sub_10002074C(v1341, v1341[1]);
  sub_10029FE38(v1559, v1559[1]);
  v44 = 820;
  do
  {
    v45 = &v1832[v44];
    if (v1831[v44 * 4 + 104] == 1 && *(v45 - 225) < 0)
    {
      operator delete(*(v45 - 31));
    }

    sub_10002074C((v45 - 76), *(v45 - 37));
    v44 -= 82;
  }

  while (v44 * 4);
  if (v1382 == 1 && v1381 < 0)
  {
    operator delete(v1380);
  }

  sub_10002074C(v1376, v1376[1]);
  if (v1412 == 1 && v1411 < 0)
  {
    operator delete(v1410);
  }

  sub_10002074C(v1406, v1406[1]);
  if (v1444 == 1 && v1443 < 0)
  {
    operator delete(v1442);
  }

  sub_10002074C(v1438, v1438[1]);
  if (v1475 == 1 && v1474 < 0)
  {
    operator delete(v1473);
  }

  sub_10002074C(v1469, v1469[1]);
  if (v1505 == 1 && v1504 < 0)
  {
    operator delete(v1503);
  }

  sub_10002074C(v1499, v1499[1]);
  if (v1535 == 1 && v1534 < 0)
  {
    operator delete(v1533);
  }

  sub_10002074C(v1529, v1529[1]);
  sub_10029FE38(v1563, v1563[1]);
  v46 = 246;
  do
  {
    v47 = &v1842[v46];
    if (v1841[v46 * 4 + 104] == 1 && *(v47 - 225) < 0)
    {
      operator delete(*(v47 - 31));
    }

    sub_10002074C((v47 - 76), *(v47 - 37));
    v46 -= 82;
  }

  while (v46 * 4);
  sub_10029FE38(v1567, v1567[1]);
  v48 = 246;
  do
  {
    v49 = &v1845[v48];
    if (v1844[v48 * 4 + 104] == 1 && *(v49 - 225) < 0)
    {
      operator delete(*(v49 - 31));
    }

    sub_10002074C((v49 - 76), *(v49 - 37));
    v48 -= 82;
  }

  while (v48 * 4);
  sub_10029FE38(v1629, v1629[1]);
  v50 = 246;
  do
  {
    v51 = &v1848[v50];
    if (v1847[v50 * 4 + 104] == 1 && *(v51 - 225) < 0)
    {
      operator delete(*(v51 - 31));
    }

    sub_10002074C((v51 - 76), *(v51 - 37));
    v50 -= 82;
  }

  while (v50 * 4);
  if (v1575 == 1 && v1574 < 0)
  {
    operator delete(v1573);
  }

  sub_10002074C(v1569, v1569[1]);
  if (v1606 == 1 && v1605 < 0)
  {
    operator delete(v1604);
  }

  sub_10002074C(v1600, v1600[1]);
  sub_10029FE38(v1692, v1692[1]);
  v52 = 328;
  do
  {
    v53 = &v1851[v52];
    if (v1850[v52 * 4 + 104] == 1 && *(v53 - 225) < 0)
    {
      operator delete(*(v53 - 31));
    }

    sub_10002074C((v53 - 76), *(v53 - 37));
    v52 -= 82;
  }

  while (v52 * 4);
  if (v1637 == 1 && v1636 < 0)
  {
    operator delete(v1635);
  }

  sub_10002074C(v1631, v1631[1]);
  if (v1668 == 1 && v1667 < 0)
  {
    operator delete(v1666);
  }

  sub_10002074C(v1662, v1662[1]);
  sub_10029FE38(v1697, v1697[1]);
  v54 = 328;
  do
  {
    v55 = &v1855[v54];
    if (v1854[v54 * 4 + 104] == 1 && *(v55 - 225) < 0)
    {
      operator delete(*(v55 - 31));
    }

    sub_10002074C((v55 - 76), *(v55 - 37));
    v54 -= 82;
  }

  while (v54 * 4);
  sub_10029FE38(v1701, v1701[1]);
  v56 = 246;
  do
  {
    v57 = &v1859[v56];
    if (v1858[v56 * 4 + 104] == 1 && *(v57 - 225) < 0)
    {
      operator delete(*(v57 - 31));
    }

    sub_10002074C((v57 - 76), *(v57 - 37));
    v56 -= 82;
  }

  while (v56 * 4);
  sub_10029FE38(v1705, v1705[1]);
  v58 = 246;
  do
  {
    v59 = &v1862[v58];
    if (v1861[v58 * 4 + 104] == 1 && *(v59 - 225) < 0)
    {
      operator delete(*(v59 - 31));
    }

    sub_10002074C((v59 - 76), *(v59 - 37));
    v58 -= 82;
  }

  while (v58 * 4);
  return __cxa_atexit(sub_10029B4D4, &qword_1009FA018, &_mh_execute_header);
}

void sub_1002A8BA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, _Unwind_Exception *exception_objecta, uint64_t a34, uint64_t a35, uint64_t a36, char a37, void *a38, uint64_t a39, char a40, void *a41, uint64_t a42, uint64_t a43, char a44)
{
  v53 = v47 + 200;
  v54 = -224;
  do
  {
    sub_10029FDD8(v53, *(v53 + 8));
    v53 -= 32;
    v54 += 32;
  }

  while (v54);
  sub_10029FDD8(&a40, a41);
  sub_10029FE38(&STACK[0x4978], STACK[0x4980]);
  sub_10029FE38(&a37, a38);
  sub_10029B488(&STACK[0x4828]);
  sub_10029FDD8(&STACK[0x920], STACK[0x928]);
  v55 = &STACK[0x5188];
  v56 = -96;
  do
  {
    sub_10029FE38(v55, v55[1]);
    v55 -= 4;
    v56 += 32;
  }

  while (v56);
  sub_10029FE38(&STACK[0x260], STACK[0x268]);
  sub_10029B488(&STACK[0x4990]);
  sub_10029B230(&a44);
  sub_10029FE38(&STACK[0x510], STACK[0x518]);
  v57 = &STACK[0x4C20];
  v58 = -656;
  do
  {
    v57 = (sub_10029B488(v57) - 328);
    v58 += 328;
  }

  while (v58);
  sub_10029B230(&STACK[0x280]);
  sub_10029B230(&STACK[0x3C8]);
  sub_10029FE38(&STACK[0x908], STACK[0x910]);
  v59 = -984;
  v60 = v50;
  do
  {
    v60 = sub_10029B488(v60) - 328;
    v59 += 328;
  }

  while (v59);
  sub_10029B230(&STACK[0x530]);
  sub_10029B230(&STACK[0x678]);
  sub_10029B230(&STACK[0x7C0]);
  sub_10029FDD8(&STACK[0x17C8], STACK[0x17D0]);
  v61 = &STACK[0x6CD0];
  v62 = -96;
  do
  {
    sub_10029FE38(v61, v61[1]);
    v61 -= 4;
    v62 += 32;
  }

  while (v62);
  sub_10029FE38(&STACK[0x940], STACK[0x948]);
  sub_10029B488(&STACK[0x51A0]);
  sub_10029FE38(&STACK[0xFD0], STACK[0xFD8]);
  v63 = -2952;
  v64 = v51;
  do
  {
    v64 = sub_10029B488(v64) - 328;
    v63 += 328;
  }

  while (v63);
  sub_10029B230(&STACK[0x968]);
  sub_10029B230(&STACK[0xAB0]);
  sub_10029B230(&STACK[0xBF8]);
  sub_10029B230(&STACK[0xD40]);
  sub_10029B230(&STACK[0xE88]);
  sub_10029FE38(&STACK[0x17B0], STACK[0x17B8]);
  v65 = -3608;
  v66 = v52;
  do
  {
    v66 = sub_10029B488(v66) - 328;
    v65 += 328;
  }

  while (v65);
  sub_10029B230(&STACK[0xFF8]);
  sub_10029B230(&STACK[0x1140]);
  sub_10029B230(&STACK[0x1288]);
  sub_10029B230(&STACK[0x13D0]);
  sub_10029B230(&STACK[0x1518]);
  sub_10029B230(&STACK[0x1660]);
  sub_10029FDD8(&STACK[0x1948], STACK[0x1950]);
  sub_10029FE38(&STACK[0x6E38], STACK[0x6E40]);
  sub_10029FE38(&STACK[0x1930], STACK[0x1938]);
  sub_10029B488(&STACK[0x6CE8]);
  sub_10029B230(&STACK[0x17E8]);
  sub_10029FDD8(&STACK[0x2008], STACK[0x2010]);
  v67 = &STACK[0x74E0];
  v68 = -64;
  do
  {
    sub_10029FE38(v67, v67[1]);
    v67 -= 4;
    v68 += 32;
  }

  while (v68);
  sub_10029FE38(&STACK[0x1BF8], STACK[0x1C00]);
  v69 = &STACK[0x6F98];
  v70 = -656;
  do
  {
    v69 = (sub_10029B488(v69) - 328);
    v70 += 328;
  }

  while (v70);
  sub_10029B230(&STACK[0x1968]);
  sub_10029B230(&STACK[0x1AB0]);
  sub_10029FE38(&STACK[0x1FF0], STACK[0x1FF8]);
  v71 = -984;
  do
  {
    a10 = sub_10029B488(a10) - 328;
    v71 += 328;
  }

  while (v71);
  sub_10029B230(&STACK[0x1C18]);
  sub_10029B230(&STACK[0x1D60]);
  sub_10029B230(&STACK[0x1EA8]);
  sub_10029FDD8(&STACK[0x35C8], STACK[0x35D0]);
  v73 = &STACK[0x9750];
  v74 = -288;
  do
  {
    sub_10029FE38(v73, v73[1]);
    v73 -= 4;
    v74 += 32;
  }

  while (v74);
  sub_10029FE38(&STACK[0x2028], STACK[0x2030]);
  sub_10029B488(&STACK[0x74F8]);
  sub_10029FE38(&STACK[0x2420], STACK[0x2428]);
  v75 = -984;
  do
  {
    a11 = sub_10029B488(a11) - 328;
    v75 += 328;
  }

  while (v75);
  sub_10029B230(&STACK[0x2048]);
  sub_10029B230(&STACK[0x2190]);
  sub_10029B230(&STACK[0x22D8]);
  sub_10029FE38(&STACK[0x2E80], STACK[0x2E88]);
  v77 = -3280;
  do
  {
    a13 = sub_10029B488(a13) - 328;
    v77 += 328;
  }

  while (v77);
  sub_10029B230(&STACK[0x2440]);
  sub_10029B230(&STACK[0x2588]);
  sub_10029B230(&STACK[0x26D0]);
  sub_10029B230(&STACK[0x2818]);
  sub_10029B230(&STACK[0x2960]);
  sub_10029B230(&STACK[0x2AA8]);
  sub_10029B230(&STACK[0x2BF0]);
  sub_10029B230(&STACK[0x2D38]);
  sub_10029FE38(&STACK[0x2EA8], STACK[0x2EB0]);
  v79 = &STACK[0x8830];
  v80 = -656;
  do
  {
    v79 = (sub_10029B488(v79) - 328);
    v80 += 328;
  }

  while (v80);
  sub_10029FE38(&STACK[0x3010], STACK[0x3018]);
  v81 = &STACK[0x8AC0];
  v82 = -656;
  do
  {
    v81 = (sub_10029B488(v81) - 328);
    v82 += 328;
  }

  while (v82);
  sub_10029B230(&STACK[0x2EC8]);
  sub_10029FE38(&STACK[0x3178], STACK[0x3180]);
  v83 = &STACK[0x8D50];
  v84 = -656;
  do
  {
    v83 = (sub_10029B488(v83) - 328);
    v84 += 328;
  }

  while (v84);
  sub_10029B230(&STACK[0x3030]);
  sub_10029FE38(&STACK[0x32E0], STACK[0x32E8]);
  v85 = &STACK[0x8FE0];
  v86 = -656;
  do
  {
    v85 = (sub_10029B488(v85) - 328);
    v86 += 328;
  }

  while (v86);
  sub_10029B230(&STACK[0x3198]);
  sub_10029FE38(&STACK[0x3448], STACK[0x3450]);
  v87 = &STACK[0x9270];
  v88 = -656;
  do
  {
    v87 = (sub_10029B488(v87) - 328);
    v88 += 328;
  }

  while (v88);
  sub_10029B230(&STACK[0x3300]);
  sub_10029FE38(&STACK[0x35B0], STACK[0x35B8]);
  for (i = 328; i != -328; i -= 328)
  {
    sub_10029B488(&STACK[0x93B8] + i);
  }

  sub_10029B230(&STACK[0x3468]);
  sub_10029FDD8(&STACK[0x4810], STACK[0x4818]);
  v90 = &STACK[0xCD18];
  v91 = -320;
  do
  {
    sub_10029FE38(v90, v90[1]);
    v90 -= 4;
    v91 += 32;
  }

  while (v91);
  sub_10029FE38(&STACK[0x3730], STACK[0x3738]);
  sub_10029B488(&STACK[0x9768]);
  sub_10029B230(&STACK[0x35E8]);
  sub_10029FE38(&STACK[0x39F0], STACK[0x39F8]);
  v92 = -2296;
  do
  {
    a14 = sub_10029B488(a14) - 328;
    v92 += 328;
  }

  while (v92);
  sub_10029B230(&STACK[0x3750]);
  sub_10029B230(&STACK[0x3898]);
  sub_10029FE38(&STACK[0x41C8], STACK[0x41D0]);
  v94 = -3280;
  do
  {
    a15 = sub_10029B488(a15) - 328;
    v94 += 328;
  }

  while (v94);
  sub_10029B230(&STACK[0x3A10]);
  sub_10029B230(&STACK[0x3B58]);
  sub_10029B230(&STACK[0x3CA8]);
  sub_10029B230(&STACK[0x3DF0]);
  sub_10029B230(&STACK[0x3F38]);
  sub_10029B230(&STACK[0x4080]);
  sub_10029FE38(&STACK[0x41F0], STACK[0x41F8]);
  v96 = -984;
  do
  {
    sub_10029B488(v49);
    v49 -= 328;
    v96 += 328;
  }

  while (v96);
  sub_10029FE38(&STACK[0x4218], STACK[0x4220]);
  v97 = -984;
  do
  {
    sub_10029B488(v48);
    v48 -= 328;
    v97 += 328;
  }

  while (v97);
  sub_10029FE38(&STACK[0x44C8], STACK[0x44D0]);
  v98 = -984;
  do
  {
    a12 = sub_10029B488(a12) - 328;
    v98 += 328;
  }

  while (v98);
  sub_10029B230(&STACK[0x4238]);
  sub_10029B230(&STACK[0x4380]);
  sub_10029FE38(&STACK[0x4778], STACK[0x4780]);
  v100 = -1312;
  v101 = v46;
  do
  {
    v101 = sub_10029B488(v101) - 328;
    v100 += 328;
  }

  while (v100);
  sub_10029B230(&STACK[0x44E8]);
  sub_10029B230(&STACK[0x4630]);
  sub_10029FE38(&STACK[0x47A8], STACK[0x47B0]);
  v102 = -1312;
  do
  {
    sub_10029B488(v45);
    v45 -= 328;
    v102 += 328;
  }

  while (v102);
  sub_10029FE38(&STACK[0x47D0], STACK[0x47D8]);
  v103 = -984;
  do
  {
    sub_10029B488(v44);
    v44 -= 328;
    v103 += 328;
  }

  while (v103);
  sub_10029FE38(&STACK[0x47F8], STACK[0x4800]);
  for (j = 656; j != -328; j -= 328)
  {
    sub_10029B488(&STACK[0xC818] + j);
  }

  _Unwind_Resume(a1);
}

void sub_1002AA268()
{
  sub_10029B230(&STACK[0x2EC8]);
  sub_10029B488(&STACK[0x8978]);
  JUMPOUT(0x1002A9580);
}

void sub_1002AA2E8()
{
  sub_10029B230(&STACK[0x3030]);
  sub_10029B488(&STACK[0x8C08]);
  JUMPOUT(0x1002A95C4);
}

void sub_1002AA368()
{
  sub_10029B230(&STACK[0x3198]);
  sub_10029B488(&STACK[0x8E98]);
  JUMPOUT(0x1002A9608);
}

void sub_1002AA3F4()
{
  sub_10029B230(&STACK[0x3300]);
  sub_10029B488(&STACK[0x9128]);
  JUMPOUT(0x1002A964CLL);
}