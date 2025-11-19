void sub_100086E5C(uint64_t a1)
{
  v2 = +[NSMutableArray array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        v9 = [v8 error];

        if (v9)
        {
          v10 = [v8 error];
          [v2 addObject:v10];

          v11 = *(a1 + 40);
          v12 = [v8 error];
          [v11 startRetryTimerIfNecessaryWithError:v12];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  v13 = [v2 count];
  v14 = *(a1 + 48);
  if (v13)
  {
    v15 = v2;
  }

  else
  {
    v15 = 0;
  }

  (*(*(a1 + 48) + 16))(*(a1 + 48), v15);
}

void sub_100087474(id *a1, int a2, void *a3)
{
  v17 = a3;
  v5 = [a1[4] processingQueue];
  dispatch_assert_queue_V2(v5);

  v6 = +[REMLog cloudkit];
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (a2)
  {
    if (v7)
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = [v17 count];
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "SYNC[APS] CONTINUE - coalesced databaseNotificationSet.count: %lu", &buf, 0xCu);
    }

    v27[0] = 0;
    v27[1] = v27;
    v27[2] = 0x2020000000;
    v27[3] = 0;
    *&buf = 0;
    *(&buf + 1) = &buf;
    v30 = 0x3032000000;
    v31 = sub_10006D330;
    v32 = sub_10006D340;
    v33 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v17 count]);
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v8 = v17;
    v9 = [v8 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v9)
    {
      v10 = *v24;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v24 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v23 + 1) + 8 * i);
          v13 = a1[4];
          v18[0] = _NSConcreteStackBlock;
          v18[1] = 3221225472;
          v18[2] = sub_1000877D8;
          v18[3] = &unk_1008DAC18;
          v21 = v27;
          p_buf = &buf;
          v14 = v8;
          v19 = v14;
          v20 = a1[6];
          [v13 handleDatabaseNotification:v12 completionHandler:v18];
        }

        v9 = [v14 countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v9);
    }

    _Block_object_dispose(&buf, 8);
    _Block_object_dispose(v27, 8);
  }

  else
  {
    if (v7)
    {
      v15 = [a1[5] debugDescription];
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v15;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "SYNC[APS] SKIP - Notification debounced and coalesced {notificationID: %{public}@}", &buf, 0xCu);
    }

    v16 = a1[6];
    if (v16)
    {
      v16[2](v16, 0);
    }
  }
}

void sub_10008779C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose((v27 - 176), 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_1000877D8(uint64_t a1, void *a2)
{
  v3 = a2;
  ++*(*(*(a1 + 48) + 8) + 24);
  v6 = v3;
  if (v3)
  {
    [*(*(*(a1 + 56) + 8) + 40) addObject:v3];
  }

  v4 = *(*(*(a1 + 48) + 8) + 24);
  if (v4 == [*(a1 + 32) count])
  {
    if ([*(*(*(a1 + 56) + 8) + 40) count])
    {
      v5 = [REMError errorFromErrors:*(*(*(a1 + 56) + 8) + 40)];
    }

    else
    {
      v5 = 0;
    }

    (*(*(a1 + 40) + 16))();
  }
}

void sub_100087A50(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100087B50;
  v11[3] = &unk_1008DAC90;
  v7 = *(a1 + 40);
  v11[4] = *(a1 + 32);
  v8 = v7;
  v17 = *(a1 + 64);
  v12 = v8;
  v13 = v6;
  v14 = *(a1 + 48);
  v15 = v5;
  v16 = *(a1 + 56);
  v9 = v5;
  v10 = v6;
  [v10 fetchUserRecordIDWithCompletionHandler:v11];
}

void sub_100087B50(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) processingQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100087C94;
  block[3] = &unk_1008DA9B8;
  v13 = v3;
  v5 = *(a1 + 40);
  v18 = *(a1 + 80);
  v6 = *(a1 + 48);
  v11 = *(a1 + 32);
  v7 = *(a1 + 56);
  *&v8 = v11;
  *(&v8 + 1) = v7;
  *&v9 = v5;
  *(&v9 + 1) = v6;
  v14 = v9;
  v15 = v8;
  v16 = *(a1 + 64);
  v17 = *(a1 + 72);
  v10 = v3;
  dispatch_async(v4, block);
}

void sub_100087C94(uint64_t a1)
{
  v2 = [*(a1 + 32) recordName];
  if ([*(a1 + 40) isEqualToString:v2])
  {
    v3 = +[REMLog cloudkit];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 88);
      v5 = CKDatabaseScopeString();
      *buf = 138543618;
      v13 = v5;
      v14 = 2114;
      v15 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "SYNC[APS] CONTINUE - Found a container with subscription owner user recordID for the CKDatabaseNotification {scope: %{public}@, userRecordName: %{public}@}", buf, 0x16u);
    }

    v6 = [*(a1 + 48) databaseWithDatabaseScope:*(a1 + 88)];
    if (!v6)
    {
      sub_100763108();
    }

    v7 = *(a1 + 56);
    v8 = *(a1 + 64);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100087E30;
    v10[3] = &unk_1008DAC68;
    v10[4] = v7;
    v9 = *(a1 + 72);
    v11 = *(a1 + 80);
    [v7 _handleDatabaseNotification:v8 database:v6 accountID:v9 completionHandler:v10];
  }
}

void sub_100087E30(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) processingQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100087EF4;
  v7[3] = &unk_1008D9C60;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

uint64_t sub_100087EF4(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

void sub_1000881DC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[REMLog cloudkit];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1007631A0(v3);
    }

    [*(a1 + 32) addObject:v3];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "...SYNC[APS] Fetched database changes for aps notification sync", buf, 2u);
    }
  }

  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100088360;
  v13[3] = &unk_1008DAD08;
  v14 = *(a1 + 32);
  v20 = *(a1 + 80);
  v9 = *(a1 + 64);
  v10 = *(a1 + 40);
  v15 = v9;
  v16 = v10;
  v11 = *(a1 + 56);
  v12 = *(a1 + 48);
  v17 = v11;
  v18 = v12;
  v19 = *(a1 + 72);
  [v6 fetchRecordZoneChangesWithReason:v7 cloudSchemaCatchUpSyncContextMap:v8 completionHandler:v13];
}

void sub_100088360(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[REMLog cloudkit];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10076322C(v3);
    }

    [*(a1 + 32) addObject:v3];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "...SYNC[APS] Fetched record zone changes for aps notification zone", buf, 2u);
    }
  }

  if (*(a1 + 80) == 1)
  {
    v6 = [NSString stringWithFormat:@"%@", *(a1 + 40)];
    v7 = *(a1 + 48);
    v8 = [objc_opt_class() errorFromErrors:*(a1 + 32)];
    [*(a1 + 48) didCompleteCloudSchemaCatchUpSyncWithContextMap:*(a1 + 56) error:v8 syncTypeLabel:@"APS" debugLogLabel:v6];
  }

  v9 = *(a1 + 48);
  v10 = *(a1 + 64);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100088520;
  v12[3] = &unk_1008DACE0;
  v13 = *(a1 + 32);
  v14 = *(a1 + 40);
  v11 = *(a1 + 72);
  v15 = *(a1 + 48);
  v16 = v11;
  [v9 processAllDirtyCloudObjectsWithSyncReason:v10 completionHandler:v12];
}

void sub_100088520(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[REMLog cloudkit];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1007632B8(v3);
    }

    [*(a1 + 32) addObjectsFromArray:v3];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 40);
      v9 = 138543362;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "...SYNC[APS] Handled CloudKit database notification {databaseNotification: %{public}@}", &v9, 0xCu);
    }
  }

  if (*(a1 + 56))
  {
    v7 = *(a1 + 48);
    v8 = [objc_opt_class() errorFromErrors:*(a1 + 32)];
    (*(*(a1 + 56) + 16))();
  }
}

void sub_10008876C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[REMLog cloudkit];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Filtering out account ID %{public}@ from needing fetch changes since there is no corresponding container.", &v6, 0xCu);
  }

  v5 = [*(a1 + 32) accountZoneIDsNeedingFetchChanges];
  [v5 setObject:0 forKeyedSubscript:v3];
}

void sub_10008893C(uint64_t a1)
{
  [*(a1 + 32) validateAccountZoneIDsNeedingFetchChanges];
  v2 = *(a1 + 32);
  v3 = [v2 accountZoneIDsNeedingFetchChanges];
  [v2 fetchRecordZoneChangesForAccountZoneIDs:v3 reason:*(a1 + 40) cloudSchemaCatchUpSyncContextMap:*(a1 + 48) completionHandler:*(a1 + 56)];
}

void sub_100088BE0(uint64_t a1)
{
  v2 = [[NSMutableString alloc] initWithString:@"Asking to fetch changes for:"];
  v3 = *(a1 + 32);
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_100089080;
  v39[3] = &unk_1008DAD30;
  v4 = v2;
  v40 = v4;
  [v3 enumerateKeysAndObjectsUsingBlock:v39];
  v5 = +[REMLog cloudkit];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v42 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
  }

  v26 = v4;

  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_1000891F8;
  v34[3] = &unk_1008DAD58;
  v28 = *(a1 + 32);
  v6 = v28.i64[0];
  v35 = vextq_s8(v28, v28, 8uLL);
  v7 = *(a1 + 56);
  v36 = *(a1 + 48);
  v37 = v7;
  v38 = *(a1 + 64);
  v29 = [ICNSBlockOperation blockOperationWithBlock:v34];
  [v29 setName:ICNSBlockOperationNameCreateFetchZoneChanges];
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v8 = [*(a1 + 40) operationQueue];
  v9 = [v8 operations];

  v10 = [v9 countByEnumeratingWithState:&v30 objects:v45 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v31;
    do
    {
      v13 = 0;
      do
      {
        if (*v31 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v30 + 1) + 8 * v13);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v15 = v14;
          v16 = *(a1 + 40);
          v17 = [v15 database];
          v18 = [v16 accountIDForDatabase:v17];

          if ([v18 length])
          {
            if (!v18)
            {
              goto LABEL_16;
            }

LABEL_15:
            v20 = [*(a1 + 32) objectForKeyedSubscript:v18];
            v21 = [v15 ic_intersectsRecordZoneIDSet:v20];

            if (v21)
            {
              goto LABEL_16;
            }
          }

          else
          {
            v19 = +[REMLog cloudkit];
            if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
            {
              v27 = [v15 database];
              v24 = [v27 ic_loggingDescription];
              *buf = 138543618;
              v42 = v24;
              v43 = 2114;
              v44 = v18;
              _os_log_fault_impl(&_mh_execute_header, v19, OS_LOG_TYPE_FAULT, "accountID is nil or empty in fetchRecordZoneChangesForAccountZoneIDs %{public}@, accountID: %{public}@", buf, 0x16u);
            }

            if (v18)
            {
              goto LABEL_15;
            }

LABEL_16:
            v22 = +[REMLog cloudkit];
            if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
            {
              v23 = [v15 ic_loggingDescription];
              *buf = 138543362;
              v42 = v23;
              _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "Waiting for previous fetch zone changes operation to finish %{public}@", buf, 0xCu);
            }

            [v29 addDependency:v15];
          }
        }

        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v30 objects:v45 count:16];
    }

    while (v11);
  }

  v25 = [*(a1 + 40) operationQueue];
  [v25 addOperation:v29];

  [*(a1 + 40) errorAndPromptToFileRadarWithICTap2RadarTypeTooManyOperationsInOperationQueueIfNecessary];
}

void sub_100089080(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[NSMutableArray array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v15 + 1) + 8 * v12) ic_loggingDescription];
        [v7 addObject:v13];

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  v14 = [v7 componentsJoinedByString:@" "];
  [*(a1 + 32) appendFormat:@" account ID: %@, zone IDs: %@.", v5, v14, v15];
}

void sub_100089320(uint64_t a1)
{
  v2 = +[NSMutableArray array];
  v3 = *(a1 + 32);
  v60[0] = _NSConcreteStackBlock;
  v60[1] = 3221225472;
  v60[2] = sub_100089924;
  v60[3] = &unk_1008DAD80;
  v4 = v2;
  v61 = v4;
  v62 = *(a1 + 40);
  v63 = *(a1 + 56);
  [v3 enumerateKeysAndObjectsUsingBlock:v60];
  v5 = [*(a1 + 40) operationQueue];
  [v5 setSuspended:1];

  v43 = +[NSMutableArray array];
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v6 = v4;
  v42 = v6;
  v44 = [v6 countByEnumeratingWithState:&v56 objects:v72 count:16];
  if (v44)
  {
    v7 = *v57;
    v8 = REMCRMergeableOrderedSet_ptr;
    v40 = *v57;
    v41 = a1;
    do
    {
      v9 = 0;
      do
      {
        if (*v57 != v7)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v56 + 1) + 8 * v9);
        if ([v10 isFinished] & 1) != 0 || (objc_msgSend(v10, "isExecuting") & 1) != 0 || (objc_msgSend(v10, "isCancelled") & 1) != 0 || (objc_msgSend(*(a1 + 40), "operationQueue"), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "operations"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "containsObject:", v10), v12, v11, (v13))
        {
          v14 = [v8[50] cloudkit];
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v15 = [v10 isFinished];
            v16 = [v10 isExecuting];
            v17 = [v10 isCancelled];
            v18 = [v10 ic_loggingDescription];
            *buf = 67109890;
            *v66 = v15;
            *&v66[4] = 1024;
            *&v66[6] = v16;
            v8 = REMCRMergeableOrderedSet_ptr;
            v67 = 1024;
            v68 = v17;
            v69 = 2114;
            v70 = v18;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Not adding operation to queue. isFinished=%d isExecuting=%d isCancelled=%d %{public}@", buf, 0x1Eu);
          }
        }

        else
        {
          v54 = 0u;
          v55 = 0u;
          v52 = 0u;
          v53 = 0u;
          v19 = [*(a1 + 40) operationQueue];
          v20 = [v19 operations];

          v21 = [v20 countByEnumeratingWithState:&v52 objects:v71 count:16];
          if (v21)
          {
            v22 = v21;
            v23 = *v53;
            do
            {
              for (i = 0; i != v22; i = i + 1)
              {
                if (*v53 != v23)
                {
                  objc_enumerationMutation(v20);
                }

                v25 = *(*(&v52 + 1) + 8 * i);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v26 = v25;
                  if ([v10 ic_shouldDependOnCKFetchRecordZoneChangesOperation:v26])
                  {
                    v27 = [v8[50] cloudkit];
                    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
                    {
                      v28 = [v26 ic_loggingDescription];
                      *buf = 138543362;
                      *v66 = v28;
                      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "fetch record zone changes operation waiting for previous fetch zone changes operation to finish %{public}@", buf, 0xCu);

                      v8 = REMCRMergeableOrderedSet_ptr;
                    }

                    [v10 addDependency:v26];
                  }
                }
              }

              v22 = [v20 countByEnumeratingWithState:&v52 objects:v71 count:16];
            }

            while (v22);
          }

          [v43 addObject:v10];
          a1 = v41;
          v6 = v42;
          v7 = v40;
        }

        v9 = v9 + 1;
      }

      while (v9 != v44);
      v29 = [v6 countByEnumeratingWithState:&v56 objects:v72 count:16];
      v44 = v29;
    }

    while (v29);
  }

  v30 = [*(a1 + 40) operationQueue];
  [v30 addOperations:v43 waitUntilFinished:0];

  [*(a1 + 40) errorAndPromptToFileRadarWithICTap2RadarTypeTooManyOperationsInOperationQueueIfNecessary];
  v31 = [*(a1 + 40) operationQueue];
  [v31 setSuspended:0];

  if (*(a1 + 64))
  {
    v49[0] = _NSConcreteStackBlock;
    v49[1] = 3221225472;
    v49[2] = sub_1000899C0;
    v49[3] = &unk_1008DA318;
    v49[4] = *(a1 + 40);
    v32 = v6;
    v50 = v32;
    v51 = *(a1 + 64);
    v33 = [ICNSBlockOperation blockOperationWithBlock:v49];
    [v33 setName:ICNSBlockOperationNameFetchZoneChangesCompletion];
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v34 = v32;
    v35 = [v34 countByEnumeratingWithState:&v45 objects:v64 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = *v46;
      do
      {
        for (j = 0; j != v36; j = j + 1)
        {
          if (*v46 != v37)
          {
            objc_enumerationMutation(v34);
          }

          [v33 addDependency:*(*(&v45 + 1) + 8 * j)];
        }

        v36 = [v34 countByEnumeratingWithState:&v45 objects:v64 count:16];
      }

      while (v36);
    }

    v39 = [*(a1 + 40) operationQueue];
    [v39 addOperation:v33];

    [*(a1 + 40) errorAndPromptToFileRadarWithICTap2RadarTypeTooManyOperationsInOperationQueueIfNecessary];
    v6 = v42;
  }
}

void sub_100089924(void *a1, void *a2, void *a3)
{
  v5 = a1[4];
  v6 = a1[5];
  v7 = a2;
  v9 = [a3 allObjects];
  v8 = [v6 operationsToFetchRecordZoneChangesForZoneIDs:v9 accountID:v7 reason:a1[6] cloudSchemaCatchUpSyncContextMap:a1[7]];

  [v5 addObjectsFromArray:v8];
}

void sub_1000899C0(uint64_t a1)
{
  v2 = [*(a1 + 32) processingQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100089A78;
  block[3] = &unk_1008DA318;
  v3 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v5 = v3;
  v6 = *(a1 + 48);
  dispatch_async(v2, block);
}

void sub_100089A78(void *a1)
{
  v2 = a1[4];
  v3 = [objc_opt_class() errorFromOperations:a1[5]];
  (*(a1[6] + 16))();
}

void sub_100089F64(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [*(a1 + 32) cloudKitAccountsInContext:{*(a1 + 40), 0}];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(&v8 + 1) + 8 * v6) ckUserRecordName];
        if (v7)
        {
          [*(*(*(a1 + 48) + 8) + 40) addObject:v7];
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

void sub_10008A088(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 integerValue];
  v28 = [*(a1 + 32) databaseWithDatabaseScope:v6];
  v7 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v5, "count")}];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v31;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v31 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v30 + 1) + 8 * i);
        v14 = [*(a1 + 40) accountZoneIDsNeedingFetchChanges];
        [v14 ic_removeZoneID:v13 forAccountID:*(a1 + 48)];

        if (v6 == 2)
        {
          v20 = *(a1 + 40);
          v21 = [objc_opt_class() migrationZoneID];
          v22 = [v21 isEqual:v13];

          if (v22)
          {
            v17 = +[REMLog cloudkit];
            if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              v18 = v17;
              v19 = "Filtered the current users RemindersMigration zone from being fetched from the private db.";
LABEL_14:
              _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, v19, buf, 2u);
            }

LABEL_15:

            continue;
          }
        }

        else if (v6 == 3)
        {
          v15 = *(*(*(a1 + 80) + 8) + 40);
          v16 = [v13 ownerName];
          LODWORD(v15) = [v15 containsObject:v16];

          if (v15)
          {
            v17 = +[REMLog cloudkit];
            if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              v18 = v17;
              v19 = "Filtered the current users zone from being fetched from the shared db.";
              goto LABEL_14;
            }

            goto LABEL_15;
          }
        }

        v23 = [*(a1 + 40) accountZoneIDsFetchingChanges];
        [v23 ic_addZoneID:v13 forAccountID:*(a1 + 48)];

        [v7 addObject:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v10);
  }

  v24 = *(a1 + 40);
  v25 = [v7 copy];
  v26 = [v24 operationToFetchRecordZoneChangesForZoneIDs:v25 database:v28 reason:*(a1 + 56) ignoreServerChangeTokens:*(a1 + 88)];

  v27 = [v26 group];

  if (!v27)
  {
    [v26 setGroup:*(a1 + 64)];
    [*(a1 + 64) setQuantity:{objc_msgSend(*(a1 + 64), "quantity") + 1}];
  }

  [*(a1 + 72) addObject:v26];
}

void sub_10008B2F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, id a57, char a58)
{
  objc_destroyWeak((v61 + 72));
  objc_destroyWeak((v60 + 56));
  objc_destroyWeak((v59 + 64));
  objc_destroyWeak((v58 + 64));
  objc_destroyWeak(&a57);
  _Block_object_dispose(&a58, 8);
  _Block_object_dispose((v62 - 160), 8);
  objc_destroyWeak((v62 - 200));
  _Unwind_Resume(a1);
}

void sub_10008B39C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 batchFetchHelper];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10008B478;
  v9[3] = &unk_1008DADD0;
  v13 = *(a1 + 56);
  v5 = *(a1 + 32);
  v10 = v3;
  v11 = v5;
  v8 = *(a1 + 40);
  v6 = v8;
  v12 = v8;
  v7 = v3;
  [v4 addDispatchBlock:v9];
}

void sub_10008B478(uint64_t a1)
{
  if (!(++*(*(*(a1 + 56) + 8) + 24) % *(a1 + 64)))
  {
    v12 = v1;
    v13 = v2;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10008B564;
    v8[3] = &unk_1008D9A50;
    v7 = *(a1 + 32);
    v4 = v7.i64[0];
    v9 = vextq_s8(v7, v7, 8uLL);
    v5 = *(a1 + 48);
    v6 = *(a1 + 56);
    v10 = v5;
    v11 = v6;
    [v4 performBlockAndWait:v8];
  }
}

void sub_10008B564(uint64_t a1)
{
  [*(a1 + 32) _performSortingChildrenObjectsAfterFetchingInBlockOfManagedObjectContext:*(a1 + 40) fetchHasFullyCompleted:0 accountID:*(a1 + 48)];
  v2 = *(a1 + 32);
  [objc_opt_class() saveAndFaultIfFailWithContext:*(a1 + 40) shouldTakeServerAsTruth:1 logDescription:@"record changed"];
  [*(a1 + 40) reset];
  v3 = [*(a1 + 32) lastSyncMetrics];
  [v3 setSaveCount:{objc_msgSend(v3, "saveCount") + 1}];

  v4 = *(*(*(a1 + 56) + 8) + 24);
  v5 = [*(a1 + 32) lastSyncMetrics];
  [v5 setProcessedRecordCount:v4];
}

void sub_10008B61C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v13 = a2;
  v7 = a3;
  v8 = a4;
  if (*(*(*(a1 + 56) + 8) + 24) == -1.0)
  {
    *(*(*(a1 + 56) + 8) + 24) = CFAbsoluteTimeGetCurrent();
  }

  v9 = [*(a1 + 32) lastSyncMetrics];
  [v9 setFetchedRecordCount:{objc_msgSend(v9, "fetchedRecordCount") + 1}];

  v10 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  [v10 fetchRecordZoneChangesOperation:WeakRetained recordWasChangedWithRecordID:v13 record:v7 error:v8 context:*(a1 + 40)];

  v12 = *(a1 + 40);
  (*(*(a1 + 48) + 16))();
}

void sub_10008B71C(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if (*(*(*(a1 + 56) + 8) + 24) == -1.0)
  {
    *(*(*(a1 + 56) + 8) + 24) = CFAbsoluteTimeGetCurrent();
  }

  v6 = [*(a1 + 32) lastSyncMetrics];
  [v6 setDeletedRecordsCount:{objc_msgSend(v6, "deletedRecordsCount") + 1}];

  v7 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  [v7 fetchRecordZoneChangesOperation:WeakRetained recordWasDeletedWithRecordID:v10 recordType:v5 context:*(a1 + 40)];

  v9 = *(a1 + 40);
  (*(*(a1 + 48) + 16))();
}

void sub_10008B800(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (*(*(*(a1 + 56) + 8) + 24) == -1.0)
  {
    *(*(*(a1 + 56) + 8) + 24) = CFAbsoluteTimeGetCurrent();
  }

  v7 = [*(a1 + 32) batchFetchHelper];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10008B938;
  v13[3] = &unk_1008D9C10;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v14 = v8;
  v15 = v9;
  v16 = v10;
  [v7 addDispatchBlock:v13];
  v11 = *(a1 + 40);
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  [v11 fetchRecordZoneChangesOperation:WeakRetained zoneID:v5 accountID:*(a1 + 48) changeTokenUpdated:v6 batchFetchHelper:v7];
}

void sub_10008B938(uint64_t a1)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10008B9EC;
  v4[3] = &unk_1008D9C10;
  v3 = *(a1 + 32);
  v2 = v3.i64[0];
  v5 = vextq_s8(v3, v3, 8uLL);
  v6 = *(a1 + 48);
  [v2 performBlockAndWait:v4];
}

id sub_10008B9EC(uint64_t a1)
{
  [*(a1 + 32) _performSortingChildrenObjectsAfterFetchingInBlockOfManagedObjectContext:*(a1 + 40) fetchHasFullyCompleted:0 accountID:*(a1 + 48)];
  v2 = *(a1 + 32);
  v3 = objc_opt_class();
  v4 = *(a1 + 40);

  return [v3 saveAndFaultIfFailWithContext:v4 shouldTakeServerAsTruth:1 logDescription:@"zone change token updated"];
}

void sub_10008BA44(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v9 = a2;
  v10 = a3;
  v11 = a6;
  if (*(*(*(a1 + 48) + 8) + 24) == -1.0)
  {
    *(*(*(a1 + 48) + 8) + 24) = CFAbsoluteTimeGetCurrent();
  }

  v12 = [*(a1 + 32) batchFetchHelper];
  [v12 flush];
  v17 = _NSConcreteStackBlock;
  v18 = 3221225472;
  v19 = sub_10008BB80;
  v20 = &unk_1008D9B98;
  v13 = *(a1 + 32);
  v14 = *(a1 + 40);
  v21 = v13;
  v22 = v14;
  [v12 addDispatchBlock:&v17];
  v15 = *(a1 + 40);
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [v15 fetchRecordZoneChangesOperation:WeakRetained completedFetchForZoneID:v9 serverChangeToken:v10 batchFetchHelper:v12 error:{v11, v17, v18, v19, v20}];
}

void sub_10008BB80(int8x16_t *a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10008BC0C;
  v2[3] = &unk_1008D9B98;
  v1 = a1[2];
  v3 = vextq_s8(v1, v1, 8uLL);
  [v1.i64[0] performBlockAndWait:v2];
}

id sub_10008BC0C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_opt_class();
  v4 = *(a1 + 40);

  return [v3 saveAndFaultIfFailWithContext:v4 shouldTakeServerAsTruth:1 logDescription:@"record zone fetch completion"];
}

void sub_10008BC54(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(*(*(a1 + 64) + 8) + 24) == -1.0)
  {
    *(*(*(a1 + 64) + 8) + 24) = CFAbsoluteTimeGetCurrent();
  }

  v4 = [*(a1 + 32) batchFetchHelper];
  [v4 flush];
  v5 = [*(a1 + 40) processingQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10008BE78;
  block[3] = &unk_1008D9C10;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v19 = v6;
  v20 = v7;
  v21 = v8;
  dispatch_async(v5, block);

  v9 = *(a1 + 40);
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  [v9 fetchRecordZoneChangesOperationDidComplete:WeakRetained error:v3];

  Current = CFAbsoluteTimeGetCurrent();
  v12 = +[REMLog cloudkit];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = objc_loadWeakRetained((a1 + 72));
    v14 = [v13 ic_loggingDescription];
    v15 = *(a1 + 56);
    v16 = Current - *(*(*(a1 + 64) + 8) + 24);
    v17 = *(a1 + 48);
    *buf = 138544386;
    v23 = v14;
    v24 = 2114;
    v25 = v4;
    v26 = 2048;
    v27 = v16;
    v28 = 2114;
    v29 = v17;
    v30 = 2114;
    v31 = v15;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Fetch changes operation %{public}@ with %{public}@ took %f s {accountID: %{public}@, syncReason: %{public}@}", buf, 0x34u);
  }
}

void sub_10008BE78(uint64_t a1)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10008BF2C;
  v4[3] = &unk_1008D9C10;
  v3 = *(a1 + 32);
  v2 = v3.i64[0];
  v5 = vextq_s8(v3, v3, 8uLL);
  v6 = *(a1 + 48);
  [v2 performBlockAndWait:v4];
}

id sub_10008BF2C(uint64_t a1)
{
  [*(a1 + 32) _performSortingChildrenObjectsAfterFetchingInBlockOfManagedObjectContext:*(a1 + 40) fetchHasFullyCompleted:1 accountID:*(a1 + 48)];
  v2 = *(a1 + 32);
  v3 = objc_opt_class();
  v4 = *(a1 + 40);

  return [v3 saveAndFaultIfFailWithContext:v4 shouldTakeServerAsTruth:1 logDescription:@"fetch record zone changes completion"];
}

void sub_10008C0B0(uint64_t a1)
{
  v3 = a1 + 40;
  v2 = *(a1 + 40);
  v4 = *(v3 - 8);
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 incrementOrClearRetryCountForOperationType:v6 error:*(v3 + 8)];

  v7 = *(v3 - 8);
  v8 = [*v3 database];
  v9 = [v7 accountIDForDatabase:v8];

  if (![v9 length])
  {
    v10 = +[REMLog cloudkit];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      sub_100763404();
    }
  }

  v11 = *(a1 + 48);
  if (!v11)
  {
    v17 = +[REMLog cloudkit];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = [*(a1 + 56) ic_loggingDescription];
      v19 = [*(a1 + 40) ic_loggingDescription];
      *buf = 138543874;
      v49 = v18;
      v50 = 2114;
      v51 = v19;
      v52 = 2114;
      v53 = v9;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Fetched changes for record zone %{public}@ %{public}@ in account ID %{public}@", buf, 0x20u);
    }

    goto LABEL_23;
  }

  v12 = [v11 code];
  if (v12 > 20)
  {
    if (v12 != 28)
    {
      if (v12 != 26)
      {
        if (v12 == 21)
        {
          v13 = +[REMLog cloudkit];
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            v41 = [*(a1 + 56) ic_loggingDescription];
            v42 = [*(a1 + 40) ic_loggingDescription];
            *buf = 138543874;
            v49 = v41;
            v50 = 2114;
            v51 = v42;
            v52 = 2114;
            v53 = v9;
            _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Server change token expired for zone %{public}@ %{public}@ in account ID %{public}@", buf, 0x20u);
          }

          v14 = *(a1 + 56);
          v15 = *(a1 + 32);
          v16 = [*(a1 + 40) database];
          [v15 deleteServerChangeTokenForRecordZoneID:v14 databaseScope:objc_msgSend(v16 accountID:{"databaseScope"), v9}];

LABEL_29:
          v25 = 0;
          v24 = 1;
          goto LABEL_30;
        }

LABEL_26:
        v30 = +[REMLog cloudkit];
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          v43 = [*(a1 + 56) ic_loggingDescription];
          v44 = [*(a1 + 40) ic_loggingDescription];
          v45 = *(a1 + 48);
          *buf = 138544130;
          v49 = v43;
          v50 = 2114;
          v51 = v44;
          v52 = 2114;
          v53 = v9;
          v54 = 2114;
          v55 = v45;
          _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "Error fetching zone changes %{public}@ %{public}@ in account ID %{public}@: %{public}@", buf, 0x2Au);
        }

        goto LABEL_29;
      }

      [*(a1 + 32) receivedZoneNotFound:*(a1 + 56) operation:*(a1 + 40)];
LABEL_24:
      v25 = 0;
      v24 = 0;
      goto LABEL_30;
    }

    v26 = +[REMLog cloudkit];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v39 = [*(a1 + 56) ic_loggingDescription];
      v40 = [*(a1 + 40) ic_loggingDescription];
      *buf = 138543874;
      v49 = v39;
      v50 = 2114;
      v51 = v40;
      v52 = 2114;
      v53 = v9;
      _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "User deleted zone %{public}@ %{public}@ in account ID %{public}@", buf, 0x20u);
    }

    v27 = *(a1 + 56);
    v28 = *(a1 + 32);
    v29 = [*(a1 + 40) database];
    [v28 deleteServerChangeTokenForRecordZoneID:v27 databaseScope:objc_msgSend(v29 accountID:{"databaseScope"), v9}];

    v17 = [*(a1 + 32) cloudContextDelegate];
    [v17 cloudContext:*(a1 + 32) userDidDeleteRecordZoneWithID:*(a1 + 56) accountID:v9];
LABEL_23:

    goto LABEL_24;
  }

  if (v12 != 3 && v12 != 20)
  {
    goto LABEL_26;
  }

  v20 = +[REMLog cloudkit];
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = [*(a1 + 56) ic_loggingDescription];
    v22 = [*(a1 + 40) ic_loggingDescription];
    v23 = *(a1 + 48);
    *buf = 138544130;
    v49 = v21;
    v50 = 2114;
    v51 = v22;
    v52 = 2114;
    v53 = v9;
    v54 = 2114;
    v55 = v23;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Non-fatal error fetching zone changes for zone %{public}@ %{public}@ in account ID %{public}@: %{public}@", buf, 0x2Au);
  }

  v24 = 0;
  v25 = 1;
LABEL_30:
  v31 = [*(a1 + 32) accountZoneIDsFetchingChanges];
  [v31 ic_removeZoneID:*(a1 + 56) forAccountID:v9];

  if ((v25 & 1) != 0 || v24)
  {
    v32 = [*(a1 + 56) zoneName];
    v33 = [v32 isEqualToString:CKRecordZoneDefaultName];

    if ((v33 & 1) == 0)
    {
      v34 = [*(a1 + 32) accountZoneIDsNeedingFetchChanges];
      [v34 ic_addZoneID:*(a1 + 56) forAccountID:v9];

      if (v24)
      {
        [*(a1 + 32) startRetryTimerIfNecessaryWithError:*(a1 + 48)];
      }
    }
  }

  [*(a1 + 32) saveZoneFetchState];
  v35 = *(a1 + 64);
  if (v35)
  {
    v36 = *(a1 + 56);
    v37 = *(a1 + 32);
    v38 = [*(a1 + 40) database];
    [v37 saveServerChangeToken:v35 forRecordZoneID:v36 databaseScope:objc_msgSend(v38 accountID:{"databaseScope"), v9}];
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10008C6E0;
  block[3] = &unk_1008D9990;
  v47 = *(a1 + 56);
  dispatch_async(&_dispatch_main_q, block);
}

void sub_10008C6E0(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 postNotificationName:@"ICCloudContextFetchRecordChangeOperationDidFinishNotification" object:*(a1 + 32)];
}

void sub_10008C818(uint64_t a1)
{
  v2 = (a1 + 40);
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) database];
  v5 = [v3 accountIDForDatabase:v4];

  if (![v5 length])
  {
    v6 = +[REMLog cloudkit];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_100763498();
    }
  }

  v7 = *(a1 + 48);
  if (!v7)
  {
    v9 = +[REMLog cloudkit];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [*v2 ic_loggingDescription];
      *buf = 138543618;
      v32 = v5;
      v33 = 2114;
      v34 = v10;
      v11 = "Fetched zone changes in account ID %{public}@: %{public}@";
      goto LABEL_13;
    }

LABEL_17:
    v15 = 0;
    goto LABEL_18;
  }

  v8 = [v7 code];
  if (v8 == 20 || v8 == 3)
  {
    v9 = +[REMLog cloudkit];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [*(a1 + 40) ic_loggingDescription];
      v14 = *(a1 + 48);
      *buf = 138543874;
      v32 = v5;
      v33 = 2114;
      v34 = v10;
      v35 = 2114;
      v36 = v14;
      v11 = "Non-fatal error fetching zone changes in account ID %{public}@: %{public}@: %{public}@";
      v12 = v9;
      v13 = 32;
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  if (v8 == 2)
  {
    v9 = +[REMLog cloudkit];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [*v2 ic_loggingDescription];
      *buf = 138543618;
      v32 = v5;
      v33 = 2114;
      v34 = v10;
      v11 = "Fetch changes operation had partial failure in account ID %{public}@: %{public}@";
LABEL_13:
      v12 = v9;
      v13 = 22;
LABEL_16:
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v11, buf, v13);

      goto LABEL_17;
    }

    goto LABEL_17;
  }

  v9 = +[REMLog cloudkit];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v24 = [*(a1 + 40) ic_loggingDescription];
    v25 = *(a1 + 48);
    *buf = 138543874;
    v32 = v5;
    v33 = 2114;
    v34 = v24;
    v35 = 2114;
    v36 = v25;
    _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Error fetching zone changes in account ID %{public}@: %{public}@: %{public}@", buf, 0x20u);
  }

  v15 = 1;
LABEL_18:

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v16 = [*v2 recordZoneIDs];
  v17 = [v16 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v27;
    do
    {
      for (i = 0; i != v18; i = i + 1)
      {
        if (*v27 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v26 + 1) + 8 * i);
        v22 = [*(a1 + 32) accountZoneIDsFetchingChanges];
        [v22 ic_removeZoneID:v21 forAccountID:v5];

        if (v15)
        {
          v23 = [*(a1 + 32) accountZoneIDsNeedingFetchChanges];
          [v23 ic_addZoneID:v21 forAccountID:v5];
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v18);
  }

  [*(a1 + 32) saveZoneFetchState];
  if (v15)
  {
    [*(a1 + 32) startRetryTimerIfNecessaryWithError:*(a1 + 48)];
  }
}

void sub_10008D024(id *a1)
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10008D124;
  v8[3] = &unk_1008DAEE8;
  v2 = a1 + 8;
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  *&v6 = a1[7];
  *(&v6 + 1) = *v2;
  *&v7 = v4;
  *(&v7 + 1) = v5;
  v9 = v7;
  v10 = v6;
  v11 = a1[4];
  v12 = a1[9];
  [v3 performBlockAndWait:v8];
}

void sub_10008D124(uint64_t a1)
{
  v2 = +[REMLog cloudkit];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) ic_loggingDescription];
    v5 = [*(a1 + 48) ic_shortLoggingDescription];
    v10 = 138543874;
    v11 = v3;
    v12 = 2114;
    v13 = v4;
    v14 = 2114;
    v15 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[fetchRecordZoneChangesOperation:recordWasChangedWithRecordID:record:error:context:] Record changed {accountID: %{public}@, recordID: %{public}@, operation: %{public}@}", &v10, 0x20u);
  }

  if (([*(a1 + 56) _isCloudKitAccountAvailableWithManagedObjectContext:*(a1 + 64) requireActive:0] & 1) == 0)
  {
    v7 = +[REMLog cloudkit];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1007635C0(a1);
    }

    goto LABEL_8;
  }

  v6 = *(a1 + 72);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 56) didFetchShare:*(a1 + 72) accountID:*(a1 + 32) context:*(a1 + 64)];
    return;
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    v9 = [*(a1 + 56) existingCloudObjectForRecord:*(a1 + 72) accountID:v8 context:*(a1 + 64)];
    v7 = v9;
    if (v9)
    {
      [v9 objectWasFetchedFromCloudWithRecord:*(a1 + 72) accountID:*(a1 + 32)];
    }

    else
    {
    }

LABEL_8:
  }
}

void sub_10008D5D0(uint64_t a1)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10008D684;
  v3[3] = &unk_1008D9C10;
  v2 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  [v2 performBlockAndWait:v3];
}

void sub_10008D684(uint64_t a1)
{
  v2 = +[REMLog cloudkit];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) ic_loggingDescription];
    v5 = [*(a1 + 48) ic_shortLoggingDescription];
    v6 = 138543874;
    v7 = v3;
    v8 = 2114;
    v9 = v4;
    v10 = 2114;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Share was deleted in accountID %{public}@: %{public}@ %{public}@", &v6, 0x20u);
  }
}

void sub_10008D774(id *a1)
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10008D874;
  v8[3] = &unk_1008DAEE8;
  v2 = a1 + 8;
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  *&v6 = a1[7];
  *(&v6 + 1) = *v2;
  *&v7 = v4;
  *(&v7 + 1) = v5;
  v9 = v7;
  v10 = v6;
  v11 = a1[9];
  v12 = a1[4];
  [v3 performBlockAndWait:v8];
}

void sub_10008D874(uint64_t a1)
{
  v2 = +[REMLog cloudkit];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) ic_loggingDescription];
    v5 = [*(a1 + 48) ic_shortLoggingDescription];
    v15 = 138543874;
    v16 = v3;
    v17 = 2114;
    v18 = v4;
    v19 = 2114;
    v20 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Record was deleted in accountID %{public}@: %{public}@ %{public}@", &v15, 0x20u);
  }

  v6 = [*(a1 + 56) existingCloudObjectForRecordID:*(a1 + 40) recordType:*(a1 + 64) accountID:*(a1 + 32) context:*(a1 + 72)];
  if (!v6)
  {
    v7 = +[REMLog cloudkit];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = [*(a1 + 40) ic_loggingDescription];
      v10 = [*(a1 + 48) ic_shortLoggingDescription];
      v15 = 138543874;
      v16 = v8;
      v17 = 2114;
      v18 = v9;
      v19 = 2114;
      v20 = v10;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Record was deleted but the cloud object no longer exists in our database for fetchRecordZoneChangesOperation:recordWasDeletedWithRecordID:... {accountID: %{public}@, prefetchRecordID: %{public}@, opeartion: %{public}@}", &v15, 0x20u);
    }
  }

  v11 = [v6 ckZoneOwnerName];
  if (!v11)
  {
    v11 = CKCurrentUserDefaultName;
  }

  v12 = [*(a1 + 40) zoneID];
  v13 = [v12 ownerName];
  v14 = [(NSString *)v11 isEqualToString:v13];

  if (v14)
  {
    [v6 objectWasDeletedFromCloudByAnotherDevice];
  }
}

void sub_10008DB9C(uint64_t a1)
{
  v2 = +[REMLog cloudkit];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [*(a1 + 32) ic_loggingDescription];
    v4 = [*(a1 + 40) ic_loggingDescription];
    v5 = [*(a1 + 48) ic_loggingDescription];
    v10 = 138543874;
    v11 = v3;
    v12 = 2114;
    v13 = v4;
    v14 = 2114;
    v15 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Zone change token updated %{public}@ %{public}@ %{public}@", &v10, 0x20u);
  }

  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *(a1 + 56);
  v9 = [*(a1 + 48) database];
  [v8 saveServerChangeToken:v6 forRecordZoneID:v7 databaseScope:objc_msgSend(v9 accountID:{"databaseScope"), *(a1 + 64)}];
}

id sub_10008E0E8(uint64_t a1)
{
  v2 = +[REMLog cloudkit];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Polling timer fired", v4, 2u);
  }

  return [*(a1 + 32) syncWithReason:@"Poll" discretionary:1 completionHandler:0];
}

void sub_10008E314(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[REMLog cloudkit];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_10076378C();
  }

  v8 = [v6 privateCloudDatabase];

  if (v8)
  {
    v9 = *(a1 + 32);
    v10 = [v6 privateCloudDatabase];
    [v9 addObject:v10];
  }

  v11 = [v6 sharedCloudDatabase];

  if (v11)
  {
    v12 = *(a1 + 32);
    v13 = [v6 sharedCloudDatabase];
    [v12 addObject:v13];
  }
}

void sub_10008E928(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [*(a1 + 32) processingQueue];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10008E9E4;
    v5[3] = &unk_1008D9A28;
    v7 = *(a1 + 40);
    v6 = v3;
    dispatch_async(v4, v5);
  }
}

void sub_10008E9F4(uint64_t a1)
{
  v2 = [*(a1 + 32) processingQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10008EAA8;
  block[3] = &unk_1008DA098;
  block[4] = *(a1 + 32);
  v4 = *(a1 + 40);
  v3 = v4;
  v6 = v4;
  dispatch_async(v2, block);
}

void sub_10008EAA8(void *a1)
{
  v2 = a1[4];
  v3 = [objc_opt_class() errorFromErrors:*(*(a1[6] + 8) + 40)];
  (*(a1[5] + 16))();
}

void sub_10008F154(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, id location)
{
  objc_destroyWeak(&a32);
  objc_destroyWeak(&a39);
  objc_destroyWeak(&a46);
  objc_destroyWeak(&a53);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10008F1D4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [v3 fetchDatabaseChangesOperation:WeakRetained recordZoneWithIDChanged:v4 accountID:*(a1 + 40)];
}

void sub_10008F248(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [v3 fetchDatabaseChangesOperation:WeakRetained recordZoneWithIDWasDeleted:v4 accountID:*(a1 + 40)];
}

void sub_10008F2BC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [v3 fetchDatabaseChangesOperation:WeakRetained changeTokenUpdated:v4 accountID:*(a1 + 40)];
}

void sub_10008F330(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = *(a1 + 32);
  v7 = a4;
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [v6 fetchDatabaseChangesOperation:WeakRetained finishedWithServerChangeToken:v8 accountID:*(a1 + 40) error:v7 completionHandler:*(a1 + 48)];
}

void sub_10008F4B8(uint64_t a1)
{
  v2 = +[REMLog cloudkit];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) ic_loggingDescription];
    v5 = [*(a1 + 48) ic_loggingDescription];
    v9 = 138543874;
    v10 = v3;
    v11 = 2114;
    v12 = v4;
    v13 = 2114;
    v14 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Zone changed for account %{public}@, %{public}@ %{public}@", &v9, 0x20u);
  }

  v6 = [*(a1 + 40) zoneName];
  v7 = [v6 isEqualToString:CKRecordZoneDefaultName];

  if ((v7 & 1) == 0)
  {
    v8 = [*(a1 + 56) accountZoneIDsNeedingFetchChanges];
    [v8 ic_addZoneID:*(a1 + 40) forAccountID:*(a1 + 32)];

    [*(a1 + 56) saveZoneFetchState];
  }
}

void sub_10008F774(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) ownerName];
  v5 = [NSPredicate predicateWithFormat:@"ckZoneOwnerName == %@", v4];

  v31 = v5;
  v32 = v3;
  v6 = [REMCDObject ic_objectsMatchingPredicate:v5 context:v3];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v34 objects:v46 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v35;
    v10 = REMCRMergeableOrderedSet_ptr;
    do
    {
      v11 = 0;
      v33 = v8;
      do
      {
        if (*v35 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v34 + 1) + 8 * v11);
        v13 = [v12 recordID];
        v14 = [v13 zoneID];
        v15 = [v14 isEqual:*(a1 + 32)];

        v16 = [v10[50] cloudkit];
        v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
        if (v15)
        {
          if (v17)
          {
            v18 = [v12 shortLoggingDescription];
            v19 = *(a1 + 32);
            v20 = *(a1 + 40);
            *buf = 138412802;
            v39 = v18;
            v40 = 2114;
            v41 = v19;
            v42 = 2114;
            v43 = v20;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Deleting shared %@ for zoneID %{public}@, accountID %{public}@", buf, 0x20u);
          }

          [v12 objectWasDeletedFromCloudByAnotherDevice];
        }

        else
        {
          if (v17)
          {
            v21 = [v12 shortLoggingDescription];
            v22 = [v12 recordID];
            v23 = [v22 zoneID];
            [v23 ic_loggingDescription];
            v24 = v9;
            v25 = v10;
            v27 = v26 = v6;
            v28 = *(a1 + 32);
            v29 = *(a1 + 40);
            *buf = 138413058;
            v39 = v21;
            v40 = 2114;
            v41 = v27;
            v42 = 2114;
            v43 = v28;
            v44 = 2114;
            v45 = v29;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Not deleting shared %@ in wrong zone %{public}@ for zone ID %{public}@, accountID %{public}@", buf, 0x2Au);

            v6 = v26;
            v10 = v25;
            v9 = v24;
            v8 = v33;
          }
        }

        v11 = v11 + 1;
      }

      while (v8 != v11);
      v8 = [v6 countByEnumeratingWithState:&v34 objects:v46 count:16];
    }

    while (v8);
  }

  v30 = *(a1 + 48);
  [objc_opt_class() saveAndFaultIfFailWithContext:v32 shouldTakeServerAsTruth:1 logDescription:@"deleting shared zone"];
}

void sub_10008FB88(uint64_t a1)
{
  v2 = +[REMLog cloudkit];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) ic_loggingDescription];
    v5 = [*(a1 + 48) ic_loggingDescription];
    v20 = 138543874;
    v21 = v3;
    v22 = 2114;
    v23 = v4;
    v24 = 2114;
    v25 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Zone was deleted for account %{public}@, %{public}@ %{public}@", &v20, 0x20u);
  }

  v6 = [*(a1 + 48) database];
  if ([v6 databaseScope] == 3)
  {
    v7 = [*(a1 + 40) ownerName];
    v8 = [v7 isEqualToString:CKCurrentUserDefaultName];

    if (v8)
    {
      v9 = +[REMLog cloudkit];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [*(a1 + 40) ic_loggingDescription];
        v11 = [*(a1 + 48) ic_loggingDescription];
        v20 = 138543618;
        v21 = v10;
        v22 = 2114;
        v23 = v11;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Callback for operation in shared database says private zone was deleted %{public}@: %{public}@", &v20, 0x16u);
      }

      return;
    }
  }

  else
  {
  }

  if ([*(a1 + 40) ic_isOwnedByCurrentUser])
  {
    v12 = [*(a1 + 40) zoneName];
    v13 = [v12 isEqualToString:CKRecordZoneDefaultName];

    if ((v13 & 1) == 0)
    {
      v14 = [*(a1 + 56) accountZoneIDsNeedingFetchChanges];
      [v14 ic_addZoneID:*(a1 + 40) forAccountID:*(a1 + 32)];

      [*(a1 + 56) saveZoneFetchState];
    }
  }

  else
  {
    v15 = [*(a1 + 56) cloudContextDelegate];
    [v15 cloudContext:*(a1 + 56) sharedZoneWasDeleted:*(a1 + 40) accountID:*(a1 + 32)];

    [*(a1 + 56) sharedZoneWasDeleted:*(a1 + 40) accountID:*(a1 + 32)];
    v16 = [*(a1 + 56) accountZoneIDsNeedingFetchChanges];
    [v16 ic_removeZoneID:*(a1 + 40) forAccountID:*(a1 + 32)];

    [*(a1 + 56) saveZoneFetchState];
    v17 = *(a1 + 56);
    v18 = *(a1 + 40);
    v19 = [*(a1 + 48) database];
    [v17 deleteServerChangeTokenForRecordZoneID:v18 databaseScope:objc_msgSend(v19 accountID:{"databaseScope"), *(a1 + 32)}];
  }
}

void sub_10008FF3C(uint64_t a1)
{
  v2 = +[REMLog cloudkit];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) ic_loggingDescription];
    v5 = [*(a1 + 48) ic_loggingDescription];
    v9 = 138543874;
    v10 = v3;
    v11 = 2114;
    v12 = v4;
    v13 = 2114;
    v14 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Database change token updated for account %{public}@, %{public}@ %{public}@", &v9, 0x20u);
  }

  v6 = *(a1 + 56);
  v7 = *(a1 + 40);
  v8 = [*(a1 + 48) database];
  [v6 saveServerChangeToken:v7 forRecordZoneID:0 databaseScope:objc_msgSend(v8 accountID:{"databaseScope"), *(a1 + 32)}];
}

void sub_1000901B4(uint64_t a1)
{
  v2 = (a1 + 32);
  if (*(a1 + 32))
  {
    v3 = *(a1 + 56);
    if (v3)
    {
      if ([v3 code] == 21)
      {
        v4 = +[REMLog cloudkit];
        if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
        {
          sub_1007639B8(v2, a1);
        }

        v5 = *(a1 + 64);
        v6 = [*(a1 + 48) database];
        [v5 deleteServerChangeTokenForChangedZonesInDatabase:v6 accountID:*(a1 + 32)];
LABEL_7:
        v7 = 1;
LABEL_23:

LABEL_24:
        v17 = [*(a1 + 48) database];
        [v17 databaseScope];
        v18 = CKDatabaseScopeString();

        v19 = [*(a1 + 64) retryCountFetchDatabaseChangesOperationTypeForAccountID:*(a1 + 32) dataScopeString:v18];
        v20 = [*(a1 + 64) retryCountsByOperationType];
        v21 = [v20 objectForKeyedSubscript:v19];
        v22 = v21;
        v23 = &off_100904E78;
        if (v21)
        {
          v23 = v21;
        }

        v24 = v23;

        v25 = +[ICCloudConfiguration sharedConfiguration];
        v26 = [v25 fetchDatabaseChangesOperationPerScopePerAccountMaximumRetryCount];
        v27 = [v24 intValue];

        if (v26 <= v27)
        {
          v28 = +[REMLog cloudkit];
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            sub_100763A4C();
          }

          v7 = 0;
        }

        v29 = [*(a1 + 64) databaseScopeStringsNeedingRetryFetchChangesByAccountID];
        v30 = [v29 objectForKeyedSubscript:*(a1 + 32)];

        if (v7)
        {
          if (!v30)
          {
            v30 = [[NSMutableSet alloc] initWithCapacity:3];
            v31 = [*(a1 + 64) databaseScopeStringsNeedingRetryFetchChangesByAccountID];
            [v31 setObject:v30 forKeyedSubscript:*(a1 + 32)];
          }

          [v30 addObject:v18];
          [*(a1 + 64) incrementRetryCountForOperationType:v19];
          [*(a1 + 64) startRetryTimerIfNecessaryWithError:*(a1 + 56)];
        }

        else
        {
          [v30 removeObject:v18];
          if (![v30 count])
          {
            v32 = [*(a1 + 64) databaseScopeStringsNeedingRetryFetchChangesByAccountID];
            [v32 removeObjectForKey:*(a1 + 32)];
          }

          [*(a1 + 64) clearRetryCountForOperationType:v19];
        }

        if (*(a1 + 56))
        {
          v33 = +[REMLog cloudkit];
          if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            sub_100763AC8(a1 + 48);
          }

          v34 = [*(a1 + 64) operationQueue];
          v35 = [v34 iterativelyCancelDependentOperations:*(a1 + 48)];
        }

        v36 = *(a1 + 72);
        if (v36)
        {
          (*(v36 + 16))(v36, *(a1 + 56));
        }

        return;
      }

      if ([*(a1 + 56) code] == 20)
      {
        v6 = +[REMLog cloudkit];
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          sub_100763924(v2, a1);
        }
      }

      else
      {
        v15 = [*(a1 + 56) code];
        v6 = +[REMLog cloudkit];
        v16 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
        if (v15 != 3)
        {
          if (v16)
          {
            v37 = *(a1 + 32);
            v38 = [*(a1 + 48) ic_loggingDescription];
            v39 = *(a1 + 56);
            v40 = 138543874;
            v41 = v37;
            v42 = 2114;
            v43 = v38;
            v44 = 2112;
            v45 = v39;
            _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Error fetching database changes for account %{public}@, %{public}@: %@", &v40, 0x20u);
          }

          goto LABEL_7;
        }

        if (v16)
        {
          sub_100763890(v2, a1);
        }
      }
    }

    else
    {
      v10 = +[REMLog cloudkit];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(a1 + 32);
        v12 = [*(a1 + 48) ic_loggingDescription];
        v40 = 138543618;
        v41 = v11;
        v42 = 2114;
        v43 = v12;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Fetched database changes for account %{public}@, %{public}@", &v40, 0x16u);
      }

      v13 = *(a1 + 40);
      if (!v13)
      {
        v7 = 0;
        goto LABEL_24;
      }

      v14 = *(a1 + 64);
      v6 = [*(a1 + 48) database];
      [v14 saveServerChangeToken:v13 forChangedZonesInDatabase:v6 accountID:*(a1 + 32)];
    }

    v7 = 0;
    goto LABEL_23;
  }

  v8 = +[REMLog cloudkit];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_100763B54();
  }

  v9 = *(a1 + 72);
  if (v9)
  {
    (*(v9 + 16))(v9, *(a1 + 56));
  }
}

void sub_1000908CC(id a1)
{
  v1 = +[NSUserDefaults standardUserDefaults];
  [v1 removeObjectForKey:@"CloudKitZonesNeedingFetchChanges"];
}

void sub_10009091C(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [objc_opt_class() zoneIDsFromZoneInfos:v6];

  v8 = [v7 mutableCopy];
  if ([v8 count])
  {
    v9 = [*(a1 + 32) accountZoneIDsNeedingFetchChanges];
    [v9 setObject:v8 forKeyedSubscript:v10];
  }
}

void sub_100090BCC(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [objc_opt_class() zoneInfosFromZoneIDs:v6];

  if ([v7 count])
  {
    [*(a1 + 40) setObject:v7 forKeyedSubscript:v8];
  }
}

void sub_100090C64(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [objc_opt_class() zoneInfosFromZoneIDs:v6];

  if ([v7 count])
  {
    v8 = [*(a1 + 40) objectForKeyedSubscript:v11];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 arrayByAddingObjectsFromArray:v7];
      [*(a1 + 40) setObject:v10 forKeyedSubscript:v11];
    }

    else
    {
      [*(a1 + 40) setObject:v7 forKeyedSubscript:v11];
    }
  }
}

id sub_100090DCC(uint64_t a1)
{
  v2 = +[REMLog cloudkit];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Clearing zone fetch state", v6, 2u);
  }

  v3 = +[NSMutableDictionary dictionary];
  [*(a1 + 32) setAccountZoneIDsNeedingFetchChanges:v3];

  v4 = +[NSMutableDictionary dictionary];
  [*(a1 + 32) setAccountZoneIDsFetchingChanges:v4];

  return [*(a1 + 32) saveZoneFetchState];
}

void sub_1000915A4(uint64_t a1)
{
  v2 = +[REMLog cloudkit];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Updating subscriptions", buf, 2u);
  }

  [*(a1 + 32) setNeedsToUpdateSubscriptions:0];
  v3 = +[NSMutableSet set];
  *buf = 0;
  v48 = buf;
  v49 = 0x2020000000;
  v50 = 0;
  if ([*(a1 + 32) hasPassedBuddy] && (objc_msgSend(*(a1 + 32), "isSystemAvailableForSyncing") & 1) != 0)
  {
    v4 = [*(a1 + 32) appleAccountUtilities];
    v5 = [v4 unsafeUntilSystemReady_allICloudACAccounts];

    v46[0] = _NSConcreteStackBlock;
    v46[1] = 3221225472;
    v46[2] = sub_100091C68;
    v46[3] = &unk_1008DB098;
    v46[4] = buf;
    [v5 enumerateObjectsUsingBlock:v46];
  }

  else
  {
    v5 = +[REMLog cloudkit];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_100763C10([*(a1 + 32) hasPassedBuddy], objc_msgSend(*(a1 + 32), "isSystemAvailableForSyncing"), v56, v5);
    }
  }

  v6 = [*(a1 + 32) containersByAccountID];
  v44[0] = _NSConcreteStackBlock;
  v44[1] = 3221225472;
  v44[2] = sub_100091CAC;
  v44[3] = &unk_1008DAF10;
  v7 = v3;
  v45 = v7;
  [v6 enumerateKeysAndObjectsUsingBlock:v44];

  v8 = +[NSMutableArray array];
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_100091D3C;
  v40[3] = &unk_1008DB0C0;
  v40[4] = *(a1 + 32);
  v30 = v7;
  v41 = v30;
  v29 = v8;
  v42 = v29;
  v43 = *(a1 + 40);
  v9 = objc_retainBlock(v40);
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v10 = [v30 copy];
  v11 = [v10 countByEnumeratingWithState:&v36 objects:v55 count:16];
  if (v11)
  {
    v32 = *v37;
    obj = v10;
    do
    {
      v33 = v11;
      for (i = 0; i != v33; i = i + 1)
      {
        if (*v37 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v36 + 1) + 8 * i);
        v14 = [*(a1 + 32) subscriptionForDatabase:{v13, v29}];
        v15 = [*(a1 + 32) accountIDForDatabase:v13];
        if (![v15 length])
        {
          v16 = +[REMLog cloudkit];
          if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
          {
            v28 = [v13 ic_loggingDescription];
            *v51 = 138543618;
            v52 = v28;
            v53 = 2114;
            v54 = v15;
            _os_log_fault_impl(&_mh_execute_header, v16, OS_LOG_TYPE_FAULT, "accountID is nil or empty in updateSubscriptionsWithCompletionHandler: database %{public}@, accountID: %{public}@", v51, 0x16u);
          }
        }

        if (![v15 length])
        {
          goto LABEL_22;
        }

        v17 = [*(a1 + 32) subscribedSubscriptionIDsByAccountID];
        v18 = [v17 objectForKeyedSubscript:v15];
        v19 = [v14 subscriptionID];
        v20 = [v18 containsObject:v19];

        if (v20)
        {
          v21 = +[REMLog cloudkit];
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            [v13 databaseScope];
            v22 = CKDatabaseScopeString();
            v23 = [v14 subscriptionID];
            *v51 = 138543618;
            v52 = v22;
            v53 = 2114;
            v54 = v23;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Not fetching subscriptions for %{public}@, already subscribed to %{public}@", v51, 0x16u);
          }

          (v9[2])(v9, v13, 0);
        }

        else
        {
LABEL_22:
          v24 = +[REMLog cloudkit];
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            v25 = [v14 subscriptionID];
            *v51 = 138543362;
            v52 = v25;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Not sure if subscribed to %{public}@", v51, 0xCu);
          }

          v26 = *(a1 + 32);
          v34[0] = _NSConcreteStackBlock;
          v34[1] = 3221225472;
          v34[2] = sub_100091F14;
          v34[3] = &unk_1008DB0E8;
          v27 = v9;
          v34[4] = v13;
          v35 = v27;
          [v26 saveSubscriptionsForDatabase:v13 completionHandler:v34];
        }
      }

      v10 = obj;
      v11 = [obj countByEnumeratingWithState:&v36 objects:v55 count:16];
    }

    while (v11);
  }

  _Block_object_dispose(buf, 8);
}

id sub_100091C68(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 rem_isEligibleForCloudKitReminders];
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

void sub_100091CAC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [v5 privateCloudDatabase];
  [v4 addObject:v6];

  v7 = *(a1 + 32);
  v8 = [v5 sharedCloudDatabase];

  [v7 addObject:v8];
}

void sub_100091D3C(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [a1[4] processingQueue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100091E50;
  v12[3] = &unk_1008DABF0;
  v13 = a1[5];
  v14 = v5;
  v15 = v6;
  v8 = a1[6];
  v9 = a1[4];
  v16 = v8;
  v17 = v9;
  v18 = a1[7];
  v10 = v6;
  v11 = v5;
  dispatch_async(v7, v12);
}

void sub_100091E50(uint64_t a1)
{
  [*(a1 + 32) removeObject:*(a1 + 40)];
  if (*(a1 + 48))
  {
    [*(a1 + 56) addObject:?];
  }

  if (![*(a1 + 32) count])
  {
    v2 = *(a1 + 64);
    v4 = [objc_opt_class() errorFromErrors:*(a1 + 56)];
    [*(a1 + 64) setNeedsToUpdateSubscriptions:v4 != 0];
    v3 = *(a1 + 72);
    if (v3)
    {
      (*(v3 + 16))(v3, v4);
    }

    if (*(a1 + 48))
    {
      [*(a1 + 64) startRetryTimerIfNecessaryWithError:?];
    }
  }
}

void sub_100092004(uint64_t a1)
{
  v2 = +[CKFetchSubscriptionsOperation fetchAllSubscriptionsOperation];
  [*(a1 + 32) configureOperation:v2];
  [v2 setDatabase:*(a1 + 40)];
  objc_initWeak(&location, v2);
  v3 = +[REMLog cloudkit];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [v2 ic_loggingDescription];
    *buf = 138543362;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Fetching subscriptions %{public}@", buf, 0xCu);
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100092204;
  v7[3] = &unk_1008DB110;
  objc_copyWeak(&v10, &location);
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v9 = *(a1 + 48);
  [v2 setFetchSubscriptionCompletionBlock:v7];
  v6 = [*(a1 + 32) operationQueue];
  [v6 addOperation:v2];

  [*(a1 + 32) errorAndPromptToFileRadarWithICTap2RadarTypeTooManyOperationsInOperationQueueIfNecessary];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void sub_100092204(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v8 = [*(a1 + 32) processingQueue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10009232C;
  v13[3] = &unk_1008DABF0;
  v14 = v5;
  v15 = WeakRetained;
  v9 = *(a1 + 40);
  v16 = *(a1 + 32);
  v17 = v9;
  v18 = v6;
  v19 = *(a1 + 48);
  v10 = v6;
  v11 = WeakRetained;
  v12 = v5;
  dispatch_async(v8, v13);
}

uint64_t sub_10009232C(uint64_t a1)
{
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v2 = [*(a1 + 32) allValues];
  v3 = [v2 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v23;
    *&v4 = 138543618;
    v21 = v4;
    do
    {
      v7 = 0;
      do
      {
        if (*v23 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v22 + 1) + 8 * v7);
        v9 = +[REMLog cloudkit];
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = [v8 subscriptionID];
          v11 = [*(a1 + 40) ic_loggingDescription];
          *buf = v21;
          v27 = v10;
          v28 = 2114;
          v29 = v11;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Fetched subscription %{public}@ %{public}@", buf, 0x16u);
        }

        v12 = [*(a1 + 48) accountIDForDatabase:*(a1 + 56)];
        if ([v12 length])
        {
          v13 = *(a1 + 48);
          v14 = [v8 subscriptionID];
          [v13 addSubscribedSubscriptionIDs:v14 accountID:v12];
        }

        else
        {
          v14 = +[REMLog cloudkit];
          if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
          {
            v15 = [*(a1 + 56) ic_loggingDescription];
            *buf = v21;
            v27 = v15;
            v28 = 2114;
            v29 = v12;
            _os_log_fault_impl(&_mh_execute_header, v14, OS_LOG_TYPE_FAULT, "accountID is nil or empty in fetchSubscriptionsForDatabase: %{public}@, accountID: %{public}@", buf, 0x16u);
          }
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v2 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v5);
  }

  v16 = *(a1 + 64);
  v17 = +[REMLog cloudkit];
  v18 = v17;
  if (v16)
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_100763C70();
    }
  }

  else if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v19 = [*(a1 + 40) ic_loggingDescription];
    *buf = 138543362;
    v27 = v19;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Fetched subscriptions %{public}@", buf, 0xCu);
  }

  result = *(a1 + 72);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 64));
  }

  return result;
}

void sub_100092700(id *a1)
{
  v2 = a1 + 4;
  v3 = a1 + 5;
  v4 = [a1[4] subscriptionForDatabase:a1[5]];
  v5 = [*v2 accountIDForDatabase:*v3];
  if (![v5 length])
  {
    v6 = +[REMLog cloudkit];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_100763D04();
    }
  }

  if (![v5 length])
  {
    goto LABEL_11;
  }

  v7 = [a1[4] subscribedSubscriptionIDsByAccountID];
  v8 = [v7 objectForKeyedSubscript:v5];
  v9 = [v4 subscriptionID];
  v10 = [v8 containsObject:v9];

  if (v10)
  {
    v11 = +[REMLog cloudkit];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      [*v3 databaseScope];
      v12 = CKDatabaseScopeString();
      v13 = [v4 subscriptionID];
      *buf = 138543618;
      v36 = v12;
      v37 = 2114;
      v38 = v13;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Not saving subscriptions for %{public}@, already subscribed to %{public}@", buf, 0x16u);
    }

    v14 = a1[6];
    if (v14)
    {
      v14[2](v14, 0);
    }
  }

  else
  {
LABEL_11:
    v15 = [CKModifySubscriptionsOperation alloc];
    v34 = v4;
    v16 = [NSArray arrayWithObjects:&v34 count:1];
    v17 = [v15 initWithSubscriptionsToSave:v16 subscriptionIDsToDelete:0];

    [a1[4] configureOperation:v17];
    [v17 setDatabase:a1[5]];
    objc_initWeak(&location, v17);
    v18 = objc_alloc_init(CKOperationGroup);
    [v18 setName:@"SaveSubscriptions"];
    v19 = [v17 subscriptionsToSave];
    [v18 setQuantity:{objc_msgSend(v19, "count")}];

    [v18 setExpectedSendSize:1];
    [v18 setExpectedReceiveSize:1];
    [v17 setGroup:v18];
    v20 = +[REMLog cloudkit];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [v4 subscriptionID];
      v22 = [v17 ic_loggingDescription];
      *buf = 138543618;
      v36 = v21;
      v37 = 2114;
      v38 = v22;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Saving subscription %{public}@ %{public}@", buf, 0x16u);
    }

    v25 = _NSConcreteStackBlock;
    v26 = 3221225472;
    v27 = sub_100092B4C;
    v28 = &unk_1008DB138;
    objc_copyWeak(&v32, &location);
    v23 = a1[5];
    v29 = a1[4];
    v30 = v23;
    v31 = a1[6];
    [v17 setModifySubscriptionsCompletionBlock:&v25];
    v24 = [a1[4] operationQueue];
    [v24 addOperation:v17];

    [a1[4] errorAndPromptToFileRadarWithICTap2RadarTypeTooManyOperationsInOperationQueueIfNecessary];
    objc_destroyWeak(&v32);

    objc_destroyWeak(&location);
  }
}

void sub_100092B08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100092B4C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v9 = [*(a1 + 32) processingQueue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100092C74;
  v15[3] = &unk_1008DABF0;
  v16 = v7;
  v17 = WeakRetained;
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v18 = v6;
  v19 = v10;
  v20 = v11;
  v21 = *(a1 + 48);
  v12 = v6;
  v13 = WeakRetained;
  v14 = v7;
  dispatch_async(v9, v15);
}

uint64_t sub_100092C74(uint64_t a1)
{
  v3 = (a1 + 32);
  v2 = *(a1 + 32);
  v4 = +[REMLog cloudkit];
  v5 = v4;
  if (v2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100763DA0();
    }
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v6 = [*(a1 + 40) ic_loggingDescription];
      *buf = 138543362;
      v26 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Saved subscriptions %{public}@", buf, 0xCu);
    }

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v5 = *(a1 + 48);
    v7 = [v5 countByEnumeratingWithState:&v21 objects:v29 count:16];
    if (v7)
    {
      v8 = v7;
      v20 = v3;
      v9 = *v22;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v22 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v21 + 1) + 8 * i);
          v12 = +[REMLog cloudkit];
          if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
          {
            v13 = [v11 subscriptionID];
            v14 = [*(a1 + 40) ic_loggingDescription];
            *buf = 138543618;
            v26 = v13;
            v27 = 2114;
            v28 = v14;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Saved subscription %{public}@ %{public}@", buf, 0x16u);
          }

          v15 = [*(a1 + 56) accountIDForDatabase:*(a1 + 64)];
          if ([v15 length])
          {
            v16 = *(a1 + 56);
            v17 = [v11 subscriptionID];
            [v16 addSubscribedSubscriptionIDs:v17 accountID:v15];
          }

          else
          {
            v17 = +[REMLog cloudkit];
            if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
            {
              v18 = [*(a1 + 64) ic_loggingDescription];
              *buf = 138543618;
              v26 = v18;
              v27 = 2114;
              v28 = v15;
              _os_log_fault_impl(&_mh_execute_header, v17, OS_LOG_TYPE_FAULT, "accountID is nil or empty in saveSubscriptionsForDatabase modifySubscriptionsCompletionBlock %{public}@, accountID: %{public}@", buf, 0x16u);
            }
          }
        }

        v8 = [v5 countByEnumeratingWithState:&v21 objects:v29 count:16];
      }

      while (v8);
      v3 = v20;
    }
  }

  result = *(a1 + 72);
  if (result)
  {
    return (*(result + 16))(result, *v3);
  }

  return result;
}

void sub_100093298(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [[NSSet alloc] initWithArray:v5];

  [*(a1 + 32) setObject:v7 forKeyedSubscript:v6];
}

void sub_1000935F4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 allObjects];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
}

void sub_1000938E4(uint64_t a1)
{
  v2 = (a1 + 32);
  if (!*(a1 + 32))
  {
    sub_100763E34();
  }

  v3 = (a1 + 40);
  if ([*(a1 + 40) isDisabled] & 1) == 0 && (objc_msgSend(*v3, "isDisabledInternal") & 1) == 0 && objc_msgSend(*v3, "supportsCloudKitSyncing") && (objc_msgSend(*v3, "hasPassedBuddy"))
  {
    v4 = +[REMLog cloudkit];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      if ([*(a1 + 40) isInForeground])
      {
        v5 = @"Foreground";
      }

      else
      {
        v5 = @"Background";
      }

      if ([*(a1 + 40) isInternetReachable])
      {
        v6 = @"reachable";
      }

      else
      {
        v6 = @"not reachable";
      }

      v7 = *(a1 + 32);
      v8 = [NSNumber numberWithInteger:*(a1 + 64)];
      *buf = 138544130;
      v41 = v5;
      v42 = 2114;
      v43 = v6;
      v44 = 2114;
      v45 = v7;
      v46 = 2114;
      v47 = v8;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Updating cloud context state. %{public}@ and internet %{public}@. {syncReason: %{public}@, option: %{public}@}", buf, 0x2Au);
    }

    v9 = +[DABabysitter sharedBabysitter];
    v10 = [v9 tokenByRegisteringAccount:*v3 forOperationWithName:@"CloudKitUpdateCloudContextState"];

    if (!v10)
    {
      if (!isCloudContextSyncReasonUserInitiated(*v2))
      {
        v16 = [REMError babySatErrorWithOperationName:@"CloudKitUpdateCloudContextState"];
        v38 = @"identifier";
        v39 = @"CloudKitUpdateCloudContextState";
        v23 = [NSDictionary dictionaryWithObjects:&v39 forKeys:&v38 count:1];
        [_TtC19ReminderKitInternal9Analytics postEventWithName:@"com.apple.remindd.cloudkit.sync.crashDetected" payload:v23 error:v16 performAutoBugCaptureOnError:1];

        v24 = +[REMLog cloudkit];
        if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
        {
          sub_100763E98(v2, a1 + 40);
        }

        v25 = *(a1 + 56);
        if (v25)
        {
          (*(v25 + 16))(v25, 0, v16);
        }

        v26 = +[REMLog cloudkit];
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "os_transaction RELEASE {name: com.apple.remindd.cloudkit.updateCloudContextState}", buf, 2u);
        }

        v27 = *(a1 + 48);
        v28 = objc_opt_self();
        goto LABEL_21;
      }

      v11 = +[REMLog cloudkit];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_100763F2C(v2, a1 + 40);
      }
    }

    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_100093DE8;
    v34[3] = &unk_1008DB160;
    v37 = *(a1 + 56);
    v35 = v10;
    v36 = *(a1 + 48);
    v12 = objc_retainBlock(v34);
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_100093EB0;
    v29[3] = &unk_1008DB250;
    v13 = *(a1 + 32);
    v30 = *(a1 + 40);
    v31 = v13;
    v14 = *(a1 + 64);
    v32 = v12;
    v33 = v14;
    v15 = v12;
    [v30 updateAccountStatusWithCompletionHandler:v29];

    v16 = v37;
LABEL_21:

    return;
  }

  v17 = +[REMLog cloudkit];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [*v3 readinessLoggingDescription];
    *buf = 138543362;
    v41 = v18;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Not updating cloud context state because it's disabled {%{public}@}", buf, 0xCu);
  }

  v19 = *(a1 + 56);
  if (v19)
  {
    (*(v19 + 16))(v19, 0, 0);
  }

  v20 = +[REMLog cloudkit];
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "os_transaction RELEASE {name: com.apple.remindd.cloudkit.updateCloudContextState}", buf, 2u);
  }

  v21 = *(a1 + 48);
  v22 = objc_opt_self();
}

void sub_100093DE8(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1[6];
  if (v6)
  {
    (*(v6 + 16))(v6, a2, v5);
  }

  v7 = a1[4];
  v8 = objc_opt_self();
  v9 = +[REMLog cloudkit];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "os_transaction RELEASE {name: com.apple.remindd.cloudkit.updateCloudContextState}", v12, 2u);
  }

  v10 = a1[5];
  v11 = objc_opt_self();
}

void sub_100093EB0(uint64_t a1)
{
  v2 = [*(a1 + 32) processingQueue];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100093F5C;
  v4[3] = &unk_1008DB228;
  v5 = *(a1 + 32);
  v3 = *(a1 + 48);
  v7 = *(a1 + 56);
  v6 = v3;
  dispatch_async(v2, v4);
}

void sub_100093F5C(uint64_t a1)
{
  v2 = (a1 + 32);
  if (([*(a1 + 32) isInForeground] & 1) == 0)
  {
    v5 = +[REMLog cloudkit];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100763FC0();
    }

    goto LABEL_18;
  }

  if (([*v2 isInternetReachable] & 1) == 0)
  {
    v5 = +[REMLog cloudkit];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100763FFC();
    }

    goto LABEL_18;
  }

  v3 = [*v2 isReadyToSync];
  v4 = +[REMLog cloudkit];
  v5 = v4;
  if ((v3 & 1) == 0)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100764038(v2);
    }

LABEL_18:

    v15 = [*(a1 + 32) processingSelectorDelayer];
    [v15 cancelPreviousFireRequests];

    v16 = [*(a1 + 32) pollingSelectorDelayer];
    [v16 cancelPreviousFireRequests];

    v17 = +[NSMutableSet set];
    [*(a1 + 32) setObjectIDsToProcess:v17];

    (*(*(a1 + 48) + 16))();
    return;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Syncing enabled after updating account status", buf, 2u);
  }

  if (([*v2 didCheckForLongLivedOperations] & 1) == 0)
  {
    [*v2 setDidCheckForLongLivedOperations:1];
    [*v2 checkForLongLivedOperations];
  }

  if ([*v2 needsToUpdateSubscriptions])
  {
    [*v2 updateSubscriptionsWithCompletionHandler:0];
  }

  *buf = 0;
  v35 = buf;
  v36 = 0x2020000000;
  v37 = 0;
  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x2020000000;
  v33 = 0;
  v6 = [*v2 context];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100094334;
  v26[3] = &unk_1008DB188;
  v26[4] = *(a1 + 32);
  v7 = v6;
  v8 = *(a1 + 40);
  v27 = v7;
  v28 = v8;
  v9 = *(a1 + 56);
  v30 = v32;
  v31 = v9;
  v29 = buf;
  [v7 performBlockAndWait:v26];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100094774;
  v21[3] = &unk_1008DB1B0;
  v11 = *(a1 + 48);
  v10 = *(a1 + 56);
  v24 = v32;
  v25 = v10;
  v22 = vextq_s8(*(a1 + 32), *(a1 + 32), 8uLL);
  v23 = v11;
  v12 = objc_retainBlock(v21);
  v13 = v12;
  if (v35[24] == 1)
  {
    v14 = [*v2 containersByAccountID];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100094A14;
    v18[3] = &unk_1008DB200;
    v19 = vextq_s8(*v2, *v2, 8uLL);
    v20 = v13;
    [v14 enumerateKeysAndObjectsUsingBlock:v18];
  }

  else
  {
    (v12[2])(v12);
  }

  _Block_object_dispose(v32, 8);
  _Block_object_dispose(buf, 8);
}

void sub_10009430C(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 128), 8);
  _Block_object_dispose((v1 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_100094334(uint64_t a1)
{
  [*(a1 + 32) cloudKitAccountsInContext:*(a1 + 40)];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v1 = v38 = 0u;
  v2 = [v1 countByEnumeratingWithState:&v35 objects:v44 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v36;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v36 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v35 + 1) + 8 * i);
        if ([v6 inactive])
        {
          v43[0] = @"InitWithStoreController";
          v43[1] = @"AccountsDidChange";
          v43[2] = @"CloudKitAccountChanged";
          v7 = [NSArray arrayWithObjects:v43 count:3];
          if ([v6 didChooseToMigrate] && (objc_msgSend(v6, "didFinishMigration") & 1) == 0 && objc_msgSend(v7, "containsObject:", *(a1 + 48)))
          {
            v25 = +[REMLog cloudkit];
            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              sub_1007640C8(v6);
            }

            *(*(*(a1 + 56) + 8) + 24) = 1;
            goto LABEL_17;
          }
        }

        else if (![v6 didFinishMigration] || (objc_msgSend(v6, "ckUserRecordName"), v8 = objc_claimAutoreleasedReturnValue(), v8, !v8))
        {
          *(*(*(a1 + 56) + 8) + 24) = 1;
          goto LABEL_17;
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v35 objects:v44 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_17:

  v9 = *(a1 + 72);
  if (v9 == 1)
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v18 = v1;
    v19 = [v18 countByEnumeratingWithState:&v27 objects:v41 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v28;
      while (2)
      {
        for (j = 0; j != v20; j = j + 1)
        {
          if (*v28 != v21)
          {
            objc_enumerationMutation(v18);
          }

          if (([*(*(&v27 + 1) + 8 * j) inactive] & 1) == 0)
          {
            *(*(*(a1 + 64) + 8) + 24) = 1;
            goto LABEL_39;
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v27 objects:v41 count:16];
        if (v20)
        {
          continue;
        }

        break;
      }
    }

LABEL_39:

    v23 = +[REMLog cloudkit];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = *(*(*(a1 + 64) + 8) + 24);
      *buf = 67109120;
      v40 = v24;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "UpdateCloudContextState: UpdateCloudContextStateSyncOptionForced, shouldSync = %d", buf, 8u);
    }

    if ([*(a1 + 48) isEqualToString:@"SyncInterface(RemindtoolCloudKitRestart)"])
    {
      *(*(*(a1 + 56) + 8) + 24) = 1;
    }
  }

  else if (!v9)
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v10 = v1;
    v11 = [v10 countByEnumeratingWithState:&v31 objects:v42 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v32;
      while (2)
      {
        for (k = 0; k != v12; k = k + 1)
        {
          if (*v32 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v31 + 1) + 8 * k);
          if (([v15 inactive] & 1) == 0)
          {
            v16 = [v15 ckServerChangeTokens];
            v17 = [v16 count];

            if (!v17)
            {
              *(*(*(a1 + 64) + 8) + 24) = 1;
              goto LABEL_44;
            }
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v31 objects:v42 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

LABEL_44:
  }
}

void sub_100094774(uint64_t a1)
{
  if (*(*(*(a1 + 56) + 8) + 24) == 1)
  {
    v2 = +[REMLog cloudkit];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 32);
      v4 = [NSNumber numberWithInteger:*(a1 + 64)];
      *buf = 138543618;
      v12 = v3;
      v13 = 2114;
      v14 = v4;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "UpdateCloudContextState: Triggering a sync {syncReason: %{public}@, syncOption: %{public}@}", buf, 0x16u);
    }

    v6 = *(a1 + 32);
    v5 = *(a1 + 40);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10009492C;
    v9[3] = &unk_1008DAC68;
    v9[4] = v6;
    v10 = *(a1 + 48);
    [v5 syncWithReason:v6 discretionary:0 completionHandler:v9];
  }

  else
  {
    v7 = *(a1 + 48);
    v8 = *(*(a1 + 48) + 16);

    v8();
  }
}

void sub_10009492C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[REMLog cloudkit];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = 138543618;
    v7 = v5;
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "UpdateCloudContextState: Sync completed {syncReason: %{public}@, error: %@}", &v6, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100094A14(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[REMLog cloudkit];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138543618;
    v12 = v3;
    v13 = 2114;
    v14 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "UpdateCloudContextState: Going to fetch user record with accountIdentifier: %{public}@ before sync {syncReason: %{public}@}", buf, 0x16u);
  }

  v6 = *(a1 + 40);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100094B64;
  v8[3] = &unk_1008DB1D8;
  v8[4] = v6;
  v9 = v3;
  v10 = *(a1 + 48);
  v7 = v3;
  [v6 operationQueueFetchUserRecordWithAccountID:v7 completionHandler:v8];
}

void sub_100094B64(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [a1[4] processingQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100094C68;
  block[3] = &unk_1008DAD58;
  v11 = v6;
  v12 = a1[5];
  v13 = v5;
  v14 = a1[4];
  v15 = a1[6];
  v8 = v5;
  v9 = v6;
  dispatch_async(v7, block);
}

uint64_t sub_100094C68(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = +[REMLog cloudkit];
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100764154(a1);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 40);
    v6 = [*(a1 + 48) ic_loggingDescription];
    v9 = 138543619;
    v10 = v5;
    v11 = 2113;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "UpdateCloudContextState: Fetched user record with accountIdentifier: %{public}@: %{private}@", &v9, 0x16u);
  }

  if (*(a1 + 48))
  {
    v7 = [*(a1 + 56) cloudContextDelegate];
    [v7 cloudContext:*(a1 + 56) didFetchUserRecord:*(a1 + 48) accountID:*(a1 + 40)];
  }

  return (*(*(a1 + 64) + 16))();
}

void sub_100094E38(uint64_t a1, void *a2, void *a3)
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100094EFC;
  v7[3] = &unk_1008DB2C8;
  v8 = a2;
  v9 = a3;
  v10 = *(a1 + 32);
  v5 = v9;
  v6 = v8;
  [v5 fetchAllLongLivedOperationIDsWithCompletionHandler:v7];
}

void sub_100094EFC(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = +[REMLog cloudkit];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1007641CC(v6, a1);
    }
  }

  v18 = v6;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v23;
    do
    {
      v12 = 0;
      do
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v22 + 1) + 8 * v12);
        v14 = a1[4];
        v15 = a1[5];
        v19[0] = _NSConcreteStackBlock;
        v19[1] = 3221225472;
        v19[2] = sub_1000950CC;
        v19[3] = &unk_1008DB2A0;
        v19[4] = v13;
        v16 = v14;
        v17 = a1[6];
        v20 = v16;
        v21 = v17;
        [v15 fetchLongLivedOperationWithID:v13 completionHandler:{v19, v18}];

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v10);
  }
}

void sub_1000950CC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = +[REMLog cloudkit];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100764240(a1);
    }
  }

  if ([v5 isFinished])
  {
    v8 = +[REMLog cloudkit];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [v5 ic_loggingDescription];
      v10 = *(a1 + 40);
      *buf = 138543618;
      v35 = v9;
      v36 = 2114;
      v37 = v10;
      v11 = "Not adding long-lived operation because it's finished: %{public}@, accountID: %{public}@";
LABEL_11:
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, v11, buf, 0x16u);

      goto LABEL_27;
    }

    goto LABEL_27;
  }

  if ([v5 isCancelled])
  {
    v8 = +[REMLog cloudkit];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [v5 ic_loggingDescription];
      v12 = *(a1 + 40);
      *buf = 138543618;
      v35 = v9;
      v36 = 2114;
      v37 = v12;
      v11 = "Not adding long-lived operation because it's cancelled: %{public}@, accountID: %{public}@";
      goto LABEL_11;
    }

LABEL_27:

    goto LABEL_28;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v28 = v6;
    v8 = v5;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v27 = a1;
    v13 = [*(a1 + 48) operationQueue];
    v14 = [v13 operations];

    v15 = [v14 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v30;
      while (2)
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v30 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v29 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v20 = [v19 operationID];
            v21 = [v8 operationID];
            v22 = [v20 isEqualToString:v21];

            if (v22)
            {

              goto LABEL_26;
            }
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v29 objects:v33 count:16];
        if (v16)
        {
          continue;
        }

        break;
      }
    }

    v23 = +[REMLog cloudkit];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = [v8 ic_loggingDescription];
      v25 = *(v27 + 40);
      *buf = 138543618;
      v35 = v24;
      v36 = 2114;
      v37 = v25;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "Adding long-lived operation back to the queue: %{public}@, accountID: %{public}@", buf, 0x16u);
    }

    [*(v27 + 48) addCallbackBlocksToModifyRecordsOperation:v8 rootRecordIDsByShareID:0];
    v26 = [*(v27 + 48) operationQueue];
    [v26 addOperation:v8];

    [*(v27 + 48) errorAndPromptToFileRadarWithICTap2RadarTypeTooManyOperationsInOperationQueueIfNecessary];
LABEL_26:
    v6 = v28;
    goto LABEL_27;
  }

LABEL_28:
}

void sub_100095894(uint64_t a1)
{
  v2 = [*(a1 + 32) retryCountsByOperationType];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];
  v4 = v3;
  v5 = &off_100904E78;
  if (v3)
  {
    v5 = v3;
  }

  v6 = v5;

  v7 = [v6 unsignedIntegerValue] + 1;
  v8 = +[REMLog cloudkit];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = *(a1 + 40);
    v12 = 138543874;
    v13 = v9;
    v14 = 1024;
    v15 = [v6 unsignedIntegerValue];
    v16 = 1024;
    v17 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Incrementing retry count for %{public}@ from %d to %d", &v12, 0x18u);
  }

  v10 = [NSNumber numberWithUnsignedInteger:v7];
  v11 = [*(a1 + 32) retryCountsByOperationType];
  [v11 setObject:v10 forKeyedSubscript:*(a1 + 40)];
}

void sub_100095AB0(uint64_t a1)
{
  v2 = +[REMLog cloudkit];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Clearing retry count for %{public}@", &v5, 0xCu);
  }

  v4 = [*(a1 + 40) retryCountsByOperationType];
  [v4 removeObjectForKey:*(a1 + 32)];
}

void sub_100095EC8(uint64_t a1)
{
  v2 = (a1 + 32);
  if ([*(a1 + 32) isInternetReachable])
  {
    v3 = [*v2 isReadyToSync];
    v4 = +[REMLog cloudkit];
    v5 = v4;
    if (v3)
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v6 = *(a1 + 40);
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v6;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "ICCC: Starting a retry timer if necessary for error: %{public}@", &buf, 0xCu);
      }

      [*(a1 + 32) timeIntervalToRetryAfterFromError:*(a1 + 40)];
      v8 = v7;
      *&buf = 0;
      *(&buf + 1) = &buf;
      v19 = 0x2020000000;
      v20 = 0;
      v9 = [*(a1 + 32) retryCountsByOperationType];
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_1000961B4;
      v15[3] = &unk_1008D9CF0;
      v15[4] = &buf;
      [v9 enumerateKeysAndObjectsUsingBlock:v15];

      v10 = (*(*(&buf + 1) + 24) + 1) * (*(*(&buf + 1) + 24) + 1);
      v11 = fmin(v10 + v10, 933.0);
      if (v11 > v8)
      {
        v12 = +[REMLog cloudkit];
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          *v16 = 134217984;
          v17 = v11;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Using backoff time for retry (%.0fs)", v16, 0xCu);
        }

        v8 = v11;
      }

      if (v8 > 0.0)
      {
        [*v2 setHasRetryTimer:1];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1000961FC;
        block[3] = &unk_1008DB318;
        block[4] = *v2;
        *&block[5] = v8;
        dispatch_async(&_dispatch_main_q, block);
      }

      _Block_object_dispose(&buf, 8);
    }

    else
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_1007642FC(v2);
      }
    }
  }

  else
  {
    v13 = +[REMLog cloudkit];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1007642C0();
    }
  }
}

void sub_10009618C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1000961B4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(*(*(a1 + 32) + 8) + 24);
  result = [a3 unsignedIntegerValue];
  if (v4 <= result)
  {
    v6 = result;
  }

  else
  {
    v6 = v4;
  }

  *(*(*(a1 + 32) + 8) + 24) = v6;
  return result;
}

void sub_1000961FC(uint64_t a1)
{
  v2 = [*(a1 + 32) retryTimer];
  if (!v2 || (v3 = v2, [*(a1 + 32) retryTimer], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "isValid"), v4, v3, (v5 & 1) == 0))
  {
    v6 = +[REMLog cloudkit];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 40);
      v9[0] = 67109120;
      v9[1] = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Retrying operations after %ds", v9, 8u);
    }

    v8 = [NSTimer scheduledTimerWithTimeInterval:*(a1 + 32) target:"retryOperationsIfNecessary" selector:0 userInfo:0 repeats:*(a1 + 40)];
    [*(a1 + 32) setRetryTimer:v8];
  }
}

id sub_100096460(uint64_t a1)
{
  v2 = [*(a1 + 32) retryTimer];
  [v2 invalidate];

  [*(a1 + 32) setRetryTimer:0];
  v3 = *(a1 + 32);

  return [v3 setHasRetryTimer:0];
}

void sub_1000964BC(uint64_t a1)
{
  v1 = (a1 + 32);
  if ([*(a1 + 32) isInternetReachable])
  {
    v2 = [*v1 isReadyToSync];
    v3 = +[REMLog cloudkit];
    v4 = v3;
    if (v2)
    {
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Retrying operations", buf, 2u);
      }

      objc_initWeak(&location, *v1);
      if ([*v1 needsToUpdateSubscriptions])
      {
        v5 = +[REMLog cloudkit];
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Retrying to update subscriptions", buf, 2u);
        }

        v6 = +[REMLog cloudkit];
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "os_transaction INIT {name: com.apple.remindd.cloudkit.retry.updateSubscription}", buf, 2u);
        }

        v7 = os_transaction_create();
        v8 = *v1;
        v43[0] = _NSConcreteStackBlock;
        v43[1] = 3221225472;
        v43[2] = sub_100096D04;
        v43[3] = &unk_1008D9BE8;
        objc_copyWeak(&v45, &location);
        v9 = v7;
        v44 = v9;
        [v8 updateSubscriptionsWithCompletionHandler:v43];

        objc_destroyWeak(&v45);
      }

      v10 = *v1;
      v11 = objc_opt_class();
      v12 = [*v1 accountZoneIDsNeedingToBeSaved];
      LODWORD(v11) = [v11 haveZoneIDsInAccountZoneIDs:v12];

      if (v11)
      {
        v13 = +[REMLog cloudkit];
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Retrying to save record zones", buf, 2u);
        }

        v14 = [*v1 containersByAccountID];
        v42[0] = _NSConcreteStackBlock;
        v42[1] = 3221225472;
        v42[2] = sub_100096DBC;
        v42[3] = &unk_1008DAF10;
        v42[4] = *v1;
        [v14 enumerateKeysAndObjectsUsingBlock:v42];
      }

      v15 = [*v1 databaseScopeStringsNeedingRetryFetchChangesByAccountID];
      v16 = [v15 count] == 0;

      if (!v16)
      {
        v17 = +[REMLog cloudkit];
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = [*v1 databaseScopeStringsNeedingRetryFetchChangesByAccountID];
          *buf = 138543362;
          v48 = v18;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Retrying CKFetchDatabaseChangesOperation databaseScopes: %{public}@", buf, 0xCu);
        }

        [*v1 syncWithReason:@"RetryCKFetchDatabaseChangesOperation" discretionary:0 completionHandler:&stru_1008DB380];
      }

      v19 = *v1;
      v20 = objc_opt_class();
      v21 = [*v1 accountZoneIDsNeedingFetchChanges];
      LODWORD(v20) = [v20 haveZoneIDsInAccountZoneIDs:v21];

      if (v20)
      {
        v22 = +[REMLog cloudkit];
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Retrying to fetch record zone changes", buf, 2u);
        }

        v23 = +[REMLog cloudkit];
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "os_transaction INIT {name: com.apple.remindd.cloudkit.retry.fetchRecordZoneChanges}", buf, 2u);
        }

        v40[0] = _NSConcreteStackBlock;
        v40[1] = 3221225472;
        v40[2] = sub_1000970DC;
        v40[3] = &unk_1008DB3A8;
        v24 = os_transaction_create();
        v41 = v24;
        v25 = objc_retainBlock(v40);
        v26 = *v1;
        v27 = +[NSDictionary dictionary];
        [v26 fetchRecordZoneChangesWithReason:@"RetryAccountZoneIDsNeedingFetchChanges" cloudSchemaCatchUpSyncContextMap:v27 completionHandler:v25];
      }

      v28 = [*v1 objectIDsToProcess];
      if ([v28 count])
      {
      }

      else
      {
        v30 = [*v1 objectIDsToRetry];
        v31 = [v30 count] == 0;

        if (v31)
        {
LABEL_37:
          v33 = [*v1 containersByAccountID];
          v34 = [v33 allKeys];

          v35 = [*v1 setUpCloudSchemaCatchUpSyncContextMapWithAccountIDs:v34 syncReason:@"RetryCloudSchemaCatchUpSync"];
          if ([v35 count])
          {
            v36 = +[REMLog cloudkit];
            if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
            {
              v37 = [v35 allKeys];
              *buf = 138543362;
              v48 = v37;
              _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "CloudSchemaCatchUpSync: Retrying catch up sync for accounts: %{public}@", buf, 0xCu);
            }

            [*v1 syncWithReason:@"RetryCloudSchemaCatchUpSync" discretionary:0 completionHandler:&stru_1008DB3C8];
          }

          else
          {
            if ([*v1 needsToMergeLocalObjects])
            {
              v38 = +[REMLog cloudkit];
              if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "MERGE.LOCAL: Retrying to merge local objects", buf, 2u);
              }

              [*v1 syncWithReason:@"RetryMergeLocalObjects" discretionary:0 completionHandler:&stru_1008DB3E8];
            }

            if ([*v1 needsToUpdateCloudContextOnAccountsDidChange])
            {
              v39 = +[REMLog cloudkit];
              if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Retry calling UpdateCloudContext after accountsDidChange and RDAccountInitializer completed works.", buf, 2u);
              }

              [*v1 setNeedsToUpdateCloudContextOnAccountsDidChange:0];
              [*v1 updateCloudContextStateWithSyncOption:1 syncReason:@"AccountsDidChange" withCompletionHandler:0];
            }
          }

          objc_destroyWeak(&location);
          return;
        }
      }

      v32 = +[REMLog cloudkit];
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Retrying to process changes", buf, 2u);
      }

      [*v1 processPendingCloudObjectsWithOperationName:ICNSBlockOperationNameProcessObjectsForRetryOperations];
      goto LABEL_37;
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1007643C8(v1);
    }
  }

  else
  {
    v29 = +[REMLog cloudkit];
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      sub_10076438C();
    }
  }
}

id sub_100096D04(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained incrementOrClearRetryCountForOperationType:@"Subscriptions" error:v3];

  v5 = +[REMLog cloudkit];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "os_transaction RELEASE {name: com.apple.remindd.cloudkit.retry.updateSubscription}", v8, 2u);
  }

  v6 = *(a1 + 32);
  return objc_opt_self();
}

void sub_100096DBC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) operationToSaveZonesIfNecessaryForAccountID:v3];
  if (v4)
  {
    v5 = +[REMLog cloudkit];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "os_transaction INIT {name: com.apple.remindd.cloudkit.retry.zoneIDsNeedingToBeSaved[%@]}", buf, 0xCu);
    }

    v6 = os_transaction_create();
    [v4 modifyRecordZonesCompletionBlock];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100096F70;
    v13 = v10[3] = &unk_1008DB340;
    v11 = v3;
    v12 = v6;
    v7 = v6;
    v8 = v13;
    [v4 setModifyRecordZonesCompletionBlock:v10];
    v9 = [*(a1 + 32) operationQueue];
    [v9 addOperation:v4];

    [*(a1 + 32) errorAndPromptToFileRadarWithICTap2RadarTypeTooManyOperationsInOperationQueueIfNecessary];
  }
}

id sub_100096F70(void *a1)
{
  (*(a1[6] + 16))();
  v2 = +[REMLog cloudkit];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "os_transaction RELEASE {name: com.apple.remindd.cloudkit.retry.zoneIDsNeedingToBeSaved[%@]}", &v6, 0xCu);
  }

  v4 = a1[5];
  return objc_opt_self();
}

void sub_100097040(id a1, NSError *a2)
{
  v2 = a2;
  v3 = +[REMLog cloudkit];
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100764458();
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "CKFetchDatabaseChangesOperation: Retry sync completed.", v5, 2u);
  }
}

void sub_1000970DC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[REMLog cloudkit];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Completed retry to fetch record zone changes {error: %@}", &v8, 0xCu);
  }

  v5 = +[REMLog cloudkit];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v8) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "os_transaction RELEASE {name: com.apple.remindd.cloudkit.retry.fetchRecordZoneChanges}", &v8, 2u);
  }

  v6 = *(a1 + 32);
  v7 = objc_opt_self();
}

void sub_1000971F4(id a1, NSError *a2)
{
  v2 = a2;
  v3 = +[REMLog cloudkit];
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1007644C8();
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "CloudSchemaCatchUpSync: Retry catch-up sync completed.", v5, 2u);
  }
}

void sub_100097290(id a1, NSError *a2)
{
  v2 = a2;
  v3 = +[REMLog cloudkit];
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100764538();
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "MERGE.LOCAL: Retry merging local objects completed.", v5, 2u);
  }
}

void sub_1000978F0(uint64_t a1)
{
  v3 = [REMCDAccount accountWithCKIdentifier:*(a1 + 32) context:*(a1 + 40)];
  if (v3)
  {
    v4 = [REMCKServerChangeToken serverChangeTokenForAccount:v3 zoneID:*(a1 + 56) databaseScope:*(a1 + 72) context:*(a1 + 40)];
    v5 = v4;
    if (v4)
    {
      [v4 setServerChangeToken:*(a1 + 64)];
    }

    else
    {
      v30 = [REMCKServerChangeToken addServerChangeTokenForAccount:v3 ckServerChangeToken:*(a1 + 64) zoneID:*(a1 + 56) databaseScope:*(a1 + 72) context:*(a1 + 40)];
    }
  }

  else
  {
    v6 = +[REMLog cloudkit];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 32);
      *buf = 138543362;
      v50 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "saveServerChangeToken: The cloudKitAccount is nil for accountID %{public}@", buf, 0xCu);
    }

    +[NSMutableArray array];
    v40 = v39 = a1;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v8 = [*(a1 + 48) cloudKitAccountsInContext:*(a1 + 40)];
    v9 = [v8 countByEnumeratingWithState:&v45 objects:v58 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v46;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v46 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v45 + 1) + 8 * i);
          v1 = [v13 name];
          v14 = [v13 identifier];
          v15 = [v14 UUIDString];
          v16 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"(name: %@, id: %@, inactive: %d)", v1, v15, [v13 inactive]);
          [v40 addObject:v16];
        }

        v10 = [v8 countByEnumeratingWithState:&v45 objects:v58 count:16];
      }

      while (v10);
    }

    v17 = [*(v39 + 48) appleAccountUtilities];
    v38 = [v17 unsafeUntilSystemReady_primaryICloudACAccount];

    v18 = +[NSMutableArray array];
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v19 = [*(v39 + 48) appleAccountUtilities];
    v20 = [v19 unsafeUntilSystemReady_allICloudAccountsWithCloudKitEnabled];

    v21 = [v20 countByEnumeratingWithState:&v41 objects:v57 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v42;
      do
      {
        for (j = 0; j != v22; j = j + 1)
        {
          if (*v42 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v41 + 1) + 8 * j);
          v26 = [v25 accountDescription];
          v27 = [v25 identifier];
          v28 = [v25 aa_accountClass];
          v1 = [NSString stringWithFormat:@"(name: %@, id: %@, class: %@)", v26, v27, v28];
          [v18 addObject:v1];
        }

        v22 = [v20 countByEnumeratingWithState:&v41 objects:v57 count:16];
      }

      while (v22);
    }

    v29 = +[REMLog cloudkit];
    a1 = v39;
    if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
    {
      v32 = [v40 componentsJoinedByString:{@", "}];
      if (v38)
      {
        v34 = [v38 accountDescription];
        v1 = [v38 identifier];
        v37 = v34;
        v33 = [NSString stringWithFormat:@"(name: %@, id: %@)", v34, v1];
      }

      else
      {
        v33 = @"nil";
      }

      v35 = [v18 componentsJoinedByString:{@", "}];
      v36 = [*(v39 + 48) isReadyToSync];
      *buf = 138413058;
      v50 = v32;
      v51 = 2112;
      v52 = v33;
      v53 = 2112;
      v54 = v35;
      v55 = 1024;
      v56 = v36;
      _os_log_fault_impl(&_mh_execute_header, v29, OS_LOG_TYPE_FAULT, "Trying to save server change token without an account {accounts: [%@], primaryACAccount: %@, acAccounts: [%@], isReadyToSync: %d}", buf, 0x26u);
      if (v38)
      {
      }
    }

    v3 = 0;
  }

  v31 = *(a1 + 48);
  [objc_opt_class() saveAndFaultIfFailWithContext:*(a1 + 40) shouldTakeServerAsTruth:1 logDescription:@"saving server change token"];
}

void sub_100097FCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100097FE4(void *a1)
{
  v2 = a1 + 4;
  v3 = [REMCDAccount accountWithCKIdentifier:a1[4] context:a1[5]];
  if (v3)
  {
    v4 = [REMCKServerChangeToken serverChangeTokenForAccount:v3 zoneID:a1[6] databaseScope:a1[8] context:a1[5]];
    v5 = [v4 serverChangeToken];
    v6 = *(a1[7] + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }

  else
  {
    v8 = +[REMLog cloudkit];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1007646FC(v2);
    }
  }
}

void sub_1000982A4(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [REMCDAccount accountWithCKIdentifier:*(a1 + 32) context:*(a1 + 40)];
  if (v3)
  {
    v4 = [REMCKServerChangeToken serverChangeTokenForAccount:v3 zoneID:*(a1 + 48) databaseScope:*(a1 + 64) context:*(a1 + 40)];
    if (v4)
    {
      [*(a1 + 40) deleteObject:v4];
      [v3 removeCkServerChangeTokensObject:v4];
      v5 = *(a1 + 56);
      [objc_opt_class() saveAndFaultIfFailWithContext:*(a1 + 40) shouldTakeServerAsTruth:1 logDescription:@"deleting server change token"];
    }
  }

  else
  {
    v6 = +[REMLog cloudkit];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100764810(v2);
    }
  }
}

id sub_100098468(uint64_t a1)
{
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = [*(a1 + 32) cloudKitAccountsInContext:*(a1 + 40)];
  v2 = [obj countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v21;
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v21 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v20 + 1) + 8 * i);
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v7 = [v6 ckServerChangeTokens];
        v8 = [v7 copy];

        v9 = [v8 countByEnumeratingWithState:&v16 objects:v24 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v17;
          do
          {
            for (j = 0; j != v10; j = j + 1)
            {
              if (*v17 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v16 + 1) + 8 * j);
              [*(a1 + 40) deleteObject:v13];
              [v6 removeCkServerChangeTokensObject:v13];
            }

            v10 = [v8 countByEnumeratingWithState:&v16 objects:v24 count:16];
          }

          while (v10);
        }
      }

      v3 = [obj countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v3);
  }

  return [*(a1 + 40) ic_saveWithLogDescription:@"deleting all server change tokens"];
}

void sub_1000987A8(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000988B8;
  v8[3] = &unk_1008DB488;
  v9 = v2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10009892C;
  v5[3] = &unk_1008DB4D8;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  v7 = *(a1 + 48);
  [v3 updateUserRecordWithAccountID:v9 updateFunction:v8 completionHandler:v5];
}

void sub_1000988B8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {

    [REMCDAccount clearUserRecord:a2];
  }

  else
  {
    v4 = +[REMLog cloudkit];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1007648B4(a1);
    }
  }
}

void sub_10009892C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[REMLog cloudkit];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100764928();
    }
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Successfully cleaned user record", buf, 2u);
    }

    v6 = *(a1 + 32);
    v7 = [objc_opt_class() appZoneID];
    v15[0] = v7;
    v8 = *(a1 + 32);
    v9 = [objc_opt_class() migrationZoneID];
    v15[1] = v9;
    v5 = [NSArray arrayWithObjects:v15 count:2];

    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100098AD4;
    v12[3] = &unk_1008DB4B0;
    v13 = *(a1 + 48);
    [v10 deleteRecordZonesWithZoneIDs:v5 accountID:v11 markZonesAsUserPurged:1 completionHandler:v12];
  }
}

void sub_100098E58(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  v6 = @"operationCount";
  v3 = *(a1 + 32);
  v4 = [NSNumber numberWithUnsignedInteger:*(a1 + 40)];
  v7 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  [v2 postNotificationName:@"ICCloudContextHasPendingOperationsDidChangeNotification" object:v3 userInfo:v5];
}

void sub_100099010(uint64_t a1)
{
  v1 = [*(a1 + 32) icUserDefaults];
  v2 = [v1 userDefaults];
  v4 = @"PollCloudKitWhenLaunchingAndBackgrounding";
  v5 = &__kCFBooleanFalse;
  v3 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];
  [v2 registerDefaults:v3];
}

void sub_1000991A8(uint64_t a1)
{
  [*(a1 + 32) clearSubscribedSubscriptionIDs];
  [*(a1 + 32) unobservePrimaryCloudKitAccountPersonIDSaltChanges];
  v2 = [*(a1 + 32) storeController];
  v3 = [v2 inMemoryPrimaryActiveCKAccountREMObjectID];

  if (!v3)
  {
    v4 = +[REMLog cloudkit];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Primary CK account may have just been disabled, force run observePrimaryCloudKitAccountPersonIDSaltChanges to invoke the 'errorHandler' to unset personIDs in non-primary CK accounts", v6, 2u);
    }

    [*(a1 + 32) observePrimaryCloudKitAccountPersonIDSaltChanges];
    v5 = [*(a1 + 32) accountPersonIDSaltObserver];

    if (v5)
    {
      sub_100764998();
    }
  }
}

void sub_1000996AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000996D8(uint64_t a1)
{
  v2 = [*(a1 + 32) accountInitializerDidCompleteOnAccountsDidChangeObserver];

  if (v2)
  {
    v3 = [*(a1 + 32) accountInitializerDidCompleteOnAccountsDidChangeObserver];
    [v3 unobserve];

    v4 = *(a1 + 32);

    [v4 setAccountInitializerDidCompleteOnAccountsDidChangeObserver:0];
  }
}

void sub_10009974C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = +[REMLog cloudkit];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "ICCC: Received RDAccountInitializer.DidCompleteInitializeAllAccountsNotification after accountsDidEnable.", buf, 2u);
    }

    [WeakRetained didCompleteInitializeAllAccounts:v3];
    v6 = [WeakRetained accountInitializerDidCompleteOnAccountsDidChangeObserver];
    [v6 unobserve];

    [WeakRetained setAccountInitializerDidCompleteOnAccountsDidChangeObserver:0];
    v7 = +[REMLog cloudkit];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "os_transaction RELEASE {name: com.apple.remindd.cloudkit.accountsDidChange.pending.RDAccountInitializerDidCompleteInitializeAllAccountsObserver}", v10, 2u);
    }

    v8 = *(a1 + 32);
    v9 = objc_opt_self();
  }
}

id sub_10009A0B0(uint64_t a1)
{
  v2 = +[REMLog cloudkit];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "os_transaction RELEASE {name: com.apple.remindd.cloudkit.sync.aps}", v5, 2u);
  }

  v3 = *(a1 + 32);
  return objc_opt_self();
}

void sub_10009A134(uint64_t a1)
{
  v2 = +[REMSignpost sync];
  v3 = os_signpost_id_generate(v2);
  v4 = v2;
  v5 = v4;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "cloudkit.aps", "", buf, 2u);
  }

  v6 = +[NSDate date];
  v7 = +[DABabysitter sharedBabysitter];
  v8 = [v7 tokenByRegisteringAccount:*(a1 + 32) forOperationWithName:@"SYNC[APS]"];

  if (v8)
  {
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10009A3EC;
    v16[3] = &unk_1008DB500;
    v11 = v5;
    v23 = v3;
    v12 = *(a1 + 32);
    v17 = v11;
    v18 = v12;
    v19 = *(a1 + 48);
    v20 = v6;
    v21 = v8;
    v22 = *(a1 + 56);
    [v9 handleNotification:v10 completionHandler:v16];

    v13 = v17;
  }

  else
  {
    v13 = [REMError babySatErrorWithOperationName:@"com.apple.remindd.cloudkit.sync.crashDetected"];
    v25 = @"identifier";
    v26 = @"SYNC[APS]";
    v14 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    [_TtC19ReminderKitInternal9Analytics postEventWithName:@"com.apple.remindd.cloudkit.sync.crashDetected" payload:v14 error:v13 performAutoBugCaptureOnError:1];

    v15 = +[REMLog cloudkit];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      sub_100764B84(a1 + 32);
    }

    (*(*(a1 + 56) + 16))();
  }
}

void sub_10009A3EC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = +[REMLog cloudkit];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100764C10();
    }
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = v5;
    v7 = *(a1 + 80);
    if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_INTERVAL_END, v7, "cloudkit.aps", "", buf, 2u);
    }

    v8 = [*(a1 + 40) processingQueue];
    v15 = _NSConcreteStackBlock;
    v16 = 3221225472;
    v17 = sub_10009A604;
    v18 = &unk_1008D9B98;
    v9 = *(a1 + 48);
    v19 = *(a1 + 40);
    v20 = v9;
    dispatch_async(v8, &v15);

    v10 = [REMLog cloudkit:v15];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = +[NSDate date];
      [v11 timeIntervalSinceDate:*(a1 + 56)];
      *buf = 134217984;
      v22 = v12;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "SYNC[APS] END {duration: %.4f}", buf, 0xCu);
    }
  }

  v13 = *(a1 + 64);
  v14 = objc_opt_self();
  (*(*(a1 + 72) + 16))();
}

void sub_10009AD68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose((v33 - 208), 8);
  _Unwind_Resume(a1);
}

void sub_10009ADD4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = +[REMLog cloudkit];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Completed save record zone Reminders for force-setting migration state", v7, 2u);
  }

  if (v4)
  {
    v6 = +[REMLog cloudkit];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100764D34();
    }
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_10009AE98(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = +[REMLog cloudkit];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    *buf = 138543618;
    v28 = v6;
    v29 = 2112;
    v30 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Fetched user record for force-setting migration state in accountID: %{public}@, {record: %@}", buf, 0x16u);
  }

  objc_storeStrong((*(*(a1 + 64) + 8) + 40), a2);
  v7 = [*(*(*(a1 + 64) + 8) + 40) recordID];
  v8 = [v7 recordName];
  v9 = [NSString stringWithFormat:@"%@/%@", @"Account", v8];

  v10 = [CKRecordID alloc];
  v11 = *(a1 + 40);
  v12 = [objc_opt_class() appZoneID];
  v13 = [v10 initWithRecordName:v9 zoneID:v12];

  if (*(a1 + 80) == 1)
  {
    v14 = +[REMLog cloudkit];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v28 = v13;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Force-setting migration state: create an account record for force-setting migration with id: %{public}@", buf, 0xCu);
    }

    v15 = [[CKRecord alloc] initWithRecordType:@"Account" recordID:v13];
    v16 = *(*(a1 + 72) + 8);
    v17 = *(v16 + 40);
    *(v16 + 40) = v15;

    dispatch_group_leave(*(a1 + 48));
  }

  else
  {
    v18 = [CKFetchRecordsOperation alloc];
    v26 = v13;
    v19 = [NSArray arrayWithObjects:&v26 count:1];
    v20 = [v18 initWithRecordIDs:v19];

    [*(a1 + 40) configureOperation:v20];
    v21 = [*(a1 + 56) privateCloudDatabase];
    [v20 setDatabase:v21];

    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_10009B1BC;
    v23[3] = &unk_1008DB578;
    v25 = *(a1 + 72);
    v24 = *(a1 + 48);
    [v20 setPerRecordCompletionBlock:v23];
    v22 = [v20 database];
    [v22 addOperation:v20];
  }
}

void sub_10009B1BC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[REMLog cloudkit];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Fetched account record for force-setting migration state {record: %@}", &v8, 0xCu);
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  dispatch_group_leave(*(a1 + 32));
}

void sub_10009B2A0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v6 = +[REMLog cloudkit];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    LOWORD(v8) = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Completed modify records operation for force-setting migration state", &v8, 2u);
  }

  if (v5)
  {
    v7 = +[REMLog cloudkit];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138543362;
      v9 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Failed to modify records operation for force-setting migration state {error: %{public}@}", &v8, 0xCu);
    }
  }

  (*(*(a1 + 32) + 16))();
}

id sub_10009B460(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    v2 = *(a1 + 41) ^ 1;
  }

  else
  {
    v2 = 0;
  }

  [*(a1 + 32) adjustAPSNotificationDebouncerIntervalWithMigrationState:v2 & 1];
  result = [*(a1 + 32) uploadSuspended];
  if ((v2 & 1) != result)
  {
    v4 = +[REMLog cloudkit];
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    if (v2)
    {
      if (v5)
      {
        v9 = 0;
        v6 = "Suspend upload";
        v7 = &v9;
LABEL_10:
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, v6, v7, 2u);
      }
    }

    else if (v5)
    {
      v8 = 0;
      v6 = "Resume upload";
      v7 = &v8;
      goto LABEL_10;
    }

    return [*(a1 + 32) setUploadSuspended:v2 & 1];
  }

  return result;
}

void sub_10009B618(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10009B630(uint64_t a1)
{
  v2 = [*(a1 + 32) cloudKitAccountsInContext:*(a1 + 40)];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10009B6C4;
  v3[3] = &unk_1008DB5F0;
  v3[4] = *(a1 + 48);
  [v2 enumerateObjectsUsingBlock:v3];
}

void sub_10009B6C4(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  if ([v6 didChooseToMigrate])
  {
    v7 = [v6 didFinishMigration] ^ 1;
  }

  else
  {
    v7 = 0;
  }

  v8 = +[REMLog cloudkit];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v6 remObjectID];
    v10 = 138543874;
    v11 = v9;
    v12 = 1024;
    v13 = [v6 didChooseToMigrate];
    v14 = 1024;
    v15 = [v6 didFinishMigration];
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Checking if we should adjust APS debouncer interval according to migration state of {account: %{public}@, didChooseToMigrate: %d, didFinishMigration: %d}", &v10, 0x18u);
  }

  if (v7)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }
}

void sub_10009BEC4(uint64_t a1)
{
  v25 = +[ICCloudContext _systemBuildVersion];
  if (*(a1 + 32))
  {
    v2 = [*(a1 + 48) retryPerformingCloudSchemaCatchUpSync];
    v3 = +[REMLog cloudkit];
    v4 = v3;
    if (v2)
    {
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        v5 = *(a1 + 32);
        v6 = *(a1 + 56);
        v7 = *(a1 + 64);
        *buf = 138544130;
        v31 = v6;
        v32 = 2114;
        v33 = v5;
        v34 = 2114;
        *v35 = v25;
        *&v35[8] = 2114;
        *&v35[10] = v7;
        _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "...SYNC[%{public}@] CloudSchemaCatchUpSync: completed with error, persistenceCloudSchemaVersion not bumped yet, will retry later {error: %{public}@, buildVersion: %{public}@, debugLabel: %{public}@}", buf, 0x2Au);
      }
    }

    else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v21 = *(a1 + 32);
      v22 = *(a1 + 56);
      v23 = *(a1 + 64);
      *buf = 138544130;
      v31 = v22;
      v32 = 2114;
      v33 = v21;
      v34 = 2114;
      *v35 = v25;
      *&v35[8] = 2114;
      *&v35[10] = v23;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "...SYNC[%{public}@] CloudSchemaCatchUpSync: completed with error but max retry reached, persistenceCloudSchemaVersion bumped {error: %{public}@, buildVersion: %{public}@, debugLabel: %{public}@}", buf, 0x2Au);
    }
  }

  else
  {
    v4 = [*(a1 + 40) allKeys];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v8 = [v4 countByEnumeratingWithState:&v26 objects:v36 count:16];
    if (v8)
    {
      v10 = v8;
      v11 = *v27;
      *&v9 = 138544386;
      v24 = v9;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v27 != v11)
          {
            objc_enumerationMutation(v4);
          }

          v13 = *(*(&v26 + 1) + 8 * i);
          v14 = [*(a1 + 48) contextForAccountID:v13 withBatchFetchHelper:{0, v24}];
          v15 = [ICCloudSchemaCompatibilityUtils cloudSchemaCatchUpSyncDidCompleteWithAccountIdentifier:v13 context:v14];
          v16 = +[REMLog cloudkit];
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v17 = *(a1 + 56);
            v18 = *(a1 + 64);
            *buf = v24;
            v31 = v17;
            v32 = 2114;
            v33 = v13;
            v34 = 1024;
            *v35 = v15;
            *&v35[4] = 2114;
            *&v35[6] = v25;
            *&v35[14] = 2114;
            *&v35[16] = v18;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "...SYNC[%{public}@] CloudSchemaCatchUpSync: completed successfully, persistenceCloudSchemaVersion bumped {accountIdentifier: %{public}@, didUpdate: %d, buildVersion: %{public}@, debugLabel: %{public}@}", buf, 0x30u);
          }

          if (v15)
          {
            v19 = +[REMUserDefaults daemonUserDefaults];
            v20 = +[NSDate now];
            [v19 setCloudKitSchemaCatchUpSyncLastSuccessDate:v20];

            [v19 setCloudKitSchemaCatchUpSyncLastSuccessBuildVersion:v25];
          }
        }

        v10 = [v4 countByEnumeratingWithState:&v26 objects:v36 count:16];
      }

      while (v10);
    }
  }
}

BOOL sub_10009D114(id a1, Class a2, unint64_t a3, BOOL *a4)
{
  v5 = [(objc_class *)a2 isSubclassOfClass:objc_opt_class()];
  if (v5)
  {

    LOBYTE(v5) = [(objc_class *)a2 shouldAttemptLocalObjectMerge];
  }

  return v5;
}

void sub_10009DB9C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 2u);
}

_BYTE *sub_10009DBF8(_BYTE *result, _BYTE *a2)
{
  *result = 0;
  *a2 = 0;
  return result;
}

void sub_10009DC2C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_debug_impl(a1, v4, OS_LOG_TYPE_DEBUG, a4, v5, 0xCu);
}

uint64_t *sub_10009DC4C@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *result;
  return result;
}

uint64_t sub_10009DC64(uint64_t result, float a2)
{
  *v3 = a2;
  *v2 = result;
  return result;
}

BOOL sub_10009DC70(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_FAULT);
}

void sub_10009DCFC(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

uint64_t sub_10009DD18@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(result + 40);
  return result;
}

void sub_10009DD30(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_fault_impl(a1, v4, OS_LOG_TYPE_FAULT, a4, v5, 0xCu);
}

void sub_1000A0B6C(id a1)
{
  v1 = objc_alloc_init(ICCloudConfiguration);
  v2 = qword_100952998;
  qword_100952998 = v1;

  _objc_release_x1(v1, v2);
}

id sub_1000A0FA8(uint64_t a1, void *a2)
{
  v3 = [a2 lastPathComponent];
  v4 = [*(a1 + 32) lastPathComponent];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

void sub_1000A1518(id a1, BOOL a2)
{
  if (!a2)
  {
    v2 = +[REMLog cloudkit];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_100765608();
    }
  }
}

void sub_1000A1648(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = +[REMLog cloudkit];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10076563C(v9);
    }

    v11 = *(a1 + 40);
    if (v11)
    {
      (*(v11 + 16))(v11, 0);
    }
  }

  else
  {
    v12 = v8;
    if ([v12 statusCode] == 200)
    {
      v30 = 0;
      v13 = [NSPropertyListSerialization propertyListWithData:v7 options:0 format:0 error:&v30];
      v14 = v30;
      if (v14)
      {
        v15 = +[REMLog cloudkit];
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          sub_100765768(v14);
        }

        (*(*(a1 + 40) + 16))();
      }

      else
      {
        v18 = +[ICCloudContext processingQueue];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1000A19BC;
        block[3] = &unk_1008D9B98;
        block[4] = *(a1 + 32);
        v19 = v13;
        v29 = v19;
        dispatch_async(v18, block);

        v20 = *(a1 + 32);
        v21 = [objc_opt_class() cachedConfigurationURL];
        v22 = +[REMLog cloudkit];
        v23 = v22;
        if (v21)
        {
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v32 = v21;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "ICCloudConfiguration: Updating locally cached configuration {cacheURL: %{public}@}", buf, 0xCu);
          }

          v27 = 0;
          v24 = [v19 writeToURL:v21 error:&v27];
          v23 = v27;
          if ((v24 & 1) == 0)
          {
            v25 = +[REMLog cloudkit];
            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              sub_1007657F4();
            }
          }
        }

        else if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          sub_100765868();
        }

        v26 = *(a1 + 40);
        if (v26)
        {
          (*(v26 + 16))(v26, 1);
        }
      }
    }

    else
    {
      v16 = +[REMLog cloudkit];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_1007656C8(v12);
      }

      v17 = *(a1 + 40);
      if (v17)
      {
        (*(v17 + 16))(v17, 0);
      }
    }
  }
}

id sub_1000A19BC(uint64_t a1)
{
  v2 = +[REMLog cloudkit];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "ICCloudConfiguration: Received remote configuration", buf, 2u);
  }

  v3 = *(a1 + 32);
  result = [objc_opt_class() isConfigurationValid:*(a1 + 40)];
  if (result)
  {
    v5 = +[REMLog cloudkit];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "ICCloudConfiguration: Applying remote configuration", v6, 2u);
    }

    return [*(a1 + 32) setConfigurationFromDictionary:*(a1 + 40)];
  }

  return result;
}

void sub_1000A35EC(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 postNotificationName:@"ICCloudConfigurationChangedNotification" object:*(a1 + 32)];
}

void sub_1000A3854(id a1)
{
  v1 = objc_alloc_init(_ICCloudDefaultValuesConfigurationStorage);
  v2 = qword_1009529B0;
  qword_1009529B0 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1000A3DC8(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_1000A5A88(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v7 = +[REMLogStore container];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1007661C8(a4, v7);
    }

    v8 = 2;
  }

  else
  {
    if (a2)
    {
      v8 = 1;
      goto LABEL_8;
    }

    v7 = +[REMLogStore container];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100766240(a1, a3, v7);
    }

    v8 = 3;
  }

LABEL_8:
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000A5BB0;
  v10[3] = &unk_1008DB730;
  v9 = *(a1 + 40);
  v11 = *(a1 + 48);
  v12 = v8;
  v13 = *(a1 + 56);
  v14 = a3;
  dispatch_async(v9, v10);
}

BOOL sub_1000A785C(id a1, NSManagedObject *a2, unint64_t a3, BOOL *a4)
{
  v4 = [(NSManagedObject *)a2 objectID:a3];
  v5 = [v4 isTemporaryID];

  return v5;
}

void sub_1000A7AD4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1000A7AF8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained ic_permanentObjectID];

  if (v3)
  {
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_1000A7BC4;
    v4[3] = &unk_1008D9B98;
    v5 = *(a1 + 32);
    v6 = v3;
    dispatch_async(&_dispatch_main_q, v4);
  }
}

void sub_1000A7BC4(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 postNotificationName:*(a1 + 32) object:*(a1 + 40)];
}

void sub_1000A7DC4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1000A7DFC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained ic_permanentObjectID];

  if (v3)
  {
    v6 = _NSConcreteStackBlock;
    v7 = 3221225472;
    v8 = sub_1000A7F04;
    v9 = &unk_1008D9B98;
    v10 = *(a1 + 32);
    v11 = v3;
    dispatch_async(&_dispatch_main_q, &v6);
  }

  v4 = [NSNotificationCenter defaultCenter:v6];
  v5 = objc_loadWeakRetained((*(*(a1 + 40) + 8) + 40));
  [v4 removeObserver:v5];
}

void sub_1000A7F04(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 postNotificationName:*(a1 + 32) object:*(a1 + 40)];
}

BOOL sub_1000AABF4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  v5 = [v3 markedForDeletion];
  v6 = +[REMLogStore write];
  v7 = v6;
  if (v4 == v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Stopping recurssion because isDeleted == self.markedForDeletion", v9, 2u);
    }
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_10076711C((a1 + 40), a1);
    }

    if (*(a1 + 40) == 1)
    {
      [v3 markForDeletion];
    }

    else
    {
      [v3 unmarkForDeletion];
    }
  }

  return v4 != v5;
}

id sub_1000AAD84(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) objectID];
  v5 = [v3 objectID];
  v6 = [v4 isEqual:v5];

  if ((v6 & 1) == 0)
  {
    v7 = [v3 managedObjectContext];
    [v7 deleteObject:v3];
  }

  return v6;
}

uint64_t sub_1000AAEEC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32) != a2)
  {
    [*(a1 + 40) addObject:{a2, v2, v3}];
  }

  return 1;
}

void performBlockOnMainThread(void *a1)
{
  block = a1;
  if (+[NSThread isMainThread])
  {
    block[2]();
  }

  else
  {
    dispatch_sync(&_dispatch_main_q, block);
  }
}

id ICGenericError()
{
  v0 = [[NSError alloc] initWithDomain:@"com.apple.reminders" code:-1 userInfo:0];

  return v0;
}

void sub_1000AC610(id a1)
{
  v1 = objc_alloc_init(NSDateFormatter);
  v2 = qword_1009529C0;
  qword_1009529C0 = v1;

  [qword_1009529C0 setTimeStyle:3];
  v3 = qword_1009529C0;

  [v3 setDateStyle:1];
}

void sub_1000AC704(id a1)
{
  v1 = objc_alloc_init(NSDateFormatter);
  v2 = qword_1009529D0;
  qword_1009529D0 = v1;

  [qword_1009529D0 setTimeStyle:1];
  [qword_1009529D0 setDateStyle:1];
  v3 = qword_1009529D0;

  [v3 setDoesRelativeDateFormatting:1];
}

void sub_1000AC76C(id a1)
{
  v1 = objc_alloc_init(NSDateFormatter);
  v2 = qword_1009529E0;
  qword_1009529E0 = v1;

  [qword_1009529E0 setTimeStyle:1];
  v3 = qword_1009529E0;

  [v3 setDateStyle:1];
}

void sub_1000AC9C8(id a1)
{
  v1 = objc_alloc_init(NSDateFormatter);
  v2 = qword_1009529F0;
  qword_1009529F0 = v1;

  [qword_1009529F0 setTimeStyle:1];
  v3 = qword_1009529F0;

  [v3 setDateStyle:0];
}

void sub_1000ACA24(id a1)
{
  v1 = objc_alloc_init(NSDateFormatter);
  v2 = qword_100952A00;
  qword_100952A00 = v1;

  v3 = qword_100952A00;
  v5 = +[NSLocale currentLocale];
  v4 = [NSDateFormatter dateFormatFromTemplate:@"cccc" options:0 locale:v5];
  [v3 setDateFormat:v4];
}

void sub_1000ACAC4(id a1)
{
  v1 = objc_alloc_init(NSDateFormatter);
  v2 = qword_100952A10;
  qword_100952A10 = v1;

  [qword_100952A10 setTimeStyle:0];
  [qword_100952A10 setDateStyle:1];
  v3 = qword_100952A10;

  [v3 setDoesRelativeDateFormatting:1];
}

dispatch_workloop_t rd_dispatch_workloop_create(const char *a1)
{
  v1 = dispatch_workloop_create(a1);

  return v1;
}

void sub_1000AD214(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000AD248(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000AD260(uint64_t a1)
{
  v2 = [*(a1 + 40) fetchRequest];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1(v2, v4);
}

id incompatibilityInfoWithEntitiesAndArraysOfPropertyKeys(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 count];
  if (v5 != [v4 count])
  {
    v6 = +[REMLog cloudkit];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_100767970(v6);
    }
  }

  v7 = +[NSMutableDictionary dictionary];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = v3;
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v19;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        v15 = [v4 objectAtIndex:{v11, v18}];
        [v7 setObject:v15 forKey:v14];
        ++v11;
      }

      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  v16 = [NSDictionary dictionaryWithDictionary:v7];

  return v16;
}

id cloudKitSchemaVersionIncompatibilityInfoMap()
{
  if (qword_100952A28 != -1)
  {
    sub_1007679B4();
  }

  v1 = qword_100952A20;

  return v1;
}

void sub_1000ADA14(id a1)
{
  v1 = +[NSMutableDictionary dictionary];
  v2 = qword_100952A20;
  qword_100952A20 = v1;

  v3 = +[REMCDAccount cdEntityName];
  v40[0] = v3;
  v4 = +[REMCDList cdEntityName];
  v40[1] = v4;
  v5 = [NSArray arrayWithObjects:v40 count:2];
  v6 = incompatibilityInfoWithEntitiesAndArraysOfPropertyKeys(v5, &off_100905608);

  [qword_100952A20 setObject:v6 forKeyedSubscript:&off_100905028];
  v7 = +[REMCDSmartList cdEntityName];
  v39 = v7;
  v8 = [NSArray arrayWithObjects:&v39 count:1];
  v9 = incompatibilityInfoWithEntitiesAndArraysOfPropertyKeys(v8, &off_100905638);

  [qword_100952A20 setObject:v9 forKeyedSubscript:&off_100905040];
  v10 = +[REMCDList cdEntityName];
  v38[0] = v10;
  v11 = +[REMCDSmartList cdEntityName];
  v38[1] = v11;
  v12 = [NSArray arrayWithObjects:v38 count:2];
  v13 = incompatibilityInfoWithEntitiesAndArraysOfPropertyKeys(v12, &off_100905680);

  [qword_100952A20 setObject:v13 forKeyedSubscript:&off_100905058];
  v14 = +[REMCDReminder cdEntityName];
  v37 = v14;
  v15 = [NSArray arrayWithObjects:&v37 count:1];
  v16 = incompatibilityInfoWithEntitiesAndArraysOfPropertyKeys(v15, &off_1009056B0);

  [qword_100952A20 setObject:v16 forKeyedSubscript:&off_100905070];
  v17 = +[REMCDList cdEntityName];
  v36[0] = v17;
  v18 = +[REMCDSmartList cdEntityName];
  v36[1] = v18;
  v19 = +[REMCDTemplate cdEntityName];
  v36[2] = v19;
  v20 = +[REMCDListSection cdEntityName];
  v36[3] = v20;
  v21 = [NSArray arrayWithObjects:v36 count:4];
  v22 = incompatibilityInfoWithEntitiesAndArraysOfPropertyKeys(v21, &off_100905728);

  [qword_100952A20 setObject:v22 forKeyedSubscript:&off_100905088];
  v23 = +[REMCDAccount cdEntityName];
  v35 = v23;
  v24 = [NSArray arrayWithObjects:&v35 count:1];
  v25 = incompatibilityInfoWithEntitiesAndArraysOfPropertyKeys(v24, &off_100905758);

  [qword_100952A20 setObject:v25 forKeyedSubscript:&off_1009050A0];
  v26 = +[REMCDReminder cdEntityName];
  v34 = v26;
  v27 = [NSArray arrayWithObjects:&v34 count:1];
  v28 = incompatibilityInfoWithEntitiesAndArraysOfPropertyKeys(v27, &off_100905788);

  [qword_100952A20 setObject:v28 forKeyedSubscript:&off_1009050B8];
  v29 = +[REMCDList cdEntityName];
  v33[0] = v29;
  v30 = +[REMCDReminder cdEntityName];
  v33[1] = v30;
  v31 = [NSArray arrayWithObjects:v33 count:2];
  v32 = incompatibilityInfoWithEntitiesAndArraysOfPropertyKeys(v31, &off_1009057D0);

  [qword_100952A20 setObject:v32 forKeyedSubscript:&off_1009050D0];
}

void sub_1000AE1D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000AE200(uint64_t a1)
{
  v2 = [REMCDAccount cloudKitAccountWithCKIdentifier:*(a1 + 32) context:*(a1 + 40)];
  if (v2)
  {
    v3 = v2;
    [v2 setPersistenceCloudSchemaVersion:20250728];
    *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 40) ic_save];
    v2 = v3;
  }
}

void sub_1000AE5E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000AE628(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000AE640(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a3;
  v8 = [a2 integerValue];
  if (v8 < 20250729 && v8 > *(a1 + 64))
  {
    v10 = v8;
    v11 = [v7 objectForKey:*(a1 + 32)];
    if ([v11 count])
    {
      v12 = +[REMLog cloudkit];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = *(a1 + 32);
        v14 = [*(a1 + 40) ckIdentifier];
        v15 = *(a1 + 64);
        v16 = 138544386;
        v17 = v13;
        v18 = 2114;
        v19 = v14;
        v20 = 2048;
        v21 = v15;
        v22 = 2048;
        v23 = 20250728;
        v24 = 2048;
        v25 = v10;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "ICCSCU: this cloud object is an entity that needs to run CloudSchemaCatchUpSync {entity: %{public}@, identifier: %{public}@, persistenceVersion: %lld, runtimeVersion: %lld, incompatibilityInfoVersionNumber: %lld}", &v16, 0x34u);
      }

      *(*(*(a1 + 48) + 8) + 24) = 1;
      if (*(a1 + 72) == 1)
      {
        [*(*(*(a1 + 56) + 8) + 40) addObjectsFromArray:v11];
      }

      else
      {
        *a4 = 1;
      }
    }
  }
}

void sub_1000AE8D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000AE8EC(void *a1)
{
  v2 = [REMCDAccount cloudKitAccountWithCKIdentifier:a1[4] context:a1[5]];
  if (v2)
  {
    v4 = v2;
    v3 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v2 persistenceCloudSchemaVersion]);
    *(*(a1[6] + 8) + 24) = [v3 integerValue];

    v2 = v4;
  }
}

id sub_1000AEEAC(uint64_t a1)
{
  [*(a1 + 32) _setCKIdentifierIfNecessary];
  v2 = [*(a1 + 32) ckCloudState];
  v3 = [v2 currentLocalVersion];

  if (v3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = [*(a1 + 32) ckCloudState];
    [v4 setCurrentLocalVersion:0];

    v5 = [*(a1 + 32) ckCloudState];
    [v5 setLatestVersionSyncedToCloud:0];
  }

  v6 = [*(a1 + 32) ckCloudState];
  [v6 setCurrentLocalVersion:{objc_msgSend(v6, "currentLocalVersion") + 1}];

  v7 = +[NSDate date];
  v8 = [*(a1 + 32) ckCloudState];
  [v8 setLocalVersionDate:v7];

  v9 = *(a1 + 32);
  v10 = [v9 ckDirtyFlags] | 2;

  return [v9 setCkDirtyFlags:v10];
}

uint64_t sub_1000AF614(uint64_t a1, void *a2)
{
  v3 = [a2 accountCKIdentifier];
  v4 = v3;
  if (*(a1 + 32))
  {
    if (v3)
    {
      v5 = [v3 isEqualToString:?];
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_1000AF6B8(id a1)
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.reminders.cloud.failure-counts", v3);
  v2 = qword_100952A30;
  qword_100952A30 = v1;
}

void sub_1000AF760(id a1)
{
  v1 = +[NSMutableDictionary dictionary];
  v2 = qword_100952A40;
  qword_100952A40 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1000AF860(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000AF878(uint64_t a1)
{
  v2 = [*(a1 + 32) ckIdentifier];
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = [objc_opt_class() failedToSyncCountsByCKIdentifier];
    v5 = [v4 objectForKey:v2];

    *(*(*(a1 + 40) + 8) + 24) = [v5 integerValue];
  }

  else
  {
    v6 = +[REMLog cloudkit];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_100767E04();
    }
  }
}

void sub_1000AF9C4(uint64_t a1)
{
  v2 = [*(a1 + 32) ckIdentifier];
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = [objc_opt_class() failedToSyncCountsByCKIdentifier];
    v6 = v5;
    if (v4)
    {
      v7 = [NSNumber numberWithInteger:*(a1 + 40)];
      [v6 setObject:v7 forKey:v2];
    }

    else
    {
      [v5 removeObjectForKey:v2];
    }
  }

  else
  {
    v6 = +[REMLog cloudkit];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_100767E40();
    }
  }
}

void sub_1000AFACC(id a1)
{
  v1 = +[NSMutableDictionary dictionary];
  v2 = qword_100952A50;
  qword_100952A50 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1000AFBCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000AFBE4(uint64_t a1)
{
  v2 = [*(a1 + 32) ckIdentifier];
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = [objc_opt_class() numberOfPushAttemptsToWaitByCKIdentifier];
    v5 = [v4 objectForKey:v2];

    *(*(*(a1 + 40) + 8) + 24) = [v5 integerValue];
  }

  else
  {
    v6 = +[REMLog cloudkit];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_100767E90();
    }
  }
}

void sub_1000AFD30(uint64_t a1)
{
  v2 = [*(a1 + 32) ckIdentifier];
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = [objc_opt_class() numberOfPushAttemptsToWaitByCKIdentifier];
    v6 = v5;
    if (v4)
    {
      v7 = [NSNumber numberWithInteger:*(a1 + 40)];
      [v6 setObject:v7 forKey:v2];
    }

    else
    {
      [v5 removeObjectForKey:v2];
    }
  }

  else
  {
    v6 = +[REMLog cloudkit];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_100767ECC();
    }
  }
}

void sub_1000B015C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [objc_opt_class() numberOfPushAttemptsToWaitByCKIdentifier];
  [v3 removeAllObjects];

  v4 = *(a1 + 32);
  v5 = [objc_opt_class() failedToSyncCountsByCKIdentifier];
  [v5 removeAllObjects];

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 postNotificationName:@"ICCloudContextUnrecoverableErrorNotification" object:0];
}

void sub_1000B09A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1000B09C0(uint64_t a1)
{
  result = [*(a1 + 32) isDeleted];
  *(*(*(a1 + 40) + 8) + 24) = result ^ 1;
  return result;
}

void sub_1000B11E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000B1204(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000B121C(uint64_t a1)
{
  v2 = [*(a1 + 40) entity];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1(v2, v4);
}

uint64_t sub_1000B16FC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 ckServerRecord];
  v5 = v4;
  if (*(a1 + 32) == v3)
  {
    if (v4)
    {
      v9 = [v3 parentCloudObject];
      v10 = [v9 recordID];
      v11 = v10;
      if (v10)
      {
        v12 = [v10 zoneID];
        v13 = [v5 recordID];
        v14 = [v13 zoneID];
        v15 = [v12 isEqual:v14];

        if ((v15 & 1) == 0)
        {
          v17 = objc_opt_class();
          v18 = [v5 recordID];
          v19 = [v18 ic_loggingDescription];
          v20 = objc_opt_class();
          v21 = [v11 ic_loggingDescription];
          v22 = [NSString stringWithFormat:@"Cross-zone parent record relationship found. Resetting ckServerRecord. { class: %@, recordID: %@, parentClass: %@, parentRecordID: %@ }", v17, v19, v20, v21];

          [objc_opt_class() faultAndPromptToFileRadarWithICTap2RadarType:4 title:@"recursivelyFixCrossZoneRelationshipWithVisitedMap" description:&stru_1008FE8A0 logMessage:v22];
          goto LABEL_3;
        }
      }
    }

    v8 = 0;
    goto LABEL_10;
  }

  if (v4)
  {
LABEL_3:
    v6 = *(a1 + 40);
    v7 = [v5 copy];
    (*(v6 + 16))(v6, v3, v7);

    [v3 setCkServerRecord:0];
    [v3 setCkZoneOwnerName:0];
  }

  v8 = 1;
LABEL_10:

  return v8;
}

void sub_1000B36E4(id a1)
{
  v1 = +[NSMutableSet set];
  v2 = qword_100952A60;
  qword_100952A60 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1000B3C30(uint64_t a1)
{
  obj = [*(a1 + 40) temporaryAssets];
  objc_sync_enter(obj);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v11 = [*(a1 + 32) recordsToSave];
  v13 = [v11 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v13)
  {
    v12 = *v20;
    do
    {
      v14 = 0;
      do
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v11);
        }

        v2 = *(*(&v19 + 1) + 8 * v14);
        v15 = 0u;
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v3 = [v2 allKeys];
        v4 = [v3 countByEnumeratingWithState:&v15 objects:v23 count:16];
        if (v4)
        {
          v5 = *v16;
          do
          {
            v6 = 0;
            do
            {
              if (*v16 != v5)
              {
                objc_enumerationMutation(v3);
              }

              v7 = [v2 objectForKeyedSubscript:*(*(&v15 + 1) + 8 * v6)];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v8 = [*(a1 + 40) temporaryAssets];
                v9 = [v8 containsObject:v7];

                if (v9)
                {
                  [*(a1 + 40) deleteTemporaryFilesForAsset:v7];
                }
              }

              v6 = v6 + 1;
            }

            while (v4 != v6);
            v4 = [v3 countByEnumeratingWithState:&v15 objects:v23 count:16];
          }

          while (v4);
        }

        v14 = v14 + 1;
      }

      while (v14 != v13);
      v13 = [v11 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v13);
  }

  objc_sync_exit(obj);
}

BOOL sub_1000B41C8(id a1, NSURL *a2, NSError *a3)
{
  v3 = a3;
  v4 = +[REMLog cloudkit];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_100768EE8();
  }

  return 1;
}

void sub_1000B5740(id a1)
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.reminders.cloud.versions-by-operation", v3);
  v2 = qword_100952A78;
  qword_100952A78 = v1;
}

void sub_1000B57E8(id a1)
{
  v1 = +[NSMapTable weakToStrongObjectsMapTable];
  v2 = qword_100952A88;
  qword_100952A88 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1000B5918(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000B5930(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [objc_opt_class() versionsByRecordIDByOperation];
  v6 = [v3 objectForKey:*(a1 + 40)];

  v4 = [*(a1 + 32) recordID];
  if (v4)
  {
    v5 = [v6 objectForKeyedSubscript:v4];
    *(*(*(a1 + 48) + 8) + 24) = [v5 longLongValue];
  }
}

void sub_1000B5A9C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6 = [objc_opt_class() versionsByRecordIDByOperation];
  v3 = [v6 objectForKey:*(a1 + 40)];
  if (!v3)
  {
    v3 = +[NSMutableDictionary dictionary];
    [v6 setObject:v3 forKey:*(a1 + 40)];
  }

  v4 = [*(a1 + 32) recordID];
  if (v4)
  {
    v5 = [NSNumber numberWithLongLong:*(a1 + 48)];
    [v3 setObject:v5 forKeyedSubscript:v4];
  }
}

void sub_1000B5C44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000B5C5C(uint64_t a1)
{
  v2 = [*(a1 + 32) recordID];
  if (v2)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v3 = *(a1 + 32);
    v4 = [objc_opt_class() versionsByRecordIDByOperation];
    v5 = [v4 objectEnumerator];

    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      while (2)
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v12 + 1) + 8 * i) objectForKeyedSubscript:v2];
          v11 = v10;
          if (v10 && [v10 longLongValue] >= *(a1 + 48))
          {
            *(*(*(a1 + 40) + 8) + 24) = 1;

            goto LABEL_13;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }
}

void sub_1000B5E94(id a1)
{
  v1 = objc_alloc_init(CKRecordSystemFieldsTransformer);
  v2 = qword_100952A98;
  qword_100952A98 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1000B5F14(id a1)
{
  v1 = objc_alloc_init(CKShareSystemFieldsTransformer);
  v2 = qword_100952AA8;
  qword_100952AA8 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1000B67C8(uint64_t a1)
{
  v2 = [*(a1 + 40) ckCloudState];
  v3 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v2 inCloud]);
  [*(a1 + 32) setObject:v3 forKeyedSubscript:@"inCloud"];

  if ([*(a1 + 40) markedForDeletion])
  {
    [*(a1 + 32) setObject:&__kCFBooleanTrue forKeyedSubscript:@"markedForDeletion"];
  }

  if ([*(a1 + 40) needsToBePushedToCloud])
  {
    [*(a1 + 32) setObject:&__kCFBooleanTrue forKeyedSubscript:@"needsToBePushedToCloud"];
  }

  if ([*(a1 + 40) ckNeedsToBeFetchedFromCloud])
  {
    [*(a1 + 32) setObject:&__kCFBooleanTrue forKeyedSubscript:@"ckNeedsToBeFetchedFromCloud"];
  }

  if ([*(a1 + 40) ckNeedsInitialFetchFromCloud])
  {
    [*(a1 + 32) setObject:&__kCFBooleanTrue forKeyedSubscript:@"ckNeedsInitialFetchFromCloud"];
  }

  if ([*(a1 + 40) needsToBeDeletedFromCloud])
  {
    [*(a1 + 32) setObject:&__kCFBooleanTrue forKeyedSubscript:@"needsToBeDeletedFromCloud"];
  }

  v4 = [*(a1 + 40) ckCloudState];
  v5 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v4 latestVersionSyncedToCloud]);
  [*(a1 + 32) setObject:v5 forKeyedSubscript:@"latestVersionSyncedToCloud"];

  v6 = [*(a1 + 40) ckCloudState];
  v7 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v6 currentLocalVersion]);
  [*(a1 + 32) setObject:v7 forKeyedSubscript:@"currentLocalVersion"];

  v8 = [*(a1 + 40) ckCloudState];
  v9 = [v8 localVersionDate];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = @"nil";
  }

  [*(a1 + 32) setObject:v11 forKeyedSubscript:@"localVersionDate"];

  if (([*(a1 + 40) hasAllMandatoryFields] & 1) == 0)
  {
    v12 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [*(a1 + 40) hasAllMandatoryFields]);
    [*(a1 + 32) setObject:v12 forKeyedSubscript:@"hasAllMandatoryFields"];
  }

  if ([*(a1 + 40) failedToSyncCount] >= 1)
  {
    v13 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [*(a1 + 40) failedToSyncCount]);
    [*(a1 + 32) setObject:v13 forKeyedSubscript:@"failedToSyncCount"];
  }

  if ([*(a1 + 40) numberOfPushAttemptsToWaitCount] >= 1)
  {
    v14 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [*(a1 + 40) numberOfPushAttemptsToWaitCount]);
    [*(a1 + 32) setObject:v14 forKeyedSubscript:@"numberOfPushAttemptsToWaitCount"];
  }

  if ([*(a1 + 40) minimumSupportedAppVersion])
  {
    v15 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [*(a1 + 40) minimumSupportedAppVersion]);
    [*(a1 + 32) setObject:v15 forKeyedSubscript:@"minimumSupportedAppVersion"];
  }

  v16 = [*(a1 + 40) ckServerShare];

  if (v16)
  {
    v17 = [*(a1 + 40) ckServerShare];
    v18 = [v17 recordID];
    v19 = [v18 ic_loggingDescription];
    [*(a1 + 32) setObject:v19 forKeyedSubscript:@"ckServerShare"];
  }

  v20 = [*(a1 + 40) ckServerRecord];

  if (v20)
  {
    v23 = [*(a1 + 40) ckServerRecord];
    v21 = [v23 recordID];
    v22 = [v21 ic_loggingDescription];
    [*(a1 + 32) setObject:v22 forKeyedSubscript:@"ckServerRecord"];
  }
}

void sub_1000B6F40(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void *blockOperationShortNameFromOperationName(void *a1)
{
  v1 = qword_100952AB8;
  v2 = a1;
  if (v1 != -1)
  {
    sub_100769614();
  }

  v3 = [qword_100952AC0 objectForKeyedSubscript:v2];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = v2;
  }

  v6 = v5;

  return v5;
}

void sub_1000B7040(id a1)
{
  v3[0] = ICNSBlockOperationNameCreateFetchZoneChanges;
  v3[1] = ICNSBlockOperationNameDeleteSharesForObjectsFetchAndCompletion;
  v4[0] = ICNSBlockOperationShortNameCreateFetchZoneChanges;
  v4[1] = ICNSBlockOperationShortNameDeleteSharesForObjectsFetchAndCompletion;
  v3[2] = ICNSBlockOperationNameFetchCompletion;
  v3[3] = ICNSBlockOperationNameFetchDatabaseChangesCompletion;
  v4[2] = ICNSBlockOperationShortNameFetchCompletion;
  v4[3] = ICNSBlockOperationShortNameFetchDatabaseChangesCompletion;
  v3[4] = ICNSBlockOperationNameFetchZoneChangesCompletion;
  v3[5] = ICNSBlockOperationNameFinishOperations;
  v4[4] = ICNSBlockOperationShortNameFetchZoneChangesCompletion;
  v4[5] = ICNSBlockOperationShortNameFinishOperations;
  v3[6] = ICNSBlockOperationNameProcessCompletion;
  v3[7] = ICNSBlockOperationNameProcessCompletionForOperations;
  v4[6] = ICNSBlockOperationShortNameProcessCompletion;
  v4[7] = ICNSBlockOperationShortNameProcessCompletionForOperations;
  v3[8] = ICNSBlockOperationNameProcessDirtyObjects;
  v3[9] = ICNSBlockOperationNameProcessLocalObjects;
  v4[8] = ICNSBlockOperationShortNameProcessDirtyObjects;
  v4[9] = ICNSBlockOperationShortNameProcessLocalObjects;
  v3[10] = ICNSBlockOperationNameProcessObjectsForContextDidSave;
  v3[11] = ICNSBlockOperationNameProcessObjectsForReachabilityChanged;
  v4[10] = ICNSBlockOperationShortNameProcessObjectsForContextDidSave;
  v4[11] = ICNSBlockOperationShortNameProcessObjectsForReachabilityChanged;
  v3[12] = ICNSBlockOperationNameProcessObjectsForRetryOperations;
  v4[12] = ICNSBlockOperationShortNameProcessObjectsForRetryOperations;
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:13];
  v2 = qword_100952AC0;
  qword_100952AC0 = v1;
}

void sub_1000B85D0(uint64_t a1)
{
  v53[0] = objc_opt_class();
  v53[1] = objc_opt_class();
  v53[2] = objc_opt_class();
  v2 = [NSArray arrayWithObjects:v53 count:3];
  v34 = +[NSMutableArray array];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = v2;
  v3 = [obj countByEnumeratingWithState:&v42 objects:v52 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v43;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v43 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = [*(*(&v42 + 1) + 8 * i) fetchRequest];
        [v7 setPropertiesToFetch:&off_100905800];
        v51 = *(a1 + 32);
        v8 = [NSArray arrayWithObjects:&v51 count:1];
        [v7 setAffectedStores:v8];

        [v7 setFetchBatchSize:50];
        v9 = *(a1 + 40);
        v41 = 0;
        v10 = [v9 executeFetchRequest:v7 error:&v41];
        v11 = v41;
        if (!v10)
        {
          v31 = +[REMLogStore container];
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            sub_1007698C4(v11, v31);
          }

          v30 = obj;
          goto LABEL_31;
        }

        [v34 addObjectsFromArray:v10];
      }

      v4 = [obj countByEnumeratingWithState:&v42 objects:v52 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v12 = v34;
  v13 = [v12 countByEnumeratingWithState:&v37 objects:v50 count:16];
  if (v13)
  {
    v15 = v13;
    v16 = 0;
    v17 = *v38;
    *&v14 = 138412290;
    v32 = v14;
    do
    {
      v18 = 0;
      do
      {
        if (*v38 != v17)
        {
          objc_enumerationMutation(v12);
        }

        v19 = *(*(&v37 + 1) + 8 * v18);
        [*(a1 + 48) setTotalMigratedCount:{objc_msgSend(*(a1 + 48), "totalMigratedCount", v32) + 1}];
        [*(a1 + 48) migrateTokenResolutionMapInObject:v19];
        [*(a1 + 48) migrateCRDTsInObject:v19];
        if (v16 < 0x31)
        {
          ++v16;
        }

        else
        {
          v20 = +[REMLogStore container];
          if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            v21 = [*(a1 + 40) updatedObjects];
            v22 = [v21 count];
            v23 = [*(a1 + 48) totalMigratedCount];
            *buf = 134218240;
            v47 = v22;
            v48 = 2048;
            v49 = v23;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Saving batch {updatedObjectsCount: %ld, totalMigratedCount: %ld}", buf, 0x16u);
          }

          v24 = *(a1 + 40);
          v36 = 0;
          v25 = [v24 save:&v36];
          v26 = v36;
          if ((v25 & 1) == 0)
          {
            v27 = +[REMLogStore container];
            if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
            {
              *buf = v32;
              v47 = v26;
              _os_log_fault_impl(&_mh_execute_header, v27, OS_LOG_TYPE_FAULT, "Failed to save batch. Migration error {error: %@}", buf, 0xCu);
            }
          }

          v16 = 0;
        }

        v18 = v18 + 1;
      }

      while (v15 != v18);
      v15 = [v12 countByEnumeratingWithState:&v37 objects:v50 count:16];
    }

    while (v15);
  }

  v28 = *(a1 + 40);
  v35 = 0;
  v29 = [v28 save:&v35];
  v30 = v35;
  if ((v29 & 1) == 0)
  {
    v7 = +[REMLogStore container];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_10076993C(v30, v7);
    }

LABEL_31:
  }
}

void sub_1000B95CC(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_1000B976C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000B9784(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000B979C(uint64_t a1, void *a2)
{
  v8 = [a2 persistentStoreCoordinator];
  v3 = *(a1 + 32);
  v4 = [v8 persistentStores];
  v5 = [v3 _currentREMChangeTokenFromNSPersistentStores:v4 persistentStoreCoordinator:v8];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void sub_1000B9918(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000B9930(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) _persistenceStoreIDsForAccountTypes:*(a1 + 48)];
  v5 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v4 count]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    do
    {
      v10 = 0;
      do
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v19 + 1) + 8 * v10);
        v12 = [v3 persistentStoreCoordinator];
        v13 = [v12 persistentStoreForIdentifier:v11];

        if (v13)
        {
          [v5 addObject:v13];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

  v14 = *(a1 + 32);
  v15 = [v3 persistentStoreCoordinator];
  v16 = [v14 _currentREMChangeTokenFromNSPersistentStores:v5 persistentStoreCoordinator:v15];
  v17 = *(*(a1 + 40) + 8);
  v18 = *(v17 + 40);
  *(v17 + 40) = v16;
}

void sub_1000B9BFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000B9C14(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) _persistenceStoreIDForAccountID:*(a1 + 40)];
  v5 = [v3 persistentStoreCoordinator];
  v6 = [v5 persistentStoreForIdentifier:v4];

  if (v6)
  {
    v7 = *(a1 + 32);
    v13 = v6;
    v8 = [NSArray arrayWithObjects:&v13 count:1];
    v9 = [v3 persistentStoreCoordinator];
    v10 = [v7 _currentREMChangeTokenFromNSPersistentStores:v8 persistentStoreCoordinator:v9];
    v11 = *(*(a1 + 48) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }
}

void sub_1000B9E44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000B9E5C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) _persistenceStoreIDForAccountID:*(a1 + 40)];
  v5 = [v3 persistentStoreCoordinator];
  v6 = [v5 persistentStoreForIdentifier:v4];

  if (v6)
  {
    v7 = [NSDate dateWithTimeIntervalSince1970:0.0];
    v8 = [NSPersistentHistoryChangeRequest fetchHistoryAfterDate:v7];

    [v8 setFetchLimit:1];
    v24 = v6;
    v9 = [NSArray arrayWithObjects:&v24 count:1];
    [v8 setAffectedStores:v9];

    [v8 setResultType:3];
    v23 = 0;
    v10 = [v3 executeRequest:v8 error:&v23];
    v11 = v23;
    if (v11)
    {
      v12 = +[REMLog changeTracking];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_100769BCC(v3);
      }
    }

    else
    {
      objc_opt_class();
      v13 = [v10 result];
      v12 = REMDynamicCast();

      v14 = [v12 firstObject];
      v15 = [v14 token];

      if (v15)
      {
        v22 = v10;
        v16 = [REMNSPersistentHistoryToken alloc];
        v17 = [v14 token];
        v18 = v16;
        v10 = v22;
        v19 = [v18 initWithPersistentHistoryToken:v17];
        v20 = *(*(a1 + 48) + 8);
        v21 = *(v20 + 40);
        *(v20 + 40) = v19;
      }

      else
      {
        v17 = +[REMLog changeTracking];
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          sub_100769C70(v3);
        }
      }
    }
  }
}

void sub_1000BA264(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000BA27C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v14 = v6;
    v8 = [*(a1 + 32) _changeTokenFromCDTrackingState:v6 error:a4];
    if (v8)
    {
      v9 = objc_alloc_init(REMChangeTrackingState);
      [v9 setLastConsumedChangeToken:v8];
      v10 = [v14 lastConsumedDate];
      [v9 setLastConsumedDate:v10];

      v11 = *(*(a1 + 40) + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = v9;
    }

    v7 = v14;
  }

  return _objc_release_x1(v6, v7);
}

void sub_1000BA5DC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = v8;
  if (!v8)
  {
    v10 = +[REMCDChangeTrackingState entity];
    v11 = [v10 name];

    v9 = [NSEntityDescription insertNewObjectForEntityForName:v11 inManagedObjectContext:v7];
    [v7 assignObject:v9 toPersistentStore:*(a1 + 32)];
  }

  v12 = [*(a1 + 40) clientName];
  [v9 setClientName:v12];

  v13 = [*(a1 + 40) accountIdentifier];
  [v9 setAccountIdentifier:v13];

  [v9 setLastConsumedChangeTokenData:*(a1 + 48)];
  v14 = objc_opt_new();
  [v9 setLastConsumedDate:v14];

  v17 = 0;
  [v7 save:&v17];
  v15 = v17;
  if (v15)
  {
    v16 = +[REMLog changeTracking];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_100769F18(v15);
    }

    if (a4)
    {
      *a4 = [NSError errorWithREMChangeErrorCode:8 underlyingError:v15];
    }
  }
}

void sub_1000BA970(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1000BA994(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(*(a1 + 56) + 8);
  obj = *(v6 + 40);
  v7 = [v4 _fetchRequestWithPredicateUsingEntityNames:v5 managedObjectContext:v3 error:&obj];
  objc_storeStrong((v6 + 40), obj);
  if (v7)
  {
    [*(a1 + 48) setFetchRequest:v7];
    v8 = *(*(a1 + 56) + 8);
    v9 = *(v8 + 40);
  }

  else
  {
    v8 = *(*(a1 + 56) + 8);
    if (*(v8 + 40))
    {
      v12 = [*(a1 + 32) _errorChangeSetWithError:?];
      goto LABEL_6;
    }

    v9 = 0;
  }

  v10 = *(a1 + 32);
  v11 = *(a1 + 48);
  v15 = v9;
  v12 = [v10 _resultChangeSetByExecutingRequest:v11 managedObjectContext:v3 error:&v15];
  objc_storeStrong((v8 + 40), v15);
LABEL_6:
  v13 = *(*(a1 + 64) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v12;
}

void sub_1000BAD24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a20, 8);
  _Block_object_dispose(&a26, 8);
  _Unwind_Resume(a1);
}

void sub_1000BAD48(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 32))
  {
    v4 = [NSPersistentHistoryChangeRequest fetchHistoryAfterToken:?];
  }

  else
  {
    v5 = [NSDate dateWithTimeIntervalSince1970:0.0];
    v4 = [NSPersistentHistoryChangeRequest fetchHistoryAfterDate:v5];
  }

  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(*(a1 + 56) + 8);
  obj = *(v8 + 40);
  v9 = [v6 _fetchRequestWithPredicateUsingEntityNames:v7 managedObjectContext:v3 error:&obj];
  objc_storeStrong((v8 + 40), obj);
  if (v9)
  {
    [v4 setFetchRequest:v9];
  }

  else if (*(*(*(a1 + 56) + 8) + 40))
  {
    v12 = [*(a1 + 40) _errorChangeSetWithError:?];
    goto LABEL_11;
  }

  if (*(a1 + 72))
  {
    [v4 setFetchLimit:?];
  }

  v10 = *(a1 + 40);
  v11 = *(*(a1 + 56) + 8);
  v15 = *(v11 + 40);
  v12 = [v10 _resultChangeSetByExecutingRequest:v4 managedObjectContext:v3 error:&v15];
  objc_storeStrong((v11 + 40), v15);
LABEL_11:
  v13 = *(*(a1 + 64) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v12;
}

void sub_1000BB514(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000BB52C(uint64_t a1, void *a2)
{
  v3 = a2;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  obj = *(a1 + 32);
  v4 = [obj countByEnumeratingWithState:&v61 objects:v72 count:16];
  if (v4)
  {
    v6 = v4;
    v51 = *v62;
    *&v5 = 138412802;
    v43 = v5;
    v7 = REMCRMergeableOrderedSet_ptr;
    v8 = &_s19ReminderKitInternal24REMRemindersListDataViewO25ScheduledDateBucketsModelVSeAAMc_ptr;
    v44 = v3;
    v45 = a1;
    do
    {
      v9 = 0;
      v46 = v6;
      do
      {
        v10 = v6;
        if (*v62 != v51)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v61 + 1) + 8 * v9);
        v12 = objc_autoreleasePoolPush();
        v13 = *(a1 + 40);
        v60 = 0;
        v14 = [v13 _fetchCDAuxiliaryChangeInfosWithObjectID:v11 inManagedObjectContext:v3 error:&v60];
        v15 = v60;
        if (v15)
        {
          v16 = 1;
        }

        else
        {
          v16 = v14 == 0;
        }

        v52 = v14;
        if (v16)
        {
          v17 = v3;
          v18 = v15;
          v19 = [NSError errorWithREMChangeErrorCode:10 underlyingError:v15];
          v20 = *(*(a1 + 56) + 8);
          v22 = *(v20 + 40);
          *(v20 + 40) = v19;
          v6 = v10;
        }

        else
        {
          v48 = v11;
          v49 = v12;
          v50 = v9;
          v21 = [v14 entity];
          v53 = +[NSMutableDictionary dictionary];
          v56 = 0u;
          v57 = 0u;
          v58 = 0u;
          v59 = 0u;
          v22 = v21;
          v54 = [v21 propertiesByName];
          v23 = [v54 countByEnumeratingWithState:&v56 objects:v71 count:16];
          if (v23)
          {
            v24 = v23;
            v25 = *v57;
            do
            {
              for (i = 0; i != v24; i = i + 1)
              {
                if (*v57 != v25)
                {
                  objc_enumerationMutation(v54);
                }

                v27 = *(*(&v56 + 1) + 8 * i);
                v28 = [v22 propertiesByName];
                v29 = [v28 objectForKeyedSubscript:v27];

                v30 = v7[398];
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v31 = [v14 valueForKey:v27];
                  if (v31)
                  {
                    v32 = v31;
                    v33 = v8[481];
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      [v32 UUIDString];
                      v34 = v8;
                      v36 = v35 = v7;

                      v32 = v36;
                      v7 = v35;
                      v8 = v34;
                      v14 = v52;
                    }

                    [v53 setObject:v32 forKey:v27];
                  }
                }
              }

              v24 = [v54 countByEnumeratingWithState:&v56 objects:v71 count:16];
            }

            while (v24);
          }

          v55 = 0;
          v37 = [NSPropertyListSerialization dataWithPropertyList:v53 format:100 options:0 error:&v55];
          v18 = v55;
          if (v18 || !v37)
          {
            v38 = +[REMLog changeTracking];
            v6 = v46;
            if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
            {
              v42 = [v18 localizedDescription];
              *buf = v43;
              v66 = v48;
              v67 = 2112;
              v68 = v42;
              v69 = 2112;
              v70 = v53;
              _os_log_error_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "Could not encode CD object into plist data {objectID: %@, error: %@, dictionary: %@}", buf, 0x20u);
            }

            v39 = [NSError errorWithREMChangeErrorCode:10 underlyingError:v18];
            a1 = v45;
            v40 = *(*(v45 + 56) + 8);
            v41 = *(v40 + 40);
            *(v40 + 40) = v39;
          }

          else
          {
            a1 = v45;
            [*(v45 + 48) setObject:v37 forKey:v48];
            v6 = v46;
          }

          v12 = v49;
          v9 = v50;

          v17 = v44;
        }

        objc_autoreleasePoolPop(v12);
        v9 = v9 + 1;
        v3 = v17;
      }

      while (v9 != v6);
      v6 = [obj countByEnumeratingWithState:&v61 objects:v72 count:16];
    }

    while (v6);
  }
}

void sub_1000BCC74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000BCC8C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = (a1 + 32);
  v5 = *(*(a1 + 40) + 8);
  obj = *(v5 + 40);
  v6 = [a2 executeRequest:v3 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  v7 = *(*(v4[1] + 8) + 40);
  if (!v7)
  {
    if (!v6)
    {
      sub_10076A21C(v4);
    }

    objc_opt_class();
    v9 = [v6 result];
    v10 = REMDynamicCast();

    if (v10)
    {
      if ([v10 BOOLValue])
      {
        goto LABEL_13;
      }

      v11 = 3;
    }

    else
    {
      v11 = 2;
    }

    v14 = [NSError errorWithREMChangeErrorCode:v11];
    v15 = *(*(a1 + 40) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;

    goto LABEL_13;
  }

  if ([v7 code] == 134301)
  {
    v8 = 4;
  }

  else
  {
    v8 = 1;
  }

  v12 = [NSError errorWithREMChangeErrorCode:v8 underlyingError:*(*(*(a1 + 40) + 8) + 40)];
  v13 = *(*(a1 + 40) + 8);
  v10 = *(v13 + 40);
  *(v13 + 40) = v12;
LABEL_13:
}

void sub_1000BCF24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000BCF3C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[REMCDChangeTrackingState fetchRequest];
  v5 = [*(a1 + 32) clientName];
  v6 = [*(a1 + 32) accountIdentifier];
  v7 = [NSPredicate predicateWithFormat:@"clientName == %@ AND accountIdentifier == %@", v5, v6];
  [v4 setPredicate:v7];

  v17 = 0;
  v8 = [v3 executeFetchRequest:v4 error:&v17];
  v9 = v17;
  if (v9)
  {
    v10 = +[REMLog changeTracking];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10076A2C0((a1 + 32), v9);
    }

    v11 = [NSError errorWithREMChangeErrorCode:8 underlyingError:v9];
    v12 = *(*(a1 + 48) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;
  }

  else
  {
    if ([v8 count] >= 2)
    {
      sub_10076A364((a1 + 32));
    }

    v13 = [v8 firstObject];
    v14 = *(a1 + 40);
    v15 = *(*(a1 + 48) + 8);
    obj = *(v15 + 40);
    (*(v14 + 16))();
    objc_storeStrong((v15 + 40), obj);
  }
}

void sub_1000BD440(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_error_impl(a1, v4, OS_LOG_TYPE_ERROR, a4, v5, 0xCu);
}

void sub_1000BD660(id a1)
{
  v1 = qword_100952AD0;
  qword_100952AD0 = &off_100905818;
}

void sub_1000BDC08(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  v6 = [v5 previousServerChangeToken];

  if (v6)
  {
    v7 = [v5 previousServerChangeToken];
    v8 = [v7 data];
    v9 = [v8 base64EncodedStringWithOptions:0];
  }

  else
  {
    v9 = @"(none)";
  }

  v10 = [v12 ic_loggingDescription];
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = @"(none)";
  }

  [*(a1 + 32) setObject:v11 forKeyedSubscript:v10];
}

id *sub_1000BE318(id *result)
{
  if (!qword_100952AD8)
  {
    return [result[4] initSharedSettingsWithOptions:721457];
  }

  return result;
}

void sub_1000BE734(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint8_t buf)
{

  _os_log_error_impl(a1, v11, OS_LOG_TYPE_ERROR, a4, &buf, 0x16u);
}

void sub_1000BEFE4(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = REMDynamicCast();

  v5 = [v4 backingCDObject];
  if (v5)
  {
    v6 = [*(a1 + 32) managedObjectContext];
    [v6 refreshObject:v5 mergeChanges:0];
  }

  else
  {
    v6 = +[REMLogStore write];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_10076AD9C(v4);
    }
  }
}

void sub_1000BF158(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, v9, OS_LOG_TYPE_FAULT, a4, &a9, 0xCu);
}

uint64_t isCloudContextSyncReasonUserInitiated(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    if ([v1 isEqualToString:@"SyncInterface(AppDelegate)"])
    {
      v3 = 1;
    }

    else
    {
      v3 = [v2 isEqualToString:@"SyncInterface(UpdateAccounts)"];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_1000BF314(id a1)
{
  v3[0] = objc_opt_class();
  v3[1] = objc_opt_class();
  v3[2] = objc_opt_class();
  v3[3] = objc_opt_class();
  v3[4] = objc_opt_class();
  v3[5] = objc_opt_class();
  v3[6] = objc_opt_class();
  v1 = [NSArray arrayWithObjects:v3 count:7];
  v2 = qword_100952AF0;
  qword_100952AF0 = v1;
}

void sub_1000BF438(id a1)
{
  v1 = +[NSMutableArray array];
  v2 = +[REMCDObject subclassesOfREMCDObjectRepresentingRootCoreDataEntities];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000BF514;
  v6[3] = &unk_1008DBF58;
  v7 = v1;
  v3 = v1;
  [v2 enumerateObjectsUsingBlock:v6];

  v4 = [NSArray arrayWithArray:v3];
  v5 = qword_100952B00;
  qword_100952B00 = v4;
}

uint64_t sub_1000BF514(uint64_t a1, Class aClass)
{
  v3 = NSStringFromClass(aClass);
  v4 = v3;
  if (v3)
  {
    v6 = v3;
    v3 = [*(a1 + 32) addObject:v3];
    v4 = v6;
  }

  return _objc_release_x1(v3, v4);
}

void sub_1000BFCBC(uint64_t a1)
{
  v2 = (*(*(a1 + 40) + 16))();
  [*(a1 + 32) addObject:v2];
}

void sub_1000C0328(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if (*(a1 + 48) == 1 && (objc_opt_class(), REMDynamicCast(), (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v6;
    v8 = *(a1 + 32);
    v9 = [v6 ic_prettyDescriptionWithTabLevel:1];
    [v8 appendFormat:@"\t%@ = %@\n", v10, v9];
  }

  else
  {
    [*(a1 + 32) appendFormat:*(a1 + 40), v10, v5];
  }
}

void sub_1000C0AD0(uint64_t a1)
{
  v2 = [*(a1 + 40) zoneName];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = &stru_1008FE8A0;
  }

  [*(a1 + 32) setObject:v4 forKeyedSubscript:@"zoneName"];

  v5 = [*(a1 + 40) serverChangeToken];
  v6 = [v5 ic_loggingDescription];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = &stru_1008FE8A0;
  }

  [*(a1 + 32) setObject:v8 forKeyedSubscript:@"serverChangeToken"];

  v9 = +[NSNumber numberWithShort:](NSNumber, "numberWithShort:", [*(a1 + 40) databaseScope]);
  [*(a1 + 32) setObject:v9 forKeyedSubscript:@"databaseScope"];
}

void sub_1000C0EF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000C0F08(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000C0F20(uint64_t a1)
{
  v8 = *(a1 + 32);
  v2 = [NSArray arrayWithObjects:&v8 count:1];
  v3 = [REMCDObject ic_objectsFromObjectIDs:v2 context:*(a1 + 40)];

  v4 = [v3 firstObject];
  if (v4)
  {
    v5 = [*(a1 + 48) existingShareForObject:v4];
    v6 = *(*(a1 + 56) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }
}

void sub_1000C114C(uint64_t a1)
{
  v26 = *(a1 + 32);
  v2 = [NSArray arrayWithObjects:&v26 count:1];
  v3 = [REMCDObject ic_objectsFromObjectIDs:v2 context:*(a1 + 40)];

  v4 = [v3 firstObject];
  if (v4)
  {
    v5 = [*(a1 + 48) existingShareForObject:v4];
    if (v5)
    {
      v6 = v5;
      v7 = *(a1 + 56);
      if (v7)
      {
        [v5 setObject:v7 forKeyedSubscript:CKShareThumbnailImageDataKey];
      }

      v8 = +[REMLog cloudkitCollaboration];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = [v4 shortLoggingDescription];
        *buf = 138412290;
        v25 = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Using existing share for %@", buf, 0xCu);
      }

      (*(*(a1 + 72) + 16))();
    }

    else
    {
      v12 = +[REMLog cloudkitCollaboration];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [v4 shortLoggingDescription];
        *buf = 138412290;
        v25 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "No existing share for %@", buf, 0xCu);
      }

      v14 = [*(a1 + 48) newShareForObject:v4];
      if (v14)
      {
        v15 = *(a1 + 48);
        v19[0] = _NSConcreteStackBlock;
        v19[1] = 3221225472;
        v19[2] = sub_1000C14E0;
        v19[3] = &unk_1008DC080;
        v20 = *(a1 + 64);
        v22 = &stru_1008DC030;
        v21 = *(a1 + 56);
        v23 = *(a1 + 72);
        [v15 prepareShare:v14 forObject:v4 completionHandler:v19];

        v16 = v20;
      }

      else
      {
        v16 = [NSString stringWithFormat:@"Failed to create share for object {object: %@}", v4];
        v17 = *(a1 + 72);
        v18 = [REMError internalErrorWithDebugDescription:v16];
        (*(v17 + 16))(v17, 0, v18);
      }

      v6 = 0;
    }
  }

  else
  {
    v6 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"The object we want to share is not found (objectID: %@}"), *(a1 + 32);
    v10 = *(a1 + 72);
    v11 = [REMError internalErrorWithDebugDescription:v6];
    (*(v10 + 16))(v10, 0, v11);
  }
}

void sub_1000C14C4(id a1, CKShare *a2, NSData *a3)
{
  if (a3)
  {
    [(CKShare *)a2 setObject:a3 forKeyedSubscript:CKShareThumbnailImageDataKey];
  }
}

void sub_1000C14E0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C15E4;
  block[3] = &unk_1008DC058;
  v14 = *(a1 + 48);
  v11 = v5;
  v12 = *(a1 + 40);
  v15 = *(a1 + 56);
  v13 = v6;
  v8 = v6;
  v9 = v5;
  dispatch_async(v7, block);
}

uint64_t sub_1000C15E4(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  (*(a1[7] + 16))();
  v4 = a1[4];
  v5 = a1[6];
  v6 = *(a1[8] + 16);

  return v6();
}

void sub_1000C2100(uint64_t a1)
{
  v2 = [*(a1 + 32) managedObjectContext];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000C21E8;
  v8[3] = &unk_1008DAB10;
  *&v3 = *(a1 + 32);
  *(&v3 + 1) = *(a1 + 40);
  v7 = v3;
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  *&v6 = v4;
  *(&v6 + 1) = v5;
  v9 = v7;
  v10 = v6;
  [v2 performBlock:v8];
}

void sub_1000C21E8(uint64_t a1)
{
  v2 = +[REMLog cloudkitCollaboration];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [*(a1 + 32) shortLoggingDescription];
    *buf = 138412290;
    v10 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Finished waiting for operations before preparing share for %@", buf, 0xCu);
  }

  v5 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = *(a1 + 32);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000C2328;
  v7[3] = &unk_1008DC0D0;
  v7[4] = v5;
  v8 = *(a1 + 56);
  [v5 saveShare:v4 forObject:v6 completionHandler:v7];
}

void sub_1000C2328(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  [v5 setObjectContext:0];
  (*(*(a1 + 40) + 16))();
}

void sub_1000C25DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000C2608(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v9 = +[REMLog cloudkitCollaboration];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [*(a1 + 32) shortLoggingDescription];
      v18 = 138412290;
      v19 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Retrying to save share for %@", &v18, 0xCu);
    }

    v11 = [*(a1 + 32) ckServerShare];

    if (v11)
    {
      v12 = [*(a1 + 32) ckServerShare];
      [*(a1 + 40) populateShare:v12 withObject:*(a1 + 32)];
      v13 = +[REMLog cloudkitCollaboration];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = [v12 ic_loggingDescription];
        v18 = 138412290;
        v19 = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Using saved server share when retrying %@", &v18, 0xCu);
      }
    }

    else
    {
      v12 = *(a1 + 48);
    }

    v15 = [*(a1 + 40) rootRecordForObject:*(a1 + 32)];
    v16 = *(*(a1 + 64) + 8);
    v17 = *(v16 + 40);
    *(v16 + 40) = v15;

    [*(a1 + 40) saveShare:v12 withRootRecord:*(*(*(a1 + 64) + 8) + 40) object:*(a1 + 32) completionHandler:*(a1 + 56)];
  }

  else
  {
    v8 = *(a1 + 56);
    if (v8)
    {
      (*(v8 + 16))(v8, v5, 0);
    }
  }
}

void sub_1000C2C80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 72));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000C2CC0(id *a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(a1 + 9);
  v9 = [a1[4] managedObjectContext];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000C2E20;
  v14[3] = &unk_1008DC188;
  v15 = v7;
  v16 = a1[4];
  v17 = WeakRetained;
  v18 = a1[5];
  v19 = a1[6];
  v20 = a1[7];
  v10 = a1[8];
  v21 = v6;
  v22 = v10;
  v11 = v6;
  v12 = WeakRetained;
  v13 = v7;
  [v9 performBlock:v14];
}

void sub_1000C2E20(uint64_t a1)
{
  v3 = (a1 + 32);
  v2 = *(a1 + 32);
  if (v2)
  {
    if ([v2 code] == 2)
    {
      v4 = +[REMLog cloudkitCollaboration];
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_10076B3E0(a1);
      }

      v5 = [*(a1 + 32) userInfo];
      v6 = [v5 objectForKeyedSubscript:CKPartialErrorsByItemIDKey];

      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_1000C315C;
      v22[3] = &unk_1008DC120;
      v7 = *(a1 + 40);
      v8 = *(a1 + 48);
      v9 = *(a1 + 56);
      v10 = *(a1 + 64);
      *&v11 = v9;
      *(&v11 + 1) = v10;
      *&v12 = v7;
      *(&v12 + 1) = v8;
      v23 = v12;
      v24 = v11;
      v25 = *(a1 + 72);
      [v6 enumerateKeysAndObjectsUsingBlock:v22];
    }

    v13 = +[REMLog cloudkitCollaboration];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10076B494(a1, v3, v13);
    }

    v14 = *(a1 + 88);
    if (v14)
    {
      (*(v14 + 16))(v14, 0, *v3);
    }
  }

  else
  {
    v15 = +[REMLog cloudkitCollaboration];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [*(a1 + 72) ic_loggingDescription];
      v17 = [*(a1 + 48) ic_loggingDescription];
      *buf = 138412546;
      v27 = v16;
      v28 = 2112;
      v29 = v17;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Saved share %@ %@", buf, 0x16u);
    }

    v18 = [*(a1 + 80) indexOfObjectPassingTest:&stru_1008DC160];
    if (v18 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v19 = +[REMLog cloudkitCollaboration];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_10076B590(a1);
      }

      v20 = 0;
    }

    else
    {
      v20 = [*(a1 + 80) objectAtIndex:v18];
      v19 = [*(a1 + 40) managedObjectContext];
      [*(a1 + 40) setServerShareIfNewer:v20];
      [v19 ic_save];
    }

    v21 = *(a1 + 88);
    if (v21)
    {
      (*(v21 + 16))(v21, v20, 0);
    }
  }
}

void sub_1000C315C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[REMLog cloudkitCollaboration];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v24 = [*(a1 + 32) shortLoggingDescription];
    v25 = [v5 ic_loggingDescription];
    v26 = [*(a1 + 40) ic_loggingDescription];
    v27 = 138413058;
    v28 = v24;
    v29 = 2112;
    v30 = v25;
    v31 = 2112;
    v32 = v26;
    v33 = 2112;
    v34 = v6;
    _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Error saving share for %@ when saving record ID %@ %@: %@", &v27, 0x2Au);
  }

  if ([v6 code] == 14)
  {
    v8 = [v6 userInfo];
    v9 = [v8 objectForKeyedSubscript:CKRecordChangedErrorServerRecordKey];

    if (v9)
    {
      v10 = [*(a1 + 48) recordID];
      v11 = [v5 isEqual:v10];

      if (v11)
      {
        v12 = +[REMLog cloudkitCollaboration];
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = [v9 ic_loggingDescription];
          v14 = [*(a1 + 32) shortLoggingDescription];
          v15 = [*(a1 + 40) ic_loggingDescription];
          v27 = 138412802;
          v28 = v13;
          v29 = 2112;
          v30 = v14;
          v31 = 2112;
          v32 = v15;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Saving server record %@ for %@ %@", &v27, 0x20u);
        }

        [*(a1 + 32) objectWasFetchedFromCloudWithRecord:v9 accountID:*(a1 + 56)];
        goto LABEL_17;
      }

      v17 = [*(a1 + 64) recordID];
      v18 = [v5 isEqual:v17];

      if (!v18)
      {
LABEL_17:
        v23 = [*(a1 + 32) managedObjectContext];
        [v23 ic_saveWithLogDescription:@"Saving Share"];

        goto LABEL_18;
      }

      v19 = +[REMLog cloudkitCollaboration];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = [v9 ic_loggingDescription];
        v21 = [*(a1 + 32) shortLoggingDescription];
        v22 = [*(a1 + 40) ic_loggingDescription];
        v27 = 138412802;
        v28 = v20;
        v29 = 2112;
        v30 = v21;
        v31 = 2112;
        v32 = v22;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Saving server share %@ for %@ %@", &v27, 0x20u);
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [*(a1 + 32) setServerShareIfNewer:v9];
        goto LABEL_17;
      }

      v16 = +[REMLog cloudkitCollaboration];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        sub_10076B644(v9, a1);
      }
    }

    else
    {
      v16 = +[REMLog cloudkitCollaboration];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_10076B6F4(v5, a1);
      }
    }

    goto LABEL_17;
  }

LABEL_18:
}

BOOL sub_1000C3540(id a1, id a2, unint64_t a3, BOOL *a4)
{
  v4 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

void sub_1000C3A48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 72));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000C3A88(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  objc_opt_class();
  v7 = [v6 objectForKeyedSubscript:*(a1 + 32)];

  v8 = REMDynamicCast();

  v9 = +[REMLog cloudkitCollaboration];
  v10 = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v8 ic_loggingDescription];
      WeakRetained = objc_loadWeakRetained((a1 + 72));
      v13 = [WeakRetained ic_loggingDescription];
      v14 = [*(a1 + 40) ckIdentifier];
      v20 = 138412802;
      v21 = v11;
      v22 = 2114;
      v23 = v13;
      v24 = 2114;
      v25 = v14;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Fetched share %@ %{public}@ %{public}@", &v20, 0x20u);
    }

    [*(a1 + 48) saveServerShare:v8 accountID:*(a1 + 56) completionHandler:*(a1 + 64)];
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v17 = [*(a1 + 32) ic_loggingDescription];
      v18 = objc_loadWeakRetained((a1 + 72));
      v19 = [v18 ic_loggingDescription];
      v20 = 138412802;
      v21 = v17;
      v22 = 2112;
      v23 = v19;
      v24 = 2112;
      v25 = v5;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Error fetching share %@ %@: %@", &v20, 0x20u);
    }

    v15 = *(a1 + 64);
    v16 = [NSError errorWithDomain:@"com.apple.reminders" code:214 userInfo:0];
    (*(v15 + 16))(v15, v16);
  }
}

void sub_1000C3DC8(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000C3E78;
  v7[3] = &unk_1008D9C60;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void sub_1000C3FAC(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForShare:*(a1 + 40) accountID:*(a1 + 48) context:*(a1 + 56)];
  v3 = +[REMLog cloudkitCollaboration];
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      v5 = objc_opt_class();
      v6 = v5;
      v7 = [v2 identifier];
      v8 = [*(a1 + 40) ic_loggingDescription];
      v10 = 138543874;
      v11 = v5;
      v12 = 2114;
      v13 = v7;
      v14 = 2112;
      v15 = v8;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Setting server share on %{public}@ %{public}@ %@", &v10, 0x20u);
    }

    [v2 setServerShareIfNewer:*(a1 + 40)];
    [*(a1 + 56) ic_save];
  }

  else
  {
    if (v4)
    {
      v9 = [*(a1 + 40) ic_loggingDescription];
      v10 = 138412290;
      v11 = v9;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Couldn't find cloud object for share %@", &v10, 0xCu);
    }
  }

  (*(*(a1 + 64) + 16))();
}

void sub_1000C44A8(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [*(a1 + 40) objectForShare:v2 accountID:*(a1 + 48) context:*(a1 + 56)];
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  else if (!*(a1 + 64) || ([*(a1 + 40) cloudContext], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "existingCloudObjectForRecordID:recordType:accountID:context:", *(a1 + 64), 0, *(a1 + 48), *(a1 + 56)), v3 = objc_claimAutoreleasedReturnValue(), v4, !v3))
  {
LABEL_10:
    v3 = +[REMLog cloudkitCollaboration];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [*(a1 + 32) ic_loggingDescription];
      *buf = 138412290;
      v17 = v10;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Couldn't find cloud object for share %@", buf, 0xCu);
    }

    goto LABEL_16;
  }

  v5 = [v3 isOwnedByCurrentUser];
  v6 = +[REMLog cloudkitCollaboration];
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      v8 = [v3 shortLoggingDescription];
      v9 = [*(a1 + 32) ic_loggingDescription];
      *buf = 138412546;
      v17 = v8;
      v18 = 2112;
      v19 = v9;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "User stopped sharing %@ %@", buf, 0x16u);
    }

    [v3 setCkNeedsToBeFetchedFromCloud:1];
    [v3 setCkServerShare:0];
  }

  else
  {
    if (v7)
    {
      v11 = [v3 shortLoggingDescription];
      v12 = [*(a1 + 32) ic_loggingDescription];
      *buf = 138412546;
      v17 = v11;
      v18 = 2112;
      v19 = v12;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "User removed themselves from shared %@ %@", buf, 0x16u);
    }

    [v3 markForDeletion];
    [v3 deleteFromLocalDatabase];
  }

  [*(a1 + 56) ic_save];
LABEL_16:

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C477C;
  block[3] = &unk_1008DA020;
  v13 = *(a1 + 72);
  v15 = *(a1 + 80);
  dispatch_async(v13, block);
}

void sub_1000C4DD0(uint64_t a1)
{
  v7 = [*(a1 + 32) cloudContext];
  v2 = [v7 primaryCloudKitAccountInContext:*(a1 + 40)];
  v3 = [v2 identifier];
  v4 = [v3 UUIDString];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void sub_1000C4E64(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) share];
  v4 = [v2 objectForShare:v3 accountID:*(*(*(a1 + 80) + 8) + 40) context:*(a1 + 48)];

  if (v4 && ([v4 ckServerShare], (v5 = objc_claimAutoreleasedReturnValue()) != 0) && (v6 = v5, v7 = objc_msgSend(v4, "markedForDeletion"), v6, (v7 & 1) == 0))
  {
    v16 = +[REMLog cloudkitCollaboration];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = [v4 shortLoggingDescription];
      v18 = [*(a1 + 40) share];
      v19 = [v18 ic_loggingDescription];
      *buf = 138412546;
      v34 = v17;
      v35 = 2112;
      v36 = v19;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Accepting share: Found existing object %@ for share metadata %@", buf, 0x16u);
    }

    v20 = [*(a1 + 40) share];
    [v4 didAcceptShare:v20];

    [*(a1 + 48) ic_save];
    v21 = *(a1 + 56);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000C51AC;
    block[3] = &unk_1008DC228;
    v22 = *(a1 + 72);
    v23 = *(a1 + 80);
    v31 = v22;
    v32 = v23;
    dispatch_async(v21, block);
    v15 = v31;
  }

  else
  {
    v8 = +[REMLog cloudkitCollaboration];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [*(a1 + 40) share];
      v10 = [v9 ic_loggingDescription];
      *buf = 138412290;
      v34 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Accepting share: No existing object for share metadata %@", buf, 0xCu);
    }

    v11 = dispatch_get_global_queue(2, 0);
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_1000C51D0;
    v24[3] = &unk_1008DC2A0;
    v12 = *(a1 + 40);
    v24[4] = *(a1 + 32);
    v25 = v12;
    v13 = *(a1 + 64);
    v14 = *(a1 + 80);
    v26 = v13;
    v29 = v14;
    v27 = *(a1 + 56);
    v28 = *(a1 + 72);
    dispatch_async(v11, v24);

    v15 = v25;
  }
}

void sub_1000C51D0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(*(*(a1 + 72) + 8) + 40);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000C529C;
  v6[3] = &unk_1008DC278;
  v5 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  [v2 acceptShareWithMetadata:v3 container:v5 accountID:v4 fetchObjectWithCompletionHandler:v6];
}

void sub_1000C529C(uint64_t a1, void *a2, char a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000C5380;
  v13[3] = &unk_1008DC250;
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v15 = v8;
  v16 = v10;
  v17 = a3;
  v14 = v7;
  v11 = v8;
  v12 = v7;
  dispatch_async(v9, v13);
}

void sub_1000C5B58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id location)
{
  objc_destroyWeak(&a21);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000C5BA4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v4 = [v5 recordID];
  if (v4)
  {
    [*(a1 + 32) setObject:v5 forKeyedSubscript:v4];
  }
}

void sub_1000C5C0C(id *a1, void *a2)
{
  v3 = a2;
  v4 = +[REMLog cloudkitCollaboration];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10076BB44(a1, v3, v5);
    }

    v6 = a1[8];
    if (v6)
    {
      v6[2](v6, v3, 0, a1[5]);
    }
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [a1[4] share];
      v8 = [v7 URL];
      WeakRetained = objc_loadWeakRetained(a1 + 9);
      v10 = [WeakRetained ic_loggingDescription];
      *buf = 138412546;
      v36 = v8;
      v37 = 2112;
      v38 = v10;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Share accepted for URL %@ %@", buf, 0x16u);
    }

    v11 = [a1[4] hierarchicalRootRecordID];
    v12 = +[REMLog cloudkitCollaboration];
    v13 = v12;
    if (v11)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v14 = [v11 ic_loggingDescription];
        v15 = a1[5];
        *buf = 138412546;
        v36 = v14;
        v37 = 2112;
        v38 = v15;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Fetching record from share %@, account ID = %@", buf, 0x16u);
      }

      v16 = [a1[6] cloudContext];
      v34 = v11;
      v17 = [NSArray arrayWithObjects:&v34 count:1];
      v18 = a1[5];
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_1000C5FEC;
      v25[3] = &unk_1008DC340;
      v19 = v11;
      v20 = a1[6];
      v26 = v19;
      v27 = v20;
      v28 = a1[4];
      v29 = a1[7];
      objc_copyWeak(&v33, a1 + 9);
      v30 = a1[5];
      v21 = a1[8];
      v31 = 0;
      v32 = v21;
      [v16 fetchRecordIDs:v17 accountID:v18 operationGroupName:@"FetchRecordForAcceptedShare" runExclusively:1 completionHandler:v25];

      objc_destroyWeak(&v33);
    }

    else
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v22 = [a1[4] share];
        v23 = [v22 ic_loggingDescription];
        *buf = 138412290;
        v36 = v23;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "No root record when accepting share: %@", buf, 0xCu);
      }

      v24 = a1[8];
      if (v24)
      {
        (*(v24 + 2))(v24, 0, 0, a1[5]);
      }
    }
  }
}

void sub_1000C5FEC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[REMLog cloudkitCollaboration];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10076BC40(a1);
    }
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v6 = [*(a1 + 32) ic_loggingDescription];
      *buf = 138412290;
      v22 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Fetched record from share %@", buf, 0xCu);
    }

    v7 = [*(a1 + 40) cloudContext];
    v8 = [v7 newBackgroundContext];

    v11 = _NSConcreteStackBlock;
    v12 = 3221225472;
    v13 = sub_1000C6234;
    v14 = &unk_1008DC318;
    v15 = *(a1 + 48);
    v16 = *(a1 + 56);
    objc_copyWeak(&v20, (a1 + 88));
    v17 = *(a1 + 32);
    v18 = *(a1 + 64);
    v5 = v8;
    v19 = v5;
    [v5 performBlockAndWait:&v11];

    objc_destroyWeak(&v20);
  }

  v9 = *(a1 + 80);
  if (v9)
  {
    (*(v9 + 16))(v9, *(a1 + 72), 0, *(a1 + 64));
  }

  v10 = [*(a1 + 40) cloudContext];
  [v10 syncWithReason:@"SyncAfterAcceptShare" discretionary:0 completionHandler:0];
}