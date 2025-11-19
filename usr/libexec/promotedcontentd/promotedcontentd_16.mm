uint64_t APPBLocalizedStringEntryReadFrom(uint64_t a1, void *a2)
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
        v13 = &OBJC_IVAR___APPBLocalizedStringEntry__value;
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

    v13 = &OBJC_IVAR___APPBLocalizedStringEntry__languageIdentifier;
    goto LABEL_21;
  }

  return [a2 hasError] ^ 1;
}

void sub_1002E6240(id a1)
{
  v1 = qword_1004E6BF8;
  qword_1004E6BF8 = &off_100494438;
}

uint64_t APPBSegmentUpdateRequestReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v84) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v84 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v84 & 0x7F) << v5;
        if ((v84 & 0x80) == 0)
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
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 & 7;
      if (v13 == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v14 = v12 >> 3;
      if ((v12 >> 3) > 10)
      {
        if (v14 <= 40)
        {
          switch(v14)
          {
            case 0xB:
              v52 = 0;
              v53 = 0;
              v54 = 0;
              *(a1 + 160) |= 4u;
              while (1)
              {
                LOBYTE(v84) = 0;
                v55 = [a2 position] + 1;
                if (v55 >= [a2 position] && (v56 = objc_msgSend(a2, "position") + 1, v56 <= objc_msgSend(a2, "length")))
                {
                  v57 = [a2 data];
                  [v57 getBytes:&v84 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v54 |= (v84 & 0x7F) << v52;
                if ((v84 & 0x80) == 0)
                {
                  break;
                }

                v52 += 7;
                v11 = v53++ >= 9;
                if (v11)
                {
                  v58 = 0;
                  goto LABEL_120;
                }
              }

              if ([a2 hasError])
              {
                v58 = 0;
              }

              else
              {
                v58 = v54;
              }

LABEL_120:
              *(a1 + 104) = v58;
              goto LABEL_159;
            case 0x27:
              v32 = PBReaderReadString();
              v33 = 136;
              goto LABEL_114;
            case 0x28:
              v32 = PBReaderReadString();
              v33 = 128;
LABEL_114:
              v59 = *(a1 + v33);
              *(a1 + v33) = v32;

              goto LABEL_159;
          }
        }

        else
        {
          if (v14 <= 42)
          {
            if (v14 == 41)
            {
              v32 = PBReaderReadData();
              v33 = 112;
              goto LABEL_114;
            }

            if (v13 != 2)
            {
              v66 = 0;
              v67 = 0;
              v68 = 0;
              while (1)
              {
                LOBYTE(v84) = 0;
                v69 = [a2 position] + 1;
                if (v69 >= [a2 position] && (v70 = objc_msgSend(a2, "position") + 1, v70 <= objc_msgSend(a2, "length")))
                {
                  v71 = [a2 data];
                  [v71 getBytes:&v84 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v68 |= (v84 & 0x7F) << v66;
                if ((v84 & 0x80) == 0)
                {
                  goto LABEL_150;
                }

                v66 += 7;
                v11 = v67++ >= 9;
                if (v11)
                {
                  goto LABEL_151;
                }
              }
            }

            v84 = 0;
            v85 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            while (1)
            {
              v18 = [a2 position];
              if (v18 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
              {
                goto LABEL_101;
              }

              v19 = 0;
              v20 = 0;
              v21 = 0;
              while (1)
              {
                v86 = 0;
                v22 = [a2 position] + 1;
                if (v22 >= [a2 position] && (v23 = objc_msgSend(a2, "position") + 1, v23 <= objc_msgSend(a2, "length")))
                {
                  v24 = [a2 data];
                  [v24 getBytes:&v86 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v21 |= (v86 & 0x7F) << v19;
                if ((v86 & 0x80) == 0)
                {
                  break;
                }

                v19 += 7;
                v11 = v20++ >= 9;
                if (v11)
                {
                  goto LABEL_42;
                }
              }

              [a2 hasError];
LABEL_42:
              PBRepeatedInt32Add();
            }
          }

          if (v14 == 43)
          {
            if (v13 != 2)
            {
              v60 = 0;
              v61 = 0;
              v62 = 0;
              while (1)
              {
                LOBYTE(v84) = 0;
                v63 = [a2 position] + 1;
                if (v63 >= [a2 position] && (v64 = objc_msgSend(a2, "position") + 1, v64 <= objc_msgSend(a2, "length")))
                {
                  v65 = [a2 data];
                  [v65 getBytes:&v84 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v62 |= (v84 & 0x7F) << v60;
                if ((v84 & 0x80) == 0)
                {
                  goto LABEL_150;
                }

                v60 += 7;
                v11 = v61++ >= 9;
                if (v11)
                {
                  goto LABEL_151;
                }
              }
            }

            v84 = 0;
            v85 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            while (1)
            {
              v45 = [a2 position];
              if (v45 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
              {
                break;
              }

              v46 = 0;
              v47 = 0;
              v48 = 0;
              while (1)
              {
                v86 = 0;
                v49 = [a2 position] + 1;
                if (v49 >= [a2 position] && (v50 = objc_msgSend(a2, "position") + 1, v50 <= objc_msgSend(a2, "length")))
                {
                  v51 = [a2 data];
                  [v51 getBytes:&v86 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v48 |= (v86 & 0x7F) << v46;
                if ((v86 & 0x80) == 0)
                {
                  break;
                }

                v46 += 7;
                v11 = v47++ >= 9;
                if (v11)
                {
                  goto LABEL_100;
                }
              }

              [a2 hasError];
LABEL_100:
              PBRepeatedInt32Add();
            }

LABEL_101:
            PBReaderRecallMark();
            goto LABEL_159;
          }

          if (v14 == 44)
          {
            if (v13 != 2)
            {
              v72 = 0;
              v73 = 0;
              v74 = 0;
              while (1)
              {
                LOBYTE(v84) = 0;
                v75 = [a2 position] + 1;
                if (v75 >= [a2 position] && (v76 = objc_msgSend(a2, "position") + 1, v76 <= objc_msgSend(a2, "length")))
                {
                  v77 = [a2 data];
                  [v77 getBytes:&v84 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v74 |= (v84 & 0x7F) << v72;
                if ((v84 & 0x80) == 0)
                {
                  break;
                }

                v72 += 7;
                v11 = v73++ >= 9;
                if (v11)
                {
                  goto LABEL_151;
                }
              }

LABEL_150:
              [a2 hasError];
LABEL_151:
              PBRepeatedInt32Add();
              goto LABEL_159;
            }

            v84 = 0;
            v85 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            while (1)
            {
              v36 = [a2 position];
              if (v36 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
              {
                goto LABEL_101;
              }

              v37 = 0;
              v38 = 0;
              v39 = 0;
              while (1)
              {
                v86 = 0;
                v40 = [a2 position] + 1;
                if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
                {
                  v42 = [a2 data];
                  [v42 getBytes:&v86 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v39 |= (v86 & 0x7F) << v37;
                if ((v86 & 0x80) == 0)
                {
                  break;
                }

                v37 += 7;
                v11 = v38++ >= 9;
                if (v11)
                {
                  goto LABEL_80;
                }
              }

              [a2 hasError];
LABEL_80:
              PBRepeatedInt32Add();
            }
          }
        }
      }

      else if (v14 <= 4)
      {
        switch(v14)
        {
          case 2:
            v32 = PBReaderReadData();
            v33 = 120;
            goto LABEL_114;
          case 3:
            v32 = PBReaderReadString();
            v33 = 144;
            goto LABEL_114;
          case 4:
            v25 = 0;
            v26 = 0;
            v27 = 0;
            *(a1 + 160) |= 0x10u;
            while (1)
            {
              LOBYTE(v84) = 0;
              v28 = [a2 position] + 1;
              if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 1, v29 <= objc_msgSend(a2, "length")))
              {
                v30 = [a2 data];
                [v30 getBytes:&v84 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v27 |= (v84 & 0x7F) << v25;
              if ((v84 & 0x80) == 0)
              {
                break;
              }

              v25 += 7;
              v11 = v26++ >= 9;
              if (v11)
              {
                LOBYTE(v31) = 0;
                goto LABEL_122;
              }
            }

            v31 = (v27 != 0) & ~[a2 hasError];
LABEL_122:
            *(a1 + 156) = v31;
            goto LABEL_159;
        }
      }

      else if (v14 > 8)
      {
        if (v14 == 9)
        {
          *(a1 + 160) |= 2u;
          v84 = 0;
          v43 = [a2 position] + 8;
          if (v43 >= [a2 position] && (v44 = objc_msgSend(a2, "position") + 8, v44 <= objc_msgSend(a2, "length")))
          {
            v78 = [a2 data];
            [v78 getBytes:&v84 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v79 = v84;
          v80 = 88;
          goto LABEL_156;
        }

        if (v14 == 10)
        {
          *(a1 + 160) |= 8u;
          LODWORD(v84) = 0;
          v34 = [a2 position] + 4;
          if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 4, v35 <= objc_msgSend(a2, "length")))
          {
            v82 = [a2 data];
            [v82 getBytes:&v84 range:{objc_msgSend(a2, "position"), 4}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          *(a1 + 152) = v84;
          goto LABEL_159;
        }
      }

      else
      {
        if (v14 == 5)
        {
          v32 = PBReaderReadString();
          v33 = 96;
          goto LABEL_114;
        }

        if (v14 == 8)
        {
          *(a1 + 160) |= 1u;
          v84 = 0;
          v15 = [a2 position] + 8;
          if (v15 >= [a2 position] && (v16 = objc_msgSend(a2, "position") + 8, v16 <= objc_msgSend(a2, "length")))
          {
            v81 = [a2 data];
            [v81 getBytes:&v84 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v79 = v84;
          v80 = 80;
LABEL_156:
          *(a1 + v80) = v79;
          goto LABEL_159;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_159:
      v83 = [a2 position];
    }

    while (v83 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1002EA03C(id a1)
{
  v1 = qword_1004E6C08;
  qword_1004E6C08 = &off_100494460;
}

uint64_t APPBLogAdEventRequestReadFrom(id *a1, void *a2)
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
        LOBYTE(v16) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16 & 0x7F) << v5;
        if ((v16 & 0x80) == 0)
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
        v13 = objc_alloc_init(APPBLogMetaData);
        objc_storeStrong(a1 + 2, v13);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !APPBLogMetaDataReadFrom(v13, a2))
        {
          goto LABEL_28;
        }

LABEL_24:
        PBReaderRecallMark();

        goto LABEL_26;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_26:
      v14 = [a2 position];
      if (v14 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = objc_alloc_init(APPBAdEvent);
    [a1 addEvent:v13];
    v16 = 0;
    v17 = 0;
    if (!PBReaderPlaceMark() || !APPBAdEventReadFrom(v13, a2))
    {
LABEL_28:

      return 0;
    }

    goto LABEL_24;
  }

  return [a2 hasError] ^ 1;
}

void sub_1002EAC28(id a1)
{
  v1 = qword_1004E6C18;
  qword_1004E6C18 = &off_100494488;
}

uint64_t APPBSegmentUpdateResponseReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v26) = 0;
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
      if ((v12 >> 3) == 4)
      {
        *(a1 + 32) |= 1u;
        v26 = 0;
        v18 = [a2 position] + 8;
        if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 8, v19 <= objc_msgSend(a2, "length")))
        {
          v24 = [a2 data];
          [v24 getBytes:&v26 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v22 = v26;
        v23 = 8;
      }

      else
      {
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            v14 = PBReaderReadString();
            v15 = *(a1 + 24);
            *(a1 + 24) = v14;
          }

          else
          {
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }
          }

          goto LABEL_34;
        }

        *(a1 + 32) |= 2u;
        v26 = 0;
        v16 = [a2 position] + 8;
        if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 8, v17 <= objc_msgSend(a2, "length")))
        {
          v21 = [a2 data];
          [v21 getBytes:&v26 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v22 = v26;
        v23 = 16;
      }

      *(a1 + v23) = v22;
LABEL_34:
      v25 = [a2 position];
    }

    while (v25 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1002EB784(id a1)
{
  v1 = qword_1004E6C28;
  qword_1004E6C28 = &off_1004944B0;
}

uint64_t APPBAggregateScalarMetricReadFrom(uint64_t a1, void *a2)
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
      if ((v12 >> 3) == 100)
      {
        v17 = 0;
        v18 = 0;
        v19 = 0;
        *(a1 + 32) |= 1u;
        while (1)
        {
          v27 = 0;
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
            goto LABEL_37;
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

LABEL_37:
        *(a1 + 16) = v23;
      }

      else
      {
        if (v13 == 2)
        {
          v14 = PBReaderReadString();
          v15 = 8;
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

            goto LABEL_38;
          }

          v14 = PBReaderReadString();
          v15 = 24;
        }

        v16 = *(a1 + v15);
        *(a1 + v15) = v14;
      }

LABEL_38:
      v25 = [a2 position];
    }

    while (v25 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t APPBRequestPropertiesReadFrom(uint64_t a1, void *a2)
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
      LOBYTE(v175) = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v175 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v175 & 0x7F) << v6;
      if ((v175 & 0x80) == 0)
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
      case 2u:
        v14 = PBReaderReadString();
        v15 = 152;
        goto LABEL_246;
      case 3u:
        v14 = PBReaderReadString();
        v15 = 48;
        goto LABEL_246;
      case 4u:
        v88 = 0;
        v89 = 0;
        v90 = 0;
        *(a1 + 304) |= 0x4000u;
        while (1)
        {
          LOBYTE(v175) = 0;
          v91 = [a2 position] + 1;
          if (v91 >= [a2 position] && (v92 = objc_msgSend(a2, "position") + 1, v92 <= objc_msgSend(a2, "length")))
          {
            v93 = [a2 data];
            [v93 getBytes:&v175 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v90 |= (v175 & 0x7F) << v88;
          if ((v175 & 0x80) == 0)
          {
            break;
          }

          v88 += 7;
          v12 = v89++ >= 9;
          if (v12)
          {
            v22 = 0;
            goto LABEL_299;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v90;
        }

LABEL_299:
        v163 = 248;
        goto LABEL_324;
      case 5u:
        v14 = PBReaderReadString();
        v15 = 104;
        goto LABEL_246;
      case 6u:
        v14 = PBReaderReadString();
        v15 = 96;
        goto LABEL_246;
      case 9u:
        v115 = 0;
        v116 = 0;
        v117 = 0;
        *(a1 + 304) |= 0x800000u;
        while (1)
        {
          LOBYTE(v175) = 0;
          v118 = [a2 position] + 1;
          if (v118 >= [a2 position] && (v119 = objc_msgSend(a2, "position") + 1, v119 <= objc_msgSend(a2, "length")))
          {
            v120 = [a2 data];
            [v120 getBytes:&v175 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v117 |= (v175 & 0x7F) << v115;
          if ((v175 & 0x80) == 0)
          {
            break;
          }

          v115 += 7;
          v12 = v116++ >= 9;
          if (v12)
          {
            LOBYTE(v35) = 0;
            goto LABEL_311;
          }
        }

        v35 = (v117 != 0) & ~[a2 hasError];
LABEL_311:
        v164 = 300;
        goto LABEL_329;
      case 0xAu:
        v64 = 0;
        v65 = 0;
        v66 = 0;
        *(a1 + 304) |= 0x20u;
        while (1)
        {
          LOBYTE(v175) = 0;
          v67 = [a2 position] + 1;
          if (v67 >= [a2 position] && (v68 = objc_msgSend(a2, "position") + 1, v68 <= objc_msgSend(a2, "length")))
          {
            v69 = [a2 data];
            [v69 getBytes:&v175 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v66 |= (v175 & 0x7F) << v64;
          if ((v175 & 0x80) == 0)
          {
            break;
          }

          v64 += 7;
          v12 = v65++ >= 9;
          if (v12)
          {
            v22 = 0;
            goto LABEL_283;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v66;
        }

LABEL_283:
        v163 = 112;
        goto LABEL_324;
      case 0xEu:
        *(a1 + 304) |= 0x8000u;
        LODWORD(v175) = 0;
        v137 = [a2 position] + 4;
        if (v137 >= [a2 position] && (v138 = objc_msgSend(a2, "position") + 4, v138 <= objc_msgSend(a2, "length")))
        {
          v172 = [a2 data];
          [v172 getBytes:&v175 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        v166 = v175;
        v167 = 272;
        goto LABEL_346;
      case 0xFu:
        v58 = 0;
        v59 = 0;
        v60 = 0;
        while (1)
        {
          LOBYTE(v175) = 0;
          v61 = [a2 position] + 1;
          if (v61 >= [a2 position] && (v62 = objc_msgSend(a2, "position") + 1, v62 <= objc_msgSend(a2, "length")))
          {
            v63 = [a2 data];
            [v63 getBytes:&v175 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v60 |= (v175 & 0x7F) << v58;
          if ((v175 & 0x80) == 0)
          {
            break;
          }

          v58 += 7;
          v12 = v59++ >= 9;
          if (v12)
          {
            v22 = 0;
            goto LABEL_279;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v60;
        }

LABEL_279:
        v163 = 260;
        goto LABEL_324;
      case 0x10u:
        v139 = 0;
        v140 = 0;
        v141 = 0;
        while (1)
        {
          LOBYTE(v175) = 0;
          v142 = [a2 position] + 1;
          if (v142 >= [a2 position] && (v143 = objc_msgSend(a2, "position") + 1, v143 <= objc_msgSend(a2, "length")))
          {
            v144 = [a2 data];
            [v144 getBytes:&v175 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v141 |= (v175 & 0x7F) << v139;
          if ((v175 & 0x80) == 0)
          {
            break;
          }

          v139 += 7;
          v12 = v140++ >= 9;
          if (v12)
          {
            v22 = 0;
            goto LABEL_323;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v141;
        }

LABEL_323:
        v163 = 256;
        goto LABEL_324;
      case 0x11u:
        v76 = 0;
        v77 = 0;
        v78 = 0;
        while (1)
        {
          LOBYTE(v175) = 0;
          v79 = [a2 position] + 1;
          if (v79 >= [a2 position] && (v80 = objc_msgSend(a2, "position") + 1, v80 <= objc_msgSend(a2, "length")))
          {
            v81 = [a2 data];
            [v81 getBytes:&v175 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v78 |= (v175 & 0x7F) << v76;
          if ((v175 & 0x80) == 0)
          {
            break;
          }

          v76 += 7;
          v12 = v77++ >= 9;
          if (v12)
          {
            v22 = 0;
            goto LABEL_291;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v78;
        }

LABEL_291:
        v163 = 252;
        goto LABEL_324;
      case 0x13u:
        v96 = PBReaderReadString();
        if (v96)
        {
          [a1 addUserKeyboard:v96];
        }

        continue;
      case 0x15u:
        *(a1 + 304) |= 1u;
        v175 = 0;
        v94 = [a2 position] + 8;
        if (v94 >= [a2 position] && (v95 = objc_msgSend(a2, "position") + 8, v95 <= objc_msgSend(a2, "length")))
        {
          v169 = [a2 data];
          [v169 getBytes:&v175 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 8) = v175;
        continue;
      case 0x16u:
        *(a1 + 304) |= 0x400u;
        LODWORD(v175) = 0;
        v50 = [a2 position] + 4;
        if (v50 >= [a2 position] && (v51 = objc_msgSend(a2, "position") + 4, v51 <= objc_msgSend(a2, "length")))
        {
          v168 = [a2 data];
          [v168 getBytes:&v175 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        v166 = v175;
        v167 = 196;
        goto LABEL_346;
      case 0x17u:
        v129 = 0;
        v130 = 0;
        v131 = 0;
        *(a1 + 304) |= 0x800u;
        while (1)
        {
          LOBYTE(v175) = 0;
          v132 = [a2 position] + 1;
          if (v132 >= [a2 position] && (v133 = objc_msgSend(a2, "position") + 1, v133 <= objc_msgSend(a2, "length")))
          {
            v134 = [a2 data];
            [v134 getBytes:&v175 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v131 |= (v175 & 0x7F) << v129;
          if ((v175 & 0x80) == 0)
          {
            break;
          }

          v129 += 7;
          v12 = v130++ >= 9;
          if (v12)
          {
            v22 = 0;
            goto LABEL_319;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v131;
        }

LABEL_319:
        v163 = 200;
        goto LABEL_324;
      case 0x18u:
        *(a1 + 304) |= 0x1000u;
        LODWORD(v175) = 0;
        v135 = [a2 position] + 4;
        if (v135 >= [a2 position] && (v136 = objc_msgSend(a2, "position") + 4, v136 <= objc_msgSend(a2, "length")))
        {
          v171 = [a2 data];
          [v171 getBytes:&v175 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        v166 = v175;
        v167 = 204;
        goto LABEL_346;
      case 0x19u:
        *(a1 + 304) |= 0x80u;
        LODWORD(v175) = 0;
        v147 = [a2 position] + 4;
        if (v147 >= [a2 position] && (v148 = objc_msgSend(a2, "position") + 4, v148 <= objc_msgSend(a2, "length")))
        {
          v174 = [a2 data];
          [v174 getBytes:&v175 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        v166 = v175;
        v167 = 184;
        goto LABEL_346;
      case 0x1Au:
        *(a1 + 304) |= 0x100u;
        LODWORD(v175) = 0;
        v145 = [a2 position] + 4;
        if (v145 >= [a2 position] && (v146 = objc_msgSend(a2, "position") + 4, v146 <= objc_msgSend(a2, "length")))
        {
          v173 = [a2 data];
          [v173 getBytes:&v175 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        v166 = v175;
        v167 = 188;
        goto LABEL_346;
      case 0x1Bu:
        *(a1 + 304) |= 0x200u;
        LODWORD(v175) = 0;
        v42 = [a2 position] + 4;
        if (v42 >= [a2 position] && (v43 = objc_msgSend(a2, "position") + 4, v43 <= objc_msgSend(a2, "length")))
        {
          v165 = [a2 data];
          [v165 getBytes:&v175 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        v166 = v175;
        v167 = 192;
        goto LABEL_346;
      case 0x1Cu:
        v14 = PBReaderReadData();
        v15 = 160;
        goto LABEL_246;
      case 0x1Du:
        v14 = PBReaderReadString();
        v15 = 64;
        goto LABEL_246;
      case 0x1Eu:
        v44 = 0;
        v45 = 0;
        v46 = 0;
        *(a1 + 304) |= 0x200000u;
        while (1)
        {
          LOBYTE(v175) = 0;
          v47 = [a2 position] + 1;
          if (v47 >= [a2 position] && (v48 = objc_msgSend(a2, "position") + 1, v48 <= objc_msgSend(a2, "length")))
          {
            v49 = [a2 data];
            [v49 getBytes:&v175 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v46 |= (v175 & 0x7F) << v44;
          if ((v175 & 0x80) == 0)
          {
            break;
          }

          v44 += 7;
          v12 = v45++ >= 9;
          if (v12)
          {
            LOBYTE(v35) = 0;
            goto LABEL_271;
          }
        }

        v35 = (v46 != 0) & ~[a2 hasError];
LABEL_271:
        v164 = 298;
        goto LABEL_329;
      case 0x1Fu:
        v14 = PBReaderReadString();
        v15 = 128;
        goto LABEL_246;
      case 0x20u:
        v70 = 0;
        v71 = 0;
        v72 = 0;
        *(a1 + 304) |= 0x10u;
        while (1)
        {
          LOBYTE(v175) = 0;
          v73 = [a2 position] + 1;
          if (v73 >= [a2 position] && (v74 = objc_msgSend(a2, "position") + 1, v74 <= objc_msgSend(a2, "length")))
          {
            v75 = [a2 data];
            [v75 getBytes:&v175 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v72 |= (v175 & 0x7F) << v70;
          if ((v175 & 0x80) == 0)
          {
            break;
          }

          v70 += 7;
          v12 = v71++ >= 9;
          if (v12)
          {
            v22 = 0;
            goto LABEL_287;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v72;
        }

LABEL_287:
        v163 = 80;
        goto LABEL_324;
      case 0x21u:
        v103 = 0;
        v104 = 0;
        v105 = 0;
        *(a1 + 304) |= 0x2000u;
        while (1)
        {
          LOBYTE(v175) = 0;
          v106 = [a2 position] + 1;
          if (v106 >= [a2 position] && (v107 = objc_msgSend(a2, "position") + 1, v107 <= objc_msgSend(a2, "length")))
          {
            v108 = [a2 data];
            [v108 getBytes:&v175 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v105 |= (v175 & 0x7F) << v103;
          if ((v175 & 0x80) == 0)
          {
            break;
          }

          v103 += 7;
          v12 = v104++ >= 9;
          if (v12)
          {
            v22 = 0;
            goto LABEL_305;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v105;
        }

LABEL_305:
        v163 = 224;
        goto LABEL_324;
      case 0x22u:
        v52 = 0;
        v53 = 0;
        v54 = 0;
        *(a1 + 304) |= 0x10000u;
        while (1)
        {
          LOBYTE(v175) = 0;
          v55 = [a2 position] + 1;
          if (v55 >= [a2 position] && (v56 = objc_msgSend(a2, "position") + 1, v56 <= objc_msgSend(a2, "length")))
          {
            v57 = [a2 data];
            [v57 getBytes:&v175 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v54 |= (v175 & 0x7F) << v52;
          if ((v175 & 0x80) == 0)
          {
            break;
          }

          v52 += 7;
          v12 = v53++ >= 9;
          if (v12)
          {
            v22 = 0;
            goto LABEL_275;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v54;
        }

LABEL_275:
        v163 = 276;
        goto LABEL_324;
      case 0x23u:
        v29 = 0;
        v30 = 0;
        v31 = 0;
        *(a1 + 304) |= 0x100000u;
        while (1)
        {
          LOBYTE(v175) = 0;
          v32 = [a2 position] + 1;
          if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
          {
            v34 = [a2 data];
            [v34 getBytes:&v175 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v31 |= (v175 & 0x7F) << v29;
          if ((v175 & 0x80) == 0)
          {
            break;
          }

          v29 += 7;
          v12 = v30++ >= 9;
          if (v12)
          {
            LOBYTE(v35) = 0;
            goto LABEL_267;
          }
        }

        v35 = (v31 != 0) & ~[a2 hasError];
LABEL_267:
        v164 = 297;
        goto LABEL_329;
      case 0x24u:
        v149 = 0;
        v150 = 0;
        v151 = 0;
        *(a1 + 304) |= 0x80000u;
        while (1)
        {
          LOBYTE(v175) = 0;
          v152 = [a2 position] + 1;
          if (v152 >= [a2 position] && (v153 = objc_msgSend(a2, "position") + 1, v153 <= objc_msgSend(a2, "length")))
          {
            v154 = [a2 data];
            [v154 getBytes:&v175 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v151 |= (v175 & 0x7F) << v149;
          if ((v175 & 0x80) == 0)
          {
            break;
          }

          v149 += 7;
          v12 = v150++ >= 9;
          if (v12)
          {
            LOBYTE(v35) = 0;
            goto LABEL_326;
          }
        }

        v35 = (v151 != 0) & ~[a2 hasError];
LABEL_326:
        v164 = 296;
        goto LABEL_329;
      case 0x27u:
        v14 = PBReaderReadString();
        v15 = 232;
        goto LABEL_246;
      case 0x28u:
        v14 = PBReaderReadString();
        v15 = 208;
        goto LABEL_246;
      case 0x29u:
        *(a1 + 304) |= 0x40000u;
        LODWORD(v175) = 0;
        v127 = [a2 position] + 4;
        if (v127 >= [a2 position] && (v128 = objc_msgSend(a2, "position") + 4, v128 <= objc_msgSend(a2, "length")))
        {
          v170 = [a2 data];
          [v170 getBytes:&v175 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        v166 = v175;
        v167 = 284;
LABEL_346:
        *(a1 + v167) = v166;
        continue;
      case 0x2Au:
        v82 = 0;
        v83 = 0;
        v84 = 0;
        *(a1 + 304) |= 0x20000u;
        while (1)
        {
          LOBYTE(v175) = 0;
          v85 = [a2 position] + 1;
          if (v85 >= [a2 position] && (v86 = objc_msgSend(a2, "position") + 1, v86 <= objc_msgSend(a2, "length")))
          {
            v87 = [a2 data];
            [v87 getBytes:&v175 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v84 |= (v175 & 0x7F) << v82;
          if ((v175 & 0x80) == 0)
          {
            break;
          }

          v82 += 7;
          v12 = v83++ >= 9;
          if (v12)
          {
            v22 = 0;
            goto LABEL_295;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v84;
        }

LABEL_295:
        v163 = 280;
        goto LABEL_324;
      case 0x2Bu:
        v14 = PBReaderReadString();
        v15 = 168;
        goto LABEL_246;
      case 0x2Du:
        v14 = PBReaderReadString();
        v15 = 72;
        goto LABEL_246;
      case 0x30u:
        v14 = PBReaderReadData();
        v15 = 40;
        goto LABEL_246;
      case 0x31u:
        v14 = PBReaderReadData();
        v15 = 120;
        goto LABEL_246;
      case 0x32u:
        v23 = 0;
        v24 = 0;
        v25 = 0;
        *(a1 + 304) |= 0x40u;
        while (1)
        {
          LOBYTE(v175) = 0;
          v26 = [a2 position] + 1;
          if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
          {
            v28 = [a2 data];
            [v28 getBytes:&v175 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v25 |= (v175 & 0x7F) << v23;
          if ((v175 & 0x80) == 0)
          {
            break;
          }

          v23 += 7;
          v12 = v24++ >= 9;
          if (v12)
          {
            v22 = 0;
            goto LABEL_265;
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

LABEL_265:
        v163 = 144;
        goto LABEL_324;
      case 0x33u:
        v121 = 0;
        v122 = 0;
        v123 = 0;
        *(a1 + 304) |= 2u;
        while (1)
        {
          LOBYTE(v175) = 0;
          v124 = [a2 position] + 1;
          if (v124 >= [a2 position] && (v125 = objc_msgSend(a2, "position") + 1, v125 <= objc_msgSend(a2, "length")))
          {
            v126 = [a2 data];
            [v126 getBytes:&v175 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v123 |= (v175 & 0x7F) << v121;
          if ((v175 & 0x80) == 0)
          {
            break;
          }

          v121 += 7;
          v12 = v122++ >= 9;
          if (v12)
          {
            v22 = 0;
            goto LABEL_315;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v123;
        }

LABEL_315:
        v163 = 16;
        goto LABEL_324;
      case 0x34u:
        v14 = PBReaderReadData();
        v15 = 136;
        goto LABEL_246;
      case 0x35u:
        v14 = PBReaderReadString();
        v15 = 216;
        goto LABEL_246;
      case 0x36u:
        v14 = PBReaderReadString();
        v15 = 24;
        goto LABEL_246;
      case 0x37u:
        v14 = PBReaderReadString();
        v15 = 264;
        goto LABEL_246;
      case 0x38u:
        v14 = PBReaderReadString();
        v15 = 176;
        goto LABEL_246;
      case 0x39u:
        v14 = PBReaderReadString();
        v15 = 240;
        goto LABEL_246;
      case 0x3Au:
        v36 = 0;
        v37 = 0;
        v38 = 0;
        *(a1 + 304) |= 0x1000000u;
        while (1)
        {
          LOBYTE(v175) = 0;
          v39 = [a2 position] + 1;
          if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
          {
            v41 = [a2 data];
            [v41 getBytes:&v175 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v38 |= (v175 & 0x7F) << v36;
          if ((v175 & 0x80) == 0)
          {
            break;
          }

          v36 += 7;
          v12 = v37++ >= 9;
          if (v12)
          {
            LOBYTE(v35) = 0;
            goto LABEL_269;
          }
        }

        v35 = (v38 != 0) & ~[a2 hasError];
LABEL_269:
        v164 = 301;
        goto LABEL_329;
      case 0x3Bu:
        v14 = PBReaderReadString();
        v15 = 88;
LABEL_246:
        v155 = *(a1 + v15);
        *(a1 + v15) = v14;

        continue;
      case 0x3Cu:
        v109 = 0;
        v110 = 0;
        v111 = 0;
        *(a1 + 304) |= 4u;
        while (1)
        {
          LOBYTE(v175) = 0;
          v112 = [a2 position] + 1;
          if (v112 >= [a2 position] && (v113 = objc_msgSend(a2, "position") + 1, v113 <= objc_msgSend(a2, "length")))
          {
            v114 = [a2 data];
            [v114 getBytes:&v175 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v111 |= (v175 & 0x7F) << v109;
          if ((v175 & 0x80) == 0)
          {
            break;
          }

          v109 += 7;
          v12 = v110++ >= 9;
          if (v12)
          {
            v22 = 0;
            goto LABEL_309;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v111;
        }

LABEL_309:
        v163 = 32;
        goto LABEL_324;
      case 0x3Du:
        v156 = 0;
        v157 = 0;
        v158 = 0;
        *(a1 + 304) |= 0x2000000u;
        while (1)
        {
          LOBYTE(v175) = 0;
          v159 = [a2 position] + 1;
          if (v159 >= [a2 position] && (v160 = objc_msgSend(a2, "position") + 1, v160 <= objc_msgSend(a2, "length")))
          {
            v161 = [a2 data];
            [v161 getBytes:&v175 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v158 |= (v175 & 0x7F) << v156;
          if ((v175 & 0x80) == 0)
          {
            break;
          }

          v156 += 7;
          v12 = v157++ >= 9;
          if (v12)
          {
            LOBYTE(v35) = 0;
            goto LABEL_328;
          }
        }

        v35 = (v158 != 0) & ~[a2 hasError];
LABEL_328:
        v164 = 302;
        goto LABEL_329;
      case 0x3Eu:
        v97 = 0;
        v98 = 0;
        v99 = 0;
        *(a1 + 304) |= 0x400000u;
        while (1)
        {
          LOBYTE(v175) = 0;
          v100 = [a2 position] + 1;
          if (v100 >= [a2 position] && (v101 = objc_msgSend(a2, "position") + 1, v101 <= objc_msgSend(a2, "length")))
          {
            v102 = [a2 data];
            [v102 getBytes:&v175 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v99 |= (v175 & 0x7F) << v97;
          if ((v175 & 0x80) == 0)
          {
            break;
          }

          v97 += 7;
          v12 = v98++ >= 9;
          if (v12)
          {
            LOBYTE(v35) = 0;
            goto LABEL_301;
          }
        }

        v35 = (v99 != 0) & ~[a2 hasError];
LABEL_301:
        v164 = 299;
LABEL_329:
        *(a1 + v164) = v35;
        continue;
      case 0x3Fu:
        v16 = 0;
        v17 = 0;
        v18 = 0;
        *(a1 + 304) |= 8u;
        break;
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
      LOBYTE(v175) = 0;
      v19 = [a2 position] + 1;
      if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
      {
        v21 = [a2 data];
        [v21 getBytes:&v175 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v18 |= (v175 & 0x7F) << v16;
      if ((v175 & 0x80) == 0)
      {
        break;
      }

      v16 += 7;
      v12 = v17++ >= 9;
      if (v12)
      {
        v22 = 0;
        goto LABEL_261;
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

LABEL_261:
    v163 = 56;
LABEL_324:
    *(a1 + v163) = v22;
  }

  return [a2 hasError] ^ 1;
}

uint64_t APPBTargetingCriteriaReadFrom(void *a1, void *a2)
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
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadString();
        v14 = a1[1];
        a1[1] = v13;
LABEL_22:

        goto LABEL_24;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_24:
      v15 = [a2 position];
      if (v15 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = PBReaderReadString();
    if (v14)
    {
      [a1 addCriteriaValues:v14];
    }

    goto LABEL_22;
  }

  return [a2 hasError] ^ 1;
}

uint64_t APPBAssetInfoReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v51) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v51 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v51 & 0x7F) << v5;
        if ((v51 & 0x80) == 0)
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
        switch(v13)
        {
          case 1:
            v30 = 0;
            v31 = 0;
            v32 = 0;
            *(a1 + 48) |= 2u;
            while (1)
            {
              LOBYTE(v51) = 0;
              v33 = [a2 position] + 1;
              if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
              {
                v35 = [a2 data];
                [v35 getBytes:&v51 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v32 |= (v51 & 0x7F) << v30;
              if ((v51 & 0x80) == 0)
              {
                break;
              }

              v30 += 7;
              v11 = v31++ >= 9;
              if (v11)
              {
                v22 = 0;
                goto LABEL_74;
              }
            }

            if ([a2 hasError])
            {
              v22 = 0;
            }

            else
            {
              v22 = v32;
            }

LABEL_74:
            v47 = 16;
            break;
          case 2:
            v41 = 0;
            v42 = 0;
            v43 = 0;
            *(a1 + 48) |= 0x10u;
            while (1)
            {
              LOBYTE(v51) = 0;
              v44 = [a2 position] + 1;
              if (v44 >= [a2 position] && (v45 = objc_msgSend(a2, "position") + 1, v45 <= objc_msgSend(a2, "length")))
              {
                v46 = [a2 data];
                [v46 getBytes:&v51 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v43 |= (v51 & 0x7F) << v41;
              if ((v51 & 0x80) == 0)
              {
                break;
              }

              v41 += 7;
              v11 = v42++ >= 9;
              if (v11)
              {
                v22 = 0;
                goto LABEL_84;
              }
            }

            if ([a2 hasError])
            {
              v22 = 0;
            }

            else
            {
              v22 = v43;
            }

LABEL_84:
            v47 = 40;
            break;
          case 3:
            v16 = 0;
            v17 = 0;
            v18 = 0;
            *(a1 + 48) |= 4u;
            while (1)
            {
              LOBYTE(v51) = 0;
              v19 = [a2 position] + 1;
              if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
              {
                v21 = [a2 data];
                [v21 getBytes:&v51 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v18 |= (v51 & 0x7F) << v16;
              if ((v51 & 0x80) == 0)
              {
                break;
              }

              v16 += 7;
              v11 = v17++ >= 9;
              if (v11)
              {
                v22 = 0;
                goto LABEL_80;
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

LABEL_80:
            v47 = 20;
            break;
          default:
            goto LABEL_56;
        }

        *(a1 + v47) = v22;
      }

      else if (v13 > 5)
      {
        if (v13 == 6)
        {
          *(a1 + 48) |= 1u;
          v51 = 0;
          v39 = [a2 position] + 8;
          if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 8, v40 <= objc_msgSend(a2, "length")))
          {
            v48 = [a2 data];
            [v48 getBytes:&v51 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          *(a1 + 8) = v51;
        }

        else
        {
          if (v13 != 7)
          {
LABEL_56:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_90;
          }

          v23 = 0;
          v24 = 0;
          v25 = 0;
          *(a1 + 48) |= 0x20u;
          while (1)
          {
            LOBYTE(v51) = 0;
            v26 = [a2 position] + 1;
            if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
            {
              v28 = [a2 data];
              [v28 getBytes:&v51 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v25 |= (v51 & 0x7F) << v23;
            if ((v51 & 0x80) == 0)
            {
              break;
            }

            v23 += 7;
            v11 = v24++ >= 9;
            if (v11)
            {
              LOBYTE(v29) = 0;
              goto LABEL_76;
            }
          }

          v29 = (v25 != 0) & ~[a2 hasError];
LABEL_76:
          *(a1 + 44) = v29;
        }
      }

      else if (v13 == 4)
      {
        v37 = PBReaderReadString();
        v38 = *(a1 + 32);
        *(a1 + 32) = v37;
      }

      else
      {
        if (v13 != 5)
        {
          goto LABEL_56;
        }

        *(a1 + 48) |= 8u;
        LODWORD(v51) = 0;
        v14 = [a2 position] + 4;
        if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 4, v15 <= objc_msgSend(a2, "length")))
        {
          v49 = [a2 data];
          [v49 getBytes:&v51 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 24) = v51;
      }

LABEL_90:
      v50 = [a2 position];
    }

    while (v50 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1002F859C(id a1)
{
  v1 = qword_1004E6C38;
  qword_1004E6C38 = &off_1004944D8;
}

uint64_t APPBNativeMediaCreativeMetadataReadFrom(uint64_t a1, void *a2)
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
      if ((v12 >> 3) <= 3)
      {
        if (v13 != 1)
        {
          if (v13 == 2)
          {
            v37 = 0;
            v38 = 0;
            v39 = 0;
            *(a1 + 52) |= 2u;
            while (1)
            {
              v49 = 0;
              v40 = [a2 position] + 1;
              if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
              {
                v42 = [a2 data];
                [v42 getBytes:&v49 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v39 |= (v49 & 0x7F) << v37;
              if ((v49 & 0x80) == 0)
              {
                break;
              }

              v37 += 7;
              v11 = v38++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_83;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v39;
            }

LABEL_83:
            v43 = 40;
          }

          else
          {
            if (v13 != 3)
            {
              goto LABEL_46;
            }

            v21 = 0;
            v22 = 0;
            v23 = 0;
            *(a1 + 52) |= 1u;
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
                goto LABEL_79;
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

LABEL_79:
            v43 = 24;
          }

          goto LABEL_84;
        }

        v27 = PBReaderReadString();
        v28 = 32;
      }

      else
      {
        if (v13 <= 5)
        {
          if (v13 == 4)
          {
            v30 = 0;
            v31 = 0;
            v32 = 0;
            *(a1 + 52) |= 4u;
            while (1)
            {
              v47 = 0;
              v33 = [a2 position] + 1;
              if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
              {
                v35 = [a2 data];
                [v35 getBytes:&v47 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v32 |= (v47 & 0x7F) << v30;
              if ((v47 & 0x80) == 0)
              {
                break;
              }

              v30 += 7;
              v11 = v31++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_71;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v32;
            }

LABEL_71:
            v43 = 44;
          }

          else
          {
            if (v13 != 5)
            {
              goto LABEL_46;
            }

            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 52) |= 8u;
            while (1)
            {
              v46 = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v46 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v46 & 0x7F) << v14;
              if ((v46 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_75;
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

LABEL_75:
            v43 = 48;
          }

LABEL_84:
          *(a1 + v43) = v20;
          goto LABEL_85;
        }

        if (v13 == 6)
        {
          v27 = PBReaderReadString();
          v28 = 8;
        }

        else
        {
          if (v13 != 7)
          {
LABEL_46:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_85;
          }

          v27 = PBReaderReadString();
          v28 = 16;
        }
      }

      v36 = *(a1 + v28);
      *(a1 + v28) = v27;

LABEL_85:
      v44 = [a2 position];
    }

    while (v44 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1002F98B8(id a1)
{
  v1 = qword_1004E6C48;
  qword_1004E6C48 = &off_100494500;
}

uint64_t APPBServerErrorRequestReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v26) = 0;
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
      if ((v12 >> 3) <= 2)
      {
        if (v13 == 1)
        {
          v23 = objc_alloc_init(APPBLogMetaData);
          objc_storeStrong((a1 + 40), v23);
          v26 = 0;
          v27 = 0;
          if (!PBReaderPlaceMark() || !APPBLogMetaDataReadFrom(v23, a2))
          {
LABEL_50:

            return 0;
          }

LABEL_40:
          PBReaderRecallMark();
LABEL_41:

          goto LABEL_48;
        }

        if (v13 == 2)
        {
          v16 = 0;
          v17 = 0;
          v18 = 0;
          *(a1 + 48) |= 1u;
          while (1)
          {
            LOBYTE(v26) = 0;
            v19 = [a2 position] + 1;
            if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
            {
              v21 = [a2 data];
              [v21 getBytes:&v26 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v18 |= (v26 & 0x7F) << v16;
            if ((v26 & 0x80) == 0)
            {
              break;
            }

            v16 += 7;
            v11 = v17++ >= 9;
            if (v11)
            {
              v22 = 0;
              goto LABEL_47;
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

LABEL_47:
          *(a1 + 16) = v22;
          goto LABEL_48;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v23 = objc_alloc_init(APPBAdData);
            objc_storeStrong((a1 + 8), v23);
            v26 = 0;
            v27 = 0;
            if (!PBReaderPlaceMark() || !APPBAdDataReadFrom(v23, a2))
            {
              goto LABEL_50;
            }

            goto LABEL_40;
          case 4:
            v23 = PBReaderReadString();
            if (v23)
            {
              [a1 addFailingURLs:v23];
            }

            goto LABEL_41;
          case 5:
            v14 = PBReaderReadString();
            v15 = *(a1 + 24);
            *(a1 + 24) = v14;

            goto LABEL_48;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_48:
      v24 = [a2 position];
    }

    while (v24 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1002FAB70(id a1)
{
  v1 = qword_1004E6C58;
  qword_1004E6C58 = &off_100494528;
}

uint64_t APPBLogImpressionRequestReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v50) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v50 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v50 & 0x7F) << v5;
        if ((v50 & 0x80) == 0)
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
      if ((v12 >> 3) <= 4)
      {
        if (v13 > 2)
        {
          if (v13 == 3)
          {
            v25 = 0;
            v26 = 0;
            v27 = 0;
            *(a1 + 52) |= 8u;
            while (1)
            {
              LOBYTE(v50) = 0;
              v28 = [a2 position] + 1;
              if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 1, v29 <= objc_msgSend(a2, "length")))
              {
                v30 = [a2 data];
                [v30 getBytes:&v50 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v27 |= (v50 & 0x7F) << v25;
              if ((v50 & 0x80) == 0)
              {
                break;
              }

              v25 += 7;
              v11 = v26++ >= 9;
              if (v11)
              {
                LOBYTE(v24) = 0;
                goto LABEL_82;
              }
            }

            v24 = (v27 != 0) & ~[a2 hasError];
LABEL_82:
            v46 = 49;
            goto LABEL_85;
          }

          if (v13 == 4)
          {
            v14 = PBReaderReadData();
            v15 = 16;
            goto LABEL_32;
          }
        }

        else
        {
          if (v13 == 1)
          {
            v16 = objc_alloc_init(APPBLogMetaData);
            objc_storeStrong((a1 + 24), v16);
            v50 = 0;
            v51 = 0;
            if (!PBReaderPlaceMark() || !APPBLogMetaDataReadFrom(v16, a2))
            {
LABEL_94:

              return 0;
            }

            goto LABEL_46;
          }

          if (v13 == 2)
          {
            v16 = objc_alloc_init(APPBAssetMetric);
            [a1 addMetric:v16];
            v50 = 0;
            v51 = 0;
            if (!PBReaderPlaceMark() || !APPBAssetMetricReadFrom(v16, a2))
            {
              goto LABEL_94;
            }

LABEL_46:
            PBReaderRecallMark();

            goto LABEL_92;
          }
        }
      }

      else if (v13 <= 6)
      {
        if (v13 == 5)
        {
          *(a1 + 52) |= 1u;
          LODWORD(v50) = 0;
          v37 = [a2 position] + 4;
          if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 4, v38 <= objc_msgSend(a2, "length")))
          {
            v47 = [a2 data];
            [v47 getBytes:&v50 range:{objc_msgSend(a2, "position"), 4}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          *(a1 + 40) = v50;
          goto LABEL_92;
        }

        if (v13 == 6)
        {
          v18 = 0;
          v19 = 0;
          v20 = 0;
          *(a1 + 52) |= 4u;
          while (1)
          {
            LOBYTE(v50) = 0;
            v21 = [a2 position] + 1;
            if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 1, v22 <= objc_msgSend(a2, "length")))
            {
              v23 = [a2 data];
              [v23 getBytes:&v50 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v20 |= (v50 & 0x7F) << v18;
            if ((v50 & 0x80) == 0)
            {
              break;
            }

            v18 += 7;
            v11 = v19++ >= 9;
            if (v11)
            {
              LOBYTE(v24) = 0;
              goto LABEL_80;
            }
          }

          v24 = (v20 != 0) & ~[a2 hasError];
LABEL_80:
          v46 = 48;
          goto LABEL_85;
        }
      }

      else
      {
        switch(v13)
        {
          case 7:
            v31 = 0;
            v32 = 0;
            v33 = 0;
            *(a1 + 52) |= 0x10u;
            while (1)
            {
              LOBYTE(v50) = 0;
              v34 = [a2 position] + 1;
              if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
              {
                v36 = [a2 data];
                [v36 getBytes:&v50 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v33 |= (v50 & 0x7F) << v31;
              if ((v50 & 0x80) == 0)
              {
                break;
              }

              v31 += 7;
              v11 = v32++ >= 9;
              if (v11)
              {
                LOBYTE(v24) = 0;
                goto LABEL_84;
              }
            }

            v24 = (v33 != 0) & ~[a2 hasError];
LABEL_84:
            v46 = 50;
LABEL_85:
            *(a1 + v46) = v24;
            goto LABEL_92;
          case 8:
            v39 = 0;
            v40 = 0;
            v41 = 0;
            *(a1 + 52) |= 2u;
            while (1)
            {
              LOBYTE(v50) = 0;
              v42 = [a2 position] + 1;
              if (v42 >= [a2 position] && (v43 = objc_msgSend(a2, "position") + 1, v43 <= objc_msgSend(a2, "length")))
              {
                v44 = [a2 data];
                [v44 getBytes:&v50 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v41 |= (v50 & 0x7F) << v39;
              if ((v50 & 0x80) == 0)
              {
                break;
              }

              v39 += 7;
              v11 = v40++ >= 9;
              if (v11)
              {
                v45 = 0;
                goto LABEL_89;
              }
            }

            if ([a2 hasError])
            {
              v45 = 0;
            }

            else
            {
              v45 = v41;
            }

LABEL_89:
            *(a1 + 44) = v45;
            goto LABEL_92;
          case 9:
            v14 = PBReaderReadString();
            v15 = 8;
LABEL_32:
            v17 = *(a1 + v15);
            *(a1 + v15) = v14;

            goto LABEL_92;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_92:
      v48 = [a2 position];
    }

    while (v48 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1002FCDAC(id a1)
{
  v1 = qword_1004E6C68;
  qword_1004E6C68 = &off_100494550;
}

uint64_t APPBThirdPartySegmentUpdateRequestReadFrom(uint64_t a1, void *a2)
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
        v41 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v41 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v41 & 0x7F) << v5;
        if ((v41 & 0x80) == 0)
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
      if ((v12 >> 3) <= 4)
      {
        if (v13 <= 2)
        {
          if (v13 == 1)
          {
            v14 = PBReaderReadData();
            v15 = 32;
          }

          else
          {
            if (v13 != 2)
            {
              goto LABEL_65;
            }

            v14 = PBReaderReadString();
            v15 = 8;
          }

          goto LABEL_64;
        }

        if (v13 == 3)
        {
          v14 = PBReaderReadString();
          v15 = 16;
LABEL_64:
          v37 = *(a1 + v15);
          *(a1 + v15) = v14;

          goto LABEL_76;
        }

        if (v13 != 4)
        {
          goto LABEL_65;
        }

        v16 = 0;
        v17 = 0;
        v18 = 0;
        *(a1 + 68) |= 1u;
        while (1)
        {
          v42 = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v42 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v42 & 0x7F) << v16;
          if ((v42 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v11 = v17++ >= 9;
          if (v11)
          {
            v22 = 0;
            goto LABEL_70;
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

LABEL_70:
        *(a1 + 40) = v22;
      }

      else
      {
        if (v13 > 6)
        {
          switch(v13)
          {
            case 7:
              v24 = 0;
              v25 = 0;
              v26 = 0;
              *(a1 + 68) |= 2u;
              while (1)
              {
                v43 = 0;
                v27 = [a2 position] + 1;
                if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
                {
                  v29 = [a2 data];
                  [v29 getBytes:&v43 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v26 |= (v43 & 0x7F) << v24;
                if ((v43 & 0x80) == 0)
                {
                  break;
                }

                v24 += 7;
                v11 = v25++ >= 9;
                if (v11)
                {
                  LOBYTE(v30) = 0;
                  goto LABEL_72;
                }
              }

              v30 = (v26 != 0) & ~[a2 hasError];
LABEL_72:
              v39 = 64;
LABEL_75:
              *(a1 + v39) = v30;
              goto LABEL_76;
            case 8:
              v14 = PBReaderReadData();
              v15 = 56;
              break;
            case 9:
              v14 = PBReaderReadData();
              v15 = 24;
              break;
            default:
              goto LABEL_65;
          }

          goto LABEL_64;
        }

        if (v13 == 5)
        {
          v31 = 0;
          v32 = 0;
          v33 = 0;
          *(a1 + 68) |= 4u;
          while (1)
          {
            v44 = 0;
            v34 = [a2 position] + 1;
            if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
            {
              v36 = [a2 data];
              [v36 getBytes:&v44 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v33 |= (v44 & 0x7F) << v31;
            if ((v44 & 0x80) == 0)
            {
              break;
            }

            v31 += 7;
            v11 = v32++ >= 9;
            if (v11)
            {
              LOBYTE(v30) = 0;
              goto LABEL_74;
            }
          }

          v30 = (v33 != 0) & ~[a2 hasError];
LABEL_74:
          v39 = 65;
          goto LABEL_75;
        }

        if (v13 != 6)
        {
LABEL_65:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_76;
        }

        v23 = PBReaderReadString();
        if (v23)
        {
          [a1 addSegmentIdentifiers:v23];
        }
      }

LABEL_76:
      v40 = [a2 position];
    }

    while (v40 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t APPBMerchantReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v46) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v46 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v46 & 0x7F) << v5;
        if ((v46 & 0x80) == 0)
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
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 & 7;
      if (v13 == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v14 = v12 >> 3;
      if ((v12 >> 3) > 99)
      {
        if (v14 > 109)
        {
          if (v14 == 110)
          {
            v15 = PBReaderReadString();
            v16 = 96;
            goto LABEL_64;
          }

          if (v14 == 111)
          {
            v15 = PBReaderReadData();
            v16 = 88;
            goto LABEL_64;
          }
        }

        else
        {
          if (v14 == 100)
          {
            v15 = PBReaderReadString();
            v16 = 80;
            goto LABEL_64;
          }

          if (v14 == 101)
          {
            v15 = PBReaderReadData();
            v16 = 72;
            goto LABEL_64;
          }
        }
      }

      else if (v14 > 2)
      {
        if (v14 == 3)
        {
          if (v13 != 2)
          {
            v34 = 0;
            v35 = 0;
            v36 = 0;
            while (1)
            {
              LOBYTE(v46) = 0;
              v37 = [a2 position] + 1;
              if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 1, v38 <= objc_msgSend(a2, "length")))
              {
                v39 = [a2 data];
                [v39 getBytes:&v46 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v36 |= (v46 & 0x7F) << v34;
              if ((v46 & 0x80) == 0)
              {
                goto LABEL_88;
              }

              v34 += 7;
              v11 = v35++ >= 9;
              if (v11)
              {
                goto LABEL_89;
              }
            }
          }

          v46 = 0;
          v47 = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          while (1)
          {
            v25 = [a2 position];
            if (v25 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
            {
              goto LABEL_69;
            }

            v26 = 0;
            v27 = 0;
            v28 = 0;
            while (1)
            {
              v48 = 0;
              v29 = [a2 position] + 1;
              if (v29 >= [a2 position] && (v30 = objc_msgSend(a2, "position") + 1, v30 <= objc_msgSend(a2, "length")))
              {
                v31 = [a2 data];
                [v31 getBytes:&v48 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v28 |= (v48 & 0x7F) << v26;
              if ((v48 & 0x80) == 0)
              {
                break;
              }

              v26 += 7;
              v11 = v27++ >= 9;
              if (v11)
              {
                goto LABEL_62;
              }
            }

            [a2 hasError];
LABEL_62:
            PBRepeatedInt32Add();
          }
        }

        if (v14 == 4)
        {
          if (v13 != 2)
          {
            v40 = 0;
            v41 = 0;
            v42 = 0;
            while (1)
            {
              LOBYTE(v46) = 0;
              v43 = [a2 position] + 1;
              if (v43 >= [a2 position] && (v44 = objc_msgSend(a2, "position") + 1, v44 <= objc_msgSend(a2, "length")))
              {
                v45 = [a2 data];
                [v45 getBytes:&v46 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v42 |= (v46 & 0x7F) << v40;
              if ((v46 & 0x80) == 0)
              {
                break;
              }

              v40 += 7;
              v11 = v41++ >= 9;
              if (v11)
              {
                goto LABEL_89;
              }
            }

LABEL_88:
            [a2 hasError];
LABEL_89:
            PBRepeatedInt32Add();
            goto LABEL_65;
          }

          v46 = 0;
          v47 = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          while (1)
          {
            v18 = [a2 position];
            if (v18 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
            {
              break;
            }

            v19 = 0;
            v20 = 0;
            v21 = 0;
            while (1)
            {
              v48 = 0;
              v22 = [a2 position] + 1;
              if (v22 >= [a2 position] && (v23 = objc_msgSend(a2, "position") + 1, v23 <= objc_msgSend(a2, "length")))
              {
                v24 = [a2 data];
                [v24 getBytes:&v48 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v21 |= (v48 & 0x7F) << v19;
              if ((v48 & 0x80) == 0)
              {
                break;
              }

              v19 += 7;
              v11 = v20++ >= 9;
              if (v11)
              {
                goto LABEL_42;
              }
            }

            [a2 hasError];
LABEL_42:
            PBRepeatedInt32Add();
          }

LABEL_69:
          PBReaderRecallMark();
          goto LABEL_65;
        }
      }

      else
      {
        if (v14 == 1)
        {
          v15 = PBReaderReadString();
          v16 = 64;
          goto LABEL_64;
        }

        if (v14 == 2)
        {
          v15 = PBReaderReadString();
          v16 = 56;
LABEL_64:
          v32 = *(a1 + v16);
          *(a1 + v16) = v15;

          goto LABEL_65;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_65:
      v33 = [a2 position];
    }

    while (v33 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1002FFE1C(id a1)
{
  v1 = qword_1004E6C78;
  qword_1004E6C78 = &off_100494578;
}

uint64_t APPBNumericParameterReadFrom(uint64_t a1, void *a2)
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
        v24 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24 & 0x7F) << v5;
        if ((v24 & 0x80) == 0)
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

      if ((v12 >> 3) == 1)
      {
        v20 = PBReaderReadString();
        v21 = *(a1 + 8);
        *(a1 + 8) = v20;
      }

      else if ((v12 >> 3) == 2)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        while (1)
        {
          v25 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v25 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v25 & 0x7F) << v13;
          if ((v25 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_34;
          }
        }

        v19 = [a2 hasError] ? 0 : v15;
LABEL_34:
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

      v23 = [a2 position];
    }

    while (v23 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_100300568(id a1)
{
  v1 = qword_1004E6C88;
  qword_1004E6C88 = &off_1004945A0;
}

uint64_t APPBAdEventReadFrom(uint64_t a1, void *a2)
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
        v42 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v42 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v42 & 0x7F) << v5;
        if ((v42 & 0x80) == 0)
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
        if (v13 == 1)
        {
          *(a1 + 40) |= 1u;
          v41 = 0;
          v35 = [a2 position] + 8;
          if (v35 >= [a2 position] && (v36 = objc_msgSend(a2, "position") + 8, v36 <= objc_msgSend(a2, "length")))
          {
            v39 = [a2 data];
            [v39 getBytes:&v41 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          *(a1 + 8) = v41;
        }

        else
        {
          if (v13 != 3)
          {
LABEL_54:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_71;
          }

          v21 = PBReaderReadString();
          v22 = *(a1 + 24);
          *(a1 + 24) = v21;
        }
      }

      else
      {
        switch(v13)
        {
          case 4:
            v23 = 0;
            v24 = 0;
            v25 = 0;
            *(a1 + 40) |= 4u;
            while (1)
            {
              v45 = 0;
              v26 = [a2 position] + 1;
              if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
              {
                v28 = [a2 data];
                [v28 getBytes:&v45 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v25 |= (v45 & 0x7F) << v23;
              if ((v45 & 0x80) == 0)
              {
                break;
              }

              v23 += 7;
              v11 = v24++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_59;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v25;
            }

LABEL_59:
            v38 = 32;
            break;
          case 5:
            v29 = 0;
            v30 = 0;
            v31 = 0;
            *(a1 + 40) |= 2u;
            while (1)
            {
              v44 = 0;
              v32 = [a2 position] + 1;
              if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
              {
                v34 = [a2 data];
                [v34 getBytes:&v44 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v31 |= (v44 & 0x7F) << v29;
              if ((v44 & 0x80) == 0)
              {
                break;
              }

              v29 += 7;
              v11 = v30++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_63;
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

LABEL_63:
            v38 = 16;
            break;
          case 6:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 40) |= 8u;
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
              v11 = v15++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_67;
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

LABEL_67:
            v38 = 36;
            break;
          default:
            goto LABEL_54;
        }

        *(a1 + v38) = v20;
      }

LABEL_71:
      v40 = [a2 position];
    }

    while (v40 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_100301E90(id a1)
{
  v1 = qword_1004E6C98;
  qword_1004E6C98 = &off_1004945C8;
}

uint64_t APPBKeyedParameterListReadFrom(void *a1, void *a2)
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
        v14 = a1[1];
        a1[1] = v13;
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

    v14 = objc_alloc_init(APPBParameter);
    [a1 addParameterList:v14];
    v17[0] = 0;
    v17[1] = 0;
    if (!PBReaderPlaceMark() || !APPBParameterReadFrom(v14, a2))
    {

      return 0;
    }

    PBReaderRecallMark();
    goto LABEL_23;
  }

  return [a2 hasError] ^ 1;
}

void sub_100302B94(id a1)
{
  v1 = qword_1004E6CA8;
  qword_1004E6CA8 = &off_1004945F0;
}

uint64_t APPBLogImpressionResponseReadFrom(uint64_t a1, void *a2)
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

void sub_100302EB4(id a1)
{
  v1 = qword_1004E6CB8;
  qword_1004E6CB8 = &off_100494618;
}

uint64_t APPBAdRequesterReadFrom(uint64_t a1, void *a2)
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
      if ((v12 >> 3) > 10)
      {
        if (v13 == 11)
        {
          v25 = 0;
          v26 = 0;
          v27 = 0;
          *(a1 + 36) |= 1u;
          while (1)
          {
            v34 = 0;
            v28 = [a2 position] + 1;
            if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 1, v29 <= objc_msgSend(a2, "length")))
            {
              v30 = [a2 data];
              [v30 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v27 |= (v34 & 0x7F) << v25;
            if ((v34 & 0x80) == 0)
            {
              break;
            }

            v25 += 7;
            v11 = v26++ >= 9;
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
            v20 = v27;
          }

LABEL_52:
          v31 = 16;
LABEL_53:
          *(a1 + v31) = v20;
          goto LABEL_54;
        }

        if (v13 != 21)
        {
LABEL_32:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_54;
        }

        v21 = PBReaderReadString();
        v22 = 8;
      }

      else
      {
        if (v13 != 1)
        {
          if (v13 != 10)
          {
            goto LABEL_32;
          }

          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 36) |= 2u;
          while (1)
          {
            v35 = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:&v35 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v35 & 0x7F) << v14;
            if ((v35 & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_48;
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

LABEL_48:
          v31 = 32;
          goto LABEL_53;
        }

        v21 = PBReaderReadString();
        v22 = 24;
      }

      v24 = *(a1 + v22);
      *(a1 + v22) = v21;

LABEL_54:
      v32 = [a2 position];
    }

    while (v32 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_100303BB0(id a1, PBCodable *a2, NSError *a3)
{
  v4 = a3;
  v5 = APLogForCategory();
  v6 = v5;
  if (a2 || !v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      LOWORD(v8) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Third party segment update succeeded.", &v8, 2u);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v7 = [(NSError *)v4 localizedDescription];
    v8 = 138543362;
    v9 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Third party segment update failed due to %{public}@.", &v8, 0xCu);
  }
}

uint64_t APPBComponentMetaDataReadFrom(uint64_t a1, void *a2)
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
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v26 = 0;
          v27 = 0;
          v28 = 0;
          *(a1 + 36) |= 2u;
          while (1)
          {
            v37 = 0;
            v29 = [a2 position] + 1;
            if (v29 >= [a2 position] && (v30 = objc_msgSend(a2, "position") + 1, v30 <= objc_msgSend(a2, "length")))
            {
              v31 = [a2 data];
              [v31 getBytes:&v37 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v28 |= (v37 & 0x7F) << v26;
            if ((v37 & 0x80) == 0)
            {
              break;
            }

            v26 += 7;
            v11 = v27++ >= 9;
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
            v25 = v28;
          }

LABEL_53:
          v32 = 16;
          goto LABEL_54;
        }

        if (v13 != 4)
        {
LABEL_26:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_57;
        }

        *(a1 + 36) |= 1u;
        v35 = 0;
        v16 = [a2 position] + 8;
        if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 8, v17 <= objc_msgSend(a2, "length")))
        {
          v33 = [a2 data];
          [v33 getBytes:&v35 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 8) = v35;
      }

      else
      {
        if (v13 == 1)
        {
          v19 = 0;
          v20 = 0;
          v21 = 0;
          *(a1 + 36) |= 4u;
          while (1)
          {
            v38 = 0;
            v22 = [a2 position] + 1;
            if (v22 >= [a2 position] && (v23 = objc_msgSend(a2, "position") + 1, v23 <= objc_msgSend(a2, "length")))
            {
              v24 = [a2 data];
              [v24 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v21 |= (v38 & 0x7F) << v19;
            if ((v38 & 0x80) == 0)
            {
              break;
            }

            v19 += 7;
            v11 = v20++ >= 9;
            if (v11)
            {
              v25 = 0;
              goto LABEL_49;
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

LABEL_49:
          v32 = 32;
LABEL_54:
          *(a1 + v32) = v25;
          goto LABEL_57;
        }

        if (v13 != 2)
        {
          goto LABEL_26;
        }

        v14 = PBReaderReadString();
        v15 = *(a1 + 24);
        *(a1 + 24) = v14;
      }

LABEL_57:
      v34 = [a2 position];
    }

    while (v34 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_100304C08(id a1)
{
  v1 = qword_1004E6CC8;
  qword_1004E6CC8 = &off_100494640;
}

uint64_t APPBTagSetReadFrom(void *a1, void *a2)
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
      break;
    }

    if ((v13 >> 3) == 1)
    {
      v14 = PBReaderReadString();
      if (v14)
      {
        [a1 addTags:v14];
      }
    }

    else
    {
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t APPBTransparencyDetailsReadFrom(uint64_t a1, void *a2)
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
        break;
      }

      v13 = (v12 >> 3) - 1;
      if (v13 >= 4)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        v14 = off_10047E058[v13];
        v15 = PBReaderReadString();
        v16 = *v14;
        v17 = *(a1 + v16);
        *(a1 + v16) = v15;
      }

      v18 = [a2 position];
    }

    while (v18 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t APPBAdLayoutDataReadFrom(uint64_t a1, void *a2)
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
        v14 = *(a1 + 16);
        *(a1 + 16) = v13;
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

    v14 = objc_alloc_init(APPBAdLayoutDetails);
    objc_storeStrong((a1 + 8), v14);
    v17[0] = 0;
    v17[1] = 0;
    if (!PBReaderPlaceMark() || !APPBAdLayoutDetailsReadFrom(v14, a2))
    {

      return 0;
    }

    PBReaderRecallMark();
    goto LABEL_23;
  }

  return [a2 hasError] ^ 1;
}

uint64_t APPBStyleReadFrom(id *a1, void *a2)
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
        LOBYTE(v18) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v18 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v18 & 0x7F) << v5;
        if ((v18 & 0x80) == 0)
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
          v14 = objc_alloc_init(APPBColor);
          v15 = 1;
LABEL_34:
          objc_storeStrong(&a1[v15], v14);
          v18 = 0;
          v19 = 0;
          if (!PBReaderPlaceMark() || !APPBColorReadFrom(v14, a2))
          {
            goto LABEL_42;
          }

LABEL_36:
          PBReaderRecallMark();

          goto LABEL_37;
        }

        if (v13 == 2)
        {
          v14 = objc_alloc_init(APPBBorderStyle);
          objc_storeStrong(a1 + 2, v14);
          v18 = 0;
          v19 = 0;
          if (!PBReaderPlaceMark() || !APPBBorderStyleReadFrom(v14, a2))
          {
LABEL_42:

            return 0;
          }

          goto LABEL_36;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v14 = objc_alloc_init(APPBButtonStyle);
            objc_storeStrong(a1 + 3, v14);
            v18 = 0;
            v19 = 0;
            if (!PBReaderPlaceMark() || !APPBButtonStyleReadFrom(v14, a2))
            {
              goto LABEL_42;
            }

            goto LABEL_36;
          case 4:
            v14 = objc_alloc_init(APPBShadowStyle);
            objc_storeStrong(a1 + 4, v14);
            v18 = 0;
            v19 = 0;
            if (!PBReaderPlaceMark() || !APPBShadowStyleReadFrom(v14, a2))
            {
              goto LABEL_42;
            }

            goto LABEL_36;
          case 5:
            v14 = objc_alloc_init(APPBColor);
            v15 = 5;
            goto LABEL_34;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_37:
      v16 = [a2 position];
    }

    while (v16 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t APPBAdDataReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v109) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v109 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v109 & 0x7F) << v5;
        if ((v109 & 0x80) == 0)
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
      if ((v12 >> 3) <= 199)
      {
        break;
      }

      if (v13 <= 707)
      {
        if (v13 <= 599)
        {
          if (v13 > 399)
          {
            if (v13 == 400)
            {
              v16 = objc_alloc_init(APPBMerchant);
              objc_storeStrong((a1 + 352), v16);
              v109 = 0;
              v110 = 0;
              if (!PBReaderPlaceMark() || (APPBMerchantReadFrom(v16, a2) & 1) == 0)
              {
LABEL_307:

                return 0;
              }

              goto LABEL_246;
            }

            if (v13 == 500)
            {
              v16 = objc_alloc_init(APPBParameter);
              [a1 addNativeMetadata:v16];
              goto LABEL_231;
            }

            if (v13 != 550)
            {
              goto LABEL_251;
            }

            v24 = 0;
            v25 = 0;
            v26 = 0;
            *(a1 + 500) |= 0x400u;
            while (1)
            {
              LOBYTE(v109) = 0;
              v27 = [a2 position] + 1;
              if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
              {
                v29 = [a2 data];
                [v29 getBytes:&v109 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v26 |= (v109 & 0x7F) << v24;
              if ((v109 & 0x80) == 0)
              {
                break;
              }

              v24 += 7;
              v11 = v25++ >= 9;
              if (v11)
              {
                v30 = 0;
                goto LABEL_279;
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

LABEL_279:
            v94 = 208;
            goto LABEL_299;
          }

          if (v13 == 200)
          {
            v16 = objc_alloc_init(APPBAdSpecification);
            objc_storeStrong((a1 + 408), v16);
            v109 = 0;
            v110 = 0;
            if (!PBReaderPlaceMark() || (APPBAdSpecificationReadFrom(v16, a2) & 1) == 0)
            {
              goto LABEL_307;
            }

            goto LABEL_246;
          }

          if (v13 == 300)
          {
            *(a1 + 500) |= 2u;
            v109 = 0;
            v83 = [a2 position] + 8;
            if (v83 >= [a2 position] && (v84 = objc_msgSend(a2, "position") + 8, v84 <= objc_msgSend(a2, "length")))
            {
              v107 = [a2 data];
              [v107 getBytes:&v109 range:{objc_msgSend(a2, "position"), 8}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            v99 = v109;
            v100 = 16;
            goto LABEL_304;
          }

          if (v13 != 301)
          {
            goto LABEL_251;
          }

          v17 = 0;
          v18 = 0;
          v19 = 0;
          *(a1 + 500) |= 0x4000u;
          while (1)
          {
            LOBYTE(v109) = 0;
            v20 = [a2 position] + 1;
            if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
            {
              v22 = [a2 data];
              [v22 getBytes:&v109 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v19 |= (v109 & 0x7F) << v17;
            if ((v109 & 0x80) == 0)
            {
              break;
            }

            v17 += 7;
            v11 = v18++ >= 9;
            if (v11)
            {
              LOBYTE(v23) = 0;
              goto LABEL_274;
            }
          }

          v23 = (v19 != 0) & ~[a2 hasError];
LABEL_274:
          v93 = 496;
          goto LABEL_275;
        }

        if (v13 <= 701)
        {
          switch(v13)
          {
            case 0x258:
              v16 = objc_alloc_init(APPBAdAction);
              [a1 addActions:v16];
              v109 = 0;
              v110 = 0;
              if (!PBReaderPlaceMark() || (APPBAdActionReadFrom(v16, a2) & 1) == 0)
              {
                goto LABEL_307;
              }

              break;
            case 0x2BC:
              v16 = objc_alloc_init(APPBParameter);
              [a1 addITunesMetadata:v16];
LABEL_231:
              v109 = 0;
              v110 = 0;
              if (!PBReaderPlaceMark() || (APPBParameterReadFrom(v16, a2) & 1) == 0)
              {
                goto LABEL_307;
              }

              break;
            case 0x2BD:
              v16 = objc_alloc_init(APPBTransparencyDetails);
              objc_storeStrong((a1 + 456), v16);
              v109 = 0;
              v110 = 0;
              if (!PBReaderPlaceMark() || (APPBTransparencyDetailsReadFrom(v16, a2) & 1) == 0)
              {
                goto LABEL_307;
              }

              break;
            default:
              goto LABEL_251;
          }

LABEL_246:
          PBReaderRecallMark();
LABEL_247:

          goto LABEL_305;
        }

        if (v13 > 705)
        {
          if (v13 == 706)
          {
            v75 = 0;
            v76 = 0;
            v77 = 0;
            *(a1 + 500) |= 0x1000u;
            while (1)
            {
              LOBYTE(v109) = 0;
              v78 = [a2 position] + 1;
              if (v78 >= [a2 position] && (v79 = objc_msgSend(a2, "position") + 1, v79 <= objc_msgSend(a2, "length")))
              {
                v80 = [a2 data];
                [v80 getBytes:&v109 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v77 |= (v109 & 0x7F) << v75;
              if ((v109 & 0x80) == 0)
              {
                break;
              }

              v75 += 7;
              v11 = v76++ >= 9;
              if (v11)
              {
                v30 = 0;
                goto LABEL_264;
              }
            }

            if ([a2 hasError])
            {
              v30 = 0;
            }

            else
            {
              v30 = v77;
            }

LABEL_264:
            v94 = 336;
          }

          else
          {
            v31 = 0;
            v32 = 0;
            v33 = 0;
            *(a1 + 500) |= 0x40u;
            while (1)
            {
              LOBYTE(v109) = 0;
              v34 = [a2 position] + 1;
              if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
              {
                v36 = [a2 data];
                [v36 getBytes:&v109 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v33 |= (v109 & 0x7F) << v31;
              if ((v109 & 0x80) == 0)
              {
                break;
              }

              v31 += 7;
              v11 = v32++ >= 9;
              if (v11)
              {
                v30 = 0;
                goto LABEL_268;
              }
            }

            if ([a2 hasError])
            {
              v30 = 0;
            }

            else
            {
              v30 = v33;
            }

LABEL_268:
            v94 = 120;
          }

          goto LABEL_299;
        }

        if (v13 == 702)
        {
          v16 = objc_alloc_init(APPBNativeMediaCreativeMetadata);
          objc_storeStrong((a1 + 360), v16);
          v109 = 0;
          v110 = 0;
          if (!PBReaderPlaceMark() || (APPBNativeMediaCreativeMetadataReadFrom(v16, a2) & 1) == 0)
          {
            goto LABEL_307;
          }

          goto LABEL_246;
        }

        if (v13 != 705)
        {
          goto LABEL_251;
        }

        v14 = PBReaderReadString();
        v15 = 128;
      }

      else if (v13 > 799)
      {
        if (v13 > 810)
        {
          if (v13 <= 812)
          {
            if (v13 == 811)
            {
              v16 = objc_alloc_init(APPBPolicyData);
              objc_storeStrong((a1 + 376), v16);
              v109 = 0;
              v110 = 0;
              if (!PBReaderPlaceMark() || (APPBPolicyDataReadFrom(v16, a2) & 1) == 0)
              {
                goto LABEL_307;
              }
            }

            else
            {
              v16 = objc_alloc_init(APPBTargetingDimensions);
              objc_storeStrong((a1 + 432), v16);
              v109 = 0;
              v110 = 0;
              if (!PBReaderPlaceMark() || (APPBTargetingDimensionsReadFrom(v16, a2) & 1) == 0)
              {
                goto LABEL_307;
              }
            }

            goto LABEL_246;
          }

          if (v13 == 813)
          {
            *(a1 + 500) |= 0x20u;
            v109 = 0;
            v81 = [a2 position] + 8;
            if (v81 >= [a2 position] && (v82 = objc_msgSend(a2, "position") + 8, v82 <= objc_msgSend(a2, "length")))
            {
              v106 = [a2 data];
              [v106 getBytes:&v109 range:{objc_msgSend(a2, "position"), 8}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            v99 = v109;
            v100 = 48;
LABEL_304:
            *(a1 + v100) = v99;
            goto LABEL_305;
          }

          if (v13 != 814)
          {
LABEL_251:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_305;
          }

          v37 = 0;
          v38 = 0;
          v39 = 0;
          *(a1 + 500) |= 0x80u;
          while (1)
          {
            LOBYTE(v109) = 0;
            v40 = [a2 position] + 1;
            if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
            {
              v42 = [a2 data];
              [v42 getBytes:&v109 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v39 |= (v109 & 0x7F) << v37;
            if ((v109 & 0x80) == 0)
            {
              break;
            }

            v37 += 7;
            v11 = v38++ >= 9;
            if (v11)
            {
              v30 = 0;
              goto LABEL_272;
            }
          }

          if ([a2 hasError])
          {
            v30 = 0;
          }

          else
          {
            v30 = v39;
          }

LABEL_272:
          v94 = 124;
          goto LABEL_299;
        }

        switch(v13)
        {
          case 0x320:
            v14 = PBReaderReadString();
            v15 = 136;
            break;
          case 0x321:
            v14 = PBReaderReadString();
            v15 = 88;
            break;
          case 0x32A:
            v16 = objc_alloc_init(APPBAdFrequencyCapData);
            objc_storeStrong((a1 + 96), v16);
            v109 = 0;
            v110 = 0;
            if (!PBReaderPlaceMark() || (APPBAdFrequencyCapDataReadFrom(v16, a2) & 1) == 0)
            {
              goto LABEL_307;
            }

            goto LABEL_246;
          default:
            goto LABEL_251;
        }
      }

      else if (v13 <= 710)
      {
        if (v13 == 708)
        {
          v14 = PBReaderReadString();
          v15 = 80;
        }

        else
        {
          if (v13 == 709)
          {
            v85 = 0;
            v86 = 0;
            v87 = 0;
            *(a1 + 500) |= 0x2000u;
            while (1)
            {
              LOBYTE(v109) = 0;
              v88 = [a2 position] + 1;
              if (v88 >= [a2 position] && (v89 = objc_msgSend(a2, "position") + 1, v89 <= objc_msgSend(a2, "length")))
              {
                v90 = [a2 data];
                [v90 getBytes:&v109 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v87 |= (v109 & 0x7F) << v85;
              if ((v109 & 0x80) == 0)
              {
                break;
              }

              v85 += 7;
              v11 = v86++ >= 9;
              if (v11)
              {
                v30 = 0;
                goto LABEL_283;
              }
            }

            if ([a2 hasError])
            {
              v30 = 0;
            }

            else
            {
              v30 = v87;
            }

LABEL_283:
            v94 = 464;
LABEL_299:
            *(a1 + v94) = v30;
            goto LABEL_305;
          }

          v14 = PBReaderReadString();
          v15 = 472;
        }
      }

      else
      {
        if (v13 > 729)
        {
          if (v13 == 730)
          {
            v16 = objc_alloc_init(APPBAdJourneyStartRelayValue);
            [a1 addJourneyStartRelayValues:v16];
            v109 = 0;
            v110 = 0;
            if (!PBReaderPlaceMark() || (APPBAdJourneyStartRelayValueReadFrom(v16, a2) & 1) == 0)
            {
              goto LABEL_307;
            }
          }

          else
          {
            if (v13 != 750)
            {
              goto LABEL_251;
            }

            v16 = objc_alloc_init(APPBAdLayoutData);
            [a1 addAdLayoutData:v16];
            v109 = 0;
            v110 = 0;
            if (!PBReaderPlaceMark() || (APPBAdLayoutDataReadFrom(v16, a2) & 1) == 0)
            {
              goto LABEL_307;
            }
          }

          goto LABEL_246;
        }

        if (v13 == 711)
        {
          v14 = PBReaderReadString();
          v15 = 112;
        }

        else
        {
          if (v13 != 715)
          {
            goto LABEL_251;
          }

          v14 = PBReaderReadString();
          v15 = 224;
        }
      }

LABEL_250:
      v91 = *(a1 + v15);
      *(a1 + v15) = v14;

LABEL_305:
      v108 = [a2 position];
      if (v108 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    switch(v13)
    {
      case 1:
        v14 = PBReaderReadString();
        v15 = 168;
        goto LABEL_250;
      case 2:
        v14 = PBReaderReadString();
        v15 = 176;
        goto LABEL_250;
      case 3:
        v14 = PBReaderReadString();
        v15 = 480;
        goto LABEL_250;
      case 4:
        v14 = PBReaderReadData();
        v15 = 288;
        goto LABEL_250;
      case 5:
        v14 = PBReaderReadString();
        v15 = 248;
        goto LABEL_250;
      case 6:
        v55 = 0;
        v56 = 0;
        v57 = 0;
        while (1)
        {
          LOBYTE(v109) = 0;
          v58 = [a2 position] + 1;
          if (v58 >= [a2 position] && (v59 = objc_msgSend(a2, "position") + 1, v59 <= objc_msgSend(a2, "length")))
          {
            v60 = [a2 data];
            [v60 getBytes:&v109 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v57 |= (v109 & 0x7F) << v55;
          if ((v109 & 0x80) == 0)
          {
            break;
          }

          v55 += 7;
          v11 = v56++ >= 9;
          if (v11)
          {
            v30 = 0;
            goto LABEL_258;
          }
        }

        if ([a2 hasError])
        {
          v30 = 0;
        }

        else
        {
          v30 = v57;
        }

LABEL_258:
        v94 = 280;
        goto LABEL_299;
      case 7:
        *(a1 + 500) |= 1u;
        v109 = 0;
        v53 = [a2 position] + 8;
        if (v53 >= [a2 position] && (v54 = objc_msgSend(a2, "position") + 8, v54 <= objc_msgSend(a2, "length")))
        {
          v101 = [a2 data];
          [v101 getBytes:&v109 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v99 = v109;
        v100 = 8;
        goto LABEL_304;
      case 8:
        v16 = PBReaderReadString();
        if (v16)
        {
          [a1 addTrackingURL:v16];
        }

        goto LABEL_247;
      case 9:
        v14 = PBReaderReadString();
        v15 = 440;
        goto LABEL_250;
      case 15:
        v61 = 0;
        v62 = 0;
        v63 = 0;
        *(a1 + 500) |= 0x10000u;
        while (1)
        {
          LOBYTE(v109) = 0;
          v64 = [a2 position] + 1;
          if (v64 >= [a2 position] && (v65 = objc_msgSend(a2, "position") + 1, v65 <= objc_msgSend(a2, "length")))
          {
            v66 = [a2 data];
            [v66 getBytes:&v109 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v63 |= (v109 & 0x7F) << v61;
          if ((v109 & 0x80) == 0)
          {
            break;
          }

          v61 += 7;
          v11 = v62++ >= 9;
          if (v11)
          {
            LOBYTE(v23) = 0;
            goto LABEL_260;
          }
        }

        v23 = (v63 != 0) & ~[a2 hasError];
LABEL_260:
        v93 = 498;
        goto LABEL_275;
      case 16:
        v14 = PBReaderReadString();
        v15 = 64;
        goto LABEL_250;
      case 35:
        v16 = PBReaderReadString();
        if (v16)
        {
          [a1 addConfirmedClickPixelURLs:v16];
        }

        goto LABEL_247;
      case 36:
        v14 = PBReaderReadString();
        v15 = 160;
        goto LABEL_250;
      case 37:
        v16 = objc_alloc_init(APPBVideoAsset);
        [a1 addVideoAsset:v16];
        v109 = 0;
        v110 = 0;
        if (!PBReaderPlaceMark() || (APPBVideoAssetReadFrom(v16, a2) & 1) == 0)
        {
          goto LABEL_307;
        }

        goto LABEL_246;
      case 38:
        v16 = objc_alloc_init(APPBMediaFiles);
        objc_storeStrong((a1 + 344), v16);
        v109 = 0;
        v110 = 0;
        if (!PBReaderPlaceMark() || (APPBMediaFilesReadFrom(v16, a2) & 1) == 0)
        {
          goto LABEL_307;
        }

        goto LABEL_246;
      case 43:
        v14 = PBReaderReadString();
        v15 = 144;
        goto LABEL_250;
      case 45:
        v14 = PBReaderReadString();
        v15 = 400;
        goto LABEL_250;
      case 46:
        v14 = PBReaderReadString();
        v15 = 56;
        goto LABEL_250;
      case 49:
        v43 = 0;
        v44 = 0;
        v45 = 0;
        *(a1 + 500) |= 0x8000u;
        break;
      case 50:
        *(a1 + 500) |= 0x100u;
        LODWORD(v109) = 0;
        v69 = [a2 position] + 4;
        if (v69 >= [a2 position] && (v70 = objc_msgSend(a2, "position") + 4, v70 <= objc_msgSend(a2, "length")))
        {
          v103 = [a2 data];
          [v103 getBytes:&v109 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        v96 = v109;
        v97 = 152;
        goto LABEL_294;
      case 51:
        *(a1 + 500) |= 0x200u;
        LODWORD(v109) = 0;
        v49 = [a2 position] + 4;
        if (v49 >= [a2 position] && (v50 = objc_msgSend(a2, "position") + 4, v50 <= objc_msgSend(a2, "length")))
        {
          v95 = [a2 data];
          [v95 getBytes:&v109 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        v96 = v109;
        v97 = 156;
LABEL_294:
        *(a1 + v97) = v96;
        goto LABEL_305;
      case 52:
        v16 = PBReaderReadString();
        if (v16)
        {
          [a1 addScreenSaverImageURL:v16];
        }

        goto LABEL_247;
      case 54:
        v16 = PBReaderReadString();
        if (v16)
        {
          [a1 addExcludeTag:v16];
        }

        goto LABEL_247;
      case 56:
        v14 = PBReaderReadString();
        v15 = 264;
        goto LABEL_250;
      case 57:
        v14 = PBReaderReadString();
        v15 = 256;
        goto LABEL_250;
      case 58:
        v16 = PBReaderReadString();
        if (v16)
        {
          [a1 addRewardTokens:v16];
        }

        goto LABEL_247;
      case 59:
        *(a1 + 500) |= 8u;
        v109 = 0;
        v51 = [a2 position] + 8;
        if (v51 >= [a2 position] && (v52 = objc_msgSend(a2, "position") + 8, v52 <= objc_msgSend(a2, "length")))
        {
          v98 = [a2 data];
          [v98 getBytes:&v109 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v99 = v109;
        v100 = 32;
        goto LABEL_304;
      case 63:
        v16 = objc_alloc_init(APPBTagSet);
        [a1 addMatchTagClause:v16];
        v109 = 0;
        v110 = 0;
        if (!PBReaderPlaceMark() || (APPBTagSetReadFrom(v16, a2) & 1) == 0)
        {
          goto LABEL_307;
        }

        goto LABEL_246;
      case 70:
        *(a1 + 500) |= 0x10u;
        v109 = 0;
        v67 = [a2 position] + 8;
        if (v67 >= [a2 position] && (v68 = objc_msgSend(a2, "position") + 8, v68 <= objc_msgSend(a2, "length")))
        {
          v102 = [a2 data];
          [v102 getBytes:&v109 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v99 = v109;
        v100 = 40;
        goto LABEL_304;
      case 71:
        v14 = PBReaderReadString();
        v15 = 320;
        goto LABEL_250;
      case 72:
        v14 = PBReaderReadString();
        v15 = 240;
        goto LABEL_250;
      case 73:
        v14 = PBReaderReadString();
        v15 = 200;
        goto LABEL_250;
      case 74:
        *(a1 + 500) |= 4u;
        v109 = 0;
        v71 = [a2 position] + 8;
        if (v71 >= [a2 position] && (v72 = objc_msgSend(a2, "position") + 8, v72 <= objc_msgSend(a2, "length")))
        {
          v104 = [a2 data];
          [v104 getBytes:&v109 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 24) = v109;
        goto LABEL_305;
      case 75:
        v16 = objc_alloc_init(APPBGeofence);
        [a1 addGeofences:v16];
        v109 = 0;
        v110 = 0;
        if (!PBReaderPlaceMark() || (APPBGeofenceReadFrom(v16, a2) & 1) == 0)
        {
          goto LABEL_307;
        }

        goto LABEL_246;
      case 76:
        v14 = PBReaderReadString();
        v15 = 416;
        goto LABEL_250;
      case 77:
        v14 = PBReaderReadString();
        v15 = 424;
        goto LABEL_250;
      case 78:
        v16 = objc_alloc_init(APPBAdSize);
        [a1 addCreativeSizes:v16];
        v109 = 0;
        v110 = 0;
        if (!PBReaderPlaceMark() || (APPBAdSizeReadFrom(v16, a2) & 1) == 0)
        {
          goto LABEL_307;
        }

        goto LABEL_246;
      case 80:
        *(a1 + 500) |= 0x800u;
        LODWORD(v109) = 0;
        v73 = [a2 position] + 4;
        if (v73 >= [a2 position] && (v74 = objc_msgSend(a2, "position") + 4, v74 <= objc_msgSend(a2, "length")))
        {
          v105 = [a2 data];
          [v105 getBytes:&v109 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        v30 = v109;
        v94 = 312;
        goto LABEL_299;
      case 81:
        v16 = objc_alloc_init(APPBInstallAttribution);
        objc_storeStrong((a1 + 296), v16);
        v109 = 0;
        v110 = 0;
        if (!PBReaderPlaceMark() || (APPBInstallAttributionReadFrom(v16, a2) & 1) == 0)
        {
          goto LABEL_307;
        }

        goto LABEL_246;
      default:
        goto LABEL_251;
    }

    while (1)
    {
      LOBYTE(v109) = 0;
      v46 = [a2 position] + 1;
      if (v46 >= [a2 position] && (v47 = objc_msgSend(a2, "position") + 1, v47 <= objc_msgSend(a2, "length")))
      {
        v48 = [a2 data];
        [v48 getBytes:&v109 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v45 |= (v109 & 0x7F) << v43;
      if ((v109 & 0x80) == 0)
      {
        break;
      }

      v43 += 7;
      v11 = v44++ >= 9;
      if (v11)
      {
        LOBYTE(v23) = 0;
        goto LABEL_254;
      }
    }

    v23 = (v45 != 0) & ~[a2 hasError];
LABEL_254:
    v93 = 497;
LABEL_275:
    *(a1 + v93) = v23;
    goto LABEL_305;
  }

  return [a2 hasError] ^ 1;
}

void sub_1003169FC(id a1)
{
  v1 = qword_1004E6CD8;
  qword_1004E6CD8 = &off_100494668;
}

uint64_t APPBLogAdContentErrorRequestReadFrom(uint64_t a1, void *a2)
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
      if ((v12 >> 3) <= 3)
      {
        switch(v13)
        {
          case 1:
            v17 = objc_alloc_init(APPBLogMetaData);
            objc_storeStrong((a1 + 48), v17);
            v34[0] = 0;
            v34[1] = 0;
            if (!PBReaderPlaceMark() || !APPBLogMetaDataReadFrom(v17, a2))
            {

              return 0;
            }

            PBReaderRecallMark();
            goto LABEL_47;
          case 2:
            v25 = 0;
            v26 = 0;
            v27 = 0;
            *(a1 + 64) |= 1u;
            while (1)
            {
              LOBYTE(v34[0]) = 0;
              v28 = [a2 position] + 1;
              if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 1, v29 <= objc_msgSend(a2, "length")))
              {
                v30 = [a2 data];
                [v30 getBytes:v34 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v27 |= (v34[0] & 0x7F) << v25;
              if ((v34[0] & 0x80) == 0)
              {
                break;
              }

              v25 += 7;
              v11 = v26++ >= 9;
              if (v11)
              {
                v24 = 0;
                goto LABEL_64;
              }
            }

            if ([a2 hasError])
            {
              v24 = 0;
            }

            else
            {
              v24 = v27;
            }

LABEL_64:
            v31 = 16;
            goto LABEL_65;
          case 3:
            v14 = PBReaderReadString();
            v15 = 8;
            goto LABEL_26;
        }
      }

      else if (v13 > 5)
      {
        if (v13 == 6)
        {
          v17 = PBReaderReadString();
          if (v17)
          {
            [a1 addLines:v17];
          }

          goto LABEL_47;
        }

        if (v13 == 7)
        {
          v17 = PBReaderReadString();
          if (v17)
          {
            [a1 addFunctionNames:v17];
          }

LABEL_47:

          goto LABEL_66;
        }
      }

      else
      {
        if (v13 == 4)
        {
          v18 = 0;
          v19 = 0;
          v20 = 0;
          *(a1 + 64) |= 2u;
          while (1)
          {
            LOBYTE(v34[0]) = 0;
            v21 = [a2 position] + 1;
            if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 1, v22 <= objc_msgSend(a2, "length")))
            {
              v23 = [a2 data];
              [v23 getBytes:v34 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v20 |= (v34[0] & 0x7F) << v18;
            if ((v34[0] & 0x80) == 0)
            {
              break;
            }

            v18 += 7;
            v11 = v19++ >= 9;
            if (v11)
            {
              v24 = 0;
              goto LABEL_60;
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

LABEL_60:
          v31 = 32;
LABEL_65:
          *(a1 + v31) = v24;
          goto LABEL_66;
        }

        if (v13 == 5)
        {
          v14 = PBReaderReadString();
          v15 = 56;
LABEL_26:
          v16 = *(a1 + v15);
          *(a1 + v15) = v14;

          goto LABEL_66;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_66:
      v32 = [a2 position];
    }

    while (v32 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_100318190(id a1)
{
  v1 = qword_1004E6CE8;
  qword_1004E6CE8 = &off_100494690;
}

uint64_t APPBAdBatchRequestReadFrom(id *a1, void *a2)
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
        LOBYTE(v17) = 0;
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
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 6)
      {
        switch(v13)
        {
          case 7:
            v14 = objc_alloc_init(APPBCachedAd);
            [a1 addCachedAds:v14];
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !APPBCachedAdReadFrom(v14, a2))
            {
LABEL_47:

              return 0;
            }

LABEL_40:
            PBReaderRecallMark();
LABEL_41:

            goto LABEL_42;
          case 8:
            v14 = PBReaderReadString();
            if (v14)
            {
              [a1 addTags:v14];
            }

            goto LABEL_41;
          case 0x14:
            v14 = objc_alloc_init(APPBAdRequester);
            [a1 addRequesters:v14];
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !APPBAdRequesterReadFrom(v14, a2))
            {
              goto LABEL_47;
            }

            goto LABEL_40;
        }
      }

      else
      {
        switch(v13)
        {
          case 1:
            v14 = objc_alloc_init(APPBRequestProperties);
            objc_storeStrong(a1 + 2, v14);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !APPBRequestPropertiesReadFrom(v14, a2))
            {
              goto LABEL_47;
            }

            goto LABEL_40;
          case 2:
            v14 = objc_alloc_init(APPBAdSpecification);
            objc_storeStrong(a1 + 5, v14);
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !APPBAdSpecificationReadFrom(v14, a2))
            {
              goto LABEL_47;
            }

            goto LABEL_40;
          case 5:
            v14 = objc_alloc_init(APPBResourceCacheEntry);
            [a1 addResourceCacheEntries:v14];
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !APPBResourceCacheEntryReadFrom(v14, a2))
            {
              goto LABEL_47;
            }

            goto LABEL_40;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_42:
      v15 = [a2 position];
    }

    while (v15 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_100319E1C(id a1)
{
  v1 = qword_1004E6CF8;
  qword_1004E6CF8 = &off_1004946B8;
}

uint64_t APPBLogSubscriptionEventRequestReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v30[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v30 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v30[0] & 0x7F) << v5;
        if ((v30[0] & 0x80) == 0)
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
      if ((v12 >> 3) <= 4)
      {
        break;
      }

      if (v13 <= 6)
      {
        if (v13 == 5)
        {
          v14 = PBReaderReadString();
          v15 = 56;
          goto LABEL_45;
        }

        if (v13 == 6)
        {
          v16 = 0;
          v17 = 0;
          v18 = 0;
          *(a1 + 72) |= 2u;
          while (1)
          {
            LOBYTE(v30[0]) = 0;
            v19 = [a2 position] + 1;
            if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
            {
              v21 = [a2 data];
              [v21 getBytes:v30 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v18 |= (v30[0] & 0x7F) << v16;
            if ((v30[0] & 0x80) == 0)
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
          *(a1 + 32) = v22;
          goto LABEL_46;
        }

LABEL_51:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_46;
      }

      if (v13 == 7)
      {
        *(a1 + 72) |= 1u;
        v30[0] = 0;
        v26 = [a2 position] + 8;
        if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 8, v27 <= objc_msgSend(a2, "length")))
        {
          v28 = [a2 data];
          [v28 getBytes:v30 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 8) = v30[0];
        goto LABEL_46;
      }

      if (v13 != 8)
      {
        goto LABEL_51;
      }

      v23 = objc_alloc_init(APPBParameter);
      [a1 addInfo:v23];
      v30[0] = 0;
      v30[1] = 0;
      if (!PBReaderPlaceMark() || !APPBParameterReadFrom(v23, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_46:
      v25 = [a2 position];
      if (v25 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 > 2)
    {
      if (v13 == 3)
      {
        v14 = PBReaderReadData();
        v15 = 24;
        goto LABEL_45;
      }

      if (v13 == 4)
      {
        v14 = PBReaderReadString();
        v15 = 64;
        goto LABEL_45;
      }
    }

    else
    {
      if (v13 == 1)
      {
        v14 = PBReaderReadData();
        v15 = 40;
        goto LABEL_45;
      }

      if (v13 == 2)
      {
        v14 = PBReaderReadData();
        v15 = 16;
LABEL_45:
        v24 = *(a1 + v15);
        *(a1 + v15) = v14;

        goto LABEL_46;
      }
    }

    goto LABEL_51;
  }

  return [a2 hasError] ^ 1;
}

void sub_10031B59C(id a1)
{
  v1 = qword_1004E6D08;
  qword_1004E6D08 = &off_1004946E0;
}

uint64_t APPBServerErrorResponseReadFrom(uint64_t a1, void *a2)
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

uint64_t APPBButtonReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v27[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v27 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v27[0] & 0x7F) << v5;
        if ((v27[0] & 0x80) == 0)
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

      if (v13 == 3)
      {
        v14 = PBReaderReadString();
        v15 = 8;
        goto LABEL_38;
      }

      if (v13 != 4)
      {
        goto LABEL_26;
      }

      v16 = objc_alloc_init(APPBButtonStyle);
      objc_storeStrong((a1 + 16), v16);
      v27[0] = 0;
      v27[1] = 0;
      if (!PBReaderPlaceMark() || !APPBButtonStyleReadFrom(v16, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_43:
      v25 = [a2 position];
      if (v25 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 1)
    {
      v17 = 0;
      v18 = 0;
      v19 = 0;
      *(a1 + 40) |= 1u;
      while (1)
      {
        LOBYTE(v27[0]) = 0;
        v20 = [a2 position] + 1;
        if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
        {
          v22 = [a2 data];
          [v22 getBytes:v27 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v19 |= (v27[0] & 0x7F) << v17;
        if ((v27[0] & 0x80) == 0)
        {
          break;
        }

        v17 += 7;
        v11 = v18++ >= 9;
        if (v11)
        {
          v23 = 0;
          goto LABEL_42;
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

LABEL_42:
      *(a1 + 24) = v23;
      goto LABEL_43;
    }

    if (v13 == 2)
    {
      v14 = PBReaderReadString();
      v15 = 32;
LABEL_38:
      v24 = *(a1 + v15);
      *(a1 + v15) = v14;

      goto LABEL_43;
    }

LABEL_26:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_43;
  }

  return [a2 hasError] ^ 1;
}

id sub_10031C920()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AggregatedTimeSpentUtilities();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *sub_10031C978(unint64_t a1)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_19:
    v3 = sub_1003997F8();
    if (!v3)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  v4 = 0;
  p_superclass = &OBJC_METACLASS___APPBTargetingCriteria.superclass;
  do
  {
    for (i = v4; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = sub_100399708();
      }

      else
      {
        if (i >= *(v2 + 16))
        {
          goto LABEL_18;
        }

        v7 = *(a1 + 8 * i + 32);
      }

      v8 = v7;
      v4 = i + 1;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v9 = [objc_allocWithZone((p_superclass + 174)) init];
      if (v9)
      {
        break;
      }

      if (v4 == v3)
      {
        return _swiftEmptyArrayStorage;
      }
    }

    v10 = v9;
    [v9 setDurationInSeconds:*&v8[OBJC_IVAR____TtC15LegacyInterface24AggregatedTimeSpentEntry_durationInSeconds]];
    v15 = objc_opt_self();
    v11 = v10;
    sub_1003976E8();
    [v15 roundedTimestampFromInterval:?];
    [v11 setEventTimestamp:?];

    [v11 setRelevantIdentifierType:15002];
    v12 = v11;
    v13 = sub_100398F28();
    [v12 setIdentifier:v13];

    sub_100399168();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1003991B8();
    }

    sub_1003991E8();
    p_superclass = (&OBJC_METACLASS___APPBTargetingCriteria + 8);
  }

  while (v4 != v3);
  return _swiftEmptyArrayStorage;
}

unint64_t sub_10031CBB8()
{
  result = qword_1004D9A08;
  if (!qword_1004D9A08)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1004D9A08);
  }

  return result;
}

id sub_10031CCF8(void *a1, uint64_t a2)
{
  v5 = sub_1001E27A8(&qword_1004D4AB8);
  __chkstk_darwin(v5 - 8);
  v7 = v30 - v6;
  v8 = sub_1003974E8();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_allocWithZone(APTapAction) init];
  v13 = objc_opt_self();
  v14 = [a1 action];
  v31 = v13;
  [v12 setActionType:{objc_msgSend(v13, "clickActionTypeToTapActionType:", v14)}];
  v15 = [a1 actionURL];
  if (v15)
  {
    v30[0] = a2;
    v30[1] = v2;
    v16 = v15;
    sub_100398F58();

    sub_1003974A8();

    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      sub_10031D190(v7);
      v17 = objc_opt_self();
      v18 = sub_100398F28();
      [v17 validationErrorWithCode:4512 andReason:v18];

      swift_willThrow();
      return v12;
    }

    (*(v9 + 32))(v11, v7, v8);
    sub_100397438(v19);
    v21 = v20;
    [v12 setActionURL:v20];

    (*(v9 + 8))(v11, v8);
    a2 = v30[0];
  }

  [a1 confirmedClickTimeInterval];
  [v12 setConfirmedClickInterval:v22];
  [v12 setOpensInstalledApp:{objc_msgSend(a1, "prefersToOpenInstalledApp")}];
  if ([a1 hasAdamIdentifier])
  {
    [a1 adamIdentifier];
    isa = sub_100399B98().super.super.isa;
    [v12 setAdamIdentifier:isa];
  }

  v24 = [a1 hasAppStoreViewTemplate];
  v25 = v31;
  if (v24)
  {
    [v12 setTemplateType:{objc_msgSend(v31, "AppStoreViewTemplateTypeToTemplateType:", objc_msgSend(a1, "appStoreViewTemplate"))}];
  }

  if (a2)
  {
    sub_10031D144();
    v26 = sub_100399178().super.isa;
    v27 = [v25 parameterArrayToDictionary:v26];

    sub_100398E68();
    v28 = sub_100398E48().super.isa;

    [v12 setITunesMetadata:v28];
  }

  return v12;
}

unint64_t sub_10031D144()
{
  result = qword_1004D9A10;
  if (!qword_1004D9A10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1004D9A10);
  }

  return result;
}

uint64_t sub_10031D190(uint64_t a1)
{
  v2 = sub_1001E27A8(&qword_1004D4AB8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id AggregatedTimeSpentStoreDatabase.__allocating_init(database:)(void *a1)
{
  v2 = sub_10031F7AC(a1);

  return v2;
}

id AggregatedTimeSpentStoreDatabase.init(database:)(void *a1)
{
  sub_100206B54();
  v3 = a1;
  sub_1003995A8();
  sub_100397D38();
  swift_allocObject();
  *&v1[OBJC_IVAR____TtC15LegacyInterface32AggregatedTimeSpentStoreDatabase_database] = sub_100397D28();
  v6.receiver = v1;
  v6.super_class = type metadata accessor for AggregatedTimeSpentStoreDatabase();
  v4 = objc_msgSendSuper2(&v6, "init");

  return v4;
}

void *AggregatedTimeSpentStoreDatabase.retrieveTimeSpentEntries(olderThanDate:)(uint64_t *a1)
{
  v3 = 0;
  v4 = 0;
  while (1)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = sub_10031D9C4(a1, 50, v3);
    if (!v6)
    {
      v10 = 0;
      goto LABEL_9;
    }

    v7 = v6;
    if (v4)
    {
      v8 = v4;
    }

    else
    {
      v8 = _swiftEmptyArrayStorage;
    }

    v46 = v8;

    sub_10031EE68(v9);
    v4 = v46;
    if (!(v7 >> 62))
    {
      v10 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);

LABEL_9:
      objc_autoreleasePoolPop(v5);
      goto LABEL_10;
    }

    v10 = sub_1003997F8();

    objc_autoreleasePoolPop(v5);
    if (v10 < 0)
    {
      break;
    }

LABEL_10:
    v11 = __CFADD__(v3, v10);
    v3 += v10;
    if (v11)
    {
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      v12 = sub_1003997F8();
      if (!v12)
      {
        goto LABEL_45;
      }

LABEL_18:
      v13 = 0;
      v43 = v12;
      v44 = v4 & 0xC000000000000001;
      while (1)
      {
        if (v44)
        {
          v14 = sub_100399708();
        }

        else
        {
          if (v13 >= *(v1 + 16))
          {
            goto LABEL_41;
          }

          v14 = *(v4 + 8 * v13 + 32);
        }

        v15 = v14;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_40;
        }

        v45 = v13 + 1;
        v16 = v4;
        v4 = *&v14[OBJC_IVAR____TtC15LegacyInterface24AggregatedTimeSpentEntry_clientIdentifier];
        v17 = *&v14[OBJC_IVAR____TtC15LegacyInterface24AggregatedTimeSpentEntry_clientIdentifier + 8];

        v18 = v15;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v46 = a1;
        v20 = sub_1001EC1DC(v4, v17);
        v22 = a1[2];
        v23 = (v21 & 1) == 0;
        v24 = __OFADD__(v22, v23);
        v25 = v22 + v23;
        if (v24)
        {
          goto LABEL_42;
        }

        v26 = v21;
        if (a1[3] < v25)
        {
          break;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_28;
        }

        v29 = v20;
        sub_10031F2BC();
        v20 = v29;
        a1 = v46;
        if ((v26 & 1) == 0)
        {
LABEL_32:
          a1[(v20 >> 6) + 8] |= 1 << v20;
          v30 = (a1[6] + 16 * v20);
          *v30 = v4;
          v30[1] = v17;
          *(a1[7] + 8 * v20) = _swiftEmptyArrayStorage;
          v31 = a1[2];
          v24 = __OFADD__(v31, 1);
          v32 = v31 + 1;
          if (v24)
          {
            goto LABEL_43;
          }

          a1[2] = v32;
          goto LABEL_34;
        }

LABEL_29:
        v28 = v20;

        v20 = v28;
LABEL_34:
        v33 = (a1[7] + 8 * v20);
        sub_100399168();
        v4 = v16;
        if (*((*v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1003991B8();
        }

        sub_1003991E8();

        ++v13;
        if (v45 == v43)
        {
          goto LABEL_45;
        }
      }

      sub_10031F014(v25, isUniquelyReferenced_nonNull_native);
      a1 = v46;
      v20 = sub_1001EC1DC(v4, v17);
      if ((v26 & 1) != (v27 & 1))
      {
        goto LABEL_50;
      }

LABEL_28:
      if ((v26 & 1) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_29;
    }

    if (v10 != 50)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_15:
  if (!v4)
  {
    sub_1003993D8();
    sub_100206B54();
    v34 = sub_1003995A8();
    sub_1001E27A8(&qword_1004D5860);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_1003C9930;
    v36 = sub_100397658();
    v38 = v37;
    *(v35 + 56) = &type metadata for String;
    *(v35 + 64) = sub_100206BA0();
    *(v35 + 32) = v36;
    *(v35 + 40) = v38;
    sub_100398B98();

    return 0;
  }

  a1 = sub_10031F8BC(_swiftEmptyArrayStorage);
  v1 = v4 & 0xFFFFFFFFFFFFFF8;
  if (v4 >> 62)
  {
    goto LABEL_44;
  }

  v12 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v12)
  {
    goto LABEL_18;
  }

LABEL_45:
  v40 = a1[2];
  if (v40)
  {
    v41 = sub_10031EDE4(a1[2], 0);
    v42 = sub_10031F658(&v46, v41 + 4, v40, a1);
    sub_10027FF7C();
    if (v42 == v40)
    {

      return v41;
    }

    else
    {
      __break(1u);
LABEL_50:
      result = sub_100399A98();
      __break(1u);
    }
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }

  return result;
}

uint64_t sub_10031D9C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v18 = 0;
  *(&v18 + 1) = 0xE000000000000000;
  sub_1003996F8(77);
  v22._countAndFlagsBits = 0xD000000000000041;
  v22._object = 0x80000001004366F0;
  sub_100399068(v22);
  v23._countAndFlagsBits = sub_100399998();
  sub_100399068(v23);

  v24._countAndFlagsBits = 0x2054455346464F20;
  v24._object = 0xE800000000000000;
  sub_100399068(v24);
  v17[0] = a3;
  v25._countAndFlagsBits = sub_100399998();
  sub_100399068(v25);

  sub_1001E27A8(&unk_1004DCD00);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1003C9930;
  v6 = sub_100397748();
  *(v5 + 56) = v6;
  *(v5 + 64) = &protocol witness table for Date;
  v7 = sub_1001E6B7C((v5 + 32));
  (*(*(v6 - 8) + 16))(v7, a1, v6);
  type metadata accessor for AggregatedTimeSpentEntry();
  sub_100397D08();

  if (!v20)
  {
    v14 = v18;
    v15 = v19;
    v16 = v21;
LABEL_8:
    sub_1003993E8();
    sub_100206B54();
    v12 = sub_1003995A8();
    sub_100398B98();

    if (v20)
    {
      sub_100003894(&v18);
    }

    return 0;
  }

  sub_100003554(&v18, &v14);
  if (!*(&v15 + 1))
  {
    goto LABEL_8;
  }

  sub_100004A68(&v14, v17);
  v8 = sub_1000035B8(v17, v17[3]);
  __chkstk_darwin(v8);
  (*(v10 + 16))(&v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_100399208();
  if (v20)
  {
    sub_100003894(&v18);
  }

  sub_100003894(v17);
  return v11;
}

id sub_10031DD70@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_100003554(a1, v5);
  v3 = objc_allocWithZone(type metadata accessor for AggregatedTimeSpentEntry());
  result = AggregatedTimeSpentEntry.init(cursor:)(v5);
  *a2 = result;
  return result;
}

Swift::Bool __swiftcall AggregatedTimeSpentStoreDatabase.removeEntries(_:)(Swift::OpaquePointer a1)
{
  sub_1003993D8();
  sub_100206B54();
  v2 = sub_1003995A8();
  sub_1001E27A8(&qword_1004D5860);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1003C9930;
  type metadata accessor for AggregatedTimeSpentEntry();
  v4 = sub_1003991C8();
  v6 = v5;
  *(v3 + 56) = &type metadata for String;
  v18 = sub_100206BA0();
  *(v3 + 64) = v18;
  *(v3 + 32) = v4;
  *(v3 + 40) = v6;
  sub_100398B98();

  if (a1._rawValue >> 62)
  {
    if (sub_1003997F8())
    {
      v7 = sub_1003997F8();
      goto LABEL_3;
    }

LABEL_8:
    sub_1003993D8();
    v16 = sub_1003995A8();
    sub_100398B98();

    v11 = 1;
    return v11 & 1;
  }

  v7 = *((a1._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v7)
  {
    goto LABEL_8;
  }

LABEL_3:
  sub_100281694(0x3F202C3F202C3F28, 0xE900000000000029, v7);
  sub_1001E27A8(&unk_1004D9A20);
  sub_1001E6C28(&qword_1004D8E78, &unk_1004D9A20);
  v8 = sub_100398ED8();
  v10 = v9;

  v19 = _swiftEmptyArrayStorage;
  sub_10031E510(a1._rawValue, &v19);
  sub_1003996F8(102);
  v20._countAndFlagsBits = 0xD000000000000063;
  v20._object = 0x8000000100436320;
  sub_100399068(v20);
  v21._countAndFlagsBits = v8;
  v21._object = v10;
  sub_100399068(v21);

  v22._countAndFlagsBits = 41;
  v22._object = 0xE100000000000000;
  sub_100399068(v22);
  sub_10028037C(v19);
  v11 = sub_100397CD8();

  if ((v11 & 1) == 0)
  {
    sub_1003993E8();
    v12 = sub_1003995A8();
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1003C9930;
    sub_1001E27A8(&unk_1004D9A30);
    v14 = sub_1003991C8();
    *(v13 + 56) = &type metadata for String;
    *(v13 + 64) = v18;
    *(v13 + 32) = v14;
    *(v13 + 40) = v15;
    sub_100398B98();
  }

  return v11 & 1;
}

uint64_t sub_10031E1D0(uint64_t *a1, void **a2)
{
  v4 = sub_100397748();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *a1;
  v8 = *(v31 + OBJC_IVAR____TtC15LegacyInterface24AggregatedTimeSpentEntry_lineIdentifier);
  v9 = *(v31 + OBJC_IVAR____TtC15LegacyInterface24AggregatedTimeSpentEntry_lineIdentifier + 8);
  v10 = *a2;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = sub_100280FD8(0, v10[2] + 1, 1, v10);
    *a2 = v10;
  }

  v13 = v10[2];
  v12 = v10[3];
  if (v13 >= v12 >> 1)
  {
    v10 = sub_100280FD8((v12 > 1), v13 + 1, 1, v10);
    *a2 = v10;
  }

  v29 = &type metadata for String;
  v30 = &protocol witness table for String;
  *&v28 = v8;
  *(&v28 + 1) = v9;
  v10[2] = v13 + 1;
  sub_100004A68(&v28, &v10[5 * v13 + 4]);
  v14 = *a2;
  v15 = *(v5 + 16);
  v15(v7, v31 + OBJC_IVAR____TtC15LegacyInterface24AggregatedTimeSpentEntry_eventTimeStamp, v4);
  v16 = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v14;
  if ((v16 & 1) == 0)
  {
    v14 = sub_100280FD8(0, v14[2] + 1, 1, v14);
    *a2 = v14;
  }

  v18 = v14[2];
  v17 = v14[3];
  if (v18 >= v17 >> 1)
  {
    v14 = sub_100280FD8((v17 > 1), v18 + 1, 1, v14);
    *a2 = v14;
  }

  v29 = v4;
  v30 = &protocol witness table for Date;
  v19 = sub_1001E6B7C(&v28);
  v15(v19, v7, v4);
  v14[2] = v18 + 1;
  sub_100004A68(&v28, &v14[5 * v18 + 4]);
  (*(v5 + 8))(v7, v4);
  v20 = *a2;
  v21 = *(v31 + OBJC_IVAR____TtC15LegacyInterface24AggregatedTimeSpentEntry_clientIdentifier);
  v22 = *(v31 + OBJC_IVAR____TtC15LegacyInterface24AggregatedTimeSpentEntry_clientIdentifier + 8);

  v23 = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v20;
  if ((v23 & 1) == 0)
  {
    v20 = sub_100280FD8(0, v20[2] + 1, 1, v20);
    *a2 = v20;
  }

  v25 = v20[2];
  v24 = v20[3];
  if (v25 >= v24 >> 1)
  {
    v20 = sub_100280FD8((v24 > 1), v25 + 1, 1, v20);
    *a2 = v20;
  }

  v29 = &type metadata for String;
  v30 = &protocol witness table for String;
  *&v28 = v21;
  *(&v28 + 1) = v22;
  v20[2] = v25 + 1;
  return sub_100004A68(&v28, &v20[5 * v25 + 4]);
}

void sub_10031E510(unint64_t a1, void **a2)
{
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1003997F8())
  {
    v6 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = sub_100399708();
      }

      else
      {
        if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v7 = *(a1 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v10 = v7;
      sub_10031E1D0(&v10, a2);

      if (!v2)
      {
        ++v6;
        if (v9 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

uint64_t AggregatedTimeSpentStoreDatabase.storeEntry(withLineID:durationInSeconds:eventTimestamp:clientIdentifier:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1001E27A8(&unk_1004DCD00);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1003C95F0;
  *(v12 + 56) = &type metadata for String;
  *(v12 + 64) = &protocol witness table for String;
  v23 = a1;
  *(v12 + 32) = a1;
  *(v12 + 40) = a2;
  v13 = sub_100397748();
  *(v12 + 96) = v13;
  *(v12 + 104) = &protocol witness table for Date;
  v14 = sub_1001E6B7C((v12 + 72));
  v15 = a3;
  (*(*(v13 - 8) + 16))(v14, a4, v13);
  *(v12 + 136) = &type metadata for Int32;
  *(v12 + 144) = &protocol witness table for Int32;
  *(v12 + 112) = a3;
  *(v12 + 176) = &type metadata for String;
  *(v12 + 184) = &protocol witness table for String;
  *(v12 + 152) = a5;
  *(v12 + 160) = a6;
  *(v12 + 216) = &type metadata for Int32;
  *(v12 + 224) = &protocol witness table for Int32;
  *(v12 + 192) = a3;

  v16 = sub_100397CD8();

  if ((v16 & 1) == 0)
  {
    sub_1003993E8();
    sub_100206B54();
    v17 = sub_1003995A8();
    sub_1001E27A8(&qword_1004D5860);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1003EB200;
    *(v18 + 56) = &type metadata for String;
    v19 = sub_100206BA0();
    *(v18 + 64) = v19;
    *(v18 + 32) = v23;
    *(v18 + 40) = a2;

    v20 = sub_100397658();
    *(v18 + 96) = &type metadata for String;
    *(v18 + 104) = v19;
    *(v18 + 72) = v20;
    *(v18 + 80) = v21;
    *(v18 + 136) = &type metadata for Int32;
    *(v18 + 144) = &protocol witness table for Int32;
    *(v18 + 112) = v15;
    *(v18 + 176) = &type metadata for String;
    *(v18 + 184) = v19;
    *(v18 + 152) = a5;
    *(v18 + 160) = a6;

    sub_100398B98();
  }

  return v16 & 1;
}

Swift::Bool __swiftcall AggregatedTimeSpentStoreDatabase.removeAllEntries()()
{
  sub_1003993D8();
  sub_100206B54();
  v0 = sub_1003995A8();
  sub_100398B98();

  sub_10028037C(_swiftEmptyArrayStorage);
  v1 = sub_100397CD8();

  if ((v1 & 1) == 0)
  {
    sub_1003993E8();
    v2 = sub_1003995A8();
    sub_1001E27A8(&qword_1004D5860);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1003C9930;
    sub_1001E27A8(&unk_1004D9A30);
    v4 = sub_1003991C8();
    v6 = v5;
    *(v3 + 56) = &type metadata for String;
    *(v3 + 64) = sub_100206BA0();
    *(v3 + 32) = v4;
    *(v3 + 40) = v6;
    sub_100398B98();
  }

  return v1 & 1;
}

id AggregatedTimeSpentStoreDatabase.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AggregatedTimeSpentStoreDatabase();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10031ED0C(void *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_10031F7AC(a1);

  *a2 = v4;
}

void *sub_10031EDE4(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_1001E27A8(&qword_1004D9A90);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

uint64_t sub_10031EE68(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_1003997F8();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_1003997F8();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_10031EF58(result);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_10031F42C(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_10031EF58(uint64_t a1)
{
  v3 = *v1;
  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if ((isUniquelyReferenced_nonNull_bridgeObject & 1) == 0 || (result = 0, (v3 & 0x8000000000000000) != 0) || (v3 & 0x4000000000000000) != 0 || a1 > *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    if (v3 >> 62)
    {
      sub_1003997F8();
    }

    result = sub_100399718();
    *v1 = result;
  }

  return result;
}

uint64_t sub_10031F014(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1001E27A8(&qword_1004D9A98);
  v34 = a2;
  result = sub_100399818();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_100399B58();
      sub_100399018();
      result = sub_100399B88();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

void *sub_10031F2BC()
{
  v1 = v0;
  sub_1001E27A8(&qword_1004D9A98);
  v2 = *v0;
  v3 = sub_100399808();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_10031F42C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1003997F8();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1003997F8();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1001E6C28(&qword_1004D9A88, &unk_1004D9A70);
          for (i = 0; i != v6; ++i)
          {
            sub_1001E27A8(&unk_1004D9A70);
            v9 = sub_10031F5D0(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for AggregatedTimeSpentEntry();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void (*sub_10031F5D0(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_100399708();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_10031F650;
  }

  __break(1u);
  return result;
}

void *sub_10031F658(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      ++v11;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

id sub_10031F7AC(void *a1)
{
  v2 = type metadata accessor for AggregatedTimeSpentStoreDatabase();
  v3 = objc_allocWithZone(v2);
  sub_100206B54();
  v4 = a1;
  sub_1003995A8();
  sub_100397D38();
  swift_allocObject();
  *&v3[OBJC_IVAR____TtC15LegacyInterface32AggregatedTimeSpentStoreDatabase_database] = sub_100397D28();
  v6.receiver = v3;
  v6.super_class = v2;
  return objc_msgSendSuper2(&v6, "init");
}

unint64_t sub_10031F8BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1001E27A8(&qword_1004D9A98);
    v3 = sub_100399828();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1001EC1DC(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10031F9C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1001E27A8(&unk_1004D5AD0);
    v3 = sub_100399828();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      swift_unknownObjectRetain();
      result = sub_1001EC1DC(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t AggregatedTimeSpentEntry.lineIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15LegacyInterface24AggregatedTimeSpentEntry_lineIdentifier);

  return v1;
}

uint64_t AggregatedTimeSpentEntry.eventTimeStamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15LegacyInterface24AggregatedTimeSpentEntry_eventTimeStamp;
  v4 = sub_100397748();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AggregatedTimeSpentEntry.clientIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15LegacyInterface24AggregatedTimeSpentEntry_clientIdentifier);

  return v1;
}

uint64_t AggregatedTimeSpentEntry.description.getter()
{
  sub_1003996F8(113);
  v3._countAndFlagsBits = 0xD00000000000002ELL;
  v3._object = 0x8000000100436790;
  sub_100399068(v3);
  sub_100399068(*(v0 + OBJC_IVAR____TtC15LegacyInterface24AggregatedTimeSpentEntry_lineIdentifier));
  v4._object = 0x80000001004367C0;
  v4._countAndFlagsBits = 0xD000000000000012;
  sub_100399068(v4);
  sub_100397748();
  sub_10020DA44();
  v5._countAndFlagsBits = sub_100399998();
  sub_100399068(v5);

  v6._countAndFlagsBits = 0xD000000000000015;
  v6._object = 0x80000001004367E0;
  sub_100399068(v6);
  v2 = *(v0 + OBJC_IVAR____TtC15LegacyInterface24AggregatedTimeSpentEntry_durationInSeconds);
  v7._countAndFlagsBits = sub_100399998();
  sub_100399068(v7);

  v8._countAndFlagsBits = 0xD000000000000014;
  v8._object = 0x8000000100436800;
  sub_100399068(v8);
  sub_100399068(*(v0 + OBJC_IVAR____TtC15LegacyInterface24AggregatedTimeSpentEntry_clientIdentifier));
  return HIDWORD(v2);
}

id AggregatedTimeSpentEntry.init(cursor:)(void *a1)
{
  v2 = v1;
  v4 = sub_1001E27A8(&qword_1004D4CE0);
  __chkstk_darwin(v4 - 8);
  v6 = &v24 - v5;
  v7 = sub_100397748();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000035B8(a1, a1[3]);
  v11 = sub_100397BA8();
  v13 = v12;
  v27 = v11;
  v28 = v8;
  sub_1000035B8(a1, a1[3]);
  sub_100397B88();
  v14 = v28;
  (*(v28 + 56))(v6, 0, 1, v7);
  v25 = *(v14 + 32);
  v25(v10, v6, v7);
  v15 = a1[3];
  v26 = a1[4];
  sub_1000035B8(a1, v15);
  LODWORD(v26) = sub_100397BF8();
  sub_1000035B8(a1, a1[3]);
  v16 = sub_100397BA8();
  v18 = v17;
  v19 = &v2[OBJC_IVAR____TtC15LegacyInterface24AggregatedTimeSpentEntry_lineIdentifier];
  *v19 = v27;
  v19[1] = v13;
  v25(&v2[OBJC_IVAR____TtC15LegacyInterface24AggregatedTimeSpentEntry_eventTimeStamp], v10, v7);
  *&v2[OBJC_IVAR____TtC15LegacyInterface24AggregatedTimeSpentEntry_durationInSeconds] = v26;
  v20 = &v2[OBJC_IVAR____TtC15LegacyInterface24AggregatedTimeSpentEntry_clientIdentifier];
  *v20 = v16;
  v20[1] = v18;
  v21 = type metadata accessor for AggregatedTimeSpentEntry();
  v29.receiver = v2;
  v29.super_class = v21;
  v22 = objc_msgSendSuper2(&v29, "init");
  sub_100003894(a1);
  return v22;
}

uint64_t type metadata accessor for AggregatedTimeSpentEntry()
{
  result = qword_1004D9AD0;
  if (!qword_1004D9AD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id AggregatedTimeSpentEntry.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AggregatedTimeSpentEntry();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1003202F8()
{
  result = sub_100397748();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

id sub_1003203D4(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void))
{
  v5 = a3;
  a4();
  v7 = v6;

  if (v7)
  {
    v8 = sub_100398F28();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void *sub_1003204D0(void *a1)
{
  v2 = sub_100398CA8();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v74 - v7;
  v9 = [a1 journeyStartRelayValues];
  if (!v9 || (v10 = v9, v85 = 0, sub_100320D04(), sub_100399188(), v10, (v11 = v85) == 0))
  {
    sub_100398C98();
    v70 = sub_100398C88();
    v71 = sub_1003993E8();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      *v72 = 0;
      _os_log_impl(&_mh_execute_header, v70, v71, "Ad data did not contain valid journey start relay values.", v72, 2u);
    }

    (*(v3 + 8))(v6, v2);
    return sub_10031F9C0(_swiftEmptyArrayStorage);
  }

  v79 = v85 & 0xFFFFFFFFFFFFFF8;
  if (v85 >> 62)
  {
LABEL_62:
    v12 = sub_1003997F8();
    if (v12)
    {
      goto LABEL_5;
    }

LABEL_63:

    return _swiftEmptyDictionarySingleton;
  }

  v12 = *((v85 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v12)
  {
    goto LABEL_63;
  }

LABEL_5:
  v13 = 0;
  v83 = "";
  v84 = v11 & 0xC000000000000001;
  v82 = (v3 + 8);
  v80 = _swiftEmptyDictionarySingleton;
  v81 = v12;
  v77 = v11;
  v78 = v8;
  v3 = v79;
  v76 = v2;
  while (1)
  {
    if (v84)
    {
      v14 = sub_100399708();
    }

    else
    {
      if (v13 >= *(v3 + 16))
      {
        goto LABEL_58;
      }

      v14 = *(v11 + 8 * v13 + 32);
    }

    v15 = v14;
    v16 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

    if (![v14 hasKey] || !objc_msgSend(v15, "hasValue"))
    {
      sub_100398C98();
      v29 = sub_100398C88();
      v30 = sub_1003993E8();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&_mh_execute_header, v29, v30, "Journey relay item did not contain valid key and/or value.", v31, 2u);
        v12 = v81;
      }

      (*v82)(v8, v2);
      goto LABEL_7;
    }

    if ([v15 hasValueInt])
    {
      v17 = [v15 key];
      if (!v17)
      {
        goto LABEL_65;
      }

      v18 = v17;
      v11 = sub_100398F58();
      v8 = v19;

      [v15 valueInt];
      v20.super.super.isa = sub_100399B28().super.super.isa;
      v21 = v80;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v85 = v21;
      v3 = sub_1001EC1DC(v11, v8);
      v24 = v21[2];
      v25 = (v23 & 1) == 0;
      v26 = v24 + v25;
      if (__OFADD__(v24, v25))
      {
        goto LABEL_59;
      }

      v2 = v23;
      if (v21[3] < v26)
      {
        sub_10020CD64(v26, isUniquelyReferenced_nonNull_native);
        v27 = sub_1001EC1DC(v11, v8);
        if ((v2 & 1) != (v28 & 1))
        {
          goto LABEL_70;
        }

        v3 = v27;
        v12 = v81;
        if ((v2 & 1) == 0)
        {
          goto LABEL_49;
        }

LABEL_35:

        v80 = v85;
        *(*(v85 + 56) + 8 * v3) = v20;

        swift_unknownObjectRelease();
LABEL_51:
        v2 = v76;
        goto LABEL_52;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        v12 = v81;
        if (v23)
        {
          goto LABEL_35;
        }
      }

      else
      {
        sub_10020D00C();
        v12 = v81;
        if (v2)
        {
          goto LABEL_35;
        }
      }

LABEL_49:
      v65 = v85;
      *(v85 + 8 * (v3 >> 6) + 64) |= 1 << v3;
      v66 = (v65[6] + 16 * v3);
      *v66 = v11;
      v66[1] = v8;
      *(v65[7] + 8 * v3) = v20;

      v67 = v65[2];
      v42 = __OFADD__(v67, 1);
      v68 = v67 + 1;
      if (v42)
      {
        goto LABEL_61;
      }

      v80 = v65;
      v65[2] = v68;
      goto LABEL_51;
    }

    if ([v15 hasValueBool])
    {
      break;
    }

    if ([v15 hasValueDouble])
    {
      v46 = [v15 key];
      if (!v46)
      {
        goto LABEL_67;
      }

      v47 = v46;
      v75 = sub_100398F58();
      v49 = v48;

      [v15 valueDouble];
      isa = sub_100399288().super.super.isa;
      v51 = v80;
      v52 = swift_isUniquelyReferenced_nonNull_native();
      v85 = v51;
      sub_10020E080(isa, v75, v49, v52, &v85);
    }

    else
    {
      if (![v15 hasValueString])
      {

        goto LABEL_7;
      }

      v53 = [v15 key];
      if (!v53)
      {
        goto LABEL_69;
      }

      v54 = v53;
      v75 = sub_100398F58();
      v56 = v55;

      v57 = [v15 valueString];
      if (!v57)
      {
        goto LABEL_68;
      }

      v58 = v57;
      v59 = v80;
      v60 = swift_isUniquelyReferenced_nonNull_native();
      v85 = v59;
      sub_10020E080(v58, v75, v56, v60, &v85);
    }

    v80 = v85;
    v12 = v81;
LABEL_7:
    ++v13;
    if (v16 == v12)
    {

      return v80;
    }
  }

  v32 = [v15 key];
  if (!v32)
  {
    goto LABEL_66;
  }

  v33 = v32;
  v11 = sub_100398F58();
  v8 = v34;

  [v15 valueBool];
  v35.super.super.isa = sub_100399218().super.super.isa;
  v36 = v80;
  v37 = swift_isUniquelyReferenced_nonNull_native();
  v85 = v36;
  v38 = sub_1001EC1DC(v11, v8);
  v40 = v36[2];
  v41 = (v39 & 1) == 0;
  v42 = __OFADD__(v40, v41);
  v43 = v40 + v41;
  if (v42)
  {
    goto LABEL_60;
  }

  v44 = v39;
  if (v36[3] >= v43)
  {
    if ((v37 & 1) == 0)
    {
      v69 = v38;
      sub_10020D00C();
      v38 = v69;
    }
  }

  else
  {
    sub_10020CD64(v43, v37);
    v38 = sub_1001EC1DC(v11, v8);
    if ((v44 & 1) != (v45 & 1))
    {
      goto LABEL_70;
    }
  }

  v12 = v81;
  v61 = v85;
  v80 = v85;
  if (v44)
  {
    *(*(v85 + 56) + 8 * v38) = v35;

    swift_unknownObjectRelease();
LABEL_52:
    v11 = v77;
    v8 = v78;
    v3 = v79;
    goto LABEL_7;
  }

  *(v85 + 8 * (v38 >> 6) + 64) |= 1 << v38;
  v62 = (v61[6] + 16 * v38);
  *v62 = v11;
  v62[1] = v8;
  *(v61[7] + 8 * v38) = v35;
  v63 = v61[2];
  v42 = __OFADD__(v63, 1);
  v64 = v63 + 1;
  if (!v42)
  {
    v61[2] = v64;

    goto LABEL_52;
  }

  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  result = sub_100399A98();
  __break(1u);
  return result;
}