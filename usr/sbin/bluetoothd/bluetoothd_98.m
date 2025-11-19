const void **sub_100714098(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v3 = v2 - v1;
  if (v2 == v1)
  {
    v4 = 0;
  }

  else
  {
    v4 = ((v2 - v1) << 6) - 1;
  }

  v5 = *(a1 + 32);
  if ((v4 - (*(a1 + 40) + v5)) < 0x200)
  {
    v7 = *(a1 + 24);
    v8 = *a1;
    v9 = &v7[-*a1];
    if (v3 < v9)
    {
      if (v1 != v8)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == v8)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9 >> 2;
    }

    v11[4] = a1;
    sub_100008108(a1, v10);
  }

  *(a1 + 32) = v5 + 512;
  v11[0] = *(v2 - 1);
  *(a1 + 16) = v2 - 8;
  return sub_1004F3608(a1, v11);
}

void sub_100714294(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  operator delete(v12);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_1007142E0(void *a1, uint64_t a2)
{
  v2 = (a2 - *a1) >> 3;
  if (v2 < 2)
  {
    return &a1[-((512 - v2) >> 9)];
  }

  else
  {
    return &a1[(v2 - 1) >> 9];
  }
}

void *sub_100714334(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
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
    sub_100008108(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return sub_1004F3500(a1, &v10);
}

void sub_1007144BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

double sub_100714508(uint64_t **a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, uint64_t **a5)
{
  if (a1 == a3)
  {
    v7 = *a5;
    v8 = a5[1];
  }

  else
  {
    v11 = a1 + 1;
    v10 = *a1;
    v7 = *a5;
    v8 = a5[1];
    v15 = 0;
    v16 = 0uLL;
    for (i = v10 + 512; ; i = v13 + 512)
    {
      sub_1007145C4(a2, i, v7, v8, &v15);
      v8 = *(&v16 + 1);
      v7 = v16;
      *a5 = v16;
      a5[1] = v8;
      if (v11 == a3)
      {
        break;
      }

      v13 = *v11++;
      a2 = v13;
      v15 = 0;
      v16 = 0uLL;
    }

    a2 = *v11;
  }

  v15 = 0;
  v16 = 0uLL;
  sub_1007145C4(a2, a4, v7, v8, &v15);
  result = *&v16;
  *a5 = v16;
  return result;
}

void sub_1007145C4(uint64_t *a1@<X1>, uint64_t *a2@<X2>, uint64_t *a3@<X3>, uint64_t *a4@<X4>, uint64_t **a5@<X8>)
{
  v5 = a3;
  i = a1;
  if (a1 != a2)
  {
    v9 = *a3 - a4 + 4096;
    if (a2 - a1 >= v9 >> 3)
    {
      v10 = v9 >> 3;
    }

    else
    {
      v10 = a2 - a1;
    }

    for (i = sub_10071469C(&v16, a1, &a1[v10], a4); i != a2; i = sub_10071469C(&v16, i, &i[v14], v12))
    {
      v13 = v5[1];
      ++v5;
      v12 = v13;
      v14 = a2 - i;
      if (v14 >= 512)
      {
        v14 = 512;
      }
    }

    a4 = v11;
    if ((*v5 + 4096) == v11)
    {
      v15 = v5[1];
      ++v5;
      a4 = v15;
    }
  }

  *a5 = i;
  a5[1] = v5;
  a5[2] = a4;
}

uint64_t *sub_10071469C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v7 = *v5;
      *v5 = 0;
      v8 = *a4;
      *a4 = v7;
      if (v8)
      {
        sub_100713478(a4, v8);
      }

      ++v5;
      ++a4;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

__n128 sub_10071470C@<Q0>(uint64_t *a1@<X1>, void *a2@<X2>, uint64_t *a3@<X3>, void *a4@<X4>, void *a5@<X5>, uint64_t a6@<X6>, __n128 *a7@<X8>)
{
  if (a1 == a3)
  {
    v22 = 0;
    v23 = 0uLL;
    v11 = a2;
    v12 = a4;
    v13 = a5;
    v14 = a6;
  }

  else
  {
    v17 = a3 - 1;
    v16 = *a3;
    v22 = 0;
    v23 = 0uLL;
    v18 = a4;
    v13 = a5;
    v14 = a6;
    while (1)
    {
      sub_1007147FC(v16, v18, v13, v14, &v22);
      v14 = v23.n128_i64[1];
      v13 = v23.n128_u64[0];
      if (v17 == a1)
      {
        break;
      }

      v19 = *v17--;
      v16 = v19;
      v22 = 0;
      v23 = 0uLL;
      v18 = v19 + 512;
    }

    v20 = *v17;
    v22 = 0;
    v23 = 0uLL;
    v12 = (v20 + 4096);
    v11 = a2;
  }

  sub_1007147FC(v11, v12, v13, v14, &v22);
  result = v23;
  a7->n128_u64[0] = a3;
  a7->n128_u64[1] = a4;
  a7[1] = result;
  return result;
}

void *sub_1007147FC@<X0>(void *a1@<X1>, void *a2@<X2>, void *a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  v5 = a3;
  if (a1 == a2)
  {
    v8 = a1;
  }

  else
  {
    v8 = a2;
    v9 = a4 - *a3;
    if (a2 - a1 >= v9 >> 3)
    {
      v10 = v9 >> 3;
    }

    else
    {
      v10 = a2 - a1;
    }

    v11 = &a2[-v10];
    result = sub_1007148EC(&v19, v11, a2, a4);
    if (v11 != a1)
    {
      do
      {
        v15 = *--v5;
        v14 = v15;
        v16 = v11 - a1;
        if (v16 >= 512)
        {
          v16 = 512;
        }

        v17 = &v11[-v16];
        result = sub_1007148EC(&v19, v17, v11, v14 + 4096);
        v11 = v17;
      }

      while (v17 != a1);
    }

    a4 = v13;
    if (*v5 + 4096 == v13)
    {
      v18 = v5[1];
      ++v5;
      a4 = v18;
    }
  }

  *a5 = v8;
  a5[1] = v5;
  a5[2] = a4;
  return result;
}

void *sub_1007148EC(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v6 = (a4 - 8);
    v7 = a3;
    do
    {
      v8 = *--v7;
      *v7 = 0;
      v9 = *v6;
      *v6 = v8;
      if (v9)
      {
        sub_100713478(v6, v9);
      }

      --v6;
    }

    while (v7 != a2);
  }

  return a3;
}

uint64_t sub_10071495C(uint64_t a1, unsigned __int8 *uu1)
{
  v3 = 0;
  result = *sub_10004A7D0(a1, &v3, uu1);
  if (!result)
  {
    sub_100714A00();
  }

  return result;
}

void sub_100714A7C(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_100714A98(v3, v2);
  _Unwind_Resume(a1);
}

void sub_100714A98(uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p[7];
    if (v3)
    {
      sub_100117644(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t sub_100714B54(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = off_100B0A7F0;
  *(a1 + 24) = off_100AFF5D0;
  sub_100044BBC(a1 + 32);
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 128) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = a1 + 128;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  return a1;
}

void sub_100714C10(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100B0A7F0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t *sub_100714C8C(uint64_t **a1, uint64_t *a2)
{
  v3 = sub_10002717C(a1, a2);
  v4 = a2[7];
  if (v4)
  {
    sub_100117644(v4);
  }

  operator delete(a2);
  return v3;
}

void *sub_100714D64(void *a1, uint64_t a2)
{
  *sub_1000A1AE4(a1, a2) = &off_100B0A848;
  if (qword_100BC7060 != -1)
  {
    sub_1008671A8();
  }

  return a1;
}

void sub_100714DC0(id a1)
{
  v123 = "kCBGeneralMsgIdAntennaDiversity";
  v124 = 31;
  v125 = &v123;
  v1 = sub_100724A64(&xmmword_100BCEB18, &v123);
  v1[4] = sub_100716BCC;
  v1[5] = 0;
  v123 = "kCBGeneralMsgIdReadRSSI";
  v124 = 23;
  v125 = &v123;
  v2 = sub_100724A64(&xmmword_100BCEB18, &v123);
  v2[4] = sub_10071749C;
  v2[5] = 0;
  v123 = "kCBGeneralMsgIdReadCurrentAntenna";
  v124 = 33;
  v125 = &v123;
  v3 = sub_100724A64(&xmmword_100BCEB18, &v123);
  v3[4] = sub_1007175E0;
  v3[5] = 0;
  v123 = "kCBGeneralMsgIdDelayedWake";
  v124 = 26;
  v125 = &v123;
  v4 = sub_100724A64(&xmmword_100BCEB18, &v123);
  v4[4] = sub_100717704;
  v4[5] = 0;
  v123 = "kCBGeneralMsgIdChangeConnectionPacketType";
  v124 = 41;
  v125 = &v123;
  v5 = sub_100724A64(&xmmword_100BCEB18, &v123);
  v5[4] = sub_100717824;
  v5[5] = 0;
  v123 = "kCBGeneralMsgIdReadTxPowerLevel";
  v124 = 31;
  v125 = &v123;
  v6 = sub_100724A64(&xmmword_100BCEB18, &v123);
  v6[4] = sub_100717950;
  v6[5] = 0;
  v123 = "kCBGeneralMsgIdSetTxPowerCap";
  v124 = 28;
  v125 = &v123;
  v7 = sub_100724A64(&xmmword_100BCEB18, &v123);
  v7[4] = sub_100717B6C;
  v7[5] = 0;
  v123 = "kCBGeneralMsgIdCountryCode";
  v124 = 26;
  v125 = &v123;
  v8 = sub_100724A64(&xmmword_100BCEB18, &v123);
  v8[4] = sub_100717C88;
  v8[5] = 0;
  v123 = "kCBGeneralMsgIdTASCountryCodes";
  v124 = 30;
  v125 = &v123;
  v9 = sub_100724A64(&xmmword_100BCEB18, &v123);
  v9[4] = sub_100717E10;
  v9[5] = 0;
  v123 = "kCBGeneralMsgIdRFTestSetTXRXChains";
  v124 = 34;
  v125 = &v123;
  v10 = sub_100724A64(&xmmword_100BCEB18, &v123);
  v10[4] = sub_1007180BC;
  v10[5] = 0;
  v123 = "kCBGeneralMsgIdReadRXChainsRSSI";
  v124 = 31;
  v125 = &v123;
  v11 = sub_100724A64(&xmmword_100BCEB18, &v123);
  v11[4] = sub_100718224;
  v11[5] = 0;
  v123 = "kCBGeneralMsgIdTASGetPowerTableInfo";
  v124 = 35;
  v125 = &v123;
  v12 = sub_100724A64(&xmmword_100BCEB18, &v123);
  v12[4] = sub_1007183CC;
  v12[5] = 0;
  v123 = "kCBGeneralMsgIdSetSARType";
  v124 = 25;
  v125 = &v123;
  v13 = sub_100724A64(&xmmword_100BCEB18, &v123);
  v13[4] = sub_10071855C;
  v13[5] = 0;
  v123 = "kCBGeneralMsgIdPowerControlDiversityAlgoV2";
  v124 = 42;
  v125 = &v123;
  v14 = sub_100724A64(&xmmword_100BCEB18, &v123);
  v14[4] = sub_1007186BC;
  v14[5] = 0;
  v123 = "kCBGeneralMsgIdSetDefaultChainForCore";
  v124 = 37;
  v125 = &v123;
  v15 = sub_100724A64(&xmmword_100BCEB18, &v123);
  v15[4] = sub_10071895C;
  v15[5] = 0;
  v123 = "kCBGeneralMsgIdBtAudioSyncConfig";
  v124 = 32;
  v125 = &v123;
  v16 = sub_100724A64(&xmmword_100BCEB18, &v123);
  v16[4] = sub_100718AA8;
  v16[5] = 0;
  v123 = "kCBGeneralMsgIdPHYPowerLevelLoadV3";
  v124 = 34;
  v125 = &v123;
  v17 = sub_100724A64(&xmmword_100BCEB18, &v123);
  v17[4] = sub_100718BE4;
  v17[5] = 0;
  v123 = "kCBGeneralMsgIdControlAutoConnectionTagging";
  v124 = 43;
  v125 = &v123;
  v18 = sub_100724A64(&xmmword_100BCEB18, &v123);
  v18[4] = sub_100718D88;
  v18[5] = 0;
  v123 = "kCBGeneralMsgIdGetConnectionTaggingInfo";
  v124 = 39;
  v125 = &v123;
  v19 = sub_100724A64(&xmmword_100BCEB18, &v123);
  v19[4] = sub_100718E80;
  v19[5] = 0;
  v123 = "kCBGeneralMsgIdCountryCodeMultiBand";
  v124 = 35;
  v125 = &v123;
  v20 = sub_100724A64(&xmmword_100BCEB18, &v123);
  v20[4] = sub_100719020;
  v20[5] = 0;
  v123 = "kCBGeneralMsgIdSimulateLocationUpdate";
  v124 = 37;
  v125 = &v123;
  v21 = sub_100724A64(&xmmword_100BCEB18, &v123);
  v21[4] = sub_1007192E8;
  v21[5] = 0;
  v123 = "kCBGeneralMsgIdCellularTransmitState";
  v124 = 36;
  v125 = &v123;
  v22 = sub_100724A64(&xmmword_100BCEB18, &v123);
  v22[4] = sub_1007193AC;
  v22[5] = 0;
  v123 = "kCBGeneralMsgIdReadFactoryCalTable";
  v124 = 34;
  v125 = &v123;
  v23 = sub_100724A64(&xmmword_100BCEB18, &v123);
  v23[4] = sub_100719460;
  v23[5] = 0;
  v123 = "kCBGeneralMsgIdDisableTpc";
  v124 = 25;
  v125 = &v123;
  v24 = sub_100724A64(&xmmword_100BCEB18, &v123);
  v24[4] = sub_100719664;
  v24[5] = 0;
  v123 = "kCBGeneralMsgIdBlackMagickSet";
  v124 = 29;
  v125 = &v123;
  v25 = sub_100724A64(&xmmword_100BCEB18, &v123);
  v25[4] = sub_100719734;
  v25[5] = 0;
  v123 = "kCBGeneralMsgIdRxTest";
  v124 = 21;
  v125 = &v123;
  v26 = sub_100724A64(&xmmword_100BCEB18, &v123);
  v26[4] = sub_100719900;
  v26[5] = 0;
  v123 = "kCBGeneralMsgIdTxTest";
  v124 = 21;
  v125 = &v123;
  v27 = sub_100724A64(&xmmword_100BCEB18, &v123);
  v27[4] = sub_100719AA4;
  v27[5] = 0;
  v123 = "kCBGeneralMsgIdLeTestEnd";
  v124 = 24;
  v125 = &v123;
  v28 = sub_100724A64(&xmmword_100BCEB18, &v123);
  v28[4] = sub_100719C7C;
  v28[5] = 0;
  v123 = "kCBGeneralMsgIdRxEnhancedTest";
  v124 = 29;
  v125 = &v123;
  v29 = sub_100724A64(&xmmword_100BCEB18, &v123);
  v29[4] = sub_100719DD8;
  v29[5] = 0;
  v123 = "kCBGeneralMsgIdTxEnhancedTest";
  v124 = 29;
  v125 = &v123;
  v30 = sub_100724A64(&xmmword_100BCEB18, &v123);
  v30[4] = sub_100719FB0;
  v30[5] = 0;
  v123 = "kCBGeneralMsgIdReadCountrySettingsTest";
  v124 = 38;
  v125 = &v123;
  v31 = sub_100724A64(&xmmword_100BCEB18, &v123);
  v31[4] = sub_10071A1A0;
  v31[5] = 0;
  v123 = "kCBGeneralMsgIdReadePAGPIOState";
  v124 = 31;
  v125 = &v123;
  v32 = sub_100724A64(&xmmword_100BCEB18, &v123);
  v32[4] = sub_10071A320;
  v32[5] = 0;
  v123 = "kCBGeneralMsgIdSetSARState";
  v124 = 26;
  v125 = &v123;
  v33 = sub_100724A64(&xmmword_100BCEB18, &v123);
  v33[4] = sub_10071A444;
  v33[5] = 0;
  v123 = "kCBGeneralMsgIdWiFi5GState";
  v124 = 26;
  v125 = &v123;
  v34 = sub_100724A64(&xmmword_100BCEB18, &v123);
  v34[4] = sub_10071A4E4;
  v34[5] = 0;
  v123 = "kCBGeneralMsgIdReadPowerCapState";
  v124 = 32;
  v125 = &v123;
  v35 = sub_100724A64(&xmmword_100BCEB18, &v123);
  v35[4] = sub_10071A59C;
  v35[5] = 0;
  v123 = "kCBGeneralMsgIdEnhancedReadPowerCapState";
  v124 = 40;
  v125 = &v123;
  v36 = sub_100724A64(&xmmword_100BCEB18, &v123);
  v36[4] = sub_10071A6B4;
  v36[5] = 0;
  v123 = "kCBGeneralMsgIdReadRFState";
  v124 = 26;
  v125 = &v123;
  v37 = sub_100724A64(&xmmword_100BCEB18, &v123);
  v37[4] = sub_10071A840;
  v37[5] = 0;
  v123 = "kCBGeneralMsgIdBtSyncAdjustSyncTiming";
  v124 = 37;
  v125 = &v123;
  v38 = sub_100724A64(&xmmword_100BCEB18, &v123);
  v38[4] = sub_10071A9E4;
  v38[5] = 0;
  v123 = "kCBGeneralMsgIdSetCellularTransmitAntenna";
  v124 = 41;
  v125 = &v123;
  v39 = sub_100724A64(&xmmword_100BCEB18, &v123);
  v39[4] = sub_10071AAF8;
  v39[5] = 0;
  v123 = "kCBGeneralMsgIdSetBTAntenna";
  v124 = 27;
  v125 = &v123;
  v40 = sub_100724A64(&xmmword_100BCEB18, &v123);
  v40[4] = sub_10071ABA8;
  v40[5] = 0;
  v123 = "kCBGeneralMsgIdTunablesEnable";
  v124 = 29;
  v125 = &v123;
  v41 = sub_100724A64(&xmmword_100BCEB18, &v123);
  v41[4] = sub_10071ACEC;
  v41[5] = 0;
  v123 = "kCBGeneralMsgIdSetDiversityAntenna";
  v124 = 34;
  v125 = &v123;
  v42 = sub_100724A64(&xmmword_100BCEB18, &v123);
  v42[4] = sub_10071AD94;
  v42[5] = 0;
  v123 = "kCBGeneralMsgIdADVBufConfigTool";
  v124 = 31;
  v125 = &v123;
  v43 = sub_100724A64(&xmmword_100BCEB18, &v123);
  v43[4] = sub_10071AE88;
  v43[5] = 0;
  v123 = "kCBGeneralMsgIdADVBufMatchControlTool";
  v124 = 37;
  v125 = &v123;
  v44 = sub_100724A64(&xmmword_100BCEB18, &v123);
  v44[4] = sub_10071AFE0;
  v44[5] = 0;
  v123 = "kCBGeneralMsgIdADVBufReadTool";
  v124 = 29;
  v125 = &v123;
  v45 = sub_100724A64(&xmmword_100BCEB18, &v123);
  v45[4] = sub_10071B0E0;
  v45[5] = 0;
  v123 = "kCBGeneralMsgIdMatchTableConfigTool";
  v124 = 35;
  v125 = &v123;
  v46 = sub_100724A64(&xmmword_100BCEB18, &v123);
  v46[4] = sub_10071B228;
  v46[5] = 0;
  v123 = "kCBGeneralMsgIdMatchTableExtendedFilterConfigTool";
  v124 = 49;
  v125 = &v123;
  v47 = sub_100724A64(&xmmword_100BCEB18, &v123);
  v47[4] = sub_10071B400;
  v47[5] = 0;
  v123 = "kCBGeneralMsgIdMatchTableParamsTool";
  v124 = 35;
  v125 = &v123;
  v48 = sub_100724A64(&xmmword_100BCEB18, &v123);
  v48[4] = sub_10071B548;
  v48[5] = 0;
  v123 = "kCBGeneralMsgIdMatchBufferConfigTool";
  v124 = 36;
  v125 = &v123;
  v49 = sub_100724A64(&xmmword_100BCEB18, &v123);
  v49[4] = sub_10071B7D0;
  v49[5] = 0;
  v123 = "kCBGeneralMsgIdMatchBufferReadTool";
  v124 = 34;
  v125 = &v123;
  v50 = sub_100724A64(&xmmword_100BCEB18, &v123);
  v50[4] = sub_10071B8FC;
  v50[5] = 0;
  v123 = "kCBGeneralMsgIdSPMIDiagnosticsTool";
  v124 = 34;
  v125 = &v123;
  v51 = sub_100724A64(&xmmword_100BCEB18, &v123);
  v51[4] = sub_10071B9D8;
  v51[5] = 0;
  v123 = "kCBGeneralMsgIdBTCLKSensorCTimeSyncTool";
  v124 = 39;
  v125 = &v123;
  v52 = sub_100724A64(&xmmword_100BCEB18, &v123);
  v52[4] = sub_10071BA8C;
  v52[5] = 0;
  v123 = "kCBGeneralMsgIdAdvTxTriggerTimeStampTool";
  v124 = 40;
  v125 = &v123;
  v53 = sub_100724A64(&xmmword_100BCEB18, &v123);
  v53[4] = sub_10071BB70;
  v53[5] = 0;
  v123 = "kCBGeneralMsgIdReadLEConnEventCounterTool";
  v124 = 41;
  v125 = &v123;
  v54 = sub_100724A64(&xmmword_100BCEB18, &v123);
  v54[4] = sub_10071BC54;
  v54[5] = 0;
  v123 = "kCBGeneralMsgIdStartLEConnEventTriggerTool";
  v124 = 42;
  v125 = &v123;
  v55 = sub_100724A64(&xmmword_100BCEB18, &v123);
  v55[4] = sub_10071BD64;
  v55[5] = 0;
  v123 = "kCBGeneralMsgIdSPMIDebugControlTool";
  v124 = 35;
  v125 = &v123;
  v56 = sub_100724A64(&xmmword_100BCEB18, &v123);
  v56[4] = sub_10071BE9C;
  v56[5] = 0;
  v123 = "kCBGeneralMsgIdSetGPIOStateMsgTool";
  v124 = 34;
  v125 = &v123;
  v57 = sub_100724A64(&xmmword_100BCEB18, &v123);
  v57[4] = sub_10071BF50;
  v57[5] = 0;
  v123 = "kCBGeneralMsgIdReadACLConnHandle";
  v124 = 32;
  v125 = &v123;
  v58 = sub_100724A64(&xmmword_100BCEB18, &v123);
  v58[4] = sub_10071C054;
  v58[5] = 0;
  v123 = "kCBGeneralMsgIdHDRSetupSyncConnMsgTool";
  v124 = 38;
  v125 = &v123;
  v59 = sub_100724A64(&xmmword_100BCEB18, &v123);
  v59[4] = sub_10071C140;
  v59[5] = 0;
  v123 = "kCBGeneralMsgIdHDRAcceptSyncConnMsgTool";
  v124 = 39;
  v125 = &v123;
  v60 = sub_100724A64(&xmmword_100BCEB18, &v123);
  v60[4] = sub_10071C2E0;
  v60[5] = 0;
  v123 = "kCBGeneralMsgIdSCOBufferSizeControl";
  v124 = 35;
  v125 = &v123;
  v61 = sub_100724A64(&xmmword_100BCEB18, &v123);
  v61[4] = sub_10071C4A8;
  v61[5] = 0;
  v123 = "kCBGeneralMsgIdHRBControl";
  v124 = 25;
  v125 = &v123;
  v62 = sub_100724A64(&xmmword_100BCEB18, &v123);
  v62[4] = sub_10071C608;
  v62[5] = 0;
  v123 = "kCBGeneralMsgIdHRBAllowedBands";
  v124 = 30;
  v125 = &v123;
  v63 = sub_100724A64(&xmmword_100BCEB18, &v123);
  v63[4] = sub_10071C794;
  v63[5] = 0;
  v123 = "kCBGeneralMsgIdHRBClassificationBands";
  v124 = 37;
  v125 = &v123;
  v64 = sub_100724A64(&xmmword_100BCEB18, &v123);
  v64[4] = sub_10071C920;
  v64[5] = 0;
  v123 = "kCBGeneralMsgIdHRBChangeConnectionBand";
  v124 = 38;
  v125 = &v123;
  v65 = sub_100724A64(&xmmword_100BCEB18, &v123);
  v65[4] = sub_10071CAAC;
  v65[5] = 0;
  v123 = "kCBGeneralMsgIdHRBWriteScanEnable";
  v124 = 33;
  v125 = &v123;
  v66 = sub_100724A64(&xmmword_100BCEB18, &v123);
  v66[4] = sub_10071CCF8;
  v66[5] = 0;
  v123 = "kCBGeneralMsgIdHRBWritePageScanActivity";
  v124 = 39;
  v125 = &v123;
  v67 = sub_100724A64(&xmmword_100BCEB18, &v123);
  v67[4] = sub_10071CE38;
  v67[5] = 0;
  v123 = "kCBGeneralMsgIdHRBSetAFHHostChannelClassification";
  v124 = 49;
  v125 = &v123;
  v68 = sub_100724A64(&xmmword_100BCEB18, &v123);
  v68[4] = sub_10071CF78;
  v68[5] = 0;
  v123 = "kCBGeneralMsgIdGetEssentialPowerDatabaseEntries";
  v124 = 47;
  v125 = &v123;
  v69 = sub_100724A64(&xmmword_100BCEB18, &v123);
  v69[4] = sub_10071D28C;
  v69[5] = 0;
  v123 = "kCBGeneralMsgIdHRBReadEnhancedTransmitPowerLevel";
  v124 = 48;
  v125 = &v123;
  v70 = sub_100724A64(&xmmword_100BCEB18, &v123);
  v70[4] = sub_10071D4DC;
  v70[5] = 0;
  v123 = "kCBGeneralMsgIdHRBReadAFHChannelMap";
  v124 = 35;
  v125 = &v123;
  v71 = sub_100724A64(&xmmword_100BCEB18, &v123);
  v71[4] = sub_10071D838;
  v71[5] = 0;
  v123 = "kCBGeneralMsgIdHRBLimitChannelMap";
  v124 = 33;
  v125 = &v123;
  v72 = sub_100724A64(&xmmword_100BCEB18, &v123);
  v72[4] = sub_10071DB38;
  v72[5] = 0;
  v123 = "kCBGeneralMsgIdHRBSetBandEdges";
  v124 = 30;
  v125 = &v123;
  v73 = sub_100724A64(&xmmword_100BCEB18, &v123);
  v73[4] = sub_10071DC4C;
  v73[5] = 0;
  v123 = "kCBGeneralMsgIdEnhancedTxTest";
  v124 = 29;
  v125 = &v123;
  v74 = sub_100724A64(&xmmword_100BCEB18, &v123);
  v74[4] = sub_10071DDEC;
  v74[5] = 0;
  v123 = "kCBGeneralMsgIdEnhancedRxTest2G";
  v124 = 31;
  v125 = &v123;
  v75 = sub_100724A64(&xmmword_100BCEB18, &v123);
  v75[4] = sub_10071E140;
  v75[5] = 0;
  v123 = "kCBGeneralMsgIdEnhancedRxTestHRB";
  v124 = 32;
  v125 = &v123;
  v76 = sub_100724A64(&xmmword_100BCEB18, &v123);
  v76[4] = sub_10071E3B8;
  v76[5] = 0;
  v123 = "kCBGeneralMsgIdEnhancedTxTestCont";
  v124 = 33;
  v125 = &v123;
  v77 = sub_100724A64(&xmmword_100BCEB18, &v123);
  v77[4] = sub_10071E634;
  v77[5] = 0;
  v123 = "kCBGeneralMsgIdLERoles";
  v124 = 22;
  v125 = &v123;
  v78 = sub_100724A64(&xmmword_100BCEB18, &v123);
  v78[4] = sub_10071E884;
  v78[5] = 0;
  v123 = "kCBGeneralMsgIdBTPerfTest";
  v124 = 25;
  v125 = &v123;
  v79 = sub_100724A64(&xmmword_100BCEB18, &v123);
  v79[4] = sub_10071E968;
  v79[5] = 0;
  v123 = "kCBGeneralMsgIdSetupL2CAPServer";
  v124 = 31;
  v125 = &v123;
  v80 = sub_100724A64(&xmmword_100BCEB18, &v123);
  v80[4] = sub_10071EC7C;
  v80[5] = 0;
  v123 = "kCBGeneralMsgIdRemoveL2CAPServer";
  v124 = 32;
  v125 = &v123;
  v81 = sub_100724A64(&xmmword_100BCEB18, &v123);
  v81[4] = sub_10071ED34;
  v81[5] = 0;
  v123 = "kCBGeneralMsgIdCreateL2CAPConnection";
  v124 = 36;
  v125 = &v123;
  v82 = sub_100724A64(&xmmword_100BCEB18, &v123);
  v82[4] = sub_10071EE90;
  v82[5] = 0;
  v123 = "kCBGeneralMsgIdRemoveL2CAPConnection";
  v124 = 36;
  v125 = &v123;
  v83 = sub_100724A64(&xmmword_100BCEB18, &v123);
  v83[4] = sub_10071EFDC;
  v83[5] = 0;
  v123 = "kCBGeneralMsgIdEnterSniffMode";
  v124 = 29;
  v125 = &v123;
  v84 = sub_100724A64(&xmmword_100BCEB18, &v123);
  v84[4] = sub_10071F1E8;
  v84[5] = 0;
  v123 = "kCBGeneralMsgIdExitSniffMode";
  v124 = 28;
  v125 = &v123;
  v85 = sub_100724A64(&xmmword_100BCEB18, &v123);
  v85[4] = sub_10071F418;
  v85[5] = 0;
  v123 = "kCBGeneralMsgIdEnablePhyStats";
  v124 = 29;
  v125 = &v123;
  v86 = sub_100724A64(&xmmword_100BCEB18, &v123);
  v86[4] = sub_10071F5B4;
  v86[5] = 0;
  v123 = "kCBGeneralMsgIdAdvancedSniffMode";
  v124 = 32;
  v125 = &v123;
  v87 = sub_100724A64(&xmmword_100BCEB18, &v123);
  v87[4] = sub_10071F744;
  v87[5] = 0;
  v123 = "kCBGeneralMsgIdExitAdvancedSniffMode";
  v124 = 36;
  v125 = &v123;
  v88 = sub_100724A64(&xmmword_100BCEB18, &v123);
  v88[4] = sub_10071FA3C;
  v88[5] = 0;
  v123 = "kCBGeneralMsgIdAdvancedSniffReconfig";
  v124 = 36;
  v125 = &v123;
  v89 = sub_100724A64(&xmmword_100BCEB18, &v123);
  v89[4] = sub_10071FBD8;
  v89[5] = 0;
  v123 = "kCBGeneralMsgIdSetPeripheralMaxAge";
  v124 = 34;
  v125 = &v123;
  v90 = sub_100724A64(&xmmword_100BCEB18, &v123);
  v90[4] = sub_10071FE0C;
  v90[5] = 0;
  v123 = "kCBGeneralMsgIdLMPFlow";
  v124 = 22;
  v125 = &v123;
  v91 = sub_100724A64(&xmmword_100BCEB18, &v123);
  v91[4] = sub_10071FFD0;
  v91[5] = 0;
  v123 = "kCBGeneralMsgIdAoSEmptyPacketReport";
  v124 = 35;
  v125 = &v123;
  v92 = sub_100724A64(&xmmword_100BCEB18, &v123);
  v92[4] = sub_100720194;
  v92[5] = 0;
  v123 = "kCBGeneralMsgIdConotrolAoS";
  v124 = 26;
  v125 = &v123;
  v93 = sub_100724A64(&xmmword_100BCEB18, &v123);
  v93[4] = sub_100720358;
  v93[5] = 0;
  v123 = "kCBGeneralMsgIdBTSCPageScan";
  v124 = 27;
  v125 = &v123;
  v94 = sub_100724A64(&xmmword_100BCEB18, &v123);
  v94[4] = sub_10072046C;
  v94[5] = 0;
  v123 = "kCBGeneralMsgIdSetQoSConfig";
  v124 = 27;
  v125 = &v123;
  v95 = sub_100724A64(&xmmword_100BCEB18, &v123);
  v95[4] = sub_100720664;
  v95[5] = 0;
  v123 = "kCBGeneralMsgIdGetQoSConfig";
  v124 = 27;
  v125 = &v123;
  v96 = sub_100724A64(&xmmword_100BCEB18, &v123);
  v96[4] = sub_100720D5C;
  v96[5] = 0;
  v123 = "kCBGeneralMsgIdGetLeScanStats";
  v124 = 29;
  v125 = &v123;
  v97 = sub_100724A64(&xmmword_100BCEB18, &v123);
  v97[4] = sub_100720E0C;
  v97[5] = 0;
  v123 = "kCBGeneralMsgIdSpmiCoexGetDebugCounter";
  v124 = 38;
  v125 = &v123;
  v98 = sub_100724A64(&xmmword_100BCEB18, &v123);
  v98[4] = sub_100720EC0;
  v98[5] = 0;
  v123 = "kCBGeneralMsgIdSpmiCoexResetDebugCounter";
  v124 = 40;
  v125 = &v123;
  v99 = sub_100724A64(&xmmword_100BCEB18, &v123);
  v99[4] = sub_100720FC0;
  v99[5] = 0;
  v123 = "kCBGeneralMsgIdSpmiCoexTestWriteMsg";
  v124 = 35;
  v125 = &v123;
  v100 = sub_100724A64(&xmmword_100BCEB18, &v123);
  v100[4] = sub_100721090;
  v100[5] = 0;
  v123 = "kCBGeneralMsgIdSpmiCoexTxControl";
  v124 = 32;
  v125 = &v123;
  v101 = sub_100724A64(&xmmword_100BCEB18, &v123);
  v101[4] = sub_1007211CC;
  v101[5] = 0;
  v123 = "kCBGeneralMsgIdSpmiCoexType53Config";
  v124 = 35;
  v125 = &v123;
  v102 = sub_100724A64(&xmmword_100BCEB18, &v123);
  v102[4] = sub_1007212D0;
  v102[5] = 0;
  v123 = "kCBGeneralMsgIdSpmiCoexType60Config";
  v124 = 35;
  v125 = &v123;
  v103 = sub_100724A64(&xmmword_100BCEB18, &v123);
  v103[4] = sub_1007213B4;
  v103[5] = 0;
  v123 = "kCBGeneralMsgIdReadControllerRam";
  v124 = 32;
  v125 = &v123;
  v104 = sub_100724A64(&xmmword_100BCEB18, &v123);
  v104[4] = sub_10072153C;
  v104[5] = 0;
  v123 = "kCBGeneralMsgIdSetMinEncryptionKeySize";
  v124 = 38;
  v125 = &v123;
  v105 = sub_100724A64(&xmmword_100BCEB18, &v123);
  v105[4] = sub_100721770;
  v105[5] = 0;
  v123 = "kCBGeneralMsgIdCalSetTxPower";
  v124 = 28;
  v125 = &v123;
  v106 = sub_100724A64(&xmmword_100BCEB18, &v123);
  v106[4] = sub_100721804;
  v106[5] = 0;
  v123 = "kCBGeneralMsgIdHPLinkBFCmd";
  v124 = 26;
  v125 = &v123;
  v107 = sub_100724A64(&xmmword_100BCEB18, &v123);
  v107[4] = sub_1007219BC;
  v107[5] = 0;
  v123 = "kCBGeneralMsgIdMRCLoggingCmd";
  v124 = 28;
  v125 = &v123;
  v108 = sub_100724A64(&xmmword_100BCEB18, &v123);
  v108[4] = sub_100721E2C;
  v108[5] = 0;
  v123 = "kCBGeneralMsgIdBTAntennaCfg";
  v124 = 27;
  v125 = &v123;
  v109 = sub_100724A64(&xmmword_100BCEB18, &v123);
  v109[4] = sub_100722038;
  v109[5] = 0;
  v123 = "kCBGeneralMsgIdLoadMSFFile";
  v124 = 26;
  v125 = &v123;
  v110 = sub_100724A64(&xmmword_100BCEB18, &v123);
  v110[4] = sub_100722264;
  v110[5] = 0;
  v123 = "kCBGeneralMsgIdLoadPwrRegulatoryFile";
  v124 = 36;
  v125 = &v123;
  v111 = sub_100724A64(&xmmword_100BCEB18, &v123);
  v111[4] = sub_100722508;
  v111[5] = 0;
  v123 = "kCBGeneralMsgIdLoadPwrRegulatoryFileA3";
  v124 = 38;
  v125 = &v123;
  v112 = sub_100724A64(&xmmword_100BCEB18, &v123);
  v112[4] = sub_100722694;
  v112[5] = 0;
  v123 = "kCBGeneralMsgIdTriggerULLM";
  v124 = 26;
  v125 = &v123;
  v113 = sub_100724A64(&xmmword_100BCEB18, &v123);
  v113[4] = sub_1007228F0;
  v113[5] = 0;
  v123 = "kCBGeneralMsgIdSimulateBudswapCmd";
  v124 = 33;
  v125 = &v123;
  v114 = sub_100724A64(&xmmword_100BCEB18, &v123);
  v114[4] = sub_100722AF4;
  v114[5] = 0;
  v123 = "kCBGeneralMsgIdSrsFwLogConfig";
  v124 = 29;
  v125 = &v123;
  v115 = sub_100724A64(&xmmword_100BCEB18, &v123);
  v115[4] = sub_100722C30;
  v115[5] = 0;
  v123 = "kCBGeneralMsgIdLMPLogConfig";
  v124 = 27;
  v125 = &v123;
  v116 = sub_100724A64(&xmmword_100BCEB18, &v123);
  v116[4] = sub_100722D70;
  v116[5] = 0;
  v123 = "kCBGeneralMsgIDInqPageMode";
  v124 = 26;
  v125 = &v123;
  v117 = sub_100724A64(&xmmword_100BCEB18, &v123);
  v117[4] = sub_100722E20;
  v117[5] = 0;
  v123 = "kCBGeneralMsgHCICMD";
  v124 = 19;
  v125 = &v123;
  v118 = sub_100724A64(&xmmword_100BCEB18, &v123);
  v118[4] = sub_100722EF0;
  v118[5] = 0;
  v123 = "kCBGeneralMsgIdLEAdvTxPowerIncrease";
  v124 = 35;
  v125 = &v123;
  v119 = sub_100724A64(&xmmword_100BCEB18, &v123);
  v119[4] = sub_10072324C;
  v119[5] = 0;
  v123 = "kCBGeneralMsgIdWriteBdAddr";
  v124 = 26;
  v125 = &v123;
  v120 = sub_100724A64(&xmmword_100BCEB18, &v123);
  v120[4] = sub_100723370;
  v120[5] = 0;
  v123 = "kCBGeneralMsgIdCrcErredPduReportEnable";
  v124 = 38;
  v125 = &v123;
  v121 = sub_100724A64(&xmmword_100BCEB18, &v123);
  v121[4] = sub_1007234A0;
  v121[5] = 0;
  v123 = "kCBGeneralMsgIdAppleExtendedAdvReportEnable";
  v124 = 43;
  v125 = &v123;
  v122 = sub_100724A64(&xmmword_100BCEB18, &v123);
  v122[4] = sub_100723554;
  v122[5] = 0;
}

void sub_100716BCC(uint64_t a1, void *a2)
{
  v4 = sub_10000E92C();
  if (!(*(*v4 + 8))(v4))
  {
    return;
  }

  v31 = a1;
  original = a2;
  v41 = 0;
  v42 = 0;
  v44 = 0;
  v43 = 0;
  v38 = 26;
  value = xpc_dictionary_get_value(a2, "kCBMsgArgs");
  int64 = xpc_dictionary_get_int64(value, "kCBMsgArgAction");
  v6 = xpc_dictionary_get_int64(value, "kCBMsgArgConnHandle");
  v36 = xpc_dictionary_get_int64(value, "kCBMsgArgAntennaDiversityEnable");
  v7 = xpc_dictionary_get_int64(value, "kCBMsgArgDiversityRSSIThreshold");
  v8 = xpc_dictionary_get_int64(value, "kCBMsgArgRssiSwitchThreshold");
  v9 = xpc_dictionary_get_int64(value, "kCBMsgArgSwitchDecisionDuration");
  v10 = xpc_dictionary_get_int64(value, "kCBMsgArgDeepFadingTimeout");
  v35 = xpc_dictionary_get_int64(value, "kCBMsgArgPacketOnFavorite");
  v11 = xpc_dictionary_get_int64(value, "kCBMsgArgRssiFav");
  v12 = xpc_dictionary_get_int64(value, "kCBMsgArgRssiBak");
  v33 = xpc_dictionary_get_int64(value, "kCBMsgArgInstantRssiFav");
  v34 = xpc_dictionary_get_int64(value, "kCBMsgArgInstantRssiBak");
  v13 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Args received : \n", buf, 2u);
    v13 = qword_100BCE950;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v40 = int64;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "action : %u\n", buf, 8u);
    v13 = qword_100BCE950;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v40 = v6;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "connHandle : %u\n", buf, 8u);
    v13 = qword_100BCE950;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v40 = v36;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "antennaDiversityEnable : %u\n", buf, 8u);
    v13 = qword_100BCE950;
  }

  v14 = v7;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v40 = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "diversityRSSITHreshold : %d\n", buf, 8u);
    v13 = qword_100BCE950;
  }

  v15 = v8;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v40 = v15;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "rssiSwitchThreshold : %d\n", buf, 8u);
    v13 = qword_100BCE950;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v40 = v9;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "switchDecisionDuration : %u\n", buf, 8u);
    v13 = qword_100BCE950;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v40 = v10;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "deepFadingTimeout : %u\n", buf, 8u);
    v13 = qword_100BCE950;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v40 = v35;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "packetOnFavorite : %u\n", buf, 8u);
    v13 = qword_100BCE950;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v40 = v11;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "rssiFav : %d\n", buf, 8u);
    v13 = qword_100BCE950;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v40 = v12;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "rssiBak : %d\n", buf, 8u);
    v13 = qword_100BCE950;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v40 = v33;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "instantRSSIFav : %d\n", buf, 8u);
    v13 = qword_100BCE950;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v40 = v34;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "instantRSSIBak : %d\n", buf, 8u);
  }

  v16 = sub_10000C7D0();
  BYTE4(v30) = v34;
  BYTE3(v30) = v33;
  BYTE2(v30) = v12;
  BYTE1(v30) = v11;
  LOBYTE(v30) = v35;
  v17 = (*(*v16 + 904))(v16, int64, v6, v36, v14, v15, v9, v10, v30, &v38, &v41, 1);
  v18 = qword_100BCE950;
  if (v17)
  {
    v19 = v17;
    if (!os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_34;
    }

    *buf = 67109120;
    v40 = v19;
    v20 = "Response : %d";
    v21 = v18;
    v22 = OS_LOG_TYPE_DEFAULT;
    v23 = 8;
  }

  else
  {
    if (!os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_INFO))
    {
      goto LABEL_34;
    }

    *buf = 0;
    v20 = "Response to BCM4350:antennaDiversity registered successfully\n";
    v21 = v18;
    v22 = OS_LOG_TYPE_INFO;
    v23 = 2;
  }

  _os_log_impl(&_mh_execute_header, v21, v22, v20, buf, v23);
LABEL_34:
  v24 = v38;
  if (v38 >= 2u)
  {
    v25 = 0;
    v26 = qword_100BCE950;
    do
    {
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        v27 = *(&v41 + v25);
        *buf = 67109120;
        v40 = v27;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "%x\t", buf, 8u);
        v26 = qword_100BCE950;
        v24 = v38;
      }

      ++v25;
    }

    while (v25 < v24);
    reply = xpc_dictionary_create_reply(original);
    if (reply)
    {
      v29 = reply;
      xpc_dictionary_set_int64(reply, "kCBMsgArgStatus", BYTE3(v41));
      xpc_dictionary_set_int64(v29, "kCBMsgArgConnHandle", WORD2(v41));
      xpc_dictionary_set_int64(v29, "kCBMsgArgCurrProposedAntenna", BYTE6(v41));
      xpc_dictionary_set_int64(v29, "kCBMsgArgRssiFav", HIBYTE(v41));
      xpc_dictionary_set_int64(v29, "kCBMsgArgRssiBak", v42);
      xpc_dictionary_set_int64(v29, "kCBMsgArgInstantRssiFav", BYTE1(v42));
      xpc_dictionary_set_int64(v29, "kCBMsgArgInstantRssiBak", BYTE2(v42));
      xpc_dictionary_set_int64(v29, "kCBMsgArgLinkQualityA", BYTE3(v42));
      xpc_dictionary_set_int64(v29, "kCBMsgArgLinkQualityB", BYTE4(v42));
      xpc_dictionary_set_int64(v29, "kCBMsgArgAutoModeEnable", BYTE5(v42));
      xpc_dictionary_set_int64(v29, "kCBMsgArgCurrPowerCap", BYTE6(v42));
      xpc_dictionary_set_int64(v29, "kCBMsgArgCurrPowerControlIndex", HIBYTE(v42));
      xpc_dictionary_set_int64(v29, "kCBMsgArgRxCounterOnActive", v43);
      xpc_dictionary_set_int64(v29, "kCBMsgArgAntennaSwap0to1Counter", WORD1(v43));
      xpc_dictionary_set_int64(v29, "kCBMsgArgAntennaSwap1to0Counter", WORD2(v43));
      xpc_dictionary_set_int64(v29, "kCBMsgArgDeepFadingCount", HIWORD(v43));
      xpc_dictionary_set_int64(v29, "kCBMsgArgAntCmp", v44);
      xpc_connection_send_message(*(*(v31 + 72) + 16), v29);
      xpc_release(v29);
    }
  }
}

void sub_10071749C(uint64_t a1, xpc_object_t xdict)
{
  value_5 = 0;
  value_1 = 0;
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  if (sub_100013CA4(v4, 1, v5, v6, v7, v8, v9, v10, "kCBMsgArgBTAddr"))
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_1008671BC();
    }
  }

  else
  {
    value = 0;
    v11 = sub_10000C7D0();
    if ((*(*v11 + 304))(v11, &value_1, &value))
    {
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_1008671F8();
      }
    }

    else
    {
      reply = xpc_dictionary_create_reply(xdict);
      xpc_dictionary_set_int64(reply, "kCBMsgArgRawRSSI", value);
      xpc_connection_send_message(*(*(a1 + 72) + 16), reply);
      xpc_release(reply);
    }
  }
}

void sub_1007175E0(int a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(value, "kCBMsgArgConnHandle");
  v4 = *sub_10000C7D0();
  if (!(*(v4 + 896))())
  {
    reply = xpc_dictionary_create_reply(xdict);
    xpc_dictionary_set_int64(reply, "kCBMsgArgStatus", 0);
    xpc_dictionary_set_int64(reply, "kCBMsgArgCurrAntenna", 0);
    xpc_release(reply);
  }
}

void sub_100717704(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(value, "kCBMsgArgResumeTimer");
  v5 = sub_10000C7D0();
  v6 = sub_100413630(v5);
  v7 = *sub_10000C7D0();
  if (v6)
  {
    v8 = (*(v7 + 1920))();
  }

  else
  {
    v8 = (*(v7 + 1192))();
  }

  if (!v8)
  {
    reply = xpc_dictionary_create_reply(xdict);
    xpc_dictionary_set_int64(reply, "kCBMsgArgStatus", 0);
    xpc_connection_send_message(*(*(a1 + 72) + 16), reply);
    xpc_release(reply);
  }
}

void sub_100717824(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  if (!sub_100013CA4(value, 1, v5, v6, v7, v8, v9, v10, "kCBMsgArgBTAddr"))
  {
    uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgConnectionPacketType");
    if (qword_100B508A0 != -1)
    {
      sub_100867268();
    }

    if (sub_100576928(off_100B50898, 0, uint64))
    {
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100867290();
      }
    }

    else
    {
      reply = xpc_dictionary_create_reply(xdict);
      xpc_dictionary_set_int64(reply, "kCBMsgArgStatus", 0);
      xpc_connection_send_message(*(*(a1 + 72) + 16), reply);
      xpc_release(reply);
    }
  }
}

void sub_100717950(int a1, xpc_object_t object)
{
  v3 = qword_100BCEB08;
  if (!qword_100BCEB08)
  {
    goto LABEL_8;
  }

  v4 = &qword_100BCEB08;
  do
  {
    if (*(v3 + 32) >= 15)
    {
      v4 = v3;
    }

    v3 = *(v3 + 8 * (*(v3 + 32) < 15));
  }

  while (v3);
  if (v4 != &qword_100BCEB08 && *(v4 + 8) <= 15)
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100867300();
    }
  }

  else
  {
LABEL_8:
    v5 = xpc_retain(object);
    v23 = 15;
    v25 = &v23;
    sub_100724D48(&qword_100BCEB00, &v23)[5] = v5;
    v25 = -1;
    v24 = 0;
    v23 = 0;
    value = xpc_dictionary_get_value(object, "kCBMsgArgs");
    if (!sub_100013CA4(value, 1, v7, v8, v9, v10, v11, v12, "kCBMsgArgTransmitPowerLevelType"))
    {
      v13 = sub_1000E1FE8(&v23);
      if (v13)
      {
        v14 = v13;
        sub_1000031B0();
        v20 = sub_10024E134(sub_10072360C, v14, v25, v15, v16, v17, v18, v19);
        sub_10000C198();
        v21 = qword_100BCE950;
        if (v20)
        {
          if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
          {
            sub_10086733C();
          }
        }

        else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Response to XPC ReadTransmitPowerLevel registered successfully", buf, 2u);
        }
      }

      else
      {
        if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
        {
          sub_1008673AC();
        }

        sub_10072360C(0x19Eu, 0, 0);
      }
    }
  }
}

void sub_100717B6C(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_int64(value, "kCBMsgArgTxPowerCap");
  v5 = *sub_10000C7D0();
  if (!(*(v5 + 928))())
  {
    reply = xpc_dictionary_create_reply(xdict);
    xpc_dictionary_set_int64(reply, "kCBMsgArgStatus", 0);
    xpc_connection_send_message(*(*(a1 + 72) + 16), reply);
    xpc_release(reply);
  }
}

void sub_100717C88(uint64_t a1, xpc_object_t xdict)
{
  LODWORD(value) = 0;
  v11 = 0;
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  int64 = xpc_dictionary_get_int64(v4, "kCBMsgArgAction");
  if (int64)
  {
    v6 = xpc_dictionary_get_int64(v4, "kCBMsgArgCountryCode");
    v7 = xpc_dictionary_get_int64(v4, "kCBMsgArgLeFlag");
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v8 = sub_10000C7D0();
  if ((*(*v8 + 568))(v8, int64, v6, v7, &v11, &value))
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_1008673E8();
    }
  }

  else if (v11 >= 2u)
  {
    reply = xpc_dictionary_create_reply(xdict);
    if (reply)
    {
      v10 = reply;
      xpc_dictionary_set_int64(reply, "kCBMsgArgStatus", 0);
      xpc_dictionary_set_int64(v10, "kCBMsgArgCountryCode", value);
      xpc_dictionary_set_int64(v10, "kCBMsgArgLeFlag", BYTE1(value));
      xpc_connection_send_message(*(*(a1 + 72) + 16), v10);
      xpc_release(v10);
    }
  }
}

void sub_100717E10(uint64_t a1, void *a2)
{
  v18 = 0;
  value = 0;
  v16 = 0;
  v4 = *sub_10000C7D0();
  if ((*(v4 + 2944))())
  {
    v5 = xpc_dictionary_get_value(a2, "kCBMsgArgs");
    uint64 = xpc_dictionary_get_uint64(v5, "kCBMsgArgAction");
    v7 = xpc_dictionary_get_uint64(v5, "kCBMsgArgCountryCodeType");
    length = 0;
    if (uint64)
    {
      data = xpc_dictionary_get_data(v5, "kCBMsgArgCountryCodeBands", &length);
      if (length == 8)
      {
        v9 = data;
        v10 = sub_10000C7D0();
        LODWORD(v11) = (*(*v10 + 1464))(v10, v7, v9, length);
        if (!v11)
        {
          goto LABEL_15;
        }
      }

      else
      {
        if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
        {
          sub_100867494();
        }

        LODWORD(v11) = 1;
      }

      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_1008674D0();
      }

      goto LABEL_15;
    }

    v12 = sub_10000C7D0();
    LODWORD(v11) = (*(*v12 + 1472))(v12, v7, &v16, &value);
LABEL_15:
    v11 = v11;
    goto LABEL_16;
  }

  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_100867458();
  }

  v11 = 1;
LABEL_16:
  reply = xpc_dictionary_create_reply(a2);
  if (reply)
  {
    v14 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgStatus", v11);
    if (v16 == 9)
    {
      xpc_dictionary_set_uint64(v14, "kCBMsgArgCountryCodeType", value);
      xpc_dictionary_set_data(v14, "kCBMsgArgCountryCodeBands", &value + 1, v16 - 1);
    }

    xpc_connection_send_message(*(*(a1 + 72) + 16), v14);
    xpc_release(v14);
  }
}

void sub_1007180BC(uint64_t a1, void *a2)
{
  v4 = sub_10000C7D0();
  if ((*(*v4 + 2952))(v4))
  {
    value = xpc_dictionary_get_value(a2, "kCBMsgArgs");
    xpc_dictionary_get_uint64(value, "kCBMsgArgRFTestCoreIndex");
    xpc_dictionary_get_uint64(value, "kCBMsgArgRFTestTxChains");
    xpc_dictionary_get_uint64(value, "kCBMsgArgRFTestRxChains");
    v6 = *sub_10000C7D0();
    v7 = (*(v6 + 1480))();
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100867540();
    }

    v7 = 1;
  }

  reply = xpc_dictionary_create_reply(a2);
  if (reply)
  {
    v9 = reply;
    xpc_dictionary_set_int64(reply, "kCBMsgArgStatus", v7);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v9);
    xpc_release(v9);
  }
}

void sub_100718224(uint64_t a1, void *a2)
{
  value_1 = 0;
  value = 0;
  v4 = *sub_10000C7D0();
  if ((*(v4 + 2960))())
  {
    v5 = xpc_dictionary_get_value(a2, "kCBMsgArgs");
    HIWORD(value_1) = xpc_dictionary_get_uint64(v5, "kCBMsgArgConnHandle");
    v6 = *sub_10000C7D0();
    v7 = (*(v6 + 1488))();
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10086757C();
    }

    v7 = 1;
  }

  reply = xpc_dictionary_create_reply(a2);
  if (reply)
  {
    v9 = reply;
    xpc_dictionary_set_int64(reply, "kCBMsgArgStatus", v7);
    xpc_dictionary_set_uint64(v9, "kCBMsgArgConnHandle", HIWORD(value_1));
    xpc_dictionary_set_int64(v9, "kCBMsgArgChain0RSSI", SBYTE1(value_1));
    xpc_dictionary_set_int64(v9, "kCBMsgArgChain1RSSI", value_1);
    xpc_dictionary_set_int64(v9, "kCBMsgArgChain2RSSI", value);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v9);
    xpc_release(v9);
  }
}

void sub_1007183CC(uint64_t a1, void *a2)
{
  memset(length, 0, 252);
  v4 = *sub_10000C7D0();
  if ((*(v4 + 2968))())
  {
    v5 = sub_10000C7D0();
    v6 = (*(*v5 + 1496))(v5, length, length + 1);
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_1008675B8();
    }

    v6 = 1;
  }

  reply = xpc_dictionary_create_reply(a2);
  if (reply)
  {
    v8 = reply;
    xpc_dictionary_set_int64(reply, "kCBMsgArgStatus", v6);
    if (LOBYTE(length[0]))
    {
      xpc_dictionary_set_data(v8, "kCBMsgArgTASPowerTableInfo", length + 1, LOBYTE(length[0]));
    }

    xpc_connection_send_message(*(*(a1 + 72) + 16), v8);
    xpc_release(v8);
  }
}

void sub_10071855C(uint64_t a1, void *a2)
{
  v4 = sub_10000C7D0();
  if ((*(*v4 + 2976))(v4))
  {
    value = xpc_dictionary_get_value(a2, "kCBMsgArgs");
    xpc_dictionary_get_uint64(value, "kCBMsgArgSARType");
    v6 = *sub_10000C7D0();
    LODWORD(v7) = (*(v6 + 1504))();
    if (v7 && os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100867630();
    }

    v7 = v7;
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_1008675F4();
    }

    v7 = 1;
  }

  reply = xpc_dictionary_create_reply(a2);
  if (reply)
  {
    v9 = reply;
    xpc_dictionary_set_int64(reply, "kCBMsgArgStatus", v7);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v9);
    xpc_release(v9);
  }
}

void sub_1007186BC(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgConnHandle");
  xpc_dictionary_get_uint64(value, "kCBMsgArgControlType");
  xpc_dictionary_get_uint64(value, "kCBMsgArgRssiThresholdLevel1_2G");
  xpc_dictionary_get_uint64(value, "kCBMsgArgRssiThresholdLevel2_2G");
  xpc_dictionary_get_uint64(value, "kCBMsgArgRssiThresholdLevel3_2G");
  xpc_dictionary_get_uint64(value, "kCBMsgArgAntennaImbalanceRssiThreshold_2G");
  xpc_dictionary_get_uint64(value, "kCBMsgArgRssiThresholdLevel1_5G");
  xpc_dictionary_get_uint64(value, "kCBMsgArgRssiThresholdLevel2_5G");
  xpc_dictionary_get_uint64(value, "kCBMsgArgRssiThresholdLevel3_5G");
  xpc_dictionary_get_uint64(value, "kCBMsgArgAntennaImbalanceRssiThreshold_5G");
  xpc_dictionary_get_uint64(value, "kCBMsgArgNackRatioThresholdLevel1_high");
  xpc_dictionary_get_uint64(value, "kCBMsgArgNackRatioThresholdLevel1_low");
  xpc_dictionary_get_uint64(value, "kCBMsgArgNackRatioThresholdLevel2_high");
  xpc_dictionary_get_uint64(value, "kCBMsgArgNackRatioThresholdLevel2_low");
  xpc_dictionary_get_uint64(value, "kCBMsgArgNackRatioThresholdLevel3_high");
  xpc_dictionary_get_uint64(value, "kCBMsgArgNackRatioThresholdLevel3_low");
  v3 = sub_10000C7D0();
  v4 = (*(*v3 + 1584))(v3, uint64);
  if (v4 && os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_1008676A0();
  }

  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v6 = reply;
    xpc_dictionary_set_int64(reply, "kCBMsgArgStatus", v4);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v6);
    xpc_release(v6);
  }
}

void sub_10071895C(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(value, "kCBMsgArgConnHandle");
  xpc_dictionary_get_uint64(value, "kCBMsgArgSetDefaultChainForCoreChainTx");
  xpc_dictionary_get_uint64(value, "kCBMsgArgSetDefaultChainForCoreChainRx");
  xpc_dictionary_get_uint64(value, "kCBMsgArgSetDefaultChainForCoreCoreIndex");
  v5 = *sub_10000C7D0();
  v6 = (*(v5 + 1528))();
  if (v6 && os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_100867710();
  }

  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v8 = reply;
    xpc_dictionary_set_int64(reply, "kCBMsgArgStatus", v6);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v8);
    xpc_release(v8);
  }
}

void sub_100718AA8(int a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(value, "kCBMsgArgEnable");
  if (xpc_dictionary_get_uint64(value, "kCBMsgArgTriggerType") - 1 <= 1)
  {
    xpc_dictionary_get_uint64(value, "kCBMsgArgSyncInterval");
    xpc_dictionary_get_uint64(value, "kCBMsgArgVseInterval");
  }

  xpc_dictionary_get_uint64(value, "kCBMsgArgConnHandle");
  v3 = *sub_10000C7D0();
  if ((*(v3 + 1912))())
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100867780();
    }
  }
}

void sub_100718BE4(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(value, "kCBMsgArgAntenna");
  xpc_dictionary_get_uint64(value, "kCBMsgArgBand");
  xpc_dictionary_get_uint64(value, "kCBMsgArgModulation");
  xpc_dictionary_get_uint64(value, "kCBMsgArglpMax");
  xpc_dictionary_get_uint64(value, "kCBMsgArglpStep");
  xpc_dictionary_get_uint64(value, "kCBMsgArghpMax");
  xpc_dictionary_get_uint64(value, "kCBMsgArghpStep");
  v5 = *sub_10000C7D0();
  v6 = (*(v5 + 1600))();
  if (v6 && os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_1008677F0();
  }

  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v8 = reply;
    xpc_dictionary_set_int64(reply, "kCBMsgArgStatus", v6);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v8);
    xpc_release(v8);
  }
}

void sub_100718D88(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(value, "kCBMsgArgControlAutoConnectionTaggingEnable");
  v5 = *sub_10000C7D0();
  v6 = (*(v5 + 1616))();
  if (v6 && os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_100867860();
  }

  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v8 = reply;
    xpc_dictionary_set_int64(reply, "kCBMsgArgStatus", v6);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v8);
    xpc_release(v8);
  }
}

void sub_100718E80(uint64_t a1, xpc_object_t xdict)
{
  *(value + 5) = 0;
  value[0] = 0;
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(v4, "kCBMsgArgGetConnectionTaggingInfoHandle");
  v6 = *sub_10000C7D0();
  v7 = (*(v6 + 1624))();
  if (v7 && os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_1008678D0();
  }

  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v9 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgStatus", v7);
    xpc_dictionary_set_uint64(v9, "kCBMsgArgGetConnectionTaggingInfoHandle", uint64);
    xpc_dictionary_set_uint64(v9, "kCBMsgArgGetConnectionTaggingInfoDeviceType", LOWORD(value[0]));
    xpc_dictionary_set_uint64(v9, "kCBMsgArgGetConnectionTaggingInfo DLTrafficType", BYTE2(value[0]));
    xpc_dictionary_set_uint64(v9, "kCBMsgArgGetConnectionTaggingInfoULTrafficType", BYTE3(value[0]));
    xpc_dictionary_set_uint64(v9, "kCBMsgArgGetConnectionTaggingInfoLatency", BYTE4(value[0]));
    xpc_dictionary_set_uint64(v9, "kCBMsgArgGetConnectionTaggingInfoDLThroughput", *(value + 5));
    xpc_dictionary_set_uint64(v9, "kCBMsgArgGetConnectionTaggingInfoULThroughput", *(&value[1] + 1));
    xpc_connection_send_message(*(*(a1 + 72) + 16), v9);
    xpc_release(v9);
  }
}

void sub_100719020(uint64_t a1, void *a2)
{
  v19 = 0;
  value = 0;
  v17 = 0;
  v4 = *sub_10000C7D0();
  if ((*(v4 + 2936))())
  {
    v5 = xpc_dictionary_get_value(a2, "kCBMsgArgs");
    uint64 = xpc_dictionary_get_uint64(v5, "kCBMsgArgAction");
    if (uint64)
    {
      v7 = xpc_dictionary_get_uint64(v5, "kCBMsgArgCountryCode2G");
      v8 = xpc_dictionary_get_uint64(v5, "kCBMsgArgLeFlag");
      v9 = xpc_dictionary_get_uint64(v5, "kCBMsgArgCountryCodeUNII1");
      v10 = xpc_dictionary_get_uint64(v5, "kCBMsgArgCountryCodeUNII3");
      v11 = xpc_dictionary_get_uint64(v5, "kCBMsgArgCountryCodeUNII5");
    }

    else
    {
      v11 = 0;
      v10 = 0;
      v9 = 0;
      v8 = 0;
      v7 = 0;
    }

    v13 = sub_10000C7D0();
    HIBYTE(v16) = v11;
    LOBYTE(v16) = v11;
    LODWORD(v12) = (*(*v13 + 576))(v13, uint64, v7, v8, v9, v10, v11, v11, v16, &v17, &value);
    if (v12 && os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10086797C();
    }

    v12 = v12;
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100867940();
    }

    v12 = 1;
  }

  reply = xpc_dictionary_create_reply(a2);
  if (reply)
  {
    v15 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgStatus", v12);
    xpc_dictionary_set_uint64(v15, "kCBMsgArgCountryCode2G", value);
    xpc_dictionary_set_uint64(v15, "kCBMsgArgLeFlag", BYTE1(value));
    xpc_dictionary_set_uint64(v15, "kCBMsgArgCountryCodeUNII1", BYTE2(value));
    xpc_dictionary_set_uint64(v15, "kCBMsgArgCountryCodeUNII3", BYTE4(value));
    xpc_dictionary_set_uint64(v15, "kCBMsgArgCountryCodeUNII5", BYTE6(value));
    xpc_connection_send_message(*(*(a1 + 72) + 16), v15);
    xpc_release(v15);
  }
}

void sub_1007192E8(int a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v3 = [[NSString alloc] initWithCString:xpc_dictionary_get_string(value encoding:{"kCBMsgArgCountryString"), 4}];
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_1008679EC();
  }

  v4 = sub_1004327A0();
  (*(*v4 + 64))(v4, v3);
}

void sub_1007193AC(int a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_BOOL(value, "kCBMsgArgCellularTransmitState");
  v3 = *sub_10000C7D0();
  if ((*(v3 + 560))())
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100867A60();
    }
  }
}

void sub_100719460(uint64_t a1, xpc_object_t xdict)
{
  memset(v35, 0, 55);
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  *objects = 0u;
  v11 = 0u;
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(value, "kCBMsgArgFactoryCalTableType");
  v5 = *sub_10000C7D0();
  if ((*(v5 + 584))())
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100867AD0();
    }
  }

  else
  {
    reply = xpc_dictionary_create_reply(xdict);
    if (reply)
    {
      v7 = reply;
      xpc_dictionary_set_int64(reply, "kCBMsgArgStatus", v35[3]);
      xpc_dictionary_set_int64(v7, "kCBMsgArgFactoryCalTableType", v35[4]);
      for (i = 0; i != 50; ++i)
      {
        objects[i] = xpc_int64_create(v35[i]);
      }

      v9 = xpc_array_create(objects, 0x32uLL);
      xpc_dictionary_set_value(v7, "kCBMsgArgFactoryCalTable", v9);
      xpc_connection_send_message(*(*(a1 + 72) + 16), v7);
      xpc_release(v7);
    }
  }
}

void sub_100719664(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_BOOL(value, "kCBMsgArgDisableTpc");
  v5 = *sub_10000C7D0();
  v6 = (*(v5 + 312))();
  reply = xpc_dictionary_create_reply(xdict);
  xpc_dictionary_set_int64(reply, "kCBMsgArgStatus", v6);
  xpc_connection_send_message(*(*(a1 + 72) + 16), reply);

  xpc_release(reply);
}

void sub_100719734(int a1, xpc_object_t xdict)
{
  v21 = 0;
  v20 = 0;
  v19 = 0;
  v18 = 1;
  v17 = 1;
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v3 = sub_100013C04(value, "kCBMsgArgCountryCode");
  v4 = sub_1004327A0();
  (*(*v4 + 8))(v4, v3, &v19, &v18, &v17);
  if (!sub_100013CA4(value, 1, v5, v6, v7, v8, v9, v10, "kCBMsgArgBTAddr"))
  {
    v14 = 0;
    v15 = v20;
    v16 = v21;
    v13 = 0;
    sub_1000216B4(&v13);
    v11 = sub_1000E5EA8(&v14);
    if (v11)
    {
      v12 = sub_10000C7D0();
      if ((*(*v12 + 952))(v12, v11, v18) && os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100867B40();
      }
    }

    else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_1008673AC();
    }

    sub_10002249C(&v13);
  }
}

void sub_100719900(int a1, xpc_object_t object)
{
  v3 = qword_100BCEB08;
  if (!qword_100BCEB08)
  {
    goto LABEL_8;
  }

  v4 = &qword_100BCEB08;
  do
  {
    if (*(v3 + 32) >= 23)
    {
      v4 = v3;
    }

    v3 = *(v3 + 8 * (*(v3 + 32) < 23));
  }

  while (v3);
  if (v4 != &qword_100BCEB08 && *(v4 + 8) <= 23)
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100867BB0();
    }
  }

  else
  {
LABEL_8:
    v5 = xpc_retain(object);
    *buf = 23;
    v22 = buf;
    sub_100724D48(&qword_100BCEB00, buf)[5] = v5;
    v22 = 0;
    value = xpc_dictionary_get_value(object, "kCBMsgArgs");
    if (!sub_100013CA4(value, 1, v7, v8, v9, v10, v11, v12, "kCBMsgArgRxChannel"))
    {
      sub_1000031B0();
      v19 = sub_10024E164(sub_100723734, v22, v13, v14, v15, v16, v17, v18);
      sub_10000C198();
      v20 = qword_100BCE950;
      if (v19)
      {
        if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
        {
          sub_100867BEC();
        }
      }

      else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Response to XPC HCI_StartRxTest registered successfully", buf, 2u);
      }
    }
  }
}

void sub_100719AA4(int a1, xpc_object_t object)
{
  v3 = qword_100BCEB08;
  if (!qword_100BCEB08)
  {
    goto LABEL_8;
  }

  v4 = &qword_100BCEB08;
  do
  {
    if (*(v3 + 32) >= 24)
    {
      v4 = v3;
    }

    v3 = *(v3 + 8 * (*(v3 + 32) < 24));
  }

  while (v3);
  if (v4 != &qword_100BCEB08 && *(v4 + 8) <= 24)
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100867C5C();
    }
  }

  else
  {
LABEL_8:
    v5 = xpc_retain(object);
    LODWORD(v21) = 24;
    v22 = &v21;
    sub_100724D48(&qword_100BCEB00, &v21)[5] = v5;
    v21 = 0;
    v22 = 0;
    v20 = 0;
    value = xpc_dictionary_get_value(object, "kCBMsgArgs");
    if (!sub_100013CA4(value, 1, v7, v8, v9, v10, v11, v12, "kCBMsgArgTxChannel"))
    {
      sub_1000031B0();
      v17 = sub_10024E194(sub_100723818, v22, v21, v20, v13, v14, v15, v16);
      sub_10000C198();
      v18 = qword_100BCE950;
      if (v17)
      {
        if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
        {
          sub_100867C98();
        }
      }

      else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Response to XPC HCI_StartTxTest registered successfully", buf, 2u);
      }
    }
  }
}

void sub_100719C7C(int a1, xpc_object_t object)
{
  v2 = qword_100BCEB08;
  if (!qword_100BCEB08)
  {
    goto LABEL_8;
  }

  v3 = &qword_100BCEB08;
  do
  {
    if (*(v2 + 32) >= 25)
    {
      v3 = v2;
    }

    v2 = *(v2 + 8 * (*(v2 + 32) < 25));
  }

  while (v2);
  if (v3 != &qword_100BCEB08 && *(v3 + 8) <= 25)
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100867D08();
    }
  }

  else
  {
LABEL_8:
    v4 = xpc_retain(object);
    v14 = 25;
    v15 = &v14;
    sub_100724D48(&qword_100BCEB00, &v14)[5] = v4;
    sub_1000031B0();
    v11 = sub_100018960(191, sub_1007238FC, v5, v6, v7, v8, v9, v10, v13);
    sub_10000C198();
    v12 = qword_100BCE950;
    if (v11)
    {
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100867D44();
      }
    }

    else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Response to XPC HCI_LeTestEnd registered successfully", &v13, 2u);
    }
  }
}

void sub_100719DD8(int a1, xpc_object_t object)
{
  v3 = qword_100BCEB08;
  if (!qword_100BCEB08)
  {
    goto LABEL_8;
  }

  v4 = &qword_100BCEB08;
  do
  {
    if (*(v3 + 32) >= 26)
    {
      v4 = v3;
    }

    v3 = *(v3 + 8 * (*(v3 + 32) < 26));
  }

  while (v3);
  if (v4 != &qword_100BCEB08 && *(v4 + 8) <= 26)
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100867DB4();
    }
  }

  else
  {
LABEL_8:
    v5 = xpc_retain(object);
    LODWORD(v21) = 26;
    v22 = &v21;
    sub_100724D48(&qword_100BCEB00, &v21)[5] = v5;
    v21 = 0;
    v22 = 0;
    v20 = 0;
    value = xpc_dictionary_get_value(object, "kCBMsgArgs");
    if (!sub_100013CA4(value, 1, v7, v8, v9, v10, v11, v12, "kCBMsgArgRxChannel"))
    {
      sub_1000031B0();
      v17 = sub_10024E1C8(sub_100723A00, v22, v21, v20, v13, v14, v15, v16);
      sub_10000C198();
      v18 = qword_100BCE950;
      if (v17)
      {
        if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
        {
          sub_100867DF0();
        }
      }

      else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Response to XPC HCI_StartRxEnhancedTest registered successfully", buf, 2u);
      }
    }
  }
}

void sub_100719FB0(int a1, xpc_object_t object)
{
  v3 = qword_100BCEB08;
  if (!qword_100BCEB08)
  {
    goto LABEL_8;
  }

  v4 = &qword_100BCEB08;
  do
  {
    if (*(v3 + 32) >= 27)
    {
      v4 = v3;
    }

    v3 = *(v3 + 8 * (*(v3 + 32) < 27));
  }

  while (v3);
  if (v4 != &qword_100BCEB08 && *(v4 + 8) <= 27)
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100867E60();
    }
  }

  else
  {
LABEL_8:
    v5 = xpc_retain(object);
    LODWORD(v21) = 27;
    v22 = &v21;
    sub_100724D48(&qword_100BCEB00, &v21)[5] = v5;
    v21 = 0;
    v22 = 0;
    v19 = 0;
    v20 = 0;
    value = xpc_dictionary_get_value(object, "kCBMsgArgs");
    if (!sub_100013CA4(value, 1, v7, v8, v9, v10, v11, v12, "kCBMsgArgTxChannel"))
    {
      sub_1000031B0();
      v16 = sub_10024E1FC(sub_100723AE4, v22, v21, v20, v19, v13, v14, v15);
      sub_10000C198();
      v17 = qword_100BCE950;
      if (v16)
      {
        if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
        {
          sub_100867E9C();
        }
      }

      else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Response to XPC HCI_StartTxEnhancedTest registered successfully", buf, 2u);
      }
    }
  }
}

void sub_10071A1A0(uint64_t a1, xpc_object_t xdict)
{
  value_1[0] = 0;
  value = 1;
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v5 = sub_100013C04(v4, "kCBMsgArgCountryCode");
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_100867F0C();
  }

  v6 = sub_1004327A0();
  (*(*v6 + 8))(v6, v5, value_1 + 1, value_1, &value);
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEBUG))
  {
    sub_100867F80();
  }

  reply = xpc_dictionary_create_reply(xdict);
  xpc_dictionary_set_int64(reply, "kCBMsgArgStatus", 0);
  xpc_dictionary_set_int64(reply, "kCBMsgArgCountryCode", HIBYTE(value_1[0]));
  xpc_dictionary_set_int64(reply, "kCBMsgArgLeFlag", LOBYTE(value_1[0]));
  xpc_dictionary_set_int64(reply, "kCBMsgArgHDRFlag", value);
  xpc_connection_send_message(*(*(a1 + 72) + 16), reply);
  xpc_release(reply);
}

void sub_10071A320(uint64_t a1, void *a2)
{
  value_1 = -1;
  value = -1;
  v4 = *sub_10000C7D0();
  if ((*(v4 + 1944))())
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100868004();
    }
  }

  else
  {
    reply = xpc_dictionary_create_reply(a2);
    if (reply)
    {
      v6 = reply;
      xpc_dictionary_set_int64(reply, "kCBMsgArgEpaGpioEnabled", HIBYTE(value_1));
      xpc_dictionary_set_int64(v6, "kCBMsgArgEpaGpioNum", value_1);
      xpc_dictionary_set_int64(v6, "kCBMsgArgEpaGpioState", value);
      xpc_connection_send_message(*(*(a1 + 72) + 16), v6);
      xpc_release(v6);
    }
  }
}

void sub_10071A444(int a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v3 = xpc_dictionary_get_BOOL(value, "kCBMsgArgSARHeadState");
  v4 = sub_10000C7D0();
  if ((*(*v4 + 72))(v4, 1, v3))
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100868074();
    }
  }
}

void sub_10071A4E4(int a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_BOOL(value, "kCBMsgArgWiFi5GState");
  v3 = *sub_10000C7D0();
  if ((*(v3 + 1968))())
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_1008680E4();
    }
  }
}

void sub_10071A59C(uint64_t a1, xpc_object_t xdict)
{
  v9 = 0;
  *&length[1] = 0;
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(value, "kCBMsgArgConnHandle");
  v5 = *sub_10000C7D0();
  if (!(*(v5 + 1984))())
  {
    reply = xpc_dictionary_create_reply(xdict);
    if (reply)
    {
      v7 = reply;
      xpc_dictionary_set_data(reply, "kCBMsgArgData", &length[1], 0);
      xpc_connection_send_message(*(*(a1 + 72) + 16), v7);
      xpc_release(v7);
    }
  }
}

void sub_10071A6B4(uint64_t a1, xpc_object_t xdict)
{
  memset(&length[1], 0, 256);
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  if (value)
  {
    v5 = value;
    xpc_dictionary_get_uint64(value, "kCBMsgArgConnHandle");
    xpc_dictionary_get_uint64(v5, "kCBMsgArgVersion");
    v6 = *sub_10000C7D0();
    if (!(*(v6 + 1992))())
    {
      reply = xpc_dictionary_create_reply(xdict);
      if (reply)
      {
        v8 = reply;
        xpc_dictionary_set_data(reply, "kCBMsgArgData", &length[1], 0);
        xpc_connection_send_message(*(*(a1 + 72) + 16), v8);
        xpc_release(v8);
      }
    }
  }

  else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_100868154();
  }
}

void sub_10071A840(uint64_t a1, xpc_object_t xdict)
{
  memset(&length[1], 0, 256);
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  if (value)
  {
    v5 = value;
    xpc_dictionary_get_uint64(value, "kCBMsgArgConnHandle");
    xpc_dictionary_get_uint64(v5, "kCBMsgArgAdvInstance");
    v6 = *sub_10000C7D0();
    v7 = (*(v6 + 1992))();
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100868154();
    }

    v7 = 3;
  }

  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v9 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgStatus", v7);
    xpc_dictionary_set_data(v9, "kCBMsgArgData", &length[1], 0);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v9);
    xpc_release(v9);
  }
}

void sub_10071A9E4(int a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  if (value)
  {
    v3 = value;
    xpc_dictionary_get_uint64(value, "kCBMsgArgBtSyncOperation");
    xpc_dictionary_get_uint64(v3, "kCBMsgArgBtSyncCompensation");
    xpc_dictionary_get_uint64(v3, "kCBMsgArgBtSyncEdge");
    v4 = *sub_10000C7D0();
    if (!(*(v4 + 2000))())
    {
      return;
    }
  }

  else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_100868154();
  }

  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_100868190();
  }
}

void sub_10071AAF8(int a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(value, "kCBMsgArgCellularTransmitAntenna");
  v3 = *sub_10000C7D0();
  if ((*(v3 + 2024))())
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_1008681CC();
    }
  }
}

void sub_10071ABA8(int a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(value, "kCBMsgArgConnHandle");
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(v4, "kCBMsgArgCurrProposedAntenna");
  sub_10000C7D0();
  v5 = *(*sub_10000C7D0() + 896);
  if (v5())
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100868208();
    }
  }
}

void sub_10071ACEC(int a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_BOOL(value, "kCBMsgArgTunablesReadEnable");
  v3 = *sub_10000C7D0();
  if ((*(v3 + 2176))())
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100868284();
    }
  }
}

void sub_10071AD94(int a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(value, "kCBMsgArgConnHandle");
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(v4, "kCBMsgArgCurrDiversityAntenna");
  v5 = *sub_10000C7D0();
  if ((*(v5 + 896))())
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_1008682C0();
    }
  }
}

void sub_10071AE88(int a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgAdvBufMatchHandle");
  v5 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(v5, "kCBMsgArgConfigMask");
  v6 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(v6, "kCBMsgArgAdvBufMatchAdvType");
  v7 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(v7, "kCBMsgArgPayloadSize");
  v8 = sub_10000C7D0();
  if ((*(*v8 + 3344))(v8, uint64))
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10086833C();
    }
  }
}

void sub_10071AFE0(int a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(value, "kCBMsgArgAdvBufMatchHandle");
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(v4, "kCBMsgArgAdvBufEnable");
  v5 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(v5, "kCBMsgArgAdvBufPause");
  v6 = *sub_10000C7D0();
  if ((*(v6 + 3408))())
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_1008683AC();
    }
  }
}

void sub_10071B0E0(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(value, "kCBMsgArgAdvBufMatchHandle");
  v5 = *sub_10000C7D0();
  if ((*(v5 + 3376))())
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10086841C();
    }
  }

  else
  {
    reply = xpc_dictionary_create_reply(xdict);
    if (reply)
    {
      v7 = reply;
      xpc_dictionary_set_int64(reply, "kCBMsgArgAdvBufNumEntries", 255);
      xpc_dictionary_set_int64(v7, "kCBMsgArgAdvBufStatusMask", 255);
      xpc_dictionary_set_int64(v7, "kCBMsgArgAdvBufNumOverflows", 0xFFFFLL);
      xpc_connection_send_message(*(*(a1 + 72) + 16), v7);
      xpc_release(v7);
    }
  }
}

void sub_10071B228(int a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgAdvBufMatchHandle");
  v5 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v6 = xpc_dictionary_get_uint64(v5, "kCBMsgArgConfigMask");
  v7 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v8 = xpc_dictionary_get_uint64(v7, "kCBMsgArgAdvBufMatchAdvType");
  v9 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(v9, "kCBMsgArgPayloadSize");
  v10 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(v10, "kCBMsgArgAdvBufNumEntries");
  v11 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_int64(v11, "kCBMsgArgAdvBufRSSIThreshold");
  v12 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(v12, "kCBMsgArgAdvBufDupNumEntries");
  v13 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(v13, "kCBMsgArgAdvBufDupClearTimeoutSeconds");
  v14 = sub_10000C7D0();
  if ((*(*v14 + 3384))(v14, uint64, v6, 255, 76, v8))
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10086848C();
    }
  }
}

void sub_10071B400(int a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(value, "kCBMsgArgAdvBufMatchHandle");
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(v4, "kCBMsgArgConfigMask");
  v5 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_int64(v5, "kCBMsgArgAdvBufRSSIThreshold");
  v6 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(v6, "kCBMsgArgAdvBufDupNumEntries");
  v7 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(v7, "kCBMsgArgAdvBufDupClearTimeoutSeconds");
  v8 = *sub_10000C7D0();
  if ((*(v8 + 3392))())
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_1008684FC();
    }
  }
}

void sub_10071B548(int a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgAdvBufMatchHandle");
  v5 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v6 = xpc_dictionary_get_uint64(v5, "kCBMsgArgStartEntry");
  v7 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v8 = xpc_dictionary_get_uint64(v7, "kCBMsgArgEndEntry");
  v9 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v10 = xpc_dictionary_get_uint64(v9, "kCBMsgArgAdvBufEnable");
  memset(v27, 0, sizeof(v27));
  v26 = 0u;
  v11 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  if (sub_100013CA4(v11, 1, v12, v13, v14, v15, v16, v17, "kCBMsgArgBTAddr"))
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10086856C();
    }
  }

  else
  {
    v18 = v8 - v6;
    if (v8 < v6 || v8 - v6 - 14 <= 0xFFFFFFF0)
    {
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_10086864C();
      }
    }

    else
    {
      v21 = 0;
      v22 = 0;
      v23 = v10;
      v24 = 0x12554433221100;
      v25 = 0;
      if (v18 >= 1)
      {
        v19 = v27;
        do
        {
          *(v19 - 4) = -573785174;
          *(v19 - 6) = -18;
          *(v19 - 10) = v10;
          *(v19 - 9) = 0x12554433221100;
          *(v19 - 1) = 0;
          v19 += 17;
          --v18;
        }

        while (v18);
      }

      v20 = sub_10000C7D0();
      if ((*(*v20 + 3432))(v20, uint64, v6, v8, &v21) && os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_1008685DC();
      }
    }
  }
}

void sub_10071B7D0(int a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(value, "kCBMsgArgAdvBufMatchHandle");
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(v4, "kCBMsgArgConfigMask");
  v5 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(v5, "kCBMsgArgPayloadSize");
  v6 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(v6, "kCBMsgArgAdvBufNumEntries");
  v7 = *sub_10000C7D0();
  if ((*(v7 + 3440))())
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_1008686C8();
    }
  }
}

void sub_10071B8FC(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(value, "kCBMsgArgAdvBufMatchHandle");
  v5 = *sub_10000C7D0();
  if (!(*(v5 + 3448))())
  {
    reply = xpc_dictionary_create_reply(xdict);
    if (reply)
    {
      v7 = reply;
      xpc_dictionary_set_int64(reply, "kCBMsgArgAdvBufNumEntries", 255);
      xpc_connection_send_message(*(*(a1 + 72) + 16), v7);
      xpc_release(v7);
    }
  }
}

void sub_10071B9D8(int a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(value, "kCBMsgArgSPMIDiagSubOpcode");
  v3 = *sub_10000C7D0();
  if ((*(v3 + 3456))())
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100868738();
    }
  }
}

void sub_10071BA8C(int a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(value, "kCBMsgArgAdvBufMatchHandle");
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(v4, "kCBMsgArgAdvBufEnable");
  v5 = *sub_10000C7D0();
  if ((*(v5 + 3464))())
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_1008687A8();
    }
  }
}

void sub_10071BB70(int a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(value, "kCBMsgArgAdvBufMatchHandle");
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(v4, "kCBMsgArgAdvBufEnable");
  v5 = *sub_10000C7D0();
  if ((*(v5 + 3472))())
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100868818();
    }
  }
}

void sub_10071BC54(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(value, "kCBMsgArgAdvBufMatchHandle");
  v5 = *sub_10000C7D0();
  if ((*(v5 + 3480))())
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100868888();
    }
  }

  else
  {
    reply = xpc_dictionary_create_reply(xdict);
    if (reply)
    {
      v7 = reply;
      xpc_dictionary_set_int64(reply, "kCBMsgArgStartInstant", 43690);
      xpc_connection_send_message(*(*(a1 + 72) + 16), v7);
      xpc_release(v7);
    }
  }
}

void sub_10071BD64(int a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgAdvBufMatchHandle");
  v5 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(v5, "kCBMsgArgStartInstant");
  v6 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(v6, "kCBMsgArgModValue");
  v7 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(v7, "kCBMsgArgAdvBufEnable");
  sub_1000ABB80(uint64);
  v8 = *sub_10000C7D0();
  if ((*(v8 + 3488))())
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10085A0E8();
    }
  }
}

void sub_10071BE9C(int a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(value, "kCBMsgArgAdvBufEnable");
  v3 = *sub_10000C7D0();
  if ((*(v3 + 3496))())
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_1008688F8();
    }
  }
}

void sub_10071BF50(int a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(value, "kCBMsgArgGenericGPIOPinNum");
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(v4, "kCBMsgArgGenericGPIOControl");
  v5 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(v5, "kCBMsgArgGenericGPIOState");
  v6 = *sub_10000C7D0();
  if ((*(v6 + 3552))())
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100868968();
    }
  }
}

void sub_10071C054(uint64_t a1, xpc_object_t xdict)
{
  v15 = 0;
  v14 = 0;
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  if (sub_100013CA4(value, 1, v5, v6, v7, v8, v9, v10, "kCBMsgArgBTAddr"))
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_1008671BC();
    }
  }

  else
  {
    v11 = sub_1000E1FE8(&v14);
    if (v11)
    {
      v12 = *v11;
    }

    else
    {
      v12 = 0;
    }

    reply = xpc_dictionary_create_reply(xdict);
    xpc_dictionary_set_int64(reply, "kCBMsgArgACLConnHandle", v12);
    xpc_connection_send_message(*(*(a1 + 72) + 16), reply);
    xpc_release(reply);
  }
}

void sub_10071C140(int a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(value, "kCBMsgArgHDRSyncConnHandle");
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(v4, "kCBMsgArgHDRSyncConnTxBw");
  v5 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(v5, "kCBMsgArgHDRSyncConnRxBw");
  v6 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(v6, "kCBMsgArgHDRSyncConnMaxLatency");
  v7 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(v7, "kCBMsgArgHDRSyncConnVoiceSettting");
  v8 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(v8, "kCBMsgArgHDRSyncConnRetxEffort");
  v9 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(v9, "kCBMsgArgHDRSyncConnPacketType");
  v10 = sub_10000C7D0();
  if ((*(*v10 + 1392))(v10))
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_1008689D8();
    }
  }
}

void sub_10071C2E0(int a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v20 = 0;
  v19 = 0;
  if (!sub_100013CA4(value, 1, v4, v5, v6, v7, v8, v9, "kCBMsgArgBTAddr"))
  {
    v10 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
    uint64 = xpc_dictionary_get_uint64(v10, "kCBMsgArgHDRSyncConnTxBw");
    v12 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
    v13 = xpc_dictionary_get_uint64(v12, "kCBMsgArgHDRSyncConnRxBw");
    v14 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
    xpc_dictionary_get_uint64(v14, "kCBMsgArgHDRSyncConnMaxLatency");
    v15 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
    xpc_dictionary_get_uint64(v15, "kCBMsgArgHDRSyncConnVoiceSettting");
    v16 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
    xpc_dictionary_get_uint64(v16, "kCBMsgArgHDRSyncConnRetxEffort");
    v17 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
    xpc_dictionary_get_uint64(v17, "kCBMsgArgHDRSyncConnPacketType");
    v18 = sub_10000C7D0();
    if ((*(*v18 + 1400))(v18, &v19, uint64, v13))
    {
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100868A48();
      }
    }
  }
}

void sub_10071C4A8(uint64_t a1, void *a2)
{
  v3 = sub_10000C7D0();
  if ((*(*v3 + 3016))(v3))
  {
    value = xpc_dictionary_get_value(a2, "kCBMsgArgs");
    xpc_dictionary_get_uint64(value, "kCBMsgArgSCOControlFormat");
    v5 = xpc_dictionary_get_value(a2, "kCBMsgArgs");
    xpc_dictionary_get_uint64(v5, "kCBMsgArgSCOControlBufferSize");
    v6 = xpc_dictionary_get_value(a2, "kCBMsgArgs");
    xpc_dictionary_get_uint64(v6, "kCBMsgArgSCOControlNumBuffer");
    v7 = *sub_10000C7D0();
    if ((*(v7 + 1408))())
    {
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100868AF4();
      }
    }
  }

  else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_100868AB8();
  }
}

void sub_10071C608(uint64_t a1, void *a2)
{
  v4 = sub_10000C7D0();
  if ((*(*v4 + 2872))(v4))
  {
    value = xpc_dictionary_get_value(a2, "kCBMsgArgs");
    uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgHRBEnable");
    v7 = *sub_10000C7D0();
    v8 = (*(v7 + 1688))();
    if (v8)
    {
      LODWORD(v9) = v8;
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100868BA0();
      }

      v9 = v9;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100868B64();
    }

    uint64 = 0;
    v9 = 1;
  }

  reply = xpc_dictionary_create_reply(a2);
  if (reply)
  {
    v11 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgStatus", v9);
    xpc_dictionary_set_uint64(v11, "kCBMsgArgHRBEnable", uint64);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v11);
    xpc_release(v11);
  }
}

void sub_10071C794(uint64_t a1, void *a2)
{
  v4 = sub_10000C7D0();
  if ((*(*v4 + 2872))(v4))
  {
    value = xpc_dictionary_get_value(a2, "kCBMsgArgs");
    uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgHRBBands");
    v7 = *sub_10000C7D0();
    v8 = (*(v7 + 1696))();
    if (v8)
    {
      LODWORD(v9) = v8;
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100868C10();
      }

      v9 = v9;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100868B64();
    }

    uint64 = 0;
    v9 = 1;
  }

  reply = xpc_dictionary_create_reply(a2);
  if (reply)
  {
    v11 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgStatus", v9);
    xpc_dictionary_set_uint64(v11, "kCBMsgArgHRBBands", uint64);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v11);
    xpc_release(v11);
  }
}

void sub_10071C920(uint64_t a1, void *a2)
{
  v4 = sub_10000C7D0();
  if ((*(*v4 + 2872))(v4))
  {
    value = xpc_dictionary_get_value(a2, "kCBMsgArgs");
    uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgHRBBands");
    v7 = *sub_10000C7D0();
    v8 = (*(v7 + 1704))();
    if (v8)
    {
      LODWORD(v9) = v8;
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100868C10();
      }

      v9 = v9;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100868B64();
    }

    uint64 = 0;
    v9 = 1;
  }

  reply = xpc_dictionary_create_reply(a2);
  if (reply)
  {
    v11 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgStatus", v9);
    xpc_dictionary_set_uint64(v11, "kCBMsgArgHRBBands", uint64);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v11);
    xpc_release(v11);
  }
}

void sub_10071CAAC(uint64_t a1, void *a2)
{
  v4 = sub_10000C7D0();
  if ((*(*v4 + 2872))(v4))
  {
    v20 = 0;
    v19 = 0;
    value = xpc_dictionary_get_value(a2, "kCBMsgArgs");
    v12 = sub_100013CA4(value, 1, v6, v7, v8, v9, v10, v11, "kCBMsgArgBTAddr");
    if (v12)
    {
      LODWORD(v13) = v12;
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_1008671BC();
      }

      v14 = 0;
    }

    else
    {
      if (sub_1000E1FE8(&v19))
      {
        v15 = xpc_dictionary_get_value(a2, "kCBMsgArgs");
        LOBYTE(v14) = xpc_dictionary_get_uint64(v15, "kCBMsgArgHRBBand");
        v16 = *sub_10000C7D0();
        LODWORD(v13) = (*(v16 + 1720))();
        if (v13 && os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
        {
          sub_100868C80();
        }
      }

      else
      {
        if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
        {
          sub_100868CF0();
        }

        LOBYTE(v14) = 0;
        LODWORD(v13) = 0;
      }

      v14 = v14;
    }

    v13 = v13;
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100868B64();
    }

    v14 = 0;
    v13 = 1;
  }

  reply = xpc_dictionary_create_reply(a2);
  if (reply)
  {
    v18 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgStatus", v13);
    xpc_dictionary_set_uint64(v18, "kCBMsgArgHRBBand", v14);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v18);
    xpc_release(v18);
  }
}

void sub_10071CCF8(uint64_t a1, void *a2)
{
  v3 = sub_10000C7D0();
  if ((*(*v3 + 2872))(v3))
  {
    value = xpc_dictionary_get_value(a2, "kCBMsgArgs");
    xpc_dictionary_get_uint64(value, "kCBMsgArgHRBEnable");
    v5 = xpc_dictionary_get_value(a2, "kCBMsgArgs");
    xpc_dictionary_get_uint64(v5, "kCBMsgArgHRBBands");
    v6 = *sub_10000C7D0();
    if ((*(v6 + 1736))())
    {
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100868D2C();
      }
    }
  }

  else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_100868B64();
  }
}

void sub_10071CE38(uint64_t a1, void *a2)
{
  v3 = sub_10000C7D0();
  if ((*(*v3 + 2872))(v3))
  {
    value = xpc_dictionary_get_value(a2, "kCBMsgArgs");
    xpc_dictionary_get_uint64(value, "kCBMsgArgHRBScanInterval");
    v5 = xpc_dictionary_get_value(a2, "kCBMsgArgs");
    xpc_dictionary_get_uint64(v5, "kCBMsgArgHRBScanWindow");
    v6 = *sub_10000C7D0();
    if ((*(v6 + 1744))())
    {
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100868D9C();
      }
    }
  }

  else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_100868B64();
  }
}

void sub_10071CF78(uint64_t a1, xpc_object_t original)
{
  reply = xpc_dictionary_create_reply(original);
  v5 = sub_10000C7D0();
  if ((*(*v5 + 2872))(v5))
  {
    value = xpc_dictionary_get_value(original, "kCBMsgArgs");
    uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgHRBNumOfGroups");
    if (uint64 - 4 <= 0xFFFFFFFC)
    {
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100868FF0();
      }

      v8 = reply;
      v9 = 3;
      goto LABEL_24;
    }

    length = 0;
    v10 = xpc_dictionary_get_value(original, "kCBMsgArgs");
    data = xpc_dictionary_get_data(v10, "kCBMsgArgHRBStartGroupFrequency", &length);
    v12 = length;
    if (length == 2 * uint64)
    {
      v13 = data;
      v14 = xpc_dictionary_get_value(original, "kCBMsgArgs");
      v15 = xpc_dictionary_get_data(v14, "kCBMsgArgHRBSizeGroupChannelMap", &length);
      if (length == v12)
      {
        v16 = v15;
        v17 = xpc_dictionary_get_value(original, "kCBMsgArgs");
        v18 = xpc_dictionary_get_data(v17, "kCBMsgArgHRBChannelMap", &length);
        if (length == 63 * uint64)
        {
          v19 = v18;
          v20 = sub_10000C7D0();
          v21 = (*(*v20 + 1752))(v20, uint64, v13, v16, v19, 1);
          if (v21 && os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
          {
            sub_100868F80();
          }

          v9 = v21;
          goto LABEL_23;
        }

        if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
        {
          sub_100868F04();
        }
      }

      else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100868E88();
      }
    }

    else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100868E0C();
    }

    v9 = 3;
LABEL_23:
    v8 = reply;
    goto LABEL_24;
  }

  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_100868B64();
  }

  v8 = reply;
  v9 = 11;
LABEL_24:
  xpc_dictionary_set_int64(v8, "kCBMsgArgStatus", v9);
  xpc_connection_send_message(*(*(a1 + 72) + 16), reply);
  xpc_release(reply);
}

void sub_10071D28C(uint64_t a1, xpc_object_t xdict)
{
  v17 = 0;
  v16 = 0;
  bytes = 0;
  v14 = 0;
  v13 = 0;
  v12 = 0;
  v11 = 0;
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgPowerDatabaseVscVersion");
  v5 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v20 = xpc_dictionary_get_uint64(v5, "kCBMsgArgPowerDatabaseAntenna");
  v6 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v19 = xpc_dictionary_get_uint64(v6, "kCBMsgArgPowerDatabasePCap");
  v7 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v18 = xpc_dictionary_get_uint64(v7, "kCBMsgArgPowerDatabaseBandCode");
  v8 = sub_10000C7D0();
  if ((*(*v8 + 1760))(v8, &uint64) && os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_100869070();
  }

  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v10 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgPowerDatabaseVscVersion", uint64);
    xpc_dictionary_set_uint64(v10, "kCBMsgArgPowerDatabaseCountryCode", v17);
    xpc_dictionary_set_uint64(v10, "kCBMsgArgPowerDatabaseAntenna", v20);
    xpc_dictionary_set_uint64(v10, "kCBMsgArgPowerDatabasePCap", v19);
    if (uint64 - 1 <= 1)
    {
      xpc_dictionary_set_data(v10, "kCBMsgArgPowerDatabaseIpaMaxTxPwr", &bytes, 5uLL);
      xpc_dictionary_set_data(v10, "kCBMsgArgPowerDatabaseEpaMaxTxPwr", &v13, 5uLL);
      xpc_dictionary_set_data(v10, "kCBMsgArgPowerDatabaseIpaMaxPwrIdx", &v11, 5uLL);
      if (uint64 == 2)
      {
        xpc_dictionary_set_uint64(v10, "kCBMsgArgPowerDatabaseBandCode", v18);
      }
    }

    xpc_connection_send_message(*(*(a1 + 72) + 16), v10);
    xpc_release(v10);
  }
}

void sub_10071D4DC(uint64_t a1, void *a2)
{
  v27 = 0;
  v26 = 0;
  v25 = 0;
  v24 = 0;
  v23 = 0;
  v22 = 0;
  v4 = *sub_10000C7D0();
  if ((*(v4 + 2872))())
  {
    v21 = 0;
    v20 = 0;
    value = xpc_dictionary_get_value(a2, "kCBMsgArgs");
    v12 = sub_100013CA4(value, 1, v6, v7, v8, v9, v10, v11, "kCBMsgArgBTAddr");
    if (v12)
    {
      LODWORD(v13) = v12;
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_1008671BC();
      }
    }

    else
    {
      v16 = sub_1000E1FE8(&v20);
      if (v16)
      {
        v13 = *v16;
        v17 = xpc_dictionary_get_value(a2, "kCBMsgArgs");
        uint64 = xpc_dictionary_get_uint64(v17, "kCBMsgArgHRBReadTxPwrType");
        v19 = sub_10000C7D0();
        LODWORD(v13) = (*(*v19 + 1768))(v19, v13, uint64, 1, &v27, &v26 + 1, &v26);
        if (v13 && os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
        {
          sub_1008690E0();
        }
      }

      else
      {
        if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
        {
          sub_100868CF0();
        }

        LODWORD(v13) = 0;
      }
    }

    v13 = v13;
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100868B64();
    }

    v13 = 1;
  }

  reply = xpc_dictionary_create_reply(a2);
  if (reply)
  {
    v15 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgConnHandle", v27);
    xpc_dictionary_set_int64(v15, "kCBMsgArgStatus", v13);
    xpc_dictionary_set_int64(v15, "kCBMsgArgHRBTxPower2GBr", SHIBYTE(v26));
    xpc_dictionary_set_int64(v15, "kCBMsgArgHRBTxPower2GEdr2", v26);
    xpc_dictionary_set_int64(v15, "kCBMsgArgHRBTxPower2GEdr3", SHIBYTE(v25));
    xpc_dictionary_set_int64(v15, "kCBMsgArgHRBTxPower2GHdr4", v25);
    xpc_dictionary_set_int64(v15, "kCBMsgArgHRBTxPower2GHdr8", SHIBYTE(v24));
    xpc_dictionary_set_int64(v15, "kCBMsgArgHRBTxPowerHRBBr", v24);
    xpc_dictionary_set_int64(v15, "kCBMsgArgHRBTxPowerHRBEdr2", SHIBYTE(v23));
    xpc_dictionary_set_int64(v15, "kCBMsgArgHRBTxPowerHRBEdr3", v23);
    xpc_dictionary_set_int64(v15, "kCBMsgArgHRBTxPowerHRBHdr4", SHIBYTE(v22));
    xpc_dictionary_set_int64(v15, "kCBMsgArgHRBTxPowerHRBHdr8", v22);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v15);
    xpc_release(v15);
  }
}

void sub_10071D838(uint64_t a1, void *a2)
{
  v29 = 0;
  v28 = 0;
  memset(v27, 0, sizeof(v27));
  v4 = *sub_10000C7D0();
  if ((*(v4 + 2872))())
  {
    WORD2(v21[0]) = 0;
    LODWORD(v21[0]) = 0;
    value = xpc_dictionary_get_value(a2, "kCBMsgArgs");
    if (sub_100013CA4(value, 1, v6, v7, v8, v9, v10, v11, "kCBMsgArgBTAddr"))
    {
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_1008671BC();
      }
    }

    else
    {
      v12 = sub_1000E1FE8(v21);
      if (v12)
      {
        v13 = *v12;
        v14 = sub_10000C7D0();
        if ((*(*v14 + 1784))(v14, v13, &v28, v27, 1))
        {
          if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
          {
            sub_100869150();
          }
        }

        else
        {
          reply = xpc_dictionary_create_reply(a2);
          if (reply)
          {
            v16 = reply;
            v25 = 0u;
            v26 = 0u;
            v23 = 0u;
            v24 = 0u;
            *objects = 0u;
            bzero(v21, 0x280uLL);
            xpc_dictionary_set_uint64(v16, "kCBMsgArgConnHandle", v13);
            xpc_dictionary_set_int64(v16, "kCBMsgArgStatus", 0);
            for (i = 0; i != 10; ++i)
            {
              objects[i] = xpc_int64_create(*(&v28 + i));
            }

            v18 = xpc_array_create(objects, 0xAuLL);
            xpc_dictionary_set_value(v16, "kCBMsgArgHRBAfhChannelMap", v18);
            for (j = 0; j != 80; ++j)
            {
              v21[j] = xpc_int64_create(*(v27 + j));
            }

            v20 = xpc_array_create(v21, 0x50uLL);
            xpc_dictionary_set_value(v16, "kCBMsgArgHRBAfhFreqMap", v20);
            xpc_connection_send_message(*(*(a1 + 72) + 16), v16);
            xpc_release(v16);
          }
        }
      }

      else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100868CF0();
      }
    }
  }

  else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_100868B64();
  }
}

void sub_10071DB38(uint64_t a1, void *a2)
{
  v3 = sub_10000C7D0();
  if ((*(*v3 + 2872))(v3))
  {
    value = xpc_dictionary_get_value(a2, "kCBMsgArgs");
    xpc_dictionary_get_uint64(value, "kCBMsgArgHRBLimitChannelMap");
    v5 = *sub_10000C7D0();
    if ((*(v5 + 1800))())
    {
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_1008691C0();
      }
    }
  }

  else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_100868B64();
  }
}

void sub_10071DC4C(uint64_t a1, void *a2)
{
  v3 = sub_10000C7D0();
  if ((*(*v3 + 2872))(v3))
  {
    value = xpc_dictionary_get_value(a2, "kCBMsgArgs");
    uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgHRBBand");
    v5 = xpc_dictionary_get_value(a2, "kCBMsgArgs");
    v12 = xpc_dictionary_get_uint64(v5, "kCBMsgArgHRBChannelMaskNumLow");
    v6 = xpc_dictionary_get_value(a2, "kCBMsgArgs");
    v11 = xpc_dictionary_get_uint64(v6, "kCBMsgArgHRBChannelMaskNumHigh");
    v7 = *sub_10000C7D0();
    LODWORD(v8) = (*(v7 + 1808))();
    if (v8 && os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10086926C();
    }

    v8 = v8;
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100869230();
    }

    v8 = 0;
  }

  reply = xpc_dictionary_create_reply(a2);
  if (reply)
  {
    v10 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgStatus", v8);
    xpc_release(v10);
  }
}

void sub_10071DDEC(int a1, xpc_object_t xdict)
{
  v33 = -1;
  v32 = -1;
  v31 = xmmword_1008C5110;
  v30 = 0;
  v29 = 0;
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v10 = sub_100013CA4(value, 1, v4, v5, v6, v7, v8, v9, "kCBMsgArgBTAddr");
  if (v10)
  {
    v11 = v10;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_1008671BC();
    }
  }

  else
  {
    v12 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
    xpc_dictionary_get_uint64(v12, "kCBMsgArgEnhTestEnable");
    v13 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
    uint64 = xpc_dictionary_get_uint64(v13, "kCBMsgArgEnhTxTestHoppingMode");
    v15 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
    xpc_dictionary_get_uint64(v15, "kCBMsgArgEnhTxTestBand");
    v16 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
    v28 = xpc_dictionary_get_uint64(v16, "kCBMsgArgEnhTxTestFrequency");
    v17 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
    xpc_dictionary_get_uint64(v17, "kCBMsgArgEnhTxTestInterval");
    v18 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
    xpc_dictionary_get_uint64(v18, "kCBMsgArgEnhTxTestNumberPacket");
    v19 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
    xpc_dictionary_get_uint64(v19, "kCBMsgArgEnhTxTestModulationType");
    v20 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
    xpc_dictionary_get_uint64(v20, "kCBMsgArgEnhTxTestLogicalChan");
    v21 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
    xpc_dictionary_get_uint64(v21, "kCBMsgArgEnhTxTestPacketType");
    v22 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
    xpc_dictionary_get_uint64(v22, "kCBMsgArgEnhTxTestPacketLen");
    v23 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
    xpc_dictionary_get_uint64(v23, "kCBMsgArgEnhTxTestTxPowerLevel");
    v24 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
    xpc_dictionary_get_uint64(v24, "kCBMsgArgEnhTxTestTxPowerTableIdx");
    v25 = sub_10000C7D0();
    v11 = (*(*v25 + 1816))(v25, &v29, uint64, v28);
  }

  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v27 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgStatus", v11);
    xpc_release(v27);
  }
}

void sub_10071E140(int a1, xpc_object_t xdict)
{
  v28 = 0;
  v27 = 0;
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v10 = sub_100013CA4(value, 1, v4, v5, v6, v7, v8, v9, "kCBMsgArgBTAddr");
  if (v10)
  {
    v11 = v10;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_1008671BC();
    }
  }

  else
  {
    v12 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
    xpc_dictionary_get_uint64(v12, "kCBMsgArgEnhTestEnable");
    v13 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
    uint64 = xpc_dictionary_get_uint64(v13, "kCBMsgArgEnhRxTestReportPeriod");
    v14 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
    v15 = xpc_dictionary_get_uint64(v14, "kCBMsgArgEnhRxTestIs2G");
    v16 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
    xpc_dictionary_get_uint64(v16, "kCBMsgArgEnhRxTestOffset");
    v17 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
    xpc_dictionary_get_uint64(v17, "kCBMsgArgEnhRxTestFrequency");
    v18 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
    xpc_dictionary_get_uint64(v18, "kCBMsgArgEnhRxTestModulationType");
    v19 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
    xpc_dictionary_get_uint64(v19, "kCBMsgArgEnhRxTestLogicalChan");
    v20 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
    xpc_dictionary_get_uint64(v20, "kCBMsgArgEnhRxTestBand");
    v21 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
    xpc_dictionary_get_uint64(v21, "kCBMsgArgEnhRxTestPacketType");
    v22 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
    xpc_dictionary_get_uint64(v22, "kCBMsgArgEnhRxTestPacketLen");
    v23 = sub_10000C7D0();
    v11 = (*(*v23 + 1824))(v23, &v27, uint64, v15);
  }

  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v25 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgStatus", v11);
    xpc_release(v25);
  }
}

void sub_10071E3B8(int a1, xpc_object_t xdict)
{
  v28 = 0;
  v27 = 0;
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v10 = sub_100013CA4(value, 1, v4, v5, v6, v7, v8, v9, "kCBMsgArgBTAddr");
  if (v10)
  {
    v11 = v10;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_1008671BC();
    }
  }

  else
  {
    v12 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
    xpc_dictionary_get_uint64(v12, "kCBMsgArgEnhTestEnable");
    v13 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
    uint64 = xpc_dictionary_get_uint64(v13, "kCBMsgArgEnhRxTestReportPeriod");
    v14 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
    v15 = xpc_dictionary_get_uint64(v14, "kCBMsgArgEnhRxTestIs2G");
    v16 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
    xpc_dictionary_get_uint64(v16, "kCBMsgArgEnhRxTestModulationType");
    v17 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
    xpc_dictionary_get_uint64(v17, "kCBMsgArgEnhRxTestLogicalChan");
    v18 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
    xpc_dictionary_get_uint64(v18, "kCBMsgArgEnhRxTestPacketType");
    v19 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
    xpc_dictionary_get_uint64(v19, "kCBMsgArgEnhRxTestPacketLen");
    v20 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
    xpc_dictionary_get_uint64(v20, "kCBMsgArgEnhRxTestBand");
    v21 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
    xpc_dictionary_get_uint64(v21, "kCBMsgArgEnhRxTestOffset");
    v22 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
    xpc_dictionary_get_uint64(v22, "kCBMsgArgEnhRxTestFrequency");
    v23 = sub_10000C7D0();
    v11 = (*(*v23 + 1824))(v23, &v27, uint64, v15);
  }

  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v25 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgStatus", v11);
    xpc_release(v25);
  }
}

void sub_10071E634(int a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(value, "kCBMsgArgEnhTxTestContHRBEnable");
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(v4, "kCBMsgArgEnhTxTestContCarrierEnable");
  v5 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(v5, "kCBMsgArgEnhTxTestContDualCore");
  v6 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(v6, "kCBMsgArgEnhTxTestContAntennaSelection");
  v7 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(v7, "kCBMsgArgEnhTxTestContMode");
  v8 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(v8, "kCBMsgArgEnhTxTestContModulationType");
  v9 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(v9, "kCBMsgArgEnhTxTestContTxPower");
  v10 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(v10, "kCBMsgArgEnhTxTestContTxPowerTableIdx");
  v11 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(v11, "kCBMsgArgEnhTxTestContBand");
  v12 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(v12, "kCBMsgArgEnhTxTestContFrequency2G");
  v13 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(v13, "kCBMsgArgEnhTxTestContFrequencyHRB");
  v14 = sub_10000C7D0();
  v15 = (*(*v14 + 1832))(v14);
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v17 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgStatus", v15);

    xpc_release(v17);
  }
}

void sub_10071E884(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgLERoleIsEnable");
  v6 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v7 = xpc_dictionary_get_uint64(v6, "kCBMsgArgLERoleRoles");
  sub_1000031B0();
  if (uint64)
  {
    v15 = sub_1002D0844(v7);
  }

  else
  {
    v15 = sub_1002D08F0(v7, v8, v9, v10, v11, v12, v13, v14);
  }

  v16 = v15;
  sub_10000C198();
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v18 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgStatus", v16);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v18);

    xpc_release(v18);
  }
}

void sub_10071E968(uint64_t a1, xpc_object_t xdict)
{
  v26 = 0;
  v25 = 0;
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v11 = sub_100013CA4(value, 1, v5, v6, v7, v8, v9, v10, "kCBMsgArgBTAddr");
  if (v11)
  {
    LODWORD(v12) = v11;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_1008671BC();
    }

    v12 = v12;
  }

  else
  {
    v13 = sub_1000E1FE8(&v25);
    if (v13)
    {
      v14 = v13;
      v15 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
      uint64 = xpc_dictionary_get_uint64(v15, "kCBMsgArgBTPerfTestType");
      v17 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
      v18 = xpc_dictionary_get_uint64(v17, "kCBMsgArgBTPerfTestDurationInSec");
      v19 = qword_100BCE950;
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
      {
        buf.tv_sec = __PAIR64__(*v14, 67109888);
        LOWORD(buf.tv_usec) = 1024;
        *(&buf.tv_usec + 2) = uint64;
        *(&buf.tv_usec + 3) = 1024;
        v28 = 0;
        v29 = 1024;
        v30 = v18;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "_BTPerfTest handle=%x type=%d isSymmetric=%d durationInSec=%d\n", &buf, 0x1Au);
        v19 = qword_100BCE950;
      }

      qword_100BC7078 = v14;
      byte_100BC7080 = uint64;
      dword_100BC7088 = v18;
      dword_100BC706C = 0;
      dword_100BC7074 = 0;
      byte_100BC708C = 0;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = word_1008C5170[uint64];
        LODWORD(buf.tv_sec) = 67109120;
        HIDWORD(buf.tv_sec) = v20;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "_BTPerfTest packetSize=%d\n", &buf, 8u);
      }

      buf.tv_sec = 0;
      *&buf.tv_usec = 0;
      gettimeofday(&buf, 0);
      *&qword_100BC7090 = buf.tv_usec / 1000.0 + (1000 * buf.tv_sec);
      v21 = dispatch_time(0, 0);
      global_queue = dispatch_get_global_queue(0, 0);
      dispatch_after_f(v21, global_queue, 0, sub_1007246C8);
    }

    else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100868CF0();
    }

    v12 = 0;
  }

  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v24 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgStatus", v12);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v24);
    xpc_release(v24);
  }
}

void sub_10071EC7C(uint64_t a1, void *a2)
{
  byte_100BC7068 = 1;
  sub_1000031B0();
  v4 = sub_1002967FC(20545, sub_100723BC8);
  sub_10000C198();
  dword_100BC706C = 0;
  reply = xpc_dictionary_create_reply(a2);
  if (reply)
  {
    v6 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgStatus", v4);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v6);

    xpc_release(v6);
  }
}

void sub_10071ED34(uint64_t a1, void *a2)
{
  sub_1000031B0();
  v4 = sub_1002969F8(20545);
  sub_10000C198();
  reply = xpc_dictionary_create_reply(a2);
  if (reply)
  {
    v6 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgStatus", v4);
    if (byte_100BC7080 > 0xCu)
    {
      v9 = 0.0;
    }

    else
    {
      if (((1 << byte_100BC7080) & 0x1249) != 0)
      {
        v7 = (1000 * dword_100BC7088);
        v8 = 3.75;
      }

      else
      {
        v7 = (1000 * dword_100BC7088);
        if (((1 << byte_100BC7080) & 0x492) != 0)
        {
          v8 = 1.25;
        }

        else
        {
          v8 = 2.5;
        }
      }

      v9 = v7 / v8;
    }

    xpc_dictionary_set_double(v6, "kCBMsgArgBTPerfTestMaxPacket", v9);
    if (byte_100BC7068 == 1)
    {
      xpc_dictionary_set_uint64(v6, "kCBMsgArgBTPerfTestPacketRcvd", dword_100BC706C);
      dword_100BC706C = 0;
    }

    xpc_connection_send_message(*(*(a1 + 72) + 16), v6);

    xpc_release(v6);
  }
}

void sub_10071EE90(uint64_t a1, xpc_object_t xdict)
{
  v16 = 0;
  v15 = 0;
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v11 = sub_100013CA4(value, 1, v5, v6, v7, v8, v9, v10, "kCBMsgArgBTAddr");
  if (v11)
  {
    v12 = v11;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_1008671BC();
    }
  }

  else
  {
    byte_100BC7068 = 0;
    sub_1000031B0();
    v12 = sub_10028F454(sub_100723D00, sub_100723DD8, sub_100723F24, 20545, &v15, &unk_1008C5120, &word_100BC7070, &unk_1008C5140);
    sub_10000C198();
  }

  dword_100BC7074 = 0;
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v14 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgStatus", v12);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v14);
    xpc_release(v14);
  }
}

void sub_10071EFDC(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v11 = sub_100013CA4(value, 1, v5, v6, v7, v8, v9, v10, "kCBMsgArgBTAddr");
  if (v11)
  {
    v12 = v11;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_1008671BC();
    }
  }

  else
  {
    sub_1000031B0();
    v12 = sub_10029104C(word_100BC7070, 436);
    sub_10000C198();
  }

  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v14 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgStatus", v12);
    if (byte_100BC7080 > 0xCu)
    {
      v17 = 0.0;
    }

    else
    {
      if (((1 << byte_100BC7080) & 0x1249) != 0)
      {
        v15 = (1000 * dword_100BC7088);
        v16 = 3.75;
      }

      else
      {
        v15 = (1000 * dword_100BC7088);
        if (((1 << byte_100BC7080) & 0x492) != 0)
        {
          v16 = 1.25;
        }

        else
        {
          v16 = 2.5;
        }
      }

      v17 = v15 / v16;
    }

    xpc_dictionary_set_double(v14, "kCBMsgArgBTPerfTestMaxPacket", v17);
    if ((byte_100BC7068 & 1) == 0)
    {
      xpc_dictionary_set_uint64(v14, "kCBMsgArgBTPerfTestPacketSent", dword_100BC7074);
      xpc_dictionary_set_double(v14, "kCBMsgArgBTPerfTestThroughput", ((word_1008C5170[byte_100BC7080] + 4) * dword_100BC7074) * 8.0 / (1000 * dword_100BC7088));
      dword_100BC7074 = 0;
    }

    xpc_connection_send_message(*(*(a1 + 72) + 16), v14);
    xpc_release(v14);
  }
}

void sub_10071F1E8(int a1, xpc_object_t xdict)
{
  v24 = 0;
  v23 = 0;
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  if (sub_100013CA4(value, 1, v4, v5, v6, v7, v8, v9, "kCBMsgArgBTAddr"))
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_1008671BC();
    }

LABEL_4:
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_1008692DC();
    }

    return;
  }

  v10 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(v10, "kCBMsgArgSniffIntervalMax");
  v12 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v13 = xpc_dictionary_get_uint64(v12, "kCBMsgArgSniffIntervalMin");
  v14 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(v14, "kCBMsgArgSniffAttempt");
  v15 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(v15, "kCBMsgArgSniffTimeout");
  v16 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v17 = xpc_dictionary_get_BOOL(v16, "kCBMsgArgAoSStates");
  sub_1000031B0();
  v18 = sub_10024266C(&v23, uint64, v13);
  sub_10000C198();
  if (!v17 || v18)
  {
    if (!v18)
    {
      return;
    }

    goto LABEL_4;
  }

  if (qword_100B508F0 != -1)
  {
    sub_10086934C();
  }

  v21 = v23;
  v22 = v24;
  v19 = sub_1000E6554(off_100B508E8, &v21, 1);
  if (v19)
  {
    v20 = v19;
    if (qword_100B50B60 != -1)
    {
      sub_100869374();
    }

    sub_100378E58(qword_100B50B58, 1, v20);
  }

  else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_10086939C();
  }
}

void sub_10071F418(int a1, xpc_object_t xdict)
{
  v18 = 0;
  v17 = 0;
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  if (sub_100013CA4(value, 1, v4, v5, v6, v7, v8, v9, "kCBMsgArgBTAddr"))
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_1008671BC();
    }

LABEL_4:
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_1008693D8();
    }

    return;
  }

  v10 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v11 = xpc_dictionary_get_BOOL(v10, "kCBMsgArgAoSStates");
  sub_1000031B0();
  v12 = sub_1002429D4(&v17);
  sub_10000C198();
  if (!v11 || v12)
  {
    if (!v12)
    {
      return;
    }

    goto LABEL_4;
  }

  if (qword_100B508F0 != -1)
  {
    sub_10086934C();
  }

  v15 = v17;
  v16 = v18;
  v13 = sub_1000E6554(off_100B508E8, &v15, 1);
  if (v13)
  {
    v14 = v13;
    if (qword_100B50B60 != -1)
    {
      sub_100869374();
    }

    sub_100378E58(qword_100B50B58, 0, v14);
  }

  else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_10086939C();
  }
}

void sub_10071F5B4(int a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  if (sub_100013CA4(value, 1, v3, v4, v5, v6, v7, v8, "kCBMsgArgBTAddr"))
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100869448();
    }
  }

  else
  {
    xpc_dictionary_get_uint64(value, "kCBMsgArgPhyStatsEnable");
    xpc_dictionary_get_uint64(value, "kCBMsgArgPhyStatsInterval");
    xpc_dictionary_get_uint64(value, "kCBMsgArgType");
    v9 = *sub_10000C7D0();
    if ((*(v9 + 320))() && os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_1008694B8();
    }
  }
}

void sub_10071F744(uint64_t a1, void *a2)
{
  v3 = sub_10000C7D0();
  if ((*(*v3 + 3024))(v3))
  {
    value = xpc_dictionary_get_value(a2, "kCBMsgArgs");
    v17 = 0;
    v16 = 0;
    if (sub_100013CA4(value, 1, v5, v6, v7, v8, v9, v10, "kCBMsgArgBTAddr"))
    {
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
LABEL_4:
        sub_100869564();
      }
    }

    else
    {
      v11 = sub_1000E1FE8(&v16);
      if (v11)
      {
        v15 = *v11;
        uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgAdvSniffInterval");
        v13 = xpc_dictionary_get_uint64(value, "kCBMsgArgAdvSniffMaxAge");
        xpc_dictionary_get_uint64(value, "kCBMsgArgAdvSniffMaxRetry");
        xpc_dictionary_get_uint64(value, "kCBMsgArgAdvSniffPacketMerge");
        xpc_dictionary_get_uint64(value, "kCBMsgArgAdvSniffAudioDownlinkCID");
        xpc_dictionary_get_uint64(value, "kCBMsgArgAdvSniffAudioUplinkCID");
        xpc_dictionary_get_uint64(value, "kCBMsgArgAdvSniffPolicy");
        xpc_dictionary_get_uint64(value, "kCBMsgArgAdvSniffTimestampPeriod");
        xpc_dictionary_get_uint64(value, "kCBMsgArgAdvSniffCToPPacketSize");
        xpc_dictionary_get_uint64(value, "kCBMsgArgAdvSniffPToCPacketSize");
        xpc_dictionary_get_uint64(value, "kCBMsgArgAdvSniffMethod");
        xpc_dictionary_get_uint64(value, "kCBMsgArgAdvSniffAdvanceTime");
        v12 = sub_10000C7D0();
        if ((*(*v12 + 1840))(v12, v15, uint64, v13) && os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_4;
        }
      }

      else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100868CF0();
      }
    }
  }

  else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_100869528();
  }
}

void sub_10071FA3C(uint64_t a1, void *a2)
{
  v3 = sub_10000C7D0();
  if ((*(*v3 + 3024))(v3))
  {
    value = xpc_dictionary_get_value(a2, "kCBMsgArgs");
    v15 = 0;
    v14 = 0;
    if (sub_100013CA4(value, 1, v5, v6, v7, v8, v9, v10, "kCBMsgArgBTAddr"))
    {
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
LABEL_4:
        sub_100869610();
      }
    }

    else
    {
      v11 = sub_1000E1FE8(&v14);
      if (v11)
      {
        v12 = *v11;
        v13 = sub_10000C7D0();
        if ((*(*v13 + 1848))(v13, v12, 1) && os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_4;
        }
      }

      else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100868CF0();
      }
    }
  }

  else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_1008695D4();
  }
}

void sub_10071FBD8(uint64_t a1, void *a2)
{
  v3 = sub_10000C7D0();
  if ((*(*v3 + 3024))(v3))
  {
    value = xpc_dictionary_get_value(a2, "kCBMsgArgs");
    v13 = 0;
    v12 = 0;
    if (sub_100013CA4(value, 1, v5, v6, v7, v8, v9, v10, "kCBMsgArgBTAddr"))
    {
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
LABEL_4:
        sub_1008696BC();
      }
    }

    else if (sub_1000E1FE8(&v12))
    {
      xpc_dictionary_get_uint64(value, "kCBMsgArgAdvSniffTimestampPeriod");
      xpc_dictionary_get_uint64(value, "kCBMsgArgAdvSniffCToPPacketSize");
      xpc_dictionary_get_uint64(value, "kCBMsgArgAdvSniffPToCPacketSize");
      xpc_dictionary_get_uint64(value, "kCBMsgArgAdvSniffMaxAge");
      xpc_dictionary_get_uint64(value, "kCBMsgArgAdvSniffAudioUplinkCID");
      v11 = *sub_10000C7D0();
      if ((*(v11 + 1856))() && os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_4;
      }
    }

    else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100868CF0();
    }
  }

  else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_100869680();
  }
}

void sub_10071FE0C(uint64_t a1, void *a2)
{
  v3 = sub_10000C7D0();
  if ((*(*v3 + 3024))(v3))
  {
    value = xpc_dictionary_get_value(a2, "kCBMsgArgs");
    v13 = 0;
    v12 = 0;
    if (sub_100013CA4(value, 1, v5, v6, v7, v8, v9, v10, "kCBMsgArgBTAddr"))
    {
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
LABEL_4:
        sub_100869768();
      }
    }

    else if (sub_1000E1FE8(&v12))
    {
      xpc_dictionary_get_uint64(value, "kCBMsgArgAdvSniffPToCMaxAge");
      v11 = *sub_10000C7D0();
      if ((*(v11 + 1864))() && os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_4;
      }
    }

    else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100868CF0();
    }
  }

  else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_10086972C();
  }
}

void sub_10071FFD0(uint64_t a1, void *a2)
{
  v3 = sub_10000C7D0();
  if ((*(*v3 + 3024))(v3))
  {
    value = xpc_dictionary_get_value(a2, "kCBMsgArgs");
    v13 = 0;
    v12 = 0;
    if (sub_100013CA4(value, 1, v5, v6, v7, v8, v9, v10, "kCBMsgArgBTAddr"))
    {
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
LABEL_4:
        sub_100869814();
      }
    }

    else if (sub_1000E1FE8(&v12))
    {
      xpc_dictionary_get_uint64(value, "kCBMsgArgAdvSniffLMPFlow");
      v11 = *sub_10000C7D0();
      if ((*(v11 + 1872))() && os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_4;
      }
    }

    else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100868CF0();
    }
  }

  else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_1008697D8();
  }
}

void sub_100720194(uint64_t a1, void *a2)
{
  v3 = sub_10000C7D0();
  if ((*(*v3 + 3024))(v3))
  {
    value = xpc_dictionary_get_value(a2, "kCBMsgArgs");
    v13 = 0;
    v12 = 0;
    if (sub_100013CA4(value, 1, v5, v6, v7, v8, v9, v10, "kCBMsgArgBTAddr"))
    {
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
LABEL_4:
        sub_1008698C0();
      }
    }

    else if (sub_1000E1FE8(&v12))
    {
      xpc_dictionary_get_uint64(value, "kCBMsgArgAdvSniffEmptyPacketReport");
      v11 = *sub_10000C7D0();
      if ((*(v11 + 1880))() && os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_4;
      }
    }

    else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100868CF0();
    }
  }

  else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_100869884();
  }
}

void sub_100720358(uint64_t a1, void *a2)
{
  v3 = sub_10000C7D0();
  if ((*(*v3 + 3024))(v3))
  {
    value = xpc_dictionary_get_value(a2, "kCBMsgArgs");
    xpc_dictionary_get_uint64(value, "kCBMsgArgAdvSniffControlAoS");
    v5 = *sub_10000C7D0();
    if ((*(v5 + 1888))())
    {
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_10086996C();
      }
    }
  }

  else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_100869930();
  }
}

void sub_10072046C(int a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(value, "kCBMsgArgBTSCPageScanEnable");
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(v4, "kCBMsgArgBTSCPageScanInterval");
  v5 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(v5, "kCBMsgArgBTSCPageScanWindow");
  v6 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(v6, "kCBMsgArgBTSCPageScanInterlaced");
  v7 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(v7, "kCBMsgArgBTSCPageScanElnaMode");
  v8 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(v8, "kCBMsgArgBTSCPageScanUseAuxScanParams");
  v9 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(v9, "kCBMsgArgBTSCPageScanEnableAuxScan");
  v10 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(v10, "kCBMsgArgBTSCPageScanPreemptAuxScan");
  v11 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(v11, "kCBMsgArgBTSCPageScanAuxScanDurationInMs");
  v12 = sub_10000C7D0();
  if ((*(*v12 + 4008))(v12))
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_1008699DC();
    }
  }
}

void sub_100720664(int a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgQoSsessionID");
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v78 = xpc_dictionary_get_uint64(v4, "kCBMsgArgQoSalarmL1Priority");
  v5 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v77 = xpc_dictionary_get_uint64(v5, "kCBMsgArgQoSalarmL2Priority");
  v6 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v76 = xpc_dictionary_get_uint64(v6, "kCBMsgArgQoSalarmL3Priority");
  v7 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v75 = xpc_dictionary_get_uint64(v7, "kCBMsgArgQoSalarmL4Priority");
  v8 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v74 = xpc_dictionary_get_uint64(v8, "kCBMsgArgQoSuseRxSkippedPercentage") != 0;
  v9 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v73 = xpc_dictionary_get_uint64(v9, "kCBMsgArgQoSuseRxPreemptedCount") != 0;
  v10 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v72 = xpc_dictionary_get_uint64(v10, "kCBMsgArgQoSuseRxCslPreemptedCount ") != 0;
  v11 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v71 = xpc_dictionary_get_uint64(v11, "kCBMsgArgQoSraisePriorityIfRxHeaderIsReceived") != 0;
  v12 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v70 = xpc_dictionary_get_uint64(v12, "kCBMsgArgQoSraisePriorityIfRxAckHeaderReceived") != 0;
  v13 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v69 = xpc_dictionary_get_uint64(v13, "kCBMsgArgQoSpriorityToRaiseForScheduledReception");
  v14 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v68 = xpc_dictionary_get_uint64(v14, "kCBMsgArgQoSuseRxCslCountInHighPriority") != 0;
  v15 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v67 = xpc_dictionary_get_uint64(v15, "kCBMsgArgQoSuseTxCslCountInHighPriority") != 0;
  v16 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v66 = xpc_dictionary_get_uint64(v16, "kCBMsgArgQoSuseTxPreemptedCount") != 0;
  v17 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v65 = xpc_dictionary_get_uint64(v17, "kCBMsgArgQoSuseTxCslPreemptedCount") != 0;
  v18 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v64 = xpc_dictionary_get_uint64(v18, "kCBMsgArgQoSuseTxDelay") != 0;
  v19 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v63 = xpc_dictionary_get_uint64(v19, "kCBMsgArgQoSrxSkippedPercentageL0");
  v20 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v62 = xpc_dictionary_get_uint64(v20, "kCBMsgArgQoSrxSkippedPercentageL1");
  v21 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v61 = xpc_dictionary_get_uint64(v21, "kCBMsgArgQoSrxSkippedPercentageL2");
  v22 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v60 = xpc_dictionary_get_uint64(v22, "kCBMsgArgQoSrxSkippedPercentageL3");
  v23 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v59 = xpc_dictionary_get_uint64(v23, "kCBMsgArgQoSrxPreemptedCountL0");
  v24 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v58 = xpc_dictionary_get_uint64(v24, "kCBMsgArgQoSrxPreemptedCountL1");
  v25 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v57 = xpc_dictionary_get_uint64(v25, "kCBMsgArgQoSrxPreemptedCountL2");
  v26 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v56 = xpc_dictionary_get_uint64(v26, "kCBMsgArgQoSrxPreemptedCountL3");
  v27 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v55 = xpc_dictionary_get_uint64(v27, "kCBMsgArgQoSrxCslCountInHighPriority");
  v28 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v54 = xpc_dictionary_get_uint64(v28, "kCBMsgArgQoSrxCslPreemptedCountL0");
  v29 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v53 = xpc_dictionary_get_uint64(v29, "kCBMsgArgQoSrxCslPreemptedCountL1");
  v30 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v52 = xpc_dictionary_get_uint64(v30, "kCBMsgArgQoSrxCslPreemptedCountL2");
  v31 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v51 = xpc_dictionary_get_uint64(v31, "kCBMsgArgQoSrxCslPreemptedCountL3");
  v32 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(v32, "kCBMsgArgQoStxDelayL0");
  v33 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(v33, "kCBMsgArgQoStxDelayL1");
  v34 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(v34, "kCBMsgArgQoStxDelayL2");
  v35 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(v35, "kCBMsgArgQoStxDelayL3");
  v36 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(v36, "kCBMsgArgQoStxPreemptedCountL0");
  v37 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(v37, "kCBMsgArgQoStxPreemptedCountL1");
  v38 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(v38, "kCBMsgArgQoStxPreemptedCountL2");
  v39 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(v39, "kCBMsgArgQoStxPreemptedCountL3");
  v40 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(v40, "kCBMsgArgQoStxCslCountInHighPriority");
  v41 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(v41, "kCBMsgArgQoStxCslPreemptedCountL0");
  v42 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(v42, "kCBMsgArgQoStxCslPreemptedCountL1");
  v43 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(v43, "kCBMsgArgQoStxCslPreemptedCountL2");
  v44 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(v44, "kCBMsgArgQoStxCslPreemptedCountL3");
  v45 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(v45, "kCBMsgArgQoStxDurationInHighPriority");
  v46 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(v46, "kCBMsgArgQoSCslPriority");
  v47 = sub_10000C7D0();
  v50 = v63;
  v49 = v64;
  HIBYTE(v48) = v65;
  BYTE6(v48) = v66;
  BYTE5(v48) = v67;
  BYTE4(v48) = v68;
  BYTE3(v48) = v69;
  BYTE2(v48) = v70;
  BYTE1(v48) = v71;
  LOBYTE(v48) = v72;
  if ((*(*v47 + 4024))(v47, uint64, v78, v77, v76, v75, v74, v73, v48, v49, __PAIR64__(v61, v62), __PAIR64__(v59, v60), __PAIR64__(v57, v58), __PAIR64__(v55, v56), __PAIR64__(v53, v54), __PAIR64__(v51, v52)))
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100869A4C();
    }
  }
}

void sub_100720D5C(int a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(value, "kCBMsgArgQoSsessionID");
  v3 = *sub_10000C7D0();
  if ((*(v3 + 4032))())
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100869A4C();
    }
  }
}

void sub_100720E0C(int a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(value, "kCBMsgArgLeScanStatsReset");
  v3 = *sub_10000C7D0();
  if ((*(v3 + 712))())
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100869ABC();
    }
  }
}

void sub_100720EC0(uint64_t a1, void *a2)
{
  memset(v14, 0, sizeof(v14));
  v4 = sub_10000C7D0();
  v10 = (*(*v4 + 3504))(v4, 1, v14, v5, v6, v7, v8, v9);
  reply = xpc_dictionary_create_reply(a2);
  if (reply)
  {
    v12 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgStatus", v10);
    if (v10)
    {
      v13 = 0;
    }

    else
    {
      v13 = 80;
      xpc_dictionary_set_data(v12, "kCBMsgArgSPMICoexBufferAddr", v14, 0x50uLL);
    }

    xpc_dictionary_set_uint64(v12, "kCBMsgArgSPMICoexBufferSize", v13);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v12);
    xpc_release(v12);
  }
}

void sub_100720FC0(int a1, xpc_object_t xdict)
{
  memset(v9, 0, sizeof(v9));
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgSPMIPeripheralID");
  v4 = sub_10000C7D0();
  if ((*(*v4 + 3512))(v4, uint64, 1, v9, v5, v6, v7, v8))
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100869B2C();
    }
  }
}

void sub_100721090(int a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(value, "kCBMsgArgSPMIPeripheralID");
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(v4, "kCBMsgArgSPMICoexMsgPriority");
  v5 = *sub_10000C7D0();
  if ((*(v5 + 3520))())
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100869B9C();
    }
  }
}

void sub_1007211CC(int a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(value, "kCBMsgArgSPMICoexTxType");
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(v4, "kCBMsgArgSPMICoexTxID");
  v5 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(v5, "kCBMsgArgSPMICoexTxControl");
  v6 = *sub_10000C7D0();
  if ((*(v6 + 3528))())
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100869C0C();
    }
  }
}

void sub_1007212D0(int a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(value, "kCBMsgArgSPMICoexType53EnabledBitmask");
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(v4, "kCBMsgArgSPMICoexType53Interval");
  v5 = *sub_10000C7D0();
  if ((*(v5 + 3536))())
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100869C7C();
    }
  }
}

void sub_1007213B4(int a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgSPMICoexType60ID2G");
  v4 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v13 = xpc_dictionary_get_uint64(v4, "kCBMsgArgSPMICoexType60IDHRB1");
  v5 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v14 = xpc_dictionary_get_uint64(v5, "kCBMsgArgSPMICoexType60IDHRB3");
  v6 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v15 = xpc_dictionary_get_uint64(v6, "kCBMsgArgSPMICoexType60IDHRB4");
  v7 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v16 = xpc_dictionary_get_uint64(v7, "kCBMsgArgSPMICoexType60IDHRB5A");
  v8 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v17 = xpc_dictionary_get_uint64(v8, "kCBMsgArgSPMICoexType60IDHRB5B");
  v9 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v18 = xpc_dictionary_get_uint64(v9, "kCBMsgArgSPMICoexType60IDHRB5C");
  v10 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v19 = xpc_dictionary_get_uint64(v10, "kCBMsgArgSPMICoexType60IDHRB5D");
  v11 = *sub_10000C7D0();
  if ((*(v11 + 3544))())
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100869CEC();
    }
  }
}

void sub_10072153C(uint64_t a1, void *a2)
{
  memset(v19, 0, 251);
  v4 = sub_10000E92C();
  if ((*(*v4 + 8))(v4))
  {
    if ((*(sub_10000C7D0() + 800) - 22) > 0x7B9)
    {
      v8 = 0;
      LODWORD(uint64) = 0;
      v14 = 2;
    }

    else
    {
      value = xpc_dictionary_get_value(a2, "kCBMsgArgs");
      uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgReadControllerRamAddr");
      v7 = xpc_dictionary_get_value(a2, "kCBMsgArgs");
      v8 = xpc_dictionary_get_uint64(v7, "kCBMsgArgReadControllerRamSize");
      v9 = sub_10000C7D0();
      v14 = (*(*v9 + 4064))(v9, uint64, v8, v19, v10, v11, v12, v13);
      if (v14 && os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_100869D5C();
      }
    }

    v16 = uint64;
    v15 = v8;
  }

  else
  {
    v15 = 0;
    v16 = 0;
    v14 = 1;
  }

  reply = xpc_dictionary_create_reply(a2);
  if (reply)
  {
    v18 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgStatus", v14);
    if (!v14)
    {
      xpc_dictionary_set_uint64(v18, "kCBMsgArgReadControllerRamAddr", v16);
      xpc_dictionary_set_uint64(v18, "kCBMsgArgReadControllerRamSize", v15);
      xpc_dictionary_set_data(v18, "kCBMsgArgReadControllerRamData", v19, v15);
    }

    xpc_connection_send_message(*(*(a1 + 72) + 16), v18);
    xpc_release(v18);
  }
}

void sub_100721770(int a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgMinEncryptionKeySize");
  sub_1000031B0();
  v10 = sub_100018960(133, 0, v4, v5, v6, v7, v8, v9, uint64);
  sub_10000C198();
  if (v10)
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100869DCC();
    }
  }
}

void sub_100721804(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgCalSetTxPowerMode");
  v6 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v7 = xpc_dictionary_get_uint64(v6, "kCBMsgArgTxFEConfigAntenna");
  v8 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v9 = xpc_dictionary_get_uint64(v8, "kCBMsgArgTxFEConfigCountryCode");
  v10 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v11 = xpc_dictionary_get_uint64(v10, "kCBMsgArgTxFEConfigPowerCap");
  if (uint64 == 80)
  {
    v16 = uint64;
    v17 = 0;
    v18 = v7;
    v19 = v9;
    v20 = v11;
    v12 = *sub_10000C7D0();
    LODWORD(v13) = (*(v12 + 496))();
    if (v13 && os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100869EAC();
    }

    v13 = v13;
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_100869E3C();
    }

    v13 = 1;
  }

  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v15 = reply;
    xpc_dictionary_set_uint64(reply, "kCBMsgArgStatus", v13);
    xpc_connection_send_message(*(*(a1 + 72) + 16), v15);
    xpc_release(v15);
  }
}

void sub_1007219BC(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgBTAddr");
  v6 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v7 = xpc_dictionary_get_uint64(v6, "kCBMsgArgAction");
  if (qword_100B508F0 != -1)
  {
    sub_100869F1C();
  }

  v8 = sub_1000504C8(off_100B508E8, uint64, 1);
  if (v8)
  {
    v9 = v8;
    if (v7 == 3)
    {
      *v35 = 393218;
      v10 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
      LOBYTE(v36) = xpc_dictionary_get_uint64(v10, "kCBMsgArgBT2GEnable") & 7;
      v11 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
      BYTE1(v36) = xpc_dictionary_get_int64(v11, "kCBMsgArgBT2GSigRssiThreshold");
      v12 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
      BYTE2(v36) = xpc_dictionary_get_int64(v12, "kCBMsgArgBT2GiPABFRssiThreshold");
      v13 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
      HIBYTE(v36) = xpc_dictionary_get_int64(v13, "kCBMsgArgBT2GePABFRssiThreshold");
      v14 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
      v37[0] = xpc_dictionary_get_int64(v14, "kCBMsgArgBT2GBFGainThreshold");
      *&v37[1] = 1537;
      v37[3] = 0;
      v15 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
      v37[4] = xpc_dictionary_get_uint64(v15, "kCBMsgArgHRBEnable") & 7;
      v16 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
      v37[5] = xpc_dictionary_get_int64(v16, "kCBMsgArgHRBSigRssiThreshold");
      v17 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
      LOBYTE(v38) = xpc_dictionary_get_int64(v17, "kCBMsgArgHRBiPABFRssiThreshold");
      v18 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
      HIBYTE(v38) = xpc_dictionary_get_int64(v18, "kCBMsgArgHRBePABFRssiThreshold");
      v19 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
      LOBYTE(v39) = xpc_dictionary_get_int64(v19, "kCBMsgArgHRBBFGainThreshold");
      v20 = qword_100BCE950;
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        v45 = 3;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Action:%d Multiband Setting\n", buf, 8u);
      }

      v21 = sub_10000C7D0();
      v22 = (*(*v21 + 128))(v21, v9, 17, v35);
    }

    else
    {
      v34 = a1;
      v23 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
      v24 = xpc_dictionary_get_uint64(v23, "kCBMsgArgPolicy");
      v25 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
      int64 = xpc_dictionary_get_int64(v25, "kCBMsgArgiPABFThreshold");
      v27 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
      v28 = xpc_dictionary_get_int64(v27, "kCBMsgArgePABFThreshold");
      v29 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
      v30 = xpc_dictionary_get_uint64(v29, "kCBMsgArgeBFGainThreshold");
      v31 = qword_100BCE950;
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_INFO))
      {
        *v35 = 67110144;
        v36 = v7;
        *v37 = 1024;
        *&v37[2] = v24;
        v38 = 1024;
        v39 = int64;
        v40 = 1024;
        v41 = v28;
        v42 = 1024;
        v43 = v30;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "Action:%d Policy:%d iPABFThreshold:%d ePABFThreshold:%d BFGainThreshold:%d\n", v35, 0x20u);
      }

      v32 = sub_10000C7D0();
      v22 = (*(*v32 + 112))(v32, v7, v9, v24, int64, v30, v28);
      a1 = v34;
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10086939C();
    }

    v22 = 1;
  }

  reply = xpc_dictionary_create_reply(xdict);
  xpc_dictionary_set_uint64(reply, "kCBMsgArgStatus", v22);
  xpc_connection_send_message(*(*(a1 + 72) + 16), reply);
  xpc_release(reply);
}

void sub_100721E2C(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgBTAddr");
  v6 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v7 = xpc_dictionary_get_uint64(v6, "kCBMsgArgAction");
  v8 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v9 = xpc_dictionary_get_uint64(v8, "kCBMsgArgPolicy");
  if (qword_100B508F0 != -1)
  {
    sub_100869F1C();
  }

  v10 = sub_1000504C8(off_100B508E8, uint64, 1);
  if (v10)
  {
    v11 = v10;
    v12 = qword_100BCE950;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_INFO))
    {
      v16[0] = 67109376;
      v16[1] = v7;
      v17 = 1024;
      v18 = v9;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "MRC logging: Action:%d Policy:%d \n", v16, 0xEu);
    }

    v13 = sub_10000C7D0();
    v14 = (*(*v13 + 136))(v13, v7, v11, v9 != 0);
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10086939C();
    }

    v14 = 1;
  }

  reply = xpc_dictionary_create_reply(xdict);
  xpc_dictionary_set_uint64(reply, "kCBMsgArgStatus", v14);
  xpc_connection_send_message(*(*(a1 + 72) + 16), reply);
  xpc_release(reply);
}

void sub_100722038(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgConnHandle");
  v6 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v7 = xpc_dictionary_get_uint64(v6, "kCBMsgArgBTAntennaAction");
  v8 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v9 = xpc_dictionary_get_uint64(v8, "kCBMsgArgBTAntennaCfg");
  v10 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v11 = xpc_dictionary_get_uint64(v10, "kCBMsgArgBTAntennaCfgParam1");
  v12 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v13 = xpc_dictionary_get_uint64(v12, "kCBMsgArgBTAntennaCfgParam2");
  v14 = *sub_10000C7D0();
  v15 = (*(v14 + 896))();
  if (v15)
  {
    v16 = qword_100BCE950;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      v18[0] = 67110144;
      v18[1] = uint64;
      v19 = 1024;
      v20 = v7;
      v21 = 1024;
      v22 = v9;
      v23 = 1024;
      v24 = v11;
      v25 = 1024;
      v26 = v13;
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Failed to set BT antenna config; Handle: %d, Action: %d, Config: %d, Param1: %d, Param2: %d", v18, 0x20u);
    }
  }

  reply = xpc_dictionary_create_reply(xdict);
  xpc_dictionary_set_uint64(reply, "kCBMsgArgStatus", v15);
  xpc_connection_send_message(*(*(a1 + 72) + 16), reply);
  xpc_release(reply);
}

void sub_100722264(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  string = xpc_dictionary_get_string(value, "kCBMsgArgLoadMSFFilePath");
  v19 = 0;
  v18 = 0;
  if ((*(sub_10000C7D0() + 800) - 5000) <= 0x3E7)
  {
    v6 = sub_10072443C(string);
    goto LABEL_18;
  }

  v7 = sub_100017E6C();
  sub_100007E30(__p, string);
  v8 = (*(*v7 + 440))(v7, __p, &v19, &v18);
  v6 = v8;
  if (v17 < 0)
  {
    operator delete(__p[0]);
    if (!v6)
    {
      goto LABEL_7;
    }
  }

  else if (!v8)
  {
LABEL_7:
    v9 = v19;
    v10 = v18;
    v11 = v18 / 230;
    do
    {
      if (v10 < 1)
      {
        v6 = 0;
        goto LABEL_16;
      }

      if (v10 >= 0xE6)
      {
        v12 = 230;
      }

      else
      {
        v12 = v10;
      }

      v13 = sub_10000C7D0();
      v6 = (*(*v13 + 4280))(v13, 3, v11, v9, v12, 1);
      v9 += v12;
      --v11;
      v10 -= v12;
    }

    while (!v6);
    v14 = qword_100BCE950;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      *buf = 67110144;
      v21 = 3;
      v22 = 1024;
      v23 = v10;
      v24 = 2048;
      v25 = v9;
      v26 = 1024;
      v27 = v12;
      v28 = 1024;
      v29 = v6;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Error Downloading MSF File: transferType = %d, chunkLeft = %d,  payID = %p, dataLen = %d result = %d\n", buf, 0x24u);
    }
  }

LABEL_16:
  if (v19)
  {
    free(v19);
  }

LABEL_18:
  reply = xpc_dictionary_create_reply(xdict);
  xpc_dictionary_set_uint64(reply, "kCBMsgArgStatus", v6);
  xpc_connection_send_message(*(*(a1 + 72) + 16), reply);
  xpc_release(reply);
}

void sub_1007224E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100722508(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  string = xpc_dictionary_get_string(value, "kCBMsgArgLoadPwrRegulatoryFilePath");
  v11 = 0;
  v12 = 0;
  v6 = sub_10000C7D0();
  if ((*(v6 + 800) - 5000) > 0x3E7)
  {
    if (sub_1007240F0(v6, string, &v12, &v11))
    {
      v7 = 1;
    }

    else
    {
      v9 = v11;
      if (v11 == 250 || v11 == 210)
      {
        v10 = sub_10000C7D0();
        v7 = (*(*v10 + 4288))(v10, v12, v9, 1);
        if (v7 && os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
        {
          sub_100869F30();
        }
      }

      else
      {
        if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
        {
          sub_100869F6C();
        }

        v7 = 0;
      }
    }

    if (v12)
    {
      free(v12);
    }
  }

  else
  {
    v7 = sub_10072443C(string);
  }

  reply = xpc_dictionary_create_reply(xdict);
  xpc_dictionary_set_uint64(reply, "kCBMsgArgStatus", v7);
  xpc_connection_send_message(*(*(a1 + 72) + 16), reply);
  xpc_release(reply);
}

void sub_100722694(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  string = xpc_dictionary_get_string(value, "kCBMsgArgLoadPwrRegulatoryFilePathA3");
  v18 = 0;
  v19 = 0;
  v6 = sub_10000C7D0();
  if ((*(v6 + 800) - 5000) > 0x3E7)
  {
    v8 = sub_1007240F0(v6, string, &v19, &v18);
    v9 = v19;
    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v11 = v18;
      if (v18 < 1)
      {
        v7 = 0;
      }

      else
      {
        v12 = v18 / 0xCFuLL;
        v13 = v19;
        v14 = v19;
        while (1)
        {
          v15 = sub_10000C7D0();
          v7 = (*(*v15 + 4296))(v15, v12, v14, v11, 1);
          if (v7)
          {
            break;
          }

          v16 = v12-- < 1;
          if (!v16)
          {
            v14 += 207;
            v13 += 207;
            v16 = v11 <= 207;
            v11 -= 207;
            if (!v16)
            {
              continue;
            }
          }

          goto LABEL_5;
        }

        v17 = qword_100BCE950;
        if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109632;
          v21 = v12;
          v22 = 2048;
          v23 = v13;
          v24 = 1024;
          v25 = v11;
          _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Error Downloading Power Regulatory A3 File: chunkLeft = %d,  payID = %p, dataLen = %d\n", buf, 0x18u);
          v17 = qword_100BCE950;
        }

        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          sub_100869FF4();
        }
      }
    }

LABEL_5:
    if (v9)
    {
      free(v9);
    }
  }

  else
  {
    v7 = sub_10072443C(string);
  }

  reply = xpc_dictionary_create_reply(xdict);
  xpc_dictionary_set_uint64(reply, "kCBMsgArgStatus", v7);
  xpc_connection_send_message(*(*(a1 + 72) + 16), reply);
  xpc_release(reply);
}

void sub_1007228F0(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgBTAddr");
  v6 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v7 = xpc_dictionary_get_uint64(v6, "kCBMsgArgTriggerULLM");
  v8 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
  {
    v13[0] = 67109120;
    v13[1] = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "BTTest Command Low Latency Game received: %d\n", v13, 8u);
  }

  if (qword_100B508F0 != -1)
  {
    sub_10086934C();
  }

  v9 = sub_1000504C8(off_100B508E8, uint64, 1);
  if (!v9)
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10086939C();
    }

    goto LABEL_15;
  }

  v10 = v9;
  if (!sub_1000C0348(v9))
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10086A030();
    }

    goto LABEL_15;
  }

  if (!_os_feature_enabled_impl())
  {
LABEL_15:
    v11 = 1;
    goto LABEL_16;
  }

  if (qword_100B50940 != -1)
  {
    sub_10086A06C();
  }

  sub_10063A2C0(off_100B50938, v7 != 0, v10);
  v11 = 0;
LABEL_16:
  reply = xpc_dictionary_create_reply(xdict);
  xpc_dictionary_set_uint64(reply, "kCBMsgArgStatus", v11);
  xpc_connection_send_message(*(*(a1 + 72) + 16), reply);
  xpc_release(reply);
}

void sub_100722AF4(uint64_t a1, xpc_object_t xdict)
{
  v17 = 0;
  v16 = 0;
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  if (sub_100013CA4(value, 1, v5, v6, v7, v8, v9, v10, "kCBMsgArgBTAddr"))
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10086A094();
    }

    v11 = 1;
  }

  else
  {
    v12 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
    uint64 = xpc_dictionary_get_uint64(v12, "kCBMsgArgBudswapCmd");
    if (uint64 == 2)
    {
      sub_1000031B0();
      v14 = sub_1001BA5F0(&v16);
    }

    else
    {
      if (uint64 != 1)
      {
        v11 = 0;
        goto LABEL_11;
      }

      sub_1000031B0();
      v14 = sub_1001B9F2C(&v16);
    }

    LODWORD(v11) = v14;
    sub_10000C198();
    v11 = v11;
  }

LABEL_11:
  reply = xpc_dictionary_create_reply(xdict);
  xpc_dictionary_set_uint64(reply, "kCBMsgArgStatus", v11);
  xpc_connection_send_message(*(*(a1 + 72) + 16), reply);
  xpc_release(reply);
}

void sub_100722C30(int a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgSrsFwLogConfigLogLevel");
  v5 = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v6 = xpc_dictionary_get_uint64(v5, "kCBMsgArgSrsFwLogConfigLogPath");
  if (uint64 && (v7 = sub_10000C7D0(), (*(*v7 + 4208))(v7)))
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10086A0D0();
    }
  }

  else
  {
    v8 = sub_10000C7D0();
    if ((*(*v8 + 4200))(v8, uint64, v6) && os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10086A14C();
    }
  }
}

void sub_100722D70(int a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_BOOL(value, "kCBMsgArgLMPLogConfigEnable");
  v3 = *sub_10000C7D0();
  if ((*(v3 + 1304))())
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10086A1BC();
    }
  }
}

void sub_100722E20(int a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(value, "kCBMsgArgInquiryMode");
  xpc_dictionary_get_uint64(value, "kCBMsgArgPageMode");
  v3 = *sub_10000C7D0();
  if ((*(v3 + 4216))())
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10086A22C();
    }
  }
}

void sub_100722EF0(uint64_t a1, xpc_object_t xdict)
{
  length = 0;
  LOWORD(v21) = 0;
  memset(bytes, 0, sizeof(bytes));
  v15 = 0;
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  v5 = sub_10000E92C();
  if ((*(*v5 + 16))(v5))
  {
    LOWORD(v21) = 0;
    v6 = sub_10000E92C();
    sub_100007E30(buf, "Device");
    sub_100007E30(__p, "RAWHCICMD");
    (*(*v6 + 72))(v6, buf, __p, &v15);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }

    if (buf[23] < 0)
    {
      operator delete(*buf);
    }

    if (v15)
    {
      uint64 = xpc_dictionary_get_uint64(value, "kCBMsgArgOpcode");
      data = xpc_dictionary_get_data(value, "kCBMsgArgData", &length);
      v9 = qword_100BCE950;
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "handleHciCmdMsg";
        *&buf[12] = 1024;
        *&buf[14] = uint64;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Warning: %s opcode=%d", buf, 0x12u);
      }

      v10 = sub_10000C7D0();
      v11 = (*(*v10 + 4232))(v10, uint64, data, length, sub_1007245C4, bytes);
      if (!v11)
      {
        v18 = 0u;
        v19 = 0u;
        memset(buf, 0, sizeof(buf));
        sub_100044BBC(buf);
        __p[0] = 0;
        __p[1] = 0;
        sub_100007F88(__p, buf);
        if (sub_10002220C(&stru_100BCEB40, __p, 0x7D0uLL))
        {
          v11 = 0;
        }

        else
        {
          v11 = 316;
        }

        sub_1000088CC(__p);
        sub_10007A068(buf);
      }
    }

    else
    {
      v11 = 12;
    }
  }

  else
  {
    v11 = 11;
  }

  reply = xpc_dictionary_create_reply(xdict);
  xpc_dictionary_set_uint64(reply, "kCBMsgArgStatus", v11);
  xpc_dictionary_set_data(reply, "kCBMsgArgData", bytes, v21);
  xpc_connection_send_message(*(*(a1 + 72) + 16), reply);
  xpc_release(reply);
}

void sub_1007231F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  sub_1000088CC(&__p);
  sub_10007A068(&a18);
  _Unwind_Resume(a1);
}

void sub_10072324C(int a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(value, "kCBMsgArgLEAdvTxPowerIncreaseAction");
  xpc_dictionary_get_uint64(value, "kCBMsgArgLEAdvTxPowerIncreaseHandle");
  xpc_dictionary_get_int64(value, "kCBMsgArgLEAdvTxPowerIncreaseTxDesiredPower");
  xpc_dictionary_get_uint64(value, "kCBMsgArgLEAdvTxPowerIncreaseePAEnable");
  xpc_dictionary_get_uint64(value, "kCBMsgArgLEAdvTxPowerIncreaseSARConfiguration");
  v3 = *sub_10000C7D0();
  if ((*(v3 + 2232))())
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_1008694B8();
    }
  }
}

void sub_100723370(int a1, xpc_object_t xdict)
{
  v14 = 0;
  v13 = 0;
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  if (sub_100013CA4(value, 1, v3, v4, v5, v6, v7, v8, "kCBMsgArgBTAddr"))
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_1008671BC();
    }
  }

  else
  {
    v9 = sub_10000C7D0();
    v10 = (*(*v9 + 4304))(v9, &v13);
    v11 = qword_100BCE950;
    if (v10)
    {
      if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
      {
        sub_10086A2A8();
      }
    }

    else if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "BD Address was written successfully", buf, 2u);
    }
  }
}

void sub_1007234A0(int a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(value, "kCBMsgArgCrcErredPduReportEnable");
  v3 = *sub_10000C7D0();
  if ((*(v3 + 2056))())
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10086A318();
    }
  }
}

void sub_100723554(int a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "kCBMsgArgs");
  xpc_dictionary_get_uint64(value, "kCBMsgArgAppleExtendedAdvReportEnable");
  v3 = *sub_10000C7D0();
  if ((*(v3 + 2048))())
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10086A388();
    }
  }
}

void sub_10072360C(unsigned int a1, unsigned __int16 *a2, int a3)
{
  if (a2)
  {
    v5 = *a2;
  }

  else
  {
    v5 = 0;
  }

  v6 = qword_100BCEB08;
  if (!qword_100BCEB08)
  {
    goto LABEL_11;
  }

  v7 = &qword_100BCEB08;
  do
  {
    if (*(v6 + 32) >= 15)
    {
      v7 = v6;
    }

    v6 = *(v6 + 8 * (*(v6 + 32) < 15));
  }

  while (v6);
  if (v7 == &qword_100BCEB08 || *(v7 + 8) >= 16)
  {
LABEL_11:
    v7 = &qword_100BCEB08;
  }

  remote_connection = xpc_dictionary_get_remote_connection(v7[5]);
  if (remote_connection)
  {
    v9 = remote_connection;
    reply = xpc_dictionary_create_reply(v7[5]);
    if (reply)
    {
      v11 = reply;
      xpc_dictionary_set_int64(reply, "kCBMsgArgStatus", a1);
      xpc_dictionary_set_int64(v11, "kCBMsgArgConnHandle", v5);
      xpc_dictionary_set_int64(v11, "kCBMsgArgTransmitPowerLevel", a3);
      xpc_connection_send_message(v9, v11);
      xpc_release(v11);
    }

    xpc_release(v7[5]);
  }

  sub_10002717C(&qword_100BCEB00, v7);

  operator delete(v7);
}

void sub_100723734(unsigned int a1)
{
  v2 = qword_100BCEB08;
  if (!qword_100BCEB08)
  {
    goto LABEL_8;
  }

  v3 = &qword_100BCEB08;
  do
  {
    if (*(v2 + 32) >= 23)
    {
      v3 = v2;
    }

    v2 = *(v2 + 8 * (*(v2 + 32) < 23));
  }

  while (v2);
  if (v3 == &qword_100BCEB08 || *(v3 + 8) >= 24)
  {
LABEL_8:
    v3 = &qword_100BCEB08;
  }

  remote_connection = xpc_dictionary_get_remote_connection(v3[5]);
  if (remote_connection)
  {
    v5 = remote_connection;
    reply = xpc_dictionary_create_reply(v3[5]);
    if (reply)
    {
      v7 = reply;
      xpc_dictionary_set_int64(reply, "kCBMsgArgStatus", a1);
      xpc_connection_send_message(v5, v7);
      xpc_release(v7);
    }
  }

  xpc_release(v3[5]);
  sub_10002717C(&qword_100BCEB00, v3);

  operator delete(v3);
}

void sub_100723818(unsigned int a1)
{
  v2 = qword_100BCEB08;
  if (!qword_100BCEB08)
  {
    goto LABEL_8;
  }

  v3 = &qword_100BCEB08;
  do
  {
    if (*(v2 + 32) >= 24)
    {
      v3 = v2;
    }

    v2 = *(v2 + 8 * (*(v2 + 32) < 24));
  }

  while (v2);
  if (v3 == &qword_100BCEB08 || *(v3 + 8) >= 25)
  {
LABEL_8:
    v3 = &qword_100BCEB08;
  }

  remote_connection = xpc_dictionary_get_remote_connection(v3[5]);
  if (remote_connection)
  {
    v5 = remote_connection;
    reply = xpc_dictionary_create_reply(v3[5]);
    if (reply)
    {
      v7 = reply;
      xpc_dictionary_set_int64(reply, "kCBMsgArgStatus", a1);
      xpc_connection_send_message(v5, v7);
      xpc_release(v7);
    }
  }

  xpc_release(v3[5]);
  sub_10002717C(&qword_100BCEB00, v3);

  operator delete(v3);
}

void sub_1007238FC(unsigned int a1, unsigned int a2)
{
  v4 = qword_100BCEB08;
  if (!qword_100BCEB08)
  {
    goto LABEL_8;
  }

  v5 = &qword_100BCEB08;
  do
  {
    if (*(v4 + 32) >= 25)
    {
      v5 = v4;
    }

    v4 = *(v4 + 8 * (*(v4 + 32) < 25));
  }

  while (v4);
  if (v5 == &qword_100BCEB08 || *(v5 + 8) >= 26)
  {
LABEL_8:
    v5 = &qword_100BCEB08;
  }

  remote_connection = xpc_dictionary_get_remote_connection(v5[5]);
  if (remote_connection)
  {
    v7 = remote_connection;
    reply = xpc_dictionary_create_reply(v5[5]);
    if (reply)
    {
      v9 = reply;
      xpc_dictionary_set_int64(reply, "kCBMsgArgStatus", a1);
      xpc_dictionary_set_int64(v9, "kCBMsgArgNumberOfPackets", a2);
      xpc_connection_send_message(v7, v9);
      xpc_release(v9);
    }
  }

  xpc_release(v5[5]);
  sub_10002717C(&qword_100BCEB00, v5);

  operator delete(v5);
}

void sub_100723A00(unsigned int a1)
{
  v2 = qword_100BCEB08;
  if (!qword_100BCEB08)
  {
    goto LABEL_8;
  }

  v3 = &qword_100BCEB08;
  do
  {
    if (*(v2 + 32) >= 26)
    {
      v3 = v2;
    }

    v2 = *(v2 + 8 * (*(v2 + 32) < 26));
  }

  while (v2);
  if (v3 == &qword_100BCEB08 || *(v3 + 8) >= 27)
  {
LABEL_8:
    v3 = &qword_100BCEB08;
  }

  remote_connection = xpc_dictionary_get_remote_connection(v3[5]);
  if (remote_connection)
  {
    v5 = remote_connection;
    reply = xpc_dictionary_create_reply(v3[5]);
    if (reply)
    {
      v7 = reply;
      xpc_dictionary_set_int64(reply, "kCBMsgArgStatus", a1);
      xpc_connection_send_message(v5, v7);
      xpc_release(v7);
    }
  }

  xpc_release(v3[5]);
  sub_10002717C(&qword_100BCEB00, v3);

  operator delete(v3);
}

void sub_100723AE4(unsigned int a1)
{
  v2 = qword_100BCEB08;
  if (!qword_100BCEB08)
  {
    goto LABEL_8;
  }

  v3 = &qword_100BCEB08;
  do
  {
    if (*(v2 + 32) >= 27)
    {
      v3 = v2;
    }

    v2 = *(v2 + 8 * (*(v2 + 32) < 27));
  }

  while (v2);
  if (v3 == &qword_100BCEB08 || *(v3 + 8) >= 28)
  {
LABEL_8:
    v3 = &qword_100BCEB08;
  }

  remote_connection = xpc_dictionary_get_remote_connection(v3[5]);
  if (remote_connection)
  {
    v5 = remote_connection;
    reply = xpc_dictionary_create_reply(v3[5]);
    if (reply)
    {
      v7 = reply;
      xpc_dictionary_set_int64(reply, "kCBMsgArgStatus", a1);
      xpc_connection_send_message(v5, v7);
      xpc_release(v7);
    }
  }

  xpc_release(v3[5]);
  sub_10002717C(&qword_100BCEB00, v3);

  operator delete(v3);
}

uint64_t sub_100723BC8(int a1, uint64_t a2, unsigned int a3)
{
  if (a1 != 20545)
  {
    sub_1000D660C();
  }

  v6 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109632;
    v8[1] = byte_100BC7068;
    v9 = 1024;
    v10 = a1;
    v11 = 1024;
    v12 = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "_perfClassicConnectionInd on role %d, psm %x, cid %x", v8, 0x14u);
  }

  result = sub_1000E1FE8(a2);
  if (result)
  {
    return sub_100290164(sub_100723D00, sub_100723DD8, sub_100723F24, a3, &unk_1008C5120, 1, &unk_1008C5140);
  }

  return result;
}

float sub_100723D00(int a1, int a2, int a3, int a4)
{
  v8 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
  {
    v10[0] = 67109888;
    v10[1] = a1;
    v11 = 1024;
    v12 = a2;
    v13 = 1024;
    v14 = a3;
    v15 = 1024;
    v16 = a4;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "_perfClassicConnectCfm: cid %x inMTU %d outMTU %d result %d", v10, 0x1Au);
  }

  return result;
}

void sub_100723DD8(int a1, int a2)
{
  v4 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 67109376;
    v10 = a1;
    v11 = 1024;
    v12 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "_perfClassicDisconnectCB: cid %x result %d", &v9, 0xEu);
  }

  v5 = byte_100BC7068;
  v6 = qword_100BCE950;
  v7 = os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT);
  if (v5 == 1)
  {
    if (!v7)
    {
      return;
    }

    v9 = 67109120;
    v10 = dword_100BC706C;
    v8 = "_perfClassicDisconnectCB: Acceptor packetCountReceived=%d";
  }

  else
  {
    if (!v7)
    {
      return;
    }

    v9 = 67109120;
    v10 = dword_100BC7074;
    v8 = "_perfClassicDisconnectCB: Initiator packetCountSent=%d";
  }

  _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v8, &v9, 8u);
}

void sub_100723F24(unsigned int a1, uint64_t a2, int a3)
{
  v9 = 0;
  v5 = sub_10028DAA8(a1, &v9);
  v6 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109888;
    v11 = byte_100BC7068;
    v12 = 1024;
    v13 = a1;
    v14 = 1024;
    v15 = a3;
    v16 = 1024;
    v17 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "_perfClassicRecvDataInd: role %d, cid %x, dataLen %d status=%d", buf, 0x1Au);
  }

  if (v5)
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10086A3F8();
    }
  }

  else if (byte_100BC7068 == 1)
  {
    v7 = 0;
    ++dword_100BC706C;
    while (word_1008C5170[v7] != a3)
    {
      if (++v7 == 13)
      {
        if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
        {
          sub_10086A468();
        }

        LOBYTE(v7) = 0;
        break;
      }
    }

    byte_100BC7080 = v7;
    v8 = qword_100BCE950;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v11 = dword_100BC706C;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "_perfClassicRecvDataInd: packetCountReceived=%d", buf, 8u);
    }
  }
}

uint64_t sub_1007240F0(uint64_t a1, const char *a2, void **a3, off_t *a4)
{
  v7 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_INFO))
  {
    buf.st_dev = 136315138;
    *&buf.st_mode = a2;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "loadFile: File Path %s\n", &buf, 0xCu);
  }

  memset(&buf, 0, sizeof(buf));
  bzero(&buf, 0x90uLL);
  v8 = stat(a2, &buf);
  v9 = qword_100BCE950;
  if (v8)
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10086A4A4(v9);
    }

    return 1;
  }

  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_INFO))
  {
    v19 = 136315394;
    v20 = ctime(&buf.st_mtimespec.tv_sec);
    v21 = 2048;
    st_size = buf.st_size;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "loadFile: File last changed:%s File size=%lld Bytes\n", &v19, 0x16u);
  }

  *a3 = malloc_type_malloc(buf.st_size, 0x100004077774924uLL);
  *a4 = buf.st_size;
  v11 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_INFO))
  {
    LOWORD(v19) = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "loadFile: Open File\n", &v19, 2u);
  }

  v12 = fopen(a2, "r");
  v13 = qword_100BCE950;
  if (!v12)
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10086A5E0();
    }

    return 1;
  }

  v14 = v12;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_INFO))
  {
    LOWORD(v19) = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "loadFile: Read File to buffer\n", &v19, 2u);
  }

  v15 = fread(*a3, 1uLL, buf.st_size, v14);
  v16 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_INFO))
  {
    v19 = 134217984;
    v20 = v15;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "loadFile: Read File to fileBuffer. readResult %zu.\n", &v19, 0xCu);
  }

  if (ferror(v14))
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10086A534();
    }

    return 1;
  }

  v17 = feof(v14);
  v18 = qword_100BCE950;
  if (v17)
  {
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10086A570();
    }

    return 1;
  }

  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_INFO))
  {
    LOWORD(v19) = 0;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "loadFile: Close File\n", &v19, 2u);
  }

  fclose(v14);
  return 0;
}

uint64_t sub_10072443C(char *a1)
{
  v14 = 0;
  v13 = 0;
  v2 = sub_100017E6C();
  sub_100007E30(__p, a1);
  v3 = (*(*v2 + 440))(v2, __p, &v14, &v13);
  v4 = v3;
  if (v12 < 0)
  {
    operator delete(__p[0]);
    if (v4)
    {
      goto LABEL_14;
    }
  }

  else if (v3)
  {
    goto LABEL_14;
  }

  v5 = v14;
  v6 = v13;
  do
  {
    if (v6 < 1)
    {
      v4 = 0;
      goto LABEL_14;
    }

    if (v6 >= 0xF0)
    {
      v7 = 240;
    }

    else
    {
      v7 = v6;
    }

    v6 -= v7;
    v8 = sub_10000C7D0();
    v9 = (*(*v8 + 4280))(v8, 0, v6, v5, v7, 1);
    v5 += v7;
  }

  while (!v9);
  v4 = v9;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
  {
    sub_10086A650();
  }

LABEL_14:
  if (v14)
  {
    free(v14);
  }

  return v4;
}

void sub_1007245A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007245C4(int a1, const void *a2, unsigned int a3, void *__dst)
{
  if (__dst)
  {
    if (a3 >= 0xFF)
    {
      v6 = 255;
    }

    else
    {
      v6 = a3;
    }

    memcpy(__dst, a2, v6);
    *(__dst + 128) = v6;
    v4 = vars8;
  }

  sub_10002286C(&stru_100BCEB40);
}

void *sub_100724620(void *a1)
{
  *a1 = &off_100AF7B80;
  sub_10007A068(a1 + 1);
  return a1;
}

void sub_100724664(void *a1)
{
  *a1 = &off_100AF7B80;
  sub_10007A068(a1 + 1);

  operator delete();
}

void sub_1007246C8()
{
  memset(v10, 0, sizeof(v10));
  v11.tv_sec = 0;
  *&v11.tv_usec = 0;
  gettimeofday(&v11, 0);
  v0 = v11.tv_usec / 1000.0 + (1000 * v11.tv_sec) - *&qword_100BC7090;
  v1 = dword_100BC7088;
  v2 = (1000 * dword_100BC7088);
  v3 = qword_100BCE950;
  v4 = os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT);
  if (v0 <= v2)
  {
    if (v4)
    {
      v5 = dword_100BC7074++;
      LODWORD(v11.tv_sec) = 67109120;
      HIDWORD(v11.tv_sec) = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "_writeAclDataCb packetCountSent: %d\n", &v11, 8u);
    }

    v6 = byte_100BC708C++;
    memset(byte_100BC7098, v6, word_1008C5170[byte_100BC7080]);
    sub_1000031B0();
    sub_10001FF10(v10, 1u);
    sub_10001F968(v10, byte_100BC7098, word_1008C5170[byte_100BC7080], 2u);
    v7 = sub_1000B7EDC(sub_100724960, word_100BC7070, qword_100BC7078, v10, 0);
    sub_1000B7B40(v10);
    sub_10000C198();
    if (v7 == 412)
    {
      v7 = 0;
    }

    v8 = qword_100BCE950;
    if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
    {
      v9 = word_1008C5170[byte_100BC7080];
      LODWORD(v11.tv_sec) = 67109376;
      HIDWORD(v11.tv_sec) = v7;
      LOWORD(v11.tv_usec) = 1024;
      *(&v11.tv_usec + 2) = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "_writeAclDataCb result %d, length %d\n", &v11, 0xEu);
    }

    if (v7 && os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_ERROR))
    {
      sub_10086A6CC();
    }
  }

  else if (v4)
  {
    LODWORD(v11.tv_sec) = 67109120;
    HIDWORD(v11.tv_sec) = v1;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Finished running the test after %d Sec", &v11, 8u);
  }
}

void sub_100724960(int a1, uint64_t a2, int a3, int a4)
{
  v7 = qword_100BCE950;
  if (os_log_type_enabled(qword_100BCE950, OS_LOG_TYPE_DEFAULT))
  {
    v10[0] = 67109632;
    v10[1] = a4;
    v11 = 1024;
    v12 = a1;
    v13 = 1024;
    v14 = a3;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "_perfWriteCB result=%d cid=%d\n sendCount=%d", v10, 0x14u);
  }

  v8 = dispatch_time(0, 0);
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_after_f(v8, global_queue, 0, sub_1007246C8);
}

uint64_t **sub_100724A64(void *a1, uint64_t a2)
{
  v4 = sub_100059420(&v17, *a2, *(a2 + 8));
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_20;
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
LABEL_20:
    operator new();
  }

  v14 = a2;
  v12 = *a2;
  v13 = *(v14 + 8);
  while (1)
  {
    v15 = v11[1];
    if (v15 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v15 >= *&v6)
      {
        v15 %= *&v6;
      }
    }

    else
    {
      v15 &= *&v6 - 1;
    }

    if (v15 != v9)
    {
      goto LABEL_20;
    }

LABEL_19:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_20;
    }
  }

  if (v11[3] != v13 || memcmp(v11[2], v12, v13))
  {
    goto LABEL_19;
  }

  return v11;
}

uint64_t *sub_100724D48(uint64_t a1, int *a2)
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

void sub_100724F54()
{
  v0 = objc_autoreleasePoolPush();
  qword_100BCEB10 = 0;
  qword_100BCEB08 = 0;
  qword_100BCEB00 = &qword_100BCEB08;
  __cxa_atexit(sub_100714D34, &qword_100BCEB00, &_mh_execute_header);
  xmmword_100BCEB18 = 0u;
  *algn_100BCEB28 = 0u;
  dword_100BCEB38 = 1065353216;
  __cxa_atexit(sub_100714D60, &xmmword_100BCEB18, &_mh_execute_header);
  sub_100364534(&stru_100BCEB40);
  __cxa_atexit(sub_1003645A0, &stru_100BCEB40, &_mh_execute_header);

  objc_autoreleasePoolPop(v0);
}

uint64_t sub_10072502C(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8);
  if (!v2 || *(v2 + 16) <= a2)
  {
    v4 = sub_10000E92C();
    sub_100693F88(v4, 1);
    _os_log_pack_size();
    __chkstk_darwin();
    __error();
    v5 = _os_log_pack_fill();
    *v5 = 136446210;
    *(v5 + 4) = "idx < getSize()";
    os_log_create("com.apple.bluetooth", "CBCrash");
    qword_100B55118 = os_log_pack_send_and_compose();
    abort_with_payload();
  }

  return *(v2 + a2 + 24);
}

BOOL sub_100725170(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(v2 + 16);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(a2 + 8);
  if (v4)
  {
    v5 = *(v4 + 16);
    if (v3 < v5)
    {
      v6 = 0;
    }

    else
    {
      v6 = *(v4 + 16);
    }

    if (v3 < v5 && v2 != 0)
    {
      v6 = *(v2 + 16);
    }
  }

  else
  {
    v6 = 0;
  }

  if (v2)
  {
    v8 = (v2 + 24);
  }

  else
  {
    v8 = 0;
  }

  if (v4)
  {
    v9 = (v4 + 24);
  }

  else
  {
    v9 = 0;
  }

  v10 = memcmp(v8, v9, v6);
  if (v10)
  {
    return v10 >> 31;
  }

  if (!v2)
  {
    v12 = 0;
    if (v4)
    {
      goto LABEL_24;
    }

LABEL_26:
    v13 = 0;
    return v12 < v13;
  }

  v12 = *(v2 + 16);
  if (!v4)
  {
    goto LABEL_26;
  }

LABEL_24:
  v13 = *(v4 + 16);
  return v12 < v13;
}

void sub_100725220(id a1)
{
  v1 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "AdvRSSIOffset");
  v2 = (*(*v1 + 88))(v1, buf, __p, &dword_100BC7AB0);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(*buf);
    if (!v2)
    {
      return;
    }
  }

  else if (!v2)
  {
    return;
  }

  v3 = qword_100BCE9A8;
  if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = dword_100BC7AB0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Warning: RSSI shall be reported after offset %d (dB) added", buf, 8u);
  }
}

void sub_100725358(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_100725394(uint64_t a1)
{
  v2 = (a1 + 64);
  *(a1 + 72) = *(a1 + 64);
  v3 = (a1 + 72);
  v23 = xmmword_1008A4DDC;
  v24 = 0;
  sub_10000D03C(&v25, &v23);
  v4 = *v3;
  v5 = *(a1 + 80);
  if (*v3 >= v5)
  {
    v8 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *v2) >> 2);
    v9 = v8 + 1;
    if (v8 + 1 > 0xCCCCCCCCCCCCCCCLL)
    {
      sub_1000C7698();
    }

    v10 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - *v2) >> 2);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x666666666666666)
    {
      v11 = 0xCCCCCCCCCCCCCCCLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      sub_100018404(v2, v11);
    }

    v12 = 20 * v8;
    v13 = v25;
    *(v12 + 16) = v26;
    *v12 = v13;
    v7 = 20 * v8 + 20;
    v14 = *(a1 + 64);
    v15 = *(a1 + 72);
    v16 = (v12 + v14 - v15);
    if (v14 != v15)
    {
      v17 = v16;
      do
      {
        v18 = *v14;
        *(v17 + 4) = *(v14 + 4);
        *v17 = v18;
        v17 += 20;
        v14 += 20;
      }

      while (v14 != v15);
      v14 = *v2;
    }

    *(a1 + 64) = v16;
    *(a1 + 72) = v7;
    *(a1 + 80) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    v6 = v25;
    v4[1].n128_u32[0] = v26;
    *v4 = v6;
    v7 = v4[1].n128_i64 + 4;
  }

  *(a1 + 72) = v7;
  sub_10004CE24(a1 + 112, *(a1 + 120));
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 112) = a1 + 120;
  v20[0] = 0;
  v25 = 0uLL;
  v26 = 0;
  if (qword_100B54770 != -1)
  {
    sub_10086A750();
  }

  sub_10050F884(off_100B54768, &v25, 20, v20);
  v21 = xmmword_1008A4DDC;
  v22 = 0;
  sub_10000D03C(&v23, &v21);
  sub_10000C704(&v21, &v25, 0x14uLL);
  v20[2] = &v23;
  v19 = sub_100099408(a1 + 112, &v23);
  sub_10000AE20(v19 + 56, &v21);
  *&v21 = &off_100AE0A78;
  if (*(&v21 + 1))
  {
    sub_10000C808(*(&v21 + 1));
  }

  *(a1 + 256) = v20[0];
  *(a1 + 364) = 1;
}

void sub_100725610(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, atomic_uint *a14)
{
  if (a14)
  {
    sub_10000C808(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_100725650(uint64_t a1)
{
  if (*(a1 + 264) == 2 && (*(a1 + 364) & 1) == 0)
  {
    sub_100725394(a1);
  }
}

uint64_t sub_10072566C(uint64_t result, unsigned int a2, char a3)
{
  if (a2 <= 3)
  {
    *(result + a2 + 392) = a3;
  }

  return result;
}

uint64_t sub_100725680(uint64_t a1, uint8x8_t a2)
{
  a2.i32[0] = *(a1 + 392);
  v2 = vmovl_u8(a2).u64[0];
  v2.i16[0] = vaddv_s16(v2);
  return v2.u32[0];
}

uint64_t sub_100725700(uint64_t a1)
{
  *(a1 + 100) = 0;
  *a1 = 0;
  *(a1 + 8) = 0;
  atomic_store(0, (a1 + 96));
  atomic_store(0, (a1 + 17));
  *(a1 + 88) = 0;
  atomic_store(0, (a1 + 18));
  *(a1 + 100) = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1007257AC;
  block[3] = &unk_100ADF8F8;
  block[4] = a1;
  dispatch_async(&_dispatch_main_q, block);
  return a1;
}

void sub_1007257B4(uint64_t a1)
{
  v2 = qword_100BCE8E0;
  if (os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Registering for WiFi Callback", buf, 2u);
  }

  v3 = WiFiManagerClientCreate();
  *a1 = v3;
  if (v3)
  {
    v4 = WiFiManagerClientCopyDevices();
    if (v4)
    {
      v5 = v4;
      if (CFArrayGetCount(v4))
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v5, 0);
        *(a1 + 8) = ValueAtIndex;
        CFRetain(ValueAtIndex);
        if (*(a1 + 8))
        {
          v7 = WiFiDeviceClientGetPower() != 0;
          sub_100726448(a1, v7);
          v8 = WiFiDeviceClientCopyCurrentNetwork();
          if (v8)
          {
            v9 = v8;
            OperatingBand = WiFiNetworkGetOperatingBand();
            sub_1007264C8(a1, OperatingBand);
            if (atomic_load((a1 + 96)))
            {
              sub_100726548(a1, 1u);
            }

            CFRelease(v9);
          }
        }

        v12 = sub_100017E6C();
        (*(*v12 + 40))(v12);
      }

      CFRelease(v5);
    }
  }

  Main = CFRunLoopGetMain();
  pthread_mutex_lock((a1 + 24));
  *(a1 + 88) = Main;
  pthread_mutex_unlock((a1 + 24));
  if (*a1 && *(a1 + 88) && *(a1 + 8))
  {
    WiFiDeviceClientRegisterPowerCallback();
    WiFiDeviceClientRegisterExtendedLinkCallback();
    WiFiDeviceClientRegisterBssidChangeCallback();
    WiFiDeviceClientRegisterM1M4Handshake24GHzCountCallback();
    WiFiDeviceClientRegister24GHzNetworkInCriticalStateCallback();
    WiFiDeviceClientRegisterVirtualInterfaceStateChangeCallback();
    WiFiManagerClientScheduleWithRunLoop();
    v14 = qword_100BCE8E0;
    if (os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "WiFi interface is up", buf, 2u);
    }
  }

  else
  {
    v15 = qword_100BCE8E0;
    if (os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Setting up ReTry Timer to ensure WiFi is up", buf, 2u);
    }

    v16 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, &_dispatch_main_q);
    if (v16)
    {
      v17 = v16;
      v18 = dispatch_time(0, 10000000000);
      dispatch_source_set_timer(v17, v18, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_100726668;
      v19[3] = &unk_100AE0860;
      v19[4] = a1;
      v19[5] = v17;
      dispatch_source_set_event_handler(v17, v19);
      dispatch_activate(v17);
    }
  }
}

void sub_100725B18(uint64_t a1)
{
  v2 = sub_10000E92C();
  sub_100007E30(buf, "COEXDEBUG");
  sub_100007E30(__p, "Enabled");
  (*(*v2 + 72))(v2, buf, __p, a1 + 100);
  if (v22 < 0)
  {
    operator delete(__p[0]);
  }

  if (v24 < 0)
  {
    operator delete(*buf);
  }

  if (*(a1 + 100) == 1)
  {
    v3 = qword_100BCE8E0;
    if (os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "WiFiDebugModeUpdated COEXDEBUG", buf, 2u);
    }

    v20 = 0;
    v4 = sub_10000E92C();
    sub_100007E30(buf, "COEXDEBUG");
    sub_100007E30(__p, "wifiStatePower");
    v5 = (*(*v4 + 72))(v4, buf, __p, &v20);
    if (v22 < 0)
    {
      operator delete(__p[0]);
    }

    if (v24 < 0)
    {
      operator delete(*buf);
      if (!v5)
      {
        goto LABEL_15;
      }
    }

    else if (!v5)
    {
      goto LABEL_15;
    }

    atomic_store(v20, (a1 + 16));
    v6 = atomic_load((a1 + 16));
    if ((v6 & 1) == 0)
    {
      atomic_store(0, (a1 + 96));
      atomic_store(0, (a1 + 18));
LABEL_42:
      v16 = sub_100017E6C();
      (*(*v16 + 40))(v16);
      return;
    }

LABEL_15:
    v19 = 0;
    v7 = sub_10000E92C();
    sub_100007E30(buf, "COEXDEBUG");
    sub_100007E30(__p, "wifiStateBand");
    v8 = (*(*v7 + 88))(v7, buf, __p, &v19);
    if (v22 < 0)
    {
      operator delete(__p[0]);
    }

    if (v24 < 0)
    {
      operator delete(*buf);
      if (!v8)
      {
LABEL_20:
        v18 = 0;
        v9 = sub_10000E92C();
        sub_100007E30(buf, "COEXDEBUG");
        sub_100007E30(__p, "UCMWifiStateBitmap");
        v10 = (*(*v9 + 144))(v9, buf, __p, &v18);
        if (v22 < 0)
        {
          operator delete(__p[0]);
        }

        if (v24 < 0)
        {
          operator delete(*buf);
        }

        if (v18)
        {
          v11 = v10;
        }

        else
        {
          v11 = 0;
        }

        if (v11 == 1)
        {
          atomic_store(1u, (a1 + 18));
        }

        v17 = 0;
        v12 = sub_10000E92C();
        sub_100007E30(buf, "COEXDEBUG");
        sub_100007E30(__p, "wifiStateCritical2_4");
        v13 = (*(*v12 + 72))(v12, buf, __p, &v17);
        if (v22 < 0)
        {
          operator delete(__p[0]);
        }

        if (v24 < 0)
        {
          operator delete(*buf);
          if (!v13)
          {
            goto LABEL_34;
          }
        }

        else if (!v13)
        {
LABEL_34:
          v14 = atomic_load((a1 + 18));
          if ((v14 & 1) != 0 || (v15 = atomic_load((a1 + 96)), v15 | v19))
          {
            atomic_store(1u, (a1 + 16));
          }

          goto LABEL_42;
        }

        atomic_store(v17, (a1 + 18));
        goto LABEL_34;
      }
    }

    else if (!v8)
    {
      goto LABEL_20;
    }

    atomic_store(v19, (a1 + 96));
    goto LABEL_20;
  }
}

void sub_100725EF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

void sub_100725F48(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 100) == 1)
  {
    v2 = qword_100BCE8E0;
    if (os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Ignoring real wifi updates", v8, 2u);
    }
  }

  else
  {
    if (a2)
    {
      atomic_store(WiFiDeviceClientGetPower() != 0, (a1 + 16));
      v4 = WiFiDeviceClientCopyCurrentNetwork();
      if (v4)
      {
        v5 = v4;
        atomic_store(WiFiNetworkGetOperatingBand(), (a1 + 96));
        if (atomic_load((a1 + 96)))
        {
          atomic_store(1u, (a1 + 17));
        }

        CFRelease(v5);
      }

      else
      {
        atomic_store(0, (a1 + 96));
        atomic_store(0, (a1 + 17));
      }
    }

    v7 = *(*sub_100017E6C() + 40);

    v7();
  }
}

void sub_100726070(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (*(a1 + 100) == 1)
  {
    v3 = qword_100BCE8E0;
    if (os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Ignoring real wifi updates", v5, 2u);
    }
  }

  else
  {
    sub_100726130(a1, a3);
    v4 = *(*sub_100017E6C() + 40);

    v4();
  }
}

void sub_100726130(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 100) == 1)
  {
    v2 = qword_100BCE8E0;
    if (!os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    LOWORD(v10[0]) = 0;
    v3 = "Ignoring real wifi updates";
    v4 = v2;
    v5 = 2;
  }

  else
  {
    v7 = (a1 + 20);
    atomic_store(a2, (a1 + 20));
    v8 = qword_100BCE8E0;
    if (!os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v9 = atomic_load(v7);
    v10[0] = 67109376;
    v10[1] = v9;
    v11 = 1024;
    v12 = a2;
    v3 = "Callback triggered, M1M4HandshakeCount setting to: %u with wifihandshakecount: %u";
    v4 = v8;
    v5 = 14;
  }

  _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, v3, v10, v5);
}

void sub_100726244(uint64_t a1, uint64_t a2, int a3)
{
  if (*(a1 + 100) == 1)
  {
    v3 = qword_100BCE8E0;
    if (os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Ignoring real wifi updates", &v12, 2u);
    }
  }

  else if (a2)
  {
    v6 = atomic_load((a1 + 18));
    if ((v6 & 1) != a3)
    {
      v7 = qword_100BCE8E0;
      if (os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_DEFAULT))
      {
        v8 = "N";
        v9 = atomic_load((a1 + 18));
        if (v9)
        {
          v10 = "Y";
        }

        else
        {
          v10 = "N";
        }

        if (a3)
        {
          v8 = "Y";
        }

        v12 = 136315394;
        v13 = v10;
        v14 = 2080;
        v15 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "WiFi isInCriticalStateWiFi2_4GHz %s -> %s", &v12, 0x16u);
      }

      sub_1007263C8(a1, a3);
      v11 = sub_100017E6C();
      (*(*v11 + 40))(v11);
    }
  }
}

void sub_1007263C8(uint64_t a1, unsigned __int8 a2)
{
  if (*(a1 + 100) == 1)
  {
    v2 = qword_100BCE8E0;
    if (os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Ignoring real wifi updates", v3, 2u);
    }
  }

  else
  {
    atomic_store(a2, (a1 + 18));
  }
}

void sub_100726448(uint64_t a1, unsigned __int8 a2)
{
  if (*(a1 + 100) == 1)
  {
    v2 = qword_100BCE8E0;
    if (os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Ignoring real wifi updates", v3, 2u);
    }
  }

  else
  {
    atomic_store(a2, (a1 + 16));
  }
}

void sub_1007264C8(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 100) == 1)
  {
    v2 = qword_100BCE8E0;
    if (os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Ignoring real wifi updates", v3, 2u);
    }
  }

  else
  {
    atomic_store(a2, (a1 + 96));
  }
}

void sub_100726548(uint64_t a1, unsigned __int8 a2)
{
  if (*(a1 + 100) == 1)
  {
    v2 = qword_100BCE8E0;
    if (os_log_type_enabled(qword_100BCE8E0, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Ignoring real wifi updates", v3, 2u);
    }
  }

  else
  {
    atomic_store(a2, (a1 + 17));
  }
}

void sub_100726668(uint64_t a1)
{
  sub_1007257B4(*(a1 + 32));
  v2 = *(a1 + 40);
  if (v2)
  {
    dispatch_source_cancel(v2);
    v3 = *(a1 + 40);

    dispatch_release(v3);
  }
}

void *sub_1007266BC(uint64_t a1, uint64_t a2, __int16 a3)
{
  result = sub_1005ADAE8(a1, a2, a3);
  *result = &off_100B0A998;
  return result;
}

void sub_1007266F0(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a3)
  {
    v5 = *a2;
    if (*(a1 + 216))
    {
      if (*a2 > 0xBFu)
      {
        if (*a2 <= 0xFBu)
        {
          if (v5 == 192)
          {
            v8 = -13;
            goto LABEL_36;
          }

          if (v5 != 198 && v5 != 224)
          {
            goto LABEL_46;
          }

          goto LABEL_18;
        }

        if ((v5 - 252) > 2)
        {
          goto LABEL_46;
        }

        sub_1005AE1BC(a1, a2, a3);
      }

      else
      {
        if (*a2 > 0x4Fu)
        {
          v7 = v5 - 96;
          if ((v5 - 96) > 0x3B)
          {
            goto LABEL_8;
          }

          if (((1 << v7) & 0x380001) == 0)
          {
            if (((1 << v7) & 0xC01000000000000) == 0)
            {
LABEL_8:
              if (v5 != 80)
              {
LABEL_46:
                if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_ERROR))
                {
                  sub_10085DA24();
                }

                return;
              }

              goto LABEL_35;
            }

LABEL_18:
            v8 = -16;
LABEL_36:
            buf[0] = v8;
            if (!sub_1000C0430((a1 + 192), buf))
            {
LABEL_41:
              if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_ERROR))
              {
                sub_10085D9B0();
              }

              return;
            }

            v17 = v8;
            goto LABEL_38;
          }

          goto LABEL_35;
        }

        if (*a2 > 0x2Fu)
        {
          if ((v5 - 48) >= 2)
          {
            goto LABEL_46;
          }

          goto LABEL_35;
        }

        switch(v5)
        {
          case 2:
LABEL_35:
            v8 = -15;
            goto LABEL_36;
          case 19:
            v16 = qword_100BCEAA0;
            if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109120;
              *&buf[4] = 19;
              _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Received power-off notice input report (ID %u)", buf, 8u);
            }

            break;
          case 20:
            v9 = qword_100BCEAA0;
            if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_DEFAULT))
            {
              v10 = (*(**(a1 + 8) + 32))(*(a1 + 8), *(a1 + 40));
              *buf = 67109376;
              *&buf[4] = 20;
              v20 = 1024;
              v21 = v10;
              _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Received exit suspend input report (ID %u), should undim %d", buf, 0xEu);
            }

            if (!(*(**(a1 + 8) + 32))(*(a1 + 8), *(a1 + 40)))
            {
              v12 = 0;
              goto LABEL_50;
            }

            v11 = qword_100BCEAA0;
            if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Waking screen with spoofed click", buf, 2u);
            }

            buf[0] = -15;
            if (sub_1000C0430((a1 + 192), buf))
            {
              v17 = -15;
              *buf = &v17;
              v12 = sub_100314704((a1 + 192), &v17)[3];
              *buf = 258;
              v13 = mach_absolute_time();
              IOHIDUserDeviceHandleReportWithTimeStamp(v12, v13, buf, 8);
              *report = 2;
              v14 = mach_absolute_time();
              IOHIDUserDeviceHandleReportWithTimeStamp(v12, v14, report, 8);
LABEL_50:
              buf[0] = -14;
              if (!sub_1000C0430((a1 + 192), buf))
              {
LABEL_39:
                if (v12)
                {
                  v15 = mach_absolute_time();
                  IOHIDUserDeviceHandleReportWithTimeStamp(v12, v15, a2, a3);
                  return;
                }

                goto LABEL_41;
              }

              v17 = -14;
LABEL_38:
              *buf = &v17;
              v12 = sub_100314704((a1 + 192), &v17)[3];
              goto LABEL_39;
            }

            if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_ERROR))
            {
              sub_10086A778();
            }

            break;
          default:
            goto LABEL_46;
        }
      }
    }

    else if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_ERROR))
    {
      sub_100817A60();
    }
  }

  else if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_ERROR))
  {
    sub_10086A7B4();
  }
}

uint64_t sub_100726BA0(uint64_t a1, void *a2)
{
  sub_1005AE020(a1, a2);
  sub_100726C84(a1, a2);
  sub_100726DF8(a1, a2);
  sub_100726F50(a1, a2);
  v4 = a2;
  v5 = [v4 valueForKey:@"ProductID"];
  v6 = [v5 intValue];
  v9 = 24;
  v7 = *sub_1003141CC(qword_100BCE698, &v9);

  if (v6 != v7)
  {
    sub_100727050(a1, v4);
  }

  return 1;
}

uint64_t sub_100726C84(uint64_t a1, void *a2)
{
  v8 = xmmword_1008C51C0;
  v9 = unk_1008C51D0;
  *v10 = xmmword_1008C51E0;
  v6 = xmmword_1008C51A0;
  v7 = unk_1008C51B0;
  *&v10[15] = -1073577627;
  *(a1 + 304) = a1;
  *(a1 + 312) = -16;
  v3 = [a2 mutableCopy];
  [v3 setObject:@"Trackpad" forKeyedSubscript:@"Accessory Category"];
  [v3 setObject:&off_100B34648 forKeyedSubscript:@"ExtendedData"];
  v4 = sub_1005ADE88(a1, v3, &v6, 83, *(a1 + 312), 0);
  if (v4)
  {
    IOHIDUserDeviceRegisterGetReportWithReturnLengthCallback();
    IOHIDUserDeviceRegisterSetReportCallback();
  }

  else if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_ERROR))
  {
    sub_10086A7F0();
  }

  return v4;
}

uint64_t sub_100726DF8(uint64_t a1, void *a2)
{
  v10 = xmmword_1008C5233;
  v11[0] = unk_1008C5243;
  *(v11 + 14) = unk_1008C5251;
  v6 = xmmword_1008C51F3;
  v7 = unk_1008C5203;
  v8 = xmmword_1008C5213;
  v9 = unk_1008C5223;
  *(a1 + 320) = a1;
  *(a1 + 328) = -15;
  v3 = [a2 mutableCopy];
  [v3 setObject:&off_100B34660 forKeyedSubscript:@"ExtendedData"];
  v4 = sub_1005ADE88(a1, v3, &v6, 110, *(a1 + 328), 1);
  if (v4)
  {
    IOHIDUserDeviceRegisterGetReportWithReturnLengthCallback();
    IOHIDUserDeviceRegisterSetReportCallback();
  }

  else if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_ERROR))
  {
    sub_10086A82C();
  }

  return v4;
}

uint64_t sub_100726F50(uint64_t a1, void *a2)
{
  v4[0] = xmmword_1008C5261;
  v4[1] = algn_1008C5271;
  v5 = -1073573632;
  *(a1 + 336) = a1;
  *(a1 + 344) = -14;
  v2 = sub_1005ADE88(a1, a2, v4, 36, 242, 2);
  if (v2)
  {
    IOHIDUserDeviceRegisterGetReportWithReturnLengthCallback();
    IOHIDUserDeviceRegisterSetReportCallback();
  }

  else if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_ERROR))
  {
    sub_10086A868();
  }

  return v2;
}

uint64_t sub_100727050(uint64_t a1, void *a2)
{
  v4[0] = xmmword_1008C5285;
  *(v4 + 11) = *(&xmmword_1008C5285 + 11);
  *(a1 + 352) = a1;
  *(a1 + 360) = -13;
  v2 = sub_1005ADE88(a1, a2, v4, 27, 243, 3);
  if (v2)
  {
    IOHIDUserDeviceRegisterGetReportWithReturnLengthCallback();
    IOHIDUserDeviceRegisterSetReportCallback();
  }

  else if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_ERROR))
  {
    sub_10086A8A4();
  }

  return v2;
}

uint64_t sub_10072717C(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 == 178 && a1[8] == 240)
  {
    v10 = qword_100BCEAA0;
    if (os_log_type_enabled(qword_100BCEAA0, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "FW update detected; invalidating SDP cache", v12, 2u);
    }

    (*(**(*a1 + 8) + 24))(*(*a1 + 8));
  }

  return (*(**a1 + 120))(*a1, a2, a3, a4, a5, a1[8]);
}

void sub_100727288(uint64_t a1)
{
  sub_1005ADBAC(a1);

  operator delete();
}

uint64_t sub_1007272C0(uint64_t a1)
{
  *a1 = off_100B0AA28;
  *(a1 + 8) = off_100B0AAE8;
  *(a1 + 16) = &off_100B0AB18;
  *(a1 + 24) = off_100B0AB30;
  *(a1 + 32) = off_100B0AB90;
  *(a1 + 40) = off_100B0ABC0;
  *(a1 + 49) = 0;
  sub_100044BBC(a1 + 64);
  *(a1 + 128) = 0;
  *(a1 + 136) = CFAbsoluteTimeGetCurrent();
  *(a1 + 144) = 0;
  *(a1 + 16920) = 0u;
  *(a1 + 16912) = a1 + 16920;
  *(a1 + 16936) = a1 + 16936;
  *(a1 + 16944) = a1 + 16936;
  *(a1 + 16952) = 0;
  *(a1 + 16960) = 0;
  *(a1 + 16962) = 0;
  *(a1 + 16976) = 0u;
  *(a1 + 16968) = a1 + 16976;
  *(a1 + 16994) = 7;
  *(a1 + 17000) = 3600;
  *(a1 + 17008) = 0;
  *(a1 + 17024) = 0;
  *(a1 + 17032) = 0;
  *(a1 + 17080) = 0;
  *(a1 + 17064) = 0u;
  *(a1 + 17053) = 0;
  *(a1 + 17090) = 0u;
  *(a1 + 17040) = 0u;
  *(a1 + 17104) = 0;
  *(a1 + 17112) = a1 + 17112;
  *(a1 + 17120) = a1 + 17112;
  *(a1 + 17128) = 0;
  *(a1 + 17160) = 0;
  *(a1 + 17164) = vdup_n_s32(0x12Cu);
  *(a1 + 17172) = 0;
  *(a1 + 56) = sub_100007EE8();
  bzero((a1 + 152), 0x4178uLL);
  *(a1 + 17040) = 0;
  *(a1 + 17048) = 0;
  *(a1 + 17009) = 0;
  *(a1 + 17017) = 0;
  return a1;
}

void sub_1007274B4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10072F914(v4);
  sub_1000161FC(va);

  sub_10000CEDC(v2 + 16968, *(v2 + 16976));
  sub_100028EB4(v3);
  sub_10008667C(v2 + 16912, *(v2 + 16920));
  sub_10007A068(v2 + 64);
  _Unwind_Resume(a1);
}

void sub_100727524(uint64_t a1)
{
  if (qword_100B512F8 != -1)
  {
    sub_10086A8E0();
  }

  sub_1006D6828(off_100B512F0 + 192, a1);
  if (qword_100B50AA0 != -1)
  {
    sub_10086A8F4();
  }

  sub_100312650(off_100B50A98 + 64, a1 + 8);
  if (qword_100B50910 != -1)
  {
    sub_10086A908();
  }

  sub_1005BB5D4(off_100B50908, a1 + 24);
  v2 = sub_1000154A8();
  (*(*v2 + 128))(v2, a1 + 40);
  if ((*(sub_10000C7D0() + 160) & 1) == 0)
  {
    v3 = qword_100BCE9A8;
    if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Using a single advertising instance", buf, 2u);
    }

    *(a1 + 144) = 1;
  }

  v118 = 0;
  v4 = sub_10000E92C();
  sub_100007E30(buf, "AE");
  sub_100007E30(__p, "EnableBackgroundExtendedAdvertising");
  v5 = (*(*v4 + 88))(v4, buf, __p, &v118);
  if (v117 < 0)
  {
    operator delete(__p[0]);
  }

  v6 = a1 + 0x4000;
  if (SBYTE3(v121) < 0)
  {
    operator delete(*buf);
    if (!v5)
    {
      goto LABEL_37;
    }
  }

  else if (!v5)
  {
    goto LABEL_37;
  }

  v7 = qword_100BCE9A8;
  if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Warning: Enabled Background advertising with extended advertising", buf, 2u);
  }

  *(a1 + 16962) = v118 != 0;
  v115 = 0;
  v8 = sub_10000E92C();
  sub_100007E30(buf, "AE");
  sub_100007E30(__p, "MaxAdvertisingBackgroundSessions");
  v9 = (*(*v8 + 88))(v8, buf, __p, &v115);
  if (v117 < 0)
  {
    operator delete(__p[0]);
  }

  if (SBYTE3(v121) < 0)
  {
    operator delete(*buf);
    if (!v9)
    {
      goto LABEL_28;
    }
  }

  else if (!v9)
  {
    goto LABEL_28;
  }

  v10 = qword_100BCE9A8;
  if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v115;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Warning: Overriding max background advertising sessions to %d", buf, 8u);
  }

  *(a1 + 16994) = v115;
LABEL_28:
  v114 = 0;
  v11 = sub_10000E92C();
  sub_100007E30(buf, "AE");
  sub_100007E30(__p, "MaxBackgroundAdvertisingTimeForSession");
  v12 = (*(*v11 + 88))(v11, buf, __p, &v114);
  if (v117 < 0)
  {
    operator delete(__p[0]);
  }

  if (SBYTE3(v121) < 0)
  {
    operator delete(*buf);
    if (!v12)
    {
      goto LABEL_37;
    }
  }

  else if (!v12)
  {
    goto LABEL_37;
  }

  v13 = qword_100BCE9A8;
  if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *&buf[4] = v114 / 1000;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Warning: Overriding max background advertising time for session to %lld seconds", buf, 0xCu);
  }

  *(a1 + 17000) = v114;
  *(a1 + 17008) = 1;
LABEL_37:
  v115 = 0;
  v14 = sub_10000E92C();
  sub_100007E30(buf, "ADVDEBUG");
  sub_100007E30(__p, "FakeBusyErrorOnADVStartCount");
  v15 = (*(*v14 + 88))(v14, buf, __p, &v115);
  if (v117 < 0)
  {
    operator delete(__p[0]);
  }

  if (SBYTE3(v121) < 0)
  {
    operator delete(*buf);
    if (!v15)
    {
      goto LABEL_46;
    }
  }

  else if (!v15)
  {
    goto LABEL_46;
  }

  v16 = qword_100BCE9A8;
  if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v115;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Warning: Enabling fake OI_BUSY_FAIL on ADV start every %d start attempts", buf, 8u);
  }

  *(a1 + 17058) = v115;
LABEL_46:
  v17 = sub_10000E92C();
  sub_100007E30(buf, "ADVDEBUG");
  sub_100007E30(__p, "FakeADVUnsettledStateCount");
  v18 = (*(*v17 + 88))(v17, buf, __p, &v115);
  if (v117 < 0)
  {
    operator delete(__p[0]);
  }

  if (SBYTE3(v121) < 0)
  {
    operator delete(*buf);
    if (!v18)
    {
      goto LABEL_55;
    }
  }

  else if (!v18)
  {
    goto LABEL_55;
  }

  v19 = qword_100BCE9A8;
  if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v115;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Warning: Enabling fake advertising unsettled state on ADV start every %d start attempts", buf, 8u);
  }

  *(a1 + 17056) = v115;
LABEL_55:
  v20 = sub_10000C798();
  if (((*(*v20 + 440))(v20) & 1) == 0)
  {
    v21 = sub_100017E6C();
    sub_100532818(v21 + 744, a1 + 16);
  }

  v22 = sub_100017E6C();
  (*(*v22 + 160))(v22, a1 + 48);
  v114 = 0;
  v23 = sub_10000E92C();
  sub_100007E30(buf, "LeBroadcaster");
  sub_100007E30(__p, "AdvertisementInterval");
  v24 = (*(*v23 + 88))(v23, buf, __p, &v114);
  if (v117 < 0)
  {
    operator delete(__p[0]);
  }

  if (SBYTE3(v121) < 0)
  {
    operator delete(*buf);
    if (!v24)
    {
      goto LABEL_67;
    }
  }

  else if (!v24)
  {
    goto LABEL_67;
  }

  v25 = qword_100BCE9A8;
  if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_fault_impl(&_mh_execute_header, v25, OS_LOG_TYPE_FAULT, "AdvertisementInterval defaults is now obsolete. Please use ConnectableAdvInt, NonConnectableAdvInt, ObjectDiscoveryAdvInt and ExtAdvInt instead", buf, 2u);
    v25 = qword_100BCE9A8;
  }

  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    sub_10086A91C();
  }

LABEL_67:
  v26 = sub_10000E92C();
  sub_100007E30(buf, "LeBroadcaster");
  sub_100007E30(__p, "ConnectableAdvInt");
  v27 = (*(*v26 + 88))(v26, buf, __p, &v114);
  if (v114)
  {
    v28 = v27;
  }

  else
  {
    v28 = 0;
  }

  if (v117 < 0)
  {
    operator delete(__p[0]);
  }

  if (SBYTE3(v121) < 0)
  {
    operator delete(*buf);
    if (!v28)
    {
      goto LABEL_79;
    }
  }

  else if (!v28)
  {
    goto LABEL_79;
  }

  v29 = qword_100BCE9A8;
  v30 = os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEFAULT);
  v31 = v114;
  if (v30)
  {
    *buf = 67109120;
    *&buf[4] = v114;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Enabling override value (%d) for connectable advertisement interval", buf, 8u);
    v31 = v114;
  }

  *(v6 + 708) = v31;
LABEL_79:
  v32 = sub_10000E92C();
  sub_100007E30(buf, "LeBroadcaster");
  sub_100007E30(__p, "SwupAdvInterval");
  v33 = (*(*v32 + 88))(v32, buf, __p, &v114);
  if (v114)
  {
    v34 = v33;
  }

  else
  {
    v34 = 0;
  }

  if (v117 < 0)
  {
    operator delete(__p[0]);
  }

  if (SBYTE3(v121) < 0)
  {
    operator delete(*buf);
    if (!v34)
    {
      goto LABEL_91;
    }
  }

  else if (!v34)
  {
    goto LABEL_91;
  }

  v35 = qword_100BCE9A8;
  v36 = os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEFAULT);
  v37 = v114;
  if (v36)
  {
    *buf = 67109120;
    *&buf[4] = v114;
    _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Enabling override value (%d) for all SWUP advertisement interval", buf, 8u);
    v37 = v114;
  }

  *(v6 + 706) = v37;
LABEL_91:
  v38 = sub_10000E92C();
  sub_100007E30(buf, "LeBroadcaster");
  sub_100007E30(__p, "NonConnectableAdvInt");
  v39 = (*(*v38 + 88))(v38, buf, __p, &v114);
  if (v114)
  {
    v40 = v39;
  }

  else
  {
    v40 = 0;
  }

  if (v117 < 0)
  {
    operator delete(__p[0]);
  }

  if (SBYTE3(v121) < 0)
  {
    operator delete(*buf);
    if (!v40)
    {
      goto LABEL_103;
    }
  }

  else if (!v40)
  {
    goto LABEL_103;
  }

  v41 = qword_100BCE9A8;
  v42 = os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEFAULT);
  v43 = v114;
  if (v42)
  {
    *buf = 67109120;
    *&buf[4] = v114;
    _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Enabling override value (%d) for non connectable advertisement interval", buf, 8u);
    v43 = v114;
  }

  *(v6 + 710) = v43;
LABEL_103:
  v44 = sub_10000E92C();
  sub_100007E30(buf, "LeBroadcaster");
  sub_100007E30(__p, "NonConnectableSecondaryAdvInt");
  v45 = (*(*v44 + 88))(v44, buf, __p, &v114);
  if (v114)
  {
    v46 = v45;
  }

  else
  {
    v46 = 0;
  }

  if (v117 < 0)
  {
    operator delete(__p[0]);
  }

  if (SBYTE3(v121) < 0)
  {
    operator delete(*buf);
    if (!v46)
    {
      goto LABEL_115;
    }
  }

  else if (!v46)
  {
    goto LABEL_115;
  }

  v47 = qword_100BCE9A8;
  v48 = os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEFAULT);
  v49 = v114;
  if (v48)
  {
    *buf = 67109120;
    *&buf[4] = v114;
    _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "Enabling override value (%d) for non connectable secondary advertisement interval", buf, 8u);
    v49 = v114;
  }

  *(v6 + 712) = v49;
LABEL_115:
  v50 = sub_10000E92C();
  sub_100007E30(buf, "LeBroadcaster");
  sub_100007E30(__p, "ObjectDiscoveryAdvInt");
  v51 = (*(*v50 + 88))(v50, buf, __p, &v114);
  if (v114)
  {
    v52 = v51;
  }

  else
  {
    v52 = 0;
  }

  if (v117 < 0)
  {
    operator delete(__p[0]);
  }

  if (SBYTE3(v121) < 0)
  {
    operator delete(*buf);
    if (!v52)
    {
      goto LABEL_131;
    }
  }

  else if (!v52)
  {
    goto LABEL_131;
  }

  v53 = v114;
  v54 = qword_100BCE9A8;
  if (v114 <= 289)
  {
    if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109376;
      *&buf[4] = v53;
      *&buf[8] = 1024;
      *&buf[10] = 290;
      _os_log_error_impl(&_mh_execute_header, v54, OS_LOG_TYPE_ERROR, "Cannot advertise with this interval (%d) for Object Discovery advertisement, setting this to %d", buf, 0xEu);
      v54 = qword_100BCE9A8;
    }

    v53 = 290;
    v114 = 290;
  }

  if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v53;
    _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "Enabling override value (%d) for Object Discovery advertisement interval", buf, 8u);
    LOWORD(v53) = v114;
  }

  *(v6 + 714) = v53;
LABEL_131:
  v55 = sub_10000E92C();
  sub_100007E30(buf, "LeBroadcaster");
  sub_100007E30(__p, "ExtAdvInt");
  v56 = (*(*v55 + 88))(v55, buf, __p, &v114);
  if (v114)
  {
    v57 = v56;
  }

  else
  {
    v57 = 0;
  }

  if (v117 < 0)
  {
    operator delete(__p[0]);
  }

  if (SBYTE3(v121) < 0)
  {
    operator delete(*buf);
    if (!v57)
    {
      goto LABEL_143;
    }
  }

  else if (!v57)
  {
    goto LABEL_143;
  }

  v58 = qword_100BCE9A8;
  v59 = os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEFAULT);
  v60 = v114;
  if (v59)
  {
    *buf = 67109120;
    *&buf[4] = v114;
    _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "Enabling override value (%d) for Extended advertisement interval", buf, 8u);
    v60 = v114;
  }

  *(v6 + 716) = v60;
LABEL_143:
  v61 = sub_10000E92C();
  sub_100007E30(buf, "LeBroadcaster");
  sub_100007E30(__p, "ContactAdvInt");
  v62 = (*(*v61 + 88))(v61, buf, __p, &v114);
  if (v114)
  {
    v63 = v62;
  }

  else
  {
    v63 = 0;
  }

  if (v117 < 0)
  {
    operator delete(__p[0]);
  }

  if (SBYTE3(v121) < 0)
  {
    operator delete(*buf);
    if (!v63)
    {
      goto LABEL_155;
    }
  }

  else if (!v63)
  {
    goto LABEL_155;
  }

  v64 = qword_100BCE9A8;
  v65 = os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEFAULT);
  v66 = v114;
  if (v65)
  {
    *buf = 67109120;
    *&buf[4] = v114;
    _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "Enabling override value (%d) for Contact advertisement interval", buf, 8u);
    v66 = v114;
  }

  *(v6 + 718) = v66;
LABEL_155:
  v113 = 0;
  v67 = sub_10000E92C();
  sub_100007E30(buf, "LeBroadcaster");
  sub_100007E30(__p, "AdvStatsInstance1");
  v68 = (*(*v67 + 88))(v67, buf, __p, &v113);
  if (v117 < 0)
  {
    operator delete(__p[0]);
  }

  if (SBYTE3(v121) < 0)
  {
    operator delete(*buf);
  }

  v69 = v113;
  if (!v68)
  {
    v69 = 0;
  }

  *(v6 + 752) = v69;
  v70 = sub_10000E92C();
  sub_100007E30(buf, "LeBroadcaster");
  sub_100007E30(__p, "AdvStatsEnable1");
  v71 = (*(*v70 + 88))(v70, buf, __p, &v113);
  if (v117 < 0)
  {
    operator delete(__p[0]);
  }

  if (SBYTE3(v121) < 0)
  {
    operator delete(*buf);
  }

  v72 = v113;
  if (!v71)
  {
    v72 = 1;
  }

  *(v6 + 753) = v72;
  v73 = sub_10000E92C();
  sub_100007E30(buf, "LeBroadcaster");
  sub_100007E30(__p, "AdvStatsReset1");
  v74 = (*(*v73 + 88))(v73, buf, __p, &v113);
  if (v117 < 0)
  {
    operator delete(__p[0]);
  }

  if (SBYTE3(v121) < 0)
  {
    operator delete(*buf);
  }

  v75 = v113;
  if (!v74)
  {
    v75 = 1;
  }

  *(v6 + 754) = v75;
  v76 = sub_10000E92C();
  sub_100007E30(buf, "LeBroadcaster");
  sub_100007E30(__p, "AdvStatsPeriod1");
  v77 = (*(*v76 + 88))(v76, buf, __p, &v113);
  if (v117 < 0)
  {
    operator delete(__p[0]);
  }

  if (SBYTE3(v121) < 0)
  {
    operator delete(*buf);
  }

  v78 = v113;
  if (!v77)
  {
    v78 = 60;
  }

  *(v6 + 756) = v78;
  v79 = sub_10000E92C();
  sub_100007E30(buf, "LeBroadcaster");
  sub_100007E30(__p, "AdvStatsCanWakeUpAP1");
  v80 = (*(*v79 + 88))(v79, buf, __p, &v113);
  if (v117 < 0)
  {
    operator delete(__p[0]);
  }

  if (SBYTE3(v121) < 0)
  {
    operator delete(*buf);
    if (v80)
    {
      goto LABEL_183;
    }

LABEL_185:
    *(v6 + 760) = 0;
    if (((v77 | v74 | v71 | v68) & 1) == 0)
    {
      goto LABEL_194;
    }

    goto LABEL_186;
  }

  if (!v80)
  {
    goto LABEL_185;
  }

LABEL_183:
  v80 = v113;
  *(v6 + 760) = v113;
LABEL_186:
  v81 = qword_100BCE9A8;
  if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEFAULT))
  {
    v82 = *(v6 + 752);
    if (*(v6 + 753))
    {
      v83 = "Y";
    }

    else
    {
      v83 = "N";
    }

    if (*(v6 + 754))
    {
      v84 = "Y";
    }

    else
    {
      v84 = "N";
    }

    v85 = *(v6 + 756);
    *buf = 67110146;
    *&buf[4] = v82;
    *&buf[8] = 2080;
    *&buf[10] = v83;
    v120 = 2080;
    v121 = v84;
    v122 = 1024;
    v123 = v85;
    v124 = 1024;
    v125 = v80;
    _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_DEFAULT, "Enabling Adv Stats for instance %d enable %s reset %s period %d (secs) canWakeUpAP %d", buf, 0x28u);
  }

LABEL_194:
  v86 = sub_10000E92C();
  sub_100007E30(buf, "LeBroadcaster");
  sub_100007E30(__p, "AdvStatsInstance2");
  v87 = (*(*v86 + 88))(v86, buf, __p, &v113);
  if (v117 < 0)
  {
    operator delete(__p[0]);
  }

  if (SBYTE3(v121) < 0)
  {
    operator delete(*buf);
  }

  v88 = v113;
  if (!v87)
  {
    v88 = 1;
  }

  *(v6 + 764) = v88;
  v89 = sub_10000E92C();
  sub_100007E30(buf, "LeBroadcaster");
  sub_100007E30(__p, "AdvStatsEnable2");
  v90 = (*(*v89 + 88))(v89, buf, __p, &v113);
  if (v117 < 0)
  {
    operator delete(__p[0]);
  }

  if (SBYTE3(v121) < 0)
  {
    operator delete(*buf);
  }

  v91 = v113;
  if (!v90)
  {
    v91 = 1;
  }

  *(v6 + 765) = v91;
  v92 = sub_10000E92C();
  sub_100007E30(buf, "LeBroadcaster");
  sub_100007E30(__p, "AdvStatsReset2");
  v93 = (*(*v92 + 88))(v92, buf, __p, &v113);
  if (v117 < 0)
  {
    operator delete(__p[0]);
  }

  if (SBYTE3(v121) < 0)
  {
    operator delete(*buf);
  }

  v94 = v113;
  if (!v93)
  {
    v94 = 1;
  }

  *(v6 + 766) = v94;
  v95 = sub_10000E92C();
  sub_100007E30(buf, "LeBroadcaster");
  sub_100007E30(__p, "AdvStatsPeriod2");
  v96 = (*(*v95 + 88))(v95, buf, __p, &v113);
  if (v117 < 0)
  {
    operator delete(__p[0]);
  }

  if (SBYTE3(v121) < 0)
  {
    operator delete(*buf);
  }

  v97 = v113;
  if (!v96)
  {
    v97 = 60;
  }

  *(v6 + 768) = v97;
  v98 = sub_10000E92C();
  sub_100007E30(buf, "LeBroadcaster");
  sub_100007E30(__p, "AdvStatsCanWakeUpAP2");
  v99 = (*(*v98 + 88))(v98, buf, __p, &v113);
  if (v117 < 0)
  {
    operator delete(__p[0]);
  }

  if (SBYTE3(v121) < 0)
  {
    operator delete(*buf);
    if (v99)
    {
      goto LABEL_222;
    }

LABEL_224:
    *(v6 + 772) = 0;
    if (((v96 | v93 | v90 | v87) & 1) == 0)
    {
      goto LABEL_233;
    }

    goto LABEL_225;
  }

  if (!v99)
  {
    goto LABEL_224;
  }

LABEL_222:
  v99 = v113;
  *(v6 + 772) = v113;
LABEL_225:
  v100 = qword_100BCE9A8;
  if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEFAULT))
  {
    v101 = *(v6 + 764);
    if (*(v6 + 765))
    {
      v102 = "Y";
    }

    else
    {
      v102 = "N";
    }

    if (*(v6 + 766))
    {
      v103 = "Y";
    }

    else
    {
      v103 = "N";
    }

    v104 = *(v6 + 768);
    *buf = 67110146;
    *&buf[4] = v101;
    *&buf[8] = 2080;
    *&buf[10] = v102;
    v120 = 2080;
    v121 = v103;
    v122 = 1024;
    v123 = v104;
    v124 = 1024;
    v125 = v99;
    _os_log_impl(&_mh_execute_header, v100, OS_LOG_TYPE_DEFAULT, "Enabling Adv Stats for instance %d enable %s reset %s period %d (secs) canWakeUpAP %d", buf, 0x28u);
  }

LABEL_233:
  v105 = sub_10000E92C();
  sub_100007E30(buf, "LeBroadcaster");
  sub_100007E30(__p, "HoldStablePrivateAddressThreshold");
  v106 = (*(*v105 + 128))(v105, buf, __p, v6 + 780);
  if (v117 < 0)
  {
    operator delete(__p[0]);
  }

  if (SBYTE3(v121) < 0)
  {
    operator delete(*buf);
    if (!v106)
    {
      goto LABEL_241;
    }
  }

  else if (!v106)
  {
    goto LABEL_241;
  }

  v107 = qword_100BCE9A8;
  if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEFAULT))
  {
    v108 = *(v6 + 780);
    *buf = 67109120;
    *&buf[4] = v108;
    _os_log_impl(&_mh_execute_header, v107, OS_LOG_TYPE_DEFAULT, "Warning: HoldStablePrivateAddressThreshold overridden to %u", buf, 8u);
  }

LABEL_241:
  v109 = sub_10000E92C();
  sub_100007E30(buf, "LeBroadcaster");
  sub_100007E30(__p, "LeExtendStablePrivateAddressInterval");
  v110 = (*(*v109 + 128))(v109, buf, __p, v6 + 784);
  if (v117 < 0)
  {
    operator delete(__p[0]);
  }

  if (SBYTE3(v121) < 0)
  {
    operator delete(*buf);
    if (!v110)
    {
      return;
    }
  }

  else if (!v110)
  {
    return;
  }

  v111 = qword_100BCE9A8;
  if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEFAULT))
  {
    v112 = *(v6 + 784);
    *buf = 67109120;
    *&buf[4] = v112;
    _os_log_impl(&_mh_execute_header, v111, OS_LOG_TYPE_DEFAULT, "Warning: LeExtendStablePrivateAddressInterval overriden to %u", buf, 8u);
  }
}

void sub_100728C20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100728D18(uint64_t a1)
{
  v2 = sub_10000C7D0();
  result = (*(*v2 + 3920))(v2);
  v4 = result;
  v5 = 0;
  v6 = 0;
  v7 = 1;
  do
  {
    if (v6 >= v4)
    {
      break;
    }

    v8 = v7;
    v9 = (a1 + 17136 + 12 * v5);
    if (v9[1])
    {
      v10 = qword_100BCE9A8;
      if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *v9;
        if (v9[2])
        {
          v12 = "Y";
        }

        else
        {
          v12 = "N";
        }

        v13 = *(v9 + 1);
        if (v9[8])
        {
          v14 = "Y";
        }

        else
        {
          v14 = "N";
        }

        *buf = 67110402;
        v17 = v6;
        v18 = 1024;
        v19 = v11;
        v20 = 2080;
        v21 = "Y";
        v22 = 2080;
        v23 = v12;
        v24 = 1024;
        v25 = v13;
        v26 = 2080;
        v27 = v14;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Start %dth Adv Stats for instance %d enable %s reset %s period %d (secs) canWakeUpAP %s", buf, 0x32u);
      }

      v15 = sub_10000C7D0();
      result = (*(*v15 + 1904))(v15, *v9, v9[1], v9[2], *(v9 + 1), v9[8]);
      ++v6;
      *(a1 + 17160) = 1;
    }

    v7 = 0;
    v5 = 1;
  }

  while ((v8 & 1) != 0);
  return result;
}

_BYTE *sub_100728F08(uint64_t a1)
{
  v25 = 0;
  sub_1000216B4(&v25);
  if (sub_1002D359C())
  {
    if (*(a1 + 17058))
    {
      sub_1002B42F0(*(a1 + 17058));
    }

    v2 = sub_10000C798();
    v3 = (*(*v2 + 520))(v2);
    *(a1 + 16961) = v3;
    *(a1 + 16962) &= v3;
    v4 = sub_10000E92C();
    *(a1 + 17060) = (*(*v4 + 808))(v4, a1 + 17064);
    sub_10008E164(a1, 0);
    v5 = sub_10000C798();
    v6 = (*(*v5 + 440))(v5);
    *(a1 + 17032) = 0;
    if (v6)
    {
      v7 = 0;
    }

    else
    {
      v7 = 3;
    }

    if (sub_1002D0EB0(v7, 1, (*(a1 + 144) & 0xFFFFFFFD) == 0, sub_10072926C) && os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_ERROR))
    {
      sub_10086A958();
    }

    *(a1 + 17017) = 0;
    *(a1 + 17009) = 0;
    v8 = *(a1 + 16961);
    v9 = qword_100BCE9A8;
    v10 = os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEFAULT);
    if (v8 == 1)
    {
      if (v10)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Skip Reading Legacy controller LE Advertising TX Power, will wait.", buf, 2u);
      }
    }

    else
    {
      if (v10)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Reading Legacy controller LE Advertising TX Power", buf, 2u);
      }

      sub_10024D0E4(v10, v11, v12, v13, v14, v15, v16, v17);
    }

    v18 = sub_100017E6C();
    sub_1003128B0(v18 + 384, a1 + 32);
    *(a1 + 17033) = 0;
    v19 = sub_1002D300C(sub_100729300, sub_1007293BC);
    if (v19 && os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_ERROR))
    {
      sub_10086A9C0();
    }

    v20 = sub_10000C798();
    v21 = (*(*v20 + 992))(v20);
    v22 = qword_100BCE9A8;
    if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEFAULT))
    {
      v23 = "disabled";
      if (v21)
      {
        v23 = "enabled";
      }

      *buf = 136315138;
      v27 = v23;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Secondary non-connectable advertising instance is: %s", buf, 0xCu);
    }

    sub_1002D224C(v21);
    if (v19)
    {
      sub_1000D660C();
    }
  }

  return sub_10002249C(&v25);
}

void sub_10072926C(int a1, uint64_t a2, char a3)
{
  v6 = sub_100007EE8();
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10072D204;
  v7[3] = &unk_100AF2A50;
  v8 = a1;
  v7[4] = a2;
  v9 = a3;
  sub_10000CA94(v6, v7);
}

void sub_100729300(int a1, int a2)
{
  v4 = qword_100BCE9A8;
  if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_INFO))
  {
    v5[0] = 67109376;
    v5[1] = a2;
    v6 = 1024;
    v7 = a1;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "periodicAdvStartedCb advHandle=%d, status=%d", v5, 0xEu);
  }
}

void sub_1007293BC(int a1, int a2)
{
  v4 = qword_100BCE9A8;
  if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_INFO))
  {
    v5[0] = 67109376;
    v5[1] = a2;
    v6 = 1024;
    v7 = a1;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "periodicAdvStoppedCb advHandle=%d, status=%d", v5, 0xEu);
  }
}

void sub_100729480(uint64_t a1)
{
  v1 = a1 + 0x4000;
  sub_10008E164(a1, 0);
  *(v1 + 648) = 0;
  *(v1 + 776) = 0;
}

void sub_1007294B0(uint64_t a1)
{
  v1 = a1 + 0x4000;
  sub_10008E164(a1 - 8, 0);
  *(v1 + 640) = 0;
  *(v1 + 768) = 0;
}

uint64_t sub_1007294E4(uint64_t result)
{
  if (!*(result + 17024))
  {
    sub_100088DD4();
  }

  return result;
}

_BYTE *sub_1007295D8(uint64_t a1)
{
  v5 = 0;
  sub_1000216B4(&v5);
  if (sub_1002D359C())
  {
    if (sub_1002D0518(sub_1007296D0))
    {
      if (os_log_type_enabled(qword_100BCEA18, OS_LOG_TYPE_ERROR))
      {
        sub_10086AA28();
      }
    }

    else
    {
      v2 = *(a1 + 56);
      v4[0] = _NSConcreteStackBlock;
      v4[1] = 3221225472;
      v4[2] = sub_100729830;
      v4[3] = &unk_100ADF8F8;
      v4[4] = a1;
      sub_10000CA94(v2, v4);
    }
  }

  return sub_10002249C(&v5);
}

void sub_1007296D0()
{
  *&v15[3] = 0;
  *v15 = 0;
  sub_1000841FC(v15);
  v14 = v15[1];
  v13 = v15[2];
  v12 = v15[3];
  v11 = v15[4];
  v0 = v15[5];
  v1 = v15[6];
  v2 = v15[0];
  sub_1002D2704(1, v15);
  v3 = v15[1];
  v4 = v15[2];
  v5 = v15[3];
  v6 = v15[4];
  v7 = v15[5];
  v8 = v15[6];
  v9 = v15[0];
  if (qword_100B50C68 != -1)
  {
    sub_10086AA90();
  }

  v10 = *(off_100B50C60 + 7);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100729A54;
  v16[3] = &unk_100AF2780;
  v16[4] = off_100B50C60;
  v16[5] = (v14 << 40) | (v13 << 32) | (v12 << 24) | (v11 << 16) | (v0 << 8) | v1 | (v2 << 48);
  v16[6] = (v3 << 40) | (v4 << 32) | (v5 << 24) | (v6 << 16) | (v7 << 8) | v8 | (v9 << 48);
  v16[7] = 0;
  sub_10000CA94(v10, v16);
}

uint64_t sub_100729830(uint64_t a1)
{
  v1 = *(a1 + 32);
  v16[0] = 0;
  v16[1] = 0;
  sub_100007F88(v16, v1 + 64);
  v14 = 0;
  v15[0] = 0;
  v15[1] = 0;
  sub_1000690B8(&v14, v1 + 16912);
  v2 = v14;
  if (v14 != v15)
  {
    do
    {
      if (*(v2[6] + 264) == 2)
      {
        v3 = qword_100BCE9A8;
        if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v12) = 0;
          _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "removing EN ADV", &v12, 2u);
        }

        v4 = v2[4];
        sub_100069110(v1, v4);
        v12 = 0;
        v13[0] = 0;
        v13[1] = 0;
        sub_100097CBC(&v12, v1 + 16968);
        v5 = v12;
        if (v12 != v13)
        {
          do
          {
            (*(*v5[4] + 8))(v5[4], v4, 116);
            v6 = v5[1];
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
                v7 = v5[2];
                v8 = *v7 == v5;
                v5 = v7;
              }

              while (!v8);
            }

            v5 = v7;
          }

          while (v7 != v13);
        }

        sub_10000CEDC(&v12, v13[0]);
      }

      v9 = v2[1];
      if (v9)
      {
        do
        {
          v10 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v10 = v2[2];
          v8 = *v10 == v2;
          v2 = v10;
        }

        while (!v8);
      }

      v2 = v10;
    }

    while (v10 != v15);
  }

  sub_10008667C(&v14, v15[0]);
  return sub_1000088CC(v16);
}

void sub_100729A0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_100729A54(uint64_t a1)
{
  v2 = *(a1 + 32);
  v18[0] = 0;
  v18[1] = 0;
  sub_100007F88(v18, v2 + 64);
  if (*(v2 + 17032) == 1)
  {
    v16 = 0;
    v17[0] = 0;
    v17[1] = 0;
    sub_1000690B8(&v16, v2 + 16912);
    v3 = v16;
    if (v16 != v17)
    {
      do
      {
        if (*(v3[6] + 307) == 1)
        {
          v4 = qword_100BCE9A8;
          if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEFAULT))
          {
            sub_100018384(v3[4], &__p);
            v5 = v15 >= 0 ? &__p : __p;
            *buf = 136446210;
            v20 = v5;
            _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Notifying session %{public}s that advertising stopped due to address change", buf, 0xCu);
            if (SHIBYTE(v15) < 0)
            {
              operator delete(__p);
            }
          }

          v6 = v3[4];
          sub_100069110(v2, v6);
          __p = 0;
          v14 = 0;
          v15 = 0;
          sub_100097CBC(&__p, v2 + 16968);
          v7 = __p;
          if (__p != &v14)
          {
            do
            {
              (*(*v7[4] + 8))(v7[4], v6, 116);
              v8 = v7[1];
              if (v8)
              {
                do
                {
                  v9 = v8;
                  v8 = *v8;
                }

                while (v8);
              }

              else
              {
                do
                {
                  v9 = v7[2];
                  v10 = *v9 == v7;
                  v7 = v9;
                }

                while (!v10);
              }

              v7 = v9;
            }

            while (v9 != &v14);
          }

          sub_10000CEDC(&__p, v14);
        }

        v11 = v3[1];
        if (v11)
        {
          do
          {
            v12 = v11;
            v11 = *v11;
          }

          while (v11);
        }

        else
        {
          do
          {
            v12 = v3[2];
            v10 = *v12 == v3;
            v3 = v12;
          }

          while (!v10);
        }

        v3 = v12;
      }

      while (v12 != v17);
    }

    sub_10008667C(&v16, v17[0]);
  }

  *(v2 + 17032) = 0;
  sub_100729D74(v2, *(a1 + 40), 0);
}

void sub_100729D24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_100729D74(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v4 = a2;
  v3 = a3;
  v5 = +[NSDate now];
  sub_100729E70();
}

uint64_t sub_100729E18()
{
  if (qword_100B50C68 != -1)
  {
    sub_10086ABE0();
  }

  return sub_100086C20();
}

void sub_100729EE0(id **a1)
{
  v1 = *a1;
  v3 = **a1;
  v2 = (*a1)[1];
  v3[1] = v2;
  *v2 = v3;
  a1[2] = (a1[2] - 1);

  operator delete(v1);
}

void sub_100729F34(uint64_t a1, uint64_t a2)
{
  v3 = objc_opt_new();
  [v3 setDateFormat:@"yyyy-MM-dd HH:mm:ss.SSS"];
  v4 = qword_100BCE9A8;
  if (os_log_type_enabled(qword_100BCE9A8, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *a2;
    sub_10004D9B0();
    if (v12 >= 0)
    {
      v6 = &v11;
    }

    else
    {
      v6 = v11;
    }

    v7 = [v3 stringFromDate:*(a2 + 16)];
    sub_10072A114(*a2, __p);
    if (v10 >= 0)
    {
      v8 = __p;
    }

    else
    {
      v8 = __p[0];
    }

    *buf = 67109891;
    v14 = v5;
    v15 = 2080;
    v16 = v6;
    v17 = 2112;
    v18 = v7;
    v19 = 2081;
    v20 = v8;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "statedump: ADV Instance:%d address:%s time:%@ (%{private}s)", buf, 0x26u);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }

    if (v12 < 0)
    {
      operator delete(v11);
    }
  }
}