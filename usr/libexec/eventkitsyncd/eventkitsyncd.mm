uint64_t sub_100001C6C(_BYTE *a1, void *a2)
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
        v18 = objc_alloc_init(NEKPBItemOccurrence);
        [a1 addItems:v18];
        v25[0] = 0;
        v25[1] = 0;
        if (!PBReaderPlaceMark() || !sub_100061C1C(v18, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else
      {
        if (v13 == 2)
        {
          a1[32] |= 1u;
          v25[0] = 0;
          v16 = [a2 position] + 8;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 8, v17 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:v25 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v20 = v25[0];
          v21 = 8;
          goto LABEL_35;
        }

        if (v13 == 1)
        {
          a1[32] |= 2u;
          v25[0] = 0;
          v14 = [a2 position] + 8;
          if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 8, v15 <= objc_msgSend(a2, "length")))
          {
            v22 = [a2 data];
            [v22 getBytes:v25 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v20 = v25[0];
          v21 = 16;
LABEL_35:
          *&a1[v21] = v20;
          goto LABEL_36;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }
      }

LABEL_36:
      v23 = [a2 position];
    }

    while (v23 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id sub_100003498(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (qword_1000D1730 != -1)
    {
      sub_10006EC30();
    }

    v2 = [qword_1000D1738 cachedCopy:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_1000042F0(id a1)
{
  qword_1000D1738 = [[NDTObjectCache alloc] initWithCapacity:200];

  _objc_release_x1();
}

uint64_t sub_100004B40(uint64_t result)
{
  if (!result)
  {
    sub_10006EC44();
  }

  dword_1000D0F90 = result;
  return result;
}

uint64_t sub_100004B60(uint64_t result)
{
  if (!result)
  {
    sub_10006EC70();
  }

  dword_1000D0F94 = result;
  return result;
}

NSObject *sub_100004BA4(const char *a1, dispatch_qos_class_t a2)
{
  v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v5 = dispatch_queue_attr_make_with_qos_class(v4, a2, 0);

  v6 = dispatch_queue_attr_make_initially_inactive(v5);

  v7 = dispatch_queue_create(a1, v6);
  dispatch_set_qos_class_fallback();
  dispatch_activate(v7);

  return v7;
}

void sub_10000543C(id a1)
{
  qword_1000D1748 = objc_alloc_init(NEKEnvironment);

  _objc_release_x1();
}

uint64_t sub_100006594(uint64_t a1, void *a2)
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

      if ((v12 >> 3) == 2)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        *(a1 + 20) |= 1u;
        while (1)
        {
          v25 = 0;
          v18 = [a2 position] + 1;
          if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
          {
            v20 = [a2 data];
            [v20 getBytes:&v25 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v17 |= (v25 & 0x7F) << v15;
          if ((v25 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v11 = v16++ >= 9;
          if (v11)
          {
            LOBYTE(v21) = 0;
            goto LABEL_32;
          }
        }

        v21 = (v17 != 0) & ~[a2 hasError];
LABEL_32:
        *(a1 + 16) = v21;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadString();
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

      v23 = [a2 position];
    }

    while (v23 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1000077A8(uint64_t a1)
{
  v2 = dispatch_get_global_queue(17, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100007854;
  block[3] = &unk_1000B4B48;
  objc_copyWeak(&v4, (a1 + 32));
  dispatch_async(v2, block);

  objc_destroyWeak(&v4);
}

void sub_100007854(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _databaseChangedExternally];
}

uint64_t sub_100008138(uint64_t a1)
{
  result = sqlite3_exec([*(a1 + 32) db], "BEGIN", 0, 0, 0);
  if (result)
  {
    [*(a1 + 32) _makeSqlErrorReasonString:@"begin(1)"];
    v3 = [NDTSQException exceptionWithName:@"NDTSQError" reason:objc_claimAutoreleasedReturnValue() userInfo:0];
    objc_exception_throw(v3);
  }

  return result;
}

uint64_t sub_10000822C(uint64_t a1)
{
  result = sqlite3_exec([*(a1 + 32) db], "COMMIT", 0, 0, 0);
  if (result)
  {
    [*(a1 + 32) _makeSqlErrorReasonString:@"commit(1)"];
    v3 = [NDTSQException exceptionWithName:@"NDTSQError" reason:objc_claimAutoreleasedReturnValue() userInfo:0];
    objc_exception_throw(v3);
  }

  return result;
}

void sub_100008320(uint64_t a1)
{
  v1 = (a1 + 32);
  if (sqlite3_get_autocommit(*(*(a1 + 32) + 72)))
  {
    v2 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_10006EFF8(v1, v2);
    }
  }

  else
  {
    v3 = sqlite3_exec([*v1 db], "ROLLBACK", 0, 0, 0);
    v4 = *(qword_1000D18A8 + 8);
    if (v3)
    {
      v6 = v3;
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_10006F0BC(v1, v4, v6);
      }

      [*v1 _makeSqlErrorReasonString:@"rollback(1)"];
      v5 = [NDTSQException exceptionWithName:@"NDTSQError" reason:objc_claimAutoreleasedReturnValue() userInfo:0];
      objc_exception_throw(v5);
    }

    if (os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_DEBUG))
    {
      sub_10006F190(v1, v4);
    }
  }
}

uint64_t sub_100008500(uint64_t a1)
{
  result = sqlite3_changes([*(a1 + 32) db]);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t sub_100008AB8(uint64_t a1, void *a2)
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
        LOBYTE(v48) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v48 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v48 & 0x7F) << v5;
        if ((v48 & 0x80) == 0)
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
            v38 = 0;
            v39 = 0;
            v40 = 0;
            *(a1 + 52) |= 1u;
            while (1)
            {
              LOBYTE(v48) = 0;
              v41 = [a2 position] + 1;
              if (v41 >= [a2 position] && (v42 = objc_msgSend(a2, "position") + 1, v42 <= objc_msgSend(a2, "length")))
              {
                v43 = [a2 data];
                [v43 getBytes:&v48 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v40 |= (v48 & 0x7F) << v38;
              if ((v48 & 0x80) == 0)
              {
                break;
              }

              v38 += 7;
              v11 = v39++ >= 9;
              if (v11)
              {
                v30 = 0;
                goto LABEL_80;
              }
            }

            if ([a2 hasError])
            {
              v30 = 0;
            }

            else
            {
              v30 = v40;
            }

LABEL_80:
            v45 = 24;
            goto LABEL_88;
          }

          if (v13 == 8)
          {
            v24 = 0;
            v25 = 0;
            v26 = 0;
            *(a1 + 52) |= 2u;
            while (1)
            {
              LOBYTE(v48) = 0;
              v27 = [a2 position] + 1;
              if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
              {
                v29 = [a2 data];
                [v29 getBytes:&v48 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v26 |= (v48 & 0x7F) << v24;
              if ((v48 & 0x80) == 0)
              {
                break;
              }

              v24 += 7;
              v11 = v25++ >= 9;
              if (v11)
              {
                v30 = 0;
                goto LABEL_87;
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

LABEL_87:
            v45 = 28;
LABEL_88:
            *(a1 + v45) = v30;
            goto LABEL_89;
          }
        }

        else
        {
          if (v13 == 5)
          {
            v32 = 0;
            v33 = 0;
            v34 = 0;
            *(a1 + 52) |= 4u;
            while (1)
            {
              LOBYTE(v48) = 0;
              v35 = [a2 position] + 1;
              if (v35 >= [a2 position] && (v36 = objc_msgSend(a2, "position") + 1, v36 <= objc_msgSend(a2, "length")))
              {
                v37 = [a2 data];
                [v37 getBytes:&v48 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v34 |= (v48 & 0x7F) << v32;
              if ((v48 & 0x80) == 0)
              {
                break;
              }

              v32 += 7;
              v11 = v33++ >= 9;
              if (v11)
              {
                LOBYTE(v23) = 0;
                goto LABEL_76;
              }
            }

            v23 = (v34 != 0) & ~[a2 hasError];
LABEL_76:
            v44 = 48;
            goto LABEL_83;
          }

          if (v13 == 6)
          {
            v14 = PBReaderReadString();
            v15 = 32;
            goto LABEL_26;
          }
        }
      }

      else if (v13 > 2)
      {
        if (v13 == 3)
        {
          v31 = objc_alloc_init(NEKPBCalendarAttributes);
          objc_storeStrong((a1 + 8), v31);
          v48 = 0;
          v49 = 0;
          if (!PBReaderPlaceMark() || !sub_10000C170(v31, a2))
          {
LABEL_91:

            return 0;
          }

          goto LABEL_63;
        }

        if (v13 == 4)
        {
          v17 = 0;
          v18 = 0;
          v19 = 0;
          *(a1 + 52) |= 8u;
          while (1)
          {
            LOBYTE(v48) = 0;
            v20 = [a2 position] + 1;
            if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
            {
              v22 = [a2 data];
              [v22 getBytes:&v48 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v19 |= (v48 & 0x7F) << v17;
            if ((v48 & 0x80) == 0)
            {
              break;
            }

            v17 += 7;
            v11 = v18++ >= 9;
            if (v11)
            {
              LOBYTE(v23) = 0;
              goto LABEL_82;
            }
          }

          v23 = (v19 != 0) & ~[a2 hasError];
LABEL_82:
          v44 = 49;
LABEL_83:
          *(a1 + v44) = v23;
          goto LABEL_89;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v31 = objc_alloc_init(NEKPBSourceID);
          objc_storeStrong((a1 + 40), v31);
          v48 = 0;
          v49 = 0;
          if (!PBReaderPlaceMark() || !sub_100006594(v31, a2))
          {
            goto LABEL_91;
          }

LABEL_63:
          PBReaderRecallMark();

          goto LABEL_89;
        }

        if (v13 == 2)
        {
          v14 = PBReaderReadString();
          v15 = 16;
LABEL_26:
          v16 = *(a1 + v15);
          *(a1 + v15) = v14;

          goto LABEL_89;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_89:
      v46 = [a2 position];
    }

    while (v46 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_100009C34(id a1)
{
  qword_1000D1758 = os_log_create("com.apple.eventkitsyncd", "NEKServicesServer");

  _objc_release_x1();
}

void sub_100009F58(uint64_t a1)
{
  v2 = +[NEKServicesServer log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "interrupted: %@", &v4, 0xCu);
  }
}

void sub_10000A008(uint64_t a1)
{
  v2 = +[NEKServicesServer log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "invalidated: %@", &v4, 0xCu);
  }
}

uint64_t sub_10000A2EC(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    if ([v1 sourceType])
    {
      v3 = 1;
    }

    else
    {
      v5 = +[SYDevice targetableDevice];
      v6 = [v5 systemBuildVersion];

      v3 = [v6 compare:@"14S" options:64 range:{0, 3}] != -1;
    }

    v4 = ([v2 isDelegate] ^ 1) & v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_10000A3B8(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [v1 eventStore];
    v4 = v3;
    if (v3)
    {
      v5 = [v3 defaultLocalCalendar];
      v6 = v5;
      if (v5 && ([v5 calendarIdentifier], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v2, "calendarIdentifier"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v7, "isEqualToString:", v8), v8, v7, (v9 & 1) != 0))
      {
        v10 = 0;
      }

      else
      {
        v11 = [v2 source];
        v12 = v11;
        if (v11)
        {
          v13 = [v11 sourceType] != 5;
        }

        else
        {
          v13 = 1;
        }

        v10 = ([v12 isDelegate] ^ 1) & v13;
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t sub_10000A4C4(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = [a1 source];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 sourceType] != 5;
    v4 = v3 & ~[v2 isDelegate];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

uint64_t sub_10000A528(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = [a1 calendar];
  v2 = v1;
  if (v1)
  {
    v3 = sub_10000A4C4(v1);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

BOOL sub_10000A57C()
{
  v0 = +[SYDevice targetableDevice];
  v1 = [v0 systemBuildVersion];

  v2 = [v1 compare:@"17R" options:64 range:{0, 3}] == -1;
  return v2;
}

uint64_t sub_10000A5E8(void *a1)
{
  v1 = [a1 type];
  v2 = v1;
  if (v1 <= 4 && ((1 << v1) & 0x1A) != 0)
  {
    return 1;
  }

  LODWORD(result) = sub_10000A57C();
  if (v2 == 2)
  {
    return result;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000A63C(void *a1)
{
  v1 = a1;
  v2 = [v1 account];
  v3 = [v2 type];
  v4 = v3 > 4 || ((1 << v3) & 0x1A) == 0;
  if (!v4 || (v6 = v3, v7 = sub_10000A57C(), v5 = 0, v6 == 2) && v7)
  {
    if ([v1 isGroup] & 1) != 0 || (objc_msgSend(v1, "daIsEventOnlyContainer"))
    {
      v5 = 0;
    }

    else
    {
      v5 = [v1 daIsNotificationsCollection] ^ 1;
    }
  }

  return v5;
}

uint64_t sub_10000A6E8(void *a1)
{
  v1 = [a1 list];
  v2 = sub_10000A63C(v1);

  return v2;
}

uint64_t sub_10000C170(uint64_t a1, void *a2)
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
      v155 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v155 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v155 & 0x7F) << v6;
      if ((v155 & 0x80) == 0)
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
        v15 = 256;
        goto LABEL_244;
      case 2u:
        v14 = PBReaderReadString();
        v15 = 240;
        goto LABEL_244;
      case 3u:
        v61 = 0;
        v62 = 0;
        v63 = 0;
        *(a1 + 284) |= 0x40000u;
        while (1)
        {
          v155 = 0;
          v64 = [a2 position] + 1;
          if (v64 >= [a2 position] && (v65 = objc_msgSend(a2, "position") + 1, v65 <= objc_msgSend(a2, "length")))
          {
            v66 = [a2 data];
            [v66 getBytes:&v155 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v63 |= (v155 & 0x7F) << v61;
          if ((v155 & 0x80) == 0)
          {
            break;
          }

          v61 += 7;
          v12 = v62++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_268;
          }
        }

        v22 = (v63 != 0) & ~[a2 hasError];
LABEL_268:
        v153 = 277;
        goto LABEL_302;
      case 4u:
        v97 = 0;
        v98 = 0;
        v99 = 0;
        *(a1 + 284) |= 0x400u;
        while (1)
        {
          v155 = 0;
          v100 = [a2 position] + 1;
          if (v100 >= [a2 position] && (v101 = objc_msgSend(a2, "position") + 1, v101 <= objc_msgSend(a2, "length")))
          {
            v102 = [a2 data];
            [v102 getBytes:&v155 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v99 |= (v155 & 0x7F) << v97;
          if ((v155 & 0x80) == 0)
          {
            break;
          }

          v97 += 7;
          v12 = v98++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_280;
          }
        }

        v22 = (v99 != 0) & ~[a2 hasError];
LABEL_280:
        v153 = 269;
        goto LABEL_302;
      case 5u:
        v103 = 0;
        v104 = 0;
        v105 = 0;
        *(a1 + 284) |= 0x4000u;
        while (1)
        {
          v155 = 0;
          v106 = [a2 position] + 1;
          if (v106 >= [a2 position] && (v107 = objc_msgSend(a2, "position") + 1, v107 <= objc_msgSend(a2, "length")))
          {
            v108 = [a2 data];
            [v108 getBytes:&v155 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v105 |= (v155 & 0x7F) << v103;
          if ((v155 & 0x80) == 0)
          {
            break;
          }

          v103 += 7;
          v12 = v104++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_282;
          }
        }

        v22 = (v105 != 0) & ~[a2 hasError];
LABEL_282:
        v153 = 273;
        goto LABEL_302;
      case 6u:
        v67 = 0;
        v68 = 0;
        v69 = 0;
        *(a1 + 284) |= 0x8000u;
        while (1)
        {
          v155 = 0;
          v70 = [a2 position] + 1;
          if (v70 >= [a2 position] && (v71 = objc_msgSend(a2, "position") + 1, v71 <= objc_msgSend(a2, "length")))
          {
            v72 = [a2 data];
            [v72 getBytes:&v155 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v69 |= (v155 & 0x7F) << v67;
          if ((v155 & 0x80) == 0)
          {
            break;
          }

          v67 += 7;
          v12 = v68++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_270;
          }
        }

        v22 = (v69 != 0) & ~[a2 hasError];
LABEL_270:
        v153 = 274;
        goto LABEL_302;
      case 7u:
        v79 = 0;
        v80 = 0;
        v81 = 0;
        *(a1 + 284) |= 0x10000u;
        while (1)
        {
          v155 = 0;
          v82 = [a2 position] + 1;
          if (v82 >= [a2 position] && (v83 = objc_msgSend(a2, "position") + 1, v83 <= objc_msgSend(a2, "length")))
          {
            v84 = [a2 data];
            [v84 getBytes:&v155 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v81 |= (v155 & 0x7F) << v79;
          if ((v155 & 0x80) == 0)
          {
            break;
          }

          v79 += 7;
          v12 = v80++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_274;
          }
        }

        v22 = (v81 != 0) & ~[a2 hasError];
LABEL_274:
        v153 = 275;
        goto LABEL_302;
      case 8u:
        v85 = 0;
        v86 = 0;
        v87 = 0;
        *(a1 + 284) |= 0x100000u;
        while (1)
        {
          v155 = 0;
          v88 = [a2 position] + 1;
          if (v88 >= [a2 position] && (v89 = objc_msgSend(a2, "position") + 1, v89 <= objc_msgSend(a2, "length")))
          {
            v90 = [a2 data];
            [v90 getBytes:&v155 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v87 |= (v155 & 0x7F) << v85;
          if ((v155 & 0x80) == 0)
          {
            break;
          }

          v85 += 7;
          v12 = v86++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_276;
          }
        }

        v22 = (v87 != 0) & ~[a2 hasError];
LABEL_276:
        v153 = 279;
        goto LABEL_302;
      case 9u:
        v115 = 0;
        v116 = 0;
        v117 = 0;
        *(a1 + 284) |= 0x200000u;
        while (1)
        {
          v155 = 0;
          v118 = [a2 position] + 1;
          if (v118 >= [a2 position] && (v119 = objc_msgSend(a2, "position") + 1, v119 <= objc_msgSend(a2, "length")))
          {
            v120 = [a2 data];
            [v120 getBytes:&v155 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v117 |= (v155 & 0x7F) << v115;
          if ((v155 & 0x80) == 0)
          {
            break;
          }

          v115 += 7;
          v12 = v116++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_286;
          }
        }

        v22 = (v117 != 0) & ~[a2 hasError];
LABEL_286:
        v153 = 280;
        goto LABEL_302;
      case 0xAu:
        v109 = 0;
        v110 = 0;
        v111 = 0;
        *(a1 + 284) |= 0x800u;
        while (1)
        {
          v155 = 0;
          v112 = [a2 position] + 1;
          if (v112 >= [a2 position] && (v113 = objc_msgSend(a2, "position") + 1, v113 <= objc_msgSend(a2, "length")))
          {
            v114 = [a2 data];
            [v114 getBytes:&v155 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v111 |= (v155 & 0x7F) << v109;
          if ((v155 & 0x80) == 0)
          {
            break;
          }

          v109 += 7;
          v12 = v110++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_284;
          }
        }

        v22 = (v111 != 0) & ~[a2 hasError];
LABEL_284:
        v153 = 270;
        goto LABEL_302;
      case 0xBu:
        v36 = 0;
        v37 = 0;
        v38 = 0;
        *(a1 + 284) |= 0x200u;
        while (1)
        {
          v155 = 0;
          v39 = [a2 position] + 1;
          if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
          {
            v41 = [a2 data];
            [v41 getBytes:&v155 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v38 |= (v155 & 0x7F) << v36;
          if ((v155 & 0x80) == 0)
          {
            break;
          }

          v36 += 7;
          v12 = v37++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_256;
          }
        }

        v22 = (v38 != 0) & ~[a2 hasError];
LABEL_256:
        v153 = 268;
        goto LABEL_302;
      case 0xCu:
        v73 = 0;
        v74 = 0;
        v75 = 0;
        *(a1 + 284) |= 0x1000u;
        while (1)
        {
          v155 = 0;
          v76 = [a2 position] + 1;
          if (v76 >= [a2 position] && (v77 = objc_msgSend(a2, "position") + 1, v77 <= objc_msgSend(a2, "length")))
          {
            v78 = [a2 data];
            [v78 getBytes:&v155 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v75 |= (v155 & 0x7F) << v73;
          if ((v155 & 0x80) == 0)
          {
            break;
          }

          v73 += 7;
          v12 = v74++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_272;
          }
        }

        v22 = (v75 != 0) & ~[a2 hasError];
LABEL_272:
        v153 = 271;
        goto LABEL_302;
      case 0xDu:
        v48 = 0;
        v49 = 0;
        v50 = 0;
        *(a1 + 284) |= 0x2000u;
        while (1)
        {
          v155 = 0;
          v51 = [a2 position] + 1;
          if (v51 >= [a2 position] && (v52 = objc_msgSend(a2, "position") + 1, v52 <= objc_msgSend(a2, "length")))
          {
            v53 = [a2 data];
            [v53 getBytes:&v155 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v50 |= (v155 & 0x7F) << v48;
          if ((v155 & 0x80) == 0)
          {
            break;
          }

          v48 += 7;
          v12 = v49++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_262;
          }
        }

        v22 = (v50 != 0) & ~[a2 hasError];
LABEL_262:
        v153 = 272;
        goto LABEL_302;
      case 0xEu:
        v16 = 0;
        v17 = 0;
        v18 = 0;
        *(a1 + 284) |= 0x80000u;
        while (1)
        {
          v155 = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v155 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v155 & 0x7F) << v16;
          if ((v155 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v12 = v17++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_248;
          }
        }

        v22 = (v18 != 0) & ~[a2 hasError];
LABEL_248:
        v153 = 278;
        goto LABEL_302;
      case 0xFu:
        v91 = 0;
        v92 = 0;
        v93 = 0;
        *(a1 + 284) |= 0x100u;
        while (1)
        {
          v155 = 0;
          v94 = [a2 position] + 1;
          if (v94 >= [a2 position] && (v95 = objc_msgSend(a2, "position") + 1, v95 <= objc_msgSend(a2, "length")))
          {
            v96 = [a2 data];
            [v96 getBytes:&v155 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v93 |= (v155 & 0x7F) << v91;
          if ((v155 & 0x80) == 0)
          {
            break;
          }

          v91 += 7;
          v12 = v92++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_278;
          }
        }

        v22 = (v93 != 0) & ~[a2 hasError];
LABEL_278:
        v153 = 267;
        goto LABEL_302;
      case 0x10u:
        v14 = PBReaderReadString();
        v15 = 248;
        goto LABEL_244;
      case 0x11u:
        v14 = PBReaderReadData();
        v15 = 48;
        goto LABEL_244;
      case 0x12u:
        v14 = PBReaderReadString();
        v15 = 224;
        goto LABEL_244;
      case 0x13u:
        v14 = PBReaderReadString();
        v15 = 40;
        goto LABEL_244;
      case 0x14u:
        v54 = 0;
        v55 = 0;
        v56 = 0;
        *(a1 + 284) |= 0x10u;
        while (1)
        {
          v155 = 0;
          v57 = [a2 position] + 1;
          if (v57 >= [a2 position] && (v58 = objc_msgSend(a2, "position") + 1, v58 <= objc_msgSend(a2, "length")))
          {
            v59 = [a2 data];
            [v59 getBytes:&v155 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v56 |= (v155 & 0x7F) << v54;
          if ((v155 & 0x80) == 0)
          {
            break;
          }

          v54 += 7;
          v12 = v55++ >= 9;
          if (v12)
          {
            v60 = 0;
            goto LABEL_266;
          }
        }

        if ([a2 hasError])
        {
          v60 = 0;
        }

        else
        {
          v60 = v56;
        }

LABEL_266:
        *(a1 + 56) = v60;
        continue;
      case 0x15u:
        v127 = 0;
        v128 = 0;
        v129 = 0;
        *(a1 + 284) |= 4u;
        while (1)
        {
          v155 = 0;
          v130 = [a2 position] + 1;
          if (v130 >= [a2 position] && (v131 = objc_msgSend(a2, "position") + 1, v131 <= objc_msgSend(a2, "length")))
          {
            v132 = [a2 data];
            [v132 getBytes:&v155 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v129 |= (v155 & 0x7F) << v127;
          if ((v155 & 0x80) == 0)
          {
            break;
          }

          v127 += 7;
          v12 = v128++ >= 9;
          if (v12)
          {
            v35 = 0;
            goto LABEL_294;
          }
        }

        if ([a2 hasError])
        {
          v35 = 0;
        }

        else
        {
          v35 = v129;
        }

LABEL_294:
        v154 = 24;
        goto LABEL_295;
      case 0x16u:
        v14 = PBReaderReadString();
        v15 = 208;
        goto LABEL_244;
      case 0x17u:
        v14 = PBReaderReadString();
        v15 = 200;
        goto LABEL_244;
      case 0x18u:
        v29 = 0;
        v30 = 0;
        v31 = 0;
        *(a1 + 284) |= 2u;
        while (1)
        {
          v155 = 0;
          v32 = [a2 position] + 1;
          if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
          {
            v34 = [a2 data];
            [v34 getBytes:&v155 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v31 |= (v155 & 0x7F) << v29;
          if ((v155 & 0x80) == 0)
          {
            break;
          }

          v29 += 7;
          v12 = v30++ >= 9;
          if (v12)
          {
            v35 = 0;
            goto LABEL_254;
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

LABEL_254:
        v154 = 16;
        goto LABEL_295;
      case 0x19u:
        v14 = PBReaderReadString();
        v15 = 144;
        goto LABEL_244;
      case 0x1Au:
        v23 = 0;
        v24 = 0;
        v25 = 0;
        *(a1 + 284) |= 0x20u;
        while (1)
        {
          v155 = 0;
          v26 = [a2 position] + 1;
          if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
          {
            v28 = [a2 data];
            [v28 getBytes:&v155 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v25 |= (v155 & 0x7F) << v23;
          if ((v155 & 0x80) == 0)
          {
            break;
          }

          v23 += 7;
          v12 = v24++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_250;
          }
        }

        v22 = (v25 != 0) & ~[a2 hasError];
LABEL_250:
        v153 = 264;
        goto LABEL_302;
      case 0x1Bu:
        v139 = 0;
        v140 = 0;
        v141 = 0;
        *(a1 + 284) |= 0x40u;
        while (1)
        {
          v155 = 0;
          v142 = [a2 position] + 1;
          if (v142 >= [a2 position] && (v143 = objc_msgSend(a2, "position") + 1, v143 <= objc_msgSend(a2, "length")))
          {
            v144 = [a2 data];
            [v144 getBytes:&v155 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v141 |= (v155 & 0x7F) << v139;
          if ((v155 & 0x80) == 0)
          {
            break;
          }

          v139 += 7;
          v12 = v140++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_299;
          }
        }

        v22 = (v141 != 0) & ~[a2 hasError];
LABEL_299:
        v153 = 265;
        goto LABEL_302;
      case 0x1Cu:
        v133 = 0;
        v134 = 0;
        v135 = 0;
        *(a1 + 284) |= 0x20000u;
        while (1)
        {
          v155 = 0;
          v136 = [a2 position] + 1;
          if (v136 >= [a2 position] && (v137 = objc_msgSend(a2, "position") + 1, v137 <= objc_msgSend(a2, "length")))
          {
            v138 = [a2 data];
            [v138 getBytes:&v155 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v135 |= (v155 & 0x7F) << v133;
          if ((v155 & 0x80) == 0)
          {
            break;
          }

          v133 += 7;
          v12 = v134++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_297;
          }
        }

        v22 = (v135 != 0) & ~[a2 hasError];
LABEL_297:
        v153 = 276;
        goto LABEL_302;
      case 0x1Du:
        v14 = PBReaderReadString();
        v15 = 64;
        goto LABEL_244;
      case 0x1Eu:
        v14 = PBReaderReadString();
        v15 = 72;
        goto LABEL_244;
      case 0x1Fu:
        v14 = PBReaderReadString();
        v15 = 232;
        goto LABEL_244;
      case 0x20u:
        v14 = PBReaderReadString();
        v15 = 80;
        goto LABEL_244;
      case 0x21u:
        v14 = PBReaderReadData();
        v15 = 88;
        goto LABEL_244;
      case 0x22u:
        v42 = 0;
        v43 = 0;
        v44 = 0;
        *(a1 + 284) |= 8u;
        while (1)
        {
          v155 = 0;
          v45 = [a2 position] + 1;
          if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 1, v46 <= objc_msgSend(a2, "length")))
          {
            v47 = [a2 data];
            [v47 getBytes:&v155 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v44 |= (v155 & 0x7F) << v42;
          if ((v155 & 0x80) == 0)
          {
            break;
          }

          v42 += 7;
          v12 = v43++ >= 9;
          if (v12)
          {
            v35 = 0;
            goto LABEL_260;
          }
        }

        if ([a2 hasError])
        {
          v35 = 0;
        }

        else
        {
          v35 = v44;
        }

LABEL_260:
        v154 = 32;
        goto LABEL_295;
      case 0x23u:
        v121 = 0;
        v122 = 0;
        v123 = 0;
        *(a1 + 284) |= 1u;
        while (1)
        {
          v155 = 0;
          v124 = [a2 position] + 1;
          if (v124 >= [a2 position] && (v125 = objc_msgSend(a2, "position") + 1, v125 <= objc_msgSend(a2, "length")))
          {
            v126 = [a2 data];
            [v126 getBytes:&v155 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v123 |= (v155 & 0x7F) << v121;
          if ((v155 & 0x80) == 0)
          {
            break;
          }

          v121 += 7;
          v12 = v122++ >= 9;
          if (v12)
          {
            v35 = 0;
            goto LABEL_290;
          }
        }

        if ([a2 hasError])
        {
          v35 = 0;
        }

        else
        {
          v35 = v123;
        }

LABEL_290:
        v154 = 8;
LABEL_295:
        *(a1 + v154) = v35;
        continue;
      case 0x24u:
        v145 = 0;
        v146 = 0;
        v147 = 0;
        *(a1 + 284) |= 0x80u;
        break;
      case 0x25u:
        v14 = PBReaderReadString();
        v15 = 96;
        goto LABEL_244;
      case 0x27u:
        v14 = PBReaderReadString();
        v15 = 216;
        goto LABEL_244;
      case 0x28u:
        v14 = PBReaderReadString();
        v15 = 152;
        goto LABEL_244;
      case 0x29u:
        v14 = PBReaderReadString();
        v15 = 168;
        goto LABEL_244;
      case 0x2Au:
        v14 = PBReaderReadString();
        v15 = 176;
        goto LABEL_244;
      case 0x2Bu:
        v14 = PBReaderReadString();
        v15 = 160;
        goto LABEL_244;
      case 0x2Cu:
        v14 = PBReaderReadString();
        v15 = 184;
        goto LABEL_244;
      case 0x2Du:
        v14 = PBReaderReadString();
        v15 = 192;
        goto LABEL_244;
      case 0x2Eu:
        v14 = PBReaderReadString();
        v15 = 112;
        goto LABEL_244;
      case 0x2Fu:
        v14 = PBReaderReadString();
        v15 = 120;
        goto LABEL_244;
      case 0x30u:
        v14 = PBReaderReadString();
        v15 = 104;
        goto LABEL_244;
      case 0x31u:
        v14 = PBReaderReadString();
        v15 = 128;
        goto LABEL_244;
      case 0x32u:
        v14 = PBReaderReadString();
        v15 = 136;
LABEL_244:
        v151 = *(a1 + v15);
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
      v155 = 0;
      v148 = [a2 position] + 1;
      if (v148 >= [a2 position] && (v149 = objc_msgSend(a2, "position") + 1, v149 <= objc_msgSend(a2, "length")))
      {
        v150 = [a2 data];
        [v150 getBytes:&v155 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v147 |= (v155 & 0x7F) << v145;
      if ((v155 & 0x80) == 0)
      {
        break;
      }

      v145 += 7;
      v12 = v146++ >= 9;
      if (v12)
      {
        LOBYTE(v22) = 0;
        goto LABEL_301;
      }
    }

    v22 = (v147 != 0) & ~[a2 hasError];
LABEL_301:
    v153 = 266;
LABEL_302:
    *(a1 + v153) = v22;
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_1000114AC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000114C4(void *a1)
{
  v2 = [*(a1[4] + 24) getStringForKey:a1[5] default:a1[6]];
  v3 = *(a1[7] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

id sub_1000116AC(void *a1)
{
  result = [*(a1[4] + 24) getIntegerForKey:a1[5] default:a1[7]];
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

id sub_1000117C8(void *a1)
{
  result = [*(a1[4] + 24) compareAndSwapIntegerValue:a1[7] expectedExistingValue:a1[8] forKey:a1[5]];
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

id sub_100011998(uint64_t a1)
{
  result = [*(*(a1 + 32) + 24) getDoubleForKey:*(a1 + 40) default:*(a1 + 56)];
  *(*(*(a1 + 48) + 8) + 24) = v3;
  return result;
}

uint64_t sub_100011AE4(void *a1)
{
  v2 = [*(a1[4] + 24) getDataForKey:a1[5] default:0];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

void sub_100012F6C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = [*(a1 + 32) data];

  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = [v4 data];
    v6 = [*(a1 + 32) msgType];
    v22 = 0;
    v7 = &v22;
    v8 = [WeakRetained _rawSendData:v5 type:v6 responseIdentifier:0 error:&v22];
  }

  else
  {
    v5 = [v4 path];
    v6 = [*(a1 + 32) msgType];
    v21 = 0;
    v7 = &v21;
    v8 = [WeakRetained _rawSendFile:v5 type:v6 responseIdentifier:0 error:&v21];
  }

  v9 = v8;
  v10 = *v7;

  if (v9)
  {
    v11 = *(a1 + 48);
    if (v11)
    {
      v12 = [v11 copy];
      v13 = objc_retainBlock(v12);
      [*(WeakRetained + 1) setObject:v13 forKeyedSubscript:v9];

      v14 = dispatch_time(0, 600000000000);
      v15 = *(WeakRetained + 3);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000131E4;
      block[3] = &unk_1000B4D58;
      block[4] = WeakRetained;
      v19 = v9;
      v20 = *(a1 + 40);
      dispatch_after(v14, v15, block);
    }
  }

  else
  {
    v16 = *(*(WeakRetained + 6) + 8);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v24 = v10;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "No identifier returned. Error: %{public}@", buf, 0xCu);
    }
  }

  v17 = *(a1 + 56);
  if (v17)
  {
    (*(v17 + 16))(v17, v10, v9);
  }
}

void sub_100013304(uint64_t a1)
{
  v2 = [*(a1 + 32) data];

  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (v2)
  {
    v5 = [v3 data];
    v6 = [*(a1 + 32) msgType];
    v7 = [*(a1 + 48) responseIdentifier];
    v14 = 0;
    v8 = &v14;
    v9 = [v4 _rawSendData:v5 type:v6 responseIdentifier:v7 error:&v14];
  }

  else
  {
    v5 = [v3 path];
    v6 = [*(a1 + 32) msgType];
    v7 = [*(a1 + 48) responseIdentifier];
    v13 = 0;
    v8 = &v13;
    v9 = [v4 _rawSendFile:v5 type:v6 responseIdentifier:v7 error:&v13];
  }

  v10 = v9;
  v11 = *v8;

  v12 = *(a1 + 64);
  if (v12)
  {
    (*(v12 + 16))(v12, v11, v10);
  }
}

void sub_100014540(id a1)
{
  v1 = objc_alloc_init(NSDateFormatter);
  v2 = qword_1000D1768;
  qword_1000D1768 = v1;

  [qword_1000D1768 setDateFormat:@"yyyyMMdd/HHmm"];
  v3 = +[NSTimeZone systemTimeZone];
  [qword_1000D1768 setTimeZone:v3];
}

void sub_100014B68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100014B80(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 bindString:*(a1 + 32)];
  if ([v3 step] == 100)
  {
    *(*(*(a1 + 40) + 8) + 24) = [v3 fetchInteger];
  }

  return 0;
}

id sub_100014C8C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 bindString:v3];
  [v4 bindInteger:*(a1 + 40)];
  v5 = [v4 step];

  return v5;
}

id sub_100014DB4(void *a1, void *a2)
{
  v3 = a1[5];
  v4 = a2;
  [v4 bindInteger:v3];
  [v4 bindInteger:a1[6]];
  [v4 bindString:a1[4]];
  v5 = [v4 step];

  return v5;
}

void sub_100014F00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100014F18(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 bindString:*(a1 + 32)];
  if ([v3 step] == 100)
  {
    [v3 fetchDouble];
    *(*(*(a1 + 40) + 8) + 24) = v4;
  }

  return 0;
}

id sub_100015030(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 bindString:v3];
  [v4 bindDouble:*(a1 + 40)];
  v5 = [v4 step];

  return v5;
}

void sub_1000151D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000151E8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100015200(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 bindString:*(a1 + 32)];
  if ([v3 step] == 100)
  {
    v4 = [v3 fetchString];
    v5 = *(*(a1 + 40) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }

  return 0;
}

id sub_100015338(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 bindString:v3];
  [v4 bindString:*(a1 + 40)];
  v5 = [v4 step];

  return v5;
}

void sub_1000154D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000154F0(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 bindString:*(a1 + 32)];
  if ([v3 step] == 100)
  {
    v4 = [v3 fetchBlob];
    v5 = *(*(a1 + 40) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }

  return 0;
}

id sub_100015628(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 bindString:v3];
  [v4 bindBlob:*(a1 + 40)];
  v5 = [v4 step];

  return v5;
}

id sub_100015730(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 bindString:v2];
  v4 = [v3 step];

  return v4;
}

uint64_t sub_100015A30(uint64_t a1, void *a2)
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
        v13 = &OBJC_IVAR___NEKPBDuplicateSource__externalId;
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

    v13 = &OBJC_IVAR___NEKPBDuplicateSource__name;
    goto LABEL_21;
  }

  return [a2 hasError] ^ 1;
}

__CFString *sub_100016580(void *a1)
{
  v1 = a1;
  if (qword_1000D1780 != -1)
  {
    sub_10006F4B4();
  }

  os_unfair_lock_lock(&unk_1000D1788);
  if (qword_1000D1790 != -1)
  {
    sub_10006F4C8();
  }

  v2 = qword_1000D1798;
  v3 = [v2 objectForKey:v1];
  if (!v3)
  {
    v4 = [qword_1000D1778 stringFromDate:v1];
    if (v4)
    {
      v3 = v4;
      [v2 setObject:v4 forKey:v1];
    }

    else
    {
      v3 = @"00000000/0000";
    }
  }

  os_unfair_lock_unlock(&unk_1000D1788);

  return v3;
}

void sub_10001666C(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_1000D1778;
  qword_1000D1778 = v1;

  [qword_1000D1778 setDateFormat:@"yyyyMMdd/HHmm"];
  v3 = +[NSTimeZone systemTimeZone];
  [qword_1000D1778 setTimeZone:v3];
}

void sub_1000166F0(id a1)
{
  v1 = objc_alloc_init(NSCache);
  v2 = qword_1000D1798;
  qword_1000D1798 = v1;

  v3 = qword_1000D1798;

  [v3 setCountLimit:25];
}

uint64_t sub_100016740()
{
  if (qword_1000D17A8 != -1)
  {
    sub_10006F4DC();
  }

  return byte_1000D17A0;
}

void sub_100016778(id a1)
{
  v1 = +[NSFileManager defaultManager];
  byte_1000D17A0 = [v1 fileExistsAtPath:@"/System/Library/LaunchDaemons/com.apple.SpringBoard.plist"] ^ 1;
}

id sub_100016ECC(uint64_t a1)
{
  v9[0] = @"onlyOnPhone";
  v2 = [*(a1 + 32) phoneOnlyOccurrences];
  v3 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v2 count]);
  v10[0] = v3;
  v9[1] = @"onlyOnWatch";
  v4 = [*(a1 + 32) watchOnlyOccurrences];
  v5 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v4 count]);
  v10[1] = v5;
  v9[2] = @"total";
  v6 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [*(a1 + 32) totalDrift]);
  v10[2] = v6;
  v7 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:3];

  return v7;
}

id sub_1000170B8(uint64_t a1)
{
  v8[0] = @"sources";
  v2 = [*(a1 + 32) duplicatedSources];
  v3 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v2 count]);
  v8[1] = @"calendars";
  v9[0] = v3;
  v4 = [*(a1 + 32) duplicatedCalendars];
  v5 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v4 count]);
  v9[1] = v5;
  v6 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:2];

  return v6;
}

void sub_1000171F0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void sub_100018044(id *a1)
{
  v2 = a1 + 4;
  v3 = [a1[4] attributes];
  v4 = [v3 isLocalStore];

  if (v4)
  {
    v5 = [a1[5] localSource];
LABEL_5:
    v8 = v5;
    v9 = 0;
    goto LABEL_6;
  }

  v6 = [*v2 attributes];
  v7 = [v6 isBirthdayStore];

  if (v7)
  {
    v5 = [a1[5] localBirthdayCalendarSource];
    goto LABEL_5;
  }

  v28 = [a1[4] attributes];
  v9 = [v28 accountPersistentID];

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v29 = [a1[5] eventSources];
  v8 = [v29 countByEnumeratingWithState:&v59 objects:v67 count:16];
  if (v8)
  {
    v30 = *v60;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v60 != v30)
        {
          objc_enumerationMutation(v29);
        }

        v32 = *(*(&v59 + 1) + 8 * i);
        v33 = [v32 sourceIdentifier];
        v34 = [v33 isEqualToString:v9];

        if (v34)
        {
          v8 = v32;
          goto LABEL_34;
        }
      }

      v8 = [v29 countByEnumeratingWithState:&v59 objects:v67 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_34:

  v40 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
  {
    v41 = *v2;
    v42 = v40;
    v43 = [v41 attributes];
    v44 = [v43 accountPersistentID];
    *buf = 138543618;
    v64 = v44;
    v65 = 2048;
    v66 = v8;
    _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "Fetched source via ID %{public}@ and got source:%p", buf, 0x16u);
  }

LABEL_6:
  if (([v8 allowsEvents] & 1) == 0)
  {
    if ([v8 allowsTasks])
    {
      v10 = *(qword_1000D18A8 + 8);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "NOT zapping source though I really feel like I should.", buf, 2u);
      }
    }
  }

  v11 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *v2;
    *buf = 138543618;
    v64 = v12;
    v65 = 2048;
    v66 = v8;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Create or update source: %{public}@, source:%p", buf, 0x16u);
  }

  if (!v8)
  {
    v17 = [*v2 attributes];
    v18 = [v17 allowsEvents];

    if (v18)
    {
      v19 = [*v2 attributes];
      v20 = [v19 isLocalStore];

      v21 = *(qword_1000D18A8 + 8);
      if ((v20 & 1) == 0)
      {
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Creating non-local source", buf, 2u);
        }

        v8 = [a1[6] _createSourceForWrapper:a1[4] store:a1[5]];
        v47 = objc_autoreleasePoolPush();
        v48 = a1[5];
        v57 = 0;
        [v48 saveSource:v8 commit:1 error:&v57];
        v15 = v57;
        objc_autoreleasePoolPop(v47);
        v49 = *(qword_1000D18A8 + 8);
        if (!v15)
        {
          if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
          {
            v55 = v49;
            v56 = [v8 sourceIdentifier];
            *buf = 138543362;
            v64 = v56;
            _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "New source (%{public}@) saved successfully.", buf, 0xCu);
          }

          v15 = 0;
LABEL_46:
          if (!v8)
          {
            goto LABEL_50;
          }

          goto LABEL_47;
        }

        if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
        {
          sub_10006FC20();
        }

LABEL_44:
        if (os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_ERROR))
        {
          sub_10006FCC4();
        }

        goto LABEL_46;
      }

      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_10006FD68(v2, v21, v22, v23, v24, v25, v26, v27);
      }
    }

    else
    {
      v35 = *(qword_1000D18A8 + 8);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        v36 = *v2;
        v37 = v35;
        v38 = [v36 attributes];
        v39 = [v38 accountPersistentID];
        *buf = 138543362;
        v64 = v39;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "No need to create source since the source [%{public}@] doesn't exist in database and the source wrapper has allowsEvents=NO", buf, 0xCu);
      }
    }

    v15 = 0;
    v8 = 0;
    goto LABEL_50;
  }

  if ([a1[6] _updateSource:v8 withSourceWrapper:a1[4] store:a1[5]])
  {
    v13 = objc_autoreleasePoolPush();
    v14 = a1[5];
    v58 = 0;
    [v14 saveSource:v8 commit:1 error:&v58];
    v15 = v58;
    objc_autoreleasePoolPop(v13);
    v16 = *(qword_1000D18A8 + 8);
    if (v15)
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_10006FB7C();
      }

      goto LABEL_44;
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v45 = v16;
      v46 = [v8 sourceIdentifier];
      *buf = 138543362;
      v64 = v46;
      _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "Updated source (%{public}@) saved successfully.", buf, 0xCu);
    }
  }

  v15 = 0;
LABEL_47:
  v50 = [v8 objectID];
  v51 = [v50 isTemporary];

  if ((v51 & 1) == 0 && v9)
  {
    v52 = [a1[6] environment];
    v53 = [v52 recordMap];
    v54 = [v8 objectID];
    [v53 setIdentifier:v9 masterRowID:-1 summary:0 location:0 startTime:v54 forRecordID:0.0];
  }

LABEL_50:
}

uint64_t sub_100018888(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000188A0(uint64_t a1)
{
  v2 = [*(a1 + 32) attributes];

  if (v2)
  {
    v3 = *(*(*(a1 + 64) + 8) + 40);
    v4 = *(qword_1000D18A8 + 8);
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    if (v3)
    {
      if (v5)
      {
        v6 = *(a1 + 32);
        *buf = 138543362;
        v15 = v6;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Update calendar: %{public}@", buf, 0xCu);
      }

      if ([*(a1 + 40) _updateCalendar:*(*(*(a1 + 64) + 8) + 40) withCalendarWrapper:*(a1 + 32)])
      {
        v7 = objc_autoreleasePoolPush();
        v8 = *(a1 + 48);
        v9 = *(*(*(a1 + 64) + 8) + 40);
        v13 = 0;
        [v8 saveCalendar:v9 commit:1 error:&v13];
        v10 = v13;
        objc_autoreleasePoolPop(v7);
        if (v10)
        {
          if (os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_ERROR))
          {
            sub_10006FDD8(a1);
          }
        }
      }
    }

    else
    {
      if (v5)
      {
        v12 = *(a1 + 32);
        *buf = 138543362;
        v15 = v12;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Create calendar: %{public}@", buf, 0xCu);
      }

      if (os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_ERROR))
      {
        sub_10006FE50();
      }
    }
  }

  else
  {
    v11 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Sent calendarWrapper with no attributes, updating defaults.", buf, 2u);
    }

    [*(a1 + 40) _checkAndSetDefaultCalendar:*(*(*(a1 + 64) + 8) + 40) calendarWrapper:*(a1 + 32) store:*(a1 + 48)];
  }
}

id sub_100018D10(uint64_t a1)
{
  [*(a1 + 32) _deleteSourceWithIdentifier:*(a1 + 40) store:*(a1 + 48)];
  [*(a1 + 32) _deleteCalendarWithIdentifier:*(a1 + 40) store:*(a1 + 48)];
  [*(a1 + 32) _deleteEventWithIdentifier:*(a1 + 40) calendarIdentifier:0 store:*(a1 + 48)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);

  return [v2 _deleteReminderWithIdentifier:v3 calendarIdentifier:0 store:v4];
}

void sub_10001B088(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = [*(a1 + 32) entityTypeForCalendarItemWithIdentifier:v3];
  if (v5)
  {
    if (v5 == 1)
    {
      v6 = [*(a1 + 40) environment];
      v7 = [v6 isReminderKitEnabled];

      if (v7)
      {
        v8 = *(qword_1000D18A8 + 8);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = 136446466;
          v10 = "[NEKEventStore _processUpdateFromWatch:calendar:store:]_block_invoke";
          v11 = 2114;
          v12 = v3;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}s: Ignoring EventKit code path for reminder with identifier: [%{public}@]", &v9, 0x16u);
        }
      }

      else
      {
        [*(a1 + 40) handleCalendarTaskWithUniqueIdentifierFromGizmo:v3 calendar:*(a1 + 48) wrapper:*(a1 + 32)];
      }
    }

    else if (os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_ERROR))
    {
      sub_1000703CC();
    }
  }

  else
  {
    [*(a1 + 40) handleCalendarEventWithUniqueIdentifierFromGizmo:v3 calendar:*(a1 + 48) wrapper:*(a1 + 32) detachedEventMap:*(a1 + 56)];
  }

  objc_autoreleasePoolPop(v4);
}

void sub_10001C658(uint64_t a1, void *a2)
{
  v3 = a2;
  if (![*(a1 + 32) containsObject:v3])
  {
    v6 = [*(a1 + 48) entityTypeForCalendarItemWithIdentifier:v3];
    v7 = [*(a1 + 56) calendarItemsWithUniqueIdentifier:v3 inCalendar:*(a1 + 64)];
    if (![v7 count])
    {
      if (os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_ERROR))
      {
        sub_10007064C();
      }

      goto LABEL_22;
    }

    if ([v7 count] != 1)
    {
      if (os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_ERROR))
      {
        sub_100070554();
      }

      goto LABEL_22;
    }

    v8 = [v7 objectAtIndexedSubscript:0];
    v9 = v8;
    if (v6 == 1)
    {
      v12 = [*(a1 + 72) environment];
      v13 = [v12 isReminderKitEnabled];

      if ((v13 & 1) == 0)
      {
        v15 = *(a1 + 56);
        v17 = 0;
        [v15 removeReminder:v9 commit:0 error:&v17];
        v11 = v17;
        if (v11)
        {
          goto LABEL_19;
        }

LABEL_21:
        [*(a1 + 72) _removeIdentifierForDeletedEntity:v9];

LABEL_22:
        goto LABEL_23;
      }

      v14 = *(qword_1000D18A8 + 8);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v20 = "[NEKEventStore _deleteCalendarItemsInICSWrapperFromOldCalendar:store:]_block_invoke";
        v21 = 2114;
        v22 = v3;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}s: Ignoring EventKit code path for reminder with identifier: [%{public}@]", buf, 0x16u);
      }
    }

    else if (!v6)
    {
      v10 = *(a1 + 56);
      v18 = 0;
      [v10 removeEvent:v8 span:objc_msgSend(v8 error:{"isMasterOrDetachedOccurrence"), &v18}];
      v11 = v18;
      [*(a1 + 72) _deleteDetachedCalendarItemsFromOldCalendar:v9 deletedEvents:*(a1 + 32)];
      if (!v11)
      {
        goto LABEL_21;
      }

LABEL_19:
      v16 = *(qword_1000D18A8 + 8);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_1000705BC(v16);
      }

      goto LABEL_21;
    }

    v11 = 0;
    goto LABEL_21;
  }

  v4 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    *buf = 138543618;
    v20 = v3;
    v21 = 2114;
    v22 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Skipping deletion for event with identifier %{public}@ in calendar with identifier %{public}@, we already detected and deleted it as part of a recurring master's detached events", buf, 0x16u);
  }

LABEL_23:
}

void sub_10001CA40(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] eventStore];
  v5 = [a1[5] entityTypeForCalendarItemWithIdentifier:v3];
  v28 = v3;
  v29 = v4;
  v6 = v4;
  v7 = v5;
  [v6 calendarItemsWithUniqueIdentifier:v3 inCalendar:0];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = v37 = 0u;
  v8 = [obj countByEnumeratingWithState:&v34 objects:v44 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = *v35;
    *&v9 = 136446466;
    v27 = v9;
    v30 = v7;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v35 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v34 + 1) + 8 * i);
        v14 = [a1[4] objectID];
        v15 = [v13 calendar];
        v16 = v15;
        if (v15)
        {
          v17 = [v15 objectID];
          v18 = v17;
          v19 = v14 != 0;
          if (v14 && v17)
          {
            if (([v14 isEqual:v17] & 1) == 0)
            {
              goto LABEL_20;
            }

            goto LABEL_34;
          }

          if (!v14 && v17)
          {
            goto LABEL_20;
          }
        }

        else
        {
          v18 = 0;
          v19 = v14 != 0;
        }

        if (v19 && v18 == 0)
        {
          v18 = 0;
LABEL_20:
          if (v7 != 1)
          {
            if (!v7)
            {
              v33 = 0;
              v21 = &v33;
              [v29 removeEvent:v13 span:0 error:&v33];
              goto LABEL_29;
            }

            v25 = 0;
LABEL_33:
            [a1[6] _removeIdentifierForDeletedEntity:v13];

            goto LABEL_34;
          }

          v22 = [a1[6] environment];
          v23 = [v22 isReminderKitEnabled];

          if (v23)
          {
            v24 = *(qword_1000D18A8 + 8);
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v27;
              v41 = "[NEKEventStore _deleteCalendarItemsMovedToCalendar:inICSWrapper:]_block_invoke";
              v42 = 2114;
              v43 = v28;
              _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%{public}s: Ignoring EventKit code path for reminder with identifier: [%{public}@]", buf, 0x16u);
            }

            v25 = 0;
          }

          else
          {
            v32 = 0;
            v21 = &v32;
            [v29 removeReminder:v13 commit:0 error:&v32];
            v7 = v30;
LABEL_29:
            v25 = *v21;
            if (!v25)
            {
              goto LABEL_33;
            }

            v26 = *(qword_1000D18A8 + 8);
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              sub_1000706B4(&v38, v26, v13, &v39);
            }
          }

          v7 = v30;
          goto LABEL_33;
        }

LABEL_34:
      }

      v10 = [obj countByEnumeratingWithState:&v34 objects:v44 count:16];
    }

    while (v10);
  }
}

void sub_10001E13C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained[7] objectForKeyedSubscript:*(a1 + 32)];
    [v4 doubleValue];
    v6 = v5;

    +[NSDate timeIntervalSinceReferenceDate];
    if (v6 > 0.0 && v6 < v7)
    {
      v9 = *(qword_1000D18A8 + 8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = *(a1 + 32);
        v11 = 138412290;
        v12 = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Deleteing suppression cache entry for %@", &v11, 0xCu);
      }

      [v3[7] setObject:0 forKeyedSubscript:*(a1 + 32)];
    }
  }
}

void sub_10001E3C8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = [*(a1 + 32) fetch:v3];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 owner];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 objectID];
      if (v8)
      {
        v9 = v8;
        v10 = *(a1 + 40);
        v11 = [v7 objectID];
        LOBYTE(v10) = [v10 containsObject:v11];

        if ((v10 & 1) == 0)
        {
          v12 = *(qword_1000D18A8 + 8);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v13 = v12;
            v14 = [v7 objectID];
            v17 = 138543362;
            v18 = v14;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Surreptitiously adding event to changeset: %{public}@ due to attendee change", &v17, 0xCu);
          }

          v15 = *(a1 + 40);
          v16 = [v7 objectID];
          [v15 addObject:v16];
        }
      }
    }
  }

  objc_autoreleasePoolPop(v4);
}

void sub_10001EC3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_10001EC60(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = [*(a1 + 32) publicObjectWithObjectID:v6];
  v8 = v7;
  if (v7)
  {
    if ([v7 isHidden])
    {
      v9 = *(qword_1000D18A8 + 8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = v9;
        v11 = [v8 calendarIdentifier];
        v28 = 138543362;
        v29 = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Skipping hidden calendar: %{public}@", &v28, 0xCu);
      }
    }

    else
    {
      v12 = [*(a1 + 40) wrapperForCalEntity:v8 changeType:*(a1 + 88)];
      if (v12)
      {
        if ([v8 isEqual:*(a1 + 48)])
        {
          *(*(*(a1 + 72) + 8) + 24) = 1;
          [v12 setIsDefaultTaskCalendar:1];
          v13 = *(qword_1000D18A8 + 8);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            v14 = *(a1 + 48);
            v15 = v13;
            v16 = sub_10002CDF8([v14 title]);
            v17 = [*(a1 + 48) calendarIdentifier];
            v28 = 138543618;
            v29 = v16;
            v30 = 2114;
            v31 = v17;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Marking default task calendar in wrapper to calendar with name %{public}@, identifier %{public}@", &v28, 0x16u);
          }
        }

        if ([v8 isEqual:*(a1 + 56)])
        {
          *(*(*(a1 + 80) + 8) + 24) = 1;
          [v12 setIsDefaultEventCalendar:1];
          v18 = *(qword_1000D18A8 + 8);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            v19 = *(a1 + 56);
            v20 = v18;
            v21 = sub_10002CDF8([v19 title]);
            v22 = [*(a1 + 56) calendarIdentifier];
            v28 = 138543618;
            v29 = v21;
            v30 = 2114;
            v31 = v22;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Marking default event calendar in wrapper to calendar with name %{public}@, identifier %{public}@", &v28, 0x16u);
          }
        }

        v23 = [*(a1 + 40) recordMap];
        v24 = [v23 identifierForRecordID:v6];

        v25 = [v8 eks_compoundIdentifier];
        if (([v24 isEqualToString:v25] & 1) == 0)
        {
          v26 = *(qword_1000D18A8 + 8);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            v28 = 138543618;
            v29 = v24;
            v30 = 2114;
            v31 = v25;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "CalendarID remap detected: %{public}@ => %{public}@", &v28, 0x16u);
          }

          [v12 setOldCalendarIdentifier:v24];
        }

        if (([*(a1 + 64) push:v12] & 1) == 0)
        {
          *a4 = 1;
        }
      }

      else
      {
        v27 = *(qword_1000D18A8 + 8);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          sub_100070860(v27);
        }
      }
    }
  }
}

void sub_10001F588(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = objc_autoreleasePoolPush();
  v8 = [*(a1 + 32) fetch:v6];
  if (v8)
  {
    v9 = objc_opt_new();
    v10 = [v8 eventStore];
    if ([v6 entityType] == 2)
    {
      v11 = v8;
      if ([v11 invitationStatus] && objc_msgSend(*(a1 + 40), "eventInFuture:inStore:", v11, v10))
      {
        v12 = [v11 uniqueId];
        if (v12)
        {
          [v9 addObject:v12];
        }

        else if (os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_ERROR))
        {
          sub_1000708F0();
        }

        v13 = 1;
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }

    if (((sub_100016740() & 1) != 0 || (v13 | [*(a1 + 40) eventInWindow:v8 inStore:v10]) == 1) && sub_10000A528(v8) && objc_msgSend(*(a1 + 48), "shouldSendEntity:", v8))
    {
      v14 = *(a1 + 56);
      v15 = [NEKICSWrapper wrapperForChangeType:1 calendarItem:v8 needsInvite:v9 eventStore:0];
      LOBYTE(v14) = [v14 push:v15];

      if (v14)
      {
        [*(a1 + 48) updateRowMappingForEntity:v8];
      }

      else
      {
        *a4 = 1;
      }
    }
  }

  else if (os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_ERROR))
  {
    sub_100070958();
  }

  objc_autoreleasePoolPop(v7);
}

void sub_10001F7B0(id *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = objc_autoreleasePoolPush();
  v8 = [a1[4] fetch:v6];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 eventStore];
    if (([a1[5] hasRowMappingForEntity:v9] & 1) == 0 && (sub_100016740() & 1) == 0)
    {
      if ([v6 entityType] == 2)
      {
        v11 = v9;
        if (([a1[6] eventInWindow:v11 inStore:v10] & 1) == 0 && (!objc_msgSend(v11, "invitationStatus") || (objc_msgSend(a1[6], "eventInFuture:inStore:", v11, v10) & 1) == 0))
        {

          goto LABEL_29;
        }
      }

      else if ([v6 entityType] == 3)
      {
        v12 = [a1[5] environment];
        v13 = [v12 isReminderKitEnabled];

        if (v13)
        {
          v14 = *(qword_1000D18A8 + 8);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136446210;
            v34 = "[NEKEventStore ICSWrappersForChangeSet:pipe:]_block_invoke";
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}s: Ignoring EventKit code path for reminder", buf, 0xCu);
          }

          goto LABEL_29;
        }

        if (![a1[6] eventInWindow:v9 inStore:v10])
        {
          goto LABEL_29;
        }
      }
    }

    if ([a1[5] shouldSendEntity:v9])
    {
      v15 = [a1[5] recordMap];
      v16 = [v15 identifierForRecordID:v6];

      v17 = [v9 eks_compoundIdentifier];
      v18 = v17;
      if (v17)
      {
        if (v16)
        {
          if (([v17 isEqualToString:v16] & 1) == 0)
          {
            v19 = *(qword_1000D18A8 + 8);
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543618;
              v34 = v16;
              v35 = 2114;
              v36 = v18;
              _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "CalendarItem remap detected: %{public}@ => %{public}@", buf, 0x16u);
            }
          }
        }
      }

      v20 = [a1[5] wrapperForCalEntity:v9 changeType:2];
      if (v20)
      {
        if (v16)
        {
          v32 = v10;
          v21 = [v16 componentsSeparatedByString:@"::"];
          if ([v21 count] == 2)
          {
            v22 = [v21 objectAtIndexedSubscript:0];
            [v20 setOldIdentifier:v22];

            v23 = [v18 componentsSeparatedByString:@"::"];

            v24 = [v23 objectAtIndexedSubscript:0];
            [v20 setNuevoIdentifier:v24];

            v21 = v23;
          }

          v10 = v32;
        }

        if (([a1[7] push:v20] & 1) == 0)
        {
          *a4 = 1;
        }
      }

      goto LABEL_39;
    }

LABEL_29:
    if (os_variant_has_internal_diagnostics())
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v25 = *(qword_1000D18A8 + 8);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          v26 = v25;
          v27 = [v9 eks_debugDesc];
          *buf = 138412290;
          v34 = v27;
          v28 = "Decided not to send event %@";
LABEL_38:
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, v28, buf, 0xCu);
        }
      }

      else
      {
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        v30 = *(qword_1000D18A8 + 8);
        v31 = os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);
        if (isKindOfClass)
        {
          if (v31)
          {
            v26 = v30;
            v27 = [v9 eks_debugDesc];
            *buf = 138412290;
            v34 = v27;
            v28 = "Decided not to send reminder %@";
            goto LABEL_38;
          }
        }

        else if (v31)
        {
          v26 = v30;
          v27 = [v6 stringRepresentation];
          *buf = 138543362;
          v34 = v27;
          v28 = "Decided not to send %{public}@";
          goto LABEL_38;
        }
      }
    }

LABEL_39:
  }

  objc_autoreleasePoolPop(v7);
}

void sub_100021FD8(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_10002200C(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_10002202C(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_100022070(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_error_impl(a1, v5, OS_LOG_TYPE_ERROR, a4, v4, 0xCu);
}

void sub_100023690(id a1, NSError *a2)
{
  v2 = a2;
  v3 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v6 = 138412290;
    v7 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Notification requested for drift or duplicates with error: %@", &v6, 0xCu);
  }

  v4 = +[NEKEnvironment instance];
  v5 = [v4 tinyStore];
  +[NSDate timeIntervalSinceReferenceDate];
  [v5 setDoubleValue:@"diagnosticNotificationRequested" forKey:?];
}

void sub_100023DF0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = 138412546;
    v8 = v6;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Notification didReceiveNotificationResponse to open URL [%@] with error: %@", &v7, 0x16u);
  }

  [*(a1 + 40) requestResetSync];
}

uint64_t sub_100024F48(uint64_t a1, void *a2)
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
        LOBYTE(v45) = 0;
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
          *(a1 + 44) |= 8u;
          v45 = 0;
          v36 = [a2 position] + 8;
          if (v36 >= [a2 position] && (v37 = objc_msgSend(a2, "position") + 8, v37 <= objc_msgSend(a2, "length")))
          {
            v40 = [a2 data];
            [v40 getBytes:&v45 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v41 = v45;
          v42 = 32;
        }

        else
        {
          if (v13 != 2)
          {
LABEL_56:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_74;
          }

          *(a1 + 44) |= 1u;
          v45 = 0;
          v21 = [a2 position] + 8;
          if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 8, v22 <= objc_msgSend(a2, "length")))
          {
            v43 = [a2 data];
            [v43 getBytes:&v45 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v41 = v45;
          v42 = 8;
        }

        *(a1 + v42) = v41;
      }

      else
      {
        if (v13 == 3)
        {
          v23 = 0;
          v24 = 0;
          v25 = 0;
          *(a1 + 44) |= 2u;
          while (1)
          {
            LOBYTE(v45) = 0;
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
              v29 = 0;
              goto LABEL_61;
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

LABEL_61:
          v39 = 16;
          goto LABEL_66;
        }

        if (v13 == 4)
        {
          v30 = 0;
          v31 = 0;
          v32 = 0;
          *(a1 + 44) |= 4u;
          while (1)
          {
            LOBYTE(v45) = 0;
            v33 = [a2 position] + 1;
            if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
            {
              v35 = [a2 data];
              [v35 getBytes:&v45 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v32 |= (v45 & 0x7F) << v30;
            if ((v45 & 0x80) == 0)
            {
              break;
            }

            v30 += 7;
            v11 = v31++ >= 9;
            if (v11)
            {
              v29 = 0;
              goto LABEL_65;
            }
          }

          if ([a2 hasError])
          {
            v29 = 0;
          }

          else
          {
            v29 = v32;
          }

LABEL_65:
          v39 = 24;
LABEL_66:
          *(a1 + v39) = v29;
          goto LABEL_74;
        }

        if (v13 != 5)
        {
          goto LABEL_56;
        }

        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 44) |= 0x10u;
        while (1)
        {
          LOBYTE(v45) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v45 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v45 & 0x7F) << v14;
          if ((v45 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            LOBYTE(v20) = 0;
            goto LABEL_68;
          }
        }

        v20 = (v16 != 0) & ~[a2 hasError];
LABEL_68:
        *(a1 + 40) = v20;
      }

LABEL_74:
      v44 = [a2 position];
    }

    while (v44 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_100026530(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, char a17)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a17, 8);
  _Unwind_Resume(a1);
}

void sub_100026560(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a3;
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v10 = [*(a1 + 32) isEqualToString:v8];

  if (v10)
  {
    [*(WeakRetained + 2) synchronizeUserDefaultsDomain:@"com.apple.mobilecal" keys:v7];
    v11 = *(WeakRetained + 1);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138543362;
      v13 = v7;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Synced prefs for keys %{public}@", &v12, 0xCu);
    }

    *a4 = 1;
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

uint64_t sub_100026824(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 8);
  v4 = a2;
  [v4 bindInteger:v3];
  [v4 bindInteger:*(*(a1 + 32) + 4)];
  [v4 bindInteger:*(*(a1 + 32) + 12)];
  [v4 bindInteger:**(a1 + 32)];
  [v4 step];

  return 0;
}

uint64_t sub_100026A2C(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 bindInteger:*(a1 + 40)];
  if ([v3 step] == 100)
  {
    *(*(a1 + 32) + 8) = [v3 fetchInteger];
    *(*(a1 + 32) + 4) = [v3 fetchInteger];
    v4 = [v3 fetchInteger];
    v5 = *(a1 + 32);
  }

  else
  {
    v4 = 0;
    v5 = *(a1 + 32);
    v5[1] = 0;
    v5[2] = 0;
  }

  v5[3] = v4;

  return 0;
}

uint64_t sub_100026B28(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 bindInteger:v2];
  [v3 step];

  return 0;
}

void sub_100026C4C(id a1)
{
  v1 = dlopen("/System/Library/PrivateFrameworks/CrashReporterSupport.framework/CrashReporterSupport", 1);
  qword_1000D17C0 = v1;
  if (v1)
  {
    v2 = dlsym(v1, "WriteStackshotReport");
    if (v2)
    {
      v3 = v2;
    }

    else
    {
      v3 = sub_100026CE8;
    }

    off_1000D17B0 = v3;
    v4 = dlsym(qword_1000D17C0, "SimulateCrash");
    if (v4)
    {
      v5 = v4;
    }

    else
    {
      v5 = sub_100026CE8;
    }
  }

  else
  {
    v5 = sub_100026CE8;
    off_1000D17B0 = sub_100026CE8;
  }

  off_1000D17B8 = v5;
}

void sub_100026D34(id a1)
{
  qword_1000D17D8 = os_log_create("com.apple.eventkitsyncd", "NEKServicesClient");

  _objc_release_x1();
}

id sub_100027CA0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 32);
  if (v2 == 1)
  {
    return [v3 _recvSetReminderKitReminderCompletedEndpoint:a2];
  }

  else
  {
    return [v3 _recvSetEventKitReminderCompletedEndpoint:a2];
  }
}

id sub_100027CC8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 32);
  if (v2 == 1)
  {
    return [v3 _recvSetReminderKitAlarmSnoozeEndpoint:a2];
  }

  else
  {
    return [v3 _recvSetEventKitAlarmSnoozeEndpoint:a2];
  }
}

id sub_100028414(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v33 = a3;
  v34 = a4;
  v9 = [v7 calendarsForEntityType:1];
  v10 = objc_opt_new();
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v11 = v9;
  v12 = [v11 countByEnumeratingWithState:&v46 objects:v54 count:16];
  if (v12)
  {
    v13 = *v47;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v47 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v46 + 1) + 8 * i);
        v16 = [v15 title];
        v17 = [v16 isEqualToString:v8];

        if (v17)
        {
          [v10 addObject:v15];
        }
      }

      v12 = [v11 countByEnumeratingWithState:&v46 objects:v54 count:16];
    }

    while (v12);
  }

  v18 = [v7 predicateForRemindersInCalendars:v10];
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = sub_10002A0C0;
  v44 = sub_10002A0D0;
  v45 = 0;
  v19 = dispatch_semaphore_create(0);
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_10002A0D8;
  v35[3] = &unk_1000B53A0;
  v20 = v33;
  v36 = v20;
  v21 = v34;
  v37 = v21;
  v39 = &v40;
  v22 = v19;
  v38 = v22;
  v23 = [v7 fetchRemindersMatchingPredicate:v18 completion:v35];
  dispatch_semaphore_wait(v22, 0xFFFFFFFFFFFFFFFFLL);
  v24 = v41[5];
  v25 = *(qword_1000D18A8 + 8);
  v26 = v25;
  if (v24)
  {
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v27 = sub_10002CDF8(v8);
      v28 = [v41[5] eks_debugDesc];
      *buf = 138543618;
      v51 = v27;
      v52 = 2114;
      v53 = v28;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Found reminder %{public}@:%{public}@", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    v29 = sub_10002CDF8(v8);
    v30 = sub_10002CDF8(v20);
    sub_1000711E4(v29, v30, buf, v26);
  }

  v31 = v41[5];
  _Block_object_dispose(&v40, 8);

  return v31;
}

void sub_1000287E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100028810(void *a1)
{
  v5 = a1;
  v1 = [v5 startDateComponents];

  if (!v1)
  {
    v2 = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    v3 = +[NSDate date];
    v4 = [v2 components:126 fromDate:v3];
    [v5 setStartDateComponents:v4];
  }
}

void sub_1000290AC(uint64_t a1, void *a2)
{
  v13 = a2;
  v3 = [v13 title];
  v4 = [*(a1 + 32) deleteEvent];
  v5 = [v4 eventTitle];
  v6 = [v3 isEqual:v5];

  if (v6)
  {
    v7 = [v13 startDate];
    [v7 timeIntervalSince1970];
    v9 = v8;
    v10 = [*(a1 + 32) deleteEvent];
    [v10 eventStart];
    v12 = v11;

    if (v9 == v12)
    {
      [*(a1 + 40) addObject:v13];
    }
  }
}

uint64_t sub_10002A0C0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10002A0D8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_new();
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v33;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v33 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v32 + 1) + 8 * i);
        v11 = [v10 title];
        if (v11)
        {
          v12 = v11;
          v13 = [v10 title];
          v14 = [v13 isEqualToString:*(a1 + 32)];

          if (v14)
          {
            [v4 addObject:v10];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v7);
  }

  if ([v4 count] >= 2 && *(a1 + 40))
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v15 = v4;
    v16 = [v15 countByEnumeratingWithState:&v28 objects:v36 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v29;
      obj = v15;
      while (2)
      {
        for (j = 0; j != v17; j = j + 1)
        {
          if (*v29 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v28 + 1) + 8 * j);
          v21 = [v20 externalID];
          if (v21)
          {
            v22 = v21;
            v23 = [v20 externalID];
            v24 = [v23 isEqualToString:*(a1 + 40)];

            if (v24)
            {
              objc_storeStrong((*(*(a1 + 56) + 8) + 40), v20);
              v15 = obj;
              goto LABEL_26;
            }
          }
        }

        v15 = obj;
        v17 = [obj countByEnumeratingWithState:&v28 objects:v36 count:16];
        if (v17)
        {
          continue;
        }

        break;
      }
    }

    goto LABEL_26;
  }

  if ([v4 count] == 1)
  {
    v25 = [v4 objectAtIndexedSubscript:0];
    v26 = *(*(a1 + 56) + 8);
    v15 = *(v26 + 40);
    *(v26 + 40) = v25;
LABEL_26:
  }

  dispatch_semaphore_signal(*(a1 + 48));
}

void sub_10002A388(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void sub_10002A3D4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0x1Cu);
}

void sub_10002AC90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint8_t buf)
{
  if (a2 == 2)
  {
    v12 = objc_begin_catch(exception_object);
    v13 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_100071638(v12, v11, v13);
    }
  }

  else
  {
    if (a2 != 1)
    {
      _Unwind_Resume(exception_object);
    }

    v14 = objc_begin_catch(exception_object);
    v15 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = [v14 reason];
      sub_1000715C0(v16, v11, &buf, v15);
    }
  }

  objc_end_catch();
  JUMPOUT(0x10002AB58);
}

void sub_10002B73C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location, int a22, __int16 a23, uint64_t a24)
{
  objc_destroyWeak((v24 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10002B820(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_opt_new();
  v3 = WeakRetained[3];
  WeakRetained[3] = v2;

  if (os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_DEBUG))
  {
    sub_100071704();
  }
}

void sub_10002B898(uint64_t a1)
{
  [*(a1 + 32) _blockUntilUnlock];
  v1 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "_blockUntilUnlock returned", v2, 2u);
  }
}

void sub_10002BB88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10002BBBC(uint64_t a1, xpc_object_t xdict)
{
  v3 = [NSString stringWithUTF8String:xpc_dictionary_get_string(xdict, _xpc_event_key_name)];
  v4 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v15 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Beginning XPC transaction for com.apple.notifyd.matching notification named %{public}@", buf, 0xCu);
  }

  v5 = os_transaction_create();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained[2];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002BD60;
  block[3] = &unk_1000B5410;
  objc_copyWeak(&v13, (a1 + 32));
  v11 = v3;
  v12 = v5;
  v8 = v5;
  v9 = v3;
  dispatch_async(v7, block);

  objc_destroyWeak(&v13);
}

void sub_10002BD60(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if ([*(a1 + 32) isEqualToString:@"_CalDatabaseChangedNotification"])
  {
    [WeakRetained _databaseChangedExternally];
    goto LABEL_19;
  }

  if ([*(a1 + 32) isEqualToString:@"com.apple.reminderkit.storeChanged"])
  {
    if (qword_1000D17E0 != -1)
    {
      sub_100071738();
    }

    goto LABEL_19;
  }

  if ([*(a1 + 32) isEqualToString:@"IDS"])
  {
    v3 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Launched from IDS", buf, 2u);
    }

    goto LABEL_19;
  }

  if ([*(a1 + 32) isEqualToString:@"EventKitSyncTesting"])
  {
    v4 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      *buf = 138543362;
      v22 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Triggering a full sync, [%{public}@] fired due to a Bridge reset request (or for testing)", buf, 0xCu);
    }

    [WeakRetained _triggerFullSync];
    goto LABEL_19;
  }

  if ([*(a1 + 32) isEqualToString:@"com.apple.eventkitsync.force"])
  {
    v6 = [WeakRetained environment];
    v7 = [v6 syncController];
    [v7 clearRetryState];
LABEL_17:

LABEL_18:
    goto LABEL_19;
  }

  if ([*(a1 + 32) isEqualToString:@"com.apple.eventkitsync.zapversion"])
  {
    v6 = [WeakRetained environment];
    v7 = [v6 syncController];
    [v7 clearRemoteBuildVersion];
    goto LABEL_17;
  }

  if ([*(a1 + 32) isEqualToString:@"com.apple.datamigrator.migrationDidFinish"])
  {
    v10 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Thinking about a migration sync.", buf, 2u);
    }

    [WeakRetained _triggerMigrationSync];
  }

  else
  {
    if ((sub_100016740() & 1) == 0 && [*(a1 + 32) isEqualToString:@"SignificantTimeChangeNotification"])
    {
      v11 = [NEKSyncWindow alloc];
      v12 = [WeakRetained environment];
      v13 = [v12 tinyStore];
      v6 = [(NEKSyncWindow *)v11 initForFullSync:0 tinyStore:v13];

      LODWORD(v13) = [v6 shouldSyncBasedOnTime:CFAbsoluteTimeGetCurrent()];
      v14 = *(qword_1000D18A8 + 8);
      v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
      if (v13)
      {
        if (v15)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "SignificantTimeChange incremental sync", buf, 2u);
        }

        [WeakRetained _triggerNightlySync];
      }

      else if (v15)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "SignificantTimeChange ignored", buf, 2u);
      }

      goto LABEL_18;
    }

    if ([*(a1 + 32) isEqualToString:@"CalDefaultCalendarChangedNotification"])
    {
      v6 = +[NSNotificationCenter defaultCenter];
      [v6 postNotificationName:@"NEKDefaultCalendarChanged" object:WeakRetained];
      goto LABEL_18;
    }

    if ([*(a1 + 32) isEqualToString:@"com.apple.eventkitsync.analytics.flush"])
    {
      v6 = [WeakRetained environment];
      v7 = [v6 analytics];
      [v7 flush];
      goto LABEL_17;
    }

    v16 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(a1 + 32);
      *buf = 138543362;
      v22 = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Calling pref observer for notification: %{public}@", buf, 0xCu);
    }

    v18 = WeakRetained[4];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10002C2D0;
    v19[3] = &unk_1000B4BB8;
    v19[4] = WeakRetained;
    v20 = *(a1 + 32);
    dispatch_async(v18, v19);
  }

LABEL_19:
  v8 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    *buf = 138543362;
    v22 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Ending XPC transaction for com.apple.notifyd.matching notification named %{public}@", buf, 0xCu);
  }
}

void sub_10002C268(id a1)
{
  v1 = +[NSNotificationCenter defaultCenter];
  [v1 postNotificationName:REMStoreDidChangeNotification object:0];
}

void sub_10002C2DC(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && xpc_activity_get_state(v3) == 2)
  {
    v5 = *(qword_1000D18B8 + 8);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Analytics activity", v8, 2u);
    }

    v6 = [WeakRetained environment];
    v7 = [v6 analytics];
    [v7 flush];

    if (!xpc_activity_set_state(v3, 5) && os_log_type_enabled(*(qword_1000D18B8 + 8), OS_LOG_TYPE_ERROR))
    {
      sub_10007174C();
    }
  }
}

void sub_10002C570(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10002C58C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained[3] rebroadcastAllObservedNotifications];
  v2 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Prefs synced.", v3, 2u);
  }
}

void sub_10002C794(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10002C7B0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained[3] rebroadcastAllObservedNotifications];
  v2 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Prefs synced.", v3, 2u);
  }
}

void -[NEKDaemon _blockUntilUnlock](NEKDaemon *self, SEL a2)
{
  v3 = dispatch_semaphore_create(0);
  out_token = 0;
  v4 = dispatch_get_global_queue(0, 0);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10002CC18;
  handler[3] = &unk_1000B5460;
  v5 = v3;
  v15 = v5;
  v6 = notify_register_dispatch("com.apple.mobile.keybagd.first_unlock", &out_token, v4, handler);

  if (v6)
  {
    if (os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_ERROR))
    {
      sub_10007178C();
    }
  }

  else
  {
    if (MKBGetDeviceLockState() == 3 || MKBDeviceUnlockedSinceBoot() == 1)
    {
      dispatch_semaphore_signal(v5);
    }

    dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
    notify_cancel(out_token);
  }

  v7 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Protected data available.", v13, 2u);
  }

  if (os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_DEBUG))
  {
    sub_1000717CC();
  }

  v8 = [NEKSyncController alloc];
  v9 = [(NEKDaemon *)self environment];
  v10 = [(NEKSyncController *)v8 initWithEnvironment:v9];

  if (os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_DEBUG))
  {
    sub_100071800();
  }

  v11 = [(NEKDaemon *)self environment];
  [v11 setSyncController:v10];

  v12 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Starting sync controller", v13, 2u);
  }

  [(NEKSyncController *)v10 start];
}

void sub_10002CCA4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

__CFString *sub_10002CDF8(void *a1)
{
  if (byte_1000D17E8 == 1)
  {
    if (a1)
    {
      v1 = a1;
      v2 = CFGetTypeID(v1);
      if (v2 == CFNumberGetTypeID())
      {
        if (qword_1000D17F8 != -1)
        {
          sub_100071834();
        }

        StringWithNumber = CFNumberFormatterCreateStringWithNumber(0, qword_1000D17F0, v1);
      }

      else
      {
        StringWithNumber = [v1 description];
      }

      v5 = StringWithNumber;
      if (StringWithNumber)
      {
        v4 = sub_10002CF20(StringWithNumber);
      }

      else
      {
        v4 = @"[VOID]";
      }
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = a1;
  }

  return v4;
}

__CFString *sub_10002CF20(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (+[NDTLog obfuscate])
    {
      v2 = [v1 UTF8String];
      v3 = strlen(v2);
      v4 = [NSString stringWithFormat:@">%08x<", crc32(0, v2, v3)];
    }

    else
    {
      v4 = v1;
    }

    v5 = v4;
  }

  else
  {
    v5 = @"(nil)";
  }

  return v5;
}

void *sub_10002F2C4(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002F394;
  v7[3] = &unk_1000B54A8;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = v3;
  v4 = v3;
  v5 = objc_retainBlock(v7);

  return v5;
}

void sub_10002F394(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 entityType] == 6)
  {
    v4 = [*(a1 + 32) identifierInRowMappingForRecordIDRef:v3];
    v5 = [*(a1 + 40) ekEventStore];
    v6 = [v5 publicObjectWithObjectID:v3];

    if (v6 || ([*(a1 + 40) ekEventStore], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "sourceWithExternalID:", v4), v6 = objc_claimAutoreleasedReturnValue(), v7, v4 | v6))
    {
      (*(*(a1 + 48) + 16))();
    }

    else
    {
      v8 = *(qword_1000D18A8 + 8);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_100071B8C(v3, v8, v9, v10, v11, v12, v13, v14);
      }
    }
  }
}

void *sub_10002F4B8(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002F574;
  v7[3] = &unk_1000B54F8;
  v8 = *(a1 + 32);
  v9 = v3;
  v4 = v3;
  v5 = objc_retainBlock(v7);

  return v5;
}

void sub_10002F574(uint64_t a1, void *a2)
{
  v14 = a2;
  v3 = [v14 entityName];
  v4 = +[REMAccount cdEntityName];
  v5 = [v3 isEqualToString:v4];

  v6 = v14;
  if (v5)
  {
    v7 = [v14 uuid];
    v8 = [v7 UUIDString];

    v9 = +[REMAccount localAccountID];
    v10 = [v14 isEqual:v9];

    v11 = [*(a1 + 32) ekEventStore];
    v12 = v11;
    if (v10)
    {
      [v11 localSource];
    }

    else
    {
      [v11 sourceWithExternalID:v8];
    }
    v13 = ;

    (*(*(a1 + 40) + 16))();
    v6 = v14;
  }
}

void sub_10002F6B4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(qword_1000D18A8 + 8);
  if (v6)
  {
    if (os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138543618;
      v15 = v5;
      v16 = 2112;
      v17 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Source with ID %{public}@ (%@) inserted. Going to send wrapper for this source.", &v14, 0x16u);
    }

    [*(a1 + 32) addObject:v6];
  }

  else if (os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_ERROR))
  {
    sub_100071BF8(v5, v7, v8, v9, v10, v11, v12, v13);
  }
}

void sub_10002F7CC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(qword_1000D18A8 + 8);
  if (v6)
  {
    if (os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138543618;
      v15 = v5;
      v16 = 2112;
      v17 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Source with ID %{public}@ (%@) updated. Going to send wrapper for this source.", &v14, 0x16u);
    }

    [*(a1 + 32) addObject:v6];
  }

  else if (os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_ERROR))
  {
    sub_100071C64(v5, v7, v8, v9, v10, v11, v12, v13);
  }
}

void sub_10002F8E4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(qword_1000D18A8 + 8);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      v11 = 138543618;
      v12 = v5;
      v13 = 2112;
      v14 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "EKSource %{public}@ (%@) is still available due to one of the event/reminder dataclass still enabled. Treating this as an update to send wrapper for dataclass updates.", &v11, 0x16u);
    }

    v9 = *(a1 + 32);
    v10 = v6;
  }

  else
  {
    if (v8)
    {
      v11 = 138543362;
      v12 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Deleted source/account %{public}@ is not available anymore. Going to send delete wrapper for this source", &v11, 0xCu);
    }

    v9 = *(a1 + 40);
    v10 = v5;
  }

  [v9 addObject:v10];
}

id sub_10002FC84()
{
  if (qword_1000D1800 != -1)
  {
    sub_100071CD0();
  }

  v1 = qword_1000D1808;

  return v1;
}

void sub_1000309F4(id a1)
{
  qword_1000D1808 = os_log_create("com.apple.eventkitsync", "syncWindow");

  _objc_release_x1();
}

void sub_100030E18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100030E30(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 step] == 100)
  {
    *(*(*(a1 + 32) + 8) + 24) = [v3 fetchInteger];
  }

  return 0;
}

void sub_100031110(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100031134(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10003114C(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 bindInteger:{objc_msgSend(*(a1 + 32), "entityType")}];
  [v3 bindInteger:{objc_msgSend(*(a1 + 32), "rowID")}];
  [v3 bindInteger:{objc_msgSend(*(a1 + 32), "databaseID")}];
  if ([v3 step] == 100)
  {
    v4 = [v3 fetchString];
    v5 = *(*(a1 + 40) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }

  return 0;
}

id sub_1000313C8(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = v1;
  }

  else
  {
    v2 = &stru_1000B7928;
  }

  v3 = [(__CFString *)v2 dataUsingEncoding:4];
  CC_SHA256([v3 bytes], objc_msgSend(v3, "length"), md);
  v4 = [NSData dataWithBytes:md length:32];
  v5 = [v4 base64EncodedStringWithOptions:0];

  return v5;
}

id sub_1000314B8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 bindInteger:{objc_msgSend(v3, "entityType")}];
  [v4 bindInteger:{objc_msgSend(*(a1 + 32), "rowID")}];
  [v4 bindInteger:{objc_msgSend(*(a1 + 32), "databaseID")}];
  [v4 bindString:*(a1 + 40)];
  [v4 bindInteger:time(0)];
  [v4 bindInteger:*(a1 + 64)];
  [v4 bindString:*(a1 + 48)];
  [v4 bindString:*(a1 + 56)];
  [v4 bindDouble:*(a1 + 72)];
  v5 = [v4 step];

  return v5;
}

void sub_10003177C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000317A0(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 bindInteger:{objc_msgSend(*(a1 + 32), "entityType")}];
  [v3 bindInteger:{objc_msgSend(*(a1 + 32), "rowID")}];
  [v3 bindInteger:{objc_msgSend(*(a1 + 32), "databaseID")}];
  if ([v3 step] == 100)
  {
    v4 = [v3 fetchString];
    v5 = [v3 fetchString];
    [v3 fetchDouble];
    v7 = v6;
    v8 = ![v4 isEqual:*(a1 + 40)] || !objc_msgSend(v5, "isEqual:", *(a1 + 48)) || v7 != *(a1 + 64);
    *(*(*(a1 + 56) + 8) + 24) = v8;
  }

  return 0;
}

uint64_t sub_100031950(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 bindInteger:{objc_msgSend(v3, "entityType")}];
  [v4 bindInteger:{objc_msgSend(*(a1 + 32), "rowID")}];
  [v4 bindInteger:{objc_msgSend(*(a1 + 32), "databaseID")}];
  [v4 step];

  return 0;
}

uint64_t sub_100031B04(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 step] == 100)
  {
    *&v4 = 67110146;
    v13 = v4;
    do
    {
      v5 = *(a1 + 32);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        v6 = v5;
        v7 = [v3 fetchInteger];
        v8 = [v3 fetchInteger];
        v9 = [v3 fetchInteger];
        v10 = [v3 fetchString];
        v11 = [v3 fetchInteger];
        *buf = v13;
        v15 = v7;
        v16 = 1024;
        v17 = v8;
        v18 = 1024;
        v19 = v9;
        v20 = 2114;
        v21 = v10;
        v22 = 1024;
        v23 = v11;
        _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "eT:%d eR:%d eD:%d id:%{public}@ m:%d", buf, 0x24u);
      }
    }

    while ([v3 step] == 100);
  }

  return 0;
}

void sub_100031D3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100031D54(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 step] == 100)
  {
    *(*(*(a1 + 32) + 8) + 24) = [v3 fetchInteger];
  }

  return 0;
}

uint64_t sub_100031FF0(uint64_t a1, void *a2)
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
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v14 = PBReaderReadString();
          v15 = 24;
        }

        else
        {
          if (v13 != 4)
          {
LABEL_24:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_39;
          }

          v14 = PBReaderReadString();
          v15 = 16;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v17 = 0;
          v18 = 0;
          v19 = 0;
          *(a1 + 36) |= 1u;
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
              LOBYTE(v23) = 0;
              goto LABEL_38;
            }
          }

          v23 = (v19 != 0) & ~[a2 hasError];
LABEL_38:
          *(a1 + 32) = v23;
          goto LABEL_39;
        }

        if (v13 != 2)
        {
          goto LABEL_24;
        }

        v14 = PBReaderReadString();
        v15 = 8;
      }

      v24 = *(a1 + v15);
      *(a1 + v15) = v14;

LABEL_39:
      v25 = [a2 position];
    }

    while (v25 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_100032BD0(id a1)
{
  qword_1000D1818 = [[NDTObjectCache alloc] initWithCapacity:50];

  _objc_release_x1();
}

uint64_t sub_100033758(uint64_t a1, void *a2)
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
        v106 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v106 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v106 & 0x7F) << v5;
        if ((v106 & 0x80) == 0)
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
          v14 = 64;
          goto LABEL_144;
        case 2u:
          v59 = 0;
          v60 = 0;
          v61 = 0;
          *(a1 + 88) |= 1u;
          while (1)
          {
            v108 = 0;
            v62 = [a2 position] + 1;
            if (v62 >= [a2 position] && (v63 = objc_msgSend(a2, "position") + 1, v63 <= objc_msgSend(a2, "length")))
            {
              v64 = [a2 data];
              [v64 getBytes:&v108 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v61 |= (v108 & 0x7F) << v59;
            if ((v108 & 0x80) == 0)
            {
              break;
            }

            v59 += 7;
            v11 = v60++ >= 9;
            if (v11)
            {
              v46 = 0;
              goto LABEL_173;
            }
          }

          if ([a2 hasError])
          {
            v46 = 0;
          }

          else
          {
            v46 = v61;
          }

LABEL_173:
          v104 = 40;
          goto LABEL_174;
        case 3u:
          v40 = 0;
          v41 = 0;
          v42 = 0;
          *(a1 + 88) |= 2u;
          while (1)
          {
            v107 = 0;
            v43 = [a2 position] + 1;
            if (v43 >= [a2 position] && (v44 = objc_msgSend(a2, "position") + 1, v44 <= objc_msgSend(a2, "length")))
            {
              v45 = [a2 data];
              [v45 getBytes:&v107 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v42 |= (v107 & 0x7F) << v40;
            if ((v107 & 0x80) == 0)
            {
              break;
            }

            v40 += 7;
            v11 = v41++ >= 9;
            if (v11)
            {
              v46 = 0;
              goto LABEL_165;
            }
          }

          if ([a2 hasError])
          {
            v46 = 0;
          }

          else
          {
            v46 = v42;
          }

LABEL_165:
          v104 = 72;
LABEL_174:
          *(a1 + v104) = v46;
          goto LABEL_188;
        case 4u:
          v53 = 0;
          v54 = 0;
          v55 = 0;
          *(a1 + 88) |= 0x40u;
          while (1)
          {
            v120 = 0;
            v56 = [a2 position] + 1;
            if (v56 >= [a2 position] && (v57 = objc_msgSend(a2, "position") + 1, v57 <= objc_msgSend(a2, "length")))
            {
              v58 = [a2 data];
              [v58 getBytes:&v120 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v55 |= (v120 & 0x7F) << v53;
            if ((v120 & 0x80) == 0)
            {
              break;
            }

            v53 += 7;
            v11 = v54++ >= 9;
            if (v11)
            {
              LOBYTE(v21) = 0;
              goto LABEL_169;
            }
          }

          v21 = (v55 != 0) & ~[a2 hasError];
LABEL_169:
          v103 = 80;
          goto LABEL_187;
        case 5u:
          v28 = 0;
          v29 = 0;
          v30 = 0;
          *(a1 + 88) |= 0x80u;
          while (1)
          {
            v119 = 0;
            v31 = [a2 position] + 1;
            if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
            {
              v33 = [a2 data];
              [v33 getBytes:&v119 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v30 |= (v119 & 0x7F) << v28;
            if ((v119 & 0x80) == 0)
            {
              break;
            }

            v28 += 7;
            v11 = v29++ >= 9;
            if (v11)
            {
              LOBYTE(v21) = 0;
              goto LABEL_159;
            }
          }

          v21 = (v30 != 0) & ~[a2 hasError];
LABEL_159:
          v103 = 81;
          goto LABEL_187;
        case 6u:
          v77 = 0;
          v78 = 0;
          v79 = 0;
          *(a1 + 88) |= 0x2000u;
          while (1)
          {
            v118 = 0;
            v80 = [a2 position] + 1;
            if (v80 >= [a2 position] && (v81 = objc_msgSend(a2, "position") + 1, v81 <= objc_msgSend(a2, "length")))
            {
              v82 = [a2 data];
              [v82 getBytes:&v118 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v79 |= (v118 & 0x7F) << v77;
            if ((v118 & 0x80) == 0)
            {
              break;
            }

            v77 += 7;
            v11 = v78++ >= 9;
            if (v11)
            {
              LOBYTE(v21) = 0;
              goto LABEL_180;
            }
          }

          v21 = (v79 != 0) & ~[a2 hasError];
LABEL_180:
          v103 = 87;
          goto LABEL_187;
        case 7u:
          v13 = PBReaderReadString();
          v14 = 16;
          goto LABEL_144;
        case 8u:
          v13 = PBReaderReadString();
          v14 = 48;
          goto LABEL_144;
        case 9u:
          v13 = PBReaderReadString();
          v14 = 56;
          goto LABEL_144;
        case 0xAu:
          v13 = PBReaderReadString();
          v14 = 24;
          goto LABEL_144;
        case 0xBu:
          v13 = PBReaderReadString();
          v14 = 32;
          goto LABEL_144;
        case 0xCu:
          v13 = PBReaderReadString();
          v14 = 8;
LABEL_144:
          v96 = *(a1 + v14);
          *(a1 + v14) = v13;

          goto LABEL_188;
        case 0xDu:
          v34 = 0;
          v35 = 0;
          v36 = 0;
          *(a1 + 88) |= 0x1000u;
          while (1)
          {
            v117 = 0;
            v37 = [a2 position] + 1;
            if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 1, v38 <= objc_msgSend(a2, "length")))
            {
              v39 = [a2 data];
              [v39 getBytes:&v117 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v36 |= (v117 & 0x7F) << v34;
            if ((v117 & 0x80) == 0)
            {
              break;
            }

            v34 += 7;
            v11 = v35++ >= 9;
            if (v11)
            {
              LOBYTE(v21) = 0;
              goto LABEL_161;
            }
          }

          v21 = (v36 != 0) & ~[a2 hasError];
LABEL_161:
          v103 = 86;
          goto LABEL_187;
        case 0xEu:
          v84 = 0;
          v85 = 0;
          v86 = 0;
          *(a1 + 88) |= 0x10u;
          while (1)
          {
            v116 = 0;
            v87 = [a2 position] + 1;
            if (v87 >= [a2 position] && (v88 = objc_msgSend(a2, "position") + 1, v88 <= objc_msgSend(a2, "length")))
            {
              v89 = [a2 data];
              [v89 getBytes:&v116 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v86 |= (v116 & 0x7F) << v84;
            if ((v116 & 0x80) == 0)
            {
              break;
            }

            v84 += 7;
            v11 = v85++ >= 9;
            if (v11)
            {
              LOBYTE(v21) = 0;
              goto LABEL_182;
            }
          }

          v21 = (v86 != 0) & ~[a2 hasError];
LABEL_182:
          v103 = 78;
          goto LABEL_187;
        case 0xFu:
          v22 = 0;
          v23 = 0;
          v24 = 0;
          *(a1 + 88) |= 8u;
          while (1)
          {
            v115 = 0;
            v25 = [a2 position] + 1;
            if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
            {
              v27 = [a2 data];
              [v27 getBytes:&v115 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v24 |= (v115 & 0x7F) << v22;
            if ((v115 & 0x80) == 0)
            {
              break;
            }

            v22 += 7;
            v11 = v23++ >= 9;
            if (v11)
            {
              LOBYTE(v21) = 0;
              goto LABEL_157;
            }
          }

          v21 = (v24 != 0) & ~[a2 hasError];
LABEL_157:
          v103 = 77;
          goto LABEL_187;
        case 0x10u:
          v47 = 0;
          v48 = 0;
          v49 = 0;
          *(a1 + 88) |= 4u;
          while (1)
          {
            v114 = 0;
            v50 = [a2 position] + 1;
            if (v50 >= [a2 position] && (v51 = objc_msgSend(a2, "position") + 1, v51 <= objc_msgSend(a2, "length")))
            {
              v52 = [a2 data];
              [v52 getBytes:&v114 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v49 |= (v114 & 0x7F) << v47;
            if ((v114 & 0x80) == 0)
            {
              break;
            }

            v47 += 7;
            v11 = v48++ >= 9;
            if (v11)
            {
              LOBYTE(v21) = 0;
              goto LABEL_167;
            }
          }

          v21 = (v49 != 0) & ~[a2 hasError];
LABEL_167:
          v103 = 76;
          goto LABEL_187;
        case 0x11u:
          v15 = 0;
          v16 = 0;
          v17 = 0;
          *(a1 + 88) |= 0x200u;
          while (1)
          {
            v113 = 0;
            v18 = [a2 position] + 1;
            if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
            {
              v20 = [a2 data];
              [v20 getBytes:&v113 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v17 |= (v113 & 0x7F) << v15;
            if ((v113 & 0x80) == 0)
            {
              break;
            }

            v15 += 7;
            v11 = v16++ >= 9;
            if (v11)
            {
              LOBYTE(v21) = 0;
              goto LABEL_155;
            }
          }

          v21 = (v17 != 0) & ~[a2 hasError];
LABEL_155:
          v103 = 83;
          goto LABEL_187;
        case 0x12u:
          v65 = 0;
          v66 = 0;
          v67 = 0;
          *(a1 + 88) |= 0x400u;
          while (1)
          {
            v112 = 0;
            v68 = [a2 position] + 1;
            if (v68 >= [a2 position] && (v69 = objc_msgSend(a2, "position") + 1, v69 <= objc_msgSend(a2, "length")))
            {
              v70 = [a2 data];
              [v70 getBytes:&v112 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v67 |= (v112 & 0x7F) << v65;
            if ((v112 & 0x80) == 0)
            {
              break;
            }

            v65 += 7;
            v11 = v66++ >= 9;
            if (v11)
            {
              LOBYTE(v21) = 0;
              goto LABEL_176;
            }
          }

          v21 = (v67 != 0) & ~[a2 hasError];
LABEL_176:
          v103 = 84;
          goto LABEL_187;
        case 0x13u:
          v90 = 0;
          v91 = 0;
          v92 = 0;
          *(a1 + 88) |= 0x800u;
          while (1)
          {
            v111 = 0;
            v93 = [a2 position] + 1;
            if (v93 >= [a2 position] && (v94 = objc_msgSend(a2, "position") + 1, v94 <= objc_msgSend(a2, "length")))
            {
              v95 = [a2 data];
              [v95 getBytes:&v111 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v92 |= (v111 & 0x7F) << v90;
            if ((v111 & 0x80) == 0)
            {
              break;
            }

            v90 += 7;
            v11 = v91++ >= 9;
            if (v11)
            {
              LOBYTE(v21) = 0;
              goto LABEL_184;
            }
          }

          v21 = (v92 != 0) & ~[a2 hasError];
LABEL_184:
          v103 = 85;
          goto LABEL_187;
        case 0x14u:
          v97 = 0;
          v98 = 0;
          v99 = 0;
          *(a1 + 88) |= 0x100u;
          while (1)
          {
            v110 = 0;
            v100 = [a2 position] + 1;
            if (v100 >= [a2 position] && (v101 = objc_msgSend(a2, "position") + 1, v101 <= objc_msgSend(a2, "length")))
            {
              v102 = [a2 data];
              [v102 getBytes:&v110 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v99 |= (v110 & 0x7F) << v97;
            if ((v110 & 0x80) == 0)
            {
              break;
            }

            v97 += 7;
            v11 = v98++ >= 9;
            if (v11)
            {
              LOBYTE(v21) = 0;
              goto LABEL_186;
            }
          }

          v21 = (v99 != 0) & ~[a2 hasError];
LABEL_186:
          v103 = 82;
          goto LABEL_187;
        case 0x15u:
          v71 = 0;
          v72 = 0;
          v73 = 0;
          *(a1 + 88) |= 0x20u;
          break;
        default:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_188;
      }

      while (1)
      {
        v109 = 0;
        v74 = [a2 position] + 1;
        if (v74 >= [a2 position] && (v75 = objc_msgSend(a2, "position") + 1, v75 <= objc_msgSend(a2, "length")))
        {
          v76 = [a2 data];
          [v76 getBytes:&v109 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v73 |= (v109 & 0x7F) << v71;
        if ((v109 & 0x80) == 0)
        {
          break;
        }

        v71 += 7;
        v11 = v72++ >= 9;
        if (v11)
        {
          LOBYTE(v21) = 0;
          goto LABEL_178;
        }
      }

      v21 = (v73 != 0) & ~[a2 hasError];
LABEL_178:
      v103 = 79;
LABEL_187:
      *(a1 + v103) = v21;
LABEL_188:
      v105 = [a2 position];
    }

    while (v105 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_10003609C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained && (WeakRetained[3] & 1) == 0)
  {
    v3 = 1.0 - (WeakRetained[5] - CFAbsoluteTimeGetCurrent()) / WeakRetained[4];
    if (v3 <= 1.0)
    {
      if (v3 - v2[6] >= 0.02)
      {
        v4 = *(qword_1000D18A8 + 8);
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
        {
          sub_100071EDC(v4, v3);
        }

        v5 = [v2 session];
        [v5 reportProgress:v3];

        v2[6] = v3;
      }
    }

    else
    {
      [v2 _doneForRealNotifyingPairedSync:1];
    }
  }
}

CFAbsoluteTime sub_100036180(uint64_t a1)
{
  Current = CFAbsoluteTimeGetCurrent();
  v3 = *(a1 + 32);
  result = Current + *(v3 + 32);
  *(v3 + 40) = result;
  return result;
}

uint64_t sub_100036A78(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) start];
  [v3 bindDouble:?];
  [*(a1 + 32) end];
  [v3 bindDouble:?];
  v4 = [[NSMutableArray alloc] initWithCapacity:100];
  while ([v3 step] == 100)
  {
    v5 = [v3 fetchString];
    v6 = [v3 fetchString];
    [v3 fetchDouble];
    v8 = v7;
    v9 = objc_alloc_init(NEKPBItemOccurrence);
    [(NEKPBItemOccurrence *)v9 setUuid:v5];
    [(NEKPBItemOccurrence *)v9 setCalendar:v6];
    [(NEKPBItemOccurrence *)v9 setDate:v8];
    [v4 addObject:v9];
  }

  [*(a1 + 32) setItems:v4];

  return 0;
}

void sub_100036EAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100036EC4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100036EDC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 UUIDString];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  return _objc_release_x1();
}

void sub_100037028(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100037290(uint64_t a1)
{
  if ((a1 - 1) < 4)
  {
    return qword_1000A2788[a1 - 1];
  }

  v3 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_100072020(a1, v3);
  }

  return 0x7FFFFFFFFFFFFFFFLL;
}

id sub_100037310(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
LABEL_9:
    v6 = 0;
    goto LABEL_13;
  }

  v3 = [v1 hasSuffix:@".plist"];
  if (![v2 hasPrefix:@"/System/Library/PrivateFrameworks/CDDataAccess.framework"] || !v3)
  {
    if ([v2 hasPrefix:@"/System/Library/PrivateFrameworks/CDDataAccess.framework"])
    {
      if (!v3)
      {
        goto LABEL_7;
      }
    }

    else if (([v2 hasPrefix:@"/System/Library/PrivateFrameworks/ExchangeSync.framework"] & v3 & 1) == 0)
    {
LABEL_7:
      v5 = *(qword_1000D18A8 + 8);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        sub_100072098(v2, v5);
      }

      goto LABEL_9;
    }

    v4 = @"/System/Library/PrivateFrameworks/ExchangeSync.framework";
    goto LABEL_12;
  }

  v4 = @"/System/Library/PrivateFrameworks/CDDataAccess.framework";
LABEL_12:
  v6 = [v2 stringByReplacingOccurrencesOfString:v4 withString:@"/System/Library/PrivateFrameworks/DataAccess.framework"];
LABEL_13:

  return v6;
}

void sub_100039954(id a1)
{
  qword_1000D1828 = objc_alloc_init(NEKCapabilities);

  _objc_release_x1();
}

uint64_t sub_10003A164(void *a1, void *a2)
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
        v13 = objc_alloc_init(NEKPBDuplicateSource);
        [a1 addSources:v13];
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !sub_100015A30(v13, a2))
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

    v13 = objc_alloc_init(NEKPBDuplicateCalendar);
    [a1 addCalendars:v13];
    v16 = 0;
    v17 = 0;
    if (!PBReaderPlaceMark() || !sub_10004F160(v13, a2))
    {
LABEL_28:

      return 0;
    }

    goto LABEL_24;
  }

  return [a2 hasError] ^ 1;
}

void sub_10003B038(uint64_t a1, void *a2, int a3)
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10003B0EC;
  v6[3] = &unk_1000B5730;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = a3;
  [a2 enumerateObjectsUsingBlock:v6];
}

void sub_10003B0EC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v7 = v3;
  v5 = [v3 entityName];
  LODWORD(v4) = [v4 isEqualToString:v5];

  if (v4)
  {
    v6 = *(a1 + 48);
    (*(*(a1 + 40) + 16))();
  }
}

void sub_10003B37C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL sub_10003B3BC(id a1, EKObjectID *a2)
{
  v2 = a2;
  v3 = [(EKObjectID *)v2 entityType]== 101 || [(EKObjectID *)v2 entityType]== 2 || [(EKObjectID *)v2 entityType]== 3;

  return v3;
}

void sub_10003B464(void *a1, void *a2)
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if (*(*(a1[6] + 8) + 24) == 1)
        {
          v10 = *(qword_1000D18A8 + 8);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            *v11 = 0;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Terminating enumeration early", v11, 2u);
          }

          goto LABEL_14;
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        if ((*(a1[4] + 16))())
        {
          v9 = *(a1[6] + 8);
          (*(a1[5] + 16))();
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:
}

void sub_10003BB44(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 date];
  v4 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
  v5 = [*(a1 + 32) dateFormatter];
  v6 = [v5 stringFromDate:v4];

  v7 = *(a1 + 40);
  v8 = [v3 uuid];
  v9 = [NSString stringWithFormat:@"%@ | %@", v6, v8];
  [v7 addObject:v9];

  v10 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    v12 = [v3 uuid];
    [v3 date];
    *buf = 138543618;
    v15 = v12;
    v16 = 2048;
    v17 = v13;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Analytics detected missing calendar item on watch, identifier: %{public}@, timestamp: %9.0f", buf, 0x16u);
  }
}

void sub_10003C0EC(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_10003C3A0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    sqlite3_finalize(WeakRetained[3]);
    sqlite3_finalize(v2[4]);
    sqlite3_finalize(v2[6]);
    sqlite3_finalize(v2[5]);
    sqlite3_close(v2[2]);
    WeakRetained = v2;
  }
}

BOOL sub_10003C68C(uint64_t a1, sqlite3_stmt **ppStmt, char *zSql)
{
  v4 = sqlite3_prepare_v2(*(a1 + 32), zSql, -1, ppStmt, 0);
  if (v4)
  {
    v5 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100072480(zSql, v5);
    }
  }

  return v4 == 0;
}

void sub_10003C92C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v11 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10003C968(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10003C980(uint64_t a1)
{
  sqlite3_bind_text(*(a1 + 64), 1, [*(a1 + 32) UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
  if (sqlite3_step(*(a1 + 64)) == 100)
  {
    *(*(*(a1 + 40) + 8) + 24) = sqlite3_column_double(*(a1 + 64), 0);
    *(*(*(a1 + 48) + 8) + 24) = sqlite3_column_double(*(a1 + 64), 1);
    v2 = sqlite3_column_text(*(a1 + 64), 2);
    if (v2)
    {
      v3 = [NSString stringWithUTF8String:v2];
      v4 = *(*(a1 + 56) + 8);
      v5 = *(v4 + 40);
      *(v4 + 40) = v3;
    }
  }

  sqlite3_reset(*(a1 + 64));
  v6 = *(a1 + 64);

  return sqlite3_clear_bindings(v6);
}

void sub_10003CBC4(uint64_t a1)
{
  sqlite3_bind_text(*(a1 + 40), 1, *(a1 + 48), -1, 0);
  sqlite3_bind_double(*(a1 + 40), 2, *(a1 + 56));
  sqlite3_bind_double(*(a1 + 40), 3, *(a1 + 64));
  sqlite3_bind_text(*(a1 + 40), 4, *(a1 + 72), -1, 0);
  sqlite3_step(*(a1 + 40));
  sqlite3_reset(*(a1 + 40));
  sqlite3_clear_bindings(*(a1 + 40));
  v2 = *(a1 + 72);
  if (v2)
  {

    free(v2);
  }
}

uint64_t sub_10003CD40(uint64_t a1)
{
  sqlite3_bind_text(*(a1 + 40), 1, *(a1 + 48), -1, 0);
  sqlite3_step(*(a1 + 40));
  sqlite3_reset(*(a1 + 40));
  v2 = *(a1 + 40);

  return sqlite3_clear_bindings(v2);
}

uint64_t sub_10003CE54(uint64_t a1)
{
  sqlite3_bind_double(*(a1 + 40), 1, *(a1 + 48));
  sqlite3_step(*(a1 + 40));
  sqlite3_reset(*(a1 + 40));
  v2 = *(a1 + 40);

  return sqlite3_clear_bindings(v2);
}

void sub_10003D394(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_10003D8B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10003D8D0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_10003F4CC(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) entityTypeForCalendarItemWithIdentifier:a2];
  v4 = 1;
  if (result)
  {
    v4 = 2;
  }

  *(*(*(a1 + 40) + 8) + 24) |= v4;
  return result;
}

void sub_10004075C(uint64_t a1)
{
  v2 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 identifier];
    v6 = 138543362;
    v7 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[Session: %{public}@] startSession: locking session idle queue", &v6, 0xCu);
  }

  dispatch_suspend(*(a1 + 40));
}

id sub_100041294(uint64_t a1)
{
  result = [*(a1 + 32) setNeedsFullSync];
  **(a1 + 40) = 0;
  return result;
}

id sub_10004157C()
{
  if (qword_1000D1838 != -1)
  {
    sub_1000731B4();
  }

  v1 = qword_1000D1840;

  return v1;
}

id sub_100042878(uint64_t a1, uint64_t a2)
{
  result = objc_retainBlock(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_1000428AC(uint64_t a1, uint64_t a2)
{
  (*(a2 + 16))(a2);
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = &stru_1000B59D8;
}

void sub_100042914(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _retrySession:*(a1 + 32)];
}

void sub_10004296C(uint64_t a1)
{
  v2 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_1000736F4(a1, v2);
  }
}

void sub_100043044(id a1)
{
  qword_1000D1840 = os_log_create("com.apple.eventkitsync", "sessionTimeout");

  _objc_release_x1();
}

void sub_1000430BC(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0xCu);
}

void sub_1000430EC(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0x16u);
}

uint64_t sub_100043540(uint64_t a1, void *a2)
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
        LOBYTE(v20) = 0;
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
      if ((v12 >> 3) > 9)
      {
        if (v13 <= 11)
        {
          if (v13 == 10)
          {
            v14 = objc_alloc_init(NEKPBSetReminderComplete);
            objc_storeStrong((a1 + 64), v14);
            v20 = 0;
            v21 = 0;
            if (!PBReaderPlaceMark() || !sub_100031FF0(v14, a2))
            {
LABEL_67:

              return 0;
            }

            goto LABEL_59;
          }

          if (v13 == 11)
          {
            v14 = objc_alloc_init(NEKPBSetParticipantStatus);
            objc_storeStrong((a1 + 56), v14);
            v20 = 0;
            v21 = 0;
            if (!PBReaderPlaceMark() || !sub_10006D788(v14, a2))
            {
              goto LABEL_67;
            }

            goto LABEL_59;
          }
        }

        else
        {
          switch(v13)
          {
            case 0xC:
              v14 = objc_alloc_init(NEKPBSetAlarmSnooze);
              objc_storeStrong((a1 + 48), v14);
              v20 = 0;
              v21 = 0;
              if (!PBReaderPlaceMark() || !sub_100052898(v14, a2))
              {
                goto LABEL_67;
              }

              goto LABEL_59;
            case 0xD:
              v14 = objc_alloc_init(NEKPBDeleteEvent);
              objc_storeStrong((a1 + 16), v14);
              v20 = 0;
              v21 = 0;
              if (!PBReaderPlaceMark() || !sub_1000681A0(v14, a2))
              {
                goto LABEL_67;
              }

              goto LABEL_59;
            case 0x14:
              *(a1 + 88) |= 1u;
              LODWORD(v20) = 0;
              v15 = [a2 position] + 4;
              if (v15 >= [a2 position] && (v16 = objc_msgSend(a2, "position") + 4, v16 <= objc_msgSend(a2, "length")))
              {
                v18 = [a2 data];
                [v18 getBytes:&v20 range:{objc_msgSend(a2, "position"), 4}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
              }

              else
              {
                [a2 _setError];
              }

              *(a1 + 40) = v20;
              goto LABEL_60;
          }
        }
      }

      else if (v13 <= 2)
      {
        if (v13 == 1)
        {
          v14 = objc_alloc_init(NEKPBSourceWrapper);
          objc_storeStrong((a1 + 72), v14);
          v20 = 0;
          v21 = 0;
          if (!PBReaderPlaceMark() || !sub_10006E388(v14, a2))
          {
            goto LABEL_67;
          }

          goto LABEL_59;
        }

        if (v13 == 2)
        {
          v14 = objc_alloc_init(NEKPBCalendarWrapper);
          objc_storeStrong((a1 + 8), v14);
          v20 = 0;
          v21 = 0;
          if (!PBReaderPlaceMark() || !sub_100008AB8(v14, a2))
          {
            goto LABEL_67;
          }

          goto LABEL_59;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v14 = objc_alloc_init(NEKPBICSWrapper);
            objc_storeStrong((a1 + 32), v14);
            v20 = 0;
            v21 = 0;
            if (!PBReaderPlaceMark() || !sub_10005EFA4(v14, a2))
            {
              goto LABEL_67;
            }

            goto LABEL_59;
          case 4:
            v14 = objc_alloc_init(NEKPBDeletionWrapper);
            objc_storeStrong((a1 + 24), v14);
            v20 = 0;
            v21 = 0;
            if (!PBReaderPlaceMark() || !sub_10006C858(v14, a2))
            {
              goto LABEL_67;
            }

            goto LABEL_59;
          case 5:
            v14 = objc_alloc_init(NEKPBValidationWrapper);
            objc_storeStrong((a1 + 80), v14);
            v20 = 0;
            v21 = 0;
            if (!PBReaderPlaceMark() || !sub_100024F48(v14, a2))
            {
              goto LABEL_67;
            }

LABEL_59:
            PBReaderRecallMark();

            goto LABEL_60;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_60:
      v17 = [a2 position];
    }

    while (v17 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

NEKPBCalendarWrapper *sub_1000448CC(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(NEKPBCalendarWrapper);
  v3 = [v1 storeIdentifier];
  v4 = objc_alloc_init(NEKPBSourceID);
  if ([v3 isLocalStore])
  {
    [(NEKPBSourceID *)v4 setIsLocalStore:1];
  }

  else
  {
    v5 = [v3 persistentID];

    if (v5)
    {
      v6 = [v3 persistentID];
      [(NEKPBSourceID *)v4 setPersistentID:v6];
    }
  }

  [(NEKPBCalendarWrapper *)v2 setSourceIdentifier:v4];
  v7 = [v1 calendarIdentifier];
  [(NEKPBCalendarWrapper *)v2 setCalendarIdentifier:v7];

  v8 = [v1 attributes];
  if (v8)
  {
    v9 = objc_alloc_init(NEKPBCalendarAttributes);
    v10 = [v8 UUID];
    [(NEKPBCalendarAttributes *)v9 setUUID:v10];

    v11 = [v8 title];
    [(NEKPBCalendarAttributes *)v9 setTitle:v11];

    -[NEKPBCalendarAttributes setIsReadonly:](v9, "setIsReadonly:", [v8 isReadonly]);
    -[NEKPBCalendarAttributes setIsHidden:](v9, "setIsHidden:", [v8 isHidden]);
    -[NEKPBCalendarAttributes setIsImmutable:](v9, "setIsImmutable:", [v8 isImmutable]);
    -[NEKPBCalendarAttributes setIsInbox:](v9, "setIsInbox:", [v8 isInbox]);
    -[NEKPBCalendarAttributes setIsNotificationsCollection:](v9, "setIsNotificationsCollection:", [v8 isNotificationsCollection]);
    -[NEKPBCalendarAttributes setIsSharingInvitation:](v9, "setIsSharingInvitation:", [v8 isSharingInvitation]);
    -[NEKPBCalendarAttributes setIsSubscribed:](v9, "setIsSubscribed:", [v8 isSubscribed]);
    -[NEKPBCalendarAttributes setIsHolidayCalendar:](v9, "setIsHolidayCalendar:", [v8 isHolidyCalendar]);
    -[NEKPBCalendarAttributes setIsFamilyCalendar:](v9, "setIsFamilyCalendar:", [v8 isFamilyCalendar]);
    -[NEKPBCalendarAttributes setIsIgnoringEventAlerts:](v9, "setIsIgnoringEventAlerts:", [v8 isIgnoringEventAlerts]);
    -[NEKPBCalendarAttributes setIsIgnoringSharedCalendarNotifications:](v9, "setIsIgnoringSharedCalendarNotifications:", [v8 isIgnoringSharedCalendarNotifications]);
    -[NEKPBCalendarAttributes setIsSchedulingProhibited:](v9, "setIsSchedulingProhibited:", [v8 isSchedulingProhibited]);
    -[NEKPBCalendarAttributes setIsDefaultCalendarForStore:](v9, "setIsDefaultCalendarForStore:", [v8 isDefaultCalendarForStore]);
    v12 = [v8 digest];
    [(NEKPBCalendarAttributes *)v9 setDigest:v12];

    v13 = [v8 symbolicColorName];
    [(NEKPBCalendarAttributes *)v9 setSymbolicColorName:v13];

    v14 = [v8 colorString];
    [(NEKPBCalendarAttributes *)v9 setColorString:v14];

    -[NEKPBCalendarAttributes setDisplayOrder:](v9, "setDisplayOrder:", [v8 displayOrder]);
    -[NEKPBCalendarAttributes setSharingStatus:](v9, "setSharingStatus:", [v8 sharingStatus]);
    v15 = [v8 sharedOwnerName];
    [(NEKPBCalendarAttributes *)v9 setSharedOwnerName:v15];

    v16 = [v8 sharedOwnerAddress];
    [(NEKPBCalendarAttributes *)v9 setSharedOwnerAddress:v16];

    -[NEKPBCalendarAttributes setSharingInvitationResponse:](v9, "setSharingInvitationResponse:", [v8 sharingInvitationResponse]);
    v17 = [v8 publishedURL];
    v18 = [v17 absoluteString];
    [(NEKPBCalendarAttributes *)v9 setPublishedURLString:v18];

    -[NEKPBCalendarAttributes setCanBePublished:](v9, "setCanBePublished:", [v8 canBePublished]);
    -[NEKPBCalendarAttributes setCanBeShared:](v9, "setCanBeShared:", [v8 canBeShared]);
    -[NEKPBCalendarAttributes setIsPublished:](v9, "setIsPublished:", [v8 isPublished]);
    v19 = [v8 externalID];
    [(NEKPBCalendarAttributes *)v9 setExternalID:v19];

    v20 = [v8 externalIdentificationTag];
    [(NEKPBCalendarAttributes *)v9 setExternalIdentificationTag:v20];

    v21 = [v8 syncToken];
    [(NEKPBCalendarAttributes *)v9 setSyncToken:v21];

    v22 = [v8 externalModificationTag];
    [(NEKPBCalendarAttributes *)v9 setExternalModificationTag:v22];

    v23 = [v8 externalRepresentation];
    [(NEKPBCalendarAttributes *)v9 setExternalRepresentation:v23];

    -[NEKPBCalendarAttributes setSupportedEntityTypes:](v9, "setSupportedEntityTypes:", [v8 supportedEntityTypes]);
    -[NEKPBCalendarAttributes setInvitationStatus:](v9, "setInvitationStatus:", [v8 invitationStatus]);
    -[NEKPBCalendarAttributes setHasBeenAlerted:](v9, "setHasBeenAlerted:", [v8 hasBeenAlerted]);
    v24 = [v8 notes];
    [(NEKPBCalendarAttributes *)v9 setNotes:v24];

    v25 = [v8 subCalAccountID];
    [(NEKPBCalendarAttributes *)v9 setSubCalAccountID:v25];

    v26 = [v8 pushKey];
    [(NEKPBCalendarAttributes *)v9 setPushKey:v26];

    v27 = [v8 selfIdentityDisplayName];
    [(NEKPBCalendarAttributes *)v9 setSelfIdentityDisplayName:v27];

    v28 = [v8 selfIdentityEmail];
    [(NEKPBCalendarAttributes *)v9 setSelfIdentityEmail:v28];

    v29 = [v8 selfIdentityAddress];
    v30 = [v29 absoluteString];
    [(NEKPBCalendarAttributes *)v9 setSelfIdentityAddressString:v30];

    v31 = [v8 selfIdentityFirstName];
    [(NEKPBCalendarAttributes *)v9 setSelfIdentityFirstName:v31];

    v32 = [v8 selfIdentityLastName];
    [(NEKPBCalendarAttributes *)v9 setSelfIdentityLastName:v32];

    v33 = [v8 ownerIdentityDisplayName];
    [(NEKPBCalendarAttributes *)v9 setOwnerIdentityDisplayName:v33];

    v34 = [v8 ownerIdentityEmail];
    [(NEKPBCalendarAttributes *)v9 setOwnerIdentityEmail:v34];

    v35 = [v8 ownerIdentityAddress];
    v36 = [v35 absoluteString];
    [(NEKPBCalendarAttributes *)v9 setOwnerIdentityAddressString:v36];

    v37 = [v8 ownerIdentityFirstName];
    [(NEKPBCalendarAttributes *)v9 setOwnerIdentityFirstName:v37];

    v38 = [v8 ownerIdentityLastName];
    [(NEKPBCalendarAttributes *)v9 setOwnerIdentityLastName:v38];

    [(NEKPBCalendarWrapper *)v2 setAttributes:v9];
  }

  -[NEKPBCalendarWrapper setIsDefaultTaskCalendar:](v2, "setIsDefaultTaskCalendar:", [v1 isDefaultTaskCalendar]);
  -[NEKPBCalendarWrapper setIsDefaultEventCalendar:](v2, "setIsDefaultEventCalendar:", [v1 isDefaultEventCalendar]);
  v39 = [v1 oldCalendarIdentifier];

  if (v39)
  {
    v40 = [v1 oldCalendarIdentifier];
    [(NEKPBCalendarWrapper *)v2 setOldCalendarIdentifier:v40];
  }

  -[NEKPBCalendarWrapper setNekChangeType:](v2, "setNekChangeType:", [v1 nekChangeType]);
  -[NEKPBCalendarWrapper setNekStoreType:](v2, "setNekStoreType:", [v1 nekStoreType]);

  return v2;
}

NEKCalendarWrapper *sub_100044FC0(void *a1)
{
  v1 = a1;
  v2 = [v1 sourceIdentifier];
  v3 = [NEKSourceID alloc];
  v4 = [v2 persistentID];
  v5 = -[NEKSourceID initWithPersistentID:isLocalStore:](v3, "initWithPersistentID:isLocalStore:", v4, [v2 isLocalStore]);

  v6 = [v1 attributes];
  if (v6)
  {
    v7 = objc_alloc_init(NEKCalendarAttributes);
    v8 = [v6 uUID];
    [(NEKCalendarAttributes *)v7 setUUID:v8];

    v9 = [v6 title];
    [(NEKCalendarAttributes *)v7 setTitle:v9];

    -[NEKCalendarAttributes setIsReadonly:](v7, "setIsReadonly:", [v6 isReadonly]);
    -[NEKCalendarAttributes setIsHidden:](v7, "setIsHidden:", [v6 isHidden]);
    -[NEKCalendarAttributes setIsImmutable:](v7, "setIsImmutable:", [v6 isImmutable]);
    -[NEKCalendarAttributes setIsInbox:](v7, "setIsInbox:", [v6 isInbox]);
    -[NEKCalendarAttributes setIsNotificationsCollection:](v7, "setIsNotificationsCollection:", [v6 isNotificationsCollection]);
    -[NEKCalendarAttributes setIsSharingInvitation:](v7, "setIsSharingInvitation:", [v6 isSharingInvitation]);
    -[NEKCalendarAttributes setIsSubscribed:](v7, "setIsSubscribed:", [v6 isSubscribed]);
    -[NEKCalendarAttributes setIsHolidyCalendar:](v7, "setIsHolidyCalendar:", [v6 isHolidayCalendar]);
    -[NEKCalendarAttributes setIsFamilyCalendar:](v7, "setIsFamilyCalendar:", [v6 isFamilyCalendar]);
    -[NEKCalendarAttributes setIsIgnoringEventAlerts:](v7, "setIsIgnoringEventAlerts:", [v6 isIgnoringEventAlerts]);
    -[NEKCalendarAttributes setIsIgnoringSharedCalendarNotifications:](v7, "setIsIgnoringSharedCalendarNotifications:", [v6 isIgnoringSharedCalendarNotifications]);
    -[NEKCalendarAttributes setIsSchedulingProhibited:](v7, "setIsSchedulingProhibited:", [v6 isSchedulingProhibited]);
    -[NEKCalendarAttributes setIsDefaultCalendarForStore:](v7, "setIsDefaultCalendarForStore:", [v6 isDefaultCalendarForStore]);
    v10 = [v6 digest];
    [(NEKCalendarAttributes *)v7 setDigest:v10];

    v11 = [v6 symbolicColorName];
    [(NEKCalendarAttributes *)v7 setSymbolicColorName:v11];

    v12 = [v6 colorString];
    [(NEKCalendarAttributes *)v7 setColorString:v12];

    -[NEKCalendarAttributes setDisplayOrder:](v7, "setDisplayOrder:", [v6 displayOrder]);
    -[NEKCalendarAttributes setSharingStatus:](v7, "setSharingStatus:", [v6 sharingStatus]);
    v13 = [v6 sharedOwnerName];
    [(NEKCalendarAttributes *)v7 setSharedOwnerName:v13];

    v14 = [v6 sharedOwnerAddress];
    [(NEKCalendarAttributes *)v7 setSharedOwnerAddress:v14];

    -[NEKCalendarAttributes setSharingInvitationResponse:](v7, "setSharingInvitationResponse:", [v6 sharingInvitationResponse]);
    v15 = [v6 publishedURLString];
    v16 = [NSURL URLWithString:v15];
    [(NEKCalendarAttributes *)v7 setPublishedURL:v16];

    -[NEKCalendarAttributes setCanBePublished:](v7, "setCanBePublished:", [v6 canBePublished]);
    -[NEKCalendarAttributes setCanBeShared:](v7, "setCanBeShared:", [v6 canBeShared]);
    -[NEKCalendarAttributes setIsPublished:](v7, "setIsPublished:", [v6 isPublished]);
    v17 = [v6 externalID];
    [(NEKCalendarAttributes *)v7 setExternalID:v17];

    v18 = [v6 externalIdentificationTag];
    [(NEKCalendarAttributes *)v7 setExternalIdentificationTag:v18];

    v19 = [v6 syncToken];
    [(NEKCalendarAttributes *)v7 setSyncToken:v19];

    v20 = [v6 externalModificationTag];
    [(NEKCalendarAttributes *)v7 setExternalModificationTag:v20];

    v21 = [v6 externalRepresentation];
    [(NEKCalendarAttributes *)v7 setExternalRepresentation:v21];

    -[NEKCalendarAttributes setSupportedEntityTypes:](v7, "setSupportedEntityTypes:", [v6 supportedEntityTypes]);
    -[NEKCalendarAttributes setInvitationStatus:](v7, "setInvitationStatus:", [v6 invitationStatus]);
    -[NEKCalendarAttributes setHasBeenAlerted:](v7, "setHasBeenAlerted:", [v6 hasBeenAlerted]);
    v22 = [v6 notes];
    [(NEKCalendarAttributes *)v7 setNotes:v22];

    v23 = [v6 subCalAccountID];
    [(NEKCalendarAttributes *)v7 setSubCalAccountID:v23];

    v24 = [v6 pushKey];
    [(NEKCalendarAttributes *)v7 setPushKey:v24];

    v25 = [v6 selfIdentityDisplayName];
    [(NEKCalendarAttributes *)v7 setSelfIdentityDisplayName:v25];

    v26 = [v6 selfIdentityEmail];
    [(NEKCalendarAttributes *)v7 setSelfIdentityEmail:v26];

    v27 = [v6 ownerIdentityDisplayName];
    [(NEKCalendarAttributes *)v7 setOwnerIdentityDisplayName:v27];

    v28 = [v6 selfIdentityAddressString];
    v29 = [NSURL URLWithString:v28];
    [(NEKCalendarAttributes *)v7 setSelfIdentityAddress:v29];

    v30 = [v6 selfIdentityFirstName];
    [(NEKCalendarAttributes *)v7 setSelfIdentityFirstName:v30];

    v31 = [v6 selfIdentityLastName];
    [(NEKCalendarAttributes *)v7 setSelfIdentityLastName:v31];

    v32 = [v6 ownerIdentityDisplayName];
    [(NEKCalendarAttributes *)v7 setOwnerIdentityDisplayName:v32];

    v33 = [v6 ownerIdentityEmail];
    [(NEKCalendarAttributes *)v7 setOwnerIdentityEmail:v33];

    v34 = [v6 ownerIdentityAddressString];
    v35 = [NSURL URLWithString:v34];
    [(NEKCalendarAttributes *)v7 setOwnerIdentityAddress:v35];

    v36 = [v6 ownerIdentityFirstName];
    [(NEKCalendarAttributes *)v7 setOwnerIdentityFirstName:v36];

    v37 = [v6 ownerIdentityLastName];
    [(NEKCalendarAttributes *)v7 setOwnerIdentityLastName:v37];
  }

  else
  {
    v7 = 0;
  }

  v38 = [NEKCalendarWrapper alloc];
  v39 = [v1 nekStoreType];
  v40 = [v1 nekChangeType];
  v41 = [v1 calendarIdentifier];
  v42 = [(NEKCalendarWrapper *)v38 initWithStoreType:v39 nekChangeType:v40 sourceIdentifier:v5 attributes:v7 calendarIdentifier:v41];

  -[NEKCalendarWrapper setIsDefaultTaskCalendar:](v42, "setIsDefaultTaskCalendar:", [v1 isDefaultTaskCalendar]);
  -[NEKCalendarWrapper setIsDefaultEventCalendar:](v42, "setIsDefaultEventCalendar:", [v1 isDefaultEventCalendar]);

  return v42;
}

NEKPBICSWrapper *sub_100045690(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(NEKPBICSWrapper);
  v3 = [v1 calendarIdentifier];
  v4 = objc_alloc_init(NEKPBCalendarIdentifier);
  -[NEKPBCalendarIdentifier setIsDefaultLocalCalendar:](v4, "setIsDefaultLocalCalendar:", [v3 isDefaultLocalCalendar]);
  v5 = [v3 identifier];
  [(NEKPBCalendarIdentifier *)v4 setIdentifier:v5];

  [(NEKPBICSWrapper *)v2 setCalendarIdentifier:v4];
  v6 = [v1 syncId];
  [(NEKPBICSWrapper *)v2 setSyncID:v6];

  -[NEKPBICSWrapper setCalendarItemCount:](v2, "setCalendarItemCount:", [v1 calendarItemCount]);
  -[NEKPBICSWrapper setDisplayOrder:](v2, "setDisplayOrder:", [v1 displayOrder]);
  if ([v1 isTaskCompleted])
  {
    [v1 taskCompletionDate];
    [(NEKPBICSWrapper *)v2 setTaskCompletionDate:?];
  }

  v7 = [v1 lzfseICSData];
  if (v7)
  {
  }

  else
  {
    v8 = [v1 ICSData];

    if (!v8)
    {
      goto LABEL_14;
    }
  }

  v9 = [v1 lzfseICSData];

  if (v9)
  {
    v10 = [v1 lzfseICSData];
    [(NEKPBICSWrapper *)v2 setLzfseICSData:v10];
  }

  else
  {
    v10 = [v1 ICSData];
    [(NEKPBICSWrapper *)v2 setICSData:v10];
  }

  v11 = [v1 oldCalendarIdentifier];

  if (v11)
  {
    v12 = [v1 oldCalendarIdentifier];
    [(NEKPBICSWrapper *)v2 setOldCalendarIdentifier:v12];
  }

  v13 = [v1 oldIdentifier];

  if (v13)
  {
    v14 = [v1 oldIdentifier];
    [(NEKPBICSWrapper *)v2 setOldIdentifier:v14];

    v15 = [v1 nuevoIdentifier];
    [(NEKPBICSWrapper *)v2 setNuevoIdentifier:v15];
  }

  LOBYTE(v8) = 1;
LABEL_14:
  v16 = v1;
  +[NSMutableDictionary dictionary];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_100046918;
  v28[3] = &unk_1000B5AE8;
  v29 = v16;
  v17 = v31 = v8;
  v30 = v17;
  v18 = v16;
  [v18 enumerateCalendarItemIdentifiersUsingBlock:v28];
  v19 = v30;
  v20 = v17;

  v23 = _NSConcreteStackBlock;
  v24 = 3221225472;
  v25 = sub_100045A08;
  v26 = &unk_1000B5A98;
  v21 = v2;
  v27 = v21;
  [v20 enumerateKeysAndObjectsUsingBlock:&v23];
  -[NEKPBICSWrapper setNekChangeType:](v21, "setNekChangeType:", [v18 nekChangeType]);
  -[NEKPBICSWrapper setNekStoreType:](v21, "setNekStoreType:", [v18 nekStoreType]);

  return v21;
}

void sub_100045A08(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 addMetadataKeys:a2];
  [*(a1 + 32) addMetadataValues:v6];
}

NEKICSWrapper *sub_100045A74(void *a1)
{
  v1 = a1;
  v2 = [v1 calendarIdentifier];
  v3 = [v2 isDefaultLocalCalendar];
  v4 = [v2 identifier];
  v5 = [[NEKCalendarID alloc] initWithIdentifier:v4 isDefaultLocalCalendar:v3];

  v6 = -[NEKICSWrapper initWithStoreType:nekChangeType:]([NEKICSWrapper alloc], "initWithStoreType:nekChangeType:", [v1 nekStoreType], objc_msgSend(v1, "nekChangeType"));
  [(NEKICSWrapper *)v6 setCalendarIdentifier:v5];
  -[NEKICSWrapper setCalendarItemCount:](v6, "setCalendarItemCount:", [v1 calendarItemCount]);
  v7 = [v1 syncID];
  [(NEKICSWrapper *)v6 setSyncId:v7];

  if ([v1 hasTaskCompletionDate])
  {
    [(NEKICSWrapper *)v6 setTaskCompleted:1];
    [v1 taskCompletionDate];
    [(NEKICSWrapper *)v6 setTaskCompletionDate:?];
  }

  -[NEKICSWrapper setDisplayOrder:](v6, "setDisplayOrder:", [v1 displayOrder]);
  if (([v1 hasICSData] & 1) != 0 || objc_msgSend(v1, "hasLzfseICSData"))
  {
    v8 = [v1 iCSData];
    [(NEKICSWrapper *)v6 setICSData:v8];

    v9 = [v1 lzfseICSData];
    [(NEKICSWrapper *)v6 setLzfseICSData:v9];

    if ([v1 hasOldCalendarIdentifier])
    {
      v10 = [v1 oldCalendarIdentifier];
      [(NEKICSWrapper *)v6 setOldCalendarIdentifier:v10];
    }

    if ([v1 hasOldIdentifier])
    {
      v11 = [v1 oldIdentifier];

      if (v11)
      {
        v12 = [v1 oldIdentifier];
        [(NEKICSWrapper *)v6 setOldIdentifier:v12];

        v13 = [v1 nuevoIdentifier];
        [(NEKICSWrapper *)v6 setNuevoIdentifier:v13];
      }
    }

    v14 = 1;
  }

  else
  {
    v14 = 0;
  }

  v15 = [v1 metadataKeys];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100045D44;
  v21[3] = &unk_1000B5AC0;
  v22 = v1;
  v24 = v14;
  v16 = v6;
  v23 = v16;
  v17 = v1;
  [v15 enumerateObjectsUsingBlock:v21];

  v18 = v23;
  v19 = v16;

  return v16;
}

void sub_100045D44(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [*(a1 + 32) metadataValues];
  v7 = [v6 objectAtIndexedSubscript:a3];

  v8 = *(a1 + 48);
  v9 = v7;
  v10 = v5;
  v11 = objc_alloc_init(NEKICSWrapperMetadata);
  [(NEKICSWrapperMetadata *)v11 setIdentifier:v10];
  -[NEKICSWrapperMetadata setEntityType:](v11, "setEntityType:", [v9 entityType]);
  if (v8 == 1)
  {
    v12 = [v9 selfAttendeeEmail];
    [(NEKICSWrapperMetadata *)v11 setSelfAttendeeEmail:v12];

    v13 = [v9 selfAttendeeUUID];
    [(NEKICSWrapperMetadata *)v11 setSelfAttendeeUUID:v13];

    v14 = [v9 selfOrganizerEmail];
    [(NEKICSWrapperMetadata *)v11 setSelfOrganizerEmail:v14];

    v15 = [v9 selfOrganizerUUID];
    [(NEKICSWrapperMetadata *)v11 setSelfOrganizerUUID:v15];

    v16 = [v9 externalID];
    [(NEKICSWrapperMetadata *)v11 setExternalID:v16];

    -[NEKICSWrapperMetadata setInvitationStatus:](v11, "setInvitationStatus:", [v9 invitationStatus]);
    if ([v9 hasProperInvitationStatus])
    {
      -[NEKICSWrapperMetadata setProperInvitationStatus:](v11, "setProperInvitationStatus:", [v9 properInvitationStatus]);
      [(NEKICSWrapperMetadata *)v11 setHasProperInvitationStatus:1];
    }

    -[NEKICSWrapperMetadata setLocationPredictionState:](v11, "setLocationPredictionState:", [v9 locationPredictionState]);
    if ([v9 invitationChangedPropertyFlagDate] && objc_msgSend(v9, "hasInvitationChangedPropertyFlagDate"))
    {
      [(NEKICSWrapperMetadata *)v11 setDateChanged:1];
    }

    if ([v9 invitationChangedPropertyFlagTime] && objc_msgSend(v9, "hasInvitationChangedPropertyFlagTime"))
    {
      [(NEKICSWrapperMetadata *)v11 setTimeChanged:1];
    }

    if ([v9 invitationChangedPropertyFlagTitle] && objc_msgSend(v9, "hasInvitationChangedPropertyFlagTitle"))
    {
      [(NEKICSWrapperMetadata *)v11 setTitleChanged:1];
    }

    if ([v9 invitationChangedPropertyFlagLocation] && objc_msgSend(v9, "hasInvitationChangedPropertyFlagLocation"))
    {
      [(NEKICSWrapperMetadata *)v11 setLocationChanged:1];
    }

    if ([v9 invitationChangedPropertyFlagAttendeeComment] && objc_msgSend(v9, "hasInvitationChangedPropertyFlagAttendeeComment"))
    {
      [(NEKICSWrapperMetadata *)v11 setAttendeeComment:1];
    }

    if ([v9 invitationChangedPropertyFlagAttendeeStatus] && objc_msgSend(v9, "hasInvitationChangedPropertyFlagAttendeeStatus"))
    {
      [(NEKICSWrapperMetadata *)v11 setAttendeeStatusFlag:1];
    }

    [v9 startDate];
    v17 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
    [(NEKICSWrapperMetadata *)v11 setStartDate:v17];
  }

  else
  {
    v18 = [v9 attendeeStatus];
    v19 = CalAttendeeStatusToEKParticipantStatus();
    v20 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 138543874;
      v22 = v10;
      v23 = 1024;
      v24 = v18;
      v25 = 1024;
      v26 = v19;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "For %{public}@ setting attendee status to (wire %d, ek %d)", &v21, 0x18u);
    }

    [(NEKICSWrapperMetadata *)v11 setAttendeeStatus:v19];
  }

  [*(a1 + 40) setMetadata:v11 forCalendarItemIdentifier:v10];
}

NEKPBSourceWrapper *sub_1000460DC(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(NEKPBSourceWrapper);
  v3 = [v1 attributes];
  v4 = objc_alloc_init(NEKPBSourceAttributes);
  v5 = [v3 name];
  [(NEKPBSourceAttributes *)v4 setName:v5];

  v6 = [v3 defaultAlarmOffset];

  if (v6)
  {
    v7 = [v3 defaultAlarmOffset];
    -[NEKPBSourceAttributes setDefaultAlarmOffset:](v4, "setDefaultAlarmOffset:", [v7 intValue]);
  }

  -[NEKPBSourceAttributes setType:](v4, "setType:", [v3 type]);
  -[NEKPBSourceAttributes setIsEnabled:](v4, "setIsEnabled:", [v3 isEnabled]);
  -[NEKPBSourceAttributes setIsFacebook:](v4, "setIsFacebook:", [v3 isFacebook]);
  -[NEKPBSourceAttributes setUsesSelfAttendee:](v4, "setUsesSelfAttendee:", [v3 usesSelfAttendee]);
  v8 = [v3 constraintsDescriptionPath];
  [(NEKPBSourceAttributes *)v4 setConstraintsDescriptionPath:v8];

  v9 = [v3 externalID];
  [(NEKPBSourceAttributes *)v4 setExternalID:v9];

  v10 = [v3 externalModificationTag];
  [(NEKPBSourceAttributes *)v4 setExternalModificationTag:v10];

  v11 = [v3 creatorBundleID];
  [(NEKPBSourceAttributes *)v4 setCreatorBundleID:v11];

  v12 = [v3 creatorCodeSigningIdentity];
  [(NEKPBSourceAttributes *)v4 setCreatorCodeSigningIdentity:v12];

  v13 = [v3 accountPersistentID];
  [(NEKPBSourceAttributes *)v4 setAccountPersistentID:v13];

  -[NEKPBSourceAttributes setSupportsSharedCalendars:](v4, "setSupportsSharedCalendars:", [v3 supportsSharedCalendars]);
  -[NEKPBSourceAttributes setAllowsTasks:](v4, "setAllowsTasks:", [v3 allowsTasks]);
  -[NEKPBSourceAttributes setAllowsEvents:](v4, "setAllowsEvents:", [v3 allowsEvents]);
  -[NEKPBSourceAttributes setAllowsCalendarAddDeleteModify:](v4, "setAllowsCalendarAddDeleteModify:", [v3 allowsCalendarAddDeleteModify]);
  -[NEKPBSourceAttributes setOnlyCreatorCanModify:](v4, "setOnlyCreatorCanModify:", [v3 onlyCreatorCanModify]);
  -[NEKPBSourceAttributes setSnoozeAlarmRequiresDetach:](v4, "setSnoozeAlarmRequiresDetach:", [v3 snoozeAlarmRequiresDetach]);
  -[NEKPBSourceAttributes setSupportsAlarmAcknowledgedDate:](v4, "setSupportsAlarmAcknowledgedDate:", [v3 supportsAlarmAcknowledgedDate]);
  -[NEKPBSourceAttributes setIsLocalStore:](v4, "setIsLocalStore:", [v3 isLocalStore]);
  -[NEKPBSourceAttributes setIsBirthdayStore:](v4, "setIsBirthdayStore:", [v3 isBirthdayStore]);
  [(NEKPBSourceWrapper *)v2 setAttributes:v4];

  -[NEKPBSourceWrapper setNekChangeType:](v2, "setNekChangeType:", [v1 nekChangeType]);
  -[NEKPBSourceWrapper setNekStoreType:](v2, "setNekStoreType:", [v1 nekStoreType]);

  return v2;
}

NEKSourceWrapper *sub_1000463B4(void *a1)
{
  v1 = a1;
  v2 = [v1 attributes];
  v3 = objc_alloc_init(NEKSourceAttributes);
  v4 = [v2 name];
  [(NEKSourceAttributes *)v3 setName:v4];

  if ([v2 hasDefaultAlarmOffset])
  {
    v5 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v2 defaultAlarmOffset]);
    [(NEKSourceAttributes *)v3 setDefaultAlarmOffset:v5];
  }

  -[NEKSourceAttributes setType:](v3, "setType:", [v2 type]);
  -[NEKSourceAttributes setIsEnabled:](v3, "setIsEnabled:", [v2 isEnabled]);
  -[NEKSourceAttributes setIsFacebook:](v3, "setIsFacebook:", [v2 isFacebook]);
  -[NEKSourceAttributes setUsesSelfAttendee:](v3, "setUsesSelfAttendee:", [v2 usesSelfAttendee]);
  v6 = [v2 constraintsDescriptionPath];
  [(NEKSourceAttributes *)v3 setConstraintsDescriptionPath:v6];

  v7 = [v2 externalID];
  [(NEKSourceAttributes *)v3 setExternalID:v7];

  v8 = [v2 externalModificationTag];
  [(NEKSourceAttributes *)v3 setExternalModificationTag:v8];

  v9 = [v2 creatorBundleID];
  [(NEKSourceAttributes *)v3 setCreatorBundleID:v9];

  v10 = [v2 creatorCodeSigningIdentity];
  [(NEKSourceAttributes *)v3 setCreatorCodeSigningIdentity:v10];

  v11 = [v2 accountPersistentID];
  [(NEKSourceAttributes *)v3 setAccountPersistentID:v11];

  -[NEKSourceAttributes setSupportsSharedCalendars:](v3, "setSupportsSharedCalendars:", [v2 supportsSharedCalendars]);
  -[NEKSourceAttributes setAllowsTasks:](v3, "setAllowsTasks:", [v2 allowsTasks]);
  -[NEKSourceAttributes setAllowsEvents:](v3, "setAllowsEvents:", [v2 allowsEvents]);
  -[NEKSourceAttributes setAllowsCalendarAddDeleteModify:](v3, "setAllowsCalendarAddDeleteModify:", [v2 allowsCalendarAddDeleteModify]);
  -[NEKSourceAttributes setOnlyCreatorCanModify:](v3, "setOnlyCreatorCanModify:", [v2 onlyCreatorCanModify]);
  -[NEKSourceAttributes setSnoozeAlarmRequiresDetach:](v3, "setSnoozeAlarmRequiresDetach:", [v2 snoozeAlarmRequiresDetach]);
  -[NEKSourceAttributes setSupportsAlarmAcknowledgedDate:](v3, "setSupportsAlarmAcknowledgedDate:", [v2 supportsAlarmAcknowledgedDate]);
  -[NEKSourceAttributes setIsLocalStore:](v3, "setIsLocalStore:", [v2 isLocalStore]);
  -[NEKSourceAttributes setIsBirthdayStore:](v3, "setIsBirthdayStore:", [v2 isBirthdayStore]);

  v12 = [NEKSourceWrapper alloc];
  v13 = [v1 nekStoreType];
  v14 = [v1 nekChangeType];

  v15 = [(NEKSourceWrapper *)v12 initWithStoreType:v13 nekChangeType:v14 attributes:v3];

  return v15;
}

NEKPBDeletionWrapper *sub_100046688(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(NEKPBDeletionWrapper);
  v3 = [v1 objectIdentifier];
  [(NEKPBDeletionWrapper *)v2 setSyncId:v3];

  -[NEKPBDeletionWrapper setType:](v2, "setType:", [v1 type]);
  v4 = [v1 calendarIdentifier];
  [(NEKPBDeletionWrapper *)v2 setCalendarIdentifier:v4];

  -[NEKPBDeletionWrapper setNekChangeType:](v2, "setNekChangeType:", [v1 nekChangeType]);
  v5 = [v1 nekStoreType];

  [(NEKPBDeletionWrapper *)v2 setNekStoreType:v5];

  return v2;
}

NEKDeletionWrapper *sub_100046760(void *a1)
{
  v1 = a1;
  v2 = [NEKDeletionWrapper alloc];
  v3 = [v1 nekStoreType];
  v4 = [v1 syncId];
  v5 = [v1 hasCalendarIdentifier];
  if (v5)
  {
    v6 = [v1 calendarIdentifier];
  }

  else
  {
    v6 = 0;
  }

  v7 = -[NEKDeletionWrapper initWithStoreType:identifier:calendarIdentifier:type:](v2, "initWithStoreType:identifier:calendarIdentifier:type:", v3, v4, v6, [v1 type]);
  if (v5)
  {
  }

  return v7;
}

NEKPBValidationWrapper *sub_100046830(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(NEKPBValidationWrapper);
  v3 = [v1 start];
  [v3 timeIntervalSinceReferenceDate];
  [(NEKPBValidationWrapper *)v2 setStartDate:?];

  v4 = [v1 end];
  [v4 timeIntervalSinceReferenceDate];
  [(NEKPBValidationWrapper *)v2 setEndDate:?];

  -[NEKPBValidationWrapper setMasterCount:](v2, "setMasterCount:", [v1 masterCount]);
  -[NEKPBValidationWrapper setOccurrenceCount:](v2, "setOccurrenceCount:", [v1 occurrenceCount]);
  v5 = [v1 showAlert];

  [(NEKPBValidationWrapper *)v2 setShowAlert:v5];

  return v2;
}

void sub_100046918(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(NEKPBICSWrapperMetadata);
  -[NEKPBICSWrapperMetadata setEntityType:](v4, "setEntityType:", [*(a1 + 32) objectTypeForCalendarItemWithIdentifier:v3]);
  v5 = *(a1 + 32);
  if (*(a1 + 48) == 1)
  {
    v6 = [v5 selfAttendeeEmailForIdentifier:v3];
    [(NEKPBICSWrapperMetadata *)v4 setSelfAttendeeEmail:v6];

    v7 = [*(a1 + 32) selfAttendeeUUIDForIdentifier:v3];
    [(NEKPBICSWrapperMetadata *)v4 setSelfAttendeeUUID:v7];

    v8 = [*(a1 + 32) selfOrganizerEmailForIdentifier:v3];
    [(NEKPBICSWrapperMetadata *)v4 setSelfOrganizerEmail:v8];

    v9 = [*(a1 + 32) selfOrganizerUUIDForIdentifier:v3];
    [(NEKPBICSWrapperMetadata *)v4 setSelfOrganizerUUID:v9];

    v10 = [*(a1 + 32) externalIDForIdentifier:v3];
    [(NEKPBICSWrapperMetadata *)v4 setExternalID:v10];

    v11 = [*(a1 + 32) invitationStatusForIdentifier:v3];
    v12 = v11;
    if (v11)
    {
      -[NEKPBICSWrapperMetadata setInvitationStatus:](v4, "setInvitationStatus:", [v11 unsignedIntegerValue]);
    }

    v13 = [*(a1 + 32) properInvitationStatusForIdentifier:v3];
    v14 = v13;
    if (v13)
    {
      -[NEKPBICSWrapperMetadata setProperInvitationStatus:](v4, "setProperInvitationStatus:", [v13 unsignedIntegerValue]);
    }

    v15 = [*(a1 + 32) locationPredictionStateForIdentifier:v3];
    v16 = v15;
    if (v15)
    {
      -[NEKPBICSWrapperMetadata setLocationPredictionState:](v4, "setLocationPredictionState:", [v15 unsignedIntegerValue]);
    }

    -[NEKPBICSWrapperMetadata setInvitationChangedPropertyFlagDate:](v4, "setInvitationChangedPropertyFlagDate:", [*(a1 + 32) dateChangedForIdentifier:v3]);
    -[NEKPBICSWrapperMetadata setInvitationChangedPropertyFlagTime:](v4, "setInvitationChangedPropertyFlagTime:", [*(a1 + 32) timeChangedForIdentifier:v3]);
    -[NEKPBICSWrapperMetadata setInvitationChangedPropertyFlagTitle:](v4, "setInvitationChangedPropertyFlagTitle:", [*(a1 + 32) titleChangedForIdentifier:v3]);
    -[NEKPBICSWrapperMetadata setInvitationChangedPropertyFlagLocation:](v4, "setInvitationChangedPropertyFlagLocation:", [*(a1 + 32) locationChangedForIdentifier:v3]);
    -[NEKPBICSWrapperMetadata setInvitationChangedPropertyFlagAttendeeComment:](v4, "setInvitationChangedPropertyFlagAttendeeComment:", [*(a1 + 32) attendeeCommentForIdentifier:v3]);
    -[NEKPBICSWrapperMetadata setInvitationChangedPropertyFlagAttendeeStatus:](v4, "setInvitationChangedPropertyFlagAttendeeStatus:", [*(a1 + 32) attendeeStatusFlagForIdentifier:v3]);
    v17 = [*(a1 + 32) startDateForIdentifier:v3];
    [v17 timeIntervalSinceReferenceDate];
    [(NEKPBICSWrapperMetadata *)v4 setStartDate:?];
  }

  else
  {
    v18 = [v5 attendeeStatusForIdentifier:v3];
    v19 = EKParticipantStatusToCalAttendeeStatus();
    v20 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 138543874;
      v22 = v3;
      v23 = 1024;
      v24 = v18;
      v25 = 1024;
      v26 = v19;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "For %{public}@ we are sending attendee stats (ek %d, wire %d)", &v21, 0x18u);
    }

    [(NEKPBICSWrapperMetadata *)v4 setAttendeeStatus:v19];
  }

  [*(a1 + 40) setObject:v4 forKey:v3];
}

uint64_t sub_100047758(uint64_t a1, void *a2)
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

      if ((v12 >> 3) == 2)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        *(a1 + 20) |= 1u;
        while (1)
        {
          v25 = 0;
          v18 = [a2 position] + 1;
          if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
          {
            v20 = [a2 data];
            [v20 getBytes:&v25 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v17 |= (v25 & 0x7F) << v15;
          if ((v25 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v11 = v16++ >= 9;
          if (v11)
          {
            LOBYTE(v21) = 0;
            goto LABEL_32;
          }
        }

        v21 = (v17 != 0) & ~[a2 hasError];
LABEL_32:
        *(a1 + 16) = v21;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadString();
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

      v23 = [a2 position];
    }

    while (v23 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_1000482DC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) nekEventStore];
  if ([v4 shouldSendEntity:v3])
  {
    v5 = sub_10000A528(v3);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_100048348(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) nekReminderStore];
  if ([v4 shouldSendReminder:v3])
  {
    v5 = sub_10000A6E8(v3);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_1000483BC(uint64_t a1)
{
  v2 = [*(a1 + 32) reminderChangeObserver];
  [v2 saveChangeTrackingStateMap:*(a1 + 40)];
}

void sub_100048410(uint64_t a1)
{
  [*(a1 + 32) purgeRecordMap];
  [*(a1 + 32) startMappingEntities];
  v2 = [*(a1 + 40) eventChangeObserver];
  if (([v2 allSourcesInto:*(a1 + 48)] & 1) == 0)
  {
    goto LABEL_15;
  }

  v3 = [*(a1 + 40) reminderChangeObserver];
  if (([v3 allCloudKitAccountsInto:*(a1 + 48)] & 1) == 0)
  {
LABEL_14:

LABEL_15:
    goto LABEL_16;
  }

  v4 = [*(a1 + 40) eventChangeObserver];
  if (([v4 allCalendarsInto:*(a1 + 48)] & 1) == 0)
  {
LABEL_13:

    goto LABEL_14;
  }

  v5 = [*(a1 + 40) reminderChangeObserver];
  if (![v5 allListsInto:*(a1 + 48)])
  {
LABEL_12:

    goto LABEL_13;
  }

  v6 = [*(a1 + 40) eventChangeObserver];
  if (![v6 allEventsInto:*(a1 + 48) filter:*(a1 + 64) window:*(a1 + 56)])
  {
LABEL_11:

    goto LABEL_12;
  }

  v7 = [*(a1 + 40) eventChangeObserver];
  if (![v7 allRemindersInto:*(a1 + 48) filter:*(a1 + 64) window:*(a1 + 56)])
  {

    goto LABEL_11;
  }

  v8 = [*(a1 + 40) reminderChangeObserver];
  v13 = [v8 allRemindersInto:*(a1 + 48) filter:*(a1 + 72) window:*(a1 + 56)];

  if (v13)
  {
    v9 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v15 = "[NEKResultsFetcher fetchEverythingIntoPipe:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}s: All things pushed successfully", buf, 0xCu);
    }
  }

LABEL_16:
  [*(a1 + 48) finish];
  v10 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 48);
    *buf = 138543362;
    v15 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "fetchEverythingIntoPipe:PipeAfter: %{public}@", buf, 0xCu);
  }

  v12 = [*(a1 + 40) terminateSemaphore];
  dispatch_semaphore_signal(v12);
}

id sub_1000489F0(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = v3;
  if (objc_opt_isKindOfClass())
  {
    v5 = v3;
    v6 = [v5 originalItem];

    v4 = v5;
    if (v6)
    {
      v4 = [v5 originalItem];
    }
  }

  v7 = [*(a1 + 32) nekEventStore];
  if ([v7 hasRowMappingForEntity:v4])
  {
    v8 = 0;
  }

  else
  {
    v9 = [*(a1 + 32) nekEventStore];
    v8 = [v9 shouldSendEntity:v3];
  }

  return v8;
}

uint64_t sub_100048AD8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) nekReminderStore];
  if ([v4 shouldSendReminder:v3])
  {
    v5 = sub_10000A6E8(v3);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id sub_100048B44(uint64_t a1)
{
  [*(a1 + 32) endMappingEntities];
  v2 = *(a1 + 32);

  return [v2 sweepSeenMap];
}

void sub_100048B80(uint64_t a1)
{
  v2 = [*(a1 + 32) eventChangeObserver];
  if (([v2 allSourcesInto:*(a1 + 40)] & 1) == 0)
  {
    goto LABEL_13;
  }

  v3 = [*(a1 + 32) eventChangeObserver];
  if (([v3 allCalendarsInto:*(a1 + 40)] & 1) == 0)
  {
LABEL_12:

LABEL_13:
    goto LABEL_14;
  }

  v4 = [*(a1 + 32) reminderChangeObserver];
  if (([v4 allListsInto:*(a1 + 40)] & 1) == 0)
  {
LABEL_11:

    goto LABEL_12;
  }

  v5 = [*(a1 + 32) eventChangeObserver];
  if (![v5 allEventsInto:*(a1 + 40) filter:*(a1 + 56) window:*(a1 + 48)])
  {
LABEL_10:

    goto LABEL_11;
  }

  v6 = [*(a1 + 32) eventChangeObserver];
  if (![v6 allRemindersInto:*(a1 + 40) filter:*(a1 + 56) window:*(a1 + 48)])
  {

    goto LABEL_10;
  }

  v7 = [*(a1 + 32) reminderChangeObserver];
  v8 = [v7 allRemindersInto:*(a1 + 40) filter:*(a1 + 64) window:*(a1 + 48)];

  if (v8)
  {
    v9 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136446210;
      v14 = "[NEKResultsFetcher fetchNightlyIntoPipe:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}s: All nightly things pushed successfully", &v13, 0xCu);
    }
  }

LABEL_14:
  [*(a1 + 40) finish];
  v10 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 40);
    v13 = 138543362;
    v14 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "fetchNightlyIntoPipe:PipeAfter: %{public}@", &v13, 0xCu);
  }

  v12 = [*(a1 + 32) terminateSemaphore];
  dispatch_semaphore_signal(v12);
}

void sub_100049224(uint64_t a1)
{
  [*(a1 + 32) addAttendeeEvents:*(a1 + 40)];
  [*(a1 + 32) storeWrappersForSourceAggregator:*(a1 + 48) pipe:*(a1 + 56)];
  [*(a1 + 32) calendarWrappersForChangeSet:*(a1 + 40) pipe:*(a1 + 56)];
  [*(a1 + 32) deletionWrappersForChangeSet:*(a1 + 40) skipSourceDeletions:1 pipe:*(a1 + 56)];
  [*(a1 + 32) deletionWrappersForSourceAggregator:*(a1 + 48) pipe:*(a1 + 56)];
  [*(a1 + 32) ICSWrappersForChangeSet:*(a1 + 40) pipe:*(a1 + 56)];
  [*(a1 + 64) storeWrapperForCloudKitAccount:*(a1 + 72) pipe:*(a1 + 56)];
  [*(a1 + 64) listWrappersForChangeSet:*(a1 + 72) pipe:*(a1 + 56)];
  [*(a1 + 64) remindersWrappersForChangeSet:*(a1 + 72) skipAccountDeletions:1 pipe:*(a1 + 56)];
  [*(a1 + 56) finish];
  v2 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 56);
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "fetchChangesIntoPipe:PipeAfter: %{public}@", &v5, 0xCu);
  }

  v4 = [*(a1 + 80) terminateSemaphore];
  dispatch_semaphore_signal(v4);
}

uint64_t sub_10004A0C8(uint64_t a1, void *a2)
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
        LOBYTE(v91) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v91 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v91 & 0x7F) << v5;
        if ((v91 & 0x80) == 0)
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
          v14 = 64;
          goto LABEL_118;
        case 2u:
          v55 = 0;
          v56 = 0;
          v57 = 0;
          *(a1 + 104) |= 4u;
          while (1)
          {
            LOBYTE(v91) = 0;
            v58 = [a2 position] + 1;
            if (v58 >= [a2 position] && (v59 = objc_msgSend(a2, "position") + 1, v59 <= objc_msgSend(a2, "length")))
            {
              v60 = [a2 data];
              [v60 getBytes:&v91 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v57 |= (v91 & 0x7F) << v55;
            if ((v91 & 0x80) == 0)
            {
              break;
            }

            v55 += 7;
            v11 = v56++ >= 9;
            if (v11)
            {
              v23 = 0;
              goto LABEL_149;
            }
          }

          if ([a2 hasError])
          {
            v23 = 0;
          }

          else
          {
            v23 = v57;
          }

LABEL_149:
          v87 = 24;
          goto LABEL_156;
        case 3u:
          v31 = 0;
          v32 = 0;
          v33 = 0;
          *(a1 + 104) |= 2u;
          while (1)
          {
            LOBYTE(v91) = 0;
            v34 = [a2 position] + 1;
            if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
            {
              v36 = [a2 data];
              [v36 getBytes:&v91 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v33 |= (v91 & 0x7F) << v31;
            if ((v91 & 0x80) == 0)
            {
              break;
            }

            v31 += 7;
            v11 = v32++ >= 9;
            if (v11)
            {
              v23 = 0;
              goto LABEL_137;
            }
          }

          if ([a2 hasError])
          {
            v23 = 0;
          }

          else
          {
            v23 = v33;
          }

LABEL_137:
          v87 = 16;
          goto LABEL_156;
        case 4u:
          v43 = 0;
          v44 = 0;
          v45 = 0;
          *(a1 + 104) |= 0x100u;
          while (1)
          {
            LOBYTE(v91) = 0;
            v46 = [a2 position] + 1;
            if (v46 >= [a2 position] && (v47 = objc_msgSend(a2, "position") + 1, v47 <= objc_msgSend(a2, "length")))
            {
              v48 = [a2 data];
              [v48 getBytes:&v91 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v45 |= (v91 & 0x7F) << v43;
            if ((v91 & 0x80) == 0)
            {
              break;
            }

            v43 += 7;
            v11 = v44++ >= 9;
            if (v11)
            {
              LOBYTE(v30) = 0;
              goto LABEL_143;
            }
          }

          v30 = (v45 != 0) & ~[a2 hasError];
LABEL_143:
          v88 = 98;
          goto LABEL_161;
        case 5u:
          v24 = 0;
          v25 = 0;
          v26 = 0;
          *(a1 + 104) |= 0x400u;
          while (1)
          {
            LOBYTE(v91) = 0;
            v27 = [a2 position] + 1;
            if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
            {
              v29 = [a2 data];
              [v29 getBytes:&v91 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v26 |= (v91 & 0x7F) << v24;
            if ((v91 & 0x80) == 0)
            {
              break;
            }

            v24 += 7;
            v11 = v25++ >= 9;
            if (v11)
            {
              LOBYTE(v30) = 0;
              goto LABEL_133;
            }
          }

          v30 = (v26 != 0) & ~[a2 hasError];
LABEL_133:
          v88 = 100;
          goto LABEL_161;
        case 6u:
          v62 = 0;
          v63 = 0;
          v64 = 0;
          *(a1 + 104) |= 0x800u;
          while (1)
          {
            LOBYTE(v91) = 0;
            v65 = [a2 position] + 1;
            if (v65 >= [a2 position] && (v66 = objc_msgSend(a2, "position") + 1, v66 <= objc_msgSend(a2, "length")))
            {
              v67 = [a2 data];
              [v67 getBytes:&v91 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v64 |= (v91 & 0x7F) << v62;
            if ((v91 & 0x80) == 0)
            {
              break;
            }

            v62 += 7;
            v11 = v63++ >= 9;
            if (v11)
            {
              LOBYTE(v30) = 0;
              goto LABEL_151;
            }
          }

          v30 = (v64 != 0) & ~[a2 hasError];
LABEL_151:
          v88 = 101;
          goto LABEL_161;
        case 7u:
          v74 = 0;
          v75 = 0;
          v76 = 0;
          *(a1 + 104) |= 0x200u;
          while (1)
          {
            LOBYTE(v91) = 0;
            v77 = [a2 position] + 1;
            if (v77 >= [a2 position] && (v78 = objc_msgSend(a2, "position") + 1, v78 <= objc_msgSend(a2, "length")))
            {
              v79 = [a2 data];
              [v79 getBytes:&v91 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v76 |= (v91 & 0x7F) << v74;
            if ((v91 & 0x80) == 0)
            {
              break;
            }

            v74 += 7;
            v11 = v75++ >= 9;
            if (v11)
            {
              LOBYTE(v30) = 0;
              goto LABEL_158;
            }
          }

          v30 = (v76 != 0) & ~[a2 hasError];
LABEL_158:
          v88 = 99;
          goto LABEL_161;
        case 8u:
          v49 = 0;
          v50 = 0;
          v51 = 0;
          *(a1 + 104) |= 0x40u;
          while (1)
          {
            LOBYTE(v91) = 0;
            v52 = [a2 position] + 1;
            if (v52 >= [a2 position] && (v53 = objc_msgSend(a2, "position") + 1, v53 <= objc_msgSend(a2, "length")))
            {
              v54 = [a2 data];
              [v54 getBytes:&v91 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v51 |= (v91 & 0x7F) << v49;
            if ((v91 & 0x80) == 0)
            {
              break;
            }

            v49 += 7;
            v11 = v50++ >= 9;
            if (v11)
            {
              LOBYTE(v30) = 0;
              goto LABEL_145;
            }
          }

          v30 = (v51 != 0) & ~[a2 hasError];
LABEL_145:
          v88 = 96;
          goto LABEL_161;
        case 9u:
          v81 = 0;
          v82 = 0;
          v83 = 0;
          *(a1 + 104) |= 0x80u;
          while (1)
          {
            LOBYTE(v91) = 0;
            v84 = [a2 position] + 1;
            if (v84 >= [a2 position] && (v85 = objc_msgSend(a2, "position") + 1, v85 <= objc_msgSend(a2, "length")))
            {
              v86 = [a2 data];
              [v86 getBytes:&v91 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v83 |= (v91 & 0x7F) << v81;
            if ((v91 & 0x80) == 0)
            {
              break;
            }

            v81 += 7;
            v11 = v82++ >= 9;
            if (v11)
            {
              LOBYTE(v30) = 0;
              goto LABEL_160;
            }
          }

          v30 = (v83 != 0) & ~[a2 hasError];
LABEL_160:
          v88 = 97;
LABEL_161:
          *(a1 + v88) = v30;
          goto LABEL_162;
        case 0xAu:
          v13 = PBReaderReadString();
          v14 = 72;
          goto LABEL_118;
        case 0xBu:
          v13 = PBReaderReadString();
          v14 = 80;
          goto LABEL_118;
        case 0xCu:
          v13 = PBReaderReadString();
          v14 = 88;
          goto LABEL_118;
        case 0xDu:
          v13 = PBReaderReadString();
          v14 = 56;
LABEL_118:
          v80 = *(a1 + v14);
          *(a1 + v14) = v13;

          goto LABEL_162;
        case 0xEu:
          v68 = 0;
          v69 = 0;
          v70 = 0;
          *(a1 + 104) |= 1u;
          while (1)
          {
            LOBYTE(v91) = 0;
            v71 = [a2 position] + 1;
            if (v71 >= [a2 position] && (v72 = objc_msgSend(a2, "position") + 1, v72 <= objc_msgSend(a2, "length")))
            {
              v73 = [a2 data];
              [v73 getBytes:&v91 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v70 |= (v91 & 0x7F) << v68;
            if ((v91 & 0x80) == 0)
            {
              break;
            }

            v68 += 7;
            v11 = v69++ >= 9;
            if (v11)
            {
              v23 = 0;
              goto LABEL_155;
            }
          }

          if ([a2 hasError])
          {
            v23 = 0;
          }

          else
          {
            v23 = v70;
          }

LABEL_155:
          v87 = 8;
          goto LABEL_156;
        case 0xFu:
          v17 = 0;
          v18 = 0;
          v19 = 0;
          *(a1 + 104) |= 8u;
          while (1)
          {
            LOBYTE(v91) = 0;
            v20 = [a2 position] + 1;
            if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
            {
              v22 = [a2 data];
              [v22 getBytes:&v91 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v19 |= (v91 & 0x7F) << v17;
            if ((v91 & 0x80) == 0)
            {
              break;
            }

            v17 += 7;
            v11 = v18++ >= 9;
            if (v11)
            {
              v23 = 0;
              goto LABEL_131;
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

LABEL_131:
          v87 = 32;
          goto LABEL_156;
        case 0x10u:
          v37 = 0;
          v38 = 0;
          v39 = 0;
          *(a1 + 104) |= 0x10u;
          break;
        case 0x11u:
          *(a1 + 104) |= 0x20u;
          v91 = 0;
          v15 = [a2 position] + 8;
          if (v15 >= [a2 position] && (v16 = objc_msgSend(a2, "position") + 8, v16 <= objc_msgSend(a2, "length")))
          {
            v90 = [a2 data];
            [v90 getBytes:&v91 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          *(a1 + 48) = v91;
          goto LABEL_162;
        default:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_162;
      }

      while (1)
      {
        LOBYTE(v91) = 0;
        v40 = [a2 position] + 1;
        if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
        {
          v42 = [a2 data];
          [v42 getBytes:&v91 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v39 |= (v91 & 0x7F) << v37;
        if ((v91 & 0x80) == 0)
        {
          break;
        }

        v37 += 7;
        v11 = v38++ >= 9;
        if (v11)
        {
          v23 = 0;
          goto LABEL_141;
        }
      }

      v23 = [a2 hasError] ? 0 : v39;
LABEL_141:
      v87 = 40;
LABEL_156:
      *(a1 + v87) = v23;
LABEL_162:
      v89 = [a2 position];
    }

    while (v89 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_10004F160(uint64_t a1, void *a2)
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
        v13 = &OBJC_IVAR___NEKPBDuplicateCalendar__externalId;
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

    v13 = &OBJC_IVAR___NEKPBDuplicateCalendar__name;
    goto LABEL_21;
  }

  return [a2 hasError] ^ 1;
}

void sub_10004FCDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 176), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10004FD38(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10004FD50(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if ((*(*(a1 + 48) + 16))())
    {
      if ([*(a1 + 32) objectDelayUs] >= 1)
      {
        usleep([*(a1 + 32) objectDelayUs]);
      }

      ++*(*(*(a1 + 64) + 8) + 24);
      [*(*(*(a1 + 72) + 8) + 40) recordChange:v3];
      v4 = 1;
    }

    else
    {
      v5 = *(qword_1000D18A8 + 8);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        sub_100073D94(a1, v5);
      }

      [objc_opt_class() oops];
      v4 = 0;
      *(*(*(a1 + 56) + 8) + 24) = 1;
    }
  }

  else
  {
    v4 = 1;
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  return v4;
}

void sub_100050B90(id a1)
{
  info = 0;
  mach_timebase_info(&info);
  qword_1000D1848 = (info.numer << 8) / info.denom;
}

void sub_100050DDC(id a1)
{
  info = 0;
  if (!mach_timebase_info(&info))
  {
    LODWORD(v1) = info.numer;
    LODWORD(v2) = info.denom;
    *&qword_1000D15E8 = v1 / v2;
  }
}

uint64_t sub_100051F74(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (v6)
  {
    if ([v5 isEqual:v6])
    {
LABEL_3:
      v8 = 1;
      goto LABEL_7;
    }
  }

  else if (!v5)
  {
    goto LABEL_3;
  }

  v9 = *(qword_1000D18A8 + 8);
  v8 = 0;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543874;
    v12 = v7;
    v13 = 2114;
    v14 = v5;
    v15 = 2114;
    v16 = v6;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "_calendarPropertyIsEqualToAttributeProperty: Calendar and attributes property %{public}@ are different: (calendar) %{public}@ != (attributes) %{public}@", &v11, 0x20u);
    v8 = 0;
  }

LABEL_7:

  return v8;
}

uint64_t sub_100052898(uint64_t a1, void *a2)
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
      if ((v12 >> 3) <= 3)
      {
        switch(v13)
        {
          case 1:
            *(a1 + 64) |= 1u;
            v22 = 0;
            v16 = [a2 position] + 8;
            if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 8, v17 <= objc_msgSend(a2, "length")))
            {
              v21 = [a2 data];
              [v21 getBytes:&v22 range:{objc_msgSend(a2, "position"), 8}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            *(a1 + 8) = v22;
            goto LABEL_38;
          case 2:
            v14 = PBReaderReadString();
            v15 = 24;
            break;
          case 3:
            v14 = PBReaderReadString();
            v15 = 48;
            break;
          default:
            goto LABEL_32;
        }
      }

      else if (v13 > 5)
      {
        if (v13 == 6)
        {
          v14 = PBReaderReadString();
          v15 = 40;
        }

        else
        {
          if (v13 != 7)
          {
LABEL_32:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_38;
          }

          v14 = PBReaderReadString();
          v15 = 56;
        }
      }

      else if (v13 == 4)
      {
        v14 = PBReaderReadString();
        v15 = 32;
      }

      else
      {
        if (v13 != 5)
        {
          goto LABEL_32;
        }

        v14 = PBReaderReadString();
        v15 = 16;
      }

      v19 = *(a1 + v15);
      *(a1 + v15) = v14;

LABEL_38:
      v20 = [a2 position];
    }

    while (v20 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1000543E8(uint64_t a1)
{
  v2 = [*(a1 + 32) freshEventStoreFor:@"removeAllItems(reminders)"];
  [*(a1 + 32) removeDeletableLists:v2];
  [*(a1 + 32) _saveEventStore:v2];
  [*(a1 + 32) removeDeletableAccounts:v2];
  [*(a1 + 32) _saveEventStore:v2];
  v3 = [*(a1 + 32) changeObserver];
  v4 = [v3 changeStateMap];
  v5 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received reset sync. Resetting change tracking state map to %{public}@", &v6, 0xCu);
  }

  [v3 saveChangeTrackingStateMap:v4];
}

BOOL sub_1000546F4(id a1, REMAccount *a2, NSDictionary *a3)
{
  v3 = a2;
  v4 = [(REMAccount *)v3 type]== 3 || [(REMAccount *)v3 type]== 4;

  return v4;
}

void sub_10005509C(id *a1)
{
  v2 = a1 + 4;
  v3 = [a1[4] attributes];
  v4 = [v3 isLocalStore];

  if (v4)
  {
    v5 = [a1[5] eks_localAccount];
    v6 = 0;
    goto LABEL_14;
  }

  v7 = [*v2 attributes];
  v6 = [v7 accountPersistentID];

  v8 = [[NSUUID alloc] initWithUUIDString:v6];
  if (!v8 && os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_FAULT))
  {
    sub_100074338();
  }

  v9 = [REMAccount objectIDWithUUID:v8];
  v10 = a1[5];
  v39 = 0;
  v5 = [v10 fetchAccountWithObjectID:v9 error:&v39];
  v11 = v39;
  v12 = v11;
  if (!v5)
  {
    v13 = [v11 domain];
    if ([v13 isEqualToString:REMErrorDomain])
    {
      v14 = [v12 code];

      if (v14 == -3000)
      {
        goto LABEL_13;
      }
    }

    else
    {
    }

    if (os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_ERROR))
    {
      sub_1000743B4();
    }
  }

LABEL_13:

LABEL_14:
  v15 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = *v2;
    *buf = 138543362;
    v41 = v16;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Reminders: Create or update account: %{public}@", buf, 0xCu);
  }

  if (v5)
  {
    if ([a1[6] _updateAccount:v5 withSourceWrapper:a1[4] store:a1[5]])
    {
      v17 = objc_autoreleasePoolPush();
      v18 = [a1[6] _saveEventStore:a1[5]];
      v19 = *(qword_1000D18A8 + 8);
      if (v18)
      {
        if (os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_DEFAULT))
        {
          v20 = v19;
          v21 = [v5 objectID];
          *buf = 138543362;
          v41 = v21;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Reminders: Account (%{public}@) saved successfully.", buf, 0xCu);
        }
      }

      else if (os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_ERROR))
      {
        sub_10007441C(v19);
      }

      objc_autoreleasePoolPop(v17);
    }
  }

  else
  {
    v22 = [*v2 attributes];
    v23 = [v22 allowsTasks];

    if (v23)
    {
      v24 = [*v2 attributes];
      v25 = [v24 isLocalStore];

      v26 = *(qword_1000D18A8 + 8);
      v27 = os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);
      if (v25)
      {
        if (v27)
        {
          sub_10006FD68(v2, v26, v28, v29, v30, v31, v32, v33);
        }
      }

      else if (v27)
      {
        sub_1000744AC(v2, v26, v28, v29, v30, v31, v32, v33);
      }
    }

    else
    {
      v34 = *(qword_1000D18A8 + 8);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        v35 = *v2;
        v36 = v34;
        v37 = [v35 attributes];
        v38 = [v37 accountPersistentID];
        *buf = 138543362;
        v41 = v38;
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Reminders: No need to create account since the account [%{public}@] doesn't exist in database and the source wrapper has allowsTasks=NO", buf, 0xCu);
      }
    }
  }
}