uint64_t sub_1000BEA20@<X0>(const void **a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  if (*(a1 + 23) >= 0)
  {
    v5 = *(a1 + 23);
  }

  else
  {
    v5 = a1[1];
  }

  result = sub_100038F64(a3, v5 + 1);
  if (*(result + 23) >= 0)
  {
    v7 = result;
  }

  else
  {
    v7 = *result;
  }

  if (v5)
  {
    if (*(a1 + 23) >= 0)
    {
      v8 = a1;
    }

    else
    {
      v8 = *a1;
    }

    result = memmove(v7, v8, v5);
  }

  v9 = &v7[v5];
  *v9 = a2;
  v9[1] = 0;
  return result;
}

uint64_t SACommonUtils::copyDataAndReturnNewLen(SACommonUtils *this, void *a2, const void *a3, unsigned int a4, size_t __n, _DWORD *a6, unsigned int *a7)
{
  if (this && a2 && (v7 = __n, __n <= a4) && *a6 + __n <= a3)
  {
    memcpy(this, a2, __n);
    result = (*a6 + v7);
    *a6 = result;
  }

  else
  {
    v10 = SALogObjectGeneral;
    v11 = os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT);
    result = 0;
    if (v11)
    {
      v12[0] = 68289026;
      v12[1] = 0;
      v13 = 2082;
      v14 = "";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#bletransport,copyDataAndReturnNewLen invalid data}", v12, 0x12u);
      return 0;
    }
  }

  return result;
}

void SACommonUtils::getStringValue(SACommonUtils *this@<X0>, uint64_t a2@<X8>)
{
  v4 = this;
  v5 = v4;
  if (v4)
  {
    sub_1000060C4(a2, [(SACommonUtils *)v4 UTF8String]);
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }
}

uint64_t SACommonUtils::readDoubleFromKey(SACommonUtils *this, objc_object *a2, NSString *a3, double *a4)
{
  v6 = this;
  v7 = a2;
  v8 = v7;
  if (v6 && v7)
  {
    v9 = [(SACommonUtils *)v6 objectForKey:v7];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      [v9 doubleValue];
      v11 = v10;
      *a3 = v10;
      v12 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 68289283;
        v18 = 0;
        v19 = 2082;
        v20 = "";
        v21 = 2049;
        v22 = v11;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SACommonUtils,readFloat,value, value:%{private}0.3f}", &v17, 0x1Cu);
      }

      v13 = 1;
    }

    else
    {
      v15 = SALogObjectGeneral;
      v13 = 0;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 68289026;
        v18 = 0;
        v19 = 2082;
        v20 = "";
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SACommonUtils,readFloat,keyIdObjectFailed}", &v17, 0x12u);
        v13 = 0;
      }
    }
  }

  else
  {
    v14 = SALogObjectGeneral;
    v13 = 0;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 68289026;
      v18 = 0;
      v19 = 2082;
      v20 = "";
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SACommonUtils,invalid dictionary or Key}", &v17, 0x12u);
      v13 = 0;
    }
  }

  return v13;
}

uint64_t SACommonUtils::readArrayFromKey(void *a1, void *a2, unsigned int *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = v8;
  if (v7 && v8 && a4)
  {
    v10 = [v7 objectForKey:v8];
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v11 = v10;
      v12 = v11;
      *a4 = v12;
      v13 = [v12 count];
      *a3 = v13;
      v14 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 68289283;
        v20 = 0;
        v21 = 2082;
        v22 = "";
        v23 = 2049;
        v24 = v13;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SACommonUtils,arrayLen,size, arrayLen:%{private}lu}", &v19, 0x1Cu);
      }

      v15 = 1;
    }

    else
    {
      v17 = SALogObjectGeneral;
      v15 = 0;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 68289026;
        v20 = 0;
        v21 = 2082;
        v22 = "";
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#warning,#SACommonUtils,invalid_keyId}", &v19, 0x12u);
        v15 = 0;
      }
    }
  }

  else
  {
    v16 = SALogObjectGeneral;
    v15 = 0;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 68289026;
      v20 = 0;
      v21 = 2082;
      v22 = "";
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#warning,#SACommonUtils,invalid dictionary or Key}", &v19, 0x12u);
      v15 = 0;
    }
  }

  return v15;
}

BOOL SACommonUtils::readIntegerListFromKey(void *a1, void *a2, unsigned int *a3, const void **a4)
{
  v7 = a1;
  v8 = a2;
  v9 = v8;
  v40 = v7;
  if (v7 && v8)
  {
    v38 = v8;
    v10 = [v7 objectForKey:v8];
    if (!v10 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v11 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289026;
        v42 = 0;
        v43 = 2082;
        v44 = "";
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#warning,#SACommonUtils,Array read failed}", buf, 0x12u);
      }
    }

    v12 = v10;
    v13 = [v12 count];
    *a3 = v13;
    v39 = v13 != 0;
    if (v13)
    {
      v14 = 0;
      while (1)
      {
        v15 = [v12 objectAtIndex:v14];
        if (v15)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            break;
          }
        }

        v21 = SALogObjectGeneral;
        if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 68289283;
          v42 = 0;
          v43 = 2082;
          v44 = "";
          v45 = 2049;
          v46[0] = v14;
          v22 = v21;
          v23 = "{msg%{public}.0s:#SACommonUtils,index, i:%{private}lu}";
          v24 = 28;
LABEL_27:
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, v23, buf, v24);
        }

LABEL_28:

        if (++v14 >= *a3)
        {
          goto LABEL_34;
        }
      }

      v16 = [v15 intValue];
      v17 = v16;
      v19 = a4[1];
      v18 = a4[2];
      if (v19 >= v18)
      {
        v25 = *a4;
        v26 = v19 - *a4;
        v27 = v26 >> 2;
        v28 = (v26 >> 2) + 1;
        if (v28 >> 62)
        {
          sub_10000509C();
        }

        v29 = v18 - v25;
        if (v29 >> 1 > v28)
        {
          v28 = v29 >> 1;
        }

        v30 = v29 >= 0x7FFFFFFFFFFFFFFCLL;
        v31 = 0x3FFFFFFFFFFFFFFFLL;
        if (!v30)
        {
          v31 = v28;
        }

        if (v31)
        {
          sub_10001CF60(a4, v31);
        }

        *(4 * v27) = v16;
        v20 = 4 * v27 + 4;
        memcpy(0, v25, v26);
        v32 = *a4;
        *a4 = 0;
        a4[1] = v20;
        a4[2] = 0;
        if (v32)
        {
          operator delete(v32);
        }

        v9 = v38;
      }

      else
      {
        *v19 = v16;
        v20 = (v19 + 1);
      }

      a4[1] = v20;
      v33 = SALogObjectGeneral;
      if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_28;
      }

      v34 = (v20 - *a4) >> 2;
      *buf = 68289539;
      v42 = 0;
      v43 = 2082;
      v44 = "";
      v45 = 1025;
      LODWORD(v46[0]) = v17;
      WORD2(v46[0]) = 2049;
      *(v46 + 6) = v34;
      v22 = v33;
      v23 = "{msg%{public}.0s:#SACommonUtils,value, tempValue:%{private}d, valueSize:%{private}lu}";
      v24 = 34;
      goto LABEL_27;
    }

    v36 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      v42 = 0;
      v43 = 2082;
      v44 = "";
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#warning,#SACommonUtils,data array empty}", buf, 0x12u);
    }

LABEL_34:
  }

  else
  {
    v35 = SALogObjectGeneral;
    v39 = 0;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      v42 = 0;
      v43 = 2082;
      v44 = "";
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#warning,#SACommonUtils,invalid dictionary or Key}", buf, 0x12u);
      v39 = 0;
    }
  }

  return v39;
}

BOOL SACommonUtils::readStringListFromKey(void *a1, void *a2, unsigned int *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v32 = v8;
  v33 = v7;
  if (v7 && v8)
  {
    v9 = [v7 objectForKey:v8];
    if (!v9 || (v10 = v9, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v28 = SALogObjectGeneral;
      v13 = 0;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289026;
        *&buf[4] = 0;
        v35 = 2082;
        v36 = "";
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#warning,#SACommonUtils,invalid_keyId}", buf, 0x12u);
        v13 = 0;
      }

      goto LABEL_28;
    }

    v31 = a4;
    v11 = v9;
    v12 = [v11 count];
    *a3 = v12;
    v13 = v12 != 0;
    v14 = SALogObjectGeneral;
    v15 = os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT);
    if (v12)
    {
      if (!v15 || (*buf = 68289283, *&buf[4] = 0, v35 = 2082, v36 = "", v37 = 1025, LODWORD(v38) = v12, _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SACommonUtils,, numberOfItemsInArray:%{private}d}", buf, 0x18u), *a3))
      {
        v17 = 0;
        *&v16 = 68289283;
        v30 = v16;
        do
        {
          v18 = SALogObjectGeneral;
          if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 68289026;
            *&buf[4] = 0;
            v35 = 2082;
            v36 = "";
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SACommonUtils,channelNameArray}", buf, 0x12u);
          }

          v19 = [v11 objectAtIndex:{v17, v30}];
          if (v19 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v20 = v19;
            sub_1000060C4(buf, [v19 UTF8String]);
            sub_1000048B8(v31, buf);
            if (SBYTE3(v38) < 0)
            {
              operator delete(*buf);
            }
          }

          else
          {
            v21 = SALogObjectGeneral;
            if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v30;
              *&buf[4] = 0;
              v35 = 2082;
              v36 = "";
              v37 = 2049;
              v38 = v17;
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SACommonUtils,channel, i:%{private}lu}", buf, 0x1Cu);
            }
          }

          v9 = v10;
          ++v17;
        }

        while (v17 < *a3);
      }

      v22 = SALogObjectGeneral;
      if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_27;
      }

      v23 = 0xAAAAAAAAAAAAAAABLL * ((v31[1] - *v31) >> 3);
      *buf = 68289283;
      *&buf[4] = 0;
      v35 = 2082;
      v36 = "";
      v37 = 2049;
      v38 = v23;
      v24 = "{msg%{public}.0s:#SACommonUtils,channel, size:%{private}lu}";
      v25 = v22;
      v26 = 28;
    }

    else
    {
      if (!v15)
      {
LABEL_27:

LABEL_28:
        goto LABEL_29;
      }

      *buf = 68289026;
      *&buf[4] = 0;
      v35 = 2082;
      v36 = "";
      v24 = "{msg%{public}.0s:#warning,#SACommonUtils,data array empty}";
      v25 = v14;
      v26 = 18;
    }

    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, v24, buf, v26);
    goto LABEL_27;
  }

  v27 = SALogObjectGeneral;
  v13 = 0;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    *&buf[4] = 0;
    v35 = 2082;
    v36 = "";
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#warning,#SACommonUtils,invalid dictionary or Key}", buf, 0x12u);
    v13 = 0;
  }

LABEL_29:

  return v13;
}

void SACommonUtils::getDistanceString(const char *a1@<X0>, int a2@<W1>, _BYTE *a3@<X8>, double a4@<D0>)
{
  if (a4 < 0.0)
  {
    *a3 = 0;
    *(a3 + 1) = 0;
    *(a3 + 2) = 0;
    return;
  }

  v8 = [NSMeasurement alloc];
  v9 = +[NSUnitLength meters];
  v10 = [v8 initWithDoubleValue:v9 unit:a4];

  if (!v10)
  {
    sub_100039774(v41);
    v12 = std::ostream::operator<<();
    sub_1000C1BC0(v12);
    if ((v52 & 0x10) != 0)
    {
      v18 = v51;
      if (v51 < v48)
      {
        v51 = v48;
        v18 = v48;
      }

      v19 = __src;
    }

    else
    {
      if ((v52 & 8) == 0)
      {
        v13 = 0;
        a3[23] = 0;
LABEL_35:
        a3[v13] = 0;
        v42 = v24;
        if (v50 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v44);
        std::iostream::~basic_iostream();
        std::ios::~ios();
        goto LABEL_87;
      }

      v19 = v45;
      v18 = v46;
    }

    v13 = v18 - v19;
    if (v18 - v19 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_100004D90();
    }

    if (v13 >= 0x17)
    {
      operator new();
    }

    a3[23] = v13;
    if (v13)
    {
      memmove(a3, v19, v13);
    }

    goto LABEL_35;
  }

  if (a2)
  {
    +[NSUnitLength kilometers];
  }

  else
  {
    +[NSUnitLength miles];
  }
  v11 = ;
  v14 = [v10 measurementByConvertingToUnit:v11];

  if (!v14)
  {
    sub_100039774(v41);
    v16 = std::ostream::operator<<();
    sub_1000C1BC0(v16);
    if ((v52 & 0x10) != 0)
    {
      v22 = v51;
      if (v51 < v48)
      {
        v51 = v48;
        v22 = v48;
      }

      v23 = __src;
    }

    else
    {
      if ((v52 & 8) == 0)
      {
        v17 = 0;
        a3[23] = 0;
LABEL_50:
        a3[v17] = 0;
        v42 = v27;
        if (v50 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v44);
        std::iostream::~basic_iostream();
        std::ios::~ios();
        goto LABEL_86;
      }

      v23 = v45;
      v22 = v46;
    }

    v17 = v22 - v23;
    if (v22 - v23 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_100004D90();
    }

    if (v17 >= 0x17)
    {
      operator new();
    }

    a3[23] = v17;
    if (v17)
    {
      memmove(a3, v23, v17);
    }

    goto LABEL_50;
  }

  v15 = objc_alloc_init(NSMeasurementFormatter);
  if (!v15)
  {
    sub_100039774(v41);
    v20 = std::ostream::operator<<();
    sub_1000C1BC0(v20);
    if ((v52 & 0x10) != 0)
    {
      v25 = v51;
      if (v51 < v48)
      {
        v51 = v48;
        v25 = v48;
      }

      v26 = __src;
    }

    else
    {
      if ((v52 & 8) == 0)
      {
        v21 = 0;
        a3[23] = 0;
LABEL_60:
        a3[v21] = 0;
        v42 = v28;
        if (v50 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v44);
        std::iostream::~basic_iostream();
        std::ios::~ios();
        goto LABEL_85;
      }

      v26 = v45;
      v25 = v46;
    }

    v21 = v25 - v26;
    if (v25 - v26 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_100004D90();
    }

    if (v21 >= 0x17)
    {
      operator new();
    }

    a3[23] = v21;
    if (v21)
    {
      memmove(a3, v26, v21);
    }

    goto LABEL_60;
  }

  if (a1[23] < 0)
  {
    if (*(a1 + 1))
    {
      a1 = *a1;
    }

    else
    {
      a1 = "en-US";
    }
  }

  else if (!a1[23])
  {
    a1 = "en-US";
  }

  v29 = [NSLocale alloc];
  v30 = [NSString stringWithUTF8String:a1];
  v31 = [v29 initWithLocaleIdentifier:v30];
  [v15 setLocale:v31];

  [v15 setUnitOptions:1];
  v32 = objc_alloc_init(NSNumberFormatter);
  v33 = v32;
  if (v32)
  {
    [v32 setRoundingMode:0];
    [v33 setMaximumFractionDigits:0];
    [v15 setNumberFormatter:v33];
  }

  v34 = [v15 stringFromMeasurement:v14];
  v35 = v34;
  if (!v34)
  {
    sub_100039774(v41);
    v36 = std::ostream::operator<<();
    sub_1000C1BC0(v36);
    if ((v52 & 0x10) != 0)
    {
      v38 = v51;
      if (v51 < v48)
      {
        v51 = v48;
        v38 = v48;
      }

      v39 = __src;
    }

    else
    {
      if ((v52 & 8) == 0)
      {
        v37 = 0;
        a3[23] = 0;
LABEL_81:
        a3[v37] = 0;
        v42 = v40;
        if (v50 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v44);
        std::iostream::~basic_iostream();
        std::ios::~ios();
        goto LABEL_84;
      }

      v39 = v45;
      v38 = v46;
    }

    v37 = v38 - v39;
    if (v38 - v39 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_100004D90();
    }

    if (v37 >= 0x17)
    {
      operator new();
    }

    a3[23] = v37;
    if (v37)
    {
      memmove(a3, v39, v37);
    }

    goto LABEL_81;
  }

  sub_1000060C4(a3, [v34 UTF8String]);
LABEL_84:

LABEL_85:
LABEL_86:

LABEL_87:
}

unint64_t sub_1000C0634(unint64_t result, float *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = v7;
  while (1)
  {
    v7 = v8;
    v9 = (a2 - v8) >> 3;
    if (v9 > 2)
    {
      switch(v9)
      {
        case 3:
          v145 = *(v8 + 2);
          v146 = *v8;
          v147 = v8[3];
          v148 = v8[1];
          if (v145 == *v8)
          {
            v149 = v147 < v148;
          }

          else
          {
            v149 = v145 < *v8;
          }

          v150 = *(a2 - 2);
          v151 = *(a2 - 1);
          v152 = v151 < v147;
          if (v150 != v145)
          {
            v152 = v150 < v145;
          }

          if (!v149)
          {
            if (!v152)
            {
              return result;
            }

            *(v8 + 2) = v150;
            *(a2 - 2) = v145;
            v8[3] = v151;
            *(a2 - 1) = v147;
            v131 = *(v8 + 2);
            v139 = *v8;
            v133 = v8[3];
            goto LABEL_271;
          }

          if (v152)
          {
            *v8 = v150;
            *(a2 - 2) = v146;
            v8[1] = v151;
          }

          else
          {
            *v8 = v145;
            v8[2] = v146;
            v8[1] = v147;
            v8[3] = v148;
            v217 = *(a2 - 2);
            v218 = *(a2 - 1);
            v219 = v218 < v148;
            if (v217 != LODWORD(v146))
            {
              v219 = v217 < SLODWORD(v146);
            }

            if (!v219)
            {
              return result;
            }

            *(v8 + 2) = v217;
            *(a2 - 2) = v146;
            v8[3] = v218;
          }

          *(a2 - 1) = v148;
          return result;
        case 4:

          return sub_1000C14B4(v8, v8 + 2, v8 + 4, a2 - 2);
        case 5:
          result = sub_1000C14B4(v8, v8 + 2, v8 + 4, v8 + 6);
          v126 = *(a2 - 2);
          v127 = *(v8 + 6);
          v128 = *(a2 - 1);
          v129 = v8[7];
          v130 = v128 < v129;
          if (v126 != v127)
          {
            v130 = v126 < v127;
          }

          if (!v130)
          {
            return result;
          }

          *(v8 + 6) = v126;
          *(a2 - 2) = v127;
          v8[7] = v128;
          *(a2 - 1) = v129;
          v131 = *(v8 + 6);
          v132 = *(v8 + 4);
          v133 = v8[7];
          v134 = v8[5];
          v135 = v133 < v134;
          if (v131 != v132)
          {
            v135 = v131 < v132;
          }

          if (!v135)
          {
            return result;
          }

          *(v8 + 4) = v131;
          *(v8 + 6) = v132;
          v8[5] = v133;
          v8[7] = v134;
          v136 = *(v8 + 2);
          v137 = v8[3];
          v138 = v133 < v137;
          if (v131 != v136)
          {
            v138 = v131 < v136;
          }

          if (!v138)
          {
            return result;
          }

          *(v8 + 2) = v131;
          *(v8 + 4) = v136;
          v8[3] = v133;
          v8[5] = v137;
          v139 = *v8;
LABEL_271:
          v205 = v8[1];
          v206 = v133 < v205;
          if (v131 != LODWORD(v139))
          {
            v206 = v131 < SLODWORD(v139);
          }

          if (v206)
          {
            *v8 = v131;
            v8[2] = v139;
            v8[1] = v133;
            v8[3] = v205;
          }

          return result;
      }
    }

    else
    {
      if (v9 < 2)
      {
        return result;
      }

      if (v9 == 2)
      {
        v140 = *(a2 - 2);
        v141 = *v8;
        v142 = *(a2 - 1);
        v143 = v8[1];
        v144 = v142 < v143;
        if (v140 != LODWORD(v141))
        {
          v144 = v140 < *v8;
        }

        if (v144)
        {
          *v8 = v140;
          *(a2 - 2) = v141;
          v8[1] = v142;
          *(a2 - 1) = v143;
        }

        return result;
      }
    }

    if (v9 <= 23)
    {
      break;
    }

    if (!a3)
    {
      if (v8 == a2)
      {
        return result;
      }

      v167 = (v9 - 2) >> 1;
      v168 = v167;
      do
      {
        v169 = v168;
        if (v167 >= v168)
        {
          v170 = (2 * v168) | 1;
          v171 = &v8[2 * v170];
          if (2 * v169 + 2 >= v9)
          {
            v172 = *v171;
          }

          else
          {
            v172 = *(v171 + 2);
            v173 = v171[1] < v171[3];
            result = *v171 < v172;
            if (*v171 != v172)
            {
              v173 = *v171 < v172;
            }

            if (v173)
            {
              v171 += 2;
              v170 = 2 * v169 + 2;
            }

            else
            {
              v172 = *v171;
            }
          }

          v174 = &v8[2 * v169];
          v175 = *v174;
          v176 = v171[1];
          v177 = v174[1];
          v178 = v176 < v177;
          if (v172 != *v174)
          {
            v178 = v172 < *v174;
          }

          if (!v178)
          {
            do
            {
              *v174 = v172;
              v174[1] = v176;
              v174 = v171;
              if (v167 < v170)
              {
                break;
              }

              v179 = (2 * v170) | 1;
              v171 = &v8[2 * v179];
              v170 = 2 * v170 + 2;
              if (v170 >= v9)
              {
                v172 = *v171;
                v170 = v179;
              }

              else
              {
                v172 = *(v171 + 2);
                result = *v171;
                v180 = v171[1] < v171[3];
                if (result != v172)
                {
                  v180 = result < v172;
                }

                if (v180)
                {
                  v171 += 2;
                }

                else
                {
                  v172 = *v171;
                  v170 = v179;
                }
              }

              v176 = v171[1];
              v181 = v176 < v177;
              if (v172 != v175)
              {
                v181 = v172 < v175;
              }
            }

            while (!v181);
            *v174 = v175;
            v174[1] = v177;
          }
        }

        v168 = v169 - 1;
      }

      while (v169);
      while (2)
      {
        v182 = 0;
        v183 = *v8;
        v184 = v8[1];
        v185 = v8;
        do
        {
          v186 = &v185[2 * v182];
          v187 = v186 + 2;
          v188 = (2 * v182) | 1;
          v182 = 2 * v182 + 2;
          if (v182 >= v9)
          {
            v190 = *v187;
            v182 = v188;
          }

          else
          {
            v191 = *(v186 + 4);
            v189 = v186 + 4;
            v190 = v191;
            v192 = *(v189 - 2);
            v193 = *(v189 - 1) < v189[1];
            v194 = v192 < v191;
            if (v192 == v191)
            {
              result = *(v189 - 1) < v189[1];
            }

            else
            {
              result = v194;
            }

            if (result)
            {
              v187 = v189;
            }

            else
            {
              v190 = *(v189 - 2);
              v182 = v188;
            }
          }

          *v185 = v190;
          v185[1] = v187[1];
          v185 = v187;
        }

        while (v182 <= ((v9 - 2) >> 1));
        if (v187 != a2 - 2)
        {
          *v187 = *(a2 - 2);
          v187[1] = *(a2 - 1);
          *(a2 - 2) = v183;
          *(a2 - 1) = v184;
          v195 = (v187 - v8 + 8) >> 3;
          v196 = v195 < 2;
          v197 = v195 - 2;
          if (!v196)
          {
            v198 = v197 >> 1;
            v199 = &v8[2 * v198];
            v200 = *v199;
            v201 = *v187;
            v202 = v199[1];
            v184 = v187[1];
            v203 = v202 < v184;
            if (*v199 != *v187)
            {
              v203 = *v199 < *v187;
            }

            if (v203)
            {
              do
              {
                *v187 = v200;
                v187[1] = v202;
                v187 = v199;
                if (!v198)
                {
                  break;
                }

                v198 = (v198 - 1) >> 1;
                v199 = &v8[2 * v198];
                v200 = *v199;
                v202 = v199[1];
                v204 = v202 < v184;
                if (*v199 != v201)
                {
                  v204 = *v199 < v201;
                }
              }

              while (v204);
              *v187 = v201;
LABEL_265:
              v187[1] = v184;
            }
          }

          a2 -= 2;
          v196 = v9-- <= 2;
          if (v196)
          {
            return result;
          }

          continue;
        }

        break;
      }

      *v187 = v183;
      goto LABEL_265;
    }

    v10 = &v8[2 * (v9 >> 1)];
    v11 = *(a2 - 2);
    v12 = *(a2 - 1);
    if (v9 >= 0x81)
    {
      v13 = *v10;
      v14 = *v8;
      v15 = v10[1];
      v16 = v8[1];
      v17 = *v10 < *v8;
      if (*v10 == *v8)
      {
        v17 = v15 < v16;
      }

      v18 = v12 < v15;
      if (v11 != LODWORD(v13))
      {
        v18 = v11 < SLODWORD(v13);
      }

      if (v17)
      {
        if (v18)
        {
          *v8 = v11;
          *(a2 - 2) = v14;
          v8[1] = v12;
          goto LABEL_41;
        }

        *v8 = v13;
        *v10 = v14;
        v8[1] = v15;
        v10[1] = v16;
        v33 = *(a2 - 2);
        v34 = *(a2 - 1);
        v35 = v34 < v16;
        if (v33 != LODWORD(v14))
        {
          v35 = v33 < SLODWORD(v14);
        }

        if (v35)
        {
          *v10 = v33;
          *(a2 - 2) = v14;
          v10[1] = v34;
LABEL_41:
          *(a2 - 1) = v16;
        }
      }

      else if (v18)
      {
        *v10 = v11;
        *(a2 - 2) = v13;
        v10[1] = v12;
        *(a2 - 1) = v15;
        v25 = *v8;
        v26 = v10[1];
        v27 = v8[1];
        v28 = v26 < v27;
        if (*v10 != *v8)
        {
          v28 = *v10 < *v8;
        }

        if (v28)
        {
          *v8 = *v10;
          *v10 = v25;
          v8[1] = v26;
          v10[1] = v27;
        }
      }

      v36 = v10 - 2;
      v37 = *(v10 - 2);
      v38 = *(v8 + 2);
      v39 = *(v10 - 1);
      v40 = v8[3];
      if (v37 == v38)
      {
        v41 = v39 < v40;
      }

      else
      {
        v41 = v37 < v38;
      }

      v42 = *(a2 - 4);
      v43 = *(a2 - 3);
      v44 = v43 < v39;
      if (v42 != v37)
      {
        v44 = v42 < v37;
      }

      if (v41)
      {
        if (v44)
        {
          *(v8 + 2) = v42;
          *(a2 - 4) = v38;
          v8[3] = v43;
          goto LABEL_64;
        }

        *(v8 + 2) = v37;
        *v36 = v38;
        v8[3] = v39;
        *(v10 - 1) = v40;
        v52 = *(a2 - 4);
        v53 = *(a2 - 3);
        v54 = v53 < v40;
        if (v52 != v38)
        {
          v54 = v52 < v38;
        }

        if (v54)
        {
          *v36 = v52;
          *(a2 - 4) = v38;
          *(v10 - 1) = v53;
LABEL_64:
          *(a2 - 3) = v40;
        }
      }

      else if (v44)
      {
        *v36 = v42;
        *(a2 - 4) = v37;
        *(v10 - 1) = v43;
        *(a2 - 3) = v39;
        v45 = *(v8 + 2);
        v46 = *(v10 - 1);
        v47 = v8[3];
        v48 = v46 < v47;
        if (*v36 != v45)
        {
          v48 = *v36 < v45;
        }

        if (v48)
        {
          v8[2] = *v36;
          *v36 = v45;
          v8[3] = v46;
          *(v10 - 1) = v47;
        }
      }

      v55 = v10 + 2;
      v56 = *(v10 + 2);
      v57 = *(v8 + 4);
      v58 = v10[3];
      v59 = v8[5];
      if (v56 == v57)
      {
        v60 = v58 < v59;
      }

      else
      {
        v60 = v56 < v57;
      }

      v61 = *(a2 - 6);
      v62 = *(a2 - 5);
      v63 = v62 < v58;
      if (v61 != v56)
      {
        v63 = v61 < v56;
      }

      if (v60)
      {
        if (v63)
        {
          *(v8 + 4) = v61;
          *(a2 - 6) = v57;
          v8[5] = v62;
          goto LABEL_82;
        }

        *(v8 + 4) = v56;
        *v55 = v57;
        v8[5] = v58;
        v10[3] = v59;
        v68 = *(a2 - 6);
        v69 = *(a2 - 5);
        v70 = v69 < v59;
        if (v68 != v57)
        {
          v70 = v68 < v57;
        }

        if (v70)
        {
          *v55 = v68;
          *(a2 - 6) = v57;
          v10[3] = v69;
LABEL_82:
          *(a2 - 5) = v59;
        }
      }

      else if (v63)
      {
        *v55 = v61;
        *(a2 - 6) = v56;
        v10[3] = v62;
        *(a2 - 5) = v58;
        v64 = *(v8 + 4);
        v65 = v10[3];
        v66 = v8[5];
        v67 = v65 < v66;
        if (*v55 != v64)
        {
          v67 = *v55 < v64;
        }

        if (v67)
        {
          v8[4] = *v55;
          *v55 = v64;
          v8[5] = v65;
          v10[3] = v66;
        }
      }

      v71 = *v10;
      v72 = *v36;
      v73 = v10[1];
      v74 = *(v10 - 1);
      if (*v10 == *v36)
      {
        v75 = v73 < v74;
      }

      else
      {
        v75 = *v10 < *v36;
      }

      v76 = *v55;
      v77 = v10[3];
      v78 = v77 < v73;
      if (*v55 != LODWORD(v71))
      {
        v78 = SLODWORD(v76) < SLODWORD(v71);
      }

      if (v75)
      {
        if (!v78)
        {
          *v36 = v71;
          *v10 = v72;
          v79 = SLODWORD(v76) < SLODWORD(v72);
          if (LODWORD(v76) == LODWORD(v72))
          {
            v79 = v77 < v74;
          }

          *(v10 - 1) = v73;
          v10[1] = v74;
          v36 = v10;
          v73 = v77;
          v71 = v76;
          if (!v79)
          {
            v73 = v74;
            v71 = v72;
LABEL_100:
            v81 = *v8;
            *v8 = v71;
            *v10 = v81;
            v82 = *(v8 + 1);
            v8[1] = v73;
            *(v10 + 1) = v82;
            goto LABEL_101;
          }
        }
      }

      else
      {
        if (!v78)
        {
          goto LABEL_100;
        }

        *v10 = v76;
        *v55 = v71;
        v10[1] = v77;
        v10[3] = v73;
        if (LODWORD(v76) == LODWORD(v72))
        {
          v80 = v77 < v74;
        }

        else
        {
          v80 = SLODWORD(v76) < SLODWORD(v72);
        }

        v55 = v10;
        v73 = v74;
        v71 = v72;
        if (!v80)
        {
          v73 = v77;
          v71 = v76;
          goto LABEL_100;
        }
      }

      *v36 = v76;
      *v55 = v72;
      v36[1] = v77;
      v55[1] = v74;
      goto LABEL_100;
    }

    v19 = *v8;
    v20 = *v10;
    v21 = v8[1];
    v22 = v10[1];
    v23 = *v8 < *v10;
    if (*v8 == *v10)
    {
      v23 = v21 < v22;
    }

    v24 = v12 < v21;
    if (v11 != LODWORD(v19))
    {
      v24 = v11 < SLODWORD(v19);
    }

    if (v23)
    {
      if (v24)
      {
        *v10 = v11;
        *(a2 - 2) = v20;
        v10[1] = v12;
LABEL_59:
        *(a2 - 1) = v22;
        goto LABEL_101;
      }

      *v10 = v19;
      *v8 = v20;
      v10[1] = v21;
      v8[1] = v22;
      v49 = *(a2 - 2);
      v50 = *(a2 - 1);
      v51 = v50 < v22;
      if (v49 != LODWORD(v20))
      {
        v51 = v49 < SLODWORD(v20);
      }

      if (v51)
      {
        *v8 = v49;
        *(a2 - 2) = v20;
        v8[1] = v50;
        goto LABEL_59;
      }
    }

    else if (v24)
    {
      *v8 = v11;
      *(a2 - 2) = v19;
      v8[1] = v12;
      *(a2 - 1) = v21;
      v29 = *v10;
      v30 = v8[1];
      v31 = v10[1];
      v32 = v30 < v31;
      if (*v8 != *v10)
      {
        v32 = *v8 < *v10;
      }

      if (v32)
      {
        *v10 = *v8;
        *v8 = v29;
        v10[1] = v30;
        v8[1] = v31;
      }
    }

LABEL_101:
    --a3;
    v83 = *v8;
    if (a4)
    {
      v84 = v8[1];
      goto LABEL_106;
    }

    v85 = *(v8 - 2);
    v84 = v8[1];
    v154 = v85 == LODWORD(v83);
    v86 = v85 < SLODWORD(v83);
    if (v154)
    {
      v86 = *(v8 - 1) < v84;
    }

    if (v86)
    {
LABEL_106:
      v87 = 0;
      do
      {
        v88 = v8[v87 + 2];
        v89 = v8[v87 + 3] < v84;
        if (LODWORD(v88) != LODWORD(v83))
        {
          v89 = SLODWORD(v88) < SLODWORD(v83);
        }

        v87 += 2;
      }

      while (v89);
      v90 = &v8[v87];
      v91 = a2;
      if (v87 == 2)
      {
        v91 = a2;
        do
        {
          if (v90 >= v91)
          {
            break;
          }

          v94 = *(v91 - 2);
          v91 -= 2;
          v95 = v94 < SLODWORD(v83);
          if (v94 == LODWORD(v83))
          {
            v95 = v91[1] < v84;
          }
        }

        while (!v95);
      }

      else
      {
        do
        {
          v92 = *(v91 - 2);
          v91 -= 2;
          v93 = v92 < SLODWORD(v83);
          if (v92 == LODWORD(v83))
          {
            v93 = v91[1] < v84;
          }
        }

        while (!v93);
      }

      if (v90 >= v91)
      {
        v8 = v90;
      }

      else
      {
        v96 = *v91;
        v8 = v90;
        v97 = v91;
        do
        {
          *v8 = v96;
          *v97 = v88;
          v98 = *(v8 + 1);
          v8[1] = v97[1];
          *(v97 + 1) = v98;
          do
          {
            v99 = v8[2];
            v8 += 2;
            v88 = v99;
            v100 = v8[1] < v84;
            v101 = SLODWORD(v99) < SLODWORD(v83);
            if (LODWORD(v99) != LODWORD(v83))
            {
              v100 = v101;
            }
          }

          while (v100);
          do
          {
            v102 = *(v97 - 2);
            v97 -= 2;
            v96 = v102;
            v103 = v97[1] < v84;
            v104 = v102 < SLODWORD(v83);
            if (v102 != LODWORD(v83))
            {
              v103 = v104;
            }
          }

          while (!v103);
        }

        while (v8 < v97);
      }

      if (v8 - 2 != v7)
      {
        *v7 = *(v8 - 2);
        v7[1] = *(v8 - 1);
      }

      *(v8 - 2) = v83;
      *(v8 - 1) = v84;
      if (v90 < v91)
      {
        goto LABEL_137;
      }

      v105 = sub_1000C1670(v7, v8 - 2);
      result = sub_1000C1670(v8, a2);
      if (result)
      {
        a2 = v8 - 2;
        if (v105)
        {
          return result;
        }

        goto LABEL_2;
      }

      if (!v105)
      {
LABEL_137:
        result = sub_1000C0634(v7, v8 - 2, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v106 = *(a2 - 2);
      v154 = LODWORD(v83) == v106;
      v107 = SLODWORD(v83) < v106;
      if (v154)
      {
        v107 = v84 < *(a2 - 1);
      }

      if (v107)
      {
        do
        {
          v108 = *(v8 + 2);
          v8 += 2;
          v109 = SLODWORD(v83) < v108;
          if (LODWORD(v83) == v108)
          {
            v109 = v84 < v8[1];
          }
        }

        while (!v109);
      }

      else
      {
        v110 = v8 + 2;
        do
        {
          v8 = v110;
          if (v110 >= a2)
          {
            break;
          }

          v111 = *v110;
          v112 = v84 < v8[1];
          v154 = LODWORD(v83) == LODWORD(v111);
          v113 = SLODWORD(v83) < SLODWORD(v111);
          if (!v154)
          {
            v112 = v113;
          }

          v110 = v8 + 2;
        }

        while (!v112);
      }

      v114 = a2;
      if (v8 < a2)
      {
        v114 = a2;
        do
        {
          v115 = *(v114 - 2);
          v114 -= 2;
          v116 = SLODWORD(v83) < v115;
          if (LODWORD(v83) == v115)
          {
            v116 = v84 < v114[1];
          }
        }

        while (v116);
      }

      if (v8 < v114)
      {
        v117 = *v8;
        v118 = *v114;
        do
        {
          *v8 = v118;
          *v114 = v117;
          v119 = *(v8 + 1);
          v8[1] = v114[1];
          *(v114 + 1) = v119;
          do
          {
            v120 = v8[2];
            v8 += 2;
            v117 = v120;
            v121 = v84 < v8[1];
            v122 = SLODWORD(v83) < SLODWORD(v120);
            if (LODWORD(v83) != LODWORD(v120))
            {
              v121 = v122;
            }
          }

          while (!v121);
          do
          {
            v123 = *(v114 - 2);
            v114 -= 2;
            v118 = v123;
            v124 = v84 < v114[1];
            v125 = SLODWORD(v83) < SLODWORD(v123);
            if (LODWORD(v83) != LODWORD(v123))
            {
              v124 = v125;
            }
          }

          while (v124);
        }

        while (v8 < v114);
      }

      if (v8 - 2 != v7)
      {
        *v7 = *(v8 - 2);
        v7[1] = *(v8 - 1);
      }

      a4 = 0;
      *(v8 - 2) = v83;
      *(v8 - 1) = v84;
    }
  }

  v153 = v8 + 2;
  v154 = v8 == a2 || v153 == a2;
  v155 = v154;
  if (a4)
  {
    if ((v155 & 1) == 0)
    {
      v156 = 0;
      v157 = v8;
      do
      {
        v158 = *(v157 + 2);
        v159 = *v157;
        v160 = v157[3];
        v161 = v157[1];
        v157 = v153;
        v162 = v160 < v161;
        if (v158 != v159)
        {
          v162 = v158 < v159;
        }

        if (v162)
        {
          v163 = v156;
          while (1)
          {
            v164 = v8 + v163;
            *(v164 + 2) = v159;
            *(v164 + 3) = *(v8 + v163 + 4);
            if (!v163)
            {
              break;
            }

            v159 = *(v164 - 2);
            v165 = v160 < *(v164 - 1);
            if (v158 != v159)
            {
              v165 = v158 < v159;
            }

            v163 -= 8;
            if (!v165)
            {
              v166 = v8 + v163 + 8;
              goto LABEL_215;
            }
          }

          v166 = v8;
LABEL_215:
          *v166 = v158;
          *(v166 + 4) = v160;
        }

        v153 = v157 + 2;
        v156 += 8;
      }

      while (v157 + 2 != a2);
    }
  }

  else if ((v155 & 1) == 0)
  {
    v207 = v8 + 3;
    do
    {
      v208 = *(v7 + 2);
      v209 = *v7;
      v210 = v7[3];
      v211 = v7[1];
      v7 = v153;
      v212 = v210 < v211;
      if (v208 != LODWORD(v209))
      {
        v212 = v208 < SLODWORD(v209);
      }

      if (v212)
      {
        v213 = v207;
        do
        {
          v214 = v213;
          *(v213 - 1) = v209;
          v215 = *(v213 - 2);
          v213 -= 2;
          *v214 = v215;
          v209 = *(v214 - 5);
          v216 = v210 < *(v214 - 4);
          if (v208 != LODWORD(v209))
          {
            v216 = v208 < SLODWORD(v209);
          }
        }

        while (v216);
        *(v213 - 1) = v208;
        *v213 = v210;
      }

      v153 = v7 + 2;
      v207 += 2;
    }

    while (v7 + 2 != a2);
  }

  return result;
}

float *sub_1000C14B4(float *result, float *a2, float *a3, float *a4)
{
  v4 = *a2;
  v5 = *result;
  v6 = a2[1];
  v7 = result[1];
  if (*a2 == *result)
  {
    v8 = v6 < v7;
  }

  else
  {
    v8 = *a2 < *result;
  }

  v9 = *a3;
  v10 = a3[1];
  v11 = v10 < v6;
  if (*a3 != LODWORD(v4))
  {
    v11 = *a3 < SLODWORD(v4);
  }

  if (v8)
  {
    if (v11)
    {
      *result = v9;
      *a3 = v5;
      result[1] = v10;
LABEL_18:
      v6 = v7;
      v4 = v5;
      a3[1] = v7;
      goto LABEL_20;
    }

    *result = v4;
    *a2 = v5;
    result[1] = v6;
    a2[1] = v7;
    v4 = *a3;
    v6 = a3[1];
    v16 = v6 < v7;
    if (*a3 != LODWORD(v5))
    {
      v16 = *a3 < SLODWORD(v5);
    }

    if (v16)
    {
      *a2 = v4;
      *a3 = v5;
      a2[1] = v6;
      goto LABEL_18;
    }
  }

  else if (v11)
  {
    *a2 = v9;
    *a3 = v4;
    a2[1] = v10;
    a3[1] = v6;
    v12 = *result;
    v13 = a2[1];
    v14 = result[1];
    v15 = v13 < v14;
    if (*a2 != *result)
    {
      v15 = *a2 < *result;
    }

    if (v15)
    {
      *result = *a2;
      *a2 = v12;
      result[1] = v13;
      a2[1] = v14;
      v4 = *a3;
      v6 = a3[1];
    }
  }

  else
  {
    v6 = a3[1];
    v4 = *a3;
  }

LABEL_20:
  v17 = a4[1];
  v18 = v17 < v6;
  if (*a4 != LODWORD(v4))
  {
    v18 = *a4 < SLODWORD(v4);
  }

  if (v18)
  {
    *a3 = *a4;
    *a4 = v4;
    a3[1] = v17;
    a4[1] = v6;
    v19 = *a2;
    v20 = a3[1];
    v21 = a2[1];
    v22 = v20 < v21;
    if (*a3 != *a2)
    {
      v22 = *a3 < *a2;
    }

    if (v22)
    {
      *a2 = *a3;
      *a3 = v19;
      a2[1] = v20;
      a3[1] = v21;
      v23 = *result;
      v24 = a2[1];
      v25 = result[1];
      v26 = v24 < v25;
      if (*a2 != *result)
      {
        v26 = *a2 < *result;
      }

      if (v26)
      {
        *result = *a2;
        *a2 = v23;
        result[1] = v24;
        a2[1] = v25;
      }
    }
  }

  return result;
}

BOOL sub_1000C1670(float *a1, float *a2)
{
  v4 = (a2 - a1) >> 3;
  if (v4 <= 2)
  {
    if (v4 >= 2)
    {
      if (v4 == 2)
      {
        v5 = *(a2 - 2);
        v6 = *a1;
        v7 = *(a2 - 1);
        v8 = a1[1];
        v9 = v7 < v8;
        if (v5 != *a1)
        {
          v9 = v5 < *a1;
        }

        if (v9)
        {
          *a1 = v5;
          *(a2 - 2) = v6;
          a1[1] = v7;
LABEL_69:
          result = 1;
          *(a2 - 1) = v8;
          return result;
        }

        return 1;
      }

      goto LABEL_32;
    }

    return 1;
  }

  switch(v4)
  {
    case 3:
      v27 = *(a1 + 2);
      v28 = *a1;
      v29 = a1[3];
      v8 = a1[1];
      if (v27 == *a1)
      {
        v30 = v29 < v8;
      }

      else
      {
        v30 = v27 < *a1;
      }

      v31 = *(a2 - 2);
      v32 = *(a2 - 1);
      v33 = v32 < v29;
      if (v31 != v27)
      {
        v33 = v31 < v27;
      }

      if (v30)
      {
        if (v33)
        {
          *a1 = v31;
          *(a2 - 2) = v28;
          a1[1] = v32;
          goto LABEL_69;
        }

        *a1 = v27;
        *(a1 + 2) = v28;
        a1[1] = v29;
        a1[3] = v8;
        v64 = *(a2 - 2);
        v65 = *(a2 - 1);
        v66 = v65 < v8;
        if (v64 != v28)
        {
          v66 = v64 < v28;
        }

        if (v66)
        {
          *(a1 + 2) = v64;
          *(a2 - 2) = v28;
          a1[3] = v65;
          goto LABEL_69;
        }
      }

      else if (v33)
      {
        *(a1 + 2) = v31;
        *(a2 - 2) = v27;
        a1[3] = v32;
        *(a2 - 1) = v29;
        v47 = *(a1 + 2);
        v48 = *a1;
        v49 = a1[3];
        v50 = a1[1];
        v51 = v49 < v50;
        if (v47 != *a1)
        {
          v51 = v47 < *a1;
        }

        if (v51)
        {
          *a1 = v47;
          *(a1 + 2) = v48;
          a1[1] = v49;
          result = 1;
          a1[3] = v50;
          return result;
        }
      }

      return 1;
    case 4:
      sub_1000C14B4(a1, a1 + 2, a1 + 4, a2 - 2);
      return 1;
    case 5:
      sub_1000C14B4(a1, a1 + 2, a1 + 4, a1 + 6);
      v10 = *(a2 - 2);
      v11 = *(a1 + 6);
      v12 = *(a2 - 1);
      v13 = a1[7];
      v14 = v12 < v13;
      if (v10 != v11)
      {
        v14 = v10 < v11;
      }

      if (v14)
      {
        *(a1 + 6) = v10;
        *(a2 - 2) = v11;
        a1[7] = v12;
        *(a2 - 1) = v13;
        v15 = *(a1 + 6);
        v16 = *(a1 + 4);
        v17 = a1[7];
        v18 = a1[5];
        v19 = v17 < v18;
        if (v15 != v16)
        {
          v19 = v15 < v16;
        }

        if (v19)
        {
          *(a1 + 4) = v15;
          *(a1 + 6) = v16;
          a1[5] = v17;
          a1[7] = v18;
          v20 = *(a1 + 2);
          v21 = a1[3];
          v22 = v17 < v21;
          if (v15 != v20)
          {
            v22 = v15 < v20;
          }

          if (v22)
          {
            *(a1 + 2) = v15;
            *(a1 + 4) = v20;
            a1[3] = v17;
            a1[5] = v21;
            v23 = *a1;
            v24 = a1[1];
            v25 = v17 < v24;
            if (v15 != *a1)
            {
              v25 = v15 < *a1;
            }

            if (v25)
            {
              *a1 = v15;
              a1[2] = v23;
              a1[1] = v17;
              result = 1;
              a1[3] = v24;
              return result;
            }
          }
        }
      }

      return 1;
  }

LABEL_32:
  v34 = a1 + 4;
  v35 = *(a1 + 4);
  v36 = a1 + 2;
  v37 = *(a1 + 2);
  v38 = *a1;
  v39 = a1 + 3;
  v40 = a1[3];
  v41 = a1 + 1;
  v42 = a1[1];
  v43 = v37 < *a1;
  v44 = a1[5];
  if (v37 == *a1)
  {
    v43 = v40 < v42;
  }

  v45 = v44 < v40;
  if (v35 != v37)
  {
    v45 = v35 < v37;
  }

  if (v43)
  {
    if (v45)
    {
      v46 = a1;
      v36 = a1 + 4;
      v39 = a1 + 5;
LABEL_49:
      *v46 = v35;
      *v36 = v38;
      *v41 = v44;
      *v39 = v42;
      goto LABEL_50;
    }

    *a1 = v37;
    a1[2] = v38;
    if (v35 == LODWORD(v38))
    {
      v67 = v44 < v42;
    }

    else
    {
      v67 = v35 < SLODWORD(v38);
    }

    v46 = a1 + 2;
    a1[1] = v40;
    a1[3] = v42;
    v36 = a1 + 4;
    v41 = a1 + 3;
    v39 = a1 + 5;
    if (v67)
    {
      goto LABEL_49;
    }
  }

  else if (v45)
  {
    *v36 = v35;
    *v34 = v37;
    *v39 = v44;
    a1[5] = v40;
    v52 = v44 < v42;
    if (v35 != LODWORD(v38))
    {
      v52 = v35 < SLODWORD(v38);
    }

    v46 = a1;
    if (v52)
    {
      goto LABEL_49;
    }
  }

LABEL_50:
  v53 = a1 + 6;
  if (a1 + 6 == a2)
  {
    return 1;
  }

  v54 = 0;
  v55 = 0;
  while (1)
  {
    v56 = *v53;
    v57 = *v34;
    v58 = v53[1];
    v59 = v58 < v34[1];
    if (*v53 != v57)
    {
      v59 = *v53 < v57;
    }

    if (v59)
    {
      v60 = v54;
      while (1)
      {
        v61 = a1 + v60;
        *(v61 + 6) = v57;
        *(v61 + 7) = *(a1 + v60 + 20);
        if (v60 == -16)
        {
          break;
        }

        v57 = *(v61 + 2);
        v62 = v58 < *(v61 + 3);
        if (v56 != v57)
        {
          v62 = v56 < v57;
        }

        v60 -= 8;
        if (!v62)
        {
          v63 = a1 + v60 + 24;
          goto LABEL_62;
        }
      }

      v63 = a1;
LABEL_62:
      *v63 = v56;
      *(v63 + 4) = v58;
      if (++v55 == 8)
      {
        return v53 + 2 == a2;
      }
    }

    v34 = v53;
    v54 += 8;
    v53 += 2;
    if (v53 == a2)
    {
      return 1;
    }
  }
}

void sub_1000C1AD4(id a1, id a2, id a3, BOOL *a4)
{
  v5 = a2;
  v6 = a3;
  v7 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEBUG))
  {
    v8[0] = 68289539;
    v8[1] = 0;
    v9 = 2082;
    v10 = "";
    v11 = 2113;
    v12 = v5;
    v13 = 2113;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#commonUtils,convertStringToDictionary, key:%{private, location:escape_only}@, value:%{private, location:escape_only}@}", v8, 0x26u);
  }
}

void *sub_1000C1BC0(void *a1)
{
  std::ostream::sentry::sentry();
  if (v16 == 1)
  {
    v2 = a1 + *(*a1 - 24);
    v3 = *(v2 + 5);
    v4 = *(v2 + 2);
    v5 = *(v2 + 36);
    if (v5 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v6 = std::locale::use_facet(&__b, &std::ctype<char>::id);
      v5 = (v6->__vftable[2].~facet_0)(v6, 32);
      std::locale::~locale(&__b);
      *(v2 + 36) = v5;
    }

    if ((v4 & 0xB0) == 0x20)
    {
      v7 = "";
    }

    else
    {
      v7 = "mi";
    }

    if (!v3)
    {
      goto LABEL_27;
    }

    v8 = *(v2 + 3);
    v9 = v8 <= 2;
    v10 = v8 - 2;
    v11 = v9 ? 0 : v10;
    if (v7 - "mi" >= 1 && (*(*v3 + 96))(v3, "mi", v7 - "mi") != v7 - "mi")
    {
      goto LABEL_27;
    }

    if (v11 >= 1)
    {
      if (v11 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_100004D90();
      }

      if (v11 >= 0x17)
      {
        operator new();
      }

      v18 = v11;
      memset(&__b, v5, v11);
      *(&__b.__locale_ + v11) = 0;
      if (v18 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b.__locale_;
      }

      v13 = (*(*v3 + 96))(v3, p_b, v11);
      if (v18 < 0)
      {
        operator delete(__b.__locale_);
      }

      if (v13 != v11)
      {
        goto LABEL_27;
      }
    }

    v14 = "mi" - v7 + 2;
    if (v14 < 1 || (*(*v3 + 96))(v3, v7, "mi" - v7 + 2) == v14)
    {
      *(v2 + 3) = 0;
    }

    else
    {
LABEL_27:
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  std::ostream::sentry::~sentry();
  return a1;
}

void sub_1000C1E70(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  std::ostream::sentry::~sentry();
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v17 + *(*v17 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x1000C1E44);
}

uint64_t sub_1000C1EF0(uint64_t a1)
{
  *(a1 + 16) = v3;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  std::locale::~locale((a1 + 32));

  return std::iostream::~basic_iostream();
}

uint64_t SASettings::instance(SASettings *this)
{
  v1 = sub_100042820();
  if (*(v1 + 320) == 1)
  {
    result = SASettingsTest::fInstance;
    if (!SASettingsTest::fInstance)
    {
      operator new();
    }
  }

  else
  {

    return SASettingsProd::instance(v1);
  }

  return result;
}

uint64_t SASettings::finalize(SASettings *this)
{
  if (*(sub_100042820() + 320) == 1)
  {
    v1 = &SASettingsTest::fInstance;
  }

  else
  {
    v1 = &SASettingsProd::fInstance;
  }

  result = *v1;
  if (*v1)
  {
    result = (*(*result + 8))(result);
    *v1 = 0;
  }

  return result;
}

void SACoreRoutine::create(void *a1)
{
  a1;
  if (*(sub_100042820() + 272) == 1)
  {
    sub_1000C21E8();
  }

  sub_1000C2320();
}

void SARegulatory::create(void *a1)
{
  v1 = a1;
  if (*(sub_100042820() + 441) == 1)
  {
    operator new();
  }

  operator new();
}

void sub_1000C2554(uint64_t a1, ...)
{
  va_start(va, a1);
  sub_10000F274(va);
  operator delete();
}

void sub_1000C2E74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1000C38F0(id a1, id a2, id a3, BOOL *a4)
{
  v5 = a2;
  v6 = a3;
  v7 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 68289539;
    v8[1] = 0;
    v9 = 2082;
    v10 = "";
    v11 = 2113;
    v12 = v5;
    v13 = 2113;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#channel,userInfoDict, key:%{private, location:escape_only}@, value:%{private, location:escape_only}@}", v8, 0x26u);
  }
}

void sub_1000C39DC(id a1, id a2, id a3, BOOL *a4)
{
  v5 = a2;
  v6 = a3;
  v7 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 68289539;
    v8[1] = 0;
    v9 = 2082;
    v10 = "";
    v11 = 2113;
    v12 = v5;
    v13 = 2113;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#channel,metaDataDict, key:%{private, location:escape_only}@, value:%{private, location:escape_only}@}", v8, 0x26u);
  }
}

void sub_1000C3CF8(uint64_t a1, void *a2, void *a3)
{
  v24 = a2;
  v25 = a3;
  v5 = SALogObjectGeneral;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [*(a1 + 32) UTF8String];
    buf = 68289795;
    v32 = 2082;
    v33 = "";
    v34 = 2113;
    v35 = v24;
    v36 = 2114;
    v37 = v25;
    v38 = 2081;
    v39 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#channel,unsubcribeForgottenChannels,getRegisteredChannelsForTopicResult, channels:%{private, location:escape_only}@, error:%{public, location:escape_only}@, topic:%{private, location:escape_only}s}", &buf, 0x30u);
  }

  if (v25)
  {
    v7 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      buf = 68289026;
      v32 = 2082;
      v33 = "";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#channel,unsubcribeForgottenChannels,unableToFetchChannels}", &buf, 0x12u);
    }
  }

  else
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v8 = v24;
    v9 = [v8 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v9)
    {
      v10 = *v27;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v27 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v26 + 1) + 8 * i);
          v13 = *(a1 + 40);
          v14 = [v12 channelID];
          LOBYTE(v13) = [v13 isSubscribedChannel:v14];

          v15 = SALogObjectGeneral;
          v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
          if (v13)
          {
            if (v16)
            {
              v17 = [v12 channelID];
              v18 = v17;
              v19 = [v17 UTF8String];
              buf = 68289283;
              v32 = 2082;
              v33 = "";
              v34 = 2081;
              v35 = v19;
              _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#channel,unsubcribeForgottenChannels,isActive, channel:%{private, location:escape_only}s}", &buf, 0x1Cu);
            }
          }

          else
          {
            if (v16)
            {
              v20 = [v12 channelID];
              v21 = v20;
              v22 = [v20 UTF8String];
              buf = 68289283;
              v32 = 2082;
              v33 = "";
              v34 = 2081;
              v35 = v22;
              _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#channel,unsubcribeForgottenChannels,unsub, channel:%{private, location:escape_only}s}", &buf, 0x1Cu);
            }

            [*(*(a1 + 40) + 8) unsubscribeFromChannel:v12 forTopic:*(a1 + 32)];
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v9);
    }

    v23 = *(a1 + 48);
    if (v23)
    {
      (*(v23 + 16))();
    }
  }
}

uint64_t SACloudChannelProd::SACloudChannelProd(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  sub_1000319FC(v17, a3);
  sub_10004497C(v16, a4);
  *a1 = off_10013FD60;
  sub_10003197C(v16);
  sub_100031C34(v17);
  *a1 = &off_10013FC78;
  v8 = v7;
  *(a1 + 8) = v8;
  *(a1 + 16) = 0;
  sub_1000319FC(a1 + 24, a3);
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  v9 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v13[0] = 68289026;
    v13[1] = 0;
    v14 = 2082;
    v15 = "";
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ch,SAChannelManager()}", v13, 0x12u);
  }

  v10 = [[SACloudChannelsInterface alloc] initWithQueue:*(a1 + 8) isProduction:(*(sub_100042820() + 26) & 1) == 0 channelType:0];
  v11 = *(a1 + 16);
  *(a1 + 16) = v10;

  [*(a1 + 16) setChannelProxy:a1];
  return a1;
}

uint64_t sub_1000C4394(uint64_t a1)
{
  *a1 = &off_10013FC78;
  [*(a1 + 16) cleanup];
  v3 = (a1 + 56);
  sub_100005208(&v3);
  sub_100031C34(a1 + 24);

  return a1;
}

void sub_1000C4414(uint64_t a1)
{
  sub_1000C4394(a1);

  operator delete();
}

const __CFString *sub_1000C444C(int a1)
{
  v2 = SALogObjectGeneral;
  v3 = os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT);
  if (a1 == 2)
  {
    if (v3)
    {
      v5 = 68289026;
      v6 = 0;
      v7 = 2082;
      v8 = "";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ch,subscribe}", &v5, 0x12u);
    }

    return @"com.apple.aps.mantis.safetyalert";
  }

  else if (a1)
  {
    if (v3)
    {
      v5 = 68289026;
      v6 = 0;
      v7 = 2082;
      v8 = "";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ch,subscribe,invalid type}", &v5, 0x12u);
    }

    return 0;
  }

  else
  {
    if (v3)
    {
      v5 = 68289026;
      v6 = 0;
      v7 = 2082;
      v8 = "";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ch,subscribe,Alert}", &v5, 0x12u);
    }

    return @"com.apple.aps.locationd.safetyalert";
  }
}

void sub_1000C45C4(uint64_t a1, _BYTE *a2)
{
  v4 = sub_1000C444C(*(a2 + 6));
  v5 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    if (a2[23] >= 0)
    {
      v6 = a2;
    }

    else
    {
      v6 = *a2;
    }

    v21 = 68289283;
    v22 = 0;
    v23 = 2082;
    v24 = "";
    v25 = 2081;
    v26 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ch,subscribeRequest, channel:%{private, location:escape_only}s}", &v21, 0x1Cu);
  }

  v8 = *(a1 + 56);
  v7 = *(a1 + 64);
  if (v8 != v7)
  {
    v9 = a2[23];
    v10 = *a2;
    if (v9 >= 0)
    {
      v11 = a2[23];
    }

    else
    {
      v11 = *(a2 + 1);
    }

    if (v9 >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    while (1)
    {
      v13 = *(v8 + 23);
      v14 = v13;
      if ((v13 & 0x80u) != 0)
      {
        v13 = *(v8 + 8);
      }

      if (v13 == v11)
      {
        v15 = v14 >= 0 ? v8 : *v8;
        if (!memcmp(v15, v12, v11))
        {
          break;
        }
      }

      v8 += 24;
      if (v8 == v7)
      {
        goto LABEL_29;
      }
    }
  }

  if (v8 == v7)
  {
    LOBYTE(v9) = a2[23];
    v10 = *a2;
LABEL_29:
    v18 = +[NSString defaultCStringEncoding];
    if ((v9 & 0x80u) == 0)
    {
      v19 = a2;
    }

    else
    {
      v19 = v10;
    }

    v20 = [NSString stringWithCString:v19 encoding:v18];
    [*(a1 + 16) subscribe:v20 topic:v4];
    sub_1000048B8((a1 + 56), a2);
  }

  else
  {
    v16 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      if (a2[23] >= 0)
      {
        v17 = a2;
      }

      else
      {
        v17 = *a2;
      }

      v21 = 68289283;
      v22 = 0;
      v23 = 2082;
      v24 = "";
      v25 = 2081;
      v26 = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ch,AlreadySubscribed, channel:%{private, location:escape_only}s}", &v21, 0x1Cu);
    }
  }
}

void sub_1000C4848(uint64_t a1, const void **a2)
{
  v4 = sub_1000C444C(*(a2 + 6));
  v5 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v6 = a2;
    }

    else
    {
      v6 = *a2;
    }

    v39 = 68289283;
    v40 = 0;
    v41 = 2082;
    v42 = "";
    v43 = 2081;
    v44 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ch,unsubscribeRequest, channel:%{private, location:escape_only}s}", &v39, 0x1Cu);
  }

  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  if (v7 != v8)
  {
    v9 = *(a2 + 23);
    if (v9 >= 0)
    {
      v10 = *(a2 + 23);
    }

    else
    {
      v10 = a2[1];
    }

    if (v9 >= 0)
    {
      v11 = a2;
    }

    else
    {
      v11 = *a2;
    }

    while (1)
    {
      v12 = *(v7 + 23);
      v13 = v12;
      if ((v12 & 0x80u) != 0)
      {
        v12 = *(v7 + 8);
      }

      if (v12 == v10)
      {
        v14 = v13 >= 0 ? v7 : *v7;
        if (!memcmp(v14, v11, v10))
        {
          break;
        }
      }

      v7 += 24;
      if (v7 == v8)
      {
        goto LABEL_42;
      }
    }
  }

  if (v7 == v8)
  {
LABEL_42:
    v28 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a2 + 23) >= 0)
      {
        v29 = a2;
      }

      else
      {
        v29 = *a2;
      }

      v39 = 68289283;
      v40 = 0;
      v41 = 2082;
      v42 = "";
      v43 = 2081;
      v44 = v29;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ch,NotSubscribed, channel:%{private, location:escape_only}s}", &v39, 0x1Cu);
    }
  }

  else
  {
    v15 = *(a2 + 23);
    v16 = *a2;
    v17 = +[NSString defaultCStringEncoding];
    if (v15 >= 0)
    {
      v18 = a2;
    }

    else
    {
      v18 = v16;
    }

    v19 = [NSString stringWithCString:v18 encoding:v17];
    [*(a1 + 16) unsubscribe:v19 topic:v4];
    v20 = *(a1 + 56);
    v21 = *(a1 + 64);
    if (v20 != v21)
    {
      v22 = *(a2 + 23);
      if (v22 >= 0)
      {
        v23 = *(a2 + 23);
      }

      else
      {
        v23 = a2[1];
      }

      if (v22 >= 0)
      {
        v24 = a2;
      }

      else
      {
        v24 = *a2;
      }

      while (1)
      {
        v25 = *(v20 + 23);
        v26 = v25;
        if ((v25 & 0x80u) != 0)
        {
          v25 = *(v20 + 8);
        }

        if (v25 == v23)
        {
          v27 = v26 >= 0 ? v20 : *v20;
          if (!memcmp(v27, v24, v23))
          {
            break;
          }
        }

        v20 += 24;
        if (v20 == v21)
        {
          v20 = v21;
          goto LABEL_67;
        }
      }

      if (v20 != v21)
      {
        v30 = (v20 + 24);
        if ((v20 + 24) != v21)
        {
          do
          {
            v31 = *(v30 + 23);
            if (v31 >= 0)
            {
              v32 = *(v30 + 23);
            }

            else
            {
              v32 = *(v30 + 1);
            }

            v33 = *(a2 + 23);
            v34 = v33;
            if (v33 < 0)
            {
              v33 = a2[1];
            }

            if (v32 != v33 || (v31 >= 0 ? (v35 = v30) : (v35 = *v30), (v36 = *a2, v34 >= 0) ? (v37 = a2) : (v37 = *a2), memcmp(v35, v37, v32)))
            {
              if (*(v20 + 23) < 0)
              {
                operator delete(*v20);
              }

              v38 = *v30;
              *(v20 + 16) = *(v30 + 2);
              *v20 = v38;
              v20 += 24;
              *(v30 + 23) = 0;
              *v30 = 0;
            }

            v30 = (v30 + 24);
          }

          while (v30 != v21);
          v21 = *(a1 + 64);
        }
      }
    }

LABEL_67:
    sub_1000476E0(a1 + 56, v20, v21);
  }
}

void sub_1000C4BD4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    v7 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 68289026;
      v10 = 0;
      v11 = 2082;
      v12 = "";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ch ,dict failure}", &v9, 0x12u);
    }
  }

  [v5 enumerateKeysAndObjectsUsingBlock:&stru_10013FCD8];
  if (*(a1 + 48))
  {
    v8 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 68289026;
      v10 = 0;
      v11 = 2082;
      v12 = "";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ch ,fOnAlertCb}", &v9, 0x12u);
    }

    sub_100031B90(a1 + 24, v5, v6);
  }
}

void sub_1000C4D5C(id a1, id a2, id a3, BOOL *a4)
{
  v5 = a2;
  v6 = a3;
  v7 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 68289539;
    v8[1] = 0;
    v9 = 2082;
    v10 = "";
    v11 = 2113;
    v12 = v5;
    v13 = 2113;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ch,sendDictionary dict, key:%{private, location:escape_only}@, value:%{private, location:escape_only}@}", v8, 0x26u);
  }
}

uint64_t sub_1000C4E48(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3321888768;
  block[2] = sub_1000C4EFC;
  block[3] = &unk_10013FCF8;
  sub_1000C52B8(v5, a2);
  dispatch_async(v2, block);
  return sub_1000C5238(v5);
}

void sub_1000C4EFC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3321888768;
  v3[2] = sub_1000C4FE8;
  v3[3] = &unk_10013FCF8;
  sub_1000C52B8(v4, a1 + 32);
  sub_1000C4FE8(v3);
  sub_1000C5238(v4);
  objc_autoreleasePoolPop(v2);
}

void sub_1000C4FE8(uint64_t a1)
{
  memset(v2, 0, sizeof(v2));
  v1 = *(a1 + 56);
  if (!v1)
  {
    sub_1000053C4();
  }

  (*(*v1 + 48))(v1, v2);
  v3 = v2;
  sub_100005208(&v3);
}

void sub_1000C505C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  sub_100005208(&a12);
  _Unwind_Resume(a1);
}

uint64_t sub_1000C508C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3321888768;
  v4[2] = sub_1000C515C;
  v4[3] = &unk_1001390F0;
  sub_10000F1DC(v5, a2);
  [v2 unsubcribeForgottenChannels:v4];
  return sub_10000F274(v5);
}

uint64_t sub_1000C515C(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (!v2)
  {
    sub_1000053C4();
  }

  v3 = *(*v2 + 48);

  return v3();
}

void sub_1000C51A4(uint64_t a1, uint64_t *a2)
{
  v2 = a2[1];
  v3 = *a2;
  v4 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_100030DE8(&v3);
  if (v4)
  {
    sub_10002A838(v4);
  }
}

void sub_1000C51F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_10002A838(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000C5238(uint64_t a1)
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

uint64_t sub_1000C52B8(uint64_t a1, uint64_t a2)
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

uint64_t SASettingsProd::instance(SASettingsProd *this)
{
  if (!SASettingsProd::fInstance)
  {
    operator new();
  }

  return SASettingsProd::fInstance;
}

void SASettingsProd::SASettingsProd(SASettingsProd *this)
{
  *(this + 8) = 0u;
  *this = off_10013FDD0;
  *(this + 24) = 0u;
  *(this + 40) = 0;
  v2 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 68289026;
    v5[1] = 0;
    v6 = 2082;
    v7 = "";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saSettingsProd,initialized}", v5, 0x12u);
  }

  v3 = objc_alloc_init(CBController);
  v4 = *(this + 4);
  *(this + 4) = v3;
}

uint64_t sub_1000C54F8(void *a1, uint64_t a2)
{
  v4 = a1[2];
  v3 = a1[3];
  if (v4 >= v3)
  {
    v8 = a1 + 1;
    v7 = a1[1];
    v9 = (v4 - v7) >> 5;
    if ((v9 + 1) >> 59)
    {
      sub_10000509C();
    }

    v10 = v3 - v7;
    v11 = v10 >> 4;
    if (v10 >> 4 <= (v9 + 1))
    {
      v11 = v9 + 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFE0)
    {
      v12 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v11;
    }

    v26 = a1 + 1;
    if (v12)
    {
      if (!(v12 >> 59))
      {
        operator new();
      }

      sub_100004E38();
    }

    v22 = 0;
    v23 = 32 * v9;
    v25 = 0;
    sub_10000F1DC(32 * v9, a2);
    v6 = 32 * v9 + 32;
    v24 = v6;
    v13 = a1[1];
    v14 = a1[2];
    v15 = v23 + v13 - v14;
    if (v13 == v14)
    {
LABEL_23:
      a1[1] = v15;
      a1[2] = v6;
      v21 = a1[3];
      a1[3] = v25;
      v24 = v13;
      v25 = v21;
      v22 = v13;
      v23 = v13;
      result = sub_1000C69B4(&v22);
      goto LABEL_24;
    }

    v16 = (v13 + 24);
    v17 = v23 + v13 - v14;
    while (1)
    {
      v18 = *v16;
      if (*v16)
      {
        if (v16 - 3 == v18)
        {
          *(v17 + 24) = v17;
          (*(**v16 + 24))(*v16, v17);
          goto LABEL_20;
        }

        *(v17 + 24) = v18;
        v19 = v16;
      }

      else
      {
        v19 = (v17 + 24);
      }

      *v19 = 0;
LABEL_20:
      v17 += 32;
      v20 = v16 + 1;
      v16 += 4;
      if (v20 == v14)
      {
        do
        {
          sub_10000F274(v13);
          v13 += 32;
        }

        while (v13 != v14);
        v13 = *v8;
        v6 = v24;
        goto LABEL_23;
      }
    }
  }

  result = sub_10000F1DC(a1[2], a2);
  v6 = v4 + 32;
  a1[2] = v6;
LABEL_24:
  a1[2] = v6;
  return result;
}

void sub_1000C56C4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000C69B4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000C56E8(uint64_t a1)
{
  v2 = (*(*a1 + 32))(a1);
  if ((*(*a1 + 40))(a1))
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  return v3 | v2;
}

BOOL sub_1000C5768()
{
  v0 = [CLLocationManager authorizationStatusForBundlePath:@"/System/Library/PrivateFrameworks/WirelessDiagnostics.framework"];
  v1 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v3[0] = 68289283;
    v3[1] = 0;
    v4 = 2082;
    v5 = "";
    v6 = 1025;
    v7 = v0 == 3;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saSettingsProd, isIphoneAnalyticsEnabled:%{private}hhd}", v3, 0x18u);
  }

  return v0 == 3;
}

BOOL sub_1000C5850()
{
  v0 = [CLLocationManager authorizationStatusForBundlePath:@"/System/Library/LocationBundles/Routine.bundle"];
  v1 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v3[0] = 68289283;
    v3[1] = 0;
    v4 = 2082;
    v5 = "";
    v6 = 1025;
    v7 = v0 == 3;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saSettingsProd, isSignificantLocationEnabled:%{private}hhd}", v3, 0x18u);
  }

  return v0 == 3;
}

uint64_t sub_1000C5938()
{
  v0 = CFPreferencesCopyValue(@"CellBroadcastSettingEmergency", @"com.apple.commcenter.shared", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  if (v0)
  {
    v1 = v0;
    v2 = [v0 BOOLValue];
    CFRelease(v1);
  }

  else
  {
    v2 = 1;
  }

  v3 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 68289283;
    v5[1] = 0;
    v6 = 2082;
    v7 = "";
    v8 = 1025;
    v9 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saSettingsProd, isEmergencyAlertEnabled:%{private}hhd}", v5, 0x18u);
  }

  return v2;
}

id sub_1000C5A48()
{
  v0 = CFPreferencesCopyValue(@"CellBroadcastSettingAMBER", @"com.apple.commcenter.shared", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  if (v0)
  {
    v1 = v0;
    v2 = [v0 BOOLValue];
    CFRelease(v1);
  }

  else
  {
    v2 = 0;
  }

  v3 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 68289283;
    v5[1] = 0;
    v6 = 2082;
    v7 = "";
    v8 = 1025;
    v9 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saSettingsProd, isAmberAlertEnabled:%{private}hhd}", v5, 0x18u);
  }

  return v2;
}

uint64_t sub_1000C5B58()
{
  v0 = CFPreferencesCopyValue(@"CellBroadcastSettingPublicSafety", @"com.apple.commcenter.shared", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  if (v0)
  {
    v1 = v0;
    v2 = [v0 BOOLValue];
    CFRelease(v1);
  }

  else
  {
    v2 = 1;
  }

  v3 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 68289283;
    v5[1] = 0;
    v6 = 2082;
    v7 = "";
    v8 = 1025;
    v9 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saSettingsProd, isPublicSafetyAlertEnabled:%{private}hhd}", v5, 0x18u);
  }

  return v2;
}

uint64_t sub_1000C5C68()
{
  v0 = CFPreferencesCopyValue(@"CellBroadcastSettingNational", @"com.apple.commcenter.shared", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  if (v0)
  {
    v1 = v0;
    v2 = [v0 BOOLValue];
    CFRelease(v1);
  }

  else
  {
    v2 = 1;
  }

  v3 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 68289283;
    v5[1] = 0;
    v6 = 2082;
    v7 = "";
    v8 = 1025;
    v9 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saSettingsProd, isNationalAlertEnabled:%{private}hhd}", v5, 0x18u);
  }

  return v2;
}

id sub_1000C5D78()
{
  v0 = CFPreferencesCopyValue(@"CellBroadcastSettingWeaTest", @"com.apple.commcenter.shared", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  if (v0)
  {
    v1 = v0;
    v2 = [v0 BOOLValue];
    CFRelease(v1);
  }

  else
  {
    v2 = 0;
  }

  v3 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 68289283;
    v5[1] = 0;
    v6 = 2082;
    v7 = "";
    v8 = 1025;
    v9 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saSettingsProd, isTestAlertEnabled:%{private}hhd}", v5, 0x18u);
  }

  return v2;
}

uint64_t sub_1000C5E88()
{
  v0 = CFPreferencesCopyValue(@"CellBroadcastSettingIgneous", @"com.apple.commcenter.shared", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  if (v0)
  {
    v1 = v0;
    v2 = [v0 BOOLValue];
    CFRelease(v1);
  }

  else
  {
    v2 = 1;
  }

  v3 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 68289283;
    v5[1] = 0;
    v6 = 2082;
    v7 = "";
    v8 = 1025;
    v9 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saSettingsProd, isIgneousAlertEnabled:%{private}hhd}", v5, 0x18u);
  }

  return v2;
}

void sub_1000C5F98(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    buf = 68289026;
    v17 = 2082;
    v18 = "";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saSettingsProd,isBluetoothEnabled}", &buf, 0x12u);
  }

  if (!*(a1 + 32))
  {
    v7 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      buf = 68289026;
      v17 = 2082;
      v18 = "";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saSettingsProd,isBluetoothEnabled invalid controller}", &buf, 0x12u);
    }

    if (*(a3 + 24))
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3321888768;
      block[2] = sub_1000C6200;
      block[3] = &unk_10013D178;
      sub_10001EF44(v15, a3);
      dispatch_async(v5, block);
      sub_10001E0C0(v15);
    }
  }

  v8 = *(a1 + 32);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3321888768;
  v10[2] = sub_1000C620C;
  v10[3] = &unk_10013FE90;
  v12 = a1;
  v9 = v5;
  v11 = v9;
  sub_10001EF44(v13, a3);
  [v8 getControllerInfoWithCompletion:v10];
  sub_10001E0C0(v13);
}

void sub_1000C620C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3321888768;
  v11[2] = sub_1000C6348;
  v11[3] = &unk_10013FE58;
  v13 = v5;
  v14 = v7;
  v12 = v6;
  v9 = v5;
  v10 = v6;
  sub_10001EF44(v15, a1 + 48);
  dispatch_async(v8, v11);
  sub_10001E0C0(v15);
}

void sub_1000C6348(void *a1)
{
  v2 = a1[6];
  v3 = a1[4];
  if (v3)
  {
    v4 = SALogObjectGeneral;
    if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    v12 = 68289283;
    v13 = 0;
    v14 = 2082;
    v15 = "";
    v16 = 2113;
    v17 = v3;
    v5 = "{msg%{public}.0s:#saSettingsProd,BTController failed:, inError:%{private, location:escape_only}@}";
    v6 = v4;
    v7 = OS_LOG_TYPE_ERROR;
    v8 = 28;
  }

  else
  {
    v9 = a1[5];
    if (!v9)
    {
      goto LABEL_8;
    }

    v10 = [v9 bluetoothState];
    *(v2 + 40) = v10 == 5;
    v11 = SALogObjectGeneral;
    if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_8;
    }

    v12 = 68289283;
    v13 = 0;
    v14 = 2082;
    v15 = "";
    v16 = 1025;
    LODWORD(v17) = v10 == 5;
    v5 = "{msg%{public}.0s:#saSettingsProd,cb, fIsBluetoothStateCached:%{private}hhd}";
    v6 = v11;
    v7 = OS_LOG_TYPE_DEFAULT;
    v8 = 24;
  }

  _os_log_impl(&_mh_execute_header, v6, v7, v5, &v12, v8);
LABEL_8:
  if (a1[10])
  {
    sub_1000030E8((a1 + 7), *(v2 + 40));
  }
}

void sub_1000C64F0(uint64_t a1)
{
  v2 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 68289026;
    v5[1] = 0;
    v6 = 2082;
    v7 = "";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saSettingsProd,settings updated}", v5, 0x12u);
  }

  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  while (v3 != v4)
  {
    sub_10000F1DC(v5, v3);
    if (!v8)
    {
      sub_1000053C4();
    }

    (*(*v8 + 48))(v8);
    sub_10000F274(v5);
    v3 += 32;
  }
}

void sub_1000C6624(std::string *a1@<X8>)
{
  v2 = +[NSLocale preferredLanguages];
  v3 = [v2 firstObject];
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      sub_10001D128(a1, [v3 UTF8String]);
    }
  }

  v4 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    if ((a1->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v5 = a1;
    }

    else
    {
      v5 = a1->__r_.__value_.__r.__words[0];
    }

    v6[0] = 68289283;
    v6[1] = 0;
    v7 = 2082;
    v8 = "";
    v9 = 2081;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saSettingsProd,getPreferredLanguage, language:%{private, location:escape_only}s}", v6, 0x1Cu);
  }
}

id sub_1000C679C()
{
  v0 = +[NSLocale currentLocale];
  v1 = [v0 objectForKey:NSLocaleUsesMetricSystem];
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v2 = [v1 BOOLValue];
  }

  else
  {
    v2 = 0;
  }

  v3 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 68289283;
    v5[1] = 0;
    v6 = 2082;
    v7 = "";
    v8 = 1025;
    v9 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saSettingsProd,getMetricSystemSupported, supported:%{private}hhd}", v5, 0x18u);
  }

  return v2;
}

void sub_1000C68F8(uint64_t a1)
{
  sub_1000C6A04(a1);

  operator delete();
}

void sub_1000C6930(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = sub_10000F274(v4 - 32);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_1000C69B4(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 32;
    sub_10000F274(i - 32);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1000C6A04(uint64_t a1)
{
  *a1 = off_10013FDD0;
  v2 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 68289026;
    v5 = 2082;
    v6 = "";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saSettingsProd,released}", &v4, 0x12u);
  }

  v4 = a1 + 8;
  sub_1000C6930(&v4);
  return a1;
}

void SANetworkReachabilityProd::SANetworkReachabilityProd(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  sub_1000AFEB8(v8, a4);
  *a1 = off_10013FF48;
  sub_1000AFEB8((a1 + 1), v8);
  sub_1000A2500(v8);
  *a1 = off_10013FEF8;
  a1[5] = 0;
  v7[0] = off_10013FF70;
  v7[1] = a1;
  v7[3] = v7;
  sub_10009320C((a1 + 6), v6, 60.0);
}

void sub_1000C70F4(_Unwind_Exception *a1)
{
  sub_1000933D4(v2 + 48);

  *v2 = v3;
  sub_1000A2500(v4);

  _Unwind_Resume(a1);
}

void sub_1000C7150(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_autoreleasePoolPush();
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000C71EC;
  v4[3] = &unk_10013F780;
  v4[4] = v2;
  v5 = *(a1 + 40);
  sub_1000C71EC(v4);
  objc_autoreleasePoolPop(v3);
}

void sub_1000C71EC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 40);
    v5[0] = 68289282;
    v5[1] = 0;
    v6 = 2082;
    v7 = "";
    v8 = 1026;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saNwReachMonitor,setValueImmediate, isConnected:%{public}hhd}", v5, 0x18u);
  }

  sub_100092E8C((v2 + 48), (a1 + 40), 0.0);
}

uint64_t sub_1000C72D0(uint64_t a1)
{
  *a1 = off_10013FEF8;
  sub_1000933D4(a1 + 48);

  *a1 = off_10013FF48;
  sub_1000A2500(a1 + 8);
  return a1;
}

void sub_1000C7344(uint64_t a1)
{
  sub_1000C72D0(a1);

  operator delete();
}

void sub_1000C737C(uint64_t a1, uint64_t *a2)
{
  v2 = a2[1];
  v3 = *a2;
  v4 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_100030DE8(&v3);
  if (v4)
  {
    sub_10002A838(v4);
  }
}

void sub_1000C73CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_10002A838(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000C7454(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10013FF70;
  a2[1] = v2;
  return result;
}

uint64_t sub_1000C7480(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  v4 = *(v3 + 120);
  v5 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 68289538;
    v7[1] = 0;
    v8 = 2082;
    v9 = "";
    v10 = 1026;
    v11 = v4;
    v12 = 1026;
    v13 = v2;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saNwReachMonitor,onNetworkReachabilityChangedCb, type:%{public}d, isConnected:%{public}hhd}", v7, 0x1Eu);
  }

  return sub_1000AFE5C(v3 + 8, v4, v2);
}

uint64_t sub_1000C7570(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *SATimerProd::SATimerProd(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (*(a3 + 23) < 0)
  {
    sub_100004CEC(__p, *a3, *(a3 + 8));
  }

  else
  {
    *__p = *a3;
    v8 = *(a3 + 16);
  }

  *a1 = off_100140088;
  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p[0]);
  }

  *a1 = off_10013FFF0;
  a1[1] = 0;
  a1[2] = v5;
  a1[3] = 0;
  return a1;
}

void sub_1000C7680(uint64_t a1, uint64_t a2, double a3)
{
  v6 = *(a1 + 8);
  v7 = SALogObjectGeneral;
  v8 = os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      *buf = 68289026;
      v18 = 0;
      v19 = 2082;
      v20 = "";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Timer already running}", buf, 0x12u);
    }
  }

  else
  {
    if (v8)
    {
      *buf = 68289282;
      v18 = 0;
      v19 = 2082;
      v20 = "";
      v21 = 1026;
      v22 = a3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Starting timer, duration:%{public}d}", buf, 0x18u);
    }

    v9 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(a1 + 16));
    v11 = *(a1 + 8);
    v10 = (a1 + 8);
    *v10 = v9;

    v12 = *v10;
    v13 = dispatch_time(0xFFFFFFFFFFFFFFFELL, (a3 * 1000000000.0));
    dispatch_source_set_timer(v12, v13, 0xFFFFFFFFFFFFFFFFLL, 0x1DCD6500uLL);
    v14 = *v10;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3321888768;
    v15[2] = sub_1000C7884;
    v15[3] = &unk_1001390F0;
    sub_10000F1DC(v16, a2);
    dispatch_source_set_event_handler(v14, v15);
    dispatch_resume(*v10);
    sub_10000F274(v16);
  }
}

uint64_t sub_1000C7884(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (!v2)
  {
    sub_1000053C4();
  }

  v3 = *(*v2 + 48);

  return v3();
}

void sub_1000C78CC(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, double a5)
{
  if (*(a1 + 8))
  {
    v5 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      v19 = 0;
      v20 = 2082;
      v21 = "";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Timer already running}", buf, 0x12u);
    }
  }

  else
  {
    *(a1 + 24) = a4;
    v10 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289538;
      v19 = 0;
      v20 = 2082;
      v21 = "";
      v22 = 1026;
      v23 = a5;
      v24 = 1026;
      v25 = a2;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Starting timer, durationSeconds:%{public}d, intervalSeconds:%{public}d}", buf, 0x1Eu);
    }

    v11 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(a1 + 16));
    v12 = *(a1 + 8);
    *(a1 + 8) = v11;

    v13 = *(a1 + 8);
    v14 = dispatch_time(0xFFFFFFFFFFFFFFFELL, (a5 * 1000000000.0));
    dispatch_source_set_timer(v13, v14, 1000000000 * a2, 0x1DCD6500uLL);
    v15 = *(a1 + 8);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3321888768;
    handler[2] = sub_1000C7B10;
    handler[3] = &unk_100140020;
    handler[4] = a1;
    sub_1000C7D70(v17, a3);
    dispatch_source_set_event_handler(v15, handler);
    dispatch_resume(*(a1 + 8));
    sub_1000AAED8(v17);
  }
}

uint64_t sub_1000C7B10(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 24);
  v2 = *(a1 + 64);
  v4 = v1;
  if (!v2)
  {
    sub_1000053C4();
  }

  return (*(*v2 + 48))(v2, &v4);
}

void sub_1000C7B98(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = SALogObjectGeneral;
  v4 = os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      v6 = 68289026;
      v7 = 0;
      v8 = 2082;
      v9 = "";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Cancelling timer}", &v6, 0x12u);
      v2 = *(a1 + 8);
    }

    dispatch_source_set_timer(v2, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0x1DCD6500uLL);
    v5 = *(a1 + 8);
    *(a1 + 8) = 0;
  }

  else if (v4)
  {
    v6 = 68289026;
    v7 = 0;
    v8 = 2082;
    v9 = "";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:No timer to cancel}", &v6, 0x12u);
  }
}

void sub_1000C7CDC(uint64_t a1)
{
  sub_1000C7D1C(a1);

  operator delete();
}

uint64_t sub_1000C7D1C(uint64_t a1)
{
  *a1 = off_10013FFF0;
  sub_1000C7B98(a1);

  return a1;
}

uint64_t sub_1000C7D70(uint64_t a1, uint64_t a2)
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

void sub_1000C7E08(_BYTE *a1, unint64_t a2)
{
  if (a2 >= 7)
  {
    v3 = [NSString stringWithFormat:@"MAAssetState%llu", a2];
    [v3 UTF8String];

    __break(1u);
  }

  else
  {
    v2 = off_100140320[a2];

    sub_1000060C4(a1, v2);
  }
}

void sub_1000C7E90(_BYTE *a1, uint64_t a2)
{
  switch(a2)
  {
    case 0:
      v3 = "MADownloadSuccessful";
      goto LABEL_81;
    case 1:
      v3 = "MADownloadXpcError";
      goto LABEL_81;
    case 2:
      v3 = "MADownloadConnectionInterrupted";
      goto LABEL_81;
    case 3:
      v3 = "MADownloadFailed";
      goto LABEL_81;
    case 4:
      v3 = "MADownloadStagingFailed";
      goto LABEL_81;
    case 5:
      v3 = "MADownloadMetaDataProcessFailed";
      goto LABEL_81;
    case 6:
      v3 = "MADownloadUnzipFailed";
      goto LABEL_81;
    case 7:
      v3 = "MADownloadMoveFailed";
      goto LABEL_81;
    case 8:
      v3 = "MADownloadInstallFailed";
      goto LABEL_81;
    case 9:
      v3 = "MADownloadDaemonExit";
      goto LABEL_81;
    case 10:
      v3 = "MADownloadAssetAlreadyInstalled";
      goto LABEL_81;
    case 11:
      v3 = "MADownloadInvalidSZExtractor";
      goto LABEL_81;
    case 12:
      v3 = "MADownloadNotEntitled";
      goto LABEL_81;
    case 13:
      v3 = "MADownloadDaemonNotReady";
      goto LABEL_81;
    case 14:
      v3 = "MADownloadNoChange";
      goto LABEL_81;
    case 15:
      v3 = "MADownloadNotApplicableForRequireByOs";
      goto LABEL_81;
    case 16:
      v3 = "MADownloadNoExtractorFailure";
      goto LABEL_81;
    case 17:
      v3 = "MADownloadTransformFailure";
      goto LABEL_81;
    case 18:
      v3 = "MADownloadNoMatchFound";
      goto LABEL_81;
    case 19:
      v3 = "MADownloadNilAssetType";
      goto LABEL_81;
    case 20:
      v3 = "MADownloadNilAssetId";
      goto LABEL_81;
    case 21:
      v3 = "MADownloadStreamingZipNotSupported";
      goto LABEL_81;
    case 22:
      v3 = "MADownloadBadOptions";
      goto LABEL_81;
    case 23:
      v3 = "MADownloadAssetBadMetaData";
      goto LABEL_81;
    case 24:
      v3 = "MADownloadUnableToCreateMessage";
      goto LABEL_81;
    case 25:
      v3 = "MADownloadFailedNoStandardUrl";
      goto LABEL_81;
    case 26:
      v3 = "MADownloadFailedNoFallBackUrl";
      goto LABEL_81;
    case 27:
      v3 = "MADownloadFailedNoPallasUrl";
      goto LABEL_81;
    case 28:
      v3 = "MADownloadLostTask";
      goto LABEL_81;
    case 29:
      v3 = "MADownloadNotApplicableForInstalledWithOs";
      goto LABEL_81;
    case 30:
      v3 = "MADownloadNoValidSession";
      goto LABEL_81;
    case 31:
      v3 = "MADownloadResponseDeferred";
      goto LABEL_81;
    case 32:
      v3 = "MADownloadIncomplete";
      goto LABEL_81;
    case 33:
      v3 = "MADownloadNoStagingDir";
      goto LABEL_81;
    case 34:
      v3 = "MADownloadNotAllowed";
      goto LABEL_81;
    case 35:
      v3 = "MADownloadUnknownResult";
      goto LABEL_81;
    case 36:
      v3 = "MADownloadAssetNoLongerInCatalog";
      goto LABEL_81;
    case 37:
      v3 = "MADownloadNoSpaceLeft";
      goto LABEL_81;
    case 38:
      v3 = "MADownloadCouldNotReplace";
      goto LABEL_81;
    case 39:
      v3 = "MADownloadMalformedAssetType";
      goto LABEL_81;
    case 40:
      v3 = "MADownloadServerBadRequest";
      goto LABEL_81;
    case 41:
      v3 = "MADownloadServerAuthFailure";
      goto LABEL_81;
    case 42:
      v3 = "MADownloadServerError";
      goto LABEL_81;
    case 43:
      v3 = "MADownloadNotFoundOrDenied";
      goto LABEL_81;
    case 44:
      v3 = "MADownloadNotFound";
      goto LABEL_81;
    case 45:
      v3 = "MADownloadServerInternalError";
      goto LABEL_81;
    case 46:
      v3 = "MADownloadMalformedAssetData";
      goto LABEL_81;
    case 47:
      v3 = "MADownloadNetworkingError";
      goto LABEL_81;
    case 48:
      v3 = "MADownloadCancelled";
      goto LABEL_81;
    case 49:
      v3 = "MADownloadBadUrl";
      goto LABEL_81;
    case 50:
      v3 = "MADownloadBadServerResponse";
      goto LABEL_81;
    case 51:
      v3 = "MADownloadTimedOut";
      goto LABEL_81;
    case 52:
      v3 = "MADownloadTimedOutRequest";
      goto LABEL_81;
    case 53:
      v3 = "MADownloadTimedOutResource";
      goto LABEL_81;
    case 54:
      v3 = "MADownloadTimedOutWatchdog";
      goto LABEL_81;
    case 55:
      v3 = "MADownloadTimedOutStart";
      goto LABEL_81;
    case 56:
      v3 = "MADownloadTimedOutConnection";
      goto LABEL_81;
    case 57:
      v3 = "MADownloadCannotLoadFromNetwork";
      goto LABEL_81;
    case 58:
      v3 = "MADownloadUnsupportedURL";
      goto LABEL_81;
    case 59:
      v3 = "MADownloadCannotFindHost";
      goto LABEL_81;
    case 60:
      v3 = "MADownloadCannotConnectToHost";
      goto LABEL_81;
    case 61:
      v3 = "MADownloadNetworkConnectionLost";
      goto LABEL_81;
    case 62:
      v3 = "MADownloadDNSLookupFailed";
      goto LABEL_81;
    case 63:
      v3 = "MADownloadHTTPTooManyRedirects";
      goto LABEL_81;
    case 64:
      v3 = "MADownloadResourceUnavailable";
      goto LABEL_81;
    case 65:
      v3 = "MADownloadNotConnectedToInternet";
      goto LABEL_81;
    case 66:
      v3 = "MADownloadRedirectToNonExistentLocation";
      goto LABEL_81;
    case 67:
      v3 = "MADownloadInternationalRoamingOff";
      goto LABEL_81;
    case 68:
      v3 = "MADownloadCallIsActive";
      goto LABEL_81;
    case 69:
      v3 = "MADownloadDataNotAllowed";
      goto LABEL_81;
    case 70:
      v3 = "MADownloadSecureConnectionFailed";
      goto LABEL_81;
    case 71:
      v3 = "MADownloadInvalidReceipts";
      goto LABEL_81;
    case 72:
      v3 = "MADownloadFailedNoFallbackAllowed";
      goto LABEL_81;
    case 73:
      v3 = "MADownloadLiveServerDisabledNoFallback";
      goto LABEL_81;
    case 74:
      v3 = "MADownloadMalformedPurpose";
      goto LABEL_81;
    case 75:
      v3 = "MADownloadSSOFailure";
LABEL_81:

      sub_1000060C4(a1, v3);
      break;
    default:
      v4 = [NSString stringWithFormat:@"MADownloadResult%llu", a2];
      sub_1000060C4(a1, [v4 UTF8String]);

      break;
  }
}

uint64_t SAMobileAssetProdHelper::SAMobileAssetProdHelper(uint64_t a1, void *a2)
{
  v3 = a2;
  *a1 = v3;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  v4 = objc_alloc_init(MADownloadOptions);
  v5 = *(a1 + 8);
  *(a1 + 8) = v4;

  [*(a1 + 8) setDiscretionary:0];
  [*(a1 + 8) setAllowsCellularAccess:1];
  [*(a1 + 8) setAllowsExpensiveAccess:1];
  [*(a1 + 8) setRequiresPowerPluggedIn:0];
  [*(a1 + 8) setTimeoutIntervalForResource:10000];
  [*(a1 + 8) setLiveServerCatalogOnly:0];
  [*(a1 + 8) setLiveServerCatalogOnlyIsOverridden:1];

  return a1;
}

void SAMobileAssetProdHelper::query(uint64_t a1, uint64_t a2)
{
  v4 = [[MAAssetQuery alloc] initWithType:@"com.apple.MobileAsset.SafetyAlertsConfig"];
  [v4 setDoNotBlockBeforeFirstUnlock:1];
  [v4 returnTypes:2];
  [v4 addKeyValuePair:@"Component" with:@"SafetyAlertsConfig"];
  v5 = [NSString stringWithFormat:@"%d", 4];
  [v4 addKeyValuePair:ASAttributeCompatibilityVersion with:v5];

  [v4 addKeyValuePair:@"DeviceType" with:@"iPhone"];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3321888768;
  v7[2] = sub_1000C8588;
  v7[3] = &unk_1001400F8;
  v9 = a1;
  sub_1000CB1B8(v10, a2);
  v6 = v4;
  v8 = v6;
  [v6 queryMetaData:v7];

  sub_1000CB138(v10);
}

void sub_1000C854C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  sub_1000CB138(v15 + 48);

  _Unwind_Resume(a1);
}

uint64_t sub_1000C8588(uint64_t a1, uint64_t a2)
{
  v4 = **(a1 + 40);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3321888768;
  block[2] = sub_1000C866C;
  block[3] = &unk_1001400C0;
  sub_1000CB1B8(v8, a1 + 48);
  v8[4] = a2;
  v7 = *(a1 + 32);
  dispatch_async(v4, block);

  return sub_1000CB138(v8);
}

void sub_1000C866C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3321888768;
  v3[2] = sub_1000C877C;
  v3[3] = &unk_1001400C0;
  sub_1000CB1B8(v5, a1 + 40);
  v5[4] = *(a1 + 72);
  v4 = *(a1 + 32);
  sub_1000C877C(v3);

  sub_1000CB138(v5);
  objc_autoreleasePoolPop(v2);
}

void sub_1000C877C(uint64_t a1)
{
  v2 = *(a1 + 72);
  [*(a1 + 32) results];
  v4 = v6 = v2;
  v5 = v4;
  v3 = *(a1 + 64);
  if (!v3)
  {
    sub_1000053C4();
  }

  (*(*v3 + 48))(v3, &v6, &v5);
}

uint64_t SAMobileAssetProdHelper::download(uint64_t a1, uint64_t a2)
{
  v4 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    *&buf[4] = 0;
    LOWORD(v12) = 2082;
    *(&v12 + 2) = "";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#asset,download}", buf, 0x12u);
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3321888768;
  v7[2] = sub_1000C8A74;
  v7[3] = &unk_100140190;
  v7[4] = a1;
  sub_10004497C(v8, a2);
  v10 = 0;
  v9[0] = off_10013A1E8;
  v9[1] = objc_retainBlock(v7);
  v10 = v9;
  v5 = *(a1 + 8);
  *buf = _NSConcreteStackBlock;
  *&v12 = 3321888768;
  *(&v12 + 1) = sub_1000CA928;
  v13 = &unk_1001401F0;
  v14 = a1;
  sub_10001EF44(v15, v9);
  [MAAsset startCatalogDownload:@"com.apple.MobileAsset.SafetyAlertsConfig" options:v5 then:buf];
  sub_10001E0C0(v15);
  sub_10001E0C0(v9);
  return sub_10003197C(v8);
}

void sub_1000C8A40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_10001E0C0(v12 + 40);
  sub_10001E0C0(va);
  sub_10003197C(v11 + 40);
  _Unwind_Resume(a1);
}

void sub_1000C8A74(uint64_t a1, int a2)
{
  v4 = *(a1 + 32);
  v5 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    buf = 68289026;
    v17 = 2082;
    v18 = "";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#asset,downloadCatalogCb}", &buf, 0x12u);
  }

  v14 = @"status";
  v6 = [NSNumber numberWithInt:a2 ^ 1u];
  v15 = v6;
  v7 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];

  v8 = sub_10004ECB4();
  sub_10004FD8C(v8, 0, v7);
  if (a2)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3321888768;
    v10[2] = sub_1000C8D04;
    v10[3] = &unk_100140160;
    v10[4] = v4;
    sub_10004497C(v11, a1 + 40);
    v13 = 0;
    v12[0] = off_1001402A0;
    v12[1] = objc_retainBlock(v10);
    v13 = v12;
    SAMobileAssetProdHelper::query(v4, v12);
    sub_1000CB138(v12);
    sub_10003197C(v11);
  }

  else
  {
    v9 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      buf = 68289026;
      v17 = 2082;
      v18 = "";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#asset,downloadCatalog,failed}", &buf, 0x12u);
    }

    *(v4 + 24) = 0;
    sub_10004485C(a1 + 40, 0);
  }
}

void sub_1000C8CC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_1000CB138(va);
  sub_10003197C(v12 + 40);

  _Unwind_Resume(a1);
}

void sub_1000C8D04(uint64_t a1, unint64_t a2, void *a3)
{
  v5 = buf;
  v49 = a3;
  v6 = *(a1 + 32);
  v7 = SALogObjectGeneral;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    if (a2 > 0xE)
    {
      v8 = [NSString stringWithFormat:@"MAQueryResult%llu", a2];
      sub_1000060C4(__p, [v8 UTF8String]);
    }

    else
    {
      sub_1000060C4(__p, off_100140358[a2]);
    }

    v9 = __p;
    if (v55 < 0)
    {
      v9 = __p[0];
    }

    *buf = 68289282;
    *v63 = 2082;
    *&v63[2] = "";
    *&v63[10] = 2082;
    *&v63[12] = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#asset,queryAtDownloadResponse, queryResult:%{public, location:escape_only}s}", buf, 0x1Cu);
    if (v55 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v11 = SAMobileAssetProdHelper::getHighestVersion(v10, v49);
  v12 = SALogObjectGeneral;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(v6 + 16);
    if (v3)
    {
      v13 = [*(v6 + 16) assetType];
      v14 = v13 != 0;
      v47 = v13;
      if (v13)
      {
        v46 = [*(v6 + 16) assetType];
        v15 = [v46 UTF8String];
      }

      else
      {
        v15 = "NULL";
      }

      v16 = *(v6 + 16);
      if (v16)
      {
        sub_1000C7E08(__p, [v16 state]);
        if (v55 >= 0)
        {
          v18 = __p;
        }

        else
        {
          v18 = __p[0];
        }

        v16 = *(v6 + 16);
        v17 = 1;
      }

      else
      {
        v17 = 0;
        v18 = "NULL";
      }
    }

    else
    {
      v16 = 0;
      v17 = 0;
      v14 = 0;
      v15 = "NULL";
      v18 = "NULL";
    }

    v19 = sub_1000C9E4C(v16);
    v20 = *(v6 + 16);
    if (v20)
    {
      v21 = sub_1000C9F00(v20);
    }

    else
    {
      v21 = "NULL";
    }

    *buf = 68290306;
    *v63 = 2082;
    *&v63[2] = "";
    *&v63[10] = 2082;
    *&v63[12] = "fCurrentAsset";
    *&v63[20] = 2082;
    *&v63[22] = v15;
    *&v63[30] = 2082;
    v64 = v18;
    v65 = 1026;
    v5 = buf;
    v66 = v19;
    v67 = 2082;
    v68 = v21;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#asset,currentVersion, var:%{public, location:escape_only}s, asset:%{public, location:escape_only}s, state:%{public, location:escape_only}s, version:%{public}d, url:%{public, location:escape_only}s}", buf, 0x40u);
    if (v17 && v55 < 0)
    {
      operator delete(__p[0]);
      if (!v14)
      {
LABEL_28:
        if (v3)
        {
        }

        goto LABEL_30;
      }
    }

    else if (!v14)
    {
      goto LABEL_28;
    }

    goto LABEL_28;
  }

LABEL_30:

  v22 = SALogObjectGeneral;
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    if (v11)
    {
      v3 = [v11 assetType];
      v23 = v3 != 0;
      if (v3)
      {
        v47 = [v11 assetType];
        v24 = [v47 UTF8String];
      }

      else
      {
        v24 = "NULL";
      }

      v25 = v52;
      sub_1000C7E08(v52, [v11 state]);
      if (v53 < 0)
      {
        v25 = v52[0];
      }
    }

    else
    {
      v23 = 0;
      v24 = "NULL";
      v25 = "NULL";
    }

    v26 = sub_1000C9E4C(v11);
    v27 = v26;
    if (v11)
    {
      v28 = sub_1000C9F00(v11);
      *buf = 68290306;
      *v63 = 2082;
      *&v63[2] = "";
      *&v63[10] = 2082;
      *&v63[12] = "asset";
      *&v63[20] = 2082;
      *&v63[22] = v24;
      *&v63[30] = 2082;
      v64 = v25;
      v65 = 1026;
      v66 = v27;
      v67 = 2082;
      v68 = v28;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#asset,selectedVersion, var:%{public, location:escape_only}s, asset:%{public, location:escape_only}s, state:%{public, location:escape_only}s, version:%{public}d, url:%{public, location:escape_only}s}", buf, 0x40u);
      if (v53 < 0)
      {
        operator delete(v52[0]);
      }
    }

    else
    {
      *buf = 68290306;
      *v63 = 2082;
      *&v63[2] = "";
      *&v63[10] = 2082;
      *&v63[12] = "asset";
      *&v63[20] = 2082;
      *&v63[22] = v24;
      *&v63[30] = 2082;
      v64 = v25;
      v65 = 1026;
      v66 = v26;
      v67 = 2082;
      v68 = "NULL";
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#asset,selectedVersion, var:%{public, location:escape_only}s, asset:%{public, location:escape_only}s, state:%{public, location:escape_only}s, version:%{public}d, url:%{public, location:escape_only}s}", buf, 0x40u);
    }

    if (v23)
    {
    }

    if (v11)
    {
    }
  }

  if ((sub_1000C9F94(*(v6 + 16), v11) & 0x80000000) != 0)
  {
    v30 = SALogObjectGeneral;
    if (!os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
LABEL_71:

      v56[0] = _NSConcreteStackBlock;
      v56[1] = 3321888768;
      v56[2] = sub_1000C9FF8;
      v56[3] = &unk_100140130;
      v58 = v6;
      v42 = v11;
      v57 = v42;
      sub_10004497C(v59, a1 + 40);
      v61 = 0;
      v60[0] = off_10013A1E8;
      v60[1] = objc_retainBlock(v56);
      v61 = v60;
      v43 = v42;
      v44 = *(v6 + 8);
      *buf = _NSConcreteStackBlock;
      *v63 = 3321888768;
      *&v63[8] = sub_1000CAC0C;
      *&v63[16] = &unk_100140260;
      v64 = v6;
      v45 = v43;
      *&v63[24] = v45;
      sub_10001EF44(&v65, v60);
      [v45 startDownload:v44 then:buf];
      sub_10001E0C0(&v65);

      sub_10001E0C0(v60);
      sub_10003197C(v59);

      goto LABEL_72;
    }

    v31 = *(v6 + 16);
    if (v31)
    {
      v5 = [*(v6 + 16) assetType];
      v32 = v5 != 0;
      if (v5)
      {
        v33 = [*(v6 + 16) assetType];
        v34 = v33;
        v47 = v33;
        v35 = [v33 UTF8String];
      }

      else
      {
        v35 = "NULL";
      }

      v36 = *(v6 + 16);
      if (v36)
      {
        v38 = v50;
        sub_1000C7E08(v50, [v36 state]);
        if (v51 < 0)
        {
          v38 = v50[0];
        }

        v36 = *(v6 + 16);
        v37 = 1;
      }

      else
      {
        v37 = 0;
        v38 = "NULL";
      }
    }

    else
    {
      v36 = 0;
      v37 = 0;
      v32 = 0;
      v35 = "NULL";
      v38 = "NULL";
    }

    v39 = sub_1000C9E4C(v36);
    v40 = *(v6 + 16);
    if (v40)
    {
      v41 = sub_1000C9F00(v40);
    }

    else
    {
      v41 = "NULL";
    }

    *buf = 68290306;
    *v63 = 2082;
    *&v63[2] = "";
    *&v63[10] = 2082;
    *&v63[12] = "fCurrentAsset";
    *&v63[20] = 2082;
    *&v63[22] = v35;
    *&v63[30] = 2082;
    v64 = v38;
    v65 = 1026;
    v66 = v39;
    v67 = 2082;
    v68 = v41;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#asset,replacingAsset, var:%{public, location:escape_only}s, asset:%{public, location:escape_only}s, state:%{public, location:escape_only}s, version:%{public}d, url:%{public, location:escape_only}s}", buf, 0x40u);
    if (v37 && v51 < 0)
    {
      operator delete(v50[0]);
      if (!v32)
      {
LABEL_69:
        if (v31)
        {
        }

        goto LABEL_71;
      }
    }

    else if (!v32)
    {
      goto LABEL_69;
    }

    goto LABEL_69;
  }

  v29 = SALogObjectWarning;
  if (os_log_type_enabled(SALogObjectWarning, OS_LOG_TYPE_ERROR))
  {
    *buf = 68289026;
    *v63 = 2082;
    *&v63[2] = "";
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#asset,query,Either no asset or asset version same as current asset}", buf, 0x12u);
  }

LABEL_72:
}

id SAMobileAssetProdHelper::getHighestVersion(uint64_t a1, void *a2)
{
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = a2;
  v4 = [obj countByEnumeratingWithState:&v41 objects:v59 count:16];
  v6 = &SALogObjectGeneral;
  v7 = 0;
  if (v4)
  {
    v35 = *v42;
    v3 = 2082;
    *&v5 = 68289026;
    v32 = v5;
    do
    {
      v36 = v4;
      for (i = 0; i != v36; i = i + 1)
      {
        if (*v42 != v35)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v41 + 1) + 8 * i);
        v10 = SALogObjectGeneral;
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          if (v9)
          {
            v2 = [v9 assetType];
            v11 = v2 != 0;
            if (v2)
            {
              v34 = [v9 assetType];
              v12 = v34;
              v13 = [v34 UTF8String];
            }

            else
            {
              v13 = "NULL";
            }

            sub_1000C7E08(__p, [v9 state]);
            if (v40 >= 0)
            {
              v14 = __p;
            }

            else
            {
              v14 = __p[0];
            }
          }

          else
          {
            v11 = 0;
            v14 = "NULL";
            v13 = "NULL";
          }

          v15 = sub_1000C9E4C(v9);
          v16 = v15;
          if (v9)
          {
            v17 = sub_1000C9F00(v9);
            *buf = 68290306;
            v46 = 0;
            v47 = 2082;
            v48 = "";
            v49 = 2082;
            v50 = "asset";
            v51 = 2082;
            v52 = v13;
            v53 = 2082;
            v54 = v14;
            v55 = 1026;
            v56 = v16;
            v57 = 2082;
            v58 = v17;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#asset,getHighestVersion,assetInList, var:%{public, location:escape_only}s, asset:%{public, location:escape_only}s, state:%{public, location:escape_only}s, version:%{public}d, url:%{public, location:escape_only}s}", buf, 0x40u);
            if (v40 < 0)
            {
              operator delete(__p[0]);
            }
          }

          else
          {
            *buf = 68290306;
            v46 = 0;
            v47 = 2082;
            v48 = "";
            v49 = 2082;
            v50 = "asset";
            v51 = 2082;
            v52 = v13;
            v53 = 2082;
            v54 = v14;
            v55 = 1026;
            v56 = v15;
            v57 = 2082;
            v58 = "NULL";
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#asset,getHighestVersion,assetInList, var:%{public, location:escape_only}s, asset:%{public, location:escape_only}s, state:%{public, location:escape_only}s, version:%{public}d, url:%{public, location:escape_only}s}", buf, 0x40u);
          }

          v6 = &SALogObjectGeneral;
          if (v11)
          {
          }

          if (v9)
          {
          }
        }

        if (v7)
        {
          if ((sub_1000C9F94(v7, v9) & 0x80000000) == 0)
          {
            continue;
          }

          v18 = SALogObjectGeneral;
          if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v32;
            v46 = 0;
            v47 = 2082;
            v48 = "";
            v19 = v18;
            v20 = "{msg%{public}.0s:#asset,getHighestVersion,preferThisAsset,versionIsBetter}";
LABEL_29:
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, v20, buf, 0x12u);
          }
        }

        else
        {
          v21 = SALogObjectGeneral;
          if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v32;
            v46 = 0;
            v47 = 2082;
            v48 = "";
            v19 = v21;
            v20 = "{msg%{public}.0s:#asset,getHighestVersion,preferThisAsset,assetWithLatestVersion is Nil}";
            goto LABEL_29;
          }
        }

        v22 = v9;

        v7 = v22;
      }

      v4 = [obj countByEnumeratingWithState:&v41 objects:v59 count:16];
    }

    while (v4);
  }

  v23 = SALogObjectGeneral;
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    if (v7)
    {
      v6 = [v7 assetType];
      v24 = v6 != 0;
      if (v6)
      {
        v3 = [v7 assetType];
        v25 = v3;
        v26 = [v3 UTF8String];
      }

      else
      {
        v26 = "NULL";
      }

      sub_1000C7E08(v37, [v7 state]);
      if (v38 >= 0)
      {
        v27 = v37;
      }

      else
      {
        v27 = v37[0];
      }
    }

    else
    {
      v24 = 0;
      v26 = "NULL";
      v27 = "NULL";
    }

    v28 = sub_1000C9E4C(v7);
    v29 = v28;
    if (v7)
    {
      v30 = sub_1000C9F00(v7);
      *buf = 68290306;
      v46 = 0;
      v47 = 2082;
      v48 = "";
      v49 = 2082;
      v50 = "assetWithLatestVersion";
      v51 = 2082;
      v52 = v26;
      v53 = 2082;
      v54 = v27;
      v55 = 1026;
      v56 = v29;
      v57 = 2082;
      v58 = v30;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#asset,getHighestVersion,finalChoice, var:%{public, location:escape_only}s, asset:%{public, location:escape_only}s, state:%{public, location:escape_only}s, version:%{public}d, url:%{public, location:escape_only}s}", buf, 0x40u);
      if (v38 < 0)
      {
        operator delete(v37[0]);
      }

      if (!v24)
      {
        goto LABEL_49;
      }
    }

    else
    {
      *buf = 68290306;
      v46 = 0;
      v47 = 2082;
      v48 = "";
      v49 = 2082;
      v50 = "assetWithLatestVersion";
      v51 = 2082;
      v52 = v26;
      v53 = 2082;
      v54 = v27;
      v55 = 1026;
      v56 = v28;
      v57 = 2082;
      v58 = "NULL";
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#asset,getHighestVersion,finalChoice, var:%{public, location:escape_only}s, asset:%{public, location:escape_only}s, state:%{public, location:escape_only}s, version:%{public}d, url:%{public, location:escape_only}s}", buf, 0x40u);
      if (!v24)
      {
        goto LABEL_49;
      }
    }

LABEL_49:
    if (v7)
    {
    }
  }

  return v7;
}

uint64_t sub_1000C9E4C(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [v1 attributes];
    v4 = [v3 objectForKey:ASAttributeContentVersion];

    if (v4)
    {
      v5 = [v4 intValue];
    }

    else
    {
      v5 = 0xFFFFFFFFLL;
    }
  }

  else
  {
    v5 = 0xFFFFFFFFLL;
  }

  return v5;
}

const char *sub_1000C9F00(void *a1)
{
  v1 = [a1 getLocalFileUrl];
  v2 = v1;
  if (!v1)
  {
    v3 = @"NULL";
    goto LABEL_5;
  }

  v3 = [v1 absoluteString];
  if (v3)
  {
LABEL_5:
    v4 = [(__CFString *)v3 UTF8String];
    goto LABEL_6;
  }

  v4 = "NULL";
LABEL_6:

  return v4;
}

uint64_t sub_1000C9F94(void *a1, void *a2)
{
  v3 = a2;
  v4 = sub_1000C9E4C(a1);
  v5 = sub_1000C9E4C(v3);
  if (v4 >= v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = -1;
  }

  if (v4 > v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = v6;
  }

  return v7;
}

void sub_1000C9FF8(uint64_t a1, int a2)
{
  v4 = *(a1 + 40);
  v5 = SALogObjectGeneral;
  if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_22;
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = [*(a1 + 32) assetType];
    v8 = v7 != 0;
    v19 = v7;
    if (v7)
    {
      v18 = [*(a1 + 32) assetType];
      v9 = [v18 UTF8String];
    }

    else
    {
      v9 = "NULL";
    }

    v10 = *(a1 + 32);
    if (v10)
    {
      sub_1000C7E08(__p, [v10 state]);
      if (v21 >= 0)
      {
        v12 = __p;
      }

      else
      {
        v12 = __p[0];
      }

      v10 = *(a1 + 32);
      v11 = 1;
    }

    else
    {
      v11 = 0;
      v12 = "NULL";
    }
  }

  else
  {
    v10 = 0;
    v11 = 0;
    v8 = 0;
    v9 = "NULL";
    v12 = "NULL";
  }

  v13 = sub_1000C9E4C(v10);
  v14 = *(a1 + 32);
  if (v14)
  {
    v15 = sub_1000C9F00(v14);
  }

  else
  {
    v15 = "NULL";
  }

  *buf = 68290562;
  v24 = 0;
  v25 = 2082;
  v26 = "";
  v27 = 1026;
  v28 = a2;
  v29 = 2082;
  v30 = "asset";
  v31 = 2082;
  v32 = v9;
  v33 = 2082;
  v34 = v12;
  v35 = 1026;
  v36 = v13;
  v37 = 2082;
  v38 = v15;
  _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#asset,downloadResponse, isDownloadSuccess:%{public}hhd, var:%{public, location:escape_only}s, asset:%{public, location:escape_only}s, state:%{public, location:escape_only}s, version:%{public}d, url:%{public, location:escape_only}s}", buf, 0x46u);
  if (!v11 || (v21 & 0x80000000) == 0)
  {
    if (!v8)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  operator delete(__p[0]);
  if (v8)
  {
LABEL_19:
  }

LABEL_20:
  if (v6)
  {
  }

LABEL_22:

  if (a2)
  {
    v16 = *(a1 + 32);
    sub_10004497C(v22, a1 + 48);
    SAMobileAssetProdHelper::readAsset(v4, v16, v22);
    sub_10003197C(v22);
  }

  else
  {
    v17 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      v24 = 0;
      v25 = 2082;
      v26 = "";
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#asset,downloadAsset,failed}", buf, 0x12u);
    }

    *(v4 + 24) = 0;
    sub_10004485C(a1 + 48, 0);
  }
}

void SAMobileAssetProdHelper::readAsset(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  v7 = v6;
  if (*(a3 + 24))
  {
    v8 = SALogObjectGeneral;
    if (v6)
    {
      v9 = SALogObjectGeneral;
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
LABEL_20:

        v16 = [v7 getLocalFileUrl];
        v17 = [NSURL URLWithString:@"safetyalerts_channels.plist" relativeToURL:v16];
        v18 = SALogObjectGeneral;
        if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 68289538;
          v33 = 0;
          v34 = 2082;
          v35 = "";
          v36 = 2114;
          v37 = v16;
          v38 = 2114;
          v39 = v17;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#asset,readAsset,url, folder:%{public, location:escape_only}@, url:%{public, location:escape_only}@}", buf, 0x26u);
        }

        v29 = 0;
        v19 = [NSDictionary dictionaryWithContentsOfURL:v17 error:&v29];
        v28 = v29;
        v20 = SALogObjectGeneral;
        if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 68289282;
          v33 = 0;
          v34 = 2082;
          v35 = "";
          v36 = 2114;
          v37 = v19;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#asset,readAsset,assetContentsData, assetPlist:%{public, location:escape_only}@}", buf, 0x1Cu);
        }

        if (v19)
        {
          v21 = SALogObjectGeneral;
          if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 68289282;
            v33 = 0;
            v34 = 2082;
            v35 = "";
            v36 = 2114;
            v37 = v19;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#asset,readAsset,plist, assetPlist:%{public, location:escape_only}@}", buf, 0x1Cu);
          }

          *(a1 + 28) = sub_1000C9E4C(v7);
          v22 = v7;
          v23 = [v22 attributes];
          v24 = [v23 objectForKey:ASAttributeCompatibilityVersion];

          if (v24)
          {
            v25 = [v24 intValue];
          }

          else
          {
            v25 = -1;
          }

          *(a1 + 24) = v25;
          objc_storeStrong((a1 + 16), a2);
          sub_10004485C(a3, v19);
        }

        else
        {
          *(a1 + 24) = 0;
          sub_10004485C(a3, 0);
          v26 = *(a1 + 16);
          *(a1 + 16) = 0;
        }

        goto LABEL_33;
      }

      v10 = [v7 assetType];
      if (v10)
      {
        v27 = [v7 assetType];
        v11 = [v27 UTF8String];
      }

      else
      {
        v11 = "NULL";
      }

      v13 = __p;
      sub_1000C7E08(__p, [v7 state]);
      if (v31 < 0)
      {
        v13 = __p[0];
      }

      v14 = sub_1000C9E4C(v7);
      v15 = sub_1000C9F00(v7);
      *buf = 68290306;
      v33 = 0;
      v34 = 2082;
      v35 = "";
      v36 = 2082;
      v37 = "asset";
      v38 = 2082;
      v39 = v11;
      v40 = 2082;
      v41 = v13;
      v42 = 1026;
      v43 = v14;
      v44 = 2082;
      v45 = v15;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#asset,readAsset, var:%{public, location:escape_only}s, asset:%{public, location:escape_only}s, state:%{public, location:escape_only}s, version:%{public}d, url:%{public, location:escape_only}s}", buf, 0x40u);
      if (v31 < 0)
      {
        operator delete(__p[0]);
        if (!v10)
        {
LABEL_19:

          goto LABEL_20;
        }
      }

      else if (!v10)
      {
        goto LABEL_19;
      }

      goto LABEL_19;
    }

    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      v33 = 0;
      v34 = 2082;
      v35 = "";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#asset,readAsset,emptyAsset}", buf, 0x12u);
    }

    *(a1 + 24) = 0;
    sub_10004485C(a3, 0);
  }

  else
  {
    v12 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      v33 = 0;
      v34 = 2082;
      v35 = "";
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#asset,readAsset,emptyCallback}", buf, 0x12u);
    }
  }

LABEL_33:
}

uint64_t sub_1000CA928(uint64_t a1, uint64_t a2)
{
  v2 = **(a1 + 32);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3321888768;
  v4[2] = sub_1000CA9EC;
  v4[3] = &unk_1001401C0;
  v4[4] = a2;
  sub_10001EF44(v5, a1 + 40);
  dispatch_async(v2, v4);
  return sub_10001E0C0(v5);
}

void sub_1000CA9EC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3321888768;
  v3[2] = sub_1000CAAE0;
  v3[3] = &unk_1001401C0;
  v3[4] = *(a1 + 32);
  sub_10001EF44(v4, a1 + 40);
  sub_1000CAAE0(v3);
  sub_10001E0C0(v4);
  objc_autoreleasePoolPop(v2);
}

uint64_t sub_1000CAAE0(uint64_t a1)
{
  v2 = SALogObjectGeneral;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000C7E90(__p, *(a1 + 32));
    if (v6 >= 0)
    {
      v3 = __p;
    }

    else
    {
      v3 = __p[0];
    }

    *buf = 68289282;
    v8 = 0;
    v9 = 2082;
    v10 = "";
    v11 = 2082;
    v12 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#asset,downloadCatalogResponse, downloadResult:%{public, location:escape_only}s}", buf, 0x1Cu);
    if (v6 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return sub_1000030E8(a1 + 40, *(a1 + 32) == 0);
}

void sub_1000CAC0C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *v4;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3321888768;
  v6[2] = sub_1000CAD04;
  v6[3] = &unk_100140228;
  v8 = v4;
  v9 = a2;
  v7 = v3;
  sub_10001EF44(v10, a1 + 48);
  dispatch_async(v5, v6);
  sub_10001E0C0(v10);
}

void sub_1000CAD04(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = objc_autoreleasePoolPush();
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3321888768;
  v5[2] = sub_1000CAE28;
  v5[3] = &unk_100140228;
  v4 = *(a1 + 48);
  v7 = v2;
  v8 = v4;
  v6 = *(a1 + 32);
  sub_10001EF44(v9, a1 + 56);
  sub_1000CAE28(v5);
  sub_10001E0C0(v9);

  objc_autoreleasePoolPop(v3);
}

void sub_1000CADFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  sub_10001E0C0(v13 + 56);

  _Unwind_Resume(a1);
}

uint64_t sub_1000CAE28(uint64_t a1)
{
  v2 = SALogObjectGeneral;
  if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_26;
  }

  v3 = __p;
  sub_1000C7E90(__p, *(a1 + 48));
  if (v25 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    v3 = [*(a1 + 32) assetType];
    v6 = v3 != 0;
    if (v3)
    {
      v7 = [*(a1 + 32) assetType];
      v8 = v7;
      v21 = v7;
      v9 = [v7 UTF8String];
    }

    else
    {
      v9 = "NULL";
    }

    v10 = *(a1 + 32);
    if (v10)
    {
      v12 = v22;
      sub_1000C7E08(v22, [v10 state]);
      if (v23 < 0)
      {
        v12 = v22[0];
      }

      v10 = *(a1 + 32);
      v11 = 1;
    }

    else
    {
      v11 = 0;
      v12 = "NULL";
    }
  }

  else
  {
    v10 = 0;
    v11 = 0;
    v6 = 0;
    v9 = "NULL";
    v12 = "NULL";
  }

  v13 = sub_1000C9E4C(v10);
  v14 = *(a1 + 32);
  if (v14)
  {
    v15 = sub_1000C9F00(v14);
    v16 = *(a1 + 32);
  }

  else
  {
    v16 = 0;
    v15 = "NULL";
  }

  *buf = 68290818;
  v27 = 0;
  v28 = 2082;
  v29 = "";
  v30 = 2082;
  v31 = v4;
  v32 = 2082;
  v33 = "asset";
  v34 = 2082;
  v35 = v9;
  v36 = 2082;
  v37 = v12;
  v38 = 1026;
  v39 = v13;
  v40 = 2082;
  v41 = v15;
  v42 = 2114;
  v43 = v16;
  _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#asset,startDownloadResponse, downloadResult:%{public, location:escape_only}s, var:%{public, location:escape_only}s, asset:%{public, location:escape_only}s, state:%{public, location:escape_only}s, version:%{public}d, url:%{public, location:escape_only}s, asset:%{public, location:escape_only}@}", buf, 0x54u);
  if (v11 && v23 < 0)
  {
    operator delete(v22[0]);
    if (!v6)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  if (v6)
  {
LABEL_21:
  }

LABEL_22:
  if (v5)
  {
  }

  if (v25 < 0)
  {
    operator delete(__p[0]);
  }

LABEL_26:

  v17 = *(a1 + 48);
  if (v17)
  {
    v18 = v17 == 15;
  }

  else
  {
    v18 = 1;
  }

  v19 = v18;
  return sub_1000030E8(a1 + 56, v19);
}

void sub_1000CB0A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1000CB138(uint64_t a1)
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

uint64_t sub_1000CB1B8(uint64_t a1, uint64_t a2)
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

void sub_1000CB27C(uint64_t a1)
{

  operator delete();
}

id sub_1000CB2D0(uint64_t a1, void *a2)
{
  *a2 = off_1001402A0;
  result = objc_retainBlock(*(a1 + 8));
  a2[1] = result;
  return result;
}

uint64_t sub_1000CB318(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  return _objc_release_x1();
}

uint64_t sub_1000CB328(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a2;
  v4 = *a3;
  return (*(*(a1 + 8) + 16))();
}

uint64_t sub_1000CB340(uint64_t a1, uint64_t a2)
{
  if (sub_10000F5B0(a2, &off_100140310))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t SACoreTelephonyClientHelper::SACoreTelephonyClientHelper(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  *a1 = v5;
  sub_1000A1C34(a1 + 8, a3);
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 213) = 0;
  v6 = [[CoreTelephonyClient alloc] initWithQueue:*a1];
  v7 = *(a1 + 200);
  *(a1 + 200) = v6;

  if (!*(a1 + 200))
  {
    v15 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      buf = 68289026;
      v24 = 2082;
      v25 = "";
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#ctsa,fCTClient is nil}", &buf, 0x12u);
      v15 = SALogObjectGeneral;
    }

    v16 = 54;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      buf = 68289795;
      v24 = 2082;
      v25 = "";
      v26 = 2081;
      v27 = "/Library/Caches/com.apple.xbs/Sources/SafetyAlerts/Sources/Daemon/system/coreTelephony/prod/SACoreTelephonyClientHelper.mm";
      v28 = 2081;
      v29 = "SACoreTelephonyClientHelper";
      v30 = 1026;
      v31 = 54;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:AssertionFailure, file:%{private, location:escape_only}s, function:%{private, location:escape_only}s, line:%{public}d}", &buf, 0x2Cu);
    }

    v17 = "false && #ctsa,fCTClient is nil";
LABEL_16:
    __assert_rtn("SACoreTelephonyClientHelper", "SACoreTelephonyClientHelper.mm", v16, v17);
  }

  v8 = objc_alloc_init(CTClientDelegate);
  v9 = *(a1 + 208);
  *(a1 + 208) = v8;

  v10 = *(a1 + 208);
  if (!v10)
  {
    v18 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      buf = 68289026;
      v24 = 2082;
      v25 = "";
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#ctsa,fCTClientDelegate is nil}", &buf, 0x12u);
      v18 = SALogObjectGeneral;
    }

    v16 = 56;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      buf = 68289795;
      v24 = 2082;
      v25 = "";
      v26 = 2081;
      v27 = "/Library/Caches/com.apple.xbs/Sources/SafetyAlerts/Sources/Daemon/system/coreTelephony/prod/SACoreTelephonyClientHelper.mm";
      v28 = 2081;
      v29 = "SACoreTelephonyClientHelper";
      v30 = 1026;
      v31 = 56;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:AssertionFailure, file:%{private, location:escape_only}s, function:%{private, location:escape_only}s, line:%{public}d}", &buf, 0x2Cu);
    }

    v17 = "false && #ctsa,fCTClientDelegate is nil";
    goto LABEL_16;
  }

  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1000CBDF0;
  v22[3] = &unk_1001403D0;
  v22[4] = a1;
  [v10 setFCarrierBundleChangeCb:v22];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000CBDFC;
  v21[3] = &unk_1001403D0;
  v21[4] = a1;
  [*(a1 + 208) setFOperatorBundleChangeCb:v21];
  [*(a1 + 208) setFDefaultBundleChangeCb:&stru_1001403F0];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000CBE0C;
  v20[3] = &unk_1001403D0;
  v20[4] = a1;
  [*(a1 + 208) setFPrefDataSimChangedCb:v20];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000CBEDC;
  v19[3] = &unk_1001390D0;
  v19[4] = a1;
  [*(a1 + 208) setFTandemCapabilityChangeCb:v19];
  [*(a1 + 200) setDelegate:*(a1 + 208)];
  *(a1 + 216) = 0;
  v11 = [[CTXPCServiceSubscriptionContext alloc] initWithSlot:1];
  sub_1000CBF5C(a1, v11, 2);
  sub_1000CBF5C(a1, v11, 1);
  if (*(SAPlatformInfo::instance(v12) + 10) == 1)
  {
    v13 = [[CTXPCServiceSubscriptionContext alloc] initWithSlot:2];
    sub_1000CBF5C(a1, v13, 2);
    sub_1000CBF5C(a1, v13, 1);
  }

  sub_1000CC10C(a1);

  return a1;
}

void sub_1000CBD90(_Unwind_Exception *a1)
{
  v6 = v5;

  sub_10009BF90(v3);
  _Unwind_Resume(a1);
}

void sub_1000CBE0C(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 68289283;
    v4[1] = 0;
    v5 = 2082;
    v6 = "";
    v7 = 2113;
    v8 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ctsa,onPrefDataSimChanged, context:%{private, location:escape_only}@}", v4, 0x1Cu);
  }
}

void SACoreTelephonyClientHelper::~SACoreTelephonyClientHelper(SACoreTelephonyClientHelper *this)
{
  v2 = *(this + 25);
  *(this + 25) = 0;

  sub_10000F274(this + 168);
  sub_10003197C(this + 136);
  sub_10001E0C0(this + 104);
  sub_10001E0C0(this + 72);
  sub_10003197C(this + 40);
  sub_1000A1D88(this + 8);
}

void sub_1000CBF5C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289283;
    v16 = 0;
    v17 = 2082;
    v18 = "";
    v19 = 2113;
    v20 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ctsa,#cb,onOperatorBundleChangedNotifFromCT, context:%{private, location:escape_only}@}", buf, 0x1Cu);
  }

  v7 = [[CTBundle alloc] initWithBundleType:a3];
  v8 = [v5 slotID];
  v9 = *(a1 + 200);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000CC2C4;
  v10[3] = &unk_100140418;
  v11 = @"AppleSafetyAlert";
  v12 = a1;
  v13 = v8;
  v14 = a3;
  [v9 copyCarrierBundleValueWithDefault:v5 key:@"CellBroadcast" bundleType:v7 completion:v10];
}

void sub_1000CC10C(uint64_t a1)
{
  v2 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    *&buf[4] = 0;
    v10 = 2082;
    v11 = "";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ctsa,tandemCapabilityChanged}", buf, 0x12u);
  }

  v3 = *(a1 + 200);
  v8 = 0;
  v4 = [v3 getDualSimCapability:&v8];
  v5 = v8;
  v6 = SALogObjectGeneral;
  v7 = os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      *buf = 68289283;
      *&buf[4] = 0;
      v10 = 2082;
      v11 = "";
      v12 = 2113;
      v13 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ctsa,tandemCapabilityChanged,queryFailed, error:%{private, location:escape_only}@}", buf, 0x1Cu);
    }
  }

  else
  {
    if (v7)
    {
      *buf = 68289282;
      v10 = 2082;
      v11 = "";
      v12 = 2050;
      v13 = v4;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ctsa,tandemCapabilityChanged,querySuccess, capability:%{public}lld}", buf, 0x1Cu);
    }

    *(a1 + 220) = v4 == 2;
  }
}

void sub_1000CC2C4(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = a1[5];
  v8 = objc_autoreleasePoolPush();
  if (!v6)
  {
    if (!v5)
    {
      v17 = SALogObjectGeneral;
      if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_33;
      }

      v28 = 68289026;
      v29 = 0;
      v30 = 2082;
      v31 = "";
      v10 = "{msg%{public}.0s:#ctsa,onOperatorBundleChangedNotifFromCT,valueIsNil}";
      v11 = v17;
      v12 = 18;
      goto LABEL_4;
    }

    v13 = v5;
    v14 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v28 = 68289283;
      v29 = 0;
      v30 = 2082;
      v31 = "";
      v32 = 2113;
      *v33 = v13;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ctsa,onOperatorBundleChangedNotifFromCT, val:%{private, location:escape_only}@}", &v28, 0x1Cu);
    }

    v15 = [v13 objectForKey:a1[4]];
    if (v15)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
    }

    else
    {
      isKindOfClass = 0;
    }

    v18 = a1[6];
    if (v18 == 2)
    {
      v21 = a1[7];
      if (v21 == 1)
      {
        v20 = 219;
        goto LABEL_23;
      }

      if (v21 == 2)
      {
        v20 = 217;
        goto LABEL_23;
      }
    }

    else if (v18 == 1)
    {
      v19 = a1[7];
      if (v19 == 1)
      {
        v20 = 218;
        goto LABEL_23;
      }

      if (v19 == 2)
      {
        v20 = 216;
LABEL_23:
        *(v7 + v20) = isKindOfClass & 1;
      }
    }

    if (*(v7 + 96))
    {
      v22 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        v23 = *(v7 + 218);
        v24 = *(v7 + 219);
        v25 = *(v7 + 216);
        v26 = *(v7 + 217);
        v28 = 68290050;
        v29 = 0;
        v30 = 2082;
        v31 = "";
        v32 = 1026;
        *v33 = v23;
        *&v33[4] = 1026;
        *&v33[6] = v24;
        v34 = 1026;
        v35 = v25;
        v36 = 1026;
        v37 = v26;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ctsa,onOperatorBundleSupport, CB1:%{public}d, CB2:%{public}d, OB1:%{public}d, OB2:%{public}d}", &v28, 0x2Au);
      }

      if (*(v7 + 216) & 1) != 0 || (*(v7 + 217) & 1) != 0 || (*(v7 + 218))
      {
        v27 = 1;
      }

      else
      {
        v27 = *(v7 + 219);
      }

      sub_1000030E8(v7 + 72, v27 & 1);
    }

    goto LABEL_33;
  }

  v9 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v28 = 68289283;
    v29 = 0;
    v30 = 2082;
    v31 = "";
    v32 = 2113;
    *v33 = v6;
    v10 = "{msg%{public}.0s:#ctsa,onOperatorBundleChangedNotifFromCT,failed, error:%{private, location:escape_only}@}";
    v11 = v9;
    v12 = 28;
LABEL_4:
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v10, &v28, v12);
  }

LABEL_33:
  objc_autoreleasePoolPop(v8);
}

void SACoreTelephonyProd::SACoreTelephonyProd(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  sub_1000A1C34(v10, a3);
  *a1 = off_10013FB50;
  *(a1 + 8) = 0;
  sub_1000A1C34(a1 + 16, v10);
  sub_10000F274(&v15);
  sub_10003197C(&v14);
  sub_10001E0C0(&v13);
  sub_10001E0C0(&v12);
  sub_10003197C(&v11);
  sub_1000A1D88(v10);
  *a1 = off_100140448;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = v5;
  v6 = _CTServerConnectionCreateOnTargetQueue();
  *(a1 + 208) = v6;
  v7 = SALogObjectGeneral;
  if (v6)
  {
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      v17 = 0;
      v18 = 2082;
      v19 = "";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ctsa,created CT connection}", buf, 0x12u);
      v7 = SALogObjectGeneral;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      v17 = 0;
      v18 = 2082;
      v19 = "";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ctsa,registering for kCTSMSCellBroadcastTelemetryNotification}", buf, 0x12u);
    }

    v8 = *(a1 + 232);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1000CCAE4;
    handler[3] = &unk_10013F968;
    handler[4] = a1;
    xpc_set_event_stream_handler("com.apple.CTTelephonyCenter", v8, handler);
    operator new();
  }

  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_ERROR))
  {
    *buf = 68289026;
    v17 = 0;
    v18 = 2082;
    v19 = "";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#ctsa,fCTConnection is nil}", buf, 0x12u);
    v7 = SALogObjectGeneral;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 68289795;
    v17 = 0;
    v18 = 2082;
    v19 = "";
    v20 = 2081;
    v21 = "/Library/Caches/com.apple.xbs/Sources/SafetyAlerts/Sources/Daemon/system/coreTelephony/prod/SACoreTelephonyProd.mm";
    v22 = 2081;
    v23 = "SACoreTelephonyProd";
    v24 = 1026;
    v25 = 65;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:AssertionFailure, file:%{private, location:escape_only}s, function:%{private, location:escape_only}s, line:%{public}d}", buf, 0x2Cu);
  }

  __assert_rtn("SACoreTelephonyProd", "SACoreTelephonyProd.mm", 65, "false && #ctsa,fCTConnection is nil");
}

void sub_1000CCAE4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = objc_autoreleasePoolPush();
  string = xpc_dictionary_get_string(v3, "Name");
  if (string)
  {
    v7 = [NSString stringWithUTF8String:string];
    v8 = kCTSMSCellBroadcastTelemetryNotification;
    if ([v7 isEqualToString:kCTSMSCellBroadcastTelemetryNotification] & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", kCTEventSMSMessageCellBroadcastStringGeofencingStarted))
    {
      v9 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        v21 = 68289538;
        v22 = 0;
        v23 = 2082;
        v24 = "";
        v25 = 2082;
        v26 = string;
        v27 = 2082;
        v28 = "willProcess";
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ctsa,com.apple.CTTelephonyCenter, Notification:%{public, location:escape_only}s, result:%{public, location:escape_only}s}", &v21, 0x26u);
      }

      v10 = xpc_dictionary_get_value(v3, "UserInfo");
      v11 = _CFXPCCreateCFObjectFromXPCObject();

      v12 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        v21 = 68289283;
        v22 = 0;
        v23 = 2082;
        v24 = "";
        v25 = 2113;
        v26 = v11;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ctsa,kCTSMSCellBroadcastTelemetryNotification, info:%{private, location:escape_only}@}", &v21, 0x1Cu);
      }

      if (v11)
      {
        if ([v7 isEqualToString:v8])
        {
          v13 = [(NSDictionary *)v11 objectForKey:kCTSMSCellBroadcastString];
          if (v13)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v14 = [(NSDictionary *)v11 objectForKey:kCTSMSAppleSafetyAlertSupport];
              if (v14 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                v15 = v14;
              }

              else
              {
                v15 = 0;
              }

              v18 = [v15 unsignedIntValue];
              v19 = SALogObjectGeneral;
              if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
              {
                v21 = 68289282;
                v22 = 0;
                v23 = 2082;
                v24 = "";
                v25 = 1026;
                LODWORD(v26) = v18;
                _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ctsa,onAlertDisplayNotification, weaIdNumber:%{public}d}", &v21, 0x18u);
              }

              if (v18 == 1)
              {
                v20 = v13;
                SACoreTelephony::onWeaDisplayedNotification(v4, [v13 UTF8String]);
              }

              SACoreTelephony::onMotionHarvestWeaTrigger(v4, v11);
            }
          }
        }

        else if ([v7 isEqualToString:kCTEventSMSMessageCellBroadcastStringGeofencingStarted])
        {
          SACoreTelephony::onWeaReceivedNotification(v4, v11);
        }
      }
    }

    else
    {
      v17 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        v21 = 68289538;
        v22 = 0;
        v23 = 2082;
        v24 = "";
        v25 = 2082;
        v26 = string;
        v27 = 2082;
        v28 = "ignored";
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ctsa,com.apple.CTTelephonyCenter, Notification:%{public, location:escape_only}s, result:%{public, location:escape_only}s}", &v21, 0x26u);
      }
    }
  }

  else
  {
    v16 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 68289538;
      v22 = 0;
      v23 = 2082;
      v24 = "";
      v25 = 2082;
      v26 = "nil";
      v27 = 2082;
      v28 = "ignored";
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ctsa,com.apple.CTTelephonyCenter, Notification:%{public, location:escape_only}s, result:%{public, location:escape_only}s}", &v21, 0x26u);
    }
  }

  objc_autoreleasePoolPop(v5);
}

void *sub_1000CCFE0(void *a1)
{
  *a1 = off_10013FB50;
  v2 = (a1 + 6);
  sub_10000F274((a1 + 22));
  sub_10003197C((a1 + 18));
  sub_10001E0C0((a1 + 14));
  sub_10001E0C0((a1 + 10));
  sub_10003197C(v2);
  sub_1000A1D88((a1 + 2));
  return a1;
}

void sub_1000CD054(void *a1)
{
  v2 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 68289026;
    v12 = 0;
    v13 = 2082;
    v14 = "";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ctsa,start,registering for kCTSMSCellBroadcastTelemetryNotification and kCTEventSMSMessageCellBroadcastStringGeofencingStarted}", &v11, 0x12u);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, a1, sub_1000CD1F8, kCTSMSCellBroadcastConfigChangedNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v4 = a1[26];
  v5 = _CTServerConnectionRegisterForNotification();
  v6 = a1[26];
  v7 = HIDWORD(v5);
  v8 = _CTServerConnectionRegisterForNotification() >> 32;
  if (v7)
  {
    v9 = 0;
  }

  else
  {
    v9 = v8 == 0;
  }

  if (!v9)
  {
    v10 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 68289539;
      v12 = 0;
      v13 = 2082;
      v14 = "";
      v15 = 1025;
      v16 = v7;
      v17 = 1025;
      v18 = v8;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ctsa,start,error in registering to notifications, weaDisplay:%{private}d, weaReceive:%{private}d}", &v11, 0x1Eu);
    }
  }
}

void sub_1000CD1F8(uint64_t a1, uint64_t a2)
{
  v3 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    v8 = 0;
    v9 = 2082;
    v10 = "";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ctsa,onCellBroadcastSwitchChangedNotification}", buf, 0x12u);
  }

  if (a2)
  {
    v4 = *(a2 + 232);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000CFD7C;
    block[3] = &unk_1001390D0;
    block[4] = a2;
    dispatch_async(v4, block);
  }

  else
  {
    v5 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      v8 = 0;
      v9 = 2082;
      v10 = "";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ctsa,onCellBroadcastSwitchChangedNotification invalid observed}", buf, 0x12u);
    }
  }
}

CFMutableDictionaryRef sub_1000CD370(void *a1)
{
  v119 = a1;
  v1 = SALogObjectGeneral;
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    buf = 68289026;
    v133 = 2082;
    v134 = "";
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ctsa,createAppleSafetyAlertDict New}", &buf, 0x12u);
  }

  v2 = [v119 objectForKey:@"SafetyAlertMissingForHash"];
  if (v2)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      if (Mutable)
      {
        theDict = Mutable;
        CFDictionarySetValue(Mutable, @"SafetyAlertMissingForHash", v2);
      }

      else
      {
        theDict = 0;
      }

      goto LABEL_395;
    }
  }

  v4 = [v119 objectForKey:@"uid"];
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    value = v4;
  }

  else
  {
    value = 0;
  }

  v5 = [v119 objectForKey:@"session_id"];
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v99 = v5;
  }

  else
  {
    v99 = 0;
  }

  v6 = [v119 objectForKey:@"categories"];
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v111 = v6;
  }

  else
  {
    v111 = 0;
  }

  v7 = [v119 objectForKey:@"urgency"];
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v107 = v7;
  }

  else
  {
    v107 = 0;
  }

  v8 = [v119 objectForKey:@"severity"];
  if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v106 = v8;
  }

  else
  {
    v106 = 0;
  }

  v9 = [v119 objectForKey:@"certainty"];
  if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v105 = v9;
  }

  else
  {
    v105 = 0;
  }

  v10 = [v119 objectForKey:@"expires"];
  if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v104 = v10;
  }

  else
  {
    v104 = 0;
  }

  v11 = [v119 objectForKey:@"effective"];
  if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v103 = v11;
  }

  else
  {
    v103 = 0;
  }

  v12 = [v119 objectForKey:@"responseTypes"];
  if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v109 = v12;
  }

  else
  {
    v109 = 0;
  }

  v13 = [v119 objectForKey:@"eventCode"];
  if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v110 = v13;
  }

  else
  {
    v110 = 0;
  }

  v14 = [v119 objectForKey:@"type"];
  if (v14 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v98 = v14;
  }

  else
  {
    v98 = 0;
  }

  v15 = [v119 objectForKey:@"geometry"];
  if (v15 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v102 = v15;
  }

  else
  {
    v102 = 0;
  }

  if (!value || (theDict = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks)) == 0)
  {
    theDict = 0;
    goto LABEL_394;
  }

  v95 = [v119 objectForKey:@"info"];
  if (!v95 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    CFRelease(theDict);
    theDict = 0;
    goto LABEL_393;
  }

  LODWORD(buf) = 1;
  v16 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &buf);
  if (v16)
  {
    CFDictionarySetValue(theDict, kAppleSafetyAlert_Status_Key, v16);
    CFRelease(v16);
  }

  LODWORD(buf) = 1;
  v17 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &buf);
  if (v17)
  {
    CFDictionarySetValue(theDict, kAppleSafetyAlert_MessageType_Key, v17);
    CFRelease(v17);
  }

  CFDictionarySetValue(theDict, kAppleSafetyAlert_UniqueID_Key, value);
  if (v99)
  {
    CFDictionarySetValue(theDict, kAppleSafetyAlert_SessionID_Key, v99);
  }

  v18 = SALogObjectGeneral;
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    buf = 68292099;
    v133 = 2082;
    v134 = "";
    v135 = 2113;
    v136 = v99;
    v137 = 2113;
    v138 = v111;
    v139 = 2113;
    v140 = v107;
    v141 = 2113;
    v142 = v104;
    v143 = 2113;
    v144 = v103;
    v145 = 2113;
    v146 = v109;
    v147 = 2113;
    v148 = v105;
    v149 = 2113;
    v150 = v106;
    v151 = 2113;
    v152 = value;
    v153 = 2113;
    v154 = v98;
    v155 = 2113;
    v156 = v110;
    v157 = 2113;
    v158 = v102;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ctsa,#telephony,rootKvPair, session_id:%{private, location:escape_only}@, category:%{private, location:escape_only}@, urgency:%{private, location:escape_only}@, expires:%{private, location:escape_only}@, effective:%{private, location:escape_only}@, responseType:%{private, location:escape_only}@, certainty:%{private, location:escape_only}@, severity:%{private, location:escape_only}@, uid:%{private, location:escape_only}@, type:%{private, location:escape_only}@, eventCode:%{private, location:escape_only}@, geometry:%{private, location:escape_only}@}", &buf, 0x8Au);
  }

  v120 = v95;
  v19 = [v120 count];
  if (!v19)
  {
    CFRelease(theDict);
LABEL_391:
    theDict = 0;
    goto LABEL_392;
  }

  v100 = v19;
  theArray = CFArrayCreateMutable(kCFAllocatorDefault, 1, &kCFTypeArrayCallBacks);
  v20 = 0;
  v85 = kAppleSafetyAlert_Urgency_Key;
  key = kAppleSafetyAlert_Language_Key;
  v83 = kAppleSafetyAlert_Certainty_Key;
  v84 = kAppleSafetyAlert_Severity_Key;
  v94 = kAppleSafetyAlert_Area_Key;
  v93 = kAppleSafetyAlert_Headline_Key;
  v92 = kAppleSafetyAlert_Description_Key;
  v90 = kAppleSafetyAlert_ExpiryTimestamp_Key;
  v91 = kAppleSafetyAlert_Instruction_Key;
  v79 = kAppleSafetyAlert_EventCode_Key;
  v80 = kAppleSafetyAlert_ResponseCode_Key;
  v81 = kAppleSafetyAlert_Category_Key;
  v82 = kAppleSafetyAlert_WeaHandlingType_Key;
  v88 = kAppleSafetyAlert_CmamText_Key;
  v89 = kAppleSafetyAlert_EffectiveTimestamp_Key;
  v87 = kAppleSafetyAlert_CmamLongText_Key;
  v96 = kAppleSafetyAlert_Parameters_Key;
  do
  {
    v121 = v20;
    v21 = [v120 objectAtIndexedSubscript:v79];
    v22 = [v21 objectForKey:@"language"];

    if (v22 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v116 = v22;
    }

    else
    {
      v116 = 0;
    }

    v23 = [v120 objectAtIndexedSubscript:v121];
    v24 = [v23 objectForKey:@"headline"];

    if (v24 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v112 = v24;
    }

    else
    {
      v112 = 0;
    }

    v25 = [v120 objectAtIndexedSubscript:v121];
    v26 = [v25 objectForKey:@"description"];

    if (v26 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v113 = v26;
    }

    else
    {
      v113 = 0;
    }

    v27 = [v120 objectAtIndexedSubscript:v121];
    v28 = [v27 objectForKey:@"instruction"];

    if (v28 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v114 = v28;
    }

    else
    {
      v114 = 0;
    }

    v29 = [v120 objectAtIndexedSubscript:v121];
    v30 = [v29 objectForKey:@"WEAHandling"];

    if (v30 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v115 = v30;
    }

    else
    {
      v115 = 0;
    }

    v31 = [v120 objectAtIndexedSubscript:v121];
    v32 = [v31 objectForKey:@"CMAMtext"];

    if (v32 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      *(&v117 + 1) = v32;
    }

    else
    {
      *(&v117 + 1) = 0;
    }

    v33 = [v120 objectAtIndexedSubscript:v121];
    v34 = [v33 objectForKey:@"CMAMlongtext"];

    if (v34 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      *&v117 = v34;
    }

    else
    {
      *&v117 = 0;
    }

    v35 = SALogObjectGeneral;
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      buf = 68290819;
      v133 = 2082;
      v134 = "";
      v135 = 2113;
      v136 = v116;
      v137 = 2113;
      v138 = v112;
      v139 = 2113;
      v140 = v113;
      v141 = 2113;
      v142 = v114;
      v143 = 2113;
      v144 = v115;
      v145 = 2113;
      v146 = *(&v117 + 1);
      v147 = 2113;
      v148 = v117;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ctsa,#telephony,infoKvPair, language:%{private, location:escape_only}@, headline:%{private, location:escape_only}@, description:%{private, location:escape_only}@, instruction:%{private, location:escape_only}@, wea_handling:%{private, location:escape_only}@, cmam_text:%{private, location:escape_only}@, cmam_long_text:%{private, location:escape_only}@}", &buf, 0x58u);
    }

    if (v117 != 0)
    {
      if (!*(&v117 + 1))
      {
        v36 = SALogObjectGeneral;
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          buf = 68289026;
          v133 = 2082;
          v134 = "";
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ctsa,#telephony,#warning,noCmamTextPresent}", &buf, 0x12u);
        }

        *(&v117 + 1) = v117;
      }

      if (!v117)
      {
        v37 = SALogObjectGeneral;
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          buf = 68289026;
          v133 = 2082;
          v134 = "";
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ctsa,#telephony,#warning,noCmamLongTextPresent}", &buf, 0x12u);
        }

        *&v117 = *(&v117 + 1);
      }

      v118 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      if (v116)
      {
        LODWORD(buf) = sub_1000CF658(v116);
        v38 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &buf);
        if (v38)
        {
          CFDictionarySetValue(v118, key, v38);
          CFRelease(v38);
        }
      }

      if (v107)
      {
        v39 = v107;
        if ([v39 isEqualToString:@"Immediate"])
        {
          v40 = 1;
        }

        else if ([v39 isEqualToString:@"Expected"])
        {
          v40 = 2;
        }

        else if ([v39 isEqualToString:@"Future"])
        {
          v40 = 3;
        }

        else if ([v39 isEqualToString:@"Past"])
        {
          v40 = 4;
        }

        else
        {
          v40 = [v39 isEqualToString:@"Unknown"] ? 5 : 0;
        }

        LODWORD(buf) = v40;
        v43 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &buf);
        if (v43)
        {
          CFDictionarySetValue(v118, v85, v43);
          CFRelease(v43);
        }
      }

      if (v106)
      {
        v44 = v106;
        if ([v44 isEqualToString:@"Extreme"])
        {
          v45 = 1;
        }

        else if ([v44 isEqualToString:@"Severe"])
        {
          v45 = 2;
        }

        else if ([v44 isEqualToString:@"Moderate"])
        {
          v45 = 3;
        }

        else if ([v44 isEqualToString:@"Minor"])
        {
          v45 = 4;
        }

        else
        {
          v45 = [v44 isEqualToString:@"Unknown"] ? 5 : 0;
        }

        LODWORD(buf) = v45;
        v46 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &buf);
        if (v46)
        {
          CFDictionarySetValue(v118, v84, v46);
          CFRelease(v46);
        }
      }

      if (v105)
      {
        v47 = v105;
        if ([v47 isEqualToString:@"Observed"])
        {
          v48 = 1;
        }

        else if ([v47 isEqualToString:@"Likely"])
        {
          v48 = 2;
        }

        else if ([v47 isEqualToString:@"Possible"])
        {
          v48 = 3;
        }

        else if ([v47 isEqualToString:@"Unlikely"])
        {
          v48 = 4;
        }

        else
        {
          v48 = [v47 isEqualToString:@"Unknown"] ? 5 : 0;
        }

        LODWORD(buf) = v48;
        v49 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &buf);
        if (v49)
        {
          CFDictionarySetValue(v118, v83, v49);
          CFRelease(v49);
        }
      }

      if (v102)
      {
        CFDictionarySetValue(v118, v94, v102);
      }

      if (v112)
      {
        CFDictionarySetValue(v118, v93, v112);
      }

      if (v113)
      {
        CFDictionarySetValue(v118, v92, v113);
      }

      if (v114)
      {
        CFDictionarySetValue(v118, v91, v114);
      }

      if (v104)
      {
        CFDictionarySetValue(v118, v90, v104);
      }

      if (v103)
      {
        CFDictionarySetValue(v118, v89, v103);
      }

      if (!v110)
      {
        goto LABEL_198;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_198;
      }

      v50 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
      v51 = v110;
      if ([v51 isEqualToString:@"ADR"])
      {
        v52 = 1;
      }

      else if ([v51 isEqualToString:@"AVA"])
      {
        v52 = 2;
      }

      else if ([v51 isEqualToString:@"AVW"])
      {
        v52 = 3;
      }

      else if ([v51 isEqualToString:@"BLU"])
      {
        v52 = 4;
      }

      else if ([v51 isEqualToString:@"BZW"])
      {
        v52 = 5;
      }

      else if ([v51 isEqualToString:@"CAE"])
      {
        v52 = 6;
      }

      else if ([v51 isEqualToString:@"CDW"])
      {
        v52 = 7;
      }

      else if ([v51 isEqualToString:@"CEM"])
      {
        v52 = 8;
      }

      else if ([v51 isEqualToString:@"CFW"])
      {
        v52 = 9;
      }

      else if ([v51 isEqualToString:@"DMO"] & 1) != 0 || (objc_msgSend(v51, "isEqualToString:", @"DMO"))
      {
        v52 = 10;
      }

      else if ([v51 isEqualToString:@"DSW"])
      {
        v52 = 11;
      }

      else if ([v51 isEqualToString:@"EAN"])
      {
        v52 = 12;
      }

      else if ([v51 isEqualToString:@"EQW"])
      {
        v52 = 13;
      }

      else if ([v51 isEqualToString:@"EVI"])
      {
        v52 = 14;
      }

      else if ([v51 isEqualToString:@"FFW"])
      {
        v52 = 15;
      }

      else if ([v51 isEqualToString:@"FLW"])
      {
        v52 = 16;
      }

      else if ([v51 isEqualToString:@"FRW"])
      {
        v52 = 17;
      }

      else if ([v51 isEqualToString:@"HMW"])
      {
        v52 = 18;
      }

      else if ([v51 isEqualToString:@"HUW"])
      {
        v52 = 19;
      }

      else if ([v51 isEqualToString:@"HWW"])
      {
        v52 = 20;
      }

      else if ([v51 isEqualToString:@"LEW"])
      {
        v52 = 21;
      }

      else if ([v51 isEqualToString:@"LAE"])
      {
        v52 = 22;
      }

      else if ([v51 isEqualToString:@"NIC"])
      {
        v52 = 23;
      }

      else if ([v51 isEqualToString:@"NMN"])
      {
        v52 = 24;
      }

      else if ([v51 isEqualToString:@"NPT"])
      {
        v52 = 25;
      }

      else if ([v51 isEqualToString:@"NUW"])
      {
        v52 = 26;
      }

      else if ([v51 isEqualToString:@"RHW"])
      {
        v52 = 27;
      }

      else if ([v51 isEqualToString:@"RMT"])
      {
        v52 = 28;
      }

      else if ([v51 isEqualToString:@"RWT"])
      {
        v52 = 29;
      }

      else if ([v51 isEqualToString:@"SPW"])
      {
        v52 = 30;
      }

      else if ([v51 isEqualToString:@"SVR"])
      {
        v52 = 31;
      }

      else if ([v51 isEqualToString:@"SMW"])
      {
        v52 = 32;
      }

      else if ([v51 isEqualToString:@"TOE"])
      {
        v52 = 33;
      }

      else if ([v51 isEqualToString:@"TOR"])
      {
        v52 = 34;
      }

      else if ([v51 isEqualToString:@"TRW"])
      {
        v52 = 35;
      }

      else if ([v51 isEqualToString:@"TSW"])
      {
        v52 = 36;
      }

      else if ([v51 isEqualToString:@"VOW"])
      {
        v52 = 37;
      }

      else if ([v51 isEqualToString:@"WSW"])
      {
        v52 = 38;
      }

      else if ([v51 isEqualToString:@"EWW"])
      {
        v52 = 39;
      }

      else if ([v51 isEqualToString:@"FFA"])
      {
        v52 = 40;
      }

      else if ([v51 isEqualToString:@"FLA"])
      {
        v52 = 41;
      }

      else if ([v51 isEqualToString:@"FFS"])
      {
        v52 = 42;
      }

      else if ([v51 isEqualToString:@"HUA"])
      {
        v52 = 43;
      }

      else if ([v51 isEqualToString:@"NWS"])
      {
        v52 = 44;
      }

      else if ([v51 isEqualToString:@"SSA"])
      {
        v52 = 45;
      }

      else if ([v51 isEqualToString:@"SSW"])
      {
        v52 = 46;
      }

      else if ([v51 isEqualToString:@"SVS"])
      {
        v52 = 47;
      }

      else if ([v51 isEqualToString:@"SPS"])
      {
        v52 = 48;
      }

      else if ([v51 isEqualToString:@"TOA"])
      {
        v52 = 49;
      }

      else if ([v51 isEqualToString:@"TRA"])
      {
        v52 = 50;
      }

      else
      {
        v52 = 0;
      }

      LODWORD(buf) = v52;
      v53 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &buf);
      v54 = v53;
      if (v50 && v53)
      {
        CFArrayAppendValue(v50, v53);
        CFDictionarySetValue(v118, v79, v50);
      }

      else if (!v53)
      {
        goto LABEL_196;
      }

      CFRelease(v54);
LABEL_196:
      if (v50)
      {
        CFRelease(v50);
      }

LABEL_198:
      if (v111)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v55 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
          v128 = 0u;
          v129 = 0u;
          v126 = 0u;
          v127 = 0u;
          v56 = v111;
          v57 = [v56 countByEnumeratingWithState:&v126 objects:v131 count:16];
          if (v57)
          {
            v58 = *v127;
            do
            {
              for (i = 0; i != v57; i = i + 1)
              {
                if (*v127 != v58)
                {
                  objc_enumerationMutation(v56);
                }

                v60 = *(*(&v126 + 1) + 8 * i);
                if (v60)
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v61 = v60;
                    if ([v61 isEqualToString:@"Geo"])
                    {
                      v62 = 1;
                    }

                    else if ([v61 isEqualToString:@"Met"])
                    {
                      v62 = 2;
                    }

                    else if ([v61 isEqualToString:@"Safety"])
                    {
                      v62 = 3;
                    }

                    else if ([v61 isEqualToString:@"Security"])
                    {
                      v62 = 4;
                    }

                    else if ([v61 isEqualToString:@"Rescue"])
                    {
                      v62 = 5;
                    }

                    else if ([v61 isEqualToString:@"Fire"])
                    {
                      v62 = 6;
                    }

                    else if ([v61 isEqualToString:@"Health"])
                    {
                      v62 = 7;
                    }

                    else if ([v61 isEqualToString:@"Env"])
                    {
                      v62 = 8;
                    }

                    else if ([v61 isEqualToString:@"Transport"])
                    {
                      v62 = 9;
                    }

                    else if ([v61 isEqualToString:@"Infra"])
                    {
                      v62 = 10;
                    }

                    else if ([v61 isEqualToString:@"CBRNE"])
                    {
                      v62 = 11;
                    }

                    else
                    {
                      v62 = 0;
                    }

                    LODWORD(buf) = v62;
                    v63 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &buf);
                    if (v63)
                    {
                      CFArrayAppendValue(v55, v63);
                      CFRelease(v63);
                    }
                  }
                }
              }

              v57 = [v56 countByEnumeratingWithState:&v126 objects:v131 count:16];
            }

            while (v57);
          }

          CFDictionarySetValue(v118, v81, v55);
          if (v55)
          {
            CFRelease(v55);
          }
        }
      }

      if (v109)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v64 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
          v124 = 0u;
          v125 = 0u;
          v122 = 0u;
          v123 = 0u;
          v65 = v109;
          v66 = [v65 countByEnumeratingWithState:&v122 objects:v130 count:16];
          if (v66)
          {
            v67 = *v123;
            do
            {
              for (j = 0; j != v66; j = j + 1)
              {
                if (*v123 != v67)
                {
                  objc_enumerationMutation(v65);
                }

                v69 = *(*(&v122 + 1) + 8 * j);
                if (v69)
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v70 = v69;
                    if ([v70 isEqualToString:@"Shelter"])
                    {
                      v71 = 1;
                    }

                    else if ([v70 isEqualToString:@"Evacuate"])
                    {
                      v71 = 2;
                    }

                    else if ([v70 isEqualToString:@"Prepare"])
                    {
                      v71 = 3;
                    }

                    else if ([v70 isEqualToString:@"Execute"])
                    {
                      v71 = 4;
                    }

                    else if ([v70 isEqualToString:@"Avoid"])
                    {
                      v71 = 5;
                    }

                    else if ([v70 isEqualToString:@"Monitor"])
                    {
                      v71 = 6;
                    }

                    else if ([v70 isEqualToString:@"Assess"])
                    {
                      v71 = 7;
                    }

                    else if ([v70 isEqualToString:@"AllClear"])
                    {
                      v71 = 8;
                    }

                    else if ([v70 isEqualToString:@"None"])
                    {
                      v71 = 9;
                    }

                    else
                    {
                      v71 = 0;
                    }

                    LODWORD(buf) = v71;
                    v72 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &buf);
                    if (v72)
                    {
                      CFArrayAppendValue(v64, v72);
                      CFRelease(v72);
                    }
                  }
                }
              }

              v66 = [v65 countByEnumeratingWithState:&v122 objects:v130 count:16];
            }

            while (v66);
          }

          CFDictionarySetValue(v118, v80, v64);
          if (v64)
          {
            CFRelease(v64);
          }
        }
      }

      v73 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      if (v115)
      {
        v74 = v115;
        if ([v74 isEqualToString:@"Presidential"])
        {
          v75 = 1;
        }

        else if ([v74 isEqualToString:@"Amber"])
        {
          v75 = 2;
        }

        else if ([v74 isEqualToString:@"Imminent Threat"])
        {
          v75 = 3;
        }

        else if ([v74 isEqualToString:@"Earthquake"])
        {
          v75 = 4;
        }

        else if ([v74 isEqualToString:@"Public Safety"])
        {
          v75 = 5;
        }

        else
        {
          v75 = [v74 isEqualToString:@"WEA Test"] ? 6 : 0;
        }

        LODWORD(buf) = v75;
        v76 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &buf);
        if (v76)
        {
          CFDictionarySetValue(v73, v82, v76);
          CFRelease(v76);
        }
      }

      if (*(&v117 + 1))
      {
        CFDictionarySetValue(v73, v88, *(&v117 + 1));
      }

      if (v117)
      {
        CFDictionarySetValue(v73, v87, v117);
      }

      CFDictionarySetValue(v118, v96, v73);
      if (v73)
      {
        CFRelease(v73);
      }

      CFArrayAppendValue(theArray, v118);
      if (v118)
      {
        CFRelease(v118);
      }

      v42 = v117;
      goto LABEL_297;
    }

    v41 = SALogObjectGeneral;
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      buf = 68289026;
      v133 = 2082;
      v134 = "";
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ctsa,#telephony,#warning,noCmamPresent,droppingInfoBlock}", &buf, 0x12u);
    }

    v42 = 0;
    *(&v117 + 1) = 0;
LABEL_297:

    v20 = v121 + 1;
  }

  while ((v121 + 1) != v100);
  if (![(__CFArray *)theArray count])
  {
    v77 = SALogObjectGeneral;
    if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
    {
      buf = 68289026;
      v133 = 2082;
      v134 = "";
      _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ctsa,#telephony,warning,noInfoBlocksPresent,droppingAlert}", &buf, 0x12u);
    }

    if (theArray)
    {
      CFRelease(theArray);
    }

    goto LABEL_391;
  }

  CFDictionarySetValue(theDict, kAppleSafetyAlert_Info_Key, theArray);
  if (theArray)
  {
    CFRelease(theArray);
  }

LABEL_392:

LABEL_393:
LABEL_394:

  v2 = 0;
LABEL_395:

  return theDict;
}

uint64_t sub_1000CF658(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"en-US"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"es-US"])
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t SACoreTelephonyProd::isAdditionalDetailsPresent(SACoreTelephonyProd *this, const NSDictionary *a2)
{
  v2 = this;
  v3 = v2;
  if (v2)
  {
    v4 = [(SACoreTelephonyProd *)v2 objectForKey:@"info"];
    if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v5 = v4;
      v6 = [v5 count];
      if (v6)
      {
        v7 = 0;
        v8 = 0;
        do
        {
          v9 = [v5 objectAtIndexedSubscript:v7];
          v10 = [v9 objectForKey:@"instruction"];

          if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v11 = v10;
          }

          else
          {
            v11 = 0;
          }

          v8 |= v11 != 0;
          ++v7;
        }

        while (v6 != v7);
      }

      else
      {
        v14 = SALogObjectGeneral;
        v8 = 0;
        if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
        {
          v16 = 68289026;
          v17 = 0;
          v18 = 2082;
          v19 = "";
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ctsa,isAddlDetailsPresent,infoCountInvalid}", &v16, 0x12u);
          v8 = 0;
        }
      }
    }

    else
    {
      v12 = SALogObjectGeneral;
      v8 = 0;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 68289026;
        v17 = 0;
        v18 = 2082;
        v19 = "";
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ctsa,isAddlDetailsPresent,infoMissing}", &v16, 0x12u);
        v8 = 0;
      }
    }
  }

  else
  {
    v13 = SALogObjectGeneral;
    v8 = 0;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 68289026;
      v17 = 0;
      v18 = 2082;
      v19 = "";
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ctsa,isAddlDetailsPresent,invalidDictionary}", &v16, 0x12u);
      v8 = 0;
    }
  }

  return v8 & 1;
}

BOOL sub_1000CF9C4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v21 = 0;
    v4 = [NSJSONSerialization dataWithJSONObject:v3 options:0 error:&v21];
    v5 = v21;
    v6 = v5;
    v7 = v4 != 0;
    if (v4)
    {
      v20 = v5;
      v8 = [[NSString alloc] initWithData:v4 encoding:4];
      v9 = [v8 dataUsingEncoding:4];
      v10 = [NSJSONSerialization JSONObjectWithData:v9 options:0 error:0];
      v11 = sub_1000CD370(v10);
      if (!v11)
      {
        v12 = SALogObjectGeneral;
        if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 68289026;
          v23 = 0;
          v24 = 2082;
          v25 = "";
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ctsa,invalid rootDict}", buf, 0x12u);
        }
      }

      v13 = *(a1 + 208);
      v14 = _CTServerConnectionSendAppleSafetyAlert();
      v15 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289538;
        v23 = 0;
        v24 = 2082;
        v25 = "";
        v26 = 1026;
        v27 = v14;
        v28 = 1026;
        v29 = HIDWORD(v14);
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ctsa,didFailWithError, errordomain:%{public}d, error:%{public}d}", buf, 0x1Eu);
      }

      if (v11)
      {
        CFRelease(v11);
      }

      v6 = v20;
    }

    else
    {
      v18 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289026;
        v23 = 0;
        v24 = 2082;
        v25 = "";
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ctsa,null jsonData}", buf, 0x12u);
      }
    }
  }

  else
  {
    v17 = SALogObjectGeneral;
    v7 = 0;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      v23 = 0;
      v24 = 2082;
      v25 = "";
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ctsa,null alert}", buf, 0x12u);
      v7 = 0;
    }
  }

  return v7;
}

void sub_1000CFD7C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  sub_1000CFE0C(*(a1 + 32));
  objc_autoreleasePoolPop(v2);
}

uint64_t sub_1000CFE0C(SACoreTelephony *a1)
{
  v2 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 68289026;
    v6[1] = 0;
    v7 = 2082;
    v8 = "";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ctsa,onCellBroadcastSwitchChangedNotificationCb}", v6, 0x12u);
  }

  v3 = *(a1 + 26);
  EnhancedDeliveryState = SACoreTelephony::getEnhancedDeliveryState();
  SACoreTelephony::onEnhanceDeliveryStateChange(a1, EnhancedDeliveryState);
  return SACoreTelephony::onUserSettingsChanged(a1);
}

uint64_t sub_1000CFEE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  memset(v59, 0, 48);
  __asm { FMOV            V1.2D, #-1.0 }

  v59[3] = _Q1;
  v59[4] = _Q1;
  v60 = 0xBFF0000000000000;
  memset(v61, 0, sizeof(v61));
  memset(v63, 0, sizeof(v63));
  v62 = 1065353216;
  v64 = 1065353216;
  v13 = sub_10008E020();
  sub_10008F5B0(v13, v59);
  cf = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!cf)
  {
    v18 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      v66 = 2082;
      v67 = "";
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ctsa,rootDict invalid}", buf, 0x12u);
    }

    goto LABEL_16;
  }

  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!Mutable)
  {
    v19 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      v66 = 2082;
      v67 = "";
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ctsa,infoDictMain invalid}", buf, 0x12u);
    }

    CFRelease(cf);
    goto LABEL_16;
  }

  v53 = Mutable;
  theArray = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  if (!theArray)
  {
    v20 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      v66 = 2082;
      v67 = "";
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ctsa,sendIgneousFollowUpAlert,infoDict invalid}", buf, 0x12u);
    }

    CFRelease(Mutable);
    CFRelease(cf);
LABEL_16:
    v21 = 0;
    goto LABEL_17;
  }

  v15 = [@"FollowUp" UTF8String];
  v16 = strlen(v15);
  if (v16 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100004D90();
  }

  v17 = v16;
  if (v16 >= 0x17)
  {
    operator new();
  }

  v69[3] = v16;
  if (v16)
  {
    memmove(buf, v15, v16);
  }

  buf[v17] = 0;
  v23 = *(a2 + 23);
  if (v23 >= 0)
  {
    v24 = a2;
  }

  else
  {
    v24 = *a2;
  }

  if (v23 >= 0)
  {
    v25 = *(a2 + 23);
  }

  else
  {
    v25 = *(a2 + 8);
  }

  v26 = std::string::insert(buf, 0, v24, v25);
  v52 = a1;
  v27 = *&v26->__r_.__value_.__l.__data_;
  v58 = v26->__r_.__value_.__r.__words[2];
  *__p = v27;
  v26->__r_.__value_.__l.__size_ = 0;
  v26->__r_.__value_.__r.__words[2] = 0;
  v26->__r_.__value_.__r.__words[0] = 0;
  if ((v69[3] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  v28 = 0;
  v29 = 1;
  do
  {
    v30 = v29;
    v31 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
    if (!v31)
    {
      v49 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289026;
        v66 = 2082;
        v67 = "";
        _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ctsa,sendIgneousFollowUpAlert,infoDictList invalid}", buf, 0x12u);
      }

      CFRelease(theArray);
      CFRelease(v53);
      CFRelease(cf);
      goto LABEL_61;
    }

    if (v28)
    {
      [NSString stringWithUTF8String:"es-US"];
    }

    else
    {
      [NSString stringWithUTF8String:"en-US"];
    }
    v32 = ;
    v33 = sub_1000CF658(v32);

    valuePtr = v33;
    v34 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
    if (!v34)
    {
      v50 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289026;
        v66 = 2082;
        v67 = "";
        _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ctsa,sendIgneousFollowUpAlert,item1 invalid}", buf, 0x12u);
      }

LABEL_60:
      CFRelease(v31);
      CFRelease(theArray);
      CFRelease(v53);
      CFRelease(cf);
LABEL_61:
      v21 = 0;
      goto LABEL_66;
    }

    CFArrayAppendValue(v31, v34);
    CFRelease(v34);
    if (v28)
    {
      v35 = a4;
    }

    else
    {
      v35 = a3;
    }

    if (*(v35 + 23) >= 0)
    {
      v36 = v35;
    }

    else
    {
      v36 = *v35;
    }

    v37 = CFStringCreateWithCString(kCFAllocatorDefault, v36, 0x8000100u);
    if (!v37)
    {
      v51 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289026;
        v66 = 2082;
        v67 = "";
        _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ctsa,sendIgneousFollowUpAlert,item2 invalid}", buf, 0x12u);
      }

      goto LABEL_60;
    }

    CFArrayAppendValue(v31, v37);
    CFArrayAppendValue(theArray, v31);
    CFRelease(v37);
    CFRelease(v31);
    v29 = 0;
    v28 = 1;
  }

  while ((v30 & 1) != 0);
  if (v58 >= 0)
  {
    v38 = __p;
  }

  else
  {
    v38 = __p[0];
  }

  v39 = CFStringCreateWithCString(kCFAllocatorDefault, v38, 0x8000100u);
  CFDictionarySetValue(v53, kAppleSafetyAlert_Earthquake_UniqueID_Key, v39);
  if (v39)
  {
    CFRelease(v39);
  }

  CFDictionarySetValue(v53, kAppleSafetyAlert_Earthquake_Info_Key, theArray);
  CFDictionarySetValue(cf, kAppleSafetyAlert_Trigger_Earthquake_Key, v53);
  v40 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289283;
    v66 = 2082;
    v67 = "";
    v68 = 2113;
    *v69 = cf;
    _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ctsa,sendIgneousFollowUpAlert, rootDict:%{private, location:escape_only}@}", buf, 0x1Cu);
  }

  LOBYTE(valuePtr) = 0;
  v41 = *(v52 + 208);
  v42 = _CTServerConnectionSendAppleSafetyAlert();
  v43 = valuePtr;
  v44 = SALogObjectGeneral;
  v45 = os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT);
  if (v43)
  {
    if (v45)
    {
      *buf = 68289026;
      v66 = 2082;
      v67 = "";
      v46 = "{msg%{public}.0s:#ctsa,sendIgneousFollowUpAlert sent successfully }";
      v47 = v44;
      v48 = 18;
      goto LABEL_64;
    }
  }

  else if (v45)
  {
    *buf = 68290051;
    v66 = 2082;
    *&buf[4] = 0;
    v67 = "";
    v68 = 1026;
    *v69 = v42;
    *&v69[4] = 1026;
    *&v69[6] = HIDWORD(v42);
    v70 = 2113;
    v71 = cf;
    v72 = 2113;
    v73 = v53;
    v46 = "{msg%{public}.0s:#ctsa,Igneous,didFailWithError, errordomain:%{public}d, error:%{public}d, rootDict:%{private, location:escape_only}@, infoDictMain:%{private, location:escape_only}@}";
    v47 = v44;
    v48 = 50;
LABEL_64:
    _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, v46, buf, v48);
  }

  CFRelease(theArray);
  CFRelease(v53);
  CFRelease(cf);
  v21 = 1;
LABEL_66:
  if (SHIBYTE(v58) < 0)
  {
    operator delete(__p[0]);
  }

LABEL_17:
  sub_10002D804(v63);
  sub_10002DA28(v61);
  *buf = &v59[1] + 8;
  sub_100005208(buf);
  *buf = v59;
  sub_100005208(buf);
  return v21;
}

void sub_1000D0768(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *a22)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  sub_10002BE00(&a22);
  _Unwind_Resume(a1);
}

BOOL sub_1000D0828(SAPlatformInfo *a1, uint64_t a2, uint64_t *a3, uint64_t a4, int a5)
{
  v9 = SAPlatformInfo::instance(a1);
  v10 = [*v9 isEqualToString:@"Watch"];
  v11 = SALogObjectGeneral;
  v12 = *(v9 + 8);
  v13 = os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT);
  if (!v10 || (v12 & 1) != 0)
  {
    if (v13)
    {
      *buf = 68289026;
      v51 = 0;
      v52 = 2082;
      v53 = "";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ctsa,cellularWatchOrPhone}", buf, 0x12u);
    }

    v20 = *(a2 + 23);
    if ((v20 & 0x80u) != 0)
    {
      v20 = *(a2 + 8);
    }

    if (!v20)
    {
      goto LABEL_51;
    }

    v21 = *(a3 + 23);
    if ((v21 & 0x80u) != 0)
    {
      v21 = a3[1];
    }

    if (v21)
    {
      cf = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      if (cf)
      {
        theDict = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        if (theDict)
        {
          theArray = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
          if (theArray)
          {
            v22 = 0;
            v23 = 1;
            while (1)
            {
              v24 = v23;
              if (v22)
              {
                v25 = *(a4 + 23);
                if ((v25 & 0x80u) != 0)
                {
                  v25 = *(a4 + 8);
                }

                if (!v25)
                {
LABEL_44:
                  if (*(a2 + 23) >= 0)
                  {
                    v35 = a2;
                  }

                  else
                  {
                    v35 = *a2;
                  }

                  v36 = CFStringCreateWithCString(kCFAllocatorDefault, v35, 0x8000100u);
                  CFDictionarySetValue(theDict, kAppleSafetyAlert_Earthquake_UniqueID_Key, v36);
                  valuePtr = -1;
                  if (a5 == 2)
                  {
                    v39 = 2;
                  }

                  else
                  {
                    if (a5 != 1)
                    {
                      if (!a5)
                      {
                        valuePtr = 0;
                      }

                      goto LABEL_71;
                    }

                    v39 = 1;
                  }

                  valuePtr = v39;
LABEL_71:
                  v40 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
                  CFDictionarySetValue(theDict, @"AppleSafetyAlert_IgneousAlertLevel", v40);
                  if (v36)
                  {
                    CFRelease(v36);
                  }

                  if (v40)
                  {
                    CFRelease(v40);
                  }

                  CFDictionarySetValue(theDict, kAppleSafetyAlert_Earthquake_Info_Key, theArray);
                  CFDictionarySetValue(cf, kAppleSafetyAlert_Trigger_Earthquake_Key, theDict);
                  v41 = SALogObjectGeneral;
                  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 68289283;
                    v51 = 0;
                    v52 = 2082;
                    v53 = "";
                    v54 = 2113;
                    *v55 = cf;
                    _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ctsa,displayIgneousBleAlert, rootDict:%{private, location:escape_only}@}", buf, 0x1Cu);
                  }

                  v42 = *(a1 + 26);
                  v43 = _CTServerConnectionSendAppleSafetyAlert();
                  v44 = SALogObjectGeneral;
                  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 68290051;
                    v52 = 2082;
                    v51 = 0;
                    v53 = "";
                    v54 = 1026;
                    *v55 = v43;
                    *&v55[4] = 1026;
                    *&v55[6] = HIDWORD(v43);
                    v56 = 2113;
                    v57 = cf;
                    v58 = 2113;
                    v59 = theDict;
                    _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ctsa,Igneous,didFailWithError, errordomain:%{public}d, error:%{public}d, rootDict:%{private, location:escape_only}@, infoDictMain:%{private, location:escape_only}@}", buf, 0x32u);
                  }

                  CFRelease(theDict);
                  CFRelease(cf);
                  CFRelease(theArray);
                  return 1;
                }

                Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
                if (!Mutable)
                {
                  goto LABEL_62;
                }

                v27 = [NSString stringWithUTF8String:"es-US"];
                v28 = sub_1000CF658(v27);
              }

              else
              {
                Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
                if (!Mutable)
                {
LABEL_62:
                  v37 = SALogObjectGeneral;
                  result = os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT);
                  if (!result)
                  {
                    return result;
                  }

                  *buf = 68289026;
                  v51 = 0;
                  v52 = 2082;
                  v53 = "";
                  v38 = "{msg%{public}.0s:#ctsa,displayIgneousBleAlert,infoDictList invalid}";
                  goto LABEL_53;
                }

                v27 = [NSString stringWithUTF8String:"en-US"];
                v28 = sub_1000CF658(v27);
              }

              v29 = v28;

              valuePtr = v29;
              v30 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
              if (!v30)
              {
                v37 = SALogObjectGeneral;
                if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
                {
                  return 0;
                }

                *buf = 68289026;
                v51 = 0;
                v52 = 2082;
                v53 = "";
                v38 = "{msg%{public}.0s:#ctsa,displayIgneousBleAlert,item1 invalid}";
                goto LABEL_53;
              }

              CFArrayAppendValue(Mutable, v30);
              CFRelease(v30);
              if (v22)
              {
                v31 = a4;
              }

              else
              {
                v31 = a3;
              }

              v32 = (a4 + 23);
              if ((v22 & 1) == 0)
              {
                v32 = a3 + 23;
              }

              v33 = *v32 >= 0 ? v31 : *v31;
              v34 = CFStringCreateWithCString(kCFAllocatorDefault, v33, 0x8000100u);
              if (!v34)
              {
                break;
              }

              CFArrayAppendValue(Mutable, v34);
              CFArrayAppendValue(theArray, Mutable);
              CFRelease(v34);
              CFRelease(Mutable);
              v23 = 0;
              v22 = 1;
              if ((v24 & 1) == 0)
              {
                goto LABEL_44;
              }
            }

            v37 = SALogObjectGeneral;
            if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
            {
              return 0;
            }

            *buf = 68289026;
            v51 = 0;
            v52 = 2082;
            v53 = "";
            v38 = "{msg%{public}.0s:#ctsa,displayIgneousBleAlert,item2 invalid}";
          }

          else
          {
            v37 = SALogObjectGeneral;
            result = os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT);
            if (!result)
            {
              return result;
            }

            *buf = 68289026;
            v51 = 0;
            v52 = 2082;
            v53 = "";
            v38 = "{msg%{public}.0s:#ctsa,displayIgneousBleAlert,infoDict invalid}";
          }
        }

        else
        {
          v37 = SALogObjectGeneral;
          result = os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT);
          if (!result)
          {
            return result;
          }

          *buf = 68289026;
          v51 = 0;
          v52 = 2082;
          v53 = "";
          v38 = "{msg%{public}.0s:#ctsa,infoDictMain invalid}";
        }
      }

      else
      {
        v37 = SALogObjectGeneral;
        result = os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT);
        if (!result)
        {
          return result;
        }

        *buf = 68289026;
        v51 = 0;
        v52 = 2082;
        v53 = "";
        v38 = "{msg%{public}.0s:#ctsa,rootDict invalid}";
      }
    }

    else
    {
LABEL_51:
      v37 = SALogObjectGeneral;
      result = os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT);
      if (!result)
      {
        return result;
      }

      *buf = 68289026;
      v51 = 0;
      v52 = 2082;
      v53 = "";
      v38 = "{msg%{public}.0s:#ctsa,displayIgneousBleAlert invalid data}";
    }

LABEL_53:
    _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, v38, buf, 0x12u);
    return 0;
  }

  else
  {
    if (v13)
    {
      *buf = 68289026;
      v51 = 0;
      v52 = 2082;
      v53 = "";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ctsa,wifiOnlyWatch}", buf, 0x12u);
    }

    v14 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    CFDictionarySetValue(v14, @"kCTSMSCellBroadcastBundleIdentifier", @"com.apple.Default");
    CFDictionarySetValue(v14, @"PhoneCallIsActive", &__kCFBooleanFalse);
    CFDictionarySetValue(v14, @"UserConfigurable", &__kCFBooleanTrue);
    if (*(a3 + 23) >= 0)
    {
      v15 = a3;
    }

    else
    {
      v15 = *a3;
    }

    CFDictionarySetValue(v14, @"kCTSMSCellBroadcastString", [NSString stringWithUTF8String:v15]);
    CFDictionarySetValue(v14, @"NotificationTitle", @"Earthquake Alert");
    CFDictionarySetValue(v14, @"SwitchName", @"Advanced Earthquake Alert");
    v16 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    CFDictionarySetValue(v16, @"SoundAlertDeviceInMute", &__kCFBooleanFalse);
    CFDictionarySetValue(v16, @"UserConfigurable", &__kCFBooleanTrue);
    CFDictionarySetValue(v16, @"EnabledByDefault", &__kCFBooleanFalse);
    CFDictionarySetValue(v14, @"AlertType", v16);
    v17 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    CFDictionarySetValue(v17, @"Vibration", @"cbs_vibe_ca.plist");
    if ((a5 + 1) <= 3)
    {
      CFDictionarySetValue(v17, @"Sound", off_1001404C0[a5 + 1]);
    }

    CFDictionarySetValue(v14, @"AlertConfiguration", v17);
    v18 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289283;
      v51 = 0;
      v52 = 2082;
      v53 = "";
      v54 = 2113;
      *v55 = v14;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ctsa,preparedForCT, emgAlertNotif:%{private, location:escape_only}@}", buf, 0x1Cu);
    }

    return 1;
  }
}

void sub_1000D129C(uint64_t a1, uint64_t *a2)
{
  v2 = a2[1];
  v3 = *a2;
  v4 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_100030DE8(&v3);
  if (v4)
  {
    sub_10002A838(v4);
  }
}

void sub_1000D12EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_10002A838(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000D1304(uint64_t a1, uint64_t a2)
{
  v4 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 68289026;
    v9[1] = 0;
    v10 = 2082;
    v11 = "";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ctsa,sendPdu}", v9, 0x12u);
  }

  if (*(a2 + 23) >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  v6 = CFStringCreateWithCString(kCFAllocatorDefault, v5, 0x8000100u);
  if (v6)
  {
    v7 = v6;
    v8 = *(a1 + 208);
    _CTServerConnectionInjectCellBroadcastMessageWithWac();
    CFRelease(v7);
  }
}

__int128 *sub_1000D1410(uint64_t a1, int a2)
{
  v4 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 68289282;
    v8[1] = 0;
    v9 = 2082;
    v10 = "";
    v11 = 1026;
    v12 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ctsa,onCompanionNearby, Companion:%{public}d}", v8, 0x18u);
  }

  *(a1 + 224) = a2;
  v5 = *(a1 + 208);
  EnhancedDeliveryState = SACoreTelephony::getEnhancedDeliveryState();
  return SACoreTelephony::onEnhanceDeliveryStateChange(a1, EnhancedDeliveryState);
}

void sub_1000D1500(uint64_t a1)
{
  v2 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 68289026;
    v10 = 0;
    v11 = 2082;
    v12 = "";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ctsa,onLocationChanged}", &v9, 0x12u);
  }

  Current = CFAbsoluteTimeGetCurrent();
  v4 = *(a1 + 8);
  v5 = Current - v4;
  v6 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 68289794;
    v10 = 0;
    v11 = 2082;
    v12 = "";
    v13 = 1026;
    v14 = v5 < 3600.0;
    v15 = 2050;
    v16 = Current;
    v17 = 2050;
    v18 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ctsa,onLocationChanged, isEDRecentlyUpdated:%{public}d, curTime:%{public}0.3f, fLastEDUpdateTime_s:%{public}0.3f}", &v9, 0x2Cu);
  }

  if (v5 >= 3600.0)
  {
    v7 = *(a1 + 208);
    EnhancedDeliveryState = SACoreTelephony::getEnhancedDeliveryState();
    SACoreTelephony::onEnhanceDeliveryStateChange(a1, EnhancedDeliveryState);
  }
}

__int128 *sub_1000D1694(SACoreTelephony *a1)
{
  v2 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 68289026;
    v6[1] = 0;
    v7 = 2082;
    v8 = "";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ctsa,onAssetReceived}", v6, 0x12u);
  }

  v3 = *(a1 + 26);
  EnhancedDeliveryState = SACoreTelephony::getEnhancedDeliveryState();
  return SACoreTelephony::onEnhanceDeliveryStateChange(a1, EnhancedDeliveryState);
}

void sub_1000D1768(uint64_t a1)
{
  sub_1000D17A0(a1);

  operator delete();
}

void *sub_1000D17A0(uint64_t a1)
{
  *a1 = off_100140448;

  sub_1000D1804((a1 + 216), 0);

  return sub_1000CCFE0(a1);
}

SACoreTelephonyClientHelper *sub_1000D1804(SACoreTelephonyClientHelper **a1, SACoreTelephonyClientHelper *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    SACoreTelephonyClientHelper::~SACoreTelephonyClientHelper(result);

    operator delete();
  }

  return result;
}

void *SARegulatoryProd::SARegulatoryProd(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  sub_10000F1DC(v14, a3);
  *a1 = off_10013FBE0;
  sub_10000F274(v14);
  *a1 = off_1001404F0;
  v6 = v5;
  a1[1] = v6;
  sub_10000F1DC((a1 + 2), a3);
  a1[6] = 0;
  v7 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v11[0] = 68289026;
    v11[1] = 0;
    v12 = 2082;
    v13 = "";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#reg,init}", v11, 0x12u);
  }

  v8 = [[CLRegulatoryConfig alloc] initWithQueue:a1[1] defaultConfig:0];
  v9 = a1[6];
  a1[6] = v8;

  return a1;
}

void sub_1000D19F0(uint64_t a1, CLLocationDegrees a2, CLLocationDegrees a3, double a4)
{
  v8 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    v16 = 0;
    v17 = 2082;
    v18 = "";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#reg,getCountryForLocation}", buf, 0x12u);
  }

  v9 = CLLocationCoordinate2DMake(a2, a3);
  v10 = [CLLocation alloc];
  v11 = +[NSDate date];
  v12 = [v10 initWithCoordinate:v11 altitude:v9.latitude horizontalAccuracy:v9.longitude verticalAccuracy:0.0 timestamp:{a4, -1.0}];

  v13 = *(a1 + 48);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000D1BAC;
  v14[3] = &unk_100140510;
  v14[4] = a1;
  [v13 fetchInfoForLocation:v12 withReply:v14];
}

void sub_1000D1BAC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v20 = a2;
  v7 = a3;
  v19 = v7;
  v8 = a4;
  v9 = *(a1 + 32);
  v17[0] = v9;
  v17[1] = &v20;
  v17[2] = &v19;
  v17[3] = &v18;
  v18 = v8;
  if (v7 && !v8)
  {
    v10 = [v7 objectForKey:@"kCLRegGeoRegionMatchedKey"];
    if (!v10)
    {
      sub_1000D1E68(v17);
LABEL_19:

      goto LABEL_20;
    }

    v11 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2113;
      *&buf[20] = v20;
      v22 = 2113;
      v23 = v19;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#reg,fetchInfoForLocationReply, config:%{private, location:escape_only}@, info:%{private, location:escape_only}@}", buf, 0x26u);
    }

    v12 = [v10 objectForKey:@"kCLRegNameKey"];
    v13 = v12;
    if (v12)
    {
      v14 = v12;
      sub_1000060C4(buf, [v13 UTF8String]);
      if ((buf[23] & 0x80000000) != 0)
      {
        if (*&buf[8])
        {
          sub_100004CEC(&v15, *buf, *&buf[8]);
          goto LABEL_14;
        }
      }

      else if (buf[23])
      {
        v15 = *buf;
        v16 = *&buf[16];
LABEL_14:
        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }

        *buf = v15;
        *&buf[16] = v16;
        (*(*v9 + 24))(v9, buf);
        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }

        goto LABEL_19;
      }
    }

    else
    {
      memset(buf, 0, 24);
    }

    sub_1000060C4(&v15, "noCountry");
    goto LABEL_14;
  }

  sub_1000D1E68(v17);
LABEL_20:
}

void sub_1000D1E68(uint64_t *a1)
{
  v2 = *a1;
  v3 = SALogObjectWarning;
  if (os_log_type_enabled(SALogObjectWarning, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *a1[1];
    v5 = *a1[2];
    v6 = *a1[3];
    __p = 68289795;
    *v8 = 2082;
    *&v8[2] = "";
    *&v8[10] = 2113;
    *&v8[12] = v4;
    v9 = 2113;
    v10 = v5;
    v11 = 2113;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#reg,fetchInfoForLocationReply,onError, config:%{private, location:escape_only}@, info:%{private, location:escape_only}@, error:%{private, location:escape_only}@}", &__p, 0x30u);
  }

  __p = 0;
  *v8 = 0;
  *&v8[8] = 0;
  (*(*v2 + 24))(v2, &__p);
  if ((v8[15] & 0x80000000) != 0)
  {
    operator delete(__p);
  }
}

void sub_1000D1FA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000D1FBC(uint64_t a1, uint64_t a2)
{
  v4 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    v22 = 0;
    v23 = 2082;
    v24 = "";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#reg,updateCountryName}", buf, 0x12u);
  }

  v5 = sub_100002DB0();
  v6 = *(a2 + 23);
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a2 + 8);
  }

  if (*(v5 + 109) == 1 && (*(v5 + 108) & 1) != 0)
  {
    if (v6)
    {
      v7 = 257;
    }

    else
    {
      v7 = 256;
    }

    *(v5 + 72) = v7;
  }

  else if (*(v5 + 145) == 1)
  {
    *(v5 + 145) = 0;
  }

  memset(&v20, 0, sizeof(v20));
  v8 = sub_100002DB0();
  std::string::operator=(&v20, (v8 + 5));
  v9 = HIBYTE(v20.__r_.__value_.__r.__words[2]);
  if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v20.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v20.__r_.__value_.__l.__size_;
  }

  v11 = *(a2 + 23);
  v12 = v11;
  if ((v11 & 0x80u) != 0)
  {
    v11 = *(a2 + 8);
  }

  if (size != v11 || ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v13 = &v20) : (v13 = v20.__r_.__value_.__r.__words[0]), v12 >= 0 ? (v14 = a2) : (v14 = *a2), memcmp(v13, v14, size)))
  {
    v15 = sub_100002DB0();
    if (*(a2 + 23) < 0)
    {
      sub_100004CEC(&__p, *a2, *(a2 + 8));
    }

    else
    {
      __p = *a2;
    }

    if (*(v15 + 109) == 1 && (*(v15 + 108) & 1) != 0)
    {
      v16 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        p_p = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        *buf = 68289283;
        v22 = 0;
        v23 = 2082;
        v24 = "";
        v25 = 2081;
        v26 = p_p;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ss,setCountryName, countryName:%{private, location:escape_only}s}", buf, 0x1Cu);
      }

      std::string::operator=((v15 + 5), &__p);
    }

    else
    {
      if (*(v15 + 103) < 0)
      {
        operator delete(*(v15 + 10));
      }

      *(v15 + 10) = 0;
      *(v15 + 11) = 0;
      *(v15 + 12) = 0;
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v18 = *(a1 + 40);
    if (!v18)
    {
      sub_1000053C4();
    }

    (*(*v18 + 48))(v18);
    v9 = HIBYTE(v20.__r_.__value_.__r.__words[2]);
  }

  if (v9 < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }
}

void sub_1000D227C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000D22BC(uint64_t a1)
{
  sub_1000D22F4(a1);

  operator delete();
}

uint64_t sub_1000D22F4(uint64_t a1)
{
  *a1 = off_1001404F0;

  sub_10000F274(a1 + 16);
  return a1;
}

void SAMobileAssetProd::SAMobileAssetProd(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  sub_10000F1DC(v8, a3);
  *a1 = off_1001405F0;
  sub_10000F274(v8);
  *a1 = off_100140558;
  v6 = v5;
  *(a1 + 8) = v6;
  sub_10000F1DC(a1 + 16, a3);
  SAMobileAssetProdHelper::SAMobileAssetProdHelper(a1 + 48, v6);
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 136) = 0;
  *(a1 + 144) = 1;
  *(a1 + 152) = 5;
  *(a1 + 160) = 0xBFF0000000000000;
  *(a1 + 168) = 257;
  *(a1 + 172) = 0;
  *(a1 + 176) = 0;
  sub_1000060C4(&__p, "SaMaSm");
  operator new();
}

void sub_1000D2AE8(void *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    __cxa_rethrow();
  }

  JUMPOUT(0x1000D2BE8);
}

void sub_1000D2B0C(void *a1, int a2)
{
  if (a2)
  {
    sub_10000DB70(a1);
  }

  JUMPOUT(0x1000D2BE8);
}

void sub_1000D2B3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_10000F274(va);
  JUMPOUT(0x1000D2BA4);
}

void sub_1000D2B4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (*(v14 + 303) < 0)
  {
    operator delete(*(v19 + 32));
  }

  sub_100038FF0(*(v14 + 248));
  v21 = *(v14 + 224);
  if (v21)
  {
    sub_10002A838(v21);
  }

  sub_10003906C(*v18);
  sub_10002A838(v17);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_10001CB38(v16);
  sub_1000D45BC((v14 + 48));
  sub_10000F274(v14 + 16);

  _Unwind_Resume(a1);
}

uint64_t *sub_1000D2BF0(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v16 = a2;
  v4 = SALogObjectGeneral;
  if (!(a4 & 1 | a3))
  {
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      v18 = 2082;
      v19 = "";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Assertion failed}", buf, 0x12u);
      v4 = SALogObjectGeneral;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289795;
      *&buf[4] = 0;
      v18 = 2082;
      v19 = "";
      v20 = 2081;
      v21 = "/Library/Caches/com.apple.xbs/Sources/SafetyAlerts/Sources/Daemon/framework/util/SAStateMachine.h";
      v22 = 2081;
      *v23 = "setStateHandler";
      *&v23[8] = 1026;
      *&v23[10] = 93;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:AssertionFailure, file:%{private, location:escape_only}s, function:%{private, location:escape_only}s, line:%{public}d}", buf, 0x2Cu);
    }

    __assert_rtn("setStateHandler", "SAStateMachine.h", 93, "false && Assertion failed");
  }

  v9 = SALogObjectGeneral;
  v10 = *(a1 + 120);
  if (os_log_type_enabled(v9, v10))
  {
    v11 = (a1 + 96);
    if (*(a1 + 119) < 0)
    {
      v11 = *v11;
    }

    sub_1000060C4(__p, off_1001407F0[a2]);
    if (v15 >= 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = __p[0];
    }

    *buf = 68289794;
    *&buf[4] = 0;
    v18 = 2082;
    v19 = "";
    v20 = 2082;
    v21 = v11;
    v22 = 1026;
    *v23 = a2;
    *&v23[4] = 2082;
    *&v23[6] = v12;
    _os_log_impl(&_mh_execute_header, v9, v10, "{msg%{public}.0s:StateMachine,SetState, name:%{public, location:escape_only}s, stateInt:%{public}d, stateStr:%{public, location:escape_only}s}", buf, 0x2Cu);
    if (v15 < 0)
    {
      operator delete(__p[0]);
    }
  }

  *buf = &v16;
  result = sub_100039170(a1 + 8, a2);
  result[5] = a3;
  result[6] = a4;
  return result;
}

uint64_t sub_1000D2E8C(uint64_t a1, int a2)
{
  result = 0;
  if (a2 <= 2)
  {
    if (!a2)
    {
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_1000D34B0;
      v11[3] = &unk_100140578;
      v11[4] = a1;
      v20 = 0;
      v19[0] = off_1001402A0;
      v19[1] = objc_retainBlock(v11);
      v20 = v19;
      SAMobileAssetProdHelper::query(a1 + 48, v19);
      sub_1000CB138(v19);
      return 0;
    }

    if (a2 != 2)
    {
      return result;
    }

    if (*(a1 + 320) == 1)
    {
      v5 = *(a1 + 328);
      if (v5)
      {
        v6 = *(a1 + 312);
        if ((v6 & 0xFFFFFFFFFFFFFFFDLL) == 0)
        {
          v7 = SALogObjectGeneral;
          if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 68289282;
            v15 = 2082;
            v16 = "";
            v17 = 1026;
            v18 = v6;
            _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#asset,InitialQuerySucceeded, result:%{public}d}", buf, 0x18u);
            v5 = *(a1 + 328);
          }

          v8 = SAMobileAssetProdHelper::getHighestVersion(a1 + 48, v5);
          v13[0] = off_100140700;
          v13[1] = a1;
          v13[3] = v13;
          SAMobileAssetProdHelper::readAsset(a1 + 48, v8, v13);
          sub_10003197C(v13);

          return 1;
        }
      }
    }

    v9 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 312);
      *buf = 68289282;
      v15 = 2082;
      v16 = "";
      v17 = 1026;
      v18 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#asset,InitialQueryFailed, result:%{public}d}", buf, 0x18u);
    }

    v12[0] = off_100140780;
    v12[1] = a1;
    v12[3] = v12;
    SAMobileAssetProdHelper::readAsset(a1 + 48, 0, v12);
    sub_10003197C(v12);
    return 2;
  }

  switch(a2)
  {
    case 3:
      return 2;
    case 4:
      v4 = SALogObjectGeneral;
      result = os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT);
      if (!result)
      {
        return result;
      }

      *buf = 68289026;
      v15 = 2082;
      v16 = "";
      goto LABEL_17;
    case 5:
      v4 = SALogObjectGeneral;
      result = os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT);
      if (result)
      {
        *buf = 68289026;
        v15 = 2082;
        v16 = "";
LABEL_17:
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#asset,#warning,spuriousMessage}", buf, 0x12u);
        return 0;
      }

      break;
  }

  return result;
}

void sub_1000D3208(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_10003197C(va);

  _Unwind_Resume(a1);
}

uint64_t sub_1000D3248(uint64_t a1, int a2)
{
  result = 1;
  if (a2 > 3)
  {
    if (a2 != 4)
    {
      if (a2 != 5)
      {
        return result;
      }

      v3 = SALogObjectGeneral;
      if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        return 1;
      }

      goto LABEL_11;
    }

LABEL_10:
    v3 = SALogObjectGeneral;
    if (!os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      return 1;
    }

LABEL_11:
    v4[0] = 68289026;
    v4[1] = 0;
    v5 = 2082;
    v6 = "";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#asset,#warning,spuriousMessage}", v4, 0x12u);
    return 1;
  }

  if (a2 == 2)
  {
    goto LABEL_10;
  }

  if (a2 == 3)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_1000D3388(uint64_t a1, int a2)
{
  switch(a2)
  {
    case 5:
      return 1;
    case 4:
      sub_1000D35EC(a1, *(a1 + 336));
      return 1;
    case 0:
      v4[0] = _NSConcreteStackBlock;
      v4[1] = 3221225472;
      v4[2] = sub_1000D3558;
      v4[3] = &unk_100140598;
      v6 = 0;
      v4[4] = a1;
      v5[0] = off_10013A9B0;
      v5[1] = objc_retainBlock(v4);
      v6 = v5;
      SAMobileAssetProdHelper::download(a1 + 48, v5);
      sub_10003197C(v5);
      break;
  }

  return 2;
}

void sub_1000D3494(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_10003197C(va);
  _Unwind_Resume(a1);
}

void sub_1000D34B0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v7 = a3;
  objc_storeStrong((v5 + 328), a3);
  *(v5 + 312) = a2;
  *(v5 + 320) = 1;
  sub_1000D3768(v5 + 184, 2);
  v6 = *(v5 + 328);
  *(v5 + 328) = 0;

  if (*(v5 + 320) == 1)
  {
    *(v5 + 320) = 0;
  }
}

void sub_1000D3558(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = a2;
  if (v5)
  {
    objc_storeStrong((v3 + 336), a2);
    sub_1000D3768(v3 + 184, 4);
    v4 = *(v3 + 336);
    *(v3 + 336) = 0;
  }

  else
  {
    sub_1000D3768(v3 + 184, 5);
  }
}

void sub_1000D35EC(void *a1, void *a2)
{
  v3 = a2;
  v4 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    v10 = 0;
    v11 = 2082;
    v12 = "";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#mobileAsset,onAssetReceived}", buf, 0x12u);
  }

  v8 = 0;
  *buf = 0;
  if (v3)
  {
    (*(*a1 + 24))(a1, buf, &v8);
  }

  *(sub_100002DB0() + 17) = v8;
  *(sub_100002DB0() + 16) = *buf;
  v5 = sub_10008E020();
  sub_10008E3E0(v5, v3);
  v6 = sub_10008E020();
  sub_10008E270(v6);
  v7 = a1[5];
  if (!v7)
  {
    sub_1000053C4();
  }

  (*(*v7 + 48))(v7);
}

void sub_1000D3768(uint64_t a1, uint64_t a2)
{
  ++*(a1 + 88);
  v64 = *(a1 + 4);
  if (!*(a1 + 32))
  {
    v55 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      v66 = 2082;
      v67 = "";
      _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Assertion failed}", buf, 0x12u);
      v55 = SALogObjectGeneral;
    }

    if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289795;
      *&buf[4] = 0;
      v66 = 2082;
      v67 = "";
      v68 = 2081;
      v69 = "/Library/Caches/com.apple.xbs/Sources/SafetyAlerts/Sources/Daemon/framework/util/SAStateMachine.h";
      v70 = 2081;
      v71 = "handleEvent";
      v72 = 1026;
      LODWORD(v73) = 115;
      _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:AssertionFailure, file:%{private, location:escape_only}s, function:%{private, location:escape_only}s, line:%{public}d}", buf, 0x2Cu);
    }

    __assert_rtn("handleEvent", "SAStateMachine.h", 115, "false && Assertion failed");
  }

  v3 = SALogObjectGeneral;
  if ((*(a1 + 48) & 1) == 0)
  {
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      v66 = 2082;
      v67 = "";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Assertion failed}", buf, 0x12u);
      v3 = SALogObjectGeneral;
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289795;
      *&buf[4] = 0;
      v66 = 2082;
      v67 = "";
      v68 = 2081;
      v69 = "/Library/Caches/com.apple.xbs/Sources/SafetyAlerts/Sources/Daemon/framework/util/SAStateMachine.h";
      v70 = 2081;
      v71 = "handleEvent";
      v72 = 1026;
      LODWORD(v73) = 116;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:AssertionFailure, file:%{private, location:escape_only}s, function:%{private, location:escape_only}s, line:%{public}d}", buf, 0x2Cu);
    }

    __assert_rtn("handleEvent", "SAStateMachine.h", 116, "false && Assertion failed");
  }

  v5 = SALogObjectGeneral;
  v6 = *(a1 + 120);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = (a1 + 96);
    if (*(a1 + 119) < 0)
    {
      v7 = *v7;
    }

    sub_1000060C4(v62, off_1001407F0[*(a1 + 4)]);
    v8 = v63;
    v9 = v62[0];
    sub_1000D455C(__p, a2);
    v10 = v62;
    if (v8 < 0)
    {
      v10 = v9;
    }

    if (v61 >= 0)
    {
      v11 = __p;
    }

    else
    {
      v11 = __p[0];
    }

    *buf = 68289794;
    *&buf[4] = 0;
    v66 = 2082;
    v67 = "";
    v68 = 2082;
    v69 = v7;
    v70 = 2082;
    v71 = v10;
    v72 = 2082;
    v73 = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "{msg%{public}.0s:StateMachineHandleEvent, name:%{public, location:escape_only}s, current_state:%{public, location:escape_only}s, event:%{public, location:escape_only}s}", buf, 0x30u);
    if (v61 < 0)
    {
      operator delete(__p[0]);
    }

    if (v63 < 0)
    {
      operator delete(v62[0]);
    }
  }

  v12 = *(a1 + 16);
  if (!v12)
  {
    goto LABEL_22;
  }

  v13 = a1 + 8;
  v14 = *(a1 + 4);
  v15 = a1 + 16;
  do
  {
    if (*(v12 + 32) >= v14)
    {
      v15 = v12;
    }

    v12 = *(v12 + 8 * (*(v12 + 32) < v14));
  }

  while (v12);
  if (v15 == a1 + 16 || v14 < *(v15 + 32))
  {
LABEL_22:
    v16 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      v66 = 2082;
      v67 = "";
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Assertion failed}", buf, 0x12u);
      v16 = SALogObjectGeneral;
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289795;
      *&buf[4] = 0;
      v66 = 2082;
      v67 = "";
      v68 = 2081;
      v69 = "/Library/Caches/com.apple.xbs/Sources/SafetyAlerts/Sources/Daemon/framework/util/SAStateMachine.h";
      v70 = 2081;
      v71 = "handleEvent";
      v72 = 1026;
      LODWORD(v73) = 123;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:AssertionFailure, file:%{private, location:escape_only}s, function:%{private, location:escape_only}s, line:%{public}d}", buf, 0x2Cu);
    }

    __assert_rtn("handleEvent", "SAStateMachine.h", 123, "false && Assertion failed");
  }

  v17 = *(v15 + 40);
  v18 = *(v15 + 48);
  v19 = (*(a1 + 32) + (v18 >> 1));
  if (v18)
  {
    v17 = *(*v19 + v17);
  }

  v20 = v17(v19, a2);
  v21 = v20;
  v59 = v20;
  if (a2 <= 1 && v20 != v64)
  {
    v56 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      v66 = 2082;
      v67 = "";
      _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Assertion failed}", buf, 0x12u);
      v56 = SALogObjectGeneral;
    }

    if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289795;
      *&buf[4] = 0;
      v66 = 2082;
      v67 = "";
      v68 = 2081;
      v69 = "/Library/Caches/com.apple.xbs/Sources/SafetyAlerts/Sources/Daemon/framework/util/SAStateMachine.h";
      v70 = 2081;
      v71 = "handleEvent";
      v72 = 1026;
      LODWORD(v73) = 128;
      _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:AssertionFailure, file:%{private, location:escape_only}s, function:%{private, location:escape_only}s, line:%{public}d}", buf, 0x2Cu);
    }

    __assert_rtn("handleEvent", "SAStateMachine.h", 128, "false && Assertion failed");
  }

  v22 = SALogObjectGeneral;
  if (*(a1 + 88) >= 2u && os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_ERROR))
  {
    v23 = (a1 + 96);
    if (*(a1 + 119) < 0)
    {
      v23 = *v23;
    }

    *buf = 68289282;
    v66 = 2082;
    v67 = "";
    v68 = 2082;
    v69 = v23;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:StateMachineNestedEvent, name:%{public, location:escape_only}s}", buf, 0x1Cu);
    v22 = SALogObjectGeneral;
  }

  v24 = v22;
  v25 = *(a1 + 120);
  if (os_log_type_enabled(v24, v25))
  {
    v26 = (a1 + 96);
    if (*(a1 + 119) < 0)
    {
      v26 = *v26;
    }

    sub_1000060C4(v62, off_1001407F0[v21]);
    if (v63 >= 0)
    {
      v27 = v62;
    }

    else
    {
      v27 = v62[0];
    }

    *buf = 68289538;
    *&buf[4] = 0;
    v66 = 2082;
    v67 = "";
    v68 = 2082;
    v69 = v26;
    v70 = 2082;
    v71 = v27;
    _os_log_impl(&_mh_execute_header, v24, v25, "{msg%{public}.0s:StateMachineOldState, name:%{public, location:escape_only}s, newState:%{public, location:escape_only}s}", buf, 0x26u);
    if (v63 < 0)
    {
      operator delete(v62[0]);
    }
  }

  v28 = v64;
  if (v21 != v64)
  {
    v29 = SALogObjectGeneral;
    v30 = *(a1 + 120);
    if (os_log_type_enabled(v29, v30))
    {
      v31 = (a1 + 96);
      if (*(a1 + 119) < 0)
      {
        v31 = *v31;
      }

      sub_1000060C4(v62, off_1001407F0[v28]);
      v32 = v63;
      v33 = v62[0];
      sub_1000060C4(__p, "Exit");
      v34 = v62;
      if (v32 < 0)
      {
        v34 = v33;
      }

      *buf = 68289794;
      if (v61 >= 0)
      {
        v35 = __p;
      }

      else
      {
        v35 = __p[0];
      }

      v66 = 2082;
      v67 = "";
      v68 = 2082;
      v69 = v31;
      v70 = 2082;
      v71 = v34;
      v72 = 2082;
      v73 = v35;
      _os_log_impl(&_mh_execute_header, v29, v30, "{msg%{public}.0s:StateMachineTransition, name:%{public, location:escape_only}s, oldState:%{public, location:escape_only}s, event:%{public, location:escape_only}s}", buf, 0x30u);
      if (v61 < 0)
      {
        operator delete(__p[0]);
      }

      if (v63 < 0)
      {
        operator delete(v62[0]);
      }
    }

    v36 = *(a1 + 32);
    *buf = &v64;
    v37 = sub_100039170(v13, v64);
    v38 = v37[5];
    v39 = v37[6];
    v40 = (v36 + (v39 >> 1));
    if (v39)
    {
      v38 = *(*v40 + v38);
    }

    v41 = v38(v40, 1);
    if (v41 != v64)
    {
      v57 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_ERROR))
      {
        *buf = 68289026;
        *&buf[4] = 0;
        v66 = 2082;
        v67 = "";
        _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Assertion failed}", buf, 0x12u);
        v57 = SALogObjectGeneral;
      }

      if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
      {
        *buf = 68289795;
        *&buf[4] = 0;
        v66 = 2082;
        v67 = "";
        v68 = 2081;
        v69 = "/Library/Caches/com.apple.xbs/Sources/SafetyAlerts/Sources/Daemon/framework/util/SAStateMachine.h";
        v70 = 2081;
        v71 = "handleEvent";
        v72 = 1026;
        LODWORD(v73) = 146;
        _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:AssertionFailure, file:%{private, location:escape_only}s, function:%{private, location:escape_only}s, line:%{public}d}", buf, 0x2Cu);
      }

      __assert_rtn("handleEvent", "SAStateMachine.h", 146, "false && Assertion failed");
    }

    *(a1 + 4) = v21;
    v42 = SALogObjectGeneral;
    v43 = *(a1 + 120);
    if (os_log_type_enabled(v42, v43))
    {
      v44 = (a1 + 96);
      if (*(a1 + 119) < 0)
      {
        v44 = *v44;
      }

      sub_1000060C4(v62, off_1001407F0[v21]);
      v45 = v63;
      v46 = v62[0];
      sub_1000060C4(__p, "Enter");
      v47 = v62;
      if (v45 < 0)
      {
        v47 = v46;
      }

      if (v61 >= 0)
      {
        v48 = __p;
      }

      else
      {
        v48 = __p[0];
      }

      *buf = 68289794;
      *&buf[4] = 0;
      v66 = 2082;
      v67 = "";
      v68 = 2082;
      v69 = v44;
      v70 = 2082;
      v71 = v47;
      v72 = 2082;
      v73 = v48;
      _os_log_impl(&_mh_execute_header, v42, v43, "{msg%{public}.0s:StateMachineTransition, name:%{public, location:escape_only}s, newState:%{public, location:escape_only}s, event:%{public, location:escape_only}s}", buf, 0x30u);
      if (v61 < 0)
      {
        operator delete(__p[0]);
      }

      if (v63 < 0)
      {
        operator delete(v62[0]);
      }
    }

    v49 = *(a1 + 32);
    *buf = &v59;
    v50 = sub_100039170(v13, v21);
    v51 = v50[5];
    v52 = v50[6];
    v53 = (v49 + (v52 >> 1));
    if (v52)
    {
      v51 = *(*v53 + v51);
    }

    v54 = v51(v53, 0);
    if (v54 != v59)
    {
      v58 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_ERROR))
      {
        *buf = 68289026;
        *&buf[4] = 0;
        v66 = 2082;
        v67 = "";
        _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Assertion failed}", buf, 0x12u);
        v58 = SALogObjectGeneral;
      }

      if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
      {
        *buf = 68289795;
        *&buf[4] = 0;
        v66 = 2082;
        v67 = "";
        v68 = 2081;
        v69 = "/Library/Caches/com.apple.xbs/Sources/SafetyAlerts/Sources/Daemon/framework/util/SAStateMachine.h";
        v70 = 2081;
        v71 = "handleEvent";
        v72 = 1026;
        LODWORD(v73) = 153;
        _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:AssertionFailure, file:%{private, location:escape_only}s, function:%{private, location:escape_only}s, line:%{public}d}", buf, 0x2Cu);
      }

      __assert_rtn("handleEvent", "SAStateMachine.h", 153, "false && Assertion failed");
    }
  }

  --*(a1 + 88);
}

void sub_1000D4434(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1000D4494(uint64_t a1)
{
  v2 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v3[0] = 68289026;
    v3[1] = 0;
    v4 = 2082;
    v5 = "";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#asset,process_startDownloading}", v3, 0x12u);
  }

  sub_1000D3768(a1 + 184, 3);
}

void sub_1000D4570(uint64_t a1)
{
  sub_1000D45F8(a1);

  operator delete();
}

uint64_t sub_1000D45A8(uint64_t result, _DWORD *a2, _DWORD *a3)
{
  *a2 = *(result + 72);
  *a3 = *(result + 76);
  return result;
}

uint64_t sub_1000D45F8(uint64_t a1)
{
  *a1 = off_100140558;

  sub_1000D4670(a1 + 184);
  sub_10001CB38(a1 + 80);
  sub_1000D45BC((a1 + 48));
  sub_10000F274(a1 + 16);

  return a1;
}

uint64_t sub_1000D4670(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = (a1 + 64);
  if (v2 != (a1 + 64))
  {
    v4 = (a1 + 96);
    do
    {
      v5 = *(v2 + 8);
      v6 = *v3;
      if (!*v3)
      {
        goto LABEL_17;
      }

      v7 = v3;
      do
      {
        if (*(v6 + 32) >= v5)
        {
          v7 = v6;
        }

        v6 = *(v6 + 8 * (*(v6 + 32) < v5));
      }

      while (v6);
      if (v7 != v3 && *(v7 + 8) <= v5 && (v8 = v7[5]) != 0)
      {
        (*(*v8 + 40))(v8);
        v9 = SALogObjectGeneral;
        v10 = *(a1 + 120);
        if (os_log_type_enabled(v9, v10))
        {
          v11 = a1 + 96;
          if (*(a1 + 119) < 0)
          {
            v11 = *v4;
          }

          sub_1000D455C(__p, v5);
          v12 = __p;
          if (v25 < 0)
          {
            v12 = __p[0];
          }

          *buf = 68289538;
          v27 = 0;
          v28 = 2082;
          v29 = "";
          v30 = 2082;
          v31 = v11;
          v32 = 2082;
          v33 = v12;
          v13 = v9;
          v14 = v10;
          v15 = "{msg%{public}.0s:StateMachine,CancelTimeout, name:%{public, location:escape_only}s, event:%{public, location:escape_only}s}";
LABEL_23:
          _os_log_impl(&_mh_execute_header, v13, v14, v15, buf, 0x26u);
          if (v25 < 0)
          {
            operator delete(__p[0]);
          }
        }
      }

      else
      {
LABEL_17:
        v9 = SALogObjectGeneral;
        v16 = *(a1 + 120);
        if (os_log_type_enabled(v9, v16))
        {
          v17 = a1 + 96;
          if (*(a1 + 119) < 0)
          {
            v17 = *v4;
          }

          sub_1000D455C(__p, v5);
          v18 = __p;
          if (v25 < 0)
          {
            v18 = __p[0];
          }

          *buf = 68289538;
          v27 = 0;
          v28 = 2082;
          v29 = "";
          v30 = 2082;
          v31 = v17;
          v32 = 2082;
          v33 = v18;
          v13 = v9;
          v14 = v16;
          v15 = "{msg%{public}.0s:StateMachine,CancelTimeout,TimerNotRunning, name:%{public, location:escape_only}s, event:%{public, location:escape_only}s}";
          goto LABEL_23;
        }
      }

      v19 = v2[1];
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
          v20 = v2[2];
          v21 = *v20 == v2;
          v2 = v20;
        }

        while (!v21);
      }

      v2 = v20;
    }

    while (v20 != v3);
  }

  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  sub_100038FF0(*(a1 + 64));
  v22 = *(a1 + 40);
  if (v22)
  {
    sub_10002A838(v22);
  }

  sub_10003906C(*(a1 + 16));
  return a1;
}

void sub_1000D4930(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {

    sub_10000DB70(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000D4964(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1000D49A0(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000D4A50(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_100140680;
  a2[1] = v2;
  return result;
}

uint64_t sub_1000D4A84(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000D4B40(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_100140700;
  a2[1] = v2;
  return result;
}

uint64_t sub_1000D4B78(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000D4C34(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_100140780;
  a2[1] = v2;
  return result;
}

uint64_t sub_1000D4C6C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1000D4FE8(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) updateLocationAuthorized];
  objc_autoreleasePoolPop(v2);
}

uint64_t SACoreLocationProd::SACoreLocationProd(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  sub_10008B39C(v14, a3);
  sub_10001EF44(v13, a4);
  v8 = v7;
  *a1 = off_10013F5D0;
  *(a1 + 8) = v8;
  sub_10001E0C0(v13);
  sub_10008B31C(v14);
  *a1 = off_100140870;
  sub_10008B39C(a1 + 16, a3);
  sub_10001EF44(a1 + 48, a4);
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  v9 = vdupq_n_s64(0xC08F400000000000);
  *(a1 + 96) = v9;
  *(a1 + 112) = v9;
  *(a1 + 128) = xmmword_1000E3400;
  v10 = *(a1 + 8);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000D5B34;
  v12[3] = &unk_1001390D0;
  v12[4] = a1;
  dispatch_async(v10, v12);

  return a1;
}

void sub_1000D5AEC(_Unwind_Exception *a1)
{
  sub_10008B31C(v1 + 16);

  _Unwind_Resume(a1);
}

void sub_1000D5B34(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_autoreleasePoolPush();
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000D5BBC;
  v3[3] = &unk_1001390D0;
  v3[4] = v1;
  sub_1000D5BBC(v3);
}

void sub_1000D5BBC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [[SACoreLocationClient alloc] initWithQueue:*(v1 + 8)];
  v3 = *(v1 + 80);
  *(v1 + 80) = v2;

  [*(v1 + 80) setClProxy:v1];
  SATimer::create(*(v1 + 8));
}

void sub_1000D5C8C(uint64_t a1)
{
  v2 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    v6 = 0;
    v7 = 2082;
    v8 = "";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#lm,scheduleSingleShotLocationRequest}", buf, 0x12u);
  }

  v3 = *(a1 + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D60F8;
  block[3] = &unk_1001390D0;
  block[4] = a1;
  dispatch_async(v3, block);
}

uint64_t sub_1000D5D98(uint64_t a1)
{
  v2 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    v7 = 0;
    v8 = 2082;
    v9 = "";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#lm,startMonitoring}", buf, 0x12u);
  }

  v3 = *(a1 + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D5EA8;
  block[3] = &unk_1001390D0;
  block[4] = a1;
  dispatch_async(v3, block);
  return 1;
}

void sub_1000D5EA8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_autoreleasePoolPush();
  v3 = *(v1 + 80);
  if (v3)
  {
    [v3 startMonitoring];
  }

  objc_autoreleasePoolPop(v2);
}

id sub_1000D5F34(uint64_t a1)
{
  result = *(*(a1 + 32) + 80);
  if (result)
  {
    return [result startMonitoring];
  }

  return result;
}

uint64_t sub_1000D5F48(uint64_t a1)
{
  v2 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    v7 = 0;
    v8 = 2082;
    v9 = "";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#lm,,stopMonitoring}", buf, 0x12u);
  }

  v3 = *(a1 + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D6058;
  block[3] = &unk_1001390D0;
  block[4] = a1;
  dispatch_async(v3, block);
  return 1;
}

void sub_1000D6058(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_autoreleasePoolPush();
  v3 = *(v1 + 80);
  if (v3)
  {
    [v3 stopMonitoring];
  }

  objc_autoreleasePoolPop(v2);
}

id sub_1000D60E4(uint64_t a1)
{
  result = *(*(a1 + 32) + 80);
  if (result)
  {
    return [result stopMonitoring];
  }

  return result;
}

void sub_1000D60F8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_autoreleasePoolPush();
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000D6180;
  v3[3] = &unk_1001390D0;
  v3[4] = v1;
  sub_1000D6180(v3);
  objc_autoreleasePoolPop(v2);
}

uint64_t sub_1000D6180(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = *(v1 + 88);
  if (result)
  {
    (*(*result + 40))(result);
    v3 = *(v1 + 88);
    v4 = *(sub_100042820() + 2);
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1000D62E4;
    v5[3] = &unk_1001390D0;
    v5[4] = v1;
    v7 = 0;
    v6[0] = off_100138F50;
    v6[1] = objc_retainBlock(v5);
    v7 = v6;
    (*(*v3 + 16))(v3, v6, v4);
    return sub_10000F274(v6);
  }

  return result;
}

void sub_1000D62C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_10000F274(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000D62E4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 80);
  if (v2)
  {
    [v2 requestSingleShotLocation];
  }

  return sub_1000D5C8C(v1);
}

void sub_1000D6324(uint64_t a1)
{
  v2 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    v6 = 0;
    v7 = 2082;
    v8 = "";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#lm,singleShotLocationRequest}", buf, 0x12u);
  }

  v3 = *(a1 + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D6430;
  block[3] = &unk_1001390D0;
  block[4] = a1;
  dispatch_async(v3, block);
}

void sub_1000D6430(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_autoreleasePoolPush();
  v3 = *(v1 + 80);
  if (v3)
  {
    [v3 requestSingleShotLocation];
  }

  objc_autoreleasePoolPop(v2);
}

id sub_1000D64BC(uint64_t a1)
{
  result = *(*(a1 + 32) + 80);
  if (result)
  {
    return [result requestSingleShotLocation];
  }

  return result;
}

void sub_1000D64D0(uint64_t a1, int a2, double a3, double a4, double a5, double a6, double a7)
{
  v14 = *(a1 + 96);
  if (v14 == -1000.0 || (v15 = *(a1 + 104), v15 == -1000.0) || v14 == 0.0 && v15 == 0.0 || (v15 == a4 ? (v16 = v14 == a3) : (v16 = 0), !v16 || *(a1 + 120) <= 0.0 || a7 - *(a1 + 136) >= 10.0))
  {
    v18 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 68290563;
      v24 = 2082;
      v23 = 0;
      v25 = "";
      v26 = 2053;
      v27 = a3;
      v28 = 2053;
      v29 = a4;
      v30 = 2053;
      v31 = a5;
      v32 = 2049;
      v33 = a6;
      v34 = 1026;
      v35 = a2;
      v36 = 2050;
      v37 = a7;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#lm,processLocation,usingLocation, lat:%{sensitive}f, lon:%{sensitive}f, alt:%{sensitive}f, unc:%{private}f, isLastKnownLocation:%{public}hhd, ts:%{public}f}", &v22, 0x4Au);
    }

    *(sub_100002DB0() + 73) = 257;
    v19 = sub_100002DB0();
    if (*(v19 + 109) == 1 && (*(v19 + 108) & 1) != 0)
    {
      *v19 = a3;
      *(v19 + 1) = a4;
      *(v19 + 2) = a5;
      *(v19 + 3) = a6;
      *(v19 + 4) = 0;
      *(v19 + 5) = a7;
      v20 = a3 != 0.0;
      if (a4 != 0.0)
      {
        v20 = 1;
      }

      if (a3 < -90.0)
      {
        v20 = 0;
      }

      if (a3 > 90.0)
      {
        v20 = 0;
      }

      if (a4 < -180.0)
      {
        v20 = 0;
      }

      if (a4 > 180.0)
      {
        v20 = 0;
      }

      *(v19 + 53) = v20 | 0x100;
      *(v19 + 73) = 257;
    }

    else
    {
      v21 = vdupq_n_s64(0xC08F400000000000);
      *v19 = v21;
      v19[1] = v21;
      v19[2] = xmmword_1000E3400;
      if (*(v19 + 147) == 1)
      {
        *(v19 + 147) = 0;
      }

      if (*(v19 + 115) == 1)
      {
        *(v19 + 115) = 0;
      }

      if (*(v19 + 107) == 1)
      {
        *(v19 + 107) = 0;
      }
    }

    if (*(a1 + 40))
    {
      sub_10008B24C(a1 + 16, a2, a3, a4, a5, a6, a7);
    }

    *(a1 + 96) = a3;
    *(a1 + 104) = a4;
    *(a1 + 112) = a5;
    *(a1 + 120) = a6;
    *(a1 + 128) = 0;
    *(a1 + 136) = a7;
  }

  else
  {
    v17 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 68290563;
      v24 = 2082;
      v23 = 0;
      v25 = "";
      v26 = 2053;
      v27 = a3;
      v28 = 2053;
      v29 = a4;
      v30 = 2053;
      v31 = a5;
      v32 = 2049;
      v33 = a6;
      v34 = 1026;
      v35 = a2;
      v36 = 2050;
      v37 = a7;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#lm,processLocation,#warning,sameLocation, lat:%{sensitive}f, lon:%{sensitive}f, alt:%{sensitive}f, unc:%{private}f, isLastKnownLocation:%{public}hhd, ts:%{public}f}", &v22, 0x4Au);
    }
  }
}

__int128 *sub_1000D6820(uint64_t a1, int a2)
{
  v4 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 68289282;
    v9[1] = 0;
    v10 = 2082;
    v11 = "";
    v12 = 1026;
    v13 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#lm,processLocationAuthorized, isAuthorized:%{public}hhd}", v9, 0x18u);
  }

  result = sub_100002DB0();
  *(result + 54) = a2 | 0x100;
  if ((a2 & 1) == 0)
  {
    if (*(result + 107) == 1)
    {
      *(result + 107) = 0;
    }

    if (*(result + 115) == 1)
    {
      *(result + 115) = 0;
    }

    v6 = vdupq_n_s64(0xC08F400000000000);
    *result = v6;
    result[1] = v6;
    result[2] = xmmword_1000E3400;
    if (*(result + 147) == 1)
    {
      *(result + 147) = 0;
    }

    if (*(result + 103) < 0)
    {
      *(result + 11) = 0;
      v7 = *(result + 10);
    }

    else
    {
      v7 = result + 5;
      *(result + 103) = 0;
    }

    *v7 = 0;
    v8 = vdupq_n_s64(0xC08F400000000000);
    *(a1 + 96) = v8;
    *(a1 + 112) = v8;
    *(a1 + 128) = xmmword_1000E3400;
  }

  if (*(a1 + 72))
  {
    return sub_1000030E8(a1 + 48, a2);
  }

  return result;
}

void sub_1000D6994(uint64_t a1, uint64_t *a2)
{
  v2 = a2[1];
  v3 = *a2;
  v4 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_100030DE8(&v3);
  if (v4)
  {
    sub_10002A838(v4);
  }
}

void sub_1000D69E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_10002A838(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000D6A00(uint64_t a1)
{
  sub_1000D6A38(a1);

  operator delete();
}

uint64_t sub_1000D6A38(uint64_t a1)
{
  *a1 = off_100140870;
  v2 = *(a1 + 88);
  *(a1 + 88) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  sub_10001E0C0(a1 + 48);
  sub_10008B31C(a1 + 16);

  return a1;
}

uint64_t SACoreTelephonyTest::SACoreTelephonyTest(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  sub_1000A1C34(v16, a3);
  *a1 = off_10013FB50;
  *(a1 + 8) = 0;
  sub_1000A1C34(a1 + 16, v16);
  sub_10000F274(&v21);
  sub_10003197C(&v20);
  sub_10001E0C0(&v19);
  sub_10001E0C0(&v18);
  sub_10003197C(&v17);
  sub_1000A1D88(v16);
  *(a1 + 208) = 0;
  *a1 = off_1001408D8;
  *(a1 + 232) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 369) = 0u;
  *(a1 + 388) = 5;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0u;
  *(a1 + 456) = 0u;
  *(a1 + 472) = 0u;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0;
  *(a1 + 512) = -1;
  *(a1 + 516) = 0;
  *(a1 + 520) = 0;
  *(a1 + 524) = 0;
  *(a1 + 528) = 0;
  *(a1 + 536) = 0;
  *(a1 + 560) = 0;
  *(a1 + 544) = 0u;
  *(a1 + 584) = 0;
  *(a1 + 592) = 0;
  *(a1 + 568) = 0u;
  v6 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    v13 = 0;
    v14 = 2082;
    v15 = "";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#coreTelephonyTest,init}", buf, 0x12u);
  }

  v7 = v5;
  v8 = sub_1000175DC();
  v9 = v7;
  v11[0] = off_100140960;
  v11[1] = a1;
  v11[2] = v9;
  v11[3] = v11;
  sub_1000178C4(v8, 3, v11);
  sub_100017F8C(v11);

  return a1;
}

void sub_1000D6D0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_100017F8C(&a9);

  sub_10002D754(v11);
  sub_1000CCFE0(v9);

  _Unwind_Resume(a1);
}

void *sub_1000D6D60(void *a1)
{
  *a1 = off_1001408D8;
  sub_10002D754((a1 + 26));

  return sub_1000CCFE0(a1);
}

void sub_1000D6DB4(void *a1)
{
  *a1 = off_1001408D8;
  sub_10002D754((a1 + 26));
  sub_1000CCFE0(a1);

  operator delete();
}

void sub_1000D6E24(uint64_t a1, uint64_t *a2)
{
  v2 = a2[1];
  v3 = *a2;
  v4 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_100030DE8(&v3);
  if (v4)
  {
    sub_10002A838(v4);
  }
}

void sub_1000D6E74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_10002A838(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000D6EE4(uint64_t a1)
{

  operator delete();
}

id sub_1000D6F98(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  *a2 = off_100140960;
  a2[1] = v3;
  result = v4;
  a2[2] = result;
  return result;
}

void sub_1000D6FE8(id *a1)
{

  operator delete(a1);
}

void sub_1000D7024(uint64_t a1, id *a2)
{
  v3 = *a2;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000D710C;
  v7[3] = &unk_100139F08;
  v8 = v3;
  v9 = v4;
  v6 = v3;
  dispatch_async(v5, v7);
}

uint64_t sub_1000D70C0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1000D710C(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = objc_autoreleasePoolPush();
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000D71C8;
  v4[3] = &unk_100139F08;
  v6 = v2;
  v5 = *(a1 + 32);
  sub_1000D71C8(v4);

  objc_autoreleasePoolPop(v3);
}

void sub_1000D71C8(uint64_t a1)
{
  v1 = *(a1 + 40);
  xdict = *(a1 + 32);
  if (xpc_dictionary_get_int64(xdict, "TestMessageType") == 3)
  {
    string = xpc_dictionary_get_string(xdict, "WeaText");
    SACoreTelephony::onWeaDisplayedNotification(v1, string);
  }
}

uint64_t sub_1000D729C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 24))
  {
    return sub_1000030E8(a3, 1);
  }

  return result;
}

void *SAMobileAssetTest::SAMobileAssetTest(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = sub_10000F1DC(v28, a3);
  *a1 = off_1001405F0;
  sub_10000F274(v6);
  *a1 = off_100140A88;
  v7 = v5;
  a1[1] = v7;
  sub_10000F1DC((a1 + 2), a3);
  v8 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    v19 = 0;
    v20 = 2082;
    v21 = "";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SAMobileAssetTest,init}", buf, 0x12u);
  }

  if (!a1[1])
  {
    v12 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      v19 = 0;
      v20 = 2082;
      v21 = "";
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#SAMobileAssetTest,fDispatchQueue is invalid}", buf, 0x12u);
      v12 = SALogObjectGeneral;
    }

    v13 = 21;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289795;
      v19 = 0;
      v20 = 2082;
      v21 = "";
      v22 = 2081;
      v23 = "/Library/Caches/com.apple.xbs/Sources/SafetyAlerts/Sources/Daemon/system/mobileAsset/test/SAMobileAssetTest.mm";
      v24 = 2081;
      v25 = "SAMobileAssetTest";
      v26 = 1026;
      v27 = 21;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:AssertionFailure, file:%{private, location:escape_only}s, function:%{private, location:escape_only}s, line:%{public}d}", buf, 0x2Cu);
    }

    v14 = "false && #SAMobileAssetTest,fDispatchQueue is invalid";
LABEL_16:
    __assert_rtn("SAMobileAssetTest", "SAMobileAssetTest.mm", v13, v14);
  }

  if (!a1[5])
  {
    v15 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      v19 = 0;
      v20 = 2082;
      v21 = "";
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#SAMobileAssetTest,fOnAssetReceived is invalid}", buf, 0x12u);
      v15 = SALogObjectGeneral;
    }

    v13 = 22;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289795;
      v19 = 0;
      v20 = 2082;
      v21 = "";
      v22 = 2081;
      v23 = "/Library/Caches/com.apple.xbs/Sources/SafetyAlerts/Sources/Daemon/system/mobileAsset/test/SAMobileAssetTest.mm";
      v24 = 2081;
      v25 = "SAMobileAssetTest";
      v26 = 1026;
      v27 = 22;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:AssertionFailure, file:%{private, location:escape_only}s, function:%{private, location:escape_only}s, line:%{public}d}", buf, 0x2Cu);
    }

    v14 = "false && #SAMobileAssetTest,fOnAssetReceived is invalid";
    goto LABEL_16;
  }

  v9 = sub_1000175DC();
  v17[0] = off_100140AD0;
  v17[1] = a1;
  v17[3] = v17;
  sub_1000178C4(v9, 7, v17);
  sub_100017F8C(v17);
  v10 = a1[1];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D7724;
  block[3] = &unk_1001390D0;
  block[4] = a1;
  dispatch_async(v10, block);

  return a1;
}

void sub_1000D76D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_100017F8C(va);
  sub_10000F274(v7 + 16);

  _Unwind_Resume(a1);
}

void sub_1000D7724(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_100042820();
  if (*(v2 + 159) < 0)
  {
    sub_100004CEC(__p, v2[17], v2[18]);
  }

  else
  {
    *__p = *(v2 + 17);
    v9 = v2[19];
  }

  v3 = HIBYTE(v9);
  if (v9 < 0)
  {
    v3 = __p[1];
  }

  if (!v3)
  {
    v4 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      v11 = 0;
      v12 = 2082;
      v13 = "";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SAMobileAssetTest,#warning,loadingCodeDefaults}", buf, 0x12u);
    }

    v5 = *(v1 + 40);
    if (!v5)
    {
      sub_1000053C4();
    }

    (*(*v5 + 48))(v5);
  }

  v6 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v7 = __p;
    if (v9 < 0)
    {
      v7 = __p[0];
    }

    *buf = 68289283;
    v11 = 0;
    v12 = 2082;
    v13 = "";
    v14 = 2081;
    v15 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SAMobileAssetTest,loadAssetFile, file:%{private, location:escape_only}s}", buf, 0x1Cu);
  }

  sub_1000D7918(v1, __p);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1000D7918(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 23);
  if ((v2 & 0x80u) != 0)
  {
    v2 = *(a2 + 8);
  }

  if (v2)
  {
    sub_1000060C4(v27, "file://");
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

    v8 = std::string::append(v27, v6, v7);
    v9 = *&v8->__r_.__value_.__l.__data_;
    v26 = v8->__r_.__value_.__r.__words[2];
    *__p = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    if ((v27[23] & 0x80000000) != 0)
    {
      operator delete(*v27);
    }

    if (v26 >= 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    v11 = [NSString stringWithUTF8String:v10];
    v12 = [NSURL URLWithString:v11];

    v24 = 0;
    v13 = [NSDictionary dictionaryWithContentsOfURL:v12 error:&v24];
    v14 = v24;
    if (v14)
    {
      v15 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        *v27 = 68289283;
        *&v27[8] = 2082;
        *&v27[10] = "";
        *&v27[18] = 2113;
        *&v27[20] = v14;
        v16 = "{msg%{public}.0s:#SAMobileAssetTest,#warning,cantLoadAsset, error:%{private, location:escape_only}@}";
        v17 = v15;
        v18 = 28;
LABEL_18:
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, v16, v27, v18);
      }
    }

    else
    {
      if (v13)
      {
        v20 = sub_10008E020();
        sub_10008E3E0(v20, v13);
        v21 = sub_10008E020();
        sub_10008E270(v21);
        v22 = *(a1 + 40);
        if (!v22)
        {
          sub_1000053C4();
        }

        (*(*v22 + 48))(v22);
        goto LABEL_26;
      }

      v23 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        *v27 = 68289026;
        *&v27[8] = 2082;
        *&v27[10] = "";
        v16 = "{msg%{public}.0s:#SAMobileAssetTest,#warning,cantLoadAsset,assetIsEmpty}";
        v17 = v23;
        v18 = 18;
        goto LABEL_18;
      }
    }

LABEL_26:

    if (SHIBYTE(v26) < 0)
    {
      operator delete(__p[0]);
    }

    return;
  }

  v19 = SALogObjectGeneral;
  if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
  {
    *v27 = 68289026;
    *&v27[8] = 2082;
    *&v27[10] = "";
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SAMobileAssetTest,#warning,cantLoadAsset,invalidFilename}", v27, 0x12u);
  }
}

void sub_1000D7C0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1000D7C6C(uint64_t a1)
{
  *a1 = off_100140A88;
  sub_10000F274(a1 + 16);

  return a1;
}

void sub_1000D7CB8(uint64_t a1)
{
  *a1 = off_100140A88;
  sub_10000F274(a1 + 16);

  operator delete();
}

uint64_t sub_1000D7DA4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_100140AD0;
  a2[1] = v2;
  return result;
}

void sub_1000D7DD0(uint64_t a1, id *a2)
{
  v3 = *a2;
  v4 = *(a1 + 8);
  v5 = *(v4 + 8);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000D7EBC;
  v7[3] = &unk_100139F08;
  v8 = v3;
  v9 = v4;
  v6 = v3;
  dispatch_async(v5, v7);
}

uint64_t sub_1000D7E70(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1000D7EBC(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = v2;
  if (v2)
  {
    if (xpc_dictionary_get_int64(v2, "TestMessageType") == 7)
    {
      string = xpc_dictionary_get_string(v3, "AssetFilename");
      sub_1000060C4(&__p, string);
      sub_1000D7918(v1, &__p);
      if (v9 < 0)
      {
        operator delete(__p);
      }
    }
  }

  else
  {
    v5 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      __p = 68289026;
      v7 = 2082;
      v8 = "";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SAMobileAssetTest,#warning,InvalidTestInputObject}", &__p, 0x12u);
    }
  }
}

void sub_1000D7FD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *SANetworkReachabilityTest::SANetworkReachabilityTest(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1000AFEB8(v6, a4);
  *a1 = off_10013FF48;
  sub_1000AFEB8((a1 + 1), v6);
  sub_1000A2500(v6);
  *a1 = off_100140B50;
  return a1;
}

void sub_1000D80BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000A2500(va);
  _Unwind_Resume(a1);
}

void *sub_1000D80D8(void *a1)
{
  *a1 = off_10013FF48;
  sub_1000A2500((a1 + 1));
  return a1;
}

void sub_1000D811C(void *a1)
{
  *a1 = off_10013FF48;
  sub_1000A2500((a1 + 1));

  operator delete();
}

void *SACompanionDetectorTest::SACompanionDetectorTest(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  sub_10001EF44(v7, a3);
  sub_1000AF7EC(a1, v5, v7);
  sub_10001E0C0(v7);
  *a1 = off_100140B90;

  return a1;
}

void sub_1000D8234(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10001E0C0(va);

  _Unwind_Resume(a1);
}

uint64_t sub_1000D825C(uint64_t a1)
{
  *a1 = off_10013F5A8;
  sub_10001E0C0(a1 + 16);

  return a1;
}

void sub_1000D82A8(uint64_t a1)
{
  *a1 = off_10013F5A8;
  sub_10001E0C0(a1 + 16);

  operator delete();
}

void *SACloudChannelTest::SACloudChannelTest(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  sub_1000319FC(v13, a3);
  sub_10004497C(v12, a4);
  *a1 = off_10013FD60;
  sub_10003197C(v12);
  sub_100031C34(v13);
  *a1 = off_100140BD0;
  v8 = v7;
  a1[1] = v8;
  sub_1000319FC((a1 + 2), a3);
  v9 = sub_1000175DC();
  v11[0] = off_100140C58;
  v11[1] = a1;
  v11[3] = v11;
  sub_1000178C4(v9, 8, v11);
  sub_100017F8C(v11);

  return a1;
}

void sub_1000D8440(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100017F8C(va);
  sub_100031C34(v3 + 16);

  _Unwind_Resume(a1);
}

uint64_t sub_1000D8498(uint64_t a1)
{
  *a1 = off_100140BD0;
  sub_100031C34(a1 + 16);

  return a1;
}

void sub_1000D84E4(uint64_t a1)
{
  *a1 = off_100140BD0;
  sub_100031C34(a1 + 16);

  operator delete();
}

uint64_t sub_1000D856C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3321888768;
  block[2] = sub_1000D8620;
  block[3] = &unk_1001390F0;
  sub_10000F1DC(v5, a2);
  dispatch_async(v2, block);
  return sub_10000F274(v5);
}

uint64_t sub_1000D8620(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (!v2)
  {
    sub_1000053C4();
  }

  v3 = *(*v2 + 48);

  return v3();
}

uint64_t sub_1000D86E4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_100140C58;
  a2[1] = v2;
  return result;
}

void sub_1000D8710(uint64_t a1, id *a2)
{
  v3 = *a2;
  v4 = *(a1 + 8);
  v5 = *(v4 + 8);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000D87FC;
  v7[3] = &unk_100139F08;
  v8 = v3;
  v9 = v4;
  v6 = v3;
  dispatch_async(v5, v7);
}

uint64_t sub_1000D87B0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1000D87FC(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = objc_autoreleasePoolPush();
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000D88B8;
  v4[3] = &unk_100139F08;
  v6 = v2;
  v5 = *(a1 + 32);
  sub_1000D88B8(v4);

  objc_autoreleasePoolPop(v3);
}

void sub_1000D88B8(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = v2;
  if (v2)
  {
    if (xpc_dictionary_get_int64(v2, "TestMessageType") == 8)
    {
      string = xpc_dictionary_get_string(v3, "CloudChannelTopic");
      v5 = xpc_dictionary_get_string(v3, "CloundChannelName");
      v6 = xpc_dictionary_get_string(v3, "ChannelMsgFilename");
      int64 = xpc_dictionary_get_int64(v3, "CloudChannelInterface");
      v8 = SALogObjectGeneral;
      if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
      {
        v9 = "null";
        *buf = 68290051;
        if (string)
        {
          v10 = string;
        }

        else
        {
          v10 = "null";
        }

        *&buf[4] = 0;
        v22[0] = 2082;
        *&v22[1] = "";
        if (v5)
        {
          v11 = v5;
        }

        else
        {
          v11 = "null";
        }

        v23 = 2081;
        if (v6)
        {
          v9 = v6;
        }

        v24 = v10;
        v25 = 2081;
        v26 = v11;
        v27 = 2081;
        v28 = v9;
        v29 = 1025;
        v30 = int64;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saChannelTest,processTestMessage, topic:%{private, location:escape_only}s, channel:%{private, location:escape_only}s, msgFilename:%{private, location:escape_only}s, interface:%{private}d}", buf, 0x36u);
      }

      v12 = 0;
      if (string && v5 && v6 && int64)
      {
        v13 = strlen(v6);
        if (v13 >= 0x7FFFFFFFFFFFFFF8)
        {
          sub_100004D90();
        }

        v14 = v13;
        if (v13 >= 0x17)
        {
          operator new();
        }

        BYTE3(v24) = v13;
        if (v13)
        {
          memmove(buf, v6, v13);
        }

        buf[v14] = 0;
        v12 = SACommonUtils::getDictionaryFromJsonFile(buf);
        if (SBYTE3(v24) < 0)
        {
          operator delete(*buf);
        }

        if (v12 && *(v1 + 40))
        {
          v16 = [NSNumber numberWithLongLong:int64, kIncomingMessageInterfaceKey];
          v20 = v16;
          v17 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];

          v18 = SALogObjectGeneral;
          if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 68289795;
            *&buf[4] = 0;
            v22[0] = 2082;
            *&v22[1] = "";
            v23 = 2081;
            v24 = v6;
            v25 = 2113;
            v26 = v12;
            v27 = 2113;
            v28 = v17;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saChannelTest,processTestMessage,callback, filename:%{private, location:escape_only}s, messageDictionary:%{private, location:escape_only}@, metaDataDict:%{private, location:escape_only}@}", buf, 0x30u);
          }

          sub_100031B90(v1 + 16, v12, v17);
        }
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v15 = SALogObjectGeneral;
    if (os_log_type_enabled(SALogObjectGeneral, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      v22[0] = 2082;
      *&v22[1] = "";
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#saChannelTest,processTestMessage,invalidObject}", buf, 0x12u);
    }
  }
}

Boolean CFCalendarDecomposeAbsoluteTime(CFCalendarRef calendar, CFAbsoluteTime at, const char *componentDesc, ...)
{
  va_start(va, componentDesc);
  v3 = va_arg(va, const char *);
  return _CFCalendarDecomposeAbsoluteTime(calendar, at, v3);
}

CLLocationCoordinate2D CLLocationCoordinate2DMake(CLLocationDegrees latitude, CLLocationDegrees longitude)
{
  v4 = _CLLocationCoordinate2DMake(latitude, longitude);
  v3 = v4.longitude;
  v2 = v4.latitude;
  result.longitude = v3;
  result.latitude = v2;
  return result;
}

uint64_t std::ostream::operator<<()
{
  return std::ostream::operator<<();
}

{
  return std::ostream::operator<<();
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void operator new()
{
    ;
  }
}