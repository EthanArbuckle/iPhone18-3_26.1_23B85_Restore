void sub_1000555AC(uint64_t a1)
{
  v2 = [*(a1 + 32) calendarIdentifier];
  v3 = [[NSUUID alloc] initWithUUIDString:v2];
  if (!v3 && os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_FAULT))
  {
    sub_10007451C();
  }

  v4 = [REMList objectIDWithUUID:v3];
  v5 = *(a1 + 40);
  v22 = 0;
  v6 = [v5 fetchListWithObjectID:v4 error:&v22];
  v7 = v22;
  v8 = v7;
  if (v6)
  {
    v9 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      *buf = 138543362;
      v24 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Update list: %{public}@", buf, 0xCu);
    }

    if ([*(a1 + 48) _updateList:v6 withCalendarWrapper:*(a1 + 32)])
    {
      v11 = objc_autoreleasePoolPush();
      v12 = [*(a1 + 48) _saveEventStore:*(a1 + 40)];
      v13 = *(qword_1000D18A8 + 8);
      if (v12)
      {
        if (os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v24 = v2;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "List (%{public}@) saved successfully.", buf, 0xCu);
        }
      }

      else if (os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_ERROR))
      {
        sub_100074598();
      }

      objc_autoreleasePoolPop(v11);
    }

    goto LABEL_30;
  }

  v14 = [v7 domain];
  if (([v14 isEqualToString:REMErrorDomain] & 1) == 0)
  {

LABEL_15:
    if (os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_ERROR))
    {
      sub_100074600();
    }

    goto LABEL_17;
  }

  v15 = [v8 code];

  if (v15 != -3000)
  {
    goto LABEL_15;
  }

LABEL_17:
  v16 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = *(a1 + 32);
    *buf = 138543362;
    v24 = v17;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Create list: %{public}@", buf, 0xCu);
  }

  v18 = [*(a1 + 48) _createListForWrapper:*(a1 + 32) store:*(a1 + 40)];
  if (v18)
  {
    v19 = objc_autoreleasePoolPush();
    v20 = [*(a1 + 48) _saveEventStore:*(a1 + 40)];
    v21 = *(qword_1000D18A8 + 8);
    if (v20)
    {
      if (os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v24 = v2;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "New list (%{public}@) saved successfully.", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_ERROR))
    {
      sub_100074668();
    }

    objc_autoreleasePoolPop(v19);
    [*(a1 + 48) _checkAndSetDefaultList:0 calendarWrapper:*(a1 + 32) store:*(a1 + 40)];
  }

LABEL_30:
}

id sub_100055B78(uint64_t a1)
{
  [*(a1 + 32) _deleteAccountWithIdentifier:*(a1 + 40) store:*(a1 + 48)];
  [*(a1 + 32) _deleteListWithIdentifier:*(a1 + 40) store:*(a1 + 48)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);

  return [v2 _deleteReminderWithIdentifier:v3 store:v4];
}

void sub_1000574C8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = [*(a1 + 32) entityTypeForCalendarItemWithIdentifier:v3];
  if (v5 == 1)
  {
    [*(a1 + 40) handleReminderWithUniqueIdentifierFromGizmo:v3 saveRequest:*(a1 + 48) list:*(a1 + 56) wrapper:*(a1 + 32)];
  }

  else
  {
    v6 = v5;
    v7 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000748F4(v6, v7);
    }
  }

  objc_autoreleasePoolPop(v4);
}

void sub_100057574(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = a2;
  v8 = [v6 objectAtIndexedSubscript:a3];
  v9 = [v8 objectIdentifier];
  v10 = [v5 objectForKeyedSubscript:v9];

  if (v10)
  {
    v11 = [*(a1 + 48) updateReminder:v10];
    v12 = *(a1 + 48);
    v22 = 0;
    [v12 updateReminderChangeItem:v11 fromICSData:v7 isNew:1 withOptions:0 error:&v22];

    v13 = v22;
    v23 = v11;
    v14 = [NSArray arrayWithObjects:&v23 count:1];
  }

  else
  {
    v15 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(a1 + 40);
      v17 = v15;
      v18 = [v16 objectAtIndexedSubscript:a3];
      v19 = [v18 objectIdentifier];
      *buf = 138543618;
      v25 = v19;
      v26 = 2112;
      v27 = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Reminder for identifier %{public}@ not found (%@)", buf, 0x16u);
    }

    v20 = *(a1 + 48);
    v21 = [*(a1 + 56) objectAtIndexedSubscript:a3];
    v11 = [v20 updateList:v21];

    v14 = [*(a1 + 48) importRemindersFromICSData:v7 insertIntoListChangeItem:v11 error:0];

    v13 = 0;
  }

  if (v14)
  {
    [*(a1 + 64) addObject:v14];
  }

  else if (os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_ERROR))
  {
    sub_10007496C();
  }
}

void sub_100057978(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] store];
  v5 = [a1[5] entityTypeForCalendarItemWithIdentifier:v3];
  if (v5 == 1)
  {
    v18 = 0;
    v6 = [v4 fetchReminderWithDACalendarItemUniqueIdentifier:v3 inList:0 error:&v18];
    v7 = v18;
    if (!v6)
    {
      if (os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_ERROR))
      {
        sub_100074A24();
      }

      goto LABEL_20;
    }

    v8 = [a1[4] objectID];
    v9 = [v6 list];
    v10 = v9;
    if (v9)
    {
      v11 = [v9 objectID];
      v12 = v11;
      v13 = v8 != 0;
      if (v8 && v11)
      {
        if ([v8 isEqual:v11])
        {
          goto LABEL_19;
        }

        goto LABEL_18;
      }

      if (!v8 && v11)
      {
LABEL_18:
        v16 = [a1[6] updateReminder:v6];
        [v16 removeFromList];
        v17 = [a1[6] updateList:a1[4]];
        [v17 addReminderChangeItem:v16];

LABEL_19:
LABEL_20:

        goto LABEL_21;
      }
    }

    else
    {
      v12 = 0;
      v13 = v8 != 0;
    }

    if (!v13 || v12)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v14 = v5;
  v15 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    sub_1000749AC(v3, v14, v15);
  }

LABEL_21:
}

void sub_100057F04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100057F20(uint64_t a1, uint64_t a2)
{
  result = objc_retainBlock(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_100057F54(uint64_t a1, unsigned __int8 *a2)
{
  v4 = *(a1 + 48);
  v5 = [*(a1 + 32) copy];
  v11 = (*(v4 + 16))(v4, v5);

  if ([*(a1 + 32) count])
  {
    v6 = 0;
    do
    {
      v7 = [*(a1 + 32) objectAtIndexedSubscript:v6];
      v8 = *(a1 + 56);
      v9 = [v11 objectForKeyedSubscript:v7];
      v10 = [*(a1 + 40) objectAtIndexedSubscript:v6];
      (*(v8 + 16))(v8, v7, v9, [v10 intValue], a2);

      LODWORD(v8) = *a2;
      if (v8 == 1)
      {
        break;
      }

      ++v6;
    }

    while (v6 < [*(a1 + 32) count]);
  }

  [*(a1 + 32) removeAllObjects];
  [*(a1 + 40) removeAllObjects];
}

id sub_10005808C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  [*(a1 + 32) addObject:a2];
  v5 = *(a1 + 40);
  v6 = [NSNumber numberWithUnsignedInt:a3];
  [v5 addObject:v6];

  result = [*(a1 + 32) count];
  if (result >= 0xA)
  {
    v8 = *(*(*(*(a1 + 48) + 8) + 40) + 16);

    return v8();
  }

  return result;
}

id sub_10005822C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v11 = 0;
  v5 = [v4 fetchAccountsWithObjectIDs:v3 error:&v11];
  v6 = v11;
  if (!v5)
  {
    if (os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_ERROR))
    {
      sub_100074A8C();
    }

    v5 = +[NSDictionary dictionary];
  }

  v7 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v5 count]);
    *buf = 138543618;
    v13 = v9;
    v14 = 2114;
    v15 = v3;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Fetched account batch: %{public}@ %{public}@", buf, 0x16u);
  }

  return v5;
}

id sub_1000584B4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v11 = 0;
  v5 = [v4 fetchListsWithObjectIDs:v3 error:&v11];
  v6 = v11;
  if (!v5)
  {
    if (os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_ERROR))
    {
      sub_100074AF4();
    }

    v5 = +[NSDictionary dictionary];
  }

  v7 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v5 count]);
    *buf = 138543618;
    v13 = v9;
    v14 = 2114;
    v15 = v3;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Fetched list batch: %{public}@ %{public}@", buf, 0x16u);
  }

  return v5;
}

id sub_10005873C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v11 = 0;
  v5 = [v4 fetchRemindersWithObjectIDs:v3 error:&v11];
  v6 = v11;
  if (!v5)
  {
    if (os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_ERROR))
    {
      sub_100074B5C();
    }

    v5 = +[NSDictionary dictionary];
  }

  v7 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v5 count]);
    *buf = 138543618;
    v13 = v9;
    v14 = 2114;
    v15 = v3;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Fetched reminder batch: %{public}@ %{public}@", buf, 0x16u);
  }

  return v5;
}

void sub_100058F80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100058FA8(uint64_t a1, void *a2, void *a3, uint64_t a4, _BYTE *a5)
{
  v8 = a2;
  v9 = a3;
  if (v9)
  {
    v10 = [*(a1 + 32) wrapperForChangeType:*(a1 + 64) list:v9];
    if (v10)
    {
      v11 = [v9 remObjectID];
      v12 = [*(a1 + 40) remObjectID];
      v13 = [v11 isEqual:v12];

      if (v13)
      {
        *(*(*(a1 + 56) + 8) + 24) = 1;
        [v10 setIsDefaultTaskCalendar:1];
        v14 = *(qword_1000D18A8 + 8);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = *(a1 + 40);
          v16 = v14;
          v17 = [v15 name];
          v18 = sub_10002CDF8(v17);
          v19 = [*(a1 + 40) objectID];
          v21 = 138543618;
          v22 = v18;
          v23 = 2114;
          v24 = v19;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Marking default list in wrapper to list with name %{public}@, identifier %{public}@", &v21, 0x16u);
        }
      }

      if (([*(a1 + 48) push:v10] & 1) == 0)
      {
        *a5 = 1;
      }
    }

    else
    {
      v20 = *(qword_1000D18A8 + 8);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_100070860(v20);
      }
    }
  }

  else if (os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_ERROR))
  {
    sub_100074C54();
  }
}

void sub_100059500(id *a1, void *a2, void *a3, uint64_t a4, _BYTE *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = objc_autoreleasePoolPush();
  if (v10)
  {
    if (((sub_100016740() & 1) != 0 || [a1[4] reminderInWindow:v10]) && sub_10000A6E8(v10) && objc_msgSend(a1[5], "shouldSendReminder:", v10))
    {
      v12 = [a1[5] wrapperForChangeType:a4 reminder:v10 oldListIdentifier:0];
      if (([a1[6] push:v12] & 1) == 0)
      {
        *a5 = 1;
      }
    }
  }

  else if (os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_ERROR))
  {
    sub_100074CBC();
  }

  objc_autoreleasePoolPop(v11);
}

void sub_100059614(uint64_t a1, void *a2, void *a3, uint64_t a4, _BYTE *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = objc_autoreleasePoolPush();
  if (v10)
  {
    if (((sub_100016740() & 1) != 0 || [*(a1 + 32) reminderInWindow:v10]) && objc_msgSend(*(a1 + 40), "shouldSendReminder:", v10))
    {
      v12 = *(a1 + 48);
      v13 = [v10 objectID];
      v14 = [v12 objectForKeyedSubscript:v13];

      v15 = [*(a1 + 40) wrapperForChangeType:a4 reminder:v10 oldListIdentifier:v14];
      if (v15 && ([*(a1 + 56) push:v15] & 1) == 0)
      {
        *a5 = 1;
      }
    }

    else if (os_variant_has_internal_diagnostics())
    {
      v16 = *(qword_1000D18A8 + 8);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = v16;
        v18 = [v10 eks_debugDesc];
        v19 = 138412290;
        v20 = v18;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Decided not to send reminder %@", &v19, 0xCu);
      }
    }
  }

  else if (os_log_type_enabled(*(qword_1000D18A8 + 8), OS_LOG_TYPE_ERROR))
  {
    sub_100074CBC();
  }

  objc_autoreleasePoolPop(v11);
}

void sub_10005AFE8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained notifyForDatabaseUpdatesIfNeeded];
}

void sub_10005C7EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10005C804(uint64_t a1, int a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = [a3 objectForKey:kCalDatabaseChangesAffectingNext24HoursKey];
  v9 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v18 = *(a1 + 32);
    v19 = v9;
    v20 = [v18 description];
    v21 = [v7 description];
    v22 = 138544386;
    v23 = @"EKEventStore";
    v24 = 2112;
    v25 = v20;
    v26 = 1024;
    v27 = a2;
    v28 = 2112;
    v29 = v21;
    v30 = 1024;
    v31 = v8 != 0;
    _os_log_debug_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "[%{public}@] Changes since token %@, success = %{BOOL}d, currentSequenceToken = %@, affectingNext24hrs = %{BOOL}d", &v22, 0x2Cu);

    if (!a2)
    {
      goto LABEL_5;
    }
  }

  else if (!a2)
  {
    goto LABEL_5;
  }

  if (!v8)
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
  }

LABEL_5:
  if (a2)
  {
    if (v7)
    {
      [*(a1 + 40) setLastSequenceToken:v7];
    }
  }

  else
  {
    v10 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100075448(v10, v11, v12, v13, v14, v15, v16, v17);
    }
  }
}

void sub_10005CCDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  objc_destroyWeak((v26 + 72));
  _Block_object_dispose(&a26, 8);
  objc_destroyWeak((v27 - 136));
  _Unwind_Resume(a1);
}

void *sub_10005CD20(void *result)
{
  if (atomic_exchange((*(result[4] + 8) + 24), 0))
  {
    v1 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      sub_1000754C0(v1, v2, v3, v4, v5, v6, v7, v8);
    }

    return [NDTCrashSynthesizer writeStackshot:@"Fetching changes took a long time"];
  }

  return result;
}

void sub_10005CDA0(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6)
{
  v69 = a4;
  v10 = a5;
  v71 = a6;
  atomic_exchange((*(*(a1 + 64) + 8) + 24), 0);
  kdebug_trace();
  v11 = +[NDTPerf wallTime];
  v12 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(a1 + 88);
    v14 = (v11 - *(a1 + 80));
    *buf = 138544386;
    v107 = @"EKEventStore";
    v108 = 1024;
    *v109 = v13;
    *&v109[4] = 1024;
    *&v109[6] = a3;
    v110 = 1024;
    v111 = a3 - v13;
    v112 = 2048;
    v113 = v14 / 1000000000.0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] fetchChangesInto: sequenceNumbers [prev: %d curr:%d delta:%d] fetchDuration [%.2f]", buf, 0x28u);
  }

  v72 = a1;
  [*(a1 + 32) setTruncated:a2];
  v15 = [*(a1 + 32) truncated];
  v16 = *(qword_1000D18A8 + 8);
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
  if (v15)
  {
    if (v17)
    {
      *buf = 138543362;
      v107 = @"EKEventStore";
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[%{public}@] fetchChangesInto: change log truncated", buf, 0xCu);
    }

    goto LABEL_72;
  }

  if (v17)
  {
    *buf = 138543362;
    v107 = @"EKEventStore";
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[%{public}@] fetchChangesInto: fetching changes for default Event or Task calendars", buf, 0xCu);
  }

  v64 = [*(a1 + 40) previousDefaultTaskCalendar];
  v65 = [*(a1 + 40) previousDefaultEventCalendar];
  v18 = [*(a1 + 48) defaultCalendarForNewReminders];
  v70 = [*(a1 + 48) defaultCalendarForNewEvents];
  v19 = [*(a1 + 40) environment];
  v20 = [v19 isReminderKitEnabled];

  if (v20)
  {
    v21 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v107 = @"EKEventStore";
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "[%{public}@] fetchChangesInto: ignoring Task calendar, ReminderKit is enabled", buf, 0xCu);
    }

    v22 = v18;
    goto LABEL_16;
  }

  if (v18)
  {
    v22 = [v18 calendarIdentifier];
    if (!v64 && ![0 isEqualToString:v22])
    {
      goto LABEL_17;
    }

LABEL_16:
    v18 = 0;
LABEL_17:
  }

  v66 = v18;
  if (v70)
  {
    v23 = [v70 calendarIdentifier];
    if (v65 || [0 isEqualToString:v23])
    {

      v70 = 0;
    }
  }

  else
  {
    v70 = 0;
  }

  v24 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v107 = @"EKEventStore";
    v108 = 1024;
    *v109 = v70 != 0;
    *&v109[4] = 1024;
    *&v109[6] = v18 != 0;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "[%{public}@] fetchChangesInto: did change default Event [%{BOOL}d] or Task [%{BOOL}d] calendar", buf, 0x18u);
  }

  if (v18 | v70)
  {
    if (v10)
    {
      v67 = [v10 mutableCopy];
      if (v18)
      {
        v25 = [v18 objectID];
        [v67 addObject:v25];
      }

      if (v70)
      {
        v26 = [v70 objectID];
        [v67 addObject:v26];
      }
    }

    else
    {
      v27 = *(qword_1000D18A8 + 8);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        sub_100075538(v27, v28, v29, v30, v31, v32, v33, v34);
      }

      v67 = 0;
    }
  }

  else
  {
    v67 = v10;
  }

  [*(a1 + 32) setInserts:v69];
  [*(a1 + 32) setUpdates:v67];
  [*(a1 + 32) setDeletes:v71];
  [*(a1 + 32) setChangeNumber:a3];
  [*(a1 + 32) setTruncated:0];
  [*(a1 + 32) setHasChangesInNext24hrs:*(a1 + 92)];
  v35 = "{?=attendeeStatusb1entityTypeb1invitationStatusb1locationPredictionStateb1properInvitationStatusb1startDateb1invitationChangedPropertyFlagAttendeeCommentb1invitationChangedPropertyFlagAttendeeStatusb1invitationChangedPropertyFlagDateb1invitationChangedPropertyFlagLocationb1invitationChangedPropertyFlagTimeb1invitationChangedPropertyFlagTitleb1}" + 361;
  if ([*(a1 + 32) isEmpty])
  {
    v36 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v107 = @"EKEventStore";
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "[%{public}@] fetchChangesInto: empty change set", buf, 0xCu);
    }
  }

  else
  {
    v37 = [[NSMutableDictionary alloc] initWithCapacity:10];
    v38 = v69;
    v39 = v67;
    v40 = v71;
    v77 = v37;
    v101[0] = _NSConcreteStackBlock;
    v101[1] = 3221225472;
    v101[2] = sub_10005E2B8;
    v101[3] = &unk_1000B5EE8;
    v41 = objc_alloc_init(NSMutableDictionary);
    v102 = v41;
    v42 = objc_retainBlock(v101);
    v99 = 0u;
    v100 = 0u;
    v97 = 0u;
    v98 = 0u;
    obj = v38;
    v43 = [obj countByEnumeratingWithState:&v97 objects:buf count:16];
    if (v43)
    {
      v44 = *v98;
      do
      {
        for (i = 0; i != v43; i = i + 1)
        {
          if (*v98 != v44)
          {
            objc_enumerationMutation(obj);
          }

          (v42[2])(v42, *(*(&v97 + 1) + 8 * i), 1);
        }

        v43 = [obj countByEnumeratingWithState:&v97 objects:buf count:16];
      }

      while (v43);
    }

    v95 = 0u;
    v96 = 0u;
    v93 = 0u;
    v94 = 0u;
    v74 = v39;
    v46 = [v74 countByEnumeratingWithState:&v93 objects:v105 count:16];
    if (v46)
    {
      v47 = *v94;
      do
      {
        for (j = 0; j != v46; j = j + 1)
        {
          if (*v94 != v47)
          {
            objc_enumerationMutation(v74);
          }

          (v42[2])(v42, *(*(&v93 + 1) + 8 * j), 2);
        }

        v46 = [v74 countByEnumeratingWithState:&v93 objects:v105 count:16];
      }

      while (v46);
    }

    v91 = 0u;
    v92 = 0u;
    v89 = 0u;
    v90 = 0u;
    v73 = v40;
    v49 = [v73 countByEnumeratingWithState:&v89 objects:v104 count:16];
    if (v49)
    {
      v50 = *v90;
      do
      {
        for (k = 0; k != v49; k = k + 1)
        {
          if (*v90 != v50)
          {
            objc_enumerationMutation(v73);
          }

          (v42[2])(v42, *(*(&v89 + 1) + 8 * k), 4);
        }

        v49 = [v73 countByEnumeratingWithState:&v89 objects:v104 count:16];
      }

      while (v49);
    }

    v88 = 0u;
    v86 = 0u;
    v87 = 0u;
    v85 = 0u;
    v52 = v41;
    v53 = [v52 countByEnumeratingWithState:&v85 objects:v103 count:16];
    if (v53)
    {
      v76 = *v86;
      do
      {
        for (m = 0; m != v53; m = m + 1)
        {
          if (*v86 != v76)
          {
            objc_enumerationMutation(v52);
          }

          v55 = *(*(&v85 + 1) + 8 * m);
          v56 = [v52 objectForKeyedSubscript:v55];
          v57 = [v56 objectForKeyedSubscript:&off_1000BB7F0];
          v58 = [v56 objectForKeyedSubscript:&off_1000BB820];
          v59 = [v56 objectForKeyedSubscript:&off_1000BB838];
          v60 = [NSString stringWithFormat:@"+%@, *%@, -%@", v57, v58, v59];

          [v77 setObject:v60 forKeyedSubscript:v55];
        }

        v53 = [v52 countByEnumeratingWithState:&v85 objects:v103 count:16];
      }

      while (v53);
    }

    v61 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v107 = @"EKEventStore";
      v108 = 2114;
      *v109 = v77;
      _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "[%{public}@] fetchChangesInto: changedObjectIDs %{public}@", buf, 0x16u);
    }

    v35 = "Titleb1}";
  }

  v78[0] = _NSConcreteStackBlock;
  v78[1] = *(v35 + 190);
  v78[2] = sub_10005D908;
  v78[3] = &unk_1000B5E98;
  objc_copyWeak(v84, v72 + 9);
  v79 = v72[6];
  v84[1] = a3;
  v80 = v71;
  v81 = v72[7];
  v62 = v66;
  v82 = v62;
  v63 = v70;
  v83 = v63;
  [v72[4] setCompletion:v78];

  objc_destroyWeak(v84);
  v10 = v67;
LABEL_72:
}

uint64_t sub_10005D908(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  [*(a1 + 32) markChangedObjectIDsConsumedUpToToken:*(a1 + 80)];
  [WeakRetained setLastSequenceNumber:*(a1 + 80)];
  if (*(a1 + 40))
  {
    [*(a1 + 48) removeIdentifiersForDeletedRecordIDs:?];
  }

  v2 = *(a1 + 56);
  if (v2)
  {
    v3 = [v2 calendarIdentifier];
    [WeakRetained setPreviousDefaultTaskCalendar:v3];
  }

  v4 = *(a1 + 64);
  if (v4)
  {
    v5 = [v4 calendarIdentifier];
    [WeakRetained setPreviousDefaultEventCalendar:v5];
  }

  return _objc_release_x1();
}

void sub_10005E2B8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 entityName];
  v6 = [*(a1 + 32) objectForKeyedSubscript:v5];
  if (!v6)
  {
    v12[0] = &off_1000BB7F0;
    v12[1] = &off_1000BB820;
    v13[0] = &off_1000BB808;
    v13[1] = &off_1000BB808;
    v12[2] = &off_1000BB838;
    v13[2] = &off_1000BB808;
    v7 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:3];
    v6 = [v7 mutableCopy];

    [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
  }

  v8 = [NSNumber numberWithUnsignedInt:a3];
  v9 = [v6 objectForKeyedSubscript:v8];

  v10 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v9 integerValue] + 1);
  v11 = [NSNumber numberWithUnsignedInt:a3];
  [v6 setObject:v10 forKeyedSubscript:v11];
}

uint64_t sub_10005EFA4(uint64_t a1, void *a2)
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

    switch((v12 >> 3))
    {
      case 1u:
        v13 = PBReaderReadData();
        v14 = 40;
        goto LABEL_66;
      case 2u:
        v15 = objc_alloc_init(NEKPBCalendarIdentifier);
        objc_storeStrong((a1 + 24), v15);
        v45 = 0;
        v46 = 0;
        if (PBReaderPlaceMark() && sub_100047758(v15, a2))
        {
          goto LABEL_49;
        }

        goto LABEL_88;
      case 3u:
        v23 = 0;
        v24 = 0;
        v25 = 0;
        *(a1 + 112) |= 4u;
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
            v22 = 0;
            goto LABEL_76;
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

LABEL_76:
        v40 = 32;
        goto LABEL_81;
      case 4u:
        v15 = PBReaderReadString();
        if (v15)
        {
          [a1 addMetadataKeys:v15];
        }

        goto LABEL_50;
      case 5u:
        v15 = objc_alloc_init(NEKPBICSWrapperMetadata);
        [a1 addMetadataValues:v15];
        v45 = 0;
        v46 = 0;
        if (PBReaderPlaceMark() && sub_10004A0C8(v15, a2))
        {
LABEL_49:
          PBReaderRecallMark();
LABEL_50:

LABEL_86:
          v43 = [a2 position];
          if (v43 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          continue;
        }

LABEL_88:

        return 0;
      case 6u:
        v13 = PBReaderReadString();
        v14 = 104;
        goto LABEL_66;
      case 7u:
        v13 = PBReaderReadString();
        v14 = 88;
        goto LABEL_66;
      case 8u:
        *(a1 + 112) |= 2u;
        v45 = 0;
        v29 = [a2 position] + 8;
        if (v29 >= [a2 position] && (v30 = objc_msgSend(a2, "position") + 8, v30 <= objc_msgSend(a2, "length")))
        {
          v41 = [a2 data];
          [v41 getBytes:&v45 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 16) = v45;
        goto LABEL_86;
      case 9u:
        v13 = PBReaderReadString();
        v14 = 96;
        goto LABEL_66;
      case 0xAu:
        v13 = PBReaderReadString();
        v14 = 80;
        goto LABEL_66;
      case 0xBu:
        *(a1 + 112) |= 1u;
        v45 = 0;
        v37 = [a2 position] + 8;
        if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 8, v38 <= objc_msgSend(a2, "length")))
        {
          v42 = [a2 data];
          [v42 getBytes:&v45 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 8) = v45;
        goto LABEL_86;
      case 0xCu:
        v13 = PBReaderReadData();
        v14 = 48;
LABEL_66:
        v39 = *(a1 + v14);
        *(a1 + v14) = v13;

        goto LABEL_86;
      case 0xDu:
        v16 = 0;
        v17 = 0;
        v18 = 0;
        *(a1 + 112) |= 8u;
        while (1)
        {
          LOBYTE(v45) = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v45 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v45 & 0x7F) << v16;
          if ((v45 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v11 = v17++ >= 9;
          if (v11)
          {
            v22 = 0;
            goto LABEL_72;
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

LABEL_72:
        v40 = 72;
        goto LABEL_81;
      case 0xEu:
        v31 = 0;
        v32 = 0;
        v33 = 0;
        *(a1 + 112) |= 0x10u;
        while (1)
        {
          LOBYTE(v45) = 0;
          v34 = [a2 position] + 1;
          if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
          {
            v36 = [a2 data];
            [v36 getBytes:&v45 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v33 |= (v45 & 0x7F) << v31;
          if ((v45 & 0x80) == 0)
          {
            break;
          }

          v31 += 7;
          v11 = v32++ >= 9;
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
          v22 = v33;
        }

LABEL_80:
        v40 = 76;
LABEL_81:
        *(a1 + v40) = v22;
        goto LABEL_86;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_86;
    }
  }
}

uint64_t sub_100060C7C(uint64_t a1, void *a2)
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
        v13 = objc_alloc_init(NEKPBDuplicateCheck);
        objc_storeStrong((a1 + 8), v13);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !sub_10003A164(v13, a2))
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

    v13 = objc_alloc_init(NEKPBOccurrenceCache);
    objc_storeStrong((a1 + 16), v13);
    v16 = 0;
    v17 = 0;
    if (!PBReaderPlaceMark() || !sub_100001C6C(v13, a2))
    {
LABEL_28:

      return 0;
    }

    goto LABEL_24;
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_100061C1C(uint64_t a1, void *a2)
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
      if ((v12 >> 3) <= 2)
      {
        break;
      }

      if (v13 == 3)
      {
        v14 = PBReaderReadString();
        v15 = 16;
LABEL_30:
        v19 = *(a1 + v15);
        *(a1 + v15) = v14;

        goto LABEL_33;
      }

      if (v13 != 4)
      {
LABEL_26:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        goto LABEL_33;
      }

      *(a1 + 40) |= 1u;
      v22 = 0;
      v16 = [a2 position] + 8;
      if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 8, v17 <= objc_msgSend(a2, "length")))
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
LABEL_33:
      v21 = [a2 position];
      if (v21 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 1)
    {
      v14 = PBReaderReadString();
      v15 = 32;
    }

    else
    {
      if (v13 != 2)
      {
        goto LABEL_26;
      }

      v14 = PBReaderReadString();
      v15 = 24;
    }

    goto LABEL_30;
  }

  return [a2 hasError] ^ 1;
}

id sub_1000624F8(void *a1)
{
  v1 = a1;
  if (v1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v2 = [v1 sourceIdentifier];
LABEL_9:
      v3 = v2;
      goto LABEL_11;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v2 = [v1 calendarIdentifier];
      goto LABEL_9;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v2 = [v1 uniqueId];
      goto LABEL_9;
    }
  }

  v3 = 0;
LABEL_11:

  return v3;
}

void sub_100062824(uint64_t a1)
{
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v1);
        }

        (*(*(*(&v6 + 1) + 8 * v5) + 16))(*(*(&v6 + 1) + 8 * v5));
        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

void sub_100062F48(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained notifyForDatabaseUpdatesIfNeeded];
}

void sub_100063420(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = [NSNumber numberWithUnsignedInt:?];
  v10 = [v5 objectForKeyedSubscript:v6];

  v7 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v10 integerValue] + 1);
  v8 = *(a1 + 32);
  v9 = [NSNumber numberWithUnsignedInt:a3];
  [v8 setObject:v7 forKeyedSubscript:v9];
}

void sub_100063DFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100063E18(uint64_t a1, void *a2, _BYTE *a3)
{
  v8 = a2;
  v5 = objc_autoreleasePoolPush();
  if ([*(a1 + 32) reminderInWindow:v8])
  {
    if ((*(*(a1 + 56) + 16))())
    {
      v6 = *(a1 + 40);
      v7 = [NEKICSWrapper wrapperForChangeType:1 reminder:v8 oldListIdentifier:0 store:*(a1 + 48)];
      LOBYTE(v6) = [v6 push:v7];

      if ((v6 & 1) == 0)
      {
        *a3 = 1;
        *(*(*(a1 + 64) + 8) + 24) = 0;
      }
    }
  }

  objc_autoreleasePoolPop(v5);
}

void sub_1000645E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  objc_destroyWeak((v27 + 88));
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  objc_destroyWeak((v28 - 96));
  _Unwind_Resume(a1);
}

uint64_t sub_100064620(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100064638(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v15 = a3;
  v79 = a4;
  v78 = a5;
  v77 = a6;
  v82 = a7;
  v75 = a8;
  kdebug_trace();
  v16 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = *(a1 + 32);
    *buf = 138543874;
    v104 = @"REMStore";
    v105 = 2112;
    v106 = v17;
    v107 = 2112;
    v108 = v15;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[%{public}@] fetchChangesInto: sequence numbers [prev: %@ curr:%@]", buf, 0x20u);
  }

  v76 = v15;
  v80 = a1;
  objc_storeStrong((*(*(a1 + 72) + 8) + 40), a7);
  objc_storeStrong((*(*(a1 + 80) + 8) + 40), a8);
  [*(a1 + 40) setTruncated:a2];
  if ([*(a1 + 40) truncated])
  {
    v18 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v104 = @"REMStore";
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[%{public}@] fetchChangesInto: change log truncated", buf, 0xCu);
    }
  }

  else
  {
    v83 = +[NSMutableOrderedSet orderedSetWithCapacity:](NSMutableOrderedSet, "orderedSetWithCapacity:", [v79 count]);
    v19 = +[NSMutableOrderedSet orderedSetWithCapacity:](NSMutableOrderedSet, "orderedSetWithCapacity:", [v78 count]);
    v81 = +[NSMutableOrderedSet orderedSetWithCapacity:](NSMutableOrderedSet, "orderedSetWithCapacity:", [v77 count]);
    v98 = 0u;
    v99 = 0u;
    v96 = 0u;
    v97 = 0u;
    v20 = v79;
    v21 = [v20 countByEnumeratingWithState:&v96 objects:v102 count:16];
    if (v21)
    {
      v22 = *v97;
      do
      {
        for (i = 0; i != v21; i = i + 1)
        {
          if (*v97 != v22)
          {
            objc_enumerationMutation(v20);
          }

          v24 = [*(*(&v96 + 1) + 8 * i) changedObjectID];
          [v83 addObject:v24];
        }

        v21 = [v20 countByEnumeratingWithState:&v96 objects:v102 count:16];
      }

      while (v21);
    }

    v94 = 0u;
    v95 = 0u;
    v93 = 0u;
    v92 = 0u;
    v25 = v78;
    v26 = [v25 countByEnumeratingWithState:&v92 objects:v101 count:16];
    if (v26)
    {
      v27 = *v93;
      do
      {
        for (j = 0; j != v26; j = j + 1)
        {
          if (*v93 != v27)
          {
            objc_enumerationMutation(v25);
          }

          v29 = [*(*(&v92 + 1) + 8 * j) changedObjectID];
          [v19 addObject:v29];
        }

        v26 = [v25 countByEnumeratingWithState:&v92 objects:v101 count:16];
      }

      while (v26);
    }

    v90 = 0u;
    v91 = 0u;
    v88 = 0u;
    v89 = 0u;
    v30 = v25;
    v31 = [v30 countByEnumeratingWithState:&v88 objects:v100 count:16];
    if (v31)
    {
      v32 = *v89;
      do
      {
        for (k = 0; k != v31; k = k + 1)
        {
          if (*v89 != v32)
          {
            objc_enumerationMutation(v30);
          }

          v34 = *(*(&v88 + 1) + 8 * k);
          v35 = [v34 updatedProperties];
          v36 = [v35 containsObject:@"markedForDeletion"];

          if (v36)
          {
            v37 = [v34 changedObjectID];
            v38 = [v82 allKeys];
            v39 = [v38 containsObject:v37];

            if (v39)
            {
              v40 = *(qword_1000D18A8 + 8);
              if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543618;
                v104 = @"REMStore";
                v105 = 2114;
                v106 = v37;
                _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "[%{public}@] fetchChangesInto: found marked as delete reminder %{public}@", buf, 0x16u);
              }

              [v81 addObject:v37];
            }

            else
            {
              v41 = [v37 entityName];
              v42 = +[REMList cdEntityName];
              v43 = [v41 isEqualToString:v42];

              if (v43)
              {
                v44 = +[REMStore eks_storeForSyncing];
                v45 = [v44 fetchListWithObjectID:v37 error:0];
                v46 = v45 == 0;

                if (v46)
                {
                  v47 = *(qword_1000D18A8 + 8);
                  if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138543618;
                    v104 = @"REMStore";
                    v105 = 2114;
                    v106 = v37;
                    _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "[%{public}@] fetchChangesInto: found marked as delete list %{public}@", buf, 0x16u);
                  }

                  [v81 addObject:v37];
                }
              }

              else
              {
                v48 = *(qword_1000D18A8 + 8);
                if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138543618;
                  v104 = @"REMStore";
                  v105 = 2114;
                  v106 = v37;
                  _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "[%{public}@] fetchChangesInto: unhandled object with markedForDeletion update %{public}@", buf, 0x16u);
                }
              }
            }
          }
        }

        v31 = [v30 countByEnumeratingWithState:&v88 objects:v100 count:16];
      }

      while (v31);
    }

    v49 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v104 = @"REMStore";
      _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "[%{public}@] fetchChangesInto: fetching changes for default list (calendar)", buf, 0xCu);
    }

    v50 = [*(v80 + 48) previousDefaultReminderListID];
    v51 = [*(v80 + 56) freshEventStoreFor:@"_fetchChangesInto(Reminders)"];
    v52 = [v51 fetchDefaultListWithError:0];

    if (v52)
    {
      v53 = [v52 objectID];
      if (v50 || [0 isEqual:v53])
      {

        v52 = 0;
      }
    }

    v54 = *(qword_1000D18A8 + 8);
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v104 = @"REMStore";
      v105 = 1024;
      LODWORD(v106) = v52 != 0;
      _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "[%{public}@] fetchChangesInto: did change default list (calendar) [%{BOOL}d]", buf, 0x12u);
    }

    if (v52)
    {
      if (v30)
      {
        v55 = [v52 objectID];
        [v19 addObject:v55];
      }

      else
      {
        v56 = *(qword_1000D18A8 + 8);
        if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
        {
          sub_100075C38(v56, v57, v58, v59, v60, v61, v62, v63);
        }
      }
    }

    v64 = [v83 array];
    [*(v80 + 40) setInserts:v64];

    v65 = [v19 array];
    [*(v80 + 40) setUpdates:v65];

    v66 = [v81 array];
    [*(v80 + 40) setDeletes:v66];

    [*(v80 + 40) setTruncated:0];
    if ([*(v80 + 40) isEmpty])
    {
      v67 = *(qword_1000D18A8 + 8);
      if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v104 = @"REMStore";
        _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "[%{public}@] fetchChangesInto: empty change set", buf, 0xCu);
      }
    }

    else
    {
      v68 = *(v80 + 48);
      v69 = [v83 array];
      v70 = [v19 array];
      v71 = [v81 array];
      v72 = [v68 _aggregateIntoInserts:v69 updates:v70 deletes:v71];

      v73 = *(qword_1000D18A8 + 8);
      if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v104 = @"REMStore";
        v105 = 2114;
        v106 = v72;
        _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_DEFAULT, "[%{public}@] fetchChangesInto: changedObjectIDs %{public}@", buf, 0x16u);
      }
    }

    v84[0] = _NSConcreteStackBlock;
    v84[1] = 3221225472;
    v84[2] = sub_100065184;
    v84[3] = &unk_1000B5410;
    objc_copyWeak(&v87, (v80 + 88));
    v85 = v76;
    v74 = v52;
    v86 = v74;
    [*(v80 + 40) setCompletion:v84];

    objc_destroyWeak(&v87);
  }

  dispatch_semaphore_signal(*(v80 + 64));
}

void sub_100065184(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained saveChangeTrackingStateMap:*(a1 + 32)];
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = [v2 objectID];
    [WeakRetained setPreviousDefaultReminderListID:v3];
  }
}

void sub_100065C6C(uint64_t a1)
{
  v2 = +[REMChangeTracking internalTransactionAuthorKeysToExclude];
  v5 = [v2 mutableCopy];

  [v5 addObject:*(*(a1 + 32) + 8)];
  v3 = [v5 copy];
  v4 = qword_1000D1868;
  qword_1000D1868 = v3;
}

NEKReminderChangeTrackingState *sub_100065F78(uint64_t a1, void *a2)
{
  v3 = [a2 objectID];
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = [*(a1 + 48) transactionAuthorsToExclude];
  v7 = [v4 provideChangeTrackingForAccountID:v3 clientName:v5 transactionAuthorKeysToExclude:v6];

  v8 = [NEKReminderChangeTrackingState alloc];
  v9 = +[_REMChangeUniversalToken universalToken];
  v10 = [(NEKReminderChangeTrackingState *)v8 initWithChangeTracking:v7 lastChangeToken:v9];

  return v10;
}

NEKReminderChangeTrackingState *sub_100066124(uint64_t a1, void *a2)
{
  v3 = [a2 objectID];
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = [*(a1 + 48) transactionAuthorsToExclude];
  v7 = [v4 provideChangeTrackingForAccountID:v3 clientName:v5 transactionAuthorKeysToExclude:v6];

  v8 = [v7 currentChangeTokenWithError:0];
  if (!v8)
  {
    v8 = +[_REMChangeUniversalToken universalToken];
  }

  v9 = [[NEKReminderChangeTrackingState alloc] initWithChangeTracking:v7 lastChangeToken:v8];

  return v9;
}

uint64_t sub_100066350(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [v3 count]);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v27;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v27 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v26 + 1) + 8 * i) objectID];
        [v4 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v7);
  }

  v11 = +[NSMutableSet set];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v12 = [*(a1 + 32) allKeys];
  v13 = [v12 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v23;
    do
    {
      for (j = 0; j != v14; j = j + 1)
      {
        if (*v23 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v22 + 1) + 8 * j);
        if (([v4 containsObject:v17] & 1) == 0)
        {
          [v11 addObject:v17];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v14);
  }

  v18 = [v11 copy];
  v19 = *(a1 + 40);
  v20 = *(v19 + 32);
  *(v19 + 32) = v18;

  return 1;
}

NEKReminderChangeTrackingState *sub_10006656C(uint64_t a1, void *a2)
{
  v3 = [a2 objectID];
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = [*(a1 + 48) transactionAuthorsToExclude];
  v7 = [v4 provideChangeTrackingForAccountID:v3 clientName:v5 transactionAuthorKeysToExclude:v6];

  v8 = [*(a1 + 56) objectForKeyedSubscript:v3];
  if (!v8)
  {
    v8 = +[_REMChangeUniversalToken universalToken];
  }

  v9 = [[NEKReminderChangeTrackingState alloc] initWithChangeTracking:v7 lastChangeToken:v8];

  return v9;
}

void sub_100066C24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100066C3C(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = [v8 changeTracking];
  v100 = v8;
  v10 = [v8 lastChangeToken];
  v130 = 0;
  v11 = [v9 fetchHistoryAfterToken:v10 error:&v130];
  v12 = v130;

  v96 = v11;
  if (v11)
  {
    v97 = a1;
    v92 = a4;
    v128[0] = _NSConcreteStackBlock;
    v128[1] = 3221225472;
    v128[2] = sub_100067A98;
    v128[3] = &unk_1000B60A0;
    v93 = v7;
    v13 = v7;
    v129 = v13;
    v14 = [NSPredicate predicateWithBlock:v128];
    v15 = [v11 inserts];
    v95 = [v15 filteredArrayUsingPredicate:v14];

    v16 = [v11 updates];
    v17 = [v16 filteredArrayUsingPredicate:v14];

    v18 = [v11 deletes];
    v91 = v14;
    v94 = [v18 filteredArrayUsingPredicate:v14];

    v19 = *(qword_1000D18A8 + 8);
    v101 = v13;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      objb = v19;
      v102 = [v100 lastChangeToken];
      v109 = [v11 inserts];
      v104 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v109 count]);
      v20 = [v11 updates];
      v21 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v20 count]);
      v22 = [v11 deletes];
      v23 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v22 count]);
      v24 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v95 count]);
      v25 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v17 count]);
      v26 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v94 count]);
      *buf = 138545154;
      v135 = v101;
      v136 = 2114;
      v137 = v102;
      v138 = 2114;
      v139 = v104;
      v140 = 2114;
      v141 = v21;
      v142 = 2114;
      v143 = v23;
      v144 = 2114;
      v145 = v24;
      v146 = 2114;
      v147 = v25;
      v148 = 2114;
      v149 = v26;
      _os_log_impl(&_mh_execute_header, objb, OS_LOG_TYPE_DEFAULT, "Filtered change set summary for account %{public}@ since token %{public}@: before: i=%{public}@ u=%{public}@ d=%{public}@; after: i=%{public}@ u=%{public}@ d=%{public}@", buf, 0x52u);

      v13 = v101;
    }

    v126 = 0u;
    v127 = 0u;
    v124 = 0u;
    v125 = 0u;
    v27 = v17;
    v98 = v27;
    v105 = [v27 countByEnumeratingWithState:&v124 objects:v133 count:16];
    if (v105)
    {
      v103 = *v125;
      do
      {
        v28 = 0;
        do
        {
          if (*v125 != v103)
          {
            objc_enumerationMutation(v27);
          }

          v29 = *(*(&v124 + 1) + 8 * v28);
          v30 = [v29 changedObjectID];
          v111 = v29;
          v31 = [v29 updatedProperties];
          v110 = v28;
          if (![v31 containsObject:@"markedForDeletion"])
          {
            v49 = 0;
LABEL_34:

            goto LABEL_35;
          }

          v32 = [v30 entityName];
          v33 = +[REMReminder cdEntityName];
          v34 = [v32 isEqualToString:v33];

          if (v34)
          {
            v35 = [v100 changeTracking];
            v36 = objc_opt_class();
            v123 = v12;
            v31 = [v35 fetchAuxiliaryChangeInfosOfType:v36 withChangeObject:v111 error:&v123];
            v99 = v123;

            v37 = *(qword_1000D18A8 + 8);
            if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
            {
              v38 = v37;
              v39 = [v31 auxiliaryChangeInfos];
              *buf = 138412546;
              v135 = v39;
              v136 = 2114;
              v137 = v30;
              _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Fetched auxiliary delete change info %@ for object ID %{public}@", buf, 0x16u);
            }

            v13 = v101;
            if (v31)
            {
              v122 = 0u;
              v120 = 0u;
              v121 = 0u;
              v119 = 0u;
              obj = [v31 auxiliaryChangeInfos];
              v40 = [obj countByEnumeratingWithState:&v119 objects:v132 count:16];
              if (v40)
              {
                v41 = v40;
                v42 = *v120;
                while (2)
                {
                  for (i = 0; i != v41; i = i + 1)
                  {
                    if (*v120 != v42)
                    {
                      objc_enumerationMutation(obj);
                    }

                    v44 = *(*(&v119 + 1) + 8 * i);
                    v45 = [v44 reminderIdentifier];
                    v46 = [v30 uuid];
                    v47 = [v46 UUIDString];
                    v48 = [v45 isEqualToString:v47];

                    if (v48)
                    {
                      v50 = [v44 oldListIdentifier];
                      v51 = *(qword_1000D18A8 + 8);
                      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 138543618;
                        v135 = v50;
                        v136 = 2114;
                        v137 = v30;
                        _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "Old list ID %{public}@ for deleted reminder %{public}@", buf, 0x16u);
                      }

                      [*(v97 + 32) setObject:v50 forKeyedSubscript:v30];

                      v49 = 1;
                      v13 = v101;
                      goto LABEL_28;
                    }
                  }

                  v41 = [obj countByEnumeratingWithState:&v119 objects:v132 count:16];
                  if (v41)
                  {
                    continue;
                  }

                  break;
                }

                v49 = 0;
                v13 = v101;
LABEL_28:
                v27 = v98;
              }

              else
              {
                v49 = 0;
              }

              v12 = v99;
            }

            else
            {
              v52 = *(qword_1000D18A8 + 8);
              if (!os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
              {
                v49 = 0;
                v28 = v110;
                v12 = v99;
                goto LABEL_34;
              }

              *buf = 138412290;
              v135 = v99;
              v77 = v52;
              v12 = v99;
              _os_log_error_impl(&_mh_execute_header, v77, OS_LOG_TYPE_ERROR, "Error fetching auxiliary change info %@", buf, 0xCu);
              v49 = 0;
            }

            v28 = v110;
            goto LABEL_34;
          }

          v49 = 0;
          v13 = v101;
          v28 = v110;
LABEL_35:
          v53 = [v111 updatedProperties];
          v54 = [v53 containsObject:@"list"];
          if ((v49 & 1) != 0 || !v54)
          {
            v60 = v12;
          }

          else
          {
            v55 = [v30 entityName];
            v56 = +[REMReminder cdEntityName];
            v57 = [v55 isEqualToString:v56];

            if (!v57)
            {
              v28 = v110;
              goto LABEL_59;
            }

            v58 = [v100 changeTracking];
            v59 = objc_opt_class();
            v118 = v12;
            v53 = [v58 fetchAuxiliaryChangeInfosOfType:v59 withChangeObject:v111 error:&v118];
            v60 = v118;

            v61 = *(qword_1000D18A8 + 8);
            if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
            {
              v62 = v61;
              v63 = [v53 auxiliaryChangeInfos];
              *buf = 138412546;
              v135 = v63;
              v136 = 2114;
              v137 = v30;
              _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "Fetched auxiliary move change info %@ for object ID %{public}@", buf, 0x16u);
            }

            if (v53)
            {
              obja = v60;
              v116 = 0u;
              v117 = 0u;
              v114 = 0u;
              v115 = 0u;
              v112 = v53;
              v64 = [v53 auxiliaryChangeInfos];
              v65 = [v64 countByEnumeratingWithState:&v114 objects:v131 count:16];
              if (v65)
              {
                v66 = v65;
                v67 = *v115;
                while (2)
                {
                  for (j = 0; j != v66; j = j + 1)
                  {
                    if (*v115 != v67)
                    {
                      objc_enumerationMutation(v64);
                    }

                    v69 = *(*(&v114 + 1) + 8 * j);
                    v70 = [v69 reminderIdentifier];
                    v71 = [v30 uuid];
                    v72 = [v71 UUIDString];
                    v73 = [v70 isEqualToString:v72];

                    if (v73)
                    {
                      v74 = [v69 oldListIdentifier];
                      v75 = *(qword_1000D18A8 + 8);
                      if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 138543618;
                        v135 = v74;
                        v136 = 2114;
                        v137 = v30;
                        _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEFAULT, "Old list ID %{public}@ for moved reminder %{public}@", buf, 0x16u);
                      }

                      [*(v97 + 32) setObject:v74 forKeyedSubscript:v30];

                      v13 = v101;
                      goto LABEL_55;
                    }
                  }

                  v66 = [v64 countByEnumeratingWithState:&v114 objects:v131 count:16];
                  if (v66)
                  {
                    continue;
                  }

                  break;
                }
              }

              v13 = v101;
LABEL_55:
              v27 = v98;
              v28 = v110;
              v53 = v112;
              v60 = obja;
            }

            else
            {
              v76 = *(qword_1000D18A8 + 8);
              v28 = v110;
              if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v135 = v60;
                _os_log_error_impl(&_mh_execute_header, v76, OS_LOG_TYPE_ERROR, "Error fetching auxiliary change info %@", buf, 0xCu);
              }
            }
          }

          v12 = v60;
LABEL_59:

          v28 = v28 + 1;
        }

        while (v28 != v105);
        v78 = [v27 countByEnumeratingWithState:&v124 objects:v133 count:16];
        v105 = v78;
      }

      while (v78);
    }

    a1 = v97;
    [*(v97 + 40) addObjectsFromArray:v95];
    [*(v97 + 48) addObjectsFromArray:v27];
    [*(v97 + 56) addObjectsFromArray:v94];
    v79 = *(*(v97 + 72) + 8);
    a4 = v92;
    v7 = v93;
    if ((*(v79 + 24) & 1) == 0)
    {
      if (![v96 isTruncated])
      {
        v81 = [v96 error];
        *(*(*(v97 + 72) + 8) + 24) = v81 != 0;

        goto LABEL_71;
      }

      v79 = *(*(v97 + 72) + 8);
    }

    *(v79 + 24) = 1;
LABEL_71:
    if (*(*(*(v97 + 72) + 8) + 24))
    {
      v82 = [v100 changeTracking];
      v113 = v12;
      v83 = [v82 currentChangeTokenWithError:&v113];
      v84 = v113;

      v85 = *(qword_1000D18A8 + 8);
      if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
      {
        v89 = v85;
        v90 = [v100 lastChangeToken];
        *buf = 138543874;
        v135 = v13;
        v136 = 2114;
        v137 = v90;
        v138 = 2114;
        v139 = v83;
        _os_log_error_impl(&_mh_execute_header, v89, OS_LOG_TYPE_ERROR, "Resetting to current change token for account %{public}@ because change history is truncated (lastChangeToken=%{public}@, latestChangeToken=%{public}@).", buf, 0x20u);
      }

      v12 = v84;
    }

    else
    {
      v83 = [v96 lastChangeTokenForAccountID:v13];
      v86 = *(qword_1000D18A8 + 8);
      if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
      {
        v87 = v86;
        v88 = [v100 lastChangeToken];
        *buf = 138543874;
        v135 = v13;
        v136 = 2114;
        v137 = v88;
        v138 = 2114;
        v139 = v83;
        _os_log_impl(&_mh_execute_header, v87, OS_LOG_TYPE_DEFAULT, "Forward to latest change token for account %{public}@ (lastChangeToken=%{public}@, latestChangeToken=%{public}@).", buf, 0x20u);
      }
    }

    if (v83)
    {
      [*(v97 + 64) setChangeToken:v83 forAccountID:v13];
    }

    goto LABEL_80;
  }

  v80 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543874;
    v135 = v7;
    v136 = 2114;
    v137 = v100;
    v138 = 2112;
    v139 = v12;
    _os_log_error_impl(&_mh_execute_header, v80, OS_LOG_TYPE_ERROR, "Error fetching changes for account %{public}@ with state %{public}@, assuming changes are truncated: %@", buf, 0x20u);
  }

  *(*(*(a1 + 72) + 8) + 24) = 1;
LABEL_80:
  if (*(*(*(a1 + 72) + 8) + 24) == 1)
  {
    *a4 = 1;
  }
}

id sub_100067A98(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 transaction];
  v4 = [v3 accountID];
  v5 = [v2 isEqual:v4];

  return v5;
}

void sub_100067D78(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 lastChangeToken];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
}

uint64_t sub_1000681A0(uint64_t a1, void *a2)
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
      if ((v12 >> 3) <= 3)
      {
        if (v13 == 1)
        {
          v14 = PBReaderReadString();
          v15 = 32;
LABEL_45:
          v26 = *(a1 + v15);
          *(a1 + v15) = v14;

          goto LABEL_46;
        }

        if (v13 == 2)
        {
          v14 = PBReaderReadString();
          v15 = 40;
          goto LABEL_45;
        }

        if (v13 != 3)
        {
          goto LABEL_40;
        }

        *(a1 + 64) |= 1u;
        v29 = 0;
        v16 = [a2 position] + 8;
        if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 8, v17 <= objc_msgSend(a2, "length")))
        {
          v28 = [a2 data];
          [v28 getBytes:&v29 range:{objc_msgSend(a2, "position"), 8}];

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
        if (v13 <= 5)
        {
          if (v13 == 4)
          {
            v14 = PBReaderReadString();
            v15 = 16;
          }

          else
          {
            if (v13 != 5)
            {
              goto LABEL_40;
            }

            v14 = PBReaderReadString();
            v15 = 24;
          }

          goto LABEL_45;
        }

        if (v13 == 6)
        {
          v14 = PBReaderReadString();
          v15 = 56;
          goto LABEL_45;
        }

        if (v13 != 7)
        {
LABEL_40:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_46;
        }

        v18 = 0;
        v19 = 0;
        v20 = 0;
        *(a1 + 64) |= 2u;
        while (1)
        {
          v31 = 0;
          v21 = [a2 position] + 1;
          if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 1, v22 <= objc_msgSend(a2, "length")))
          {
            v23 = [a2 data];
            [v23 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v20 |= (v31 & 0x7F) << v18;
          if ((v31 & 0x80) == 0)
          {
            break;
          }

          v18 += 7;
          v11 = v19++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_51;
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

LABEL_51:
        *(a1 + 48) = v24;
      }

LABEL_46:
      v27 = [a2 position];
    }

    while (v27 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_100069B24(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = objc_autoreleasePoolPush();
  v4 = [v6 objectID];
  if (v4)
  {
    v5 = [*(a1 + 32) identifierForRecordID:v4];

    if (!v5)
    {
      [*(a1 + 40) _deleteEventById:v4];
    }
  }

  objc_autoreleasePoolPop(v3);
}

void sub_10006A27C(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 8u);
}

void sub_10006A328(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = sub_10006ABB4();
  os_unfair_lock_lock(&unk_1000D1878);
  v19 = v3;
  v18 = [NSString stringWithFormat:@"%@<%p>", v3, v4];
  [v5 setObject:v4 forKey:?];
  v6 = [v5 keyEnumerator];
  v7 = [v6 allObjects];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v21;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v20 + 1) + 8 * i);
        v15 = [v5 objectForKey:v14];

        if (v15)
        {
          v16 = *(qword_1000D18A8 + 8);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138543362;
            v25 = v14;
            _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "EKa: Live EKEventStore: %{public}@", buf, 0xCu);
          }

          ++v11;
        }

        else
        {
          [v5 removeObjectForKey:v14];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v10);
  }

  else
  {
    v11 = 0;
  }

  v17 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v25) = v11;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "EKa: Total stores: %d", buf, 8u);
  }

  os_unfair_lock_unlock(&unk_1000D1878);
}

id sub_10006ABB4()
{
  if (qword_1000D1880 != -1)
  {
    sub_1000762A8();
  }

  v1 = qword_1000D1888;

  return v1;
}

void sub_10006ABF8(id a1)
{
  qword_1000D1888 = [[NSMapTable alloc] initWithKeyOptions:0 valueOptions:5 capacity:20];

  _objc_release_x1();
}

void start()
{
  v0 = dispatch_get_global_queue(33, 0);
  v1 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, v0);
  v2 = qword_1000D1890;
  qword_1000D1890 = v1;

  v3 = dispatch_source_create(&_dispatch_source_type_signal, 3uLL, 0, v0);
  v4 = qword_1000D1898;
  qword_1000D1898 = v3;

  v5 = dispatch_get_global_queue(17, 0);
  v6 = dispatch_source_create(&_dispatch_source_type_signal, 0x1EuLL, 0, v5);
  v7 = qword_1000D18A0;
  qword_1000D18A0 = v6;

  dispatch_source_set_event_handler(qword_1000D1890, &stru_1000B61A8);
  dispatch_source_set_event_handler(qword_1000D1898, &stru_1000B61C8);
  dispatch_source_set_event_handler(qword_1000D18A0, &stru_1000B61E8);
  dispatch_activate(qword_1000D1890);
  dispatch_activate(qword_1000D1898);
  dispatch_activate(qword_1000D18A0);
  signal(30, 1);
  signal(3, 1);
  signal(15, 1);
  sub_100004B40(21);
  sub_100004B60(21);
  v8 = objc_autoreleasePoolPush();
  v9 = +[NEKEnvironment instance];
  v10 = [[NEKDaemon alloc] initWithEnvironment:v9];
  [v9 setDaemon:v10];

  objc_autoreleasePoolPop(v8);
  dispatch_main();
}

void sub_10006ADCC(id a1)
{
  v1 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "SIGTERM, Bye bye.", v2, 2u);
  }

  exit(0);
}

void sub_10006AE3C(id a1)
{
  v1 = *(qword_1000D18A8 + 8);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "SIGQUIT, Bye bye.", v2, 2u);
  }

  xpc_transaction_exit_clean();
}

void sub_10006AEB8(id a1)
{
  if (os_log_type_enabled(&_os_log_default, 0x90u))
  {
    sub_1000762BC();
  }
}

char *sub_10006B190(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v18[0] = @"currentActivityState";
    v5 = [WeakRetained currentActivityState];
    if (v5 <= 5)
    {
      v6 = (&off_1000B6258)[v5];
    }

    else
    {
      v6 = "OUT_OF_BOUNDS";
    }

    v8 = [NSString stringWithUTF8String:v6];
    v18[1] = @"activityStateChangedDate";
    v19[0] = v8;
    v9 = [v4 activityStateChangedDate];
    v10 = v9;
    v11 = @"N/A";
    if (v9)
    {
      v11 = v9;
    }

    v19[1] = v11;
    v12 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:2];
    v17 = 0;
    v7 = [NSPropertyListSerialization dataWithPropertyList:v12 format:200 options:0 error:&v17];
    v13 = v17;

    if (!v7)
    {
      v14 = [[NSString alloc] initWithFormat:@"Error while generating state: %@", v13];
      v7 = [v14 dataUsingEncoding:4];
    }
  }

  else
  {
    v7 = 0;
  }

  v15 = malloc_type_malloc([v7 length] + 200, 0x1000040BEF03554uLL);
  *v15 = 1;
  snprintf(v15 + 136, 0x40uLL, "NDTActivity '%s'", [v4 activityIdentifier]);
  *(v15 + 1) = [v7 length];
  [v7 getBytes:v15 + 200 length:{objc_msgSend(v7, "length")}];

  objc_autoreleasePoolPop(v2);
  return v15;
}

void sub_10006B57C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_10006B5A0(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  state = xpc_activity_get_state(v3);
  [WeakRetained _markActivityStateChanged:state];
  v6 = [WeakRetained log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [WeakRetained activityIdentifier];
    if (state <= 5)
    {
      v8 = (&off_1000B6258)[state];
    }

    else
    {
      v8 = "OUT_OF_BOUNDS";
    }

    v23 = 136315394;
    v24 = v7;
    v25 = 2080;
    v26 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Starting checkin activity state for %s: %s", &v23, 0x16u);
  }

  if (state == 2)
  {
    v12 = +[NSDate date];
    v13 = [WeakRetained estimatedFireDate];

    if (v13)
    {
      v14 = [WeakRetained estimatedFireDate];
      [v12 timeIntervalSinceDate:v14];
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    v17 = [WeakRetained log];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [WeakRetained activityIdentifier];
      v23 = 136315394;
      v24 = v18;
      v25 = 2048;
      v26 = v16;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Running %s (late by: %.02f)", &v23, 0x16u);
    }

    [WeakRetained setEstimatedFireDate:0];
    [WeakRetained _setState:4];
    v19 = +[NSDate date];
    [WeakRetained setLastFired:v19];

    [WeakRetained _startDeferralPolling];
    [*(a1 + 32) activityRun:WeakRetained];
  }

  else if (state)
  {
    v12 = [WeakRetained log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100076304(WeakRetained, state, v12);
    }
  }

  else
  {
    v9 = [WeakRetained activityCondition];
    [v9 lock];

    [WeakRetained _setActivity:v3];
    v10 = [WeakRetained activityCondition];
    [v10 broadcast];

    v11 = [WeakRetained activityCondition];
    [v11 unlock];

    v12 = [WeakRetained _currentCriteria];
    if (v12)
    {
      xpc_activity_set_criteria(v3, v12);
    }

    [WeakRetained setWaitingForCheckin:0];
  }

  v20 = [WeakRetained log];
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = [WeakRetained activityIdentifier];
    if (state <= 5)
    {
      v22 = (&off_1000B6258)[state];
    }

    else
    {
      v22 = "OUT_OF_BOUNDS";
    }

    v23 = 136315394;
    v24 = v21;
    v25 = 2080;
    v26 = v22;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Completed checkin activity state for %s: %s", &v23, 0x16u);
  }
}

void sub_10006C278(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = objc_loadWeakRetained(WeakRetained + 3);
  if (v1)
  {
    v2 = objc_opt_respondsToSelector();
  }

  else
  {
    v2 = 0;
  }

  v3 = [WeakRetained activity];
  should_defer = xpc_activity_should_defer(v3);

  if (should_defer && (v2 & 1) != 0)
  {
    [v1 activityDefer:WeakRetained];
  }
}

uint64_t sub_10006C858(uint64_t a1, void *a2)
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
        if (v13 != 1)
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

          v21 = 0;
          v22 = 0;
          v23 = 0;
          *(a1 + 36) |= 4u;
          while (1)
          {
            v42 = 0;
            v24 = [a2 position] + 1;
            if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
            {
              v26 = [a2 data];
              [v26 getBytes:&v42 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v23 |= (v42 & 0x7F) << v21;
            if ((v42 & 0x80) == 0)
            {
              break;
            }

            v21 += 7;
            v11 = v22++ >= 9;
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
            v20 = v23;
          }

LABEL_66:
          v37 = 32;
          goto LABEL_67;
        }

        v27 = PBReaderReadString();
        v28 = 24;
      }

      else
      {
        if (v13 != 3)
        {
          if (v13 == 4)
          {
            v29 = 0;
            v30 = 0;
            v31 = 0;
            *(a1 + 36) |= 1u;
            while (1)
            {
              v41 = 0;
              v32 = [a2 position] + 1;
              if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
              {
                v34 = [a2 data];
                [v34 getBytes:&v41 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v31 |= (v41 & 0x7F) << v29;
              if ((v41 & 0x80) == 0)
              {
                break;
              }

              v29 += 7;
              v11 = v30++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_58;
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

LABEL_58:
            v37 = 16;
          }

          else
          {
            if (v13 != 5)
            {
              goto LABEL_53;
            }

            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 36) |= 2u;
            while (1)
            {
              v40 = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v40 & 0x7F) << v14;
              if ((v40 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
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
              v20 = v16;
            }

LABEL_62:
            v37 = 20;
          }

LABEL_67:
          *(a1 + v37) = v20;
          goto LABEL_68;
        }

        v27 = PBReaderReadString();
        v28 = 8;
      }

      v35 = *(a1 + v28);
      *(a1 + v28) = v27;

LABEL_68:
      v38 = [a2 position];
    }

    while (v38 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_10006D788(uint64_t a1, void *a2)
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
          v22 = 8;
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

          v21 = PBReaderReadString();
          v22 = 24;
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
          v31 = 20;
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
          v31 = 16;
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

uint64_t sub_10006E388(uint64_t a1, void *a2)
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
        LOBYTE(v31[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v31 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v31[0] & 0x7F) << v5;
        if ((v31[0] & 0x80) == 0)
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
        break;
      }

      if (v13 == 2)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        *(a1 + 24) |= 1u;
        while (1)
        {
          LOBYTE(v31[0]) = 0;
          v18 = [a2 position] + 1;
          if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
          {
            v20 = [a2 data];
            [v20 getBytes:v31 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v17 |= (v31[0] & 0x7F) << v15;
          if ((v31[0] & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v11 = v16++ >= 9;
          if (v11)
          {
            v21 = 0;
            goto LABEL_46;
          }
        }

        if ([a2 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v17;
        }

LABEL_46:
        v28 = 16;
LABEL_51:
        *(a1 + v28) = v21;
        goto LABEL_52;
      }

      if (v13 == 1)
      {
        v14 = objc_alloc_init(NEKPBSourceAttributes);
        objc_storeStrong((a1 + 8), v14);
        v31[0] = 0;
        v31[1] = 0;
        if (!PBReaderPlaceMark() || !sub_100033758(v14, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_52:
      v29 = [a2 position];
      if (v29 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v22 = 0;
    v23 = 0;
    v24 = 0;
    *(a1 + 24) |= 2u;
    while (1)
    {
      LOBYTE(v31[0]) = 0;
      v25 = [a2 position] + 1;
      if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
      {
        v27 = [a2 data];
        [v27 getBytes:v31 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v24 |= (v31[0] & 0x7F) << v22;
      if ((v31[0] & 0x80) == 0)
      {
        break;
      }

      v22 += 7;
      v11 = v23++ >= 9;
      if (v11)
      {
        v21 = 0;
        goto LABEL_50;
      }
    }

    if ([a2 hasError])
    {
      v21 = 0;
    }

    else
    {
      v21 = v24;
    }

LABEL_50:
    v28 = 20;
    goto LABEL_51;
  }

  return [a2 hasError] ^ 1;
}

void sub_10006EC9C(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Error fetching local account: %{public}@", &v2, 0xCu);
}

void sub_10006ED14(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Error fetching lists in local account: %{public}@", &v2, 0xCu);
}

void sub_10006EDA0(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = [[NSString alloc] initWithData:a2 encoding:4];
  v5 = sub_10002CDF8(v4);
  v6 = 138543362;
  v7 = v5;
  _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Adding ICS to wrapper to send: %{public}@", &v6, 0xCu);
}

void sub_10006EE70(uint8_t *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = [a3 remObjectID];
  *a1 = 138543362;
  *a4 = v8;
  _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Reminder %{public}@ does not have daCalendarItemUniqueIdentifier. Falling back to use REMObjectID.", a1, 0xCu);
}

void sub_10006EEF4(uint64_t a1, NSObject *a2)
{
  v2 = 136315394;
  v3 = "+[NEKSourceID(Reminder) accountForStore:identifier:]";
  v4 = 2114;
  v5 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Unable to create UUID for %s %{public}@", &v2, 0x16u);
}

void sub_10006EF80(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error fetching account. Account's persistent ID: [%{public}@]", &v2, 0xCu);
}

void sub_10006EFF8(uint64_t a1, void *a2)
{
  v2 = *(*a1 + 80);
  v3 = a2;
  v4 = [v2 pathComponents];
  v5 = [v4 lastObject];
  v6 = 138412290;
  v7 = v5;
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "ROLLBACK attempted without an active transaction (autocommit mode is on) for [%@]", &v6, 0xCu);
}

void sub_10006F0BC(uint64_t a1, void *a2, int a3)
{
  v4 = *(*a1 + 80);
  v5 = a2;
  v6 = [v4 pathComponents];
  v7 = [v6 lastObject];
  v8[0] = 67109378;
  v8[1] = a3;
  v9 = 2112;
  v10 = v7;
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "ROLLBACK failed during an active transaction (autocommit mode is off) with errCode [%d] for [%@]", v8, 0x12u);
}

void sub_10006F190(uint64_t a1, void *a2)
{
  v2 = *(*a1 + 80);
  v3 = a2;
  v4 = [v2 pathComponents];
  v5 = [v4 lastObject];
  v6 = 138412290;
  v7 = v5;
  _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "ROLLBACK succeeded during an active transaction (autocommit mode is off) for [%@]", &v6, 0xCu);
}

void sub_10006F2F0(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = [a2 identifier];
  v7 = 138412546;
  v8 = v6;
  v9 = 2112;
  v10 = a3;
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Task failed to submit request: %@ with error: %@", &v7, 0x16u);
}

void sub_10006F534(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to serialize report data: %@", &v2, 0xCu);
}

void sub_10006F5AC(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to write data to disk: %@, path = %@", &v3, 0x16u);
}

void sub_10006F634(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 watchOnlyOccurrences];
  [v4 count];
  v5 = [a2 phoneOnlyOccurrences];
  [v5 count];
  sub_1000171D8();
  sub_1000171F0(&_mh_execute_header, v6, v7, "Detected drift, watchOnly = %ld, phoneOnly = %ld", v8, v9, v10, v11, v12);
}

void sub_10006F6F0(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 duplicatedSources];
  [v4 count];
  v5 = [a2 duplicatedCalendars];
  [v5 count];
  sub_1000171D8();
  sub_1000171F0(&_mh_execute_header, v6, v7, "Detected duplication, sources = %ld, calendars = %ld", v8, v9, v10, v11, v12);
}

void sub_10006F7AC(void *a1, void *a2)
{
  v4 = a1;
  v5 = 138543874;
  v6 = @"EKEventStore";
  v7 = 2048;
  v8 = [sub_100022058() dirtyMemory];
  v9 = 2048;
  v10 = [a2 wallTime] / 1000000000.0;
  _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "[%{public}@] saveEventStore: memory delta [%lld] database save time [%fs] #perf", &v5, 0x20u);
}

void sub_10006F884()
{
  sub_100022000();
  sub_100021FF4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10006F908(os_log_t log)
{
  v1 = 138543362;
  v2 = @"EKEventStore";
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "[%{public}@] getDefaultTaskCalendar: ignoring default Task calendar, ReminderKit is enabled", &v1, 0xCu);
}

void sub_10006F9CC()
{
  sub_100022064();
  v2 = v1;
  v3 = [sub_10002204C() eks_debugDesc];
  sub_100021FA8();
  sub_100021FBC();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_10006FA70()
{
  sub_100022064();
  v2 = v1;
  v3 = [sub_10002204C() eks_debugDesc];
  sub_100021FA8();
  sub_100021FBC();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_10006FB7C()
{
  sub_100022064();
  v2 = v1;
  v3 = [sub_10002204C() sourceIdentifier];
  sub_100021FA8();
  sub_100021FBC();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_10006FC20()
{
  sub_100022064();
  v2 = v1;
  v3 = [sub_10002204C() sourceIdentifier];
  sub_100021FA8();
  sub_100021FBC();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_10006FCC4()
{
  sub_100022064();
  v2 = v1;
  v3 = [sub_10002204C() sourceIdentifier];
  sub_100021FA8();
  sub_100021FBC();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_10006FDD8(uint64_t a1)
{
  LODWORD(v3) = 138543618;
  *(&v3 + 4) = *(a1 + 56);
  sub_100022000();
  *v4 = v1;
  sub_10002202C(&_mh_execute_header, v1, v2, "Error saving updated calendar (%{public}@): %{public}@", v3, DWORD2(v3), *&v4[2]);
}

void sub_100070108(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = [a3 calendarIdentifier];
  sub_100022000();
  sub_100021FBC();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x20u);
}

void sub_1000701CC(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = [a3 calendarIdentifier];
  sub_100022000();
  sub_100021FBC();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x20u);
}

void sub_100070290(uint8_t *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = [NSString alloc];
  v9 = [a3 ICSData];
  v10 = [v8 initWithData:v9 encoding:4];
  v11 = sub_10002CDF8(v10);
  *a1 = 138543362;
  *a4 = v11;
  _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "recv: %{public}@", a1, 0xCu);
}

void sub_100070358(_DWORD *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = [a3 calendarIdentifier];
  *a1 = 138543362;
  *a4 = v8;
  sub_100022070(&_mh_execute_header, v9, v10, "performUpdateWithICSWrappers: Calendar %{public}@ does not exist!");
}

void sub_1000705BC(void *a1)
{
  v2 = a1;
  v3 = [sub_100022058() objectID];
  sub_100021FCC();
  sub_10002200C(&_mh_execute_header, v4, v5, "Error deleting item: %{public}@", v6, v7, v8, v9, v10);
}

void sub_1000706B4(_DWORD *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = [a3 objectID];
  *a1 = 138543362;
  *a4 = v8;
  sub_100022070(&_mh_execute_header, v9, v10, "Error deleting item: %{public}@");
}

void sub_100070860(void *a1)
{
  v2 = a1;
  v3 = sub_100022058();
  v4 = sub_10002CDF8(v3);
  sub_100021FCC();
  sub_10002200C(&_mh_execute_header, v5, v6, "Could not create calendar wrapper for entity: %{public}@", v7, v8, v9, v10, v11);
}

void sub_1000709C0(void *a1)
{
  v2 = a1;
  sub_100022058();
  objc_opt_class();
  sub_100021FCC();
  v4 = v3;
  sub_10002200C(&_mh_execute_header, v5, v6, "Attempt to create wrapper for unknown type: %{public}@", v7, v8, v9, v10, v11);
}

void sub_100070D2C(void *a1)
{
  v2 = a1;
  v3 = [sub_100022058() storeIdentifier];
  sub_100021FCC();
  sub_10002200C(&_mh_execute_header, v4, v5, "Source not found with sourceID: %@", v6, v7, v8, v9, v10);
}

void sub_100070DBC(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 actionIdentifier];
  v5 = 138412290;
  v6 = v4;
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Notification didReceiveNotificationResponse for unknown actionIdentifier: %@", &v5, 0xCu);
}

void sub_100070E64(os_log_t log)
{
  v1 = 136446722;
  v2 = "NEKSyncCoordinator.m";
  v3 = 1024;
  v4 = 98;
  v5 = 2080;
  v6 = "[NEKSyncCoordinator syncCoordinator:beginSyncSession:]";
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "%{public}s:%d %s --mark--", &v1, 0x1Cu);
}

void sub_100070F0C(os_log_t log)
{
  v1 = 136446722;
  v2 = "NEKSyncCoordinator.m";
  v3 = 1024;
  v4 = 109;
  v5 = 2080;
  v6 = "[NEKSyncCoordinator syncCoordinator:didInvalidateSyncSession:]";
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "%{public}s:%d %s --mark--", &v1, 0x1Cu);
}

void sub_100070FDC()
{
  sub_10002A3A8();
  sub_100021FF4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100071018()
{
  sub_10002A3C4();
  sub_10002A3B4();
  sub_10002A3D4(&_mh_execute_header, v0, v1, "%{public}s:%d %s --mark--", v2, v3, v4, v5, 2u);
}

void sub_1000710A4()
{
  sub_100021FCC();
  sub_100021FF4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100071114(void *a1)
{
  v3 = a1;
  v4 = [sub_10002A3FC() calendarName];
  sub_10002CDF8(v4);
  objc_claimAutoreleasedReturnValue();
  v5 = [sub_10002A3F0() reminderTitle];
  v6 = sub_10002CDF8(v5);
  sub_10002A370();
  sub_10002A388(&_mh_execute_header, v7, v8, "Cannot finder reminder '%{public}@:%{public}@'", v9, v10, v11, v12, v13);
}

void sub_1000711E4(void *a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Cannot find reminder %{public}@:%{public}@", buf, 0x16u);
}

void sub_100071258()
{
  sub_10002A3C4();
  sub_10002A3B4();
  sub_10002A3D4(&_mh_execute_header, v0, v1, "%{public}s:%d %s --mark--", v2, v3, v4, v5, 2u);
}

void sub_1000712E4()
{
  sub_10002A3C4();
  sub_10002A3B4();
  sub_10002A3D4(&_mh_execute_header, v0, v1, "%{public}s:%d %s --mark--", v2, v3, v4, v5, 2u);
}

void sub_100071370(void *a1, void *a2)
{
  v3 = a1;
  v4[0] = 67109120;
  v4[1] = [a2 count];
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "I have %d candidate events so I'm not sure what to delete.", v4, 8u);
}

void sub_10007140C(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = [a2 deleteEvent];
  v7 = [v6 eventIdentifier];
  sub_100021FCC();
  v9 = 2114;
  v10 = a3;
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failure to delete event %@: %{public}@", v8, 0x16u);
}

void sub_1000714D8()
{
  sub_10002A3A8();
  sub_100021FF4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100071514()
{
  sub_100021FCC();
  sub_100021FF4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100071584()
{
  sub_10002A3A8();
  sub_100021FF4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000715C0(void *a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412802;
  *(buf + 4) = @"/var/mobile/Library/Calendar/Calendar.sqlitedb";
  *(buf + 6) = 2112;
  *(buf + 14) = a1;
  *(buf + 11) = 2112;
  *(buf + 3) = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Unable to open Calendar DB at path [%@] with exception: [%@] - ignoring incomingData for drift or duplication with IDS identifier: %@", buf, 0x20u);
}

void sub_100071638(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412802;
  v4 = @"/var/mobile/Library/Calendar/Calendar.sqlitedb";
  v5 = 2112;
  v6 = a1;
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Unable to open Calendar DB at path [%@] with error: [%@] - ignoring incomingData for drift or duplication with IDS identifier: %@", &v3, 0x20u);
}

void sub_100071848(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 objectID];
  v5 = 138543362;
  v6 = v4;
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Cannot determine calendar identifier for reminder %{public}@. Deletion wrapper will be sent but the remote device may not be able to delete the reminder", &v5, 0xCu);
}

void sub_1000718F0(uint64_t a1, NSObject *a2)
{
  v2 = 136315394;
  v3 = "[NEKSourceAttributes(Event) initWithSource:]";
  v4 = 2114;
  v5 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Unable to create UUID for %s %{public}@", &v2, 0x16u);
}

void sub_1000719F0(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 objectID];
  v5 = 138543362;
  v6 = v4;
  _os_log_fault_impl(&_mh_execute_header, v3, OS_LOG_TYPE_FAULT, "Attempting to send source wrapper for CloudKit reminders account %{public}@ with allowsEvents=YES but the other side does not support CloudKit. This is not expected but is handled by sending a source wrapper with allowsEvents=YES and allowsTasks=NO.", &v5, 0xCu);
}

void sub_100071D28(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = 138544130;
  v7 = a1;
  v8 = 1024;
  v9 = [a3 entityType];
  v10 = 1024;
  v11 = [a3 rowID];
  v12 = 1024;
  v13 = [a3 databaseID];
  _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "set id:%{public}@ %d/%d/%d", &v6, 0x1Eu);
}

void sub_100071E0C(void *a1, void *a2)
{
  v3 = a1;
  v4[0] = 67109376;
  v4[1] = [a2 entityType];
  v5 = 1024;
  v6 = [a2 rowID];
  _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Attempt to save a nil identifier: %d/%d", v4, 0xEu);
}

void sub_100071EDC(os_log_t log, double a2)
{
  v2 = 134217984;
  v3 = a2 * 100.0;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Lying about progress: %0.2f%%", &v2, 0xCu);
}

void sub_100071FA8(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Returning suggested db path: %@", &v2, 0xCu);
}

void sub_100072020(uint64_t a1, NSObject *a2)
{
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Unknown account type %ld", &v2, 0xCu);
}

void sub_100072098(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Unexpected constraint plist path from ReminderKit account: %@", &v2, 0xCu);
}

void sub_100072110(uint64_t a1, NSObject *a2)
{
  v2 = 136315394;
  v3 = "+[NEKSourceAttributes(Reminder) createAccountWithSaveRequest:withAttributes:]";
  v4 = 2114;
  v5 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Unable to create UUID for %s %{public}@", &v2, 0x16u);
}

void sub_10007219C(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error creating account. Source's persistent ID: [%{public}@]", &v2, 0xCu);
}

void sub_100072214(uint64_t a1, NSObject *a2)
{
  v2 = 138412802;
  v3 = @"NO";
  v4 = 2112;
  v5 = @"YES";
  v6 = 2114;
  v7 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "UNSUPPORTED: Source's 'allowsEvents' property has changed from [%@] to [%@].  Source's persistent ID: [%{public}@]", &v2, 0x20u);
}

void sub_1000722C8(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 watchOnlyOccurrences];
  sub_10003C0EC(&_mh_execute_header, v5, v6, "NEKDriftResults | watchOnlyOccurrences: %@", v7, v8, v9, v10, 2u);
}

void sub_100072360(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 phoneOnlyOccurrences];
  sub_10003C0EC(&_mh_execute_header, v5, v6, "NEKDriftResults | phoneOnlyOccurrences: %@", v7, v8, v9, v10, 2u);
}

void sub_1000723F8(uint64_t a1, int a2, os_log_t log)
{
  v3 = 136315394;
  v4 = a1;
  v5 = 1024;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Sqlite create failed, path: %s, error: (%d)", &v3, 0x12u);
}

void sub_100072480(uint64_t a1, NSObject *a2)
{
  v2 = 136446210;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Sqlite statement prepare failed for %{public}s", &v2, 0xCu);
}

void sub_100072634()
{
  sub_1000430D4();
  v2 = v1;
  [v0 identifier];
  objc_claimAutoreleasedReturnValue();
  sub_1000430E0();
  objc_opt_class();
  sub_100043088();
  v4 = v3;
  sub_1000430B0();
  sub_1000430EC(v5, v6, v7, v8, v9);
}

void sub_1000726E8()
{
  sub_1000430D4();
  v2 = v1;
  [v0 identifier];
  objc_claimAutoreleasedReturnValue();
  v3 = sub_1000430E0();
  v4 = sub_10002CDF8(v3);
  sub_100043088();
  sub_1000430A0();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_1000727A0(void *a1, uint8_t *buf, void *a3, os_log_t log)
{
  *buf = 138543362;
  *a3 = a1;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "[Session: %{public}@] createOrUpdateSYObject: assigning mixed entity NEKICSWrapper to EventKit", buf, 0xCu);
}

void sub_1000727FC()
{
  sub_1000430D4();
  v2 = v1;
  [v0 identifier];
  objc_claimAutoreleasedReturnValue();
  v3 = sub_1000430E0();
  v4 = sub_10002CDF8(v3);
  sub_100043088();
  sub_1000430A0();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_1000728B4(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 identifier];
  sub_100021FCC();
  sub_1000430A0();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0xCu);
}

void sub_100072954(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 identifier];
  sub_100021FCC();
  sub_1000430A0();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0xCu);
}

void sub_1000729F4(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = [a2 identifier];
  v7 = [a3 attributes];
  v8 = sub_10002CDF8([v7 title]);
  v13 = [a3 calendarIdentifier];
  sub_1000430B0();
  _os_log_error_impl(v9, v10, OS_LOG_TYPE_ERROR, v11, v12, 0x20u);
}

void sub_100072B00(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 identifier];
  sub_100021FCC();
  sub_1000430A0();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0xCu);
}

void sub_100072BA0()
{
  sub_1000430D4();
  v2 = v1;
  [v0 identifier];
  objc_claimAutoreleasedReturnValue();
  v3 = sub_1000430E0();
  v4 = sub_10002CDF8(v3);
  sub_100043088();
  sub_1000430A0();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_100072C58(void *a1, void *a2)
{
  v3 = a1;
  [a2 identifier];
  objc_claimAutoreleasedReturnValue();
  sub_100022058();
  objc_opt_class();
  sub_100043088();
  v5 = v4;
  sub_1000430EC(&_mh_execute_header, v3, v6, "[Session: %{public}@] deleteSYObject: unrecognized object of class [%@]", v7);
}

void sub_100072D10(void *a1, void *a2)
{
  v3 = a1;
  [a2 identifier];
  objc_claimAutoreleasedReturnValue();
  v4 = sub_100022058();
  v5 = sub_10002CDF8(v4);
  sub_100043088();
  _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "[Session: %{public}@] deleteSYObject: NEKDeletionWrapper [%@]", v6, 0x16u);
}

void sub_100072DD0(os_log_t log)
{
  v1 = 136446722;
  v2 = "NEKSyncController.m";
  v3 = 1024;
  v4 = 544;
  v5 = 2080;
  v6 = "[NEKSyncController service:willPreferSession:overSession:]";
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "%{public}s:%d %s --mark--", &v1, 0x1Cu);
}

void sub_100072E78(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 identifier];
  sub_100021FCC();
  sub_1000430B0();
  sub_1000430BC(v5, v6, v7, v8, v9);
}

void sub_100072F14(void *a1, unsigned __int8 *a2, uint8_t *buf, os_log_t log)
{
  v5 = *a2;
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 1024;
  *(buf + 14) = v5;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "[Session: %{public}@] startSession: result [%{BOOL}d]", buf, 0x12u);
}

void sub_100072F80(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 identifier];
  sub_100021FCC();
  v7 = 1024;
  v8 = v5;
  _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "[Session: %{public}@] startSendSession: canDefer [%{BOOL}d]", v6, 0x12u);
}

void sub_100073040(void *a1)
{
  v2 = a1;
  v3 = [sub_100022058() identifier];
  sub_100021FCC();
  sub_10002200C(&_mh_execute_header, v4, v5, "[Session: %{public}@] startSendSession: delta sync fired but pipe is truncated, setting needsFullSync", v6, v7, v8, v9, v10);
}

void sub_1000730D0(void *a1, void *a2)
{
  v4 = a1;
  v5 = [sub_100022058() identifier];
  [a2 fullSessionTimeout];
  v7 = v6;
  [a2 perMessageTimeout];
  v9 = 138543874;
  v10 = v5;
  v11 = 2048;
  v12 = v7;
  v13 = 1024;
  v14 = v8;
  _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "[Session: %{public}@] startSendSession: fullSessionTimeout [%.02f seconds] perMessageTimeout [%d seconds]", &v9, 0x1Cu);
}

void sub_1000731C8(void *a1)
{
  v2 = a1;
  v3 = [sub_100022058() identifier];
  sub_100021FCC();
  sub_10002200C(&_mh_execute_header, v4, v5, "[Session: %{public}@] sessionEnded: currentSession failed to start or was canceled", v6, v7, v8, v9, v10);
}

void sub_10007329C(void *a1)
{
  v2 = a1;
  v3 = [sub_100022058() identifier];
  sub_100021FCC();
  sub_10002200C(&_mh_execute_header, v4, v5, "[Session: %{public}@] sessionEnded: sessionEnd call not balanced, this is a fatal condition", v6, v7, v8, v9, v10);
}

void sub_10007332C(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 identifier];
  sub_100021FCC();
  sub_1000430A0();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0xCu);
}

void sub_1000733CC(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 identifier];
  sub_100021FCC();
  sub_1000430B0();
  sub_1000430EC(v5, v6, v7, v8, v9);
}

void sub_100073498(void *a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  v5 = "reset";
  if (*(a2 + 96))
  {
    v5 = "nightly";
  }

  *a3 = 138543618;
  *(a3 + 4) = a1;
  *(a3 + 12) = 2082;
  *(a3 + 14) = v5;
  sub_1000430EC(&_mh_execute_header, a4, a3, "[Session: %{public}@] sendSessionEnded: failed %{public}s, retrying as a reset", a3);
}

void sub_100073514(void *a1, uint64_t a2, NSObject *a3)
{
  *a2 = 138543362;
  *(a2 + 4) = a1;
  sub_1000430BC(&_mh_execute_header, a3, a3, "[Session: %{public}@] sendSessionEnded: lost collision test, scheduling retry", a2);
}

void sub_100073564(void *a1, uint64_t a2, NSObject *a3)
{
  *a2 = 138543362;
  *(a2 + 4) = a1;
  sub_1000430BC(&_mh_execute_header, a3, a3, "[Session: %{public}@] sendSessionEnded: canceled by deferral or collision", a2);
}

void sub_1000735B4(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 identifier];
  sub_100021FCC();
  sub_1000430A0();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0xCu);
}

void sub_100073654(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 identifier];
  sub_100021FCC();
  sub_1000430A0();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0xCu);
}

void sub_1000736F4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [sub_100022058() identifier];
  sub_100021FCC();
  sub_10002200C(&_mh_execute_header, v6, v7, "[Session: %{public}@] sendSessionEnded: error was not caught, retry was not scheduled", v8, v9, v10, v11, v12);
}

void sub_100073784()
{
  sub_1000430D4();
  v3 = v2;
  [v0 identifier];
  objc_claimAutoreleasedReturnValue();
  [sub_1000430E0() storeUpdateTimeNs];
  [v1 calendarUpdateTimeNs];
  [v1 eventUpdateTimeNs];
  [v1 reminderUpdateTimeNs];
  sub_1000430A0();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x34u);
}

void sub_100073894()
{
  sub_10002A3C4();
  sub_10002A3B4();
  sub_10002A3D4(&_mh_execute_header, v0, v1, "%{public}s:%d %s --mark--", v2, v3, v4, v5, 2u);
}

void sub_100073920()
{
  sub_10002A3C4();
  sub_10002A3B4();
  sub_10002A3D4(&_mh_execute_header, v0, v1, "%{public}s:%d %s --mark--", v2, v3, v4, v5, 2u);
}

void sub_1000739AC()
{
  sub_10002A3C4();
  sub_10002A3B4();
  sub_10002A3D4(&_mh_execute_header, v0, v1, "%{public}s:%d %s --mark--", v2, v3, v4, v5, 2u);
}

void sub_100073A38(uint64_t a1, NSObject *a2)
{
  v2 = 136315394;
  v3 = "+[NEKCalendarID(Reminder) listInStore:withNEKCalendarID:]";
  v4 = 2114;
  v5 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Unable to create UUID for %s %{public}@", &v2, 0x16u);
}

void sub_100073AC4(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 identifier];
  v5 = 138543362;
  v6 = v4;
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Cannot find list for identifier %{public}@", &v5, 0xCu);
}

void sub_100073BB0(uint64_t a1, NSObject *a2)
{
  v2 = 136315394;
  v3 = "+[NEKCalendarAttributes(Reminder) createListInAccount:withSaveRequest:withAttributes:]";
  v4 = 2114;
  v5 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Unable to create UUID for %s %{public}@", &v2, 0x16u);
}

void sub_100073C3C(os_log_t log)
{
  v1 = 136446722;
  v2 = "NEKSyncSession.m";
  v3 = 1024;
  v4 = 43;
  v5 = 2080;
  v6 = "[NEKSyncSession init]";
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "%{public}s:%d %s --mark--", &v1, 0x1Cu);
}

void sub_100073CE4(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "[Session: %{public}@] skipping validation message, population shifted during sync", buf, 0xCu);
}

void sub_100073D3C(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "[Session: %{public}@] enqueued validation message", buf, 0xCu);
}

void sub_100073D94(uint64_t a1, void *a2)
{
  v2 = *(a1 + 40);
  v3 = a2;
  v4 = [v2 identifier];
  v5 = 138543362;
  v6 = v4;
  _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "[Session: %{public}@] enqueueChanges exceeded batch size, will catch in next batch", &v5, 0xCu);
}

void sub_100073E3C(uint8_t *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = [a3 identifier];
  *a1 = 138543362;
  *a4 = v8;
  _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "[Session: %{public}@] applyChanges exceeded batch size, will catch in next batch", a1, 0xCu);
}

void sub_100073EC0(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = [a2 identifier];
  v7 = 138543618;
  v8 = v6;
  v9 = 1026;
  v10 = [a3 count];
  _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[Session: %{public}@] applyChanges picked up [%{public}d] final ICS change(s)", &v7, 0x12u);
}

void sub_100073FB0(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 title];
  v5 = [a2 calendarIdentifier];
  v6 = 138412546;
  v7 = v4;
  v8 = 2114;
  v9 = v5;
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Calendar %@/%{public}@ supports no entity types.", &v6, 0x16u);
}

void sub_1000740C4(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "SYChangeWithData - unrecognized type: %{public}@", &v2, 0xCu);
}

void sub_100074180()
{
  sub_10002A3A8();
  sub_10005AB00();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000741BC(void *a1, void *a2)
{
  v4 = a1;
  v5 = 138543874;
  v6 = @"REMStore";
  v7 = 2048;
  v8 = [sub_100022058() dirtyMemory];
  v9 = 2048;
  v10 = [a2 wallTime] / 1000000000.0;
  _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "[%{public}@] saveEventStore: memory delta [%lld] database save time [%fs] #perf", &v5, 0x20u);
}

void sub_100074294()
{
  sub_10002A3A8();
  sub_10005AB00();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100074338()
{
  sub_10005AAEC();
  sub_10005AB00();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10007441C(void *a1)
{
  v2 = a1;
  v3 = [sub_100022058() objectID];
  sub_100021FCC();
  sub_10002200C(&_mh_execute_header, v4, v5, "Reminders: Saving after updating an account (%{public}@) failed", v6, v7, v8, v9, v10);
}

void sub_10007451C()
{
  sub_10005AAEC();
  sub_10005AB00();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100074738(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 calendarIdentifier];
  v7 = 136446722;
  v8 = "[NEKReminderStore handleReminderWithUniqueIdentifierFromGizmo:saveRequest:list:wrapper:]";
  v9 = 2114;
  v10 = a1;
  v11 = 2114;
  v12 = v6;
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%{public}s: No calendar item with identifier %{public}@ in calendar with identifier %{public}@", &v7, 0x20u);
}

void sub_100074870(uint8_t *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = [a3 calendarIdentifier];
  *a1 = 138543362;
  *a4 = v8;
  _os_log_fault_impl(&_mh_execute_header, v7, OS_LOG_TYPE_FAULT, "List %{public}@ does not exist. Skip processing this wrapper.", a1, 0xCu);
}

void sub_1000748F4(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Cannot find object of type %d to update.", v2, 8u);
}

void sub_1000749AC(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 134218242;
  *&v3[4] = a2;
  *&v3[12] = 2114;
  *&v3[14] = a1;
  sub_10002202C(&_mh_execute_header, a2, a3, "Unexpected wrapper type %lu for identitifer %{public}@", *v3, *&v3[8], *&v3[16]);
}

void sub_100074BC4(void *a1)
{
  v2 = a1;
  v3 = [sub_100022058() remObjectID];
  sub_100021FCC();
  sub_10002200C(&_mh_execute_header, v4, v5, "Failed to create source wrapper for CloudKit account %{public}@", v6, v7, v8, v9, v10);
}

void sub_100074D24()
{
  sub_10005AAEC();
  sub_10005AB00();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100074E70()
{
  sub_10005AAEC();
  sub_10005AB00();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100075064()
{
  sub_10002A3C4();
  sub_10002A3B4();
  sub_10005E43C();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_1000750F8()
{
  sub_10002A3C4();
  sub_10002A3B4();
  sub_10005E43C();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_10007518C()
{
  sub_10002A3C4();
  sub_10002A3B4();
  sub_10005E43C();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_1000752A0()
{
  sub_10002A3C4();
  sub_10005E43C();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100075320()
{
  sub_10002A3C4();
  sub_10002A3B4();
  sub_10005E43C();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_1000753B4()
{
  sub_10002A3C4();
  sub_10002A3B4();
  sub_10005E43C();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_1000755B0(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 localizedDescription];
  sub_10005AAEC();
  sub_1000171F0(&_mh_execute_header, v5, v6, "[%{public}@] lastSequenceToken: failed to unarchive sequence token from data [%{public}@]", v7, v8, v9, v10, 2u);
}

void sub_100075650(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 localizedDescription];
  sub_10005AAEC();
  sub_1000171F0(&_mh_execute_header, v5, v6, "[%{public}@] setLastSequenceToken: failed to archive sequence token from object [%{public}@]", v7, v8, v9, v10, 2u);
}

void sub_100075868()
{
  sub_10002A3C4();
  sub_10002A3B4();
  sub_10002A3D4(&_mh_execute_header, v0, v1, "%{public}s:%d %s --mark--", v2, v3, v4, v5, 2u);
}

void sub_1000758F4()
{
  sub_10002A3C4();
  sub_10002A3B4();
  sub_10002A3D4(&_mh_execute_header, v0, v1, "%{public}s:%d %s --mark--", v2, v3, v4, v5, 2u);
}

void sub_100075980(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 localizedDescription];
  v5[0] = 138543618;
  sub_10005AAEC();
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "[%{public}@] allListsInto: failed to fetch reminder accounts for lists [%{public}@]", v5, 0x16u);
}

void sub_100075A30()
{
  sub_10002A3C4();
  sub_10002A3B4();
  sub_10002A3D4(&_mh_execute_header, v0, v1, "%{public}s:%d %s --mark--", v2, v3, v4, v5, 2u);
}

void sub_100075ABC()
{
  sub_10002A3C4();
  sub_10002A3B4();
  sub_10002A3D4(&_mh_execute_header, v0, v1, "%{public}s:%d %s --mark--", v2, v3, v4, v5, 2u);
}

void sub_100075CB0()
{
  v1[0] = 136315394;
  sub_10005AAEC();
  _os_log_fault_impl(&_mh_execute_header, v0, OS_LOG_TYPE_FAULT, "Unable to create UUID for %s %{public}@", v1, 0x16u);
}

void sub_100075E4C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 24);
  v3 = a2;
  v5 = 138543618;
  v6 = v2;
  v7 = 2112;
  v8 = objc_opt_class();
  v4 = v8;
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "[Session: %{public}@] Unable to record change, not an NEKWrapper [%@]", &v5, 0x16u);
}

void sub_100075F0C(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 24);
  v3 = 138543362;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "[Session: %{public}@] Unable to record change, description for deletionWrapper was nil", &v3, 0xCu);
}

void sub_100076034(void *a1, void *a2)
{
  v3 = a1;
  [a2 rowID];
  sub_10006A27C(&_mh_execute_header, v4, v5, "PURGE: Failure to fetch stale source, rowid: %d", v6, v7, v8, v9, 0);
}

void sub_100076128(void *a1, void *a2)
{
  v3 = a1;
  [a2 rowID];
  sub_10006A27C(&_mh_execute_header, v4, v5, "PURGE: Failure to fetch stale calendar, rowid: %d", v6, v7, v8, v9, 0);
}

void sub_10007621C(void *a1, void *a2)
{
  v3 = a1;
  [a2 rowID];
  sub_10006A27C(&_mh_execute_header, v4, v5, "PURGE: Failure to fetch stale event, rowid: %d", v6, v7, v8, v9, 0);
}

void sub_100076304(void *a1, int a2, NSObject *a3)
{
  v5 = 136315394;
  v6 = [a1 activityIdentifier];
  v7 = 1024;
  v8 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Received an odd state in checkin for %s: %d.", &v5, 0x12u);
}