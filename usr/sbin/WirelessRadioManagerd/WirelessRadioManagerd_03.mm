__n128 sub_1000B2E54(__n128 result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = (a5 - 20);
  v12 = (a3 - 20);
  v13 = *(a5 - 4);
  if (v13 >= *(a3 - 4))
  {
    if (*(a7 - 4) < v13)
    {
      v17 = *(a5 - 4);
      result = *v11;
      v18 = *(a7 - 4);
      *v11 = *(a7 - 20);
      *(a5 - 4) = v18;
      *(a7 - 20) = result;
      *(a7 - 4) = v17;
      if (*(a5 - 4) < *(a3 - 4))
      {
        v19 = *(a3 - 4);
        result = *v12;
        v20 = *(a5 - 4);
        *v12 = *v11;
        *(a3 - 4) = v20;
        *v11 = result;
        *(a5 - 4) = v19;
      }
    }
  }

  else
  {
    v14 = (a7 - 20);
    if (*(a7 - 4) < v13)
    {
      v15 = *(a3 - 4);
      result = *v12;
      v16 = *(a7 - 4);
      *v12 = *v14;
      *(a3 - 4) = v16;
LABEL_9:
      *v14 = result;
      *(a7 - 4) = v15;
      goto LABEL_10;
    }

    v21 = *(a3 - 4);
    result = *v12;
    v22 = *(a5 - 4);
    *v12 = *v11;
    *(a3 - 4) = v22;
    *v11 = result;
    *(a5 - 4) = v21;
    if (*(a7 - 4) < *(a5 - 4))
    {
      v15 = *(a5 - 4);
      result = *v11;
      v23 = *(a7 - 4);
      *v11 = *v14;
      *(a5 - 4) = v23;
      goto LABEL_9;
    }
  }

LABEL_10:
  v24 = (a7 - 20);
  if (*(a9 - 4) < *(a7 - 4))
  {
    v25 = *(a7 - 4);
    result = *v24;
    v26 = *(a9 - 4);
    *v24 = *(a9 - 20);
    *(a7 - 4) = v26;
    *(a9 - 20) = result;
    *(a9 - 4) = v25;
    if (*(a7 - 4) < *(a5 - 4))
    {
      v27 = *(a5 - 4);
      result = *v11;
      v28 = *(a7 - 4);
      *v11 = *v24;
      *(a5 - 4) = v28;
      *v24 = result;
      *(a7 - 4) = v27;
      if (*(a5 - 4) < *(a3 - 4))
      {
        v29 = *(a3 - 4);
        result = *v12;
        v30 = *(a5 - 4);
        *v12 = *v11;
        *(a3 - 4) = v30;
        *v11 = result;
        *(a5 - 4) = v29;
      }
    }
  }

  if (*(a11 - 4) < *(a9 - 4))
  {
    v31 = (a9 - 20);
    v32 = *(a9 - 4);
    result = *(a9 - 20);
    v33 = *(a11 - 4);
    *v31 = *(a11 - 20);
    v31[1].n128_u32[0] = v33;
    *(a11 - 20) = result;
    *(a11 - 4) = v32;
    if (*(a9 - 4) < *(a7 - 4))
    {
      v34 = *(a7 - 4);
      result = *v24;
      v35 = *(a9 - 4);
      *v24 = *v31;
      *(a7 - 4) = v35;
      *v31 = result;
      *(a9 - 4) = v34;
      if (*(a7 - 4) < *(a5 - 4))
      {
        v36 = *(a5 - 4);
        result = *v11;
        v37 = *(a7 - 4);
        *v11 = *v24;
        *(a5 - 4) = v37;
        *v24 = result;
        *(a7 - 4) = v36;
        if (*(a5 - 4) < *(a3 - 4))
        {
          v38 = *(a3 - 4);
          result = *v12;
          v39 = *(a5 - 4);
          *v12 = *v11;
          *(a3 - 4) = v39;
          *v11 = result;
          *(a5 - 4) = v38;
        }
      }
    }
  }

  return result;
}

BOOL sub_1000B30B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  v5 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - a4) >> 2);
  if (v5 > 2)
  {
    if (v5 == 3)
    {
      v9 = (a2 - 20);
      v10 = (a2 - 40);
      v11 = *(a2 - 24);
      v12 = *(a4 + 16);
      if (v11 >= *(a2 - 4))
      {
        if (v12 < v11)
        {
          v28 = *(a2 - 24);
          v29 = *v10;
          v30 = *(a4 + 16);
          *v10 = *a4;
          *(a2 - 24) = v30;
          *a4 = v29;
          *(a4 + 16) = v28;
          if (*(a2 - 24) < *(a2 - 4))
          {
            v31 = *(a2 - 4);
            v32 = *v9;
            v33 = *(a2 - 24);
            *v9 = *v10;
            *(a2 - 4) = v33;
            *v10 = v32;
            *(a2 - 24) = v31;
          }
        }

        return 1;
      }

      if (v12 >= v11)
      {
        v46 = *(a2 - 4);
        v47 = *v9;
        v48 = *(a2 - 24);
        *v9 = *v10;
        *(a2 - 4) = v48;
        *v10 = v47;
        *(a2 - 24) = v46;
        if (*(a4 + 16) < *(a2 - 24))
        {
          v49 = *(a2 - 24);
          v50 = *v10;
          v51 = *(a4 + 16);
          *v10 = *a4;
          *(a2 - 24) = v51;
          *a4 = v50;
          *(a4 + 16) = v49;
        }

        return 1;
      }

      v6 = *(a2 - 4);
      v7 = *v9;
      v13 = *(a4 + 16);
      *v9 = *a4;
      *(a2 - 4) = v13;
      goto LABEL_13;
    }

    if (v5 != 4)
    {
      if (v5 == 5)
      {
        sub_1000B2E54(a5, a1, a2, a2 - 20, a2 - 20, a2 - 40, a2 - 40, a2 - 60, a2 - 60, a3, a4 + 20);
        return 1;
      }

      goto LABEL_14;
    }

    v21 = (a2 - 20);
    v22 = (a2 - 40);
    v23 = *(a2 - 24);
    if (v23 >= *(a2 - 4))
    {
      if (*(a2 - 44) < v23)
      {
        v40 = *(a2 - 24);
        v41 = *v22;
        v42 = *(a2 - 44);
        *(a2 - 40) = *(a2 - 60);
        *(a2 - 24) = v42;
        *(a2 - 60) = v41;
        *(a2 - 44) = v40;
        if (*(a2 - 24) < *(a2 - 4))
        {
          v43 = *(a2 - 4);
          v44 = *v21;
          v45 = *(a2 - 24);
          *v21 = *v22;
          *(a2 - 4) = v45;
          *v22 = v44;
          *(a2 - 24) = v43;
        }
      }

      goto LABEL_45;
    }

    v24 = (a2 - 60);
    if (*(a2 - 44) >= v23)
    {
      v65 = *(a2 - 4);
      v66 = *v21;
      v67 = *(a2 - 24);
      *v21 = *v22;
      *(a2 - 4) = v67;
      *v22 = v66;
      *(a2 - 24) = v65;
      if (*(a2 - 44) >= *(a2 - 24))
      {
LABEL_45:
        if (*(a4 + 16) < *(a2 - 44))
        {
          v69 = a2 - 60;
          v70 = *(a2 - 44);
          v71 = *(a2 - 60);
          v72 = *(a4 + 16);
          *v69 = *a4;
          *(v69 + 16) = v72;
          *a4 = v71;
          *(a4 + 16) = v70;
          if (*(a2 - 44) < *(a2 - 24))
          {
            v73 = *(a2 - 24);
            v74 = *v22;
            v75 = *(a2 - 44);
            *v22 = *v69;
            *(a2 - 24) = v75;
            *v69 = v74;
            *(a2 - 44) = v73;
            if (*(a2 - 24) < *(a2 - 4))
            {
              v76 = *(a2 - 4);
              v77 = *v21;
              v78 = *(a2 - 24);
              *v21 = *v22;
              *(a2 - 4) = v78;
              *v22 = v77;
              *(a2 - 24) = v76;
            }
          }
        }

        return 1;
      }

      v25 = *(a2 - 24);
      v26 = *v22;
      v68 = *(a2 - 44);
      *v22 = *v24;
      *(a2 - 24) = v68;
    }

    else
    {
      v25 = *(a2 - 4);
      v26 = *v21;
      v27 = *(a2 - 44);
      *v21 = *v24;
      *(a2 - 4) = v27;
    }

    *v24 = v26;
    *(a2 - 44) = v25;
    goto LABEL_45;
  }

  if (v5 < 2)
  {
    return 1;
  }

  if (v5 == 2)
  {
    if (*(a4 + 16) < *(a2 - 4))
    {
      v6 = *(a2 - 4);
      v7 = *(a2 - 20);
      v8 = *(a4 + 16);
      *(a2 - 20) = *a4;
      *(a2 - 4) = v8;
LABEL_13:
      *a4 = v7;
      *(a4 + 16) = v6;
    }

    return 1;
  }

LABEL_14:
  v14 = (a2 - 40);
  v15 = (a2 - 20);
  v16 = *(a2 - 24);
  if (v16 >= *(a2 - 4))
  {
    if (*(a2 - 44) < v16)
    {
      v34 = *(a2 - 24);
      v35 = *v14;
      v36 = *(a2 - 44);
      *(a2 - 40) = *(a2 - 60);
      *(a2 - 24) = v36;
      *(a2 - 60) = v35;
      *(a2 - 44) = v34;
      if (*(a2 - 24) < *(a2 - 4))
      {
        v37 = *(a2 - 4);
        v38 = *v15;
        v39 = *(a2 - 24);
        *v15 = *v14;
        *(a2 - 4) = v39;
        *v14 = v38;
        *(a2 - 24) = v37;
      }
    }
  }

  else
  {
    v17 = (a2 - 60);
    if (*(a2 - 44) >= v16)
    {
      v52 = *(a2 - 4);
      v53 = *v15;
      v54 = *(a2 - 24);
      *v15 = *v14;
      *(a2 - 4) = v54;
      *v14 = v53;
      *(a2 - 24) = v52;
      if (*(a2 - 44) < *(a2 - 24))
      {
        v55 = *(a2 - 24);
        v56 = *v14;
        v57 = *(a2 - 44);
        *v14 = *v17;
        *(a2 - 24) = v57;
        *v17 = v56;
        *(a2 - 44) = v55;
      }
    }

    else
    {
      v18 = *(a2 - 4);
      v19 = *v15;
      v20 = *(a2 - 44);
      *v15 = *v17;
      *(a2 - 4) = v20;
      *v17 = v19;
      *(a2 - 44) = v18;
    }
  }

  v58 = (a2 - 60);
  if (a2 - 60 == a4)
  {
    return 1;
  }

  v59 = 0;
  while (1)
  {
    v60 = (v58 - 20);
    v61 = *(v58 - 1);
    if (v61 < *(v14 - 1))
    {
      v80 = *v60;
      v62 = v58;
      do
      {
        v63 = v14;
        v64 = *(v14 - 20);
        *(v62 - 1) = *(v14 - 1);
        *(v62 - 20) = v64;
        if (v14 == a2)
        {
          break;
        }

        v14 = (v14 + 20);
        v62 = v63;
      }

      while (v61 < *(v63 + 4));
      *(v63 - 20) = v80;
      *(v63 - 1) = v61;
      if (++v59 == 8)
      {
        break;
      }
    }

    v14 = v58;
    v58 = (v58 - 20);
    if (v60 == a4)
    {
      return 1;
    }
  }

  return v60 == a4;
}

char *sub_1000B358C(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v2 != v3)
  {
    while (*(*v2 + 8) != a2)
    {
      if (++v2 == v3)
      {
        goto LABEL_8;
      }
    }
  }

  if (v2 == v3)
  {
LABEL_8:

    sub_1000B363C();
  }

  v4 = ***v2;
  if (!v5)
  {
    __cxa_bad_cast();
  }

  return v5 + 9;
}

_BYTE **sub_1000B36DC(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *a2 + 3;
  *a2 = v5;
  result = sub_100048DF8(a2, (a1 + 9));
  v7 = (*a2 - v5);
  *v4 = v3;
  *(v4 + 1) = v7;
  return result;
}

char *sub_1000B3794(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v2 != v3)
  {
    while (*(*v2 + 8) != a2)
    {
      if (++v2 == v3)
      {
        goto LABEL_8;
      }
    }
  }

  if (v2 == v3)
  {
LABEL_8:

    sub_1000B3844();
  }

  v4 = ***v2;
  if (!v5)
  {
    __cxa_bad_cast();
  }

  return v5 + 9;
}

_BYTE **sub_1000B38E4(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *a2 + 3;
  *a2 = v5;
  result = sub_100048DF8(a2, (a1 + 9));
  v7 = (*a2 - v5);
  *v4 = v3;
  *(v4 + 1) = v7;
  return result;
}

char *sub_1000B399C(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v2 != v3)
  {
    while (*(*v2 + 8) != a2)
    {
      if (++v2 == v3)
      {
        goto LABEL_8;
      }
    }
  }

  if (v2 == v3)
  {
LABEL_8:

    sub_1000B3A4C();
  }

  v4 = ***v2;
  if (!v5)
  {
    __cxa_bad_cast();
  }

  return v5 + 9;
}

_BYTE **sub_1000B3AEC(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *a2 + 3;
  *a2 = v5;
  result = sub_100048DF8(a2, (a1 + 9));
  v7 = (*a2 - v5);
  *v4 = v3;
  *(v4 + 1) = v7;
  return result;
}

char *sub_1000B3BA4(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v2 != v3)
  {
    while (*(*v2 + 8) != a2)
    {
      if (++v2 == v3)
      {
        goto LABEL_8;
      }
    }
  }

  if (v2 == v3)
  {
LABEL_8:

    sub_1000B3C54();
  }

  v4 = ***v2;
  if (!v5)
  {
    __cxa_bad_cast();
  }

  return v5 + 9;
}

_BYTE **sub_1000B3CF4(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *a2 + 3;
  *a2 = v5;
  result = sub_100048DF8(a2, (a1 + 9));
  v7 = (*a2 - v5);
  *v4 = v3;
  *(v4 + 1) = v7;
  return result;
}

void sub_1000B3DAC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_1000B3E10(a2, v3);
  (*(v2 + 16))(v2, v3);
  qmi::MessageBase::~MessageBase(v3);
}

void sub_1000B3DFC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  qmi::MessageBase::~MessageBase(va);
  _Unwind_Resume(a1);
}

void sub_1000B3E10(uint64_t a1@<X0>, qmi::ResponseBase *a2@<X8>)
{
  if (*(a1 + 40) != 1 || *(a1 + 44) == 3)
  {
    QMIServiceMsg::serialize(&__p, a1);
    sub_1000B3F08(a2, __p, v6 - __p);
    if (__p)
    {
      v6 = __p;
      operator delete(__p);
    }
  }

  else
  {
    v4 = *(a1 + 12);
    QMIServiceMsg::getNewError(a1);

    sub_1000B3EC4(a2);
  }
}

void sub_1000B3EA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000B3EC4(uint64_t a1)
{
  v2 = qmi::MessageBase::MessageBase();
  qmi::MessageBase::validateMsgId(v2, 3u);
  return a1;
}

qmi::ResponseBase *sub_1000B3F08(qmi::ResponseBase *a1, const void *a2, unint64_t a3)
{
  v4 = qmi::ResponseBase::ResponseBase(a1, a2, a3);
  qmi::MessageBase::validateMsgId(v4, 3u);
  return a1;
}

void sub_1000B3F4C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_1000B3FB0(a2, v3);
  (*(v2 + 16))(v2, v3);
  qmi::MessageBase::~MessageBase(v3);
}

void sub_1000B3F9C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  qmi::MessageBase::~MessageBase(va);
  _Unwind_Resume(a1);
}

void sub_1000B3FB0(uint64_t a1@<X0>, qmi::ResponseBase *a2@<X8>)
{
  if (*(a1 + 40) != 1 || *(a1 + 44) == 3)
  {
    QMIServiceMsg::serialize(&__p, a1);
    sub_1000B40A8(a2, __p, v6 - __p);
    if (__p)
    {
      v6 = __p;
      operator delete(__p);
    }
  }

  else
  {
    v4 = *(a1 + 12);
    QMIServiceMsg::getNewError(a1);

    sub_1000B4064(a2);
  }
}

void sub_1000B4048(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000B4064(uint64_t a1)
{
  v2 = qmi::MessageBase::MessageBase();
  qmi::MessageBase::validateMsgId(v2, 0x5570u);
  return a1;
}

qmi::ResponseBase *sub_1000B40A8(qmi::ResponseBase *a1, const void *a2, unint64_t a3)
{
  v4 = qmi::ResponseBase::ResponseBase(a1, a2, a3);
  qmi::MessageBase::validateMsgId(v4, 0x5570u);
  return a1;
}

char *sub_1000B40EC(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v2 != v3)
  {
    while (*(*v2 + 8) != a2)
    {
      if (++v2 == v3)
      {
        goto LABEL_8;
      }
    }
  }

  if (v2 == v3)
  {
LABEL_8:

    sub_1000B419C();
  }

  v4 = ***v2;
  if (!v5)
  {
    __cxa_bad_cast();
  }

  return v5 + 16;
}

void *sub_1000B4220(void *a1)
{
  *a1 = off_1002409E0;
  v2 = a1[2];
  if (v2)
  {
    a1[3] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_1000B4270(void *a1)
{
  *a1 = off_1002409E0;
  v2 = a1[2];
  if (v2)
  {
    a1[3] = v2;
    operator delete(v2);
  }

  operator delete();
}

_BYTE **sub_1000B42E8(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *a2 + 3;
  *a2 = v5;
  result = sub_1000493E0(a2, (a1 + 16));
  v7 = (*a2 - v5);
  *v4 = v3;
  *(v4 + 1) = v7;
  return result;
}

uint64_t sub_1000B43E4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    sub_1000B4460(result, a4);
  }

  return result;
}

void sub_1000B4444(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000B4460(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    sub_100049E54(a1, a2);
  }

  sub_100049DAC();
}

char *sub_1000B4498(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v2 != v3)
  {
    while (*(*v2 + 8) != a2)
    {
      if (++v2 == v3)
      {
        goto LABEL_8;
      }
    }
  }

  if (v2 == v3)
  {
LABEL_8:

    sub_1000B4548();
  }

  v4 = ***v2;
  if (!v5)
  {
    __cxa_bad_cast();
  }

  return v5 + 16;
}

void *sub_1000B45CC(void *a1)
{
  *a1 = off_100240A30;
  v2 = a1[2];
  if (v2)
  {
    a1[3] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_1000B461C(void *a1)
{
  *a1 = off_100240A30;
  v2 = a1[2];
  if (v2)
  {
    a1[3] = v2;
    operator delete(v2);
  }

  operator delete();
}

_BYTE **sub_1000B4694(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *a2 + 3;
  *a2 = v5;
  result = sub_1000493E0(a2, (a1 + 16));
  v7 = (*a2 - v5);
  *v4 = v3;
  *(v4 + 1) = v7;
  return result;
}

char *sub_1000B4790(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v2 != v3)
  {
    while (*(*v2 + 8) != a2)
    {
      if (++v2 == v3)
      {
        goto LABEL_8;
      }
    }
  }

  if (v2 == v3)
  {
LABEL_8:

    sub_1000B4840();
  }

  v4 = ***v2;
  if (!v5)
  {
    __cxa_bad_cast();
  }

  return v5 + 16;
}

void *sub_1000B48C4(void *a1)
{
  *a1 = off_100240A80;
  v2 = a1[2];
  if (v2)
  {
    a1[3] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_1000B4914(void *a1)
{
  *a1 = off_100240A80;
  v2 = a1[2];
  if (v2)
  {
    a1[3] = v2;
    operator delete(v2);
  }

  operator delete();
}

_BYTE **sub_1000B498C(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *a2 + 3;
  *a2 = v5;
  result = sub_1000493E0(a2, (a1 + 16));
  v7 = (*a2 - v5);
  *v4 = v3;
  *(v4 + 1) = v7;
  return result;
}

char *sub_1000B4A88(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v2 != v3)
  {
    while (*(*v2 + 8) != a2)
    {
      if (++v2 == v3)
      {
        goto LABEL_8;
      }
    }
  }

  if (v2 == v3)
  {
LABEL_8:

    sub_1000B4B38();
  }

  v4 = ***v2;
  if (!v5)
  {
    __cxa_bad_cast();
  }

  return v5 + 16;
}

void *sub_1000B4BBC(void *a1)
{
  *a1 = off_100240AD0;
  v2 = a1[2];
  if (v2)
  {
    a1[3] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_1000B4C0C(void *a1)
{
  *a1 = off_100240AD0;
  v2 = a1[2];
  if (v2)
  {
    a1[3] = v2;
    operator delete(v2);
  }

  operator delete();
}

_BYTE **sub_1000B4C84(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *a2 + 3;
  *a2 = v5;
  result = sub_1000493E0(a2, (a1 + 16));
  v7 = (*a2 - v5);
  *v4 = v3;
  *(v4 + 1) = v7;
  return result;
}

char *sub_1000B4D80(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v2 != v3)
  {
    while (*(*v2 + 8) != a2)
    {
      if (++v2 == v3)
      {
        goto LABEL_8;
      }
    }
  }

  if (v2 == v3)
  {
LABEL_8:

    sub_1000B4E30();
  }

  v4 = ***v2;
  if (!v5)
  {
    __cxa_bad_cast();
  }

  return v5 + 16;
}

void *sub_1000B4EB4(void *a1)
{
  *a1 = off_100240B20;
  v2 = a1[2];
  if (v2)
  {
    a1[3] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_1000B4F04(void *a1)
{
  *a1 = off_100240B20;
  v2 = a1[2];
  if (v2)
  {
    a1[3] = v2;
    operator delete(v2);
  }

  operator delete();
}

_BYTE **sub_1000B4F7C(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *a2 + 3;
  *a2 = v5;
  result = sub_1000493E0(a2, (a1 + 16));
  v7 = (*a2 - v5);
  *v4 = v3;
  *(v4 + 1) = v7;
  return result;
}

char *sub_1000B5078(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v2 != v3)
  {
    while (*(*v2 + 8) != a2)
    {
      if (++v2 == v3)
      {
        goto LABEL_8;
      }
    }
  }

  if (v2 == v3)
  {
LABEL_8:

    sub_1000B5128();
  }

  v4 = ***v2;
  if (!v5)
  {
    __cxa_bad_cast();
  }

  return v5 + 16;
}

void *sub_1000B51AC(void *a1)
{
  *a1 = off_100240B70;
  v2 = a1[2];
  if (v2)
  {
    a1[3] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_1000B51FC(void *a1)
{
  *a1 = off_100240B70;
  v2 = a1[2];
  if (v2)
  {
    a1[3] = v2;
    operator delete(v2);
  }

  operator delete();
}

_BYTE **sub_1000B5274(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *a2 + 3;
  *a2 = v5;
  result = sub_1000493E0(a2, (a1 + 16));
  v7 = (*a2 - v5);
  *v4 = v3;
  *(v4 + 1) = v7;
  return result;
}

char *sub_1000B5370(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v2 != v3)
  {
    while (*(*v2 + 8) != a2)
    {
      if (++v2 == v3)
      {
        goto LABEL_8;
      }
    }
  }

  if (v2 == v3)
  {
LABEL_8:

    sub_1000B5420();
  }

  v4 = ***v2;
  if (!v5)
  {
    __cxa_bad_cast();
  }

  return v5 + 16;
}

void *sub_1000B54A4(void *a1)
{
  *a1 = off_100240BC0;
  v2 = a1[2];
  if (v2)
  {
    a1[3] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_1000B54F4(void *a1)
{
  *a1 = off_100240BC0;
  v2 = a1[2];
  if (v2)
  {
    a1[3] = v2;
    operator delete(v2);
  }

  operator delete();
}

_BYTE **sub_1000B556C(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *a2 + 3;
  *a2 = v5;
  result = sub_1000493E0(a2, (a1 + 16));
  v7 = (*a2 - v5);
  *v4 = v3;
  *(v4 + 1) = v7;
  return result;
}

char *sub_1000B5668(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v2 != v3)
  {
    while (*(*v2 + 8) != a2)
    {
      if (++v2 == v3)
      {
        goto LABEL_8;
      }
    }
  }

  if (v2 == v3)
  {
LABEL_8:

    sub_1000B5718();
  }

  v4 = ***v2;
  if (!v5)
  {
    __cxa_bad_cast();
  }

  return v5 + 16;
}

void *sub_1000B579C(void *a1)
{
  *a1 = off_100240C10;
  v2 = a1[2];
  if (v2)
  {
    a1[3] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_1000B57EC(void *a1)
{
  *a1 = off_100240C10;
  v2 = a1[2];
  if (v2)
  {
    a1[3] = v2;
    operator delete(v2);
  }

  operator delete();
}

_BYTE **sub_1000B5864(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *a2 + 3;
  *a2 = v5;
  result = sub_1000493E0(a2, (a1 + 16));
  v7 = (*a2 - v5);
  *v4 = v3;
  *(v4 + 1) = v7;
  return result;
}

char *sub_1000B5960(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v2 != v3)
  {
    while (*(*v2 + 8) != a2)
    {
      if (++v2 == v3)
      {
        goto LABEL_8;
      }
    }
  }

  if (v2 == v3)
  {
LABEL_8:

    sub_1000B5A10();
  }

  v4 = ***v2;
  if (!v5)
  {
    __cxa_bad_cast();
  }

  return v5 + 16;
}

void *sub_1000B5A94(void *a1)
{
  *a1 = off_100240C60;
  v2 = a1[2];
  if (v2)
  {
    a1[3] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_1000B5AE4(void *a1)
{
  *a1 = off_100240C60;
  v2 = a1[2];
  if (v2)
  {
    a1[3] = v2;
    operator delete(v2);
  }

  operator delete();
}

_BYTE **sub_1000B5B5C(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *a2 + 3;
  *a2 = v5;
  result = sub_1000493E0(a2, (a1 + 16));
  v7 = (*a2 - v5);
  *v4 = v3;
  *(v4 + 1) = v7;
  return result;
}

char *sub_1000B5C58(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v2 != v3)
  {
    while (*(*v2 + 8) != a2)
    {
      if (++v2 == v3)
      {
        goto LABEL_8;
      }
    }
  }

  if (v2 == v3)
  {
LABEL_8:

    sub_1000B5D08();
  }

  v4 = ***v2;
  if (!v5)
  {
    __cxa_bad_cast();
  }

  return v5 + 9;
}

_BYTE **sub_1000B5DA8(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *a2 + 3;
  *a2 = v5;
  result = sub_100014648(a2, (a1 + 9));
  v7 = (*a2 - v5);
  *v4 = v3;
  *(v4 + 1) = v7;
  return result;
}

char *sub_1000B5E68(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v2 != v3)
  {
    while (*(*v2 + 8) != a2)
    {
      if (++v2 == v3)
      {
        goto LABEL_8;
      }
    }
  }

  if (v2 == v3)
  {
LABEL_8:

    sub_1000B5F18();
  }

  v4 = ***v2;
  if (!v5)
  {
    __cxa_bad_cast();
  }

  return v5 + 9;
}

_BYTE **sub_1000B5FB8(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *a2 + 3;
  *a2 = v5;
  result = sub_100014648(a2, (a1 + 9));
  v7 = (*a2 - v5);
  *v4 = v3;
  *(v4 + 1) = v7;
  return result;
}

void sub_1000B6078(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_1000B60DC(a2, v3);
  (*(v2 + 16))(v2, v3);
  qmi::MessageBase::~MessageBase(v3);
}

void sub_1000B60C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  qmi::MessageBase::~MessageBase(va);
  _Unwind_Resume(a1);
}

void sub_1000B60DC(uint64_t a1@<X0>, qmi::ResponseBase *a2@<X8>)
{
  if (*(a1 + 40) != 1 || *(a1 + 44) == 3)
  {
    QMIServiceMsg::serialize(&__p, a1);
    sub_1000B61D4(a2, __p, v6 - __p);
    if (__p)
    {
      v6 = __p;
      operator delete(__p);
    }
  }

  else
  {
    v4 = *(a1 + 12);
    QMIServiceMsg::getNewError(a1);

    sub_1000B6190(a2);
  }
}

void sub_1000B6174(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000B6190(uint64_t a1)
{
  v2 = qmi::MessageBase::MessageBase();
  qmi::MessageBase::validateMsgId(v2, 0x6Cu);
  return a1;
}

qmi::ResponseBase *sub_1000B61D4(qmi::ResponseBase *a1, const void *a2, unint64_t a3)
{
  v4 = qmi::ResponseBase::ResponseBase(a1, a2, a3);
  qmi::MessageBase::validateMsgId(v4, 0x6Cu);
  return a1;
}

BOOL sub_1000B6218(uint64_t a1, tlv *a2, uint64_t a3, unint64_t a4)
{
  v7 = a2;
  sub_100048E0C(&v7, a3, a3, a4);
  v5 = v7;
  if (v7)
  {
    (*(*a4 + 16))();
  }

  return v5 != 0;
}

uint64_t sub_1000B6278(uint64_t a1)
{
  v2 = qmi::MessageBase::MessageBase();
  qmi::MessageBase::validateMsgId(v2, 0x51u);
  return a1;
}

uint64_t sub_1000B62BC(qmi::MessageBase *a1, uint64_t a2, unint64_t a3)
{
  result = qmi::MessageBase::findTlvValue(a1);
  if (result)
  {
    v8 = result;
    v9 = v7;
    if (sub_1000B6360(a1, result, v7, a3))
    {
      return 1;
    }

    else
    {
      v10 = qmi::MessageBase::sParsingErrorHandler;
      v11 = *a1;

      return v10(v11, a2, v8, v9);
    }
  }

  return result;
}

BOOL sub_1000B6360(uint64_t a1, tlv *a2, uint64_t a3, unint64_t a4)
{
  v7 = a2;
  sub_100089880(&v7, a3, a3, a4);
  v5 = v7;
  if (v7)
  {
    (*(*a4 + 16))();
  }

  return v5 != 0;
}

void sub_1000B63C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_1000B6424(a2, v3);
  (*(v2 + 16))(v2, v3);
  qmi::MessageBase::~MessageBase(v3);
}

void sub_1000B6410(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  qmi::MessageBase::~MessageBase(va);
  _Unwind_Resume(a1);
}

void sub_1000B6424(uint64_t a1@<X0>, qmi::MessageBase *a2@<X8>)
{
  if (*(a1 + 40) != 1 || *(a1 + 44) == 3)
  {
    QMIServiceMsg::serialize(&__p, a1);
    sub_1000B651C(a2, __p, v6 - __p);
    if (__p)
    {
      v6 = __p;
      operator delete(__p);
    }
  }

  else
  {
    v4 = *(a1 + 12);
    QMIServiceMsg::getNewError(a1);

    sub_1000B64D8(a2);
  }
}

void sub_1000B64BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000B64D8(uint64_t a1)
{
  v2 = qmi::MessageBase::MessageBase();
  qmi::MessageBase::validateMsgId(v2, 0x5570u);
  return a1;
}

qmi::MessageBase *sub_1000B651C(qmi::MessageBase *a1, const void *a2, unint64_t a3)
{
  v4 = qmi::MessageBase::MessageBase(a1, a2, a3);
  qmi::MessageBase::validateMsgId(v4, 0x5570u);
  return a1;
}

uint64_t sub_1000B6560(qmi::MessageBase *a1, uint64_t a2, unint64_t a3)
{
  result = qmi::MessageBase::findTlvValue(a1);
  if (result)
  {
    v8 = result;
    v9 = v7;
    if (sub_1000B6604(a1, result, v7, a3))
    {
      return 1;
    }

    else
    {
      v10 = qmi::MessageBase::sParsingErrorHandler;
      v11 = *a1;

      return v10(v11, a2, v8, v9);
    }
  }

  return result;
}

BOOL sub_1000B6604(uint64_t a1, uint64_t a2, int a3, unint64_t a4)
{
  v8 = a2;
  sub_100089A94(&v8, a3, a4, v7);
  v5 = v8;
  if (v8)
  {
    (*(*a4 + 16))();
  }

  return v5 != 0;
}

void sub_1000B6664(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_1000B66C8(a2, v3);
  (*(v2 + 16))(v2, v3);
  qmi::MessageBase::~MessageBase(v3);
}

void sub_1000B66B4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  qmi::MessageBase::~MessageBase(va);
  _Unwind_Resume(a1);
}

void sub_1000B66C8(uint64_t a1@<X0>, qmi::MessageBase *a2@<X8>)
{
  if (*(a1 + 40) != 1 || *(a1 + 44) == 3)
  {
    QMIServiceMsg::serialize(&__p, a1);
    sub_1000B67C0(a2, __p, v6 - __p);
    if (__p)
    {
      v6 = __p;
      operator delete(__p);
    }
  }

  else
  {
    v4 = *(a1 + 12);
    QMIServiceMsg::getNewError(a1);

    sub_1000B677C(a2);
  }
}

void sub_1000B6760(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000B677C(uint64_t a1)
{
  v2 = qmi::MessageBase::MessageBase();
  qmi::MessageBase::validateMsgId(v2, 0x5571u);
  return a1;
}

qmi::MessageBase *sub_1000B67C0(qmi::MessageBase *a1, const void *a2, unint64_t a3)
{
  v4 = qmi::MessageBase::MessageBase(a1, a2, a3);
  qmi::MessageBase::validateMsgId(v4, 0x5571u);
  return a1;
}

char *sub_1000B6804(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v2 != v3)
  {
    while (*(*v2 + 8) != a2)
    {
      if (++v2 == v3)
      {
        goto LABEL_8;
      }
    }
  }

  if (v2 == v3)
  {
LABEL_8:

    sub_1000B68B4();
  }

  v4 = ***v2;
  if (!v5)
  {
    __cxa_bad_cast();
  }

  return v5 + 9;
}

_BYTE **sub_1000B6954(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *a2 + 3;
  *a2 = v5;
  result = sub_100048DF8(a2, (a1 + 9));
  v7 = (*a2 - v5);
  *v4 = v3;
  *(v4 + 1) = v7;
  return result;
}

void sub_1000B6A0C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_1000B6A70(a2, v3);
  (*(v2 + 16))(v2, v3);
  qmi::MessageBase::~MessageBase(v3);
}

void sub_1000B6A5C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  qmi::MessageBase::~MessageBase(va);
  _Unwind_Resume(a1);
}

void sub_1000B6A70(uint64_t a1@<X0>, qmi::ResponseBase *a2@<X8>)
{
  if (*(a1 + 40) != 1 || *(a1 + 44) == 3)
  {
    QMIServiceMsg::serialize(&__p, a1);
    sub_1000B6B68(a2, __p, v6 - __p);
    if (__p)
    {
      v6 = __p;
      operator delete(__p);
    }
  }

  else
  {
    v4 = *(a1 + 12);
    QMIServiceMsg::getNewError(a1);

    sub_1000B6B24(a2);
  }
}

void sub_1000B6B08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000B6B24(uint64_t a1)
{
  v2 = qmi::MessageBase::MessageBase();
  qmi::MessageBase::validateMsgId(v2, 0x45u);
  return a1;
}

qmi::ResponseBase *sub_1000B6B68(qmi::ResponseBase *a1, const void *a2, unint64_t a3)
{
  v4 = qmi::ResponseBase::ResponseBase(a1, a2, a3);
  qmi::MessageBase::validateMsgId(v4, 0x45u);
  return a1;
}

char *sub_1000B6BAC(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v2 != v3)
  {
    while (*(*v2 + 8) != a2)
    {
      if (++v2 == v3)
      {
        goto LABEL_8;
      }
    }
  }

  if (v2 == v3)
  {
LABEL_8:

    sub_1000B6C5C();
  }

  v4 = ***v2;
  if (!v5)
  {
    __cxa_bad_cast();
  }

  return v5 + 9;
}

_BYTE **sub_1000B6CFC(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *a2 + 3;
  *a2 = v5;
  result = sub_100014648(a2, (a1 + 9));
  v7 = (*a2 - v5);
  *v4 = v3;
  *(v4 + 1) = v7;
  return result;
}

char *sub_1000B6DBC(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v2 != v3)
  {
    while (*(*v2 + 8) != a2)
    {
      if (++v2 == v3)
      {
        goto LABEL_8;
      }
    }
  }

  if (v2 == v3)
  {
LABEL_8:

    sub_1000B6E6C();
  }

  v4 = ***v2;
  if (!v5)
  {
    __cxa_bad_cast();
  }

  return v5 + 9;
}

_BYTE **sub_1000B6F0C(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *a2 + 3;
  *a2 = v5;
  result = sub_100014648(a2, (a1 + 9));
  v7 = (*a2 - v5);
  *v4 = v3;
  *(v4 + 1) = v7;
  return result;
}

char *sub_1000B6FCC(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v2 != v3)
  {
    while (*(*v2 + 8) != a2)
    {
      if (++v2 == v3)
      {
        goto LABEL_8;
      }
    }
  }

  if (v2 == v3)
  {
LABEL_8:

    sub_1000B707C();
  }

  v4 = ***v2;
  if (!v5)
  {
    __cxa_bad_cast();
  }

  return v5 + 9;
}

_BYTE **sub_1000B711C(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *a2 + 3;
  *a2 = v5;
  result = sub_100014648(a2, (a1 + 9));
  v7 = (*a2 - v5);
  *v4 = v3;
  *(v4 + 1) = v7;
  return result;
}

char *sub_1000B71DC(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v2 != v3)
  {
    while (*(*v2 + 8) != a2)
    {
      if (++v2 == v3)
      {
        goto LABEL_8;
      }
    }
  }

  if (v2 == v3)
  {
LABEL_8:

    sub_1000B728C();
  }

  v4 = ***v2;
  if (!v5)
  {
    __cxa_bad_cast();
  }

  return v5 + 9;
}

_BYTE **sub_1000B732C(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *a2 + 3;
  *a2 = v5;
  result = sub_100014648(a2, (a1 + 9));
  v7 = (*a2 - v5);
  *v4 = v3;
  *(v4 + 1) = v7;
  return result;
}

char *sub_1000B73EC(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v2 != v3)
  {
    while (*(*v2 + 8) != a2)
    {
      if (++v2 == v3)
      {
        goto LABEL_8;
      }
    }
  }

  if (v2 == v3)
  {
LABEL_8:

    sub_1000B749C();
  }

  v4 = ***v2;
  if (!v5)
  {
    __cxa_bad_cast();
  }

  return v5 + 10;
}

uint64_t *sub_1000B7540(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *a2 + 3;
  *a2 = v5;
  result = sub_100048BDC(a2, a1 + 10);
  v7 = *a2 - v5;
  *v4 = v3;
  *(v4 + 1) = v7;
  return result;
}

char *sub_1000B7600(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v2 != v3)
  {
    while (*(*v2 + 8) != a2)
    {
      if (++v2 == v3)
      {
        goto LABEL_8;
      }
    }
  }

  if (v2 == v3)
  {
LABEL_8:

    sub_1000B76B0();
  }

  v4 = ***v2;
  if (!v5)
  {
    __cxa_bad_cast();
  }

  return v5 + 9;
}

_BYTE **sub_1000B7750(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *a2 + 3;
  *a2 = v5;
  result = sub_100014648(a2, (a1 + 9));
  v7 = (*a2 - v5);
  *v4 = v3;
  *(v4 + 1) = v7;
  return result;
}

void sub_1000B7810(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_1000B7874(a2, v3);
  (*(v2 + 16))(v2, v3);
  qmi::MessageBase::~MessageBase(v3);
}

void sub_1000B7860(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  qmi::MessageBase::~MessageBase(va);
  _Unwind_Resume(a1);
}

void sub_1000B7874(uint64_t a1@<X0>, qmi::ResponseBase *a2@<X8>)
{
  if (*(a1 + 40) != 1 || *(a1 + 44) == 3)
  {
    QMIServiceMsg::serialize(&__p, a1);
    sub_1000B796C(a2, __p, v6 - __p);
    if (__p)
    {
      v6 = __p;
      operator delete(__p);
    }
  }

  else
  {
    v4 = *(a1 + 12);
    QMIServiceMsg::getNewError(a1);

    sub_1000B7928(a2);
  }
}

void sub_1000B790C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000B7928(uint64_t a1)
{
  v2 = qmi::MessageBase::MessageBase();
  qmi::MessageBase::validateMsgId(v2, 2u);
  return a1;
}

qmi::ResponseBase *sub_1000B796C(qmi::ResponseBase *a1, const void *a2, unint64_t a3)
{
  v4 = qmi::ResponseBase::ResponseBase(a1, a2, a3);
  qmi::MessageBase::validateMsgId(v4, 2u);
  return a1;
}

char *sub_1000B79B0(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v2 != v3)
  {
    while (*(*v2 + 8) != a2)
    {
      if (++v2 == v3)
      {
        goto LABEL_8;
      }
    }
  }

  if (v2 == v3)
  {
LABEL_8:

    sub_1000B7A60();
  }

  v4 = ***v2;
  if (!v5)
  {
    __cxa_bad_cast();
  }

  return v5 + 9;
}

_BYTE **sub_1000B7B00(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *a2 + 3;
  *a2 = v5;
  result = sub_100089108(a2, (a1 + 9));
  v7 = (*a2 - v5);
  *v4 = v3;
  *(v4 + 1) = v7;
  return result;
}

uint64_t sub_1000B7BC0(uint64_t a1)
{
  v2 = qmi::MessageBase::MessageBase();
  qmi::MessageBase::validateMsgId(v2, 0x5568u);
  return a1;
}

char *sub_1000B7C6C(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v2 != v3)
  {
    while (*(*v2 + 8) != a2)
    {
      if (++v2 == v3)
      {
        goto LABEL_8;
      }
    }
  }

  if (v2 == v3)
  {
LABEL_8:

    sub_1000B7D1C();
  }

  v4 = ***v2;
  if (!v5)
  {
    __cxa_bad_cast();
  }

  return v5 + 10;
}

uint64_t *sub_1000B7DC0(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *a2 + 3;
  *a2 = v5;
  result = sub_100048BDC(a2, a1 + 10);
  v7 = *a2 - v5;
  *v4 = v3;
  *(v4 + 1) = v7;
  return result;
}

char *sub_1000B7E80(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v2 != v3)
  {
    while (*(*v2 + 8) != a2)
    {
      if (++v2 == v3)
      {
        goto LABEL_8;
      }
    }
  }

  if (v2 == v3)
  {
LABEL_8:

    sub_1000B7F30();
  }

  v4 = ***v2;
  if (!v5)
  {
    __cxa_bad_cast();
  }

  return v5 + 9;
}

_BYTE **sub_1000B7FD0(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *a2 + 3;
  *a2 = v5;
  result = sub_100048DF8(a2, (a1 + 9));
  v7 = (*a2 - v5);
  *v4 = v3;
  *(v4 + 1) = v7;
  return result;
}

char *sub_1000B8088(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v2 != v3)
  {
    while (*(*v2 + 8) != a2)
    {
      if (++v2 == v3)
      {
        goto LABEL_8;
      }
    }
  }

  if (v2 == v3)
  {
LABEL_8:

    sub_1000B8138();
  }

  v4 = ***v2;
  if (!v5)
  {
    __cxa_bad_cast();
  }

  return v5 + 9;
}

_BYTE **sub_1000B81D8(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *a2 + 3;
  *a2 = v5;
  result = sub_100048DF8(a2, (a1 + 9));
  v7 = (*a2 - v5);
  *v4 = v3;
  *(v4 + 1) = v7;
  return result;
}

char *sub_1000B8290(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v2 != v3)
  {
    while (*(*v2 + 8) != a2)
    {
      if (++v2 == v3)
      {
        goto LABEL_8;
      }
    }
  }

  if (v2 == v3)
  {
LABEL_8:

    sub_1000B8340();
  }

  v4 = ***v2;
  if (!v5)
  {
    __cxa_bad_cast();
  }

  return v5 + 9;
}

_BYTE **sub_1000B83E0(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *a2 + 3;
  *a2 = v5;
  result = sub_100048DF8(a2, (a1 + 9));
  v7 = (*a2 - v5);
  *v4 = v3;
  *(v4 + 1) = v7;
  return result;
}

char *sub_1000B8498(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v2 != v3)
  {
    while (*(*v2 + 8) != a2)
    {
      if (++v2 == v3)
      {
        goto LABEL_8;
      }
    }
  }

  if (v2 == v3)
  {
LABEL_8:

    sub_1000B8548();
  }

  v4 = ***v2;
  if (!v5)
  {
    __cxa_bad_cast();
  }

  return v5 + 9;
}

_BYTE **sub_1000B85E8(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *a2 + 3;
  *a2 = v5;
  result = sub_100048DF8(a2, (a1 + 9));
  v7 = (*a2 - v5);
  *v4 = v3;
  *(v4 + 1) = v7;
  return result;
}

void sub_1000B86A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_1000B8704(a2, v3);
  (*(v2 + 16))(v2, v3);
  qmi::MessageBase::~MessageBase(v3);
}

void sub_1000B86F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  qmi::MessageBase::~MessageBase(va);
  _Unwind_Resume(a1);
}

void sub_1000B8704(uint64_t a1@<X0>, qmi::ResponseBase *a2@<X8>)
{
  if (*(a1 + 40) != 1 || *(a1 + 44) == 3)
  {
    QMIServiceMsg::serialize(&__p, a1);
    sub_1000B87FC(a2, __p, v6 - __p);
    if (__p)
    {
      v6 = __p;
      operator delete(__p);
    }
  }

  else
  {
    v4 = *(a1 + 12);
    QMIServiceMsg::getNewError(a1);

    sub_1000B87B8(a2);
  }
}

void sub_1000B879C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000B87B8(uint64_t a1)
{
  v2 = qmi::MessageBase::MessageBase();
  qmi::MessageBase::validateMsgId(v2, 0x556Au);
  return a1;
}

qmi::ResponseBase *sub_1000B87FC(qmi::ResponseBase *a1, const void *a2, unint64_t a3)
{
  v4 = qmi::ResponseBase::ResponseBase(a1, a2, a3);
  qmi::MessageBase::validateMsgId(v4, 0x556Au);
  return a1;
}

uint64_t sub_1000B8840(qmi::MessageBase *a1, uint64_t a2, unint64_t a3)
{
  result = qmi::MessageBase::findTlvValue(a1);
  if (result)
  {
    v8 = result;
    v9 = v7;
    if (sub_1000B88E4(a1, result, v7, a3))
    {
      return 1;
    }

    else
    {
      v10 = qmi::MessageBase::sParsingErrorHandler;
      v11 = *a1;

      return v10(v11, a2, v8, v9);
    }
  }

  return result;
}

BOOL sub_1000B88E4(uint64_t a1, tlv *a2, uint64_t a3, unint64_t a4)
{
  v7 = a2;
  sub_1000897D0(&v7, a3, a3, a4);
  v5 = v7;
  if (v7)
  {
    (*(*a4 + 16))();
  }

  return v5 != 0;
}

void sub_1000B8944(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_1000B89A8(a2, v3);
  (*(v2 + 16))(v2, v3);
  qmi::MessageBase::~MessageBase(v3);
}

void sub_1000B8994(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  qmi::MessageBase::~MessageBase(va);
  _Unwind_Resume(a1);
}

void sub_1000B89A8(uint64_t a1@<X0>, qmi::MessageBase *a2@<X8>)
{
  if (*(a1 + 40) != 1 || *(a1 + 44) == 3)
  {
    QMIServiceMsg::serialize(&__p, a1);
    sub_1000B8AA0(a2, __p, v6 - __p);
    if (__p)
    {
      v6 = __p;
      operator delete(__p);
    }
  }

  else
  {
    v4 = *(a1 + 12);
    QMIServiceMsg::getNewError(a1);

    sub_1000B8A5C(a2);
  }
}

void sub_1000B8A40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000B8A5C(uint64_t a1)
{
  v2 = qmi::MessageBase::MessageBase();
  qmi::MessageBase::validateMsgId(v2, 0x556Cu);
  return a1;
}

qmi::MessageBase *sub_1000B8AA0(qmi::MessageBase *a1, const void *a2, unint64_t a3)
{
  v4 = qmi::MessageBase::MessageBase(a1, a2, a3);
  qmi::MessageBase::validateMsgId(v4, 0x556Cu);
  return a1;
}

uint64_t sub_1000B8AE4(qmi::MessageBase *a1, uint64_t a2, void *a3)
{
  result = qmi::MessageBase::findTlvValue(a1);
  if (result)
  {
    v8 = result;
    v9 = v7;
    if (sub_1000B8B88(a1, result, v7, a3))
    {
      return 1;
    }

    else
    {
      v10 = qmi::MessageBase::sParsingErrorHandler;
      v11 = *a1;

      return v10(v11, a2, v8, v9);
    }
  }

  return result;
}

BOOL sub_1000B8B88(uint64_t a1, tlv *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  sub_1000886F8(&v7, a3, a3, a4);
  v5 = v7;
  if (v7)
  {
    (*(*a4 + 16))(*a4);
  }

  return v5 != 0;
}

uint64_t sub_1000B8BE8(qmi::MessageBase *a1, uint64_t a2, void *a3)
{
  result = qmi::MessageBase::findTlvValue(a1);
  if (result)
  {
    v8 = result;
    v9 = v7;
    if (sub_1000B8C8C(a1, result, v7, a3))
    {
      return 1;
    }

    else
    {
      v10 = qmi::MessageBase::sParsingErrorHandler;
      v11 = *a1;

      return v10(v11, a2, v8, v9);
    }
  }

  return result;
}

BOOL sub_1000B8C8C(uint64_t a1, tlv *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  sub_1000887E0(&v7, a3, a3, a4);
  v5 = v7;
  if (v7)
  {
    (*(*a4 + 16))(*a4);
  }

  return v5 != 0;
}

void sub_1000B8CEC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_1000B8D50(a2, v3);
  (*(v2 + 16))(v2, v3);
  qmi::MessageBase::~MessageBase(v3);
}

void sub_1000B8D3C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  qmi::MessageBase::~MessageBase(va);
  _Unwind_Resume(a1);
}

void sub_1000B8D50(uint64_t a1@<X0>, qmi::MessageBase *a2@<X8>)
{
  if (*(a1 + 40) != 1 || *(a1 + 44) == 3)
  {
    QMIServiceMsg::serialize(&__p, a1);
    sub_1000B8E48(a2, __p, v6 - __p);
    if (__p)
    {
      v6 = __p;
      operator delete(__p);
    }
  }

  else
  {
    v4 = *(a1 + 12);
    QMIServiceMsg::getNewError(a1);

    sub_1000B8E04(a2);
  }
}

void sub_1000B8DE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000B8E04(uint64_t a1)
{
  v2 = qmi::MessageBase::MessageBase();
  qmi::MessageBase::validateMsgId(v2, 0x556Du);
  return a1;
}

qmi::MessageBase *sub_1000B8E48(qmi::MessageBase *a1, const void *a2, unint64_t a3)
{
  v4 = qmi::MessageBase::MessageBase(a1, a2, a3);
  qmi::MessageBase::validateMsgId(v4, 0x556Du);
  return a1;
}

uint64_t sub_1000B8E8C(qmi::MessageBase *a1, uint64_t a2, unint64_t a3)
{
  result = qmi::MessageBase::findTlvValue(a1);
  if (result)
  {
    v8 = result;
    v9 = v7;
    if (sub_1000B8F30(a1, result, v7, a3))
    {
      return 1;
    }

    else
    {
      v10 = qmi::MessageBase::sParsingErrorHandler;
      v11 = *a1;

      return v10(v11, a2, v8, v9);
    }
  }

  return result;
}

BOOL sub_1000B8F30(uint64_t a1, tlv *a2, uint64_t a3, unint64_t a4)
{
  v7 = a2;
  sub_100089828(&v7, a3, a3, a4);
  v5 = v7;
  if (v7)
  {
    (*(*a4 + 16))();
  }

  return v5 != 0;
}

void sub_1000B8F90(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_1000B8FF4(a2, v3);
  (*(v2 + 16))(v2, v3);
  qmi::MessageBase::~MessageBase(v3);
}

void sub_1000B8FE0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  qmi::MessageBase::~MessageBase(va);
  _Unwind_Resume(a1);
}

void sub_1000B8FF4(uint64_t a1@<X0>, qmi::ResponseBase *a2@<X8>)
{
  if (*(a1 + 40) != 1 || *(a1 + 44) == 3)
  {
    QMIServiceMsg::serialize(&__p, a1);
    sub_1000B90EC(a2, __p, v6 - __p);
    if (__p)
    {
      v6 = __p;
      operator delete(__p);
    }
  }

  else
  {
    v4 = *(a1 + 12);
    QMIServiceMsg::getNewError(a1);

    sub_1000B90A8(a2);
  }
}

void sub_1000B908C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000B90A8(uint64_t a1)
{
  v2 = qmi::MessageBase::MessageBase();
  qmi::MessageBase::validateMsgId(v2, 0x556Cu);
  return a1;
}

qmi::ResponseBase *sub_1000B90EC(qmi::ResponseBase *a1, const void *a2, unint64_t a3)
{
  v4 = qmi::ResponseBase::ResponseBase(a1, a2, a3);
  qmi::MessageBase::validateMsgId(v4, 0x556Cu);
  return a1;
}

char *sub_1000B9130(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v2 != v3)
  {
    while (*(*v2 + 8) != a2)
    {
      if (++v2 == v3)
      {
        goto LABEL_8;
      }
    }
  }

  if (v2 == v3)
  {
LABEL_8:

    sub_1000B91E0();
  }

  v4 = ***v2;
  if (!v5)
  {
    __cxa_bad_cast();
  }

  return v5 + 9;
}

_BYTE **sub_1000B9280(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *a2 + 3;
  *a2 = v5;
  result = sub_100048DF8(a2, (a1 + 9));
  v7 = (*a2 - v5);
  *v4 = v3;
  *(v4 + 1) = v7;
  return result;
}

char *sub_1000B9338(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v2 != v3)
  {
    while (*(*v2 + 8) != a2)
    {
      if (++v2 == v3)
      {
        goto LABEL_8;
      }
    }
  }

  if (v2 == v3)
  {
LABEL_8:

    sub_1000B93E8();
  }

  v4 = ***v2;
  if (!v5)
  {
    __cxa_bad_cast();
  }

  return v5 + 12;
}

_DWORD **sub_1000B948C(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *a2 + 3;
  *a2 = v5;
  result = sub_10008877C(a2, (a1 + 12));
  v7 = (*a2 - v5);
  *v4 = v3;
  *(v4 + 1) = v7;
  return result;
}

char *sub_1000B954C(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v2 != v3)
  {
    while (*(*v2 + 8) != a2)
    {
      if (++v2 == v3)
      {
        goto LABEL_8;
      }
    }
  }

  if (v2 == v3)
  {
LABEL_8:

    sub_1000B95FC();
  }

  v4 = ***v2;
  if (!v5)
  {
    __cxa_bad_cast();
  }

  return v5 + 16;
}

void **sub_1000B969C(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *a2 + 3;
  *a2 = v5;
  result = sub_100088830(a2, (a1 + 16));
  v7 = (*a2 - v5);
  *v4 = v3;
  *(v4 + 1) = v7;
  return result;
}

char *sub_1000B975C(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v2 != v3)
  {
    while (*(*v2 + 8) != a2)
    {
      if (++v2 == v3)
      {
        goto LABEL_8;
      }
    }
  }

  if (v2 == v3)
  {
LABEL_8:

    sub_1000B980C();
  }

  v4 = ***v2;
  if (!v5)
  {
    __cxa_bad_cast();
  }

  return v5 + 12;
}

uint64_t *sub_1000B98B4(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *a2 + 3;
  *a2 = v5;
  result = sub_100089678(a2, a1 + 12);
  v7 = *a2 - v5;
  *v4 = v3;
  *(v4 + 1) = v7;
  return result;
}

char *sub_1000B997C(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v2 != v3)
  {
    while (*(*v2 + 8) != a2)
    {
      if (++v2 == v3)
      {
        goto LABEL_8;
      }
    }
  }

  if (v2 == v3)
  {
LABEL_8:

    sub_1000B9A2C();
  }

  v4 = ***v2;
  if (!v5)
  {
    __cxa_bad_cast();
  }

  return v5 + 12;
}

uint64_t *sub_1000B9AD4(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *a2 + 3;
  *a2 = v5;
  result = sub_100089678(a2, a1 + 12);
  v7 = *a2 - v5;
  *v4 = v3;
  *(v4 + 1) = v7;
  return result;
}

char *sub_1000B9B9C(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v2 != v3)
  {
    while (*(*v2 + 8) != a2)
    {
      if (++v2 == v3)
      {
        goto LABEL_8;
      }
    }
  }

  if (v2 == v3)
  {
LABEL_8:

    sub_1000B9C4C();
  }

  v4 = ***v2;
  if (!v5)
  {
    __cxa_bad_cast();
  }

  return v5 + 12;
}

uint64_t *sub_1000B9CF4(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *a2 + 3;
  *a2 = v5;
  result = sub_100089678(a2, a1 + 12);
  v7 = *a2 - v5;
  *v4 = v3;
  *(v4 + 1) = v7;
  return result;
}

char *sub_1000B9DBC(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v2 != v3)
  {
    while (*(*v2 + 8) != a2)
    {
      if (++v2 == v3)
      {
        goto LABEL_8;
      }
    }
  }

  if (v2 == v3)
  {
LABEL_8:

    sub_1000B9E6C();
  }

  v4 = ***v2;
  if (!v5)
  {
    __cxa_bad_cast();
  }

  return v5 + 12;
}

uint64_t *sub_1000B9F14(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *a2 + 3;
  *a2 = v5;
  result = sub_100089678(a2, a1 + 12);
  v7 = *a2 - v5;
  *v4 = v3;
  *(v4 + 1) = v7;
  return result;
}

void sub_1000B9FDC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_1000BA040(a2, v3);
  (*(v2 + 16))(v2, v3);
  qmi::MessageBase::~MessageBase(v3);
}

void sub_1000BA02C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  qmi::MessageBase::~MessageBase(va);
  _Unwind_Resume(a1);
}

void sub_1000BA040(uint64_t a1@<X0>, qmi::ResponseBase *a2@<X8>)
{
  if (*(a1 + 40) != 1 || *(a1 + 44) == 3)
  {
    QMIServiceMsg::serialize(&__p, a1);
    sub_1000BA138(a2, __p, v6 - __p);
    if (__p)
    {
      v6 = __p;
      operator delete(__p);
    }
  }

  else
  {
    v4 = *(a1 + 12);
    QMIServiceMsg::getNewError(a1);

    sub_1000BA0F4(a2);
  }
}

void sub_1000BA0D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000BA0F4(uint64_t a1)
{
  v2 = qmi::MessageBase::MessageBase();
  qmi::MessageBase::validateMsgId(v2, 0x556Bu);
  return a1;
}

qmi::ResponseBase *sub_1000BA138(qmi::ResponseBase *a1, const void *a2, unint64_t a3)
{
  v4 = qmi::ResponseBase::ResponseBase(a1, a2, a3);
  qmi::MessageBase::validateMsgId(v4, 0x556Bu);
  return a1;
}

void sub_1000BA280(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

uint64_t sub_1000BA29C(uint64_t a1)
{
  [WCM_Logging logLevel:2 message:@"Initialize WCM_AriCoexCommandDriver... "];
  v2 = objc_alloc_init(*(a1 + 32));
  v3 = qword_1002B7EF0;
  qword_1002B7EF0 = v2;

  return _objc_release_x1(v2, v3);
}

uint64_t sub_1000C2D68(uint64_t a1, char *a2)
{
  if (!strncasecmp(a2, "kWCMCellularNetworkConfiguration_TTDUL_DL", 0x2AuLL))
  {
    [WCM_Logging logLevel:4 message:@"SUB%llu: %s key found", *(a1 + 32), "kWCMCellularNetworkConfiguration_TTDUL_DL"];
    *(*(a1 + 40) + 104) = 1;
  }

  return 1;
}

uint64_t sub_1000CA054(uint64_t a1, char *a2)
{
  if (!strncasecmp(a2, "kWCMCellularNetworkConfiguration_TTDUL_DL", 0x2AuLL))
  {
    *(*(a1 + 32) + 104) = 1;
  }

  return 1;
}

const char *sub_1000CA720(unsigned int a1)
{
  if (a1 <= 5)
  {
    v1 = &(&off_1002414E0)[a1];
    return *v1;
  }

  if (((1 << a1) & 0x3FFF0000) != 0)
  {
    v1 = &(&off_100241510)[a1 - 16];
    return *v1;
  }

  return "LogUnknown";
}

void sub_1000CAB24(id a1, int a2)
{
  +[WCM_Logging reloadLogSettingsFromPreferences];

  +[WCM_Logging reloadiRATSettingsFromPreferences];
}

void sub_1000CB71C(uint64_t a1)
{
  [*(a1 + 32) logToFile:*(a1 + 40)];
  v2 = *(a1 + 40);
}

id sub_1000D0E78(id result)
{
  if (!qword_1002B80F8)
  {
    v1 = result;
    [WCM_Logging logLevel:24 message:@"Inside WRM_HandoverManagerSingleton with commCenter recovery"];
    v2.receiver = *(v1 + 4);
    v2.super_class = &OBJC_METACLASS___WRM_HandoverManager;
    result = [objc_msgSendSuper2(&v2 allocWithZone:{0), "init"}];
    qword_1002B80F8 = result;
  }

  return result;
}

void sub_1000D1C34(uint64_t a1)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 2;
  v2 = *(*(a1 + 32) + 248);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000D1E2C;
  v12[3] = &unk_1002415B8;
  v12[4] = &v13;
  [v2 enumerateKeysAndObjectsUsingBlock:v12];
  if (*(a1 + 48) == 1)
  {
    [*(*(a1 + 32) + 248) setObject:+[NSNumber numberWithInteger:](NSNumber forKey:{"numberWithInteger:", 1), *(a1 + 40)}];
  }

  else
  {
    [*(*(a1 + 32) + 248) removeObjectForKey:*(a1 + 40)];
  }

  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 2;
  v3 = *(*(a1 + 32) + 248);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000D1E6C;
  v7[3] = &unk_1002415B8;
  v7[4] = &v8;
  [v3 enumerateKeysAndObjectsUsingBlock:v7];
  v4 = *(v9 + 6);
  if (*(v14 + 6) != v4)
  {
    if (v4 == 1)
    {
      v5 = "active";
    }

    else
    {
      v5 = "inactive";
    }

    [WCM_Logging logLevel:22 message:@"updateAnyCallState: callProvider %@ callState=%s", *(a1 + 40), v5];
    v6 = +[WRM_EnhancedCTService wrm_EnhancedCTServiceSingleton];
    [v6 anyCallStateChange:*(v9 + 6)];
  }

  _Block_object_dispose(&v8, 8);
  _Block_object_dispose(&v13, 8);
}

void sub_1000D1E00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v8 - 80), 8);
  _Unwind_Resume(a1);
}

id sub_1000D1E2C(uint64_t a1, uint64_t a2, void *a3)
{
  result = [a3 integerValue];
  if (result == 1)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  return result;
}

id sub_1000D1E6C(uint64_t a1, uint64_t a2, void *a3)
{
  result = [a3 integerValue];
  if (result == 1)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  return result;
}

id sub_1000D1F24(id result)
{
  v1 = result;
  v2 = *(result + 6);
  if (v2 > 14)
  {
    if (v2 > 20)
    {
      switch(v2)
      {
        case 21:
          if (*(result + 4))
          {
            [*(result + 5) addiRatClient:?];
            v3 = @"Handover Manager:Added iRAT Client (WRMCommCenter1) to Handover Manager ";
            goto LABEL_45;
          }

          [WCM_Logging logLevel:24 message:@"Handover Manager:remove iRAT Client (WRMCommCenter1) from Handover Manager "];
          v9 = *(v1 + 5);
          v10 = 2;
          break;
        case 26:
          if (*(result + 4))
          {
            [*(result + 5) addiRatClient:?];
            v3 = @"Handover Manager:Added iRAT Client (WRMWirelessStress) to Handover Manager ";
            goto LABEL_45;
          }

          [WCM_Logging logLevel:24 message:@"Handover Manager:remove iRAT Client (WRMWirelessStress) from Handover Manager "];
          v9 = *(v1 + 5);
          v10 = 18;
          break;
        case 32:
          if (*(result + 4))
          {
            [*(result + 5) addiRatClient:?];
            v3 = @"Handover Manager:Added iRAT Client (WRMJTRN) to Handover Manager ";
            goto LABEL_45;
          }

          [WCM_Logging logLevel:24 message:@"Handover Manager:remove iRAT Client (WRMJTRN) from Handover Manager "];
          v9 = *(v1 + 5);
          v10 = 20;
          break;
        default:
          return result;
      }
    }

    else
    {
      switch(v2)
      {
        case 15:
          if (*(result + 4))
          {
            [*(result + 5) addiRatClient:?];
            v3 = @"Handover Manager:Added iRAT Client (WRMCallKitTelephony) to Handover Manager ";
            goto LABEL_45;
          }

          [WCM_Logging logLevel:24 message:@"Handover Manager:remove iRAT Client (WRMCallKitTelephony) from Handover Manager "];
          v9 = *(v1 + 5);
          v10 = 8;
          break;
        case 16:
          if (*(result + 4))
          {
            [*(result + 5) addiRatClient:?];
            v3 = @"Handover Manager:Added iRAT Client (WRMLocationd) to Handover Manager ";
            goto LABEL_45;
          }

          [WCM_Logging logLevel:24 message:@"Handover Manager:remove iRAT Client (WRMLocationd) from Handover Manager "];
          v9 = *(v1 + 5);
          v10 = 9;
          break;
        case 17:
          if (*(result + 4))
          {
            [*(result + 5) addiRatClient:?];
            v3 = @"Handover Manager:Added iRAT Client (WRMCarousel) to Handover Manager ";
LABEL_45:
            [WCM_Logging logLevel:24 message:v3];
            goto LABEL_60;
          }

          [WCM_Logging logLevel:24 message:@"Handover Manager:remove iRAT Client (WRMCarousel) from Handover Manager "];
          v9 = *(v1 + 5);
          v10 = 10;
          break;
        default:
          return result;
      }
    }

LABEL_59:
    [v9 deleteiRATClient:v10];
    goto LABEL_60;
  }

  if (v2 > 7)
  {
    if (v2 != 8)
    {
      if (v2 == 9)
      {
        [WCM_Logging logLevel:24 message:@"Handover Manager: Receivd WiFiCalling controller event controller %p", *(result + 4)];
        v7 = *(*(v1 + 5) + 48);
        if (v7)
        {

          *(*(v1 + 5) + 48) = 0;
        }

        v8 = *(v1 + 4);
        if (v8)
        {
          *(*(v1 + 5) + 48) = v8;
        }
      }

      else
      {
        if (v2 != 10)
        {
          return result;
        }

        [WCM_Logging logLevel:24 message:@"Handover Manager: Receivd WRMIPTelephony controller event controller %p", *(result + 4)];
        v4 = *(*(v1 + 5) + 112);
        if (v4)
        {

          *(*(v1 + 5) + 112) = 0;
        }

        v5 = *(v1 + 4);
        if (v5)
        {
          *(*(v1 + 5) + 112) = v5;
        }
      }

      goto LABEL_60;
    }

    if (*(result + 4))
    {
      [*(result + 5) addiRatClient:?];
      v3 = @"Handover Manager:Added iRAT Client (WRMNetworkd) to Handover Manager ";
      goto LABEL_45;
    }

    [WCM_Logging logLevel:24 message:@"Handover Manager:remove iRAT Client (WRMNetworkd) from Handover Manager "];
    v9 = *(v1 + 5);
    v10 = 3;
    goto LABEL_59;
  }

  if (v2 == 1)
  {
    [WCM_Logging logLevel:24 message:@"Handover Manager: Receivd WiFi controller event controller %p", *(result + 4)];
    v6 = *(*(v1 + 5) + 40);
    if (v6)
    {

      *(*(v1 + 5) + 40) = 0;
    }

    if (*(v1 + 4))
    {
      if ([*(*(v1 + 5) + 64) symtompsMetricsEnabled])
      {
        [*(v1 + 5) createSymptomsService];
      }

      *(*(v1 + 5) + 40) = *(v1 + 4);
      byte_1002B7CD0 = 0;
    }

    else
    {
      byte_1002B7CD0 = 1;
    }
  }

  else
  {
    if (v2 != 7)
    {
      return result;
    }

    if (*(result + 4))
    {
      [*(result + 5) addiRatClient:?];
      [+[WRM_MetricsService getSingleton](WRM_MetricsService "getSingleton")];
      [WCM_Logging logLevel:24 message:@"Handover Manager:Added iRAT Client (WRMCommCenter) to Handover Manager "];
    }

    else
    {
      [WCM_Logging logLevel:24 message:@"Handover Manager:remove iRAT Client (WRMCommCenter) from Handover Manager "];
      [*(v1 + 5) deleteiRATClient:1];
      if (([*(v1 + 5) doesIRATClientSubscriptionContextExist] & 1) == 0 && objc_msgSend(*(*(v1 + 5) + 64), "mobilityStateAwarenessEnabled"))
      {
        [*(*(v1 + 5) + 72) stopAllAlarms];
      }
    }

    [*(v1 + 5) registerForCTNotifications];
    [*(v1 + 5) registerForSCNotifications];
  }

LABEL_60:
  v11 = *(v1 + 5);
  v12 = *(v1 + 6);

  return [v11 handleControllerAvailability:v12];
}

id sub_1000D2DE8(uint64_t a1)
{
  v2 = +[WRM_EnhancedCTService wrm_EnhancedCTServiceSingleton];
  if ([v2 exitSaDepriotizationEval] && (byte_1002B7CC9 & 1) == 0 && *(a1 + 40) == 1)
  {

    return [WCM_Logging logLevel:26 message:@"toggleSAState exitSaDepriotizationEval skip"];
  }

  else
  {
    v4 = byte_1002B7CCA;
    result = +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 26, @"toggleSAState:mCallOnWiFi %d, mCallKitCallActive:%d, isCarPlayWiFi: %d,exitSaDepriotizationEval:%d", byte_1002B7CC9, byte_1002B7C01, byte_1002B7CCA, [v2 exitSaDepriotizationEval]);
    if ((byte_1002B7CC9 & 1) != 0 || (byte_1002B7C01 & 1) == 0)
    {
      result = [v2 getSubscriptionsSlotMap];
      v5 = result;
      for (i = 232; i != 234; ++i)
      {
        if (((i - 231) & v5) != 0)
        {
          v7 = [v2 isWiFiCallingSupportedOnSlot:i - 231];
          v8 = [v2 isVoNRSupportedOnSlot:i - 231];
          v9 = *(a1 + 40);
          v10 = *(a1 + 32);
          if (v9 == 1 && (v4 & 1) == 0 && v7)
          {
            v11 = *(v10 + i);
            if (v11 == 1)
            {
              v12 = v8 ^ 1;
            }

            else
            {
              v12 = 1;
            }
          }

          else
          {
            v12 = 0;
            v11 = *(v10 + i);
          }

          v13 = "CTSubscriptionSlotTwo";
          if (i == 232)
          {
            v13 = "CTSubscriptionSlotOne";
          }

          [WCM_Logging logLevel:26 message:@"sim %s: toggleSAState wifiCallingSupported=%d, isWiFiActive=%d, isSaAllowedOnWiFiAssociation=%d, voNRSupported=%d, tSADisabled=%d", v13, v7, v9, v11, v8, v12];
          result = [*(a1 + 32) notifyBBUsingMappedSlotInfo:v12 onSlot:i - 231];
        }
      }
    }
  }

  return result;
}

id sub_1000D3124(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) isWiFiCallingSupportedSlot1];
  result = [*(*(a1 + 32) + 16) isWiFiCallingSupportedSlot2];
  if ((v2 & 1) != 0 || result)
  {
    [WCM_Logging logLevel:26 message:@"triggerEnableSA %d, wifi Call state: %d", *(a1 + 40), byte_1002B7CC9];
    if (*(a1 + 40) == 1 && (byte_1002B7CC9 & 1) == 0)
    {
      result = [+[WRM_EnhancedCTService wrm_EnhancedCTServiceSingleton](WRM_EnhancedCTService "wrm_EnhancedCTServiceSingleton")];
      v5 = result;
      for (i = 1; i != 3; ++i)
      {
        if ((i & v5) != 0)
        {
          result = [*(a1 + 32) notifyBBUsingMappedSlotInfo:0 onSlot:i];
        }
      }
    }

    else
    {
      v4 = *(a1 + 32);

      return [v4 reEvaluateSAState];
    }
  }

  return result;
}

id sub_1000D37DC(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 160) count];
  if (!v2)
  {
    v5 = @"switchPrivateNwDataSim: No iRAT client available.";
    goto LABEL_17;
  }

  [WCM_Logging logLevel:24 message:@"switchPrivateNwDataSim: Total number of iRAT clients %zu.", v2];
  [*(*(a1 + 32) + 184) timeIntervalSinceNow];
  v4 = *&v3;
  if (qword_1002B7C08 == *(a1 + 40) && dword_1002B7A20 == *(a1 + 48) && dword_1002B7C10 == *(a1 + 52) && *&qword_1002B8100 - v3 < 30.0)
  {
    v5 = @"switchPrivateNwDataSim: Min. time interval not reached. Suppress the same recommendation";
LABEL_17:

    return [WCM_Logging logLevel:24 message:v5];
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = *(*(a1 + 32) + 160);
  result = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (result)
  {
    v8 = result;
    v9 = *v14;
    while (2)
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * v10);
        if ([v11 getMyClientType] == 1)
        {
          result = [v11 sendPrivateNwVsMacroRecommendation:*(a1 + 40) currentSlotQuality:*(a1 + 48) anyCallState:*(a1 + 52)];
          qword_1002B8100 = v4;
          qword_1002B7C08 = *(a1 + 40);
          v12 = *(a1 + 52);
          dword_1002B7A20 = *(a1 + 48);
          dword_1002B7C10 = v12;
          if (qword_1002B7C08)
          {
            [*(a1 + 32) submitMetricsCBRSWithDataSimRecommendation:1 forSimSlot:?];
            return [+[WRM_EnhancedCTService wrm_EnhancedCTServiceSingleton](WRM_EnhancedCTService "wrm_EnhancedCTServiceSingleton")];
          }

          return result;
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      result = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      v8 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void *sub_1000D3ACC(void *result)
{
  if (result[5])
  {
    v1 = result;
    v2 = +[WRM_EnhancedCTService wrm_EnhancedCTServiceSingleton];
    v3 = [v2 getCellularDataLQM:v1[5]];
    v4 = [v2 getDataStallState:v1[5]];
    v5 = [*(v1[4] + 120) getAWDService];
    if (*(v1 + 48) == 1)
    {
      v6 = v1[5];
    }

    else
    {
      v6 = 0;
    }

    return [v5 submitMetricsCBRSForSim:v6 dataLQM:v3 congested:v4];
  }

  return result;
}

void sub_1000D3F90()
{
  if (qword_1002B7BF8)
  {
    Main = CFRunLoopGetMain();
    CFRunLoopRemoveSource(Main, qword_1002B7BF8, kCFRunLoopDefaultMode);
  }

  if (qword_1002B7BF0)
  {
    CFRelease(qword_1002B7BF0);
    qword_1002B7BF0 = 0;
  }

  if (qword_1002B7BF8)
  {
    CFRelease(qword_1002B7BF8);
    qword_1002B7BF8 = 0;
  }
}

id sub_1000D4448(uint64_t a1)
{
  result = [*(a1 + 32) isRecentDevice];
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 evaluateWiFiVersusCell];
  }

  return result;
}

id sub_1000D4F78(uint64_t a1)
{
  [WCM_Logging logLevel:24 message:@"SIP stalled debouncing timer expired:resetIMSMetrics"];
  v2 = *(*(a1 + 32) + 56);

  return [v2 resetIMSMetrics];
}

id sub_1000D51AC(uint64_t a1)
{
  [WCM_Logging logLevel:24 message:@"SIP debouncing timer expired:resetIMSMetrics"];
  v2 = *(*(a1 + 32) + 56);

  return [v2 resetIMSMetrics];
}

id sub_1000D5408(uint64_t a1)
{
  [WCM_Logging logLevel:24 message:@"DPD debouncing timer expired:resetIMSMetrics"];
  v2 = *(*(a1 + 32) + 56);

  return [v2 resetIMSMetrics];
}

id sub_1000D5ABC(uint64_t a1)
{
  qword_1002B7BD0 = *(a1 + 40);
  v2 = 1;
  do
  {
    v3 = [*(a1 + 32) getiRATClientFromList:v2];
    if (v3)
    {
      result = [WCM_Logging logLevel:24 message:@"setiRATPolicy client %u found, UI iRATPolicy=%lu, mIRATPolicyCT=%u, mIRATPolicyCT1=%u", v2, *(a1 + 40), dword_1002B7BD8, dword_1002B7BDC];
      v5 = *(a1 + 40);
      if ((v5 - 1) <= 2)
      {
        v6 = [*(a1 + 32) convertToHOAlgorithmType:?];
LABEL_5:
        result = [v3 setHandoverAlgorithmType:v6];
        goto LABEL_8;
      }

      if (!v5)
      {
        if (v2 == 1)
        {
          v6 = dword_1002B7BD8;
        }

        else
        {
          v6 = dword_1002B7BDC;
        }

        goto LABEL_5;
      }
    }

    else
    {
      result = [WCM_Logging logLevel:24 message:@"setiRATPolicy client %u not found", v2];
    }

LABEL_8:
    v2 = (v2 + 1);
  }

  while (v2 != 3);
  return result;
}

id sub_1000D5D3C(uint64_t a1)
{
  result = [*(*(a1 + 32) + 216) timeIntervalSinceNow];
  *(*(a1 + 32) + 224) = v3;
  return result;
}

id sub_1000D5DB0(uint64_t a1)
{
  result = MGGetBoolAnswer();
  if (result)
  {
    v3 = +[WRM_HandoverManager WRM_HandoverManagerSingleton];

    return [v3 setHOAlertUI:a1];
  }

  return result;
}

id sub_1000D5E0C(uint64_t a1)
{
  result = MGGetBoolAnswer();
  if (result)
  {
    v3 = +[WRM_HandoverManager WRM_HandoverManagerSingleton];

    return [v3 setiRATPolicy:a1];
  }

  return result;
}

id sub_1000D6620(uint64_t a1)
{
  [WCM_Logging logLevel:26 message:@"postWRMStateToBB"];
  v2 = *(a1 + 32);

  return [v2 reEvaluateSAState];
}

id sub_1000D6718(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1[3] isWiFiPrimary];

  return [v1 toggleSAState:v2];
}

void *sub_1000D6914(void *result)
{
  v1 = result[5];
  if (v1)
  {
    v2 = result;
    result = [WCM_Logging logLevel:26 message:@"mRLHandoverPolicyCB for sim %ld = %d", v1, *(result + 48)];
    *(v2[5] + v2[4] + 233) = *(v2 + 48);
  }

  return result;
}

void *sub_1000D69F0(void *result)
{
  v1 = result[5];
  if (v1)
  {
    v2 = result;
    result = [WCM_Logging logLevel:26 message:@"CB updateSaAllowedOnWiFiAssociation for sim %ld = %d", v1, *(result + 48)];
    *(v2[5] + v2[4] + 231) = *(v2 + 48);
  }

  return result;
}

void sub_1000D6AF4(uint64_t a1)
{
  v2 = *(a1 + 40);
  if ((v2 - 1) >= 2)
  {
    [WCM_Logging logLevel:26 message:@"invalid kWRMVoiceLqmSlotId parameter: %llu", v2];
    v3 = -1;
  }

  else
  {
    v3 = [+[WRM_EnhancedCTService wrm_EnhancedCTServiceSingleton](WRM_EnhancedCTService "wrm_EnhancedCTServiceSingleton")];
  }

  reply = xpc_dictionary_create_reply(*(a1 + 32));
  if (reply)
  {
    v5 = reply;
    xpc_dictionary_set_int64(reply, "kWRMVoiceLqmValue", v3);
    remote_connection = xpc_dictionary_get_remote_connection(*(a1 + 32));
    xpc_connection_send_message(remote_connection, v5);
    [WCM_Logging logLevel:26 message:@"Sending response to handleGetVoiceLqmValue %@", v5];

    xpc_release(v5);
  }

  else
  {

    [WCM_Logging logLevel:26 message:@"handleGetVoiceLqmValue invaid replyMsg"];
  }
}

id sub_1000D6C78(uint64_t a1)
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(*(a1 + 32) + 160);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (!v3)
  {
    return [WCM_Logging logLevel:26 message:@"HandoverManager: notifyVoiceLqm no client subscribed"];
  }

  v4 = v3;
  v5 = 0;
  v6 = *v11;
  do
  {
    v7 = 0;
    do
    {
      if (*v11 != v6)
      {
        objc_enumerationMutation(v2);
      }

      v8 = *(*(&v10 + 1) + 8 * v7);
      if ([v8 isVoiceLqmSubscribed])
      {
        [v8 notifyVoiceLqmUpdate:*(a1 + 48) onSimSlot:*(a1 + 40)];
        [WCM_Logging logLevel:26 message:@"HandoverManager: notifyVoiceLqm %d on simSlot:%ld", *(a1 + 48), *(a1 + 40)];
        v5 = 1;
      }

      v7 = v7 + 1;
    }

    while (v4 != v7);
    result = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    v4 = result;
  }

  while (result);
  if ((v5 & 1) == 0)
  {
    return [WCM_Logging logLevel:26 message:@"HandoverManager: notifyVoiceLqm no client subscribed"];
  }

  return result;
}

id sub_1000D7114(uint64_t a1)
{
  result = objc_loadWeak((a1 + 32));
  if (result)
  {
    v3 = *(a1 + 48);
    v4 = v3 < 0x18;
    v5 = 0x8A6000u >> v3;
    v6 = +[WRM_HandoverLearner getLearner];
    v7 = *(a1 + 40);

    return [v6 scoreCallAndUpdate:v4 & v5 slot:v7];
  }

  return result;
}

uint64_t sub_1000D7CC8()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = sub_1000D8678;
  v0 = qword_1002B8108;
  v7 = sub_1000D8688;
  v8 = qword_1002B8108;
  if (!qword_1002B8108)
  {
    v2[0] = _NSConcreteStackBlock;
    v2[1] = 3221225472;
    v2[2] = sub_1000D8694;
    v2[3] = &unk_10023DCC8;
    v2[4] = &v3;
    sub_1000D8694(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1000D7D9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000D8114()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = sub_1000D8678;
  v0 = qword_1002B8118;
  v7 = sub_1000D8688;
  v8 = qword_1002B8118;
  if (!qword_1002B8118)
  {
    v2[0] = _NSConcreteStackBlock;
    v2[1] = 3221225472;
    v2[2] = sub_1000D8854;
    v2[3] = &unk_10023DCC8;
    v2[4] = &v3;
    sub_1000D8854(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1000D81E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000D8374(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000D8658(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_1000D8694(uint64_t a1)
{
  sub_1000D86EC();
  result = objc_getClass("MLFeatureValue");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    sub_10015F9E4();
  }

  qword_1002B8108 = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

void sub_1000D86EC()
{
  v0[0] = 0;
  if (!qword_1002B8110)
  {
    v0[1] = _NSConcreteStackBlock;
    v0[2] = 3221225472;
    v0[3] = sub_1000D87E0;
    v0[4] = &unk_10023DD00;
    v0[5] = v0;
    v1 = off_1002419F0;
    v2 = 0;
    qword_1002B8110 = _sl_dlopen();
  }

  if (!qword_1002B8110)
  {
    sub_10015FA4C(v0);
  }

  if (v0[0])
  {
    free(v0[0]);
  }
}

uint64_t sub_1000D87E0(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_1002B8110 = result;
  return result;
}

Class sub_1000D8854(uint64_t a1)
{
  sub_1000D86EC();
  result = objc_getClass("MLModel");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    sub_10015FAB4();
  }

  qword_1002B8118 = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

Class sub_1000D88AC(uint64_t a1)
{
  sub_1000D86EC();
  result = objc_getClass("MLPredictionOptions");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    sub_10015FB1C();
  }

  qword_1002B8120 = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

Class sub_1000D8904(uint64_t a1)
{
  sub_1000D86EC();
  result = objc_getClass("MLArrayBatchProvider");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    sub_10015FB84();
  }

  qword_1002B8128 = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

void sub_1000D895C(id a1)
{
  v1 = CLCopyTechnologiesInUse();
  if (v1)
  {
    v2 = v1;
    v3 = sub_100004F50(v1);
    CFRelease(v2);
    v4 = "inactive";
    if (v3)
    {
      v4 = "active";
    }
  }

  else
  {
    [WCM_Logging logLevel:3 message:@"activeTechs is null"];
    v3 = 0;
    v4 = "inactive";
  }

  [WCM_Logging logLevel:1 message:@"GPS is %s initially", v4];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D8A60;
  block[3] = &unk_10023DCA0;
  v6 = v3;
  dispatch_async([+[WCM_Server singleton](WCM_Server "singleton")], block);
}

id sub_1000D8A60(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = +[WCM_PolicyManager singleton];

  return [v2 setGpsRadioActive:v1];
}

id sub_1000D9568(uint64_t a1)
{
  v2 = [*(a1 + 32) wifiController];
  if ([*(a1 + 32) audioBuiltInReceiver])
  {
    v3 = [v2 headTxPowerCapdBm];
  }

  else
  {
    v3 = [v2 bodyTxPowerCapdBm];
  }

  v4 = v3;
  v5 = [*(a1 + 32) cellularController];
  v6 = [v2 channelCenterFreqMHz];
  v7 = [v2 channelBandwidthMHz];

  return [v5 updateWiFiStatusCenterFreq:v6 bandwidth:v7 txPower:v4];
}

id sub_1000D9A00(uint64_t a1)
{
  [objc_msgSend(*(a1 + 32) "cellularController")];
  [*(a1 + 32) configureWifiAntennaSelectionForCoex];
  [*(a1 + 32) updateCellTxPowerLimit];
  v2 = [*(a1 + 32) gpsRadioActive];
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = [v3 btPreferredChannelMapOnGpsRadioActive];
  }

  else
  {
    v4 = [v3 btPreferredChannelMap];
  }

  v5 = v4;
  if ([objc_msgSend(*(a1 + 32) "activeCoexFeatures")] && (_os_feature_enabled_impl() & 1) == 0)
  {
    v6 = [*(a1 + 32) hpCellNeedMitigation];
    v7 = *(a1 + 32);
    if (v6)
    {
      v5 = v7[30];
    }

    +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 4, @"HPCellular (updateGPSRadioActiveState): HPCellularActive = (%d), set BT AFH map to (%@).", [v7 hpCellNeedMitigation], v5);
  }

  v8 = [*(a1 + 32) btController];

  return [v8 updatePreferredAFHMap:v5];
}

void sub_1000D9E80(uint64_t a1)
{
  [WCM_Logging logLevel:2 message:@"SAC Coex Manager received GNSS frequency update"];
  [*(*(a1 + 32) + 192) sacRemoveAllGnssFreq];
  if ([*(a1 + 40) count])
  {
    v2 = objc_alloc_init(NSMutableArray);
    v3 = objc_alloc_init(NSMutableArray);
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v4 = *(a1 + 40);
    v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v15;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v14 + 1) + 8 * i);
          v12 = 0u;
          v13 = 0u;
          [v9 getValue:&v12];
          v10 = [[FreqRangeInfo alloc] initWithFreq:(*(&v12 + 1) * 1000000.0) Bw:(*&v13 * 1000000.0)];
          if (v12 == 2)
          {
            v11 = v3;
          }

          else
          {
            v11 = v2;
          }

          [v11 addObject:v10];
        }

        v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v6);
    }

    [WCM_Logging logLevel:2 message:@"SAC Coex Manager add new GNSS frequency to SAC"];
    [*(*(a1 + 32) + 192) sacUpdateGnssFreqInfo:v2 L5Freq:v3];
    [*(*(a1 + 32) + 192) sacReportGnssVictimFreqListOnTargetSac:1 action:1];
    if ([objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")])
    {
      [*(*(a1 + 32) + 192) sacReportGnssVictimFreqListOnTargetSac:2 action:1];
    }
  }
}

void sub_1000DAA80(uint64_t a1)
{
  if ([objc_msgSend(*(a1 + 32) "activeCoexFeatures")] && objc_msgSend(objc_msgSend(*(a1 + 32), "activeCoexFeatures"), "containsObject:", @"WiFiOffFreqUpdate") && !objc_msgSend(*(a1 + 32), "wifiController") && *(a1 + 40) == 1)
  {
    [WCM_Logging logLevel:3 message:@"DLDebug_ wifiController is NULL. Need to pass Freq of 0"];
    [objc_msgSend(*(a1 + 32) "cellularController")];
  }

  v2 = *(a1 + 32);
  if (v2[18] && [objc_msgSend(v2 "activeCoexFeatures")] && !objc_msgSend(*(a1 + 32), "wifiController") && *(a1 + 40) == 1)
  {
    [*(a1 + 32) updateCTSacDriverRemoveAllFromWifiClient];
  }

  if ([objc_msgSend(*(a1 + 32) "activeCoexFeatures")] && *(a1 + 40) == 1)
  {
    [objc_msgSend(*(a1 + 32) "cellularController")];
  }

  v3 = *(a1 + 32);
  if (v3[24] && [objc_msgSend(v3 "activeCoexFeatures")] && !objc_msgSend(*(a1 + 32), "wifiController") && *(a1 + 40) == 1)
  {
    v4 = [*(*(a1 + 32) + 192) getQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000DAC34;
    block[3] = &unk_10023DB28;
    block[4] = *(a1 + 32);
    dispatch_async(v4, block);
  }
}

id sub_1000DAC34(uint64_t a1)
{
  result = [*(*(a1 + 32) + 192) isTestMode];
  if ((result & 1) == 0)
  {
    v3 = *(*(a1 + 32) + 192);

    return [v3 sacRemoveAllWifiFreq];
  }

  return result;
}

int64_t sub_1000DBCB0(id a1, id a2, id a3)
{
  v4 = [a2 intValue];
  if (v4 > [a3 intValue])
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

id sub_1000E2708(uint64_t a1)
{
  v2 = [*(a1 + 32) dataLqmState];
  v3 = [*(a1 + 32) cellularController];
  +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 3, @"BB20: updateLqmState:1 dataLQMLqmState = %d, rrc_state %d, slot %ld cell_active slot %llu self.lqm %d", *(a1 + 48), *(a1 + 52), *(a1 + 40), [v3 getActiveSlot], v2);
  v4 = *(a1 + 40) - 1;
  result = [v3 getActiveSlot];
  if (v4 == result && *(a1 + 48) != v2)
  {
    [WCM_Logging logLevel:3 message:@"BB20: updateLqmState:1 updating lqm with %d %d", *(a1 + 48), v2];
    [*(a1 + 32) setDataLqmState:*(a1 + 48)];
    [*(a1 + 32) setCTRrcState:*(a1 + 52)];
    v6 = +[WCM_PolicyManager singleton];

    return [v6 updateControllerState:105];
  }

  return result;
}

NSDictionary *sub_1000E3080(uint64_t a1)
{
  v3[0] = @"IssueBand";
  v4[0] = [*(a1 + 32) objectForKeyedSubscript:?];
  v3[1] = @"IssueType";
  v4[1] = [*(a1 + 32) objectForKeyedSubscript:?];
  v3[2] = @"IsCoexBand";
  v4[2] = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [objc_msgSend(*(a1 + 32) "objectForKeyedSubscript:"intValue"")] != 0);
  v3[3] = @"HasAntConstraint";
  v4[3] = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [objc_msgSend(*(a1 + 32) "objectForKeyedSubscript:"intValue"")] != 0);
  v3[4] = @"IssueCount";
  v4[4] = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [objc_msgSend(*(a1 + 32) objectForKeyedSubscript:{@"count", "intValue"}]);
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:5];
}

NSDictionary *sub_1000E3410(uint64_t a1)
{
  v3[0] = @"ULCAHasCoexBand";
  v4[0] = [NSNumber numberWithBool:*(a1 + 64)];
  v3[1] = @"ULCAPrimaryCarrierULFreq";
  v4[1] = [NSNumber numberWithInt:*(a1 + 32)];
  v3[2] = @"ULCAPrimaryCarrierDLFreq";
  v4[2] = [NSNumber numberWithInt:*(a1 + 36)];
  v3[3] = @"ULCAPrimaryCarrierULBW";
  v4[3] = [NSNumber numberWithInt:*(a1 + 40)];
  v3[4] = @"ULCAPrimaryCarrierDLBW";
  v4[4] = [NSNumber numberWithInt:*(a1 + 44)];
  v3[5] = @"ULCACriticalCarrierULFreq";
  v4[5] = [NSNumber numberWithInt:*(a1 + 48)];
  v3[6] = @"ULCACriticalCarrierDLFreq";
  v4[6] = [NSNumber numberWithInt:*(a1 + 52)];
  v3[7] = @"ULCACriticalCarrierULBW";
  v4[7] = [NSNumber numberWithInt:*(a1 + 56)];
  v3[8] = @"ULCACriticalCarrierDLBW";
  v4[8] = [NSNumber numberWithInt:*(a1 + 60)];
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:9];
}

id sub_1000E3608(uint64_t a1)
{
  +[NSDate timeIntervalSinceReferenceDate];
  v3 = v2;
  v4 = [+[WCM_CoreAnalyticsService singleton](WCM_CoreAnalyticsService "singleton")];
  v5 = *(a1 + 32);
  v6 = *(a1 + 36);

  return [v4 updateBTCoexWiFiState:v5 wifiChannel:v6 at:v3];
}

id sub_1000E3A88(uint64_t a1)
{
  v2 = [objc_msgSend(*(a1 + 32) "wifiController")];
  v3 = [objc_msgSend(*(a1 + 32) "btController")];
  +[NSDate timeIntervalSinceReferenceDate];
  v5 = v4;
  if (v2 == 4)
  {
    v6 = *(*(a1 + 32) + 64);
    if (v6)
    {
      v2 = (v6 + 10);
    }

    else
    {
      v2 = 4;
    }
  }

  v7 = [+[WCM_CoreAnalyticsService singleton](WCM_CoreAnalyticsService "singleton")];
  LOBYTE(v10) = v3;
  LOWORD(v9) = *(a1 + 64);
  return [v7 updateBTCoexStats_tddCnt:*(a1 + 40) hybridCnt:*(a1 + 44) btDurMs:*(a1 + 48) totDurMs:*(a1 + 52) parallelCnt:*(a1 + 56) btDurAirMs:*(a1 + 60) wlrssiCoex:v5 btrssiCoex:v9 activeProfileFor2G:v2 btPowerState:v10 at:?];
}

BOOL sub_1000E4150(double *a1, int a2)
{
  v2 = (&unk_100196030 + 40 * a2);
  if (a1[4] >= *v2 && a1[5] <= v2[1])
  {
    return 1;
  }

  if (a1[6] >= v2[2])
  {
    return a1[7] <= v2[3];
  }

  return 0;
}

BOOL sub_1000E41B4(double *a1, int a2)
{
  v2 = (&unk_100196CB0 + 40 * a2);
  if (a1[4] >= *v2 && a1[5] <= v2[1])
  {
    return 1;
  }

  if (a1[6] >= v2[2])
  {
    return a1[7] <= v2[3];
  }

  return 0;
}

id sub_1000E4A88(uint64_t a1)
{
  v2 = +[WCM_PolicyManager singleton];
  v3 = *(a1 + 32);

  return [v2 updateGPSRadioActiveState:v3];
}

void *sub_1000E4AC8(void *a1, NSObject **a2, queue a3)
{
  *a1 = 0;
  a1[1] = 0;
  v5 = *a2;
  object = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  v6.fObj.fObj = a3.fObj.fObj;
  ice::Client::create(&v11, &object, v6, a3.fObj.fObj);
  v7 = v11;
  v11 = 0uLL;
  v8 = a1[1];
  *a1 = v7;
  if (v8)
  {
    sub_100004250(v8);
    if (*(&v11 + 1))
    {
      sub_100004250(*(&v11 + 1));
    }
  }

  if (object)
  {
    dispatch_release(object);
  }

  return a1;
}

void sub_1000E4B4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
  }

  v12 = *(v10 + 8);
  if (v12)
  {
    sub_100004250(v12);
  }

  _Unwind_Resume(exception_object);
}

ice::Client *sub_1000E4B74(ice::Client **a1)
{
  result = *a1;
  if (result)
  {
    return ice::Client::start(result);
  }

  return result;
}

void sub_1000E4B84(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v3 = *a1;
  if (v3)
  {
    sub_1000E4BB4(v3, a2, &v4);
  }
}

void sub_1000E4BB4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_1000E4E58(*a3, &aBlock);
  v3 = aBlock;
  if (aBlock)
  {
    v3 = _Block_copy(aBlock);
  }

  v4 = v3;
  ice::Client::regEventHandlerInternal();
  if (v4)
  {
    _Block_release(v4);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }
}

void sub_1000E4C30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *aBlock, void *a10)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (a10)
  {
    _Block_release(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000E4C5C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v3 = *a1;
  if (v3)
  {
    sub_1000E4C8C(v3, a2, &v4);
  }
}

void sub_1000E4C8C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_1000E4F00(*a3, &v4);
  aBlock = v4;
  v4 = 0;
  ice::Client::regIndicationInternal();
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v4)
  {
    _Block_release(v4);
  }
}

void sub_1000E4CFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *aBlock, void *a10)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (a10)
  {
    _Block_release(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000E4D28(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = a3;
  v3 = *a1;
  if (v3)
  {
    sub_1000E4D64(v3, a2, &v5);
    ice::SendMsgBaseProxy::~SendMsgBaseProxy(&v4);
  }
}

void sub_1000E4D64(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_1000E4F00(*a3, &v7);
  sub_100044CE4(&v5, (a1 + 8));
  ice::SendMsgBaseProxy::SendMsgBaseProxy();
  if (v6)
  {
    sub_100004250(v6);
  }

  aBlock = v7;
  v7 = 0;
  ice::SendMsgBaseProxy::callback();
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v7)
  {
    _Block_release(v7);
  }
}

void sub_1000E4E08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *aBlock, uint64_t a10, uint64_t a11, void *a12)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  ice::SendMsgBaseProxy::~SendMsgBaseProxy(v12);
  if (a12)
  {
    _Block_release(a12);
  }

  _Unwind_Resume(a1);
}

void *sub_1000E4E58@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 0x40000000;
  aBlock[2] = sub_1000E4ED8;
  aBlock[3] = &unk_100241CE0;
  aBlock[4] = a1;
  result = _Block_copy(aBlock);
  *a2 = result;
  return result;
}

void *sub_1000E4F00@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 0x40000000;
  aBlock[2] = sub_1000E4F80;
  aBlock[3] = &unk_100241D08;
  aBlock[4] = a1;
  result = _Block_copy(aBlock);
  *a2 = result;
  return result;
}

id sub_1000E5868(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  if (v2 < 0x2A && ((0x3EEEFFFFFFFuLL >> v2) & 1) != 0)
  {
    v3 = (&off_100241E78)[v2];
  }

  else if (v2 == 42)
  {
    v3 = "WRMSOS";
  }

  else
  {
    v3 = "INVALID_PROC_ID!!!";
  }

  [WCM_Logging logLevel:2 message:@"Delete session with processId(%s)", v3];
  v4 = +[WCM_Server singleton];
  v5 = *(a1 + 32);

  return [v4 removeSessionFromList:v5];
}

void sub_1000E59A4(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 8))
  {
    v3 = *(v1 + 16);
    if (v3 < 0x2A && ((0x3EEEFFFFFFFuLL >> v3) & 1) != 0)
    {
      v4 = (&off_100241E78)[v3];
    }

    else if (v3 == 42)
    {
      v4 = "WRMSOS";
    }

    else
    {
      v4 = "INVALID_PROC_ID!!!";
    }

    [WCM_Logging logLevel:19 message:@"WCM_Session: sending message to %s", v4];
    [WCM_Logging logLevel:22 message:@"Sending Message :%@", *(a1 + 40)];
    v5 = *(a1 + 40);
    v6 = *(*(a1 + 32) + 8);

    xpc_connection_send_message(v6, v5);
  }
}

id sub_1000E6F68(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  qword_1002B81C0 = v1;

  return [v1 configureCTNotificationCallBacks];
}

void sub_1000E71B0(const __CFData *a1, int a2)
{
  *buffer = 0;
  *v7 = 0;
  v6 = 0;
  v9.location = 0;
  v9.length = 1;
  CFDataGetBytes(a1, v9, &buffer[1]);
  if (a2 == 16 && buffer[1] - 1 <= 1)
  {
    v10.location = 1;
    v10.length = 1;
    CFDataGetBytes(a1, v10, buffer);
    if (buffer[0])
    {
      v4 = 1;
      v11.location = 2;
      v11.length = 1;
      CFDataGetBytes(a1, v11, &v7[1]);
      if (v7[1] > 9u)
      {
        goto LABEL_7;
      }

      [WCM_Logging logLevel:22 message:@"Discarding invalid data LQM %d", v7[1]];
    }

    v4 = 0;
LABEL_7:
    if ((buffer[0] & 2) != 0)
    {
      v12.location = 3;
      v12.length = 1;
      CFDataGetBytes(a1, v12, v7);
      if ((buffer[0] & 4) == 0)
      {
LABEL_9:
        if (!v4)
        {
          return;
        }

        goto LABEL_10;
      }
    }

    else if ((buffer[0] & 4) == 0)
    {
      goto LABEL_9;
    }

    v13.location = 4;
    v13.length = 1;
    CFDataGetBytes(a1, v13, &v6);
    if (!v4)
    {
      return;
    }

LABEL_10:
    v5 = +[WRM_SCService WRM_SCServiceControllerSingleton];
    [v5 setCellularDataLQM:v7[1]];
    [WCM_Logging logLevel:22 message:@"Received eLQM notification from BB, Version: %d, LQM: %d, RRC state: %d, Cell interface state: %d, stateChangeBitmask %d", buffer[1], v7[1], v7[0], v6, buffer[0]];
  }
}

uint64_t sub_1000E7304(const __CFData *a1, UInt8 *a2, UInt8 *a3)
{
  v6 = [+[WRM_HandoverManager WRM_HandoverManagerSingleton](WRM_HandoverManager "WRM_HandoverManagerSingleton")];
  [WCM_Logging logLevel:22 message:@"WRM_CTService:processVoiceLQMBlob:Voice LQM notification received"];
  if (a1)
  {
    [WCM_Logging logLevel:22 message:@"WRM_CTService:Calling CFDataGetLength"];
    Length = CFDataGetLength(a1);
    [WCM_Logging logLevel:22 message:@"WRM_CTService:Calling CFDataGetLength, Blob size: %d", Length];
    if (!Length)
    {
      return 0;
    }

    buffer = 0;
    [WCM_Logging logLevel:22 message:@"WRM_CTService:Voice LQM notification received, Blob size: %d", Length];
    v37.location = 0;
    v37.length = 1;
    CFDataGetBytes(a1, v37, &buffer);
    if (buffer <= 0xDFu)
    {
      switch(buffer)
      {
        case 1u:
          v12 = 1;
          v38.location = 1;
          v38.length = 1;
          CFDataGetBytes(a1, v38, a2);
          v39.location = 2;
          v39.length = 1;
          CFDataGetBytes(a1, v39, a3);
          [WCM_Logging logLevel:22 message:@"BLOB Size: %d, Voice LQM BLOB Version: %d, VoiceLQM: %d, ReasonCode: %d", Length, buffer, *a2, *a3];
          return v12;
        case 2u:
          v40.location = 1;
          v40.length = 1;
          CFDataGetBytes(a1, v40, a2);
          v41.location = 2;
          v41.length = 1;
          CFDataGetBytes(a1, v41, a3);
          [WCM_Logging logLevel:22 message:@"Init BLOB Size: %d, Version: %d, VoiceLQM: %d", Length, buffer, *a2];
          BytePtr = CFDataGetBytePtr(a1);
          [WCM_Logging logLevel:22 message:@"IMS preference: %d, CodecType: %d, Total Erasures: %u, Total PlayBacks:%u", BytePtr[3], *(BytePtr + 3), *(BytePtr + 1), *(BytePtr + 2)];
          [v6 setIMSPreference:BytePtr[3] != 0];
          if ([v6 getServingCellType] == 1)
          {
            [v6 setServingCellRSRP:*(BytePtr + 5)];
            [v6 setServingCellSNR:*(BytePtr + 4)];
            [WCM_Logging logLevel:22 message:@"RSRP: %f, SINR: %f", *(BytePtr + 5), *(BytePtr + 4)];
          }

          [v6 updateAudioQuality:{*(BytePtr + 4), *(BytePtr + 3)}];
          return 1;
        case 3u:
          [WCM_Logging logLevel:22 message:@"Init BLOB Size: %d, Version: %d", Length, 3];
          v14 = CFDataGetBytePtr(a1);
          v15 = v14;
          if (v14[3])
          {
            *a2 = v14[1];
            v16 = v14[2];
            *a3 = v16;
            [WCM_Logging logLevel:22 message:@"Version: %d, VoiceLQM: %d, ReasonCode: %d", buffer, *a2, v16];
          }

          else
          {
            [WCM_Logging logLevel:22 message:@"Ignore LQM report is not valid", v30, v32, v33];
          }

          v26 = [v6 getServingCellType];
          v27 = *(v15 + 11);
          if (v26 == 1)
          {
            [v6 setServingCellRSRP:v27];
            [v6 setServingCellSNR:*(v15 + 7)];
            v28 = @"RSRP: %llf, SINR: %llf";
          }

          else
          {
            [v6 setServingCellRSCP:(*(v15 + 7) + v27)];
            [v6 setServingCellECIO:*(v15 + 7)];
            v28 = @"RSSI: %llf, SINR: %llf";
          }

          [WCM_Logging logLevel:22 message:v28, *(v15 + 11), *(v15 + 7)];
          [WCM_Logging logLevel:22 message:@"BB Long Session Status: %d, BB High Power Status: %d, True Limited Service: %d", v15[4], v15[5], v15[6]];
          [v6 updateBBLongSessionState:v15[4]];
          v9 = [v6 isBBHighPowerState];
          [v6 updateBBHighPowerState:v15[5] != 0];
          [v6 updateBBLimitedServiceState:v15[6] != 0];
          v25 = v15[5];
          goto LABEL_39;
      }
    }

    else if (buffer > 0xEFu)
    {
      if (buffer == 240)
      {
        [WCM_Logging logLevel:22 message:@"Init BLOB Size: %d, Version: %d", Length, 240];
        v22 = CFDataGetBytePtr(a1);
        v23 = v22[1];
        *a2 = v23;
        [WCM_Logging logLevel:22 message:@" Version %d, Voice LQM: %d, PDCP TX SDU Count: %d, PDCP TX discard count: %d, RLC RX PDU count: %d, RLC RX missing pdu count: %d, LQE: %d ", *v22, v23, *(v22 + 2), *(v22 + 6), *(v22 + 10), *(v22 + 14), *(v22 + 18)];
        [WCM_Logging logLevel:22 message:@"Meas Serving cell type : %d, SNR: %d, RSSI:%d, RSRP: %f, RSRQ: %f ", *(v22 + 22), *(v22 + 26), *(v22 + 27), *(v22 + 29), *(v22 + 33)];
        [WCM_Logging logLevel:22 message:@"Voice LQM BLOB Version: %d, VoiceLQM: %d, ", buffer, *a2];
        [v6 setServingCellRSSI:*(v22 + 27)];
        [v6 setServingCellRSRP:*(v22 + 29)];
        [v6 setServingCellSNR:*(v22 + 26)];
        [v6 setServingCellRSRQ:*(v22 + 33)];
        return 1;
      }

      if (buffer == 241)
      {
        [WCM_Logging logLevel:22 message:@"Init BLOB Size: %d, Version: %d", Length, 241];
        v17 = CFDataGetBytePtr(a1);
        v18 = v17[1];
        *a2 = v18;
        [WCM_Logging logLevel:22 message:@" Version %d, Voice LQM: %d, PDCP TX SDU Count: %d, PDCP TX discard count: %d, RLC RX PDU count: %d, RLC RX missing pdu count: %d, LQE: %d ", *v17, v18, *(v17 + 2), *(v17 + 6), *(v17 + 10), *(v17 + 14), *(v17 + 18)];
        [WCM_Logging logLevel:22 message:@"Meas Serving cell type : %d, SNR: %d, RSSI:%d, RSRP: %f, RSRQ: %f ", *(v17 + 22), *(v17 + 64), *(v17 + 13), *(v17 + 7), *(v17 + 8)];
        [WCM_Logging logLevel:22 message:@"CodecType: %d, Total Erasures: %d, Total PlayBacks:%d, Audio Erasure Speech:%d, Audio Erasure Silence: %d", *(v17 + 13), *(v17 + 11), *(v17 + 12), *(v17 + 14), *(v17 + 15)];
        [WCM_Logging logLevel:22 message:@"IMS preference : %d, WCDMA RSCP: %d, WCDMA ECIO:%d", *(v17 + 65), *(v17 + 10), *(v17 + 9)];
        [WCM_Logging logLevel:22 message:@"Voice LQM BLOB Version: %d, VoiceLQM: %d, ", buffer, *a2];
        [WCM_Logging logLevel:22 message:@"Voice LQM BLOB Cell load valid: %d, est cell load: %d, ", *(v17 + 69), *(v17 + 73)];
        [v6 setServingCellRSSI:*(v17 + 13)];
        [v6 setServingCellRSRP:*(v17 + 7)];
        [v6 setServingCellSNR:*(v17 + 64)];
        [v6 setServingCellRSRQ:*(v17 + 8)];
        [v6 setIMSPreference:*(v17 + 65) != 0];
        [v6 setServingCellRSCP:*(v17 + 10)];
        [v6 setServingCellECIO:*(v17 + 9)];
        v34 = *(v17 + 44);
        v35 = *(v17 + 15);
        [v6 updateAudioQualityKaroo:&v34];
        return 1;
      }
    }

    else
    {
      if (buffer == 224)
      {
        [WCM_Logging logLevel:22 message:@"Init BLOB Size: %d, Version: %d", Length, 224];
        v19 = CFDataGetBytePtr(a1);
        v20 = v19[1];
        *a2 = v20;
        [WCM_Logging logLevel:22 message:@"Version %d, Voice LQM: %d, PDCP TX SDU Count: %d, PDCP TX discard count: %d, RLC RX PDU count: %d, RLC RX missing pdu count: %d, LQE: %d ", *v19, v20, *(v19 + 2), *(v19 + 6), *(v19 + 10), *(v19 + 14), *(v19 + 18)];
        [WCM_Logging logLevel:22 message:@"Meas Serving cell type : %d, SNR: %d, RSSI:%d, RSRP: %f, RSRQ: %f ", *(v19 + 22), *(v19 + 80), *(v19 + 13), *(v19 + 7), *(v19 + 8)];
        [WCM_Logging logLevel:22 message:@"CodecType: %d, Total Erasures: %d, Total PlayBacks:%d, Audio Erasure Speech:%d, Audio Erasure Silence: %d", *(v19 + 13), *(v19 + 11), *(v19 + 12), *(v19 + 14), *(v19 + 15)];
        [WCM_Logging logLevel:22 message:@"IMS preference : %d, WCDMA ECIO: %d, WCDMA RSCP:%d", *(v19 + 16), *(v19 + 10), *(v19 + 9)];
        [WCM_Logging logLevel:22 message:@"Voice LQM BLOB Version: %d, VoiceLQM: %d, ", buffer, *a2];
        [v6 setServingCellRSSI:*(v19 + 13)];
        [v6 setServingCellRSRP:*(v19 + 7)];
        [v6 setServingCellSNR:*(v19 + 80)];
        [v6 setServingCellRSRQ:*(v19 + 8)];
        [v6 setIMSPreference:*(v19 + 16) != 0];
        [v6 setServingCellRSCP:*(v19 + 10)];
        [v6 setServingCellECIO:*(v19 + 9)];
        v34 = *(v19 + 44);
        v35 = *(v19 + 15);
        [v6 updateAudioQualityKaroo:&v34];
        [WCM_Logging logLevel:22 message:@"BB Long Session Status: %d, BB High Power Status: %d, True Limited Service: %d, BB in HPLMN: %d", v19[81], *(v19 + 17), *(v19 + 18), *(v19 + 19)];
        [v6 updateBBLongSessionState:v19[81]];
        v9 = [v6 isBBHighPowerState];
        [v6 updateBBHighPowerState:*(v19 + 17) != 0];
        if (*(v19 + 18))
        {
          v21 = *(v19 + 19) == 0;
        }

        else
        {
          v21 = 0;
        }

        [v6 updateBBLimitedServiceState:v21];
        v25 = *(v19 + 17);
        goto LABEL_39;
      }

      if (buffer == 225)
      {
        [WCM_Logging logLevel:22 message:@"Init BLOB Size: %d, Version: %d", Length, 225];
        v8 = CFDataGetBytePtr(a1);
        *a2 = v8[1];
        [v6 setServingCellRSSI:*(v8 + 28)];
        [v6 setServingCellRSRP:*(v8 + 6)];
        [v6 setServingCellSNR:*(v8 + 58)];
        [v6 setServingCellRSRQ:*(v8 + 7)];
        [v6 setIMSPreference:*(v8 + 10) != 0];
        [WCM_Logging logLevel:22 message:@"BB Long Session Status: %d, BB High Power Status: %d, True Limited Service: %d, BB in HPLMN: %d", v8[59], *(v8 + 11), *(v8 + 12), *(v8 + 13)];
        [v6 updateBBLongSessionState:v8[59]];
        v9 = [v6 isBBHighPowerState];
        [v6 updateBBHighPowerState:*(v8 + 11) != 0];
        if (*(v8 + 12))
        {
          v10 = *(v8 + 13) == 0;
        }

        else
        {
          v10 = 0;
        }

        [v6 updateBBLimitedServiceState:v10];
        v25 = *(v8 + 11);
LABEL_39:
        if (((v9 ^ (v25 != 0)) & 1) == 0)
        {
          [WCM_Logging logLevel:22 message:@"Baseband_hi_power_state did not change, Prev Value: %d, Current Value:%d", v9, v25 != 0];
        }

        return 1;
      }
    }

    v11 = @"processVoiceLQMBlob: LQM version is not supported";
  }

  else
  {
    v11 = @"processVoiceLQMBlob: LQM BLOB is empty";
  }

  [WCM_Logging logLevel:22 message:v11, v29, v31];
  return 1;
}

id sub_1000E8210(const __CFDictionary *a1, void *a2)
{
  valuePtr = 0;
  if (a1)
  {
    Value = CFDictionaryGetValue(a1, kCTIndicatorsGradedSignalStrength);
    if (Value && (v4 = Value, v5 = CFGetTypeID(Value), v5 == CFNumberGetTypeID()))
    {
      v6 = CFNumberGetValue(v4, kCFNumberSInt32Type, &valuePtr);
      v7 = valuePtr;
      if (v6)
      {
        [WCM_Logging logLevel:22 message:@"getFilteredSignalStrength: bars=%li", valuePtr, v10];
        return [a2 setCurrentSignalBars:valuePtr];
      }
    }

    else
    {
      v7 = 0;
    }

    [WCM_Logging logLevel:22 message:@"getFilteredSignalStrength: Notification error -> bars=%li", v7, v10];
    return [a2 setCurrentSignalBars:valuePtr];
  }

  SignalStrength = _CTServerConnectionGetSignalStrength();
  if (HIDWORD(SignalStrength) || SignalStrength)
  {
    [WCM_Logging logLevel:22 message:@"_CTServerConnectionGetSignalStrength error %d domain %d", HIDWORD(SignalStrength), SignalStrength];
  }

  else
  {
    [WCM_Logging logLevel:22 message:@"_CTServerConnectionGetSignalStrength: Queried -> bars=%li", valuePtr, v10];
  }

  return [a2 setCurrentSignalBars:valuePtr];
}

id sub_1000E833C(uint64_t a1, void *a2)
{
  if (a1)
  {
    if (_CTServerConnectionGetRadioAccessTechnology())
    {
      v4 = @"_CTServerConnectionGetRadioAccessTechnology returned failed";
LABEL_4:
      [WCM_Logging logLevel:22 message:v4];
      [WCM_Logging logLevel:22 message:@"Serving cell type is (%s)", "UNKNOWN_RADIO "];
      v5 = a2;
      v6 = 10;
      return [v5 setServingCellType:v6];
    }

    if (CFEqual(0, kCTRegistrationRadioAccessTechnologyGSM))
    {
      goto LABEL_9;
    }

    if (CFEqual(0, kCTRegistrationRadioAccessTechnologyUTRAN2))
    {
      v8 = 7;
      v9 = "TDSCDMA_RADIO";
      goto LABEL_12;
    }

    if (CFEqual(0, kCTRegistrationRadioAccessTechnologyGSMCompact))
    {
LABEL_9:
      v8 = 8;
      v9 = "GSM_RADIO";
    }

    else
    {
      if (CFEqual(0, kCTRegistrationRadioAccessTechnologyUTRAN))
      {
        v8 = 2;
        v9 = "UMTS_RADIO";
        goto LABEL_12;
      }

      if (CFEqual(0, kCTRegistrationRadioAccessTechnologyCDMA1x))
      {
        v8 = 3;
        v9 = "CDMA1X_RADIO";
        goto LABEL_12;
      }

      if (CFEqual(0, kCTRegistrationRadioAccessTechnologyCDMAEVDO))
      {
        v8 = 4;
        v9 = "CDMAEVDO";
        goto LABEL_12;
      }

      if (CFEqual(0, kCTRegistrationRadioAccessTechnologyCDMAHybrid))
      {
        v8 = 5;
        v9 = "CDMAHybrid";
        goto LABEL_12;
      }

      if (CFEqual(0, kCTRegistrationRadioAccessTechnologyeHRPD))
      {
        v8 = 6;
        v9 = "eHRPD_RADIO";
        goto LABEL_12;
      }

      if (CFEqual(0, kCTRegistrationRadioAccessTechnologyLTE))
      {
        [WCM_Logging logLevel:22 message:@"Serving cell type is (%s)", "LTE Radio"];
        [a2 setServingCellType:1];
        _CTServerConnectionGetCapabilityStatusExtended();
        [a2 updateVoLTEEnableStatus:0];
        return [WCM_Logging logLevel:22 message:@"_CTServerConnectionGetCapabilityStatusExtended: volte not Supported"];
      }

      if (!CFEqual(0, kCTRegistrationRadioAccessTechnologyNR))
      {
        v4 = @"Unknown registered technology";
        goto LABEL_4;
      }

      v8 = 9;
      v9 = "N_RADIO";
    }

LABEL_12:
    [WCM_Logging logLevel:22 message:@"Serving cell type is (%s)", v9];
    v5 = a2;
    v6 = v8;
    return [v5 setServingCellType:v6];
  }

  return [WCM_Logging logLevel:22 message:@"iRAT currently not connected to telephony service"];
}

void sub_1000E8794(id a1, __CFString *a2, __CFDictionary *a3)
{
  if ([+[WRM_HandoverManager WRM_HandoverManagerSingleton](WRM_HandoverManager "WRM_HandoverManagerSingleton")])
  {
    [WCM_Logging logLevel:22 message:@"WRM_CTService:serverConnectionCallback for MultiSIM device"];
    v5 = [+[WRM_EnhancedCTService wrm_EnhancedCTServiceSingleton](WRM_EnhancedCTService "wrm_EnhancedCTServiceSingleton")];
  }

  else
  {
    v5 = [+[WRM_HandoverManager WRM_HandoverManagerSingleton](WRM_HandoverManager "WRM_HandoverManagerSingleton")];
    [WCM_Logging logLevel:22 message:@"WRM_CTService:serverConnectionCallback"];
  }

  if (!CFEqual(a2, kCTRegistrationStatusChangedNotification))
  {
    if (CFEqual(a2, kCTRegistrationDataStatusChangedNotification))
    {
      v11 = kCFBooleanTrue == CFDictionaryGetValue(a3, kCTRegistrationDataAttached);
      [WCM_Logging logLevel:22 message:@"WRM_CTService:kCTRegistrationDataStatusChangedNotification data attach: %d", v11];
      [v5 updatePSAttachStatus:v11];
      sub_1000E833C([v5 getCTConnectionReference], v5);
      goto LABEL_10;
    }

    if (CFEqual(a2, kCTCellularDataSettingsChangeNotification))
    {
      v39 = 0;
      [v5 getCTConnectionReference];
      if (_CTServerConnectionGetCellularDataIsEnabled())
      {
        [WCM_Logging logLevel:22 message:@"Unable to retrieve data enable status %d", v39, v33];
        return;
      }

      [WCM_Logging logLevel:22 message:@"WRM_CTService:kCTCellularDataSettingsChangeNotification %d", v39];
      [v5 updateDataEnableStatus:v39 != 0];
LABEL_10:
      dispatch_async([+[WRM_HandoverManager WRM_HandoverManagerSingleton](WRM_HandoverManager "WRM_HandoverManagerSingleton")], &stru_100242048);
      return;
    }

    if (CFEqual(a2, kCTIndicatorsSignalStrengthNotification))
    {
      [WCM_Logging logLevel:22 message:@"WRM_CTService:kCTIndicatorsSignalStrengthNotification"];
      [v5 getCTConnectionReference];
      sub_1000E8210(a3, v5);
      goto LABEL_10;
    }

    if (CFEqual(a2, kCTRegistrationCellChangedNotification))
    {
      [WCM_Logging logLevel:22 message:@"WRM_CTService:kCTRegistrationCellChangedNotification"];
      v14 = [v5 getCTConnectionReference];

      sub_1000E833C(v14, v5);
      return;
    }

    if (CFEqual(a2, kCTRadioVoiceLinkQualityNotification))
    {
      v38 = 0;
      v37 = 0;
      v15 = [v5 getLteVoiceLQM];
      [WCM_Logging logLevel:22 message:@"Recevied kCTRadioVoiceLinkQualityNotification"];
      Value = CFDictionaryGetValue(a3, kCTRadioEnhancedVoiceLinkQualityKey);
      if (!Value)
      {
        v36 = 0;
        [WCM_Logging logLevel:22 message:@"LQM BLOB is empty"];
        v23 = CFDictionaryGetValue(a3, kCTRadioVoiceLinkQualityKey);
        if (v23)
        {
          v24 = v23;
          v25 = CFGetTypeID(v23);
          if (v25 == CFNumberGetTypeID())
          {
            v26 = [v5 getCurrentSignalBars];
            CFNumberGetValue(v24, kCFNumberIntType, &v36);
            if (v36 == 10 && v26 >= 3)
            {
              [WCM_Logging logLevel:22 message:@"Ignoring LQM: Bars: %lld, LQM: %d", v26, 10];
            }

            else
            {
              [WCM_Logging logLevel:22 message:@"Rcvd Voice LQM from CT: %d", v36];
              [v5 setLteVoiceLQM:v36];
            }
          }
        }

        return;
      }

      v17 = Value;
      [WCM_Logging logLevel:22 message:@"WRM_CTService:Voice LQM notification received"];
      sub_1000E7304(v17, &v38, &v37);
      if (v15 == v38)
      {
        return;
      }

      v18 = [v5 getCurrentSignalBars];
      if (v38 == 10 && v18 >= 3)
      {
        if (v37 >= 3u)
        {
          v19 = "Unknown";
          if (v37 == 4)
          {
            v19 = "lqmBadLQE";
          }
        }

        else
        {
          v19 = off_100242068[v37];
        }

        [WCM_Logging logLevel:22 message:@"Ignoring LQM: Bars: %lld, LQM: %d, Reason Code: %d, Reason: (%s)", v18, 10, v37, v19];
      }

      else
      {
        if (v37 >= 3u)
        {
          v28 = "Unknown";
          if (v37 == 4)
          {
            v28 = "lqmBadLQE";
          }
        }

        else
        {
          v28 = off_100242068[v37];
        }

        [WCM_Logging logLevel:22 message:@"Bars: %lld, LQM: %d, Reason Code: %d, Reason: (%s)", v18, v38, v37, v28];
        [v5 setLteVoiceLQM:v38];
        [v5 setVoiceLQMReasonCode:v37];
      }

      if (v37 >= 3u)
      {
        v30 = "Unknown";
        if (v37 == 4)
        {
          v30 = "lqmBadLQE";
        }
      }

      else
      {
        v30 = off_100242068[v37];
      }

      v33 = v37;
      v34 = v30;
      v32 = v38;
      v29 = @"LQM: %d, Reason Code: %d, Reason: (%s)";
      goto LABEL_68;
    }

    if (CFEqual(a2, kCTRadioEnhancedLinkQualityNotification))
    {
      valuePtr = 0;
      v20 = CFDictionaryGetValue(a3, kCTRadioEnhancedLinkQualityNotificationType);
      [WCM_Logging logLevel:22 message:@"Recevied kCTRadioEnhancedLinkQualityNotificationType notification"];
      if (v20)
      {
        v21 = CFGetTypeID(v20);
        if (v21 == CFNumberGetTypeID())
        {
          if (CFNumberGetValue(v20, kCFNumberIntType, &valuePtr))
          {
            v22 = CFDictionaryGetValue(a3, kCTRadioEnhancedLinkQualityNotificationData);
            if (v22)
            {
              sub_1000E71B0(v22, valuePtr);
              return;
            }
          }
        }
      }

      v13 = @"Recevied kCTRadioEnhancedLinkQualityNotificationType with empty BLOB";
      goto LABEL_16;
    }

    if (CFEqual(a2, kCTCallHandoverStartedNotification))
    {
      v27 = @"SRVCC Handover started";
    }

    else
    {
      if (CFEqual(a2, kCTCallHandoverEndedNotification))
      {
        [WCM_Logging logLevel:22 message:@"SRVCC Handover ended"];
        [v5 setSrvccHandoverState:0];
        if (kCFBooleanTrue == CFDictionaryGetValue(a3, kCTCallHandoverSuccess))
        {
          v29 = @"SRVCC Handover successful";
        }

        else
        {
          v29 = @"SRVCC Handover failed";
        }

LABEL_68:
        [WCM_Logging logLevel:22 message:v29, v32, v33, v34];
        goto LABEL_10;
      }

      if (!CFEqual(a2, kCTCallHandoverLikelyNotification))
      {
        if (CFEqual(a2, kCTSettingCallCapabilitiesChangedNotification))
        {
          [WCM_Logging logLevel:22 message:@"kCTSettingCallCapabilitiesChangedNotification:kCTCapabilityVoLTE:%@", a3];
          if (kCFBooleanTrue == CFDictionaryGetValue(a3, kCTCapabilityAgent))
          {
            v31 = 1;
            [WCM_Logging logLevel:22 message:@"kCTSettingCallCapabilitiesChangedNotification:kCTCapabilityVoLTE %d", 1];
          }

          else
          {
            v31 = 0;
          }

          [WCM_Logging logLevel:22 message:@"kCTSettingCallCapabilitiesChangedNotification received %d", v31, v33];
        }

        return;
      }

      v27 = @"SRVCC Handover likely";
    }

    [WCM_Logging logLevel:22 message:v27];

    [v5 setSrvccHandoverState:1];
    return;
  }

  v6 = CFDictionaryGetValue(a3, kCTRegistrationStatus);
  if (v6)
  {
    v7 = v6;
    v8 = CFStringCompare(v6, kCTRegistrationStatusRegisteredHome, 0);
    v9 = kCTRegistrationStatusRegisteredRoaming;
    if (v8)
    {
      v10 = CFStringCompare(v7, kCTRegistrationStatusRegisteredRoaming, 0) == kCFCompareEqualTo;
    }

    else
    {
      v10 = 1;
    }

    v12 = CFStringCompare(v7, v9, 0) == kCFCompareEqualTo;
    [v5 updateRegistrationStatus:v10 :v12];
    v32 = v10;
    v33 = v12;
    v13 = @"WRM_CTService:kCTRegistrationStatusChangedNotification reg status %d, roaming Status %d";
LABEL_16:
    [WCM_Logging logLevel:22 message:v13, v32, v33];
    return;
  }

  [WCM_Logging logLevel:22 message:@"WRM_CTService:kCTRegistrationStatusChangedNotification returned null"];
}

void sub_1000E9010(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v10 = 0;
  if (!_CTServerConnectionGetSupportedEnhancedLinkQualityMetric())
  {
    v2 = [[NSMutableDictionary alloc] initWithCapacity:4];
    [WCM_Logging logLevel:22 message:@"configureEnhancedDataLQM"];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000E9864;
    v9[3] = &unk_10023FC58;
    v9[4] = v2;
    [v10 enumerateKeysAndObjectsUsingBlock:v9];
    v3 = _CTServerConnectionRegisterSupportedEnhancedLinkQualityMetric();
    CFRelease(v10);
    if (HIDWORD(v3))
    {
      v4 = 0;
    }

    else
    {
      v4 = v3 == 0;
    }

    if (v4)
    {
      v5 = _CTServerConnectionRegisterForNotification();
      if (HIDWORD(v5))
      {
        v6 = 0;
      }

      else
      {
        v6 = v5 == 0;
      }

      if (v6)
      {
        [WCM_Logging logLevel:22 message:@"configureEnhancedDataLQM: registered for eLQM notification", v7, v8];
      }

      else
      {
        [WCM_Logging logLevel:22 message:@"eLQM: Failed to register with Baseband for eLQM notifications, error = (%d, %d)", v5, HIDWORD(v5)];
      }
    }

    else
    {
      [WCM_Logging logLevel:22 message:@"eLQM: Failed to request supported metrics from Baseband, error = (%d, %d)", v3, HIDWORD(v3)];
    }
  }
}

void sub_1000E9834(id a1)
{
  v1 = +[WRM_HandoverManager WRM_HandoverManagerSingleton];

  [v1 evaluateHandover];
}

id sub_1000E9864(uint64_t a1, uint64_t a2, void *a3)
{
  result = [a3 BOOLValue];
  if (result)
  {
    v6 = *(a1 + 32);

    return [v6 setObject:&off_1002717C0 forKey:a2];
  }

  return result;
}

id sub_1000E9EA4(uint64_t a1)
{
  *(*(a1 + 32) + 60) = [*(a1 + 32) getWiFiServiceSingletone];
  [*(*(a1 + 32) + 60) initializeiRATMetrics];
  [*(*(a1 + 32) + 60) setDelegate:?];
  v2 = *(*(a1 + 32) + 60);

  return [v2 registerWiFiCallbacks];
}

id sub_1000E9FC0(uint64_t a1)
{
  [objc_msgSend(*(a1 + 32) "wifiService")];
  v2 = [*(a1 + 32) wifiService];

  return [v2 setDelegate:0];
}

id sub_1000EA7B0(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) wifiService];
  if (v2 == 1)
  {
    [v3 enableLQMUpdate];
  }

  else
  {
    [v3 disableLQMUpdate];
  }

  if (*(a1 + 40))
  {
    v4 = "YES";
  }

  else
  {
    v4 = "NO";
  }

  return [WCM_Logging logLevel:3 message:@"toggleWiFiLQMIfNeeded %s", v4];
}

id sub_1000EA918(uint64_t a1)
{
  [objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
  v1 = +[WCM_PolicyManager singleton];

  return [v1 updateControllerState:103];
}

id sub_1000EA9FC(uint64_t a1)
{
  [WCM_Logging logLevel:2 message:@"WiFiController base class CarPlayState state:(%d), reason:(%d)", *(a1 + 36), *(a1 + 32)];
  if ([+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")])
  {
    [WCM_Logging logLevel:2 message:@"WiFiController calling policy via internal xpc"];
    v1 = +[WCM_PolicyManager singleton];

    return [v1 updateControllerState:514];
  }

  else
  {

    return [WCM_Logging logLevel:2 message:@"WiFiController is null"];
  }
}

id sub_1000EAB48(uint64_t a1)
{
  [WCM_Logging logLevel:2 message:@"WiFiController least congested Wifi channel:(%d), number:(%d)", *(a1 + 32), *(a1 + 36)];
  if ([+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")])
  {
    [WCM_Logging logLevel:2 message:@"WiFiController calling policy via internal xpc for least congested channel"];
    v1 = +[WCM_PolicyManager singleton];

    return [v1 updateControllerState:104];
  }

  else
  {

    return [WCM_Logging logLevel:2 message:@"WiFiController is null"];
  }
}

id sub_1000EAC94(uint64_t a1)
{
  result = [+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
  if (result)
  {
    v3 = result;
    [result setCatsAppPriority:*(a1 + 40)];
    [v3 setCatsAppBitmap:*(a1 + 32)];
    [+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
    v4 = +[WCM_PolicyManager singleton];

    return [v4 updateControllerState:1000];
  }

  return result;
}

id sub_1000EAE28(uint64_t a1)
{
  result = [+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
  if (result)
  {
    v3 = result;
    result = [result powerState];
    if (result)
    {
      if (*(a1 + 32) != 5)
      {
        [+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
        [+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];

        return [v3 updateWiFiState:1 channel:0 centerFreq:0 bandwidth:0 hostAp:0];
      }
    }

    else
    {

      return [WCM_Logging logLevel:2 message:@"WiFiS: ignore linkdown when WiFi Power off"];
    }
  }

  return result;
}

id sub_1000EAFB8(uint64_t a1)
{
  v2 = [+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
  if (!v2)
  {
    v9 = *(a1 + 32);
    if (v9 >= 4)
    {
      if (v9 == 4)
      {
        v10 = "ASSOCIATED_6G";
      }

      else
      {
        v10 = "INVALID_STATE!!!";
      }
    }

    else
    {
      v10 = off_100242140[v9];
    }

    [WCM_Logging logLevel:5 message:@"WiFiS: updateWiFiState: wifiState(%s) wifiChannel(%d), hostAP(%d), centerFreqMHz(%d), bandwidthMHz(%d)", v10, *(a1 + 36), *(a1 + 48), *(a1 + 40), *(a1 + 44)];
    [+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
    [+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
    [+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
    [+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
    [+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
    result = [objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
    if (!result)
    {
      return result;
    }

LABEL_31:
    v16 = +[WCM_PolicyManager singleton];

    return [v16 handleLow5GRate:0 forceReset:0];
  }

  v3 = v2;
  v4 = [v2 wifiState];
  v5 = [v3 wifiChannel];
  v6 = [v3 hostAP];
  v7 = [+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
  if (v4)
  {
    if (v4 >= 4)
    {
      v8 = "INVALID_STATE!!!";
      if (v4 == 4)
      {
        v8 = "ASSOCIATED_6G";
      }
    }

    else
    {
      v8 = off_100242128[v4 - 1];
    }
  }

  else
  {
    v8 = "DISABLED";
  }

  v11 = *(a1 + 32);
  if (v11 >= 4)
  {
    if (v11 == 4)
    {
      v12 = "ASSOCIATED_6G";
    }

    else
    {
      v12 = "INVALID_STATE!!!";
    }
  }

  else
  {
    v12 = off_100242140[v11];
  }

  result = [WCM_Logging logLevel:5 message:@"WiFiS: updateWiFiState: wifiState(%s -> %s) wifiChannel(%d -> %d), hostAP(%d -> %d), centerFreqMHz(%d), bandwidthMHz(%d)", v8, v12, v5, *(a1 + 36), v6, *(a1 + 48), *(a1 + 40), *(a1 + 44)];
  v14 = *(a1 + 32);
  if (__PAIR64__(v5, v4) != *(a1 + 32) || *(a1 + 48) != v6)
  {
    if (!v4 && v14)
    {
      [objc_msgSend(v3 "wifiService")];
      [objc_msgSend(v3 "wifiService")];
      [objc_msgSend(v3 "wifiService")];
      [v3 updateMWSSignalingConfig];
      v14 = *(a1 + 32);
    }

    [v3 setWifiState:v14];
    [v3 setWifiChannel:*(a1 + 36)];
    [v3 setHostAP:*(a1 + 48)];
    +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 4, @"centerFreq(%d -> %d) bandwidth(%d -> %d)", [v3 channelCenterFreqMHz], *(a1 + 40), objc_msgSend(v3, "channelBandwidthMHz"), *(a1 + 44));
    [v3 setChannelCenterFreqMHz:*(a1 + 40)];
    [v3 setChannelBandwidthMHz:*(a1 + 44)];
    [v3 setReportedChannelCenterFreqMHz:{objc_msgSend(v3, "channelCenterFreqMHz")}];
    if ([objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")] && (objc_msgSend(objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager, "singleton"), "activeCoexFeatures"), "containsObject:", @"WiFiEnhCoexSupport") & 1) == 0 && objc_msgSend(v3, "wifiChannel"))
    {
      v15 = sub_10008EF74([v3 wifiChannel], objc_msgSend(v3, "channelBandwidthMHz"));
      [v3 setChannelCenterFreqMHz:sub_10008F030(v15)];
      +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 4, @"Modified WIFI params: NEW centerFreq(%d -> %d) NEW: bandwidth(%d -> %d)", *(a1 + 40), [v3 channelCenterFreqMHz], *(a1 + 44), objc_msgSend(v3, "channelBandwidthMHz"));
    }

    [+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
    [+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
    [+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
    [+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
    [+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
    result = [objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
    if (result)
    {
      if (*(a1 + 32) < 2u)
      {
        goto LABEL_31;
      }
    }
  }

  return result;
}

id sub_1000EB4C4(uint64_t a1)
{
  result = [+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
  if (result)
  {
    v3 = result;
    v4 = *(a1 + 32);
    result = [result hostAP5GHzActive];
    if (v4 != result)
    {
      +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 2, @"WiFiS: hostAP5GHzState changed (%d -> %d)", [v3 hostAP5GHzActive], *(a1 + 32));
      [v3 setHostAP5GHzActive:*(a1 + 32)];
      v5 = +[WCM_PolicyManager singleton];
      v6 = *(a1 + 32);

      return [v5 handle5GHzHostAPStateEvent:v6];
    }
  }

  return result;
}

id sub_1000EB610(uint64_t a1)
{
  result = [+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
  if (!result)
  {
    return result;
  }

  v3 = result;
  +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 3, @"WiFiController TxRate: %d RxRate: %d and BW: %d ", *(a1 + 32), *(a1 + 36), [result channelBandwidthMHz]);
  if ([v3 wifiState] != 3 && objc_msgSend(v3, "wifiState") != 4)
  {
    v6 = 0;
    byte_1002B81D8 = 0;
    byte_1002B81D9 = 0;
    goto LABEL_18;
  }

  if ([v3 channelBandwidthMHz] == 20)
  {
    if ((*(a1 + 36) - 30000) <= 0xFFFF8AD0)
    {
      v4 = *(a1 + 32) - 1;
      v5 = 29999;
LABEL_16:
      v6 = v4 < v5;
      goto LABEL_18;
    }
  }

  else if ([v3 channelBandwidthMHz] == 40)
  {
    if ((*(a1 + 36) - 40000) <= 0xFFFF63C0)
    {
      v4 = *(a1 + 32) - 1;
      v5 = 39999;
      goto LABEL_16;
    }
  }

  else
  {
    v7 = [v3 channelBandwidthMHz];
    v8 = *(a1 + 36);
    if (v7 == 80)
    {
      if ((v8 - 100000) < 0xFFFE7961)
      {
        v4 = *(a1 + 32) - 1;
        v5 = 99999;
        goto LABEL_16;
      }
    }

    else if ((v8 - 200000) < 0xFFFCF2C1)
    {
      v4 = *(a1 + 32) - 1;
      v5 = 199999;
      goto LABEL_16;
    }
  }

  v6 = 1;
LABEL_18:
  [WCM_Logging logLevel:3 message:@"WiFiController Low5GRate Check cureRate: %d Prev1Rate: %d Prev2Rate: %d", v6, byte_1002B81D8, byte_1002B81D9];
  v9 = +[WCM_PolicyManager singleton];
  if (v6 && byte_1002B81D8 == 1)
  {
    v10 = byte_1002B81D9;
  }

  else
  {
    v10 = 0;
  }

  result = [v9 handleLow5GRate:v10 & 1 forceReset:0];
  byte_1002B81D9 = byte_1002B81D8;
  byte_1002B81D8 = v6;
  return result;
}

uint64_t sub_1000EBBAC(uint64_t a1, uint64_t a2, xpc_object_t object)
{
  if (xpc_get_type(object) == &_xpc_type_int64)
  {
    [*(a1 + 32) setObject:+[NSNumber numberWithLongLong:](NSNumber forKey:{"numberWithLongLong:", xpc_int64_get_value(object)), +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", a2)}];
  }

  return 1;
}

void sub_1000EBF14(uint64_t a1)
{
  [WCM_Logging logLevel:22 message:@"LocationController: create CLLocatoinManager"];
  v8 = [NSBundle bundleWithPath:@"/System/Library/LocationBundles/WRMLinkSelection.bundle"];
  v2 = [[CLLocationManager alloc] initWithEffectiveBundle:v8 delegate:*(a1 + 32) onQueue:*(*(a1 + 32) + 8)];
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;

  [*(*(a1 + 32) + 16) setDesiredAccuracy:*(a1 + 40)];
  [*(*(a1 + 32) + 16) setDistanceFilter:*(a1 + 48)];
  v5 = [CLLocationManager authorizationStatusForBundle:v8];
  if ((v5 - 3) > 1)
  {
    v7 = v5;
    v6 = @"LocationController: bundle is NOT authorized %d";
  }

  else
  {
    v6 = @"LocationController: bundle is authorized";
  }

  [WCM_Logging logLevel:22 message:v6, v7];
}

id sub_1000EC08C(uint64_t a1)
{
  *(*(a1 + 32) + 24) = 0;
  result = *(*(a1 + 32) + 16);
  if (result)
  {
    [result stopUpdatingLocation];

    return [WCM_Logging logLevel:22 message:@"LocationController: stopMonitoring"];
  }

  return result;
}

id sub_1000F23E8(uint64_t a1, uint64_t a2, void *a3)
{
  [WCM_Logging logLevel:3 message:@"WiFiS: callbackWiFiManagerClientWowStateChanged: isEnabled(%d)", a2];

  return [a3 setWoWState:a2];
}

id sub_1000F2448(uint64_t a1, uint64_t a2, void *a3)
{
  result = [WCM_Logging logLevel:2 message:@"WiFiS: callbackWiFiManagerClientDeviceAttachment device(%p)", a2];
  if (a2)
  {

    return [a3 setWiFiDevice:a2];
  }

  return result;
}

void sub_1000F299C(uint64_t a1)
{
  [WCM_Logging logLevel:3 message:@"WiFiS: setting PHS blocklist channels %@", *(a1 + 32)];
  v2 = +[NSMutableArray array];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * i);
        v13 = @"MWS_Channel_Number";
        v14 = v8;
        [v2 addObject:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", &v14, &v13, 1)}];
      }

      v5 = [v3 countByEnumeratingWithState:&v9 objects:v15 count:16];
    }

    while (v5);
  }

  [*(a1 + 40) sendMessage:@"MWS_Blacklisted_Channels" withValue:v2];
}

void sub_1000F2B94(uint64_t a1)
{
  [WCM_Logging logLevel:3 message:@"WiFiS: setting WCI2 enabled channels %@", *(a1 + 32)];
  v2 = +[NSMutableArray array];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * i);
        v13 = @"MWS_Channel_Number";
        v14 = v8;
        [v2 addObject:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", &v14, &v13, 1)}];
      }

      v5 = [v3 countByEnumeratingWithState:&v9 objects:v15 count:16];
    }

    while (v5);
  }

  [*(a1 + 40) sendMessage:@"MWS_Coex_Enabled_Channels" withValue:v2];
}

void sub_1000F2D8C(uint64_t a1)
{
  [WCM_Logging logLevel:3 message:@"WCI2_V2 WiFiS: setting WCI2V2 enabled channels %@", *(a1 + 32)];
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v2 = [&off_100286180 countByEnumeratingWithState:&v50 objects:v59 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    v5 = 0;
    v6 = *v51;
    do
    {
      v7 = 0;
      v8 = v4;
      do
      {
        if (*v51 != v6)
        {
          objc_enumerationMutation(&off_100286180);
        }

        v9 = [*(a1 + 32) containsObject:*(*(&v50 + 1) + 8 * v7)];
        v10 = 1 << v8;
        if (!v9)
        {
          LOWORD(v10) = 0;
        }

        v5 |= v10;
        ++v8;
        v7 = v7 + 1;
      }

      while (v3 != v7);
      v4 += v3;
      v3 = [&off_100286180 countByEnumeratingWithState:&v50 objects:v59 count:16];
    }

    while (v3);
    v37 = v5 & 0xFFFE;
  }

  else
  {
    v37 = 0;
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v11 = [&off_100286198 countByEnumeratingWithState:&v46 objects:v58 count:16];
  if (v11)
  {
    v12 = 0;
    v13 = 0;
    v14 = *v47;
    do
    {
      v15 = 0;
      v16 = v12;
      do
      {
        if (*v47 != v14)
        {
          objc_enumerationMutation(&off_100286198);
        }

        v17 = [*(a1 + 32) containsObject:*(*(&v46 + 1) + 8 * v15)];
        v18 = 1 << v16;
        if (!v17)
        {
          LOWORD(v18) = 0;
        }

        v13 |= v18;
        ++v16;
        v15 = v15 + 1;
      }

      while (v11 != v15);
      v12 += v11;
      v11 = [&off_100286198 countByEnumeratingWithState:&v46 objects:v58 count:16];
    }

    while (v11);
    v11 = v13;
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v19 = [&off_1002861B0 countByEnumeratingWithState:&v42 objects:v57 count:16];
  if (v19)
  {
    v20 = 0;
    v21 = 0;
    v22 = *v43;
    do
    {
      v23 = 0;
      v24 = v20;
      do
      {
        if (*v43 != v22)
        {
          objc_enumerationMutation(&off_1002861B0);
        }

        v25 = [*(a1 + 32) containsObject:*(*(&v42 + 1) + 8 * v23)];
        v26 = 1 << v24;
        if (!v25)
        {
          LOWORD(v26) = 0;
        }

        v21 |= v26;
        ++v24;
        v23 = v23 + 1;
      }

      while (v19 != v23);
      v20 += v19;
      v19 = [&off_1002861B0 countByEnumeratingWithState:&v42 objects:v57 count:16];
    }

    while (v19);
    v19 = v21;
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v27 = [&off_1002861C8 countByEnumeratingWithState:&v38 objects:v56 count:16];
  if (v27)
  {
    v36 = v11;
    v28 = 0;
    v29 = 0;
    v30 = *v39;
    do
    {
      v31 = 0;
      v32 = v28;
      do
      {
        if (*v39 != v30)
        {
          objc_enumerationMutation(&off_1002861C8);
        }

        v33 = [*(a1 + 32) containsObject:*(*(&v38 + 1) + 8 * v31)];
        v34 = 1 << v32;
        if (!v33)
        {
          LOWORD(v34) = 0;
        }

        v29 |= v34;
        ++v32;
        v31 = v31 + 1;
      }

      while (v27 != v31);
      v28 += v27;
      v27 = [&off_1002861C8 countByEnumeratingWithState:&v38 objects:v56 count:16];
    }

    while (v27);
    v27 = v29;
    v11 = v36;
  }

  v54[0] = @"IO80211InterfaceMwsCoex2GBitmapV2";
  v55[0] = [NSNumber numberWithInt:v37];
  v54[1] = @"IO80211InterfaceMwsCoex5GBitmapLowV2";
  v55[1] = [NSNumber numberWithInt:v11];
  v54[2] = @"IO80211InterfaceMwsCoex5GBitmapMidV2";
  v55[2] = [NSNumber numberWithInt:v19];
  v54[3] = @"IO80211InterfaceMwsCoex5GBitmapHiV2";
  v55[3] = [NSNumber numberWithInt:v27];
  v35 = [NSDictionary dictionaryWithObjects:v55 forKeys:v54 count:4];
  [WCM_Logging logLevel:1 message:@"DLDebug_ WCI2V2_IOVAR: setting APPLE80211KEY_MWS_COEX_BITMAP_V2 %@", v35];
  [*(a1 + 40) sendMessage:@"IO80211InterfaceMwsCoexBitmapV2" withValue:v35];
}

void sub_1000F3288(id *a1)
{
  [WCM_Logging logLevel:3 message:@"WCI2_WiFiEnh WiFiS: setting WCI2V2 enabled channels 2G5G part channels %@, Enh part channels %@", a1[4], a1[5]];
  v125 = 0u;
  v126 = 0u;
  v123 = 0u;
  v124 = 0u;
  v2 = [&off_1002861E0 countByEnumeratingWithState:&v123 objects:v137 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    v5 = 0;
    v6 = *v124;
    do
    {
      v7 = 0;
      v8 = v4;
      do
      {
        if (*v124 != v6)
        {
          objc_enumerationMutation(&off_1002861E0);
        }

        v9 = [a1[4] containsObject:*(*(&v123 + 1) + 8 * v7)];
        v10 = 1 << v8;
        if (!v9)
        {
          LOWORD(v10) = 0;
        }

        v5 |= v10;
        ++v8;
        v7 = v7 + 1;
      }

      while (v3 != v7);
      v4 += v3;
      v3 = [&off_1002861E0 countByEnumeratingWithState:&v123 objects:v137 count:16];
    }

    while (v3);
    v90 = v5 & 0xFFFE;
  }

  else
  {
    v90 = 0;
  }

  v121 = 0u;
  v122 = 0u;
  v119 = 0u;
  v120 = 0u;
  v11 = [&off_1002861F8 countByEnumeratingWithState:&v119 objects:v136 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    v14 = 0;
    v15 = *v120;
    do
    {
      v16 = 0;
      v17 = v13;
      do
      {
        if (*v120 != v15)
        {
          objc_enumerationMutation(&off_1002861F8);
        }

        v18 = [a1[4] containsObject:*(*(&v119 + 1) + 8 * v16)];
        v19 = 1 << v17;
        if (!v18)
        {
          LOWORD(v19) = 0;
        }

        v14 |= v19;
        ++v17;
        v16 = v16 + 1;
      }

      while (v12 != v16);
      v13 += v12;
      v12 = [&off_1002861F8 countByEnumeratingWithState:&v119 objects:v136 count:16];
    }

    while (v12);
    v89 = v14;
  }

  else
  {
    v89 = 0;
  }

  v117 = 0u;
  v118 = 0u;
  v115 = 0u;
  v116 = 0u;
  v20 = [&off_100286210 countByEnumeratingWithState:&v115 objects:v135 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = 0;
    v23 = 0;
    v24 = *v116;
    do
    {
      v25 = 0;
      v26 = v22;
      do
      {
        if (*v116 != v24)
        {
          objc_enumerationMutation(&off_100286210);
        }

        v27 = [a1[4] containsObject:*(*(&v115 + 1) + 8 * v25)];
        v28 = 1 << v26;
        if (!v27)
        {
          LOWORD(v28) = 0;
        }

        v23 |= v28;
        ++v26;
        v25 = v25 + 1;
      }

      while (v21 != v25);
      v22 += v21;
      v21 = [&off_100286210 countByEnumeratingWithState:&v115 objects:v135 count:16];
    }

    while (v21);
    v88 = v23;
  }

  else
  {
    v88 = 0;
  }

  v113 = 0u;
  v114 = 0u;
  v111 = 0u;
  v112 = 0u;
  v29 = [&off_100286228 countByEnumeratingWithState:&v111 objects:v134 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = 0;
    v32 = 0;
    v33 = *v112;
    do
    {
      v34 = 0;
      v35 = v31;
      do
      {
        if (*v112 != v33)
        {
          objc_enumerationMutation(&off_100286228);
        }

        v36 = [a1[4] containsObject:*(*(&v111 + 1) + 8 * v34)];
        v37 = 1 << v35;
        if (!v36)
        {
          LOWORD(v37) = 0;
        }

        v32 |= v37;
        ++v35;
        v34 = v34 + 1;
      }

      while (v30 != v34);
      v31 += v30;
      v30 = [&off_100286228 countByEnumeratingWithState:&v111 objects:v134 count:16];
    }

    while (v30);
    v87 = v32;
  }

  else
  {
    v87 = 0;
  }

  v109 = 0u;
  v110 = 0u;
  v107 = 0u;
  v108 = 0u;
  v38 = [&off_100286240 countByEnumeratingWithState:&v107 objects:v133 count:16];
  if (v38)
  {
    v39 = v38;
    v40 = 0;
    v41 = 0;
    v42 = *v108;
    do
    {
      v43 = 0;
      v44 = v40;
      do
      {
        if (*v108 != v42)
        {
          objc_enumerationMutation(&off_100286240);
        }

        v45 = [a1[5] containsObject:*(*(&v107 + 1) + 8 * v43)];
        v46 = 1 << v44;
        if (!v45)
        {
          LOWORD(v46) = 0;
        }

        v41 |= v46;
        ++v44;
        v43 = v43 + 1;
      }

      while (v39 != v43);
      v40 += v39;
      v39 = [&off_100286240 countByEnumeratingWithState:&v107 objects:v133 count:16];
    }

    while (v39);
    v86 = v41;
  }

  else
  {
    v86 = 0;
  }

  v105 = 0u;
  v106 = 0u;
  v103 = 0u;
  v104 = 0u;
  v47 = [&off_100286258 countByEnumeratingWithState:&v103 objects:v132 count:16];
  if (v47)
  {
    v48 = v47;
    v49 = 0;
    v50 = 0;
    v51 = *v104;
    do
    {
      v52 = 0;
      v53 = v49;
      do
      {
        if (*v104 != v51)
        {
          objc_enumerationMutation(&off_100286258);
        }

        v54 = [a1[5] containsObject:*(*(&v103 + 1) + 8 * v52)];
        v55 = 1 << v53;
        if (!v54)
        {
          LOWORD(v55) = 0;
        }

        v50 |= v55;
        ++v53;
        v52 = v52 + 1;
      }

      while (v48 != v52);
      v49 += v48;
      v48 = [&off_100286258 countByEnumeratingWithState:&v103 objects:v132 count:16];
    }

    while (v48);
    v85 = v50;
  }

  else
  {
    v85 = 0;
  }

  v101 = 0u;
  v102 = 0u;
  v99 = 0u;
  v100 = 0u;
  v56 = [&off_100286270 countByEnumeratingWithState:&v99 objects:v131 count:16];
  if (v56)
  {
    v57 = 0;
    v58 = 0;
    v59 = *v100;
    do
    {
      v60 = 0;
      v61 = v57;
      do
      {
        if (*v100 != v59)
        {
          objc_enumerationMutation(&off_100286270);
        }

        v62 = [a1[5] containsObject:*(*(&v99 + 1) + 8 * v60)];
        v63 = 1 << v61;
        if (!v62)
        {
          LOWORD(v63) = 0;
        }

        v58 |= v63;
        ++v61;
        v60 = v60 + 1;
      }

      while (v56 != v60);
      v57 += v56;
      v56 = [&off_100286270 countByEnumeratingWithState:&v99 objects:v131 count:16];
    }

    while (v56);
    v56 = v58;
  }

  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  v64 = [&off_100286288 countByEnumeratingWithState:&v95 objects:v130 count:16];
  if (v64)
  {
    v65 = v64;
    v66 = 0;
    v67 = 0;
    v68 = *v96;
    do
    {
      v69 = 0;
      v70 = v66;
      do
      {
        if (*v96 != v68)
        {
          objc_enumerationMutation(&off_100286288);
        }

        v71 = [a1[5] containsObject:*(*(&v95 + 1) + 8 * v69)];
        v72 = 1 << v70;
        if (!v71)
        {
          LOWORD(v72) = 0;
        }

        v67 |= v72;
        ++v70;
        v69 = v69 + 1;
      }

      while (v65 != v69);
      v66 += v65;
      v65 = [&off_100286288 countByEnumeratingWithState:&v95 objects:v130 count:16];
    }

    while (v65);
    v73 = v67;
  }

  else
  {
    v73 = 0;
  }

  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  v74 = [&off_1002862A0 countByEnumeratingWithState:&v91 objects:v129 count:16];
  if (v74)
  {
    v84 = v73;
    v75 = v56;
    v76 = 0;
    v77 = 0;
    v78 = *v92;
    do
    {
      v79 = 0;
      v80 = v76;
      do
      {
        if (*v92 != v78)
        {
          objc_enumerationMutation(&off_1002862A0);
        }

        v81 = [a1[5] containsObject:*(*(&v91 + 1) + 8 * v79)];
        v82 = 1 << v80;
        if (!v81)
        {
          LOWORD(v82) = 0;
        }

        v77 |= v82;
        ++v80;
        v79 = v79 + 1;
      }

      while (v74 != v79);
      v76 += v74;
      v74 = [&off_1002862A0 countByEnumeratingWithState:&v91 objects:v129 count:16];
    }

    while (v74);
    v74 = v77;
    v56 = v75;
    v73 = v84;
  }

  if ([objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")])
  {
    v127[0] = @"MWS2GBITMAPWiFiEnh";
    v128[0] = [NSNumber numberWithInt:v90];
    v127[1] = @"MWS5GBITMAPLOWWiFiEnh";
    v128[1] = [NSNumber numberWithInt:v89];
    v127[2] = @"MWS5GBITMAPMIDWiFiEnh";
    v128[2] = [NSNumber numberWithInt:v88];
    v127[3] = @"MWS5GBITMAPHIWiFiEnh";
    v128[3] = [NSNumber numberWithInt:v87];
    v127[4] = @"MWSU5LowBITMAPWiFiEnh";
    v128[4] = [NSNumber numberWithInt:v86];
    v127[5] = @"MWSU5HighBITMAPWiFiEnh";
    v128[5] = [NSNumber numberWithInt:v85];
    v127[6] = @"MWSU6BITMAPWiFiEnh";
    v128[6] = [NSNumber numberWithInt:v56];
    v127[7] = @"MWSU7BITMAPWiFiEnh";
    v128[7] = [NSNumber numberWithInt:v73];
    v127[8] = @"MWSU8BITMAPWiFiEnh";
    v128[8] = [NSNumber numberWithInt:v74];
    v83 = [NSDictionary dictionaryWithObjects:v128 forKeys:v127 count:9];
    [WCM_Logging logLevel:4 message:@"WCI2_WiFiEnh_IOVAR: setting mwsCoexBitmapWiFiEnh %@", v83];
    [a1[6] sendMessage:@"MWSCOEXBITMAPWiFiEnh" withValue:v83];
  }
}

void sub_1000F3C1C(uint64_t a1)
{
  [WCM_Logging logLevel:3 message:@"DLDebug_ WiFi_Type7_IOVAR WiFiS: WiFi_Type7: setting Type7 MSG enabled channels %@", *(a1 + 32)];
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v2 = [&off_1002862B8 countByEnumeratingWithState:&v37 objects:v45 count:16];
  if (v2)
  {
    v3 = 0;
    v4 = 0;
    v5 = *v38;
    do
    {
      v6 = 0;
      v7 = v3;
      do
      {
        if (*v38 != v5)
        {
          objc_enumerationMutation(&off_1002862B8);
        }

        v8 = [*(a1 + 32) containsObject:*(*(&v37 + 1) + 8 * v6)];
        v9 = 1 << v7;
        if (!v8)
        {
          LOWORD(v9) = 0;
        }

        v4 |= v9;
        ++v7;
        v6 = v6 + 1;
      }

      while (v2 != v6);
      v3 += v2;
      v2 = [&off_1002862B8 countByEnumeratingWithState:&v37 objects:v45 count:16];
    }

    while (v2);
    v2 = v4;
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v10 = [&off_1002862D0 countByEnumeratingWithState:&v33 objects:v44 count:16];
  if (v10)
  {
    v11 = 0;
    v12 = 0;
    v13 = *v34;
    do
    {
      v14 = 0;
      v15 = v11;
      do
      {
        if (*v34 != v13)
        {
          objc_enumerationMutation(&off_1002862D0);
        }

        v16 = [*(a1 + 32) containsObject:*(*(&v33 + 1) + 8 * v14)];
        v17 = 1 << v15;
        if (!v16)
        {
          LOWORD(v17) = 0;
        }

        v12 |= v17;
        ++v15;
        v14 = v14 + 1;
      }

      while (v10 != v14);
      v11 += v10;
      v10 = [&off_1002862D0 countByEnumeratingWithState:&v33 objects:v44 count:16];
    }

    while (v10);
    v10 = v12;
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v18 = [&off_1002862E8 countByEnumeratingWithState:&v29 objects:v43 count:16];
  if (v18)
  {
    v28 = v2;
    v19 = 0;
    v20 = 0;
    v21 = *v30;
    do
    {
      v22 = 0;
      v23 = v19;
      do
      {
        if (*v30 != v21)
        {
          objc_enumerationMutation(&off_1002862E8);
        }

        v24 = [*(a1 + 32) containsObject:*(*(&v29 + 1) + 8 * v22)];
        v25 = 1 << v23;
        if (!v24)
        {
          LOWORD(v25) = 0;
        }

        v20 |= v25;
        ++v23;
        v22 = v22 + 1;
      }

      while (v18 != v22);
      v19 += v18;
      v18 = [&off_1002862E8 countByEnumeratingWithState:&v29 objects:v43 count:16];
    }

    while (v18);
    v18 = v20;
    v2 = v28;
  }

  v41[0] = @"IO80211InterfaceMwsNGCCoex5GHzBitmapLow";
  v42[0] = [NSNumber numberWithInt:v2];
  v41[1] = @"IO80211InterfaceMwsNGCCoex5GHzBitmapMid";
  v42[1] = [NSNumber numberWithInt:v10];
  v41[2] = @"IO80211InterfaceMwsNGCCoex5GHzBitmapHi";
  v42[2] = [NSNumber numberWithInt:v18];
  v26 = [NSDictionary dictionaryWithObjects:v42 forKeys:v41 count:3];
  [WCM_Logging logLevel:1 message:@"DLDebug_ WiFi_Type7_IOVAR: WiFiS: WiFi_Type7: setting APPLE80211KEY_MWS_NGC_COEX_BITMAP %@", v26];
  [*(a1 + 40) sendMessage:@"IO80211InterfaceMwsNGCCoexBitmap" withValue:v26];
  v27 = [NSNumber numberWithShort:250];
  [*(a1 + 40) sendMessage:@"MWS_NGC_TIMER_GRANULARITY" withValue:v27];
  [WCM_Logging logLevel:3 message:@"DLDebug_ WiFi_Type7_IOVAR: WiFiS: WiFi_Type7: setting Type7 MSG timerGranularity %@", v27];
}

void sub_1000F405C(uint64_t a1)
{
  [WCM_Logging logLevel:4 message:@"2GWiFi_Type7_IOVAR input to setChannelsToEnableType7MSG2GWiFi: setting Type7 MSG enabled channels %@", *(a1 + 32)];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [&off_100286300 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    v5 = 0;
    v6 = *v14;
    do
    {
      v7 = 0;
      v8 = v4;
      do
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(&off_100286300);
        }

        v9 = [*(a1 + 32) containsObject:*(*(&v13 + 1) + 8 * v7)];
        v10 = 1 << v8;
        if (!v9)
        {
          LOWORD(v10) = 0;
        }

        v5 |= v10;
        ++v8;
        v7 = v7 + 1;
      }

      while (v3 != v7);
      v4 += v3;
      v3 = [&off_100286300 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v3);
    v11 = v5 & 0xFFFE;
  }

  else
  {
    v11 = 0;
  }

  v12 = [NSNumber numberWithInt:v11];
  [*(a1 + 40) sendMessage:@"IO80211MWS2GWiFiType7Bitmap" withValue:v12];
  [WCM_Logging logLevel:3 message:@"DLDebug_ WCI2V2_IOVAR: setting APPLE80211KEY_MWS_TYPE7_2GWiFi_BITMAP %@", v12];
}

void sub_1000F4294(id *a1)
{
  [WCM_Logging logLevel:3 message:@"WiFiType7_WiFiEnh WiFiS: setting WiFiType7_WiFiEnh enabled channels 2G5G part channels %@, WiFiEnh part channels %@", a1[4], a1[5]];
  v125 = 0u;
  v126 = 0u;
  v123 = 0u;
  v124 = 0u;
  v2 = [&off_100286318 countByEnumeratingWithState:&v123 objects:v137 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    v5 = 0;
    v6 = *v124;
    do
    {
      v7 = 0;
      v8 = v4;
      do
      {
        if (*v124 != v6)
        {
          objc_enumerationMutation(&off_100286318);
        }

        v9 = [a1[4] containsObject:*(*(&v123 + 1) + 8 * v7)];
        v10 = 1 << v8;
        if (!v9)
        {
          LOWORD(v10) = 0;
        }

        v5 |= v10;
        ++v8;
        v7 = v7 + 1;
      }

      while (v3 != v7);
      v4 += v3;
      v3 = [&off_100286318 countByEnumeratingWithState:&v123 objects:v137 count:16];
    }

    while (v3);
    v90 = v5 & 0xFFFE;
  }

  else
  {
    v90 = 0;
  }

  v121 = 0u;
  v122 = 0u;
  v119 = 0u;
  v120 = 0u;
  v11 = [&off_100286330 countByEnumeratingWithState:&v119 objects:v136 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    v14 = 0;
    v15 = *v120;
    do
    {
      v16 = 0;
      v17 = v13;
      do
      {
        if (*v120 != v15)
        {
          objc_enumerationMutation(&off_100286330);
        }

        v18 = [a1[4] containsObject:*(*(&v119 + 1) + 8 * v16)];
        v19 = 1 << v17;
        if (!v18)
        {
          LOWORD(v19) = 0;
        }

        v14 |= v19;
        ++v17;
        v16 = v16 + 1;
      }

      while (v12 != v16);
      v13 += v12;
      v12 = [&off_100286330 countByEnumeratingWithState:&v119 objects:v136 count:16];
    }

    while (v12);
    v89 = v14;
  }

  else
  {
    v89 = 0;
  }

  v117 = 0u;
  v118 = 0u;
  v115 = 0u;
  v116 = 0u;
  v20 = [&off_100286348 countByEnumeratingWithState:&v115 objects:v135 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = 0;
    v23 = 0;
    v24 = *v116;
    do
    {
      v25 = 0;
      v26 = v22;
      do
      {
        if (*v116 != v24)
        {
          objc_enumerationMutation(&off_100286348);
        }

        v27 = [a1[4] containsObject:*(*(&v115 + 1) + 8 * v25)];
        v28 = 1 << v26;
        if (!v27)
        {
          LOWORD(v28) = 0;
        }

        v23 |= v28;
        ++v26;
        v25 = v25 + 1;
      }

      while (v21 != v25);
      v22 += v21;
      v21 = [&off_100286348 countByEnumeratingWithState:&v115 objects:v135 count:16];
    }

    while (v21);
    v88 = v23;
  }

  else
  {
    v88 = 0;
  }

  v113 = 0u;
  v114 = 0u;
  v111 = 0u;
  v112 = 0u;
  v29 = [&off_100286360 countByEnumeratingWithState:&v111 objects:v134 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = 0;
    v32 = 0;
    v33 = *v112;
    do
    {
      v34 = 0;
      v35 = v31;
      do
      {
        if (*v112 != v33)
        {
          objc_enumerationMutation(&off_100286360);
        }

        v36 = [a1[4] containsObject:*(*(&v111 + 1) + 8 * v34)];
        v37 = 1 << v35;
        if (!v36)
        {
          LOWORD(v37) = 0;
        }

        v32 |= v37;
        ++v35;
        v34 = v34 + 1;
      }

      while (v30 != v34);
      v31 += v30;
      v30 = [&off_100286360 countByEnumeratingWithState:&v111 objects:v134 count:16];
    }

    while (v30);
    v87 = v32;
  }

  else
  {
    v87 = 0;
  }

  v109 = 0u;
  v110 = 0u;
  v107 = 0u;
  v108 = 0u;
  v38 = [&off_100286378 countByEnumeratingWithState:&v107 objects:v133 count:16];
  if (v38)
  {
    v39 = v38;
    v40 = 0;
    v41 = 0;
    v42 = *v108;
    do
    {
      v43 = 0;
      v44 = v40;
      do
      {
        if (*v108 != v42)
        {
          objc_enumerationMutation(&off_100286378);
        }

        v45 = [a1[5] containsObject:*(*(&v107 + 1) + 8 * v43)];
        v46 = 1 << v44;
        if (!v45)
        {
          LOWORD(v46) = 0;
        }

        v41 |= v46;
        ++v44;
        v43 = v43 + 1;
      }

      while (v39 != v43);
      v40 += v39;
      v39 = [&off_100286378 countByEnumeratingWithState:&v107 objects:v133 count:16];
    }

    while (v39);
    v86 = v41;
  }

  else
  {
    v86 = 0;
  }

  v105 = 0u;
  v106 = 0u;
  v103 = 0u;
  v104 = 0u;
  v47 = [&off_100286390 countByEnumeratingWithState:&v103 objects:v132 count:16];
  if (v47)
  {
    v48 = v47;
    v49 = 0;
    v50 = 0;
    v51 = *v104;
    do
    {
      v52 = 0;
      v53 = v49;
      do
      {
        if (*v104 != v51)
        {
          objc_enumerationMutation(&off_100286390);
        }

        v54 = [a1[5] containsObject:*(*(&v103 + 1) + 8 * v52)];
        v55 = 1 << v53;
        if (!v54)
        {
          LOWORD(v55) = 0;
        }

        v50 |= v55;
        ++v53;
        v52 = v52 + 1;
      }

      while (v48 != v52);
      v49 += v48;
      v48 = [&off_100286390 countByEnumeratingWithState:&v103 objects:v132 count:16];
    }

    while (v48);
    v85 = v50;
  }

  else
  {
    v85 = 0;
  }

  v101 = 0u;
  v102 = 0u;
  v99 = 0u;
  v100 = 0u;
  v56 = [&off_1002863A8 countByEnumeratingWithState:&v99 objects:v131 count:16];
  if (v56)
  {
    v57 = 0;
    v58 = 0;
    v59 = *v100;
    do
    {
      v60 = 0;
      v61 = v57;
      do
      {
        if (*v100 != v59)
        {
          objc_enumerationMutation(&off_1002863A8);
        }

        v62 = [a1[5] containsObject:*(*(&v99 + 1) + 8 * v60)];
        v63 = 1 << v61;
        if (!v62)
        {
          LOWORD(v63) = 0;
        }

        v58 |= v63;
        ++v61;
        v60 = v60 + 1;
      }

      while (v56 != v60);
      v57 += v56;
      v56 = [&off_1002863A8 countByEnumeratingWithState:&v99 objects:v131 count:16];
    }

    while (v56);
    v56 = v58;
  }

  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  v64 = [&off_1002863C0 countByEnumeratingWithState:&v95 objects:v130 count:16];
  if (v64)
  {
    v65 = v64;
    v66 = 0;
    v67 = 0;
    v68 = *v96;
    do
    {
      v69 = 0;
      v70 = v66;
      do
      {
        if (*v96 != v68)
        {
          objc_enumerationMutation(&off_1002863C0);
        }

        v71 = [a1[5] containsObject:*(*(&v95 + 1) + 8 * v69)];
        v72 = 1 << v70;
        if (!v71)
        {
          LOWORD(v72) = 0;
        }

        v67 |= v72;
        ++v70;
        v69 = v69 + 1;
      }

      while (v65 != v69);
      v66 += v65;
      v65 = [&off_1002863C0 countByEnumeratingWithState:&v95 objects:v130 count:16];
    }

    while (v65);
    v73 = v67;
  }

  else
  {
    v73 = 0;
  }

  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  v74 = [&off_1002863D8 countByEnumeratingWithState:&v91 objects:v129 count:16];
  if (v74)
  {
    v84 = v73;
    v75 = v56;
    v76 = 0;
    v77 = 0;
    v78 = *v92;
    do
    {
      v79 = 0;
      v80 = v76;
      do
      {
        if (*v92 != v78)
        {
          objc_enumerationMutation(&off_1002863D8);
        }

        v81 = [a1[5] containsObject:*(*(&v91 + 1) + 8 * v79)];
        v82 = 1 << v80;
        if (!v81)
        {
          LOWORD(v82) = 0;
        }

        v77 |= v82;
        ++v80;
        v79 = v79 + 1;
      }

      while (v74 != v79);
      v76 += v74;
      v74 = [&off_1002863D8 countByEnumeratingWithState:&v91 objects:v129 count:16];
    }

    while (v74);
    v74 = v77;
    v56 = v75;
    v73 = v84;
  }

  if ([objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")])
  {
    v127[0] = @"MWSType72GBITMAPWiFiEnh";
    v128[0] = [NSNumber numberWithInt:v90];
    v127[1] = @"MWSType75GBITMAPLOWWiFiEnh";
    v128[1] = [NSNumber numberWithInt:v89];
    v127[2] = @"MWSType75GBITMAPMIDWiFiEnh";
    v128[2] = [NSNumber numberWithInt:v88];
    v127[3] = @"MWSType75GBITMAPHIWiFiEnh";
    v128[3] = [NSNumber numberWithInt:v87];
    v127[4] = @"MWSType7U5LowBITMAPWiFiEnh";
    v128[4] = [NSNumber numberWithInt:v86];
    v127[5] = @"MWSType7U5HighBITMAPWiFiEnh";
    v128[5] = [NSNumber numberWithInt:v85];
    v127[6] = @"MWSType7U6BITMAPWiFiEnh";
    v128[6] = [NSNumber numberWithInt:v56];
    v127[7] = @"MWSType7U7BITMAPWiFiEnh";
    v128[7] = [NSNumber numberWithInt:v73];
    v127[8] = @"MWSType7U8BITMAPWiFiEnh";
    v128[8] = [NSNumber numberWithInt:v74];
    v83 = [NSDictionary dictionaryWithObjects:v128 forKeys:v127 count:9];
    [WCM_Logging logLevel:4 message:@"WiFiType7_WiFiEnh IOVAR: setting mwsWiFiType7BitmapWiFiEnh %@", v83];
    [a1[6] sendMessage:@"MWSType7BITMAPWiFiEnh" withValue:v83];
  }
}

void sub_1000F4C28(uint64_t a1)
{
  [WCM_Logging logLevel:3 message:@"WiFiS: setting OCL disabled channels %@", *(a1 + 32)];
  v2 = +[NSMutableArray array];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * i);
        v15 = @"MWS_Channel_Number";
        v16 = v8;
        [v2 addObject:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", &v16, &v15, 1)}];
      }

      v5 = [v3 countByEnumeratingWithState:&v9 objects:v17 count:16];
    }

    while (v5);
  }

  v13 = @"MWS_OCL_DISABLE_CHANNELS";
  v14 = v2;
  [*(a1 + 40) sendMessage:@"MWS_OCL_PARAMS" withValue:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", &v14, &v13, 1)}];
}

void sub_1000F4E54(id *a1)
{
  [WCM_Logging logLevel:4 message:@"OCL_WiFiEnh WiFiS: setting OCL_WiFiEnh 2G5G part channels %@, Enh part channels %@", a1[4], a1[5]];
  v125 = 0u;
  v126 = 0u;
  v123 = 0u;
  v124 = 0u;
  v2 = [&off_1002863F0 countByEnumeratingWithState:&v123 objects:v137 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    v5 = 0;
    v6 = *v124;
    do
    {
      v7 = 0;
      v8 = v4;
      do
      {
        if (*v124 != v6)
        {
          objc_enumerationMutation(&off_1002863F0);
        }

        v9 = [a1[4] containsObject:*(*(&v123 + 1) + 8 * v7)];
        v10 = 1 << v8;
        if (v9)
        {
          LOWORD(v10) = 0;
        }

        v5 |= v10;
        ++v8;
        v7 = v7 + 1;
      }

      while (v3 != v7);
      v4 += v3;
      v3 = [&off_1002863F0 countByEnumeratingWithState:&v123 objects:v137 count:16];
    }

    while (v3);
    v90 = v5 & 0xFFFE;
  }

  else
  {
    v90 = 0;
  }

  v121 = 0u;
  v122 = 0u;
  v119 = 0u;
  v120 = 0u;
  v11 = [&off_100286408 countByEnumeratingWithState:&v119 objects:v136 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    v14 = 0;
    v15 = *v120;
    do
    {
      v16 = 0;
      v17 = v13;
      do
      {
        if (*v120 != v15)
        {
          objc_enumerationMutation(&off_100286408);
        }

        v18 = [a1[4] containsObject:*(*(&v119 + 1) + 8 * v16)];
        v19 = 1 << v17;
        if (v18)
        {
          LOWORD(v19) = 0;
        }

        v14 |= v19;
        ++v17;
        v16 = v16 + 1;
      }

      while (v12 != v16);
      v13 += v12;
      v12 = [&off_100286408 countByEnumeratingWithState:&v119 objects:v136 count:16];
    }

    while (v12);
    v89 = v14;
  }

  else
  {
    v89 = 0;
  }

  v117 = 0u;
  v118 = 0u;
  v115 = 0u;
  v116 = 0u;
  v20 = [&off_100286420 countByEnumeratingWithState:&v115 objects:v135 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = 0;
    v23 = 0;
    v24 = *v116;
    do
    {
      v25 = 0;
      v26 = v22;
      do
      {
        if (*v116 != v24)
        {
          objc_enumerationMutation(&off_100286420);
        }

        v27 = [a1[4] containsObject:*(*(&v115 + 1) + 8 * v25)];
        v28 = 1 << v26;
        if (v27)
        {
          LOWORD(v28) = 0;
        }

        v23 |= v28;
        ++v26;
        v25 = v25 + 1;
      }

      while (v21 != v25);
      v22 += v21;
      v21 = [&off_100286420 countByEnumeratingWithState:&v115 objects:v135 count:16];
    }

    while (v21);
    v88 = v23;
  }

  else
  {
    v88 = 0;
  }

  v113 = 0u;
  v114 = 0u;
  v111 = 0u;
  v112 = 0u;
  v29 = [&off_100286438 countByEnumeratingWithState:&v111 objects:v134 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = 0;
    v32 = 0;
    v33 = *v112;
    do
    {
      v34 = 0;
      v35 = v31;
      do
      {
        if (*v112 != v33)
        {
          objc_enumerationMutation(&off_100286438);
        }

        v36 = [a1[4] containsObject:*(*(&v111 + 1) + 8 * v34)];
        v37 = 1 << v35;
        if (v36)
        {
          LOWORD(v37) = 0;
        }

        v32 |= v37;
        ++v35;
        v34 = v34 + 1;
      }

      while (v30 != v34);
      v31 += v30;
      v30 = [&off_100286438 countByEnumeratingWithState:&v111 objects:v134 count:16];
    }

    while (v30);
    v87 = v32;
  }

  else
  {
    v87 = 0;
  }

  v109 = 0u;
  v110 = 0u;
  v107 = 0u;
  v108 = 0u;
  v38 = [&off_100286450 countByEnumeratingWithState:&v107 objects:v133 count:16];
  if (v38)
  {
    v39 = v38;
    v40 = 0;
    v41 = 0;
    v42 = *v108;
    do
    {
      v43 = 0;
      v44 = v40;
      do
      {
        if (*v108 != v42)
        {
          objc_enumerationMutation(&off_100286450);
        }

        v45 = [a1[5] containsObject:*(*(&v107 + 1) + 8 * v43)];
        v46 = 1 << v44;
        if (v45)
        {
          LOWORD(v46) = 0;
        }

        v41 |= v46;
        ++v44;
        v43 = v43 + 1;
      }

      while (v39 != v43);
      v40 += v39;
      v39 = [&off_100286450 countByEnumeratingWithState:&v107 objects:v133 count:16];
    }

    while (v39);
    v86 = v41;
  }

  else
  {
    v86 = 0;
  }

  v105 = 0u;
  v106 = 0u;
  v103 = 0u;
  v104 = 0u;
  v47 = [&off_100286468 countByEnumeratingWithState:&v103 objects:v132 count:16];
  if (v47)
  {
    v48 = v47;
    v49 = 0;
    v50 = 0;
    v51 = *v104;
    do
    {
      v52 = 0;
      v53 = v49;
      do
      {
        if (*v104 != v51)
        {
          objc_enumerationMutation(&off_100286468);
        }

        v54 = [a1[5] containsObject:*(*(&v103 + 1) + 8 * v52)];
        v55 = 1 << v53;
        if (v54)
        {
          LOWORD(v55) = 0;
        }

        v50 |= v55;
        ++v53;
        v52 = v52 + 1;
      }

      while (v48 != v52);
      v49 += v48;
      v48 = [&off_100286468 countByEnumeratingWithState:&v103 objects:v132 count:16];
    }

    while (v48);
    v85 = v50;
  }

  else
  {
    v85 = 0;
  }

  v101 = 0u;
  v102 = 0u;
  v99 = 0u;
  v100 = 0u;
  v56 = [&off_100286480 countByEnumeratingWithState:&v99 objects:v131 count:16];
  if (v56)
  {
    v57 = 0;
    v58 = 0;
    v59 = *v100;
    do
    {
      v60 = 0;
      v61 = v57;
      do
      {
        if (*v100 != v59)
        {
          objc_enumerationMutation(&off_100286480);
        }

        v62 = [a1[5] containsObject:*(*(&v99 + 1) + 8 * v60)];
        v63 = 1 << v61;
        if (v62)
        {
          LOWORD(v63) = 0;
        }

        v58 |= v63;
        ++v61;
        v60 = v60 + 1;
      }

      while (v56 != v60);
      v57 += v56;
      v56 = [&off_100286480 countByEnumeratingWithState:&v99 objects:v131 count:16];
    }

    while (v56);
    v56 = v58;
  }

  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  v64 = [&off_100286498 countByEnumeratingWithState:&v95 objects:v130 count:16];
  if (v64)
  {
    v65 = v64;
    v66 = 0;
    v67 = 0;
    v68 = *v96;
    do
    {
      v69 = 0;
      v70 = v66;
      do
      {
        if (*v96 != v68)
        {
          objc_enumerationMutation(&off_100286498);
        }

        v71 = [a1[5] containsObject:*(*(&v95 + 1) + 8 * v69)];
        v72 = 1 << v70;
        if (v71)
        {
          LOWORD(v72) = 0;
        }

        v67 |= v72;
        ++v70;
        v69 = v69 + 1;
      }

      while (v65 != v69);
      v66 += v65;
      v65 = [&off_100286498 countByEnumeratingWithState:&v95 objects:v130 count:16];
    }

    while (v65);
    v73 = v67;
  }

  else
  {
    v73 = 0;
  }

  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  v74 = [&off_1002864B0 countByEnumeratingWithState:&v91 objects:v129 count:16];
  if (v74)
  {
    v84 = v73;
    v75 = v56;
    v76 = 0;
    v77 = 0;
    v78 = *v92;
    do
    {
      v79 = 0;
      v80 = v76;
      do
      {
        if (*v92 != v78)
        {
          objc_enumerationMutation(&off_1002864B0);
        }

        v81 = [a1[5] containsObject:*(*(&v91 + 1) + 8 * v79)];
        v82 = 1 << v80;
        if (v81)
        {
          LOWORD(v82) = 0;
        }

        v77 |= v82;
        ++v80;
        v79 = v79 + 1;
      }

      while (v74 != v79);
      v76 += v74;
      v74 = [&off_1002864B0 countByEnumeratingWithState:&v91 objects:v129 count:16];
    }

    while (v74);
    v74 = v77;
    v56 = v75;
    v73 = v84;
  }

  if ([objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")])
  {
    v127[0] = @"MWSOCL2GBITMAPWiFiEnh";
    v128[0] = [NSNumber numberWithInt:v90];
    v127[1] = @"MWSOCL5GBITMAPLOWWiFiEnh";
    v128[1] = [NSNumber numberWithInt:v89];
    v127[2] = @"MWSOCL5GBITMAPMIDWiFiEnh";
    v128[2] = [NSNumber numberWithInt:v88];
    v127[3] = @"MWSOCL5GBITMAPHIWiFiEnh";
    v128[3] = [NSNumber numberWithInt:v87];
    v127[4] = @"MWSOCLU5LowBITMAPWiFiEnh";
    v128[4] = [NSNumber numberWithInt:v86];
    v127[5] = @"MWSOCLU5HighBITMAPWiFiEnh";
    v128[5] = [NSNumber numberWithInt:v85];
    v127[6] = @"MWSOCLU6BITMAPWiFiEnh";
    v128[6] = [NSNumber numberWithInt:v56];
    v127[7] = @"MWSOCLU7BITMAPWiFiEnh";
    v128[7] = [NSNumber numberWithInt:v73];
    v127[8] = @"MWSOCLU8BITMAPWiFiEnh";
    v128[8] = [NSNumber numberWithInt:v74];
    v83 = [NSDictionary dictionaryWithObjects:v128 forKeys:v127 count:9];
    [WCM_Logging logLevel:4 message:@"OCL_WiFiEnh_IOVAR: setting mwsDisableOCLBitmapWiFiEnh %@", v83];
    [a1[6] sendMessage:@"MWSOCLBITMAPWiFiEnh" withValue:v83];
  }
}

void sub_1000F57E8(uint64_t a1)
{
  [WCM_Logging logLevel:3 message:@"WiFiS: setting rxPriThreshold %@", *(a1 + 32)];
  [*(a1 + 40) sendMessage:@"MWS_WLAN_RX_PRI_THRESHOLD" withValue:*(a1 + 32)];
  v2 = *(a1 + 32);
}

void sub_1000F58DC(uint64_t a1)
{
  [WCM_Logging logLevel:3 message:@"WiFiS: setting WiFi MWS Channel Parameters %@", *(a1 + 32)];
  [*(a1 + 40) sendMessage:@"MWS_Aggressor_ChannelParameters" withValue:*(a1 + 32)];
  v2 = *(a1 + 32);
}

void sub_1000F59D0(uint64_t a1)
{
  if ([objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")])
  {
    [WCM_Logging logLevel:3 message:@"WiFiS: setting WiFi MWS Frame Config %@", *(a1 + 32)];
    [*(a1 + 40) sendMessage:@"MWS_Aggressor_FrameConfig" withValue:*(a1 + 32)];
  }

  v2 = *(a1 + 32);
}

void sub_1000F5ADC(uint64_t a1)
{
  if ([objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")])
  {
    [WCM_Logging logLevel:3 message:@"WiFiS: setting WiFi MWS Signaling Config %@", *(a1 + 32)];
    [*(a1 + 40) sendMessage:@"MWS_WCI_Signaling_Config" withValue:*(a1 + 32)];
  }

  v2 = *(a1 + 32);
}

void sub_1000F5BE8(uint64_t a1)
{
  +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 3, @"WiFiS: setting WiFi Rx Antenna Preference 0x%X", [*(a1 + 32) intValue]);
  [*(a1 + 40) sendMessage:@"MWS_SWDIV_RX_POLICY" withValue:*(a1 + 32)];
  v2 = *(a1 + 32);
}

void sub_1000F5CE4(uint64_t a1)
{
  +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 3, @"WiFiS: setting WiFi Tx Antenna Preference 0x%X", [*(a1 + 32) intValue]);
  [*(a1 + 40) sendMessage:@"MWS_SWDIV_TX_POLICY" withValue:*(a1 + 32)];
  v2 = *(a1 + 32);
}

void sub_1000F5DE0(uint64_t a1)
{
  +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 3, @"WiFiS: setting WiFi Antenna Cell Policy 0x%X", [*(a1 + 32) intValue]);
  [*(a1 + 40) sendMessage:@"MWS_SWDIV_CELL_POLICY" withValue:*(a1 + 32)];
  v2 = *(a1 + 32);
}

void sub_1000F5EDC(uint64_t a1)
{
  [WCM_Logging logLevel:3 message:@"WiFiS: setting WiFi Antenna Selection %@", *(a1 + 32)];
  [*(a1 + 40) sendMessage:@"MWS_ANTENNA_SELECTION" withValue:*(a1 + 32)];
  v2 = *(a1 + 32);
}

void sub_1000F5FD0(uint64_t a1)
{
  [WCM_Logging logLevel:1 message:@"WiFiS: setting WiFi V2 Antenna Selection %@", *(a1 + 32)];
  [*(a1 + 40) sendMessage:@"MWS_ANTENNA_SELECTION_V2" withValue:*(a1 + 32)];
  v2 = *(a1 + 32);
}

void sub_1000F60C4(uint64_t a1)
{
  [WCM_Logging logLevel:1 message:@"WiFiEnh: setting WiFi Enh Antenna Selection %@", *(a1 + 32)];
  if ([objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")])
  {
    [*(a1 + 40) sendMessage:@"MWS_ANTENNA_SELECTION_Enh" withValue:*(a1 + 32)];
  }

  v2 = *(a1 + 32);
}

void sub_1000F61EC(id *a1)
{
  [WCM_Logging logLevel:3 message:@"WiFiS: setting WiFi Scan Freq Protection Channels"];
  v114 = 0u;
  v115 = 0u;
  v112 = 0u;
  v113 = 0u;
  obj = a1[4];
  v2 = [obj countByEnumeratingWithState:&v112 objects:v131 count:16];
  v79 = a1;
  if (v2)
  {
    v3 = v2;
    v78 = 0;
    v77 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v75 = *v113;
    v7 = 1;
    do
    {
      v8 = 0;
      v71 = v3;
      do
      {
        if (*v113 != v75)
        {
          objc_enumerationMutation(obj);
        }

        v80 = v8;
        v9 = *(*(&v112 + 1) + 8 * v8);
        v129[0] = @"MWS_SCAN_FREQ_INDEX";
        v10 = [NSNumber numberWithInt:v7];
        v129[1] = @"MWS_SCAN_FREQ_CHANNELS";
        v130[0] = v10;
        v130[1] = v9;
        v11 = v7;
        v12 = [NSDictionary dictionaryWithObjects:v130 forKeys:v129 count:2];
        [WCM_Logging logLevel:1 message:@"WiFiS: setting MWS_SCAN_FREQ Protection: %@", v12];
        [a1[5] sendMessage:@"MWS_SCAN_FREQ" withValue:v12];
        v82 = v11;
        if ([a1[6] containsObject:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", v11)}])
        {
          v110 = 0u;
          v111 = 0u;
          v108 = 0u;
          v109 = 0u;
          v13 = [&off_1002864C8 countByEnumeratingWithState:&v108 objects:v128 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v109;
            v16 = v77;
            do
            {
              v17 = 0;
              v18 = v16;
              do
              {
                if (*v109 != v15)
                {
                  objc_enumerationMutation(&off_1002864C8);
                }

                v19 = [v9 containsObject:*(*(&v108 + 1) + 8 * v17)];
                v20 = 1 << v16;
                if (!v19)
                {
                  LOWORD(v20) = 0;
                }

                v6 |= v20;
                LOBYTE(v16) = v16 + 1;
                v17 = v17 + 1;
              }

              while (v14 != v17);
              v16 = v18 + v14;
              v14 = [&off_1002864C8 countByEnumeratingWithState:&v108 objects:v128 count:16];
            }

            while (v14);
          }

          else
          {
            v16 = v77;
          }

          v77 = v16;
          v106 = 0u;
          v107 = 0u;
          v104 = 0u;
          v105 = 0u;
          v22 = [&off_1002864E0 countByEnumeratingWithState:&v104 objects:v127 count:16];
          if (v22)
          {
            v23 = v22;
            v24 = *v105;
            v25 = v78;
            do
            {
              v26 = 0;
              v27 = v25;
              do
              {
                if (*v105 != v24)
                {
                  objc_enumerationMutation(&off_1002864E0);
                }

                v28 = [v9 containsObject:*(*(&v104 + 1) + 8 * v26)];
                v29 = 1 << v27;
                if (!v28)
                {
                  LOWORD(v29) = 0;
                }

                v5 |= v29;
                ++v27;
                v26 = v26 + 1;
              }

              while (v23 != v26);
              v25 += v23;
              v23 = [&off_1002864E0 countByEnumeratingWithState:&v104 objects:v127 count:16];
            }

            while (v23);
          }

          else
          {
            v25 = v78;
          }

          LODWORD(v78) = v25;
          v102 = 0u;
          v103 = 0u;
          v100 = 0u;
          v101 = 0u;
          v30 = [&off_1002864F8 countByEnumeratingWithState:&v100 objects:v126 count:16];
          if (v30)
          {
            v31 = v30;
            v32 = *v101;
            v33 = HIDWORD(v78);
            do
            {
              v34 = 0;
              v35 = v33;
              do
              {
                if (*v101 != v32)
                {
                  objc_enumerationMutation(&off_1002864F8);
                }

                v36 = [v9 containsObject:*(*(&v100 + 1) + 8 * v34)];
                v37 = 1 << v33;
                if (!v36)
                {
                  LOWORD(v37) = 0;
                }

                v4 |= v37;
                LOBYTE(v33) = v33 + 1;
                v34 = v34 + 1;
              }

              while (v31 != v34);
              v33 = v35 + v31;
              v31 = [&off_1002864F8 countByEnumeratingWithState:&v100 objects:v126 count:16];
            }

            while (v31);
          }

          else
          {
            v33 = HIDWORD(v78);
          }

          HIDWORD(v78) = v33;
          v124[0] = @"MWS_SCAN_FREQ_INDEX_Enh";
          v21 = v82;
          v125[0] = [NSNumber numberWithInt:v82];
          v124[1] = @"MWSType4Blanking5GBITMAPLOWWiFiEnh";
          v125[1] = [NSNumber numberWithInt:v6];
          v124[2] = @"MWSType4Blanking5GBITMAPMIDWiFiEnh";
          v125[2] = [NSNumber numberWithInt:v5];
          v124[3] = @"MWSType4Blanking5GBITMAPHIWiFiEnh";
          v125[3] = [NSNumber numberWithInt:v4];
          v38 = [NSDictionary dictionaryWithObjects:v125 forKeys:v124 count:4];
          [WCM_Logging logLevel:1 message:@"WiFiS: setting MWS_SCAN_FREQ_MODE Protection for SUB0: %@", v38];
          a1 = v79;
          [v79[5] sendMessage:@"MWS_SCAN_FREQ_MODE_Enh" withValue:v38];
          v3 = v71;
        }

        else
        {
          v21 = v11;
        }

        v7 = (v21 + 1);
        v8 = v80 + 1;
      }

      while ((v80 + 1) != v3);
      v3 = [obj countByEnumeratingWithState:&v112 objects:v131 count:16];
    }

    while (v3);
  }

  else
  {
    v78 = 0;
    v77 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 0;
  }

  if ([objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")])
  {
    v98 = 0u;
    v99 = 0u;
    v96 = 0u;
    v97 = 0u;
    v72 = a1[4];
    v39 = [v72 countByEnumeratingWithState:&v96 objects:v123 count:16];
    if (v39)
    {
      v40 = 17;
      v81 = *v97;
      do
      {
        v41 = 0;
        v83 = v39;
        do
        {
          if (*v97 != v81)
          {
            objc_enumerationMutation(v72);
          }

          v42 = *(*(&v96 + 1) + 8 * v41);
          v121[0] = @"MWS_SCAN_FREQ_INDEX";
          v43 = [NSNumber numberWithInt:v40];
          v121[1] = @"MWS_SCAN_FREQ_CHANNELS";
          v122[0] = v43;
          v122[1] = v42;
          v44 = [NSDictionary dictionaryWithObjects:v122 forKeys:v121 count:2];
          [WCM_Logging logLevel:1 message:@"WiFiS: setting MWS_SCAN_FREQ Protection for SUB1: %@", v44];
          [v79[5] sendMessage:@"MWS_SCAN_FREQ" withValue:v44];
          if ([v79[6] containsObject:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", (v40 - 16))}])
          {
            obja = v41;
            v76 = v40;
            v94 = 0u;
            v95 = 0u;
            v92 = 0u;
            v93 = 0u;
            v45 = [&off_100286510 countByEnumeratingWithState:&v92 objects:v120 count:16];
            if (v45)
            {
              v46 = v45;
              v47 = *v93;
              v48 = v77;
              do
              {
                v49 = 0;
                v50 = v48;
                do
                {
                  if (*v93 != v47)
                  {
                    objc_enumerationMutation(&off_100286510);
                  }

                  v51 = [v42 containsObject:*(*(&v92 + 1) + 8 * v49)];
                  v52 = 1 << v48;
                  if (!v51)
                  {
                    LOWORD(v52) = 0;
                  }

                  v6 |= v52;
                  LOBYTE(v48) = v48 + 1;
                  v49 = v49 + 1;
                }

                while (v46 != v49);
                v48 = v50 + v46;
                v46 = [&off_100286510 countByEnumeratingWithState:&v92 objects:v120 count:16];
              }

              while (v46);
            }

            else
            {
              v48 = v77;
            }

            v77 = v48;
            v90 = 0u;
            v91 = 0u;
            v88 = 0u;
            v89 = 0u;
            v54 = [&off_100286528 countByEnumeratingWithState:&v88 objects:v119 count:16];
            if (v54)
            {
              v55 = v54;
              v56 = *v89;
              v57 = v78;
              do
              {
                v58 = 0;
                v59 = v57;
                do
                {
                  if (*v89 != v56)
                  {
                    objc_enumerationMutation(&off_100286528);
                  }

                  v60 = [v42 containsObject:*(*(&v88 + 1) + 8 * v58)];
                  v61 = 1 << v57;
                  if (!v60)
                  {
                    LOWORD(v61) = 0;
                  }

                  v5 |= v61;
                  LOBYTE(v57) = v57 + 1;
                  v58 = v58 + 1;
                }

                while (v55 != v58);
                v57 = v59 + v55;
                v55 = [&off_100286528 countByEnumeratingWithState:&v88 objects:v119 count:16];
              }

              while (v55);
            }

            else
            {
              v57 = v78;
            }

            LODWORD(v78) = v57;
            v86 = 0u;
            v87 = 0u;
            v84 = 0u;
            v85 = 0u;
            v62 = [&off_100286540 countByEnumeratingWithState:&v84 objects:v118 count:16];
            if (v62)
            {
              v63 = v62;
              v64 = *v85;
              v65 = HIDWORD(v78);
              do
              {
                v66 = 0;
                v67 = v65;
                do
                {
                  if (*v85 != v64)
                  {
                    objc_enumerationMutation(&off_100286540);
                  }

                  v68 = [v42 containsObject:*(*(&v84 + 1) + 8 * v66)];
                  v69 = 1 << v65;
                  if (!v68)
                  {
                    LOWORD(v69) = 0;
                  }

                  v4 |= v69;
                  LOBYTE(v65) = v65 + 1;
                  v66 = v66 + 1;
                }

                while (v63 != v66);
                v65 = v67 + v63;
                v63 = [&off_100286540 countByEnumeratingWithState:&v84 objects:v118 count:16];
              }

              while (v63);
            }

            else
            {
              v65 = HIDWORD(v78);
            }

            HIDWORD(v78) = v65;
            v116[0] = @"MWS_SCAN_FREQ_INDEX_Enh";
            LODWORD(v40) = v76;
            v117[0] = [NSNumber numberWithInt:v76];
            v116[1] = @"MWSType4Blanking5GBITMAPLOWWiFiEnh";
            v117[1] = [NSNumber numberWithInt:v6];
            v116[2] = @"MWSType4Blanking5GBITMAPMIDWiFiEnh";
            v117[2] = [NSNumber numberWithInt:v5];
            v116[3] = @"MWSType4Blanking5GBITMAPHIWiFiEnh";
            v117[3] = [NSNumber numberWithInt:v4];
            v70 = [NSDictionary dictionaryWithObjects:v117 forKeys:v116 count:4];
            [WCM_Logging logLevel:1 message:@"WiFiS: setting MWS_SCAN_FREQ_MODE Protection for SUB1: %@", v70];
            a1 = v79;
            [v79[5] sendMessage:@"MWS_SCAN_FREQ_MODE_Enh" withValue:v70];
            v53 = v83;
            v41 = obja;
          }

          else
          {
            v53 = v83;
            a1 = v79;
          }

          v40 = (v40 + 1);
          v41 = v41 + 1;
        }

        while (v41 != v53);
        v39 = [v72 countByEnumeratingWithState:&v96 objects:v123 count:16];
      }

      while (v39);
    }
  }
}

void sub_1000F6C0C(id *a1)
{
  [WCM_Logging logLevel:3 message:@"WiFiEnh: setting WiFi Channels for Cellular Scan Freq Protection."];
  v2 = a1[4];
  v208 = a1;
  if (v2 && a1[5])
  {
    v3 = [v2 count];
    v4 = v3;
    if (v3 < 1)
    {
      v92 = 0;
    }

    else
    {
      v5 = 0;
      v181 = v3;
      v182 = v3 & 0x7FFFFFFF;
      v6 = 1;
      do
      {
        v7 = [a1[4] objectAtIndexedSubscript:v5];
        v206 = v5;
        v8 = [a1[5] objectAtIndexedSubscript:v5];
        v204 = v6;
        v209 = [a1[6] containsObject:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:")}];
        v279 = 0u;
        v280 = 0u;
        v281 = 0u;
        v282 = 0u;
        v9 = [&off_100286558 countByEnumeratingWithState:&v279 objects:v308 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = 0;
          v12 = 0;
          v13 = *v280;
          do
          {
            v14 = 0;
            v15 = v11;
            do
            {
              if (*v280 != v13)
              {
                objc_enumerationMutation(&off_100286558);
              }

              v16 = [v7 containsObject:*(*(&v279 + 1) + 8 * v14)];
              v17 = 1 << v15;
              if (!v16)
              {
                LOWORD(v17) = 0;
              }

              v12 |= v17;
              ++v15;
              v14 = v14 + 1;
            }

            while (v10 != v14);
            v11 += v10;
            v10 = [&off_100286558 countByEnumeratingWithState:&v279 objects:v308 count:16];
          }

          while (v10);
          v202 = v12 & 0xFFFE;
        }

        else
        {
          v202 = 0;
        }

        v278 = 0u;
        v277 = 0u;
        v276 = 0u;
        v275 = 0u;
        v18 = [&off_100286570 countByEnumeratingWithState:&v275 objects:v307 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = 0;
          v21 = 0;
          v22 = 0;
          v23 = *v276;
          do
          {
            v24 = 0;
            v25 = v21;
            do
            {
              if (*v276 != v23)
              {
                objc_enumerationMutation(&off_100286570);
              }

              if ([v7 containsObject:*(*(&v275 + 1) + 8 * v24)])
              {
                v26 = 1 << v25;
                v22 |= 1 << v25;
                if (!v209)
                {
                  LOWORD(v26) = 0;
                }

                v20 |= v26;
              }

              ++v25;
              v24 = v24 + 1;
            }

            while (v19 != v24);
            v21 += v19;
            v19 = [&off_100286570 countByEnumeratingWithState:&v275 objects:v307 count:16];
          }

          while (v19);
          v200 = v22;
          v188 = v20;
        }

        else
        {
          v188 = 0;
          v200 = 0;
        }

        v274 = 0u;
        v273 = 0u;
        v272 = 0u;
        v271 = 0u;
        v27 = [&off_100286588 countByEnumeratingWithState:&v271 objects:v306 count:16];
        if (v27)
        {
          v28 = v27;
          v29 = 0;
          v30 = 0;
          v31 = 0;
          v32 = *v272;
          do
          {
            v33 = 0;
            v34 = v30;
            do
            {
              if (*v272 != v32)
              {
                objc_enumerationMutation(&off_100286588);
              }

              if ([v7 containsObject:*(*(&v271 + 1) + 8 * v33)])
              {
                v35 = 1 << v34;
                v31 |= 1 << v34;
                if (!v209)
                {
                  LOWORD(v35) = 0;
                }

                v29 |= v35;
              }

              ++v34;
              v33 = v33 + 1;
            }

            while (v28 != v33);
            v30 += v28;
            v28 = [&off_100286588 countByEnumeratingWithState:&v271 objects:v306 count:16];
          }

          while (v28);
          v198 = v31;
          v186 = v29;
        }

        else
        {
          v186 = 0;
          v198 = 0;
        }

        v270 = 0u;
        v268 = 0u;
        v269 = 0u;
        v267 = 0u;
        v36 = [&off_1002865A0 countByEnumeratingWithState:&v267 objects:v305 count:16];
        if (v36)
        {
          v37 = v36;
          v38 = 0;
          v39 = 0;
          v40 = 0;
          v41 = *v268;
          do
          {
            v42 = 0;
            v43 = v39;
            do
            {
              if (*v268 != v41)
              {
                objc_enumerationMutation(&off_1002865A0);
              }

              if ([v7 containsObject:*(*(&v267 + 1) + 8 * v42)])
              {
                v44 = 1 << v43;
                v40 |= 1 << v43;
                if (!v209)
                {
                  LOWORD(v44) = 0;
                }

                v38 |= v44;
              }

              ++v43;
              v42 = v42 + 1;
            }

            while (v37 != v42);
            v39 += v37;
            v37 = [&off_1002865A0 countByEnumeratingWithState:&v267 objects:v305 count:16];
          }

          while (v37);
          v196 = v40;
          v184 = v38;
        }

        else
        {
          v184 = 0;
          v196 = 0;
        }

        v265 = 0u;
        v266 = 0u;
        v263 = 0u;
        v264 = 0u;
        v45 = [&off_1002865B8 countByEnumeratingWithState:&v263 objects:v304 count:16];
        if (v45)
        {
          v46 = v45;
          v47 = 0;
          v48 = 0;
          v49 = *v264;
          do
          {
            v50 = 0;
            v51 = v47;
            do
            {
              if (*v264 != v49)
              {
                objc_enumerationMutation(&off_1002865B8);
              }

              v52 = [v8 containsObject:*(*(&v263 + 1) + 8 * v50)];
              v53 = 1 << v51;
              if (!v52)
              {
                LOWORD(v53) = 0;
              }

              v48 |= v53;
              ++v51;
              v50 = v50 + 1;
            }

            while (v46 != v50);
            v47 += v46;
            v46 = [&off_1002865B8 countByEnumeratingWithState:&v263 objects:v304 count:16];
          }

          while (v46);
          v194 = v48;
        }

        else
        {
          v194 = 0;
        }

        v261 = 0u;
        v262 = 0u;
        v259 = 0u;
        v260 = 0u;
        v54 = [&off_1002865D0 countByEnumeratingWithState:&v259 objects:v303 count:16];
        if (v54)
        {
          v55 = v54;
          v56 = 0;
          v57 = 0;
          v58 = *v260;
          do
          {
            v59 = 0;
            v60 = v56;
            do
            {
              if (*v260 != v58)
              {
                objc_enumerationMutation(&off_1002865D0);
              }

              v61 = [v8 containsObject:*(*(&v259 + 1) + 8 * v59)];
              v62 = 1 << v60;
              if (!v61)
              {
                LOWORD(v62) = 0;
              }

              v57 |= v62;
              ++v60;
              v59 = v59 + 1;
            }

            while (v55 != v59);
            v56 += v55;
            v55 = [&off_1002865D0 countByEnumeratingWithState:&v259 objects:v303 count:16];
          }

          while (v55);
          v192 = v57;
        }

        else
        {
          v192 = 0;
        }

        v257 = 0u;
        v258 = 0u;
        v255 = 0u;
        v256 = 0u;
        v63 = [&off_1002865E8 countByEnumeratingWithState:&v255 objects:v302 count:16];
        if (v63)
        {
          v64 = v63;
          v65 = 0;
          v66 = 0;
          v67 = *v256;
          do
          {
            v68 = 0;
            v69 = v65;
            do
            {
              if (*v256 != v67)
              {
                objc_enumerationMutation(&off_1002865E8);
              }

              v70 = [v8 containsObject:*(*(&v255 + 1) + 8 * v68)];
              v71 = 1 << v69;
              if (!v70)
              {
                LOWORD(v71) = 0;
              }

              v66 |= v71;
              ++v69;
              v68 = v68 + 1;
            }

            while (v64 != v68);
            v65 += v64;
            v64 = [&off_1002865E8 countByEnumeratingWithState:&v255 objects:v302 count:16];
          }

          while (v64);
          v190 = v66;
        }

        else
        {
          v190 = 0;
        }

        v253 = 0u;
        v254 = 0u;
        v251 = 0u;
        v252 = 0u;
        v72 = [&off_100286600 countByEnumeratingWithState:&v251 objects:v301 count:16];
        if (v72)
        {
          v73 = 0;
          v74 = 0;
          v75 = *v252;
          do
          {
            v76 = 0;
            v77 = v73;
            do
            {
              if (*v252 != v75)
              {
                objc_enumerationMutation(&off_100286600);
              }

              v78 = [v8 containsObject:*(*(&v251 + 1) + 8 * v76)];
              v79 = 1 << v77;
              if (!v78)
              {
                LOWORD(v79) = 0;
              }

              v74 |= v79;
              ++v77;
              v76 = v76 + 1;
            }

            while (v72 != v76);
            v73 += v72;
            v72 = [&off_100286600 countByEnumeratingWithState:&v251 objects:v301 count:16];
          }

          while (v72);
          v72 = v74;
        }

        v249 = 0u;
        v250 = 0u;
        v247 = 0u;
        v248 = 0u;
        v80 = [&off_100286618 countByEnumeratingWithState:&v247 objects:v300 count:16];
        if (v80)
        {
          v81 = v80;
          v82 = 0;
          v83 = 0;
          v84 = *v248;
          do
          {
            v85 = 0;
            v86 = v82;
            do
            {
              if (*v248 != v84)
              {
                objc_enumerationMutation(&off_100286618);
              }

              v87 = [v8 containsObject:*(*(&v247 + 1) + 8 * v85)];
              v88 = 1 << v86;
              if (!v87)
              {
                LOWORD(v88) = 0;
              }

              v83 |= v88;
              ++v86;
              v85 = v85 + 1;
            }

            while (v81 != v85);
            v82 += v81;
            v81 = [&off_100286618 countByEnumeratingWithState:&v247 objects:v300 count:16];
          }

          while (v81);
          v89 = v83;
        }

        else
        {
          v89 = 0;
        }

        v298[0] = @"MWS_SCAN_FREQ_INDEX_Enh";
        v299[0] = [NSNumber numberWithInt:v204];
        v298[1] = @"MWSType4Blanking2GBITMAPWiFiEnh";
        v299[1] = [NSNumber numberWithInt:v202];
        v298[2] = @"MWSType4Blanking5GBITMAPLOWWiFiEnh";
        v299[2] = [NSNumber numberWithInt:v200];
        v298[3] = @"MWSType4Blanking5GBITMAPMIDWiFiEnh";
        v299[3] = [NSNumber numberWithInt:v198];
        v298[4] = @"MWSType4Blanking5GBITMAPHIWiFiEnh";
        v299[4] = [NSNumber numberWithInt:v196];
        v298[5] = @"MWSType4BlankingU5LowBITMAPWiFiEnh";
        v299[5] = [NSNumber numberWithInt:v194];
        v298[6] = @"MWSType4BlankingU5HighBITMAPWiFiEnh";
        v299[6] = [NSNumber numberWithInt:v192];
        v298[7] = @"MWSType4BlankingU6BITMAPWiFiEnh";
        v299[7] = [NSNumber numberWithInt:v190];
        v298[8] = @"MWSType4BlankingU7BITMAPWiFiEnh";
        v299[8] = [NSNumber numberWithInt:v72];
        v298[9] = @"MWSType4BlankingU8BITMAPWiFiEnh";
        v299[9] = [NSNumber numberWithInt:v89];
        v90 = [NSDictionary dictionaryWithObjects:v299 forKeys:v298 count:10];
        [WCM_Logging logLevel:2 message:@"Type4Blanking_WiFiEnh_IOVAR: setting mwsType4BlankingBitmapWiFiEnh %@", v90];
        a1 = v208;
        [v208[7] sendMessage:@"MWS_SCAN_FREQ_Enh" withValue:v90];
        if (v209)
        {
          v296[0] = @"MWS_SCAN_FREQ_INDEX_Enh";
          v297[0] = [NSNumber numberWithInt:v204];
          v296[1] = @"MWSType4Blanking5GBITMAPLOWWiFiEnh";
          v297[1] = [NSNumber numberWithInt:v188];
          v296[2] = @"MWSType4Blanking5GBITMAPMIDWiFiEnh";
          v297[2] = [NSNumber numberWithInt:v186];
          v296[3] = @"MWSType4Blanking5GBITMAPHIWiFiEnh";
          v297[3] = [NSNumber numberWithInt:v184];
          v91 = [NSDictionary dictionaryWithObjects:v297 forKeys:v296 count:4];
          [WCM_Logging logLevel:2 message:@"Type4Blanking_Mode_WiFiEnh_IOVAR for SUB0: setting mwsType4BlankingBitmapWiFiEnhConfig %@", v91];
          [v208[7] sendMessage:@"MWS_SCAN_FREQ_MODE_Enh" withValue:v91];
        }

        v6 = v204 + 1;
        v5 = v206 + 1;
      }

      while (v206 + 1 != v182);
      v92 = 1;
      v4 = v181;
    }
  }

  else
  {
    v92 = 0;
    v4 = 0;
  }

  if ([objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")])
  {
    v93 = v92 == 0;
  }

  else
  {
    v93 = 1;
  }

  if (!v93)
  {
    v94 = 0;
    v183 = v4;
    v95 = 17;
    do
    {
      v96 = [a1[4] objectAtIndexedSubscript:v94];
      v207 = v94;
      v97 = [a1[5] objectAtIndexedSubscript:v94];
      v205 = v95;
      v210 = [a1[6] containsObject:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", (v95 - 16))}];
      v243 = 0u;
      v244 = 0u;
      v245 = 0u;
      v246 = 0u;
      v98 = [&off_100286630 countByEnumeratingWithState:&v243 objects:v295 count:16];
      if (v98)
      {
        v99 = v98;
        v100 = 0;
        v101 = 0;
        v102 = *v244;
        do
        {
          v103 = 0;
          v104 = v100;
          do
          {
            if (*v244 != v102)
            {
              objc_enumerationMutation(&off_100286630);
            }

            v105 = [v96 containsObject:*(*(&v243 + 1) + 8 * v103)];
            v106 = 1 << v104;
            if (!v105)
            {
              LOWORD(v106) = 0;
            }

            v101 |= v106;
            ++v104;
            v103 = v103 + 1;
          }

          while (v99 != v103);
          v100 += v99;
          v99 = [&off_100286630 countByEnumeratingWithState:&v243 objects:v295 count:16];
        }

        while (v99);
        v203 = v101 & 0xFFFE;
      }

      else
      {
        v203 = 0;
      }

      v241 = 0u;
      v242 = 0u;
      v239 = 0u;
      v240 = 0u;
      v107 = [&off_100286648 countByEnumeratingWithState:&v239 objects:v294 count:16];
      if (v107)
      {
        v108 = v107;
        v109 = 0;
        v110 = 0;
        v111 = 0;
        v112 = *v240;
        do
        {
          v113 = 0;
          v114 = v110;
          do
          {
            if (*v240 != v112)
            {
              objc_enumerationMutation(&off_100286648);
            }

            if ([v96 containsObject:*(*(&v239 + 1) + 8 * v113)])
            {
              v115 = 1 << v114;
              v111 |= 1 << v114;
              if (!v210)
              {
                LOWORD(v115) = 0;
              }

              v109 |= v115;
            }

            ++v114;
            v113 = v113 + 1;
          }

          while (v108 != v113);
          v110 += v108;
          v108 = [&off_100286648 countByEnumeratingWithState:&v239 objects:v294 count:16];
        }

        while (v108);
        v201 = v111;
        v189 = v109;
      }

      else
      {
        v189 = 0;
        v201 = 0;
      }

      v237 = 0u;
      v238 = 0u;
      v235 = 0u;
      v236 = 0u;
      v116 = [&off_100286660 countByEnumeratingWithState:&v235 objects:v293 count:16];
      if (v116)
      {
        v117 = v116;
        v118 = 0;
        v119 = 0;
        v120 = 0;
        v121 = *v236;
        do
        {
          v122 = 0;
          v123 = v119;
          do
          {
            if (*v236 != v121)
            {
              objc_enumerationMutation(&off_100286660);
            }

            if ([v96 containsObject:*(*(&v235 + 1) + 8 * v122)])
            {
              v124 = 1 << v123;
              v120 |= 1 << v123;
              if (!v210)
              {
                LOWORD(v124) = 0;
              }

              v118 |= v124;
            }

            ++v123;
            v122 = v122 + 1;
          }

          while (v117 != v122);
          v119 += v117;
          v117 = [&off_100286660 countByEnumeratingWithState:&v235 objects:v293 count:16];
        }

        while (v117);
        v199 = v120;
        v187 = v118;
      }

      else
      {
        v187 = 0;
        v199 = 0;
      }

      v233 = 0u;
      v234 = 0u;
      v231 = 0u;
      v232 = 0u;
      v125 = [&off_100286678 countByEnumeratingWithState:&v231 objects:v292 count:16];
      if (v125)
      {
        v126 = v125;
        v127 = 0;
        v128 = 0;
        v129 = 0;
        v130 = *v232;
        do
        {
          v131 = 0;
          v132 = v128;
          do
          {
            if (*v232 != v130)
            {
              objc_enumerationMutation(&off_100286678);
            }

            if ([v96 containsObject:*(*(&v231 + 1) + 8 * v131)])
            {
              v133 = 1 << v132;
              v129 |= 1 << v132;
              if (!v210)
              {
                LOWORD(v133) = 0;
              }

              v127 |= v133;
            }

            ++v132;
            v131 = v131 + 1;
          }

          while (v126 != v131);
          v128 += v126;
          v126 = [&off_100286678 countByEnumeratingWithState:&v231 objects:v292 count:16];
        }

        while (v126);
        v197 = v129;
        v185 = v127;
      }

      else
      {
        v185 = 0;
        v197 = 0;
      }

      v229 = 0u;
      v230 = 0u;
      v227 = 0u;
      v228 = 0u;
      v134 = [&off_100286690 countByEnumeratingWithState:&v227 objects:v291 count:16];
      if (v134)
      {
        v135 = v134;
        v136 = 0;
        v137 = 0;
        v138 = *v228;
        do
        {
          v139 = 0;
          v140 = v136;
          do
          {
            if (*v228 != v138)
            {
              objc_enumerationMutation(&off_100286690);
            }

            v141 = [v97 containsObject:*(*(&v227 + 1) + 8 * v139)];
            v142 = 1 << v140;
            if (!v141)
            {
              LOWORD(v142) = 0;
            }

            v137 |= v142;
            ++v140;
            v139 = v139 + 1;
          }

          while (v135 != v139);
          v136 += v135;
          v135 = [&off_100286690 countByEnumeratingWithState:&v227 objects:v291 count:16];
        }

        while (v135);
        v195 = v137;
      }

      else
      {
        v195 = 0;
      }

      v225 = 0u;
      v226 = 0u;
      v223 = 0u;
      v224 = 0u;
      v143 = [&off_1002866A8 countByEnumeratingWithState:&v223 objects:v290 count:16];
      if (v143)
      {
        v144 = v143;
        v145 = 0;
        v146 = 0;
        v147 = *v224;
        do
        {
          v148 = 0;
          v149 = v145;
          do
          {
            if (*v224 != v147)
            {
              objc_enumerationMutation(&off_1002866A8);
            }

            v150 = [v97 containsObject:*(*(&v223 + 1) + 8 * v148)];
            v151 = 1 << v149;
            if (!v150)
            {
              LOWORD(v151) = 0;
            }

            v146 |= v151;
            ++v149;
            v148 = v148 + 1;
          }

          while (v144 != v148);
          v145 += v144;
          v144 = [&off_1002866A8 countByEnumeratingWithState:&v223 objects:v290 count:16];
        }

        while (v144);
        v193 = v146;
      }

      else
      {
        v193 = 0;
      }

      v221 = 0u;
      v222 = 0u;
      v219 = 0u;
      v220 = 0u;
      v152 = [&off_1002866C0 countByEnumeratingWithState:&v219 objects:v289 count:16];
      if (v152)
      {
        v153 = v152;
        v154 = 0;
        v155 = 0;
        v156 = *v220;
        do
        {
          v157 = 0;
          v158 = v154;
          do
          {
            if (*v220 != v156)
            {
              objc_enumerationMutation(&off_1002866C0);
            }

            v159 = [v97 containsObject:*(*(&v219 + 1) + 8 * v157)];
            v160 = 1 << v158;
            if (!v159)
            {
              LOWORD(v160) = 0;
            }

            v155 |= v160;
            ++v158;
            v157 = v157 + 1;
          }

          while (v153 != v157);
          v154 += v153;
          v153 = [&off_1002866C0 countByEnumeratingWithState:&v219 objects:v289 count:16];
        }

        while (v153);
        v191 = v155;
      }

      else
      {
        v191 = 0;
      }

      v217 = 0u;
      v218 = 0u;
      v215 = 0u;
      v216 = 0u;
      v161 = [&off_1002866D8 countByEnumeratingWithState:&v215 objects:v288 count:16];
      if (v161)
      {
        v162 = 0;
        v163 = 0;
        v164 = *v216;
        do
        {
          v165 = 0;
          v166 = v162;
          do
          {
            if (*v216 != v164)
            {
              objc_enumerationMutation(&off_1002866D8);
            }

            v167 = [v97 containsObject:*(*(&v215 + 1) + 8 * v165)];
            v168 = 1 << v166;
            if (!v167)
            {
              LOWORD(v168) = 0;
            }

            v163 |= v168;
            ++v166;
            v165 = v165 + 1;
          }

          while (v161 != v165);
          v162 += v161;
          v161 = [&off_1002866D8 countByEnumeratingWithState:&v215 objects:v288 count:16];
        }

        while (v161);
        v161 = v163;
      }

      v213 = 0u;
      v214 = 0u;
      v211 = 0u;
      v212 = 0u;
      v169 = [&off_1002866F0 countByEnumeratingWithState:&v211 objects:v287 count:16];
      if (v169)
      {
        v170 = v169;
        v171 = 0;
        v172 = 0;
        v173 = *v212;
        do
        {
          v174 = 0;
          v175 = v171;
          do
          {
            if (*v212 != v173)
            {
              objc_enumerationMutation(&off_1002866F0);
            }

            v176 = [v97 containsObject:*(*(&v211 + 1) + 8 * v174)];
            v177 = 1 << v175;
            if (!v176)
            {
              LOWORD(v177) = 0;
            }

            v172 |= v177;
            ++v175;
            v174 = v174 + 1;
          }

          while (v170 != v174);
          v171 += v170;
          v170 = [&off_1002866F0 countByEnumeratingWithState:&v211 objects:v287 count:16];
        }

        while (v170);
        v178 = v172;
      }

      else
      {
        v178 = 0;
      }

      a1 = v208;
      if ([objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")])
      {
        v285[0] = @"MWS_SCAN_FREQ_INDEX_Enh";
        v286[0] = [NSNumber numberWithInt:v205];
        v285[1] = @"MWSType4Blanking2GBITMAPWiFiEnh";
        v286[1] = [NSNumber numberWithInt:v203];
        v285[2] = @"MWSType4Blanking5GBITMAPLOWWiFiEnh";
        v286[2] = [NSNumber numberWithInt:v201];
        v285[3] = @"MWSType4Blanking5GBITMAPMIDWiFiEnh";
        v286[3] = [NSNumber numberWithInt:v199];
        v285[4] = @"MWSType4Blanking5GBITMAPHIWiFiEnh";
        v286[4] = [NSNumber numberWithInt:v197];
        v285[5] = @"MWSType4BlankingU5LowBITMAPWiFiEnh";
        v286[5] = [NSNumber numberWithInt:v195];
        v285[6] = @"MWSType4BlankingU5HighBITMAPWiFiEnh";
        v286[6] = [NSNumber numberWithInt:v193];
        v285[7] = @"MWSType4BlankingU6BITMAPWiFiEnh";
        v286[7] = [NSNumber numberWithInt:v191];
        v285[8] = @"MWSType4BlankingU7BITMAPWiFiEnh";
        v286[8] = [NSNumber numberWithInt:v161];
        v285[9] = @"MWSType4BlankingU8BITMAPWiFiEnh";
        v286[9] = [NSNumber numberWithInt:v178];
        v179 = [NSDictionary dictionaryWithObjects:v286 forKeys:v285 count:10];
        [WCM_Logging logLevel:4 message:@"Type4Blanking_WiFiEnh_IOVAR for SUB1: setting mwsType4BlankingBitmapWiFiEnh %@", v179];
        [v208[7] sendMessage:@"MWS_SCAN_FREQ_Enh" withValue:v179];
        if (v210)
        {
          v283[0] = @"MWS_SCAN_FREQ_INDEX_Enh";
          v284[0] = [NSNumber numberWithInt:v205];
          v283[1] = @"MWSType4Blanking5GBITMAPLOWWiFiEnh";
          v284[1] = [NSNumber numberWithInt:v189];
          v283[2] = @"MWSType4Blanking5GBITMAPMIDWiFiEnh";
          v284[2] = [NSNumber numberWithInt:v187];
          v283[3] = @"MWSType4Blanking5GBITMAPHIWiFiEnh";
          v284[3] = [NSNumber numberWithInt:v185];
          v180 = [NSDictionary dictionaryWithObjects:v284 forKeys:v283 count:4];
          [WCM_Logging logLevel:4 message:@"Type4Blanking_Mode_WiFiEnh_IOVAR for SUB1: setting mwsType4BlankingBitmapWiFiEnhMode %@", v180];
          a1 = v208;
          [v208[7] sendMessage:@"MWS_SCAN_FREQ_MODE_Enh" withValue:v180];
        }
      }

      v95 = v205 + 1;
      v94 = v207 + 1;
    }

    while (v207 + 1 != v183);
  }
}

id sub_1000F8EAC(uint64_t a1)
{
  v2 = [*(a1 + 32) createChannelConfigurationForConditionId:*(a1 + 40) enable2G:*(a1 + 52) enable5G:*(a1 + 53) enable6G:*(a1 + 54) wifi_channel_lower:*(a1 + 44) wifi_channel_upper:*(a1 + 48)];
  [WCM_Logging logLevel:4 message:@"Condtionid IOVAR: setting Condtionid %@", v2];
  v3 = *(a1 + 32);

  return [v3 sendMessage:@"MWS_CONDITION_ID_BITMAP_Enh" withValue:v2];
}

void sub_1000F8FB8(uint64_t a1)
{
  v10 = objc_alloc_init(NSMutableArray);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v11 objects:v17 count:16];
  if (v2)
  {
    v3 = v2;
    v9 = *v12;
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v11 + 1) + 8 * i);
        v6 = [*(a1 + 40) createChannelConfigurationForConditionId:objc_msgSend(objc_msgSend(v5 enable2G:"objectAtIndexedSubscript:" enable5G:0) enable6G:"intValue") wifi_channel_lower:objc_msgSend(objc_msgSend(v5 wifi_channel_upper:{"objectAtIndexedSubscript:", 1), "BOOLValue"), objc_msgSend(objc_msgSend(v5, "objectAtIndexedSubscript:", 2), "BOOLValue"), objc_msgSend(objc_msgSend(v5, "objectAtIndexedSubscript:", 3), "BOOLValue"), objc_msgSend(objc_msgSend(v5, "objectAtIndexedSubscript:", 4), "intValue"), objc_msgSend(objc_msgSend(v5, "objectAtIndexedSubscript:", 5), "intValue")}];
        +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 3, @"CIDDebug WiFiS Set ConditionID param -- policy conditionId = %u, 2G = %d, 5G = %d, 6G = %d, Ufrequency = %uKHz, Lfrequency = %uKHz", [objc_msgSend(v5 objectAtIndexedSubscript:{0), "intValue"}], objc_msgSend(objc_msgSend(v5, "objectAtIndexedSubscript:", 1), "BOOLValue"), objc_msgSend(objc_msgSend(v5, "objectAtIndexedSubscript:", 2), "BOOLValue"), objc_msgSend(objc_msgSend(v5, "objectAtIndexedSubscript:", 3), "BOOLValue"), objc_msgSend(objc_msgSend(v5, "objectAtIndexedSubscript:", 4), "BOOLValue"), objc_msgSend(objc_msgSend(v5, "objectAtIndexedSubscript:", 5), "BOOLValue"));
        [v10 addObject:v6];
      }

      v3 = [obj countByEnumeratingWithState:&v11 objects:v17 count:16];
    }

    while (v3);
  }

  v15[0] = @"MWS_TIMER_GRANULARITY_MS";
  v7 = [NSNumber numberWithShort:250];
  v15[1] = @"MWS_WIFI_CONDITION_CHANNEL_CONFIG";
  v16[0] = v7;
  v16[1] = v10;
  [*(a1 + 40) sendMessage:@"MWS_CONDITION_ID_BITMAP_Enh" withValue:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", v16, v15, 2)}];
}

id sub_1000F92F8(uint64_t a1)
{
  [WCM_Logging logLevel:3 message:@"WiFiS: rFEM LPM mode setting for bands 2g: %d 5g: %d 6g: %d", *(a1 + 40), *(a1 + 41), *(a1 + 42)];
  if (*(a1 + 40) == 1 && [&off_1002868E8 count])
  {
    v2 = 0;
    v3 = 0;
    do
    {
      v2 |= 1 << v3;
      v4 = v3 + 1;
      v5 = [&off_1002868E8 count];
      v3 = v4;
    }

    while (v5 > v4);
    v44 = v2;
  }

  else
  {
    v44 = 0;
  }

  if (*(a1 + 41) != 1)
  {
    LOWORD(v7) = 0;
    LOWORD(v10) = 0;
LABEL_23:
    v18 = 0;
    goto LABEL_24;
  }

  if ([&off_100286900 count])
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v7 |= 1 << v6;
      v8 = v6 + 1;
      v9 = [&off_100286900 count];
      v6 = v8;
    }

    while (v9 > v8);
  }

  else
  {
    LOWORD(v7) = 0;
  }

  if ([&off_100286918 count])
  {
    v11 = 0;
    v10 = 0;
    do
    {
      v10 |= 1 << v11;
      v12 = v11 + 1;
      v13 = [&off_100286918 count];
      v11 = v12;
    }

    while (v13 > v12);
  }

  else
  {
    LOWORD(v10) = 0;
  }

  if (![&off_100286930 count])
  {
    goto LABEL_23;
  }

  v14 = 0;
  v15 = 0;
  do
  {
    v15 |= 1 << v14;
    v16 = v14 + 1;
    v17 = [&off_100286930 count];
    v14 = v16;
  }

  while (v17 > v16);
  v18 = v15;
LABEL_24:
  if (*(a1 + 42) == 1)
  {
    v43 = v18;
    if ([&off_100286948 count])
    {
      v19 = 0;
      v20 = 0;
      do
      {
        v20 |= 1 << v19;
        v21 = v19 + 1;
        v22 = [&off_100286948 count];
        v19 = v21;
      }

      while (v22 > v21);
    }

    else
    {
      LOWORD(v20) = 0;
    }

    if ([&off_100286960 count])
    {
      v27 = 0;
      v23 = 0;
      do
      {
        v23 |= 1 << v27;
        v28 = v27 + 1;
        v29 = [&off_100286960 count];
        v27 = v28;
      }

      while (v29 > v28);
    }

    else
    {
      LOWORD(v23) = 0;
    }

    if ([&off_100286978 count])
    {
      v30 = 0;
      v24 = 0;
      do
      {
        v24 |= 1 << v30;
        v31 = v30 + 1;
        v32 = [&off_100286978 count];
        v30 = v31;
      }

      while (v32 > v31);
    }

    else
    {
      LOWORD(v24) = 0;
    }

    if ([&off_100286990 count])
    {
      v33 = 0;
      v25 = 0;
      do
      {
        v25 |= 1 << v33;
        v34 = v33 + 1;
        v35 = [&off_100286990 count];
        v33 = v34;
      }

      while (v35 > v34);
    }

    else
    {
      LOWORD(v25) = 0;
    }

    if ([&off_1002869A8 count])
    {
      v42 = a1;
      v36 = 0;
      v37 = 0;
      do
      {
        v37 |= 1 << v36;
        v38 = v36 + 1;
        v39 = [&off_1002869A8 count];
        v36 = v38;
      }

      while (v39 > v38);
      v26 = v37;
      a1 = v42;
    }

    else
    {
      v26 = 0;
    }

    v18 = v43;
  }

  else
  {
    LOWORD(v20) = 0;
    LOWORD(v23) = 0;
    LOWORD(v24) = 0;
    LOWORD(v25) = 0;
    v26 = 0;
  }

  v45[0] = @"MWS2GBITMAPWiFiEnh";
  v46[0] = [NSNumber numberWithInt:v44];
  v45[1] = @"MWS5GBITMAPLOWWiFiEnh";
  v46[1] = [NSNumber numberWithInt:v7];
  v45[2] = @"MWS5GBITMAPMIDWiFiEnh";
  v46[2] = [NSNumber numberWithInt:v10];
  v45[3] = @"MWS5GBITMAPHIWiFiEnh";
  v46[3] = [NSNumber numberWithInt:v18];
  v45[4] = @"MWSU5LowBITMAPWiFiEnh";
  v46[4] = [NSNumber numberWithInt:v20];
  v45[5] = @"MWSU5HighBITMAPWiFiEnh";
  v46[5] = [NSNumber numberWithInt:v23];
  v45[6] = @"MWSU6BITMAPWiFiEnh";
  v46[6] = [NSNumber numberWithInt:v24];
  v45[7] = @"MWSU7BITMAPWiFiEnh";
  v46[7] = [NSNumber numberWithInt:v25];
  v45[8] = @"MWSU8BITMAPWiFiEnh";
  v46[8] = [NSNumber numberWithInt:v26];
  v40 = [NSDictionary dictionaryWithObjects:v46 forKeys:v45 count:9];
  [WCM_Logging logLevel:4 message:@"WiFiS: setting enabled channels for rFEM mode %@", v40];
  return [*(a1 + 32) sendMessage:@"MWS_RFEM_CONFIG_Enh" withValue:v40];
}