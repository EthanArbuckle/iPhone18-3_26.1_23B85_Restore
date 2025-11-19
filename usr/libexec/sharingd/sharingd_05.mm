void sub_100119FF0(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) invalidateResponseTimer];
  v4 = +[SDNearbyAgent sharedNearbyAgent];
  v5 = [*(a1 + 32) bleDevice];
  [v4 stopUnlockBLEConnectionWithDevice:v5];

  [*(a1 + 32) setActiveConnection:0];
  v6 = *(a1 + 32);
  if (a2)
  {
    v7 = SFAutoUnlockErrorDomain;
    v11 = NSLocalizedDescriptionKey;
    v12 = @"Proxy trigger failed";
    v8 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    v9 = [NSError errorWithDomain:v7 code:141 userInfo:v8];
    [v6 notifyDelegateWithError:v9];
  }

  else
  {
    [*(a1 + 32) setState:3];
    v10 = *(a1 + 32);

    [v10 notifyDelegateWithError:0];
  }
}

uint64_t SDAutoUnlockAWDLInfoReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v68) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v68 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v68 & 0x7F) << v5;
        if ((v68 & 0x80) == 0)
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
      if ((v12 >> 3) <= 5)
      {
        if (v13 <= 2)
        {
          if (v13 == 1)
          {
            v30 = 0;
            v31 = 0;
            v32 = 0;
            *(a1 + 60) |= 4u;
            while (1)
            {
              LOBYTE(v68) = 0;
              v33 = [a2 position] + 1;
              if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
              {
                v35 = [a2 data];
                [v35 getBytes:&v68 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v32 |= (v68 & 0x7F) << v30;
              if ((v68 & 0x80) == 0)
              {
                break;
              }

              v30 += 7;
              v11 = v31++ >= 9;
              if (v11)
              {
                v22 = 0;
                goto LABEL_106;
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

LABEL_106:
            v64 = 48;
LABEL_115:
            *(a1 + v64) = v22;
            goto LABEL_123;
          }

          if (v13 != 2)
          {
LABEL_101:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_123;
          }

          v14 = PBReaderReadData();
          v15 = 24;
        }

        else
        {
          if (v13 == 3)
          {
            v49 = 0;
            v50 = 0;
            v51 = 0;
            *(a1 + 60) |= 0x80u;
            while (1)
            {
              LOBYTE(v68) = 0;
              v52 = [a2 position] + 1;
              if (v52 >= [a2 position] && (v53 = objc_msgSend(a2, "position") + 1, v53 <= objc_msgSend(a2, "length")))
              {
                v54 = [a2 data];
                [v54 getBytes:&v68 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v51 |= (v68 & 0x7F) << v49;
              if ((v68 & 0x80) == 0)
              {
                break;
              }

              v49 += 7;
              v11 = v50++ >= 9;
              if (v11)
              {
                LOBYTE(v29) = 0;
                goto LABEL_117;
              }
            }

            v29 = (v51 != 0) & ~[a2 hasError];
LABEL_117:
            v65 = 56;
            goto LABEL_122;
          }

          if (v13 != 4)
          {
            if (v13 != 5)
            {
              goto LABEL_101;
            }

            v16 = 0;
            v17 = 0;
            v18 = 0;
            *(a1 + 60) |= 2u;
            while (1)
            {
              LOBYTE(v68) = 0;
              v19 = [a2 position] + 1;
              if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
              {
                v21 = [a2 data];
                [v21 getBytes:&v68 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v18 |= (v68 & 0x7F) << v16;
              if ((v68 & 0x80) == 0)
              {
                break;
              }

              v16 += 7;
              v11 = v17++ >= 9;
              if (v11)
              {
                v22 = 0;
                goto LABEL_114;
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

LABEL_114:
            v64 = 32;
            goto LABEL_115;
          }

          v14 = PBReaderReadData();
          v15 = 40;
        }
      }

      else
      {
        if (v13 > 8)
        {
          switch(v13)
          {
            case 9:
              *(a1 + 60) |= 1u;
              v68 = 0;
              v61 = [a2 position] + 8;
              if (v61 >= [a2 position] && (v62 = objc_msgSend(a2, "position") + 8, v62 <= objc_msgSend(a2, "length")))
              {
                v67 = [a2 data];
                [v67 getBytes:&v68 range:{objc_msgSend(a2, "position"), 8}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
              }

              else
              {
                [a2 _setError];
              }

              *(a1 + 8) = v68;
              goto LABEL_123;
            case 0xA:
              v43 = 0;
              v44 = 0;
              v45 = 0;
              *(a1 + 60) |= 0x20u;
              while (1)
              {
                LOBYTE(v68) = 0;
                v46 = [a2 position] + 1;
                if (v46 >= [a2 position] && (v47 = objc_msgSend(a2, "position") + 1, v47 <= objc_msgSend(a2, "length")))
                {
                  v48 = [a2 data];
                  [v48 getBytes:&v68 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v45 |= (v68 & 0x7F) << v43;
                if ((v68 & 0x80) == 0)
                {
                  break;
                }

                v43 += 7;
                v11 = v44++ >= 9;
                if (v11)
                {
                  LOBYTE(v29) = 0;
                  goto LABEL_110;
                }
              }

              v29 = (v45 != 0) & ~[a2 hasError];
LABEL_110:
              v65 = 54;
              break;
            case 0xB:
              v23 = 0;
              v24 = 0;
              v25 = 0;
              *(a1 + 60) |= 0x10u;
              while (1)
              {
                LOBYTE(v68) = 0;
                v26 = [a2 position] + 1;
                if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
                {
                  v28 = [a2 data];
                  [v28 getBytes:&v68 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v25 |= (v68 & 0x7F) << v23;
                if ((v68 & 0x80) == 0)
                {
                  break;
                }

                v23 += 7;
                v11 = v24++ >= 9;
                if (v11)
                {
                  LOBYTE(v29) = 0;
                  goto LABEL_119;
                }
              }

              v29 = (v25 != 0) & ~[a2 hasError];
LABEL_119:
              v65 = 53;
              break;
            default:
              goto LABEL_101;
          }

          goto LABEL_122;
        }

        if (v13 == 6)
        {
          v55 = 0;
          v56 = 0;
          v57 = 0;
          *(a1 + 60) |= 8u;
          while (1)
          {
            LOBYTE(v68) = 0;
            v58 = [a2 position] + 1;
            if (v58 >= [a2 position] && (v59 = objc_msgSend(a2, "position") + 1, v59 <= objc_msgSend(a2, "length")))
            {
              v60 = [a2 data];
              [v60 getBytes:&v68 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v57 |= (v68 & 0x7F) << v55;
            if ((v68 & 0x80) == 0)
            {
              break;
            }

            v55 += 7;
            v11 = v56++ >= 9;
            if (v11)
            {
              LOBYTE(v29) = 0;
              goto LABEL_121;
            }
          }

          v29 = (v57 != 0) & ~[a2 hasError];
LABEL_121:
          v65 = 52;
          goto LABEL_122;
        }

        if (v13 == 7)
        {
          v37 = 0;
          v38 = 0;
          v39 = 0;
          *(a1 + 60) |= 0x40u;
          while (1)
          {
            LOBYTE(v68) = 0;
            v40 = [a2 position] + 1;
            if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
            {
              v42 = [a2 data];
              [v42 getBytes:&v68 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v39 |= (v68 & 0x7F) << v37;
            if ((v68 & 0x80) == 0)
            {
              break;
            }

            v37 += 7;
            v11 = v38++ >= 9;
            if (v11)
            {
              LOBYTE(v29) = 0;
              goto LABEL_108;
            }
          }

          v29 = (v39 != 0) & ~[a2 hasError];
LABEL_108:
          v65 = 55;
LABEL_122:
          *(a1 + v65) = v29;
          goto LABEL_123;
        }

        if (v13 != 8)
        {
          goto LABEL_101;
        }

        v14 = PBReaderReadString();
        v15 = 16;
      }

      v36 = *(a1 + v15);
      *(a1 + v15) = v14;

LABEL_123:
      v66 = [a2 position];
    }

    while (v66 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id sub_10011C258()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_100989E08;
  v7 = qword_100989E08;
  if (!qword_100989E08)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_10011F820;
    v3[3] = &unk_1008CDA20;
    v3[4] = &v4;
    sub_10011F820(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_10011C320(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10011C7B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10011D9A4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _loadIconForSuggestionNode:v7 outIcon:a3 outIconData:a4];
}

void sub_10011DCC0(os_signpost_id_t a1, int a2, int a3, int a4)
{
  v8 = share_sheet_log();
  v9 = v8;
  if (!a2)
  {
    if (a4)
    {
      if (a1 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v8))
      {
        goto LABEL_27;
      }

      v16 = 0;
      v10 = "AsyncPeopleSuggestions";
      v11 = &v16;
    }

    else if (a3)
    {
      if (a1 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v8))
      {
        goto LABEL_27;
      }

      v15 = 0;
      v10 = "PreheatPeopleSuggestions";
      v11 = &v15;
    }

    else
    {
      if (a1 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v8))
      {
        goto LABEL_27;
      }

      v14 = 0;
      v10 = "GetPeopleSuggestions";
      v11 = &v14;
    }

    v12 = v9;
    v13 = OS_SIGNPOST_INTERVAL_END;
    goto LABEL_26;
  }

  if (a4)
  {
    if (a1 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      v19 = 0;
      v10 = "AsyncPeopleSuggestions";
      v11 = &v19;
LABEL_21:
      v12 = v9;
      v13 = OS_SIGNPOST_INTERVAL_BEGIN;
LABEL_26:
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, v13, a1, v10, " enableTelemetry=YES ", v11, 2u);
    }
  }

  else if (a3)
  {
    if (a1 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      v18 = 0;
      v10 = "PreheatPeopleSuggestions";
      v11 = &v18;
      goto LABEL_21;
    }
  }

  else if (a1 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    v17 = 0;
    v10 = "GetPeopleSuggestions";
    v11 = &v17;
    goto LABEL_21;
  }

LABEL_27:
}

void sub_10011E258(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  sub_10011DCC0(*(a1 + 40), 0, *(a1 + 48), [*(a1 + 32) isAsynchronous]);
  v7 = share_sheet_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [*(a1 + 32) sessionID];
    v10 = 138412546;
    v11 = v8;
    v12 = 2048;
    v13 = [v5 count];
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Received response from PeopleSuggester for session ID %@ with %lu suggestions", &v10, 0x16u);
  }

  if (v6)
  {
    v9 = share_sheet_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10011FCF8();
    }
  }

  [*(a1 + 32) _didFetchDuetSuggestions:v5];
}

void sub_10011E3AC(uint64_t a1, void *a2, int a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  if (a3)
  {
    v9 = share_sheet_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10011FD68();
    }

    v10 = share_sheet_log();
    v11 = share_sheet_log();
    v12 = os_signpost_id_make_with_pointer(v11, *(a1 + 32));

    if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_EVENT, v12, "ShareSheetAsyncPeopleSuggestionsDidTimeout", "", buf, 2u);
    }
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10011E530;
  block[3] = &unk_1008D0E80;
  v13 = *(a1 + 40);
  v14 = *(a1 + 48);
  v19 = v8;
  v20 = v14;
  v18 = v7;
  v15 = v8;
  v16 = v7;
  dispatch_async(v13, block);
}

void sub_10011E548(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 80) suggestInteractionsFromContext:*(*(a1 + 32) + 88)];
  (*(*(a1 + 40) + 16))();
}

id sub_10011EC74()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_100989E30;
  v7 = qword_100989E30;
  if (!qword_100989E30)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_10011FAE8;
    v3[3] = &unk_1008CDA20;
    v3[4] = &v4;
    sub_10011FAE8(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_10011ED3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10011ED54(uint64_t a1)
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x2050000000;
  v2 = qword_100989E38;
  v20 = qword_100989E38;
  if (!qword_100989E38)
  {
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10011FB40;
    v16[3] = &unk_1008CDA20;
    v16[4] = &v17;
    sub_10011FB40(v16);
    v2 = v18[3];
  }

  v3 = v2;
  _Block_object_dispose(&v17, 8);
  v4 = *(a1 + 32);
  v5 = +[NSDate date];
  v6 = [*(*(a1 + 40) + 88) suggestionDate];
  [v5 timeIntervalSinceDate:v6];
  v8 = v7;
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v11 = v9[11];
  v12 = *(a1 + 56) / *(a1 + 64);
  v13 = [v9 sessionID];
  *&v14 = v12;
  v15 = [v2 feedbackForAction:v4 delay:v11 context:v10 suggestions:v13 numberOfVisibleSuggestions:v8 sessionIdentifier:v14];

  [*(*(a1 + 40) + 80) provideFeedbackForSuggestions:v15];
}

void sub_10011EED0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10011F3CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10011F3E4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10011F3FC(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v11 = a2;
  v8 = [v11 identifier];
  v9 = [v8 isEqualToString:a1[4]];

  if (v9)
  {
    objc_storeStrong((*(a1[5] + 8) + 40), a2);
    v10 = a1[6];
    if (v10)
    {
      *v10 = a3;
    }

    *a4 = 1;
  }
}

void sub_10011F5D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10011F5EC(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v11 = a2;
  v8 = [v11 identifier];
  v9 = [v8 isEqualToString:a1[4]];

  if (v9)
  {
    objc_storeStrong((*(a1[5] + 8) + 40), a2);
    v10 = a1[6];
    if (v10)
    {
      *v10 = a3;
    }

    *a4 = 1;
  }
}

Class sub_10011F820(uint64_t a1)
{
  sub_10011F878();
  result = objc_getClass("_PSSuggester");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_10011FF88();
  }

  qword_100989E08 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_10011F878()
{
  v0[0] = 0;
  if (!qword_100989E10)
  {
    v0[1] = _NSConcreteStackBlock;
    v0[2] = 3221225472;
    v0[3] = sub_10011F96C;
    v0[4] = &unk_1008CF110;
    v0[5] = v0;
    v1 = off_1008D0F40;
    v2 = 0;
    qword_100989E10 = _sl_dlopen();
  }

  if (!qword_100989E10)
  {
    sub_100120004(v0);
  }

  if (v0[0])
  {
    free(v0[0]);
  }
}

uint64_t sub_10011F96C(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100989E10 = result;
  return result;
}

Class sub_10011F9E0(uint64_t a1)
{
  sub_10011F878();
  result = objc_getClass("_PSSuggesterConfiguration");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_100120084();
  }

  qword_100989E18 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class sub_10011FA38(uint64_t a1)
{
  sub_10011F878();
  result = objc_getClass("_PSPredictionContext");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_100120100();
  }

  qword_100989E20 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class sub_10011FA90(uint64_t a1)
{
  sub_10011F878();
  result = objc_getClass("_PSAttachment");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_10012017C();
  }

  qword_100989E28 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class sub_10011FAE8(uint64_t a1)
{
  sub_10011F878();
  result = objc_getClass("_PSFeedbackAction");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1001201F8();
  }

  qword_100989E30 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class sub_10011FB40(uint64_t a1)
{
  sub_10011F878();
  result = objc_getClass("_PSFeedback");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_100120274();
  }

  qword_100989E38 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_10011FB98()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10011FBD4()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10011FCF8()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10011FD68()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10011FDA4(uint64_t a1, void *a2, NSObject *a3)
{
  v5 = [a2 image];
  v6 = [v5 _identifier];
  v7 = 138412546;
  v8 = a1;
  v9 = 2112;
  v10 = v6;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Failed to fetch icon data from suggestion with conversationIdentifier {%@} and image {%@}", &v7, 0x16u);
}

void sub_10011FEA8()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10011FF18()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10011FF88()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"Class get_PSSuggesterClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SDSuggestionBrowser.m" lineNumber:31 description:{@"Unable to find class %s", "_PSSuggester"}];

  __break(1u);
}

void sub_100120004(void *a1)
{
  v2 = +[NSAssertionHandler currentHandler];
  v3 = [NSString stringWithUTF8String:"void *PeopleSuggesterLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SDSuggestionBrowser.m" lineNumber:29 description:{@"%s", *a1}];

  __break(1u);
}

void sub_100120084()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"Class get_PSSuggesterConfigurationClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SDSuggestionBrowser.m" lineNumber:33 description:{@"Unable to find class %s", "_PSSuggesterConfiguration"}];

  __break(1u);
}

void sub_100120100()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"Class get_PSPredictionContextClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SDSuggestionBrowser.m" lineNumber:32 description:{@"Unable to find class %s", "_PSPredictionContext"}];

  __break(1u);
}

void sub_10012017C()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"Class get_PSAttachmentClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SDSuggestionBrowser.m" lineNumber:30 description:{@"Unable to find class %s", "_PSAttachment"}];

  __break(1u);
}

void sub_1001201F8()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"Class get_PSFeedbackActionClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SDSuggestionBrowser.m" lineNumber:35 description:{@"Unable to find class %s", "_PSFeedbackAction"}];

  __break(1u);
}

void sub_100120274()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"Class get_PSFeedbackClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SDSuggestionBrowser.m" lineNumber:34 description:{@"Unable to find class %s", "_PSFeedback"}];

  __break(1u);
}

uint64_t SDUnlockStateRequestReadFrom(uint64_t a1, void *a2)
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
        v22 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v22 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v22 & 0x7F) << v5;
        if ((v22 & 0x80) == 0)
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
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 12) |= 1u;
        while (1)
        {
          v23 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v23 & 0x7F) << v13;
          if ((v23 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_32;
          }
        }

        v19 = [a2 hasError] ? 0 : v15;
LABEL_32:
        *(a1 + 8) = v19;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t SDAutoUnlockKeyDeviceLockedReadFrom(uint64_t a1, void *a2)
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
        v22 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v22 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v22 & 0x7F) << v5;
        if ((v22 & 0x80) == 0)
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
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 12) |= 1u;
        while (1)
        {
          v23 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v23 & 0x7F) << v13;
          if ((v23 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_32;
          }
        }

        v19 = [a2 hasError] ? 0 : v15;
LABEL_32:
        *(a1 + 8) = v19;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_100122074(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10012209C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained triggerImport];
}

void sub_10012217C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_100122198(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = [WeakRetained bundleProxy];
  v7 = [v6 bundleIdentifier];
  [WeakRetained openURLs:v5 bundleIdentifier:v7];

  v8 = [WeakRetained completionHandler];
  v8[2](v8, a3, 0, 1);
}

void sub_10012232C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 setOpenAppURLs:v4];
  (*(*(a1 + 40) + 16))();
}

uint64_t sub_100122704(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10012271C(uint64_t a1)
{
  v2 = off_100970DB8();
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001227FC;
  v8[3] = &unk_1008D0FB0;
  v9 = v3;
  v7 = *(a1 + 56);
  v6 = v7;
  v10 = v7;
  [(objc_class *)v2 importRecordingWithSourceAudioURL:v9 name:v4 date:v5 completionHandler:v8];
}

void sub_1001227FC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = airdrop_log();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100122D50(a1, v6, v8);
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      *buf = 138412290;
      v18 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Finished importing voice memo data from %@", buf, 0xCu);
    }

    v10 = [NSString stringWithFormat:@"voicememos://%@", v5];
    v8 = [NSURL URLWithString:v10];

    [*(*(*(a1 + 48) + 8) + 40) addObject:v8];
  }

  v11 = +[NSFileManager defaultManager];
  v12 = *(a1 + 32);
  v16 = 0;
  v13 = [v11 removeItemAtURL:v12 error:&v16];
  v14 = v16;

  if ((v13 & 1) == 0)
  {
    v15 = airdrop_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_100122DDC((a1 + 32), v14, v15);
    }
  }

  dispatch_group_leave(*(a1 + 40));
}

uint64_t sub_1001229D0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = dispatch_time(0, 900000000000);
  if (dispatch_group_wait(v2, v3))
  {
    v4 = airdrop_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100122E90(v4);
    }

LABEL_7:

    goto LABEL_8;
  }

  v5 = [*(*(*(a1 + 56) + 8) + 40) count];
  if (v5 != [*(a1 + 40) count])
  {
    v4 = airdrop_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100122ED4(a1 + 56, (a1 + 40), v4);
    }

    goto LABEL_7;
  }

LABEL_8:
  v6 = *(*(*(a1 + 56) + 8) + 40);
  return (*(*(a1 + 48) + 16))();
}

void sub_100122B58(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(SDAirDropHandlerImportResult);
  [(SDAirDropHandlerImportResult *)v4 setImportedFiles:v3];

  (*(*(a1 + 32) + 16))();
}

Class sub_100122CC4()
{
  if (qword_100989E48 != -1)
  {
    sub_100122F90();
  }

  result = objc_getClass("RCSavedRecordingsModel");
  qword_100989E40 = result;
  off_100970DB8 = sub_100122D18;
  return result;
}

void sub_100122D50(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(a1 + 32);
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to import voice memo data from %@ with error %@", &v4, 0x16u);
}

void sub_100122DDC(id *a1, uint64_t a2, NSObject *a3)
{
  v5 = [*a1 path];
  v6 = 138412546;
  v7 = v5;
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Failed to remove item at %@: %@", &v6, 0x16u);
}

void sub_100122ED4(uint64_t a1, id *a2, NSObject *a3)
{
  v5 = [*(*(*a1 + 8) + 40) count];
  v6 = [*a2 count];
  v7[0] = 67109376;
  v7[1] = v5;
  v8 = 1024;
  v9 = v6;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Only %d/%d voice memos were imported successfully", v7, 0xEu);
}

void sub_10012356C(id a1)
{
  v1 = objc_alloc_init(SDProximityPairingAgent);
  v2 = qword_100989E60;
  qword_100989E60 = v1;
}

void sub_10012385C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_10012387C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _bufferedBleDeviceFound:v3];
}

id sub_100123B0C(uint64_t a1)
{
  v2 = a1 + 32;
  v3 = *(*(a1 + 32) + 24);
  if (!v3)
  {
    v4 = objc_alloc_init(NSMutableSet);
    v5 = *(*v2 + 24);
    *(*v2 + 24) = v4;

    v3 = *(*v2 + 24);
  }

  result = [v3 addObject:*(a1 + 40)];
  if (dword_100970E30 <= 30)
  {
    if (dword_100970E30 != -1)
    {
      return sub_10012DAC8(v2);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return sub_10012DAC8(v2);
    }
  }

  return result;
}

id sub_100123C38(uint64_t a1)
{
  v1 = a1 + 32;
  result = [*(*(a1 + 32) + 24) removeObject:*(a1 + 40)];
  if (dword_100970E30 <= 30)
  {
    if (dword_100970E30 != -1)
    {
      return sub_10012DB14(v1);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return sub_10012DB14(v1);
    }
  }

  return result;
}

uint64_t sub_10012545C(void *a1)
{
  v1 = a1;
  if ([v1 isEqual:{@"Powerbeats4, 1"}])
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 isEqual:{@"BeatsSoloPro1, 1"}];
  }

  return v2;
}

const char *sub_100126F98(unsigned int a1)
{
  if (a1 > 7)
  {
    return "?";
  }

  else
  {
    return off_1008D10E8[a1];
  }
}

id sub_100127140()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_100989E68;
  v7 = qword_100989E68;
  if (!qword_100989E68)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_10012D318;
    v3[3] = &unk_1008CDA20;
    v3[4] = &v4;
    sub_10012D318(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_100127208(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100128E84(uint64_t result)
{
  v2 = *(result + 32);
  v1 = *(result + 40);
  if (v2 == *(v1 + 104))
  {
    if (dword_100970E30 <= 30)
    {
      if (dword_100970E30 != -1)
      {
        return sub_10012ED80();
      }

      result = _LogCategory_Initialize();
      if (result)
      {
        return sub_10012ED80();
      }
    }
  }

  else if (v2 == *(v1 + 136))
  {
    if (dword_100970E30 <= 30)
    {
      if (dword_100970E30 != -1)
      {
        return sub_10012ED64();
      }

      result = _LogCategory_Initialize();
      if (result)
      {
        return sub_10012ED64();
      }
    }
  }

  else if (dword_100970E30 <= 50)
  {
    if (dword_100970E30 != -1)
    {
      return sub_10012ED48();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return sub_10012ED48();
    }
  }

  return result;
}

uint64_t sub_100128FE0(uint64_t result)
{
  v2 = *(result + 32);
  v1 = *(result + 40);
  if (v2 == *(v1 + 104))
  {
    if (dword_100970E30 <= 30)
    {
      if (dword_100970E30 != -1)
      {
        return sub_10012EDD4();
      }

      result = _LogCategory_Initialize();
      if (result)
      {
        return sub_10012EDD4();
      }
    }
  }

  else if (v2 == *(v1 + 136))
  {
    if (dword_100970E30 <= 30)
    {
      if (dword_100970E30 != -1)
      {
        return sub_10012EDB8();
      }

      result = _LogCategory_Initialize();
      if (result)
      {
        return sub_10012EDB8();
      }
    }
  }

  else if (dword_100970E30 <= 50)
  {
    if (dword_100970E30 != -1)
    {
      return sub_10012ED9C();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return sub_10012ED9C();
    }
  }

  return result;
}

void sub_100129168(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v3 == *(v2 + 104))
  {
    if (dword_100970E30 <= 30 && (dword_100970E30 != -1 || _LogCategory_Initialize()))
    {
      sub_10012EE78(a1);
    }

    v4 = *(a1 + 40);
    v5 = *(v4 + 104);
    *(v4 + 104) = 0;
  }

  else
  {
    if (v3 != *(v2 + 136))
    {
      if (dword_100970E30 <= 30 && (dword_100970E30 != -1 || _LogCategory_Initialize()))
      {
        sub_10012EDF0(a1);
      }

      return;
    }

    if (dword_100970E30 <= 30 && (dword_100970E30 != -1 || _LogCategory_Initialize()))
    {
      sub_10012EE34(a1);
    }

    v6 = *(a1 + 40);
    v5 = *(v6 + 136);
    *(v6 + 136) = 0;
  }
}

void sub_10012934C(uint64_t a1)
{
  memset(v11, 0, sizeof(v11));
  v2 = *(*(a1 + 32) + 176);
  if ([v2 countByEnumeratingWithState:v11 objects:v14 count:16])
  {
    v3 = [*(*(a1 + 32) + 176) objectForKeyedSubscript:{**(&v11[0] + 1), *&v11[0]}];

    if (v3)
    {
      if (dword_100970E30 <= 50 && (dword_100970E30 != -1 || _LogCategory_Initialize()))
      {
        sub_10012EEBC();
      }

      [*(a1 + 32) _startPairingUI:v3 autoStart:1 repair:0];
      v4 = *(a1 + 40);
      if (v4)
      {
        (*(v4 + 16))(v4, 0);
      }

      goto LABEL_17;
    }
  }

  else
  {
  }

  if (dword_100970E30 <= 90 && (dword_100970E30 != -1 || _LogCategory_Initialize()))
  {
    sub_10012EEFC();
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    v12 = NSLocalizedDescriptionKey;
    v6 = [NSString stringWithUTF8String:DebugGetErrorString()];
    v7 = v6;
    v8 = @"?";
    if (v6)
    {
      v8 = v6;
    }

    v13 = v8;
    v9 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1, *&v11[0]];
    v10 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-6727 userInfo:v9];
    (*(v5 + 16))(v5, v10);
  }

  v3 = 0;
LABEL_17:
}

uint64_t sub_10012C7E0(uint64_t a1)
{
  v1 = (a1 - 8194) > 0xD || ((1 << (a1 - 2)) & 0x3001) == 0;
  if (!v1 || a1 == 0x10000)
  {
    return 1;
  }

  v3 = [[SFHeadphoneProduct alloc] initWithProductID:a1];
  v4 = [v3 isAirPods];

  return v4;
}

void sub_10012CBC8(uint64_t a1)
{
  v1 = a1 + 32;
  v2 = [*(*(a1 + 32) + 40) objectForKeyedSubscript:*(a1 + 40)];
  v7 = v2;
  if (v2)
  {
    if ([*v1 shouldNotTriggerBecauseDeviceInformationIsTooOld:v2])
    {
      if (dword_100970E30 <= 50 && (dword_100970E30 != -1 || _LogCategory_Initialize()))
      {
        sub_10012F320((v1 + 8));
      }
    }

    else
    {
      if (!_os_feature_enabled_impl())
      {
        goto LABEL_20;
      }

      v3 = [v7 model];
      if (([v3 isEqual:{@"AirPods1, 1"}] & 1) != 0 || (objc_msgSend(v3, "isEqual:", @"AirPods1,3") & 1) != 0 || objc_msgSend(v3, "isEqual:", @"AirPodsPro1,1"))
      {
      }

      else
      {
        v5 = [[SFHeadphoneProduct alloc] initWithBluetoothModel:v3];
        v6 = [v5 isAirPods];

        if (!v6)
        {
          goto LABEL_20;
        }
      }

      if (dword_100970E30 <= 50 && (dword_100970E30 != -1 || _LogCategory_Initialize()))
      {
        sub_10012F2DC((v1 + 8));
      }

      v4 = [v7 bleDevice];
      [v4 setTriggered:1];

      [*v1 _deviceChanged:v7];
    }
  }

  else if (dword_100970E30 <= 50 && (dword_100970E30 != -1 || _LogCategory_Initialize()))
  {
    sub_10012F364((v1 + 8), v1);
  }

LABEL_20:
}

void sub_10012CEC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10012CEE8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained removeOldBufferedSamplesFromCache];
  [WeakRetained setBufferedDevicesPurgeBlock:0];
}

Class sub_10012D318(uint64_t a1)
{
  v3[0] = 0;
  if (!qword_100989E70)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = sub_10012D444;
    v3[4] = &unk_1008CF110;
    v3[5] = v3;
    v4 = off_1008D10D0;
    v5 = 0;
    qword_100989E70 = _sl_dlopen();
  }

  if (!qword_100989E70)
  {
    sub_10012F4F8(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("HPSSpatialProfileManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_10012F47C();
  }

  qword_100989E68 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_10012D444(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100989E70 = result;
  return result;
}

void sub_10012DFBC(void *a1)
{
  v1 = [a1 bleDevice];
  LogPrintF();
}

uint64_t sub_10012E070(uint64_t result, void *a2)
{
  if (result <= 30)
  {
    if (result != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF();
    }
  }

  *a2 = 0;
  return result;
}

void sub_10012E114(void *a1)
{
  v2 = [a1 bleDevice];
  v1 = [v2 description];
  LogPrintF();
}

BOOL sub_10012E1E0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *(a1 + 12);
  if (!v4)
  {
    v6 = +[SDNearbyAgent sharedNearbyAgent];
    v4 = [v6 bleProximityRSSIThresholdForType:8 device:a2];
  }

  *a3 = v4;
  return v4 >= 0;
}

void sub_10012E38C(void *a1)
{
  v1 = [a1 bleDevice];
  LogPrintF();
}

void sub_10012E3E8(void *a1)
{
  v1 = [a1 bleDevice];
  LogPrintF();
}

uint64_t sub_10012E518(void *a1)
{
  sub_100126F98([a1 primaryPlacement]);
  sub_100126F98([a1 secondaryPlacement]);
  return LogPrintF();
}

void sub_10012E7F4(void *a1)
{
  v1 = [a1 bluetoothAddress];
  LogPrintF();
}

void sub_10012E8AC(void *a1, void *a2)
{
  v4 = [a1 bluetoothAddress];
  v3 = [a2 description];
  LogPrintF();
}

void sub_10012E9EC(void *a1)
{
  v1 = [a1 description];
  LogPrintF();
}

void sub_10012EF30(void *a1)
{
  v1 = [a1 bleDevice];
  LogPrintF();
}

void sub_10012F0F0(void *a1, void *a2)
{
  [a1 rssiFloor];
  v3 = [a2 model];
  LogPrintF();
}

void sub_10012F364(id *a1, uint64_t a2)
{
  v5 = [*a1 description];
  v3 = v5;
  [v5 UTF8String];
  v4 = [*(*a2 + 40) description];
  LogPrintF();
}

void sub_10012F47C()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"Class getHPSSpatialProfileManagerClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SDProximityPairingAgent.m" lineNumber:64 description:{@"Unable to find class %s", "HPSSpatialProfileManager"}];

  __break(1u);
}

void sub_10012F4F8(void *a1)
{
  v2 = +[NSAssertionHandler currentHandler];
  v3 = [NSString stringWithUTF8String:"void *HeadphoneConfigsLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SDProximityPairingAgent.m" lineNumber:63 description:{@"%s", *a1}];

  __break(1u);
}

void sub_10012FB74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10012FB8C(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  if (([v6 isActive] & 1) == 0)
  {
    sub_10012FF20(a1, v6);
  }

  v7 = [v6 accessibleURLs];
  v8 = [v7 containsObject:*(a1 + 40)];

  if (v8)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    *a4 = 1;
  }

  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    v9 = [*(a1 + 40) URLByResolvingSymlinksInPath];
    v10 = [v6 accessibleURLs];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10012FCC4;
    v13[3] = &unk_1008D1130;
    v11 = *(a1 + 48);
    v14 = v9;
    v15 = v11;
    v12 = v9;
    [v10 enumerateObjectsUsingBlock:v13];
  }
}

void sub_10012FCC4(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 URLByResolvingSymlinksInPath];
  if (v6)
  {
    v7 = *(a1 + 32);
    if (v7)
    {
      v13 = v6;
      v8 = [v7 path];
      v9 = [v13 path];
      if ([v8 isEqualToString:v9])
      {

        v6 = v13;
      }

      else
      {
        v10 = [*(a1 + 32) path];
        v11 = [v13 path];
        v12 = [v10 hasPrefix:v11];

        v6 = v13;
        if (!v12)
        {
          goto LABEL_7;
        }
      }

      *(*(*(a1 + 40) + 8) + 24) = 1;
      *a4 = 1;
    }
  }

LABEL_7:
}

void sub_10012FEA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = +[NSAssertionHandler currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"UISDActivityItemData.m" lineNumber:121 description:{@"url provided is not a fileURL:%@", a3}];
}

void sub_10012FF20(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"UISDActivityItemData.m" lineNumber:124 description:{@"Security context is not active: %@", a2}];
}

id sub_10013041C()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_100989E78;
  v7 = qword_100989E78;
  if (!qword_100989E78)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_10013068C;
    v3[3] = &unk_1008CDA20;
    v3[4] = &v4;
    sub_10013068C(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1001304E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_10013068C(uint64_t a1)
{
  v3[0] = 0;
  if (!qword_100989E80)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = sub_1001307B8;
    v3[4] = &unk_1008CF110;
    v3[5] = v3;
    v4 = off_1008D1180;
    v5 = 0;
    qword_100989E80 = _sl_dlopen();
  }

  if (!qword_100989E80)
  {
    sub_1001308A8(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("PKNearbyPeerPaymentReceiverCoordinator");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_10013082C();
  }

  qword_100989E78 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1001307B8(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100989E80 = result;
  return result;
}

void sub_10013082C()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"Class getPKNearbyPeerPaymentReceiverCoordinatorClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SDNearbyPeerPaymentReceiverCoordinator.m" lineNumber:15 description:{@"Unable to find class %s", "PKNearbyPeerPaymentReceiverCoordinator"}];

  __break(1u);
}

void sub_1001308A8(void *a1)
{
  v2 = +[NSAssertionHandler currentHandler];
  v3 = [NSString stringWithUTF8String:"void *PassKitCoreLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SDNearbyPeerPaymentReceiverCoordinator.m" lineNumber:14 description:{@"%s", *a1}];

  __break(1u);
}

void sub_100131AD8(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"UIAirDropNode.m" lineNumber:117 description:@"using slot and text at the same time for displayName."];
}

void sub_100131B4C(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"UIAirDropNode.m" lineNumber:121 description:@"using slot and text at the same time for subtitle."];
}

void sub_100131BC0(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "UIAirDropNode:%@ is restricted.", &v2, 0xCu);
}

void sub_100131C38(void *a1, NSObject *a2)
{
  v3 = [a1 suggestionNode];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to load icon for suggestionNode:%@", &v4, 0xCu);
}

void sub_100132474(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "SDNetworkResolver: bonjourCallBack returned %d", v2, 8u);
}

void sub_1001330A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001330CC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained triggerImport];
}

void sub_1001331AC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1001331C8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (v3)
  {
    v8 = v3;
    v5 = [NSArray arrayWithObjects:&v8 count:1];
    v6 = [WeakRetained openURLs:v5];
  }

  else
  {
    v6 = 0;
  }

  v7 = [WeakRetained completionHandler];
  (v7)[2](v7, v6, 0, 1);
}

void sub_100133668(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = a2;
    v4 = airdrop_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1001339F0(v3, v4);
    }

    v5 = 0;
  }

  else
  {
    v6 = [*(a1 + 32) lastObject];
    v5 = [v6 passURL];
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100133798(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(SDAirDropHandlerImportResult);
  [(SDAirDropHandlerImportResult *)v4 setImportedFiles:&__NSArray0__struct];
  [(SDAirDropHandlerImportResult *)v4 setOpenAppURL:v3];

  (*(*(a1 + 32) + 16))();
}

Class sub_100133834()
{
  if (qword_100989E90 != -1)
  {
    sub_100133A68();
  }

  result = objc_getClass("PKPassLibrary");
  qword_100989E88 = result;
  off_100970FC0 = sub_100133888;
  return result;
}

Class sub_1001338C0()
{
  if (qword_100989EA8 != -1)
  {
    sub_100133A7C();
  }

  result = objc_getClass("PKAddPassesViewController");
  qword_100989EA0 = result;
  off_100970FC8 = sub_100133914;
  return result;
}

Class sub_10013394C()
{
  if (qword_100989E90 != -1)
  {
    sub_100133A68();
  }

  result = objc_getClass("PKPass");
  qword_100989EB8 = result;
  off_100970FD0 = sub_1001339A0;
  return result;
}

void sub_1001339F0(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Wallet pass add failed with status: %d", v2, 8u);
}

uint64_t SDUnlockSetupCreateRecordReadFrom(uint64_t a1, void *a2)
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
        v39 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v39 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v39 & 0x7F) << v5;
        if ((v39 & 0x80) == 0)
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
          v23 = 0;
          v24 = 0;
          v25 = 0;
          *(a1 + 44) |= 1u;
          while (1)
          {
            v40 = 0;
            v26 = [a2 position] + 1;
            if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
            {
              v28 = [a2 data];
              [v28 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v25 |= (v40 & 0x7F) << v23;
            if ((v40 & 0x80) == 0)
            {
              break;
            }

            v23 += 7;
            v11 = v24++ >= 9;
            if (v11)
            {
              v22 = 0;
              goto LABEL_58;
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

LABEL_58:
          v37 = 8;
LABEL_67:
          *(a1 + v37) = v22;
          goto LABEL_68;
        case 4:
          v14 = PBReaderReadData();
          v15 = 32;
          break;
        case 5:
          v14 = PBReaderReadString();
          v15 = 16;
          break;
        default:
          goto LABEL_53;
      }

      v29 = *(a1 + v15);
      *(a1 + v15) = v14;

LABEL_68:
      v38 = [a2 position];
      if (v38 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 1)
    {
      v30 = 0;
      v31 = 0;
      v32 = 0;
      *(a1 + 44) |= 4u;
      while (1)
      {
        v42 = 0;
        v33 = [a2 position] + 1;
        if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
        {
          v35 = [a2 data];
          [v35 getBytes:&v42 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v32 |= (v42 & 0x7F) << v30;
        if ((v42 & 0x80) == 0)
        {
          break;
        }

        v30 += 7;
        v11 = v31++ >= 9;
        if (v11)
        {
          v22 = 0;
          goto LABEL_62;
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

LABEL_62:
      v37 = 40;
    }

    else
    {
      if (v13 != 2)
      {
LABEL_53:
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
      *(a1 + 44) |= 2u;
      while (1)
      {
        v41 = 0;
        v19 = [a2 position] + 1;
        if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
        {
          v21 = [a2 data];
          [v21 getBytes:&v41 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v18 |= (v41 & 0x7F) << v16;
        if ((v41 & 0x80) == 0)
        {
          break;
        }

        v16 += 7;
        v11 = v17++ >= 9;
        if (v11)
        {
          v22 = 0;
          goto LABEL_66;
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

LABEL_66:
      v37 = 24;
    }

    goto LABEL_67;
  }

  return [a2 hasError] ^ 1;
}

void sub_1001353B8(uint64_t a1)
{
  v2 = [NSError errorWithDomain:NSPOSIXErrorDomain code:*(a1 + 40) userInfo:0];
  v5 = kSFOperationErrorKey;
  v6 = v2;
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 80));
  [WeakRetained networkOperation:*(a1 + 32) event:10 withResults:v3];
}

void sub_100136134(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100136150(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100136168(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  if ([*(a1 + 32) isEqualToString:a3])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }
}

void sub_1001364C4(id a1)
{
  v1 = objc_alloc_init(SDWorkgroupBrowser);
  v2 = qword_100989EC8;
  qword_100989EC8 = v1;
}

void sub_10013694C(id a1)
{
  v1 = objc_alloc_init(SDAppleIDDatabaseManager);
  v2 = qword_100989ED8;
  qword_100989ED8 = v1;
}

void sub_1001380C4(uint64_t a1)
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, *(a1 + 32), 0, 0, 1u);
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 postNotificationName:*(a1 + 32) object:0];
}

void sub_100139240(void *a1)
{
  v1 = [a1 account];
  LogPrintF();
}

void sub_1001392E0(void *a1)
{
  v1 = [a1 personInfoCache];
  [v1 count];
  LogPrintF();
}

void sub_100139460(void *a1)
{
  v1 = [a1 matchedValue];
  LogPrintF();
}

void sub_100139500(id a1)
{
  v1 = objc_alloc_init(SDXPCSession);
  v2 = qword_100989EE0;
  qword_100989EE0 = v1;
}

void sub_100139828(id a1)
{
  v1 = objc_alloc_init(SDRemoteInteractionAgent);
  v2 = qword_100989EF8;
  qword_100989EF8 = v1;
}

id sub_100139938(uint64_t a1)
{
  if (dword_100971478 <= 30 && (dword_100971478 != -1 || _LogCategory_Initialize()))
  {
    sub_10013DAC4();
  }

  v2 = *(a1 + 32);
  if (!v2[21])
  {
    v3 = objc_opt_new();
    v4 = *(a1 + 32);
    v5 = *(v4 + 168);
    *(v4 + 168) = v3;

    [*(*(a1 + 32) + 168) setDispatchQueue:*(*(a1 + 32) + 184)];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100139A7C;
    v10[3] = &unk_1008CDEA0;
    v11 = *(a1 + 32);
    [*(v11 + 168) setScreenLockedChangedHandler:v10];
    v6 = *(a1 + 32);
    v7 = *(v6 + 168);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100139A84;
    v9[3] = &unk_1008CDEA0;
    v9[4] = v6;
    [v7 activateWithCompletion:v9];
    v2 = *(a1 + 32);
  }

  return [v2 prefsChanged];
}

id sub_100139B00(uint64_t a1)
{
  if (dword_100971478 <= 30 && (dword_100971478 != -1 || _LogCategory_Initialize()))
  {
    sub_10013DAE0();
  }

  [*(*(a1 + 32) + 168) invalidate];
  v2 = *(a1 + 32);
  v3 = *(v2 + 168);
  *(v2 + 168) = 0;

  [*(a1 + 32) _commonEnsureStopped];
  [*(a1 + 32) _clientEnsureStopped];
  v4 = *(a1 + 32);

  return [v4 _serverEnsureStopped];
}

uint64_t sub_100139E54(uint64_t result)
{
  v1 = result;
  if (dword_100971478 <= 40)
  {
    if (dword_100971478 != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = sub_10013DC10(v1);
    }
  }

  *(*(v1 + 32) + 176) = *(v1 + 40);
  return result;
}

void sub_10013A4B4(id a1, SFSession *a2, unsigned int a3, NSDictionary *a4)
{
  v4 = a4;
  CFDictionaryGetTypeID();
  v6 = CFDictionaryGetTypedValue();

  if (v6)
  {
    v5 = +[SDSharedRemoteTextInputClient sharedClient];
    [v5 handleTextInputData:v6];
  }
}

void sub_10013A544(id a1, SFSession *a2, unsigned int a3, NSDictionary *a4, id a5)
{
  if (a5)
  {
    (*(a5 + 2))(a5, 0, 0, 0);
  }
}

void sub_10013A580(id a1, NSError *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    if (dword_100971478 <= 30)
    {
      v6 = v2;
      if (dword_100971478 != -1 || (v4 = _LogCategory_Initialize(), v3 = v6, v4))
      {
        sub_10013DD08();
LABEL_13:
        v3 = v6;
      }
    }
  }

  else if (dword_100971478 <= 30)
  {
    v6 = 0;
    if (dword_100971478 != -1 || (v5 = _LogCategory_Initialize(), v3 = 0, v5))
    {
      sub_10013DD48();
      goto LABEL_13;
    }
  }
}

void sub_10013B31C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10013B334(uint64_t a1, uint64_t a2)
{
  result = objc_retainBlock(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_10013B368(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(*(a1 + 48) + 8) + 40);
  v6 = v3;
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }

  v5 = [*(a1 + 32) peerDevice];
  if (v5)
  {
    [*(a1 + 40) clientNotificationUpdateForDevice:v5 rtiData:v6];
  }

  else if (dword_100971478 <= 60 && (dword_100971478 != -1 || _LogCategory_Initialize()))
  {
    sub_10013E254();
  }
}

void sub_10013B994(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (dword_100971478 <= 10)
  {
    if (dword_100971478 != -1 || (v4 = _LogCategory_Initialize(), v3 = v5, v4))
    {
      sub_10013E2DC(v3);
      v3 = v5;
    }
  }

  [*(a1 + 32) _clientDeviceFound:v3];
}

void sub_10013BA24(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (dword_100971478 <= 10)
  {
    if (dword_100971478 != -1 || (v4 = _LogCategory_Initialize(), v3 = v5, v4))
    {
      sub_10013E338(v3);
      v3 = v5;
    }
  }

  [*(a1 + 32) _clientDeviceLost:v3];
}

void sub_10013BAB4(id a1, NSError *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    if (dword_100971478 <= 30)
    {
      v6 = v2;
      if (dword_100971478 != -1 || (v4 = _LogCategory_Initialize(), v3 = v6, v4))
      {
        sub_10013E394();
LABEL_13:
        v3 = v6;
      }
    }
  }

  else if (dword_100971478 <= 30)
  {
    v6 = 0;
    if (dword_100971478 != -1 || (v5 = _LogCategory_Initialize(), v3 = 0, v5))
    {
      sub_10013E3D4();
      goto LABEL_13;
    }
  }
}

void sub_10013BB60(id a1)
{
  if (dword_100971478 <= 90 && (dword_100971478 != -1 || _LogCategory_Initialize()))
  {
    sub_10013E3F0();
  }
}

void sub_10013BBAC(id a1)
{
  if (dword_100971478 <= 30 && (dword_100971478 != -1 || _LogCategory_Initialize()))
  {
    sub_10013E40C();
  }
}

void sub_10013BC1C(id a1, NSError *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    if (dword_100971478 <= 90)
    {
      v6 = v2;
      if (dword_100971478 != -1 || (v4 = _LogCategory_Initialize(), v3 = v6, v4))
      {
        sub_10013E428();
LABEL_13:
        v3 = v6;
      }
    }
  }

  else if (dword_100971478 <= 30)
  {
    v6 = 0;
    if (dword_100971478 != -1 || (v5 = _LogCategory_Initialize(), v3 = 0, v5))
    {
      sub_10013E468();
      goto LABEL_13;
    }
  }
}

void *sub_10013C058(uint64_t a1)
{
  result = *(*(a1 + 32) + 168);
  if (result && dword_100971478 <= 50)
  {
    if (dword_100971478 != -1)
    {
LABEL_4:
      [result screenLocked];
      return LogPrintF();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      result = *(*(a1 + 32) + 168);
      goto LABEL_4;
    }
  }

  return result;
}

id sub_10013CD68(uint64_t a1)
{
  if (dword_100971478 <= 50 && (dword_100971478 != -1 || _LogCategory_Initialize()))
  {
    sub_10013E8A4(a1);
  }

  dispatch_source_cancel(*(a1 + 40));
  [*(*(a1 + 48) + 112) removeObjectForKey:*(a1 + 56)];
  [*(*(a1 + 48) + 80) removeObjectForKey:*(a1 + 56)];
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);

  return [v2 clientNotificationRemoveForDevice:v3];
}

Class sub_10013D4DC()
{
  if (qword_100989F08 != -1)
  {
    sub_10013EAB4();
  }

  result = objc_getClass("ACAccountStore");
  qword_100989F00 = result;
  off_1009714E8[0] = sub_10013D530;
  return result;
}

Class sub_10013D568()
{
  if (qword_100989F20 != -1)
  {
    sub_10013EAC8();
  }

  result = objc_getClass("TVRViewServiceConfigContext");
  qword_100989F18 = result;
  off_1009714F0[0] = sub_10013D5BC;
  return result;
}

uint64_t sub_10013D5F4()
{
  if (qword_100989F20 != -1)
  {
    sub_10013EAC8();
  }

  v0 = dlsym(qword_100989F28, "TVRViewServiceDeviceIdentifierTypeRapport");
  if (v0)
  {
    result = *v0;
    qword_100989F30 = result;
  }

  else
  {
    result = qword_100989F30;
  }

  off_1009714F8[0] = sub_10013D664;
  return result;
}

Class sub_10013D670()
{
  if (qword_100989F20 != -1)
  {
    sub_10013EAC8();
  }

  result = objc_getClass("TVRViewServiceManager");
  qword_100989F38 = result;
  off_100971500 = sub_10013D6C4;
  return result;
}

uint64_t sub_10013DC10(uint64_t a1)
{
  *(*(a1 + 32) + 176);
  *(a1 + 40);
  return LogPrintF();
}

_DWORD *sub_10013DDA4(_DWORD *result)
{
  *result = -6708;
  if (dword_100971478 <= 50)
  {
    if (dword_100971478 != -1)
    {
      return LogPrintF();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF();
    }
  }

  return result;
}

uint64_t sub_10013DE44(uint64_t result)
{
  if (dword_100971478 <= 60)
  {
    if (dword_100971478 != -1)
    {
      return LogPrintF();
    }

    v1 = result;
    result = _LogCategory_Initialize();
    if (result)
    {
      v2 = *v1;
      return LogPrintF();
    }
  }

  return result;
}

_DWORD *sub_10013DF0C(_DWORD *result)
{
  *result = -6708;
  if (dword_100971478 <= 50)
  {
    if (dword_100971478 != -1)
    {
      return sub_100019DA8();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return sub_100019DA8();
    }
  }

  return result;
}

uint64_t sub_10013DF74()
{
  if (dword_100971478 <= 50)
  {
    if (dword_100971478 != -1)
    {
      return LogPrintF();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF();
    }
  }

  return result;
}

uint64_t sub_10013DFF0(uint64_t result)
{
  if (dword_100971478 <= 60)
  {
    if (dword_100971478 != -1)
    {
      return LogPrintF();
    }

    v1 = result;
    result = _LogCategory_Initialize();
    if (result)
    {
      v2 = *v1;
      return LogPrintF();
    }
  }

  return result;
}

void sub_10013E100()
{
  if (dword_100971478 <= 60 && (dword_100971478 != -1 || _LogCategory_Initialize()))
  {
    sub_100019C4C();
  }
}

void sub_10013E160()
{
  if (dword_100971478 <= 60 && (dword_100971478 != -1 || _LogCategory_Initialize()))
  {
    sub_100019C4C();
  }
}

void sub_10013E1C0()
{
  v0 = SFTextInputDataLogString();
  LogPrintF();
}

void sub_10013E2DC(void *a1)
{
  v1 = [a1 bleDevice];
  LogPrintF();
}

void sub_10013E338(void *a1)
{
  v1 = [a1 bleDevice];
  LogPrintF();
}

void sub_10013E64C()
{
  if (dword_100971478 <= 60 && (dword_100971478 != -1 || _LogCategory_Initialize()))
  {
    sub_100019C4C();
  }
}

void sub_10013E6EC()
{
  if (dword_100971478 <= 60 && (dword_100971478 != -1 || _LogCategory_Initialize()))
  {
    sub_100019C4C();
  }
}

void sub_10013E78C()
{
  if (dword_100971478 <= 60 && (dword_100971478 != -1 || _LogCategory_Initialize()))
  {
    sub_100019C4C();
  }
}

void sub_10013E7EC(void *a1)
{
  v1 = [a1 bleDevice];
  LogPrintF();
}

void sub_10013E848(void *a1)
{
  v1 = [a1 bleDevice];
  LogPrintF();
}

void sub_10013E8A4(uint64_t a1)
{
  v1 = [*(a1 + 32) bleDevice];
  LogPrintF();
}

void sub_10013EB20(id a1)
{
  v1 = objc_alloc_init(SDSharedRemoteTextInputClient);
  v2 = qword_100989F48;
  qword_100989F48 = v1;
}

void sub_10013ED4C(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) _updatedSessionInfoWithAppIcon:?];
  [*(a1 + 32) _rtiHandleInputDidBeginWithFlags:a2 sessionInfo:v4];
}

void sub_10013F178(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 handleEventWithData:*(a1 + 32)];
  }
}

void sub_10013F2C0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 handleInputDidBeginWithFlags:*(a1 + 40) sessionInfo:*(a1 + 32)];
  }
}

void sub_10013F40C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 handleInputDidEndWithFlags:*(a1 + 40) sessionInfo:*(a1 + 32)];
  }
}

id sub_10013F6D4(uint64_t a1)
{
  v1 = a1 + 32;
  v2 = *(*(a1 + 32) + 24);
  if (v2)
  {
    v3 = v2;
    dispatch_source_cancel(v3);
    v4 = *(*v1 + 24);
    *(*v1 + 24) = 0;
  }

  if (dword_100971508 <= 30 && (dword_100971508 != -1 || _LogCategory_Initialize()))
  {
    sub_10013FA44(v1);
  }

  v5 = *v1;

  return [v5 _logEvent:5 stopClock:1];
}

void sub_10013F8EC()
{
  v0 = SFTextInputDataLogString();
  LogPrintF();
}

uint64_t sub_10013F9C8(unint64_t a1)
{
  if (a1 <= 5)
  {
    v1 = off_1008D1548[a1];
  }

  return LogPrintF();
}

void sub_10013FFA4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 32));
  [WeakRetained airDropInformation:*(a1 + 32) didChange:*(*(a1 + 32) + 24)];
}

void sub_10014038C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001403B4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handlePolicyChange];
}

void sub_100140468(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1[4] allValues];
  [v1 _retrievePoliciesForBundleIdentifiers:v2];
}

void sub_100140534(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  *(v2 + 8) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 56);
  *(v4 + 56) = 0;
}

void sub_100140684(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10014069C(void *a1)
{
  v2 = [*(a1[4] + 40) objectForKey:a1[5]];
  *(*(a1[6] + 8) + 24) = [v2 integerValue];
}

void sub_100140794(uint64_t a1)
{
  v2 = *(a1 + 40);
  v6 = *(*(a1 + 32) + 24);
  v3 = v2;
  if (v6 == v3)
  {
  }

  else
  {
    if ((v6 != 0) != (v3 == 0))
    {
      v4 = [v6 isEqual:v3];

      if (v4)
      {
        return;
      }
    }

    else
    {
    }

    objc_storeStrong((*(a1 + 32) + 24), *(a1 + 40));
    [*(a1 + 32) _updateBundleIdentifierMappings];
    v5 = *(a1 + 32);

    [v5 _retrieveMissingPolicies];
  }
}

void sub_100140930(uint64_t a1)
{
  v2 = +[NSMutableArray array];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v21;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v20 + 1) + 8 * i);
        v9 = *(*(a1 + 40) + 32);
        v10 = [v8 activityType];
        v11 = [v9 objectForKeyedSubscript:v10];

        if (!v11)
        {
          v12 = [*(a1 + 40) bundleIDForActivity:v8];
          if (!v12)
          {
            continue;
          }

          v11 = v12;
        }

        [v2 addObject:v11];
        v13 = *(*(a1 + 40) + 32);
        v14 = [v8 activityType];
        [v13 setObject:v11 forKeyedSubscript:v14];
      }

      v5 = [v3 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v5);
  }

  v15 = *(*(a1 + 40) + 8);
  v19 = 0;
  v16 = [v15 requestPoliciesForBundleIdentifiers:v2 withError:&v19];
  v17 = v19;
  if (v17)
  {
    v18 = share_sheet_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_1001416B4(v2);
    }
  }

  else
  {
    [*(a1 + 40) _handleUpdateForPoliciesByBundleIdentifier:v16];
  }
}

void sub_100140C28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100140C40(void *a1)
{
  v2 = [*(a1[4] + 32) objectForKeyedSubscript:a1[5]];
  if (v2)
  {
    v4 = v2;
    v3 = [*(a1[4] + 40) objectForKey:v2];
    *(*(a1[6] + 8) + 24) = [v3 integerValue];

    v2 = v4;
  }
}

void sub_1001411A0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v4 = [*(*(a1 + 32) + 40) objectForKeyedSubscript:?];
  if (!v4)
  {
    [*(a1 + 40) addObject:v5];
  }
}

void sub_100141340(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  v5 = [*(*(a1 + 32) + 32) allKeysForObject:a2];
  v6 = [v5 firstObject];

  if (v6 && [v7 BOOLValue])
  {
    [*(a1 + 40) addObject:v6];
  }
}

void sub_1001414A8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1001414C4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = share_sheet_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1001417A4(a1);
    }
  }

  else
  {
    v8 = *(*(a1 + 40) + 16);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1001415CC;
    v9[3] = &unk_1008CDC30;
    objc_copyWeak(&v11, (a1 + 48));
    v10 = v5;
    dispatch_sync(v8, v9);

    objc_destroyWeak(&v11);
  }
}

void sub_1001415CC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handleUpdateForPoliciesByBundleIdentifier:*(a1 + 32)];
}

void sub_1001416B4(uint64_t a1)
{
  LODWORD(v3) = 138412546;
  *(&v3 + 4) = a1;
  sub_100008968();
  sub_100019DC4(&_mh_execute_header, v1, v2, "Failed requesting policies for bundleIDs:%@ with error:%@", v3, DWORD2(v3));
}

void sub_100141724(uint64_t a1)
{
  v2 = 138412546;
  v3 = a1;
  sub_100008968();
  _os_log_fault_impl(&_mh_execute_header, v1, OS_LOG_TYPE_FAULT, "unexpected slow path to retrieve extension bundle identifier for activity:%@ extension:%@", &v2, 0x16u);
}

void sub_1001417A4(uint64_t a1)
{
  LODWORD(v3) = 138412546;
  *(&v3 + 4) = *(a1 + 32);
  sub_100008968();
  sub_100019DC4(&_mh_execute_header, v1, v2, "Failed requesting policies for bundleIDS:%@ with error:%@", v3, DWORD2(v3));
}

void sub_100141818(id a1)
{
  v1 = objc_alloc_init(SDServerBrowser);
  v2 = qword_100989F58;
  qword_100989F58 = v1;
}

void sub_100143FBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100143FE4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained acceptActionTriggered];
}

void sub_100144168(uint64_t a1)
{
  [*(a1 + 32) setSelectedApplication:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = [v2 selectedApplication];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100144214;
  v4[3] = &unk_1008CDAA8;
  v4[4] = *(a1 + 32);
  [v2 performActionWithBundleProxy:v3 completionHandler:v4];
}

void sub_100144214(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) completionHandler];
  v3[2](v3, a2, 0, 1);
}

uint64_t sub_100144A28(uint64_t a1)
{
  v2 = airdrop_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Resource open operation completed for %@", &v5, 0xCu);
  }

  return (*(*(a1 + 40) + 16))();
}

void sub_100145224(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) completionHandler];
  v3[2](v3, a2, 0, 1);
}

void sub_100145928(_Unwind_Exception *a1)
{
  objc_destroyWeak(v1);
  objc_destroyWeak((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_100145980(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained launchFilesToDefaultFolder];
}

void sub_1001459C0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained transfer];
  v2 = [v1 completedURLs];

  [WeakRetained launchMoveToAppShareSheetForFiles:v2];
}

void sub_100145A30(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained transfer];
  v2 = [v1 completedURLs];

  [WeakRetained launchMoveToAppShareSheetForFiles:v2];
}

void sub_100145D9C(uint64_t *a1, NSObject *a2)
{
  v3 = *a1;
  v4 = SFCompactStringFromCollection();
  v5 = 138412290;
  v6 = v4;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Generic handler found available applications %@", &v5, 0xCu);
}

void sub_100145E38(uint64_t a1, void *a2)
{
  v7 = [a2 transfer];
  sub_100008860();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100145EE4(void *a1)
{
  v6 = [a1 transfer];
  sub_100008860();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100146010(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Cannot generate ready-for-open actions for bundle ID %@. Error when fetching bundle record: %@", &v3, 0x16u);
}

void sub_100146098(void *a1)
{
  v6 = [a1 selectedApplication];
  sub_100008860();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
}

uint64_t SDAuthenticationApprovePromptReadFrom(uint64_t a1, void *a2)
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
          v23 = 0;
          v24 = 0;
          v25 = 0;
          *(a1 + 44) |= 2u;
          while (1)
          {
            v42 = 0;
            v26 = [a2 position] + 1;
            if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
            {
              v28 = [a2 data];
              [v28 getBytes:&v42 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v25 |= (v42 & 0x7F) << v23;
            if ((v42 & 0x80) == 0)
            {
              break;
            }

            v23 += 7;
            v11 = v24++ >= 9;
            if (v11)
            {
              v29 = 0;
              goto LABEL_60;
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

LABEL_60:
          v38 = 36;
          goto LABEL_67;
        }

        if (v13 == 2)
        {
          v31 = 0;
          v32 = 0;
          v33 = 0;
          *(a1 + 44) |= 1u;
          while (1)
          {
            v41 = 0;
            v34 = [a2 position] + 1;
            if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
            {
              v36 = [a2 data];
              [v36 getBytes:&v41 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v33 |= (v41 & 0x7F) << v31;
            if ((v41 & 0x80) == 0)
            {
              break;
            }

            v31 += 7;
            v11 = v32++ >= 9;
            if (v11)
            {
              v29 = 0;
              goto LABEL_66;
            }
          }

          if ([a2 hasError])
          {
            v29 = 0;
          }

          else
          {
            v29 = v33;
          }

LABEL_66:
          v38 = 32;
LABEL_67:
          *(a1 + v38) = v29;
          goto LABEL_68;
        }

        if (v13 != 3)
        {
          goto LABEL_44;
        }

        v14 = PBReaderReadString();
        v15 = 24;
        goto LABEL_56;
      }

      if (v13 == 4)
      {
        break;
      }

      if (v13 == 5)
      {
        v14 = PBReaderReadString();
        v15 = 16;
        goto LABEL_56;
      }

      if (v13 != 6)
      {
LABEL_44:
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
      *(a1 + 44) |= 4u;
      while (1)
      {
        v43 = 0;
        v19 = [a2 position] + 1;
        if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
        {
          v21 = [a2 data];
          [v21 getBytes:&v43 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v18 |= (v43 & 0x7F) << v16;
        if ((v43 & 0x80) == 0)
        {
          break;
        }

        v16 += 7;
        v11 = v17++ >= 9;
        if (v11)
        {
          LOBYTE(v22) = 0;
          goto LABEL_62;
        }
      }

      v22 = (v18 != 0) & ~[a2 hasError];
LABEL_62:
      *(a1 + 40) = v22;
LABEL_68:
      v39 = [a2 position];
      if (v39 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = PBReaderReadString();
    v15 = 8;
LABEL_56:
    v37 = *(a1 + v15);
    *(a1 + v15) = v14;

    goto LABEL_68;
  }

  return [a2 hasError] ^ 1;
}

uint64_t SDAuthenticationPairingRequestReadFrom(uint64_t a1, void *a2)
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
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v21 = PBReaderReadString();
          v22 = 16;
        }

        else
        {
          if (v13 != 4)
          {
LABEL_32:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_54;
          }

          v21 = PBReaderReadData();
          v22 = 8;
        }

        v30 = *(a1 + v22);
        *(a1 + v22) = v21;
      }

      else
      {
        if (v13 == 1)
        {
          v24 = 0;
          v25 = 0;
          v26 = 0;
          *(a1 + 32) |= 2u;
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
            v20 = v26;
          }

LABEL_52:
          v31 = 28;
        }

        else
        {
          if (v13 != 2)
          {
            goto LABEL_32;
          }

          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 32) |= 1u;
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
          v31 = 24;
        }

        *(a1 + v31) = v20;
      }

LABEL_54:
      v32 = [a2 position];
    }

    while (v32 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1001481B8(uint64_t a1)
{
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v2 = +[AKURLBag sharedBag];
  v3 = *(a1 + 48);
  if (v3 <= 1)
  {
    if (!v3)
    {
      v4 = 0;
      v5 = @"createCertificate";
      goto LABEL_17;
    }

    if (v3 == 1)
    {
      v4 = 0;
      v5 = @"fetchCertificate";
      goto LABEL_17;
    }
  }

  else
  {
    switch(v3)
    {
      case 2:
        v4 = 0;
        v5 = @"getMyInfo";
        goto LABEL_17;
      case 3:
        v4 = 0;
        v5 = @"findPerson";
        goto LABEL_17;
      case 4:
        v4 = 0;
        v5 = @"lookupPersonHandles";
        goto LABEL_17;
    }
  }

  if (dword_100971638 <= 60)
  {
    if (dword_100971638 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_16;
      }

      v3 = *(a1 + 48);
    }

    v13 = v3;
    LogPrintF();
  }

LABEL_16:
  v5 = 0;
  *(v25 + 6) = 201239;
  v4 = 1;
LABEL_17:
  if ([(__CFString *)v5 isEqualToString:@"lookupPersonHandles", v13])
  {
    v6 = [NSURL URLWithString:@"https://aidc.apple.com/aidcert/services/lookupPersonHandles"];
    v7 = *(*(a1 + 32) + 16);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001484F4;
    block[3] = &unk_1008CF578;
    v8 = *(a1 + 40);
    v22 = v6;
    v23 = v8;
    v9 = v6;
    dispatch_async(v7, block);
  }

  else
  {
    if (v4)
    {
      *(v25 + 6) = 201200;
      v10 = *(*(a1 + 32) + 16);
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_10014850C;
      v18[3] = &unk_1008D0BB8;
      v19 = *(a1 + 40);
      v20 = &v24;
      dispatch_async(v10, v18);
      v11 = v19;
    }

    else
    {
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_10014852C;
      v14[3] = &unk_1008D1700;
      v12 = *(a1 + 40);
      v14[4] = *(a1 + 32);
      v16 = &v24;
      v17 = *(a1 + 48);
      v15 = v12;
      [v2 urlForKey:v5 completion:v14];
      v11 = v15;
    }
  }

  _Block_object_dispose(&v24, 8);
}

void sub_10014852C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 16);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10014861C;
  block[3] = &unk_1008D16D8;
  v16 = *(a1 + 56);
  v13 = v6;
  v14 = v5;
  v11 = *(a1 + 40);
  v8 = v11;
  v15 = v11;
  v9 = v5;
  v10 = v6;
  dispatch_async(v7, block);
}

uint64_t sub_10014861C(void *a1)
{
  if (a1[4])
  {
    if (dword_100971638 <= 90)
    {
      if (dword_100971638 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_10;
        }

        v6 = a1[4];
      }

      LogPrintF();
    }

LABEL_10:
    *(*(a1[7] + 8) + 24) = 201241;
    goto LABEL_11;
  }

  if (dword_100971638 <= 30 && (dword_100971638 != -1 || _LogCategory_Initialize()))
  {
    sub_10014B7F8(a1);
  }

LABEL_11:
  v2 = a1[5];
  v3 = *(*(a1[7] + 8) + 24);
  v4 = *(a1[6] + 16);

  return v4();
}

void sub_100148A94(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1 + 32);
  v11 = *(v10 + 16);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100148B80;
  v15[3] = &unk_1008CE158;
  v15[4] = v10;
  v16 = v8;
  v17 = v7;
  v18 = v9;
  v12 = v7;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, v15);
}

id sub_100148B80(void *a1)
{
  v1 = a1[4];
  v2 = a1[5];
  v4 = a1[6];
  v3 = a1[7];
  v5 = NSErrorToOSStatus();

  return [v1 _handleTaskResponse:v2 withData:v4 error:v5];
}

void sub_100148C78(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  dispatch_assert_queue_V2(*(*(a1 + 32) + 16));
  if (a3)
  {
    goto LABEL_2;
  }

  if (!v5)
  {
    a3 = 4294960587;
LABEL_2:
    [*(a1 + 32) _callResponseHandlerWithInfo:0 error:a3];
    goto LABEL_5;
  }

  [*(a1 + 32) setUrlRequest:v5];
  [*(a1 + 32) _handleURLRequestIsAvailable];
LABEL_5:
}

void sub_10014B648(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = a3;
  dispatch_assert_queue_V2(*(*(a1 + 32) + 16));
  if (*(*(a1 + 32) + 9))
  {
    v11 = 4294960573;
LABEL_11:
    [*(a1 + 32) _callResponseHandlerWithInfo:0 error:{v11, v12}];
    goto LABEL_5;
  }

  if (a4)
  {
    v11 = 201220;
    if (dword_100971638 <= 60 && (dword_100971638 != -1 || _LogCategory_Initialize()))
    {
      v12 = a4;
      LogPrintF();
    }

    goto LABEL_11;
  }

  v13 = 0;
  sub_1006F3830(v7, v8, &v13);
  v9 = v13;
  if (v9)
  {
    v10 = v9;
    [*(a1 + 32) setGsToken:v9];
    [*(a1 + 32) _handleGSTokenIsAvailable];
  }

LABEL_5:
}

uint64_t sub_10014B78C(uint64_t result)
{
  if (result <= 90)
  {
    if (result != -1)
    {
      return LogPrintF();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF();
    }
  }

  return result;
}

void sub_10014B7F8(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (v1 <= 4)
  {
    v2 = *(&off_1008D17E8 + v1);
  }

  v3 = [*(a1 + 40) absoluteString];
  LogPrintF();
}

uint64_t sub_10014B888(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  if (dword_100971638 <= 90)
  {
    if (dword_100971638 != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF();
    }
  }

  if ((v5 & 1) == 0)
  {
    v6 = *(a2 + 16);

    return v6(a2, 0, a3);
  }

  return result;
}

uint64_t sub_10014B96C(uint64_t result, _DWORD *a2)
{
  if (result <= 60)
  {
    if (result != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF();
    }
  }

  *a2 = -6723;
  return result;
}

void sub_10014B9E8()
{
  if (dword_100971638 <= 60 && (dword_100971638 != -1 || _LogCategory_Initialize()))
  {
    sub_100019C4C();
  }
}

uint64_t sub_10014BA48(void *a1)
{
  v1 = [a1 type];
  if (v1 <= 4)
  {
    v2 = *(&off_1008D17E8 + v1);
  }

  return LogPrintF();
}

void sub_10014BAAC(void *a1)
{
  v2 = [a1 urlRequest];
  v3 = [v2 allHTTPHeaderFields];
  v4 = [a1 taskInfo];
  LogPrintF();
}

uint64_t sub_10014BC4C(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (v1 <= 4)
  {
    v2 = *(&off_1008D17E8 + v1);
  }

  return LogPrintF();
}

uint64_t sub_10014BCB0(uint64_t result)
{
  if (result <= 60)
  {
    if (result != -1)
    {
      return sub_100019C4C();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return sub_100019C4C();
    }
  }

  return result;
}

uint64_t sub_10014BD08(void *a1)
{
  v1 = [a1 type];
  if (v1 <= 4)
  {
    v2 = *(&off_1008D17E8 + v1);
  }

  return LogPrintF();
}

uint64_t sub_10014BD78(void *a1, void *a2)
{
  v3 = [a1 type];
  if (v3 <= 4)
  {
    v4 = *(&off_1008D17E8 + v3);
  }

  [a2 statusCode];
  return LogPrintF();
}

void sub_10014BDF0(void *a1)
{
  v1 = [a1 responseInfo];
  LogPrintF();
}

uint64_t sub_10014BE4C(uint64_t result, void *a2)
{
  v2 = result;
  if (dword_100971638 <= 60)
  {
    if (dword_100971638 != -1 || (result = _LogCategory_Initialize(), result))
    {
      [a2 statusCode];
      result = LogPrintF();
    }
  }

  *v2 = -6712;
  return result;
}

uint64_t sub_10014BEDC(uint64_t result)
{
  v1 = result;
  if (dword_100971638 <= 60)
  {
    if (dword_100971638 != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF();
    }
  }

  *v1 = -6762;
  return result;
}

uint64_t sub_10014BF54(uint64_t result, _DWORD *a2)
{
  if (result <= 60)
  {
    if (result != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF();
    }
  }

  *a2 = -6762;
  return result;
}

void sub_10014C05C(id a1)
{
  v1 = objc_alloc_init(SDConnectionManager);
  v2 = qword_100989F60;
  qword_100989F60 = v1;
}

void sub_10014C370(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10014C3A8(uint64_t a1)
{
  v2 = daemon_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_10014D4F4();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained xpcConnection];
  [v4 invalidate];
}

void sub_10014C414(uint64_t a1)
{
  v2 = daemon_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_10014D528();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained cleanUpConnections];

  v4 = objc_loadWeakRetained((a1 + 32));
  [v4 setXpcConnection:0];

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10014C4F8;
  block[3] = &unk_1008CDD98;
  objc_copyWeak(&v6, (a1 + 32));
  dispatch_async(&_dispatch_main_q, block);
  objc_destroyWeak(&v6);
}

void sub_10014C4F8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained delegate];
  v3 = objc_loadWeakRetained((a1 + 32));
  [v2 connectionManagerDidInvalidate:v3];
}

void sub_10014C6A8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 48);
  if (v3)
  {
    [v3 stop];
    v4 = *(a1 + 32);
    v5 = *(v4 + 48);
    *(v4 + 48) = 0;

    v2 = *(a1 + 32);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = *(v2 + 72);
  v7 = [v6 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v25;
    do
    {
      v10 = 0;
      do
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v24 + 1) + 8 * v10);
        v12 = +[SDStreamManager sharedManager];
        [v12 closeStreamsForIdentifier:v11];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v8);
  }

  [*(*(a1 + 32) + 72) removeAllObjects];
  v13 = [*(a1 + 32) unlockSessions];
  v14 = [v13 copy];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v15 = v14;
  v16 = [v15 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v21;
    do
    {
      v19 = 0;
      do
      {
        if (*v21 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [*(*(&v20 + 1) + 8 * v19) invalidate];
        v19 = v19 + 1;
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v17);
  }
}

void sub_10014CC90(uint64_t a1)
{
  v2 = +[NSUUID UUID];
  v3 = [v2 UUIDString];

  v4 = +[SDStreamManager sharedManager];
  v5 = *(a1 + 32);
  v6 = *(*(a1 + 40) + 16);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10014CD90;
  v7[3] = &unk_1008CE648;
  v8 = *(a1 + 48);
  [v4 getContinuationStreamsForMessage:v5 bundleID:v6 usingID:v3 completionHandler:v7];

  [*(*(a1 + 40) + 72) addObject:v3];
}

void sub_10014CD90(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  v6 = a2;
  v5(v4, v6, a3);
  [v6 closeFile];
}

void sub_10014D1D8(id a1)
{
  v1 = +[SDStatusMonitor sharedMonitor];
  [v1 handleAppleAccountSignIn];
}

void sub_10014D268(id a1)
{
  v1 = +[SDStatusMonitor sharedMonitor];
  [v1 handleAppleAccountSignOut];
}

uint64_t SDUnlockSetupRequestReadFrom(uint64_t a1, void *a2)
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
          v31 = 0;
          v32 = 0;
          v33 = 0;
          *(a1 + 36) |= 2u;
          while (1)
          {
            v42 = 0;
            v34 = [a2 position] + 1;
            if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
            {
              v36 = [a2 data];
              [v36 getBytes:&v42 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v33 |= (v42 & 0x7F) << v31;
            if ((v42 & 0x80) == 0)
            {
              break;
            }

            v31 += 7;
            v11 = v32++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_58;
            }
          }

          if ([a2 hasError])
          {
            v27 = 0;
          }

          else
          {
            v27 = v33;
          }

LABEL_58:
          v38 = 28;
        }

        else
        {
          if (v13 != 2)
          {
LABEL_53:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_66;
          }

          v21 = 0;
          v22 = 0;
          v23 = 0;
          *(a1 + 36) |= 1u;
          while (1)
          {
            v41 = 0;
            v24 = [a2 position] + 1;
            if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
            {
              v26 = [a2 data];
              [v26 getBytes:&v41 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v23 |= (v41 & 0x7F) << v21;
            if ((v41 & 0x80) == 0)
            {
              break;
            }

            v21 += 7;
            v11 = v22++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_64;
            }
          }

          if ([a2 hasError])
          {
            v27 = 0;
          }

          else
          {
            v27 = v23;
          }

LABEL_64:
          v38 = 24;
        }

        *(a1 + v38) = v27;
      }

      else
      {
        if (v13 == 3)
        {
          v28 = PBReaderReadData();
          v29 = 8;
LABEL_43:
          v30 = *(a1 + v29);
          *(a1 + v29) = v28;

          goto LABEL_66;
        }

        if (v13 == 4)
        {
          v28 = PBReaderReadData();
          v29 = 16;
          goto LABEL_43;
        }

        if (v13 != 5)
        {
          goto LABEL_53;
        }

        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 36) |= 4u;
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
            LOBYTE(v20) = 0;
            goto LABEL_60;
          }
        }

        v20 = (v16 != 0) & ~[a2 hasError];
LABEL_60:
        *(a1 + 32) = v20;
      }

LABEL_66:
      v39 = [a2 position];
    }

    while (v39 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_10014EC90(uint64_t result)
{
  v1 = *(result + 32);
  if ((*(v1 + 8) & 1) == 0)
  {
    *(v1 + 8) = 1;
    *(*(result + 32) + 72) = 0;
    *(*(result + 32) + 40) = 0;
    *(*(result + 32) + 48) = 0;
    *(*(result + 32) + 32) = 0;
  }

  return result;
}

intptr_t sub_10014F008(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 24) == 1 && *(v2 + 8) == 1)
  {
    destLen = compressBound(*(a1 + 64));
    v3 = malloc_type_malloc(destLen, 0x100004077774924uLL);
    Current = CFAbsoluteTimeGetCurrent();
    compress(v3, &destLen, *(a1 + 72), *(a1 + 64));
    v5 = CFAbsoluteTimeGetCurrent() - Current;
    v6 = destLen;
    v7 = 1;
    v8 = 1;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v6 = *(a1 + 64);
    v3 = *(a1 + 72);
    v5 = 0.0;
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    dispatch_semaphore_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
  }

  v10 = CFAbsoluteTimeGetCurrent();
  [*(a1 + 32) sendOutgoingChunk:v3 length:v6 compressed:v8];
  v11 = CFAbsoluteTimeGetCurrent();
  v12 = *(a1 + 32);
  v13 = *(v12 + 96);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10014F190;
  block[3] = &unk_1008D1880;
  block[4] = v12;
  *&block[5] = v11 - v10;
  v18 = v7;
  v14 = *(a1 + 64);
  block[6] = v6;
  block[7] = v14;
  *&block[8] = v5;
  dispatch_sync(v13, block);
  v15 = *(a1 + 72);
  if (v3 != v15)
  {
    free(v15);
  }

  free(v3);
  dispatch_semaphore_signal(*(a1 + 48));
  return dispatch_semaphore_signal(*(a1 + 56));
}

_BYTE *sub_10014F190(uint64_t a1)
{
  *(*(a1 + 32) + 16) = *(a1 + 40) + *(*(a1 + 32) + 16);
  *(*(a1 + 32) + 12) += *(a1 + 48);
  ++*(*(a1 + 32) + 32);
  if (*(a1 + 72) == 1)
  {
    *(*(a1 + 32) + 40) += *(a1 + 56);
    *(*(a1 + 32) + 72) += *(a1 + 48);
    *(*(a1 + 32) + 64) = *(a1 + 64) + *(*(a1 + 32) + 64);
    ++*(*(a1 + 32) + 48);
  }

  result = *(a1 + 32);
  if (result[8] == 1)
  {
    [result processNetworkStatistics:*(a1 + 40)];
    v3 = *(a1 + 32);

    return [v3 processCompressibilityStatistics];
  }

  return result;
}

void sub_10014F49C()
{
  sub_100019CAC();
  sub_100035D98();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10014F510()
{
  sub_100019CAC();
  sub_100035D98();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

uint64_t SDAutoUnlockSessionWrapperReadFrom(uint64_t a1, void *a2)
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
        v52 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v52 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v52 & 0x7F) << v5;
        if ((v52 & 0x80) == 0)
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
      if ((v12 >> 3) <= 5)
      {
        if (v13 <= 2)
        {
          if (v13 == 1)
          {
            v23 = 0;
            v24 = 0;
            v25 = 0;
            *(a1 + 88) |= 8u;
            while (1)
            {
              v56 = 0;
              v26 = [a2 position] + 1;
              if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
              {
                v28 = [a2 data];
                [v28 getBytes:&v56 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v25 |= (v56 & 0x7F) << v23;
              if ((v56 & 0x80) == 0)
              {
                break;
              }

              v23 += 7;
              v11 = v24++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_88;
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

LABEL_88:
            v50 = 80;
            goto LABEL_101;
          }

          if (v13 != 2)
          {
LABEL_83:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_102;
          }

          v21 = PBReaderReadData();
          v22 = 72;
        }

        else
        {
          switch(v13)
          {
            case 3:
              v21 = PBReaderReadData();
              v22 = 56;
              break;
            case 4:
              v29 = 0;
              v30 = 0;
              v31 = 0;
              *(a1 + 88) |= 4u;
              while (1)
              {
                v55 = 0;
                v32 = [a2 position] + 1;
                if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
                {
                  v34 = [a2 data];
                  [v34 getBytes:&v55 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v31 |= (v55 & 0x7F) << v29;
                if ((v55 & 0x80) == 0)
                {
                  break;
                }

                v29 += 7;
                v11 = v30++ >= 9;
                if (v11)
                {
                  v20 = 0;
                  goto LABEL_92;
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

LABEL_92:
              v50 = 40;
LABEL_101:
              *(a1 + v50) = v20;
              goto LABEL_102;
            case 5:
              v21 = PBReaderReadData();
              v22 = 64;
              break;
            default:
              goto LABEL_83;
          }
        }
      }

      else
      {
        if (v13 <= 8)
        {
          switch(v13)
          {
            case 6:
              v41 = 0;
              v42 = 0;
              v43 = 0;
              *(a1 + 88) |= 0x10u;
              while (1)
              {
                v57 = 0;
                v44 = [a2 position] + 1;
                if (v44 >= [a2 position] && (v45 = objc_msgSend(a2, "position") + 1, v45 <= objc_msgSend(a2, "length")))
                {
                  v46 = [a2 data];
                  [v46 getBytes:&v57 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v43 |= (v57 & 0x7F) << v41;
                if ((v57 & 0x80) == 0)
                {
                  break;
                }

                v41 += 7;
                v11 = v42++ >= 9;
                if (v11)
                {
                  LOBYTE(v47) = 0;
                  goto LABEL_105;
                }
              }

              v47 = (v43 != 0) & ~[a2 hasError];
LABEL_105:
              *(a1 + 84) = v47;
              goto LABEL_102;
            case 7:
              v35 = 0;
              v36 = 0;
              v37 = 0;
              *(a1 + 88) |= 2u;
              while (1)
              {
                v54 = 0;
                v38 = [a2 position] + 1;
                if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 1, v39 <= objc_msgSend(a2, "length")))
                {
                  v40 = [a2 data];
                  [v40 getBytes:&v54 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v37 |= (v54 & 0x7F) << v35;
                if ((v54 & 0x80) == 0)
                {
                  break;
                }

                v35 += 7;
                v11 = v36++ >= 9;
                if (v11)
                {
                  v20 = 0;
                  goto LABEL_96;
                }
              }

              if ([a2 hasError])
              {
                v20 = 0;
              }

              else
              {
                v20 = v37;
              }

LABEL_96:
              v50 = 24;
              break;
            case 8:
              v14 = 0;
              v15 = 0;
              v16 = 0;
              *(a1 + 88) |= 1u;
              while (1)
              {
                v53 = 0;
                v17 = [a2 position] + 1;
                if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
                {
                  v19 = [a2 data];
                  [v19 getBytes:&v53 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v16 |= (v53 & 0x7F) << v14;
                if ((v53 & 0x80) == 0)
                {
                  break;
                }

                v14 += 7;
                v11 = v15++ >= 9;
                if (v11)
                {
                  v20 = 0;
                  goto LABEL_100;
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

LABEL_100:
              v50 = 8;
              break;
            default:
              goto LABEL_83;
          }

          goto LABEL_101;
        }

        switch(v13)
        {
          case 9:
            v21 = PBReaderReadData();
            v22 = 32;
            break;
          case 0xA:
            v21 = PBReaderReadData();
            v22 = 16;
            break;
          case 0xB:
            v21 = PBReaderReadData();
            v22 = 48;
            break;
          default:
            goto LABEL_83;
        }
      }

      v48 = *(a1 + v22);
      *(a1 + v22) = v21;

LABEL_102:
      v51 = [a2 position];
    }

    while (v51 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t SDUnlockStartLTKTransferReadFrom(uint64_t a1, void *a2)
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
        v22 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v22 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v22 & 0x7F) << v5;
        if ((v22 & 0x80) == 0)
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
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 12) |= 1u;
        while (1)
        {
          v23 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v23 & 0x7F) << v13;
          if ((v23 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_32;
          }
        }

        v19 = [a2 hasError] ? 0 : v15;
LABEL_32:
        *(a1 + 8) = v19;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t SDAutoUnlockEscrowSecretInfoReadFrom(uint64_t a1, void *a2)
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

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadData();
        v14 = &OBJC_IVAR___SDAutoUnlockEscrowSecretInfo__secret;
LABEL_21:
        v15 = *v14;
        v16 = *(a1 + v15);
        *(a1 + v15) = v13;

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

    v13 = PBReaderReadString();
    v14 = &OBJC_IVAR___SDAutoUnlockEscrowSecretInfo__pairingID;
    goto LABEL_21;
  }

  return [a2 hasError] ^ 1;
}

void sub_1001524D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100152500(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleAction];
}

Class sub_100152754()
{
  if (qword_100989F78 != -1)
  {
    sub_1001528E4();
  }

  result = objc_getClass("_SFSharablePasswordReceiver");
  qword_100989F70 = result;
  off_1009717C8 = sub_1001527A8;
  return result;
}

void sub_100152BBC(id a1)
{
  v1 = objc_alloc_init(SDAutoUnlockAKSManager);
  v2 = qword_100989F88;
  qword_100989F88 = v1;
}

void sub_1001531D0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1001531F4(uint64_t a1)
{
  v2 = auto_unlock_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "DCRT OOB performed", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateLocalLTK];
}

id sub_1001532FC(uint64_t a1)
{
  result = sub_100022E18();
  if (result)
  {
    v3 = auto_unlock_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Profile installed disabling Auto Unlock", v4, 2u);
    }

    [*(a1 + 32) setAutoUnlockDisabledDueToManagement:1];
    return [*(a1 + 32) handleRequiredStateDisabled];
  }

  return result;
}

void sub_100153474(id a1, NSError *a2)
{
  v2 = a2;
  v3 = auto_unlock_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10015E960();
  }
}

uint64_t sub_100154D50(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v8 = [v5 cachedSessionKeys];
  v9 = [v8 objectForKeyedSubscript:v7];

  v10 = [*(a1 + 32) cachedSessionKeys];
  v11 = [v10 objectForKeyedSubscript:v6];

  v12 = -1;
  if (!v9)
  {
    v12 = 1;
  }

  if ((v9 != 0) != (v11 == 0))
  {
    return 0;
  }

  else
  {
    return v12;
  }
}

void sub_1001551D0(uint64_t a1, void *a2)
{
  if (a2)
  {
    v8 = 0;
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = a2;
    v6 = [v3 remoteLTKForDeviceID:v4];
    sub_10005DDA0(v5, v6, 1, &v8);

    v7 = auto_unlock_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v10 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Experimental attempt to register for MacUnlockPhone got error: %d", buf, 8u);
    }

    if (v8 == -536363002)
    {
      [*(a1 + 32) disablePairingForAllLockPhones];
    }
  }
}

void sub_100155654(uint64_t a1)
{
  v2 = sub_10005D0A0([*(a1 + 32) ltkKeyClassWithAttestation:*(a1 + 56)], *(a1 + 56));
  if (!v2)
  {
    goto LABEL_25;
  }

  v3 = sub_10005C828();
  v4 = objc_opt_new();
  [v4 setVersion:2];
  [v4 setLtk:v2];
  if (v3)
  {
    v5 = sub_1001133CC(v3);
    [v4 setLtkID:v5];
  }

  v6 = *(a1 + 56);
  v7 = *(a1 + 32);
  v8 = [v7 localDeviceID];
  v9 = [*(a1 + 40) computerName];
  if (v6 == 1)
  {
    v10 = [v7 storeAttestedLongTermKey:v4 forDeviceID:v8 name:v9];

    if ((v10 & 1) == 0)
    {
      goto LABEL_16;
    }

LABEL_8:
    v12 = auto_unlock_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [*(a1 + 32) localDeviceID];
      v14 = *(a1 + 56);
      v21 = 138412802;
      v22 = v13;
      if (v14)
      {
        v15 = @"YES";
      }

      else
      {
        v15 = @"NO";
      }

      v23 = 2112;
      v24 = @"YES";
      v25 = 2112;
      v26 = v15;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Saved Local LTK (device ID: %@, saved: %@ attested: %@)", &v21, 0x20u);
    }

    v16 = *(a1 + 32);
    if (*(a1 + 56) == 1)
    {
      [v16 setLocalAttestedLTK:v2];
    }

    else
    {
      [v16 setLocalLTK:v2];
    }

    goto LABEL_16;
  }

  v11 = [v7 storeLongTermKey:v4 forDeviceID:v8 name:v9];

  if (v11)
  {
    goto LABEL_8;
  }

LABEL_16:
  v17 = SFDeviceClassCodeGet();
  if (v17 == 7)
  {
    v19 = auto_unlock_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v21) = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "New local LTK, clearing escrow secrets", &v21, 2u);
    }

    [*(a1 + 32) handleRequiredStateDisabled];
  }

  else if (v17 == 1)
  {
    v18 = auto_unlock_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v21) = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "New local LTK, clearing remote LTKs and disabling Auto Unlock for all keys", &v21, 2u);
    }

    [*(a1 + 32) disablePairingForAllKeyDevices];
    [*(a1 + 32) clearRemoteLTKs];
  }

LABEL_25:
  v20 = *(a1 + 48);
  if (v20)
  {
    (*(v20 + 16))(v20, v2, 0);
  }
}

void sub_100155934(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [*(a1 + 32) isMobileActivationErrorNetworkError:v3];
    v5 = auto_unlock_log();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (v4)
    {
      if (v6)
      {
        v8 = 138412290;
        v9 = v3;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Got Mobile Activation network error %@", &v8, 0xCu);
      }

      v7 = [NSError errorWithDomain:SFAuthenticationErrorCodeDomain code:39 userInfo:0];
      (*(*(a1 + 48) + 16))();
    }

    else
    {
      if (v6)
      {
        v8 = 138412290;
        v9 = v3;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Got Mobile Activation error %@", &v8, 0xCu);
      }

      (*(*(a1 + 48) + 16))();
    }
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_100156D94(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = [a3 objectForKeyedSubscript:@"Modern LTK Data"];

  if (v5)
  {
    [*(a1 + 32) addObject:v6];
  }
}

void sub_100156EF0(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = [a3 objectForKeyedSubscript:@"LTK Data"];

  if (v5)
  {
    [*(a1 + 32) addObject:v6];
  }
}

void sub_1001573D0(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = [a3 objectForKeyedSubscript:@"LTK Data"];
  [v3 addObject:v4];
}

void sub_100157CD8(id a1, NSError *a2)
{
  v2 = auto_unlock_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_10015F02C();
  }
}

void sub_100158354(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1 + 32);
  v12 = 0;
  v11 = [NSPropertyListSerialization dataWithPropertyList:v10 format:200 options:0 error:&v12];
  if (v11)
  {
    [*(a1 + 40) sendLTKResponseWithPayload:v11 viewState:v7 needsUnlock:v8 currentlySyncing:v9];
  }
}

void sub_100158654(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] ltkInfoForDeviceID:v3 modern:0];
  v5 = [v4 ltk];
  if ([v4 hasLtkID])
  {
    v6 = [NSUUID alloc];
    v7 = [v4 ltkID];
    v8 = [v6 initWithUUIDBytes:{objc_msgSend(v7, "bytes")}];
  }

  else
  {
    v8 = 0;
  }

  v9 = [a1[4] modificationDataForDeviceID:v3 modern:0];
  v10 = [a1[4] longTermKeyForDevice:v3 modern:1];
  v11 = [a1[4] modificationDataForDeviceID:v3 modern:1];
  if (v5 | v10)
  {
    if (v5 && [a1[5] version] == 1)
    {
      [a1[6] setObject:v5 forKeyedSubscript:v3];
    }

    else
    {
      v13 = objc_opt_new();
      [v13 setObject:v5 forKeyedSubscript:@"LTK Data"];
      [v13 setObject:v9 forKeyedSubscript:@"LTK Mod Date"];
      [v13 setObject:v10 forKeyedSubscript:@"Modern LTK Data"];
      [v13 setObject:v11 forKeyedSubscript:@"Modern LTK Mod Date"];
      if (v8)
      {
        v14 = [v8 UUIDString];
        [v13 setObject:v14 forKeyedSubscript:@"LTK ID"];
      }

      [a1[6] setObject:v13 forKeyedSubscript:v3];
    }
  }

  else
  {
    v12 = auto_unlock_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10015F1E0();
    }
  }
}

id sub_100158B38(uint64_t a1)
{
  v2 = auto_unlock_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Keybag assertion fired", v4, 2u);
  }

  return [*(a1 + 32) releaseKeybagAssertion];
}

void sub_10015BA18(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v8 = objc_opt_new();
  [v8 setObject:v5 forKeyedSubscript:@"Companion ID"];

  v7 = [*(a1 + 32) watchIDsToPairingRecords];
  [v7 setObject:v8 forKeyedSubscript:v6];
}

Class sub_10015E890()
{
  if (qword_100989FA0 != -1)
  {
    sub_100160398();
  }

  result = objc_getClass("CDPStateController");
  qword_100989F98 = result;
  off_1009717D0 = sub_100025304;
  return result;
}

void sub_10015E924()
{
  sub_100019C0C();
  sub_100035D98();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10015E960()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10015EA38()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10015EA74()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10015EAB0()
{
  sub_10000883C();
  sub_100008990();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10015EC1C()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10015EC8C(void *a1)
{
  v1 = [a1 UUIDString];
  sub_10000883C();
  sub_100008860();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10015ED18(void *a1)
{
  v1 = [a1 localDeviceID];
  sub_10000883C();
  sub_100008860();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10015EDA4(void *a1)
{
  v1 = [a1 localDeviceID];
  sub_10000883C();
  sub_100008860();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10015EE30()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10015EEAC()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10015EEE8()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10015EF58(void *a1)
{
  v2 = [a1 remoteLTKs];
  v3 = [a1 remoteLTKs];
  v9 = [v3 objectForKeyedSubscript:@"Remote LTKs"];
  sub_100008860();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_10015F02C()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10015F068(void *a1)
{
  [a1 hasLocalID];
  [a1 hasLtk];
  sub_100008860();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_10015F134()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10015F1A4()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10015F1E0()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10015F250()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10015F28C()
{
  sub_100019C0C();
  sub_100035D98();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10015F478()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10015F4E8(void *a1)
{
  v1 = [a1 remoteLTKs];
  sub_10000883C();
  sub_100023F5C(&_mh_execute_header, v2, v3, "Saved remote LTKs: %@", v4, v5, v6, v7, v8);
}

void sub_10015F56C()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10015F5DC()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10015F64C()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10015F6BC()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10015F72C(void *a1)
{
  v1 = [a1 watchIDsToPairingRecords];
  sub_10000883C();
  sub_100023F5C(&_mh_execute_header, v2, v3, "Saved watch ID to pairing record: %@", v4, v5, v6, v7, v8);
}

void sub_10015F7B0()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10015F888()
{
  sub_100019C0C();
  sub_100035D98();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10015F8C4()
{
  objc_opt_class();
  sub_10000883C();
  v1 = v0;
  sub_100008860();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10015F950(void *a1)
{
  v1 = [a1 watchIDsToPairingRecords];
  sub_10000883C();
  sub_100023F5C(&_mh_execute_header, v2, v3, "Loaded pairing records dictionary: %@", v4, v5, v6, v7, v8);
}

void sub_10015F9D4()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10015FA44()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10015FA80()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10015FABC()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10015FB2C()
{
  sub_1000089A0();
  sub_100008990();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10015FC04()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10015FC74()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10015FCE4()
{
  sub_1000089A0();
  sub_100008990();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10015FD54()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10015FDC4()
{
  sub_10000883C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10015FE34()
{
  sub_1000089A0();
  sub_100008990();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10015FEA4()
{
  sub_1000089A0();
  sub_100008990();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10015FF14()
{
  sub_100019D64();
  sub_100008990();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void sub_10015FF90(void *a1)
{
  [a1 hasSecret];
  sub_100008860();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_10016003C()
{
  sub_100019D64();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1001600AC()
{
  sub_100019D64();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10016011C()
{
  sub_100019D64();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10016020C()
{
  sub_100019D64();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_10016027C()
{
  sub_100019C0C();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001602B8()
{
  sub_100019D64();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_100160328()
{
  sub_100019D64();
  sub_100008830();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

uint64_t SDAutoUnlockLTKRequestReadFrom(uint64_t a1, void *a2)
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
        v46 = 0;
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
            v37 = 0;
            v38 = 0;
            v39 = 0;
            *(a1 + 48) |= 4u;
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
                LOBYTE(v22) = 0;
                goto LABEL_78;
              }
            }

            v22 = (v39 != 0) & ~[a2 hasError];
LABEL_78:
            v44 = 45;
          }

          else
          {
            if (v13 != 8)
            {
LABEL_69:
              result = PBReaderSkipValueWithTag();
              if (!result)
              {
                return result;
              }

              goto LABEL_82;
            }

            v16 = 0;
            v17 = 0;
            v18 = 0;
            *(a1 + 48) |= 8u;
            while (1)
            {
              v48 = 0;
              v19 = [a2 position] + 1;
              if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
              {
                v21 = [a2 data];
                [v21 getBytes:&v48 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v18 |= (v48 & 0x7F) << v16;
              if ((v48 & 0x80) == 0)
              {
                break;
              }

              v16 += 7;
              v11 = v17++ >= 9;
              if (v11)
              {
                LOBYTE(v22) = 0;
                goto LABEL_80;
              }
            }

            v22 = (v18 != 0) & ~[a2 hasError];
LABEL_80:
            v44 = 46;
          }

          goto LABEL_81;
        }

        if (v13 == 5)
        {
          v30 = 0;
          v31 = 0;
          v32 = 0;
          *(a1 + 48) |= 2u;
          while (1)
          {
            v50 = 0;
            v33 = [a2 position] + 1;
            if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
            {
              v35 = [a2 data];
              [v35 getBytes:&v50 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v32 |= (v50 & 0x7F) << v30;
            if ((v50 & 0x80) == 0)
            {
              break;
            }

            v30 += 7;
            v11 = v31++ >= 9;
            if (v11)
            {
              LOBYTE(v22) = 0;
              goto LABEL_76;
            }
          }

          v22 = (v32 != 0) & ~[a2 hasError];
LABEL_76:
          v44 = 44;
LABEL_81:
          *(a1 + v44) = v22;
          goto LABEL_82;
        }

        if (v13 != 6)
        {
          goto LABEL_69;
        }

        v14 = PBReaderReadString();
        v15 = 32;
      }

      else if (v13 > 2)
      {
        if (v13 == 3)
        {
          v14 = PBReaderReadData();
          v15 = 16;
        }

        else
        {
          if (v13 != 4)
          {
            goto LABEL_69;
          }

          v14 = PBReaderReadData();
          v15 = 24;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v23 = 0;
          v24 = 0;
          v25 = 0;
          *(a1 + 48) |= 1u;
          while (1)
          {
            v47 = 0;
            v26 = [a2 position] + 1;
            if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
            {
              v28 = [a2 data];
              [v28 getBytes:&v47 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v25 |= (v47 & 0x7F) << v23;
            if ((v47 & 0x80) == 0)
            {
              break;
            }

            v23 += 7;
            v11 = v24++ >= 9;
            if (v11)
            {
              v29 = 0;
              goto LABEL_74;
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

LABEL_74:
          *(a1 + 40) = v29;
          goto LABEL_82;
        }

        if (v13 != 2)
        {
          goto LABEL_69;
        }

        v14 = PBReaderReadString();
        v15 = 8;
      }

      v36 = *(a1 + v15);
      *(a1 + v15) = v14;

LABEL_82:
      v45 = [a2 position];
    }

    while (v45 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t SDAutoUnlockLTKResponseReadFrom(uint64_t a1, void *a2)
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
      if ((v12 >> 3) <= 2)
      {
        if (v13 == 1)
        {
          v35 = 0;
          v36 = 0;
          v37 = 0;
          *(a1 + 24) |= 1u;
          while (1)
          {
            v46 = 0;
            v38 = [a2 position] + 1;
            if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 1, v39 <= objc_msgSend(a2, "length")))
            {
              v40 = [a2 data];
              [v40 getBytes:&v46 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v37 |= (v46 & 0x7F) << v35;
            if ((v46 & 0x80) == 0)
            {
              break;
            }

            v35 += 7;
            v11 = v36++ >= 9;
            if (v11)
            {
              v41 = 0;
              goto LABEL_69;
            }
          }

          if ([a2 hasError])
          {
            v41 = 0;
          }

          else
          {
            v41 = v37;
          }

LABEL_69:
          *(a1 + 16) = v41;
        }

        else
        {
          if (v13 != 2)
          {
LABEL_60:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_73;
          }

          v21 = PBReaderReadData();
          v22 = *(a1 + 8);
          *(a1 + 8) = v21;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v23 = 0;
            v24 = 0;
            v25 = 0;
            *(a1 + 24) |= 8u;
            while (1)
            {
              v49 = 0;
              v26 = [a2 position] + 1;
              if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
              {
                v28 = [a2 data];
                [v28 getBytes:&v49 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v25 |= (v49 & 0x7F) << v23;
              if ((v49 & 0x80) == 0)
              {
                break;
              }

              v23 += 7;
              v11 = v24++ >= 9;
              if (v11)
              {
                LOBYTE(v20) = 0;
                goto LABEL_63;
              }
            }

            v20 = (v25 != 0) & ~[a2 hasError];
LABEL_63:
            v43 = 22;
            break;
          case 4:
            v29 = 0;
            v30 = 0;
            v31 = 0;
            *(a1 + 24) |= 4u;
            while (1)
            {
              v48 = 0;
              v32 = [a2 position] + 1;
              if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
              {
                v34 = [a2 data];
                [v34 getBytes:&v48 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v31 |= (v48 & 0x7F) << v29;
              if ((v48 & 0x80) == 0)
              {
                break;
              }

              v29 += 7;
              v11 = v30++ >= 9;
              if (v11)
              {
                LOBYTE(v20) = 0;
                goto LABEL_65;
              }
            }

            v20 = (v31 != 0) & ~[a2 hasError];
LABEL_65:
            v43 = 21;
            break;
          case 5:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 24) |= 2u;
            while (1)
            {
              v47 = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v47 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v47 & 0x7F) << v14;
              if ((v47 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                LOBYTE(v20) = 0;
                goto LABEL_71;
              }
            }

            v20 = (v16 != 0) & ~[a2 hasError];
LABEL_71:
            v43 = 20;
            break;
          default:
            goto LABEL_60;
        }

        *(a1 + v43) = v20;
      }

LABEL_73:
      v44 = [a2 position];
    }

    while (v44 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_100163474(id a1)
{
  v1 = objc_alloc_init(SDBroadwayAgent);
  v2 = qword_100989FB8;
  qword_100989FB8 = v1;
}

void sub_100163610(uint64_t a1)
{
  if (dword_100971838 <= 30 && (dword_100971838 != -1 || _LogCategory_Initialize()))
  {
    sub_100164CCC();
  }

  v2 = +[NSDistributedNotificationCenter defaultCenter];
  [v2 addObserver:*(a1 + 32) selector:"_applePayCardDectected:" name:@"com.apple.stockholm.wallet.tag" object:0 suspensionBehavior:4];
}

void sub_100163B88(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_100163BA4(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if ([v7 state] == 1 || *(a1 + 56) == 1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained lookupPhysicalCardWithBroadwayActivationCode:*(a1 + 32) testInfo:*(a1 + 40)];
LABEL_4:

    goto LABEL_5;
  }

  if (dword_100971838 <= 30 && (dword_100971838 != -1 || _LogCategory_Initialize()))
  {
    sub_100164DA0(v7, v5, &v8);
    WeakRetained = v8;
    goto LABEL_4;
  }

LABEL_5:
}

void sub_100163F04(_Unwind_Exception *a1)
{
  objc_destroyWeak(v1);
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_100163F2C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 16);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100164014;
  block[3] = &unk_1008D1B00;
  v7 = v3;
  v11 = *(a1 + 64);
  v5 = v3;
  objc_copyWeak(&v10, (a1 + 56));
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  dispatch_async(v4, block);

  objc_destroyWeak(&v10);
}

void sub_100164014(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    goto LABEL_2;
  }

  if (*(a1 + 64) != 1 || (*(a1 + 65) & 1) != 0)
  {
    goto LABEL_19;
  }

  if (dword_100971838 <= 30 && (dword_100971838 != -1 || _LogCategory_Initialize()))
  {
    sub_100164E48();
  }

  off_1009718B0[0]();
  v2 = objc_opt_new();
  if (v2)
  {
LABEL_2:
    v4 = v2;
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    [WeakRetained _startUIWithPhysicalCard:v4 activationCode:*(a1 + 40) testInfo:*(a1 + 48)];
  }

  else
  {
LABEL_19:
    if (dword_100971838 <= 30 && (dword_100971838 != -1 || _LogCategory_Initialize()))
    {
      sub_100164E64();
    }
  }
}

void sub_100164118(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 16);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100164200;
  block[3] = &unk_1008D1B00;
  v7 = v3;
  v11 = *(a1 + 64);
  v5 = v3;
  objc_copyWeak(&v10, (a1 + 56));
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  dispatch_async(v4, block);

  objc_destroyWeak(&v10);
}

void sub_100164200(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    if (*(a1 + 64) == 1 && (*(a1 + 65) & 1) == 0)
    {
      if (dword_100971838 <= 30 && (dword_100971838 != -1 || _LogCategory_Initialize()))
      {
        sub_100164E80();
      }

      off_1009718B0[0]();
      v2 = objc_opt_new();
    }

    else
    {
      v2 = 0;
    }
  }

  v4 = v2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _startUIWithPhysicalCard:v4 activationCode:*(a1 + 40) testInfo:*(a1 + 48)];
}

uint64_t sub_100164700(uint64_t result)
{
  if (*(result + 32) == *(*(result + 40) + 8))
  {
    if (dword_100971838 <= 30)
    {
      if (dword_100971838 != -1)
      {
        return sub_100164EDC();
      }

      result = _LogCategory_Initialize();
      if (result)
      {
        return sub_100164EDC();
      }
    }
  }

  else if (dword_100971838 <= 60)
  {
    if (dword_100971838 != -1)
    {
      return LogPrintF();
    }

    v1 = result;
    result = _LogCategory_Initialize();
    if (result)
    {
      v2 = *(v1 + 32);
      return LogPrintF();
    }
  }

  return result;
}

uint64_t sub_100164858(uint64_t result)
{
  if (*(result + 32) == *(*(result + 40) + 8))
  {
    if (dword_100971838 <= 30)
    {
      if (dword_100971838 != -1)
      {
        return sub_100164EF8();
      }

      result = _LogCategory_Initialize();
      if (result)
      {
        return sub_100164EF8();
      }
    }
  }

  else if (dword_100971838 <= 60)
  {
    if (dword_100971838 != -1)
    {
      return LogPrintF();
    }

    v1 = result;
    result = _LogCategory_Initialize();
    if (result)
    {
      v2 = *(v1 + 32);
      return LogPrintF();
    }
  }

  return result;
}

void sub_1001649DC(uint64_t a1)
{
  if (*(a1 + 32) == *(*(a1 + 40) + 8))
  {
    if (dword_100971838 <= 30 && (dword_100971838 != -1 || _LogCategory_Initialize()))
    {
      sub_100164F58(a1);
    }

    v2 = *(a1 + 40);
    v3 = *(v2 + 8);
    *(v2 + 8) = 0;
  }

  else if (dword_100971838 <= 30 && (dword_100971838 != -1 || _LogCategory_Initialize()))
  {
    sub_100164F14(a1);
  }
}

Class sub_100164AF4()
{
  if (qword_100989FC8 != -1)
  {
    sub_100164F9C();
  }

  result = objc_getClass("PKAccountService");
  qword_100989FC0 = result;
  off_1009718A8[0] = sub_100164B48;
  return result;
}

uint64_t sub_100164B80(uint64_t a1)
{
  if (qword_100989FC8 != -1)
  {
    sub_100164F9C();
  }

  v2 = dlsym(qword_100989FD0, "PKAccountStateToString");
  off_1009718B8 = v2;

  return v2(a1);
}

Class sub_100164BEC()
{
  if (qword_100989FC8 != -1)
  {
    sub_100164F9C();
  }

  result = objc_getClass("PKPhysicalCard");
  qword_100989FD8 = result;
  off_1009718B0[0] = sub_100164C40;
  return result;
}

uint64_t sub_100164C4C(uint64_t a1)
{
  if (qword_100989FC8 != -1)
  {
    sub_100164F9C();
  }

  v2 = dlsym(qword_100989FD0, "PKStringFromPhysicalCardState");
  off_1009718C0 = v2;

  return (v2)(a1);
}

uint64_t sub_100164DA0(void *a1, uint64_t a2, uint64_t *a3)
{
  v4 = [a1 state];
  *a3 = off_1009718B8(v4);
  return LogPrintF();
}

void sub_10016516C(void *a1, void *a2, void *a3)
{
  if (dword_1009718C8 <= 60 && (dword_1009718C8 != -1 || _LogCategory_Initialize()))
  {
    v6 = [a1 localizedDescription];
    LogPrintF();
  }

  *a3 = a1;
  *a2 = 0;
}

uint64_t SDAutoUnlockDeviceFirstUnlockedReadFrom(uint64_t a1, void *a2)
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
        v22 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v22 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v22 & 0x7F) << v5;
        if ((v22 & 0x80) == 0)
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
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 12) |= 1u;
        while (1)
        {
          v23 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v23 & 0x7F) << v13;
          if ((v23 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_32;
          }
        }

        v19 = [a2 hasError] ? 0 : v15;
LABEL_32:
        *(a1 + 8) = v19;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_100165E40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100165E68(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained triggerImport];
}

uint64_t SDUnlockStateResponseReadFrom(uint64_t a1, void *a2)
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
        v28 = 0;
        v29 = 0;
        v30 = 0;
        *(a1 + 16) |= 2u;
        while (1)
        {
          v39 = 0;
          v31 = [a2 position] + 1;
          if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
          {
            v33 = [a2 data];
            [v33 getBytes:&v39 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v30 |= (v39 & 0x7F) << v28;
          if ((v39 & 0x80) == 0)
          {
            break;
          }

          v28 += 7;
          v11 = v29++ >= 9;
          if (v11)
          {
            LOBYTE(v27) = 0;
            goto LABEL_52;
          }
        }

        v27 = (v30 != 0) & ~[a2 hasError];
LABEL_52:
        v35 = 12;
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
            *(a1 + 16) |= 1u;
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
                goto LABEL_57;
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

LABEL_57:
            *(a1 + 8) = v20;
          }

          else
          {
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }
          }

          goto LABEL_58;
        }

        v21 = 0;
        v22 = 0;
        v23 = 0;
        *(a1 + 16) |= 4u;
        while (1)
        {
          v40 = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v23 |= (v40 & 0x7F) << v21;
          if ((v40 & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v11 = v22++ >= 9;
          if (v11)
          {
            LOBYTE(v27) = 0;
            goto LABEL_50;
          }
        }

        v27 = (v23 != 0) & ~[a2 hasError];
LABEL_50:
        v35 = 13;
      }

      *(a1 + v35) = v27;
LABEL_58:
      v36 = [a2 position];
    }

    while (v36 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1001680E4(id a1)
{
  v1 = +[SDStatusMonitor sharedMonitor];
  v2 = [v1 enableContinuity];

  if (v2)
  {
    v3 = objc_alloc_init(SDActivityPayloadManager);
    v4 = qword_100989FE0;
    qword_100989FE0 = v3;
  }
}

void sub_10016837C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_100168398(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  *(*(a1 + 32) + 64) = [WeakRetained manateeAvailable];
}

void sub_100168534(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = handoff_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100170130();
    }
  }
}

void sub_100168A94(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 completionHandler];

  v5 = handoff_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
  if (v4)
  {
    if (v6)
    {
      sub_100170198();
    }

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v8 = @"EncryptionKey";
    if (isKindOfClass)
    {
      v8 = @"Request";
    }

    v9 = *(a1 + 32);
    v10 = v8;
    v11 = [v3 requestCreatedDate];
    [v11 timeIntervalSinceNow];
    [v9 logDashboardHandoffRequestViaTransportLinkType:0xFFFFFFFFLL type:v10 success:0 rtt:?];

    v5 = [v3 completionHandler];
    v12 = [v3 error];
    (*(v5 + 16))(v5, 0, v12);
  }

  else if (v6)
  {
    sub_100170200(a1);
  }
}

void sub_1001690B4(uint64_t a1)
{
  v3 = +[NSRunLoop mainRunLoop];
  v2 = [*(a1 + 32) timeoutTimer];
  [v3 addTimer:v2 forMode:NSDefaultRunLoopMode];
}

id *sub_100169130(id *result, char a2)
{
  if ((a2 & 1) == 0)
  {
    v3 = result;
    v4 = [result[4] requestCreatedDate];
    [v4 timeIntervalSinceNow];
    v6 = v5;
    v7 = [v3[4] requestCreatedDate];
    [v7 timeIntervalSinceNow];
    if (v6 < 0.0)
    {
      v9 = -v8;
    }

    else
    {
      v9 = v8;
    }

    v10 = [v3[4] timeoutTimeInterval] - v9;
    v11 = objc_opt_new();
    [v3[4] setRequestCreatedDate:v11];

    [v3[4] setTimeoutTimeInterval:v10];
    v12 = v3[5];
    v13 = v3[6];
    v14 = v3[4];

    return [v12 sendIDSEncryptionKeyRequest:v13 withRequestRecord:v14 desiredTimeout:v10];
  }

  return result;
}

void sub_1001695C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001695EC(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_copyWeak(&to, (a1 + 64));
  if (v3)
  {
    v4 = handoff_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100170394(a1);
    }

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v23 = RPOptionTimeoutSeconds;
    v5 = [NSNumber numberWithInt:*(a1 + 72)];
    v24 = v5;
    v6 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];

    v7 = objc_loadWeakRetained(&to);
    v8 = [v7 linkClient];
    v14 = _NSConcreteStackBlock;
    v15 = 3221225472;
    v16 = sub_100169864;
    v17 = &unk_1008D1C18;
    v9 = *(a1 + 32);
    v18 = *(a1 + 40);
    objc_copyWeak(&v21, &to);
    v10 = RPDestinationIdentifierDirectPeer;
    v19 = *(a1 + 48);
    v20 = *(a1 + 56);
    [v8 sendRequestID:@"com.apple.handoff.encryption-key-request" request:v9 destinationID:v10 options:v6 responseHandler:&v14];

    v11 = *(a1 + 40);
    v12 = objc_loadWeakRetained(&to);
    v13 = [v12 requestIdentifier];
    [v11 messageWithIdentifier:v13 didSendWithSuccess:1 error:0];

    objc_destroyWeak(&v21);
  }

  objc_destroyWeak(&to);
}

void sub_100169820(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100169864(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    Int64Ranged = CFDictionaryGetInt64Ranged();
    v11 = handoff_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      WeakRetained = objc_loadWeakRetained((a1 + 56));
      v21 = [v8 objectForKeyedSubscript:RPOptionXID];
      v22 = v21;
      if (Int64Ranged > 0xB)
      {
        v23 = "?";
      }

      else
      {
        v23 = off_1008D1DF0[Int64Ranged & 0xF];
      }

      v24 = 138413058;
      v25 = WeakRetained;
      v26 = 2112;
      v27 = v21;
      v28 = 2080;
      v29 = v23;
      v30 = 2112;
      v31 = v9;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Encryption key request %@ with xid %@ via Rapport (%s) failed with error %@", &v24, 0x2Au);
    }

    if ([v9 code] != -6714)
    {
      v12 = *(a1 + 32);
      v13 = objc_loadWeakRetained((a1 + 56));
      v14 = [v13 requestCreatedDate];
      [v14 timeIntervalSinceNow];
      [v12 logDashboardHandoffRequestViaTransportLinkType:Int64Ranged type:@"EncryptionKey" success:0 rtt:?];
    }

    v15 = *(*(a1 + 48) + 16);
  }

  else
  {
    v16 = *(a1 + 32);
    v17 = objc_loadWeakRetained((a1 + 56));
    [v16 handleEncryptionKeyReplyRapport:v7 options:v8 forRequestRecord:v17 fromDevice:*(a1 + 40)];

    v15 = *(*(a1 + 48) + 16);
  }

  v15();
  v18 = objc_loadWeakRetained((a1 + 56));
  v19 = [v18 linkClient];
  [v19 invalidate];
}

void sub_10016A9D4(uint64_t a1)
{
  v3 = +[NSRunLoop mainRunLoop];
  v2 = [*(a1 + 32) timeoutTimer];
  [v3 addTimer:v2 forMode:NSDefaultRunLoopMode];
}

id *sub_10016AA50(id *result, char a2)
{
  if ((a2 & 1) == 0)
  {
    v3 = result;
    v4 = [result[4] requestCreatedDate];
    [v4 timeIntervalSinceNow];
    v6 = v5;
    v7 = [v3[4] requestCreatedDate];
    [v7 timeIntervalSinceNow];
    if (v6 < 0.0)
    {
      v9 = -v8;
    }

    else
    {
      v9 = v8;
    }

    v10 = [v3[4] timeoutTimeInterval] - v9;
    v11 = objc_opt_new();
    [v3[4] setRequestCreatedDate:v11];

    [v3[4] setTimeoutTimeInterval:v10];
    v12 = v3[5];
    v13 = v3[6];
    v14 = v3[4];

    return [v12 sendIDSActivityPayloadRequest:v13 withRequestRecord:v14 desiredTimeout:v10];
  }

  return result;
}

void sub_10016B0F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v31 - 176), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10016B12C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10016B144(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = handoff_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_10017058C();
  }

  v5 = [v3 identifier];
  v6 = [*(a1 + 32) deviceIdentifier];
  v7 = [v5 isEqualToString:v6];

  if (v7)
  {
    v8 = handoff_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Found device we were looking for, attempting to send message", buf, 2u);
    }

    v10 = *(a1 + 40);
    v9 = *(a1 + 48);
    v11 = *(a1 + 32);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10016B2B4;
    v12[3] = &unk_1008D1C68;
    v13 = *(a1 + 56);
    v14 = *(a1 + 64);
    [v10 sendActivityPayloadRequestMessageToDevice:v9 withRequestRecord:v11 withDestinationDevice:v3 completionHandler:v12];
  }
}

void sub_10016B2B4(void *a1)
{
  (*(a1[4] + 16))();
  [*(*(a1[5] + 8) + 40) invalidate];
  v2 = *(a1[5] + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  *(*(a1[6] + 8) + 24) = 1;
}

void sub_10016B318(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = handoff_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1001705F4();
    }

    (*(*(a1 + 48) + 16))();
  }

  v5 = *(*(a1 + 32) + 112);
  if (v5)
  {
    v6 = v5;
    dispatch_source_cancel(v6);
    v7 = *(a1 + 32);
    v8 = *(v7 + 112);
    *(v7 + 112) = 0;
  }

  v9 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, &_dispatch_main_q);
  v10 = *(a1 + 32);
  v11 = *(v10 + 112);
  *(v10 + 112) = v9;

  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10016B4B4;
  handler[3] = &unk_1008D1CB8;
  v12 = *(a1 + 56);
  v17 = *(a1 + 32);
  v13 = *(v17 + 112);
  v14 = *(&v17 + 1);
  v21 = *(a1 + 64);
  *&v15 = *(a1 + 48);
  *(&v15 + 1) = v12;
  v19 = v17;
  v20 = v15;
  dispatch_source_set_event_handler(v13, handler);
  v16 = *(*(a1 + 32) + 112);
  SFDispatchTimerSet();
  dispatch_resume(*(*(a1 + 32) + 112));
}

void sub_10016B4B4(void *a1)
{
  v2 = *(a1[4] + 112);
  if (v2)
  {
    v3 = v2;
    dispatch_source_cancel(v3);
    v4 = a1[4];
    v5 = *(v4 + 112);
    *(v4 + 112) = 0;
  }

  if ((*(*(a1[7] + 8) + 24) & 1) == 0)
  {
    v6 = handoff_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = a1[5];
      v10 = 138412290;
      v11 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Cannot send Handoff payload request %@ via Rapport as we did not find the target device. Did not send message.", &v10, 0xCu);
    }

    [*(*(a1[8] + 8) + 40) invalidate];
    v8 = *(a1[8] + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = 0;

    (*(a1[6] + 16))();
  }
}

void sub_10016B89C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10016B8C8(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_copyWeak(&to, (a1 + 64));
  if (v3)
  {
    v4 = handoff_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100170394(a1);
    }

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v23 = RPOptionTimeoutSeconds;
    v5 = [NSNumber numberWithInt:*(a1 + 72)];
    v24 = v5;
    v6 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];

    v7 = objc_loadWeakRetained(&to);
    v8 = [v7 linkClient];
    v14 = _NSConcreteStackBlock;
    v15 = 3221225472;
    v16 = sub_10016BB40;
    v17 = &unk_1008D1C18;
    v9 = *(a1 + 32);
    v18 = *(a1 + 40);
    objc_copyWeak(&v21, &to);
    v10 = RPDestinationIdentifierDirectPeer;
    v19 = *(a1 + 48);
    v20 = *(a1 + 56);
    [v8 sendRequestID:@"com.apple.handoff.payload-request" request:v9 destinationID:v10 options:v6 responseHandler:&v14];

    v11 = *(a1 + 40);
    v12 = objc_loadWeakRetained(&to);
    v13 = [v12 requestIdentifier];
    [v11 messageWithIdentifier:v13 didSendWithSuccess:1 error:0];

    objc_destroyWeak(&v21);
  }

  objc_destroyWeak(&to);
}

void sub_10016BAFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10016BB40(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    Int64Ranged = CFDictionaryGetInt64Ranged();
    v11 = handoff_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      WeakRetained = objc_loadWeakRetained((a1 + 56));
      v21 = [v8 objectForKeyedSubscript:RPOptionXID];
      v22 = v21;
      if (Int64Ranged > 0xB)
      {
        v23 = "?";
      }

      else
      {
        v23 = off_1008D1DF0[Int64Ranged & 0xF];
      }

      v24 = 138413058;
      v25 = WeakRetained;
      v26 = 2112;
      v27 = v21;
      v28 = 2080;
      v29 = v23;
      v30 = 2112;
      v31 = v9;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Handoff payload request %@ with xid %@ via Rapport (%s) failed with error %@", &v24, 0x2Au);
    }

    if ([v9 code] != -6714)
    {
      v12 = *(a1 + 32);
      v13 = objc_loadWeakRetained((a1 + 56));
      v14 = [v13 requestCreatedDate];
      [v14 timeIntervalSinceNow];
      [v12 logDashboardHandoffRequestViaTransportLinkType:Int64Ranged type:@"Request" success:0 rtt:?];
    }

    v15 = *(*(a1 + 48) + 16);
  }

  else
  {
    v16 = *(a1 + 32);
    v17 = objc_loadWeakRetained((a1 + 56));
    [v16 handlePayloadReplyRapport:v7 options:v8 forRequestRecord:v17 fromDevice:*(a1 + 40)];

    v15 = *(*(a1 + 48) + 16);
  }

  v15();
  v18 = objc_loadWeakRetained((a1 + 56));
  v19 = [v18 linkClient];
  [v19 invalidate];
}

void sub_10016C8F0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = handoff_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) name];
    v6 = 138412290;
    v7 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Responding to Handoff encryption key request from %@ via Rapport", &v6, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_10016D4E8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = handoff_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [*(a1 + 32) name];
    v13 = 138412290;
    v14 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Responding to Handoff payload request from %@ via Rapport", &v13, 0xCu);
  }

  v9 = handoff_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_1001709F8();
  }

  v10 = handoff_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_100170A60();
  }

  (*(*(a1 + 48) + 16))();
  [*(a1 + 40) activityPayloadReplySuccess:v6];
  v11 = *(a1 + 40);
  v12 = [v6 messageIdentifier];
  [v11 messageWithIdentifier:v12 didSendWithSuccess:1 error:0];
}

void sub_10016DAF4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = *(a1 + 32);
  v10 = a2;
  [v9 timeIntervalSinceNow];
  v11 = SFStringFromTimeInterval();
  v12 = handoff_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v31 = *(a1 + 40);
    v13 = [*(a1 + 48) name];
    v14 = v7;
    v15 = v8;
    v16 = v10;
    v17 = v11;
    v19 = *(a1 + 56);
    v18 = *(a1 + 64);
    v20 = *(a1 + 72);
    v21 = SFHexStringForData();
    v22 = *(a1 + 80);
    *buf = 138413826;
    v33 = v31;
    v34 = 2112;
    v35 = v13;
    v36 = 2112;
    v37 = v19;
    v11 = v17;
    v10 = v16;
    v8 = v15;
    v7 = v14;
    v38 = 2112;
    v39 = v18;
    v40 = 2112;
    v41 = v21;
    v42 = 2112;
    v43 = v22;
    v44 = 2112;
    v45 = v11;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Ready to respond to handoff request via %@ from %@ (%@) with requestIdentifier %@ for advertisementPayload %@, command: %@. RTT:%@", buf, 0x48u);
  }

  v23 = handoff_log();
  v24 = v23;
  if (v7)
  {
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      sub_100170B64();
    }
  }

  else
  {
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_100170C3C(a1);
    }

    v7 = +[NSData data];
  }

  v25 = objc_opt_new();
  [v25 setObject:*(a1 + 72) forKeyedSubscript:@"rAdvPayload"];
  [v25 setObject:v7 forKeyedSubscript:@"rActPayload"];
  if (v8)
  {
    v26 = [v8 domain];
    [v25 setObject:v26 forKeyedSubscript:@"rActPayloadErrorDomain"];

    v27 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v8 code]);
    [v25 setObject:v27 forKeyedSubscript:@"rActPayloadErrorCode"];
  }

  v28 = objc_opt_new();
  v29 = objc_opt_new();
  [v29 setMessageIdentifier:v28];
  v30 = [[NSUUID alloc] initWithUUIDString:*(a1 + 64)];
  [v29 setRequestIdentifier:v30];

  [v29 setActivityIdentifier:v10];
  [v29 setDeviceIdentifier:*(a1 + 56)];
  [*(*(a1 + 88) + 88) setObject:v29 forKeyedSubscript:v28];
  (*(*(a1 + 96) + 16))();
}

void sub_10016FE80(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) objectForKeyedSubscript:@"rActPayload"];
  v5 = [v3 advertisementPayload];

  if (v5 && v4)
  {
    if ([*(*(a1 + 40) + 120) count] == 3)
    {
      [*(*(a1 + 40) + 120) removeLastObject];
    }

    v6 = *(*(a1 + 40) + 120);
    v20[0] = *(a1 + 48);
    v19[0] = @"deviceIdentifier";
    v19[1] = @"advertisementPayload";
    v7 = [v3 advertisementPayload];
    v19[2] = @"activityPayload";
    v20[1] = v7;
    v20[2] = v4;
    v8 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:3];
    [v6 insertObject:v8 atIndex:0];
  }

  v9 = handoff_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = [*(a1 + 56) name];
    if (v4)
    {
      v11 = @"YES";
    }

    else
    {
      v11 = @"NO";
    }

    v12 = [v3 description];
    v13 = 138412802;
    v14 = v10;
    v15 = 2112;
    v16 = v11;
    v17 = 2112;
    v18 = v12;
    _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "from %@, is final:%@, %@", &v13, 0x20u);
  }
}

void sub_100170200(uint64_t a1)
{
  v1 = [*(a1 + 40) UUIDString];
  sub_10000883C();
  sub_100008860();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100170290()
{
  sub_100021E7C();
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  sub_1000088C4();
  sub_100008870();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100170394(uint64_t a1)
{
  LODWORD(v3) = 138412546;
  *(&v3 + 4) = *(a1 + 48);
  sub_100021E88();
  *v4 = v1;
  sub_100019DC4(&_mh_execute_header, v1, v2, "failed to activate link client for destination device: %@ (%@)", v3, DWORD2(v3), *&v4[2]);
}

void sub_10017040C()
{
  sub_100021E7C();
  v2 = [v1 deviceIdentifier];
  v3 = [*v0 devices];
  sub_100019CC4();
  sub_100008860();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_10017065C()
{
  sub_100021E7C();
  v2 = [v1 deviceIdentifier];
  v3 = [*(v0 + 16) devices];
  sub_100019CC4();
  sub_100008860();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_100170778()
{
  sub_10002A804();
  v1 = [*v0 devices];
  sub_100170124();
  sub_100019CC4();
  sub_100008860();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100170814()
{
  sub_100021E7C();
  v1 = [v0 UUIDString];
  sub_1000088C4();
  sub_100008870();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_1001708AC()
{
  sub_100021E7C();
  v2 = [v1 UUIDString];
  v3 = [v0 uniqueIDOverride];
  sub_100019CC4();
  sub_100008870();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_10017095C()
{
  sub_10002A804();
  v1 = [v0 deviceIdentifier];
  sub_100170124();
  sub_100019CC4();
  sub_100008860();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100170AC8()
{
  sub_10002A804();
  v1 = [*v0 devices];
  sub_100170124();
  sub_100019CC4();
  sub_100008860();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100170B64()
{
  sub_100021E7C();
  v2 = v1[5];
  v3 = v1[7];
  v4 = v1[8];
  v5 = v1[9];
  v6 = SFHexStringForData();
  [v0 length];
  sub_100021E88();
  sub_100008870();
  _os_log_debug_impl(v7, v8, v9, v10, v11, 0x30u);
}

void sub_100170C3C(void *a1)
{
  v1 = a1[5];
  v2 = a1[7];
  v3 = a1[8];
  v4 = a1[9];
  v5 = SFHexStringForData();
  sub_100021E88();
  sub_100008860();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x2Au);
}

void sub_100170D00()
{
  sub_100021E7C();
  v2 = v1;
  v3 = [v1 deviceIdentifier];
  v4 = [*v0 devices];
  v5 = [v2 requestIdentifier];
  sub_100021E88();
  sub_100008860();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x20u);
}

void sub_100171050(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SDActivityPayloadManager.m" lineNumber:1149 description:{@"Demo mode enabled, yet cannot find any destinations on service"}];
}

void sub_1001710B4()
{
  sub_10002A804();
  [v0 length];
  sub_100170124();
  sub_100008870();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_100172E28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  [*(a1 + 32) _handleCertificate:*(a1 + 40) intermediateCertificate:*(a1 + 48) withTrustResult:a3 error:a4];
  v5 = *(a1 + 40);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(a1 + 48);
  if (v6)
  {

    CFRelease(v6);
  }
}

void sub_100173604(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x2020000000;
  v9[3] = a2;
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x2020000000;
  v8[3] = a3;
  v4 = *(a1 + 32);
  v5 = *(v4 + 168);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100173BC0;
  v6[3] = &unk_1008D1EA8;
  v7 = a4;
  v6[4] = v4;
  v6[5] = v9;
  v6[6] = v8;
  dispatch_async(v5, v6);
  _Block_object_dispose(v8, 8);
  _Block_object_dispose(v9, 8);
}

uint64_t sub_100173BA4()
{

  return DebugGetErrorString();
}

void sub_100173BC0(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    v3 = 0;
    goto LABEL_9;
  }

  v4 = *(a1 + 32);
  if (*(v4 + 128))
  {
    v3 = 0;
    v2 = -6723;
  }

  else
  {
    v5 = *(*(*(a1 + 40) + 8) + 24);
    if (v5 && *(*(*(a1 + 48) + 8) + 24))
    {
      *(v4 + 136) = v5;
      *(*(a1 + 32) + 152) = *(*(*(a1 + 48) + 8) + 24);
      *(*(*(a1 + 40) + 8) + 24) = 0;
      *(*(*(a1 + 48) + 8) + 24) = 0;
      v6 = *(*(a1 + 32) + 136);
      v2 = SFAppleIDCopyKeychainReferenceForKey();
      v7 = 0;
      v3 = v7;
      if (v2)
      {
        goto LABEL_9;
      }

      if ([v7 length])
      {
        objc_storeStrong((*(a1 + 32) + 144), 0);
        [*(a1 + 32) _handleKeyPairAvailable];
        v2 = 0;
        goto LABEL_9;
      }
    }

    else
    {
      v3 = 0;
    }

    v2 = -6762;
  }

LABEL_9:
  v8 = *(*(*(a1 + 40) + 8) + 24);
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = *(*(*(a1 + 48) + 8) + 24);
  if (v9)
  {
    CFRelease(v9);
  }

  if (v2)
  {
    v10 = *(a1 + 32);
    v11 = [NSError errorWithDomain:NSOSStatusErrorDomain code:v2 userInfo:0];
    [v10 _responseHandlerWithIdentity:0 error:v11];
  }
}

uint64_t sub_100173D6C(uint64_t result)
{
  if (result <= 60)
  {
    if (result != -1)
    {
      return sub_100019C4C();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return sub_100019C4C();
    }
  }

  return result;
}

void sub_100173DC4()
{
  if (dword_100971998 <= 60 && (dword_100971998 != -1 || _LogCategory_Initialize()))
  {
    sub_100019C4C();
  }
}

uint64_t sub_100173E40(uint64_t result)
{
  if (result <= 60)
  {
    if (result != -1)
    {
      return sub_100019C4C();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return sub_100019C4C();
    }
  }

  return result;
}

void sub_100173E98(void *a1)
{
  v1 = [a1 localizedDescription];
  LogPrintF();
}

void sub_100173F74()
{
  sub_100019DF0();
  *v2 = NSLocalizedDescriptionKey;
  sub_100173BA4();
  v3 = [sub_10002A810() stringWithUTF8String:?];
  sub_100035DC4(v3, @"?");
  sub_100019CD4();
  [v4 dictionaryWithObjects:? forKeys:? count:?];
  objc_claimAutoreleasedReturnValue();
  *v0 = [sub_1000089B8() errorWithDomain:? code:? userInfo:?];
}

uint64_t sub_10017401C(uint64_t *a1)
{
  result = [NSError errorWithDomain:SFAppleIDErrorDomain code:201227 userInfo:0];
  *a1 = result;
  return result;
}

void sub_100174068()
{
  sub_100019DF0();
  *v1 = NSLocalizedDescriptionKey;
  DebugGetErrorString();
  v2 = [sub_10002A810() stringWithUTF8String:?];
  sub_100035DC4(v2, @"?");
  sub_100019CD4();
  v4 = [v3 dictionaryWithObjects:? forKeys:? count:?];
  *v0 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-6705 userInfo:v4];
}

uint64_t sub_1001742B4(uint64_t result)
{
  if (result <= 60)
  {
    if (result != -1)
    {
      return sub_100019C4C();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return sub_100019C4C();
    }
  }

  return result;
}

uint64_t sub_10017434C(uint64_t result)
{
  if (result <= 60)
  {
    if (result != -1)
    {
      return sub_100019C4C();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return sub_100019C4C();
    }
  }

  return result;
}

void sub_1001743E4(uint64_t a1, void *a2)
{
  v3 = [NSError errorWithDomain:NSOSStatusErrorDomain code:a1 userInfo:0];
  [a2 _responseHandlerWithIdentity:0 error:v3];
}

void sub_100174458(uint64_t a1, void *a2)
{
  v3 = [NSError errorWithDomain:NSOSStatusErrorDomain code:a1 userInfo:0];
  [a2 _responseHandlerWithIdentity:0 error:v3];
}

void sub_10017514C(id a1)
{
  v1 = objc_alloc_init(SharingDaemon);
  v2 = qword_100989FF8;
  qword_100989FF8 = v1;
}

void sub_10017699C(uint64_t a1, void *a2)
{
  v3 = a2;
  type = xpc_get_type(v3);
  if (type == &_xpc_type_error)
  {
    v6 = xpc_connection_get_context(*(a1 + 32));
    if (v3 == &_xpc_error_connection_invalid)
    {
      v7 = daemon_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v12 = 134217984;
        v13 = v6;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "XPC_ERROR_CONNECTION_INVALID <%p>", &v12, 0xCu);
      }
    }

    else if (v3 == &_xpc_error_connection_interrupted)
    {
      v7 = daemon_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_1001781B8();
      }
    }

    else
    {
      v7 = daemon_log();
      v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
      if (v3 == &_xpc_error_termination_imminent)
      {
        if (v8)
        {
          sub_100178148();
        }
      }

      else if (v8)
      {
        sub_1001780D8();
      }
    }

    if (v6)
    {
      [v6 invalidate];
      v11 = [v6 objectKey];
      if (v11)
      {
        [*(*(a1 + 40) + 112) removeObjectForKey:v11];
      }

      [*(*(a1 + 40) + 8) removeObject:v6];
      xpc_connection_set_context(*(a1 + 32), 0);
    }
  }

  else
  {
    if (type == &_xpc_type_dictionary)
    {
      string = xpc_dictionary_get_string(v3, "Object");
      if (!string)
      {
        goto LABEL_27;
      }

      v10 = string;
      if (!strcmp(string, "Browser"))
      {
        [*(a1 + 40) handleBrowserMessage:v3 forConnection:*(a1 + 32)];
        goto LABEL_27;
      }

      if (!strcmp(v10, "Operation"))
      {
        [*(a1 + 40) handleOperationMessage:v3 forConnection:*(a1 + 32)];
        goto LABEL_27;
      }

      v5 = daemon_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_1001780A4();
      }
    }

    else
    {
      v5 = daemon_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_100178070();
      }
    }
  }

LABEL_27:
}

void sub_1001773FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10017741C(uint64_t a1, void *a2)
{
  v3 = a2;
  type = xpc_get_type(v3);
  if (type == &_xpc_type_error)
  {
    v5 = daemon_log();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
    if (v3 == &_xpc_error_termination_imminent)
    {
      if (v6)
      {
        sub_100178338();
      }
    }

    else if (v6)
    {
      sub_100178304();
    }

    goto LABEL_11;
  }

  if (type != &_xpc_type_connection)
  {
    v5 = daemon_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1001782D0();
    }

LABEL_11:

    goto LABEL_12;
  }

  [*(a1 + 32) handleNewConnection:v3];
LABEL_12:
}

void sub_1001774F8(id a1)
{
  v1 = GestaltCopyAnswer();
  byte_100971A08 = [v1 isEqual:{@"AppleTV5, 3"}] ^ 1;
}

Class sub_100177854(uint64_t a1)
{
  v3[0] = 0;
  if (!qword_10098A010)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = sub_100177980;
    v3[4] = &unk_1008CF110;
    v3[5] = v3;
    v4 = off_1008D1FB0;
    v5 = 0;
    qword_10098A010 = _sl_dlopen();
  }

  if (!qword_10098A010)
  {
    sub_1001783E8(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("DDUICoreAgent");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_10017836C();
  }

  qword_10098A008 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100177980(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_10098A010 = result;
  return result;
}

void sub_100177AA4(void *a1, NSObject *a2)
{
  v5 = [a1 connection];
  v6 = sub_10000C344(v5);
  v7 = v6;
  if (!v6)
  {
    v2 = [a1 connection];
    xpc_connection_get_pid(v2);
    v7 = NSPrintF();
  }

  *buf = 138412290;
  v9 = v7;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%@ is not entitled to do AirDrop discovery", buf, 0xCu);
  if (!v6)
  {
  }
}