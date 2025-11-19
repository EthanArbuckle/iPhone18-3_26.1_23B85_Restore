uint64_t sub_100001584(uint64_t a1, void *a2)
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

      if ((v12 >> 3) == 2)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        *(a1 + 20) |= 2u;
        while (1)
        {
          v27 = 0;
          v18 = [a2 position] + 1;
          if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
          {
            v20 = [a2 data];
            [v20 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v17 |= (v27 & 0x7F) << v15;
          if ((v27 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v11 = v16++ >= 9;
          if (v11)
          {
            v21 = 0;
            goto LABEL_36;
          }
        }

        v21 = [a2 hasError] ? 0 : v17;
LABEL_36:
        *(a1 + 16) = v21;
      }

      else if ((v12 >> 3) == 1)
      {
        *(a1 + 20) |= 1u;
        v25 = 0;
        v13 = [a2 position] + 8;
        if (v13 >= [a2 position] && (v14 = objc_msgSend(a2, "position") + 8, v14 <= objc_msgSend(a2, "length")))
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

uint64_t sub_100001E18(uint64_t a1, void *a2)
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
        v13 = PBReaderReadString();
        v14 = *(a1 + 8);
        *(a1 + 8) = v13;
LABEL_23:

        goto LABEL_25;
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

    v14 = objc_alloc_init(_NMRContentItemMetadata);
    objc_storeStrong((a1 + 16), v14);
    v17[0] = 0;
    v17[1] = 0;
    if (!PBReaderPlaceMark() || !sub_10000910C(v14, a2))
    {

      return 0;
    }

    PBReaderRecallMark();
    goto LABEL_23;
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_100003570(uint64_t a1, void *a2)
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
        LOBYTE(v36[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v36 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v36[0] & 0x7F) << v5;
        if ((v36[0] & 0x80) == 0)
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
        break;
      }

      if (v13 == 1)
      {
        v26 = 0;
        v27 = 0;
        v28 = 0;
        *(a1 + 44) |= 2u;
        while (1)
        {
          LOBYTE(v36[0]) = 0;
          v29 = [a2 position] + 1;
          if (v29 >= [a2 position] && (v30 = objc_msgSend(a2, "position") + 1, v30 <= objc_msgSend(a2, "length")))
          {
            v31 = [a2 data];
            [v31 getBytes:v36 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v28 |= (v36[0] & 0x7F) << v26;
          if ((v36[0] & 0x80) == 0)
          {
            break;
          }

          v26 += 7;
          v11 = v27++ >= 9;
          if (v11)
          {
            v25 = 0;
            goto LABEL_57;
          }
        }

        if ([a2 hasError])
        {
          v25 = 0;
        }

        else
        {
          v25 = v28;
        }

LABEL_57:
        v32 = 24;
        goto LABEL_58;
      }

      if (v13 != 2)
      {
        goto LABEL_48;
      }

      v16 = objc_alloc_init(_NMRCommandOptionsProtobuf);
      objc_storeStrong((a1 + 32), v16);
      v36[0] = 0;
      v36[1] = 0;
      if (!PBReaderPlaceMark() || !sub_100028734(v16, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_61:
      v34 = [a2 position];
      if (v34 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    switch(v13)
    {
      case 3:
        *(a1 + 44) |= 1u;
        v36[0] = 0;
        v17 = [a2 position] + 8;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 8, v18 <= objc_msgSend(a2, "length")))
        {
          v33 = [a2 data];
          [v33 getBytes:v36 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 8) = v36[0];
        goto LABEL_61;
      case 4:
        v19 = 0;
        v20 = 0;
        v21 = 0;
        *(a1 + 44) |= 4u;
        while (1)
        {
          LOBYTE(v36[0]) = 0;
          v22 = [a2 position] + 1;
          if (v22 >= [a2 position] && (v23 = objc_msgSend(a2, "position") + 1, v23 <= objc_msgSend(a2, "length")))
          {
            v24 = [a2 data];
            [v24 getBytes:v36 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v21 |= (v36[0] & 0x7F) << v19;
          if ((v36[0] & 0x80) == 0)
          {
            break;
          }

          v19 += 7;
          v11 = v20++ >= 9;
          if (v11)
          {
            v25 = 0;
            goto LABEL_53;
          }
        }

        if ([a2 hasError])
        {
          v25 = 0;
        }

        else
        {
          v25 = v21;
        }

LABEL_53:
        v32 = 40;
LABEL_58:
        *(a1 + v32) = v25;
        goto LABEL_61;
      case 5:
        v14 = PBReaderReadString();
        v15 = *(a1 + 16);
        *(a1 + 16) = v14;

        goto LABEL_61;
    }

LABEL_48:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_61;
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_1000049E4(uint64_t a1, void *a2)
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
      if ((v12 >> 3) > 4)
      {
        if (v13 > 6)
        {
          if (v13 != 7)
          {
            if (v13 != 8)
            {
LABEL_55:
              result = PBReaderSkipValueWithTag();
              if (!result)
              {
                return result;
              }

              goto LABEL_68;
            }

            v16 = 0;
            v17 = 0;
            v18 = 0;
            *(a1 + 72) |= 2u;
            while (1)
            {
              v38 = 0;
              v19 = [a2 position] + 1;
              if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
              {
                v21 = [a2 data];
                [v21 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v18 |= (v38 & 0x7F) << v16;
              if ((v38 & 0x80) == 0)
              {
                break;
              }

              v16 += 7;
              v11 = v17++ >= 9;
              if (v11)
              {
                v22 = 0;
                goto LABEL_64;
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

LABEL_64:
            v33 = 40;
            goto LABEL_65;
          }

          v14 = PBReaderReadData();
          v15 = 48;
        }

        else if (v13 == 5)
        {
          v14 = PBReaderReadData();
          v15 = 16;
        }

        else
        {
          if (v13 != 6)
          {
            goto LABEL_55;
          }

          v14 = PBReaderReadData();
          v15 = 64;
        }
      }

      else if (v13 > 2)
      {
        if (v13 == 3)
        {
          *(a1 + 72) |= 1u;
          v36 = 0;
          v29 = [a2 position] + 8;
          if (v29 >= [a2 position] && (v30 = objc_msgSend(a2, "position") + 8, v30 <= objc_msgSend(a2, "length")))
          {
            v34 = [a2 data];
            [v34 getBytes:&v36 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          *(a1 + 8) = v36;
          goto LABEL_68;
        }

        if (v13 != 4)
        {
          goto LABEL_55;
        }

        v14 = PBReaderReadData();
        v15 = 32;
      }

      else
      {
        if (v13 == 1)
        {
          v23 = 0;
          v24 = 0;
          v25 = 0;
          *(a1 + 72) |= 4u;
          while (1)
          {
            v39 = 0;
            v26 = [a2 position] + 1;
            if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
            {
              v28 = [a2 data];
              [v28 getBytes:&v39 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v25 |= (v39 & 0x7F) << v23;
            if ((v39 & 0x80) == 0)
            {
              break;
            }

            v23 += 7;
            v11 = v24++ >= 9;
            if (v11)
            {
              v22 = 0;
              goto LABEL_60;
            }
          }

          if ([a2 hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v25;
          }

LABEL_60:
          v33 = 56;
LABEL_65:
          *(a1 + v33) = v22;
          goto LABEL_68;
        }

        if (v13 != 2)
        {
          goto LABEL_55;
        }

        v14 = PBReaderReadData();
        v15 = 24;
      }

      v31 = *(a1 + v15);
      *(a1 + v15) = v14;

LABEL_68:
      v35 = [a2 position];
    }

    while (v35 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_1000058C8(int a1)
{
  result = 1;
  switch(a1)
  {
    case 0:
      return result;
    case 1:
      result = 2;
      break;
    case 2:
      result = 3;
      break;
    case 3:
      result = 4;
      break;
    case 4:
      result = 5;
      break;
    case 5:
      result = 6;
      break;
    case 6:
      result = 7;
      break;
    case 7:
      result = 8;
      break;
    case 8:
      result = 9;
      break;
    case 9:
      result = 10;
      break;
    case 10:
      result = 11;
      break;
    case 11:
      result = 12;
      break;
    case 12:
      result = 13;
      break;
    case 13:
      result = 14;
      break;
    case 14:
      result = 15;
      break;
    case 15:
      result = 16;
      break;
    case 16:
LABEL_29:
      result = 0;
      break;
    case 17:
      result = 18;
      break;
    case 18:
      result = 19;
      break;
    case 19:
      result = 20;
      break;
    case 20:
      result = 21;
      break;
    case 21:
      result = 22;
      break;
    case 22:
      result = 23;
      break;
    case 23:
      result = 24;
      break;
    case 24:
      result = 45;
      break;
    case 25:
      result = 46;
      break;
    case 26:
      result = 47;
      break;
    default:
      switch(a1)
      {
        case 100:
          result = 25;
          break;
        case 101:
          result = 26;
          break;
        case 102:
          result = 27;
          break;
        case 103:
          result = 28;
          break;
        case 104:
          result = 29;
          break;
        case 105:
          result = 30;
          break;
        case 106:
          result = 31;
          break;
        case 107:
          result = 32;
          break;
        case 108:
          result = 33;
          break;
        case 109:
          result = 34;
          break;
        case 110:
          result = 35;
          break;
        case 116:
          result = 41;
          break;
        case 121:
          result = 50;
          break;
        case 122:
          result = 48;
          break;
        case 125:
          result = 52;
          break;
        case 127:
          result = 49;
          break;
        case 128:
          result = 51;
          break;
        case 131:
          result = 53;
          break;
        case 135:
          result = 135;
          break;
        default:
          goto LABEL_29;
      }

      break;
  }

  return result;
}

uint64_t sub_100005B8C(int a1)
{
  result = 0;
  switch(a1)
  {
    case 0:
      result = 0xFFFFFFFFLL;
      break;
    case 1:
    case 17:
    case 36:
    case 37:
    case 38:
    case 39:
    case 40:
    case 42:
    case 43:
    case 44:
      return result;
    case 2:
      result = 1;
      break;
    case 3:
      result = 2;
      break;
    case 4:
      result = 3;
      break;
    case 5:
      result = 4;
      break;
    case 6:
      result = 5;
      break;
    case 7:
      result = 6;
      break;
    case 8:
      result = 7;
      break;
    case 9:
      result = 8;
      break;
    case 10:
      result = 9;
      break;
    case 11:
      result = 10;
      break;
    case 12:
      result = 11;
      break;
    case 13:
      result = 12;
      break;
    case 14:
      result = 13;
      break;
    case 15:
      result = 14;
      break;
    case 16:
      result = 15;
      break;
    case 18:
      result = 17;
      break;
    case 19:
      result = 18;
      break;
    case 20:
      result = 19;
      break;
    case 21:
      result = 20;
      break;
    case 22:
      result = 21;
      break;
    case 23:
      result = 22;
      break;
    case 24:
      result = 23;
      break;
    case 25:
      result = 100;
      break;
    case 26:
      result = 101;
      break;
    case 27:
      result = 102;
      break;
    case 28:
      result = 103;
      break;
    case 29:
      result = 104;
      break;
    case 30:
      result = 105;
      break;
    case 31:
      result = 106;
      break;
    case 32:
      result = 107;
      break;
    case 33:
      result = 108;
      break;
    case 34:
      result = 109;
      break;
    case 35:
      result = 110;
      break;
    case 41:
      result = 116;
      break;
    case 45:
      result = 24;
      break;
    case 46:
      result = 25;
      break;
    case 47:
      result = 26;
      break;
    case 48:
      result = 122;
      break;
    case 49:
      result = 127;
      break;
    case 50:
      result = 121;
      break;
    case 51:
      result = 128;
      break;
    case 52:
      result = 125;
      break;
    case 53:
      result = 131;
      break;
    default:
      if (a1 == 135)
      {
        result = 135;
      }

      else
      {
        result = 0;
      }

      break;
  }

  return result;
}

id sub_100005E08(void *a1)
{
  v1 = a1;
  v2 = sub_100005E6C();
  v3 = [v2 protobufFromDictionary:v1];

  return v3;
}

id sub_100005E6C()
{
  if (qword_100054180 != -1)
  {
    sub_10003096C();
  }

  v1 = qword_100054178;

  return v1;
}

id sub_100005EB0(void *a1)
{
  v1 = a1;
  v2 = sub_100005E6C();
  v3 = [v2 dictionaryFromProtobuf:v1];

  return v3;
}

uint64_t sub_100005F14(uint64_t result)
{
  if ((result - 1) >= 3)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t sub_100005F24(int a1)
{
  if ((a1 - 1) >= 4)
  {
    return 2;
  }

  else
  {
    return (a1 - 1);
  }
}

void sub_100005F38(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_100054178;
  qword_100054178 = v1;

  v21 = qword_100054178;
  v29[0] = kMRMediaRemoteOptionIsExternalPlayerCommand;
  v28 = NSStringFromSelector("externalPlayerCommand");
  v30[0] = v28;
  v29[1] = kMRMediaRemoteOptionIsNegative;
  v27 = NSStringFromSelector("negative");
  v30[1] = v27;
  v29[2] = kMRMediaRemoteOptionMediaType;
  v26 = NSStringFromSelector("mediaType");
  v30[2] = v26;
  v29[3] = kMRMediaRemoteOptionPlaybackPosition;
  v25 = NSStringFromSelector("playbackPosition");
  v30[3] = v25;
  v29[4] = kMRMediaRemoteOptionPlaybackRate;
  v24 = NSStringFromSelector("playbackRate");
  v30[4] = v24;
  v29[5] = kMRMediaRemoteOptionRepeatMode;
  v23 = NSStringFromSelector("repeatMode");
  v30[5] = v23;
  v29[6] = kMRMediaRemoteOptionShuffleMode;
  v22 = NSStringFromSelector("shuffleMode");
  v30[6] = v22;
  v29[7] = kMRMediaRemoteOptionQueueEndAction;
  v20 = NSStringFromSelector("queueEndAction");
  v30[7] = v20;
  v29[8] = kMRMediaRemoteOptionSkipInterval;
  v19 = NSStringFromSelector("skipInterval");
  v30[8] = v19;
  v29[9] = kMRMediaRemoteOptionSourceID;
  v18 = NSStringFromSelector("sourceID");
  v30[9] = v18;
  v29[10] = kMRMediaRemoteOptionStationHash;
  v17 = NSStringFromSelector("radioStationHash");
  v30[10] = v17;
  v29[11] = kMRMediaRemoteOptionStationID;
  v16 = NSStringFromSelector("radioStationID");
  v30[11] = v16;
  v29[12] = kMRMediaRemoteOptionSystemAppPlaybackQueueData;
  v15 = NSStringFromSelector("systemAppPlaybackQueueData");
  v30[12] = v15;
  v29[13] = kMRSystemAppPlaybackQueueShouldOverrideManuallyCuratedQueueKey;
  v14 = NSStringFromSelector("shouldOverrideManuallyCuratedQueue");
  v30[13] = v14;
  v29[14] = kMRMediaRemoteOptionTrackID;
  v13 = NSStringFromSelector("trackID");
  v30[14] = v13;
  v29[15] = kMRMediaRemoteOptionContentItemID;
  v3 = NSStringFromSelector("contentItemID");
  v30[15] = v3;
  v29[16] = kMRMediaRemoteOptionDestinationAppDisplayID;
  v4 = NSStringFromSelector("destinationAppDisplayID");
  v30[16] = v4;
  v29[17] = kMRMediaRemoteOptionSendOptionsNumber;
  v5 = NSStringFromSelector("sendOptions");
  v30[17] = v5;
  v29[18] = kMRMediaRemoteOptionRequestDefermentToPlaybackQueuePosition;
  v6 = NSStringFromSelector("requestDefermentToPlaybackQueuePosition");
  v30[18] = v6;
  v29[19] = kMRMediaRemoteOptionRating;
  v7 = NSStringFromSelector("rating");
  v30[19] = v7;
  v29[20] = kMRMediaRemoteOptionContextID;
  v8 = NSStringFromSelector("contextID");
  v30[20] = v8;
  v29[21] = kMRMediaRemoteOptionStationURL;
  v9 = NSStringFromSelector("stationURL");
  v30[21] = v9;
  v29[22] = kMRMediaRemoteOptionShouldBeginRadioPlayback;
  v10 = NSStringFromSelector("shouldBeginRadioPlayback");
  v30[22] = v10;
  v29[23] = kMRMediaRemoteOptionPlaybackQueueInsertionPosition;
  v11 = NSStringFromSelector("playbackQueueInsertionPosition");
  v30[23] = v11;
  v12 = [NSDictionary dictionaryWithObjects:v30 forKeys:v29 count:24];
  [v21 setDictionaryKeyToProtobufKeyMapping:v12];

  [qword_100054178 setProtobufClass:objc_opt_class()];
  [qword_100054178 setDictionaryValueToProtobufValueTransformer:&stru_100048C18];
  [qword_100054178 setProtobufValueToDictionaryValueTransformer:&stru_100048C58];
}

id sub_100006498(id a1, NSDictionary *a2, NSString *a3, id a4)
{
  v5 = a3;
  v6 = a4;
  if ([(NSString *)v5 isEqualToString:kMRMediaRemoteOptionRepeatMode]|| [(NSString *)v5 isEqualToString:kMRMediaRemoteOptionShuffleMode])
  {
    v7 = [v6 unsignedIntValue];
    v8 = v7 - 1 < 3;
LABEL_4:
    if (v8)
    {
      v9 = v7;
    }

    else
    {
      v9 = 0;
    }

    v10 = [NSNumber numberWithInt:v9];

    v6 = v10;
    goto LABEL_8;
  }

  if ([(NSString *)v5 isEqualToString:kMRMediaRemoteOptionQueueEndAction])
  {
    v12 = [v6 unsignedIntValue];
    v8 = v12 < 4;
    v7 = v12 + 1;
    goto LABEL_4;
  }

LABEL_8:

  return v6;
}

id sub_100006584(id a1, PBCodable *a2, NSString *a3, id a4)
{
  v5 = a3;
  v6 = a4;
  v7 = NSStringFromSelector("repeatMode");
  v8 = [(NSString *)v5 isEqualToString:v7];

  if (v8 || (NSStringFromSelector("shuffleMode"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [(NSString *)v5 isEqualToString:v9], v9, v10))
  {
    v11 = [v6 unsignedIntValue];
    if (v11 - 1 >= 3)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11;
    }

LABEL_6:
    v13 = [NSNumber numberWithInt:v12];

    v6 = v13;
    goto LABEL_7;
  }

  v15 = NSStringFromSelector("queueEndAction");
  v16 = [(NSString *)v5 isEqualToString:v15];

  if (v16)
  {
    v17 = [v6 unsignedIntValue];
    if (v17 - 1 >= 4)
    {
      v12 = 2;
    }

    else
    {
      v12 = v17 - 1;
    }

    goto LABEL_6;
  }

LABEL_7:

  return v6;
}

uint64_t sub_1000069C4(uint64_t a1, void *a2)
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
      if ((v12 >> 3) > 3)
      {
        switch(v13)
        {
          case 4:
            v27 = PBReaderReadString();
            v28 = 40;
            break;
          case 5:
            v27 = PBReaderReadData();
            v28 = 16;
            break;
          case 6:
            v21 = 0;
            v22 = 0;
            v23 = 0;
            *(a1 + 48) |= 2u;
            while (1)
            {
              v35 = 0;
              v24 = [a2 position] + 1;
              if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
              {
                v26 = [a2 data];
                [v26 getBytes:&v35 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v23 |= (v35 & 0x7F) << v21;
              if ((v35 & 0x80) == 0)
              {
                break;
              }

              v21 += 7;
              v11 = v22++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_56;
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

LABEL_56:
            v31 = 36;
            goto LABEL_57;
          default:
LABEL_44:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_58;
        }
      }

      else
      {
        switch(v13)
        {
          case 1:
            v27 = PBReaderReadString();
            v28 = 8;
            break;
          case 2:
            v27 = PBReaderReadString();
            v28 = 24;
            break;
          case 3:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 48) |= 1u;
            while (1)
            {
              v34 = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v34 & 0x7F) << v14;
              if ((v34 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
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
              v20 = v16;
            }

LABEL_52:
            v31 = 32;
LABEL_57:
            *(a1 + v31) = v20;
            goto LABEL_58;
          default:
            goto LABEL_44;
        }
      }

      v30 = *(a1 + v28);
      *(a1 + v28) = v27;

LABEL_58:
      v32 = [a2 position];
    }

    while (v32 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id sub_100007F68(void *a1)
{
  v1 = a1;
  v47 = objc_opt_new();
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  obj = v1;
  v49 = [obj countByEnumeratingWithState:&v69 objects:v76 count:16];
  if (v49)
  {
    v48 = *v70;
    v45 = kMRMediaRemoteCommandInfoLocalizedShortTitleKey;
    do
    {
      for (i = 0; i != v49; i = i + 1)
      {
        if (*v70 != v48)
        {
          objc_enumerationMutation(obj);
        }

        v3 = *(*(&v69 + 1) + 8 * i);
        v4 = objc_opt_new();
        Command = MRMediaRemoteCommandInfoGetCommand();
        v6 = sub_1000058C8(Command);
        if (v6)
        {
          [v4 setCommand:v6];
          [v4 setEnabled:MRMediaRemoteCommandInfoGetEnabled() != 0];
          v7 = MRMediaRemoteCommandInfoCopyValueForKey();
          v65 = 0u;
          v66 = 0u;
          v67 = 0u;
          v68 = 0u;
          v8 = v7;
          v9 = [v8 countByEnumeratingWithState:&v65 objects:v75 count:16];
          if (v9)
          {
            v10 = v9;
            v11 = *v66;
            do
            {
              for (j = 0; j != v10; j = j + 1)
              {
                if (*v66 != v11)
                {
                  objc_enumerationMutation(v8);
                }

                [*(*(&v65 + 1) + 8 * j) doubleValue];
                [v4 addPreferredInterval:?];
              }

              v10 = [v8 countByEnumeratingWithState:&v65 objects:v75 count:16];
            }

            while (v10);
          }

          v13 = MRMediaRemoteCommandInfoCopyValueForKey();
          v14 = v13;
          if (v13)
          {
            [v4 setActive:{objc_msgSend(v13, "BOOLValue")}];
          }

          v15 = MRMediaRemoteCommandInfoCopyValueForKey();
          if ([v15 length])
          {
            [v4 setLocalizedTitle:v15];
          }

          else
          {
            v16 = MRMediaRemoteCommandInfoCopyValueForKey();
            if ([v16 length])
            {
              [v4 setLocalizedShortTitle:v16];
            }
          }

          v17 = MRMediaRemoteCommandInfoCopyValueForKey();
          v18 = v17;
          if (v17)
          {
            [v17 floatValue];
            [v4 setMinimumRating:?];
          }

          v54 = v18;
          v55 = v15;
          v56 = v14;
          v19 = MRMediaRemoteCommandInfoCopyValueForKey();
          v20 = v19;
          if (v19)
          {
            [v19 floatValue];
            [v4 setMaximumRating:?];
          }

          v53 = v20;
          v21 = MRMediaRemoteCommandInfoCopyValueForKey();
          v61 = 0u;
          v62 = 0u;
          v63 = 0u;
          v64 = 0u;
          v22 = v21;
          v23 = [v22 countByEnumeratingWithState:&v61 objects:v74 count:16];
          if (v23)
          {
            v24 = v23;
            v25 = *v62;
            do
            {
              for (k = 0; k != v24; k = k + 1)
              {
                if (*v62 != v25)
                {
                  objc_enumerationMutation(v22);
                }

                [*(*(&v61 + 1) + 8 * k) floatValue];
                [v4 addSupportedPlaybackRate:?];
              }

              v24 = [v22 countByEnumeratingWithState:&v61 objects:v74 count:16];
            }

            while (v24);
          }

          v27 = MRMediaRemoteCommandInfoCopyValueForKey();
          v28 = v27;
          if (v27)
          {
            [v27 floatValue];
            [v4 setPreferredPlaybackRate:?];
          }

          v29 = MRMediaRemoteCommandInfoCopyValueForKey();
          v30 = v29;
          if (v29)
          {
            [v4 setShuffleMode:{objc_msgSend(v29, "unsignedIntegerValue")}];
          }

          v51 = v30;
          v31 = MRMediaRemoteCommandInfoCopyValueForKey();
          v32 = v31;
          if (v31)
          {
            [v4 setRepeatMode:{objc_msgSend(v31, "unsignedIntegerValue")}];
          }

          v50 = v32;
          v52 = v28;
          v33 = MRMediaRemoteCommandInfoCopyValueForKey();
          v34 = v33;
          if (v33)
          {
            [v4 setCurrentQueueEndAction:{objc_msgSend(v33, "unsignedIntegerValue")}];
          }

          v35 = MRMediaRemoteCommandInfoCopyValueForKey();
          v57 = 0u;
          v58 = 0u;
          v59 = 0u;
          v60 = 0u;
          v36 = v35;
          v37 = [v36 countByEnumeratingWithState:&v57 objects:v73 count:16];
          if (v37)
          {
            v38 = v37;
            v39 = *v58;
            do
            {
              for (m = 0; m != v38; m = m + 1)
              {
                if (*v58 != v39)
                {
                  objc_enumerationMutation(v36);
                }

                [v4 addSupportedQueueEndAction:{objc_msgSend(*(*(&v57 + 1) + 8 * m), "intValue", v45)}];
              }

              v38 = [v36 countByEnumeratingWithState:&v57 objects:v73 count:16];
            }

            while (v38);
          }

          v41 = MRMediaRemoteCommandInfoCopyValueForKey();
          v42 = v41;
          if (v41)
          {
            [v4 setPresentationStyle:{objc_msgSend(v41, "intValue")}];
          }

          [v47 addSupportedCommand:{v4, v45}];
        }
      }

      v49 = [obj countByEnumeratingWithState:&v69 objects:v76 count:16];
    }

    while (v49);
  }

  v43 = [v47 data];

  return v43;
}

id sub_100008964(void *a1)
{
  v1 = a1;
  v2 = [v1 bytes];
  v3 = [v1 length];

  CC_SHA1(v2, v3, md);
  v4 = [NSData dataWithBytes:md length:20];

  return v4;
}

uint64_t sub_100008A18(void *a1, void *a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  else
  {
    return [a1 isEqualToData:a2];
  }
}

id sub_100008C98(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(_NMRProxiedOriginsProtobuf);
  v3 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v1 count]);
  [(_NMRProxiedOriginsProtobuf *)v2 setOrigins:v3];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = v1;
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
        v10 = [(_NMRProxiedOriginsProtobuf *)v2 origins];
        v11 = [v9 protobuf];
        [v10 addObject:v11];
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v12 = [(_NMRProxiedOriginsProtobuf *)v2 data];

  return v12;
}

uint64_t sub_10000910C(uint64_t a1, void *a2)
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
        v30 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v30 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v30 & 0x7F) << v5;
        if ((v30 & 0x80) == 0)
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

      switch(v13)
      {
        case 3:
          v21 = PBReaderReadString();
          v22 = 16;
LABEL_38:
          v25 = *(a1 + v22);
          *(a1 + v22) = v21;

          break;
        case 4:
          *(a1 + 44) |= 1u;
          v29 = 0;
          v23 = [a2 position] + 8;
          if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 8, v24 <= objc_msgSend(a2, "length")))
          {
            v27 = [a2 data];
            [v27 getBytes:&v29 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          *(a1 + 8) = v29;
          break;
        case 5:
          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 44) |= 2u;
          while (1)
          {
            v31 = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v31 & 0x7F) << v14;
            if ((v31 & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              LOBYTE(v20) = 0;
              goto LABEL_42;
            }
          }

          v20 = (v16 != 0) & ~[a2 hasError];
LABEL_42:
          *(a1 + 40) = v20;
          break;
        default:
          goto LABEL_39;
      }

LABEL_45:
      v28 = [a2 position];
      if (v28 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 1)
    {
      v21 = PBReaderReadString();
      v22 = 32;
    }

    else
    {
      if (v13 != 2)
      {
LABEL_39:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        goto LABEL_45;
      }

      v21 = PBReaderReadString();
      v22 = 24;
    }

    goto LABEL_38;
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_100009ECC(void *a1, void *a2)
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
        v13 = objc_alloc_init(_NMROriginProtobuf);
        [a1 addOrigins:v13];
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !sub_1000124D8(v13, a2))
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

uint64_t sub_10000A998(uint64_t a1, void *a2)
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
      if ((v12 >> 3) > 4)
      {
        break;
      }

      if (v13 <= 2)
      {
        if (v13 == 1)
        {
          v25 = 0;
          v26 = 0;
          v27 = 0;
          *(a1 + 80) |= 4u;
          while (1)
          {
            v39 = 0;
            v28 = [a2 position] + 1;
            if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 1, v29 <= objc_msgSend(a2, "length")))
            {
              v30 = [a2 data];
              [v30 getBytes:&v39 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v27 |= (v39 & 0x7F) << v25;
            if ((v39 & 0x80) == 0)
            {
              break;
            }

            v25 += 7;
            v11 = v26++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_62;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v27;
          }

LABEL_62:
          v33 = 64;
LABEL_67:
          *(a1 + v33) = v20;
          goto LABEL_70;
        }

        if (v13 != 2)
        {
          goto LABEL_57;
        }

        v21 = PBReaderReadData();
        v22 = 48;
        goto LABEL_56;
      }

      if (v13 == 3)
      {
        v21 = PBReaderReadData();
        v22 = 24;
LABEL_56:
        v31 = *(a1 + v22);
        *(a1 + v22) = v21;

        goto LABEL_70;
      }

      if (v13 != 4)
      {
        goto LABEL_57;
      }

      *(a1 + 80) |= 1u;
      v36 = 0;
      v23 = [a2 position] + 8;
      if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 8, v24 <= objc_msgSend(a2, "length")))
      {
        v34 = [a2 data];
        [v34 getBytes:&v36 range:{objc_msgSend(a2, "position"), 8}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
      }

      else
      {
        [a2 _setError];
      }

      *(a1 + 8) = v36;
LABEL_70:
      v35 = [a2 position];
      if (v35 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 <= 6)
    {
      if (v13 == 5)
      {
        v21 = PBReaderReadData();
        v22 = 32;
      }

      else
      {
        if (v13 != 6)
        {
LABEL_57:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_70;
        }

        v21 = PBReaderReadData();
        v22 = 16;
      }
    }

    else
    {
      switch(v13)
      {
        case 7:
          v21 = PBReaderReadData();
          v22 = 72;
          break;
        case 8:
          v21 = PBReaderReadData();
          v22 = 56;
          break;
        case 9:
          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 80) |= 2u;
          while (1)
          {
            v38 = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v38 & 0x7F) << v14;
            if ((v38 & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_66;
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

LABEL_66:
          v33 = 40;
          goto LABEL_67;
        default:
          goto LABEL_57;
      }
    }

    goto LABEL_56;
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_10000BD28(uint64_t a1, void *a2)
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
        LOBYTE(v36) = 0;
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
      if ((v12 >> 3) <= 2)
      {
        break;
      }

      switch(v13)
      {
        case 3:
          *(a1 + 44) |= 1u;
          v36 = 0;
          v23 = [a2 position] + 8;
          if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 8, v24 <= objc_msgSend(a2, "length")))
          {
            v30 = [a2 data];
            [v30 getBytes:&v36 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v31 = v36;
          v32 = 8;
LABEL_54:
          *(a1 + v32) = v31;
          break;
        case 4:
          v25 = PBReaderReadString();
          v26 = *(a1 + 32);
          *(a1 + 32) = v25;

          break;
        case 5:
          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 44) |= 8u;
          while (1)
          {
            LOBYTE(v36) = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:&v36 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v36 & 0x7F) << v14;
            if ((v36 & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_47;
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

LABEL_47:
          *(a1 + 40) = v20;
          break;
        default:
          goto LABEL_42;
      }

LABEL_55:
      v35 = [a2 position];
      if (v35 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 1)
    {
      *(a1 + 44) |= 2u;
      v36 = 0;
      v27 = [a2 position] + 8;
      if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 8, v28 <= objc_msgSend(a2, "length")))
      {
        v33 = [a2 data];
        [v33 getBytes:&v36 range:{objc_msgSend(a2, "position"), 8}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
      }

      else
      {
        [a2 _setError];
      }

      v31 = v36;
      v32 = 16;
    }

    else
    {
      if (v13 != 2)
      {
LABEL_42:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        goto LABEL_55;
      }

      *(a1 + 44) |= 4u;
      v36 = 0;
      v21 = [a2 position] + 8;
      if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 8, v22 <= objc_msgSend(a2, "length")))
      {
        v34 = [a2 data];
        [v34 getBytes:&v36 range:{objc_msgSend(a2, "position"), 8}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
      }

      else
      {
        [a2 _setError];
      }

      v31 = v36;
      v32 = 24;
    }

    goto LABEL_54;
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_10000CCDC(uint64_t a1, void *a2)
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
        v30 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v30 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v30 & 0x7F) << v5;
        if ((v30 & 0x80) == 0)
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
        if (v13 == 1)
        {
          v23 = PBReaderReadData();
          v24 = 24;
          goto LABEL_38;
        }

        if (v13 != 2)
        {
LABEL_39:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_47;
        }

        *(a1 + 48) |= 1u;
        v29 = 0;
        v21 = [a2 position] + 8;
        if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 8, v22 <= objc_msgSend(a2, "length")))
        {
          v27 = [a2 data];
          [v27 getBytes:&v29 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 8) = v29;
      }

      else
      {
        if (v13 == 3)
        {
          v23 = PBReaderReadData();
          v24 = 40;
LABEL_38:
          v25 = *(a1 + v24);
          *(a1 + v24) = v23;

          goto LABEL_47;
        }

        if (v13 == 4)
        {
          v23 = PBReaderReadString();
          v24 = 16;
          goto LABEL_38;
        }

        if (v13 != 5)
        {
          goto LABEL_39;
        }

        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 48) |= 2u;
        while (1)
        {
          v31 = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v31 & 0x7F) << v14;
          if ((v31 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_44;
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

LABEL_44:
        *(a1 + 32) = v20;
      }

LABEL_47:
      v28 = [a2 position];
    }

    while (v28 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_10000D8C8(uint64_t a1)
{
  v2 = sub_10002C180(2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_100030980(a1);
  }

  v4 = *(a1 + 32);
  v3 = (a1 + 32);
  v5 = *(v4 + 8);
  v6 = sub_10002C180(2);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
  if (v5)
  {
    if (v7)
    {
      sub_1000309E8(v3);
    }

    *(*v3 + 8) = 2;
  }

  else
  {
    if (v7)
    {
      sub_100030A54(v3);
    }

    *(*v3 + 8) = 1;
    v8 = sub_10002C180(2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_100030AC0(v3);
    }

    objc_initWeak(&location, *v3);
    v9 = *(*v3 + 16);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10000DA74;
    v10[3] = &unk_100048CA8;
    objc_copyWeak(&v11, &location);
    v10[4] = *v3;
    (*(v9 + 16))(v9, v10);
    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

void sub_10000DA58(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_10000DA74(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[3];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10000DB08;
    v5[3] = &unk_100048C80;
    v5[4] = *(a1 + 32);
    v5[5] = v3;
    dispatch_async(v4, v5);
  }
}

void sub_10000DB08(uint64_t a1)
{
  v2 = sub_10002C180(2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_100030B2C(a1);
  }

  if (*(*(a1 + 40) + 8) == 2)
  {
    v3 = sub_10002C180(2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      sub_100030B94(a1);
    }

    [*(a1 + 40) executeUpdateBlock];
  }

  v4 = sub_10002C180(2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_100030BFC(a1);
  }

  *(*(a1 + 40) + 8) = 0;
}

void sub_10000DC1C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

uint64_t sub_10000DC44@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(result + 32);
  return result;
}

id sub_10000E670(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = sub_10000E6E0();
    v3 = [v2 protobufDataFromDictionary:v1];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id sub_10000E6E0()
{
  if (qword_1000541A0 != -1)
  {
    sub_100030C64();
  }

  v1 = qword_100054198;

  return v1;
}

id sub_10000E724()
{
  if (qword_100054190 != -1)
  {
    sub_100030C78();
  }

  v1 = qword_100054188;

  return v1;
}

void sub_10000E768(id a1)
{
  v28[0] = kMRMediaRemoteNowPlayingInfoAlbum;
  v27 = NSStringFromSelector("album");
  v29[0] = v27;
  v28[1] = kMRMediaRemoteNowPlayingInfoArtist;
  v26 = NSStringFromSelector("artist");
  v29[1] = v26;
  v28[2] = kMRMediaRemoteNowPlayingInfoDuration;
  v25 = NSStringFromSelector("duration");
  v29[2] = v25;
  v28[3] = kMRMediaRemoteNowPlayingInfoElapsedTime;
  v24 = NSStringFromSelector("elapsedTime");
  v29[3] = v24;
  v28[4] = kMRMediaRemoteNowPlayingInfoIsExplicitTrack;
  v23 = NSStringFromSelector("isExplicitTrack");
  v29[4] = v23;
  v28[5] = kMRMediaRemoteNowPlayingInfoPlaybackRate;
  v22 = NSStringFromSelector("playbackRate");
  v29[5] = v22;
  v28[6] = kMRMediaRemoteNowPlayingInfoDefaultPlaybackRate;
  v21 = NSStringFromSelector("preferredPlaybackRate");
  v29[6] = v21;
  v28[7] = kMRMediaRemoteNowPlayingInfoRepeatMode;
  v20 = NSStringFromSelector("repeatMode");
  v29[7] = v20;
  v28[8] = kMRMediaRemoteNowPlayingInfoShuffleMode;
  v19 = NSStringFromSelector("shuffleMode");
  v29[8] = v19;
  v28[9] = kMRMediaRemoteNowPlayingInfoTimestamp;
  v18 = NSStringFromSelector("timestamp");
  v29[9] = v18;
  v28[10] = kMRMediaRemoteNowPlayingInfoTitle;
  v17 = NSStringFromSelector("title");
  v29[10] = v17;
  v28[11] = kMRMediaRemoteNowPlayingInfoUniqueIdentifier;
  v16 = NSStringFromSelector("uniqueIdentifier");
  v29[11] = v16;
  v28[12] = kMRMediaRemoteNowPlayingInfoMediaType;
  v15 = NSStringFromSelector("mediaType");
  v29[12] = v15;
  v28[13] = kMRMediaRemoteNowPlayingInfoCollectionInfo;
  v14 = NSStringFromSelector("collectionInfoData");
  v29[13] = v14;
  v28[14] = kMRMediaRemoteNowPlayingInfoUserInfo;
  v13 = NSStringFromSelector("userInfoData");
  v29[14] = v13;
  v28[15] = kMRMediaRemoteNowPlayingInfoArtworkURL;
  v1 = NSStringFromSelector("artworkURL");
  v29[15] = v1;
  v28[16] = kMRMediaRemoteNowPlayingInfoIsMusicApp;
  v2 = NSStringFromSelector("isMusicApp");
  v29[16] = v2;
  v28[17] = kMRMediaRemoteNowPlayingInfoIsAlwaysLive;
  v3 = NSStringFromSelector("isAlwaysLive");
  v29[17] = v3;
  v28[18] = kMRMediaRemoteNowPlayingInfoRadioStationName;
  v4 = NSStringFromSelector("radioStationName");
  v29[18] = v4;
  v28[19] = kMRMediaRemoteNowPlayingInfoRadioStationHash;
  v5 = NSStringFromSelector("radioStationHash");
  v29[19] = v5;
  v28[20] = kMRMediaRemoteNowPlayingInfoRadioStationIdentifier;
  v6 = NSStringFromSelector("radioStationIdentifier");
  v29[20] = v6;
  v28[21] = kMRMediaRemoteNowPlayingInfoIsAdvertisement;
  v7 = NSStringFromSelector("isAdvertisement");
  v29[21] = v7;
  v28[22] = kMRMediaRemoteNowPlayingInfoiTunesStoreSubscriptionAdamIdentifier;
  v8 = NSStringFromSelector("storeSubscriptionAdamID");
  v29[22] = v8;
  v28[23] = kMRMediaRemoteNowPlayingInfoiTunesStoreIdentifier;
  v9 = NSStringFromSelector("storeAdamID");
  v29[23] = v9;
  v28[24] = @"NMRAugmentedNowPlayingInfoArtworkDataDigest";
  v10 = NSStringFromSelector("artworkDataDigest");
  v29[24] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v29 forKeys:v28 count:25];
  v12 = qword_100054188;
  qword_100054188 = v11;
}

void sub_10000EC8C(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_100054198;
  qword_100054198 = v1;

  v3 = qword_100054198;
  v4 = sub_10000E724();
  [v3 setDictionaryKeyToProtobufKeyMapping:v4];

  [qword_100054198 setProtobufClass:objc_opt_class()];
  [qword_100054198 setDictionaryValueToProtobufValueTransformer:&stru_100048D30];
  v5 = qword_100054198;

  [v5 setProtobufValueToDictionaryValueTransformer:&stru_100048D78];
}

id sub_10000ED34(id a1, NSDictionary *a2, NSString *a3, id a4)
{
  v5 = a3;
  v6 = a4;
  if ([(NSString *)v5 isEqualToString:kMRMediaRemoteNowPlayingInfoStartTime]|| [(NSString *)v5 isEqualToString:kMRMediaRemoteNowPlayingInfoTimestamp])
  {
    [v6 timeIntervalSinceReferenceDate];
    v7 = [NSNumber numberWithDouble:?];
LABEL_4:
    v8 = v7;

    goto LABEL_5;
  }

  if ([(NSString *)v5 isEqualToString:kMRMediaRemoteNowPlayingInfoRepeatMode]|| [(NSString *)v5 isEqualToString:kMRMediaRemoteNowPlayingInfoShuffleMode])
  {
    v7 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", sub_100005F14([v6 unsignedIntValue]));
    goto LABEL_4;
  }

  if (![(NSString *)v5 isEqualToString:kMRMediaRemoteNowPlayingInfoCollectionInfo])
  {
    v12 = [(NSString *)v5 isEqualToString:kMRMediaRemoteNowPlayingInfoUserInfo];
    if (!v6 || !v12)
    {
      v8 = v6;
      goto LABEL_5;
    }

    v13 = +[NRPairedDeviceRegistry sharedInstance];
    v14 = [v13 getActivePairedDevice];
    v15 = [[NSUUID alloc] initWithUUIDString:@"C2765ACC-C8FA-4C7A-9B11-B6B9DBE0CBBB"];
    v16 = [v14 supportsCapability:v15];

    if (v16)
    {
      v24 = 0;
      v8 = [NSPropertyListSerialization dataWithPropertyList:v6 format:200 options:0 error:&v24];
      v17 = v24;
    }

    else
    {
      if (![NSJSONSerialization isValidJSONObject:v6])
      {
        v18 = sub_10002C180(2);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          sub_100030C8C();
        }

        +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v6 count]);
        v22[0] = _NSConcreteStackBlock;
        v22[1] = 3221225472;
        v22[2] = sub_10000F0DC;
        v23 = v22[3] = &unk_100048D58;
        v19 = v23;
        [v6 enumerateKeysAndObjectsUsingBlock:v22];
        v20 = [v19 copy];

        v6 = v20;
      }

      v21 = 0;
      v8 = [NSJSONSerialization dataWithJSONObject:v6 options:2 error:&v21];
      v17 = v21;
    }

    v10 = v17;

    if (!v10)
    {
      goto LABEL_31;
    }

    v11 = sub_10002C180(2);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100030CF4();
    }

    goto LABEL_30;
  }

  if (!v6)
  {
    v8 = 0;
    goto LABEL_5;
  }

  v25 = 0;
  v8 = [NSJSONSerialization dataWithJSONObject:v6 options:2 error:&v25];
  v10 = v25;

  if (v10)
  {
    v11 = sub_10002C180(2);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100030D5C();
    }

LABEL_30:
  }

LABEL_31:

LABEL_5:

  return v8;
}

void sub_10000F0DC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([NSJSONSerialization isValidJSONObject:v6])
  {
    [*(a1 + 32) setObject:v6 forKey:v5];
  }

  else
  {
    v7 = sub_10002C180(2);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_100030DC4();
    }
  }
}

id sub_10000F17C(id a1, PBCodable *a2, NSString *a3, id a4)
{
  v5 = a3;
  v6 = a4;
  v7 = NSStringFromSelector("timestamp");
  v8 = [(NSString *)v5 isEqualToString:v7];

  if (v8)
  {
    [v6 doubleValue];
    v9 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
LABEL_9:
    v17 = v9;

LABEL_10:
    v6 = v17;
    goto LABEL_11;
  }

  v10 = NSStringFromSelector("repeatMode");
  v11 = [(NSString *)v5 isEqualToString:v10];

  if (v11 || (NSStringFromSelector("shuffleMode"), v13 = objc_claimAutoreleasedReturnValue(), v14 = [(NSString *)v5 isEqualToString:v13], v13, v14))
  {
    v12 = sub_100005F14([v6 unsignedIntValue]);
LABEL_8:
    v9 = [NSNumber numberWithInt:v12];
    goto LABEL_9;
  }

  v15 = NSStringFromSelector("queueEndAction");
  v16 = [(NSString *)v5 isEqualToString:v15];

  if (v16)
  {
    v12 = sub_100005F24([v6 unsignedIntValue]);
    goto LABEL_8;
  }

  v19 = NSStringFromSelector("collectionInfoData");
  v20 = [(NSString *)v5 isEqualToString:v19];

  if (v20)
  {
    if (v6)
    {
      v26 = 0;
      v17 = [NSJSONSerialization JSONObjectWithData:v6 options:0 error:&v26];
      v21 = v26;

      if (v21)
      {
        v22 = sub_10002C180(2);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          sub_100030EB0();
        }

LABEL_24:

        goto LABEL_25;
      }

      goto LABEL_25;
    }
  }

  else
  {
    v23 = NSStringFromSelector("userInfoData");
    v24 = [(NSString *)v5 isEqualToString:v23];

    if (v6 && v24)
    {
      v25 = 0;
      v17 = [NSPropertyListSerialization propertyListWithData:v6 options:0 format:0 error:&v25];
      v21 = v25;

      if (v21)
      {
        v22 = sub_10002C180(2);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          sub_100030E48();
        }

        goto LABEL_24;
      }

LABEL_25:

      goto LABEL_10;
    }
  }

LABEL_11:

  return v6;
}

void sub_10000F464(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_10000F5DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000F600(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _refreshCurrentPlaybackQueueFromMediaRemoteWithCompletion:v5];
  }
}

void sub_10000F7B4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a2;
  v7 = a5;
  [v7 objectForKeyedSubscript:kMRMediaRemoteOriginUserInfoKey];

  v8 = [v6 origin];
  [v8 mediaRemoteOrigin];
  v9 = MROriginEqualToOrigin();

  if (v9)
  {
    v10 = [v7 objectForKeyedSubscript:kMRMediaRemoteUpdatedContentItemsUserInfoKey];
    v11 = sub_10002C180(2);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = [v6 origin];
      v13 = [v12 displayName];
      v14 = 138412290;
      v15 = v13;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "_PlaybackQueueContentItemsDidChange for origin %@", &v14, 0xCu);
    }

    [v6 _updateMetadataWithMediaRemoteItems:v10];
  }
}

void sub_10000F91C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a2;
  [a5 objectForKeyedSubscript:kMRMediaRemoteOriginUserInfoKey];

  v7 = [v6 origin];
  [v7 mediaRemoteOrigin];
  LODWORD(a5) = MROriginEqualToOrigin();

  if (a5)
  {
    v8 = sub_10002C180(2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [v6 origin];
      v10 = [v9 displayName];
      v11 = 138412290;
      v12 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "_PlaybackQueueDidChangeNotification for origin %@", &v11, 0xCu);
    }

    [v6[4] executeUpdateBlock];
  }
}

uint64_t sub_10000FB40(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10000FB58(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) data];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

id sub_10000FC54(uint64_t a1)
{
  result = [*(a1 + 32) _mediaRemotePlaybackQueueWithRange:0 includeMetadata:{objc_msgSend(*(*(a1 + 32) + 8), "contentItemsCount") + 1, 1}];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

id sub_10000FD58(uint64_t a1)
{
  result = [*(a1 + 32) _mediaRemotePlaybackQueueWithRange:*(a1 + 48) includeMetadata:{*(a1 + 56), *(a1 + 64)}];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_10000FF18(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 && [v2 length])
  {
    v3 = [[_NMRPlaybackQueue alloc] initWithData:*(a1 + 32)];
    v4 = [*(*(a1 + 40) + 8) contentItems];
    v5 = [(_NMRPlaybackQueue *)v3 contentItems];
    v6 = objc_opt_new();
    *buf = 0;
    v33 = buf;
    v34 = 0x2020000000;
    v35 = 0;
    v7 = [(_NMRPlaybackQueue *)v3 location];
    if (v7 == [*(*(a1 + 40) + 8) location])
    {
      v8 = [v5 count];
      if (v8 == [v4 count])
      {
LABEL_14:
        v24 = _NSConcreteStackBlock;
        v25 = 3221225472;
        v26 = sub_100010334;
        v27 = &unk_100048E40;
        v14 = v5;
        v28 = v14;
        v31 = buf;
        v29 = *(a1 + 48);
        v15 = v6;
        v30 = v15;
        [v4 enumerateObjectsUsingBlock:&v24];
        if (v33[24])
        {
          v16 = objc_opt_new();
          [v16 setLocation:{objc_msgSend(*(*(a1 + 40) + 8), "location", v24, v25, v26, v27, v28, v29)}];
          [v16 setContentItems:v15];
          v17 = sub_10002C180(2);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            v18 = sub_100010700(v16);
            *v36 = 138412290;
            v37 = v18;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Built delta queue: %@", v36, 0xCu);
          }

          v19 = [v16 data];
          v20 = *(*(a1 + 56) + 8);
          v21 = *(v20 + 40);
          *(v20 + 40) = v19;
        }

        else
        {
          v22 = sub_10002C180(2);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
          {
            *v36 = 0;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "Nothing changed, delta queue is empty", v36, 2u);
          }

          v23 = *(*(a1 + 56) + 8);
          v16 = *(v23 + 40);
          *(v23 + 40) = 0;
        }

        _Block_object_dispose(buf, 8);
        goto LABEL_22;
      }

      v9 = sub_10002C180(2);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *v36 = 0;
        v10 = "Count different, include new items in delta";
LABEL_12:
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, v10, v36, 2u);
      }
    }

    else
    {
      v9 = sub_10002C180(2);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *v36 = 0;
        v10 = "Location different, include new items in delta";
        goto LABEL_12;
      }
    }

    v33[24] = 1;
    goto LABEL_14;
  }

  v11 = sub_10002C180(2);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Previous data empty, serialize the full queue with all metadata", buf, 2u);
  }

  v12 = [*(*(a1 + 40) + 8) data];
  v13 = *(*(a1 + 56) + 8);
  v3 = *(v13 + 40);
  *(v13 + 40) = v12;
LABEL_22:
}

void sub_1000102FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100010334(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = a2;
  if ([*(a1 + 32) count] <= a3)
  {
    v6 = 0;
  }

  else
  {
    v6 = [*(a1 + 32) objectAtIndexedSubscript:a3];
  }

  v7 = objc_opt_new();
  v8 = [v5 identifier];
  v9 = [v6 identifier];
  [v7 setIdentifier:v8];
  if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0 && ([v8 isEqualToString:v9] & 1) == 0)
  {
    v10 = sub_10002C180(2);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *v15 = 134217984;
      *&v15[4] = a3;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Found an item that didn't match up (index %lu), include new items in delta", v15, 0xCu);
    }

    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  v11 = sub_1000105B4(v8, *(a1 + 32));
  if (([v11 hasMetadata] & 1) == 0)
  {
    v12 = sub_10002C180(2);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *v15 = 134217984;
      *&v15[4] = a3;
      v13 = "Found an item missing metadata (index %lu)";
      goto LABEL_15;
    }

LABEL_16:

    v14 = [v5 metadata];
    [v7 setMetadata:v14];

    *(*(*(a1 + 56) + 8) + 24) = 1;
    goto LABEL_17;
  }

  if ([*(a1 + 40) containsObject:v8])
  {
    v12 = sub_10002C180(2);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *v15 = 134217984;
      *&v15[4] = a3;
      v13 = "Found an item with invalidated metadata (index %lu)";
LABEL_15:
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, v13, v15, 0xCu);
      goto LABEL_16;
    }

    goto LABEL_16;
  }

LABEL_17:
  [*(a1 + 48) addObject:{v7, *v15}];
}

id sub_1000105B4(void *a1, void *a2)
{
  v3 = a1;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = a2;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        v9 = [v8 identifier];
        if ([v3 isEqualToString:v9])
        {
          v5 = v8;

          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v5;
}

id sub_100010700(void *a1)
{
  v1 = a1;
  v2 = [v1 contentItems];
  v17 = v1;
  v3 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Playback queue with range %d -> %lu", [v1 location], objc_msgSend(v2, "count"));
  v4 = objc_opt_new();
  v16 = v3;
  [v4 appendString:v3];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = v2;
  v5 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        v10 = [v9 identifier];
        v11 = [v9 hasMetadata];
        v12 = [v9 metadata];
        v13 = [v12 title];
        v14 = [NSString stringWithFormat:@"\n  ContentItem identifier=%@, hasMetadata=%d, title=%@", v10, v11, v13];

        [v4 appendString:v14];
      }

      v6 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v6);
  }

  return v4;
}

void sub_1000109A4(uint64_t a1)
{
  v2 = [[_NMRPlaybackQueue alloc] initWithData:*(a1 + 32)];
  v3 = objc_opt_new();
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v4 = [*(*(a1 + 40) + 8) location];
  if (v4 != [(_NMRPlaybackQueue *)v2 location])
  {
    *(v23 + 24) = 1;
  }

  v5 = [*(*(a1 + 40) + 8) contentItems];
  v6 = [(_NMRPlaybackQueue *)v2 contentItems];
  v7 = [v5 count];
  if (v7 != [v6 count])
  {
    *(v23 + 24) = 1;
  }

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100010C88;
  v17[3] = &unk_100048E40;
  v8 = v5;
  v21 = &v22;
  v9 = *(a1 + 40);
  v18 = v8;
  v19 = v9;
  v10 = v3;
  v20 = v10;
  [v6 enumerateObjectsUsingBlock:v17];
  objc_storeStrong((*(a1 + 40) + 8), v2);
  v11 = sub_10002C180(2);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = sub_100010700(*(*(a1 + 40) + 8));
    *buf = 138412290;
    v27 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Updated with new data, queue is now: %@", buf, 0xCu);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100010FC8;
  block[3] = &unk_100048E90;
  v15 = v10;
  v16 = &v22;
  block[4] = *(a1 + 40);
  v13 = v10;
  dispatch_async(&_dispatch_main_q, block);

  _Block_object_dispose(&v22, 8);
}

void sub_100010C58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100010C88(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = a2;
  if ([*(a1 + 32) count] <= a3)
  {
    v6 = 0;
  }

  else
  {
    v6 = [*(a1 + 32) objectAtIndexedSubscript:a3];
  }

  v7 = [v5 identifier];
  v8 = [v6 identifier];
  if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0 && ([v7 isEqualToString:v8] & 1) == 0)
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  v9 = [*(a1 + 40) _metadataForItemWithIdentifier:v7];
  if ([v5 hasMetadata])
  {
    if (v9)
    {
      v10 = sub_100010E64(v5, 1);
      if (v10)
      {
        v11 = v10;
        if (!a3 && *(*(a1 + 40) + 40))
        {
          MRContentItemSetNowPlayingInfo();
        }

        [*(a1 + 48) addObject:v11];
      }
    }
  }

  else if (v9)
  {
    [v5 setMetadata:v9];
  }

  else
  {
    v12 = sub_10002C180(2);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = 138412290;
      v14 = v7;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Got a new queue item that didn't include metadata, and we don't have any cached metadata for this item, identifier: %@", &v13, 0xCu);
    }
  }
}

uint64_t sub_100010E64(void *a1, int a2)
{
  v3 = a1;
  [v3 identifier];
  v4 = MRContentItemCreate();
  if (a2)
  {
    v5 = [v3 metadata];
    [v5 title];
    MRContentItemSetTitle();
    [v5 artist];
    MRContentItemSetTrackArtistName();
    [v5 album];
    MRContentItemSetAlbumName();
    if ([v5 hasDuration])
    {
      [v5 duration];
      MRContentItemSetDuration();
    }

    if ([v5 hasIsAutoPlayItem])
    {
      v8 = MPNowPlayingContentItemUserInfoKeyIsAutoPlayItem;
      v6 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v5 isAutoPlayItem]);
      v9 = v6;
      [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
      MRContentItemSetUserInfo();
    }
  }

  return v4;
}

void sub_100010FC8(uint64_t a1)
{
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 48));
    [WeakRetained playbackQueueDidChange:*(a1 + 32)];
  }

  if ([*(a1 + 40) count])
  {
    v3 = objc_loadWeakRetained((*(a1 + 32) + 48));
    [v3 playbackQueue:*(a1 + 32) contentItemsDidChange:*(a1 + 40)];
  }
}

uint64_t sub_100011268(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) _updateWithMediaRemoteQueue:a2];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001130C;
  block[3] = &unk_100048CD0;
  block[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_10001130C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 48));
  [WeakRetained playbackQueueDidChange:*(a1 + 32)];
}

void sub_1000118AC(uint64_t a1, void *a2)
{
  v3 = a2;
  v10 = sub_100011994();
  v4 = MRContentItemGetIdentifier();

  v5 = [*(a1 + 32) _metadataForItemWithIdentifier:v4];
  v6 = v5;
  v7 = v10;
  if (v5)
  {
    [v5 mergeFrom:v10];
    v7 = v6;
  }

  v8 = v7;
  v9 = objc_opt_new();
  [v9 setIdentifier:v4];
  [v9 setMetadata:v8];
  [*(a1 + 40) addObject:v9];
}

id sub_100011994()
{
  v0 = objc_opt_new();
  [v0 setTitle:MRContentItemGetTitle()];
  TrackArtistName = MRContentItemGetTrackArtistName();
  if (!TrackArtistName)
  {
    TrackArtistName = MRContentItemGetAlbumArtistName();
  }

  [v0 setArtist:TrackArtistName];
  [v0 setAlbum:MRContentItemGetAlbumName()];
  if (MRContentItemGetHasDuration())
  {
    MRContentItemGetDuration();
    [v0 setDuration:?];
  }

  v2 = MRContentItemCopyUserInfo();
  v3 = [v2 objectForKey:MPNowPlayingContentItemUserInfoKeyIsAutoPlayItem];
  v4 = v3;
  if (v3)
  {
    [v0 setIsAutoPlayItem:{objc_msgSend(v3, "BOOLValue")}];
  }

  return v0;
}

void sub_100011B24(uint64_t a1)
{
  v2 = objc_opt_new();
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100011C3C;
  v10[3] = &unk_100048EE0;
  v3 = *(a1 + 32);
  v10[4] = *(a1 + 40);
  v4 = v2;
  v11 = v4;
  [v3 enumerateObjectsUsingBlock:v10];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100011D68;
  v7[3] = &unk_100048C80;
  v5 = *(a1 + 40);
  v8 = v4;
  v9 = v5;
  v6 = v4;
  dispatch_async(&_dispatch_main_q, v7);
}

void sub_100011C3C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MRContentItemGetIdentifier();
  v5 = [*(a1 + 32) _itemWithIdentifier:v4];
  if (v5)
  {
    [*(a1 + 40) addObject:v3];
    v6 = sub_100011994();
    v7 = [v5 metadata];
    [v7 mergeFrom:v6];
  }

  else
  {
    v6 = sub_10002C180(2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v8 = 138412290;
      v9 = v4;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "No need to update content item (identifier: %@), not currently in queue", &v8, 0xCu);
    }
  }
}

void sub_100011D68(uint64_t a1)
{
  if ([*(a1 + 32) count])
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 48));
    [WeakRetained playbackQueue:*(a1 + 40) contentItemsDidChange:*(a1 + 32)];
  }
}

void sub_100011EF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

id sub_100011F1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = [*(a1 + 32) _needsMetadataForMediaRemoteItem:a2];
  if (result)
  {
    v6 = *(a1 + 56) + a3;
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 24);
    if (v8 >= v6)
    {
      v8 = *(a1 + 56) + a3;
    }

    *(v7 + 24) = v8;
    v9 = *(*(a1 + 48) + 8);
    if (*(v9 + 24) > v6)
    {
      v6 = *(v9 + 24);
    }

    *(v9 + 24) = v6;
  }

  return result;
}

uint64_t sub_1000124D8(uint64_t a1, void *a2)
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
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v21 = PBReaderReadData();
        v22 = 8;
      }

      else
      {
        if (v13 != 2)
        {
          if (v13 == 1)
          {
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 28) |= 1u;
            while (1)
            {
              v27 = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v27 & 0x7F) << v14;
              if ((v27 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_37;
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

LABEL_37:
            *(a1 + 24) = v20;
          }

          else
          {
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }
          }

          goto LABEL_38;
        }

        v21 = PBReaderReadString();
        v22 = 16;
      }

      v23 = *(a1 + v22);
      *(a1 + v22) = v21;

LABEL_38:
      v25 = [a2 position];
    }

    while (v25 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_1000130D4(uint64_t a1, void *a2)
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
        LOBYTE(v46[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v46 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v46[0] & 0x7F) << v5;
        if ((v46[0] & 0x80) == 0)
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
          *(a1 + 48) |= 1u;
          v46[0] = 0;
          v35 = [a2 position] + 8;
          if (v35 >= [a2 position] && (v36 = objc_msgSend(a2, "position") + 8, v36 <= objc_msgSend(a2, "length")))
          {
            v44 = [a2 data];
            [v44 getBytes:v46 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          *(a1 + 32) = v46[0];
          goto LABEL_83;
        }

        if (v13 == 4)
        {
          v22 = 0;
          v23 = 0;
          v24 = 0;
          *(a1 + 48) |= 4u;
          while (1)
          {
            LOBYTE(v46[0]) = 0;
            v25 = [a2 position] + 1;
            if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
            {
              v27 = [a2 data];
              [v27 getBytes:v46 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v24 |= (v46[0] & 0x7F) << v22;
            if ((v46[0] & 0x80) == 0)
            {
              break;
            }

            v22 += 7;
            v11 = v23++ >= 9;
            if (v11)
            {
              v28 = 0;
              goto LABEL_63;
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

LABEL_63:
          v37 = 44;
          goto LABEL_68;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v29 = 0;
          v30 = 0;
          v31 = 0;
          *(a1 + 48) |= 2u;
          while (1)
          {
            LOBYTE(v46[0]) = 0;
            v32 = [a2 position] + 1;
            if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
            {
              v34 = [a2 data];
              [v34 getBytes:v46 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v31 |= (v46[0] & 0x7F) << v29;
            if ((v46[0] & 0x80) == 0)
            {
              break;
            }

            v29 += 7;
            v11 = v30++ >= 9;
            if (v11)
            {
              v28 = 0;
              goto LABEL_67;
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

LABEL_67:
          v37 = 40;
LABEL_68:
          *(a1 + v37) = v28;
          goto LABEL_83;
        }

        if (v13 == 2)
        {
          if ((v12 & 7) == 2)
          {
            v46[0] = 0;
            v46[1] = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            while (1)
            {
              v15 = [a2 position];
              if (v15 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
              {
                break;
              }

              v16 = 0;
              v17 = 0;
              v18 = 0;
              while (1)
              {
                v47 = 0;
                v19 = [a2 position] + 1;
                if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
                {
                  v21 = [a2 data];
                  [v21 getBytes:&v47 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v18 |= (v47 & 0x7F) << v16;
                if ((v47 & 0x80) == 0)
                {
                  break;
                }

                v16 += 7;
                v11 = v17++ >= 9;
                if (v11)
                {
                  goto LABEL_34;
                }
              }

              [a2 hasError];
LABEL_34:
              PBRepeatedUInt32Add();
            }

            PBReaderRecallMark();
          }

          else
          {
            v38 = 0;
            v39 = 0;
            v40 = 0;
            while (1)
            {
              LOBYTE(v46[0]) = 0;
              v41 = [a2 position] + 1;
              if (v41 >= [a2 position] && (v42 = objc_msgSend(a2, "position") + 1, v42 <= objc_msgSend(a2, "length")))
              {
                v43 = [a2 data];
                [v43 getBytes:v46 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v40 |= (v46[0] & 0x7F) << v38;
              if ((v46[0] & 0x80) == 0)
              {
                break;
              }

              v38 += 7;
              v11 = v39++ >= 9;
              if (v11)
              {
                goto LABEL_80;
              }
            }

            [a2 hasError];
LABEL_80:
            PBRepeatedUInt32Add();
          }

          goto LABEL_83;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_83:
      v45 = [a2 position];
    }

    while (v45 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1000142E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, id a34)
{
  objc_destroyWeak((v35 + 40));
  objc_destroyWeak((v34 + 32));
  objc_destroyWeak((v36 + 40));
  objc_destroyWeak(&a34);
  objc_destroyWeak((v37 - 160));
  _Unwind_Resume(a1);
}

void sub_100014368(uint64_t a1)
{
  dispatch_source_set_timer(*(a1 + 32), 0xFFFFFFFFFFFFFFFFLL, 0, 0);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained eagerUpdateTimerFired];
    WeakRetained = v3;
  }
}

void sub_1000143CC(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = sub_10002C180(2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*(*(a1 + 32) + 160) displayName];
      v7 = [*(*(a1 + 32) + 160) uniqueIdentifier];
      *buf = 138412546;
      v18 = v6;
      v19 = 2112;
      v20 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[LinkAgent] (%@-%@) _refreshCurrentNowPlayingInfoWithCompletion - os_transaction_create", buf, 0x16u);
    }

    v8 = os_transaction_create();
    v9 = WeakRetained[2];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10001459C;
    v12[3] = &unk_100048F58;
    v16 = v3;
    v13 = v9;
    v14 = *(a1 + 32);
    v15 = v8;
    v10 = v8;
    v11 = v9;
    [WeakRetained _refreshCurrentNowPlayingInfoWithCompletion:v12];
  }
}

void sub_10001459C(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100014650;
  v4[3] = &unk_100048C80;
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  dispatch_async(v3, v4);
}

void sub_100014650(uint64_t a1)
{
  v2 = sub_10002C180(2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(*(a1 + 32) + 160) displayName];
    v4 = [*(*(a1 + 32) + 160) uniqueIdentifier];
    v5 = 138412546;
    v6 = v3;
    v7 = 2112;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[LinkAgent] (%@-%@) _refreshCurrentNowPlayingInfoWithCompletion - os_release", &v5, 0x16u);
  }
}

void sub_10001473C(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _refreshCurrentNowPlayingApplicationInfoWithCompletion:v5];
  }
}

void sub_1000147A0(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = sub_10002C180(2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*(*(a1 + 32) + 160) displayName];
      v7 = [*(*(a1 + 32) + 160) uniqueIdentifier];
      *buf = 138412546;
      v18 = v6;
      v19 = 2112;
      v20 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[LinkAgent] (%@-%@) _refreshArtworkWithCompletion - os_transaction_create", buf, 0x16u);
    }

    v8 = os_transaction_create();
    v9 = WeakRetained[2];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100014970;
    v12[3] = &unk_100048F58;
    v16 = v3;
    v13 = v9;
    v14 = *(a1 + 32);
    v15 = v8;
    v10 = v8;
    v11 = v9;
    [WeakRetained _refreshArtworkWithCompletion:v12];
  }
}

void sub_100014970(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100014A24;
  v4[3] = &unk_100048C80;
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  dispatch_async(v3, v4);
}

void sub_100014A24(uint64_t a1)
{
  v2 = sub_10002C180(2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(*(a1 + 32) + 160) displayName];
    v4 = [*(*(a1 + 32) + 160) uniqueIdentifier];
    v5 = 138412546;
    v6 = v3;
    v7 = 2112;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[LinkAgent] (%@-%@) _refreshArtworkWithCompletion - os_release", &v5, 0x16u);
  }
}

void sub_1000150F0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = objc_opt_new();
    [v3 setQueueData:*(a1 + 32)];
    v4 = [v5[18] copy];
    [v3 setInvalidatedMetadataIdentifiers:v4];

    [v5[17] setObject:v3 forKeyedSubscript:*(a1 + 40)];
    WeakRetained = v5;
  }
}

void sub_100015258(uint64_t a1)
{
  v2 = [*(a1 + 32) nowPlayingInfoDigest];
  v3 = [*(a1 + 32) applicationInfoDigest];
  v4 = [*(a1 + 32) supportedCommandsDigest];
  v5 = [*(a1 + 32) playbackQueueDigest];
  v13 = 0;
  v12 = 0;
  v6 = [*(a1 + 40) _currentNowPlayingIgnoringDigestMatches:1 digest:v2 digestMatched:&v13 + 1];
  v7 = [*(a1 + 40) _currentNowPlayingApplicationInfoIgnoringDigestMatches:1 digest:v3 digestMatched:&v13];
  v8 = [*(a1 + 40) _currentSupportedCommandsIgnoringDigestMatches:1 digest:v4 digestMatches:&v12 + 1];
  v9 = [*(a1 + 40) _currentFullPlaybackQueueIgnoringDigestMatches:1 digest:v5 digestMatched:&v12];
  if (HIBYTE(v13) == 1 && v13 == 1 && HIBYTE(v12) == 1 && (v12 & 1) != 0)
  {
    v10 = 0;
  }

  else
  {
    v10 = [NMRMediaRemoteSetStateMessage messageWithNowPlayingInfo:v6 applicationInfo:v7 supportedCommands:v8 playbackQueue:v9 originIdentifier:*(*(a1 + 40) + 168)];
  }

  v11 = *(a1 + 48);
  if (v11)
  {
    (*(v11 + 16))(v11, v10);
  }
}

void sub_10001548C(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 48) objectForKey:kMRMediaRemoteNowPlayingInfoArtworkData];
  v3 = [*(*(a1 + 32) + 48) objectForKey:@"NMRAugmentedNowPlayingInfoArtworkDataDigest"];
  if ([v2 length])
  {
    v4 = v2;
    v2 = +[NSMutableData data];
    v21[0] = kCGImageDestinationImageMaxPixelSize;
    LODWORD(v5) = 1134297088;
    v6 = [NSNumber numberWithFloat:v5];
    v22[0] = v6;
    v21[1] = kCGImageDestinationLossyCompressionQuality;
    LODWORD(v7) = 0.75;
    v8 = [NSNumber numberWithFloat:v7];
    v22[1] = v8;
    v9 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:2];

    v10 = CGImageDestinationCreateWithData(v2, @"public.jpeg", 1uLL, v9);
    if (v10)
    {
      v11 = v10;
      v12 = CGImageSourceCreateWithData(v4, 0);
      if (v12)
      {
        v13 = v12;
        CGImageDestinationAddImageFromSource(v11, v12, 0, v9);
        CGImageDestinationFinalize(v11);
        CFRelease(v13);
      }

      CFRelease(v11);
    }

    v14 = sub_10002C180(2);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 134218240;
      v18 = [(__CFData *)v4 length];
      v19 = 2048;
      v20 = [v2 length];
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Resized JPEG from %zd bytes to %zd bytes.", &v17, 0x16u);
    }
  }

  v15 = [NMRMediaRemoteSetArtworkMessage messageWithJPEGArtwork:v2 originalDigest:v3 originIdentifier:*(*(a1 + 32) + 168)];
  v16 = *(a1 + 40);
  if (v16)
  {
    (*(v16 + 16))(v16, v15);
  }
}

void sub_1000158A4(uint64_t a1)
{
  v2 = [*(a1 + 32) command];
  v3 = [*(a1 + 32) bundleID];
  v4 = [*(a1 + 32) options];
  v5 = v4;
  v6 = !v2 || v2 == 122 || v2 == 2;
  v7 = [v4 objectForKeyedSubscript:kMRMediaRemoteOptionSendOptionsNumber];
  v8 = [v7 unsignedIntValue];

  v9 = v8 | v6;
  if (!v3)
  {
    v3 = [v5 objectForKeyedSubscript:kMRMediaRemoteOptionDestinationAppDisplayID];
  }

  v10 = sub_10002C180(2);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [*(*(a1 + 40) + 160) displayName];
    v12 = [*(*(a1 + 40) + 160) uniqueIdentifier];
    v13 = v12;
    v14 = @"YES";
    *buf = 138413570;
    v18 = v11;
    v19 = 2112;
    if ((v9 & 1) == 0)
    {
      v14 = @"NO";
    }

    v20 = v12;
    v21 = 1024;
    v22 = v2;
    v23 = 2112;
    v24 = v3;
    v25 = 2112;
    v26 = v14;
    v27 = 2112;
    v28 = v5;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[LinkAgent] (%@-%@) Sending media remote command %d to bundleID %@, launching: %@, options: %@", buf, 0x3Au);
  }

  [*(*(a1 + 40) + 160) mediaRemoteOrigin];
  v15 = *(*(a1 + 40) + 8);
  v16 = *(a1 + 48);
  MRMediaRemoteSendCommandToApp();
}

void sub_100015B10(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = sub_10002C180(2);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [*(*(a1 + 32) + 160) displayName];
    v8 = [*(*(a1 + 32) + 160) uniqueIdentifier];
    v9 = *(a1 + 48);
    v10 = [v5 componentsJoinedByString:{@", "}];
    v13 = 138413314;
    v14 = v7;
    v15 = 2112;
    v16 = v8;
    v17 = 1024;
    v18 = v9;
    v19 = 1024;
    v20 = a2;
    v21 = 2112;
    v22 = v10;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[LinkAgent] (%@-%@) Replying to media remote command %d with error code %d, handlerReturnStatuses: [%@].", &v13, 0x2Cu);
  }

  v11 = [NMRSendCommandResultMessage messageWithErrorCode:a2 handlerReturnStatuses:v5 originIdentifier:*(*(a1 + 32) + 168)];
  v12 = *(a1 + 40);
  if (v12)
  {
    (*(v12 + 16))(v12, v11);
  }
}

void sub_100015D40(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 136) objectForKeyedSubscript:*(a1 + 40)];
  if (v2)
  {
    if (*(a1 + 48) == 1)
    {
      v3 = sub_10002C180(2);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v4 = [*(*(a1 + 32) + 160) displayName];
        v5 = [*(*(a1 + 32) + 160) uniqueIdentifier];
        *buf = 138412546;
        v20 = v4;
        v21 = 2112;
        v22 = v5;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[LinkAgent] (%@-%@) Successfully delivered playback queue state", buf, 0x16u);
      }

      v6 = [v2 queueData];
      v7 = *(a1 + 32);
      v8 = *(v7 + 152);
      *(v7 + 152) = v6;

      v9 = [v2 invalidatedMetadataIdentifiers];
      v14 = 0u;
      v15 = 0u;
      v16 = 0u;
      v17 = 0u;
      v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v15;
        do
        {
          v13 = 0;
          do
          {
            if (*v15 != v12)
            {
              objc_enumerationMutation(v9);
            }

            [*(*(a1 + 32) + 144) removeObject:*(*(&v14 + 1) + 8 * v13)];
            v13 = v13 + 1;
          }

          while (v11 != v13);
          v11 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
        }

        while (v11);
      }
    }

    [*(*(a1 + 32) + 136) removeObjectForKey:*(a1 + 40)];
  }
}

void sub_100015FC8(uint64_t a1)
{
  if ([*(a1 + 32) count] == 1 && (objc_msgSend(*(a1 + 32), "firstObject"), v2 = objc_claimAutoreleasedReturnValue(), v2, sub_10001615C(*(*(a1 + 40) + 40), v2)))
  {
    v3 = sub_10002C180(2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = [*(*(a1 + 40) + 160) displayName];
      v5 = [*(*(a1 + 40) + 160) uniqueIdentifier];
      *buf = 138412546;
      v13 = v4;
      v14 = 2112;
      v15 = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[LinkAgent] (%@-%@) Suppressing playbackQueue's contentItem update because it is the nowPlayingContentItem.", buf, 0x16u);
    }
  }

  else
  {
    v6 = *(*(a1 + 40) + 128);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000161B8;
    v9[3] = &unk_100048C80;
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v10 = v7;
    v11 = v8;
    dispatch_async(v6, v9);
    v3 = v10;
  }
}

BOOL sub_10001615C(uint64_t a1, uint64_t a2)
{
  if (!a1 || !a2)
  {
    return (a1 | a2) == 0;
  }

  Identifier = MRContentItemGetIdentifier();
  v3 = MRContentItemGetIdentifier();
  return CFEqual(Identifier, v3) != 0;
}

id sub_1000161B8(uint64_t a1)
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * v6);
        v8 = MRContentItemGetIdentifier();
        [*(*(a1 + 40) + 144) addObject:{v8, v10}];

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  return [*(a1 + 40) _scheduleEagerUpdate:3];
}

void sub_10001694C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100016C00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100016C20(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100016C38(uint64_t a1)
{
  if (*(*(a1 + 32) + 40))
  {
    Identifier = MRContentItemGetIdentifier();
    v2 = [NSArray arrayWithObjects:&Identifier count:1];
    v3 = *(*(a1 + 40) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;
  }
}

void sub_100016CCC(uint64_t a1, int a2, CFErrorRef err)
{
  if (!err || [(__CFString *)CFErrorGetDomain(err) isEqualToString:kMRMediaRemoteFrameworkErrorDomain]&& CFErrorGetCode(err) == 35)
  {
    ContentItemAtOffset = MRPlaybackQueueGetContentItemAtOffset();
    MRPlaybackQueueGetResolvedPlayerPath();
    if (MRNowPlayingPlayerPathGetClient())
    {
      BundleIdentifier = MRNowPlayingClientGetBundleIdentifier();
      v7 = MRMediaRemoteCopyLocalDeviceSystemMediaApplicationDisplayID();
      if (BundleIdentifier && CFStringCompare(BundleIdentifier, v7, 0) == kCFCompareEqualTo)
      {
        v17 = kMRMediaRemoteNowPlayingInfoIsMusicApp;
        v18 = &__kCFBooleanTrue;
        [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
        MRContentItemSetNowPlayingInfo();
      }
    }

    else
    {
      v7 = MRMediaRemoteCopyLocalDeviceSystemMediaApplicationDisplayID();
    }

    CFRelease(v7);
    [*(a1 + 32) _updateNowPlayingInfoWithContentItem:ContentItemAtOffset];
  }

  else
  {
    v8 = sub_10002C180(2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100030F90();
    }
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    (*(v9 + 16))();
  }

  v10 = sub_10002C180(2);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [*(*(a1 + 32) + 160) displayName];
    v12 = [*(*(a1 + 32) + 160) uniqueIdentifier];
    v13 = 138412546;
    v14 = v11;
    v15 = 2112;
    v16 = v12;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[LinkAgent] (%@-%@) Finished fetching now playing info.", &v13, 0x16u);
  }
}

void sub_100017238(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100017270(uint64_t a1)
{
  result = *(*(a1 + 32) + 40);
  if (result)
  {
    v3 = MRContentItemGetIdentifier();
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    return _objc_release_x1();
  }

  return result;
}

void sub_1000172D0(uint64_t a1, int a2, CFErrorRef err)
{
  if (!err || [(__CFString *)CFErrorGetDomain(err) isEqualToString:kMRMediaRemoteFrameworkErrorDomain]&& CFErrorGetCode(err) == 35)
  {
    v5 = *(*(*(a1 + 48) + 8) + 40);
    ContentItemForIdentifier = MRPlaybackQueueGetContentItemForIdentifier();
    if (sub_10001615C(*(*(a1 + 32) + 40), ContentItemForIdentifier))
    {
      [*(a1 + 32) _updateNowPlayingInfoWithContentItem:ContentItemForIdentifier];
    }

    else
    {
      v8 = sub_10002C180(2);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [*(*(a1 + 32) + 160) displayName];
        v10 = [*(*(a1 + 32) + 160) uniqueIdentifier];
        v15 = 138412546;
        v16 = v9;
        v17 = 2112;
        v18 = v10;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[LinkAgent] (%@-%@) Skipped updating artwork because item has changed.", &v15, 0x16u);
      }
    }
  }

  else
  {
    v7 = sub_10002C180(2);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100030F90();
    }
  }

  v11 = *(a1 + 40);
  if (v11)
  {
    (*(v11 + 16))();
  }

  v12 = sub_10002C180(2);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [*(*(a1 + 32) + 160) displayName];
    v14 = [*(*(a1 + 32) + 160) uniqueIdentifier];
    v15 = 138412546;
    v16 = v13;
    v17 = 2112;
    v18 = v14;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[LinkAgent] (%@-%@) Finished fetching artwork.", &v15, 0x16u);
  }
}

id sub_100017590(uint64_t a1, void *a2)
{
  objc_storeStrong((*(a1 + 32) + 64), a2);
  v3 = *(a1 + 32);

  return [v3 _scheduleEagerUpdate:2];
}

void sub_100017848(uint64_t a1, int a2)
{
  v4 = MRMediaRemoteCopyPlaybackStateDescription();
  v5 = sub_10002C180(2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [*(*(a1 + 32) + 160) displayName];
    v7 = [*(*(a1 + 32) + 160) uniqueIdentifier];
    v8 = 138412802;
    v9 = v6;
    v10 = 2112;
    v11 = v7;
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[LinkAgent] (%@-%@) Got new now playing state %@", &v8, 0x20u);
  }

  *(*(a1 + 32) + 88) = a2;
  dispatch_group_leave(*(a1 + 40));
}

void sub_100017968(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = sub_10002C180(2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10003102C();
    }
  }

  else
  {
    v4 = *(*(a1 + 32) + 80);
    v5 = MRNowPlayingClientGetBundleIdentifier();
    v6 = *(a1 + 32);
    v7 = *(v6 + 80);
    *(v6 + 80) = v5;

    if (v4 != *(*(a1 + 32) + 80) && ([v4 isEqual:?]& 1) == 0)
    {
      *(*(a1 + 32) + 92) = MRNowPlayingClientGetProcessIdentifier();
      v8 = MRNowPlayingClientGetDisplayName();
      v9 = *(a1 + 32);
      v10 = *(v9 + 72);
      *(v9 + 72) = v8;

      v11 = sub_10002C180(2);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [*(*(a1 + 32) + 160) displayName];
        v13 = [*(*(a1 + 32) + 160) uniqueIdentifier];
        v14 = *(*(a1 + 32) + 72);
        v15 = *(*(a1 + 32) + 80);
        v16 = 138413058;
        v17 = v12;
        v18 = 2112;
        v19 = v13;
        v20 = 2112;
        v21 = v15;
        v22 = 2112;
        v23 = v14;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[LinkAgent] (%@-%@) Got new now playing application %@-%@", &v16, 0x2Au);
      }
    }
  }

  dispatch_group_leave(*(a1 + 40));
}

uint64_t sub_100017B34(uint64_t a1)
{
  [*(a1 + 32) _scheduleEagerUpdate:1];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void sub_1000182FC(uint64_t a1)
{
  if (*(*(a1 + 32) + 40))
  {
    v2 = [*(a1 + 40) objectForKey:kMRMediaRemoteUpdatedContentItemsUserInfoKey];
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v3 = [v2 countByEnumeratingWithState:&v10 objects:v20 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v11;
      do
      {
        for (i = 0; i != v4; i = i + 1)
        {
          if (*v11 != v5)
          {
            objc_enumerationMutation(v2);
          }

          if (sub_10001615C(*(*(a1 + 32) + 40), *(*(&v10 + 1) + 8 * i)))
          {
            (*(*(a1 + 56) + 16))();
          }
        }

        v4 = [v2 countByEnumeratingWithState:&v10 objects:v20 count:16];
      }

      while (v4);
    }
  }

  else
  {
    v2 = sub_10002C180(2);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [*(*(a1 + 32) + 160) displayName];
      v8 = [*(*(a1 + 32) + 160) uniqueIdentifier];
      v9 = *(a1 + 48);
      *buf = 138412802;
      v15 = v7;
      v16 = 2112;
      v17 = v8;
      v18 = 2112;
      v19 = v9;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[LinkAgent] (%@-%@) Received %@ without current nowPlayingItem", buf, 0x20u);
    }
  }
}

void sub_100018624(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v10 = a2;
  v7 = a3;
  if (([v10 isEqualToString:kMRMediaRemoteNowPlayingInfoDuration] & 1) == 0 && (objc_msgSend(v10, "isEqualToString:", kMRMediaRemoteNowPlayingInfoElapsedTime) & 1) == 0 && (objc_msgSend(v10, "isEqualToString:", kMRMediaRemoteNowPlayingInfoTimestamp) & 1) == 0 && (objc_msgSend(v10, "isEqualToString:", kMRMediaRemoteNowPlayingInfoArtworkData) & 1) == 0)
  {
    v8 = [*(a1 + 32) objectForKeyedSubscript:v10];
    v9 = v8;
    if (!v8 || ([v8 isEqual:v7] & 1) == 0)
    {
      *(*(*(a1 + 40) + 8) + 24) = 0;
      *a4 = 1;
    }
  }
}

void sub_100018744(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x20u);
}

uint64_t sub_1000188F0(uint64_t a1, void *a2)
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
        v13 = &OBJC_IVAR____NMRPlaybackQueueResponseProtobuf__error;
LABEL_21:
        v14 = PBReaderReadData();
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

    v13 = &OBJC_IVAR____NMRPlaybackQueueResponseProtobuf__playbackQueue;
    goto LABEL_21;
  }

  return [a2 hasError] ^ 1;
}

uint64_t start()
{
  signal(15, 1);
  v0 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, &_dispatch_main_q);
  dispatch_source_set_event_handler(v0, &stru_1000491A8);
  v1 = objc_autoreleasePoolPush();
  v2 = dispatch_queue_create("com.apple.nanomediaremotelinkagent.notifications", 0);
  xpc_set_event_stream_handler("com.apple.notifyd.matching", v2, &stru_1000491E8);
  v3 = +[NMRLinkAgentServer server];
  v4 = +[NACDaemonServer companionServer];
  v5 = +[NACXPCServer server];

  objc_autoreleasePoolPop(v1);
  CFRunLoopRun();

  return 1;
}

void sub_100018F3C(id a1)
{
  v1 = sub_10002C180(2);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Received SIGTERM; exiting.", v2, 2u);
  }

  exit(0);
}

void sub_100018FA0(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  type = xpc_get_type(v2);
  string = xpc_dictionary_get_string(v2, _xpc_event_key_name);

  v5 = sub_10002C180(2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412546;
    v7 = type;
    v8 = 2080;
    v9 = string;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[LinkAgent] Received notifyd event type: %@, name: %s.", &v6, 0x16u);
  }
}

uint64_t sub_1000193E0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

CFTypeRef sub_1000194B8(uint64_t a1)
{
  result = *(*(a1 + 32) + 24);
  if (result)
  {
    v3 = MROriginCopy();
    result = CFAutorelease(v3);
    *(*(*(a1 + 40) + 8) + 24) = result;
  }

  return result;
}

void sub_1000195A4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  if (v3)
  {
    if ([v3 isDeviceRoute])
    {
LABEL_3:
      v4 = *(*(a1 + 40) + 8);
      v5 = 1;
LABEL_11:
      *(v4 + 24) = v5;
      return;
    }

    if ([*(*(a1 + 32) + 16) isAppleTVRoute])
    {
LABEL_10:
      v4 = *(*(a1 + 40) + 8);
      v5 = 3;
      goto LABEL_11;
    }

    v7 = [*(*(a1 + 32) + 16) isB520Route];
    v8 = *(*(a1 + 32) + 16);
    if (v7)
    {
      v9 = [v8 isStereoPair];
      v4 = *(*(a1 + 40) + 8);
      if (v9)
      {
        v5 = 5;
      }

      else
      {
        v5 = 4;
      }

      goto LABEL_11;
    }

    if ([v8 isHomePodRoute])
    {
      v16 = [*(*(a1 + 32) + 16) isStereoPair];
      v4 = *(*(a1 + 40) + 8);
      if (v16)
      {
        v5 = 7;
      }

      else
      {
        v5 = 6;
      }

      goto LABEL_11;
    }
  }

  else
  {
    if (!*(v2 + 40))
    {
      return;
    }

    DeviceClass = MRPairedDeviceGetDeviceClass();
    if (DeviceClass <= 5)
    {
      if (DeviceClass == 1)
      {
        v4 = *(*(a1 + 40) + 8);
        v5 = 2;
        goto LABEL_11;
      }

      if (DeviceClass != 4)
      {
        return;
      }

      goto LABEL_10;
    }

    if (DeviceClass == 6)
    {
      goto LABEL_3;
    }

    if (DeviceClass == 7)
    {
      v17 = *(*(a1 + 32) + 40);
      v10 = [v17 modelID];
      v11 = [v10 hasPrefix:{@"AudioAccessory5, "}];
      v12 = *(*(a1 + 32) + 40);
      IsTightlySyncedGroup = MRPairedDeviceIsTightlySyncedGroup();
      v14 = 4;
      if (IsTightlySyncedGroup)
      {
        v14 = 5;
      }

      v15 = 6;
      if (IsTightlySyncedGroup)
      {
        v15 = 7;
      }

      if (!v11)
      {
        v14 = v15;
      }

      *(*(*(a1 + 40) + 8) + 24) = v14;
    }
  }
}

void sub_10001990C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = [v3 routeUID];
    v5 = [v4 lastPathComponent];
  }

  else
  {
    if (!*(v2 + 40))
    {
      return;
    }

    v5 = sub_1000199A4();
  }

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

__CFString *sub_1000199A4()
{
  v0 = MRPairedDeviceCopyDeviceUID();
  v1 = v0;
  if (!v0)
  {
    if (MRPairedDeviceGetDeviceClass() == 1)
    {
      v1 = @"CMPN";
    }

    else
    {
      v1 = @"LOCAL";
    }
  }

  v2 = v1;

  return v1;
}

uint64_t sub_100019AFC(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2[6])
  {
    v3 = v2[2];
    if (v3)
    {
      v4 = [v3 designatedGroupLeaderName];
      v5 = [v4 length];
      v6 = *(*(a1 + 32) + 16);
      if (v5)
      {
        [v6 designatedGroupLeaderName];
      }

      else
      {
        [v6 routeName];
      }
      v12 = ;
      objc_storeStrong((*(a1 + 32) + 48), v12);
    }

    else
    {
      v7 = v2[5];
      v8 = MRPairedDeviceCopyGroupName();
      if (!v8)
      {
        v9 = *(*(a1 + 32) + 40);
        v8 = MRPairedDeviceCopyName();
        if (!v8)
        {
          v10 = *(*(a1 + 32) + 24);
          v8 = MROriginGetDisplayName();
        }
      }

      v11 = *(a1 + 32);
      v4 = *(v11 + 48);
      *(v11 + 48) = v8;
    }
  }

  v13 = [*(*(a1 + 32) + 48) copy];
  v14 = *(*(a1 + 40) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v13;

  return _objc_release_x1();
}

uint64_t sub_100019CE0(uint64_t a1)
{
  result = *(*(a1 + 32) + 24);
  if (result)
  {
    v3 = [NSNumber numberWithInt:MROriginGetUniqueIdentifier()];
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    return _objc_release_x1();
  }

  return result;
}

unint64_t sub_100019E00(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  if (v3)
  {
    result = [v3 isDeviceRoute];
  }

  else
  {
    result = *(v2 + 24);
    if (!result)
    {
      return result;
    }

    result = MROriginIsLocalOrigin() != 0;
  }

  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t sub_100019F00(uint64_t a1)
{
  result = *(*(a1 + 32) + 24);
  if (result)
  {
    result = MROriginGetUniqueIdentifier();
    *(*(*(a1 + 40) + 8) + 24) = result == 1129140302;
  }

  return result;
}

void sub_100019FFC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = [v3 routeNames];
    *(*(*(a1 + 40) + 8) + 24) = [v4 count];
  }

  else if (*(v2 + 40))
  {
    *(*(*(a1 + 40) + 8) + 24) = MRPairedDeviceGetGroupLogicalDeviceCount();
  }
}

id *sub_10001A124(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v5 = *(v2 + 16);
  result = (v2 + 16);
  if (v3 != v5)
  {
    objc_storeStrong(result, v3);
    v6 = *(a1 + 40);
    v7 = *(v6 + 48);
    *(v6 + 48) = 0;

    v8 = *(a1 + 40);

    return [v8 _updateConnectionState];
  }

  return result;
}

void sub_10001A200(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 24);
  v4 = MROriginEqualToOrigin();
  if (!v4)
  {
    v5 = *(*(a1 + 32) + 24);
    if (v5)
    {
      CFRelease(v5);
    }

    *(*(a1 + 32) + 24) = CFRetain(*(a1 + 40));
    v6 = *(a1 + 32);
    v7 = *(v6 + 48);
    *(v6 + 48) = 0;

    [*(a1 + 32) _updateConnectionState];
  }

  v8 = *(a1 + 48);
  v9 = *(*(a1 + 32) + 40);
  v10 = MRPairedDeviceEqualToPairedDevice();
  if (v10)
  {
    if (v4)
    {
      return;
    }
  }

  else
  {
    v11 = *(*(a1 + 32) + 40);
    if (v11)
    {
      CFRelease(v11);
    }

    v12 = *(a1 + 48);
    *(*(a1 + 32) + 40) = MRPairedDeviceCreateCopy();
    v13 = *(a1 + 32);
    v14 = *(v13 + 48);
    *(v13 + 48) = 0;
  }

  v15 = sub_10002C180(2);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = *(a1 + 32);
    *buf = 134218496;
    v19 = v16;
    v20 = 1024;
    v21 = v4 == 0;
    v22 = 1024;
    v23 = v10 == 0;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[Origin] Updated origin: %p, originChanged:%d, deviceInfoChanged:%d", buf, 0x18u);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001A3D4;
  block[3] = &unk_100048CD0;
  block[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

void sub_10001A3D4(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 postNotificationName:@"NMROriginDeviceInfoDidChangeNotification" object:*(a1 + 32) userInfo:0];
}

void sub_10001A63C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10001A700(uint64_t a1)
{
  v2 = [*(a1 + 32) object];
  v3 = [*(*(a1 + 40) + 16) connection];

  if (v2 == v3)
  {
    v4 = *(a1 + 40);

    [v4 _updateConnectionState];
  }
}

void sub_10001A818(uint64_t a1)
{
  v2 = [*(a1 + 32) object];
  v3 = [*(*(a1 + 40) + 16) connection];

  if (v2 == v3)
  {
    v4 = *(a1 + 40);

    [v4 _updateConnectionState];
  }
}

void sub_10001A930(uint64_t a1)
{
  v2 = [*(a1 + 32) object];
  v3 = [*(*(a1 + 40) + 16) connection];
  v4 = [v3 externalDevice];

  if (v2 == v4)
  {
    v5 = *(a1 + 40);

    [v5 _updateConnectionState];
  }
}

void sub_10001AC5C(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 postNotificationName:@"NMROriginConnectionStateDidChangeNotification" object:*(a1 + 32)];
}

uint64_t sub_10001ADB4(uint64_t a1)
{
  qword_1000541A8 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

uint64_t sub_10001B150(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) array];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

uint64_t sub_10001B290(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:*(*(a1 + 32) + 40)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

uint64_t sub_10001B3D0(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:*(*(a1 + 32) + 48)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

void sub_10001B514(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v6 = [NSNumber numberWithInt:1129140302];
  v3 = [v2 objectForKeyedSubscript:v6];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

uint64_t sub_10001B6C0(void *a1)
{
  v2 = [*(a1[4] + 24) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

uint64_t sub_10001B838(void *a1)
{
  v2 = [*(a1[4] + 32) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

int64_t sub_10001BE5C(id a1, NMROrigin *a2, NMROrigin *a3)
{
  v4 = a2;
  v5 = a3;
  if ([(NMROrigin *)v4 type]== 1)
  {
    v6 = 1;
  }

  else if ([(NMROrigin *)v4 type]== 2)
  {
    v6 = 2;
  }

  else
  {
    v6 = 3;
  }

  if ([(NMROrigin *)v5 type]== 1)
  {
    v7 = 1;
  }

  else
  {
    v8 = [(NMROrigin *)v5 type];
    v7 = 2;
    if (v8 != 2)
    {
      v7 = 3;
    }
  }

  if (v6 >= v7)
  {
    if (v6 > v7)
    {
      v9 = 1;
    }

    else
    {
      v10 = [(NMROrigin *)v4 displayName];
      v11 = [(NMROrigin *)v5 displayName];
      v9 = [v10 compare:v11];
    }
  }

  else
  {
    v9 = -1;
  }

  return v9;
}

void sub_10001BF54(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 postNotificationName:@"NMROriginManagerAvailableOriginsDidChangeNotification" object:*(a1 + 32)];
}

void sub_10001C16C(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 postNotificationName:@"NMROriginManagerActiveOriginDidChangeNotification" object:*(a1 + 32)];
}

id sub_10001C240(uint64_t a1)
{
  result = MRMediaRemoteGetLocalOrigin();
  v3 = result;
  v4 = *(a1 + 32);
  if (!*(v4 + 56))
  {
    Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 1, &kCFTypeArrayCallBacks);
    CFArrayAppendValue(Mutable, v3);
    *(*(a1 + 32) + 56) = Mutable;
    result = [*(a1 + 32) _onQueue_updateAvailableOrigins];
    v4 = *(a1 + 32);
  }

  if (!*(v4 + 48))
  {
    v6 = [NSNumber numberWithInt:MROriginGetUniqueIdentifier()];
    v7 = *(a1 + 32);
    v8 = *(v7 + 48);
    *(v7 + 48) = v6;

    return _objc_release_x1();
  }

  return result;
}

void sub_10001C54C(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 144), 8);
  _Block_object_dispose((v1 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_10001C570(uint64_t a1, CFTypeRef cf)
{
  if (cf)
  {
    *(*(*(a1 + 40) + 8) + 24) = CFRetain(cf);
  }

  else
  {
    v3 = sub_10002C180(2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100031144(v3);
    }
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_10001C5E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = [NSNumber numberWithInt:MROriginGetUniqueIdentifier()];
    v5 = *(*(a1 + 40) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }

  else
  {
    v7 = sub_10002C180(2);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100031188(v7);
    }
  }

  dispatch_group_leave(*(a1 + 32));
}

id sub_10001C670(uint64_t a1)
{
  v2 = *(*(*(a1 + 40) + 8) + 24);
  if (v2)
  {
    if (!*(*(a1 + 32) + 56) || (CFRelease(*(*(a1 + 32) + 56)), *(*(a1 + 32) + 56) = 0, (v2 = *(*(*(a1 + 40) + 8) + 24)) != 0))
    {
      *(*(a1 + 32) + 56) = CFRetain(v2);
      CFRelease(*(*(*(a1 + 40) + 8) + 24));
    }

    [*(a1 + 32) _onQueue_updateAvailableOrigins];
  }

  v3 = *(a1 + 32);
  v4 = *(*(*(a1 + 48) + 8) + 40);

  return [v3 _onQueue_updateActiveOriginIdentifier:v4];
}

void sub_10001C7B0(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKeyedSubscript:kMRMediaRemoteOriginUserInfoKey];

  v7 = [NSNumber numberWithInt:MROriginGetUniqueIdentifier()];
  v4 = [*(*(a1 + 40) + 32) objectForKeyedSubscript:v7];
  v5 = [*(a1 + 32) userInfo];
  v6 = [v5 objectForKeyedSubscript:kMRPairedDeviceUserInfoKey];

  [v4 updateOrigin:v3 deviceInfo:v6];
  [*(a1 + 40) _onQueue_updateAvailableOrigins];
}

void sub_10001C94C(uint64_t a1)
{
  if (*(a1 + 32) == *(*(a1 + 40) + 64))
  {
    v2 = sub_10002C180(2);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = [*(a1 + 32) name];
      v4 = [*(a1 + 32) availableRoutes];
      *buf = 138412546;
      v26 = v3;
      v27 = 2112;
      v28 = v4;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[%@] Available routes did change: %@", buf, 0x16u);
    }

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v5 = [*(a1 + 32) availableRoutes];
    v6 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v6)
    {
      v8 = v6;
      v9 = *v21;
      *&v7 = 138412546;
      v16 = v7;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v21 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v20 + 1) + 8 * i);
          v12 = [v11 connection];
          v13 = v12;
          if (v12 && ([v12 isConnected] & 1) == 0 && (objc_msgSend(v13, "isConnecting") & 1) == 0 && (objc_msgSend(v13, "isInvalidated") & 1) == 0)
          {
            v14 = sub_10002C180(2);
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              v15 = [*(a1 + 32) name];
              *buf = v16;
              v26 = v15;
              v27 = 2112;
              v28 = v11;
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[%@] Will connect to route %@...", buf, 0x16u);
            }

            v17[0] = _NSConcreteStackBlock;
            v17[1] = 3221225472;
            v17[2] = sub_10001CC10;
            v17[3] = &unk_100049328;
            v18 = *(a1 + 32);
            v19 = v11;
            [v13 connectWithCompletion:v17];
          }
        }

        v8 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v8);
    }
  }
}

void sub_10001CC10(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_10002C180(2);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000311CC(a1, v3, v5);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [*(a1 + 32) name];
    v7 = *(a1 + 40);
    v8 = 138412546;
    v9 = v6;
    v10 = 2112;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%@] Connected to route %@ successfully!", &v8, 0x16u);
  }
}

uint64_t sub_10001D050(uint64_t a1, void *a2)
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
        v30 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v30 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v30 & 0x7F) << v5;
        if ((v30 & 0x80) == 0)
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
          v24 = PBReaderReadData();
          v25 = 32;
          goto LABEL_38;
        }

        if (v13 != 4)
        {
LABEL_34:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_45;
        }

        v16 = 0;
        v17 = 0;
        v18 = 0;
        *(a1 + 40) |= 2u;
        while (1)
        {
          v31 = 0;
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
            goto LABEL_42;
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

LABEL_42:
        *(a1 + 24) = v22;
      }

      else
      {
        if (v13 == 1)
        {
          v24 = PBReaderReadData();
          v25 = 16;
LABEL_38:
          v26 = *(a1 + v25);
          *(a1 + v25) = v24;

          goto LABEL_45;
        }

        if (v13 != 2)
        {
          goto LABEL_34;
        }

        *(a1 + 40) |= 1u;
        v29 = 0;
        v14 = [a2 position] + 8;
        if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 8, v15 <= objc_msgSend(a2, "length")))
        {
          v27 = [a2 data];
          [v27 getBytes:&v29 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 8) = v29;
      }

LABEL_45:
      v28 = [a2 position];
    }

    while (v28 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_10001E970(uint64_t a1, void *a2)
{
  for (i = a2; ; i = a2)
  {
    v5 = [i position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      LOBYTE(v103) = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v103 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v103 & 0x7F) << v6;
      if ((v103 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    switch((v13 >> 3))
    {
      case 1u:
        v14 = PBReaderReadString();
        v15 = 64;
        goto LABEL_122;
      case 2u:
        v14 = PBReaderReadString();
        v15 = 72;
        goto LABEL_122;
      case 3u:
        *(a1 + 164) |= 1u;
        v103 = 0;
        v44 = [a2 position] + 8;
        if (v44 >= [a2 position] && (v45 = objc_msgSend(a2, "position") + 8, v45 <= objc_msgSend(a2, "length")))
        {
          v97 = [a2 data];
          [v97 getBytes:&v103 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v98 = v103;
        v99 = 8;
        goto LABEL_180;
      case 4u:
        *(a1 + 164) |= 2u;
        v103 = 0;
        v46 = [a2 position] + 8;
        if (v46 >= [a2 position] && (v47 = objc_msgSend(a2, "position") + 8, v47 <= objc_msgSend(a2, "length")))
        {
          v100 = [a2 data];
          [v100 getBytes:&v103 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v98 = v103;
        v99 = 16;
        goto LABEL_180;
      case 5u:
        *(a1 + 164) |= 0x80u;
        LODWORD(v103) = 0;
        v29 = [a2 position] + 4;
        if (v29 >= [a2 position] && (v30 = objc_msgSend(a2, "position") + 4, v30 <= objc_msgSend(a2, "length")))
        {
          v94 = [a2 data];
          [v94 getBytes:&v103 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        v95 = v103;
        v96 = 112;
        goto LABEL_183;
      case 6u:
        v56 = 0;
        v57 = 0;
        v58 = 0;
        *(a1 + 164) |= 0x200u;
        while (1)
        {
          LOBYTE(v103) = 0;
          v59 = [a2 position] + 1;
          if (v59 >= [a2 position] && (v60 = objc_msgSend(a2, "position") + 1, v60 <= objc_msgSend(a2, "length")))
          {
            v61 = [a2 data];
            [v61 getBytes:&v103 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v58 |= (v103 & 0x7F) << v56;
          if ((v103 & 0x80) == 0)
          {
            break;
          }

          v56 += 7;
          v12 = v57++ >= 9;
          if (v12)
          {
            v62 = 0;
            goto LABEL_154;
          }
        }

        if ([a2 hasError])
        {
          v62 = 0;
        }

        else
        {
          v62 = v58;
        }

LABEL_154:
        v93 = 136;
        goto LABEL_159;
      case 7u:
        v63 = 0;
        v64 = 0;
        v65 = 0;
        *(a1 + 164) |= 0x400u;
        while (1)
        {
          LOBYTE(v103) = 0;
          v66 = [a2 position] + 1;
          if (v66 >= [a2 position] && (v67 = objc_msgSend(a2, "position") + 1, v67 <= objc_msgSend(a2, "length")))
          {
            v68 = [a2 data];
            [v68 getBytes:&v103 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v65 |= (v103 & 0x7F) << v63;
          if ((v103 & 0x80) == 0)
          {
            break;
          }

          v63 += 7;
          v12 = v64++ >= 9;
          if (v12)
          {
            v62 = 0;
            goto LABEL_158;
          }
        }

        if ([a2 hasError])
        {
          v62 = 0;
        }

        else
        {
          v62 = v65;
        }

LABEL_158:
        v93 = 140;
LABEL_159:
        *(a1 + v93) = v62;
        continue;
      case 8u:
        *(a1 + 164) |= 0x20u;
        v103 = 0;
        v48 = [a2 position] + 8;
        if (v48 >= [a2 position] && (v49 = objc_msgSend(a2, "position") + 8, v49 <= objc_msgSend(a2, "length")))
        {
          v101 = [a2 data];
          [v101 getBytes:&v103 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v98 = v103;
        v99 = 48;
LABEL_180:
        *(a1 + v99) = v98;
        continue;
      case 9u:
        v14 = PBReaderReadString();
        v15 = 144;
        goto LABEL_122;
      case 0xAu:
        v38 = 0;
        v39 = 0;
        v40 = 0;
        *(a1 + 164) |= 0x40u;
        while (1)
        {
          LOBYTE(v103) = 0;
          v41 = [a2 position] + 1;
          if (v41 >= [a2 position] && (v42 = objc_msgSend(a2, "position") + 1, v42 <= objc_msgSend(a2, "length")))
          {
            v43 = [a2 data];
            [v43 getBytes:&v103 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v40 |= (v103 & 0x7F) << v38;
          if ((v103 & 0x80) == 0)
          {
            break;
          }

          v38 += 7;
          v12 = v39++ >= 9;
          if (v12)
          {
            v37 = 0;
            goto LABEL_148;
          }
        }

        if ([a2 hasError])
        {
          v37 = 0;
        }

        else
        {
          v37 = v40;
        }

LABEL_148:
        v92 = 56;
        goto LABEL_171;
      case 0xBu:
        v75 = 0;
        v76 = 0;
        v77 = 0;
        *(a1 + 164) |= 0x2000u;
        while (1)
        {
          LOBYTE(v103) = 0;
          v78 = [a2 position] + 1;
          if (v78 >= [a2 position] && (v79 = objc_msgSend(a2, "position") + 1, v79 <= objc_msgSend(a2, "length")))
          {
            v80 = [a2 data];
            [v80 getBytes:&v103 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v77 |= (v103 & 0x7F) << v75;
          if ((v103 & 0x80) == 0)
          {
            break;
          }

          v75 += 7;
          v12 = v76++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_165;
          }
        }

        v22 = (v77 != 0) & ~[a2 hasError];
LABEL_165:
        v91 = 162;
        goto LABEL_166;
      case 0xCu:
        v23 = 0;
        v24 = 0;
        v25 = 0;
        *(a1 + 164) |= 0x4000u;
        while (1)
        {
          LOBYTE(v103) = 0;
          v26 = [a2 position] + 1;
          if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
          {
            v28 = [a2 data];
            [v28 getBytes:&v103 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v25 |= (v103 & 0x7F) << v23;
          if ((v103 & 0x80) == 0)
          {
            break;
          }

          v23 += 7;
          v12 = v24++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_140;
          }
        }

        v22 = (v25 != 0) & ~[a2 hasError];
LABEL_140:
        v91 = 163;
        goto LABEL_166;
      case 0xDu:
        v31 = 0;
        v32 = 0;
        v33 = 0;
        *(a1 + 164) |= 4u;
        while (1)
        {
          LOBYTE(v103) = 0;
          v34 = [a2 position] + 1;
          if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
          {
            v36 = [a2 data];
            [v36 getBytes:&v103 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v33 |= (v103 & 0x7F) << v31;
          if ((v103 & 0x80) == 0)
          {
            break;
          }

          v31 += 7;
          v12 = v32++ >= 9;
          if (v12)
          {
            v37 = 0;
            goto LABEL_144;
          }
        }

        if ([a2 hasError])
        {
          v37 = 0;
        }

        else
        {
          v37 = v33;
        }

LABEL_144:
        v92 = 24;
        goto LABEL_171;
      case 0xEu:
        v14 = PBReaderReadString();
        v15 = 120;
        goto LABEL_122;
      case 0xFu:
        v14 = PBReaderReadString();
        v15 = 128;
        goto LABEL_122;
      case 0x10u:
        v14 = PBReaderReadData();
        v15 = 80;
        goto LABEL_122;
      case 0x11u:
        v16 = 0;
        v17 = 0;
        v18 = 0;
        *(a1 + 164) |= 0x1000u;
        while (1)
        {
          LOBYTE(v103) = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v103 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v103 & 0x7F) << v16;
          if ((v103 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v12 = v17++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_138;
          }
        }

        v22 = (v18 != 0) & ~[a2 hasError];
LABEL_138:
        v91 = 161;
        goto LABEL_166;
      case 0x12u:
        v50 = 0;
        v51 = 0;
        v52 = 0;
        *(a1 + 164) |= 0x800u;
        while (1)
        {
          LOBYTE(v103) = 0;
          v53 = [a2 position] + 1;
          if (v53 >= [a2 position] && (v54 = objc_msgSend(a2, "position") + 1, v54 <= objc_msgSend(a2, "length")))
          {
            v55 = [a2 data];
            [v55 getBytes:&v103 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v52 |= (v103 & 0x7F) << v50;
          if ((v103 & 0x80) == 0)
          {
            break;
          }

          v50 += 7;
          v12 = v51++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_150;
          }
        }

        v22 = (v52 != 0) & ~[a2 hasError];
LABEL_150:
        v91 = 160;
LABEL_166:
        *(a1 + v91) = v22;
        continue;
      case 0x13u:
        v69 = 0;
        v70 = 0;
        v71 = 0;
        *(a1 + 164) |= 0x10u;
        while (1)
        {
          LOBYTE(v103) = 0;
          v72 = [a2 position] + 1;
          if (v72 >= [a2 position] && (v73 = objc_msgSend(a2, "position") + 1, v73 <= objc_msgSend(a2, "length")))
          {
            v74 = [a2 data];
            [v74 getBytes:&v103 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v71 |= (v103 & 0x7F) << v69;
          if ((v103 & 0x80) == 0)
          {
            break;
          }

          v69 += 7;
          v12 = v70++ >= 9;
          if (v12)
          {
            v37 = 0;
            goto LABEL_163;
          }
        }

        if ([a2 hasError])
        {
          v37 = 0;
        }

        else
        {
          v37 = v71;
        }

LABEL_163:
        v92 = 40;
        goto LABEL_171;
      case 0x14u:
        *(a1 + 164) |= 0x100u;
        LODWORD(v103) = 0;
        v82 = [a2 position] + 4;
        if (v82 >= [a2 position] && (v83 = objc_msgSend(a2, "position") + 4, v83 <= objc_msgSend(a2, "length")))
        {
          v102 = [a2 data];
          [v102 getBytes:&v103 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        v95 = v103;
        v96 = 116;
LABEL_183:
        *(a1 + v96) = v95;
        continue;
      case 0x15u:
        v14 = PBReaderReadString();
        v15 = 104;
        goto LABEL_122;
      case 0x16u:
        v14 = PBReaderReadData();
        v15 = 96;
        goto LABEL_122;
      case 0x17u:
        v14 = PBReaderReadString();
        v15 = 88;
        goto LABEL_122;
      case 0x18u:
        v84 = 0;
        v85 = 0;
        v86 = 0;
        *(a1 + 164) |= 8u;
        break;
      case 0x19u:
        v14 = PBReaderReadData();
        v15 = 152;
LABEL_122:
        v81 = *(a1 + v15);
        *(a1 + v15) = v14;

        continue;
      default:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        continue;
    }

    while (1)
    {
      LOBYTE(v103) = 0;
      v87 = [a2 position] + 1;
      if (v87 >= [a2 position] && (v88 = objc_msgSend(a2, "position") + 1, v88 <= objc_msgSend(a2, "length")))
      {
        v89 = [a2 data];
        [v89 getBytes:&v103 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v86 |= (v103 & 0x7F) << v84;
      if ((v103 & 0x80) == 0)
      {
        break;
      }

      v84 += 7;
      v12 = v85++ >= 9;
      if (v12)
      {
        v37 = 0;
        goto LABEL_170;
      }
    }

    if ([a2 hasError])
    {
      v37 = 0;
    }

    else
    {
      v37 = v86;
    }

LABEL_170:
    v92 = 32;
LABEL_171:
    *(a1 + v92) = v37;
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_1000219B4(uint64_t a1, void *a2)
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
        LOBYTE(v23[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v23[0] & 0x7F) << v5;
        if ((v23[0] & 0x80) == 0)
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

      if ((v12 >> 3) == 2)
      {
        v20 = objc_alloc_init(_NMRContentItem);
        [a1 addContentItem:v20];
        v23[0] = 0;
        v23[1] = 0;
        if (!PBReaderPlaceMark() || !sub_100001E18(v20, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 20) |= 1u;
        while (1)
        {
          LOBYTE(v23[0]) = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v23[0] & 0x7F) << v13;
          if ((v23[0] & 0x80) == 0)
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

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v15;
        }

LABEL_36:
        *(a1 + 16) = v19;
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_100022788(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 32))
  {
    v4 = [[NMRPlaybackQueueResponse alloc] initWithPlaybackQueue:a2 error:a3];
    (*(*(a1 + 32) + 16))();
  }
}

uint64_t sub_100024C10(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (2)
    {
      if (([a2 hasError] & 1) == 0)
      {
        v5 = 0;
        v6 = 0;
        v7 = 0;
        while (1)
        {
          LOBYTE(v103) = 0;
          v8 = [a2 position] + 1;
          if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
          {
            v10 = [a2 data];
            [v10 getBytes:&v103 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v7 |= (v103 & 0x7F) << v5;
          if ((v103 & 0x80) == 0)
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
        if (([a2 hasError] & 1) == 0)
        {
          v13 = v12 & 7;
          if (v13 != 4)
          {
            switch((v12 >> 3))
            {
              case 1u:
                v14 = 0;
                v15 = 0;
                v16 = 0;
                *(a1 + 132) |= 1u;
                while (1)
                {
                  LOBYTE(v103) = 0;
                  v17 = [a2 position] + 1;
                  if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
                  {
                    v19 = [a2 data];
                    [v19 getBytes:&v103 range:{objc_msgSend(a2, "position"), 1}];

                    [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                  }

                  else
                  {
                    [a2 _setError];
                  }

                  v16 |= (v103 & 0x7F) << v14;
                  if ((v103 & 0x80) == 0)
                  {
                    break;
                  }

                  v14 += 7;
                  v11 = v15++ >= 9;
                  if (v11)
                  {
                    v20 = 0;
LABEL_142:
                    v83 = 80;
                    goto LABEL_154;
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

                goto LABEL_142;
              case 2u:
                v60 = 0;
                v61 = 0;
                v62 = 0;
                *(a1 + 132) |= 0x200u;
                while (1)
                {
                  LOBYTE(v103) = 0;
                  v63 = [a2 position] + 1;
                  if (v63 >= [a2 position] && (v64 = objc_msgSend(a2, "position") + 1, v64 <= objc_msgSend(a2, "length")))
                  {
                    v65 = [a2 data];
                    [v65 getBytes:&v103 range:{objc_msgSend(a2, "position"), 1}];

                    [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                  }

                  else
                  {
                    [a2 _setError];
                  }

                  v62 |= (v103 & 0x7F) << v60;
                  if ((v103 & 0x80) == 0)
                  {
                    break;
                  }

                  v60 += 7;
                  v11 = v61++ >= 9;
                  if (v11)
                  {
                    LOBYTE(v51) = 0;
                    goto LABEL_144;
                  }
                }

                v51 = (v62 != 0) & ~[a2 hasError];
LABEL_144:
                v84 = 129;
                goto LABEL_145;
              case 3u:
                v45 = 0;
                v46 = 0;
                v47 = 0;
                *(a1 + 132) |= 0x100u;
                while (1)
                {
                  LOBYTE(v103) = 0;
                  v48 = [a2 position] + 1;
                  if (v48 >= [a2 position] && (v49 = objc_msgSend(a2, "position") + 1, v49 <= objc_msgSend(a2, "length")))
                  {
                    v50 = [a2 data];
                    [v50 getBytes:&v103 range:{objc_msgSend(a2, "position"), 1}];

                    [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                  }

                  else
                  {
                    [a2 _setError];
                  }

                  v47 |= (v103 & 0x7F) << v45;
                  if ((v103 & 0x80) == 0)
                  {
                    break;
                  }

                  v45 += 7;
                  v11 = v46++ >= 9;
                  if (v11)
                  {
                    LOBYTE(v51) = 0;
                    goto LABEL_138;
                  }
                }

                v51 = (v47 != 0) & ~[a2 hasError];
LABEL_138:
                v84 = 128;
LABEL_145:
                *(a1 + v84) = v51;
                goto LABEL_179;
              case 4u:
                if (v13 != 2)
                {
                  v103 = 0;
                  v91 = [a2 position] + 8;
                  if (v91 >= [a2 position] && (v92 = objc_msgSend(a2, "position") + 8, v92 <= objc_msgSend(a2, "length")))
                  {
                    v101 = [a2 data];
                    [v101 getBytes:&v103 range:{objc_msgSend(a2, "position"), 8}];

                    [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
                  }

                  else
                  {
                    [a2 _setError];
                  }

                  PBRepeatedDoubleAdd();
                  goto LABEL_179;
                }

                v103 = 0;
                v104 = 0;
                result = PBReaderPlaceMark();
                if (!result)
                {
                  return result;
                }

                while (1)
                {
                  v52 = [a2 position];
                  if (v52 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
                  {
                    break;
                  }

                  v105 = 0;
                  v53 = [a2 position] + 8;
                  if (v53 >= [a2 position] && (v54 = objc_msgSend(a2, "position") + 8, v54 <= objc_msgSend(a2, "length")))
                  {
                    v55 = [a2 data];
                    [v55 getBytes:&v105 range:{objc_msgSend(a2, "position"), 8}];

                    [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
                  }

                  else
                  {
                    [a2 _setError];
                  }

                  PBRepeatedDoubleAdd();
                }

                goto LABEL_93;
              case 5u:
                v35 = PBReaderReadString();
                v36 = 96;
                goto LABEL_128;
              case 6u:
                *(a1 + 132) |= 8u;
                LODWORD(v103) = 0;
                v66 = [a2 position] + 4;
                if (v66 >= [a2 position] && (v67 = objc_msgSend(a2, "position") + 4, v67 <= objc_msgSend(a2, "length")))
                {
                  v98 = [a2 data];
                  [v98 getBytes:&v103 range:{objc_msgSend(a2, "position"), 4}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
                }

                else
                {
                  [a2 _setError];
                }

                v96 = v103;
                v97 = 108;
                goto LABEL_178;
              case 7u:
                *(a1 + 132) |= 4u;
                LODWORD(v103) = 0;
                v74 = [a2 position] + 4;
                if (v74 >= [a2 position] && (v75 = objc_msgSend(a2, "position") + 4, v75 <= objc_msgSend(a2, "length")))
                {
                  v99 = [a2 data];
                  [v99 getBytes:&v103 range:{objc_msgSend(a2, "position"), 4}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
                }

                else
                {
                  [a2 _setError];
                }

                v96 = v103;
                v97 = 104;
                goto LABEL_178;
              case 8u:
                if (v13 == 2)
                {
                  v103 = 0;
                  v104 = 0;
                  result = PBReaderPlaceMark();
                  if (!result)
                  {
                    return result;
                  }

                  while (1)
                  {
                    v56 = [a2 position];
                    if (v56 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
                    {
                      break;
                    }

                    LODWORD(v105) = 0;
                    v57 = [a2 position] + 4;
                    if (v57 >= [a2 position] && (v58 = objc_msgSend(a2, "position") + 4, v58 <= objc_msgSend(a2, "length")))
                    {
                      v59 = [a2 data];
                      [v59 getBytes:&v105 range:{objc_msgSend(a2, "position"), 4}];

                      [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
                    }

                    else
                    {
                      [a2 _setError];
                    }

                    PBRepeatedFloatAdd();
                  }

LABEL_93:
                  PBReaderRecallMark();
                }

                else
                {
                  LODWORD(v103) = 0;
                  v93 = [a2 position] + 4;
                  if (v93 >= [a2 position] && (v94 = objc_msgSend(a2, "position") + 4, v94 <= objc_msgSend(a2, "length")))
                  {
                    v102 = [a2 data];
                    [v102 getBytes:&v103 range:{objc_msgSend(a2, "position"), 4}];

                    [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
                  }

                  else
                  {
                    [a2 _setError];
                  }

                  PBRepeatedFloatAdd();
                }

LABEL_179:
                v100 = [a2 position];
                if (v100 >= [a2 length])
                {
                  return [a2 hasError] ^ 1;
                }

                continue;
              case 9u:
                v35 = PBReaderReadString();
                v36 = 88;
LABEL_128:
                v82 = *(a1 + v36);
                *(a1 + v36) = v35;

                goto LABEL_179;
              case 0xAu:
                v39 = 0;
                v40 = 0;
                v41 = 0;
                *(a1 + 132) |= 0x40u;
                while (1)
                {
                  LOBYTE(v103) = 0;
                  v42 = [a2 position] + 1;
                  if (v42 >= [a2 position] && (v43 = objc_msgSend(a2, "position") + 1, v43 <= objc_msgSend(a2, "length")))
                  {
                    v44 = [a2 data];
                    [v44 getBytes:&v103 range:{objc_msgSend(a2, "position"), 1}];

                    [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                  }

                  else
                  {
                    [a2 _setError];
                  }

                  v41 |= (v103 & 0x7F) << v39;
                  if ((v103 & 0x80) == 0)
                  {
                    break;
                  }

                  v39 += 7;
                  v11 = v40++ >= 9;
                  if (v11)
                  {
                    v20 = 0;
                    goto LABEL_136;
                  }
                }

                if ([a2 hasError])
                {
                  v20 = 0;
                }

                else
                {
                  v20 = v41;
                }

LABEL_136:
                v83 = 120;
                goto LABEL_154;
              case 0xBu:
                v76 = 0;
                v77 = 0;
                v78 = 0;
                *(a1 + 132) |= 0x80u;
                while (1)
                {
                  LOBYTE(v103) = 0;
                  v79 = [a2 position] + 1;
                  if (v79 >= [a2 position] && (v80 = objc_msgSend(a2, "position") + 1, v80 <= objc_msgSend(a2, "length")))
                  {
                    v81 = [a2 data];
                    [v81 getBytes:&v103 range:{objc_msgSend(a2, "position"), 1}];

                    [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                  }

                  else
                  {
                    [a2 _setError];
                  }

                  v78 |= (v103 & 0x7F) << v76;
                  if ((v103 & 0x80) == 0)
                  {
                    break;
                  }

                  v76 += 7;
                  v11 = v77++ >= 9;
                  if (v11)
                  {
                    v20 = 0;
                    goto LABEL_153;
                  }
                }

                if ([a2 hasError])
                {
                  v20 = 0;
                }

                else
                {
                  v20 = v78;
                }

LABEL_153:
                v83 = 124;
                goto LABEL_154;
              case 0xCu:
                v29 = 0;
                v30 = 0;
                v31 = 0;
                *(a1 + 132) |= 0x20u;
                while (1)
                {
                  LOBYTE(v103) = 0;
                  v32 = [a2 position] + 1;
                  if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
                  {
                    v34 = [a2 data];
                    [v34 getBytes:&v103 range:{objc_msgSend(a2, "position"), 1}];

                    [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                  }

                  else
                  {
                    [a2 _setError];
                  }

                  v31 |= (v103 & 0x7F) << v29;
                  if ((v103 & 0x80) == 0)
                  {
                    break;
                  }

                  v29 += 7;
                  v11 = v30++ >= 9;
                  if (v11)
                  {
                    v20 = 0;
                    goto LABEL_132;
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

LABEL_132:
                v83 = 116;
                goto LABEL_154;
              case 0xDu:
                *(a1 + 132) |= 0x10u;
                LODWORD(v103) = 0;
                v37 = [a2 position] + 4;
                if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 4, v38 <= objc_msgSend(a2, "length")))
                {
                  v95 = [a2 data];
                  [v95 getBytes:&v103 range:{objc_msgSend(a2, "position"), 4}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
                }

                else
                {
                  [a2 _setError];
                }

                v96 = v103;
                v97 = 112;
LABEL_178:
                *(a1 + v97) = v96;
                goto LABEL_179;
              case 0xEu:
                v68 = 0;
                v69 = 0;
                v70 = 0;
                *(a1 + 132) |= 2u;
                while (1)
                {
                  LOBYTE(v103) = 0;
                  v71 = [a2 position] + 1;
                  if (v71 >= [a2 position] && (v72 = objc_msgSend(a2, "position") + 1, v72 <= objc_msgSend(a2, "length")))
                  {
                    v73 = [a2 data];
                    [v73 getBytes:&v103 range:{objc_msgSend(a2, "position"), 1}];

                    [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                  }

                  else
                  {
                    [a2 _setError];
                  }

                  v70 |= (v103 & 0x7F) << v68;
                  if ((v103 & 0x80) == 0)
                  {
                    break;
                  }

                  v68 += 7;
                  v11 = v69++ >= 9;
                  if (v11)
                  {
                    v20 = 0;
                    goto LABEL_149;
                  }
                }

                if ([a2 hasError])
                {
                  v20 = 0;
                }

                else
                {
                  v20 = v70;
                }

LABEL_149:
                v83 = 84;
LABEL_154:
                *(a1 + v83) = v20;
                goto LABEL_179;
              case 0xFu:
                if (v13 != 2)
                {
                  v85 = 0;
                  v86 = 0;
                  v87 = 0;
                  while (1)
                  {
                    LOBYTE(v103) = 0;
                    v88 = [a2 position] + 1;
                    if (v88 >= [a2 position] && (v89 = objc_msgSend(a2, "position") + 1, v89 <= objc_msgSend(a2, "length")))
                    {
                      v90 = [a2 data];
                      [v90 getBytes:&v103 range:{objc_msgSend(a2, "position"), 1}];

                      [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                    }

                    else
                    {
                      [a2 _setError];
                    }

                    v87 |= (v103 & 0x7F) << v85;
                    if ((v103 & 0x80) == 0)
                    {
                      break;
                    }

                    v85 += 7;
                    v11 = v86++ >= 9;
                    if (v11)
                    {
                      goto LABEL_171;
                    }
                  }

                  [a2 hasError];
LABEL_171:
                  PBRepeatedInt32Add();
                  goto LABEL_179;
                }

                v103 = 0;
                v104 = 0;
                result = PBReaderPlaceMark();
                if (!result)
                {
                  return result;
                }

                while (1)
                {
                  v22 = [a2 position];
                  if (v22 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
                  {
                    goto LABEL_93;
                  }

                  v23 = 0;
                  v24 = 0;
                  v25 = 0;
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
                      goto LABEL_41;
                    }
                  }

                  [a2 hasError];
LABEL_41:
                  PBRepeatedInt32Add();
                }

              default:
                if (PBReaderSkipValueWithTag())
                {
                  goto LABEL_179;
                }

                return 0;
            }
          }
        }
      }

      break;
    }
  }

  return [a2 hasError] ^ 1;
}

id sub_100026FD4(uint64_t a1)
{
  v2 = (a1 + 40);
  v3 = *(a1 + 32);
  NSSelectorFromString(*(a1 + 40));
  if (objc_opt_respondsToSelector())
  {
    v4 = [*(a1 + 32) valueForKey:*(a1 + 40)];
  }

  else
  {
    v5 = sub_10002C180(2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100031380(v2, v5);
    }

    v4 = 0;
  }

  return v4;
}

void sub_100027268(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) nmr_valueForPotentiallyUndefinedKey:v10];
  if (v6)
  {
    v7 = v6;
    v8 = *(*(a1 + 40) + 40);
    if (!v8 || ((*(v8 + 16))(v8, *(a1 + 32), v10, v7), v9 = objc_claimAutoreleasedReturnValue(), v7, (v7 = v9) != 0))
    {
      [*(a1 + 48) setObject:v7 forKey:v5];
    }
  }
}

void sub_100027468(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(*(a1 + 32) + 16) objectForKeyedSubscript:v5];
  v8 = v6;
  v9 = v8;
  if (v7)
  {
    v10 = *(*(a1 + 32) + 32);
    v11 = v8;
    if (v10)
    {
      v11 = (*(v10 + 16))(v10, *(a1 + 40), v5, v8);
    }

    v12 = *(a1 + 48);
    v14 = v11;
    v13 = [v12 validateValue:&v14 forKey:v7 error:0];
    v9 = v14;

    if (v13)
    {
      [*(a1 + 48) setValue:v9 forKey:v7];
    }
  }
}

uint64_t sub_100028734(uint64_t a1, void *a2)
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
        LOBYTE(v110) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v110 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v110 & 0x7F) << v5;
        if ((v110 & 0x80) == 0)
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
        case 2u:
          v13 = PBReaderReadString();
          v14 = 112;
          goto LABEL_137;
        case 3u:
          v13 = PBReaderReadString();
          v14 = 56;
          goto LABEL_137;
        case 4u:
          v38 = 0;
          v39 = 0;
          v40 = 0;
          *(a1 + 144) |= 0x800u;
          while (1)
          {
            LOBYTE(v110) = 0;
            v41 = [a2 position] + 1;
            if (v41 >= [a2 position] && (v42 = objc_msgSend(a2, "position") + 1, v42 <= objc_msgSend(a2, "length")))
            {
              v43 = [a2 data];
              [v43 getBytes:&v110 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v40 |= (v110 & 0x7F) << v38;
            if ((v110 & 0x80) == 0)
            {
              break;
            }

            v38 += 7;
            v11 = v39++ >= 9;
            if (v11)
            {
              LOBYTE(v21) = 0;
              goto LABEL_160;
            }
          }

          v21 = (v40 != 0) & ~[a2 hasError];
LABEL_160:
          v100 = 136;
          goto LABEL_175;
        case 5u:
          *(a1 + 144) |= 0x400u;
          LODWORD(v110) = 0;
          v50 = [a2 position] + 4;
          if (v50 >= [a2 position] && (v51 = objc_msgSend(a2, "position") + 4, v51 <= objc_msgSend(a2, "length")))
          {
            v106 = [a2 data];
            [v106 getBytes:&v110 range:{objc_msgSend(a2, "position"), 4}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          v104 = v110;
          v105 = 104;
          goto LABEL_198;
        case 6u:
          *(a1 + 144) |= 0x10u;
          LODWORD(v110) = 0;
          v29 = [a2 position] + 4;
          if (v29 >= [a2 position] && (v30 = objc_msgSend(a2, "position") + 4, v30 <= objc_msgSend(a2, "length")))
          {
            v103 = [a2 data];
            [v103 getBytes:&v110 range:{objc_msgSend(a2, "position"), 4}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          v104 = v110;
          v105 = 68;
          goto LABEL_198;
        case 7u:
          *(a1 + 144) |= 0x40u;
          LODWORD(v110) = 0;
          v60 = [a2 position] + 4;
          if (v60 >= [a2 position] && (v61 = objc_msgSend(a2, "position") + 4, v61 <= objc_msgSend(a2, "length")))
          {
            v108 = [a2 data];
            [v108 getBytes:&v110 range:{objc_msgSend(a2, "position"), 4}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          v104 = v110;
          v105 = 88;
LABEL_198:
          *(a1 + v105) = v104;
          goto LABEL_199;
        case 8u:
          v68 = 0;
          v69 = 0;
          v70 = 0;
          *(a1 + 144) |= 0x1000u;
          while (1)
          {
            LOBYTE(v110) = 0;
            v71 = [a2 position] + 1;
            if (v71 >= [a2 position] && (v72 = objc_msgSend(a2, "position") + 1, v72 <= objc_msgSend(a2, "length")))
            {
              v73 = [a2 data];
              [v73 getBytes:&v110 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v70 |= (v110 & 0x7F) << v68;
            if ((v110 & 0x80) == 0)
            {
              break;
            }

            v68 += 7;
            v11 = v69++ >= 9;
            if (v11)
            {
              LOBYTE(v21) = 0;
              goto LABEL_172;
            }
          }

          v21 = (v70 != 0) & ~[a2 hasError];
LABEL_172:
          v100 = 137;
          goto LABEL_175;
        case 9u:
          *(a1 + 144) |= 1u;
          v110 = 0;
          v52 = [a2 position] + 8;
          if (v52 >= [a2 position] && (v53 = objc_msgSend(a2, "position") + 8, v53 <= objc_msgSend(a2, "length")))
          {
            v107 = [a2 data];
            [v107 getBytes:&v110 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          *(a1 + 8) = v110;
          goto LABEL_199;
        case 0xAu:
          v86 = 0;
          v87 = 0;
          v88 = 0;
          *(a1 + 144) |= 0x80u;
          while (1)
          {
            LOBYTE(v110) = 0;
            v89 = [a2 position] + 1;
            if (v89 >= [a2 position] && (v90 = objc_msgSend(a2, "position") + 1, v90 <= objc_msgSend(a2, "length")))
            {
              v91 = [a2 data];
              [v91 getBytes:&v110 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v88 |= (v110 & 0x7F) << v86;
            if ((v110 & 0x80) == 0)
            {
              break;
            }

            v86 += 7;
            v11 = v87++ >= 9;
            if (v11)
            {
              v37 = 0;
              goto LABEL_184;
            }
          }

          if ([a2 hasError])
          {
            v37 = 0;
          }

          else
          {
            v37 = v88;
          }

LABEL_184:
          v102 = 92;
          goto LABEL_189;
        case 0xBu:
          v31 = 0;
          v32 = 0;
          v33 = 0;
          *(a1 + 144) |= 0x200u;
          while (1)
          {
            LOBYTE(v110) = 0;
            v34 = [a2 position] + 1;
            if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
            {
              v36 = [a2 data];
              [v36 getBytes:&v110 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v33 |= (v110 & 0x7F) << v31;
            if ((v110 & 0x80) == 0)
            {
              break;
            }

            v31 += 7;
            v11 = v32++ >= 9;
            if (v11)
            {
              v37 = 0;
              goto LABEL_158;
            }
          }

          if ([a2 hasError])
          {
            v37 = 0;
          }

          else
          {
            v37 = v33;
          }

LABEL_158:
          v102 = 100;
          goto LABEL_189;
        case 0xCu:
          v80 = 0;
          v81 = 0;
          v82 = 0;
          *(a1 + 144) |= 4u;
          while (1)
          {
            LOBYTE(v110) = 0;
            v83 = [a2 position] + 1;
            if (v83 >= [a2 position] && (v84 = objc_msgSend(a2, "position") + 1, v84 <= objc_msgSend(a2, "length")))
            {
              v85 = [a2 data];
              [v85 getBytes:&v110 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v82 |= (v110 & 0x7F) << v80;
            if ((v110 & 0x80) == 0)
            {
              break;
            }

            v80 += 7;
            v11 = v81++ >= 9;
            if (v11)
            {
              v28 = 0;
              goto LABEL_179;
            }
          }

          if ([a2 hasError])
          {
            v28 = 0;
          }

          else
          {
            v28 = v82;
          }

LABEL_179:
          v101 = 24;
          goto LABEL_180;
        case 0xDu:
          v22 = 0;
          v23 = 0;
          v24 = 0;
          *(a1 + 144) |= 2u;
          while (1)
          {
            LOBYTE(v110) = 0;
            v25 = [a2 position] + 1;
            if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
            {
              v27 = [a2 data];
              [v27 getBytes:&v110 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v24 |= (v110 & 0x7F) << v22;
            if ((v110 & 0x80) == 0)
            {
              break;
            }

            v22 += 7;
            v11 = v23++ >= 9;
            if (v11)
            {
              v28 = 0;
              goto LABEL_154;
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

LABEL_154:
          v101 = 16;
LABEL_180:
          *(a1 + v101) = v28;
          goto LABEL_199;
        case 0xEu:
          v13 = PBReaderReadString();
          v14 = 80;
          goto LABEL_137;
        case 0xFu:
          v13 = PBReaderReadData();
          v14 = 128;
          goto LABEL_137;
        case 0x10u:
          v13 = PBReaderReadString();
          v14 = 48;
          goto LABEL_137;
        case 0x11u:
          v44 = 0;
          v45 = 0;
          v46 = 0;
          *(a1 + 144) |= 0x100u;
          while (1)
          {
            LOBYTE(v110) = 0;
            v47 = [a2 position] + 1;
            if (v47 >= [a2 position] && (v48 = objc_msgSend(a2, "position") + 1, v48 <= objc_msgSend(a2, "length")))
            {
              v49 = [a2 data];
              [v49 getBytes:&v110 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v46 |= (v110 & 0x7F) << v44;
            if ((v110 & 0x80) == 0)
            {
              break;
            }

            v44 += 7;
            v11 = v45++ >= 9;
            if (v11)
            {
              v37 = 0;
              goto LABEL_164;
            }
          }

          if ([a2 hasError])
          {
            v37 = 0;
          }

          else
          {
            v37 = v46;
          }

LABEL_164:
          v102 = 96;
          goto LABEL_189;
        case 0x12u:
          v15 = 0;
          v16 = 0;
          v17 = 0;
          *(a1 + 144) |= 0x2000u;
          while (1)
          {
            LOBYTE(v110) = 0;
            v18 = [a2 position] + 1;
            if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
            {
              v20 = [a2 data];
              [v20 getBytes:&v110 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v17 |= (v110 & 0x7F) << v15;
            if ((v110 & 0x80) == 0)
            {
              break;
            }

            v15 += 7;
            v11 = v16++ >= 9;
            if (v11)
            {
              LOBYTE(v21) = 0;
              goto LABEL_150;
            }
          }

          v21 = (v17 != 0) & ~[a2 hasError];
LABEL_150:
          v100 = 138;
          goto LABEL_175;
        case 0x13u:
          v13 = PBReaderReadString();
          v14 = 40;
          goto LABEL_137;
        case 0x14u:
          v74 = 0;
          v75 = 0;
          v76 = 0;
          *(a1 + 144) |= 0x8000u;
          while (1)
          {
            LOBYTE(v110) = 0;
            v77 = [a2 position] + 1;
            if (v77 >= [a2 position] && (v78 = objc_msgSend(a2, "position") + 1, v78 <= objc_msgSend(a2, "length")))
            {
              v79 = [a2 data];
              [v79 getBytes:&v110 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v76 |= (v110 & 0x7F) << v74;
            if ((v110 & 0x80) == 0)
            {
              break;
            }

            v74 += 7;
            v11 = v75++ >= 9;
            if (v11)
            {
              LOBYTE(v21) = 0;
              goto LABEL_174;
            }
          }

          v21 = (v76 != 0) & ~[a2 hasError];
LABEL_174:
          v100 = 140;
          goto LABEL_175;
        case 0x15u:
          v13 = PBReaderReadString();
          v14 = 120;
          goto LABEL_137;
        case 0x16u:
          v54 = 0;
          v55 = 0;
          v56 = 0;
          *(a1 + 144) |= 0x4000u;
          while (1)
          {
            LOBYTE(v110) = 0;
            v57 = [a2 position] + 1;
            if (v57 >= [a2 position] && (v58 = objc_msgSend(a2, "position") + 1, v58 <= objc_msgSend(a2, "length")))
            {
              v59 = [a2 data];
              [v59 getBytes:&v110 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v56 |= (v110 & 0x7F) << v54;
            if ((v110 & 0x80) == 0)
            {
              break;
            }

            v54 += 7;
            v11 = v55++ >= 9;
            if (v11)
            {
              LOBYTE(v21) = 0;
              goto LABEL_166;
            }
          }

          v21 = (v56 != 0) & ~[a2 hasError];
LABEL_166:
          v100 = 139;
LABEL_175:
          *(a1 + v100) = v21;
          goto LABEL_199;
        case 0x17u:
          v62 = 0;
          v63 = 0;
          v64 = 0;
          *(a1 + 144) |= 8u;
          while (1)
          {
            LOBYTE(v110) = 0;
            v65 = [a2 position] + 1;
            if (v65 >= [a2 position] && (v66 = objc_msgSend(a2, "position") + 1, v66 <= objc_msgSend(a2, "length")))
            {
              v67 = [a2 data];
              [v67 getBytes:&v110 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v64 |= (v110 & 0x7F) << v62;
            if ((v110 & 0x80) == 0)
            {
              break;
            }

            v62 += 7;
            v11 = v63++ >= 9;
            if (v11)
            {
              v37 = 0;
              goto LABEL_170;
            }
          }

          if ([a2 hasError])
          {
            v37 = 0;
          }

          else
          {
            v37 = v64;
          }

LABEL_170:
          v102 = 64;
          goto LABEL_189;
        case 0x18u:
          v13 = PBReaderReadString();
          v14 = 32;
LABEL_137:
          v92 = *(a1 + v14);
          *(a1 + v14) = v13;

          goto LABEL_199;
        case 0x19u:
          v93 = 0;
          v94 = 0;
          v95 = 0;
          *(a1 + 144) |= 0x20u;
          break;
        default:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_199;
      }

      while (1)
      {
        LOBYTE(v110) = 0;
        v96 = [a2 position] + 1;
        if (v96 >= [a2 position] && (v97 = objc_msgSend(a2, "position") + 1, v97 <= objc_msgSend(a2, "length")))
        {
          v98 = [a2 data];
          [v98 getBytes:&v110 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v95 |= (v110 & 0x7F) << v93;
        if ((v110 & 0x80) == 0)
        {
          break;
        }

        v93 += 7;
        v11 = v94++ >= 9;
        if (v11)
        {
          v37 = 0;
          goto LABEL_188;
        }
      }

      v37 = [a2 hasError] ? 0 : v95;
LABEL_188:
      v102 = 72;
LABEL_189:
      *(a1 + v102) = v37;
LABEL_199:
      v109 = [a2 position];
    }

    while (v109 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id sub_10002BC70(uint64_t a1)
{
  if (a1 < 0x12 && ((0x3C07Fu >> a1) & 1) != 0)
  {
    v2 = *(&off_100049520 + a1);
  }

  else
  {
    v2 = [NSString stringWithFormat:@"NMRIDSMessageType(%hu)", a1];
  }

  return v2;
}

id sub_10002C180(uint64_t a1)
{
  if (qword_100054238 != -1)
  {
    sub_100031484();
  }

  v2 = qword_1000541C0[a1];

  return v2;
}

void sub_10002C1D4(id a1)
{
  v1 = os_log_create("com.apple.nanomusic", "NanoMusicCore");
  v2 = qword_1000541C0[0];
  qword_1000541C0[0] = v1;

  v3 = os_log_create("com.apple.nanomusic", "NanoMusicCore-Oversize");
  v4 = qword_1000541C8;
  qword_1000541C8 = v3;

  v5 = os_log_create("com.apple.nanomusic", "NanoMediaRemote");
  v6 = qword_1000541D0;
  qword_1000541D0 = v5;

  v7 = os_log_create("com.apple.nanomusic", "NanoMediaRemote-Oversize");
  v8 = qword_1000541D8;
  qword_1000541D8 = v7;

  v9 = os_log_create("com.apple.nanomusic", "NanoAudioControl");
  v10 = qword_1000541E0;
  qword_1000541E0 = v9;

  v11 = os_log_create("com.apple.nanomusic", "NanoMusicSync");
  v12 = qword_1000541E8;
  qword_1000541E8 = v11;

  v13 = os_log_create("com.apple.nanomusic", "NanoMusicSync-Oversize");
  v14 = qword_1000541F0;
  qword_1000541F0 = v13;

  v15 = os_log_create("com.apple.nanomusic", "NanoMediaUI");
  v16 = qword_1000541F8;
  qword_1000541F8 = v15;

  v17 = os_log_create("com.apple.nanomusic", "NanoMediaUI-Oversize");
  v18 = qword_100054200;
  qword_100054200 = v17;

  v19 = os_log_create("com.apple.nanomusic", "NanoMediaAPI");
  v20 = qword_100054208;
  qword_100054208 = v19;

  v21 = os_log_create("com.apple.nanomusic", "NanoMediaAPI-Oversize");
  v22 = qword_100054210;
  qword_100054210 = v21;

  v23 = os_log_create("com.apple.nanomusic", "NanoMediaTool");
  v24 = qword_100054218;
  qword_100054218 = v23;

  v25 = os_log_create("com.apple.nanomusic", "NanoMediaBridgeUI");
  v26 = qword_100054228;
  qword_100054228 = v25;

  v27 = os_log_create("com.apple.nanomusic", "NanoMediaBridgeUI-Oversize");
  v28 = qword_100054230;
  qword_100054230 = v27;

  qword_100054220 = os_log_create("com.apple.nanomusic", "NanoMediaAppActivity");

  _objc_release_x1();
}

uint64_t sub_10002C69C(void *a1, void *a2)
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
        v13 = objc_alloc_init(_NMRCommandInfoProtobuf);
        [a1 addSupportedCommand:v13];
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !sub_100024C10(v13, a2))
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

void sub_10002CD8C(id a1)
{
  qword_100054240 = objc_opt_new();

  _objc_release_x1();
}

void sub_10002D324(void *a1)
{
  v2 = a1[4];
  if (v2 == *(a1[5] + 56) && [v2 discoveryMode])
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v3 = [*(a1[5] + 56) availableRoutes];
    v4 = [v3 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v21;
      do
      {
        v7 = 0;
        do
        {
          if (*v21 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v20 + 1) + 8 * v7);
          v9 = [v8 connection];
          if (v9)
          {
            v10 = *(a1[5] + 64);
            v11 = [v8 routeUID];
            if (([v10 containsObject:v11] & 1) != 0 || objc_msgSend(v9, "isConnected"))
            {
            }

            else
            {
              v12 = [v9 isInvalidated];

              if ((v12 & 1) == 0)
              {
                v13 = *(a1[5] + 64);
                v14 = [v8 routeUID];
                [v13 addObject:v14];

                v17[0] = _NSConcreteStackBlock;
                v17[1] = 3221225472;
                v17[2] = sub_10002D54C;
                v17[3] = &unk_100049620;
                v15 = a1[6];
                v17[4] = a1[5];
                v18 = v15;
                v19 = v8;
                [v9 connectWithCompletion:v17];
              }
            }
          }

          v7 = v7 + 1;
        }

        while (v5 != v7);
        v16 = [v3 countByEnumeratingWithState:&v20 objects:v24 count:16];
        v5 = v16;
      }

      while (v16);
    }
  }
}

void sub_10002D54C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10002D610;
  v8[3] = &unk_1000495F8;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v9 = v5;
  v10 = v6;
  v11 = *(a1 + 48);
  v12 = v3;
  v7 = v3;
  dispatch_async(v4, v8);
}

void sub_10002D610(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 64);
  v4 = (a1 + 48);
  v5 = [*(a1 + 48) routeUID];
  [v3 removeObject:v5];

  v7 = *(a1 + 56);
  v6 = (a1 + 56);
  v8 = sub_10002C180(2);
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1000314AC(v4, v6, v9);
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *v4;
    v11 = 138412290;
    v12 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[LinkAgent] Connected to endpoint %@ successfully!", &v11, 0xCu);
  }
}

void sub_10002D8B0(uint64_t a1)
{
  v2 = [NMRMediaRemoteGetStateMessage alloc];
  v3 = [*(a1 + 32) data];
  v4 = [(NMRMediaRemoteGetStateMessage *)v2 initWithProtobufData:v3];

  v5 = [(NMRMediaRemoteGetStateMessage *)v4 originIdentifier];
  v6 = v5;
  v7 = &off_10004B370;
  if (v5)
  {
    v7 = v5;
  }

  v8 = v7;

  v9 = [*(*(a1 + 40) + 48) objectForKeyedSubscript:v8];

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10002D9D0;
  v12[3] = &unk_100049670;
  v10 = *(a1 + 48);
  v11 = *(a1 + 40);
  v13 = v10;
  v14 = v11;
  [v9 handleMediaRemoteGetStateRequest:v4 completion:v12];
}

void sub_10002D9D0(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v10 = v4;
    v5 = a2;
    v6 = [v5 originIdentifier];
    v7 = [NSString stringWithFormat:@"%@-%@", @"MediaRemoteSetState", v6];

    v8 = *(*(a1 + 40) + 16);
    v9 = [v5 protobufData];

    [v8 sendMessageWithProtobufData:v9 messageType:4 priority:1 timeout:0 bypassDuet:0 skipStorage:0 expectReply:IDSMaxMessageTimeout queueOneIdentifier:v7 resultingMessageIdentifier:0 error:0];
    kdebug_trace();
    kdebug_trace();
    kdebug_trace();

    v4 = v10;
  }
}

void sub_10002DC68(uint64_t a1)
{
  v2 = [NMRMediaRemoteGetArtworkMessage alloc];
  v3 = [*(a1 + 32) data];
  v4 = [(NMRMediaRemoteGetArtworkMessage *)v2 initWithProtobufData:v3];

  v5 = [(NMRMediaRemoteGetArtworkMessage *)v4 originIdentifier];
  v6 = v5;
  v7 = &off_10004B370;
  if (v5)
  {
    v7 = v5;
  }

  v8 = v7;

  v9 = [*(*(a1 + 40) + 48) objectForKeyedSubscript:v8];

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10002DD88;
  v12[3] = &unk_100049698;
  v10 = *(a1 + 48);
  v11 = *(a1 + 40);
  v13 = v10;
  v14 = v11;
  [v9 handleMediaRemoteGetArtworkRequest:v4 completion:v12];
}

void sub_10002DD88(uint64_t a1, void *a2)
{
  v9 = *(a1 + 32);
  v4 = a2;
  v5 = [v4 originIdentifier];
  v6 = [NSString stringWithFormat:@"%@-%@", @"MediaRemoteSetArtwork", v5];

  v7 = *(*(a1 + 40) + 16);
  v8 = [v4 protobufData];

  [v7 sendMessageWithProtobufData:v8 messageType:6 priority:2 timeout:0 bypassDuet:0 skipStorage:0 expectReply:IDSMaxMessageTimeout queueOneIdentifier:v6 resultingMessageIdentifier:0 error:0];
  kdebug_trace();
}

void sub_10002DFDC(uint64_t a1)
{
  v2 = [NMRSendCommandMessage alloc];
  v3 = [*(a1 + 32) data];
  v4 = [(NMRSendCommandMessage *)v2 initWithProtobufData:v3];

  v5 = [(NMRSendCommandMessage *)v4 originIdentifier];
  v6 = v5;
  v7 = &off_10004B370;
  if (v5)
  {
    v7 = v5;
  }

  v8 = v7;

  v9 = [*(*(a1 + 40) + 48) objectForKeyedSubscript:v8];

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10002E11C;
  v12[3] = &unk_1000496C0;
  v13 = *(a1 + 48);
  v11 = *(a1 + 32);
  v10 = v11.i64[0];
  v14 = vextq_s8(v11, v11, 8uLL);
  [v9 handleMediaRemoteSendCommandRequest:v4 completion:v12];
}

void sub_10002E11C(uint64_t a1, void *a2)
{
  v4 = *(*(a1 + 40) + 16);
  v6 = *(a1 + 32);
  v5 = [a2 protobufData];
  [v4 sendMessageWithProtobufData:v5 messageType:3 priority:1 timeout:1 bypassDuet:1 skipStorage:*(a1 + 48) inReplyTo:6.5 resultingMessageIdentifier:0 error:0];

  kdebug_trace();
}

void sub_10002E2DC(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  [v1 _prewarmSystemMusicApp];
}

void sub_10002E430(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  [v1 _sendProxiedOriginsToClient];
}

void sub_10002E584(uint64_t a1)
{
  v2 = sub_10002C180(2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[LinkAgent] Begin endpoint discovery! Endpoints will be connected automatically.", buf, 2u);
  }

  ++*(*(a1 + 32) + 72);
  v3 = *(a1 + 32);
  if (*(v3 + 72) == 1)
  {
    [*(v3 + 56) setDiscoveryMode:3];
  }

  v4 = dispatch_time(0, 8000000000);
  v5 = *(*(a1 + 32) + 8);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10002E6B4;
  v8[3] = &unk_100048C80;
  v6 = *(a1 + 40);
  v7 = *(a1 + 32);
  v9 = v6;
  v10 = v7;
  dispatch_after(v4, v5, v8);
}

void sub_10002E6B4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = sub_10002C180(2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[LinkAgent] End endpoint discovery! Stop auto connecting to endpoints.", v5, 2u);
  }

  --*(*(a1 + 40) + 72);
  v4 = *(a1 + 40);
  if (!*(v4 + 72))
  {
    [*(v4 + 56) setDiscoveryMode:0];
  }
}

void sub_10002E8AC(uint64_t a1)
{
  v2 = [NMRPlaybackQueueRequest alloc];
  v3 = [*(a1 + 32) data];
  v4 = [(NMRPlaybackQueueRequest *)v2 initWithProtobufData:v3];

  v5 = sub_10002C180(2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v26 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[LinkAgent] Received playback queue request: %@", buf, 0xCu);
  }

  [(NMRPlaybackQueueRequest *)v4 playerPath];
  MRNowPlayingPlayerPathGetOrigin();
  v6 = [NSNumber numberWithInt:MROriginGetUniqueIdentifier()];
  v7 = [*(*(a1 + 40) + 48) objectForKeyedSubscript:v6];
  v8 = [v7 origin];
  v9 = [v8 uniqueIdentifier];
  v10 = [v6 isEqual:v9];

  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v12 = [(NMRPlaybackQueueRequest *)v4 playerPath];
    MRNowPlayingPlayerPathGetOrigin();
    v11 = MROriginCopy();
    v13 = [*(*(a1 + 40) + 48) objectForKeyedSubscript:v6];
    v14 = [v13 origin];
    [v14 mediaRemoteOrigin];
    MRNowPlayingPlayerPathSetOrigin();

    v15 = [[NMRPlaybackQueueRequest alloc] initWithRequest:[(NMRPlaybackQueueRequest *)v4 request] playerPath:v12];
    v4 = v15;
  }

  v16 = [*(*(a1 + 40) + 48) objectForKeyedSubscript:v6];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10002EB70;
  v20[3] = &unk_1000496E8;
  v21 = *(a1 + 48);
  v24 = v11;
  v19 = *(a1 + 32);
  v17 = v19.i64[0];
  v22 = vextq_s8(v19, v19, 8uLL);
  v23 = v4;
  v18 = v4;
  [v16 handlePlaybackQueueRequest:v18 completion:v20];
}

void sub_10002EB70(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (*(a1 + 64))
  {
    v5 = [(NMRPlaybackQueueResponse *)v3 playbackQueue];
    MRPlaybackQueueGetResolvedPlayerPath();
    v6 = *(a1 + 64);
    MRNowPlayingPlayerPathSetOrigin();
    v7 = [[NMRPlaybackQueueResponse alloc] initWithPlaybackQueue:v5 error:[(NMRPlaybackQueueResponse *)v3 error]];

    CFRelease(*(a1 + 64));
    v3 = v7;
  }

  v8 = *(*(a1 + 40) + 16);
  v9 = [(NMRPlaybackQueueResponse *)v3 protobufData];
  [v8 sendMessageWithProtobufData:v9 messageType:19 priority:2 timeout:0 bypassDuet:0 skipStorage:*(a1 + 48) inReplyTo:60.0 resultingMessageIdentifier:0 error:0];

  kdebug_trace();
  v10 = sub_10002C180(2);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 56);
    *buf = 138412546;
    v13 = v3;
    v14 = 2112;
    v15 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[LinkAgent] Sent playback queue response: %@ for request: %@", buf, 0x16u);
  }
}

void sub_10002F648(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ([*(a1 + 40) code] == 23)
  {
    v3 = [*(a1 + 48) isEqualToString:*(*(a1 + 56) + 32)];
    v4 = *(a1 + 56);
    if (v3)
    {
      [v4 _sendProxiedOriginsToClient];
    }

    else
    {
      v5 = [v4[5] allValues];
      v6 = [v5 containsObject:*(a1 + 48)];

      if (v6)
      {
        v7 = [*(*(a1 + 56) + 40) allKeysForObject:*(a1 + 48)];
        v8 = [NSSet setWithArray:v7];

        v9 = +[NMROriginManager sharedManager];
        v10 = [v9 availableOrigins];
        v23[0] = _NSConcreteStackBlock;
        v23[1] = 3221225472;
        v23[2] = sub_10002F8B0;
        v23[3] = &unk_100049710;
        v24 = v8;
        v11 = v8;
        v12 = [NSPredicate predicateWithBlock:v23];
        v13 = [v10 filteredArrayUsingPredicate:v12];

        [*(a1 + 56) _sendOriginUpdatesToClient:v13];
      }
    }
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v14 = [*(*(a1 + 56) + 48) allValues];
  v15 = [v14 countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v20;
    do
    {
      v18 = 0;
      do
      {
        if (*v20 != v17)
        {
          objc_enumerationMutation(v14);
        }

        [*(*(&v19 + 1) + 8 * v18) updatePlaybackQueuePendingRecordsWithIdentifier:*(a1 + 48) success:*(a1 + 64)];
        v18 = v18 + 1;
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v16);
  }
}