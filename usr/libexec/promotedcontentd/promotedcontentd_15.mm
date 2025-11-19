void sub_10029FDD0(id a1)
{
  v1 = qword_1004E6990;
  qword_1004E6990 = &off_100493F60;
}

uint64_t APPBClickLocationReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v40 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v40 & 0x7F) << v5;
        if ((v40 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v33 = 0;
          v34 = 0;
          v16 = 0;
          *(a1 + 24) |= 2u;
          while (1)
          {
            v42 = 0;
            v35 = [a2 position] + 1;
            if (v35 >= [a2 position] && (v36 = objc_msgSend(a2, "position") + 1, v36 <= objc_msgSend(a2, "length")))
            {
              v37 = [a2 data];
              [v37 getBytes:&v42 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v42 & 0x7F) << v33;
            if ((v42 & 0x80) == 0)
            {
              break;
            }

            v33 += 7;
            v20 = v34++ > 8;
            if (v20)
            {
              v21 = 0;
              v22 = &OBJC_IVAR___APPBClickLocation__w;
              goto LABEL_67;
            }
          }

          v22 = &OBJC_IVAR___APPBClickLocation__w;
          goto LABEL_64;
        }

        if (v13 == 4)
        {
          v23 = 0;
          v24 = 0;
          v16 = 0;
          *(a1 + 24) |= 1u;
          while (1)
          {
            v41 = 0;
            v25 = [a2 position] + 1;
            if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
            {
              v27 = [a2 data];
              [v27 getBytes:&v41 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v41 & 0x7F) << v23;
            if ((v41 & 0x80) == 0)
            {
              break;
            }

            v23 += 7;
            v20 = v24++ > 8;
            if (v20)
            {
              v21 = 0;
              v22 = &OBJC_IVAR___APPBClickLocation__h;
              goto LABEL_67;
            }
          }

          v22 = &OBJC_IVAR___APPBClickLocation__h;
LABEL_64:
          if ([a2 hasError])
          {
            v21 = 0;
          }

          else
          {
            v21 = v16;
          }

LABEL_67:
          *(a1 + *v22) = v21;
          goto LABEL_68;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v28 = 0;
          v29 = 0;
          v16 = 0;
          *(a1 + 24) |= 4u;
          while (1)
          {
            v44 = 0;
            v30 = [a2 position] + 1;
            if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
            {
              v32 = [a2 data];
              [v32 getBytes:&v44 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v44 & 0x7F) << v28;
            if ((v44 & 0x80) == 0)
            {
              break;
            }

            v28 += 7;
            v20 = v29++ > 8;
            if (v20)
            {
              v21 = 0;
              v22 = &OBJC_IVAR___APPBClickLocation__x;
              goto LABEL_67;
            }
          }

          v22 = &OBJC_IVAR___APPBClickLocation__x;
          goto LABEL_64;
        }

        if (v13 == 2)
        {
          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 24) |= 8u;
          while (1)
          {
            v43 = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:&v43 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v43 & 0x7F) << v14;
            if ((v43 & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v20 = v15++ > 8;
            if (v20)
            {
              v21 = 0;
              v22 = &OBJC_IVAR___APPBClickLocation__y;
              goto LABEL_67;
            }
          }

          v22 = &OBJC_IVAR___APPBClickLocation__y;
          goto LABEL_64;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_68:
      v38 = [a2 position];
    }

    while (v38 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1002A0CA0(id a1)
{
  v1 = qword_1004E69A0;
  qword_1004E69A0 = &off_100493F88;
}

uint64_t APPBGeofenceReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v27) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v27 & 0x7F) << v5;
        if ((v27 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v27 = 0;
        v18 = [a2 position] + 8;
        if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 8, v19 <= objc_msgSend(a2, "length")))
        {
          v23 = [a2 data];
          [v23 getBytes:&v27 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v21 = v27;
        v22 = &OBJC_IVAR___APPBGeofence__radius;
        goto LABEL_37;
      }

      if (v13 == 2)
      {
        break;
      }

      if (v13 == 1)
      {
        v27 = 0;
        v14 = [a2 position] + 8;
        if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 8, v15 <= objc_msgSend(a2, "length")))
        {
          v24 = [a2 data];
          [v24 getBytes:&v27 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v21 = v27;
        v22 = &OBJC_IVAR___APPBGeofence__latitude;
LABEL_37:
        *(a1 + *v22) = v21;
        goto LABEL_38;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_38:
      v25 = [a2 position];
      if (v25 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v27 = 0;
    v16 = [a2 position] + 8;
    if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 8, v17 <= objc_msgSend(a2, "length")))
    {
      v20 = [a2 data];
      [v20 getBytes:&v27 range:{objc_msgSend(a2, "position"), 8}];

      [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
    }

    else
    {
      [a2 _setError];
    }

    v21 = v27;
    v22 = &OBJC_IVAR___APPBGeofence__longitude;
    goto LABEL_37;
  }

  return [a2 hasError] ^ 1;
}

const __CFString *adPositionToString(unint64_t a1)
{
  if (a1 > 7)
  {
    return @"UNKNOWN";
  }

  else
  {
    return *(&off_10047CD98 + a1);
  }
}

void sub_1002A1FC4(id a1)
{
  v1 = qword_1004E69B0;
  qword_1004E69B0 = &off_100493FB0;
}

uint64_t APPBUserTransparencyRequestReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v33 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v33 & 0x7F) << v5;
        if ((v33 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 3)
      {
        break;
      }

      if (v13 <= 5)
      {
        if (v13 == 4)
        {
          v14 = PBReaderReadData();
          v15 = 8;
        }

        else
        {
          if (v13 != 5)
          {
            goto LABEL_38;
          }

          v14 = PBReaderReadString();
          v15 = 32;
        }

LABEL_51:
        v30 = *(a1 + v15);
        *(a1 + v15) = v14;

        goto LABEL_57;
      }

      if (v13 == 6)
      {
        v24 = 0;
        v25 = 0;
        v26 = 0;
        *(a1 + 52) |= 2u;
        while (1)
        {
          v35 = 0;
          v27 = [a2 position] + 1;
          if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
          {
            v29 = [a2 data];
            [v29 getBytes:&v35 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v26 |= (v35 & 0x7F) << v24;
          if ((v35 & 0x80) == 0)
          {
            break;
          }

          v24 += 7;
          v11 = v25++ >= 9;
          if (v11)
          {
            LOBYTE(v22) = 0;
            goto LABEL_53;
          }
        }

        v22 = (v26 != 0) & ~[a2 hasError];
LABEL_53:
        v31 = 49;
      }

      else
      {
        if (v13 != 7)
        {
LABEL_38:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_57;
        }

        v16 = 0;
        v17 = 0;
        v18 = 0;
        *(a1 + 52) |= 1u;
        while (1)
        {
          v34 = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v34 & 0x7F) << v16;
          if ((v34 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v11 = v17++ >= 9;
          if (v11)
          {
            LOBYTE(v22) = 0;
            goto LABEL_55;
          }
        }

        v22 = (v18 != 0) & ~[a2 hasError];
LABEL_55:
        v31 = 48;
      }

      *(a1 + v31) = v22;
LABEL_57:
      v32 = [a2 position];
      if (v32 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    switch(v13)
    {
      case 1:
        v14 = PBReaderReadData();
        v15 = 16;
        break;
      case 2:
        v14 = PBReaderReadString();
        v15 = 40;
        break;
      case 3:
        v14 = PBReaderReadData();
        v15 = 24;
        break;
      default:
        goto LABEL_38;
    }

    goto LABEL_51;
  }

  return [a2 hasError] ^ 1;
}

void sub_1002A3044(id a1)
{
  v1 = qword_1004E69C0;
  qword_1004E69C0 = &off_100493FD8;
}

uint64_t APPBConfigurationRequestReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v17[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17[0] & 0x7F) << v5;
        if ((v17[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(APPBConfiguration);
        [a1 addCurrentConfiguration:v13];
        v17[0] = 0;
        v17[1] = 0;
        if (!PBReaderPlaceMark() || !APPBConfigurationReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_25:
      v15 = [a2 position];
      if (v15 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = PBReaderReadData();
    v13 = a1[2];
    a1[2] = v14;
LABEL_23:

    goto LABEL_25;
  }

  return [a2 hasError] ^ 1;
}

void sub_1002A3BEC(id a1)
{
  v1 = qword_1004E69D0;
  qword_1004E69D0 = &off_100494000;
}

uint64_t APPBMescalSignSAPSetupResponseReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v17 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17 & 0x7F) << v5;
        if ((v17 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadData();
        v14 = *(a1 + 8);
        *(a1 + 8) = v13;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v16 = [a2 position];
    }

    while (v16 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1002A41E4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v6 count]);
    v10 = _NSConcreteStackBlock;
    v11 = 3221225472;
    v12 = sub_1002A4310;
    v13 = &unk_10047CE40;
    v14 = *(a1 + 32);
    v15 = v7;
    v8 = v7;
    [v6 enumerateKeysAndObjectsUsingBlock:&v10];
    v9 = [v8 copy];
    [*(a1 + 40) setObject:v9 forKeyedSubscript:v5];
  }
}

void sub_1002A4310(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = *(a1 + 32);
    v7 = [v5 absoluteString];
    v8 = [v6 objectForKeyedSubscript:v7];

    v9 = *(a1 + 40);
    if (v8)
    {
      [v9 setObject:v8 forKeyedSubscript:v12];
    }

    else
    {
      [v9 setObject:v5 forKeyedSubscript:v12];
      v10 = *(a1 + 32);
      v11 = [v5 absoluteString];
      [v10 setObject:v5 forKeyedSubscript:v11];
    }
  }

  else
  {
    [*(a1 + 40) setObject:v5 forKeyedSubscript:v12];
  }
}

void sub_1002A44B0(id a1)
{
  v1 = qword_1004E69E0;
  qword_1004E69E0 = &off_100494028;
}

uint64_t APPBAdDataUpdateReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v31) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v31 & 0x7F) << v5;
        if ((v31 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          *(a1 + 40) |= 2u;
          v31 = 0;
          v26 = [a2 position] + 8;
          if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 8, v27 <= objc_msgSend(a2, "length")))
          {
            v29 = [a2 data];
            [v29 getBytes:&v31 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          *(a1 + 16) = v31;
        }

        else
        {
          if (v13 != 4)
          {
LABEL_34:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_48;
          }

          v16 = 0;
          v17 = 0;
          v18 = 0;
          *(a1 + 40) |= 4u;
          while (1)
          {
            LOBYTE(v31) = 0;
            v19 = [a2 position] + 1;
            if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
            {
              v21 = [a2 data];
              [v21 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v18 |= (v31 & 0x7F) << v16;
            if ((v31 & 0x80) == 0)
            {
              break;
            }

            v16 += 7;
            v11 = v17++ >= 9;
            if (v11)
            {
              v22 = 0;
              goto LABEL_43;
            }
          }

          if ([a2 hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v18;
          }

LABEL_43:
          *(a1 + 24) = v22;
        }
      }

      else if (v13 == 1)
      {
        v24 = PBReaderReadString();
        v25 = *(a1 + 32);
        *(a1 + 32) = v24;
      }

      else
      {
        if (v13 != 2)
        {
          goto LABEL_34;
        }

        *(a1 + 40) |= 1u;
        v31 = 0;
        v14 = [a2 position] + 8;
        if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 8, v15 <= objc_msgSend(a2, "length")))
        {
          v28 = [a2 data];
          [v28 getBytes:&v31 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 8) = v31;
      }

LABEL_48:
      v30 = [a2 position];
    }

    while (v30 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1002A55D0(id a1)
{
  v1 = qword_1004E69F0;
  qword_1004E69F0 = &off_100494050;
}

uint64_t APPBAssetMetricReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v23 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v23 & 0x7F) << v5;
        if ((v23 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        *(a1 + 32) |= 1u;
        v22 = 0;
        v17 = [a2 position] + 8;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 8, v18 <= objc_msgSend(a2, "length")))
        {
          v20 = [a2 data];
          [v20 getBytes:&v22 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 8) = v22;
      }

      else
      {
        if (v13 == 2)
        {
          v14 = PBReaderReadString();
          v15 = 16;
        }

        else
        {
          if (v13 != 1)
          {
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_30;
          }

          v14 = PBReaderReadString();
          v15 = 24;
        }

        v16 = *(a1 + v15);
        *(a1 + v15) = v14;
      }

LABEL_30:
      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1002A5FE0(id a1)
{
  v1 = qword_1004E6A00;
  qword_1004E6A00 = &off_100494078;
}

uint64_t APPBMediaFilesReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v19[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19[0] & 0x7F) << v5;
        if ((v19[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v15 = objc_alloc_init(APPBMediaAsset);
        [a1 addMediaAssets:v15];
        v19[0] = 0;
        v19[1] = 0;
        if (!PBReaderPlaceMark() || !APPBMediaAssetReadFrom(v15, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((v12 >> 3) == 1)
      {
        *(a1 + 24) |= 1u;
        v19[0] = 0;
        v13 = [a2 position] + 8;
        if (v13 >= [a2 position] && (v14 = objc_msgSend(a2, "position") + 8, v14 <= objc_msgSend(a2, "length")))
        {
          v16 = [a2 data];
          [v16 getBytes:v19 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 8) = v19[0];
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v17 = [a2 position];
    }

    while (v17 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1002A74E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1002A7508(uint64_t a1)
{
  v2 = APLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Reloading current URL configuration.", v6, 2u);
  }

  v3 = +[APServerConfigurationSettings settings];
  v4 = [v3 serverConfig];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setConfigurations:v4];
}

void sub_1002A87E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1002A8810(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = +[NSDate date];
  [v5 timeIntervalSince1970];
  [WeakRetained setResponseTime:v6 - *(a1 + 48)];

  v7 = [v3 responseError];

  if (v7)
  {
    v8 = [v3 responseError];
LABEL_3:
    v9 = v8;
    v10 = 0;
    goto LABEL_4;
  }

  if ([v3 responseStatusCode] >= 400 && objc_msgSend(v3, "responseStatusCode") <= 599)
  {
    v8 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", @"com.apple.ap.HTTPError", [v3 responseStatusCode], 0);
    goto LABEL_3;
  }

  if ([v3 responseStatusCode] == 200)
  {
    v11 = [v3 responseBody];
    v13 = 0;
    v10 = [WeakRetained _deserializeResponse:v11 error:&v13];
    v9 = v13;
  }

  else
  {
    v12 = APLogForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v15 = [v3 responseStatusCode];
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Unexpected server response with status code: %lu", buf, 0xCu);
    }

    v10 = 0;
    v9 = 0;
  }

LABEL_4:
  [WeakRetained _logResponse:v3 responseProtobuf:v10 requestProtobufClass:*(a1 + 56) error:v9];
  [WeakRetained responseReceived:v3 responseProtobuf:v10 error:v9];
  (*(*(a1 + 32) + 16))();
}

void sub_1002A8BF0(id a1)
{
  qword_1004E6A10 = dispatch_queue_create("com.apple.ap.legacyinterface.delayed_request_queue", 0);

  _objc_release_x1();
}

id sub_1002A8C30(uint64_t a1)
{
  v2 = [*(a1 + 32) cancelled];
  v3 = APLogForCategory();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_INFO);
  if (v2)
  {
    if (v4)
    {
      v5 = [*(a1 + 32) requestIdentifier];
      v8 = 138543362;
      v9 = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "NOT sending delayed request with ID %{public}@, it was previously cancelled.", &v8, 0xCu);
    }

    return (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (v4)
    {
      v7 = [*(a1 + 32) requestIdentifier];
      v8 = 138543362;
      v9 = v7;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Sending delayed request with ID %{public}@", &v8, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
    return [*(a1 + 32) makeRequest:*(a1 + 48)];
  }
}

void sub_1002AA080(id a1)
{
  v1 = objc_alloc_init(APServerConfiguration);
  v2 = qword_1004E6A20;
  qword_1004E6A20 = v1;

  v3 = APLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Initialized APServerConfiguration", v4, 2u);
  }
}

void sub_1002AA6BC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _moveAllPendingRequestsToFailed];

  v4 = objc_loadWeakRetained((a1 + 40));
  [v4 _loadFailedRequestsCache];

  v5 = objc_loadWeakRetained((a1 + 40));
  [v5 _retryFailedIfAvailable];

  objc_autoreleasePoolPop(v2);
}

void sub_1002AA904(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _registerMetricRequest:*(a1 + 32)];

  objc_autoreleasePoolPop(v2);
}

void sub_1002AAB28(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _completeServerRequestId:*(a1 + 32) serverFailureCount:*(a1 + 56) result:*(a1 + 64)];

  objc_autoreleasePoolPop(v2);
}

void sub_1002AB0F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1002AB110(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1002AB128(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v8 = a2;
  if (![a3 longLongValue])
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }
}

void sub_1002AB8E0(uint64_t a1, void *a2, unint64_t a3, _BYTE *a4)
{
  if (a3 < 0xA)
  {
    v6 = a2;
    v8 = [NSNumber numberWithLong:0];
    v7 = [*(a1 + 32) failedRequests];
    [v7 setObject:v8 forKeyedSubscript:v6];
  }

  else
  {
    *a4 = 1;
  }
}

void sub_1002ABED0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1002ABEF8(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v7 = sub_1003943F4(*(a1 + 32));
  v8 = [v7 UUIDString];
  [WeakRetained completeServerRequestId:v8 serverFailureCount:*(a1 + 72) result:{objc_msgSend(*(a1 + 40), "responseResult")}];

  v9 = *(a1 + 56);
  if (v9)
  {
    (*(v9 + 16))(v9, v10, v5);
  }
}

void sub_1002ADCA8(uint64_t a1)
{
  v7[0] = @"hasIAdID";
  v2 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [*(a1 + 32) hasIAdID]);
  v8[0] = v2;
  v7[1] = @"hasContentiAdID";
  v3 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [*(a1 + 32) hasContentiAdID]);
  v8[1] = v3;
  v7[2] = @"hasAnonymousDemandiAdID";
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [*(a1 + 32) hasAnonymousDemandiAdID]);
  v8[2] = v4;
  v5 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:3];

  v6 = [v5 description];
  CreateDiagnosticReport();
}

uint64_t APPBAssetReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v34[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v34 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v34[0] & 0x7F) << v5;
        if ((v34[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 2)
      {
        break;
      }

      if (v13 != 3)
      {
        if (v13 == 4)
        {
          v24 = 0;
          v25 = 0;
          v26 = 0;
          *(a1 + 48) |= 1u;
          while (1)
          {
            LOBYTE(v34[0]) = 0;
            v27 = [a2 position] + 1;
            if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
            {
              v29 = [a2 data];
              [v29 getBytes:v34 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v26 |= (v34[0] & 0x7F) << v24;
            if ((v34[0] & 0x80) == 0)
            {
              break;
            }

            v24 += 7;
            v11 = v25++ >= 9;
            if (v11)
            {
              v30 = 0;
              goto LABEL_52;
            }
          }

          if ([a2 hasError])
          {
            v30 = 0;
          }

          else
          {
            v30 = v26;
          }

LABEL_52:
          *(a1 + 8) = v30;
          goto LABEL_57;
        }

        if (v13 == 5)
        {
          v14 = PBReaderReadString();
          v15 = 40;
LABEL_46:
          v31 = *(a1 + v15);
          *(a1 + v15) = v14;

          goto LABEL_57;
        }

LABEL_47:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_57;
      }

      v23 = objc_alloc_init(APPBAssetInfo);
      [a1 addAssetInfo:v23];
      v34[0] = 0;
      v34[1] = 0;
      if (!PBReaderPlaceMark() || !APPBAssetInfoReadFrom(v23, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_57:
      v32 = [a2 position];
      if (v32 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 1)
    {
      v14 = PBReaderReadString();
      v15 = 32;
      goto LABEL_46;
    }

    if (v13 == 2)
    {
      v16 = 0;
      v17 = 0;
      v18 = 0;
      *(a1 + 48) |= 2u;
      while (1)
      {
        LOBYTE(v34[0]) = 0;
        v19 = [a2 position] + 1;
        if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
        {
          v21 = [a2 data];
          [v21 getBytes:v34 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v18 |= (v34[0] & 0x7F) << v16;
        if ((v34[0] & 0x80) == 0)
        {
          break;
        }

        v16 += 7;
        v11 = v17++ >= 9;
        if (v11)
        {
          v22 = 0;
          goto LABEL_56;
        }
      }

      if ([a2 hasError])
      {
        v22 = 0;
      }

      else
      {
        v22 = v18;
      }

LABEL_56:
      *(a1 + 24) = v22;
      goto LABEL_57;
    }

    goto LABEL_47;
  }

  return [a2 hasError] ^ 1;
}

void sub_1002AFD64(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v7 = [*(a1 + 32) requestParameters];
  v8 = [v7 countByEnumeratingWithState:&v60 objects:v72 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v61;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v61 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(a1 + 40);
        v13 = [*(*(&v60 + 1) + 8 * i) context];
        [v12 sendAnalyticsForGettingAdResponse:v13];
      }

      v9 = [v7 countByEnumeratingWithState:&v60 objects:v72 count:16];
    }

    while (v9);
  }

  v14 = [(APResponseDataTranslator *)[APAdBatchResponseTranslator alloc] initWithResponse:v5 forRequester:*(a1 + 32)];
  v59 = v6;
  v15 = [(APAdBatchResponseTranslator *)v14 translate:&v59];
  v16 = v59;

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = [v15 sortedArrayUsingComparator:&stru_10047D068];
    if ([v17 count])
    {
      v53 = v15;
      v54 = v16;
      v55 = v14;
      v56 = v5;
      v18 = 1;
      v57 = v17;
      do
      {
        v19 = [v17 objectAtIndexedSubscript:v18 - 1, v53, v54, v55, v56];
        if (v18 == [v17 count])
        {
          v20 = 1;
        }

        else if ((v18 - 1) >= [v17 count]- 1)
        {
          v20 = 0;
        }

        else
        {
          v21 = [v17 objectAtIndexedSubscript:v18 - 1];
          v22 = [v21 adOriginalRequesterId];
          v23 = [v17 objectAtIndexedSubscript:v18];
          v24 = [v23 adOriginalRequesterId];
          v20 = [v22 isEqual:v24] ^ 1;

          v17 = v57;
        }

        v25 = *(a1 + 32);
        v26 = [v19 adOriginalRequesterId];
        v27 = [v25 requestFromRequestID:v26];

        if (v27)
        {
          [*(a1 + 32) responseTime];
          v29 = v28;
          v30 = [v19 privateContent];
          [v30 setResponseTime:v29];

          v31 = APLogForCategory();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
          {
            v32 = [v17 count];
            v33 = [v19 content];
            [v33 identifier];
            v34 = v58 = v20;
            v35 = [v19 content];
            v36 = [v35 contextIdentifier];
            *buf = 134218754;
            v65 = v18;
            v66 = 2048;
            v67 = v32;
            v68 = 2114;
            v69 = v34;
            v70 = 2114;
            v71 = v36;
            _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "Sending %lu of %lu contents with identifier %{public}@ and context %{public}@", buf, 0x2Au);

            v20 = v58;
            v17 = v57;
          }

          v37 = [v27 completionHandler];
          (v37)[2](v37, v19, v20);

          v38 = [APJourneyDaemonMetricHelper alloc];
          v39 = [v19 content];
          v40 = [(APJourneyDaemonMetricHelper *)v38 initWithContentData:v39];

          v41 = [*(a1 + 40) bundleID];
          [*(a1 + 32) responseTime];
          v43 = v42;
          v44 = [v19 journeyStartRelayValues];
          [v40 receivedForBundleID:v41 elapsedTime:v44 relayValues:0 internalProperties:v43];

          v45 = *(a1 + 32);
          v46 = [v19 content];
          v47 = [v46 identifier];
          v48 = [v45 requestFromRequestID:v47];
          v49 = [v48 placementType];

          [*(a1 + 40) checkForDiscards:v19 placementType:v49];
        }

        else
        {
          v40 = APLogForCategory();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
          {
            v50 = [v19 adOriginalRequesterId];
            *buf = 138543362;
            v65 = v50;
            _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "Unable to find original request for ad response with identifier %{public}@", buf, 0xCu);
          }
        }
      }

      while (v18++ < [v17 count]);
      v14 = v55;
      v5 = v56;
      v15 = v53;
      v16 = v54;
    }
  }

  else
  {
    v17 = APLogForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v52 = [*(a1 + 40) identifier];
      *buf = 138543362;
      v65 = v52;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Translator returned invalid response type for request %{public}@", buf, 0xCu);
    }
  }
}

int64_t sub_1002B0328(id a1, APContentDataInternal *a2, APContentDataInternal *a3)
{
  v4 = a3;
  v5 = [(APContentDataInternal *)a2 adOriginalRequesterId];
  v6 = [(APContentDataInternal *)v4 adOriginalRequesterId];

  v7 = [v5 compare:v6];
  return v7;
}

void sub_1002B06A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1002B06C8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (!WeakRetained)
  {
    v8 = APLogForCategory();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    LOWORD(v31) = 0;
    v26 = "AdRequester has been freed.";
    v27 = v8;
    v28 = OS_LOG_TYPE_ERROR;
    v29 = 2;
LABEL_20:
    _os_log_impl(&_mh_execute_header, v27, v28, v26, &v31, v29);
    goto LABEL_24;
  }

  v7 = [v5 count];
  v8 = APLogForCategory();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
  if (!v7)
  {
    if (!v9)
    {
      goto LABEL_24;
    }

    v31 = 134217984;
    v32 = a3;
    v26 = "Ad request accumulator fired with reason %ld, but did not accumulate any requests.";
    v27 = v8;
    v28 = OS_LOG_TYPE_INFO;
    v29 = 12;
    goto LABEL_20;
  }

  if (v9)
  {
    v10 = [v5 count];
    v11 = +[NSDate date];
    v12 = [v5 objectAtIndexedSubscript:0];
    v13 = [v12 bundleID];
    v31 = 134218498;
    v32 = v10;
    v33 = 2114;
    v34 = v11;
    v35 = 2114;
    v36 = v13;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Ad request accumulator for %ld ads at %{public}@ for bundleID %{public}@.", &v31, 0x20u);
  }

  [WeakRetained requestAds:v5];
  v14 = APPerfLogForCategory();
  v15 = [WeakRetained signpostID];
  if ((v15 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v16 = v15;
    if (os_signpost_enabled(v14))
    {
      LOWORD(v31) = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_INTERVAL_END, v16, "AccumulationInterval", " enableTelemetry=YES ", &v31, 2u);
    }
  }

  v8 = +[NSMutableDictionary dictionary];
  v17 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v5 count]);
  [v8 setObject:v17 forKey:@"batchSize"];

  if ([v5 count] == 1)
  {
    v18 = [v5 objectAtIndexedSubscript:0];
    v19 = [v18 context];
    v20 = [v19 supplementalContext];

    if (v20)
    {
      v21 = [v5 objectAtIndexedSubscript:0];
      v22 = [v21 context];
      v23 = [v22 supplementalContext];
      v24 = [v23 objectForKey:APSupplementalContextPlacementKey];

      if (v24 && [v24 length])
      {
        if ([v24 isEqualToString:APSupplementalContextInArticleKey] & 1) != 0 || (objc_msgSend(v24, "isEqualToString:", APSupplementalContextVideoInArticleKey) & 1) != 0 || (objc_msgSend(v24, "isEqualToString:", APSupplementalContextNativeInArticleKey))
        {
          v25 = 1;
        }

        else if ([v24 isEqualToString:APSupplementalContextBetweenArticleKey])
        {
          v25 = 2;
        }

        else
        {
          v25 = 0;
        }
      }

      else
      {
        v25 = 0;
      }

      v30 = [NSNumber numberWithUnsignedInteger:v25];
      [v8 setObject:v30 forKey:@"placement"];
    }
  }

  AnalyticsSendEvent();
LABEL_24:
}

void sub_1002B13DC(id a1)
{
  qword_1004E6A40 = objc_alloc_init(APEncryptedIDProvider);

  _objc_release_x1();
}

uint64_t APPBBorderStyleReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v25[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v25 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v25[0] & 0x7F) << v5;
        if ((v25[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        break;
      }

      if (v13 == 2)
      {
        *(a1 + 24) |= 2u;
        LODWORD(v25[0]) = 0;
        v15 = [a2 position] + 4;
        if (v15 >= [a2 position] && (v16 = objc_msgSend(a2, "position") + 4, v16 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:v25 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        v20 = v25[0];
        v21 = 20;
LABEL_35:
        *(a1 + v21) = v20;
        goto LABEL_36;
      }

      if (v13 == 1)
      {
        v14 = objc_alloc_init(APPBColor);
        objc_storeStrong((a1 + 8), v14);
        v25[0] = 0;
        v25[1] = 0;
        if (!PBReaderPlaceMark() || !APPBColorReadFrom(v14, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_36:
      v23 = [a2 position];
      if (v23 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    *(a1 + 24) |= 1u;
    LODWORD(v25[0]) = 0;
    v17 = [a2 position] + 4;
    if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 4, v18 <= objc_msgSend(a2, "length")))
    {
      v22 = [a2 data];
      [v22 getBytes:v25 range:{objc_msgSend(a2, "position"), 4}];

      [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
    }

    else
    {
      [a2 _setError];
    }

    v20 = v25[0];
    v21 = 16;
    goto LABEL_35;
  }

  return [a2 hasError] ^ 1;
}

uint64_t APPBElementReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v27) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v27 & 0x7F) << v5;
        if ((v27 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 4)
      {
        if (v13 > 6)
        {
          if (v13 == 7)
          {
            v14 = objc_alloc_init(APPBStyle);
            objc_storeStrong((a1 + 64), v14);
            v27 = 0;
            v28 = 0;
            if (!PBReaderPlaceMark() || !APPBStyleReadFrom(v14, a2))
            {
LABEL_61:

              return 0;
            }

            goto LABEL_52;
          }

          if (v13 == 8)
          {
            v14 = objc_alloc_init(APPBAdAction);
            objc_storeStrong((a1 + 16), v14);
            v27 = 0;
            v28 = 0;
            if (!PBReaderPlaceMark() || !APPBAdActionReadFrom(v14, a2))
            {
              goto LABEL_61;
            }

            goto LABEL_52;
          }
        }

        else
        {
          if (v13 == 5)
          {
            v14 = objc_alloc_init(APPBButton);
            objc_storeStrong((a1 + 48), v14);
            v27 = 0;
            v28 = 0;
            if (!PBReaderPlaceMark() || !APPBButtonReadFrom(v14, a2))
            {
              goto LABEL_61;
            }

            goto LABEL_52;
          }

          if (v13 == 6)
          {
            v15 = PBReaderReadString();
            v16 = 24;
LABEL_49:
            v24 = *(a1 + v16);
            *(a1 + v16) = v15;

            goto LABEL_59;
          }
        }
      }

      else if (v13 > 2)
      {
        if (v13 == 3)
        {
          v15 = PBReaderReadString();
          v16 = 40;
          goto LABEL_49;
        }

        if (v13 == 4)
        {
          v15 = PBReaderReadString();
          v16 = 8;
          goto LABEL_49;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v17 = 0;
          v18 = 0;
          v19 = 0;
          *(a1 + 72) |= 1u;
          while (1)
          {
            LOBYTE(v27) = 0;
            v20 = [a2 position] + 1;
            if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
            {
              v22 = [a2 data];
              [v22 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v19 |= (v27 & 0x7F) << v17;
            if ((v27 & 0x80) == 0)
            {
              break;
            }

            v17 += 7;
            v11 = v18++ >= 9;
            if (v11)
            {
              v23 = 0;
              goto LABEL_58;
            }
          }

          if ([a2 hasError])
          {
            v23 = 0;
          }

          else
          {
            v23 = v19;
          }

LABEL_58:
          *(a1 + 56) = v23;
          goto LABEL_59;
        }

        if (v13 == 2)
        {
          v14 = objc_alloc_init(APPBAsset);
          objc_storeStrong((a1 + 32), v14);
          v27 = 0;
          v28 = 0;
          if (!PBReaderPlaceMark() || !APPBAssetReadFrom(v14, a2))
          {
            goto LABEL_61;
          }

LABEL_52:
          PBReaderRecallMark();

          goto LABEL_59;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_59:
      v25 = [a2 position];
    }

    while (v25 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t APPBMediaAssetReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v75) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v75 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v75 & 0x7F) << v5;
        if ((v75 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      switch((v12 >> 3))
      {
        case 1u:
          v13 = PBReaderReadString();
          v14 = 72;
          goto LABEL_63;
        case 2u:
          v13 = PBReaderReadString();
          v14 = 56;
          goto LABEL_63;
        case 3u:
          v31 = 0;
          v32 = 0;
          v33 = 0;
          *(a1 + 88) |= 0x10u;
          while (1)
          {
            LOBYTE(v75) = 0;
            v34 = [a2 position] + 1;
            if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
            {
              v36 = [a2 data];
              [v36 getBytes:&v75 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v33 |= (v75 & 0x7F) << v31;
            if ((v75 & 0x80) == 0)
            {
              break;
            }

            v31 += 7;
            v11 = v32++ >= 9;
            if (v11)
            {
              v28 = 0;
              goto LABEL_105;
            }
          }

          if ([a2 hasError])
          {
            v28 = 0;
          }

          else
          {
            v28 = v33;
          }

LABEL_105:
          v68 = 44;
          goto LABEL_118;
        case 4u:
          v37 = 0;
          v38 = 0;
          v39 = 0;
          *(a1 + 88) |= 0x40u;
          while (1)
          {
            LOBYTE(v75) = 0;
            v40 = [a2 position] + 1;
            if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
            {
              v42 = [a2 data];
              [v42 getBytes:&v75 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v39 |= (v75 & 0x7F) << v37;
            if ((v75 & 0x80) == 0)
            {
              break;
            }

            v37 += 7;
            v11 = v38++ >= 9;
            if (v11)
            {
              v28 = 0;
              goto LABEL_109;
            }
          }

          if ([a2 hasError])
          {
            v28 = 0;
          }

          else
          {
            v28 = v39;
          }

LABEL_109:
          v68 = 64;
          goto LABEL_118;
        case 5u:
          v22 = 0;
          v23 = 0;
          v24 = 0;
          *(a1 + 88) |= 8u;
          while (1)
          {
            LOBYTE(v75) = 0;
            v25 = [a2 position] + 1;
            if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
            {
              v27 = [a2 data];
              [v27 getBytes:&v75 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v24 |= (v75 & 0x7F) << v22;
            if ((v75 & 0x80) == 0)
            {
              break;
            }

            v22 += 7;
            v11 = v23++ >= 9;
            if (v11)
            {
              v28 = 0;
              goto LABEL_101;
            }
          }

          if ([a2 hasError])
          {
            v28 = 0;
          }

          else
          {
            v28 = v24;
          }

LABEL_101:
          v68 = 40;
          goto LABEL_118;
        case 6u:
          v46 = 0;
          v47 = 0;
          v48 = 0;
          *(a1 + 88) |= 0x80u;
          while (1)
          {
            LOBYTE(v75) = 0;
            v49 = [a2 position] + 1;
            if (v49 >= [a2 position] && (v50 = objc_msgSend(a2, "position") + 1, v50 <= objc_msgSend(a2, "length")))
            {
              v51 = [a2 data];
              [v51 getBytes:&v75 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v48 |= (v75 & 0x7F) << v46;
            if ((v75 & 0x80) == 0)
            {
              break;
            }

            v46 += 7;
            v11 = v47++ >= 9;
            if (v11)
            {
              v28 = 0;
              goto LABEL_113;
            }
          }

          if ([a2 hasError])
          {
            v28 = 0;
          }

          else
          {
            v28 = v48;
          }

LABEL_113:
          v68 = 80;
          goto LABEL_118;
        case 7u:
          v53 = 0;
          v54 = 0;
          v55 = 0;
          *(a1 + 88) |= 0x20u;
          while (1)
          {
            LOBYTE(v75) = 0;
            v56 = [a2 position] + 1;
            if (v56 >= [a2 position] && (v57 = objc_msgSend(a2, "position") + 1, v57 <= objc_msgSend(a2, "length")))
            {
              v58 = [a2 data];
              [v58 getBytes:&v75 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v55 |= (v75 & 0x7F) << v53;
            if ((v75 & 0x80) == 0)
            {
              break;
            }

            v53 += 7;
            v11 = v54++ >= 9;
            if (v11)
            {
              v28 = 0;
              goto LABEL_117;
            }
          }

          if ([a2 hasError])
          {
            v28 = 0;
          }

          else
          {
            v28 = v55;
          }

LABEL_117:
          v68 = 48;
LABEL_118:
          *(a1 + v68) = v28;
          goto LABEL_129;
        case 8u:
          *(a1 + 88) |= 1u;
          v75 = 0;
          v43 = [a2 position] + 8;
          if (v43 >= [a2 position] && (v44 = objc_msgSend(a2, "position") + 8, v44 <= objc_msgSend(a2, "length")))
          {
            v72 = [a2 data];
            [v72 getBytes:&v75 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v70 = v75;
          v71 = 8;
          goto LABEL_128;
        case 9u:
          *(a1 + 88) |= 4u;
          v75 = 0;
          v65 = [a2 position] + 8;
          if (v65 >= [a2 position] && (v66 = objc_msgSend(a2, "position") + 8, v66 <= objc_msgSend(a2, "length")))
          {
            v73 = [a2 data];
            [v73 getBytes:&v75 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v70 = v75;
          v71 = 24;
          goto LABEL_128;
        case 0xAu:
          *(a1 + 88) |= 2u;
          v75 = 0;
          v29 = [a2 position] + 8;
          if (v29 >= [a2 position] && (v30 = objc_msgSend(a2, "position") + 8, v30 <= objc_msgSend(a2, "length")))
          {
            v69 = [a2 data];
            [v69 getBytes:&v75 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v70 = v75;
          v71 = 16;
LABEL_128:
          *(a1 + v71) = v70;
          goto LABEL_129;
        case 0xBu:
          v59 = 0;
          v60 = 0;
          v61 = 0;
          *(a1 + 88) |= 0x200u;
          while (1)
          {
            LOBYTE(v75) = 0;
            v62 = [a2 position] + 1;
            if (v62 >= [a2 position] && (v63 = objc_msgSend(a2, "position") + 1, v63 <= objc_msgSend(a2, "length")))
            {
              v64 = [a2 data];
              [v64 getBytes:&v75 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v61 |= (v75 & 0x7F) << v59;
            if ((v75 & 0x80) == 0)
            {
              break;
            }

            v59 += 7;
            v11 = v60++ >= 9;
            if (v11)
            {
              LOBYTE(v21) = 0;
              goto LABEL_120;
            }
          }

          v21 = (v61 != 0) & ~[a2 hasError];
LABEL_120:
          v67 = 85;
          goto LABEL_121;
        case 0xCu:
          v15 = 0;
          v16 = 0;
          v17 = 0;
          *(a1 + 88) |= 0x100u;
          break;
        case 0xDu:
          v13 = PBReaderReadString();
          v14 = 32;
LABEL_63:
          v45 = *(a1 + v14);
          *(a1 + v14) = v13;

          goto LABEL_129;
        default:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_129;
      }

      while (1)
      {
        LOBYTE(v75) = 0;
        v18 = [a2 position] + 1;
        if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
        {
          v20 = [a2 data];
          [v20 getBytes:&v75 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v17 |= (v75 & 0x7F) << v15;
        if ((v75 & 0x80) == 0)
        {
          break;
        }

        v15 += 7;
        v11 = v16++ >= 9;
        if (v11)
        {
          LOBYTE(v21) = 0;
          goto LABEL_97;
        }
      }

      v21 = (v17 != 0) & ~[a2 hasError];
LABEL_97:
      v67 = 84;
LABEL_121:
      *(a1 + v67) = v21;
LABEL_129:
      v74 = [a2 position];
    }

    while (v74 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1002B5C80(id a1)
{
  v1 = qword_1004E6A50;
  qword_1004E6A50 = &off_1004940A0;
}

uint64_t APPBAttributionResponseReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(APPBKeyedParameterList);
        [a1 addVersionedAttributionDetails:v13];
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !APPBKeyedParameterListReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1002B6674(id a1)
{
  qword_1004E6A60 = objc_alloc_init(APPromotedContentLegacyInterface);

  _objc_release_x1();
}

uint64_t sub_1002B7030(uint64_t a1)
{
  v2 = +[NSMutableDictionary dictionary];
  v3 = *(a1 + 32);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  *(*(a1 + 32) + 48) = [[APUnfairLock alloc] initWithOptions:1];

  return _objc_release_x1();
}

void sub_1002B74FC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 40);
  v6 = a3;
  v7 = [v5 objectForKeyedSubscript:a2];
  [*(a1 + 32) setObject:v7 forKeyedSubscript:v6];
}

void sub_1002B7D24(uint64_t a1)
{
  v2 = [*(a1 + 32) unsignedIntValue];
  v3 = [APContentDataInternal alloc];
  v4 = [*(a1 + 40) identifier];
  [*(a1 + 40) maxSize];
  v5 = [(APContentDataInternal *)v3 initRateLimitedForContextId:v4 containerSize:v2 placementType:?];

  v6 = APLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [v5 content];
    v8 = [v7 identifier];
    v9 = *(a1 + 48);
    v10 = 138543874;
    v11 = v8;
    v12 = 2160;
    v13 = 1752392040;
    v14 = 2112;
    v15 = v9;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Returning rate limited adOpID: %{public}@. Token: %{mask.hash}@", &v10, 0x20u);
  }

  (*(*(a1 + 56) + 16))();
}

void sub_1002B7F94(id a1)
{
  v1 = qword_1004E6A78;
  qword_1004E6A78 = &off_1004940C8;
}

uint64_t APPBLogVideoAnalyticsEventRequestReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v50[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v50 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v50[0] & 0x7F) << v5;
        if ((v50[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 4)
      {
        break;
      }

      if (v13 > 2)
      {
        if (v13 == 3)
        {
          v23 = 0;
          v24 = 0;
          v25 = 0;
          *(a1 + 72) |= 0x20u;
          while (1)
          {
            LOBYTE(v50[0]) = 0;
            v26 = [a2 position] + 1;
            if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
            {
              v28 = [a2 data];
              [v28 getBytes:v50 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v25 |= (v50[0] & 0x7F) << v23;
            if ((v50[0] & 0x80) == 0)
            {
              break;
            }

            v23 += 7;
            v11 = v24++ >= 9;
            if (v11)
            {
              v29 = 0;
              goto LABEL_71;
            }
          }

          if ([a2 hasError])
          {
            v29 = 0;
          }

          else
          {
            v29 = v25;
          }

LABEL_71:
          v40 = 64;
          goto LABEL_76;
        }

        if (v13 == 4)
        {
          *(a1 + 72) |= 1u;
          v50[0] = 0;
          v18 = [a2 position] + 8;
          if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 8, v19 <= objc_msgSend(a2, "length")))
          {
            v41 = [a2 data];
            [v41 getBytes:v50 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v42 = v50[0];
          v43 = 8;
          goto LABEL_85;
        }

        goto LABEL_66;
      }

      if (v13 != 1)
      {
        if (v13 == 2)
        {
          v16 = PBReaderReadString();
          v17 = *(a1 + 40);
          *(a1 + 40) = v16;

          goto LABEL_86;
        }

        goto LABEL_66;
      }

      v22 = objc_alloc_init(APPBLogMetaData);
      objc_storeStrong((a1 + 56), v22);
      v50[0] = 0;
      v50[1] = 0;
      if (!PBReaderPlaceMark() || !APPBLogMetaDataReadFrom(v22, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_86:
      v47 = [a2 position];
      if (v47 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 <= 6)
    {
      if (v13 == 5)
      {
        *(a1 + 72) |= 4u;
        v50[0] = 0;
        v32 = [a2 position] + 8;
        if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 8, v33 <= objc_msgSend(a2, "length")))
        {
          v46 = [a2 data];
          [v46 getBytes:v50 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v42 = v50[0];
        v43 = 24;
        goto LABEL_85;
      }

      if (v13 == 6)
      {
        *(a1 + 72) |= 8u;
        v50[0] = 0;
        v20 = [a2 position] + 8;
        if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 8, v21 <= objc_msgSend(a2, "length")))
        {
          v44 = [a2 data];
          [v44 getBytes:v50 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v42 = v50[0];
        v43 = 32;
        goto LABEL_85;
      }
    }

    else
    {
      switch(v13)
      {
        case 7:
          *(a1 + 72) |= 2u;
          v50[0] = 0;
          v30 = [a2 position] + 8;
          if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 8, v31 <= objc_msgSend(a2, "length")))
          {
            v45 = [a2 data];
            [v45 getBytes:v50 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v42 = v50[0];
          v43 = 16;
LABEL_85:
          *(a1 + v43) = v42;
          goto LABEL_86;
        case 8:
          v34 = 0;
          v35 = 0;
          v36 = 0;
          *(a1 + 72) |= 0x10u;
          while (1)
          {
            LOBYTE(v50[0]) = 0;
            v37 = [a2 position] + 1;
            if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 1, v38 <= objc_msgSend(a2, "length")))
            {
              v39 = [a2 data];
              [v39 getBytes:v50 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v36 |= (v50[0] & 0x7F) << v34;
            if ((v50[0] & 0x80) == 0)
            {
              break;
            }

            v34 += 7;
            v11 = v35++ >= 9;
            if (v11)
            {
              v29 = 0;
              goto LABEL_75;
            }
          }

          if ([a2 hasError])
          {
            v29 = 0;
          }

          else
          {
            v29 = v36;
          }

LABEL_75:
          v40 = 48;
LABEL_76:
          *(a1 + v40) = v29;
          goto LABEL_86;
        case 9:
          *(a1 + 72) |= 0x40u;
          LODWORD(v50[0]) = 0;
          v14 = [a2 position] + 4;
          if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 4, v15 <= objc_msgSend(a2, "length")))
          {
            v48 = [a2 data];
            [v48 getBytes:v50 range:{objc_msgSend(a2, "position"), 4}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          *(a1 + 68) = v50[0];
          goto LABEL_86;
      }
    }

LABEL_66:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_86;
  }

  return [a2 hasError] ^ 1;
}

void sub_1002BB1D4(id a1)
{
  v1 = qword_1004E6A88;
  qword_1004E6A88 = &off_1004940F0;
}

uint64_t APPBAttributionRequestReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v56) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v56 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v56 & 0x7F) << v5;
        if ((v56 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      switch((v12 >> 3))
      {
        case 1u:
          v13 = PBReaderReadData();
          v14 = 88;
          goto LABEL_60;
        case 2u:
          v13 = PBReaderReadData();
          v14 = 104;
          goto LABEL_60;
        case 3u:
          v13 = PBReaderReadData();
          v14 = 56;
          goto LABEL_60;
        case 4u:
          v13 = PBReaderReadString();
          v14 = 64;
          goto LABEL_60;
        case 5u:
          *(a1 + 124) |= 8u;
          v56 = 0;
          v24 = [a2 position] + 8;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 8, v25 <= objc_msgSend(a2, "length")))
          {
            v51 = [a2 data];
            [v51 getBytes:&v56 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v49 = v56;
          v50 = 32;
          goto LABEL_91;
        case 6u:
          *(a1 + 124) |= 2u;
          v56 = 0;
          v34 = [a2 position] + 8;
          if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 8, v35 <= objc_msgSend(a2, "length")))
          {
            v52 = [a2 data];
            [v52 getBytes:&v56 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v49 = v56;
          v50 = 16;
          goto LABEL_91;
        case 7u:
          *(a1 + 124) |= 4u;
          v56 = 0;
          v38 = [a2 position] + 8;
          if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 8, v39 <= objc_msgSend(a2, "length")))
          {
            v54 = [a2 data];
            [v54 getBytes:&v56 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v49 = v56;
          v50 = 24;
          goto LABEL_91;
        case 8u:
          v27 = 0;
          v28 = 0;
          v29 = 0;
          *(a1 + 124) |= 0x80u;
          while (1)
          {
            LOBYTE(v56) = 0;
            v30 = [a2 position] + 1;
            if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
            {
              v32 = [a2 data];
              [v32 getBytes:&v56 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v29 |= (v56 & 0x7F) << v27;
            if ((v56 & 0x80) == 0)
            {
              break;
            }

            v27 += 7;
            v11 = v28++ >= 9;
            if (v11)
            {
              LOBYTE(v33) = 0;
              goto LABEL_75;
            }
          }

          v33 = (v29 != 0) & ~[a2 hasError];
LABEL_75:
          *(a1 + 120) = v33;
          goto LABEL_92;
        case 9u:
          v41 = 0;
          v42 = 0;
          v43 = 0;
          *(a1 + 124) |= 0x40u;
          while (1)
          {
            LOBYTE(v56) = 0;
            v44 = [a2 position] + 1;
            if (v44 >= [a2 position] && (v45 = objc_msgSend(a2, "position") + 1, v45 <= objc_msgSend(a2, "length")))
            {
              v46 = [a2 data];
              [v46 getBytes:&v56 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v43 |= (v56 & 0x7F) << v41;
            if ((v56 & 0x80) == 0)
            {
              break;
            }

            v41 += 7;
            v11 = v42++ >= 9;
            if (v11)
            {
              v21 = 0;
              goto LABEL_79;
            }
          }

          if ([a2 hasError])
          {
            v21 = 0;
          }

          else
          {
            v21 = v43;
          }

LABEL_79:
          v47 = 96;
          goto LABEL_80;
        case 0xAu:
          v13 = PBReaderReadData();
          v14 = 112;
          goto LABEL_60;
        case 0xBu:
          v13 = PBReaderReadData();
          v14 = 72;
          goto LABEL_60;
        case 0xCu:
          *(a1 + 124) |= 0x10u;
          v56 = 0;
          v22 = [a2 position] + 8;
          if (v22 >= [a2 position] && (v23 = objc_msgSend(a2, "position") + 8, v23 <= objc_msgSend(a2, "length")))
          {
            v48 = [a2 data];
            [v48 getBytes:&v56 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v49 = v56;
          v50 = 40;
          goto LABEL_91;
        case 0xDu:
          v13 = PBReaderReadString();
          v14 = 48;
LABEL_60:
          v40 = *(a1 + v14);
          *(a1 + v14) = v13;

          goto LABEL_92;
        case 0xEu:
          *(a1 + 124) |= 1u;
          v56 = 0;
          v36 = [a2 position] + 8;
          if (v36 >= [a2 position] && (v37 = objc_msgSend(a2, "position") + 8, v37 <= objc_msgSend(a2, "length")))
          {
            v53 = [a2 data];
            [v53 getBytes:&v56 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v49 = v56;
          v50 = 8;
LABEL_91:
          *(a1 + v50) = v49;
          goto LABEL_92;
        case 0xFu:
          v15 = 0;
          v16 = 0;
          v17 = 0;
          *(a1 + 124) |= 0x20u;
          break;
        default:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_92;
      }

      while (1)
      {
        LOBYTE(v56) = 0;
        v18 = [a2 position] + 1;
        if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
        {
          v20 = [a2 data];
          [v20 getBytes:&v56 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v17 |= (v56 & 0x7F) << v15;
        if ((v56 & 0x80) == 0)
        {
          break;
        }

        v15 += 7;
        v11 = v16++ >= 9;
        if (v11)
        {
          v21 = 0;
          goto LABEL_73;
        }
      }

      v21 = [a2 hasError] ? 0 : v17;
LABEL_73:
      v47 = 80;
LABEL_80:
      *(a1 + v47) = v21;
LABEL_92:
      v55 = [a2 position];
    }

    while (v55 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1002BDA98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1002BDAB8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = 1;
  }

  else
  {
    v8 = v6 == 0;
  }

  v9 = v8;
  v10 = APLogForCategory();
  v11 = v10;
  if (v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Aggregated time spent metric request succeeded.", &v14, 2u);
    }
  }

  else if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v12 = [v7 localizedDescription];
    v14 = 138543362;
    v15 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Aggregated time spent metric request failed due to %{public}@.", &v14, 0xCu);
  }

  v13 = *(*(a1 + 40) + 8);
  if ((*(v13 + 24) & 1) == 0)
  {
    *(v13 + 24) = 1;
    (*(*(a1 + 32) + 16))();
  }
}

uint64_t APPBLogMetaDataReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v101) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v101 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v101 & 0x7F) << v5;
        if ((v101 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 99)
      {
        switch(v13)
        {
          case 1:
            v14 = PBReaderReadString();
            v15 = 64;
            goto LABEL_142;
          case 2:
            v48 = 0;
            v49 = 0;
            v50 = 0;
            *(a1 + 220) |= 0x400u;
            while (1)
            {
              LOBYTE(v101) = 0;
              v51 = [a2 position] + 1;
              if (v51 >= [a2 position] && (v52 = objc_msgSend(a2, "position") + 1, v52 <= objc_msgSend(a2, "length")))
              {
                v53 = [a2 data];
                [v53 getBytes:&v101 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v50 |= (v101 & 0x7F) << v48;
              if ((v101 & 0x80) == 0)
              {
                break;
              }

              v48 += 7;
              v11 = v49++ >= 9;
              if (v11)
              {
                v28 = 0;
                goto LABEL_180;
              }
            }

            if ([a2 hasError])
            {
              v28 = 0;
            }

            else
            {
              v28 = v50;
            }

LABEL_180:
            v93 = 160;
            goto LABEL_205;
          case 3:
            v14 = PBReaderReadData();
            v15 = 136;
            goto LABEL_142;
          case 4:
            v66 = 0;
            v67 = 0;
            v68 = 0;
            *(a1 + 220) |= 0x100u;
            while (1)
            {
              LOBYTE(v101) = 0;
              v69 = [a2 position] + 1;
              if (v69 >= [a2 position] && (v70 = objc_msgSend(a2, "position") + 1, v70 <= objc_msgSend(a2, "length")))
              {
                v71 = [a2 data];
                [v71 getBytes:&v101 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v68 |= (v101 & 0x7F) << v66;
              if ((v101 & 0x80) == 0)
              {
                break;
              }

              v66 += 7;
              v11 = v67++ >= 9;
              if (v11)
              {
                v28 = 0;
                goto LABEL_192;
              }
            }

            if ([a2 hasError])
            {
              v28 = 0;
            }

            else
            {
              v28 = v68;
            }

LABEL_192:
            v93 = 144;
            goto LABEL_205;
          case 5:
            v29 = 0;
            v30 = 0;
            v31 = 0;
            *(a1 + 220) |= 0x800u;
            while (1)
            {
              LOBYTE(v101) = 0;
              v32 = [a2 position] + 1;
              if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
              {
                v34 = [a2 data];
                [v34 getBytes:&v101 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v31 |= (v101 & 0x7F) << v29;
              if ((v101 & 0x80) == 0)
              {
                break;
              }

              v29 += 7;
              v11 = v30++ >= 9;
              if (v11)
              {
                v28 = 0;
                goto LABEL_170;
              }
            }

            if ([a2 hasError])
            {
              v28 = 0;
            }

            else
            {
              v28 = v31;
            }

LABEL_170:
            v93 = 164;
            goto LABEL_205;
          case 8:
            v42 = 0;
            v43 = 0;
            v44 = 0;
            *(a1 + 220) |= 0x40u;
            while (1)
            {
              LOBYTE(v101) = 0;
              v45 = [a2 position] + 1;
              if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 1, v46 <= objc_msgSend(a2, "length")))
              {
                v47 = [a2 data];
                [v47 getBytes:&v101 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v44 |= (v101 & 0x7F) << v42;
              if ((v101 & 0x80) == 0)
              {
                break;
              }

              v42 += 7;
              v11 = v43++ >= 9;
              if (v11)
              {
                v28 = 0;
                goto LABEL_176;
              }
            }

            if ([a2 hasError])
            {
              v28 = 0;
            }

            else
            {
              v28 = v44;
            }

LABEL_176:
            v93 = 96;
            goto LABEL_205;
          case 9:
            v60 = 0;
            v61 = 0;
            v62 = 0;
            *(a1 + 220) |= 8u;
            while (1)
            {
              LOBYTE(v101) = 0;
              v63 = [a2 position] + 1;
              if (v63 >= [a2 position] && (v64 = objc_msgSend(a2, "position") + 1, v64 <= objc_msgSend(a2, "length")))
              {
                v65 = [a2 data];
                [v65 getBytes:&v101 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v62 |= (v101 & 0x7F) << v60;
              if ((v101 & 0x80) == 0)
              {
                break;
              }

              v60 += 7;
              v11 = v61++ >= 9;
              if (v11)
              {
                v28 = 0;
                goto LABEL_188;
              }
            }

            if ([a2 hasError])
            {
              v28 = 0;
            }

            else
            {
              v28 = v62;
            }

LABEL_188:
            v93 = 48;
            goto LABEL_205;
          case 10:
            v14 = PBReaderReadData();
            v15 = 200;
            goto LABEL_142;
          case 11:
            v16 = PBReaderReadData();
            if (v16)
            {
              [a1 addTiltTrackBlob:v16];
            }

            goto LABEL_140;
          case 13:
            *(a1 + 220) |= 4u;
            v101 = 0;
            v20 = [a2 position] + 8;
            if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 8, v21 <= objc_msgSend(a2, "length")))
            {
              v94 = [a2 data];
              [v94 getBytes:&v101 range:{objc_msgSend(a2, "position"), 8}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            v95 = v101;
            v96 = 24;
            goto LABEL_212;
          case 14:
            *(a1 + 220) |= 2u;
            v101 = 0;
            v72 = [a2 position] + 8;
            if (v72 >= [a2 position] && (v73 = objc_msgSend(a2, "position") + 8, v73 <= objc_msgSend(a2, "length")))
            {
              v97 = [a2 data];
              [v97 getBytes:&v101 range:{objc_msgSend(a2, "position"), 8}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            v95 = v101;
            v96 = 16;
            goto LABEL_212;
          case 15:
            v22 = 0;
            v23 = 0;
            v24 = 0;
            *(a1 + 220) |= 0x200u;
            while (1)
            {
              LOBYTE(v101) = 0;
              v25 = [a2 position] + 1;
              if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
              {
                v27 = [a2 data];
                [v27 getBytes:&v101 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v24 |= (v101 & 0x7F) << v22;
              if ((v101 & 0x80) == 0)
              {
                break;
              }

              v22 += 7;
              v11 = v23++ >= 9;
              if (v11)
              {
                v28 = 0;
                goto LABEL_166;
              }
            }

            if ([a2 hasError])
            {
              v28 = 0;
            }

            else
            {
              v28 = v24;
            }

LABEL_166:
            v93 = 148;
            goto LABEL_205;
          case 16:
            v74 = 0;
            v75 = 0;
            v76 = 0;
            *(a1 + 220) |= 0x20u;
            while (1)
            {
              LOBYTE(v101) = 0;
              v77 = [a2 position] + 1;
              if (v77 >= [a2 position] && (v78 = objc_msgSend(a2, "position") + 1, v78 <= objc_msgSend(a2, "length")))
              {
                v79 = [a2 data];
                [v79 getBytes:&v101 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v76 |= (v101 & 0x7F) << v74;
              if ((v101 & 0x80) == 0)
              {
                break;
              }

              v74 += 7;
              v11 = v75++ >= 9;
              if (v11)
              {
                v28 = 0;
                goto LABEL_196;
              }
            }

            if ([a2 hasError])
            {
              v28 = 0;
            }

            else
            {
              v28 = v76;
            }

LABEL_196:
            v93 = 76;
            goto LABEL_205;
          case 17:
            v14 = PBReaderReadString();
            v15 = 184;
            goto LABEL_142;
          case 18:
            v54 = 0;
            v55 = 0;
            v56 = 0;
            *(a1 + 220) |= 0x1000u;
            while (1)
            {
              LOBYTE(v101) = 0;
              v57 = [a2 position] + 1;
              if (v57 >= [a2 position] && (v58 = objc_msgSend(a2, "position") + 1, v58 <= objc_msgSend(a2, "length")))
              {
                v59 = [a2 data];
                [v59 getBytes:&v101 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v56 |= (v101 & 0x7F) << v54;
              if ((v101 & 0x80) == 0)
              {
                break;
              }

              v54 += 7;
              v11 = v55++ >= 9;
              if (v11)
              {
                v28 = 0;
                goto LABEL_184;
              }
            }

            if ([a2 hasError])
            {
              v28 = 0;
            }

            else
            {
              v28 = v56;
            }

LABEL_184:
            v93 = 192;
            goto LABEL_205;
          case 19:
            v35 = 0;
            v36 = 0;
            v37 = 0;
            *(a1 + 220) |= 0x2000u;
            break;
          case 20:
            v14 = PBReaderReadData();
            v15 = 128;
            goto LABEL_142;
          case 21:
            v14 = PBReaderReadData();
            v15 = 56;
            goto LABEL_142;
          case 22:
            v14 = PBReaderReadData();
            v15 = 104;
            goto LABEL_142;
          case 23:
            v14 = PBReaderReadData();
            v15 = 112;
            goto LABEL_142;
          case 24:
            v14 = PBReaderReadData();
            v15 = 152;
            goto LABEL_142;
          default:
            goto LABEL_161;
        }

        while (1)
        {
          LOBYTE(v101) = 0;
          v38 = [a2 position] + 1;
          if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 1, v39 <= objc_msgSend(a2, "length")))
          {
            v40 = [a2 data];
            [v40 getBytes:&v101 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v37 |= (v101 & 0x7F) << v35;
          if ((v101 & 0x80) == 0)
          {
            break;
          }

          v35 += 7;
          v11 = v36++ >= 9;
          if (v11)
          {
            LOBYTE(v41) = 0;
            goto LABEL_172;
          }
        }

        v41 = (v37 != 0) & ~[a2 hasError];
LABEL_172:
        *(a1 + 216) = v41;
        goto LABEL_213;
      }

      if (v13 <= 103)
      {
        if (v13 > 101)
        {
          if (v13 == 102)
          {
            v16 = objc_alloc_init(APPBAdSize);
            v19 = 80;
          }

          else
          {
            v16 = objc_alloc_init(APPBAdSize);
            v19 = 176;
          }

          goto LABEL_137;
        }

        if (v13 == 100)
        {
          v16 = objc_alloc_init(APPBAdSize);
          v19 = 168;
LABEL_137:
          objc_storeStrong((a1 + v19), v16);
          v101 = 0;
          v102 = 0;
          if (!PBReaderPlaceMark() || !APPBAdSizeReadFrom(v16, a2))
          {
LABEL_215:

            return 0;
          }

LABEL_139:
          PBReaderRecallMark();
LABEL_140:

          goto LABEL_213;
        }

        if (v13 == 101)
        {
          *(a1 + 220) |= 1u;
          v101 = 0;
          v17 = [a2 position] + 8;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 8, v18 <= objc_msgSend(a2, "length")))
          {
            v98 = [a2 data];
            [v98 getBytes:&v101 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v95 = v101;
          v96 = 8;
LABEL_212:
          *(a1 + v96) = v95;
          goto LABEL_213;
        }
      }

      else
      {
        if (v13 <= 105)
        {
          if (v13 == 104)
          {
            v14 = PBReaderReadString();
            v15 = 32;
          }

          else
          {
            v14 = PBReaderReadString();
            v15 = 40;
          }

LABEL_142:
          v80 = *(a1 + v15);
          *(a1 + v15) = v14;

          goto LABEL_213;
        }

        switch(v13)
        {
          case 'j':
            v87 = 0;
            v88 = 0;
            v89 = 0;
            *(a1 + 220) |= 0x10u;
            while (1)
            {
              LOBYTE(v101) = 0;
              v90 = [a2 position] + 1;
              if (v90 >= [a2 position] && (v91 = objc_msgSend(a2, "position") + 1, v91 <= objc_msgSend(a2, "length")))
              {
                v92 = [a2 data];
                [v92 getBytes:&v101 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v89 |= (v101 & 0x7F) << v87;
              if ((v101 & 0x80) == 0)
              {
                break;
              }

              v87 += 7;
              v11 = v88++ >= 9;
              if (v11)
              {
                v28 = 0;
                goto LABEL_204;
              }
            }

            if ([a2 hasError])
            {
              v28 = 0;
            }

            else
            {
              v28 = v89;
            }

LABEL_204:
            v93 = 72;
            goto LABEL_205;
          case 'k':
            v81 = 0;
            v82 = 0;
            v83 = 0;
            *(a1 + 220) |= 0x80u;
            while (1)
            {
              LOBYTE(v101) = 0;
              v84 = [a2 position] + 1;
              if (v84 >= [a2 position] && (v85 = objc_msgSend(a2, "position") + 1, v85 <= objc_msgSend(a2, "length")))
              {
                v86 = [a2 data];
                [v86 getBytes:&v101 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v83 |= (v101 & 0x7F) << v81;
              if ((v101 & 0x80) == 0)
              {
                break;
              }

              v81 += 7;
              v11 = v82++ >= 9;
              if (v11)
              {
                v28 = 0;
                goto LABEL_200;
              }
            }

            if ([a2 hasError])
            {
              v28 = 0;
            }

            else
            {
              v28 = v83;
            }

LABEL_200:
            v93 = 120;
LABEL_205:
            *(a1 + v93) = v28;
            goto LABEL_213;
          case 'l':
            v16 = objc_alloc_init(APPBComponentMetaData);
            [a1 addComponentElements:v16];
            v101 = 0;
            v102 = 0;
            if (!PBReaderPlaceMark() || !APPBComponentMetaDataReadFrom(v16, a2))
            {
              goto LABEL_215;
            }

            goto LABEL_139;
        }
      }

LABEL_161:
      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_213:
      v99 = [a2 position];
    }

    while (v99 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1002C2914(id a1)
{
  v1 = qword_1004E6A98;
  qword_1004E6A98 = &off_100494118;
}

uint64_t APPBVideoAssetReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v20 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v20 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v20 & 0x7F) << v5;
        if ((v20 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v14 = PBReaderReadData();
        v15 = &OBJC_IVAR___APPBVideoAsset__videoSoundCheckData;
        goto LABEL_23;
      }

      if (v13 == 2)
      {
        break;
      }

      if (v13 == 1)
      {
        v14 = PBReaderReadString();
        v15 = &OBJC_IVAR___APPBVideoAsset__videoFormat;
LABEL_23:
        v16 = *v15;
        v17 = *(a1 + v16);
        *(a1 + v16) = v14;

        goto LABEL_25;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_25:
      v18 = [a2 position];
      if (v18 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = PBReaderReadString();
    v15 = &OBJC_IVAR___APPBVideoAsset__videoFileURL;
    goto LABEL_23;
  }

  return [a2 hasError] ^ 1;
}

id APPBAdsOptions()
{
  if (qword_1004E6AB0 != -1)
  {
    sub_100393FCC();
  }

  v1 = qword_1004E6AA8;

  return v1;
}

void sub_1002C317C(id a1)
{
  v1 = qword_1004E6AA8;
  qword_1004E6AA8 = &off_100494140;
}

void sub_1002C356C(id a1)
{
  v1 = qword_1004E6AB8;
  qword_1004E6AB8 = &off_100494168;
}

uint64_t APPBParameterReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v19 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19 & 0x7F) << v5;
        if ((v19 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 1)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v13 = &OBJC_IVAR___APPBParameter__value;
LABEL_21:
        v14 = PBReaderReadString();
        v15 = *v13;
        v16 = *(a1 + v15);
        *(a1 + v15) = v14;

        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_23:
      v17 = [a2 position];
      if (v17 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = &OBJC_IVAR___APPBParameter__key;
    goto LABEL_21;
  }

  return [a2 hasError] ^ 1;
}

void sub_1002C3C50(id a1)
{
  v1 = qword_1004E6AC8;
  qword_1004E6AC8 = &off_100494190;
}

uint64_t APPBLogAnalyticsResponseReadFrom(uint64_t a1, void *a2)
{
  while (1)
  {
    v3 = [a2 position];
    if (v3 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v4 = 0;
    v5 = 0;
    v6 = 0;
    while (1)
    {
      v13 = 0;
      v7 = [a2 position] + 1;
      if (v7 >= [a2 position] && (v8 = objc_msgSend(a2, "position") + 1, v8 <= objc_msgSend(a2, "length")))
      {
        v9 = [a2 data];
        [v9 getBytes:&v13 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v6 |= (v13 & 0x7F) << v4;
      if ((v13 & 0x80) == 0)
      {
        break;
      }

      v4 += 7;
      if (v5++ >= 9)
      {
        v11 = 0;
        goto LABEL_15;
      }
    }

    v11 = [a2 hasError] ? 0 : v6;
LABEL_15:
    if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
    {
      break;
    }

    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t APPBUserTransparencyResponseReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(APPBTransparencyDetails);
        objc_storeStrong((a1 + 8), v13);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !APPBTransparencyDetailsReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t APPBButtonStyleReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v21) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v21 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v21 & 0x7F) << v5;
        if ((v21 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 3)
      {
        switch(v13)
        {
          case 4:
            v14 = objc_alloc_init(APPBColor);
            v15 = 48;
            goto LABEL_33;
          case 5:
            *(a1 + 56) |= 1u;
            LODWORD(v21) = 0;
            v17 = [a2 position] + 4;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 4, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:&v21 range:{objc_msgSend(a2, "position"), 4}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
            }

            else
            {
              [a2 _setError];
            }

            *(a1 + 24) = v21;
            goto LABEL_36;
          case 6:
            v14 = objc_alloc_init(APPBBorderStyle);
            objc_storeStrong((a1 + 8), v14);
            v21 = 0;
            v22 = 0;
            if (!PBReaderPlaceMark() || !APPBBorderStyleReadFrom(v14, a2))
            {
LABEL_44:

              return 0;
            }

            goto LABEL_35;
        }
      }

      else
      {
        switch(v13)
        {
          case 1:
            v14 = objc_alloc_init(APPBColor);
            v15 = 16;
            goto LABEL_33;
          case 2:
            v14 = objc_alloc_init(APPBColor);
            v15 = 40;
            goto LABEL_33;
          case 3:
            v14 = objc_alloc_init(APPBColor);
            v15 = 32;
LABEL_33:
            objc_storeStrong((a1 + v15), v14);
            v21 = 0;
            v22 = 0;
            if (!PBReaderPlaceMark() || !APPBColorReadFrom(v14, a2))
            {
              goto LABEL_44;
            }

LABEL_35:
            PBReaderRecallMark();

            goto LABEL_36;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_36:
      v16 = [a2 position];
    }

    while (v16 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t APPBInstallAttributionReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v45 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v45 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v45 & 0x7F) << v5;
        if ((v45 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 4)
      {
        if (v13 > 6)
        {
          if (v13 == 7)
          {
            v36 = 0;
            v37 = 0;
            v38 = 0;
            *(a1 + 72) |= 4u;
            while (1)
            {
              v47 = 0;
              v39 = [a2 position] + 1;
              if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
              {
                v41 = [a2 data];
                [v41 getBytes:&v47 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v38 |= (v47 & 0x7F) << v36;
              if ((v47 & 0x80) == 0)
              {
                break;
              }

              v36 += 7;
              v11 = v37++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_74;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v38;
            }

LABEL_74:
            v43 = 24;
          }

          else
          {
            if (v13 != 9)
            {
LABEL_69:
              result = PBReaderSkipValueWithTag();
              if (!result)
              {
                return result;
              }

              goto LABEL_88;
            }

            v29 = 0;
            v30 = 0;
            v31 = 0;
            *(a1 + 72) |= 8u;
            while (1)
            {
              v46 = 0;
              v32 = [a2 position] + 1;
              if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
              {
                v34 = [a2 data];
                [v34 getBytes:&v46 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v31 |= (v46 & 0x7F) << v29;
              if ((v46 & 0x80) == 0)
              {
                break;
              }

              v29 += 7;
              v11 = v30++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_86;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v31;
            }

LABEL_86:
            v43 = 32;
          }

          goto LABEL_87;
        }

        if (v13 != 5)
        {
          if (v13 != 6)
          {
            goto LABEL_69;
          }

          v21 = 0;
          v22 = 0;
          v23 = 0;
          *(a1 + 72) |= 1u;
          while (1)
          {
            v48 = 0;
            v24 = [a2 position] + 1;
            if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
            {
              v26 = [a2 data];
              [v26 getBytes:&v48 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v23 |= (v48 & 0x7F) << v21;
            if ((v48 & 0x80) == 0)
            {
              break;
            }

            v21 += 7;
            v11 = v22++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_82;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v23;
          }

LABEL_82:
          v43 = 8;
          goto LABEL_87;
        }

        v27 = PBReaderReadString();
        v28 = 56;
      }

      else if (v13 > 2)
      {
        if (v13 == 3)
        {
          v27 = PBReaderReadString();
          v28 = 64;
        }

        else
        {
          if (v13 != 4)
          {
            goto LABEL_69;
          }

          v27 = PBReaderReadString();
          v28 = 48;
        }
      }

      else
      {
        if (v13 != 1)
        {
          if (v13 != 2)
          {
            goto LABEL_69;
          }

          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 72) |= 2u;
          while (1)
          {
            v49 = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:&v49 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v49 & 0x7F) << v14;
            if ((v49 & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_78;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v16;
          }

LABEL_78:
          v43 = 16;
LABEL_87:
          *(a1 + v43) = v20;
          goto LABEL_88;
        }

        v27 = PBReaderReadString();
        v28 = 40;
      }

      v35 = *(a1 + v28);
      *(a1 + v28) = v27;

LABEL_88:
      v44 = [a2 position];
    }

    while (v44 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1002C71A4(id a1)
{
  v1 = qword_1004E6AD8;
  qword_1004E6AD8 = &off_1004941B8;
}

uint64_t APPBMescalSignSAPSetupRequestReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v17 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17 & 0x7F) << v5;
        if ((v17 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadData();
        v14 = *(a1 + 8);
        *(a1 + 8) = v13;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v16 = [a2 position];
    }

    while (v16 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1002C766C(id a1)
{
  v1 = qword_1004E6AE8;
  qword_1004E6AE8 = &off_1004941E0;
}

uint64_t APPBOptOutRequestReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v37) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v37 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v37 & 0x7F) << v5;
        if ((v37 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 3)
      {
        if (v13 == 4)
        {
          *(a1 + 48) |= 1u;
          v37 = 0;
          v19 = [a2 position] + 8;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 8, v20 <= objc_msgSend(a2, "length")))
          {
            v31 = [a2 data];
            [v31 getBytes:&v37 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v32 = v37;
          v33 = 8;
LABEL_53:
          *(a1 + v33) = v32;
          goto LABEL_56;
        }

        if (v13 == 5)
        {
          *(a1 + 48) |= 4u;
          LODWORD(v37) = 0;
          v29 = [a2 position] + 4;
          if (v29 >= [a2 position] && (v30 = objc_msgSend(a2, "position") + 4, v30 <= objc_msgSend(a2, "length")))
          {
            v35 = [a2 data];
            [v35 getBytes:&v37 range:{objc_msgSend(a2, "position"), 4}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          *(a1 + 40) = v37;
          goto LABEL_56;
        }

        if (v13 != 6)
        {
LABEL_33:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_56;
        }

        v16 = PBReaderReadData();
        v17 = 24;
      }

      else
      {
        if (v13 != 1)
        {
          if (v13 == 2)
          {
            v22 = 0;
            v23 = 0;
            v24 = 0;
            *(a1 + 48) |= 8u;
            while (1)
            {
              LOBYTE(v37) = 0;
              v25 = [a2 position] + 1;
              if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
              {
                v27 = [a2 data];
                [v27 getBytes:&v37 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v24 |= (v37 & 0x7F) << v22;
              if ((v37 & 0x80) == 0)
              {
                break;
              }

              v22 += 7;
              v11 = v23++ >= 9;
              if (v11)
              {
                LOBYTE(v28) = 0;
                goto LABEL_48;
              }
            }

            v28 = (v24 != 0) & ~[a2 hasError];
LABEL_48:
            *(a1 + 44) = v28;
            goto LABEL_56;
          }

          if (v13 != 3)
          {
            goto LABEL_33;
          }

          *(a1 + 48) |= 2u;
          v37 = 0;
          v14 = [a2 position] + 8;
          if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 8, v15 <= objc_msgSend(a2, "length")))
          {
            v34 = [a2 data];
            [v34 getBytes:&v37 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v32 = v37;
          v33 = 16;
          goto LABEL_53;
        }

        v16 = PBReaderReadData();
        v17 = 32;
      }

      v18 = *(a1 + v17);
      *(a1 + v17) = v16;

LABEL_56:
      v36 = [a2 position];
    }

    while (v36 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1002C88D0(id a1)
{
  v1 = qword_1004E6AF8;
  qword_1004E6AF8 = &off_100494208;
}

uint64_t APPBAggregateDistributionMetricReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v36 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v36 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v36 & 0x7F) << v5;
        if ((v36 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 99)
      {
        if (v13 == 1)
        {
          v16 = PBReaderReadString();
          v17 = 32;
        }

        else
        {
          if (v13 != 2)
          {
LABEL_41:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_52;
          }

          v16 = PBReaderReadString();
          v17 = 16;
        }

        v27 = *(a1 + v17);
        *(a1 + v17) = v16;
      }

      else if (v13 == 100)
      {
        v18 = 0;
        v19 = 0;
        v20 = 0;
        *(a1 + 44) |= 2u;
        while (1)
        {
          v37 = 0;
          v21 = [a2 position] + 1;
          if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 1, v22 <= objc_msgSend(a2, "length")))
          {
            v23 = [a2 data];
            [v23 getBytes:&v37 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v20 |= (v37 & 0x7F) << v18;
          if ((v37 & 0x80) == 0)
          {
            break;
          }

          v18 += 7;
          v11 = v19++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_46;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v20;
        }

LABEL_46:
        *(a1 + 24) = v24;
      }

      else
      {
        if (v13 == 101)
        {
          *(a1 + 44) |= 1u;
          v35 = 0;
          v25 = [a2 position] + 4;
          if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 4, v26 <= objc_msgSend(a2, "length")))
          {
            v29 = [a2 data];
            [v29 getBytes:&v35 range:{objc_msgSend(a2, "position"), 4}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          v30 = v35;
          v31 = 8;
        }

        else
        {
          if (v13 != 102)
          {
            goto LABEL_41;
          }

          *(a1 + 44) |= 4u;
          v34 = 0;
          v14 = [a2 position] + 4;
          if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 4, v15 <= objc_msgSend(a2, "length")))
          {
            v32 = [a2 data];
            [v32 getBytes:&v34 range:{objc_msgSend(a2, "position"), 4}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          v30 = v34;
          v31 = 40;
        }

        *(a1 + v31) = v30;
      }

LABEL_52:
      v33 = [a2 position];
    }

    while (v33 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1002C9868(id a1)
{
  v1 = qword_1004E6B08;
  qword_1004E6B08 = &off_100494230;
}

uint64_t APPBAdSpaceStatusEventResponseReadFrom(uint64_t a1, void *a2)
{
  while (1)
  {
    v3 = [a2 position];
    if (v3 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v4 = 0;
    v5 = 0;
    v6 = 0;
    while (1)
    {
      v13 = 0;
      v7 = [a2 position] + 1;
      if (v7 >= [a2 position] && (v8 = objc_msgSend(a2, "position") + 1, v8 <= objc_msgSend(a2, "length")))
      {
        v9 = [a2 data];
        [v9 getBytes:&v13 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v6 |= (v13 & 0x7F) << v4;
      if ((v13 & 0x80) == 0)
      {
        break;
      }

      v4 += 7;
      if (v5++ >= 9)
      {
        v11 = 0;
        goto LABEL_15;
      }
    }

    v11 = [a2 hasError] ? 0 : v6;
LABEL_15:
    if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
    {
      break;
    }

    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }
  }

  return [a2 hasError] ^ 1;
}

void sub_1002C9B88(id a1)
{
  v1 = qword_1004E6B18;
  qword_1004E6B18 = &off_100494258;
}

uint64_t APPBLogSubscriptionEventResponseReadFrom(uint64_t a1, void *a2)
{
  while (1)
  {
    v3 = [a2 position];
    if (v3 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v4 = 0;
    v5 = 0;
    v6 = 0;
    while (1)
    {
      v13 = 0;
      v7 = [a2 position] + 1;
      if (v7 >= [a2 position] && (v8 = objc_msgSend(a2, "position") + 1, v8 <= objc_msgSend(a2, "length")))
      {
        v9 = [a2 data];
        [v9 getBytes:&v13 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v6 |= (v13 & 0x7F) << v4;
      if ((v13 & 0x80) == 0)
      {
        break;
      }

      v4 += 7;
      if (v5++ >= 9)
      {
        v11 = 0;
        goto LABEL_15;
      }
    }

    v11 = [a2 hasError] ? 0 : v6;
LABEL_15:
    if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
    {
      break;
    }

    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }
  }

  return [a2 hasError] ^ 1;
}

void sub_1002C9EA8(id a1)
{
  v1 = qword_1004E6B28;
  qword_1004E6B28 = &off_100494280;
}

uint64_t APPBLogAggregateMetricsRequestReadFrom(char *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v19) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19 & 0x7F) << v5;
        if ((v19 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 99)
      {
        if (v13 == 100)
        {
          v16 = objc_alloc_init(APPBAggregateDistributionMetric);
          [a1 addDistributionMetrics:v16];
          v19 = 0;
          v20 = 0;
          if (!PBReaderPlaceMark() || !APPBAggregateDistributionMetricReadFrom(v16, a2))
          {
LABEL_36:

            return 0;
          }

LABEL_32:
          PBReaderRecallMark();
LABEL_33:

          goto LABEL_34;
        }

        if (v13 == 101)
        {
          v16 = objc_alloc_init(APPBAggregateScalarMetric);
          [a1 addScalarMetrics:v16];
          v19 = 0;
          v20 = 0;
          if (!PBReaderPlaceMark() || !APPBAggregateScalarMetricReadFrom(v16, a2))
          {
            goto LABEL_36;
          }

          goto LABEL_32;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v14 = PBReaderReadString();
          v15 = 8;
          goto LABEL_29;
        }

        if (v13 == 2)
        {
          v14 = PBReaderReadString();
          v15 = 24;
LABEL_29:
          v16 = *&a1[v15];
          *&a1[v15] = v14;
          goto LABEL_33;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_34:
      v17 = [a2 position];
    }

    while (v17 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1002CB03C(id a1)
{
  v1 = qword_1004E6B38;
  qword_1004E6B38 = &off_1004942A8;
}

uint64_t APPBTagTransformationReadFrom(void *a1, void *a2)
{
  for (i = a2; ; i = a2)
  {
    v5 = [i position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      return [a2 hasError] ^ 1;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v16 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v16 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v16 & 0x7F) << v6;
      if ((v16 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      if (v7++ >= 9)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      return [a2 hasError] ^ 1;
    }

    if ((v13 >> 3) == 2)
    {
      v14 = PBReaderReadString();
      if (v14)
      {
        [a1 addResultTags:v14];
      }

      goto LABEL_24;
    }

    if ((v13 >> 3) == 1)
    {
      v14 = PBReaderReadString();
      if (v14)
      {
        [a1 addRequiredTags:v14];
      }

LABEL_24:

      continue;
    }

    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      break;
    }
  }

  return 0;
}

void sub_1002CBCD8(id a1)
{
  v1 = qword_1004E6B48;
  qword_1004E6B48 = &off_1004942D0;
}

uint64_t APPBAnalyticsEventReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v26 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v26 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v26 & 0x7F) << v5;
        if ((v26 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 3)
      {
        v25 = 0;
        v20 = [a2 position] + 8;
        if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 8, v21 <= objc_msgSend(a2, "length")))
        {
          v23 = [a2 data];
          [v23 getBytes:&v25 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 8) = v25;
      }

      else if ((v12 >> 3) == 2)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        while (1)
        {
          v27 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v27 & 0x7F) << v13;
          if ((v27 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_36;
          }
        }

        v19 = [a2 hasError] ? 0 : v15;
LABEL_36:
        *(a1 + 16) = v19;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v24 = [a2 position];
    }

    while (v24 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1002CD170(id a1)
{
  qword_1004E6B58 = [NSString stringWithFormat:@"%@%@%@", @"body", @".", @"creativeType"];

  _objc_release_x1();
}

void sub_1002CD2CC(id a1)
{
  v1 = qword_1004E6B68;
  qword_1004E6B68 = &off_1004942F8;
}

uint64_t APPBLogVideoAnalyticsEventResponseReadFrom(uint64_t a1, void *a2)
{
  while (1)
  {
    v3 = [a2 position];
    if (v3 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v4 = 0;
    v5 = 0;
    v6 = 0;
    while (1)
    {
      v13 = 0;
      v7 = [a2 position] + 1;
      if (v7 >= [a2 position] && (v8 = objc_msgSend(a2, "position") + 1, v8 <= objc_msgSend(a2, "length")))
      {
        v9 = [a2 data];
        [v9 getBytes:&v13 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v6 |= (v13 & 0x7F) << v4;
      if ((v13 & 0x80) == 0)
      {
        break;
      }

      v4 += 7;
      if (v5++ >= 9)
      {
        v11 = 0;
        goto LABEL_15;
      }
    }

    v11 = [a2 hasError] ? 0 : v6;
LABEL_15:
    if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
    {
      break;
    }

    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t APPBTargetingDimensionsReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        v13 = objc_alloc_init(APPBTargetingCriteria);
        [a1 addExclusionCriteria:v13];
      }

      else
      {
        if ((v12 >> 3) != 1)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            return 0;
          }

          goto LABEL_25;
        }

        v13 = objc_alloc_init(APPBTargetingCriteria);
        [a1 addInclusionCriteria:v13];
      }

      v16[0] = 0;
      v16[1] = 0;
      if (!PBReaderPlaceMark() || !APPBTargetingCriteriaReadFrom(v13, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_25:
      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1002CF0B4(id a1)
{
  v1 = qword_1004E6B78;
  qword_1004E6B78 = &off_100494320;
}

uint64_t APPBMescalSignSAPSetupCertificateRequestReadFrom(uint64_t a1, void *a2)
{
  while (1)
  {
    v3 = [a2 position];
    if (v3 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v4 = 0;
    v5 = 0;
    v6 = 0;
    while (1)
    {
      v13 = 0;
      v7 = [a2 position] + 1;
      if (v7 >= [a2 position] && (v8 = objc_msgSend(a2, "position") + 1, v8 <= objc_msgSend(a2, "length")))
      {
        v9 = [a2 data];
        [v9 getBytes:&v13 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v6 |= (v13 & 0x7F) << v4;
      if ((v13 & 0x80) == 0)
      {
        break;
      }

      v4 += 7;
      if (v5++ >= 9)
      {
        v11 = 0;
        goto LABEL_15;
      }
    }

    v11 = [a2 hasError] ? 0 : v6;
LABEL_15:
    if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
    {
      break;
    }

    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t APPBResourceCacheEntryReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v23 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v23 & 0x7F) << v5;
        if ((v23 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        *(a1 + 32) |= 1u;
        v22 = 0;
        v17 = [a2 position] + 8;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 8, v18 <= objc_msgSend(a2, "length")))
        {
          v20 = [a2 data];
          [v20 getBytes:&v22 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 8) = v22;
      }

      else
      {
        if (v13 == 2)
        {
          v14 = PBReaderReadString();
          v15 = 16;
        }

        else
        {
          if (v13 != 1)
          {
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_30;
          }

          v14 = PBReaderReadString();
          v15 = 24;
        }

        v16 = *(a1 + v15);
        *(a1 + v15) = v14;
      }

LABEL_30:
      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1002CFE98(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  [APAnalytics sendEvent:@"MescalSetup" statusDetail:&off_100492628 startDate:v5 error:v6];
  v8 = *(a1 + 40);
  v9 = [v7 buffer];

  (*(v8 + 16))(v8, v9, v6);
}

void sub_1002D008C(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  [APAnalytics sendEvent:@"MescalSetup" statusDetail:&off_100492640 startDate:v5 error:v6];
  v8 = *(a1 + 40);
  v9 = [v7 certificate];

  (*(v8 + 16))(v8, v9, v6);
}

void sub_1002D0190(id a1)
{
  v1 = qword_1004E6B88;
  qword_1004E6B88 = &off_100494348;
}

uint64_t APPBMescalSignSAPSetupCertificateResponseReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v17 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17 & 0x7F) << v5;
        if ((v17 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadData();
        v14 = *(a1 + 8);
        *(a1 + 8) = v13;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v16 = [a2 position];
    }

    while (v16 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1002D0744(id a1)
{
  v1 = +[NSMutableDictionary dictionary];
  v2 = qword_1004E6B98;
  qword_1004E6B98 = v1;

  [qword_1004E6B98 setObject:kAPMetricClientIdentifierKey forKey:&off_100492670];
  [qword_1004E6B98 setObject:@"capping_event" forKey:&off_100492688];
  [qword_1004E6B98 setObject:@"client_source" forKey:&off_1004926A0];
  [qword_1004E6B98 setObject:@"deletion_ids" forKey:&off_1004926B8];
  [qword_1004E6B98 setObject:@"element" forKey:&off_1004926D0];
  [qword_1004E6B98 setObject:@"elements_partially_shown" forKey:&off_1004926E8];
  [qword_1004E6B98 setObject:@"elements_shown" forKey:&off_100492700];
  [qword_1004E6B98 setObject:@"error_code" forKey:&off_100492718];
  [qword_1004E6B98 setObject:@"button_state" forKey:&off_100492730];
  [qword_1004E6B98 setObject:@"code" forKey:&off_100492748];
  [qword_1004E6B98 setObject:@"collapsed" forKey:&off_100492760];
  [qword_1004E6B98 setObject:@"dnu" forKey:&off_100492778];
  [qword_1004E6B98 setObject:@"duration" forKey:&off_100492790];
  [qword_1004E6B98 setObject:@"full_screen" forKey:&off_1004927A8];
  [qword_1004E6B98 setObject:@"height" forKey:&off_1004927C0];
  [qword_1004E6B98 setObject:@"impression_id" forKey:&off_1004927D8];
  [qword_1004E6B98 setObject:@"handle" forKey:&off_1004927F0];
  [qword_1004E6B98 setObject:@"news" forKey:&off_100492808];
  [qword_1004E6B98 setObject:@"percent" forKey:&off_100492820];
  [qword_1004E6B98 setObject:@"placeholder" forKey:&off_100492838];
  [qword_1004E6B98 setObject:@"placeholderIdentifier" forKey:&off_100492850];
  [qword_1004E6B98 setObject:@"placement" forKey:&off_100492868];
  [qword_1004E6B98 setObject:@"position" forKey:&off_100492880];
  [qword_1004E6B98 setObject:@"progress" forKey:&off_100492898];
  [qword_1004E6B98 setObject:@"quality" forKey:&off_1004928B0];
  [qword_1004E6B98 setObject:@"reason" forKey:&off_1004928C8];
  [qword_1004E6B98 setObject:@"representationIdentifier" forKey:&off_1004928E0];
  [qword_1004E6B98 setObject:@"return_time" forKey:&off_1004928F8];
  [qword_1004E6B98 setObject:@"scroll_velocity" forKey:&off_100492910];
  [qword_1004E6B98 setObject:@"search_term_id" forKey:&off_100492928];
  [qword_1004E6B98 setObject:@"start_date" forKey:&off_100492940];
  [qword_1004E6B98 setObject:kAPMetricSubscriptionCurrency forKey:&off_100492958];
  [qword_1004E6B98 setObject:kAPMetricSubscriptionIdentifier forKey:&off_100492970];
  [qword_1004E6B98 setObject:kAPMetricSubscriptionPrice forKey:&off_100492988];
  [qword_1004E6B98 setObject:kAPMetricSubscriptionPurchase forKey:&off_1004929A0];
  [qword_1004E6B98 setObject:kAPMetricSubscriptionSource forKey:&off_1004929B8];
  [qword_1004E6B98 setObject:kAPMetricSubscriptionToken forKey:&off_1004929D0];
  [qword_1004E6B98 setObject:kAPMetricSubscriptionType forKey:&off_1004929E8];
  [qword_1004E6B98 setObject:@"template_argument" forKey:&off_100492A00];
  [qword_1004E6B98 setObject:@"template_metric_name" forKey:&off_100492A18];
  [qword_1004E6B98 setObject:@"time_to_previous_install" forKey:&off_100492A30];
  [qword_1004E6B98 setObject:@"type" forKey:&off_100492A48];
  [qword_1004E6B98 setObject:@"url" forKey:&off_100492A60];
  [qword_1004E6B98 setObject:@"voice_over_enabled" forKey:&off_100492A78];
  [qword_1004E6B98 setObject:@"volume" forKey:&off_100492A90];
  [qword_1004E6B98 setObject:@"was_native_slot" forKey:&off_100492AA8];
  [qword_1004E6B98 setObject:@"width" forKey:&off_100492AC0];
  [qword_1004E6B98 setObject:@"x_position" forKey:&off_100492AD8];
  [qword_1004E6B98 setObject:@"y_position" forKey:&off_100492AF0];
  [qword_1004E6B98 setObject:kAPMetricClientInfoKey forKey:&off_100492B08];
  v3 = qword_1004E6B98;

  [v3 setObject:@"webview_terminated" forKey:&off_100492B20];
}

void sub_1002D10DC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1002D1100(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained handleMetricResponse:v6 error:v5 forRequest:*(a1 + 32)];
}

void sub_1002D142C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1002D144C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1002D1464(uint64_t a1, void *a2, int a3)
{
  v10 = a2;
  if (a3)
  {
    v5 = *(a1 + 32);
    v6 = [*(a1 + 40) requestIdentifier];
    [v5 removeDelayedRequest:v6 cancel:0];
  }

  else
  {
    v7 = os_transaction_create();
    v8 = *(*(a1 + 56) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    (*(*(a1 + 48) + 16))();
  }
}

void sub_1002D150C(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = a3;
  v8 = a2;
  v9 = [v6 requestIdentifier];
  [v5 removeDelayedRequest:v9 cancel:0];

  [*(a1 + 32) handleMetricResponse:v8 error:v7 forRequest:*(a1 + 40)];
  v10 = *(*(a1 + 48) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = 0;
}

void sub_1002D1808(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1002D1820(void *a1, uint64_t a2, void *a3)
{
  v11 = a3;
  v4 = [v11 internalContent];
  v5 = [v4 content];
  v6 = [v5 identifier];
  if ([v6 isEqualToString:a1[4]])
  {
    v7 = [v11 cancelled];

    if ((v7 & 1) == 0)
    {
      if (!*(*(a1[6] + 8) + 40))
      {
        v8 = +[NSMutableArray array];
        v9 = *(a1[6] + 8);
        v10 = *(v9 + 40);
        *(v9 + 40) = v8;
      }

      if ((*(a1[5] + 16))())
      {
        [*(*(a1[6] + 8) + 40) addObject:v11];
      }
    }
  }

  else
  {
  }
}

id sub_1002D27F0(uint64_t a1)
{
  v2 = (*(*(a1 + 40) + 16))();
  if (v2 && ([*(a1 + 32) metric] == 1405 || objc_msgSend(*(a1 + 32), "metric") == 77005 || (objc_msgSend(v2, "internalContent"), v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "content"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "serverUnfilledReason"), v4, v3, v5 != 1030)))
  {
    v6 = v2;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void sub_1002D3720(uint64_t a1)
{
  v2 = [*(a1 + 32) confirmedClickLock];
  [v2 lock];

  v3 = [*(a1 + 40) internalContent];
  [v3 confirmClick];

  v4 = [*(a1 + 40) internalContent];
  [v4 pendingConfirmedClick:0];

  v5 = [*(a1 + 32) confirmedClickLock];
  [v5 unlock];
}

void sub_1002D5F14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1002D5F94(uint64_t a1)
{
  [*(a1 + 32) carouselFinishedSent];
  v2 = APLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 40);
    v4 = 134217984;
    v5 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Sent delayed APPBLogSysEventRequest with type CarouselFinished after %.1f seconds.", &v4, 0xCu);
  }
}

void sub_1002D71CC(id a1, APServerRequester *a2)
{
  v2 = a2;
  v3 = APLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = [(APServerRequester *)v2 internalContent];
    v5 = [v4 content];
    v6 = [v5 identifier];
    v7 = 138543618;
    v8 = v6;
    v9 = 1024;
    v10 = 2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Sending ASE AdNotAvailable for preroll video placeholder %{public}@ because it was not replaced in the allowed time (%d seconds)", &v7, 0x12u);
  }
}

void sub_1002D73FC(id a1)
{
  v1 = qword_1004E6BA8;
  qword_1004E6BA8 = &off_100494370;
}

uint64_t APPBAdSpaceStatusEventRequestReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v60) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v60 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v60 & 0x7F) << v5;
        if ((v60 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      switch((v12 >> 3))
      {
        case 1u:
          v13 = PBReaderReadString();
          v14 = 32;
          goto LABEL_60;
        case 2u:
          v13 = PBReaderReadString();
          v14 = 24;
          goto LABEL_60;
        case 3u:
          v13 = PBReaderReadData();
          v14 = 40;
          goto LABEL_60;
        case 4u:
          v13 = PBReaderReadData();
          v14 = 56;
          goto LABEL_60;
        case 5u:
          v13 = PBReaderReadData();
          v14 = 80;
          goto LABEL_60;
        case 6u:
          *(a1 + 112) |= 2u;
          v60 = 0;
          v22 = [a2 position] + 8;
          if (v22 >= [a2 position] && (v23 = objc_msgSend(a2, "position") + 8, v23 <= objc_msgSend(a2, "length")))
          {
            v55 = [a2 data];
            [v55 getBytes:&v60 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v56 = v60;
          v57 = 16;
          goto LABEL_103;
        case 7u:
          *(a1 + 112) |= 1u;
          v60 = 0;
          v24 = [a2 position] + 8;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 8, v25 <= objc_msgSend(a2, "length")))
          {
            v58 = [a2 data];
            [v58 getBytes:&v60 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v56 = v60;
          v57 = 8;
LABEL_103:
          *(a1 + v57) = v56;
          goto LABEL_104;
        case 8u:
          v26 = 0;
          v27 = 0;
          v28 = 0;
          *(a1 + 112) |= 4u;
          while (1)
          {
            LOBYTE(v60) = 0;
            v29 = [a2 position] + 1;
            if (v29 >= [a2 position] && (v30 = objc_msgSend(a2, "position") + 1, v30 <= objc_msgSend(a2, "length")))
            {
              v31 = [a2 data];
              [v31 getBytes:&v60 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v28 |= (v60 & 0x7F) << v26;
            if ((v60 & 0x80) == 0)
            {
              break;
            }

            v26 += 7;
            v11 = v27++ >= 9;
            if (v11)
            {
              v32 = 0;
              goto LABEL_86;
            }
          }

          if ([a2 hasError])
          {
            v32 = 0;
          }

          else
          {
            v32 = v28;
          }

LABEL_86:
          v54 = 96;
          goto LABEL_95;
        case 9u:
          v46 = 0;
          v47 = 0;
          v48 = 0;
          *(a1 + 112) |= 0x40u;
          while (1)
          {
            LOBYTE(v60) = 0;
            v49 = [a2 position] + 1;
            if (v49 >= [a2 position] && (v50 = objc_msgSend(a2, "position") + 1, v50 <= objc_msgSend(a2, "length")))
            {
              v51 = [a2 data];
              [v51 getBytes:&v60 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v48 |= (v60 & 0x7F) << v46;
            if ((v60 & 0x80) == 0)
            {
              break;
            }

            v46 += 7;
            v11 = v47++ >= 9;
            if (v11)
            {
              LOBYTE(v21) = 0;
              goto LABEL_97;
            }
          }

          v21 = (v48 != 0) & ~[a2 hasError];
LABEL_97:
          v53 = 109;
          goto LABEL_98;
        case 0xAu:
          v40 = 0;
          v41 = 0;
          v42 = 0;
          *(a1 + 112) |= 0x10u;
          while (1)
          {
            LOBYTE(v60) = 0;
            v43 = [a2 position] + 1;
            if (v43 >= [a2 position] && (v44 = objc_msgSend(a2, "position") + 1, v44 <= objc_msgSend(a2, "length")))
            {
              v45 = [a2 data];
              [v45 getBytes:&v60 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v42 |= (v60 & 0x7F) << v40;
            if ((v60 & 0x80) == 0)
            {
              break;
            }

            v40 += 7;
            v11 = v41++ >= 9;
            if (v11)
            {
              v32 = 0;
              goto LABEL_94;
            }
          }

          if ([a2 hasError])
          {
            v32 = 0;
          }

          else
          {
            v32 = v42;
          }

LABEL_94:
          v54 = 104;
          goto LABEL_95;
        case 0xBu:
          v13 = PBReaderReadString();
          v14 = 88;
          goto LABEL_60;
        case 0xDu:
          v13 = PBReaderReadData();
          v14 = 72;
          goto LABEL_60;
        case 0xEu:
          v13 = PBReaderReadString();
          v14 = 48;
          goto LABEL_60;
        case 0xFu:
          v15 = 0;
          v16 = 0;
          v17 = 0;
          *(a1 + 112) |= 0x20u;
          while (1)
          {
            LOBYTE(v60) = 0;
            v18 = [a2 position] + 1;
            if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
            {
              v20 = [a2 data];
              [v20 getBytes:&v60 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v17 |= (v60 & 0x7F) << v15;
            if ((v60 & 0x80) == 0)
            {
              break;
            }

            v15 += 7;
            v11 = v16++ >= 9;
            if (v11)
            {
              LOBYTE(v21) = 0;
              goto LABEL_82;
            }
          }

          v21 = (v17 != 0) & ~[a2 hasError];
LABEL_82:
          v53 = 108;
LABEL_98:
          *(a1 + v53) = v21;
          goto LABEL_104;
        case 0x10u:
          v13 = PBReaderReadString();
          v14 = 64;
LABEL_60:
          v39 = *(a1 + v14);
          *(a1 + v14) = v13;

          goto LABEL_104;
        case 0x11u:
          v33 = 0;
          v34 = 0;
          v35 = 0;
          *(a1 + 112) |= 8u;
          break;
        default:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_104;
      }

      while (1)
      {
        LOBYTE(v60) = 0;
        v36 = [a2 position] + 1;
        if (v36 >= [a2 position] && (v37 = objc_msgSend(a2, "position") + 1, v37 <= objc_msgSend(a2, "length")))
        {
          v38 = [a2 data];
          [v38 getBytes:&v60 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v35 |= (v60 & 0x7F) << v33;
        if ((v60 & 0x80) == 0)
        {
          break;
        }

        v33 += 7;
        v11 = v34++ >= 9;
        if (v11)
        {
          v32 = 0;
          goto LABEL_90;
        }
      }

      v32 = [a2 hasError] ? 0 : v35;
LABEL_90:
      v54 = 100;
LABEL_95:
      *(a1 + v54) = v32;
LABEL_104:
      v59 = [a2 position];
    }

    while (v59 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t APPBAdBatchResponseReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 >= [a2 length])
  {
    return [a2 hasError] ^ 1;
  }

  while (2)
  {
    if ([a2 hasError])
    {
      return [a2 hasError] ^ 1;
    }

    v5 = 0;
    v6 = 0;
    v7 = 0;
    while (1)
    {
      LOBYTE(v62) = 0;
      v8 = [a2 position] + 1;
      if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
      {
        v10 = [a2 data];
        [v10 getBytes:&v62 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v7 |= (v62 & 0x7F) << v5;
      if ((v62 & 0x80) == 0)
      {
        break;
      }

      v5 += 7;
      v11 = v6++ >= 9;
      if (v11)
      {
        v12 = 0;
        goto LABEL_15;
      }
    }

    v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
    if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
    {
      return [a2 hasError] ^ 1;
    }

    v13 = v12 >> 3;
    switch((v12 >> 3))
    {
      case 1u:
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 108) |= 4u;
        while (1)
        {
          LOBYTE(v62) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v62 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v62 & 0x7F) << v14;
          if ((v62 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
LABEL_93:
            v52 = 64;
            goto LABEL_107;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v16;
        }

        goto LABEL_93;
      case 2u:
        v28 = PBReaderReadString();
        v29 = 48;
        goto LABEL_48;
      case 3u:
        v30 = objc_alloc_init(APPBAdData);
        [a1 addAd:v30];
        v62 = 0;
        v63 = 0;
        if (!PBReaderPlaceMark() || !APPBAdDataReadFrom(v30, a2))
        {
          goto LABEL_115;
        }

        goto LABEL_88;
      case 4u:
        v36 = 0;
        v37 = 0;
        v38 = 0;
        *(a1 + 108) |= 0x80u;
        while (1)
        {
          LOBYTE(v62) = 0;
          v39 = [a2 position] + 1;
          if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
          {
            v41 = [a2 data];
            [v41 getBytes:&v62 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v38 |= (v62 & 0x7F) << v36;
          if ((v62 & 0x80) == 0)
          {
            break;
          }

          v36 += 7;
          v11 = v37++ >= 9;
          if (v11)
          {
            LOBYTE(v27) = 0;
            goto LABEL_95;
          }
        }

        v27 = (v38 != 0) & ~[a2 hasError];
LABEL_95:
        v53 = 105;
        goto LABEL_102;
      case 5u:
        *(a1 + 108) |= 0x10u;
        LODWORD(v62) = 0;
        v42 = [a2 position] + 4;
        if (v42 >= [a2 position] && (v43 = objc_msgSend(a2, "position") + 4, v43 <= objc_msgSend(a2, "length")))
        {
          v58 = [a2 data];
          [v58 getBytes:&v62 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 72) = v62;
        goto LABEL_113;
      case 6u:
        *(a1 + 108) |= 8u;
        LODWORD(v62) = 0;
        v34 = [a2 position] + 4;
        if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 4, v35 <= objc_msgSend(a2, "length")))
        {
          v57 = [a2 data];
          [v57 getBytes:&v62 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        v20 = v62;
        v52 = 68;
        goto LABEL_107;
      case 7u:
        goto LABEL_38;
      case 8u:
        *(a1 + 108) |= 1u;
        v62 = 0;
        v50 = [a2 position] + 8;
        if (v50 >= [a2 position] && (v51 = objc_msgSend(a2, "position") + 8, v51 <= objc_msgSend(a2, "length")))
        {
          v59 = [a2 data];
          [v59 getBytes:&v62 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v55 = v62;
        v56 = 8;
        goto LABEL_112;
      case 9u:
        v30 = PBReaderReadString();
        if (v30)
        {
          [a1 addAdsToEvict:v30];
        }

        goto LABEL_89;
      case 0xAu:
        v30 = PBReaderReadString();
        if (v30)
        {
          [a1 addURLsToEvict:v30];
        }

        goto LABEL_89;
      case 0xBu:
        v30 = objc_alloc_init(APPBAdDataUpdate);
        [a1 addAdUpdates:v30];
        v62 = 0;
        v63 = 0;
        if (!PBReaderPlaceMark() || !APPBAdDataUpdateReadFrom(v30, a2))
        {
          goto LABEL_115;
        }

        goto LABEL_88;
      case 0xCu:
        v30 = objc_alloc_init(APPBTagTransformation);
        [a1 addTagTransformations:v30];
        v62 = 0;
        v63 = 0;
        if (!PBReaderPlaceMark() || !APPBTagTransformationReadFrom(v30, a2))
        {
          goto LABEL_115;
        }

        goto LABEL_88;
      case 0xDu:
        *(a1 + 108) |= 2u;
        v62 = 0;
        v31 = [a2 position] + 8;
        if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 8, v32 <= objc_msgSend(a2, "length")))
        {
          v54 = [a2 data];
          [v54 getBytes:&v62 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v55 = v62;
        v56 = 16;
LABEL_112:
        *(a1 + v56) = v55;
        goto LABEL_113;
      case 0xEu:
        v44 = 0;
        v45 = 0;
        v46 = 0;
        *(a1 + 108) |= 0x20u;
        while (1)
        {
          LOBYTE(v62) = 0;
          v47 = [a2 position] + 1;
          if (v47 >= [a2 position] && (v48 = objc_msgSend(a2, "position") + 1, v48 <= objc_msgSend(a2, "length")))
          {
            v49 = [a2 data];
            [v49 getBytes:&v62 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v46 |= (v62 & 0x7F) << v44;
          if ((v62 & 0x80) == 0)
          {
            break;
          }

          v44 += 7;
          v11 = v45++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_99;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v46;
        }

LABEL_99:
        v52 = 76;
LABEL_107:
        *(a1 + v52) = v20;
        goto LABEL_113;
      case 0xFu:
        v28 = PBReaderReadString();
        v29 = 56;
LABEL_48:
        v33 = *(a1 + v29);
        *(a1 + v29) = v28;

        goto LABEL_113;
      default:
        if (v13 != 100)
        {
          if (v13 == 200)
          {
            v21 = 0;
            v22 = 0;
            v23 = 0;
            *(a1 + 108) |= 0x40u;
            while (1)
            {
              LOBYTE(v62) = 0;
              v24 = [a2 position] + 1;
              if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
              {
                v26 = [a2 data];
                [v26 getBytes:&v62 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v23 |= (v62 & 0x7F) << v21;
              if ((v62 & 0x80) == 0)
              {
                break;
              }

              v21 += 7;
              v11 = v22++ >= 9;
              if (v11)
              {
                LOBYTE(v27) = 0;
                goto LABEL_101;
              }
            }

            v27 = (v23 != 0) & ~[a2 hasError];
LABEL_101:
            v53 = 104;
LABEL_102:
            *(a1 + v53) = v27;
          }

          else
          {
LABEL_38:
            if ((PBReaderSkipValueWithTag() & 1) == 0)
            {
              return 0;
            }
          }

          goto LABEL_113;
        }

        v30 = objc_alloc_init(APPBAdSpecification);
        objc_storeStrong((a1 + 80), v30);
        v62 = 0;
        v63 = 0;
        if (PBReaderPlaceMark() && APPBAdSpecificationReadFrom(v30, a2))
        {
LABEL_88:
          PBReaderRecallMark();
LABEL_89:

LABEL_113:
          v60 = [a2 position];
          if (v60 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          continue;
        }

LABEL_115:

        return 0;
    }
  }
}

void sub_1002DD58C(id a1)
{
  v1 = qword_1004E6BB8;
  qword_1004E6BB8 = &off_100494398;
}

uint64_t APPBLogSysEventResponseReadFrom(uint64_t a1, void *a2)
{
  while (1)
  {
    v3 = [a2 position];
    if (v3 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v4 = 0;
    v5 = 0;
    v6 = 0;
    while (1)
    {
      v13 = 0;
      v7 = [a2 position] + 1;
      if (v7 >= [a2 position] && (v8 = objc_msgSend(a2, "position") + 1, v8 <= objc_msgSend(a2, "length")))
      {
        v9 = [a2 data];
        [v9 getBytes:&v13 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v6 |= (v13 & 0x7F) << v4;
      if ((v13 & 0x80) == 0)
      {
        break;
      }

      v4 += 7;
      if (v5++ >= 9)
      {
        v11 = 0;
        goto LABEL_15;
      }
    }

    v11 = [a2 hasError] ? 0 : v6;
LABEL_15:
    if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
    {
      break;
    }

    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t APPBAdActionReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v105) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v105 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v105 & 0x7F) << v5;
        if ((v105 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 200)
      {
        if (v13 <= 219)
        {
          if (v13 <= 203)
          {
            switch(v13)
            {
              case 0xC9:
                v90 = 0;
                v91 = 0;
                v92 = 0;
                *(a1 + 196) |= 0x2000u;
                while (1)
                {
                  LOBYTE(v105) = 0;
                  v93 = [a2 position] + 1;
                  if (v93 >= [a2 position] && (v94 = objc_msgSend(a2, "position") + 1, v94 <= objc_msgSend(a2, "length")))
                  {
                    v95 = [a2 data];
                    [v95 getBytes:&v105 range:{objc_msgSend(a2, "position"), 1}];

                    [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                  }

                  else
                  {
                    [a2 _setError];
                  }

                  v92 |= (v105 & 0x7F) << v90;
                  if ((v105 & 0x80) == 0)
                  {
                    break;
                  }

                  v90 += 7;
                  v11 = v91++ >= 9;
                  if (v11)
                  {
                    LOBYTE(v22) = 0;
                    goto LABEL_225;
                  }
                }

                v22 = (v92 != 0) & ~[a2 hasError];
LABEL_225:
                v97 = 192;
                goto LABEL_226;
              case 0xCA:
                v62 = objc_alloc_init(APPBAdSize);
                [a1 addStoryboardSizes:v62];
                v105 = 0;
                v106 = 0;
                if (!PBReaderPlaceMark() || !APPBAdSizeReadFrom(v62, a2))
                {
LABEL_240:

                  return 0;
                }

                goto LABEL_179;
              case 0xCB:
                *(a1 + 196) |= 0x20u;
                LODWORD(v105) = 0;
                v38 = [a2 position] + 4;
                if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 4, v39 <= objc_msgSend(a2, "length")))
                {
                  v100 = [a2 data];
                  [v100 getBytes:&v105 range:{objc_msgSend(a2, "position"), 4}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
                }

                else
                {
                  [a2 _setError];
                }

                v35 = v105;
                v96 = 104;
                goto LABEL_237;
            }
          }

          else if (v13 > 209)
          {
            if (v13 == 210)
            {
              v63 = 0;
              v64 = 0;
              v65 = 0;
              *(a1 + 196) |= 0x400u;
              while (1)
              {
                LOBYTE(v105) = 0;
                v66 = [a2 position] + 1;
                if (v66 >= [a2 position] && (v67 = objc_msgSend(a2, "position") + 1, v67 <= objc_msgSend(a2, "length")))
                {
                  v68 = [a2 data];
                  [v68 getBytes:&v105 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v65 |= (v105 & 0x7F) << v63;
                if ((v105 & 0x80) == 0)
                {
                  break;
                }

                v63 += 7;
                v11 = v64++ >= 9;
                if (v11)
                {
                  LOBYTE(v22) = 0;
                  goto LABEL_199;
                }
              }

              v22 = (v65 != 0) & ~[a2 hasError];
LABEL_199:
              v97 = 189;
              goto LABEL_226;
            }

            if (v13 == 211)
            {
              *(a1 + 196) |= 2u;
              v105 = 0;
              v46 = [a2 position] + 8;
              if (v46 >= [a2 position] && (v47 = objc_msgSend(a2, "position") + 8, v47 <= objc_msgSend(a2, "length")))
              {
                v98 = [a2 data];
                [v98 getBytes:&v105 range:{objc_msgSend(a2, "position"), 8}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
              }

              else
              {
                [a2 _setError];
              }

              *(a1 + 16) = v105;
              goto LABEL_238;
            }
          }

          else
          {
            if (v13 == 204)
            {
              v56 = 0;
              v57 = 0;
              v58 = 0;
              *(a1 + 196) |= 0x40u;
              while (1)
              {
                LOBYTE(v105) = 0;
                v59 = [a2 position] + 1;
                if (v59 >= [a2 position] && (v60 = objc_msgSend(a2, "position") + 1, v60 <= objc_msgSend(a2, "length")))
                {
                  v61 = [a2 data];
                  [v61 getBytes:&v105 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v58 |= (v105 & 0x7F) << v56;
                if ((v105 & 0x80) == 0)
                {
                  break;
                }

                v56 += 7;
                v11 = v57++ >= 9;
                if (v11)
                {
                  v35 = 0;
                  goto LABEL_197;
                }
              }

              if ([a2 hasError])
              {
                v35 = 0;
              }

              else
              {
                v35 = v58;
              }

LABEL_197:
              v96 = 144;
              goto LABEL_237;
            }

            if (v13 == 205)
            {
              v29 = 0;
              v30 = 0;
              v31 = 0;
              *(a1 + 196) |= 0x80u;
              while (1)
              {
                LOBYTE(v105) = 0;
                v32 = [a2 position] + 1;
                if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
                {
                  v34 = [a2 data];
                  [v34 getBytes:&v105 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v31 |= (v105 & 0x7F) << v29;
                if ((v105 & 0x80) == 0)
                {
                  break;
                }

                v29 += 7;
                v11 = v30++ >= 9;
                if (v11)
                {
                  v35 = 0;
                  goto LABEL_205;
                }
              }

              if ([a2 hasError])
              {
                v35 = 0;
              }

              else
              {
                v35 = v31;
              }

LABEL_205:
              v96 = 160;
              goto LABEL_237;
            }
          }
        }

        else if (v13 > 252)
        {
          if (v13 > 299)
          {
            if (v13 == 300)
            {
              *(a1 + 196) |= 1u;
              v105 = 0;
              v81 = [a2 position] + 8;
              if (v81 >= [a2 position] && (v82 = objc_msgSend(a2, "position") + 8, v82 <= objc_msgSend(a2, "length")))
              {
                v99 = [a2 data];
                [v99 getBytes:&v105 range:{objc_msgSend(a2, "position"), 8}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
              }

              else
              {
                [a2 _setError];
              }

              *(a1 + 8) = v105;
              goto LABEL_238;
            }

            if (v13 == 301)
            {
              v50 = 0;
              v51 = 0;
              v52 = 0;
              *(a1 + 196) |= 4u;
              while (1)
              {
                LOBYTE(v105) = 0;
                v53 = [a2 position] + 1;
                if (v53 >= [a2 position] && (v54 = objc_msgSend(a2, "position") + 1, v54 <= objc_msgSend(a2, "length")))
                {
                  v55 = [a2 data];
                  [v55 getBytes:&v105 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v52 |= (v105 & 0x7F) << v50;
                if ((v105 & 0x80) == 0)
                {
                  break;
                }

                v50 += 7;
                v11 = v51++ >= 9;
                if (v11)
                {
                  v35 = 0;
                  goto LABEL_223;
                }
              }

              if ([a2 hasError])
              {
                v35 = 0;
              }

              else
              {
                v35 = v52;
              }

LABEL_223:
              v96 = 56;
              goto LABEL_237;
            }
          }

          else
          {
            if (v13 == 253)
            {
              v14 = PBReaderReadString();
              v15 = 64;
              goto LABEL_182;
            }

            if (v13 == 254)
            {
              v14 = PBReaderReadString();
              v15 = 128;
LABEL_182:
              v89 = *(a1 + v15);
              *(a1 + v15) = v14;

              goto LABEL_238;
            }
          }
        }

        else
        {
          if (v13 > 250)
          {
            if (v13 == 251)
            {
              v14 = PBReaderReadString();
              v15 = 176;
            }

            else
            {
              v14 = PBReaderReadString();
              v15 = 120;
            }

            goto LABEL_182;
          }

          if (v13 == 220)
          {
            v62 = PBReaderReadString();
            if (v62)
            {
              [a1 addAllowedExternalDomains:v62];
            }

            goto LABEL_180;
          }

          if (v13 == 250)
          {
            v16 = 0;
            v17 = 0;
            v18 = 0;
            *(a1 + 196) |= 0x200u;
            while (1)
            {
              LOBYTE(v105) = 0;
              v19 = [a2 position] + 1;
              if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
              {
                v21 = [a2 data];
                [v21 getBytes:&v105 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v18 |= (v105 & 0x7F) << v16;
              if ((v105 & 0x80) == 0)
              {
                break;
              }

              v16 += 7;
              v11 = v17++ >= 9;
              if (v11)
              {
                LOBYTE(v22) = 0;
                goto LABEL_219;
              }
            }

            v22 = (v18 != 0) & ~[a2 hasError];
LABEL_219:
            v97 = 188;
            goto LABEL_226;
          }
        }
      }

      else if (v13 <= 100)
      {
        if (v13 <= 11)
        {
          switch(v13)
          {
            case 1:
              v14 = PBReaderReadString();
              v15 = 96;
              goto LABEL_182;
            case 0xA:
              v83 = 0;
              v84 = 0;
              v85 = 0;
              while (1)
              {
                LOBYTE(v105) = 0;
                v86 = [a2 position] + 1;
                if (v86 >= [a2 position] && (v87 = objc_msgSend(a2, "position") + 1, v87 <= objc_msgSend(a2, "length")))
                {
                  v88 = [a2 data];
                  [v88 getBytes:&v105 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v85 |= (v105 & 0x7F) << v83;
                if ((v105 & 0x80) == 0)
                {
                  break;
                }

                v83 += 7;
                v11 = v84++ >= 9;
                if (v11)
                {
                  v35 = 0;
                  goto LABEL_217;
                }
              }

              if ([a2 hasError])
              {
                v35 = 0;
              }

              else
              {
                v35 = v85;
              }

LABEL_217:
              v96 = 24;
              goto LABEL_237;
            case 0xB:
              v14 = PBReaderReadString();
              v15 = 32;
              goto LABEL_182;
          }
        }

        else if (v13 > 24)
        {
          if (v13 == 25)
          {
            v62 = objc_alloc_init(APPBParameter);
            [a1 addParameters:v62];
            v105 = 0;
            v106 = 0;
            if (!PBReaderPlaceMark() || !APPBParameterReadFrom(v62, a2))
            {
              goto LABEL_240;
            }

LABEL_179:
            PBReaderRecallMark();
LABEL_180:

            goto LABEL_238;
          }

          if (v13 == 100)
          {
            v40 = 0;
            v41 = 0;
            v42 = 0;
            *(a1 + 196) |= 0x100u;
            while (1)
            {
              LOBYTE(v105) = 0;
              v43 = [a2 position] + 1;
              if (v43 >= [a2 position] && (v44 = objc_msgSend(a2, "position") + 1, v44 <= objc_msgSend(a2, "length")))
              {
                v45 = [a2 data];
                [v45 getBytes:&v105 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v42 |= (v105 & 0x7F) << v40;
              if ((v105 & 0x80) == 0)
              {
                break;
              }

              v40 += 7;
              v11 = v41++ >= 9;
              if (v11)
              {
                v35 = 0;
                goto LABEL_209;
              }
            }

            if ([a2 hasError])
            {
              v35 = 0;
            }

            else
            {
              v35 = v42;
            }

LABEL_209:
            v96 = 184;
            goto LABEL_237;
          }
        }

        else
        {
          if (v13 == 12)
          {
            v14 = PBReaderReadString();
            v15 = 40;
            goto LABEL_182;
          }

          if (v13 == 13)
          {
            v23 = 0;
            v24 = 0;
            v25 = 0;
            *(a1 + 196) |= 0x1000u;
            while (1)
            {
              LOBYTE(v105) = 0;
              v26 = [a2 position] + 1;
              if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
              {
                v28 = [a2 data];
                [v28 getBytes:&v105 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v25 |= (v105 & 0x7F) << v23;
              if ((v105 & 0x80) == 0)
              {
                break;
              }

              v23 += 7;
              v11 = v24++ >= 9;
              if (v11)
              {
                LOBYTE(v22) = 0;
                goto LABEL_201;
              }
            }

            v22 = (v25 != 0) & ~[a2 hasError];
LABEL_201:
            v97 = 191;
            goto LABEL_226;
          }
        }
      }

      else
      {
        if (v13 <= 104)
        {
          if (v13 > 102)
          {
            if (v13 == 103)
            {
              v14 = PBReaderReadString();
              v15 = 112;
            }

            else
            {
              v14 = PBReaderReadString();
              v15 = 72;
            }
          }

          else
          {
            if (v13 == 101)
            {
              v69 = 0;
              v70 = 0;
              v71 = 0;
              *(a1 + 196) |= 0x4000u;
              while (1)
              {
                LOBYTE(v105) = 0;
                v72 = [a2 position] + 1;
                if (v72 >= [a2 position] && (v73 = objc_msgSend(a2, "position") + 1, v73 <= objc_msgSend(a2, "length")))
                {
                  v74 = [a2 data];
                  [v74 getBytes:&v105 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v71 |= (v105 & 0x7F) << v69;
                if ((v105 & 0x80) == 0)
                {
                  break;
                }

                v69 += 7;
                v11 = v70++ >= 9;
                if (v11)
                {
                  LOBYTE(v22) = 0;
                  goto LABEL_211;
                }
              }

              v22 = (v71 != 0) & ~[a2 hasError];
LABEL_211:
              v97 = 193;
LABEL_226:
              *(a1 + v97) = v22;
              goto LABEL_238;
            }

            v14 = PBReaderReadString();
            v15 = 168;
          }

          goto LABEL_182;
        }

        if (v13 > 119)
        {
          if (v13 == 120)
          {
            v75 = 0;
            v76 = 0;
            v77 = 0;
            *(a1 + 196) |= 0x800u;
            while (1)
            {
              LOBYTE(v105) = 0;
              v78 = [a2 position] + 1;
              if (v78 >= [a2 position] && (v79 = objc_msgSend(a2, "position") + 1, v79 <= objc_msgSend(a2, "length")))
              {
                v80 = [a2 data];
                [v80 getBytes:&v105 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v77 |= (v105 & 0x7F) << v75;
              if ((v105 & 0x80) == 0)
              {
                break;
              }

              v75 += 7;
              v11 = v76++ >= 9;
              if (v11)
              {
                LOBYTE(v22) = 0;
                goto LABEL_213;
              }
            }

            v22 = (v77 != 0) & ~[a2 hasError];
LABEL_213:
            v97 = 190;
            goto LABEL_226;
          }

          if (v13 == 200)
          {
            *(a1 + 196) |= 8u;
            LODWORD(v105) = 0;
            v48 = [a2 position] + 4;
            if (v48 >= [a2 position] && (v49 = objc_msgSend(a2, "position") + 4, v49 <= objc_msgSend(a2, "length")))
            {
              v102 = [a2 data];
              [v102 getBytes:&v105 range:{objc_msgSend(a2, "position"), 4}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
            }

            else
            {
              [a2 _setError];
            }

            v35 = v105;
            v96 = 60;
LABEL_237:
            *(a1 + v96) = v35;
            goto LABEL_238;
          }
        }

        else
        {
          if (v13 == 105)
          {
            v14 = PBReaderReadString();
            v15 = 88;
            goto LABEL_182;
          }

          if (v13 == 110)
          {
            *(a1 + 196) |= 0x10u;
            LODWORD(v105) = 0;
            v36 = [a2 position] + 4;
            if (v36 >= [a2 position] && (v37 = objc_msgSend(a2, "position") + 4, v37 <= objc_msgSend(a2, "length")))
            {
              v101 = [a2 data];
              [v101 getBytes:&v105 range:{objc_msgSend(a2, "position"), 4}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
            }

            else
            {
              [a2 _setError];
            }

            *(a1 + 80) = v105;
            goto LABEL_238;
          }
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_238:
      v103 = [a2 position];
    }

    while (v103 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1002E2908(id a1)
{
  v1 = qword_1004E6BC8;
  qword_1004E6BC8 = &off_1004943C0;
}

uint64_t APPBLogAdContentErrorResponseReadFrom(uint64_t a1, void *a2)
{
  while (1)
  {
    v3 = [a2 position];
    if (v3 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v4 = 0;
    v5 = 0;
    v6 = 0;
    while (1)
    {
      v13 = 0;
      v7 = [a2 position] + 1;
      if (v7 >= [a2 position] && (v8 = objc_msgSend(a2, "position") + 1, v8 <= objc_msgSend(a2, "length")))
      {
        v9 = [a2 data];
        [v9 getBytes:&v13 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v6 |= (v13 & 0x7F) << v4;
      if ((v13 & 0x80) == 0)
      {
        break;
      }

      v4 += 7;
      if (v5++ >= 9)
      {
        v11 = 0;
        goto LABEL_15;
      }
    }

    v11 = [a2 hasError] ? 0 : v6;
LABEL_15:
    if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
    {
      break;
    }

    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }
  }

  return [a2 hasError] ^ 1;
}

void sub_1002E3574(id a1)
{
  v1 = qword_1004E6BD8;
  qword_1004E6BD8 = &off_1004943E8;
}

uint64_t APPBLogAnalyticsRequestReadFrom(char *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v19[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19[0] & 0x7F) << v5;
        if ((v19[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 2)
      {
        if (v13 == 1)
        {
          v15 = PBReaderReadData();
          v16 = 40;
LABEL_30:
          v14 = *&a1[v16];
          *&a1[v16] = v15;
LABEL_31:

          goto LABEL_32;
        }

        if (v13 == 2)
        {
          v15 = PBReaderReadString();
          v16 = 8;
          goto LABEL_30;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v15 = PBReaderReadData();
            v16 = 16;
            goto LABEL_30;
          case 4:
            v15 = PBReaderReadData();
            v16 = 24;
            goto LABEL_30;
          case 0xA:
            v14 = objc_alloc_init(APPBAnalyticsEvent);
            [a1 addEvents:v14];
            v19[0] = 0;
            v19[1] = 0;
            if (!PBReaderPlaceMark() || !APPBAnalyticsEventReadFrom(v14, a2))
            {

              return 0;
            }

            PBReaderRecallMark();
            goto LABEL_31;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_32:
      v17 = [a2 position];
    }

    while (v17 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1002E4AC0(id a1)
{
  v1 = qword_1004E6BE8;
  qword_1004E6BE8 = &off_100494410;
}

uint64_t APPBThirdPartySegmentUpdateResponseReadFrom(uint64_t a1, void *a2)
{
  while (1)
  {
    v3 = [a2 position];
    if (v3 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v4 = 0;
    v5 = 0;
    v6 = 0;
    while (1)
    {
      v13 = 0;
      v7 = [a2 position] + 1;
      if (v7 >= [a2 position] && (v8 = objc_msgSend(a2, "position") + 1, v8 <= objc_msgSend(a2, "length")))
      {
        v9 = [a2 data];
        [v9 getBytes:&v13 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v6 |= (v13 & 0x7F) << v4;
      if ((v13 & 0x80) == 0)
      {
        break;
      }

      v4 += 7;
      if (v5++ >= 9)
      {
        v11 = 0;
        goto LABEL_15;
      }
    }

    v11 = [a2 hasError] ? 0 : v6;
LABEL_15:
    if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
    {
      break;
    }

    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t APPBAdFrequencyCapDataReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v37 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v37 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v37 & 0x7F) << v5;
        if ((v37 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v27 = 0;
        v28 = 0;
        v29 = 0;
        *(a1 + 24) |= 1u;
        while (1)
        {
          v40 = 0;
          v30 = [a2 position] + 1;
          if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
          {
            v32 = [a2 data];
            [v32 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v29 |= (v40 & 0x7F) << v27;
          if ((v40 & 0x80) == 0)
          {
            break;
          }

          v27 += 7;
          v11 = v28++ >= 9;
          if (v11)
          {
            v33 = 0;
            goto LABEL_56;
          }
        }

        if ([a2 hasError])
        {
          v33 = 0;
        }

        else
        {
          v33 = v29;
        }

LABEL_56:
        *(a1 + 8) = v33;
      }

      else
      {
        if (v13 == 2)
        {
          v21 = 0;
          v22 = 0;
          v23 = 0;
          *(a1 + 24) |= 2u;
          while (1)
          {
            v38 = 0;
            v24 = [a2 position] + 1;
            if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
            {
              v26 = [a2 data];
              [v26 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v23 |= (v38 & 0x7F) << v21;
            if ((v38 & 0x80) == 0)
            {
              break;
            }

            v21 += 7;
            v11 = v22++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_52;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v23;
          }

LABEL_52:
          v35 = 16;
        }

        else
        {
          if (v13 != 1)
          {
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_62;
          }

          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 24) |= 4u;
          while (1)
          {
            v39 = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:&v39 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v39 & 0x7F) << v14;
            if ((v39 & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_60;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v16;
          }

LABEL_60:
          v35 = 20;
        }

        *(a1 + v35) = v20;
      }

LABEL_62:
      v36 = [a2 position];
    }

    while (v36 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}