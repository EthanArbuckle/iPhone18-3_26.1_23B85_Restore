uint64_t sub_100109E64(void *a1)
{
  if (!os_log_GKGeneral)
  {
    v2 = GKOSLoggers();
  }

  v3 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    v5 = a1[4];
    v4 = a1[5];
    v6 = v3;
    v7 = [v4 loggableHeaders];
    v9 = 138412546;
    v10 = v5;
    v11 = 2112;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "GKNetworkRequestManager updated headers for: %@ {\nheaders: %@}", &v9, 0x16u);
  }

  return (*(a1[6] + 16))();
}

void sub_100109F70(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[GKDataRequestManager sharedManager];
  v5 = [v4 storeBag];
  v6 = *(a1 + 32);
  v7 = [v6 HTTPBody];
  [v5 signRequest:v6 sapSession:v3 postData:v7];

  if (!os_log_GKGeneral)
  {
    v8 = GKOSLoggers();
  }

  v9 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "GKNetworkRequestManager finished getting session.", v10, 2u);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_10010BCF0(id a1)
{
  qword_1003B91F8 = objc_alloc_init(GKIDSConnectionManager);

  _objc_release_x1();
}

void sub_10010BF80(uint64_t a1)
{
  v2 = +[IDSIDQueryController sharedInstance];
  v3 = objc_alloc_init(IDSIDInfoOptions);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 64);
  v7 = [*(a1 + 48) idsDelegateQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10010C088;
  v8[3] = &unk_100362868;
  v9 = *(a1 + 56);
  [v2 idInfoForDestinations:v4 service:v5 infoTypes:v6 options:v3 listenerID:@"com.apple.gamed" queue:v7 completionBlock:v8];
}

id sub_10010CB8C(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = 0;
  v4 = [*(a1 + 32) getStatement:&v6 forSQL:v3];
  if (!v4)
  {
    (*(*(a1 + 40) + 16))();
    v4 = sqlite3_step(v6);
  }

  return v4;
}

void sub_10010CD40(uint64_t a1, uint64_t a2, void *a3)
{
  v23 = a3;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = *(a1 + 32);
  v5 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v5)
  {
    v19 = *v34;
    do
    {
      v20 = v5;
      for (i = 0; i != v20; i = i + 1)
      {
        if (*v34 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v33 + 1) + 8 * i);
        v7 = [v6 representedItem];
        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        v22 = v7;
        v8 = [v22 countByEnumeratingWithState:&v29 objects:v37 count:16];
        if (v8)
        {
          v9 = *v30;
          do
          {
            for (j = 0; j != v8; j = j + 1)
            {
              if (*v30 != v9)
              {
                objc_enumerationMutation(v22);
              }

              v11 = [*(*(&v29 + 1) + 8 * j) resourceID];
              v12 = *(a1 + 40);
              v13 = [v12 requestsInsertSQL];
              v27[0] = _NSConcreteStackBlock;
              v27[1] = 3221225472;
              v27[2] = sub_10010D0E0;
              v27[3] = &unk_100366DF8;
              v27[4] = *(a1 + 40);
              v27[5] = v6;
              v14 = v11;
              v28 = v14;
              [v12 writeToDatabase:a2 statementStore:v23 withInsertSQL:v13 updateSQL:0 bindOperation:v27];

              v15 = *(a1 + 40);
              v16 = [v15 removeGamesInsertSQL];
              v24[0] = _NSConcreteStackBlock;
              v24[1] = 3221225472;
              v24[2] = sub_10010D160;
              v24[3] = &unk_100366E20;
              v24[4] = *(a1 + 40);
              v17 = v14;
              v25 = v17;
              v26 = a2;
              [v15 writeToDatabase:a2 statementStore:v23 withInsertSQL:v16 updateSQL:0 bindOperation:v24];
            }

            v8 = [v22 countByEnumeratingWithState:&v29 objects:v37 count:16];
          }

          while (v8);
        }
      }

      v5 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v5);
  }
}

void sub_10010D0E0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) resourceID];
  [v3 bindParametersForRequestsStatement:a2 playerID:? digest:?];
}

id sub_10010D160(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  insert_rowid = sqlite3_last_insert_rowid(*(a1 + 48));

  return [v3 bindParametersForRemoveGamesStatement:a2 forRemovedBundleID:v4 requestsRowID:insert_rowid];
}

id sub_10010D430(uint64_t a1)
{
  v2 = 0;
  v3 = 0;
  do
  {
    v4 = *(a1 + 8 * v2);
    if (*v4)
    {
      v5 = v4 + 1;
      do
      {
        ++v3;
      }

      while (*v5++);
    }

    ++v2;
  }

  while (v2 != 4);
  v7 = [NSMutableString stringWithCapacity:v3 + 8];
  for (i = 0; i != 24; i += 8)
  {
    [v7 appendFormat:@"%s, ", *(a1 + i)];
  }

  [v7 appendFormat:@"%s ", *(a1 + 24)];

  return v7;
}

id sub_10010D5A4(void *a1)
{
  if (**a1)
  {
    v2 = (*a1 + 1);
    v3 = 2;
    do
    {
      v4 = *v2++;
      ++v3;
    }

    while (v4);
    v5 = v3;
  }

  else
  {
    v5 = 2;
  }

  v6 = [NSMutableString stringWithCapacity:v5];
  [v6 appendFormat:@"%s ", *a1];

  return v6;
}

id sub_10010D7E8(sqlite3_stmt **a1)
{
  v1 = sqlite3_column_text(*a1, 3);
  if (v1)
  {
    v1 = [NSString stringWithUTF8String:v1];
  }

  return v1;
}

void sub_10010DA80(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10010DB78;
  v8[3] = &unk_100366EC0;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v9 = v5;
  v10 = v6;
  v11 = *(a1 + 48);
  v12 = v3;
  v7 = v3;
  [v4 performAsync:v8];
}

void sub_10010DB78(uint64_t a1, uint64_t a2, void *a3)
{
  v30 = a3;
  v40 = 0;
  v41 = 0;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = *(a1 + 32);
  v4 = [obj countByEnumeratingWithState:&v36 objects:v43 count:16];
  if (v4)
  {
    v26 = *v37;
    do
    {
      v27 = v4;
      for (i = 0; i != v27; i = i + 1)
      {
        if (*v37 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v36 + 1) + 8 * i);
        v31 = [v6 resourceID];
        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        v7 = [v6 representedItem];
        v8 = [v7 countByEnumeratingWithState:&v32 objects:v42 count:16];
        if (v8)
        {
          v28 = *v33;
          v29 = v7;
          while (2)
          {
            for (j = 0; j != v8; j = j + 1)
            {
              if (*v33 != v28)
              {
                objc_enumerationMutation(v29);
              }

              v10 = [*(*(&v32 + 1) + 8 * j) resourceID];
              v11 = +[NSMutableArray array];
              v12 = +[NSMutableSet set];
              v13 = [*(a1 + 40) getAllRemoveGamesRequestIDsStatement];
              v14 = [v30 getStatement:&v40 forSQL:v13];

              [*(a1 + 40) bindParametersForStatement:v40 playerID:v31 bundleID:v10];
              if (!v14)
              {
                v14 = sqlite3_step(v40);
                while (v14 == 100)
                {
                  v20 = [NSNumber numberWithDouble:sqlite3_column_double(v40, 0)];
                  [v12 addObject:v20];
                  v14 = sqlite3_step(v40);
                }
              }

              if (v14 != 101)
              {
                goto LABEL_27;
              }

              v15 = [*(a1 + 40) getRemoveGamesDescriptorsStatement];
              v16 = [v30 getStatement:&v41 forSQL:v15];

              if (v16)
              {
                goto LABEL_27;
              }

              [*(a1 + 40) bindParametersForStatement:v41 playerID:v31 bundleID:v10];
              v17 = sqlite3_step(v41);
              while (v17 == 100)
              {
                v18 = [*(a1 + 40) removeGamesForExecutedStatement:v41];
                [v11 addObject:v18];
                v17 = sqlite3_step(v41);
              }

              if (v17 != 101)
              {
LABEL_27:
                v23 = [NSError _gkErrorForDatabase:a2];
                [*(a1 + 48) setError:v23];

                v7 = v29;
                goto LABEL_28;
              }

              if ([v11 count])
              {
                v19 = [v11 firstObject];
              }

              else
              {
                v19 = &__NSDictionary0__struct;
              }

              v21 = [(GKResource *)GKMutableResource resourceWithID:v31 representedItem:v19];
              [v21 setObject:v12 forKeyedSubscript:@"GKRequestIDs"];
              v22 = [*(a1 + 48) result];
              [v22 addObject:v21];
            }

            v7 = v29;
            v8 = [v29 countByEnumeratingWithState:&v32 objects:v42 count:16];
            if (v8)
            {
              continue;
            }

            break;
          }
        }

LABEL_28:
      }

      v4 = [obj countByEnumeratingWithState:&v36 objects:v43 count:16];
    }

    while (v4);
  }

  (*(*(a1 + 56) + 16))();
}

void sub_10010E0FC(uint64_t a1)
{
  v2 = *(a1 + 40);
  v4 = [*(a1 + 32) result];
  v3 = [*(a1 + 32) error];
  (*(v2 + 16))(v2, v4, v3);
}

id sub_10010E384(void *a1)
{
  v2 = 0;
  v3 = 0;
  v4 = 1;
  do
  {
    v5 = v4;
    v6 = a1[v2];
    if (*v6)
    {
      v7 = v6 + 1;
      do
      {
        ++v3;
      }

      while (*v7++);
    }

    v4 = 0;
    v2 = 1;
  }

  while ((v5 & 1) != 0);
  v9 = [NSMutableString stringWithCapacity:v3 + 4];
  [v9 appendFormat:@"%s, ", *a1];
  [v9 appendFormat:@"%s ", a1[1]];

  return v9;
}

void sub_10010E85C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10010E954;
  v8[3] = &unk_100366EC0;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v9 = v5;
  v10 = v6;
  v11 = *(a1 + 48);
  v12 = v3;
  v7 = v3;
  [v4 performAsync:v8];
}

void sub_10010E954(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v15 = 0;
  v6 = [*(a1 + 32) anyObject];
  v7 = [v6 resourceID];
  v8 = +[NSMutableSet set];
  v9 = [*(a1 + 40) deletePhotoDescriptorStatement];
  v10 = [v5 getStatement:&v15 forSQL:v9];

  if (v10 || ([*(a1 + 40) bindParametersForStatement:v15 playerID:v7], v10 = sqlite3_step(v15), v10 != 100))
  {
    v11 = 0;
  }

  else
  {
    v11 = 0;
    do
    {
      if (!v11)
      {
        v11 = [*(a1 + 40) deletePhotoDescriptorForExecutedStatement:v15];
      }

      v12 = [NSNumber numberWithDouble:sqlite3_column_double(v15, 0)];
      [v8 addObject:v12];
      v10 = sqlite3_step(v15);
    }

    while (v10 == 100);
  }

  if (v10 == 101)
  {
    v13 = [(GKResource *)GKMutableResource resourceWithID:v7 representedItem:v11];
    [v13 setObject:v8 forKeyedSubscript:@"GKRequestIDs"];
    v14 = [*(a1 + 48) result];
    [v14 addObject:v13];
  }

  else
  {
    v13 = [NSError _gkErrorForDatabase:a2];
    [*(a1 + 48) setError:v13];
  }

  (*(*(a1 + 56) + 16))();
}

void sub_10010EBC8(uint64_t a1)
{
  v2 = *(a1 + 40);
  v4 = [*(a1 + 32) result];
  v3 = [*(a1 + 32) error];
  (*(v2 + 16))(v2, v4, v3);
}

id sub_10010F230(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = 0;
  v4 = [*(a1 + 32) getStatement:&v6 forSQL:v3];
  if (!v4)
  {
    (*(*(a1 + 40) + 16))();
    v4 = sqlite3_step(v6);
  }

  return v4;
}

void sub_10010F488(uint64_t a1, sqlite3 *a2, void *a3)
{
  v5 = a3;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = *(a1 + 32);
  v6 = [obj countByEnumeratingWithState:&v37 objects:v45 count:16];
  if (v6)
  {
    v31 = *v38;
    do
    {
      v7 = 0;
      do
      {
        if (*v38 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v8 = [*(*(&v37 + 1) + 8 * v7) resourceID];
        v36 = 0;
        v9 = [*(a1 + 40) getOldPhotosSQL];
        if ([v5 getStatement:&v36 forSQL:v9])
        {
          v23 = [NSString stringWithUTF8String:sqlite3_errmsg(a2)];
          v43 = @"SQL";
          v44 = v9;
          v24 = [NSDictionary dictionaryWithObjects:&v44 forKeys:&v43 count:1];
          v25 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v23 userInfo:v24];
          v26 = v25;

          objc_exception_throw(v25);
        }

        v35 = 0;
        v10 = [*(a1 + 40) deleteOldPhotosSQL];
        i = [v5 getStatement:&v35 forSQL:v10];
        if (!i)
        {
          [*(a1 + 40) bindParametersForGetOldPhotosStatement:v36 playerID:v8];
          for (i = sqlite3_step(v36); i == 100; i = sqlite3_step(v36))
          {
            v17 = sqlite3_column_int64(v36, 0);
            [*(a1 + 40) bindParametersForDeleteOldPhotosStatement:v35 requestsRowID:v17];
            if (sqlite3_step(v35) != 101)
            {
              v19 = [NSString stringWithUTF8String:sqlite3_errmsg(a2)];
              v41 = @"SQL";
              v42 = v10;
              v20 = [NSDictionary dictionaryWithObjects:&v42 forKeys:&v41 count:1];
              v21 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v19 userInfo:v20];
              v22 = v21;

              objc_exception_throw(v21);
            }
          }
        }

        if (i != 101)
        {
          v27 = [NSString stringWithUTF8String:sqlite3_errmsg(a2)];
          v28 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v27 userInfo:0];
          v29 = v28;

          objc_exception_throw(v28);
        }

        v12 = *(a1 + 40);
        v13 = [v12 requestsInsertSQL];
        v33[0] = _NSConcreteStackBlock;
        v33[1] = 3221225472;
        v33[2] = sub_10010F9F4;
        v33[3] = &unk_100366F48;
        v33[4] = *(a1 + 40);
        v14 = v8;
        v34 = v14;
        [v12 writeToDatabase:a2 statementStore:v5 withInsertSQL:v13 updateSQL:0 bindOperation:v33];

        v15 = *(a1 + 40);
        v16 = [v15 photosInsertSQL];
        v32[0] = _NSConcreteStackBlock;
        v32[1] = 3221225472;
        v32[2] = sub_10010FA04;
        v32[3] = &unk_100366F70;
        v32[4] = *(a1 + 40);
        v32[5] = a2;
        [v15 writeToDatabase:a2 statementStore:v5 withInsertSQL:v16 updateSQL:0 bindOperation:v32];

        v7 = v7 + 1;
      }

      while (v7 != v6);
      v18 = [obj countByEnumeratingWithState:&v37 objects:v45 count:16];
      v6 = v18;
    }

    while (v18);
  }
}

id sub_10010FA04(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  insert_rowid = sqlite3_last_insert_rowid(*(a1 + 40));

  return [v3 bindParametersForPhotoStatement:a2 requestsRowID:insert_rowid];
}

NSData *sub_10010FDA4(sqlite3_stmt **a1)
{
  v2 = sqlite3_column_blob(*a1, 2);
  v3 = sqlite3_column_bytes(*a1, 2);

  return [NSData dataWithBytes:v2 length:v3];
}

void sub_1001100E0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001101D8;
  v8[3] = &unk_100366EC0;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v9 = v5;
  v10 = v6;
  v11 = *(a1 + 48);
  v12 = v3;
  v7 = v3;
  [v4 performAsync:v8];
}

void sub_1001101D8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v15 = 0;
  v6 = [*(a1 + 32) anyObject];
  v7 = [v6 resourceID];
  v8 = +[NSMutableSet set];
  v9 = [*(a1 + 40) setPhotoDescriptorStatement];
  v10 = [v5 getStatement:&v15 forSQL:v9];

  if (v10 || ([*(a1 + 40) bindParametersForStatement:v15 playerID:v7], v10 = sqlite3_step(v15), v10 != 100))
  {
    v11 = 0;
  }

  else
  {
    v11 = 0;
    do
    {
      if (!v11)
      {
        v11 = [*(a1 + 40) setPhotoDescriptorForExecutedStatement:v15];
      }

      v12 = [NSNumber numberWithDouble:sqlite3_column_double(v15, 0)];
      [v8 addObject:v12];
      v10 = sqlite3_step(v15);
    }

    while (v10 == 100);
  }

  if (v10 == 101)
  {
    v13 = [(GKResource *)GKMutableResource resourceWithID:v7 representedItem:v11];
    [v13 setObject:v8 forKeyedSubscript:@"GKRequestIDs"];
    v14 = [*(a1 + 48) result];
    [v14 addObject:v13];
  }

  else
  {
    v13 = [NSError _gkErrorForDatabase:a2];
    [*(a1 + 48) setError:v13];
  }

  (*(*(a1 + 56) + 16))();
}

void sub_10011044C(uint64_t a1)
{
  v2 = *(a1 + 40);
  v4 = [*(a1 + 32) result];
  v3 = [*(a1 + 32) error];
  (*(v2 + 16))(v2, v4, v3);
}

id sub_100110F1C(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = 0;
  v4 = [*(a1 + 32) getStatement:&v6 forSQL:v3];
  if (!v4)
  {
    (*(*(a1 + 40) + 16))();
    v4 = sqlite3_step(v6);
  }

  return v4;
}

void sub_100111174(uint64_t a1, sqlite3 *a2, void *a3)
{
  v37 = a3;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = *(a1 + 32);
  v4 = [obj countByEnumeratingWithState:&v44 objects:v52 count:16];
  if (v4)
  {
    v33 = *v45;
    v32 = GKAvatarTypeKey;
    do
    {
      v5 = 0;
      do
      {
        if (*v45 != v33)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v44 + 1) + 8 * v5);
        v7 = [v6 resourceID];
        v8 = [v6 representedItem];
        v9 = [v8 objectForKeyedSubscript:@"photo-data"];
        v34 = v8;
        v35 = [v8 objectForKeyedSubscript:v32];
        v43 = 0;
        v10 = [*(a1 + 40) getOldPhotosSQL];
        if ([v37 getStatement:&v43 forSQL:v10])
        {
          v24 = [NSString stringWithUTF8String:sqlite3_errmsg(a2)];
          v50 = @"SQL";
          v51 = v10;
          v25 = [NSDictionary dictionaryWithObjects:&v51 forKeys:&v50 count:1];
          v26 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v24 userInfo:v25];
          v27 = v26;

          objc_exception_throw(v26);
        }

        v42 = 0;
        v11 = [*(a1 + 40) deleteOldPhotosSQL];
        i = [v37 getStatement:&v42 forSQL:v11];
        if (!i)
        {
          [*(a1 + 40) bindParametersForGetOldPhotosStatement:v43 playerID:v7];
          for (i = sqlite3_step(v43); i == 100; i = sqlite3_step(v43))
          {
            v18 = sqlite3_column_int64(v43, 0);
            [*(a1 + 40) bindParametersForDeleteOldPhotosStatement:v42 requestsRowID:v18];
            if (sqlite3_step(v42) != 101)
            {
              v20 = [NSString stringWithUTF8String:sqlite3_errmsg(a2)];
              v48 = @"SQL";
              v49 = v11;
              v21 = [NSDictionary dictionaryWithObjects:&v49 forKeys:&v48 count:1];
              v22 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v20 userInfo:v21];
              v23 = v22;

              objc_exception_throw(v22);
            }
          }
        }

        if (i != 101)
        {
          v28 = [NSString stringWithUTF8String:sqlite3_errmsg(a2)];
          v29 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v28 userInfo:0];
          v30 = v29;

          objc_exception_throw(v29);
        }

        v13 = *(a1 + 40);
        v14 = [v13 requestsInsertSQL];
        v40[0] = _NSConcreteStackBlock;
        v40[1] = 3221225472;
        v40[2] = sub_1001117C0;
        v40[3] = &unk_100366F48;
        v40[4] = *(a1 + 40);
        v15 = v7;
        v41 = v15;
        [v13 writeToDatabase:a2 statementStore:v37 withInsertSQL:v14 updateSQL:0 bindOperation:v40];

        v16 = *(a1 + 40);
        v17 = [v16 photosInsertSQL];
        v38 = v9;
        v39 = v35;
        [v16 writeToDatabase:? statementStore:? withInsertSQL:? updateSQL:? bindOperation:?];

        v5 = v5 + 1;
      }

      while (v5 != v4);
      v19 = [obj countByEnumeratingWithState:&v44 objects:v52 count:16];
      v4 = v19;
    }

    while (v19);
  }
}

id sub_1001117D0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  insert_rowid = sqlite3_last_insert_rowid(*(a1 + 56));

  return [v3 bindParametersForPhotoStatement:a2 photo:v4 avatarType:v5 requestsRowID:insert_rowid];
}

void sub_100111C34(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] firstObject];
  v5 = [a1[5] _gkResourceWithID:v4];
  v6 = [v5 representedItem];

  v7 = [v6 objectForKeyedSubscript:GKAvatarTypeKey];
  [a1[6] setAvatarType:v7];

  v8 = [v6 objectForKeyedSubscript:@"image-data"];
  v19 = @"file-size";
  v9 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v8 length]);
  v20 = v9;
  v10 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];

  v11 = [a1[6] transport];
  v12 = [a1[6] bagKey];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100111E40;
  v15[3] = &unk_100367020;
  v16 = a1[7];
  v17 = v8;
  v18 = v3;
  v13 = v3;
  v14 = v8;
  [v11 postRequest:v10 forBagKey:v12 response:v15];
}

void sub_100111E40(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 representedItem];
  v7 = v6;
  if (v5)
  {
    if (!os_log_GKGeneral)
    {
      v8 = GKOSLoggers();
    }

    v9 = os_log_GKError;
    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      sub_10028DFA0(v5, v9, v10, v11, v12, v13, v14, v15);
    }

    [*(a1 + 32) setError:v5];
  }

  else if (v6)
  {
    v16 = [v6 objectForKeyedSubscript:@"upload-url"];
    [*(a1 + 32) setResult:v16];

    [*(a1 + 32) setObject:*(a1 + 40) forKeyedSubscript:@"image-data"];
  }

  (*(*(a1 + 48) + 16))();
}

void sub_100111F34(uint64_t a1)
{
  v2 = [*(a1 + 32) error];

  if (v2)
  {
    v3 = *(a1 + 48);
    if (!v3)
    {
      return;
    }

    v6 = [*(a1 + 32) error];
    (*(v3 + 16))(v3);
  }

  else
  {
    v4 = *(a1 + 40);
    v6 = [*(a1 + 32) objectForKeyedSubscript:@"image-data"];
    v5 = [*(a1 + 32) result];
    [v4 uploadImageData:v6 toURL:v5 handler:*(a1 + 48)];
  }
}

void sub_1001121FC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [NSURL URLWithString:*(a1 + 32)];
  v5 = [NSMutableURLRequest requestWithURL:v4];
  [v5 setValue:@"image/png" forHTTPHeaderField:@"content-type"];
  [v5 setHTTPMethod:@"POST"];
  [v5 setHTTPBody:*(a1 + 40)];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100112350;
  v9[3] = &unk_100367048;
  v10 = v5;
  v11 = *(a1 + 48);
  v12 = v4;
  v13 = v3;
  v6 = v3;
  v7 = v4;
  v8 = v5;
  [NSURLSession _gkSendAsynchronousRequest:v8 completionHandler:v9];
}

void sub_100112350(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v7;
  if (os_log_type_enabled(os_log_GKHTTP, OS_LOG_TYPE_INFO) && *(a1 + 32))
  {
    context = objc_autoreleasePoolPush();
    v11 = [*(a1 + 32) HTTPBody];
    v12 = [*(a1 + 32) valueForHTTPHeaderField:@"content-encoding"];
    v13 = [v12 isEqualToString:@"gzip"];

    if (v13)
    {
      v14 = [v11 _gkUnzippedData];
      v15 = v14;
      if (v14)
      {
        v16 = v14;

        v11 = v16;
      }
    }

    v17 = os_log_GKGeneral;
    if (!os_log_GKGeneral)
    {
      v18 = GKOSLoggers();
      v17 = os_log_GKGeneral;
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Upload avatar image data: Received HTTP Response", buf, 2u);
    }

    if (!os_log_GKGeneral)
    {
      v19 = GKOSLoggers();
    }

    v20 = os_log_GKHTTP;
    if (os_log_type_enabled(os_log_GKHTTP, OS_LOG_TYPE_INFO))
    {
      v21 = *(a1 + 32);
      v22 = v20;
      v23 = [v21 loggableHeaders];
      *buf = 138412802;
      v49 = v21;
      v50 = 2112;
      v51 = v23;
      v52 = 2112;
      v53 = v11;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "%@\nREQUEST {\nheader: %@\nbody: %@}", buf, 0x20u);
    }

    if (!os_log_GKGeneral)
    {
      v24 = GKOSLoggers();
    }

    v25 = os_log_GKHTTP;
    if (os_log_type_enabled(os_log_GKHTTP, OS_LOG_TYPE_INFO))
    {
      v26 = v25;
      v27 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v10 statusCode]);
      v28 = +[NSHTTPURLResponse localizedStringForStatusCode:](NSHTTPURLResponse, "localizedStringForStatusCode:", [v10 statusCode]);
      v29 = [v10 allHeaderFields];
      *buf = 138413570;
      v49 = v10;
      v50 = 2112;
      v51 = v9;
      v52 = 2112;
      v53 = v27;
      v54 = 2112;
      v55 = v28;
      v56 = 2112;
      v57 = v29;
      v58 = 2112;
      v59 = v8;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "%@\nRESPONSE (error:%@) {\nstatus: (%@) %@\nheader: %@\nbody: %@ }", buf, 0x3Eu);
    }

    objc_autoreleasePoolPop(context);
  }

  if (v8 && !v9 && [v10 statusCode] == 200)
  {
    v47 = 0;
    v30 = [NSJSONSerialization JSONObjectWithData:v8 options:0 error:&v47];
    v31 = v47;
    if (v31 || !v30)
    {
      [*(a1 + 40) setError:v31];
      if (!os_log_GKGeneral)
      {
        v35 = GKOSLoggers();
      }

      v36 = os_log_GKError;
      if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
      {
        sub_10028E00C(v31, v36, v37, v38, v39, v40, v41, v42);
      }
    }

    else
    {
      v32 = [v30 objectForKeyedSubscript:@"singleFile"];
      [*(a1 + 40) setResult:v32];
    }
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v33 = GKOSLoggers();
    }

    v34 = os_log_GKError;
    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      v43 = *(a1 + 48);
      v44 = v34;
      v45 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v10 statusCode]);
      *buf = 138412802;
      v49 = v43;
      v50 = 2112;
      v51 = v45;
      v52 = 2112;
      v53 = v9;
      _os_log_error_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, "Error uploading profile image data to url:  %@, status code:  %@, error:  %@", buf, 0x20u);
    }

    [*(a1 + 40) setError:v9];
  }

  (*(*(a1 + 56) + 16))();
}

void sub_100112830(uint64_t a1)
{
  v2 = [*(a1 + 32) result];

  if (v2)
  {
    v3 = *(a1 + 40);
    v5 = [*(a1 + 32) result];
    [v3 uploadProfileImageMetadata:? fromUploadURL:? handler:?];
  }

  else
  {
    v4 = *(a1 + 56);
    if (!v4)
    {
      return;
    }

    v5 = [*(a1 + 32) error];
    (*(v4 + 16))(v4);
  }
}

void sub_100112AB8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [NSMutableDictionary dictionaryWithObjectsAndKeys:*(a1 + 32), @"upload-url", *(a1 + 40), @"asset-metadata", 0];
  v5 = [*(a1 + 48) avatarType];

  if (v5)
  {
    v6 = [*(a1 + 48) avatarType];
    [v4 setObject:v6 forKeyedSubscript:GKAvatarTypeKey];
  }

  v7 = [*(a1 + 48) transport];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100112C08;
  v11[3] = &unk_1003613E8;
  v8 = *(a1 + 56);
  v9 = *(a1 + 48);
  v12 = v8;
  v13 = v9;
  v14 = v3;
  v10 = v3;
  [v7 postRequest:v4 forBagKey:@"gk-set-profile-image-metadata" result:v11];
}

void sub_100112C08(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (!os_log_GKGeneral)
    {
      v4 = GKOSLoggers();
    }

    v5 = os_log_GKError;
    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      sub_10028E078(v3, v5, v6, v7, v8, v9, v10, v11);
    }

    [*(a1 + 32) setError:v3];
  }

  else
  {
    v12 = [*(a1 + 40) transport];
    v13 = [v12 clientProxy];

    v14 = [NSString stringWithFormat:@"%s:%d %s", "GKDelayedSetPhotoNetworkWriter.m", 180, "[GKDelayedSetPhotoNetworkWriter uploadProfileImageMetadata:fromUploadURL:handler:]_block_invoke"];
    v15 = [*(a1 + 40) transport];
    v16 = [v15 credential];
    v17 = [v16 playerInternal];
    v18 = [v17 playerID];
    v19 = [v13 transactionGroupWithName:v14 forPlayerID:v18];

    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100112DE0;
    v20[3] = &unk_100362920;
    v20[4] = *(a1 + 40);
    [v19 performOnManagedObjectContext:v20];
  }

  (*(*(a1 + 48) + 16))();
}

void sub_100112DE0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!os_log_GKGeneral)
  {
    v7 = GKOSLoggers();
  }

  v8 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    v9 = *(a1 + 32);
    v10 = v8;
    v11 = [v9 transport];
    v12 = [v11 credential];
    v13 = [v12 playerInternal];
    v14 = 138412290;
    v15 = v13;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "GKDelayedSetPhotoNetworkWriter: Successfully uploaded player avatar image and metadata to server for %@", &v14, 0xCu);
  }
}

void sub_100112F10(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) error];
  (*(v1 + 16))(v1, v2);
}

id sub_100113250(sqlite3_stmt **a1)
{
  v1 = sqlite3_column_text(*a1, 1);
  if (v1)
  {
    v1 = [NSString stringWithUTF8String:v1];
  }

  return v1;
}

void sub_10011356C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100113664;
  v8[3] = &unk_100366EC0;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v9 = v5;
  v10 = v6;
  v11 = *(a1 + 48);
  v12 = v3;
  v7 = v3;
  [v4 performAsync:v8];
}

void sub_100113664(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v15 = 0;
  v6 = [*(a1 + 32) anyObject];
  v7 = [v6 resourceID];
  v8 = +[NSMutableSet set];
  v9 = [*(a1 + 40) setStatusDescriptorStatement];
  v10 = [v5 getStatement:&v15 forSQL:v9];

  if (v10 || ([*(a1 + 40) bindParametersForStatement:v15 playerID:v7], v10 = sqlite3_step(v15), v10 != 100))
  {
    v11 = 0;
  }

  else
  {
    v11 = 0;
    do
    {
      if (!v11)
      {
        v11 = [*(a1 + 40) setStatusDescriptorForExecutedStatement:v15];
      }

      v12 = [NSNumber numberWithDouble:sqlite3_column_double(v15, 0)];
      [v8 addObject:v12];
      v10 = sqlite3_step(v15);
    }

    while (v10 == 100);
  }

  if (v10 == 101)
  {
    v13 = [(GKResource *)GKMutableResource resourceWithID:v7 representedItem:v11];
    [v13 setObject:v8 forKeyedSubscript:@"GKRequestIDs"];
    v14 = [*(a1 + 48) result];
    [v14 addObject:v13];
  }

  else
  {
    v13 = [NSError _gkErrorForDatabase:a2];
    [*(a1 + 48) setError:v13];
  }

  (*(*(a1 + 56) + 16))();
}

void sub_1001138D8(uint64_t a1)
{
  v2 = *(a1 + 40);
  v4 = [*(a1 + 32) result];
  v3 = [*(a1 + 32) error];
  (*(v2 + 16))(v2, v4, v3);
}

id sub_100113FB8(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = 0;
  v4 = [*(a1 + 32) getStatement:&v6 forSQL:v3];
  if (!v4)
  {
    (*(*(a1 + 40) + 16))();
    v4 = sqlite3_step(v6);
  }

  return v4;
}

void sub_100114210(uint64_t a1, sqlite3 *a2, void *a3)
{
  v34 = a3;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = *(a1 + 32);
  v4 = [obj countByEnumeratingWithState:&v40 objects:v48 count:16];
  if (v4)
  {
    v32 = *v41;
    do
    {
      v5 = 0;
      do
      {
        if (*v41 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v40 + 1) + 8 * v5);
        v7 = [v6 resourceID];
        v8 = [v6 representedItem];
        v39 = 0;
        v9 = [*(a1 + 40) getOldStatusesSQL];
        if ([v34 getStatement:&v39 forSQL:v9])
        {
          v24 = [NSString stringWithUTF8String:sqlite3_errmsg(a2)];
          v46 = @"SQL";
          v47 = v9;
          v25 = [NSDictionary dictionaryWithObjects:&v47 forKeys:&v46 count:1];
          v26 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v24 userInfo:v25];
          v27 = v26;

          objc_exception_throw(v26);
        }

        v38 = 0;
        v10 = [*(a1 + 40) deleteOldStatusesSQL];
        i = [v34 getStatement:&v38 forSQL:v10];
        if (!i)
        {
          [*(a1 + 40) bindParametersForGetOldStatusesStatement:v39 playerID:v7];
          for (i = sqlite3_step(v39); i == 100; i = sqlite3_step(v39))
          {
            v18 = sqlite3_column_int64(v39, 0);
            [*(a1 + 40) bindParametersForDeleteOldStatusesStatement:v38 requestsRowID:v18];
            if (sqlite3_step(v38) != 101)
            {
              v20 = [NSString stringWithUTF8String:sqlite3_errmsg(a2)];
              v44 = @"SQL";
              v45 = v10;
              v21 = [NSDictionary dictionaryWithObjects:&v45 forKeys:&v44 count:1];
              v22 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v20 userInfo:v21];
              v23 = v22;

              objc_exception_throw(v22);
            }
          }
        }

        if (i != 101)
        {
          v28 = [NSString stringWithUTF8String:sqlite3_errmsg(a2)];
          v29 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v28 userInfo:0];
          v30 = v29;

          objc_exception_throw(v29);
        }

        v12 = *(a1 + 40);
        v13 = [v12 requestsInsertSQL];
        v36[0] = _NSConcreteStackBlock;
        v36[1] = 3221225472;
        v36[2] = sub_1001147DC;
        v36[3] = &unk_100366F48;
        v36[4] = *(a1 + 40);
        v14 = v7;
        v37 = v14;
        [v12 writeToDatabase:a2 statementStore:v34 withInsertSQL:v13 updateSQL:0 bindOperation:v36];

        v15 = v4;
        v16 = *(a1 + 40);
        v17 = [v16 statusInsertSQL];
        v35 = v8;
        [v16 writeToDatabase:? statementStore:? withInsertSQL:? updateSQL:? bindOperation:?];

        v4 = v15;
        v5 = v5 + 1;
      }

      while (v5 != v15);
      v19 = [obj countByEnumeratingWithState:&v40 objects:v48 count:16];
      v4 = v19;
    }

    while (v19);
  }
}

id sub_1001147EC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  insert_rowid = sqlite3_last_insert_rowid(*(a1 + 48));

  return [v3 bindParametersForStatusStatement:a2 status:v4 requestsRowID:insert_rowid];
}

void sub_1001158E8(void *a1, void *a2)
{
  v3 = a2;
  v4 = dispatch_time(0, (*(a1[4] + 16) * 1000000000.0));
  v5 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001159DC;
  block[3] = &unk_100367088;
  v6 = a1[5];
  v11 = a1[6];
  v9 = v6;
  v10 = v3;
  v7 = v3;
  dispatch_after(v4, v5, block);
}

uint64_t sub_1001159DC(void *a1)
{
  if (a1[6] == qword_1003B9200)
  {
    (*(a1[4] + 16))();
  }

  v2 = *(a1[5] + 16);

  return v2();
}

void sub_100115C68(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  pStmt = 0;
  if ([v4 getStatement:&pStmt forSQL:*(a1 + 32)])
  {
    if (!os_log_GKGeneral)
    {
      v5 = GKOSLoggers();
    }

    v6 = os_log_GKCache;
    if (os_log_type_enabled(os_log_GKCache, OS_LOG_TYPE_DEBUG))
    {
      sub_10028E0E4(a1, v6);
    }
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = *(a1 + 40);
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v22 count:16];
    if (v8)
    {
      v9 = *v16;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v15 + 1) + 8 * i);
          GKBindParam(pStmt, ":request_id", v11);
          v12 = sqlite3_step(pStmt);
          sqlite3_reset(pStmt);
          if (v12 != 101)
          {
            if (!os_log_GKGeneral)
            {
              v13 = GKOSLoggers();
            }

            v14 = os_log_GKCache;
            if (os_log_type_enabled(os_log_GKCache, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v21 = v11;
              _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "Unable to delete delayed request with id: %@", buf, 0xCu);
            }
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v15 objects:v22 count:16];
      }

      while (v8);
    }
  }
}

void sub_1001160AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, void *a25)
{
  _Block_object_dispose((v29 - 128), 8);

  _Unwind_Resume(a1);
}

void sub_100116110(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  v5 = *(*(a1 + 32) + 48);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001161F8;
  v10[3] = &unk_100367148;
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 32);
  v11 = v6;
  v12 = v8;
  v13 = v3;
  v14 = v7;
  v9 = v3;
  [v5 readResources:v4 handler:v10];
}

void sub_1001161F8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) setError:v6];
  if (!v6)
  {
    v7 = +[NSMutableSet set];
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v37 objects:v42 count:16];
    if (v9)
    {
      v10 = *v38;
      do
      {
        v11 = 0;
        do
        {
          if (*v38 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = [*(*(&v37 + 1) + 8 * v11) objectForKeyedSubscript:@"GKRequestIDs"];
          [v7 unionSet:v12];

          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [v8 countByEnumeratingWithState:&v37 objects:v42 count:16];
      }

      while (v9);
    }

    *(*(*(a1 + 56) + 8) + 24) = [v7 count];
    if (*(*(*(a1 + 56) + 8) + 24))
    {
      v13 = +[NSUserDefaults standardUserDefaults];
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v16 = [NSString stringWithFormat:@"GKRetryAfter-%@", v15];
      [v13 doubleForKey:v16];
      if (v17 == 0.0 || (+[NSDate dateWithTimeIntervalSinceReferenceDate:](NSDate, "dateWithTimeIntervalSinceReferenceDate:"), v18 = objc_claimAutoreleasedReturnValue(), [v18 timeIntervalSinceNow], v20 = v19 > 0.0, v18, !v20))
      {
        v30[0] = _NSConcreteStackBlock;
        v30[1] = 3221225472;
        v30[2] = sub_100116628;
        v30[3] = &unk_100367120;
        v27 = *(a1 + 32);
        v30[4] = *(a1 + 40);
        v31 = v8;
        v28 = v7;
        v29 = *(a1 + 56);
        v32 = v28;
        v36 = v29;
        v33 = v13;
        v34 = v16;
        v35 = *(a1 + 32);
        [v27 perform:v30];
      }

      else
      {
        v21 = [NSError userErrorForCode:3 userInfo:&off_1003831B8];
        [*(a1 + 32) setError:v21];

        v22 = os_log_GKGeneral;
        if (!os_log_GKGeneral)
        {
          v23 = GKOSLoggers();
          v22 = os_log_GKGeneral;
        }

        v24 = v22;
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          v25 = objc_opt_class();
          v26 = NSStringFromClass(v25);
          sub_10028E160(v26, buf, v24);
        }
      }
    }
  }

  (*(*(a1 + 48) + 16))();
}

void sub_100116628(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(v4 + 56);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100116764;
  v10[3] = &unk_1003670F8;
  v10[4] = v4;
  v7 = *(a1 + 48);
  v8 = *(a1 + 80);
  v11 = v7;
  v16 = v8;
  v12 = *(a1 + 56);
  v13 = *(a1 + 64);
  v14 = *(a1 + 72);
  v15 = v3;
  v9 = v3;
  [v6 writeResources:v5 handler:v10];
}

void sub_100116764(uint64_t a1, void *a2)
{
  v3 = a2;
  v13 = v3;
  if (v3)
  {
    v4 = [v3 userInfo];
    v5 = [v4 objectForKeyedSubscript:@"retryTime"];
    [v5 doubleValue];
    v7 = v6;

    if (v7 > 0.0)
    {
      v8 = [NSDate dateWithTimeIntervalSinceNow:v7];
      v9 = *(a1 + 48);
      [v8 timeIntervalSinceReferenceDate];
      [v9 setDouble:*(a1 + 56) forKey:?];
    }
  }

  else
  {
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v12 = [v10[6] databaseConnection];
    [v10 deleteSubmittedRequestsWithIDs:v11 onConnection:v12];

    *(*(*(a1 + 80) + 8) + 24) = 0;
  }

  [*(a1 + 64) setError:v13];
  (*(*(a1 + 72) + 16))();
}

void sub_1001168B4(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) error];
  (*(v1 + 16))(v1);
}

void sub_100116A1C(uint64_t a1)
{
  v2 = [NSString stringWithFormat:@"%s:%d %s", "GKDelayedRequestWriter.mm", 191, "[GKDelayedRequestWriter writeResources:handler:]_block_invoke"];
  v3 = [GKDispatchGroup dispatchGroupWithName:v2];

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100116C2C;
  v12[3] = &unk_1003672B0;
  v4 = *(a1 + 40);
  v12[4] = *(a1 + 32);
  v13 = v4;
  v5 = v3;
  v14 = v5;
  v16 = *(a1 + 56);
  v15 = *(a1 + 48);
  [v5 perform:v12];
  v6 = dispatch_get_global_queue(0, 0);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001173B4;
  v8[3] = &unk_1003672D8;
  v7 = v5;
  v9 = v7;
  v11 = *(a1 + 56);
  v10 = *(a1 + 48);
  [v7 notifyOnQueue:v6 block:v8];
}

void sub_100116C2C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(v4 + 40);
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_100116D70;
  v13 = &unk_100367288;
  v14 = v4;
  v15 = v5;
  v16 = *(a1 + 48);
  v7 = v3;
  v17 = v7;
  [v6 writeResources:v15 handler:&v10];
  if ((*(a1 + 64) & 1) == 0)
  {
    v8 = *(a1 + 56);
    v9 = [*(a1 + 48) error];
    (*(v8 + 16))(v8, v9);
  }
}

void sub_100116D34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, void *a16)
{
  v18 = v17;

  _Unwind_Resume(a1);
}

uint64_t sub_100116D70(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);
    v5 = *(v4 + 24);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100116E2C;
    block[3] = &unk_100367260;
    block[4] = v4;
    v8 = v3;
    v9 = *(a1 + 48);
    dispatch_async(v5, block);
  }

  return (*(*(a1 + 56) + 16))();
}

void sub_100116E2C(uint64_t a1)
{
  v2 = [*(a1 + 32) resourcesPending];
  v3 = [v2 setByAddingObjectsFromSet:*(a1 + 40)];
  [*(a1 + 32) setResourcesPending:v3];

  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100116F2C;
  v8[3] = &unk_1003671C0;
  v6 = v5;
  v7 = *(a1 + 32);
  v9 = v6;
  v10 = v7;
  [v4 batchAndPerformInGroup:v6 block:v8];
}

void sub_100116F2C(int8x16_t *a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100116FD4;
  v2[3] = &unk_100367238;
  v1 = a1[2];
  v3 = vextq_s8(v1, v1, 8uLL);
  [v1.i64[0] perform:v2];
}

void sub_100116FD4(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10011708C;
  block[3] = &unk_100367210;
  block[4] = v5;
  v9 = v4;
  v10 = v3;
  v7 = v3;
  dispatch_async(v6, block);
}

void sub_10011708C(id *a1)
{
  v2 = [a1[4] resourcesPending];
  v3 = +[NSSet set];
  [a1[4] setResourcesPending:v3];

  v4 = a1[4];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001171AC;
  v5[3] = &unk_1003671E8;
  v5[4] = v4;
  v6 = a1[5];
  v7 = a1[6];
  [v4 readAndSubmitDelayedRequestsOfResources:v2 handler:v5];
}

void sub_1001171AC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[GKClientProxy gameCenterClient];
  [v4 setAchievementsRateLimitedCurrentState:0];

  v5 = +[GKClientProxy gameCenterClient];
  [v5 setAchievementsRateLimitingCurrentNumberOfRequests:0];

  v6 = +[GKClientProxy gameCenterClient];
  [v6 setScoresRateLimitedCurrentState:0];

  v7 = +[GKClientProxy gameCenterClient];
  [v7 setScoresRateLimitingCurrentNumberOfRequests:0];

  if (objc_opt_respondsToSelector())
  {
    v8 = +[GKClientProxy gameCenterClient];
    v9 = *(a1 + 40);
    v10 = [v8 replyQueue];
    v13 = _NSConcreteStackBlock;
    v14 = 3221225472;
    v15 = sub_100117370;
    v16 = &unk_1003671C0;
    v11 = v8;
    v12 = *(a1 + 32);
    v17 = v11;
    v18 = v12;
    [v9 notifyOnQueue:v10 block:&v13];
  }

  [*(a1 + 40) setError:{v3, v13, v14, v15, v16}];
  (*(*(a1 + 48) + 16))();
}

id sub_100117370(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(*(a1 + 40) + 40) refreshDataType];

  return [v1 refreshContentsForDataType:v2 userInfo:0];
}

void sub_1001173B4(uint64_t a1)
{
  v2 = [*(a1 + 32) error];

  if (v2)
  {
    if (!os_log_GKGeneral)
    {
      v3 = GKOSLoggers();
    }

    v4 = os_log_GKDaemon;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = [*(a1 + 32) error];
      v8 = 138412290;
      v9 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%@", &v8, 0xCu);
    }
  }

  if (*(a1 + 48) == 1)
  {
    v6 = *(a1 + 40);
    v7 = [*(a1 + 32) error];
    (*(v6 + 16))(v6, v7);
  }
}

void sub_1001175CC(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 40);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100117674;
  v3[3] = &unk_100366E70;
  v4 = *(a1 + 48);
  [v2 writeResources:v1 handler:v3];
}

void sub_10011795C(void *a1)
{
  v2 = [NSMutableDictionary dictionaryWithContentsOfFile:a1[4]];
  if (!v2)
  {
    v2 = objc_alloc_init(NSMutableDictionary);
  }

  v3 = v2;
  [v2 setObject:&off_1003825C8 forKeyedSubscript:a1[5]];
  [v3 writeToFile:a1[4] atomically:1];
  (*(a1[6] + 16))();
}

void sub_100117AE4(uint64_t a1)
{
  v2 = [*(a1 + 32) friendSuggestionsDenyListLocation];
  v1 = objc_alloc_init(NSMutableDictionary);
  [v1 writeToFile:v2 atomically:1];
}

void sub_100117DBC(uint64_t a1)
{
  if (([*(a1 + 32) inFlightProvision] & 1) == 0)
  {
    if (!os_log_GKGeneral)
    {
      v2 = GKOSLoggers();
    }

    v3 = os_log_GKMatch;
    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Provisioning pseudonym", buf, 2u);
    }

    [*(a1 + 32) setInFlightProvision:1];
    v4 = [NSString stringWithFormat:@"%s:%d %s", "GKFireworksPseudonymManager.m", 56, "[GKFireworksPseudonymManager provisionPseudonymIfNeeded:]_block_invoke"];
    v5 = [GKDispatchGroup dispatchGroupWithName:v4];

    v6 = [*(a1 + 32) service];
    v7 = [v6 pseudonymPropertiesWithFeatureID:@"GamecenterMultiplayerFastsync" scopeID:0 expiryDurationInSeconds:86400.0];

    *buf = 0;
    v20 = buf;
    v21 = 0x2020000000;
    v22 = 0;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1001180D8;
    v15[3] = &unk_100367378;
    v15[4] = *(a1 + 32);
    v8 = v7;
    v16 = v8;
    v18 = buf;
    v17 = *(a1 + 40);
    [v5 perform:v15];
    if ([v5 waitWithTimeout:60.0] && GKAtomicCompareAndSwap32())
    {
      if (!os_log_GKGeneral)
      {
        v9 = GKOSLoggers();
      }

      v10 = os_log_GKMatch;
      if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
      {
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Timeout while handling pseudonym provision.", v14, 2u);
      }

      v11 = [NSError userErrorForCode:28 description:@"Connection timeout."];
      (*(*(a1 + 40) + 16))();
    }

    if (!os_log_GKGeneral)
    {
      v12 = GKOSLoggers();
    }

    v13 = os_log_GKMatch;
    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
    {
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Provisioning pseudonym task done.", v14, 2u);
    }

    _Block_object_dispose(buf, 8);
  }
}

void sub_1001180D8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) service];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001181AC;
  v9[3] = &unk_100367350;
  v5 = *(a1 + 40);
  v7 = *(a1 + 48);
  v6 = *(a1 + 56);
  v9[4] = *(a1 + 32);
  v12 = v6;
  v10 = v7;
  v11 = v3;
  v8 = v3;
  [v4 provisionPseudonymWithProperties:v5 completion:v9];
}

void sub_1001181AC(uint64_t a1, void *a2, void *a3)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001182AC;
  block[3] = &unk_100367328;
  v12 = a2;
  v13 = a3;
  v5 = *(a1 + 56);
  v10 = *(a1 + 32);
  v6 = *(&v10 + 1);
  *&v7 = *(a1 + 48);
  *(&v7 + 1) = v5;
  v14 = v10;
  v15 = v7;
  v8 = v13;
  v9 = v12;
  dispatch_async(&_dispatch_main_q, block);
}

uint64_t sub_1001182AC(uint64_t a1)
{
  if (!os_log_GKGeneral)
  {
    v2 = GKOSLoggers();
  }

  v3 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v7 = 138412546;
    v8 = v4;
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Provisioned pseudonym %@ %@", &v7, 0x16u);
  }

  [*(a1 + 48) setInFlightProvision:0];
  if (GKAtomicCompareAndSwap32())
  {
    (*(*(a1 + 56) + 16))();
  }

  return (*(*(a1 + 64) + 16))();
}

void sub_1001184A0(uint64_t a1)
{
  if (!os_log_GKGeneral)
  {
    v2 = GKOSLoggers();
  }

  v3 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 32);
    *buf = 138412290;
    v47 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Revoking pseudonym: %@.", buf, 0xCu);
  }

  v5 = [NSString stringWithFormat:@"%s:%d %s", "GKFireworksPseudonymManager.m", 90, "[GKFireworksPseudonymManager revokePseudonym:withCompletionHandler:]_block_invoke"];
  v6 = [GKDispatchGroup dispatchGroupWithName:v5];

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v7 = [*(a1 + 40) service];
  v8 = [v7 pseudonymURIMap];

  obj = v8;
  v32 = [v8 countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (v32)
  {
    v31 = *v41;
    do
    {
      v9 = 0;
      do
      {
        if (*v41 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v33 = v9;
        v10 = *(*(&v40 + 1) + 8 * v9);
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v11 = [*(a1 + 40) service];
        v12 = [v11 pseudonymURIMap];
        v13 = [v12 objectForKeyedSubscript:v10];

        v14 = [v13 countByEnumeratingWithState:&v36 objects:v44 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v37;
          do
          {
            for (i = 0; i != v15; i = i + 1)
            {
              if (*v37 != v16)
              {
                objc_enumerationMutation(v13);
              }

              v18 = *(*(&v36 + 1) + 8 * i);
              v19 = [v18 URI];
              v20 = [v19 prefixedURI];
              v21 = [v20 isEqualToString:*(a1 + 32)];

              if (v21)
              {
                if (!os_log_GKGeneral)
                {
                  v22 = GKOSLoggers();
                }

                v23 = os_log_GKMatch;
                if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412290;
                  v47 = v18;
                  _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "Revoking {pseudonym: %@}", buf, 0xCu);
                }

                [v6 enter];
                v24 = [*(a1 + 40) service];
                v34[0] = _NSConcreteStackBlock;
                v34[1] = 3221225472;
                v34[2] = sub_100118984;
                v34[3] = &unk_1003673A0;
                v34[4] = v18;
                v35 = v6;
                [v24 revokePseudonym:v18 completion:v34];
              }
            }

            v15 = [v13 countByEnumeratingWithState:&v36 objects:v44 count:16];
          }

          while (v15);
        }

        v9 = v33 + 1;
      }

      while ((v33 + 1) != v32);
      v32 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
    }

    while (v32);
  }

  if ([v6 waitWithTimeout:60.0])
  {
    if (!os_log_GKGeneral)
    {
      v25 = GKOSLoggers();
    }

    v26 = os_log_GKMatch;
    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
    {
      v27 = *(a1 + 32);
      *buf = 138412290;
      v47 = v27;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "Timeout while revoking pseudonym: %@.", buf, 0xCu);
    }

    v28 = [NSString stringWithFormat:@"Timeout while revoking pseudonym: %@.", *(a1 + 32)];
    v29 = [NSError userErrorForCode:35 description:v28];
  }

  else
  {
    v29 = 0;
  }

  (*(*(a1 + 48) + 16))();
}

void sub_100118984(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  v6 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    v7 = *(a1 + 32);
    v8 = 138412546;
    v9 = v7;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Revoked {pseudonym: %@, error: %@}", &v8, 0x16u);
  }

  [*(a1 + 40) leave];
}

void sub_100119324(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v15 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v13 - 144), 8);
  _Block_object_dispose((v13 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_100119368(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = *(*(a1 + 32) + 24);
  v25 = 1;
  *(*(*(a1 + 40) + 8) + 24) = sqlite3_file_control(v5, 0, 10, &v25);
  *(*(*(a1 + 48) + 8) + 24) = sqlite3_exec(*(*(a1 + 32) + 24), "PRAGMA journal_mode=WAL; PRAGMA foreign_keys=ON;", 0, 0, (*(*(a1 + 56) + 8) + 24));
  v6 = *(*(*(a1 + 48) + 8) + 24);
  if (v6 == 13 || v6 == 10)
  {
    if (!os_log_GKGeneral)
    {
      v8 = GKOSLoggers();
    }

    v9 = os_log_GKTrace;
    if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
    {
      v10 = *(*(*(a1 + 48) + 8) + 24);
      *buf = 67109120;
      *&buf[4] = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "GKDatabaseConnection can't exec on database due to rc2=%d - closing and retrying", buf, 8u);
    }

    sqlite3_close(*(*(a1 + 32) + 24));
    v11 = +[NSFileManager defaultManager];
    v12 = *(*(a1 + 32) + 16);
    v24 = 0;
    v13 = [v11 removeItemAtPath:v12 error:&v24];
    v14 = v24;
    if (v13)
    {
      v15 = v14;
      *(*(*(a1 + 64) + 8) + 24) = sqlite3_open_v2([*(*(a1 + 32) + 16) cStringUsingEncoding:4], (*(a1 + 32) + 24), 6, 0);
      if (!*(*(*(a1 + 64) + 8) + 24))
      {
        *buf = 0;
        v16 = *(*(a1 + 32) + 24);
        v23 = 1;
        *(*(*(a1 + 40) + 8) + 24) = sqlite3_file_control(v16, 0, 10, &v23);
        *(*(*(a1 + 48) + 8) + 24) = sqlite3_exec(*(*(a1 + 32) + 24), "PRAGMA journal_mode=WAL; PRAGMA foreign_keys=ON;", 0, 0, buf);

        goto LABEL_13;
      }

      if (!os_log_GKGeneral)
      {
        v17 = GKOSLoggers();
      }

      v18 = os_log_GKTrace;
      if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
      {
        v19 = *(*(*(a1 + 64) + 8) + 24);
        *buf = 67109120;
        *&buf[4] = v19;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "GKDatabaseConnection couldn't recreate the database due to returnFlagFileOpen=%d - closing and throwing exception", buf, 8u);
      }

      sqlite3_close(*(*(a1 + 32) + 24));
      [NSString stringWithFormat:@"failed to open database (%d)", *(a1 + 72)];
    }

    else
    {
      [NSString stringWithFormat:@"failed to set pragmas for database connection and to remove existing database.(%d)", *(*(*(a1 + 40) + 8) + 24)];
    }
    v20 = ;
    v21 = [NSException exceptionWithName:@"GKDatabaseInaccessibleException" reason:v20 userInfo:0];
    v22 = v21;

    objc_exception_throw(v21);
  }

LABEL_13:
}

void sub_10011974C(uint64_t a1)
{
  v1 = a1 + 32;
  CFDictionaryApplyFunction(*(*(a1 + 32) + 8), finalize_stmt_applier, 0);
  CFDictionaryRemoveAllValues(*(*v1 + 8));
  v2 = sqlite3_close(*(*v1 + 24));
  if (v2)
  {
    v3 = v2;
    if (!os_log_GKGeneral)
    {
      v4 = GKOSLoggers();
    }

    v5 = os_log_GKError;
    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      sub_10028E4DC(v1, v5, v3);
    }
  }

  else
  {
    *(*v1 + 24) = 0;
  }

  if ((GKAtomicCompareAndSwap32Barrier() & 1) == 0)
  {
    if (!os_log_GKGeneral)
    {
      v6 = GKOSLoggers();
    }

    v7 = os_log_GKDaemon;
    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "databaseCloseReentrancyCount out of sync", v8, 2u);
    }
  }
}

void sub_100119C54(uint64_t a1)
{
  sqlite3_exec(*(*(a1 + 32) + 24), "BEGIN", 0, 0, 0);
  (*(*(a1 + 40) + 16))();
  if (sqlite3_exec(*(*(a1 + 32) + 24), "COMMIT", 0, 0, 0))
  {
    v2 = [NSError _gkErrorForDatabase:*(*(a1 + 32) + 24)];
    if (!os_log_GKGeneral)
    {
      v3 = GKOSLoggers();
    }

    v4 = os_log_GKCache;
    if (os_log_type_enabled(os_log_GKCache, OS_LOG_TYPE_DEBUG))
    {
      sub_10028E640(v2, v4);
    }
  }

  else
  {
    v2 = 0;
  }

  v5 = dispatch_get_global_queue(0, 0);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100119EEC;
  v7[3] = &unk_100360EB0;
  v9 = *(a1 + 48);
  v6 = v2;
  v8 = v6;
  dispatch_async(v5, v7);
}

void sub_100119F78(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

void sub_100119F94(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

void sub_10011A194(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10011A1AC(uint64_t a1, sqlite3 *a2)
{
  result = sqlite3_exec(a2, [*(a1 + 32) UTF8String], 0, 0, 0);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_10011B644(uint64_t a1)
{
  v2 = [*(a1 + 32) appSessionForCredential:*(a1 + 40)];
  v3 = *(a1 + 56);
  v4 = *(*(a1 + 48) + 8);
  v5 = [*(a1 + 64) _gkPlistXMLDataForAppSession:v2];
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10011B74C;
  v9[3] = &unk_100367448;
  v10 = *(a1 + 56);
  v8 = *(a1 + 72);
  v11 = *(a1 + 48);
  v12 = v8;
  [v4 readDataForBagKey:v3 postData:v5 client:v6 credential:v7 completion:v9];
}

void sub_10011B74C(uint64_t a1, void *a2, void *a3, double a4)
{
  v7 = a2;
  v8 = a3;
  if (v8)
  {
    if (!os_log_GKGeneral)
    {
      v9 = GKOSLoggers();
    }

    v10 = os_log_GKError;
    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      sub_10028E760(a1, v8, v10);
    }
  }

  if (*(a1 + 48))
  {
    if (!os_log_GKGeneral)
    {
      v11 = GKOSLoggers();
    }

    v12 = os_log_GKTrace;
    if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "postRequest:Response handler exist for read data for bag key call", buf, 2u);
    }

    if (v7)
    {
      v18 = 0;
      v13 = [NSDictionary _gkDictionaryWithServerData:v7 error:&v18];
      v14 = v18;
      v15 = [GKResource resourceWithID:*(a1 + 32) representedItem:v13 TTL:a4];
    }

    else
    {
      v15 = 0;
      v13 = 0;
      v14 = 0;
    }

    v16 = *(a1 + 48);
    v17 = [*(a1 + 40) errorForBagError:v8 serverError:v14];
    (*(v16 + 16))(v16, v15, v17);
  }
}

void sub_10011BAC4(uint64_t a1)
{
  if (!os_log_GKGeneral)
  {
    v2 = GKOSLoggers();
  }

  v3 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "postRequest: forBagKey: result:", buf, 2u);
  }

  v4 = *(a1 + 40);
  v5 = *(*(a1 + 32) + 8);
  v6 = [*(a1 + 48) _gkPlistXMLDataForAppSession:*(a1 + 56)];
  v7 = *(a1 + 64);
  v8 = *(a1 + 72);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10011BBF0;
  v9[3] = &unk_1003612B8;
  v10 = *(a1 + 80);
  [v5 readDataForBagKey:v4 postData:v6 client:v7 credential:v8 completion:v9];
}

uint64_t sub_10011BBF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a3);
  }

  return result;
}

void sub_10011BDCC(uint64_t a1)
{
  if (!os_log_GKGeneral)
  {
    v2 = GKOSLoggers();
  }

  v3 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "postPreconnectRequest: forBagKey: result:", buf, 2u);
  }

  v4 = *(a1 + 40);
  v5 = *(*(a1 + 32) + 8);
  v6 = [*(a1 + 48) _gkPlistXMLDataForAppSession:*(a1 + 56)];
  v7 = *(a1 + 64);
  v8 = *(a1 + 72);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10011BEFC;
  v9[3] = &unk_1003612B8;
  v10 = *(a1 + 80);
  [v5 readDataForBagKey:v4 preconnect:1 postData:v6 client:v7 credential:v8 completion:v9];
}

uint64_t sub_10011BEFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a3);
  }

  return result;
}

void sub_10011C09C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (!os_log_GKGeneral)
    {
      v4 = GKOSLoggers();
    }

    v5 = os_log_GKError;
    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      sub_10028E7EC(a1, v3, v5);
    }
  }
}

void sub_10011D384(id a1)
{
  v1 = objc_alloc_init(NSDateFormatter);
  v2 = qword_1003B9210;
  qword_1003B9210 = v1;

  [qword_1003B9210 setDateStyle:1];
  v3 = qword_1003B9210;

  [v3 setTimeStyle:2];
}

uint64_t sub_10011D8E0(uint64_t a1)
{
  qword_1003B9220 = [[GKResource alloc] initWithResourceID:*(a1 + 32) representedItem:0 TTL:0.0];

  return _objc_release_x1();
}

void sub_10011DA04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10011DA1C(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = (*(*(a1 + 32) + 16))();
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

BOOL sub_10011DA9C(id a1, GKResource *a2, BOOL *a3)
{
  v3 = a2;
  if ([(GKResource *)v3 isExpired])
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = ![(GKResource *)v3 isInvalid];
  }

  return v4;
}

BOOL sub_10011DAF0(id a1, GKResource *a2, BOOL *a3)
{
  v3 = a2;
  if ([(GKResource *)v3 isExpired])
  {
    v4 = 1;
  }

  else
  {
    v4 = [(GKResource *)v3 isInvalid];
  }

  return v4;
}

BOOL sub_10011DB5C(id a1, GKResource *a2)
{
  v2 = a2;
  if ([(GKResource *)v2 isInvalid])
  {
    v3 = 1;
  }

  else
  {
    v3 = [(GKResource *)v2 isExpired];
  }

  return v3;
}

void GKBindParam(sqlite3_stmt *a1, const char *a2, NSString *a3)
{
  v6 = a3;
  v5 = sqlite3_bind_parameter_index(a1, a2);
  if (v5 >= 1)
  {
    sqlite3_bind_text(a1, v5, [(NSString *)v6 UTF8String], [(NSString *)v6 lengthOfBytesUsingEncoding:4], 0xFFFFFFFFFFFFFFFFLL);
  }
}

uint64_t GKBindParam(sqlite3_stmt *a1, const char *a2, sqlite3_int64 a3)
{
  result = sqlite3_bind_parameter_index(a1, a2);
  if (result >= 1)
  {

    return sqlite3_bind_int64(a1, result, a3);
  }

  return result;
}

{
  result = sqlite3_bind_parameter_index(a1, a2);
  if (result >= 1)
  {

    return sqlite3_bind_int64(a1, result, a3);
  }

  return result;
}

uint64_t GKBindParam(sqlite3_stmt *a1, const char *a2, int a3)
{
  result = sqlite3_bind_parameter_index(a1, a2);
  if (result >= 1)
  {

    return sqlite3_bind_int(a1, result, a3);
  }

  return result;
}

{
  result = sqlite3_bind_parameter_index(a1, a2);
  if (result >= 1)
  {

    return sqlite3_bind_int(a1, result, a3);
  }

  return result;
}

{
  result = sqlite3_bind_parameter_index(a1, a2);
  if (result >= 1)
  {

    return sqlite3_bind_int(a1, result, a3);
  }

  return result;
}

{
  result = sqlite3_bind_parameter_index(a1, a2);
  if (result >= 1)
  {

    return sqlite3_bind_int(a1, result, a3);
  }

  return result;
}

uint64_t GKBindParam(sqlite3_stmt *a1, const char *a2, double a3)
{
  result = sqlite3_bind_parameter_index(a1, a2);
  if (result >= 1)
  {

    return sqlite3_bind_double(a1, result, a3);
  }

  return result;
}

void GKBindParam(sqlite3_stmt *a1, const char *a2, NSDate *a3)
{
  v7 = a3;
  v5 = sqlite3_bind_parameter_index(a1, a2);
  if (v5 >= 1)
  {
    v6 = [(NSDate *)v7 _gkServerTimestamp];
    sqlite3_bind_int64(a1, v5, [v6 longLongValue]);
  }
}

void GKBindParam(sqlite3_stmt *a1, const char *a2, NSNumber *a3)
{
  v7 = a3;
  v5 = sqlite3_bind_parameter_index(a1, a2);
  if (v5 >= 1)
  {
    [(NSNumber *)v7 doubleValue];
    sqlite3_bind_double(a1, v5, v6);
  }
}

void GKBindParam(sqlite3_stmt *a1, const char *a2, NSData *a3)
{
  v6 = a3;
  v5 = sqlite3_bind_parameter_index(a1, a2);
  if (v5 >= 1)
  {
    sqlite3_bind_blob(a1, v5, [(NSData *)v6 bytes], [(NSData *)v6 length], 0xFFFFFFFFFFFFFFFFLL);
  }
}

void sub_10011E6B8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[GKAMPController controller];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10011E798;
  v7[3] = &unk_100367668;
  v10 = *(a1 + 48);
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  [v4 getBagWithCompletion:v7];
}

void sub_10011E798(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 stringForKey:@"arcade-iap-family-id"];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10011E8E8;
    v13[3] = &unk_100367640;
    v12 = *(a1 + 32);
    v6 = *(&v12 + 1);
    v7 = *(a1 + 48);
    v8 = *(a1 + 56);
    *&v9 = v7;
    *(&v9 + 1) = v8;
    v14 = v12;
    v15 = v9;
    [v5 valueWithCompletion:v13];
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v10 = GKOSLoggers();
    }

    v11 = os_log_GKError;
    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      sub_10028F78C(v11);
    }

    (*(*(a1 + 56) + 16))();
  }
}

uint64_t sub_10011E8E8(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) hasConsumedArcadeSubscription:*(a1 + 40) arcadeFamilyId:a2];
  v5 = *(a1 + 48);
  if (v5)
  {
    v6 = [v5 expiryDate];
    v7 = +[NSDate now];
    v8 = [v6 compare:v7];

    v9 = 1;
    if (((a2 != 0) & v4) != 0)
    {
      v9 = 2;
    }

    if (v8 == 1)
    {
      v10 = 3;
    }

    else
    {
      v10 = v9;
    }
  }

  else if (((a2 != 0) & v4) != 0)
  {
    v10 = 2;
  }

  else
  {
    v10 = 1;
  }

  [*(a1 + 32) setArcadeSubscriptionState:v10];
  v11 = *(*(a1 + 56) + 16);

  return v11();
}

void sub_10011EA10(id a1)
{
  qword_1003B9230 = objc_alloc_init(GKBadgeController);

  _objc_release_x1();
}

void sub_10011EC88(uint64_t a1)
{
  if (qword_1003B9240 == *(a1 + 40))
  {
    v29[9] = v1;
    v29[10] = v2;
    v4 = [NSMutableDictionary dictionaryWithCapacity:4];
    for (i = 0; i != 4; ++i)
    {
      v6 = [*(a1 + 32) _plistKeyForBadgeType:i];
      [v4 setObject:*(*(a1 + 32) + 8 * i + 8) forKeyedSubscript:v6];
    }

    v29[0] = 0;
    v7 = [NSPropertyListSerialization dataWithPropertyList:v4 format:200 options:0 error:v29];
    v8 = v29[0];
    if (v7)
    {
      v9 = [*(a1 + 32) _badgeCountURL];
      v28 = v8;
      v10 = [v7 writeToURL:v9 options:1 error:&v28];
      v11 = v28;

      if ((v10 & 1) == 0)
      {
        if (!os_log_GKGeneral)
        {
          v12 = GKOSLoggers();
        }

        v13 = os_log_GKError;
        if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
        {
          sub_10028F7E4(v11, v13, v14, v15, v16, v17, v18, v19);
        }
      }
    }

    else
    {
      if (!os_log_GKGeneral)
      {
        v20 = GKOSLoggers();
      }

      v21 = os_log_GKError;
      if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
      {
        sub_10028F850(v8, v21, v22, v23, v24, v25, v26, v27);
      }

      v11 = v8;
    }

    *(*(a1 + 32) + 48) = 0;
  }
}

void sub_10011EE5C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2[1])
  {
    v3 = [v2 _badgeCountURL];
    v35 = 0;
    v4 = [NSData dataWithContentsOfURL:v3 options:1 error:&v35];
    v5 = v35;

    if (v4)
    {
      v33 = 0;
      v34 = 200;
      v6 = [NSPropertyListSerialization propertyListWithData:v4 options:1 format:&v34 error:&v33];
      v7 = v33;

      if (v6)
      {
        for (i = 1; i != 5; ++i)
        {
          v9 = [*(a1 + 32) _plistKeyForBadgeType:i - 1];
          v10 = [v6 objectForKeyedSubscript:v9];
          v11 = v10;
          if (v10)
          {
            v12 = *(a1 + 32);
            v13 = v10;
            v14 = *(v12 + 8 * i);
            *(v12 + 8 * i) = v13;
          }

          else
          {
            v15 = objc_alloc_init(NSMutableDictionary);
            v16 = *(a1 + 32);
            v14 = *(v16 + 8 * i);
            *(v16 + 8 * i) = v15;
          }
        }
      }

      else
      {
        if (!os_log_GKGeneral)
        {
          v21 = GKOSLoggers();
        }

        v22 = os_log_GKError;
        if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
        {
          sub_10028F8BC(v7, v22, v23, v24, v25, v26, v27, v28);
        }

        for (j = 8; j != 40; j += 8)
        {
          v30 = objc_alloc_init(NSMutableDictionary);
          v31 = *(a1 + 32);
          v32 = *(v31 + j);
          *(v31 + j) = v30;
        }
      }
    }

    else
    {
      for (k = 8; k != 40; k += 8)
      {
        v18 = objc_alloc_init(NSMutableDictionary);
        v19 = *(a1 + 32);
        v20 = *(v19 + k);
        *(v19 + k) = v18;
      }

      v7 = v5;
    }
  }
}

void sub_10011F2A4(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    [*(a1 + 32) badgeBundleID:*(a1 + 40) badgeCount:*(a1 + 48)];
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v6 = GKOSLoggers();
    }

    v7 = os_log_GKTrace;
    if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "GKBadgeController - RegisterBadgePermission denied", v8, 2u);
    }
  }
}

void sub_10011F358(uint64_t a1)
{
  v2 = GKGameCenterIdentifier;
  if ([*(a1 + 32) isEqualToString:GKGameCenterIdentifier])
  {
    v3 = +[GKClientProxy gameCenterClient];
    [v3 setBadgeCount:objc_msgSend(*(a1 + 40) forType:{"_badgeCountForBundleID:badgeType:", v2, 0), 0}];
    [v3 setBadgeCount:objc_msgSend(*(a1 + 40) forType:{"_badgeCountForBundleID:badgeType:", v2, 1), 1}];
    [v3 setBadgeCount:objc_msgSend(*(a1 + 40) forType:{"_badgeCountForBundleID:badgeType:", v2, 2), 2}];
  }
}

id sub_10011FB28(uint64_t a1)
{
  result = [*(a1 + 32) _badgeCountForBundleID:*(a1 + 40) badgeType:*(a1 + 56)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

void sub_10011FF4C(uint64_t a1)
{
  v3 = [*(a1 + 32) _dictionaryForBadgeType:*(a1 + 48)];
  v2 = [NSNumber numberWithUnsignedInteger:*(a1 + 56)];
  [v3 setObject:v2 forKeyedSubscript:*(a1 + 40)];

  *(*(a1 + 32) + 48) = 1;
  [*(a1 + 32) badgeApplicationWithBundleID:*(a1 + 40) badgeCount:{objc_msgSend(*(a1 + 32), "_totalBadgeCountForBundleID:", *(a1 + 40))}];
}

void sub_100120068(uint64_t a1)
{
  v2 = +[NSMutableSet set];
  for (i = 8; i != 40; i += 8)
  {
    v4 = [*(*(a1 + 32) + i) allKeys];
    [v2 addObjectsFromArray:v4];
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = v2;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(a1 + 32) badgeApplicationWithBundleID:*(*(&v12 + 1) + 8 * v9) badgeCount:{objc_msgSend(*(a1 + 32), "_totalBadgeCountForBundleID:", *(*(&v12 + 1) + 8 * v9), v12)}];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v10 = +[GKClientProxy gameCenterClient];
  v11 = GKGameCenterIdentifier;
  [v10 setBadgeCount:objc_msgSend(*(a1 + 32) forType:{"_badgeCountForBundleID:badgeType:", GKGameCenterIdentifier, 0), 0}];
  [v10 setBadgeCount:objc_msgSend(*(a1 + 32) forType:{"_badgeCountForBundleID:badgeType:", v11, 1), 1}];
  [v10 setBadgeCount:objc_msgSend(*(a1 + 32) forType:{"_badgeCountForBundleID:badgeType:", v11, 2), 2}];
}

void sub_1001202CC(uint64_t a1)
{
  v2 = +[NSMutableSet set];
  for (i = 8; i != 40; i += 8)
  {
    v4 = [*(*(a1 + 32) + i) allKeys];
    [v2 addObjectsFromArray:v4];

    [*(*(a1 + 32) + i) removeAllObjects];
    *(*(a1 + 32) + 48) = 1;
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = v2;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(a1 + 32) badgeApplicationWithBundleID:*(*(&v11 + 1) + 8 * v9) badgeCount:{0, v11}];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = +[GKClientProxy gameCenterClient];
  [v10 setBadgeCount:0 forType:0];
  [v10 setBadgeCount:0 forType:1];
  [v10 setBadgeCount:0 forType:2];
}

void sub_1001205F0(uint64_t a1)
{
  if ([*(a1 + 32) _totalBadgeCountForBundleID:*(a1 + 40)])
  {
    v2 = [[UNUserNotificationCenter alloc] initWithBundleIdentifier:*(a1 + 40)];
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_1001206AC;
    v3[3] = &unk_100367778;
    v4 = *(a1 + 48);
    [v2 requestAuthorizationWithOptions:1 completionHandler:v3];
  }
}

uint64_t sub_1001206AC(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100120D3C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100120E1C;
  v8[3] = &unk_100361FE0;
  v9 = v4;
  v10 = *(a1 + 40);
  v11 = v3;
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v12 = v5;
  v13 = v6;
  v7 = v3;
  [v9 performBlockAndWait:v8];
}

void sub_100120E1C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v39 = 0;
  v4 = [v2 executeFetchRequest:v3 error:&v39];
  v5 = v39;
  if (v5)
  {
    [*(a1 + 32) _gkHandleFetchError:v5];
  }

  v28 = v5;
  v6 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v4, "count")}];
  [*(a1 + 48) removeAllObjects];
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v35 objects:v49 count:16];
  v30 = v6;
  if (v8)
  {
    v9 = v8;
    v10 = *v36;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v36 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v35 + 1) + 8 * i);
        v13 = [v12 objectForKeyedSubscript:@"objectID"];
        v14 = [v12 objectForKeyedSubscript:*(a1 + 56)];
        v15 = v14;
        if (v13)
        {
          v16 = v14 == 0;
        }

        else
        {
          v16 = 1;
        }

        if (!v16)
        {
          v17 = [*(a1 + 48) objectForKeyedSubscript:v14];
          if (v17)
          {
            if (!os_log_GKGeneral)
            {
              v18 = GKOSLoggers();
            }

            v19 = os_log_GKCache;
            if (os_log_type_enabled(os_log_GKCache, OS_LOG_TYPE_DEBUG))
            {
              cls = *(*(a1 + 64) + 8);
              v20 = v19;
              Name = class_getName(cls);
              *buf = 136315906;
              v42 = Name;
              v43 = 2112;
              v44 = v13;
              v45 = 2112;
              v46 = v17;
              v47 = 2112;
              v48 = v15;
              _os_log_debug_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "UNIQUENESS FAILURE for %s:%@ and %@ found for %@", buf, 0x2Au);
            }

            v6 = v30;
            [v30 addObject:v17];
          }

          [*(a1 + 48) setObject:v13 forKeyedSubscript:v15];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v35 objects:v49 count:16];
    }

    while (v9);
  }

  if ([v6 count])
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v22 = v6;
    v23 = [v22 countByEnumeratingWithState:&v31 objects:v40 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v32;
      do
      {
        for (j = 0; j != v24; j = j + 1)
        {
          if (*v32 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = [*(a1 + 32) objectWithID:*(*(&v31 + 1) + 8 * j)];
          if (v27)
          {
            [*(a1 + 32) deleteObject:v27];
          }
        }

        v24 = [v22 countByEnumeratingWithState:&v31 objects:v40 count:16];
      }

      while (v24);
    }

    v6 = v30;
  }
}

void sub_1001217CC(uint64_t a1, void *a2)
{
  v3 = a2;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        v10 = [v3 objectForKeyedSubscript:{v9, v11}];
        if (v10)
        {
          [*(a1 + 40) setObject:v10 forKeyedSubscript:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

void sub_100121900(id *a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = [a1[4] objectRegisteredForID:v5];
  if (v6)
  {
    [a1[5] setObject:v6 forKeyedSubscript:v7];
    [a1[6] removeObject:v5];
  }
}

void sub_100121994(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [v4 valueForKeyPath:*(a1 + 32)];
  if (v3)
  {
    [*(a1 + 40) setObject:v4 forKeyedSubscript:v3];
  }
}

void sub_100121A00(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [*(a1 + 32) objectForKeyedSubscript:?];
  if (v3)
  {
    goto LABEL_2;
  }

  v4 = *(a1 + 56);
  if (v4)
  {
    v5 = (*(v4 + 16))(v4, v6);
    if (v5)
    {
      v3 = v5;
      [*(a1 + 40) addObject:v5];
LABEL_2:
      [*(a1 + 48) addObject:v3];
    }
  }
}

void sub_10012320C(id a1)
{
  v1 = qword_1003B9248;
  qword_1003B9248 = &off_1003831E0;
}

void sub_100123518(id *a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = [a1[4] objectForKeyedSubscript:v9];
  v7 = [a1[5] valueForKeyPath:v5];
  v8 = v7;
  if (v7 != v6 && ([v7 isEqualToString:v6] & 1) == 0)
  {
    [a1[6] addObject:v9];
    [a1[5] setValue:v6 forKeyPath:v5];
    [a1[5] deleteCachedImage:v8];
  }
}

void sub_10012389C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001238B4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1001238CC(uint64_t a1, void *a2, uint64_t a3)
{
  v10 = a2;
  v5 = [*(a1 + 32) valueForKeyPath:a3];
  if (v5)
  {
    v6 = *(*(*(a1 + 40) + 8) + 40);
    if (!v6)
    {
      v7 = [[NSMutableDictionary alloc] initWithCapacity:4];
      v8 = *(*(a1 + 40) + 8);
      v9 = *(v8 + 40);
      *(v8 + 40) = v7;

      v6 = *(*(*(a1 + 40) + 8) + 40);
    }

    [v6 setObject:v5 forKeyedSubscript:v10];
  }
}

void sub_100123D94(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v6 = a3;
  v5 = [v4 valueForKeyPath:v6];
  [v4 deleteCachedImage:v5];

  [*(a1 + 32) setValue:0 forKeyPath:v6];
}

void sub_10012408C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001240A4(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = [*(a1 + 32) valueForKeyPath:?];

  if (v6)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }
}

id sub_100125E18(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [[v3 alloc] initWithManagedObjectContext:*(a1 + 32)];
  [v5 setPlayerID:v4];

  return v5;
}

void sub_100126BD8(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v9 = [NSURL URLWithString:?];
  v6 = +[NSFileManager defaultManager];
  v7 = [v9 path];
  v8 = [v6 fileExistsAtPath:v7];

  if ((v8 & 1) == 0)
  {
    [*(a1 + 32) setPhotoPending:0];
    *a4 = 1;
  }
}

uint64_t sub_100126C90(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isEqualToString:@"everyone"])
  {
    v3 = 0;
  }

  else if ([v2 isEqualToString:@"friends"])
  {
    v3 = 1;
  }

  else
  {
    [v2 isEqualToString:@"me"];
    v3 = 2;
  }

  return v3;
}

uint64_t sub_100126D04(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isEqualToString:GKGlobalFriendListAccessAllowed])
  {
    v3 = 0;
  }

  else if ([v2 isEqualToString:GKGlobalFriendListAccessDenied])
  {
    v3 = 1;
  }

  else
  {
    [v2 isEqualToString:GKGlobalFriendListAccessUndetermined];
    v3 = 2;
  }

  return v3;
}

void sub_100127A18(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 32) removeObject:v3];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = *(a1 + 32);
      v5 = [v3 playerID];
      [v4 removeObject:v5];
    }

    else
    {
      if (!os_log_GKGeneral)
      {
        v6 = GKOSLoggers();
      }

      if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
      {
        sub_100290160();
      }
    }
  }
}

void sub_100128038(uint64_t a1, void *a2)
{
  v5 = a2;
  if ([v5 isEqualToString:*(a1 + 32)])
  {
    v3 = 40;
  }

  else if ([*(a1 + 48) containsObject:v5])
  {
    v3 = 56;
  }

  else if ([*(a1 + 64) containsObject:v5])
  {
    v3 = 72;
  }

  else
  {
    v4 = [*(a1 + 80) containsObject:v5];
    v3 = 96;
    if (v4)
    {
      v3 = 88;
    }
  }

  [*(a1 + v3) addObject:v5];
}

id sub_100128288(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) containsObject:v3])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_100128A28(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [v4 objectForKeyedSubscript:@"bundle-id"];
  if (v3)
  {
    [*(a1 + 32) setObject:v4 forKeyedSubscript:v3];
  }
}

id sub_100128A98(uint64_t a1, void *a2)
{
  v3 = *(a1 + 48);
  v4 = a2;
  v5 = [[v3 alloc] initWithManagedObjectContext:*(a1 + 32)];
  v6 = [*(a1 + 40) objectForKeyedSubscript:v4];

  [v5 updateWithGameDescriptor:v6];

  return v5;
}

id sub_100128B1C(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = [v4 objectForKeyedSubscript:@"bundle-id"];
  v6 = [*(a1 + 32) objectForKeyedSubscript:v5];
  v7 = [v4 objectForKeyedSubscript:@"short-bundle-version"];
  v8 = [v4 objectForKeyedSubscript:@"bundle-version"];
  v9 = v8;
  if (v7)
  {
    v2 = [v6 shortBundleVersion];
    if (([v2 isEqualToString:v7] & 1) == 0)
    {

LABEL_11:
      [v6 updateWithGameDescriptor:v4];
      [v6 expire];
      [v6 invalidate];
      goto LABEL_12;
    }

    if (!v9)
    {

      goto LABEL_12;
    }
  }

  else if (!v8)
  {
    goto LABEL_12;
  }

  v10 = [v6 bundleVersion];
  v11 = [v10 isEqualToString:v9];

  if (v7)
  {
  }

  if ((v11 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_12:
  v12 = [v6 managedObjectContext];
  v13 = *(a1 + 40);

  if (v12 != v13)
  {
    v14 = [NSString stringWithFormat:@"The managed object context (moc) that requested a cached game object did not match the moc owned by the game. This is an illegal state and execution cannot continue."];
    v15 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
    v16 = [v15 lastPathComponent];
    v17 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (game.managedObjectContext == moc)\n[%s (%s:%d)]", v14, "+[GKGameCacheObject gamesForFullGameDescriptors:context:]_block_invoke_3", [v16 UTF8String], 1397);

    [NSException raise:@"GameKit Exception" format:@"%@", v17];
  }

  return v6;
}

id sub_10012A338(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 objectForKeyedSubscript:@"achievement-id"];
  v7 = [v6 isEqualToString:*(a1 + 32)];

  if (v7)
  {
    *a4 = 1;
  }

  return v7;
}

id sub_10012A514(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 managedObjectContext];
  v5 = [GKPlayerProfileCacheObject playerProfileWithPlayerID:v3 inManagedObjectContext:v4];

  return v5;
}

GKListEntryCacheObject *__cdecl sub_10012A590(id a1, id a2, NSManagedObjectContext *a3)
{
  v3 = a3;
  v4 = [(GKCacheObject *)[GKAchievementThatAFriendHasCacheObject alloc] initWithManagedObjectContext:v3];

  return v4;
}

GKListEntryCacheObject *__cdecl sub_10012A850(id a1, id a2, NSManagedObjectContext *a3)
{
  v3 = a3;
  v4 = [(GKCacheObject *)[GKAchievementDescriptionCacheObject alloc] initWithManagedObjectContext:v3];

  return v4;
}

GKListEntryCacheObject *__cdecl sub_10012B2E0(id a1, id a2, NSManagedObjectContext *a3)
{
  v3 = a3;
  v4 = [(GKCacheObject *)[GKAchievementCacheObject alloc] initWithManagedObjectContext:v3];

  return v4;
}

void sub_10012B610(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 identifier];
  if (v3)
  {
    [*(a1 + 32) setObject:v5 forKeyedSubscript:v3];
  }

  v4 = [v5 groupIdentifier];

  if (v4)
  {
    [*(a1 + 32) setObject:v5 forKeyedSubscript:v4];
  }
}

id sub_10012B6A8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 identifier];
  if (v4)
  {
  }

  else
  {
    v5 = [v3 groupIdentifier];

    if (!v5)
    {
      goto LABEL_9;
    }
  }

  v5 = [v3 internalRepresentation];
  v6 = [v3 identifier];
  if (v6 && (v7 = v6, v8 = *(a1 + 32), [v3 identifier], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "objectForKeyedSubscript:", v9), v10 = objc_claimAutoreleasedReturnValue(), v9, v7, v10) || (objc_msgSend(v3, "groupIdentifier"), (v11 = objc_claimAutoreleasedReturnValue()) != 0) && (v12 = v11, v13 = *(a1 + 32), objc_msgSend(v3, "groupIdentifier"), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "objectForKeyedSubscript:", v14), v10 = objc_claimAutoreleasedReturnValue(), v14, v12, v10))
  {
    v15 = [v10 lastReportedDate];
    [v5 setLastReportedDate:v15];

    [v10 percentComplete];
    [v5 setPercentComplete:v16];
    v17 = +[GKPlayerInternal internalRepresentation];
    [v17 setPlayerID:*(a1 + 40)];
    [v5 setPlayer:v17];
  }

LABEL_9:

  return v5;
}

GKGameRecordCacheObject *sub_10012BCA0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 bundleID];
  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = [*(a1 + 32) objectForKeyedSubscript:v4];
  if (v5)
  {
    goto LABEL_6;
  }

  if (*(a1 + 40))
  {
    v5 = [(GKCacheObject *)[GKGameRecordCacheObject alloc] initWithManagedObjectContext:*(a1 + 40)];
    [(GKGameRecordCacheObject *)v5 setGame:v3];
    [(GKGameRecordCacheObject *)v5 setPlayer:*(a1 + 48)];
  }

  else
  {
LABEL_5:
    v5 = 0;
  }

LABEL_6:

  return v5;
}

GKListEntryCacheObject *__cdecl sub_10012C6AC(id a1, id a2, NSManagedObjectContext *a3)
{
  v3 = a3;
  v4 = [(GKCacheObject *)[GKLeaderboardSetCacheObject alloc] initWithManagedObjectContext:v3];

  return v4;
}

GKLeaderboardTitleMapCacheObject *sub_10012CAEC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:@"category-name"];
  if (v4)
  {
    v5 = [*(a1 + 32) objectForKey:v4];
    if (!v5)
    {
      v6 = [GKLeaderboardTitleMapCacheObject alloc];
      v7 = [*(a1 + 40) managedObjectContext];
      v5 = [(GKCacheObject *)v6 initWithManagedObjectContext:v7];

      v8 = [v3 objectForKeyedSubscript:@"category-name"];
      [(GKLeaderboardTitleMapCacheObject *)v5 setIdentifier:v8];

      v9 = [v3 objectForKeyedSubscript:@"category-title"];
      [(GKLeaderboardTitleMapCacheObject *)v5 setLocalizedTitle:v9];

      [*(a1 + 32) setObject:v5 forKey:v4];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

GKListEntryCacheObject *__cdecl sub_10012CEF8(id a1, id a2, NSManagedObjectContext *a3)
{
  v3 = a3;
  v4 = [(GKCacheObject *)[GKLeaderboardTitleMapCacheObject alloc] initWithManagedObjectContext:v3];

  return v4;
}

GKListEntryCacheObject *__cdecl sub_10012D3F0(id a1, id a2, NSManagedObjectContext *a3)
{
  v3 = a3;
  v4 = [(GKCacheObject *)[GKLeaderboardListEntryCacheObject alloc] initWithManagedObjectContext:v3];

  return v4;
}

uint64_t sub_10012E214(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = (*(*(a1 + 32) + 16))();
  if (result)
  {
    *a4 = 1;
  }

  return result;
}

GKFriendListEntryCacheObject *sub_10012EA4C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v5;
    if ([v7 isEqual:&stru_100374F10])
    {
      if (!os_log_GKGeneral)
      {
        v8 = GKOSLoggers();
      }

      if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
      {
        sub_1002905C0();
      }
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v5;
      v7 = [v9 objectForKeyedSubscript:@"player-id"];
      if (v7)
      {
        [*(a1 + 32) setObject:v9 forKey:v7];
      }

      else
      {
        if (!os_log_GKGeneral)
        {
          v11 = GKOSLoggers();
        }

        if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
        {
          sub_100290558();
        }
      }
    }

    else
    {
      if (!os_log_GKGeneral)
      {
        v10 = GKOSLoggers();
      }

      if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
      {
        sub_1002904F0();
      }

      v7 = 0;
    }
  }

  v12 = [(GKCacheObject *)[GKFriendListEntryCacheObject alloc] initWithManagedObjectContext:v6];

  [(GKFriendListEntryCacheObject *)v12 setPlayerID:v7];

  return v12;
}

void sub_10012EE34(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 playerID];
  v6 = [v4 objectForKey:v5];

  if (!os_log_GKGeneral)
  {
    v7 = GKOSLoggers();
  }

  v8 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v39 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "populating friend profile cache info with info from server:%@", buf, 0xCu);
  }

  if (v6)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v9 = *(a1 + 32);
      v10 = GKStackTraceWithFrameLimit();
      v11 = [NSString stringWithFormat:@"got %@ from %@ %@", v6, v9, v10];
      v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKCacheObject.m"];
      v13 = [v12 lastPathComponent];
      v14 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ ([playerInfo isKindOfClass:[NSDictionary class]])\n[%s (%s:%d)]", v11, "-[GKFriendListCacheObject populateFriendNamesFromServerRepresentationDictionary:]_block_invoke", [v13 UTF8String], 2502);

      [NSException raise:@"GameKit Exception" format:@"%@", v14];
    }

    v15 = [v6 objectForKey:@"alias"];
    v16 = [v6 objectForKey:@"bi-directional"];
    v17 = [v6 objectForKey:@"played-with"];
    v18 = [v6 objectForKey:@"played-nearby"];
    v19 = [v6 objectForKey:@"accepted-game-invitation"];
    v37 = [v6 objectForKey:@"initiated-game-invitation"];
    v20 = [v6 objectForKey:@"automatched-together"];
    v21 = [v6 objectForKey:@"last-played-game"];
    v22 = [v6 objectForKey:@"last-played-timestamp"];
    [v3 setContactsAssociationID:0];
    if (v16)
    {
      [v3 setFriendBiDirectional:v16];
    }

    if (v17)
    {
      [v3 setFriendPlayedWith:v17];
    }

    if (v18)
    {
      [v3 setFriendPlayedNearby:v18];
    }

    if (v19)
    {
      [v3 setAcceptedGameInviteFromThisFriend:v19];
    }

    if (v37)
    {
      [v3 setInitiatedGameInviteToThisFriend:?];
    }

    if (v20)
    {
      [v3 setAutomatchedTogether:v20];
    }

    if (v15)
    {
      [v3 setAlias:v15];
    }

    v35 = v19;
    v36 = v15;
    if (v21)
    {
      [v3 setLastPlayedGame:v21];
    }

    if (v22)
    {
      v23 = [NSDate _gkDateFromServerTimestamp:v22];
      [v3 setLastPlayedDate:v23];
    }

    v24 = [v6 objectForKey:@"challenged-together"];
    [v3 setChallengedTogether:{objc_msgSend(v24, "BOOLValue")}];

    v25 = [v6 objectForKey:@"last-challenged-timestamp"];
    v26 = [NSDate _gkDateFromServerTimestamp:v25];
    [v3 setLastChallengedDate:v26];

    v27 = [v6 objectForKey:@"last-challenged-game"];
    [v3 setLastChallengedGame:v27];

    if (v16)
    {
      v28 = +[NSNumber numberWithLong:](NSNumber, "numberWithLong:", [v16 integerValue] | (2 * objc_msgSend(v17, "integerValue")) | (4 * objc_msgSend(v18, "integerValue")));
      [v3 setFriendLevel:v28];

      [v3 setAvailablePieces:{objc_msgSend(v3, "availablePieces") | 0x20}];
    }

    else
    {
      if (!os_log_GKGeneral)
      {
        v31 = GKOSLoggers();
      }

      v32 = os_log_GKDaemon;
      if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "a friend list came back with no info on friend relationship. Tracking by assigning a friend level of 512", buf, 2u);
      }

      [v3 setFriendLevel:&off_1003826B8];
    }

    v33 = os_log_GKGeneral;
    if (!os_log_GKGeneral)
    {
      v34 = GKOSLoggers();
      v33 = os_log_GKGeneral;
    }

    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      sub_100290600(v33, v3);
    }
  }

  else
  {
    v29 = os_log_GKGeneral;
    if (!os_log_GKGeneral)
    {
      v30 = GKOSLoggers();
      v29 = os_log_GKGeneral;
    }

    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      sub_1002906C8(v29, v3);
    }
  }
}

GKListEntryCacheObject *__cdecl sub_10012FEB4(id a1, id a2, NSManagedObjectContext *a3)
{
  v3 = a3;
  v4 = [(GKCacheObject *)[GKCompatibilityEntryCacheObject alloc] initWithManagedObjectContext:v3];

  return v4;
}

GKFriendRecommendationListEntryCacheObject *sub_100130BAC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v5;
  v8 = [v7 objectForKeyedSubscript:GKPlayerIDKey];
  if (v8)
  {
    [*(a1 + 32) setObject:v7 forKey:v8];
    v9 = [*(a1 + 40) objectForKeyedSubscript:v8];
    if (!v9)
    {
      v9 = [(GKCacheObject *)[GKFriendRecommendationListEntryCacheObject alloc] initWithManagedObjectContext:v6];
      [(GKFriendRecommendationListEntryCacheObject *)v9 setPlayerID:v8];
    }
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v10 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      sub_100290558();
    }

    v9 = 0;
  }

  return v9;
}

GKFriendRequestListEntryCacheObject *sub_10013185C(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 objectForKeyedSubscript:@"player-id"];
  if (v6)
  {
    v7 = [*(a1 + 32) objectForKeyedSubscript:v6];
    if (!v7)
    {
      v7 = [(GKCacheObject *)[GKFriendRequestListEntryCacheObject alloc] initWithManagedObjectContext:v5];
      [(GKFriendRequestListEntryCacheObject *)v7 setWasViewed:0];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

GKGameListEntryCacheObject *sub_10013270C(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 objectForKeyedSubscript:@"game"];
  v7 = [v6 objectForKeyedSubscript:@"bundle-id"];
  if (v7)
  {
    v8 = [*(a1 + 32) objectForKeyedSubscript:v7];
    if (!v8)
    {
      v8 = [(GKCacheObject *)[GKGameListEntryCacheObject alloc] initWithManagedObjectContext:v5];
    }

    [(GKGameListEntryCacheObject *)v8 setBundleID:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

int64_t sub_100132B58(id a1, id a2, id a3)
{
  v4 = a2;
  v5 = a3;
  v6 = v4;
  v7 = v5;
  v8 = [v6 game];
  v9 = [v8 softwareType];
  v10 = [v9 isEqualToString:@"iOS"];

  v11 = [v7 game];
  v12 = [v11 softwareType];
  v13 = [v12 isEqualToString:@"iOS"];

  if (v10 == v13)
  {
    v15 = [v6 lastPlayedDate];
    if (v15)
    {
      [v6 lastPlayedDate];
    }

    else
    {
      [v6 purchaseDate];
    }
    v16 = ;

    v17 = [v7 lastPlayedDate];
    if (v17)
    {
      [v7 lastPlayedDate];
    }

    else
    {
      [v7 purchaseDate];
    }
    v18 = ;

    v14 = [v16 compare:v18];
  }

  else if (v10)
  {
    v14 = -1;
  }

  else
  {
    v14 = 1;
  }

  return v14;
}

GKListEntryCacheObject *__cdecl sub_100133A64(id a1, id a2, NSManagedObjectContext *a3)
{
  v3 = a3;
  v4 = [(GKCacheObject *)[GKRecentPlayerListEntryCacheObject alloc] initWithManagedObjectContext:v3];

  return v4;
}

id sub_100133D0C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v4 playerID];
  v6 = [v3 objectForKeyedSubscript:v5];

  v7 = +[GKRecentMatchInternal internalRepresentation];
  v8 = [v6 internalRepresentation];
  [v7 setPlayer:v8];

  v9 = [v4 date];

  [v7 setDate:v9];
  v10 = [*(a1 + 40) game];
  if (v10)
  {
    v11 = [GKGameRecordCacheObject recordForGame:v10 playerProfile:v6];
    v12 = [v11 internalRepresentation];
    [v7 setGame:v12];
  }

  return v7;
}

GKListEntryCacheObject *__cdecl sub_100134300(id a1, id a2, NSManagedObjectContext *a3)
{
  v3 = a3;
  v4 = [(GKCacheObject *)[GKRecentGameListEntryCacheObject alloc] initWithManagedObjectContext:v3];

  return v4;
}

id sub_100134614(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v4 bundleID];
  v6 = [v3 objectForKeyedSubscript:v5];

  v7 = +[GKRecentMatchInternal internalRepresentation];
  [v7 setPlayer:*(a1 + 40)];
  v8 = [v6 internalRepresentation];
  [v7 setGame:v8];

  v9 = [v4 date];

  [v7 setDate:v9];

  return v7;
}

GKListEntryCacheObject *__cdecl sub_100134A74(id a1, NSDictionary *a2, NSManagedObjectContext *a3)
{
  v4 = a3;
  v5 = [(NSDictionary *)a2 objectForKeyedSubscript:@"game"];
  v6 = [v5 objectForKeyedSubscript:@"bundle-id"];
  v7 = [(GKCacheObject *)[GKTopGamesListEntryCacheObject alloc] initWithManagedObjectContext:v4];

  [(GKTopGamesListEntryCacheObject *)v7 setBundleID:v6];

  return v7;
}

void sub_100134E68(uint64_t a1, void *a2)
{
  v5 = a2;
  if ([v5 supportsMultiplayer])
  {
    v3 = *(a1 + 32);
    v4 = [v5 bundleID];
    [v3 addObject:v4];
  }
}

GKListEntryCacheObject *__cdecl sub_100135080(id a1, NSDictionary *a2, NSManagedObjectContext *a3)
{
  v4 = a3;
  v5 = [(NSDictionary *)a2 objectForKeyedSubscript:@"bundle-id"];
  v6 = [(GKCacheObject *)[GKOnDeviceMultiplayerGameListEntryCacheObject alloc] initWithManagedObjectContext:v4];

  [(GKOnDeviceMultiplayerGameListEntryCacheObject *)v6 setBundleID:v5];

  return v6;
}

id sub_100135F40(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 playerID];
  v7 = [v6 isEqualToString:*(a1 + 32)];

  if (v7)
  {
    *a4 = 1;
  }

  return v7;
}

void sub_100136988(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [NSNumber numberWithUnsignedInteger:a3];
  [v4 setObject:v5 forKey:v6];
}

void sub_100136A08(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v8 = [NSNumber numberWithUnsignedInteger:a3];
  v6 = [*(a1 + 32) objectForKeyedSubscript:?];
  if (v6)
  {
    v7 = v6;
    [*(a1 + 32) removeObjectForKey:v8];
  }

  else
  {
    v7 = [(GKCacheObject *)[GKTurnBasedParticipantCacheObject alloc] initWithManagedObjectContext:*(a1 + 40)];
  }

  [(GKTurnBasedParticipantCacheObject *)v7 updateWithServerRepresentation:v5];

  [*(a1 + 48) insertObject:v7 atIndex:a3];
}

void sub_100136AD8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v8 = [v5 objectForKeyedSubscript:@"request-id"];
  v6 = [*(a1 + 32) objectForKeyedSubscript:?];
  if (v6)
  {
    v7 = v6;
    [*(a1 + 32) removeObjectForKey:v8];
  }

  else
  {
    v7 = [(GKCacheObject *)[GKTurnBasedExchangeCacheObject alloc] initWithManagedObjectContext:*(a1 + 40)];
  }

  [(GKTurnBasedExchangeCacheObject *)v7 updateWithServerRepresentation:v5 participants:*(a1 + 48)];

  [*(a1 + 56) insertObject:v7 atIndex:a3];
}

id sub_100136ED0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [[v3 alloc] initWithManagedObjectContext:*(a1 + 32)];
  [v5 setSessionID:v4];

  return v5;
}

GKTurnBasedSessionEntryCacheObject *sub_100138614(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 objectForKey:@"session-id"];
  if (v7)
  {
    [*(a1 + 32) setObject:v5 forKey:v7];
    v8 = [*(a1 + 40) objectForKeyedSubscript:v7];
    if (!v8)
    {
      v8 = [(GKCacheObject *)[GKTurnBasedSessionEntryCacheObject alloc] initWithManagedObjectContext:v6];
      [(GKTurnBasedSessionEntryCacheObject *)v8 setSessionID:v7];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void sub_10013888C(id a1, GKTurnBasedSessionEntryCacheObject *a2, unint64_t a3, BOOL *a4)
{
  v4 = [(GKTurnBasedSessionEntryCacheObject *)a2 list:a3];
  [v4 expire];
}

GKListEntryCacheObject *__cdecl sub_100138DFC(id a1, id a2, NSManagedObjectContext *a3)
{
  v3 = a3;
  v4 = [(GKCacheObject *)[GKPlayerEntryCacheObject alloc] initWithManagedObjectContext:v3];

  return v4;
}

id sub_10013909C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[GKRecentMatchInternal internalRepresentation];
  v5 = *(a1 + 32);
  v6 = [v3 playerID];
  v7 = [v5 objectForKeyedSubscript:v6];
  v8 = [v7 internalRepresentation];
  [v4 setPlayer:v8];

  v9 = [v3 date];

  [v4 setDate:v9];

  return v4;
}

id sub_100139720(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v5;
  v8 = [v7 objectForKeyedSubscript:@"challenge-id"];
  if (v8)
  {
    v9 = [*(a1 + 32) objectForKey:v8];
    if (!v9)
    {
      v9 = [GKChallengeCacheObject challengeWithServerRepresentation:v7 context:v6];
      [*(a1 + 32) setObject:v9 forKey:v8];
    }

    [v9 setReceivingPlayerID:*(a1 + 40)];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

id sub_100139C00(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:@"challenge-type"];
  v5 = [v4 integerValue];

  if (v5 == 1)
  {
    v6 = off_10035E230;
    goto LABEL_5;
  }

  if (v5 == 2)
  {
    v6 = off_10035E1A0;
LABEL_5:
    v7 = [objc_alloc(*v6) initWithManagedObjectContext:*(a1 + 32)];
    goto LABEL_7;
  }

  v7 = 0;
LABEL_7:
  [v7 updateWithServerRepresentation:v3];

  return v7;
}

void GKIncrementContextTransactionCount(void *a1, int a2, void *a3)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10013BBA8;
  v5[3] = &unk_100367F40;
  v7 = a2;
  v6 = a3;
  v4 = v6;
  [a1 performBlock:v5];
}

void sub_10013BBA8(uint64_t a1)
{
  queue = dispatch_get_current_queue();
  specific = dispatch_queue_get_specific(queue, @"GKManagedObjectContextTransactionCountKey");
  v3 = *(a1 + 40);
  dispatch_queue_set_specific(queue, @"GKManagedObjectContextTransactionCountKey", &specific[v3], 0);
  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))(v4, &specific[v3]);
  }
}

void sub_10013C210(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = +[GKPreferences shared];
    v3 = [v2 isInternalBuild];

    v4 = os_log_GKGeneral;
    if (v3)
    {
      if (!os_log_GKGeneral)
      {
        v5 = GKOSLoggers();
        v4 = os_log_GKGeneral;
      }

      if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
      {
        sub_100290964(v4, WeakRetained);
      }
    }

    else
    {
      if (!os_log_GKGeneral)
      {
        v6 = GKOSLoggers();
      }

      v7 = os_log_GKCache;
      if (os_log_type_enabled(os_log_GKCache, OS_LOG_TYPE_DEBUG))
      {
        sub_1002908BC(v7, WeakRetained);
      }
    }
  }
}

void sub_10013C32C(id a1)
{
  qword_1003B9258 = dispatch_queue_create("com.apple.GameKit.GKCacheTransactionGroup.timeout", &_dispatch_queue_attr_concurrent);

  _objc_release_x1();
}

void sub_10013C42C(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v8 = v2;
    v9 = v3;
    [*(a1 + 32) _gkSafeSave];
    [*(a1 + 32) reset];
    v5 = dispatch_time(0, 30000000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10013C4F4;
    block[3] = &unk_100361770;
    v7 = *(a1 + 32);
    dispatch_after(v5, &_dispatch_main_q, block);
  }
}

void sub_10013C4F4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10013C574;
  v2[3] = &unk_100367FB0;
  v3 = v1;
  GKIncrementContextTransactionCount(v3, 0, v2);
}

void sub_10013C574(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    if (!os_log_GKGeneral)
    {
      v3 = GKOSLoggers();
    }

    v4 = os_log_GKCache;
    if (os_log_type_enabled(os_log_GKCache, OS_LOG_TYPE_DEBUG))
    {
      sub_100290A20(a1, v4);
    }
  }
}

void sub_10013C6E4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) context];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10013C7B0;
  v7[3] = &unk_100367FD8;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v9 = v3;
  v6 = v3;
  [v4 performBlock:v7];
}

void sub_10013C7B0(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) context];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10013C864;
  v4[3] = &unk_100360FA0;
  v5 = *(a1 + 48);
  (*(v2 + 16))(v2, v3, v4);
}

void sub_10013C9F8(uint64_t a1, void *a2)
{
  v2 = a2;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
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

        v7 = *(*(&v8 + 1) + 8 * v6);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v7 sanitize];
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

void sub_10013CBF8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_10013CC14(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained stripGKPlayerInternalPIIs];
  (*(*(a1 + 32) + 16))();
}

void sub_10013CD4C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_10013CD68(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained stripGKPlayerInternalPIIs];
  (*(*(a1 + 32) + 16))();
}

void sub_10013D4B4(void *a1, void *a2)
{
  v3 = a2;
  v4 = [(GKService *)GKProfileService serviceWithTransport:0 forClient:a1[4] localPlayer:0];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10013D580;
  v7[3] = &unk_100362408;
  v5 = a1[5];
  v7[4] = a1[6];
  v8 = v3;
  v6 = v3;
  [v4 getProfilesForPlayerIDs:v5 handler:v7];
}

void sub_10013D580(uint64_t a1, void *a2)
{
  v5 = a2;
  if ([v5 count] == 2)
  {
    v3 = [v5 objectAtIndex:0];
    [*(a1 + 32) setReceivingPlayer:v3];

    v4 = [v5 objectAtIndex:1];
    [*(a1 + 32) setIssuingPlayer:v4];
  }

  (*(*(a1 + 40) + 16))();
}

void sub_10013D628(uint64_t a1)
{
  v2 = [NSString stringWithFormat:@"%s:%d %s", "GKChallengeInvite.m", 124, "[GKChallengeInvite loadDetailsWithHandler:]_block_invoke_3"];
  v3 = [GKDispatchGroup dispatchGroupWithName:v2];

  v4 = [*(a1 + 32) challenge];
  v5 = [v4 bundleID];

  if (v5)
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10013D81C;
    v12[3] = &unk_100360FF0;
    v6 = *(a1 + 40);
    v12[4] = *(a1 + 32);
    v13 = v6;
    [v3 perform:v12];
  }

  else
  {
    v7 = os_log_GKGeneral;
    if (!os_log_GKGeneral)
    {
      v8 = GKOSLoggers();
      v7 = os_log_GKGeneral;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_100290AD4(v7);
    }

    [*(a1 + 32) setGoalText:&stru_100374F10];
  }

  if (*(a1 + 56))
  {
    v9 = [*(a1 + 48) replyQueue];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10013D920;
    v10[3] = &unk_100360FA0;
    v11 = *(a1 + 56);
    [v3 notifyOnQueue:v9 block:v10];
  }
}

void sub_10013D81C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) gameDescriptor];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10013D8D8;
  v7[3] = &unk_100368050;
  v7[4] = *(a1 + 32);
  v8 = v3;
  v6 = v3;
  [v4 loadGoalTextForGameDescriptor:v5 handler:v7];
}

uint64_t sub_10013D8D8(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setGoalText:a2];
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

uint64_t sub_10013DC5C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10013DC74(uint64_t a1, void *a2)
{
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v21;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v20 + 1) + 8 * i);
        v9 = [v8 identifier];
        v10 = [*(a1 + 32) achievement];
        v11 = [v10 identifier];
        v12 = [v9 isEqualToString:v11];

        if ((v12 & 1) == 0)
        {
          v13 = [v8 groupIdentifier];
          v14 = [*(a1 + 32) achievement];
          v15 = [v14 groupIdentifier];
          v16 = [v13 isEqualToString:v15];

          if ((v16 & 1) == 0)
          {
            continue;
          }
        }

        v17 = [v8 unachievedDescription];
        v18 = *(*(a1 + 48) + 8);
        v19 = *(v18 + 40);
        *(v18 + 40) = v17;

        goto LABEL_12;
      }

      v5 = [v3 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  dispatch_group_leave(*(a1 + 40));
}

void sub_10013DE38(uint64_t a1, void *a2)
{
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v25;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v25 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v24 + 1) + 8 * i);
        v9 = [v8 identifier];
        v10 = [*(a1 + 32) score];
        v11 = [v10 leaderboardIdentifier];
        v12 = [v9 isEqualToString:v11];

        if ((v12 & 1) == 0)
        {
          v13 = [v8 groupIdentifier];
          v14 = [*(a1 + 32) score];
          v15 = [v14 groupLeaderboardIdentifier];
          v16 = [v13 isEqualToString:v15];

          if ((v16 & 1) == 0)
          {
            continue;
          }
        }

        v17 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings SCORE_CHALLENGE_RECEIVED_ALERT_GOAL_FORMAT];
        v18 = [*(a1 + 32) score];
        v19 = [v18 formattedValue];
        v20 = [v8 localizedTitle];
        v21 = [NSString stringWithFormat:v17, v19, v20, v24];
        v22 = *(*(a1 + 48) + 8);
        v23 = *(v22 + 40);
        *(v22 + 40) = v21;

        goto LABEL_12;
      }

      v5 = [v3 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  dispatch_group_leave(*(a1 + 40));
}

uint64_t sub_10013E05C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(*(*(a1 + 40) + 8) + 40));
  }

  return result;
}

void sub_10013E604(id a1)
{
  qword_1003B9268 = dispatch_queue_create("com.apple.GameKit.friendSuggester.serialQueue", 0);

  _objc_release_x1();
}

void sub_10013E808(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) cachedContactAssocicationIDsWithContext:v5];
  if (v7)
  {
    if (!os_log_GKGeneral)
    {
      v8 = GKOSLoggers();
    }

    v9 = os_log_GKContacts;
    if (os_log_type_enabled(os_log_GKContacts, OS_LOG_TYPE_DEBUG))
    {
      sub_100290B2C(v7, v9, v10, v11, v12, v13, v14, v15);
    }

    v16 = +[GKContactsIntegrationController sharedController];
    v17 = [NSSet setWithArray:v7];
    v18 = [v16 contactAssociationIDMapForContactAssociationIDs:v17 withContext:v5];

    v19 = [v18 allKeys];
    v20 = [NSSet setWithArray:v19];

    v21 = [GKCDContactInfo _gkObjectsMatchingHandles:v20 withContext:v5];
    v22 = [v21 _gkMapWithBlock:&stru_100368100];
    if (!os_log_GKGeneral)
    {
      v23 = GKOSLoggers();
    }

    v24 = os_log_GKContacts;
    if (os_log_type_enabled(os_log_GKContacts, OS_LOG_TYPE_DEBUG))
    {
      sub_100290B98(v22, v24, v25, v26, v27, v28, v29, v30);
    }
  }

  else
  {
    v22 = 0;
  }

  objc_initWeak(&location, *(a1 + 32));
  v31 = *(a1 + 32);
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_10013EBA8;
  v34[3] = &unk_100368128;
  objc_copyWeak(&v40, &location);
  v35 = *(a1 + 40);
  v32 = v22;
  v36 = v32;
  v33 = v7;
  v37 = v33;
  v38 = *(a1 + 48);
  v39 = *(a1 + 56);
  [v31 modifyCachedSuggestions:v32 modifiers:v34 handler:*(a1 + 64)];
  v6[2](v6);

  objc_destroyWeak(&v40);
  objc_destroyWeak(&location);
}

void sub_10013EAC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 72));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_10013EAE0(id a1, GKCDContactInfo *a2, unint64_t a3)
{
  v3 = a2;
  v4 = [GKFriendSuggestion alloc];
  v5 = [(GKCDContactInfo *)v3 contactID];
  v6 = [(GKCDContactInfo *)v3 handle];
  v7 = [v6 _stripFZIDPrefix];
  v8 = [(GKCDContactInfo *)v3 handle];

  v9 = [(GKFriendSuggestion *)v4 initWithContactID:v5 handle:v7 prefixedHandle:v8 contactAssociationID:0];

  return v9;
}

id sub_10013EBA8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v5 = [WeakRetained modifiersWithSettings:v3 contactsIntegrationController:*(a1 + 32) hasCachedSuggestions:objc_msgSend(*(a1 + 40) cachedSortedAssociationIDs:"count") != 0 rerankRequester:*(a1 + 48) transactionGroupProvider:{*(a1 + 56), *(a1 + 64)}];

  return v5;
}

void sub_10013F05C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) settingsProvider];
  v5 = [objc_opt_class() serialQueue];
  v11 = @"gk-friend-rerank-overall-limit";
  v6 = [NSArray arrayWithObjects:&v11 count:1];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10013F1A4;
  v8[3] = &unk_100368178;
  v9 = *(a1 + 40);
  v10 = v3;
  v7 = v3;
  [v4 fetchSettingsWithQueue:v5 valuesForKeys:v6 handler:v8];
}

uint64_t sub_10013F1A4(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setResult:a2];
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void sub_10013F1EC(uint64_t a1)
{
  v5 = [*(a1 + 32) result];
  v2 = [*(a1 + 40) peopleSuggesterGameInviteSuggestionsWithLimit:{objc_msgSend(v5, "suggestionsLimit")}];
  v3 = [[GKTrimSuggestionsModifier alloc] initWithSettings:v5];
  v4 = [(GKTrimSuggestionsModifier *)v3 trimSuggestions:v2];

  (*(*(a1 + 48) + 16))();
}

id sub_10013F46C(id a1, _PSSuggestion *a2, unint64_t a3)
{
  v3 = a2;
  v4 = [[GKFriendSuggestion alloc] initWithSuggestion:v3];

  return v4;
}

void sub_10013F69C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) settingsProvider];
  v5 = [objc_opt_class() serialQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10013F77C;
  v7[3] = &unk_100368178;
  v8 = *(a1 + 40);
  v9 = v3;
  v6 = v3;
  [v4 fetchSettingsWithQueue:v5 handler:v7];
}

uint64_t sub_10013F77C(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setResult:a2];
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void sub_10013F7C4(uint64_t a1)
{
  v2 = [*(a1 + 32) result];
  if (!os_log_GKGeneral)
  {
    v3 = GKOSLoggers();
  }

  v4 = os_log_GKContacts;
  if (os_log_type_enabled(os_log_GKContacts, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v22 = v2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Got back friend suggestions settings: %@", buf, 0xCu);
  }

  if ([*(a1 + 40) count])
  {
    v5 = *(a1 + 40);
  }

  else
  {
    v5 = [*(a1 + 48) peopleSuggesterConvertedFriendSuggestionsWithLimit:{objc_msgSend(v2, "suggestionsLimit")}];
    if (![v5 count])
    {
      (*(*(a1 + 56) + 16))();
      goto LABEL_20;
    }
  }

  v15 = a1;
  v16 = v2;
  v6 = (*(*(a1 + 64) + 16))();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      v10 = 0;
      v11 = v5;
      do
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v17 + 1) + 8 * v10);
        v5 = [v12 modifySuggestions:v11];

        if (!os_log_GKGeneral)
        {
          v13 = GKOSLoggers();
        }

        v14 = os_log_GKContacts;
        if (os_log_type_enabled(os_log_GKContacts, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412546;
          v22 = v12;
          v23 = 2112;
          v24 = v5;
          _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "%@ finished modifying suggestions with results: %@", buf, 0x16u);
        }

        v10 = v10 + 1;
        v11 = v5;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v8);
  }

  (*(*(v15 + 56) + 16))();

  v2 = v16;
LABEL_20:
}

id sub_10013FCD8(uint64_t a1, uint64_t a2)
{
  v27 = *(a1 + 32);
  v4 = [NSArray arrayWithObjects:&v27 count:1];
  v5 = [*(a1 + 40) peopleSuggesterConvertedFriendSuggestionsWithLimit:a2];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v19;
    *&v8 = 138412546;
    v17 = v8;
    do
    {
      v11 = 0;
      v12 = v5;
      do
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v13 = *(*(&v18 + 1) + 8 * v11);
        v5 = [v13 modifySuggestions:{v12, v17, v18}];

        if (!os_log_GKGeneral)
        {
          v14 = GKOSLoggers();
        }

        v15 = os_log_GKContacts;
        if (os_log_type_enabled(os_log_GKContacts, OS_LOG_TYPE_DEBUG))
        {
          *buf = v17;
          v23 = v13;
          v24 = 2112;
          v25 = v5;
          _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "%@ as part of appending, finished modifying suggestions with results: %@", buf, 0x16u);
        }

        v11 = v11 + 1;
        v12 = v5;
      }

      while (v9 != v11);
      v9 = [v6 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v9);
  }

  return v5;
}

id sub_100140CDC(uint64_t a1)
{
  if (!os_log_GKGeneral)
  {
    v2 = GKOSLoggers();
  }

  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_DEBUG))
  {
    sub_1002910B0();
  }

  return [*(a1 + 32) leave];
}

id sub_100140D48(uint64_t a1)
{
  if (!os_log_GKGeneral)
  {
    v2 = GKOSLoggers();
  }

  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_DEBUG))
  {
    sub_1002910EC();
  }

  return [*(a1 + 32) leave];
}

void sub_100141C50(id a1)
{
  qword_1003B9278 = dispatch_queue_create("com.apple.GameKit.GKClient.sync", 0);

  _objc_release_x1();
}

void sub_100141FDC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[GKNetworkRequestManager commonNetworkRequestManager];
  v18 = @"rid";
  v5 = [*(a1 + 32) rid];
  v19 = v5;
  v6 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10014214C;
  v12[3] = &unk_1003682A8;
  v17 = *(a1 + 56);
  v7 = *(a1 + 40);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v13 = v8;
  v14 = v9;
  v15 = v10;
  v16 = v3;
  v11 = v3;
  [v4 issueRequest:v6 bagKey:@"gk-check-match-status" clientProxy:v7 handler:v12];
}

void sub_10014214C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 64);
  if (v7 == [*(a1 + 32) sequence])
  {
    if (v6)
    {
      v8 = [v6 userInfo];
      v9 = [v8 objectForKey:GKServerStatusCode];

      if ([v6 gkIsNotConnectedToInternetError])
      {
        [*(a1 + 32) transitionToState:7];
      }

      else if ([v9 integerValue] == 5067)
      {
        [*(a1 + 40) processMatchResponse:v5];
      }

      else if ([*(a1 + 32) transitionToState:2])
      {
        v10 = dispatch_time(0, 3000000000);
        v12[0] = _NSConcreteStackBlock;
        v12[1] = 3221225472;
        v12[2] = sub_1001422C0;
        v12[3] = &unk_100361B40;
        v11 = *(a1 + 48);
        v12[4] = *(a1 + 40);
        v12[5] = v10;
        [v11 perform:v12];
      }
    }

    else
    {
      [*(a1 + 40) processMatchResponse:v5];
    }
  }

  (*(*(a1 + 56) + 16))();
}

void sub_1001422C0(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100142360;
  v6[3] = &unk_100361270;
  v4 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = v3;
  v5 = v3;
  dispatch_after(v4, &_dispatch_main_q, v6);
}

uint64_t sub_100142360(uint64_t a1)
{
  [*(a1 + 32) checkMatchStatus];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void sub_100142AEC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) checkMatchStatusQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100142BA8;
  block[3] = &unk_1003638C8;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v9 = v3;
  v10 = v6;
  block[4] = v5;
  v7 = v3;
  dispatch_async(v4, block);
}

void sub_100142BA8(uint64_t a1)
{
  v2 = [*(a1 + 32) checkMatchStatusQueue];
  v3 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v2);
  [*(a1 + 32) setCheckMatchStatusTimer:v3];

  v4 = [*(a1 + 32) checkMatchStatusTimer];
  dispatch_source_set_timer(v4, *(a1 + 48), 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);

  v5 = [*(a1 + 32) checkMatchStatusTimer];
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100142CDC;
  handler[3] = &unk_100361770;
  handler[4] = *(a1 + 32);
  dispatch_source_set_event_handler(v5, handler);

  v6 = [*(a1 + 32) checkMatchStatusTimer];
  dispatch_source_set_cancel_handler(v6, *(a1 + 40));

  v7 = [*(a1 + 32) checkMatchStatusTimer];
  dispatch_resume(v7);
}

id sub_100142CDC(uint64_t a1)
{
  [*(a1 + 32) checkMatchStatus];
  v2 = *(a1 + 32);

  return [v2 setCheckMatchStatusTimer:0];
}

void sub_100142D1C(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v7 = [GKPlayerProfileCacheObject localPlayerInManagedObjectContext:v2];

  v3 = [*(a1 + 40) bundleIdentifier];
  v4 = [*(a1 + 32) context];
  v5 = [GKGameCacheObject gameForBundleID:v3 context:v4];

  [v7 expireRecentMatchesWithGame:v5];
  v6 = [v7 friendList];
  [v6 invalidate];
}

void sub_100143424(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100143448(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100143460(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  obj = 0;
  v8 = [NSDictionary _gkDictionaryWithServerData:v5 error:&obj];
  objc_storeStrong((v7 + 40), obj);
  dispatch_group_leave(*(a1 + 32));
}

uint64_t sub_1001434FC(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(*(*(a1 + 40) + 8) + 40));
  }

  return result;
}

void sub_1001438BC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 dataType];
  v5 = [v3 userInfo];

  [v2 refreshContentsForDataType:v4 userInfo:v5];
}

void sub_100144488(id a1)
{
  qword_1003B9288 = dispatch_queue_create("com.apple.GameKit.GKClient.sync", 0);

  _objc_release_x1();
}

void sub_1001444C8(id a1)
{
  qword_1003B9298 = [[NSMutableDictionary alloc] initWithCapacity:0];

  _objc_release_x1();
}

void sub_10014450C(id a1)
{
  v1 = objc_alloc_init(NSCache);
  v2 = qword_1003B92A8;
  qword_1003B92A8 = v1;

  v3 = qword_1003B92A8;

  [v3 setCountLimit:5];
}

void sub_100144674(id a1)
{
  v4[0] = GKGameCenterDashboardIdentifier;
  v4[1] = GKMatchmakerExtensionIdentifier;
  v4[2] = GKTurnBasedMatchmakerExtensionIdentifier;
  v4[3] = GKChallengeIssueExtensionIdentifier;
  v4[4] = GKFriendRequestExtensionIdentifier;
  v4[5] = GKAuthenticateExtensionIdentifier;
  v1 = [NSArray arrayWithObjects:v4 count:6];
  v2 = [NSSet setWithArray:v1];
  v3 = qword_1003B92B8;
  qword_1003B92B8 = v2;
}

void sub_100144A74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100144A94(uint64_t a1)
{
  v2 = [*(a1 + 64) _clientLookup];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 32)];
  v4 = v3;
  if (*(a1 + 72))
  {
    v5 = [NSNumber numberWithInt:?];
    v6 = [v4 objectForKeyedSubscript:v5];

    if (v6)
    {
LABEL_6:
      v10 = *(*(a1 + 56) + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = v6;
      v12 = v6;

      [*(*(*(a1 + 56) + 8) + 40) updateIfRecentlyInstalled];
      [*(*(*(a1 + 56) + 8) + 40) updateIfMissingConnectionEntitlements:*(a1 + 40) bundleID:*(a1 + 32)];

      goto LABEL_7;
    }

    v7 = [v4 objectForKeyedSubscript:&off_1003826D0];
    if (v7)
    {
      v6 = v7;
      [v7 setPid:*(a1 + 72)];
      v8 = [NSNumber numberWithInt:*(a1 + 72)];
      [v4 setObject:v6 forKeyedSubscript:v8];

      [v4 removeObjectForKey:&off_1003826D0];
      goto LABEL_6;
    }
  }

  else
  {
    v9 = [v3 allValues];
    v6 = [v9 firstObject];

    if (v6)
    {
      goto LABEL_6;
    }
  }

  if (*(a1 + 76) == 1)
  {
    Current = CFAbsoluteTimeGetCurrent();
    v14 = objc_opt_class();
    if (([objc_opt_class() isExtensionBundleID:*(a1 + 32)] & 1) != 0
      || ([*(a1 + 32) isEqualToString:GKGameCenterUIServiceIdentifier] & 1) != 0
      || ([*(a1 + 32) isEqualToString:GKGameCenterToolIdentifier] & 1) != 0
      || ([*(a1 + 32) isEqualToString:GKGameCenterDarwinTestIdentifier] & 1) != 0
      || ([*(a1 + 32) isEqualToString:GKGKTester2Identifier] & 1) != 0
      || ([*(a1 + 32) isEqualToString:GKGKTester2OldIdentifier] & 1) != 0
      || ([*(a1 + 32) isEqualToString:GKIMDPersistenceIdentifier] & 1) != 0
      || ([*(a1 + 32) isEqualToString:GKPreferencesIdentifier] & 1) != 0
      || ([*(a1 + 32) isEqualToString:GKMacOSPreferencesExtensionIdentifier] & 1) != 0
      || ([*(a1 + 32) isEqualToString:GKGameCenterHostingContainerIdentifier] & 1) != 0
      || ([*(a1 + 32) isEqualToString:GKGameCenterHUDActivityProcessIdentifier] & 1) != 0
      || ([*(a1 + 32) isEqualToString:GKGameCenterOverlayProcessIdentifier] & 1) != 0
      || ([*(a1 + 32) isEqualToString:GKInternetAccountsIdentifier] & 1) != 0
      || ([*(a1 + 32) isEqualToString:GKGameCenterMessageExtensionIdentifier] & 1) != 0
      || ([*(a1 + 32) isEqualToString:GKSpringboardIdentifier] & 1) != 0
      || (v26 = GKAccountsDaemonIdentifier, ([*(a1 + 32) isEqualToString:GKAccountsDaemonIdentifier] & 1) != 0)
      || ([*(a1 + 32) isEqualToString:GKAppStoreBinaryIdentifier] & 1) != 0
      || ([*(a1 + 32) isEqualToString:GKAppStoreIdentifier] & 1) != 0
      || ([*(a1 + 32) isEqualToString:GKDiagnosticExtensionIdentifier] & 1) != 0
      || ([*(a1 + 32) isEqualToString:GKAppStoreDaemonIdentifier] & 1) != 0
      || ([*(a1 + 32) isEqualToString:GKMessagesIndentifier] & 1) != 0
      || ([*(a1 + 32) isEqualToString:GCUITester] & 1) != 0
      || ([*(a1 + 32) isEqualToString:GKTVAppStoreIdentifier] & 1) != 0
      || ([*(a1 + 32) isEqualToString:GKArcadeIdentifier] & 1) != 0
      || ([*(a1 + 32) isEqualToString:GKGameOverlayUIIdentifier] & 1) != 0
      || ([*(a1 + 32) isEqualToString:GKGameOverlayViewServiceIdentifier] & 1) != 0
      || ([*(a1 + 32) isEqualToString:GKAppStoreProductPageExtensionIdentifier] & 1) != 0
      || ([*(a1 + 32) isEqualToString:GKWidgetIdentifier] & 1) != 0
      || ([*(a1 + 32) isEqualToString:GKWidgetExtensionIdentifier] & 1) != 0
      || ([*(a1 + 32) isEqualToString:GKAppStoreSuscribePageExtensionIdentifier] & 1) != 0
      || ([*(a1 + 32) isEqualToString:GKAppStoreWidgetIdentifier] & 1) != 0
      || ([*(a1 + 32) isEqualToString:GKArcadeWidgetIdentifier] & 1) != 0
      || ([*(a1 + 32) isEqualToString:GKAppStoreKitIdentifier] & 1) != 0
      || ([*(a1 + 32) isEqualToString:GKArcadeTopShelfExtensionIdentifier] & 1) != 0
      || ([*(a1 + 32) isEqualToString:GKTVAppStoreTopShelfExtensionIdentifier] & 1) != 0
      || ([*(a1 + 32) isEqualToString:GKAppStoreGameUISample] & 1) != 0
      || ([*(a1 + 32) isEqualToString:GKTVSettingsIdentifier] & 1) != 0
      || ([*(a1 + 32) isEqualToString:GKPineboardIdentifier] & 1) != 0
      || ([*(a1 + 32) isEqualToString:v26] & 1) != 0
      || ([*(a1 + 32) isEqualToString:GKGameCenterTodayWidgetIdentifier] & 1) != 0
      || ([*(a1 + 32) isEqualToString:GKMatchmakerExtensionIdentifier] & 1) != 0
      || ([*(a1 + 32) isEqualToString:GKCopresenceCoreIdentifier] & 1) != 0
      || ([*(a1 + 32) isEqualToString:GKMuseBuddyIdentifier] & 1) != 0
      || ([*(a1 + 32) isEqualToString:GKGameCenterRemoteAlertIdentifier] & 1) != 0
      || ([*(a1 + 32) isEqualToString:GKDaemonIdentifier] & 1) != 0
      || ([*(a1 + 32) isEqualToString:GKContactsUITesterIdentifier] & 1) != 0
      || ([*(a1 + 32) isEqualToString:GKMobileAddressBookIdentifier] & 1) != 0
      || ([*(a1 + 32) isEqualToString:GKContactViewViewServiceIdentifier] & 1) != 0
      || ([*(a1 + 32) isEqualToString:GKContactsViewServiceIdentifier] & 1) != 0
      || ([*(a1 + 32) isEqualToString:GKContactsUIIdentifier] & 1) != 0
      || ([*(a1 + 32) isEqualToString:GKMobilePhoneIdentifier] & 1) != 0
      || ([*(a1 + 32) isEqualToString:GKMobileSMSIdentifier] & 1) != 0
      || ([*(a1 + 32) isEqualToString:GKXCTestInternalAngel] & 1) != 0
      || ([*(a1 + 32) isEqualToString:GKAppleAccountSetupTool] & 1) != 0
      || ([*(a1 + 32) isEqualToString:GKAppleIDSetupDaemon] & 1) != 0
      || ([*(a1 + 32) isEqualToString:GKAppleIDSettings] & 1) != 0
      || ([*(a1 + 32) isEqualToString:GKGamesCLIIdentifier] & 1) != 0
      || ([*(a1 + 32) isEqualToString:GKGameTrampolineIdentifier] & 1) != 0
      || ([*(a1 + 32) isEqualToString:GKGamesAppIdentifier] & 1) != 0
      || ([*(a1 + 32) isEqualToString:GKGamesAppChallengesExtensionIdentifier] & 1) != 0
      || ([*(a1 + 32) isEqualToString:GKMoltresIdentifier] & 1) != 0
      || ([*(a1 + 32) isEqualToString:GKMoltresChallengesExtensionIdentifier] & 1) != 0
      || ([*(a1 + 32) isEqualToString:GKShimGameServicesIntegrationTests] & 1) != 0
      || [*(a1 + 32) isEqualToString:GKDTServiceHubIdentifier])
    {
      v14 = objc_opt_class();
    }

    v15 = [[v14 alloc] initWithBundleIdentifier:*(a1 + 32) bundle:*(a1 + 48) pid:*(a1 + 72) connectionEntitlements:*(a1 + 40)];
    v16 = *(*(a1 + 56) + 8);
    v17 = *(v16 + 40);
    *(v16 + 40) = v15;

    v18 = *(*(*(a1 + 56) + 8) + 40);
    if (v18)
    {
      if ([v18 isInDebugMode])
      {
        [*(a1 + 64) setDebugMode:0 bundleID:*(a1 + 32)];
      }

      v19 = [*(*(*(a1 + 56) + 8) + 40) parentBundleIdentifier];

      if (v19)
      {
        v20 = [*(*(*(a1 + 56) + 8) + 40) parentBundleIdentifier];
        [*(*(*(a1 + 56) + 8) + 40) setBundleIdentifier:v20];
      }

      v21 = [v2 objectForKeyedSubscript:*(a1 + 32)];
      if (!v21)
      {
        v21 = +[NSMutableDictionary dictionary];
        [v2 setObject:v21 forKeyedSubscript:*(a1 + 32)];
      }

      v22 = *(*(*(a1 + 56) + 8) + 40);
      v23 = [NSNumber numberWithInt:*(a1 + 72)];
      [v21 setObject:v22 forKeyedSubscript:v23];
    }

    if (!os_log_GKGeneral)
    {
      v24 = GKOSLoggers();
    }

    v25 = os_log_GKPerf;
    if (os_log_type_enabled(os_log_GKPerf, OS_LOG_TYPE_DEBUG))
    {
      sub_100291430(v25, Current);
    }
  }

LABEL_7:
}

void sub_1001454BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001454D4(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  if ([v6 applicationState] == 8)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a3 = 1;
  }
}

void sub_100145640(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100145658(uint64_t a1, void *a2, _BYTE *a3)
{
  v7 = a2;
  v6 = [v7 applicationState];
  if (([v7 isGameCenter] & 1) == 0 && v6 == 8)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a3 = 1;
  }
}

void sub_100145848(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100145860(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = [v5 bundleIdentifier];
  v7 = [v6 isEqualToString:GKGameCenterDashboardIdentifier];

  if (v7)
  {
    v8 = +[RBSProcessIdentifier identifierWithPid:](RBSProcessIdentifier, "identifierWithPid:", [v5 pid]);
    v20 = 0;
    v9 = [RBSProcessHandle handleForIdentifier:v8 error:&v20];
    v10 = v20;

    v11 = [v9 currentState];
    [v11 taskState];
    if (RBSTaskStateIsRunning())
    {
      v12 = [v9 currentState];
      v13 = [v12 endowmentNamespaces];
      v14 = [v13 containsObject:FBSSceneVisibilityEndowmentNamespace];
    }

    else
    {
      v14 = 0;
    }

    if (!os_log_GKGeneral)
    {
      v15 = GKOSLoggers();
    }

    v16 = os_log_GKTrace;
    if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
    {
      v17 = v16;
      v18 = [v5 pid];
      v19 = [v5 applicationState];
      *buf = 67109890;
      v22 = v18;
      v23 = 1024;
      v24 = v19;
      v25 = 1024;
      v26 = v14;
      v27 = 2112;
      v28 = v10;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "isGameCenterDashboardForegroundRunning: (pid=%d applicationState=%d) => isVisible=%d error=%@", buf, 0x1Eu);
    }

    if (v14)
    {
      *(*(*(a1 + 32) + 8) + 24) = v14;
      *a3 = 1;
    }
  }
}

void sub_100145C3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100145C5C(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  if (!os_log_GKGeneral)
  {
    v7 = GKOSLoggers();
  }

  v8 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    v9 = v8;
    v10 = [v6 inviteSession];
    v11 = [v10 sessionToken];
    v15 = 138412290;
    v16 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Client candidate session token %@", &v15, 0xCu);
  }

  v12 = *(a1 + 32);
  v13 = [v6 inviteSession];
  v14 = [v13 sessionToken];
  LODWORD(v12) = [v12 isEqualToData:v14];

  if (v12)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a3 = 1;
  }
}

void sub_100145EDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100145EF4(uint64_t a1, void *a2, _BYTE *a3)
{
  v9 = a2;
  v6 = [*(*(*(a1 + 40) + 8) + 40) currentMatchResponse];
  v7 = [v6 rid];
  v8 = [v7 isEqualToString:*(a1 + 32)];

  if (v8)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a3 = 1;
  }
}

void sub_1001460C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001460D8(uint64_t a1)
{
  v2 = [*(a1 + 40) _clientLookup];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100146168;
  v3[3] = &unk_100368468;
  v3[4] = *(a1 + 32);
  [v2 enumerateKeysAndObjectsUsingBlock:v3];
}

id sub_100146168(uint64_t a1, uint64_t a2, void *a3)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001461E0;
  v4[3] = &unk_100368440;
  v4[4] = *(a1 + 32);
  return [a3 enumerateKeysAndObjectsUsingBlock:v4];
}

void sub_1001464A0(uint64_t a1)
{
  v2 = [*(a1 + 48) _clientLookup];
  v4 = [v2 objectForKeyedSubscript:*(a1 + 32)];

  v3 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [*(a1 + 40) pid]);
  [v4 removeObjectForKey:v3];
}

void sub_100146E90(uint64_t a1, void *a2)
{
  v3 = a2;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100146FC4;
  v11[3] = &unk_1003684E0;
  v12 = *(a1 + 32);
  if (([v3 _gkContainsObjectPassingTest:v11] & 1) == 0)
  {
    v6 = _NSConcreteStackBlock;
    v7 = 3221225472;
    v8 = sub_100147008;
    v9 = &unk_1003684E0;
    v10 = *(a1 + 40);
    if ([v3 _gkContainsObjectPassingTest:&v6])
    {
      v4 = 8;
    }

    else
    {
      v4 = 3;
    }

    v5 = [GKAMPController controller:v6];
    [v5 reportFriendInviteActivityEventAtStage:v4 hostApp:0];
  }
}

id sub_100146FC4(uint64_t a1, void *a2)
{
  v3 = [a2 playerID];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

id sub_100147008(uint64_t a1, void *a2)
{
  v3 = [a2 playerID];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

void sub_100148114(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = +[GKPlayerCredentialController sharedController];
  v4 = [v3 primaryCredentialForEnvironment:{objc_msgSend(*(a1 + 32), "environment")}];

  if (v4)
  {
    v5 = objc_alloc_init(GKAuthenticateResponse);
    v6 = *(*(a1 + 48) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v8 = [v4 playerInternal];
    v9 = [v8 playerID];
    [*(*(*(a1 + 48) + 8) + 40) setPlayerID:v9];

    [*(a1 + 40) setObject:*(*(*(a1 + 48) + 8) + 40) forKeyedSubscript:@"response"];
  }

  v10[2]();
}

void sub_10014821C(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) objectForKeyedSubscript:@"response"];
  (*(v1 + 16))(v1, v2, 0);
}

void sub_1001484A0(uint64_t a1, void *a2)
{
  v12 = a2;
  v3 = +[GKPlayerCredentialController sharedController];
  v4 = [v3 primaryCredentialForEnvironment:{objc_msgSend(*(a1 + 32), "environment")}];

  if (v4)
  {
    v5 = objc_alloc_init(GKAuthenticateCredential);
    v6 = *(*(a1 + 48) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v8 = [v4 accountName];
    [*(*(*(a1 + 48) + 8) + 40) setAccountName:v8];

    v9 = [v4 authenticationToken];
    [*(*(*(a1 + 48) + 8) + 40) setAuthenticationToken:v9];

    v10 = [v4 playerInternal];
    v11 = [v10 playerID];
    [*(*(*(a1 + 48) + 8) + 40) setPlayerID:v11];

    [*(a1 + 40) setObject:*(*(*(a1 + 48) + 8) + 40) forKeyedSubscript:@"response"];
  }

  v12[2]();
}

void sub_1001485F8(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) objectForKeyedSubscript:@"response"];
  (*(v1 + 16))(v1, v2);
}

uint64_t sub_100148734(uint64_t a1, uint64_t a2)
{
  v4 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
    v4 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_1002914E8(v4, a2);
  }

  return (*(*(a1 + 32) + 16))();
}

void sub_100148AE4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[GKNetworkRequestManager commonNetworkRequestManager];
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100148BA8;
  v8[3] = &unk_1003627C8;
  v8[4] = v6;
  v9 = v3;
  v7 = v3;
  [v4 issuePreconnectRequestForBagKey:v6 clientProxy:v5 handler:v8];
}

void sub_100148BA8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (!os_log_GKGeneral)
    {
      v7 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      sub_1002915A0(a1);
    }
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100148C4C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = +[GKPlayerCredentialController sharedController];
  v6 = [v5 pushCredentialForEnvironment:{objc_msgSend(*(a1 + 32), "environment")}];
  v7 = [v4 transportWithCredential:v6];
  v8 = *(a1 + 40);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100148D54;
  v10[3] = &unk_100361198;
  v10[4] = v8;
  v11 = v3;
  v9 = v3;
  [v7 postPreconnectRequest:0 forBagKey:v8 result:v10];
}

void sub_100148D54(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (!os_log_GKGeneral)
    {
      v4 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      sub_1002915A0(a1);
    }
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100148DE8(id a1, id a2)
{
  v2 = a2;
  v3 = +[GKLibraryDependencies shared];
  v4 = [v3 gamePolicyLibrary];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100148EAC;
  v6[3] = &unk_100360FA0;
  v7 = v2;
  v5 = v2;
  [v4 warmupWithCompletionHandler:v6];
}

uint64_t sub_100148EAC(uint64_t a1)
{
  if (!os_log_GKGeneral)
  {
    v2 = GKOSLoggers();
  }

  if (os_log_type_enabled(os_log_GKLibrary, OS_LOG_TYPE_DEBUG))
  {
    sub_100291614();
  }

  return (*(*(a1 + 32) + 16))();
}

id sub_100149254(void *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 isEqual:a1[4]];
  v5 = [v3 scope] & 8;
  v6 = a1[6];
  if ((v6 & 1) != 0 || (((a1[6] & 4) != 0) & v4) != 0 || (v7 = 0, (v6 & 8) != 0) && v5)
  {
    v8 = [v3 playerInternal];
    v9 = [GKLocalPlayerInternal alloc];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100149434;
    v18[3] = &unk_100368630;
    v18[4] = a1[5];
    v7 = [v9 initWithSanitizeBeforeEncodingBlock:v18];
    if (v4)
    {
      v10 = 5;
    }

    else
    {
      v10 = 1;
    }

    v11 = [v8 alias];
    [v7 setAlias:v11];

    v12 = [v8 playerID];
    [v7 setPlayerID:v12];

    v13 = [v3 accountName];
    [v7 setAccountName:v13];

    [v7 setLoginStatus:v10 | v5];
    v14 = [v8 firstName];
    [v7 setFirstName:v14];

    v15 = [v8 lastName];
    [v7 setLastName:v15];

    v16 = [v8 compositeName];
    [v7 setCompositeName:v16];
  }

  return v7;
}

void sub_100149454(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [GKPlayerInternalOnboarding alloc];
  v5 = [v3 playerID];
  v6 = [v4 initWithPlayerID:v5];
  [v3 setOnboarding:v6];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10014953C;
  v9[3] = &unk_100360FF0;
  v7 = *(a1 + 32);
  v9[4] = *(a1 + 40);
  v10 = v3;
  v8 = v3;
  [v7 perform:v9];
}

void sub_10014953C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) playerID];
  v6 = [v4 transactionGroupIfCacheExistsForPlayerID:v5];

  if (v6)
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1001496D4;
    v14[3] = &unk_100364310;
    v7 = *(a1 + 40);
    v8 = *(a1 + 32);
    v15 = v7;
    v16 = v8;
    v17 = v3;
    [v6 performOnManagedObjectContext:v14];
  }

  else
  {
    v9 = +[GKPreferences shared];
    v10 = [v9 isInternalBuild];

    v11 = os_log_GKGeneral;
    if (v10)
    {
      if (!os_log_GKGeneral)
      {
        v12 = GKOSLoggers();
        v11 = os_log_GKGeneral;
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        sub_10029168C();
      }
    }

    else
    {
      if (!os_log_GKGeneral)
      {
        v13 = GKOSLoggers();
      }

      if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
      {
        sub_100291650();
      }
    }

    v3[2](v3);
  }
}

void sub_1001496D4(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [GKPlayerProfileCacheObject localPlayerInManagedObjectContext:v5];
  if ([v7 isValid])
  {
    [a1[4] updateWithCacheObject:v7];
  }

  v8 = [a1[5] bundleIdentifier];
  v9 = [a1[4] playerID];
  if (v9 && ([v8 isEqualToString:GKGameCenterIdentifier] & 1) == 0)
  {
    v11 = [a1[5] originalBundleIdentifier];
    if (([v11 isEqualToString:GKGameCenterToolIdentifier] & 1) != 0 || GKGetApplicationStateForBundleID(v8) == 8)
    {
      v12 = [GKGameCacheObject gameForBundleID:v8 context:v5];

      v10 = v12 == 0;
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 1;
  }

  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1001499E4;
  v23[3] = &unk_100368680;
  v13 = v8;
  v24 = v13;
  v25 = a1[4];
  v14 = v6;
  v26 = v14;
  v27 = a1[6];
  v15 = objc_retainBlock(v23);
  v16 = v15;
  if (v10)
  {
    (v15[2])(v15);
  }

  else
  {
    v17 = [(GKService *)GKProfileServicePrivate serviceForBundleID:v13 localPlayer:a1[4]];
    v29 = v9;
    v18 = [NSArray arrayWithObjects:&v29 count:1];
    v28 = v13;
    v19 = [NSArray arrayWithObjects:&v28 count:1];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100149B94;
    v20[3] = &unk_100362408;
    v21 = a1[4];
    v22 = v16;
    [v17 loadScopedPlayerIDs:v18 gameBundleIDs:v19 handler:v20];
  }
}

uint64_t sub_1001499E4(void *a1)
{
  v2 = +[GKPreferences shared];
  v3 = [v2 isInternalBuild];

  if (v3)
  {
    if (!os_log_GKGeneral)
    {
      v4 = GKOSLoggers();
    }

    v5 = os_log_GKDaemon;
    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
    {
      v6 = a1[4];
      v7 = a1[5];
      v15 = 138412546;
      v16 = v6;
      v17 = 2112;
      v18 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "For bundleID: %@ we are returning playerInternal: %@ in auth reponse", &v15, 0x16u);
    }
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v8 = GKOSLoggers();
    }

    v9 = os_log_GKDaemon;
    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
    {
      v11 = a1[4];
      v10 = a1[5];
      v12 = v9;
      v13 = [v10 playerID];
      v15 = 138412546;
      v16 = v11;
      v17 = 2112;
      v18 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "For bundleID: %@ we are returning playerInternal with ID: %@ in auth reponse", &v15, 0x16u);
    }
  }

  (*(a1[6] + 16))();
  return (*(a1[7] + 16))();
}

uint64_t sub_100149B94(uint64_t a1, void *a2)
{
  v3 = [a2 firstObject];
  v4 = *(a1 + 32);
  if (v3)
  {
    [v4 setScopedIDs:v3];
  }

  else
  {
    v5 = [v4 scopedIDs];
    [*(a1 + 32) setScopedIDs:v5];
  }

  v6 = *(*(a1 + 40) + 16);

  return v6();
}

void sub_100149C1C(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) objectForKeyedSubscript:@"players"];
  (*(v1 + 16))(v1, v2, 0);
}

void sub_100149E28(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = +[GKPlayerCredentialController sharedController];
  v4 = [v3 suggestedUsername];
  [*(a1 + 32) setObject:v4 forKeyedSubscript:@"accountName"];

  v5[2]();
}

void sub_100149EC4(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) objectForKeyedSubscript:@"accountName"];
  (*(v1 + 16))(v1, v2);
}

void sub_100149FC0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 playerID];
  (*(v2 + 16))(v2, v3);
}

id sub_10014A2AC(uint64_t a1)
{
  if (!os_log_GKGeneral)
  {
    v2 = GKOSLoggers();
  }

  v3 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Received CloudKit share metadata from Messages for multiplayer invite.", v5, 2u);
  }

  return [GKCloudKitMultiplayer handleCloudKitShareMetadata:*(a1 + 32) completionHandler:*(a1 + 40)];
}

void sub_10014A53C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10014A5E8;
  v3[3] = &unk_100361A58;
  v3[4] = v2;
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  [v2 getAuthenticatedLocalPlayersWithStatus:1 handler:v3];
}

void sub_10014A5E8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (!os_log_GKGeneral)
    {
      v7 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      sub_1002916CC();
    }
  }

  [*(a1 + 32) authenticatedPlayersDidChange:v5 authenticatingBundleID:*(a1 + 40) reply:*(a1 + 48)];
}

id GKSavedAuthentiactionStateQueue()
{
  if (qword_1003B92D0 != -1)
  {
    sub_1002917A8();
  }

  v1 = qword_1003B92C8;

  return v1;
}

void sub_10014A8CC(id a1)
{
  qword_1003B92C8 = dispatch_queue_create("com.apple.gamed.GKSavedAppInitState", 0);

  _objc_release_x1();
}

void sub_10014AA3C(uint64_t a1)
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 objectForKey:@"GKSavedAppInitState"];
  v4 = *(a1 + 48);
  v5 = [v3 objectForKeyedSubscript:@"pid"];
  if ([v5 integerValue] == v4)
  {
    v6 = *(a1 + 32);
    v7 = [v3 objectForKeyedSubscript:@"bundleID"];
    LODWORD(v6) = [v6 isEqualToString:v7];

    if (v6)
    {
      v8 = [v3 objectForKeyedSubscript:@"state"];
      v9 = *(*(a1 + 40) + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = v8;

      if (!os_log_GKGeneral)
      {
        v11 = GKOSLoggers();
      }

      v12 = os_log_GKDaemon;
      if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
      {
        v13 = *(a1 + 32);
        v14 = *(a1 + 48);
        v19 = 138412802;
        v20 = v3;
        v21 = 2112;
        v22 = v13;
        v23 = 1024;
        v24 = v14;
        v15 = "Auth state resolved %@ for client %@ : %d";
LABEL_13:
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, v15, &v19, 0x1Cu);
        goto LABEL_14;
      }

      goto LABEL_14;
    }
  }

  else
  {
  }

  if (v3)
  {
    if (!os_log_GKGeneral)
    {
      v16 = GKOSLoggers();
    }

    v12 = os_log_GKDaemon;
    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
    {
      v17 = *(a1 + 32);
      v18 = *(a1 + 48);
      v19 = 138412802;
      v20 = v3;
      v21 = 2112;
      v22 = v17;
      v23 = 1024;
      v24 = v18;
      v15 = "Ignoring old appInit state -- %@ does not match client %@ : %d";
      goto LABEL_13;
    }
  }

LABEL_14:
}

void sub_10014AD38(uint64_t a1)
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = v2;
  if (*(a1 + 32) == @"GKAppInitUnknown")
  {
    v6 = [v2 objectForKey:@"GKSavedAppInitState"];
    v11 = *(a1 + 40);
    v12 = [v6 objectForKeyedSubscript:@"bundleID"];
    LODWORD(v11) = [v11 isEqualToString:v12];

    if (v11)
    {
      [v3 removeObjectForKey:@"GKSavedAppInitState"];
      if (!os_log_GKGeneral)
      {
        v13 = GKOSLoggers();
      }

      v14 = os_log_GKDaemon;
      if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
      {
        v15 = *(a1 + 40);
        v20 = 138412290;
        v21 = v15;
        v9 = "saveAppInitState: cleared for client %@";
        v10 = v14;
        goto LABEL_11;
      }
    }

    else
    {
      if (!os_log_GKGeneral)
      {
        v17 = GKOSLoggers();
      }

      v18 = os_log_GKDaemon;
      if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
      {
        v19 = *(a1 + 40);
        v20 = 138412546;
        v21 = v6;
        v22 = 2112;
        v23 = v19;
        v9 = "saveAppInitState: ignoring old state -- %@ does not match client %@";
        v10 = v18;
        v16 = 22;
        goto LABEL_12;
      }
    }
  }

  else
  {
    v25[0] = *(a1 + 40);
    v24[0] = @"bundleID";
    v24[1] = @"pid";
    v4 = [NSNumber numberWithInt:*(a1 + 48)];
    v24[2] = @"state";
    v5 = *(a1 + 32);
    v25[1] = v4;
    v25[2] = v5;
    v6 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:3];

    [v3 setValue:v6 forKey:@"GKSavedAppInitState"];
    if (!os_log_GKGeneral)
    {
      v7 = GKOSLoggers();
    }

    v8 = os_log_GKDaemon;
    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
    {
      v20 = 138412290;
      v21 = v6;
      v9 = "saveAppInitState: saved: %@";
      v10 = v8;
LABEL_11:
      v16 = 12;
LABEL_12:
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, v9, &v20, v16);
    }
  }
}

id sub_10014B0C0(uint64_t a1)
{
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v2 = [*(a1 + 32) responses];
  v3 = [v2 countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v19;
    *&v4 = 138412290;
    v17 = v4;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v18 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = v8;
          if (!os_log_GKGeneral)
          {
            v10 = GKOSLoggers();
          }

          v11 = os_log_GKDaemon;
          if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
          {
            *buf = v17;
            v23 = v9;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Sending notification with bulletin %@", buf, 0xCu);
          }

          v12 = [*(a1 + 40) bundleIdentifier];
          v13 = [GKClientProxy clientForBundleID:v12];

          v14 = [v9 isAccept];
          v15 = [v9 clientNotification];
          if (v14)
          {
            [v13 acceptInviteWithNotification:v15];
          }

          else
          {
            [v13 declineInviteWithNotification:v15];
          }
        }
      }

      v5 = [v2 countByEnumeratingWithState:&v18 objects:v24 count:16];
    }

    while (v5);
  }

  [*(a1 + 32) removeAllResponses];
  result = [*(a1 + 32) shouldBeCleared];
  if (result)
  {
    return [*(a1 + 40) deleteInviteSession];
  }

  return result;
}

void sub_10014B3F8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (!os_log_GKGeneral)
    {
      v4 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      sub_1002917BC(a1);
    }
  }
}

void sub_10014BEA0(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    if (!os_log_GKGeneral)
    {
      v3 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      sub_100291910();
    }
  }
}

void sub_10014CD20(uint64_t a1, void *a2)
{
  v3 = a2;
  dispatch_group_enter(*(a1 + 32));
  if (v3)
  {
    if (!os_log_GKGeneral)
    {
      v4 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      sub_100291980();
    }
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_10014D064(id *a1)
{
  v2 = dispatch_group_create();
  v3 = a1 + 4;
  v4 = [a1[4] connection];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_10014D390;
  v25[3] = &unk_100361108;
  v5 = v2;
  v26 = v5;
  v6 = [v4 remoteObjectProxyWithErrorHandler:v25];

  v7 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v8 = GKOSLoggers();
    v7 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "authenticatedPlayersDidChange: sent to Client", buf, 2u);
  }

  v9 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v10 = GKOSLoggers();
    v9 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_1002919F0(a1 + 4, v9);
    if (!v6)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (v6)
  {
LABEL_9:
    dispatch_group_enter(v5);
    v11 = a1[5];
    v12 = a1[6];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_10014D418;
    v22[3] = &unk_100361770;
    v23 = v5;
    [v6 authenticatedPlayersDidChange:v11 authenticatingBundleID:v12 reply:v22];
  }

LABEL_10:
  if ([*v3 applicationState] != 2 && objc_msgSend(*v3, "applicationState") != 4)
  {
    v13 = [*v3 viewService];
    v14 = v13;
    if (v13)
    {
      [v13 authenticatedPlayersDidChange:a1[5] authenticatingBundleID:a1[6] reply:&stru_1003688B8];
    }

    v15 = [a1[4] extensionProxies];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10014D424;
    v19[3] = &unk_100368900;
    v20 = a1[5];
    v21 = a1[6];
    [v15 _gkEnumerateKeysAndObjectsUsingBlock:v19];
  }

  if (a1[7])
  {
    v16 = [a1[4] replyQueue];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10014D440;
    v17[3] = &unk_100360FA0;
    v18 = a1[7];
    dispatch_group_notify(v5, v16, v17);
  }
}

void sub_10014D390(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (!os_log_GKGeneral)
    {
      v4 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      sub_100291AD4();
    }
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_10014D740(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 objectAtIndexedSubscript:1];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10014D818;
  v8[3] = &unk_100361F90;
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  v8[4] = *(a1 + 40);
  v9 = v4;
  v10 = v6;
  v11 = *(a1 + 32);
  v7 = v4;
  [v5 perform:v8];
}

void sub_10014D818(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) transportWithCredential:*(a1 + 40)];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10014D904;
  v7[3] = &unk_100368928;
  v7[4] = *(a1 + 32);
  v5 = *(a1 + 48);
  v8 = *(a1 + 56);
  v9 = *(a1 + 40);
  v10 = v3;
  v6 = v3;
  [v4 postRequest:v5 forBagKey:@"gk-app-terminate" response:v7];
}

uint64_t sub_10014D904(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  [v5 setInitialized:0];
  [*(a1 + 40) setResult:v7];

  v8 = [*(a1 + 32) appSessions];
  v9 = [*(a1 + 48) playerInternal];
  v10 = [v9 playerID];
  [v8 removeObjectForKey:v10];

  [*(a1 + 40) setError:v6];
  if (!os_log_GKGeneral)
  {
    v11 = GKOSLoggers();
  }

  v12 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    v13 = *(a1 + 32);
    v15 = 138412290;
    v16 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Terminated (exiting) client %@", &v15, 0xCu);
  }

  return (*(*(a1 + 56) + 16))();
}

void sub_10014DA70(uint64_t a1)
{
  v2 = *(a1 + 40);
  v4 = [*(a1 + 32) result];
  v3 = [*(a1 + 32) error];
  (*(v2 + 16))(v2, v4, v3);
}

void sub_10014DCBC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 objectAtIndexedSubscript:1];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10014DD94;
  v8[3] = &unk_100361F90;
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  v8[4] = *(a1 + 40);
  v9 = v4;
  v10 = v6;
  v11 = *(a1 + 32);
  v7 = v4;
  [v5 perform:v8];
}

void sub_10014DD94(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) transportWithCredential:*(a1 + 40)];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10014DE80;
  v8[3] = &unk_100368928;
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v8[4] = *(a1 + 32);
  v9 = v5;
  v10 = *(a1 + 56);
  v11 = v3;
  v7 = v3;
  [v4 postRequest:v6 forBagKey:@"gk-app-terminate" response:v8];
}

uint64_t sub_10014DE80(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  [v5 setInitialized:0];
  v8 = [*(a1 + 32) appSessions];
  v9 = [*(a1 + 40) playerInternal];
  v10 = [v9 playerID];
  [v8 removeObjectForKey:v10];

  [*(a1 + 48) setResult:v7];
  [*(a1 + 48) setError:v6];

  if (!os_log_GKGeneral)
  {
    v11 = GKOSLoggers();
  }

  v12 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    v13 = *(a1 + 32);
    v15 = 138412290;
    v16 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Terminated (backgrounding) client %@", &v15, 0xCu);
  }

  return (*(*(a1 + 56) + 16))();
}

void sub_10014DFEC(uint64_t a1)
{
  v2 = *(a1 + 40);
  v4 = [*(a1 + 32) result];
  v3 = [*(a1 + 32) error];
  (*(v2 + 16))(v2, v4, v3);
}

void sub_10014E4E0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) isInDebugMode];
  v5 = *(a1 + 32);
  if (v4)
  {
    [v5 setInitialized:1];
    v6 = objc_alloc_init(NSMutableDictionary);
    v7 = objc_alloc_init(NSMutableDictionary);
    [v7 setObject:0 forKeyedSubscript:@"status"];
    [v7 setObject:@"iOS" forKeyedSubscript:@"software-type"];
    v8 = [NSNumber numberWithBool:0];
    [v7 setObject:v8 forKeyedSubscript:@"is-prerendered"];

    v9 = [NSNumber numberWithBool:0];
    [v7 setObject:v9 forKeyedSubscript:@"supports-multi-player"];

    v10 = [NSNumber numberWithBool:0];
    [v7 setObject:v10 forKeyedSubscript:@"supports-turn-based-multi-player"];

    v11 = [NSNumber numberWithInt:1000];
    [v7 setObject:v11 forKeyedSubscript:@"max-achievements-score"];

    v12 = [NSNumber numberWithBool:0];
    [v7 setObject:v12 forKeyedSubscript:@"is-arcade-game"];

    v13 = [NSNumber numberWithBool:0];
    [v7 setObject:v13 forKeyedSubscript:@"allow-challenges"];

    v14 = [NSNumber numberWithBool:0];
    [v7 setObject:v14 forKeyedSubscript:@"allow-leaderboard-challenges"];

    v15 = +[GKGameDescriptor currentPlatformServerString];
    v27 = v15;
    v16 = [NSArray arrayWithObjects:&v27 count:1];
    [v7 setObject:v16 forKeyedSubscript:@"platforms"];

    [v6 setObject:0 forKeyedSubscript:@"status"];
    [v6 setObject:v7 forKeyedSubscript:@"game-metadata"];
    v17 = [GKResource resourceWithID:@"debug-init" representedItem:v6];
    [*(a1 + 40) setResult:v17];
    [*(a1 + 40) setError:0];
    v3[2](v3);
  }

  else
  {
    v18 = [v5 transportWithCredential:*(a1 + 48)];
    v19 = *(a1 + 56);
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_10014E86C;
    v22[3] = &unk_100368928;
    v20 = *(a1 + 40);
    v21 = *(a1 + 32);
    v23 = v20;
    v24 = v21;
    v25 = *(a1 + 48);
    v26 = v3;
    [v18 postRequest:v19 forBagKey:@"gk-app-init" response:v22];

    v6 = v23;
  }
}

void sub_10014E86C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v7 = a3;
  [v6 setResult:v5];
  [*(a1 + 32) setError:v7];

  if (v7)
  {
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    [*(a1 + 40) setInitialized:1];
    v8 = [v5 representedItem];
    v9 = [v8 objectForKeyedSubscript:@"app-session"];

    [*(a1 + 40) addAppSession:v9 forCredential:*(a1 + 48)];
    v10 = +[GKClientProxy gameCenterClient];
    v11 = [(GKService *)GKUtilityServicePrivate serviceWithTransport:0 forClient:v10 localPlayer:0];

    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10014E9DC;
    v12[3] = &unk_100361CB8;
    v13 = *(a1 + 56);
    [v11 checkAndUpdateArcadeSubscriberStatusWithHandler:v12];
  }
}

void sub_10014E9EC(uint64_t a1)
{
  [*(a1 + 32) refreshPendingDataTypes];
  v2 = *(a1 + 48);
  if (v2)
  {
    v4 = [*(a1 + 40) result];
    v3 = [*(a1 + 40) error];
    (*(v2 + 16))(v2, v4, v3);
  }
}

void sub_10014ECC4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) transportWithCredential:*(a1 + 40)];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10014EDA8;
  v10[3] = &unk_100368928;
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v11 = v6;
  v12 = v7;
  v13 = v8;
  v14 = v3;
  v9 = v3;
  [v4 postRequest:v5 forBagKey:@"gk-bg-init" response:v10];
}

void sub_10014EDA8(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 setResult:v9];
  [*(a1 + 32) setError:v6];

  if (!v6)
  {
    v7 = [v9 representedItem];
    v8 = [v7 objectForKeyedSubscript:@"app-session"];

    [*(a1 + 40) addAppSession:v8 forCredential:*(a1 + 48)];
  }

  (*(*(a1 + 56) + 16))();
}

void sub_10014EE6C(uint64_t a1)
{
  v2 = *(a1 + 40);
  v4 = [*(a1 + 32) result];
  v3 = [*(a1 + 32) error];
  (*(v2 + 16))(v2, v4, v3);
}

void sub_10014F84C(uint64_t a1)
{
  [*(a1 + 32) _setupDelayedRequestsWriters];
  v2 = objc_opt_respondsToSelector();
  v3 = *(a1 + 64);
  v4 = *(a1 + 32);
  v5 = v4[36];
  if (v2)
  {
    v6 = [v4 gameDescriptor];
    v7 = [v3 writerWithDatabaseConnection:v5 gameDescriptor:v6];
  }

  else
  {
    v7 = [*(a1 + 64) writerWithDatabaseConnection:v5];
  }

  v8 = objc_opt_respondsToSelector();
  v9 = *(a1 + 72);
  v10 = *(a1 + 32);
  v11 = *(v10 + 288);
  if (v8)
  {
    [v9 readerWithDatabaseConnection:v11 bundleID:*(v10 + 104)];
  }

  else
  {
    [v9 readerWithDatabaseConnection:v11];
  }
  v12 = ;
  v13 = [*(a1 + 32) transportWithCredential:*(a1 + 40)];
  v14 = [*(a1 + 80) writerWithTransport:v13 forBagKey:*(a1 + 48)];
  v15 = [v12 databaseConnection];
  if (v15 && (v16 = v15, [v7 databaseConnection], v17 = objc_claimAutoreleasedReturnValue(), v17, v16, v17))
  {
    v18 = [GKDelayedRequestWriter writerWithCacheWriter:v7 cacheReader:v12 networkWriter:v14 batchSubmissionInterval:*(a1 + 88)];
    v19 = *(*(a1 + 56) + 8);
    v20 = *(v19 + 40);
    *(v19 + 40) = v18;
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v21 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      sub_100291C20();
    }
  }
}

void sub_10014FDB4(uint64_t a1)
{
  v2 = +[NSFileManager defaultManager];
  v3 = [GKClientProxy storeAndForwardDirectoryPathForEnvironment:*(a1 + 32)];
  v4 = +[GKNetworkRequestManager commonNetworkRequestManager];
  [v4 issuePending];

  v20 = 0;
  v5 = [v2 contentsOfDirectoryAtPath:v3 error:&v20];
  v6 = v20;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      v11 = 0;
      do
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [GKClientProxy clientForBundleID:*(*(&v16 + 1) + 8 * v11) pid:0 createIfNecessary:1];
        [v12 performDelayedRequestsForEnvironment:*(a1 + 32)];

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v9);
  }

  if ((GKAtomicCompareAndSwap32Barrier() & 1) == 0)
  {
    if (!os_log_GKGeneral)
    {
      v13 = GKOSLoggers();
    }

    v14 = os_log_GKDaemon;
    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
    {
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "store and forward reentry count out of sync", v15, 2u);
    }
  }
}

void sub_100150140(uint64_t a1)
{
  v2 = [*(a1 + 32) playerInternal];
  v3 = [v2 playerID];
  v4 = dispatch_group_create();
  v51[0] = 0;
  v51[1] = v51;
  v51[2] = 0x3032000000;
  v51[3] = sub_100143448;
  v51[4] = sub_100143458;
  v52 = 0;
  v5 = [*(a1 + 40) appSessionForPlayer:v2];
  if (!v5)
  {
    dispatch_group_enter(v4);
    v7 = *(a1 + 32);
    v6 = *(a1 + 40);
    v47[0] = _NSConcreteStackBlock;
    v47[1] = 3221225472;
    v47[2] = sub_10015079C;
    v47[3] = &unk_1003689E8;
    v50 = v51;
    v47[4] = v6;
    v48 = v2;
    v8 = v4;
    v49 = v8;
    [v6 bgInitializeWithCredential:v7 completionHandler:v47];
    v9 = dispatch_time(0, 30000000000);
    dispatch_group_wait(v8, v9);
  }

  v46[0] = 0;
  v46[1] = v46;
  v46[2] = 0x2020000000;
  v46[3] = 0;
  dispatch_group_enter(v4);
  v10 = [*(a1 + 40) setPlayerStatusWriterWithCredential:*(a1 + 32)];
  if (v10)
  {
    v42[0] = _NSConcreteStackBlock;
    v42[1] = 3221225472;
    v42[2] = sub_1001507F4;
    v42[3] = &unk_100368A10;
    v44 = v46;
    v43 = v4;
    [v10 submitDelayedRequestsForPlayer:v3 handler:v42];
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v11 = GKOSLoggers();
    }

    v12 = os_log_GKDaemon;
    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "setStatusWriter is nil. Do not call submitDelayedRequest.", buf, 2u);
    }

    dispatch_group_leave(v4);
  }

  dispatch_group_enter(v4);
  v13 = [*(a1 + 40) setPlayerPhotoWriterWithCredential:*(a1 + 32)];
  if (v13)
  {
    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_1001508EC;
    v39[3] = &unk_100368A10;
    v41 = v46;
    v40 = v4;
    [v13 submitDelayedRequestsForPlayer:v3 handler:v39];
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v14 = GKOSLoggers();
    }

    v15 = os_log_GKDaemon;
    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "setPlayerPhotoWriter is nil. Do not call submitDelayedRequest.", buf, 2u);
    }

    dispatch_group_leave(v4);
  }

  dispatch_group_enter(v4);
  v16 = [*(a1 + 40) deletePlayerPhotoWriterWithCredential:*(a1 + 32)];
  v27 = v5;
  if (v16)
  {
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_1001509E4;
    v36[3] = &unk_100368A10;
    v38 = v46;
    v37 = v4;
    [v16 submitDelayedRequestsForPlayer:v3 handler:{v36, v5}];
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v17 = GKOSLoggers();
    }

    v18 = os_log_GKDaemon;
    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "deletePlayerPhotoWriter is nil. Do not call submitDelayedRequest.", buf, 2u);
    }

    dispatch_group_leave(v4);
  }

  dispatch_group_enter(v4);
  v19 = [*(a1 + 40) removeGameWriterWithCredential:*(a1 + 32)];
  if (v19)
  {
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_100150ADC;
    v33[3] = &unk_100368A10;
    v35 = v46;
    v34 = v4;
    [v19 submitDelayedRequestsForPlayer:v3 handler:v33];
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v20 = GKOSLoggers();
    }

    v21 = os_log_GKDaemon;
    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "removeGameWriter is nil. Do not call submitDelayedRequest.", buf, 2u);
    }

    dispatch_group_leave(v4);
  }

  v22 = dispatch_semaphore_create(0);
  v23 = *(a1 + 40);
  v24 = *(v23 + 280);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100150BD4;
  block[3] = &unk_100368A38;
  v31 = v46;
  v32 = v51;
  block[4] = v23;
  v29 = v2;
  v30 = v22;
  v25 = v22;
  v26 = v2;
  dispatch_group_notify(v4, v24, block);
  dispatch_semaphore_wait(v25, 0xFFFFFFFFFFFFFFFFLL);

  _Block_object_dispose(v46, 8);
  _Block_object_dispose(v51, 8);
}

void sub_10015079C(uint64_t a1)
{
  v2 = [*(a1 + 32) appSessionForPlayer:*(a1 + 40)];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(a1 + 48);

  dispatch_group_leave(v5);
}

void sub_1001507F4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (v5)
  {
    if (!os_log_GKGeneral)
    {
      v6 = GKOSLoggers();
    }

    v7 = os_log_GKDaemon;
    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
    {
      v8 = 138412290;
      v9 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Error submitting delayed requests for set player status %@", &v8, 0xCu);
    }
  }

  *(*(*(a1 + 40) + 8) + 24) += a3;
  dispatch_group_leave(*(a1 + 32));
}

void sub_1001508EC(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (v5)
  {
    if (!os_log_GKGeneral)
    {
      v6 = GKOSLoggers();
    }

    v7 = os_log_GKDaemon;
    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
    {
      v8 = 138412290;
      v9 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Error submitting delayed requests for set player photo %@", &v8, 0xCu);
    }
  }

  *(*(*(a1 + 40) + 8) + 24) += a3;
  dispatch_group_leave(*(a1 + 32));
}

void sub_1001509E4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (v5)
  {
    if (!os_log_GKGeneral)
    {
      v6 = GKOSLoggers();
    }

    v7 = os_log_GKDaemon;
    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
    {
      v8 = 138412290;
      v9 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Error submitting delayed requests for delete player photo %@", &v8, 0xCu);
    }
  }

  *(*(*(a1 + 40) + 8) + 24) += a3;
  dispatch_group_leave(*(a1 + 32));
}

void sub_100150ADC(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (v5)
  {
    if (!os_log_GKGeneral)
    {
      v6 = GKOSLoggers();
    }

    v7 = os_log_GKDaemon;
    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
    {
      v8 = 138412290;
      v9 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Error submitting delayed requests for remove game %@", &v8, 0xCu);
    }
  }

  *(*(*(a1 + 40) + 8) + 24) += a3;
  dispatch_group_leave(*(a1 + 32));
}

intptr_t sub_100150BD4(uint64_t a1)
{
  v2 = [*(a1 + 32) delayedRequestsDBConnection];
  [v2 close];

  if (!*(*(*(a1 + 56) + 8) + 24))
  {
    [*(a1 + 32) _removeDelayedRequestStore];
  }

  if (*(*(*(a1 + 64) + 8) + 40))
  {
    [*(a1 + 32) removeAppSessionForPlayer:*(a1 + 40)];
  }

  v3 = *(a1 + 48);

  return dispatch_semaphore_signal(v3);
}

void sub_100150DE0(id a1)
{
  qword_1003B92E0 = [[GKThreadsafeDictionary alloc] initWithName:@"com.apple.gamed.per-player-context"];

  _objc_release_x1();
}

id sub_100150E28(uint64_t a1)
{
  v2 = [objc_opt_class() gameCenterClient];
  v3 = objc_opt_class();
  v4 = *(a1 + 40);
  v5 = [v2 bundleIdentifier];
  v6 = [v2 language];
  v7 = [v3 newManagedObjectContextForPlayerID:v4 bundleID:v5 language:v6 environment:{objc_msgSend(v2, "environment")}];

  return v7;
}

void sub_1001515E4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!os_log_GKGeneral)
  {
    v4 = GKOSLoggers();
  }

  if (os_log_type_enabled(os_log_GKCache, OS_LOG_TYPE_DEBUG))
  {
    sub_100291CB0();
  }

  [*(a1 + 48) closeDatabaseFromManagedObjectContextForPlayerID:*(a1 + 32)];
  [qword_1003B92E0 removeObjectForKey:*(a1 + 40)];
  v3[2](v3);
}

void sub_10015168C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) daemonGameServices];
  v5 = *(a1 + 40);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100151758;
  v7[3] = &unk_100361270;
  v8 = v5;
  v9 = v3;
  v6 = v3;
  [v4 clearStoresFor:v8 completionHandler:v7];
}

uint64_t sub_100151758(uint64_t a1)
{
  if (!os_log_GKGeneral)
  {
    v2 = GKOSLoggers();
  }

  if (os_log_type_enabled(os_log_GKCache, OS_LOG_TYPE_DEBUG))
  {
    sub_100291D1C();
  }

  return (*(*(a1 + 40) + 16))();
}

void sub_1001517D0(id *a1, void *a2)
{
  v3 = a2;
  v4 = +[GKNetworkRequestManager commonNetworkRequestManager];
  v5 = [v4 entityCacheProvider];
  v6 = a1[4];
  v7 = [a1[5] language];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001518F4;
  v9[3] = &unk_100360F78;
  v10 = a1[6];
  v11 = a1[5];
  v12 = a1[4];
  v13 = v3;
  v8 = v3;
  [v5 deleteCacheWithPlayerID:v6 language:v7 completionHandler:v9];
}

void sub_1001518F4(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001519A8;
  block[3] = &unk_100360FC8;
  v2 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  dispatch_async(v2, block);
}

void sub_1001519A8(uint64_t a1)
{
  v4 = +[GKSecureFileLocator shared];
  v2 = [*(a1 + 32) bundleIdentifier];
  v3 = [*(a1 + 32) language];
  [v4 removeCacheDirectoryWithBundleID:v2 language:v3 contextID:*(a1 + 40)];

  (*(*(a1 + 48) + 16))();
}

void sub_100151A4C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = GKImageCacheRoot();
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  if (os_log_type_enabled(os_log_GKCache, OS_LOG_TYPE_DEBUG))
  {
    sub_100291D88();
  }

  v6 = *(a1 + 32);
  v10 = 0;
  v7 = [v6 removeItemAtPath:v4 error:&v10];
  v8 = v10;
  if ((v7 & 1) == 0)
  {
    if (!os_log_GKGeneral)
    {
      v9 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      sub_100291DF0();
    }
  }

  v3[2](v3);
}

void sub_100151C94(uint64_t a1)
{
  v2 = [*(a1 + 48) cacheFileQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100151D54;
  block[3] = &unk_1003638C8;
  v6 = *(a1 + 32);
  v4 = *(a1 + 40);
  v3 = v4;
  v7 = v4;
  dispatch_async(v2, block);
}

void sub_100151D54(uint64_t a1)
{
  if (!os_log_GKGeneral)
  {
    v2 = GKOSLoggers();
  }

  if (os_log_type_enabled(os_log_GKCache, OS_LOG_TYPE_DEBUG))
  {
    sub_100291E64();
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = [*(a1 + 32) allValues];
  v4 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    do
    {
      v7 = 0;
      do
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(a1 + 48) closeDatabaseFromManagedObjectContextForMOC:*(*(&v17 + 1) + 8 * v7)];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v5);
  }

  v8 = +[NSFileManager defaultManager];
  v9 = +[GKSecureFileLocator shared];
  [v9 removeCaches];
  v10 = [*(a1 + 48) cacheDirectoryForBundleID:0];
  if (!os_log_GKGeneral)
  {
    v11 = GKOSLoggers();
  }

  if (os_log_type_enabled(os_log_GKCache, OS_LOG_TYPE_DEBUG))
  {
    sub_100291E98();
  }

  v12 = [NSURL fileURLWithPath:v10 isDirectory:1];
  v16 = 0;
  v13 = [v8 removeItemAtURL:v12 error:&v16];
  v14 = v16;

  if ((v13 & 1) == 0)
  {
    if (!os_log_GKGeneral)
    {
      v15 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_ERROR))
    {
      sub_100291F00();
    }
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100151FD8(id a1)
{
  if (!os_log_GKGeneral)
  {
    v1 = GKOSLoggers();
  }

  if (os_log_type_enabled(os_log_GKCache, OS_LOG_TYPE_DEBUG))
  {
    sub_100291F6C();
  }
}

void sub_10015207C(id a1)
{
  v1 = +[NSBundle mainBundle];
  v2 = [v1 URLForResource:@"GKCentralCache" withExtension:@"momd"];

  if (!os_log_GKGeneral)
  {
    v3 = GKOSLoggers();
  }

  v4 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    v7 = 138412290;
    v8 = v2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Loading CoreData model from URL: %@", &v7, 0xCu);
  }

  v5 = [[NSManagedObjectModel alloc] initWithContentsOfURL:v2];
  v6 = qword_1003B92F8;
  qword_1003B92F8 = v5;
}

void sub_1001521D8(id a1)
{
  qword_1003B9308 = dispatch_queue_create("com.apple.gamed.GKClientProxy.cache.file.queue", 0);

  _objc_release_x1();
}

void sub_1001525D4(void *a1)
{
  v1 = a1[4];
  v2 = a1[5];
  v3 = a1[6];
  v6 = 0;
  [GKDatabaseMigrator removeSecurityApplicationGroupWithFileManager:v1 oldDatabaseURL:v2 bundleID:v3 error:&v6];
  v4 = v6;
  if (v4)
  {
    if (!os_log_GKGeneral)
    {
      v5 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKCache, OS_LOG_TYPE_DEBUG))
    {
      sub_100292030();
    }
  }
}

void sub_100152960(uint64_t a1)
{
  CFAbsoluteTimeGetCurrent();
  if (!os_log_GKGeneral)
  {
    v2 = GKOSLoggers();
  }

  if (os_log_type_enabled(os_log_GKCache, OS_LOG_TYPE_DEBUG))
  {
    sub_100292098();
  }

  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  v31 = 0;
  v6 = [v3 addPersistentStoreWithType:NSSQLiteStoreType configuration:0 URL:v4 options:v5 error:&v31];
  v7 = v31;

  if (!v6)
  {
    if (!os_log_GKGeneral)
    {
      v8 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      sub_100292104();
    }

    if (!os_log_GKGeneral)
    {
      v9 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKCache, OS_LOG_TYPE_DEBUG))
    {
      sub_100292174();
    }

    v10 = *(a1 + 56);
    v11 = *(a1 + 32);
    v30 = 0;
    v12 = [v10 removeItemAtURL:v11 error:&v30];
    v13 = v30;
    v7 = v13;
    if (v12)
    {

      v15 = *(a1 + 32);
      v14 = *(a1 + 40);
      v16 = *(a1 + 48);
      v29 = 0;
      v17 = [v14 addPersistentStoreWithType:NSSQLiteStoreType configuration:0 URL:v15 options:v16 error:&v29];
      v7 = v29;
    }

    else
    {
      if (!os_log_GKGeneral)
      {
        v18 = GKOSLoggers();
      }

      if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
      {
        sub_1002921A8();
      }
    }
  }

  if (!os_log_GKGeneral)
  {
    v19 = GKOSLoggers();
  }

  v20 = os_log_GKPerf;
  if (os_log_type_enabled(os_log_GKPerf, OS_LOG_TYPE_DEBUG))
  {
    sub_100292218(v20);
  }

  v21 = [*(a1 + 40) persistentStores];
  v22 = [v21 count];

  if (!v22)
  {
    v23 = [NSString stringWithFormat:@"FATAL: Failed to add persistent store at %@ : %@", *(a1 + 32), v7];
    [GKProcessExiter cleanExitWith:v23];
  }

  v24 = dispatch_get_current_queue();
  dispatch_queue_set_specific(v24, @"com.apple.gamed.cachequeue", @"com.apple.gamed.cachequeue", 0);

  if (!os_log_GKGeneral)
  {
    v25 = GKOSLoggers();
  }

  v26 = os_log_GKCache;
  if (os_log_type_enabled(os_log_GKCache, OS_LOG_TYPE_DEBUG))
  {
    sub_1002922B4((a1 + 40), v26);
  }

  [*(a1 + 64) setPersistentStoreCoordinator:*(a1 + 40)];
  [*(a1 + 64) setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];
  [*(a1 + 64) setRetainsRegisteredObjects:0];
  v27 = *(a1 + 72);
  if (v27)
  {
    v28 = [GKPlayerProfileCacheObject playerProfileWithPlayerID:v27 inManagedObjectContext:*(a1 + 64)];
    if (v28)
    {
      [GKPlayerProfileCacheObject buildFamiliarilyLookupForProfile:v28];
    }
  }
}

void sub_100152E34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100152E4C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100152E64(uint64_t a1)
{
  v2 = [*(a1 + 64) createPersistentStoreCoordinator];
  v9[0] = NSPersistentStoreFileProtectionKey;
  v9[1] = NSSQLitePragmasOption;
  v10[0] = NSFileProtectionCompleteUntilFirstUserAuthentication;
  v10[1] = &off_100383208;
  v9[2] = NSMigratePersistentStoresAutomaticallyOption;
  v9[3] = NSInferMappingModelAutomaticallyOption;
  v10[2] = &__kCFBooleanTrue;
  v10[3] = &__kCFBooleanTrue;
  v3 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:4];
  v4 = +[NSFileManager defaultManager];
  v5 = [*(a1 + 64) gameCenterCacheDatabaseURLForPlayerID:*(a1 + 32) language:*(a1 + 40) name:@"database.sqlite3" fileManager:v4];
  [*(a1 + 64) migrateInsecureDatabaseToSecureDatabaseURL:v5 usingPersistantStoreCoordinator:v2 fileManager:v4 options:v3 playerID:*(a1 + 32) bundleID:*(a1 + 48) language:*(a1 + 40) name:@"database.sqlite3"];
  [*(a1 + 64) migrateSecurityApplicationGroupDatabaseToSecureDatabaseURL:v5 usingPersistantStoreCoordinator:v2 fileManager:v4 options:v3 playerID:*(a1 + 32) bundleID:*(a1 + 48) language:*(a1 + 40) name:@"database.sqlite3"];
  v6 = [*(a1 + 64) _newManagedObjectContextWithCacheURL:v5 environment:*(a1 + 72) psc:v2 storeOptions:v3];
  v7 = *(*(a1 + 56) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

void sub_1001532B4(uint64_t a1)
{
  v1 = [*(a1 + 32) persistentStoreCoordinator];
  v2 = [v1 persistentStores];
  v3 = [v2 firstObject];
  v7 = 0;
  v4 = [v1 removePersistentStore:v3 error:&v7];
  v5 = v7;

  if ((v4 & 1) == 0)
  {
    if (!os_log_GKGeneral)
    {
      v6 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      sub_10029241C();
    }
  }
}

void sub_100154038(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!os_log_GKGeneral)
  {
    v4 = GKOSLoggers();
  }

  v5 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v19 = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "got localized name for game:%@", buf, 0xCu);
  }

  v6 = +[GKPlayerCredentialController sharedController];
  v7 = [v6 pushCredentialForEnvironment:{objc_msgSend(*(a1 + 32), "currentEnvironment")}];
  v8 = [v7 playerInternal];

  v9 = [(GKService *)GKMultiplayerMatchService serviceForBundleID:*(a1 + 40) localPlayer:v8];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1001541FC;
  v14[3] = &unk_100368B30;
  v15 = v3;
  v10 = *(a1 + 48);
  v11 = v10;
  v12 = *(a1 + 32);
  v16 = v11;
  v17 = v12;
  v13 = v3;
  [v9 updateCacheWithNearbyProfileDictionary:v10 handler:v14];
}

void sub_1001541FC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[GKBulletinNearbyInvite alloc] initWithPlayer:v3 localizedGameName:*(a1 + 32) inviteDictionary:*(a1 + 40)];

  v5 = +[GKBulletinController sharedController];
  [v5 presentBulletin:v4];

  if (!os_log_GKGeneral)
  {
    v6 = GKOSLoggers();
  }

  v7 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    LOWORD(v14) = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "GKDataRequestManager+Nearby: presentNearbyInvite - Presented Nearby Invite", &v14, 2u);
  }

  if (!os_log_GKGeneral)
  {
    v8 = GKOSLoggers();
  }

  v9 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    v14 = 138412290;
    v15 = v4;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "presented nearby invite:%@", &v14, 0xCu);
  }

  if (!os_log_GKGeneral)
  {
    v10 = GKOSLoggers();
  }

  v11 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    LOWORD(v14) = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "end presentNearbyInvite:", &v14, 2u);
  }

  [*(a1 + 48) endTransaction:@"presentNearbyInvite"];
  if (!os_log_GKGeneral)
  {
    v12 = GKOSLoggers();
  }

  v13 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    LOWORD(v14) = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "GKDataRequestManager+Nearby: presentNearbyInvite - Ended Nearby Invite", &v14, 2u);
  }
}

id GKDaemonRun()
{
  v0 = dispatch_queue_create("com.apple.gamed.clientQueue", 0);
  v1 = qword_1003B9310;
  qword_1003B9310 = v0;

  v2 = objc_alloc_init(GKDataRequestManager);
  v3 = qword_1003B9318;
  qword_1003B9318 = v2;

  [qword_1003B9318 finishStartup];
  [qword_1003B9318 updateActivePushEnvironment];

  return +[GKClientProxy checkGameCenterEnabledForegroundClients];
}

void sub_100154BF4(id a1)
{
  qword_1003B9320 = dispatch_queue_create("com.apple.GameKit.GKDataRequestManager.push", 0);

  _objc_release_x1();
}

void sub_100154C78(id a1)
{
  v1 = dispatch_queue_create("com.apple.GameKit.GKDataRequestManager.sync", 0);
  v2 = qword_1003B9330;
  qword_1003B9330 = v1;

  v3 = qword_1003B9330;

  dispatch_queue_set_specific(v3, &off_1003B5050, "com.apple.GameKit.GKDataRequestManager.sync", 0);
}

void sub_100154F68(uint64_t a1)
{
  v2 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.gamed"];
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  *(v3 + 8) = v2;

  [*(*(a1 + 32) + 8) setDelegate:?];
  [*(*(a1 + 32) + 8) setOptions:256];
  [*(a1 + 32) setNatType:{+[GKViceroyNATTypeHelper initialNATType](GKViceroyNATTypeHelper, "initialNATType")}];
  v5 = +[GKReachability _gkReachabilityForInternetConnection];
  [*(a1 + 32) setReachability:v5];

  [*(*(a1 + 32) + 128) _gkStartNotifier];
  v8 = +[NSNotificationCenter defaultCenter];
  [v8 addObserver:*(a1 + 32) selector:"reachabilityDidChange:" name:@"GKNetworkReachabilityChangedNotification" object:0];
  [*(a1 + 32) iCloudAccountAvailabilityChanged:0];
  [v8 addObserver:*(a1 + 32) selector:"iCloudAccountAvailabilityChanged:" name:CKAccountChangedNotification object:0];
  v6 = objc_alloc_init(NSMutableDictionary);
  [*(a1 + 32) setTransactionBag:v6];

  v7 = objc_alloc_init(NSCountedSet);
  [*(a1 + 32) setTransactionCounts:v7];
}

void sub_1001552A0(uint64_t a1)
{
  Current = CFAbsoluteTimeGetCurrent();
  CFAbsoluteTimeGetCurrent();
  v3 = +[NSUserDefaults standardUserDefaults];
  if (!os_log_GKGeneral)
  {
    v4 = GKOSLoggers();
  }

  v5 = os_log_GKPerf;
  if (os_log_type_enabled(os_log_GKPerf, OS_LOG_TYPE_DEBUG))
  {
    sub_100292674(v5);
  }

  CFAbsoluteTimeGetCurrent();
  v64 = +[GKPreferences shared];
  if (!os_log_GKGeneral)
  {
    v6 = GKOSLoggers();
  }

  v7 = os_log_GKPerf;
  if (os_log_type_enabled(os_log_GKPerf, OS_LOG_TYPE_DEBUG))
  {
    sub_100292714(v7);
  }

  +[GKImageRestrictions setForCurrentProcess];
  v8 = +[GKContactsIntegrationController sharedController];
  +[GKPlayerCredentialController migrateOldAccountInformation];
  CFAbsoluteTimeGetCurrent();
  v9 = [*(a1 + 32) preferredEnvironment];
  if (([v64 isStoreDemoModeEnabled] & 1) == 0)
  {
    v10 = GKCurrentEnvironmentKey;
    if (v9 != [v3 integerForKey:GKCurrentEnvironmentKey])
    {
      [v3 setInteger:v9 forKey:v10];
    }
  }

  *(*(a1 + 32) + 16) = v9;
  if (!os_log_GKGeneral)
  {
    v11 = GKOSLoggers();
  }

  v12 = os_log_GKPerf;
  if (os_log_type_enabled(os_log_GKPerf, OS_LOG_TYPE_DEBUG))
  {
    sub_1002927B4(v12);
  }

  v13 = +[NSBundle _gkPreferredSystemLanguage];
  if (v13)
  {
    GKSetPreferredLanguage();
  }

  CFAbsoluteTimeGetCurrent();
  v63 = [[NSURLCache alloc] initWithMemoryCapacity:0 diskCapacity:0 diskPath:&stru_100374F10];
  [NSURLCache setSharedURLCache:v63];
  if (!os_log_GKGeneral)
  {
    v14 = GKOSLoggers();
  }

  v15 = os_log_GKPerf;
  if (os_log_type_enabled(os_log_GKPerf, OS_LOG_TYPE_DEBUG))
  {
    sub_100292854(v15);
  }

  CFAbsoluteTimeGetCurrent();
  v16 = [APSConnection alloc];
  v17 = +[GKDataRequestManager pushQueue];
  v18 = [v16 initWithEnvironmentName:APSEnvironmentProduction namedDelegatePort:@"com.apple.gamed.aps" queue:v17];
  v19 = *(a1 + 32);
  v20 = *(v19 + 72);
  *(v19 + 72) = v18;

  v21 = *(a1 + 32);
  v69[0] = _NSConcreteStackBlock;
  v69[1] = 3221225472;
  v69[2] = sub_100155B64;
  v69[3] = &unk_1003610B8;
  v69[4] = v21;
  v22 = v3;
  v70 = v22;
  [v21 performAsync:v69];
  if ([v64 isStoreDemoModeEnabled])
  {
    v23 = 0;
  }

  else
  {
    v23 = [v22 integerForKey:GKPushEnvironmentKey];
  }

  [*(a1 + 32) setActivePushEnvironment:v23];
  if (!os_log_GKGeneral)
  {
    v24 = GKOSLoggers();
  }

  v25 = os_log_GKPerf;
  if (os_log_type_enabled(os_log_GKPerf, OS_LOG_TYPE_DEBUG))
  {
    sub_1002928F4(v25);
  }

  CFAbsoluteTimeGetCurrent();
  v26 = +[NSNotificationCenter defaultCenter];
  [v26 addObserver:*(a1 + 32) selector:"credentialsDidChange:" name:GKPrimaryCredentialDidChangeNotification object:0];

  v27 = +[GKPreferences shared];
  v28 = [v27 isGameCenterRestricted];

  if (v28)
  {
    [*(a1 + 32) gameCenterDidBecomeRestricted];
  }

  v29 = +[GKPreferences shared];
  [v29 setPreferencesDelegate:*(a1 + 32)];

  [*(a1 + 32) setUpCloudKitNotificationTopics];
  if (!os_log_GKGeneral)
  {
    v30 = GKOSLoggers();
  }

  v31 = os_log_GKPerf;
  if (os_log_type_enabled(os_log_GKPerf, OS_LOG_TYPE_DEBUG))
  {
    sub_100292994(v31);
  }

  v32 = CFAbsoluteTimeGetCurrent();
  v33 = +[NSNotificationCenter defaultCenter];
  v34 = objc_alloc_init(GKApplicationStateMonitor);
  v35 = *(a1 + 32);
  v36 = *(v35 + 104);
  *(v35 + 104) = v34;

  objc_initWeak(&location, *(a1 + 32));
  v66[0] = _NSConcreteStackBlock;
  v66[1] = 3221225472;
  v66[2] = sub_100155C90;
  v66[3] = &unk_100368BC0;
  objc_copyWeak(&v67, &location);
  v37 = [*(a1 + 32) applicationStateMonitor];
  [v37 setHandler:v66];

  v38 = *(a1 + 32);
  v65[0] = _NSConcreteStackBlock;
  v65[1] = 3221225472;
  v65[2] = sub_100155CEC;
  v65[3] = &unk_100361770;
  v65[4] = v38;
  [v38 performAsync:v65];
  v39 = objc_alloc_init(GKWidgetEventListener);
  v40 = *(a1 + 32);
  v41 = *(v40 + 144);
  *(v40 + 144) = v39;

  [*(*(a1 + 32) + 144) activateListener];
  v42 = objc_alloc_init(GKCodeSigningManager);
  v43 = *(a1 + 32);
  v44 = *(v43 + 112);
  *(v43 + 112) = v42;

  [v33 addObserver:*(a1 + 32) selector:"storeBagChanged:" name:@"GKStoreBagUpdatedNotification" object:0];
  [*(a1 + 32) performAsync:&stru_100368BE0];
  [*(a1 + 32) setReceivesMemoryWarnings:1];
  if (!os_log_GKGeneral)
  {
    v45 = GKOSLoggers();
  }

  v46 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_INFO, "Installing language change notification", buf, 2u);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, @"GKLanguageObserver", sub_100155D98, @"com.apple.language.changed", 0, CFNotificationSuspensionBehaviorCoalesce);
  CFNotificationCenterAddObserver(DarwinNotifyCenter, @"GKApplicationObserver", sub_100155E3C, GKApplicationsChangeNotificationName, 0, CFNotificationSuspensionBehaviorCoalesce);
  if (!os_log_GKGeneral)
  {
    v48 = GKOSLoggers();
  }

  v49 = os_log_GKPerf;
  if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
  {
    v50 = CFAbsoluteTimeGetCurrent();
    sub_100292A34(v50, v32);
  }

  [*(*(a1 + 32) + 8) resume];
  v51 = [*(a1 + 32) ampController];
  v52 = [*(a1 + 32) storeBag];
  [v51 setupAsyncWithStoreBag:v52 withCompletion:&stru_100368C00];

  [*(a1 + 32) synchronizeBagWithPreferences];
  v53 = CFAbsoluteTimeGetCurrent();
  if (!os_log_GKGeneral)
  {
    v54 = GKOSLoggers();
  }

  v55 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    *v71 = 0;
    _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_INFO, "Setting up Game Mode listener", v71, 2u);
  }

  v56 = [[_TtC14GameDaemonCore18GKGameModeListener alloc] initWithHandler:&stru_100368C40];
  [*(a1 + 32) setGameModeListener:v56];

  if (!os_log_GKGeneral)
  {
    v57 = GKOSLoggers();
  }

  v58 = os_log_GKPerf;
  if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
  {
    v59 = CFAbsoluteTimeGetCurrent();
    sub_100292A78(v59, v53);
  }

  if (!os_log_GKGeneral)
  {
    v60 = GKOSLoggers();
  }

  v61 = os_log_GKPerf;
  if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
  {
    v62 = CFAbsoluteTimeGetCurrent();
    sub_100292ABC(v62, Current);
  }

  objc_destroyWeak(&v67);
  objc_destroyWeak(&location);
}

void sub_100155B28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100155B64(uint64_t a1)
{
  v2 = [*(a1 + 40) objectForKey:GKPushTokenKey];
  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  *(v3 + 24) = v2;

  [*(*(a1 + 32) + 72) setDelegate:?];
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  v6 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    v7 = *(a1 + 32);
    v9 = *(v7 + 72);
    v8 = *(v7 + 80);
    v12 = 138412546;
    v13 = v9;
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "PROD CONNECTION: %@ DEV: %@", &v12, 0x16u);
  }

  v10 = *(a1 + 32);
  v11 = +[GKLibraryDependencies shared];
  [v11 setDelegate:v10];
}

void sub_100155C90(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained appStateChanged:v3];
}

id sub_100155CEC(uint64_t a1)
{
  if (!os_log_GKGeneral)
  {
    v2 = GKOSLoggers();
  }

  v3 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Installing startObservingApplicationWorkspaceChanges observer", v5, 2u);
  }

  [*(*(a1 + 32) + 104) setDelegate:?];
  return [*(*(a1 + 32) + 104) startObservingApplicationWorkspaceChanges];
}

uint64_t sub_100155D98()
{
  if (!os_log_GKGeneral)
  {
    v0 = GKOSLoggers();
  }

  v1 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "Terminating due to language change notification", v4, 2u);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, @"GKLanguageObserver", @"com.apple.language.changed", 0);
  return xpc_transaction_exit_clean();
}

void sub_100155E3C()
{
  if (!os_log_GKGeneral)
  {
    v0 = GKOSLoggers();
  }

  v1 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "Applications changed.", buf, 2u);
  }

  v2 = objc_autoreleasePoolPush();
  v3 = +[GKClientProxy gameCenterClient];
  v4 = +[GKPlayerCredentialController sharedController];
  v5 = [v4 pushCredentialForEnvironment:{objc_msgSend(v3, "environment")}];

  v6 = [NSString stringWithFormat:@"%s:%d %s", "GKDataRequestManager.m", 254, "void GKObserveApplicationsChanged(CFNotificationCenterRef, void *, CFStringRef, const void *, CFDictionaryRef)"];
  v7 = [v5 playerInternal];
  v8 = [v7 playerID];
  v9 = [v3 transactionGroupWithName:v6 forPlayerID:v8];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10015C478;
  v11[3] = &unk_100362920;
  v12 = v3;
  v10 = v3;
  [v9 performOnManagedObjectContext:v11];

  objc_autoreleasePoolPop(v2);
}

void sub_100156018(id a1)
{
  if (!os_log_GKGeneral)
  {
    v1 = GKOSLoggers();
  }

  v2 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Finished setting up metrics controller during initial launch phase.", v3, 2u);
  }
}

void sub_10015609C(id a1, BOOL a2)
{
  if (!a2)
  {
    if (!os_log_GKGeneral)
    {
      v2 = GKOSLoggers();
    }

    v3 = os_log_GKDaemon;
    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Game Mode Listener: Game Mode became deactivated, attempting widget refresh", v6, 2u);
    }

    v4 = [[CHSTimelineController alloc] initForAvocadoIdentifier:@"ContinuePlayingWidget" inBundleIdentifier:@"com.apple.gamecenter.widgets.extension"];
    v5 = [v4 reloadTimelineWithReason:@"Game Mode deactivated"];
  }
}

void sub_100156264(uint64_t a1)
{
  v2 = [*(a1 + 32) object];
  v3 = [*(a1 + 40) storeBag];

  if (v2 == v3)
  {
    if (!os_log_GKGeneral)
    {
      v4 = GKOSLoggers();
    }

    v5 = os_log_GKDaemon;
    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Updating connectivity and push environment", v6, 2u);
    }

    [*(a1 + 40) updateCachedNATSettingsIfNeededWithCompletionHandler:&stru_100368C60];
    [*(a1 + 40) updateActivePushEnvironment];
    [*(a1 + 40) synchronizeBagWithPreferences];
  }
}

id sub_10015694C(uint64_t a1)
{
  v2 = dispatch_get_current_queue();
  v3 = v2;
  v4 = *(a1 + 32);
  if (v2 != v4)
  {
    label = dispatch_queue_get_label(v2);
    v6 = dispatch_queue_get_label(v4);
    v7 = +[NSThread callStackSymbols];
    v8 = [NSString stringWithFormat:@"%s invoked on the wrong queue (got:%s expected:%s) at %@", "[GKDataRequestManager _updateNotificationTopicsForcefully:]_block_invoke", label, v6, v7];
    v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter_Daemons/Frameworks/GameCenterFoundation/gamed/GKDataRequestManager.m"];
    v10 = [v9 lastPathComponent];
    v11 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ (_actualCurrentQueue == syncQueue)\n[%s (%s:%d)]", v8, "-[GKDataRequestManager _updateNotificationTopicsForcefully:]_block_invoke", [v10 UTF8String], 604);

    [NSException raise:@"GameKit Exception" format:@"%@", v11];
  }

  v12 = *(a1 + 40);

  return [v12 setPushUpdatesBusy:0];
}

void sub_100156E04(uint64_t a1)
{
  [*(a1 + 32) _clearPushConnections];
  v2 = +[NSUserDefaults standardUserDefaults];
  [v2 removeObjectForKey:GKPushTokenKey];
  [v2 removeObjectForKey:GKPushEnvironmentKey];
  [*(a1 + 32) _setActivePushEnvironment:0];
}

void sub_1001570A8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (!os_log_GKGeneral)
    {
      v4 = GKOSLoggers();
    }

    v5 = os_log_GKDaemon;
    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_ERROR))
    {
      sub_100292B7C(a1, v5, v3);
    }
  }

  [*(a1 + 32) updateCachedNATSettingsIfNeededWithCompletionHandler:&stru_100368C80];
  [*(a1 + 32) updateActivePushEnvironment];
  v6 = +[GKBulletinController sharedController];
  [v6 removeAllBulletins];

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001571D8;
  v7[3] = &unk_100360FA0;
  v8 = *(a1 + 40);
  [GKClientProxy removeAllCachesWithHandler:v7];
}

void sub_1001571F4(id a1)
{
  if (!os_log_GKGeneral)
  {
    v1 = GKOSLoggers();
  }

  v2 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "The environment has been reset", v3, 2u);
  }
}

void sub_10015786C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak((v25 + 48));
  objc_destroyWeak((v24 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_1001578B4(uint64_t a1)
{
  if (!os_log_GKGeneral)
  {
    v2 = GKOSLoggers();
  }

  v3 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    v4 = v3;
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v6 = *(a1 + 32);
    v8 = 138412546;
    v9 = WeakRetained;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Connection (%@) to client (%@) INTERRUPTED.", &v8, 0x16u);
  }

  return [*(a1 + 32) setConnection:0];
}