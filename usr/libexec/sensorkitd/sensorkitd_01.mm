void sub_100016A00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, os_activity_scope_state_s state)
{
  objc_sync_exit(v31);
  os_activity_scope_leave(&state);
  _Unwind_Resume(a1);
}

id sub_100016CAC(uint64_t a1, void *a2, void *a3, void *a4)
{
  if (!a3)
  {
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    result = [a4 countByEnumeratingWithState:&v64 objects:v76 count:16];
    if (!result)
    {
      return result;
    }

    v35 = result;
    v36 = *v65;
LABEL_52:
    v37 = 0;
    while (1)
    {
      if (*v65 == v36)
      {
        v38 = *(*(&v64 + 1) + 8 * v37);
        if (objc_opt_respondsToSelector())
        {
          goto LABEL_58;
        }
      }

      else
      {
        objc_enumerationMutation(a4);
        v38 = *(*(&v64 + 1) + 8 * v37);
        if (objc_opt_respondsToSelector())
        {
LABEL_58:
          [v38 authorizationStore:a1 didDetermineInitialAuthorizationValues:a2];
        }
      }

      if (v35 == ++v37)
      {
        result = [a4 countByEnumeratingWithState:&v64 objects:v76 count:16];
        v35 = result;
        if (!result)
        {
          return result;
        }

        goto LABEL_52;
      }
    }
  }

  v6 = a3;
  v7 = +[NSMutableSet setWithArray:](NSMutableSet, "setWithArray:", [a3 allKeys]);
  -[NSMutableSet unionSet:](v7, "unionSet:", +[NSSet setWithArray:](NSSet, "setWithArray:", [a2 allKeys]));
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  obj = v7;
  result = [(NSMutableSet *)v7 countByEnumeratingWithState:&v60 objects:v75 count:16];
  v45 = result;
  if (result)
  {
    v41 = *v61;
    *&v9 = 138543618;
    v39 = v9;
    v43 = a2;
    v44 = a4;
    v42 = v6;
    do
    {
      v10 = 0;
      do
      {
        if (*v61 != v41)
        {
          objc_enumerationMutation(obj);
        }

        v47 = v10;
        v11 = *(*(&v60 + 1) + 8 * v10);
        v12 = [v6 objectForKeyedSubscript:{v11, v39}];
        v13 = [a2 objectForKeyedSubscript:v11];
        v14 = objc_alloc_init(NSMutableSet);
        v56 = 0u;
        v57 = 0u;
        v58 = 0u;
        v59 = 0u;
        v15 = [v13 countByEnumeratingWithState:&v56 objects:v74 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v57;
          do
          {
            for (i = 0; i != v16; i = i + 1)
            {
              if (*v57 != v17)
              {
                objc_enumerationMutation(v13);
              }

              v19 = *(*(&v56 + 1) + 8 * i);
              v20 = [v13 objectForKeyedSubscript:v19];
              v21 = [v12 objectForKeyedSubscript:v19];
              if ([v20 BOOLValue] && !objc_msgSend(v21, "BOOLValue") || v20 && (objc_msgSend(v20, "BOOLValue") & 1) == 0 && !v21)
              {
                [v14 addObject:v19];
              }
            }

            v16 = [v13 countByEnumeratingWithState:&v56 objects:v74 count:16];
          }

          while (v16);
        }

        v54 = 0u;
        v55 = 0u;
        v52 = 0u;
        v53 = 0u;
        v22 = [v12 countByEnumeratingWithState:&v52 objects:v73 count:16];
        if (v22)
        {
          v23 = v22;
          v24 = *v53;
          do
          {
            for (j = 0; j != v23; j = j + 1)
            {
              if (*v53 != v24)
              {
                objc_enumerationMutation(v12);
              }

              v26 = *(*(&v52 + 1) + 8 * j);
              v27 = [v13 objectForKeyedSubscript:v26];
              if (v27)
              {
                v28 = v27;
                if (([objc_msgSend(v12 objectForKeyedSubscript:{v26), "BOOLValue"}] & 1) == 0)
                {
                  if ([v12 objectForKeyedSubscript:v26])
                  {
                    continue;
                  }
                }

                if ([v28 BOOLValue])
                {
                  continue;
                }
              }

              [v14 addObject:v26];
            }

            v23 = [v12 countByEnumeratingWithState:&v52 objects:v73 count:16];
          }

          while (v23);
        }

        a2 = v43;
        if ([v14 count])
        {
          v50 = 0u;
          v51 = 0u;
          v48 = 0u;
          v49 = 0u;
          v29 = [v44 countByEnumeratingWithState:&v48 objects:v72 count:16];
          if (v29)
          {
            v30 = v29;
            v31 = *v49;
            do
            {
              for (k = 0; k != v30; k = k + 1)
              {
                if (*v49 == v31)
                {
                  v33 = *(*(&v48 + 1) + 8 * k);
                  if ((objc_opt_respondsToSelector() & 1) == 0)
                  {
                    continue;
                  }
                }

                else
                {
                  objc_enumerationMutation(v44);
                  v33 = *(*(&v48 + 1) + 8 * k);
                  if ((objc_opt_respondsToSelector() & 1) == 0)
                  {
                    continue;
                  }
                }

                [v33 authorizationStore:a1 didUpdateAuthorizationsForBundleId:v11 sensors:v14];
              }

              v30 = [v44 countByEnumeratingWithState:&v48 objects:v72 count:16];
            }

            while (v30);
          }

          v34 = qword_1000719E8;
          if (os_log_type_enabled(qword_1000719E8, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v39;
            v69 = v11;
            v70 = 2114;
            v71 = v14;
            _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Authorization Changed for bundle id %{public}@ for sensors %{public}@", buf, 0x16u);
          }
        }

        v10 = v47 + 1;
        v6 = v42;
      }

      while ((v47 + 1) != v45);
      result = [(NSMutableSet *)obj countByEnumeratingWithState:&v60 objects:v75 count:16];
      v45 = result;
    }

    while (result);
  }

  return result;
}

uint64_t sub_1000175E4(void *a1, uint64_t a2, int a3, uint64_t a4)
{
  result = 0;
  if (a1)
  {
    v6 = a2;
    if (a2)
    {
      if (a3)
      {
        v7 = a1[4];

        return [v7 setOverride:1 forService:a2];
      }

      else
      {
        v22 = a1;
        v9 = [a1 readerAuthorizationBundleIdValues];
        v10 = [SRSensorDescription sensorDescriptionsForAuthorizationService:v6];
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v11 = [v9 countByEnumeratingWithState:&v30 objects:v35 count:16];
        if (!v11)
        {
          return [v22[4] setOverride:0 forService:v6];
        }

        v12 = v11;
        v21 = v6;
        v23 = 0;
        v13 = *v31;
        v24 = *v31;
        do
        {
          v14 = 0;
          v25 = v12;
          do
          {
            if (*v31 != v13)
            {
              objc_enumerationMutation(v9);
            }

            v15 = *(*(&v30 + 1) + 8 * v14);
            if (([v15 isEqualToString:a4] & 1) == 0)
            {
              v28 = 0u;
              v29 = 0u;
              v26 = 0u;
              v27 = 0u;
              v16 = [v10 countByEnumeratingWithState:&v26 objects:v34 count:16];
              if (v16)
              {
                v17 = v16;
                v18 = a4;
                v19 = *v27;
                do
                {
                  for (i = 0; i != v17; i = i + 1)
                  {
                    if (*v27 != v19)
                    {
                      objc_enumerationMutation(v10);
                    }

                    if ([objc_msgSend(objc_msgSend(v9 objectForKeyedSubscript:{v15), "objectForKeyedSubscript:", objc_msgSend(*(*(&v26 + 1) + 8 * i), "name")), "BOOLValue"}])
                    {
                      v23 = 1;
                      goto LABEL_12;
                    }
                  }

                  v17 = [v10 countByEnumeratingWithState:&v26 objects:v34 count:16];
                }

                while (v17);
LABEL_12:
                a4 = v18;
                v13 = v24;
                v12 = v25;
              }
            }

            v14 = v14 + 1;
          }

          while (v14 != v12);
          v12 = [v9 countByEnumeratingWithState:&v30 objects:v35 count:16];
        }

        while (v12);
        v6 = v21;
        if (v23)
        {
          return 1;
        }

        else
        {
          return [v22[4] setOverride:0 forService:v6];
        }
      }
    }
  }

  return result;
}

id sub_100017DC4(uint64_t a1, void *a2, uint64_t a3)
{
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  result = [a2 countByEnumeratingWithState:&v24 objects:v29 count:16];
  v17 = result;
  if (result)
  {
    v16 = *v25;
    do
    {
      v6 = 0;
      do
      {
        if (*v25 != v16)
        {
          objc_enumerationMutation(a2);
        }

        v19 = v6;
        v7 = *(*(&v24 + 1) + 8 * v6);
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v8 = [a2 objectForKeyedSubscript:{v7, v16}];
        v9 = [v8 countByEnumeratingWithState:&v20 objects:v28 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v21;
          do
          {
            v12 = 0;
            do
            {
              if (*v21 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v20 + 1) + 8 * v12);
              v14 = objc_autoreleasePoolPush();
              v15 = [SRSensorDescription sensorDescriptionForSensor:v13];
              if (v15)
              {
                [*(a1 + 32) addObject:{(*(a3 + 16))(a3, v15)}];
              }

              objc_autoreleasePoolPop(v14);
              v12 = v12 + 1;
            }

            while (v10 != v12);
            v10 = [v8 countByEnumeratingWithState:&v20 objects:v28 count:16];
          }

          while (v10);
        }

        v6 = v19 + 1;
      }

      while ((v19 + 1) != v17);
      result = [a2 countByEnumeratingWithState:&v24 objects:v29 count:16];
      v17 = result;
    }

    while (result);
  }

  return result;
}

id sub_100018214(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) objectForKeyedSubscript:a2];
  if (!result)
  {
    v5 = +[NSMutableDictionary dictionary];
    [*(a1 + 32) setObject:v5 forKeyedSubscript:a2];
    return v5;
  }

  return result;
}

id sub_100018284(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) objectForKeyedSubscript:a2];
  if (!result)
  {
    v5 = +[NSMutableDictionary dictionary];
    [*(a1 + 32) setObject:v5 forKeyedSubscript:a2];
    return v5;
  }

  return result;
}

uint64_t sub_1000186E4(uint64_t a1, void *a2, int a3)
{
  if (!a1)
  {
    return 0;
  }

  if (qword_100071A00 != -1)
  {
    dispatch_once(&qword_100071A00, &stru_100060F40);
    v4 = qword_100071A08;
    if (!os_log_type_enabled(qword_100071A08, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_4;
    }

LABEL_39:
    *buf = 138543618;
    v31 = a2;
    v32 = 1026;
    LODWORD(v33) = a3;
    _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Removing files from %{public}@ dry run: %{public, BOOL}d", buf, 0x12u);
    goto LABEL_4;
  }

  v4 = qword_100071A08;
  if (os_log_type_enabled(qword_100071A08, OS_LOG_TYPE_DEBUG))
  {
    goto LABEL_39;
  }

LABEL_4:
  v5 = +[NSFileManager defaultManager];
  v35[0] = NSURLFileSizeKey;
  v35[1] = NSURLIsDirectoryKey;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = [(NSFileManager *)v5 enumeratorAtURL:a2 includingPropertiesForKeys:[NSArray arrayWithObjects:2 count:?], 0, 0];
  v6 = [(NSDirectoryEnumerator *)obj countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v6)
  {
    v8 = v6;
    v22 = 0;
    v9 = *v27;
    *&v7 = 138543618;
    v19 = v7;
    while (1)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v26 + 1) + 8 * i);
        v12 = objc_autoreleasePoolPush();
        if (qword_100071A00 == -1)
        {
          v13 = qword_100071A08;
          if (!os_log_type_enabled(qword_100071A08, OS_LOG_TYPE_INFO))
          {
            goto LABEL_15;
          }

LABEL_14:
          *buf = 138543362;
          v31 = v11;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "File %{public}@", buf, 0xCu);
          goto LABEL_15;
        }

        dispatch_once(&qword_100071A00, &stru_100060F40);
        v13 = qword_100071A08;
        if (os_log_type_enabled(qword_100071A08, OS_LOG_TYPE_INFO))
        {
          goto LABEL_14;
        }

LABEL_15:
        v24 = 0;
        v25 = 0;
        if ([v11 getResourceValue:&v24 forKey:NSURLIsDirectoryKey error:{&v25, v19}])
        {
          goto LABEL_18;
        }

        if (qword_100071A00 == -1)
        {
          v14 = qword_100071A08;
          if (!os_log_type_enabled(qword_100071A08, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_18;
          }
        }

        else
        {
          dispatch_once(&qword_100071A00, &stru_100060F40);
          v14 = qword_100071A08;
          if (!os_log_type_enabled(qword_100071A08, OS_LOG_TYPE_FAULT))
          {
LABEL_18:
            if ([v24 BOOLValue])
            {
              goto LABEL_9;
            }

            goto LABEL_19;
          }
        }

        *buf = v19;
        v31 = v11;
        v32 = 2114;
        v33 = v25;
        _os_log_fault_impl(&_mh_execute_header, v14, OS_LOG_TYPE_FAULT, "Failed to get NSURLIsDirectoryKey resource for %{public}@ because %{public}@", buf, 0x16u);
        if ([v24 BOOLValue])
        {
          goto LABEL_9;
        }

LABEL_19:
        v15 = [+[NSFileManager defaultManager](NSFileManager fileSizeOfURL:"fileSizeOfURL:", v11];
        if (a3)
        {
          goto LABEL_8;
        }

        if (qword_100071A00 != -1)
        {
          dispatch_once(&qword_100071A00, &stru_100060F40);
          v16 = qword_100071A08;
          if (!os_log_type_enabled(qword_100071A08, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_23;
          }

LABEL_22:
          *buf = v19;
          v31 = v11;
          v32 = 2050;
          v33 = v15;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Removing %{public}@ (%{public}lld bytes)", buf, 0x16u);
          goto LABEL_23;
        }

        v16 = qword_100071A08;
        if (os_log_type_enabled(qword_100071A08, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_22;
        }

LABEL_23:
        v23 = 0;
        if ([+[NSFileManager removeItemAtURL:"removeItemAtURL:error:"]
        {
LABEL_8:
          v22 += v15;
          goto LABEL_9;
        }

        if (qword_100071A00 == -1)
        {
          v17 = qword_100071A08;
          if (!os_log_type_enabled(qword_100071A08, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_9;
          }

LABEL_26:
          *buf = 138543362;
          v31 = v11;
          _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Failed to remove old file %{public}@", buf, 0xCu);
          goto LABEL_9;
        }

        dispatch_once(&qword_100071A00, &stru_100060F40);
        v17 = qword_100071A08;
        if (os_log_type_enabled(qword_100071A08, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_26;
        }

LABEL_9:
        objc_autoreleasePoolPop(v12);
      }

      v8 = [(NSDirectoryEnumerator *)obj countByEnumeratingWithState:&v26 objects:v34 count:16];
      if (!v8)
      {
        return v22;
      }
    }
  }

  return 0;
}

SRSensorDescription *sub_100018F58(uint64_t a1, void *a2)
{
  if (!a1)
  {
    return 0;
  }

  v4 = [a2 sr_sensorByDeletingDeletionRecord];
  v5 = [(NSURL *)v4 isEqualToString:a2];
  v6 = [*(a1 + 8) objectForKey:v4];
  if (!v6)
  {
    v6 = sub_100019470(a1, v4);
  }

  if ((v6 == 0) | v5 & 1)
  {
    return v6;
  }

  return [SRSensorDescription sensorDescriptionForDeletionRecordFromDescription:?];
}

uint64_t sub_100019058()
{
  objc_opt_self();
  result = qword_100071A18;
  if (!qword_100071A18)
  {
    objc_opt_self();
    if (qword_100071A28 != -1)
    {
      dispatch_once(&qword_100071A28, &stru_100060F60);
    }

    return qword_100071A20;
  }

  return result;
}

SRSensorDescriptionEnumerator *sub_1000193F0(SRSensorDescriptionEnumerator *result)
{
  if (result)
  {
    v1 = result;
    v2 = [SRSensorDescriptionEnumerator alloc];
    if (v2)
    {
      v5.receiver = v2;
      v5.super_class = SRSensorDescriptionEnumerator;
      v2 = [(SRSensorDescriptionEnumerator *)&v5 init];
      if (v2)
      {
        v3 = v2;
        v4 = v1;
        v2 = v3;
        v3->_sensorsCache = v4;
      }
    }

    return v2;
  }

  return result;
}

SRSensorDescription *sub_100019470(uint64_t a1, NSURL *a2)
{
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v4 = *(a1 + 16);
  v5 = [v4 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v24;
    *&v6 = 138543362;
    v22 = v6;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v24 != v8)
      {
        objc_enumerationMutation(v4);
      }

      v10 = *(*(&v23 + 1) + 8 * v9);
      v11 = [(NSURL *)a2 stringByAppendingPathExtension:@"plist", v22];
      if (!v11)
      {
        break;
      }

      v12 = [NSURL fileURLWithPath:v11 isDirectory:0 relativeToURL:v10];
      v27 = 0;
      v13 = [NSDictionary dictionaryWithContentsOfURL:v12 error:&v27];
      if (v13)
      {
        v14 = [[SRSensorDescription alloc] initWithDictionary:v13];
        v15 = [(SRSensorDescription *)v14 name];
        [*(a1 + 8) setObject:v14 forKey:v15];
        if ([(SRSensorDescription *)v14 legacyName])
        {
          [*(a1 + 8) setObject:v14 forKey:{-[SRSensorDescription legacyName](v14, "legacyName")}];
        }

        v16 = qword_100071A10;
        if (os_log_type_enabled(qword_100071A10, OS_LOG_TYPE_INFO))
        {
          *buf = 138543618;
          v30 = v15;
          v31 = 2114;
          v32 = v14;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Cached description for %{public}@, %{public}@", buf, 0x16u);
        }

        if (v14)
        {
          return v14;
        }
      }

      else if ([-[SRSensorDescription domain](v27 "domain")] && -[SRSensorDescription code](v27, "code") == 260)
      {
        v17 = qword_100071A10;
        if (os_log_type_enabled(qword_100071A10, OS_LOG_TYPE_INFO))
        {
          *buf = v22;
          v30 = v12;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%{public}@ not found", buf, 0xCu);
        }
      }

      else
      {
        v18 = qword_100071A10;
        if (os_log_type_enabled(qword_100071A10, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v30 = v12;
          v31 = 2114;
          v32 = v27;
          _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Failed to parse %{public}@ because %{public}@", buf, 0x16u);
        }
      }

      if (v7 == ++v9)
      {
        v7 = [v4 countByEnumeratingWithState:&v23 objects:v28 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_21;
      }
    }
  }

  else
  {
LABEL_21:
    v19 = qword_100071A10;
    if (os_log_type_enabled(qword_100071A10, OS_LOG_TYPE_ERROR))
    {
      v21 = *(a1 + 16);
      *buf = 138543618;
      v30 = a2;
      v31 = 2114;
      v32 = v21;
      _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Failed to find description for %{public}@ in %{public}@", buf, 0x16u);
    }
  }

  return 0;
}

void *sub_100019840(void *a1, uint64_t a2, int a3)
{
  if (!a1)
  {
    return 0;
  }

  v13.receiver = a1;
  v13.super_class = SRCompressedOutputStream;
  v5 = objc_msgSendSuper2(&v13, "init");
  v6 = v5;
  if (v5)
  {
    *(v5 + 2) = a3;
    v5[7] = 0;
    v7 = compression_encode_scratch_buffer_size(*(v5 + 2));
    v6[8] = NSRoundUpToMultipleOfPageSize(10 * v7);
    [+[NSData data](NSData writeToURL:"writeToURL:atomically:" atomically:a2, 1];
    v12 = 0;
    v8 = [NSFileHandle fileHandleForWritingToURL:a2 error:&v12];
    objc_setProperty_nonatomic(v6, v9, v8, 72);
    if (!v6[9])
    {
      v10 = qword_100071A30;
      if (os_log_type_enabled(qword_100071A30, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v15 = a2;
        v16 = 2114;
        v17 = v12;
        _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Error creating writing file handle at %{public}@ because %{public}@", buf, 0x16u);
      }

      return 0;
    }
  }

  return v6;
}

uint64_t sub_100019CC4(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (a1)
  {
    v4 = *(a1 + 80);
    if (!v4)
    {
      v4 = [[NSMutableData alloc] initWithCapacity:*(v2 + 64)];
      *(v2 + 80) = v4;
    }

    v8 = 0;
    [*(v2 + 72) writeData:+[NSData dataWithBytesNoCopy:length:freeWhenDone:](NSData error:{"dataWithBytesNoCopy:length:freeWhenDone:", objc_msgSend(v4, "bytes"), a2, 0), &v8}];
    v5 = v8;
    v2 = v8 == 0;
    if (v8)
    {
      v6 = qword_100071A30;
      if (os_log_type_enabled(qword_100071A30, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v10 = v5;
        _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Error writing to output file. %{public}@", buf, 0xCu);
      }
    }
  }

  return v2;
}

RDFileURLs *sub_10001A134(RDFileURLs *result)
{
  if (result)
  {
    v1 = [NSURL fileURLWithPath:@"com.apple.private.SensorKit" isDirectory:1 relativeToURL:result->_rootDir];
    v6 = 0;
    if (![+[NSFileManager createDirectoryAtURL:"createDirectoryAtURL:withIntermediateDirectories:attributes:error:"]
    {
      v2 = qword_100071A38;
      if (os_log_type_enabled(qword_100071A38, OS_LOG_TYPE_ERROR))
      {
        *v7 = 138543618;
        *&v7[4] = v1;
        *&v7[12] = 2114;
        *&v7[14] = v6;
        _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "Failed to create %{public}@ because %{public}@", v7, 0x16u);
      }
    }

    v3 = [NSURL fileURLWithPath:@"staging" isDirectory:1 relativeToURL:v1];
    [+[NSFileManager defaultManager](NSFileManager createDirectoryAtURL:"createDirectoryAtURL:withIntermediateDirectories:attributes:error:" withIntermediateDirectories:v3 attributes:1 error:0, 0];
    result = [RDFileURLs alloc];
    if (result)
    {
      *v7 = result;
      *&v7[8] = RDFileURLs;
      result = objc_msgSendSuper2(v7, "init");
      if (result)
      {
        v4 = result;
        v5 = v3;
        result = v4;
        v4->_rootDir = v5;
      }
    }
  }

  return result;
}

NSURL *sub_10001A2B8(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = [NSURL fileURLWithPath:@"com.apple.private.SensorKit" isDirectory:1 relativeToURL:*(a1 + 8)];
  v4 = 0;
  if (![+[NSFileManager createDirectoryAtURL:"createDirectoryAtURL:withIntermediateDirectories:attributes:error:"]
  {
    v2 = qword_100071A38;
    if (os_log_type_enabled(qword_100071A38, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v6 = v1;
      v7 = 2114;
      v8 = v4;
      _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "Failed to create %{public}@ because %{public}@", buf, 0x16u);
    }
  }

  return v1;
}

NSURL *sub_10001A3C4(uint64_t a1, void *a2)
{
  if (!a1)
  {
    return 0;
  }

  v3 = [a2 stringByAddingPercentEncodingWithAllowedCharacters:{+[NSCharacterSet URLHostAllowedCharacterSet](NSCharacterSet, "URLHostAllowedCharacterSet")}];
  v4 = [NSURL fileURLWithPath:@"com.apple.private.SensorKit" isDirectory:1 relativeToURL:*(a1 + 8)];
  v8 = 0;
  if (![+[NSFileManager createDirectoryAtURL:"createDirectoryAtURL:withIntermediateDirectories:attributes:error:"]
  {
    v5 = qword_100071A38;
    if (os_log_type_enabled(qword_100071A38, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v10 = v4;
      v11 = 2114;
      v12 = v8;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed to create %{public}@ because %{public}@", buf, 0x16u);
    }
  }

  v6 = [NSURL fileURLWithPath:v3 isDirectory:1 relativeToURL:v4];
  [+[NSFileManager defaultManager](NSFileManager createDirectoryAtURL:"createDirectoryAtURL:withIntermediateDirectories:attributes:error:" withIntermediateDirectories:v6 attributes:1 error:0, 0];
  return v6;
}

NSURL *sub_10001A54C(uint64_t a1, void *a2, char a3)
{
  if (!a1)
  {
    return 0;
  }

  v4 = sub_10001A3C4(a1, a2);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  if ((a3 & 4) != 0)
  {
    v6 = @"curated";
  }

  else
  {
    v6 = @"uncurated";
  }

  v7 = [@"sensor-data" stringByAppendingPathComponent:v6];

  return [NSURL fileURLWithPath:v7 isDirectory:1 relativeToURL:v5];
}

NSURL *sub_10001A5D4(NSURL *result, uint64_t a2, void *a3, char a4)
{
  if (result)
  {
    v6 = result;
    v7 = [[NSString pathWithComponents:?], "stringByAppendingPathComponent:", @"frame-segments"];
    v8 = sub_10001A3C4(v6, a3);
    if (v8)
    {
      if ((a4 & 4) != 0)
      {
        v9 = @"curated";
      }

      else
      {
        v9 = @"uncurated";
      }

      v10 = +[NSURL fileURLWithPath:isDirectory:relativeToURL:](NSURL, "fileURLWithPath:isDirectory:relativeToURL:", [@"sensor-data" stringByAppendingPathComponent:v9], 1, v8);
    }

    else
    {
      v10 = 0;
    }

    return [NSURL fileURLWithPath:v7 isDirectory:1 relativeToURL:v10];
  }

  return result;
}

NSURL *sub_10001A6A4(NSURL *result, uint64_t a2, void *a3, char a4)
{
  if (result)
  {
    v6 = result;
    v7 = [[NSString pathWithComponents:?], "stringByAppendingPathComponent:", @"frame-metadata"];
    v8 = sub_10001A3C4(v6, a3);
    if (v8)
    {
      if ((a4 & 4) != 0)
      {
        v9 = @"curated";
      }

      else
      {
        v9 = @"uncurated";
      }

      v10 = +[NSURL fileURLWithPath:isDirectory:relativeToURL:](NSURL, "fileURLWithPath:isDirectory:relativeToURL:", [@"sensor-data" stringByAppendingPathComponent:v9], 1, v8);
    }

    else
    {
      v10 = 0;
    }

    return [NSURL fileURLWithPath:v7 isDirectory:1 relativeToURL:v10];
  }

  return result;
}

NSURL *sub_10001A774(NSURL *result, uint64_t a2, void *a3, char a4)
{
  if (result)
  {
    v6 = result;
    v7 = [[NSString pathWithComponents:?], "stringByAppendingPathComponent:", @"frame-configuration"];
    v8 = sub_10001A3C4(v6, a3);
    if (v8)
    {
      if ((a4 & 4) != 0)
      {
        v9 = @"curated";
      }

      else
      {
        v9 = @"uncurated";
      }

      v10 = +[NSURL fileURLWithPath:isDirectory:relativeToURL:](NSURL, "fileURLWithPath:isDirectory:relativeToURL:", [@"sensor-data" stringByAppendingPathComponent:v9], 1, v8);
    }

    else
    {
      v10 = 0;
    }

    return [NSURL fileURLWithPath:v7 isDirectory:1 relativeToURL:v10];
  }

  return result;
}

NSURL *sub_10001A844(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a1)
  {
    return 0;
  }

  v3 = +[NSURL fileURLWithPath:isDirectory:relativeToURL:](NSURL, "fileURLWithPath:isDirectory:relativeToURL:", @"decrypted", 1, +[NSURL fileURLWithPath:isDirectory:relativeToURL:](NSURL, "fileURLWithPath:isDirectory:relativeToURL:", [@"snapshots" stringByAppendingPathComponent:{+[NSString pathWithComponents:](NSString, "pathWithComponents:", a2)}], 1, sub_10001A3C4(a1, a3)));
  [+[NSFileManager defaultManager](NSFileManager createDirectoryAtURL:"createDirectoryAtURL:withIntermediateDirectories:attributes:error:" withIntermediateDirectories:v3 attributes:1 error:0, 0];
  return v3;
}

NSURL *sub_10001A924(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a1)
  {
    return 0;
  }

  v3 = +[NSURL fileURLWithPath:isDirectory:relativeToURL:](NSURL, "fileURLWithPath:isDirectory:relativeToURL:", @"encrypted", 1, +[NSURL fileURLWithPath:isDirectory:relativeToURL:](NSURL, "fileURLWithPath:isDirectory:relativeToURL:", [@"snapshots" stringByAppendingPathComponent:{+[NSString pathWithComponents:](NSString, "pathWithComponents:", a2)}], 1, sub_10001A3C4(a1, a3)));
  [+[NSFileManager defaultManager](NSFileManager createDirectoryAtURL:"createDirectoryAtURL:withIntermediateDirectories:attributes:error:" withIntermediateDirectories:v3 attributes:1 error:0, 0];
  return v3;
}

NSURL *sub_10001AA04(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a1)
  {
    return 0;
  }

  v3 = +[NSURL fileURLWithPath:isDirectory:relativeToURL:](NSURL, "fileURLWithPath:isDirectory:relativeToURL:", @"delivered", 1, +[NSURL fileURLWithPath:isDirectory:relativeToURL:](NSURL, "fileURLWithPath:isDirectory:relativeToURL:", [@"snapshots" stringByAppendingPathComponent:{+[NSString pathWithComponents:](NSString, "pathWithComponents:", a2)}], 1, sub_10001A3C4(a1, a3)));
  [+[NSFileManager defaultManager](NSFileManager createDirectoryAtURL:"createDirectoryAtURL:withIntermediateDirectories:attributes:error:" withIntermediateDirectories:v3 attributes:1 error:0, 0];
  return v3;
}

NSURL *sub_10001AAE4(NSURL *result, void *a2)
{
  if (result)
  {
    v2 = sub_10001A3C4(result, a2);

    return [NSURL fileURLWithPath:@"clients" isDirectory:0 relativeToURL:v2];
  }

  return result;
}

NSURL *sub_10001AB2C(NSURL *result, void *a2)
{
  if (result)
  {
    v2 = sub_10001A3C4(result, a2);

    return [NSURL fileURLWithPath:@"configurations" isDirectory:0 relativeToURL:v2];
  }

  return result;
}

NSURL *sub_10001AB74(NSURL *result, uint64_t a2, void *a3, char a4)
{
  if (result)
  {
    v6 = sub_10001A3C4(result, a3);
    if (v6)
    {
      if ((a4 & 4) != 0)
      {
        v7 = @"curated";
      }

      else
      {
        v7 = @"uncurated";
      }

      v6 = +[NSURL fileURLWithPath:isDirectory:relativeToURL:](NSURL, "fileURLWithPath:isDirectory:relativeToURL:", [@"sensor-data" stringByAppendingPathComponent:v7], 1, v6);
    }

    v8 = [NSURL fileURLWithPath:[NSString pathWithComponents:a2] isDirectory:1 relativeToURL:v6];

    return [NSURL fileURLWithPath:@"metadata" isDirectory:0 relativeToURL:v8];
  }

  return result;
}

NSURL *sub_10001AC44(NSURL *result, uint64_t a2, void *a3, char a4)
{
  if (result)
  {
    v6 = sub_10001A3C4(result, a3);
    if (v6)
    {
      if ((a4 & 4) != 0)
      {
        v7 = @"curated";
      }

      else
      {
        v7 = @"uncurated";
      }

      v6 = +[NSURL fileURLWithPath:isDirectory:relativeToURL:](NSURL, "fileURLWithPath:isDirectory:relativeToURL:", [@"sensor-data" stringByAppendingPathComponent:v7], 1, v6);
    }

    v8 = [NSURL fileURLWithPath:[NSString pathWithComponents:a2] isDirectory:1 relativeToURL:v6];

    return [NSURL fileURLWithPath:@"configuration" isDirectory:0 relativeToURL:v8];
  }

  return result;
}

NSURL *sub_10001AD14()
{
  objc_opt_self();
  objc_opt_self();
  v0 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  if ([(NSArray *)v0 count])
  {
    v1 = [NSURL fileURLWithPath:[(NSArray *)v0 firstObject] isDirectory:1];
  }

  else
  {
    v1 = 0;
  }

  return [NSURL fileURLWithPath:@"com.apple.SensorKitDataExport" isDirectory:1 relativeToURL:v1];
}

NSURL *sub_10001ADB4(double a1)
{
  objc_opt_self();
  v2 = [NSString stringWithFormat:@"%.8f", *&a1];

  return [NSURL URLWithString:v2];
}

uint64_t sub_10001AE14(uint64_t a1, void *a2)
{
  objc_opt_self();
  v3 = [a2 indexOfObject:@"frame-segments"];
  if (v3 < 2 || v3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    return v3 - 1;
  }
}

uint64_t sub_10001AE5C(uint64_t a1, void *a2)
{
  objc_opt_self();
  v3 = [a2 indexOfObject:@"snapshots"];
  if (v3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v4 = v3;
  v5 = [a2 count];
  result = (v4 + 1);
  if (v5 <= v4 + 1)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return result;
}

uint64_t sub_10001AEBC(uint64_t a1, void *a2)
{
  objc_opt_self();
  [a2 fileSystemRepresentation];
  if ((dirstat_np() & 0x80000000) == 0)
  {
    return 0;
  }

  v5 = qword_100071A38;
  if (os_log_type_enabled(qword_100071A38, OS_LOG_TYPE_ERROR))
  {
    v17 = *__error();
    *buf = 138478083;
    *&buf[4] = a2;
    *&buf[12] = 1026;
    *&buf[14] = v17;
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed to dirstat_np %{private}@ because %{public, errno}d", buf, 0x12u);
  }

  objc_opt_self();
  v6 = objc_autoreleasePoolPush();
  v7 = +[NSFileManager defaultManager];
  *buf = NSURLFileSizeKey;
  *&buf[8] = NSURLIsDirectoryKey;
  v8 = [(NSFileManager *)v7 enumeratorAtURL:a2 includingPropertiesForKeys:[NSArray arrayWithObjects:2 count:?], 0, 0];
  v9 = objc_autoreleasePoolPush();
  v10 = [(NSDirectoryEnumerator *)v8 nextObject];
  if (v10)
  {
    v11 = v10;
    v3 = 0;
    while (1)
    {
      v19 = 0;
      [v11 getResourceValue:&v19 forKey:NSURLIsDirectoryKey error:0];
      if (([v19 BOOLValue] & 1) == 0)
      {
        v12 = sub_10000536C(+[NSFileManager defaultManager], v11);
        v13 = __CFADD__(v3, v12);
        v3 += v12;
        v14 = v13 ? (v12 >> 63) + 1 : v12 >> 63;
        v15 = v14 << 63 >> 63;
        if (v15 != v14 || v15 < 0)
        {
          break;
        }
      }

      objc_autoreleasePoolPop(v9);
      v9 = objc_autoreleasePoolPush();
      v11 = [(NSDirectoryEnumerator *)v8 nextObject];
      if (!v11)
      {
        goto LABEL_19;
      }
    }

    v16 = qword_100071A38;
    if (os_log_type_enabled(qword_100071A38, OS_LOG_TYPE_FAULT))
    {
      v18 = [v11 relativePath];
      *v21 = 138412290;
      v22 = v18;
      _os_log_fault_impl(&_mh_execute_header, v16, OS_LOG_TYPE_FAULT, "Counting any more file sizes in %@ will overflow", v21, 0xCu);
    }

    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

LABEL_19:
  objc_autoreleasePoolPop(v9);
  objc_autoreleasePoolPop(v6);
  return v3;
}

NSURL *sub_10001B140(NSURL *result)
{
  if (result)
  {
    v1 = [NSURL fileURLWithPath:@"com.apple.private.SensorKit" isDirectory:1 relativeToURL:result->_urlString];
    v3 = 0;
    if (![+[NSFileManager createDirectoryAtURL:"createDirectoryAtURL:withIntermediateDirectories:attributes:error:"]
    {
      v2 = qword_100071A38;
      if (os_log_type_enabled(qword_100071A38, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v5 = v1;
        v6 = 2114;
        v7 = v3;
        _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "Failed to create %{public}@ because %{public}@", buf, 0x16u);
      }
    }

    return [NSURL fileURLWithPath:@"IDSMessages" isDirectory:1 relativeToURL:v1];
  }

  return result;
}

NSURL *sub_10001B260(NSURL *a1, uint64_t a2)
{
  v2 = a1;
  if (a1)
  {
    v2 = [NSURL fileURLWithPath:[NSString pathWithComponents:a2] isDirectory:1 relativeToURL:sub_10001B140(a1)];
    [+[NSFileManager defaultManager](NSFileManager createDirectoryAtURL:"createDirectoryAtURL:withIntermediateDirectories:attributes:error:" withIntermediateDirectories:v2 attributes:1 error:0, 0];
  }

  return v2;
}

NSURL *sub_10001B2EC(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = [NSURL fileURLWithPath:@"com.apple.private.SensorKit" isDirectory:1 relativeToURL:*(a1 + 8)];
  v5 = 0;
  if (![+[NSFileManager createDirectoryAtURL:"createDirectoryAtURL:withIntermediateDirectories:attributes:error:"]
  {
    v2 = qword_100071A38;
    if (os_log_type_enabled(qword_100071A38, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v7 = v1;
      v8 = 2114;
      v9 = v5;
      _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "Failed to create %{public}@ because %{public}@", buf, 0x16u);
    }
  }

  v3 = [NSURL fileURLWithPath:@"gizmo-state" isDirectory:1 relativeToURL:v1];
  [+[NSFileManager defaultManager](NSFileManager createDirectoryAtURL:"createDirectoryAtURL:withIntermediateDirectories:attributes:error:" withIntermediateDirectories:v3 attributes:1 error:0, 0];
  return v3;
}

NSURL *sub_10001B44C(NSURL *result)
{
  if (result)
  {
    v1 = result;
    v2 = -[NSString stringByAppendingPathExtension:]([+[NSBundle mainBundle](NSBundle bundleIdentifier], "stringByAppendingPathExtension:", @"plist");
    v3 = [NSURL fileURLWithPath:@"com.apple.private.SensorKit" isDirectory:1 relativeToURL:v1->_urlString];
    v5 = 0;
    if (![+[NSFileManager createDirectoryAtURL:"createDirectoryAtURL:withIntermediateDirectories:attributes:error:"]
    {
      v4 = qword_100071A38;
      if (os_log_type_enabled(qword_100071A38, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v7 = v3;
        v8 = 2114;
        v9 = v5;
        _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Failed to create %{public}@ because %{public}@", buf, 0x16u);
      }
    }

    return [NSURL fileURLWithPath:v2 isDirectory:0 relativeToURL:v3];
  }

  return result;
}

NSURL *sub_10001B58C(NSURL *result)
{
  if (result)
  {
    v4 = 0u;
    v5 = 0u;
    [(NSURL *)result auditToken];
    *buf = v4;
    v7 = v5;
    result = [sub_10002E77C(NSBundle bundleIdentifier];
    if (!result)
    {
      *buf = v4;
      v7 = v5;
      result = sub_10001C624(NSURL, buf);
      if (result)
      {
        v1 = result;
        v2 = CFBundleCopyInfoDictionaryForURL(result);
        if (v2)
        {
          return [(__CFDictionary *)v2 objectForKeyedSubscript:@"CFBundleIdentifier"];
        }

        if (qword_100071A48 == -1)
        {
          v3 = qword_100071A40;
          if (!os_log_type_enabled(qword_100071A40, OS_LOG_TYPE_ERROR))
          {
            return 0;
          }
        }

        else
        {
          dispatch_once(&qword_100071A48, &stru_100060F80);
          v3 = qword_100071A40;
          if (!os_log_type_enabled(qword_100071A40, OS_LOG_TYPE_ERROR))
          {
            return 0;
          }
        }

        *buf = 138543362;
        *&buf[4] = v1;
        _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Could not get embedded info plist for executable %{public}@", buf, 0xCu);
        return 0;
      }
    }
  }

  return result;
}

void *sub_10001BCD0(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v10 = [RDCompanionSideSync alloc];

  return sub_100002ED0(v10, a3, a1, a2, a4, a5);
}

NSMutableDictionary *sub_10001BD40(void *a1)
{
  v2 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [a1 count] + 1);
  [(NSMutableDictionary *)v2 addEntriesFromDictionary:a1];
  -[NSMutableDictionary setObject:forKeyedSubscript:](v2, "setObject:forKeyedSubscript:", [+[NSUUID UUID](NSUUID UUIDString], @"RDGizmoSyncMessageIdKey");
  return v2;
}

id *sub_10001BDAC(id *result, void *a2)
{
  if (result)
  {
    v3 = result;
    v4 = [a2 objectForKeyedSubscript:@"recordingStates"];
    v5 = [v3[2] count];
    if (v5 == [v4 count])
    {
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v6 = v3[2];
      v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v15;
LABEL_5:
        v10 = 0;
        while (1)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v14 + 1) + 8 * v10);
          result = [v4 objectForKeyedSubscript:v11];
          if (!result)
          {
            break;
          }

          result = [objc_msgSend(v3[2] objectForKeyedSubscript:{v11), "isEqualToNumber:", result}];
          if (!result)
          {
            break;
          }

          if (v8 == ++v10)
          {
            v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
            if (v8)
            {
              goto LABEL_5;
            }

            goto LABEL_12;
          }
        }
      }

      else
      {
LABEL_12:
        v12 = [a2 objectForKeyedSubscript:@"sensorConfigurations"];
        v13 = [v3[5] count];
        if (v13 == [v12 count])
        {
          if (![v3[5] count] || (result = objc_msgSend(v3[5], "isEqualToDictionary:", v12), result))
          {
            result = [a2 objectForKeyedSubscript:@"prerequisites"];
            if (result)
            {
              return ([result unsignedIntegerValue] == v3[4]);
            }
          }
        }

        else
        {
          return 0;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

NSDictionary *sub_10001C00C(NSDictionary *result)
{
  if (result)
  {
    v1 = result;
    v5[0] = result[2].super.isa;
    v4[0] = @"recordingStates";
    v4[1] = @"prerequisites";
    v5[1] = [NSNumber numberWithUnsignedInteger:result[4].super.isa];
    v4[2] = @"capabilities";
    v2 = [NSNumber numberWithUnsignedInteger:v1[6].super.isa];
    v4[3] = @"sensorConfigurations";
    isa = v1[5].super.isa;
    if (!isa)
    {
      isa = &__NSDictionary0__struct;
    }

    v5[2] = v2;
    v5[3] = isa;
    return [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:4];
  }

  return result;
}

id sub_10001C0E8(uint64_t a1, void *a2, int a3, int a4, void *a5)
{
  objc_opt_self();
  if (!a2)
  {
    return 0;
  }

  v9 = [a2 URLByResolvingSymlinksInPath];
  if (([-[__CFString path](v9 "path")] & 1) == 0)
  {
    AnalyticsSendEventLazy();
    if (qword_100071A60 == -1)
    {
      v13 = qword_100071A68;
      if (!os_log_type_enabled(qword_100071A68, OS_LOG_TYPE_ERROR))
      {
        return 0;
      }
    }

    else
    {
      dispatch_once(&qword_100071A60, &stru_1000610B8);
      v13 = qword_100071A68;
      if (!os_log_type_enabled(qword_100071A68, OS_LOG_TYPE_ERROR))
      {
        return 0;
      }
    }

    *buf = 138412546;
    v21 = a2;
    v22 = 2112;
    v23 = v9;
    _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Refusing to open %@ because it contains a symlink. Resolved URL %@", buf, 0x16u);
    return 0;
  }

  if (!a4 && !sub_10000536C(+[NSFileManager defaultManager], a2))
  {
    if (qword_100071A60 == -1)
    {
      v14 = qword_100071A68;
      if (!os_log_type_enabled(qword_100071A68, OS_LOG_TYPE_INFO))
      {
        return 0;
      }
    }

    else
    {
      dispatch_once(&qword_100071A60, &stru_1000610B8);
      v14 = qword_100071A68;
      if (!os_log_type_enabled(qword_100071A68, OS_LOG_TYPE_INFO))
      {
        return 0;
      }
    }

    *buf = 138543362;
    v21 = a2;
    v15 = "%{public}@ has zero size. Not returning an empty file to read.";
    goto LABEL_27;
  }

  v10 = open_dprotected_np([a2 fileSystemRepresentation], a4, a3, 0, 416);
  if ((v10 & 0x80000000) != 0)
  {
    if (*__error() == 2)
    {
      if (qword_100071A60 != -1)
      {
        dispatch_once(&qword_100071A60, &stru_1000610B8);
        v14 = qword_100071A68;
        if (!os_log_type_enabled(qword_100071A68, OS_LOG_TYPE_INFO))
        {
          return 0;
        }

        goto LABEL_15;
      }

      v14 = qword_100071A68;
      if (os_log_type_enabled(qword_100071A68, OS_LOG_TYPE_INFO))
      {
LABEL_15:
        *buf = 138543362;
        v21 = a2;
        v15 = "Skipping %{public}@ as it doesn't exist.";
LABEL_27:
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, v15, buf, 0xCu);
      }

      return 0;
    }

    AnalyticsSendEventLazy();
    v16 = *__error();
    if (qword_100071A60 == -1)
    {
      v17 = qword_100071A68;
      if (!os_log_type_enabled(qword_100071A68, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_22;
      }
    }

    else
    {
      dispatch_once(&qword_100071A60, &stru_1000610B8);
      v17 = qword_100071A68;
      if (!os_log_type_enabled(qword_100071A68, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_22;
      }
    }

    if (v16 == 1)
    {
      v18 = @" likely because the device is locked";
    }

    else
    {
      v18 = &stru_100062328;
    }

    v19 = *__error();
    *buf = 138543874;
    v21 = a2;
    v22 = 2114;
    v23 = v18;
    v24 = 1026;
    v25 = v19;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Failed to open file %{public}@%{public}@. %{public,darwin.errno}d", buf, 0x1Cu);
LABEL_22:
    if (a5)
    {
      *a5 = [SRError errorWithCode:2];
    }

    return 0;
  }

  v11 = [[NSFileHandle alloc] initWithFileDescriptor:v10 closeOnDealloc:1];

  return v11;
}

NSDictionary *__cdecl sub_10001C504(id a1)
{
  v2 = @"RDAnalyticsErrorKey";
  v3 = &off_100065220;
  return sub_10002DADC([NSDictionary dictionaryWithObjects:&v3 forKeys:&v2 count:1]);
}

NSDictionary *__cdecl sub_10001C57C(id a1)
{
  v2 = @"RDAnalyticsErrorKey";
  v3 = &off_100065238;
  return sub_10002DADC([NSDictionary dictionaryWithObjects:&v3 forKeys:&v2 count:1]);
}

NSURL *sub_10001C624(uint64_t a1, _OWORD *a2)
{
  objc_opt_self();
  bzero(buffer, 0x400uLL);
  v3 = a2[1];
  *v10.val = *a2;
  *&v10.val[4] = v3;
  if (proc_pidpath_audittoken(&v10, buffer, 0x400u) <= 0)
  {
    if (qword_100071A78 == -1)
    {
      v9 = qword_100071A70;
      if (!os_log_type_enabled(qword_100071A70, OS_LOG_TYPE_ERROR))
      {
        return 0;
      }
    }

    else
    {
      dispatch_once(&qword_100071A78, &stru_1000610D8);
      v9 = qword_100071A70;
      if (!os_log_type_enabled(qword_100071A70, OS_LOG_TYPE_ERROR))
      {
        return 0;
      }
    }

    *buf = 68157954;
    LODWORD(v12[0]) = 32;
    WORD2(v12[0]) = 2096;
    *(v12 + 6) = a2;
    v6 = "Cannot determine path for audit token %.*P";
    v7 = v9;
    v8 = 18;
    goto LABEL_12;
  }

  result = [NSURL fileURLWithPath:[NSString stringWithUTF8String:buffer]];
  if (result)
  {
    return result;
  }

  if (qword_100071A78 != -1)
  {
    dispatch_once(&qword_100071A78, &stru_1000610D8);
    v5 = qword_100071A70;
    if (!os_log_type_enabled(qword_100071A70, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    goto LABEL_5;
  }

  v5 = qword_100071A70;
  if (os_log_type_enabled(qword_100071A70, OS_LOG_TYPE_ERROR))
  {
LABEL_5:
    *buf = 136446210;
    v12[0] = buffer;
    v6 = "Could not create URL for path %{public}s";
    v7 = v5;
    v8 = 12;
LABEL_12:
    _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, v6, buf, v8);
  }

  return 0;
}

NSURL *sub_10001C808()
{
  objc_opt_self();

  return [NSURL URLWithString:@"settings-navigation://com.apple.Settings.PrivacyAndSecurity/ALMANAC"];
}

id sub_10001C870(id result, void *a2)
{
  if (result)
  {
    v5.receiver = result;
    v5.super_class = RDReader;
    result = objc_msgSendSuper2(&v5, "init");
    if (result)
    {
      v3 = result;
      v4 = a2;
      result = v3;
      v3[1] = v4;
    }
  }

  return result;
}

NSArray *sub_10001C92C(uint64_t a1, id *a2, double a3, double a4)
{
  if (!a1)
  {
    return 0;
  }

  v7 = sub_10000ACCC([RDReadableDatastore alloc], *(a1 + 8));
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = a3;
  v8 = +[NSMutableArray array];
  v36 = 0;
  do
  {
    if (v38[3] >= a4)
    {
      break;
    }

    v9 = objc_autoreleasePoolPush();
    v10 = v38[3];
    if (v10 == a3)
    {
      v11 = sub_10000B0D0(v7, &v36, v10);
    }

    else
    {
      v12 = [(NSURL *)sub_10001ADB4(v10) lastPathComponent];
      v11 = sub_10000B6C0(v7, v12, &v36);
    }

    v13 = v11;
    if (v36)
    {
      v14 = v36;
      LOBYTE(v15) = 0;
    }

    else
    {
      v15 = [(NSDictionary *)v11 objectForKeyedSubscript:@"samples"];
      if (v15)
      {
        v17 = [SRDefaults alloc];
        v18 = *(a1 + 8);
        if (v18)
        {
          Property = objc_getProperty(v18, v16, 16, 1);
          v21 = *(a1 + 8);
          if (v21)
          {
            v22 = objc_getProperty(v21, v19, 24, 1);
          }

          else
          {
            v22 = 0;
          }
        }

        else
        {
          Property = 0;
          v22 = 0;
        }

        v23 = sub_10002A88C(Property, v22);
        v24 = sub_10004375C(v17, v23);
        v25 = [SRDatastore alloc];
        v26 = [(NSDictionary *)v13 objectForKeyedSubscript:@"metadata"];
        v27 = [(NSDictionary *)v13 objectForKeyedSubscript:@"sensorConfiguration"];
        if (v25)
        {
          v15 = sub_100040CAC(v25, v15, v26, v27, 0, v24, 0);
        }

        else
        {
          v15 = 0;
        }

        v28 = [v8 count];
        v29 = v38[3];
        v35[0] = _NSConcreteStackBlock;
        v35[1] = 3221225472;
        v35[2] = sub_10001CCF4;
        v35[3] = &unk_100061100;
        v35[5] = v8;
        v35[6] = &v37;
        v35[4] = a1;
        sub_1000413D4(v15, v35, v29, a4);
        if (v28 == [v8 count])
        {
          v38[3] = a4;
        }

        LOBYTE(v15) = 1;
      }
    }

    objc_autoreleasePoolPop(v9);
  }

  while ((v15 & 1) != 0);

  v30 = v36;
  if (a2)
  {
    *a2 = v36;
  }

  v31 = v30;
  v32 = [NSArray arrayWithArray:v8];
  _Block_object_dispose(&v37, 8);
  return v32;
}

void sub_10001CC34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10001CC4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10001CC64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10001CC7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10001CC94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10001CCAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10001CCC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10001CCDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_10001CCF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  *(*(*(a1 + 48) + 8) + 24) = a5;
  v11 = sub_100019058();
  v12 = *(*(a1 + 32) + 8);
  if (v12)
  {
    Property = objc_getProperty(v12, v10, 24, 1);
    v14 = [(SRSensorDescription *)sub_100018F58(v11 sampleClass];
    result = NSClassFromString(v14);
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v18 = [(SRSensorDescription *)sub_100018F58(v11 sampleClass];
    result = NSClassFromString(v18);
    if (!result)
    {
      return result;
    }
  }

  v16 = result;
  result = [(objc_class *)result conformsToProtocol:&OBJC_PROTOCOL___SRSampling];
  if (result)
  {
    v17 = [[v16 alloc] initWithBinarySampleRepresentation:+[NSData dataWithBytesNoCopy:length:freeWhenDone:](NSData metadata:"dataWithBytesNoCopy:length:freeWhenDone:" timestamp:{a2, a3, 0), a4, a5}];
    if (v17)
    {
      [*(a1 + 40) addObject:v17];
    }

    return 1;
  }

  return result;
}

double sub_10001CE08(uint64_t a1, void *a2)
{
  if (!a1)
  {
    return 0.0;
  }

  v5 = [SRDefaults alloc];
  v6 = *(a1 + 8);
  if (v6)
  {
    Property = objc_getProperty(v6, v4, 16, 1);
    v9 = *(a1 + 8);
    if (v9)
    {
      v10 = objc_getProperty(v9, v7, 24, 1);
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    Property = 0;
    v10 = 0;
  }

  v11 = sub_10002A88C(Property, v10);
  v12 = sub_10004375C(v5, v11);
  v13 = [SRDatastore alloc];
  v14 = [a2 objectForKeyedSubscript:@"samples"];
  v15 = [a2 objectForKeyedSubscript:@"metadata"];
  v16 = [a2 objectForKeyedSubscript:@"sensorConfiguration"];
  v17 = 0.0;
  if (v13)
  {
    v18 = sub_100040CAC(v13, v14, v15, v16, 0, v12, 0);
    v20 = v18;
    if (v18)
    {
      v21 = objc_getProperty(v18, v19, 40, 1);
      if (v21)
      {
        v17 = v21[6];
      }
    }
  }

  else
  {
    v20 = 0;
  }

  return v17;
}

void start()
{
  _set_user_dir_suffix();
  inactive = dispatch_workloop_create_inactive("com.apple.sensorkitd.main");
  dispatch_set_qos_class_fallback();
  dispatch_activate(inactive);
  v3[0] = 0;
  v3[1] = v3;
  v3[2] = 0x3052000000;
  v3[3] = sub_10001D060;
  v3[4] = sub_10001D070;
  v3[5] = 0;
  v1 = objc_autoreleasePoolPush();
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10001D07C;
  v2[3] = &unk_100061128;
  v2[4] = inactive;
  v2[5] = v3;
  dispatch_async_and_wait(inactive, v2);
  objc_autoreleasePoolPop(v1);
  dispatch_main();
}

void sub_10001D048(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10001D07C(uint64_t a1)
{
  result = sub_10002EA68([RDDaemon alloc], *(a1 + 32));
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

void sub_10001D8DC(uint64_t a1, int a2, void *a3)
{
  objc_opt_self();
  v5 = qword_100071A98;
  if (os_log_type_enabled(qword_100071A98, OS_LOG_TYPE_INFO))
  {
    v6[0] = 67240450;
    v6[1] = a2;
    v7 = 2114;
    v8 = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Telling writers recording status is %{public}d for sensor %{public}@", v6, 0x12u);
  }

  sub_10001D9A8(RDNotifier, a3);
}

void sub_10001D9A8(uint64_t a1, void *a2)
{
  objc_opt_self();
  v3 = qword_100071A98;
  if (os_log_type_enabled(qword_100071A98, OS_LOG_TYPE_INFO))
  {
    v7 = 138543362;
    v8 = a2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Posting notification for %{public}@", &v7, 0xCu);
  }

  v4 = notify_post([a2 UTF8String]);
  if (v4)
  {
    v5 = v4;
    AnalyticsSendEventLazy();
    v6 = qword_100071A98;
    if (os_log_type_enabled(qword_100071A98, OS_LOG_TYPE_ERROR))
    {
      v7 = 138543618;
      v8 = a2;
      v9 = 1026;
      v10 = v5;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Failed to post notification for %{public}@. status %{public}d", &v7, 0x12u);
    }
  }
}

NSDictionary *__cdecl sub_10001DAE8(id a1)
{
  v2 = @"RDAnalyticsErrorKey";
  v3 = &off_100065250;
  return sub_10002DADC([NSDictionary dictionaryWithObjects:&v3 forKeys:&v2 count:1]);
}

void sub_10001DB60()
{
  objc_opt_self();

  sub_10001D9A8(RDNotifier, @"com.apple.SensorKit.significantTimeChange");
}

id sub_10001DB9C(void *a1, void *a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  if (!a1)
  {
    return 0;
  }

  v13.receiver = a1;
  v13.super_class = RDNotifier;
  v11 = objc_msgSendSuper2(&v13, "init");
  if (v11)
  {
    *(v11 + 2) = a2;
    *(v11 + 3) = a3;
    *(v11 + 4) = a4;
    *(v11 + 1) = a6;
    *(v11 + 5) = a5;
    dispatch_retain(*(v11 + 1));
  }

  return v11;
}

void *sub_10001DCD4(void *result, double a2)
{
  if (!result)
  {
    return result;
  }

  v3 = result;
  v4 = result[3];
  if (v4)
  {
    v5 = *(v4 + 8);
    v6 = result[2];
    if (v5 == 0.0)
    {
      v7 = sub_10002B32C(v6);
      v8 = a2 - v5;
      if (a2 - v5 >= v7)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v7 = sub_10002B310(v6);
      v8 = a2 - v5;
      if (a2 - v5 >= v7)
      {
        goto LABEL_7;
      }
    }

    return 0;
  }

  v7 = sub_10002B32C(result[2]);
  v8 = a2 - 0.0;
  if (a2 - 0.0 < v7)
  {
    return 0;
  }

LABEL_7:
  v9 = +[NSMutableOrderedSet orderedSet];
  v40 = v3;
  v10 = sub_100027A88(v3[3]);
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v11 = [(NSDictionary *)v10 countByEnumeratingWithState:&v54 objects:v61 count:16];
  if (v11)
  {
    v12 = v11;
    v41 = *v55;
    do
    {
      v13 = 0;
      do
      {
        if (*v55 != v41)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v54 + 1) + 8 * v13);
        v50 = 0u;
        v51 = 0u;
        v52 = 0u;
        v53 = 0u;
        v15 = [(NSDictionary *)v10 objectForKeyedSubscript:v14, v40];
        v16 = [v15 countByEnumeratingWithState:&v50 objects:v60 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v51;
          do
          {
            v19 = 0;
            do
            {
              if (*v51 != v18)
              {
                objc_enumerationMutation(v15);
              }

              [v9 addObject:{objc_msgSend(-[NSDictionary objectForKeyedSubscript:](v10, "objectForKeyedSubscript:", v14), "objectForKeyedSubscript:", *(*(&v50 + 1) + 8 * v19))}];
              v19 = v19 + 1;
            }

            while (v17 != v19);
            v17 = [v15 countByEnumeratingWithState:&v50 objects:v60 count:16];
          }

          while (v17);
        }

        v13 = v13 + 1;
      }

      while (v13 != v12);
      v12 = [(NSDictionary *)v10 countByEnumeratingWithState:&v54 objects:v61 count:16];
    }

    while (v12);
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v20 = sub_100019058();
  v21 = sub_1000193F0(v20);
  v22 = [(SRSensorDescriptionEnumerator *)v21 countByEnumeratingWithState:&v46 objects:v59 count:16];
  v23 = v40;
  if (v22)
  {
    v24 = v22;
    v25 = *v47;
    do
    {
      v26 = 0;
      do
      {
        if (*v47 != v25)
        {
          objc_enumerationMutation(v21);
        }

        v28 = [*(*(&v46 + 1) + 8 * v26) name];
        if ([v23[5] sensorHasReaderAuthorization:v28])
        {
          v29 = v23[3];
          if (!v29)
          {
            v27 = [0 objectForKeyedSubscript:v28];
            if (!v27)
            {
              goto LABEL_27;
            }

LABEL_26:
            [v9 addObject:v27];
            goto LABEL_27;
          }

          v27 = [*(v29 + 48) objectForKeyedSubscript:v28];
          if (v27)
          {
            goto LABEL_26;
          }
        }

LABEL_27:
        v26 = v26 + 1;
      }

      while (v24 != v26);
      v24 = [(SRSensorDescriptionEnumerator *)v21 countByEnumeratingWithState:&v46 objects:v59 count:16];
    }

    while (v24);
  }

  result = [v9 count];
  if (result)
  {
    [v9 sortUsingComparator:&stru_1000611A8];
    [objc_msgSend(v9 "firstObject")];
    if (a2 - v30 < v7)
    {
      return 0;
    }

    v31 = +[NSMutableSet set];
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v32 = sub_100019058();
    v33 = sub_1000193F0(v32);
    v34 = [(SRSensorDescriptionEnumerator *)v33 countByEnumeratingWithState:&v42 objects:v58 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = *v43;
      do
      {
        v37 = 0;
        do
        {
          while (1)
          {
            if (*v43 != v36)
            {
              objc_enumerationMutation(v33);
            }

            v38 = v23[4];
            v39 = [*(*(&v42 + 1) + 8 * v37) name];
            if (!v38)
            {
              break;
            }

            [v31 unionSet:{objc_msgSend(*(v38 + 16), "rd_objectsForSensor:fallbackURL:", v39, sub_10001AAE4(*(v38 + 8), v39))}];
            v37 = v37 + 1;
            if (v35 == v37)
            {
              goto LABEL_40;
            }
          }

          [v31 unionSet:0];
          v37 = v37 + 1;
        }

        while (v35 != v37);
LABEL_40:
        v35 = [(SRSensorDescriptionEnumerator *)v33 countByEnumeratingWithState:&v42 objects:v58 count:16];
      }

      while (v35);
    }

    return [v31 count];
  }

  return result;
}

void sub_10001E15C(void *a1)
{
  if (a1)
  {
    v2 = mach_continuous_time();
    if (qword_100071B60 != -1)
    {
      dispatch_once(&qword_100071B60, &stru_100060D90);
    }

    v3 = qword_100071B68;
    v4 = *&qword_100071B70;
    v5 = *&qword_100071B78;
    TMConvertTicksToSeconds();
    if (v3 >= v2)
    {
      v6 = -v6;
    }

    v7 = sub_10001DCD4(a1, v5 + v4 + v6);
    if (v7)
    {
      v8 = [NSString stringWithFormat:[[NSBundle bundleWithPath:?]value:"localizedStringForKey:value:table:" table:@"REMINDER_ALERT_STUDIES", &stru_100062328, 0], v7];
    }

    else
    {
      v8 = 0;
    }

    sub_10001E664(a1, 0, v8);
    v9 = mach_continuous_time();
    if (qword_100071B60 != -1)
    {
      dispatch_once(&qword_100071B60, &stru_100060D90);
    }

    v10 = qword_100071B68;
    v11 = *&qword_100071B70;
    v12 = *&qword_100071B78;
    TMConvertTicksToSeconds();
    v14 = a1[3];
    if (v14)
    {
      if (v10 >= v9)
      {
        v13 = -v13;
      }

      *(v14 + 8) = v12 + v11 + v13;

      sub_100027584(v14);
    }
  }
}

void sub_10001E318(uint64_t a1, double a2)
{
  if (!a1)
  {
    return;
  }

  if (sub_1000296BC(*(a1 + 16)) && [*(a1 + 40) sensorHasReaderAuthorization:@"com.apple.SensorKit.faceMetrics"])
  {
    v4 = *(a1 + 32);
    if (v4)
    {
      if ([objc_msgSend(*(v4 + 16) rd_objectsForSensor:@"com.apple.SensorKit.faceMetrics" fallbackURL:{sub_10001AAE4(*(v4 + 8), @"com.apple.SensorKit.faceMetrics", "count"}])
      {
LABEL_6:
        v5 = *(a1 + 24);
        if (v5)
        {
          v6 = *(v5 + 80);
          if (v6 != 0.0)
          {
            *buf = 0uLL;
            mach_get_times();
            if (qword_100071B60 != -1)
            {
              dispatch_once(&qword_100071B60, &stru_100060D90);
            }

            v7 = *&qword_100071B70;
            v8 = *&qword_100071B78;
            TMConvertTicksToSeconds();
            if (a2 - (v7 + v8) + v9 + *buf - kCFAbsoluteTimeIntervalSince1970 + *&buf[8] * 0.000000001 > v6)
            {
              sub_10001E664(a1, [[NSBundle bundleWithPath:?]value:"localizedStringForKey:value:table:" table:@"faceMetricsReminderSubtitle", &stru_100062328, 0], [[NSBundle bundleWithPath:?]value:"localizedStringForKey:value:table:" table:@"faceMetricsReminderMessage", &stru_100062328, 0]);
              v10 = mach_continuous_time();
              if (qword_100071B60 != -1)
              {
                dispatch_once(&qword_100071B60, &stru_100060D90);
              }

              v11 = qword_100071B68;
              v12 = *&qword_100071B70;
              v13 = *&qword_100071B78;
              TMConvertTicksToSeconds();
              v15 = *(a1 + 24);
              if (v15)
              {
                if (v11 >= v10)
                {
                  v14 = -v14;
                }

                *(v15 + 8) = v13 + v12 + v14;
                sub_100027584(v15);
              }
            }
          }
        }
      }
    }

    else if ([0 count])
    {
      goto LABEL_6;
    }
  }

  v16 = objc_autoreleasePoolPush();
  [[+[NSCalendar calendarWithIdentifier:](NSCalendar nextDateAfterDate:NSCalendarIdentifierGregorian) matchingComponents:"nextDateAfterDate:matchingComponents:options:" options:+[NSDate now](NSDate timeIntervalSinceReferenceDate:sub_10002B7DC(*(a1 + 16))];
  v18 = v17;
  v19 = *(a1 + 24);
  if (v19)
  {
    v19[10].super.isa = v17;
    sub_100027584(v19);
  }

  v20 = qword_100071A98;
  if (os_log_type_enabled(qword_100071A98, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    *&buf[4] = v18;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Scheduling next face metrics reminder for %{public}f (CFAbsoluteTime)", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v16);
}

id sub_10001E664(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [[NSBundle bundleWithPath:?]value:"localizedStringForKey:value:table:" table:@"reminderAlertTitle", &stru_100062328, 0];
  v7 = objc_alloc_init(UNMutableNotificationContent);
  [v7 setTitle:v6];
  if (a2)
  {
    [v7 setSubtitle:a2];
  }

  [v7 setBody:a3];
  [v7 setDefaultActionURL:sub_10001C808()];
  [v7 setIcon:{+[UNNotificationIcon iconNamed:](UNNotificationIcon, "iconNamed:", @"SensorKit"}];
  v8 = [UNNotificationRequest requestWithIdentifier:@"Reminder" content:v7 trigger:0 destinations:5];

  v9 = qword_100071A98;
  if (os_log_type_enabled(qword_100071A98, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v14 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Posting reminder user notification %{public}@", buf, 0xCu);
  }

  v10 = [[UNUserNotificationCenter alloc] initWithBundleIdentifier:@"com.apple.SensorKit.reminder" queue:*(a1 + 8)];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10001E850;
  v12[3] = &unk_1000611D0;
  v12[4] = v10;
  return [v10 addNotificationRequest:v8 withCompletionHandler:v12];
}

void sub_10001E850(uint64_t a1, uint64_t a2)
{
  v3 = qword_100071A98;
  if (a2)
  {
    if (os_log_type_enabled(qword_100071A98, OS_LOG_TYPE_ERROR))
    {
      v5 = 138543362;
      v6 = a2;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Failed to post notification because %{public}@", &v5, 0xCu);
    }
  }

  else if (os_log_type_enabled(qword_100071A98, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v5) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Added reminder user notification to notification center", &v5, 2u);
  }
}

void **sub_10001EA7C(void **result)
{
  if (result)
  {
    v1 = result;
    if (!result[3])
    {
      v2 = sub_10003A2C0(result[8], result[10]);
      v3 = v1[9];
      if (v3)
      {
        v4 = v2;
        v5 = sub_100023DB4(v1[9]);
        v6 = sub_100023C20(v3, v5, [v3[3] devices]);
        if (v6)
        {
          v7 = v6;
          v8 = sub_100013A44([RDGizmoStateDatastore alloc], v4);
          v9 = [sub_1000140D4(v8 v7)];
          v1[3] = v9;
          v10 = qword_100071AA0;
          if (os_log_type_enabled(qword_100071AA0, OS_LOG_TYPE_DEFAULT))
          {
            v11 = 134217984;
            v12 = [v9 unsignedIntegerValue];
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Remote device has capabilities: %lu", &v11, 0xCu);
          }
        }
      }
    }

    return [v1[3] unsignedIntegerValue];
  }

  return result;
}

uint64_t sub_10001FF30(uint64_t a1, const char *a2, void *a3)
{
  if ([objc_msgSend(a3 objectForKeyedSubscript:{@"RDGizmoSyncMessageTypeKey", "integerValue"}] == 2)
  {
    sub_100013800(*(a1 + 32), a2);
  }

  return 1;
}

void sub_10001FF84(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if ([*(a1 + 96) containsObject:a2])
    {
      [*(a1 + 96) removeObject:a2];
      if (![*(a1 + 96) count])
      {
        v4 = *(a1 + 72);
        v7[0] = @"RDGizmoSyncMessageTypeKey";
        v7[1] = @"RDGizmoSyncArchiveTransferStatusKey";
        v8[0] = &off_1000652B0;
        v8[1] = [NSNumber numberWithInteger:4];
        v5 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:2];
        if (v4)
        {
          sub_100023F18(v4, v5, *(v4 + 24), 0);
        }

        v6 = *(a1 + 88);
        if (v6)
        {
          v6[7].super.isa = 0;
          sub_100027584(v6);
        }
      }
    }
  }
}

NSDictionary *sub_100020564(NSDictionary *result, char *a2, void *a3, void *a4)
{
  if (result)
  {
    v6 = result;
    v7 = sub_10003A334(a3, a4, result[8].super.isa, result[10].super.isa);
    v8 = sub_100011CFC([RDEncryptingDatastore alloc], v7);
    v9 = sub_10002399C(v6[9].super.isa, a2, a3);
    v10 = sub_100012344(v8, v9);

    if ([(NSDictionary *)v10 count])
    {
      v13[0] = [(NSDictionary *)v10 objectForKeyedSubscript:@"key", @"RDGizmoSyncKeyKey"];
      v12[1] = @"RDGizmoSyncIVKey";
      v13[1] = [(NSDictionary *)v10 objectForKeyedSubscript:@"iv"];
      v13[2] = a2;
      v12[2] = @"RDGizmoSyncSnapshotKey";
      v12[3] = @"RDGizmoSyncSensorIdentifierKey";
      v12[4] = @"RDGizmoSyncMessageTypeKey";
      v13[3] = a3;
      v13[4] = &off_100065268;
      return [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:5];
    }

    else
    {
      v11 = qword_100071AA0;
      if (os_log_type_enabled(qword_100071AA0, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v15 = v9;
        _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Failed to get key from keychain with name %{public}@", buf, 0xCu);
      }

      return &__NSDictionary0__struct;
    }
  }

  return result;
}

void sub_1000211A8(uint64_t a1, void *a2)
{
  if (*(a1 + 64))
  {
    v3 = *(*(*(a1 + 48) + 8) + 40);
    if (!v3)
    {
      v4 = a2;
      v5 = [[NSMutableArray alloc] initWithCapacity:*(a1 + 56)];
      a2 = v4;
      *(*(*(a1 + 48) + 8) + 40) = v5;
      v3 = *(*(*(a1 + 48) + 8) + 40);
    }

    [v3 addObject:a2];
    if ([*(*(*(a1 + 48) + 8) + 40) count] >= *(a1 + 56))
    {
      v6 = *(a1 + 32);
      v7 = *(a1 + 48);
      if (v6)
      {
        v8 = *(*(v7 + 8) + 40);
        v9 = *(a1 + 40);
        v15[0] = @"RDGizmoSyncMessageTypeKey";
        v15[1] = @"RDGizmoSyncKeysKey";
        v16[0] = &off_100065280;
        v16[1] = v8;
        v15[2] = @"RDGizmoSyncSensorIdentifierKey";
        v16[2] = v9;
        v10 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:3];
        v11 = *(v6 + 72);
        if (v11)
        {
          sub_100023F18(v11, v10, *(v11 + 32), 0);
        }

        v7 = *(a1 + 48);
      }

      *(*(*(a1 + 48) + 8) + 40) = 0;
    }
  }

  else
  {
    v12 = *(a1 + 32);
    if (v12)
    {
      v13 = *(v12 + 72);
      if (v13)
      {
        v14 = *(v13 + 32);

        sub_100023F18(v13, a2, v14, 0);
      }
    }
  }
}

BOOL sub_100021350(uint64_t a1, void *a2, void *a3, void *a4)
{
  v8 = sub_10003A334(a3, a4, *(a1 + 64), *(a1 + 80));
  v9 = sub_100011CFC([RDEncryptingDatastore alloc], v8);
  v10 = sub_100012994(v9, a2);

  if (v10)
  {
    v11 = sub_10000E610([RDArchiveableDatastore alloc], &v8->super.isa);
    v12 = sub_100010A54(v11, v10);

    v13 = qword_100071AA0;
    if (os_log_type_enabled(qword_100071AA0, OS_LOG_TYPE_DEBUG))
    {
      v19 = 138543362;
      v20 = v12;
      _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "Created encrypted archive %{public}@", &v19, 0xCu);
    }

    v14 = sub_100020564(a1, [(NSURL *)v12 lastPathComponent], a3, a4);
    if ([(NSDictionary *)v14 count])
    {
      v15 = *(a1 + 72);
      if (v15)
      {
        sub_100023F18(v15, v14, *(v15 + 32), 0);
      }
    }

    else
    {
      v17 = qword_100071AA0;
      if (os_log_type_enabled(qword_100071AA0, OS_LOG_TYPE_ERROR))
      {
        v19 = 138543362;
        v20 = v12;
        _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Failed to get the key for an archive we just encrypted: %{public}@. This is possible (but rare) if the keychain locked just after we encrypted", &v19, 0xCu);
      }
    }
  }

  else
  {
    [objc_msgSend(a1 "analyticsDelegate")];
    v16 = qword_100071AA0;
    if (os_log_type_enabled(qword_100071AA0, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138543362;
      v20 = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Failed to encrypt the archive %{public}@. Will retry on the next unlock", &v19, 0xCu);
    }
  }

  return v10 != 0;
}

void sub_100021ACC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100021AFC(uint64_t a1, void *a2, void *a3)
{
  v6 = [objc_msgSend(a3 objectForKeyedSubscript:{@"RDGizmoSyncMessageTypeKey", "integerValue"}];
  v7 = [a3 objectForKeyedSubscript:@"RDGizmoSyncSamplesURLKey"];
  if (v6 == 9 && [objc_msgSend(*(a1 + 32) "path")])
  {

    *(*(*(a1 + 40) + 8) + 40) = a2;
    [objc_msgSend(a3 objectForKeyedSubscript:{@"RDGizmoSyncGizmoAbsoluteTimeKey", "doubleValue"}];
    *(*(*(a1 + 48) + 8) + 24) = v8;
  }

  return 1;
}

void sub_100021BC0(uint64_t a1)
{
  if (a1)
  {
    v2 = mach_continuous_time();
    if (qword_100071B60 != -1)
    {
      dispatch_once(&qword_100071B60, &stru_100060D90);
    }

    v3 = qword_100071B68;
    v4 = *&qword_100071B70;
    v5 = *&qword_100071B78;
    TMConvertTicksToSeconds();
    v7 = *(a1 + 88);
    if (v7)
    {
      v8 = *(v7 + 56);
    }

    else
    {
      v8 = 0.0;
    }

    if (v3 < v2)
    {
      v6 = -v6;
    }

    if (v6 - (v4 + v5) + v8 < 60.0)
    {
      v9 = mach_continuous_time();
      if (qword_100071B60 != -1)
      {
        dispatch_once(&qword_100071B60, &stru_100060D90);
      }

      v10 = qword_100071B68;
      v11 = *&qword_100071B70;
      v12 = *&qword_100071B78;
      TMConvertTicksToSeconds();
      v14 = v13;
      v15 = sub_10002B4B8(*(a1 + 80));
      v16 = *(a1 + 88);
      if (v16)
      {
        v17 = -v14;
        if (v10 < v9)
        {
          v17 = v14;
        }

        *(v16 + 56) = v12 + v11 + v17 + v15;
        sub_100027584(v16);
      }

      v18 = *(a1 + 72);
      v20[0] = @"RDGizmoSyncMessageTypeKey";
      v20[1] = @"RDGizmoSyncArchiveTransferStatusKey";
      v21[0] = &off_1000652B0;
      v21[1] = [NSNumber numberWithInteger:3];
      v19 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:2];
      if (v18)
      {
        sub_100023F18(v18, v19, *(v18 + 24), 0);
      }
    }
  }
}

RDXPCActivity *sub_100022310(uint64_t a1, uint64_t a2)
{
  objc_opt_self();
  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v3, XPC_ACTIVITY_COMMUNICATES_WITH_PAIRED_DEVICE, 1);
  xpc_dictionary_set_string(v3, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_MAINTENANCE);
  v4 = sub_10002A3D4(a2);
  xpc_dictionary_set_int64(v3, XPC_ACTIVITY_INTERVAL, v4);
  xpc_dictionary_set_string(v3, XPC_ACTIVITY_GROUP_NAME, "com.apple.sensorkitd.startup.group");
  xpc_dictionary_set_uint64(v3, XPC_ACTIVITY_GROUP_CONCURRENCY_LIMIT, 1uLL);
  objc_opt_self();
  v5 = [[RDXPCActivity alloc] initWithName:@"com.apple.sensorkit.updateCompanionWithSamples" criteria:v3];
  xpc_release(v3);
  return v5;
}

RDXPCActivity *sub_100022414(uint64_t a1, id *a2)
{
  objc_opt_self();
  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v3, XPC_ACTIVITY_ALLOW_BATTERY, 1);
  v4 = XPC_ACTIVITY_CPU_INTENSIVE;
  v5 = sub_10002A62C(a2);
  xpc_dictionary_set_BOOL(v3, v4, v5);
  v6 = XPC_ACTIVITY_DISK_INTENSIVE;
  v7 = sub_10002A614(a2);
  xpc_dictionary_set_BOOL(v3, v6, v7);
  xpc_dictionary_set_BOOL(v3, XPC_ACTIVITY_REQUIRES_CLASS_A, 1);
  xpc_dictionary_set_string(v3, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_MAINTENANCE);
  v8 = sub_10002A4F4(a2);
  xpc_dictionary_set_int64(v3, XPC_ACTIVITY_INTERVAL, v8);
  xpc_dictionary_set_string(v3, XPC_ACTIVITY_GROUP_NAME, "com.apple.sensorkitd.startup.group");
  xpc_dictionary_set_uint64(v3, XPC_ACTIVITY_GROUP_CONCURRENCY_LIMIT, 1uLL);
  objc_opt_self();
  v9 = [[RDXPCActivity alloc] initWithName:@"com.apple.sensorkit.prepareArchives" criteria:v3];
  xpc_release(v3);
  return v9;
}

RDXPCActivity *sub_100022578()
{
  objc_opt_self();
  v0 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v0, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_MAINTENANCE);
  xpc_dictionary_set_int64(v0, XPC_ACTIVITY_INTERVAL, XPC_ACTIVITY_INTERVAL_1_DAY);
  xpc_dictionary_set_string(v0, XPC_ACTIVITY_GROUP_NAME, "com.apple.sensorkitd.startup.group");
  xpc_dictionary_set_uint64(v0, XPC_ACTIVITY_GROUP_CONCURRENCY_LIMIT, 1uLL);
  objc_opt_self();
  v1 = [[RDXPCActivity alloc] initWithName:@"com.apple.sensorkit.removeOldData" criteria:v0];
  xpc_release(v0);
  return v1;
}

RDXPCActivity *sub_100022654()
{
  objc_opt_self();
  v0 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v0, XPC_ACTIVITY_ALLOW_BATTERY, 1);
  xpc_dictionary_set_BOOL(v0, XPC_ACTIVITY_REQUIRES_CLASS_A, 1);
  xpc_dictionary_set_string(v0, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_MAINTENANCE);
  xpc_dictionary_set_int64(v0, XPC_ACTIVITY_INTERVAL, XPC_ACTIVITY_INTERVAL_1_DAY);
  xpc_dictionary_set_string(v0, XPC_ACTIVITY_GROUP_NAME, "com.apple.sensorkitd.startup.group");
  xpc_dictionary_set_uint64(v0, XPC_ACTIVITY_GROUP_CONCURRENCY_LIMIT, 1uLL);
  objc_opt_self();
  v1 = [[RDXPCActivity alloc] initWithName:@"com.apple.sensorkit.gcKeys" criteria:v0];
  xpc_release(v0);
  return v1;
}

RDXPCActivity *sub_100022760()
{
  objc_opt_self();
  v0 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v0, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_MAINTENANCE);
  xpc_dictionary_set_int64(v0, XPC_ACTIVITY_INTERVAL, XPC_ACTIVITY_INTERVAL_1_DAY);
  xpc_dictionary_set_string(v0, XPC_ACTIVITY_GROUP_NAME, "com.apple.sensorkitd.startup.group");
  xpc_dictionary_set_uint64(v0, XPC_ACTIVITY_GROUP_CONCURRENCY_LIMIT, 1uLL);
  objc_opt_self();
  v1 = [[RDXPCActivity alloc] initWithName:@"com.apple.sensorkit.postMetric" criteria:v0];
  xpc_release(v0);
  return v1;
}

RDXPCActivity *sub_10002283C()
{
  objc_opt_self();
  v0 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v0, XPC_ACTIVITY_ALLOW_BATTERY, 1);
  xpc_dictionary_set_string(v0, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_MAINTENANCE);
  xpc_dictionary_set_int64(v0, XPC_ACTIVITY_INTERVAL, XPC_ACTIVITY_INTERVAL_15_MIN);
  xpc_dictionary_set_BOOL(v0, XPC_ACTIVITY_REQUIRES_CLASS_A, 1);
  xpc_dictionary_set_BOOL(v0, XPC_ACTIVITY_REPEATING, 1);
  objc_opt_self();
  v1 = [[RDXPCActivity alloc] initWithName:@"com.apple.sensorkit.launchAlsRecorder" criteria:v0];
  xpc_release(v0);
  return v1;
}

RDXPCActivity *sub_10002292C()
{
  objc_opt_self();
  v0 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v0, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_MAINTENANCE);
  xpc_dictionary_set_int64(v0, XPC_ACTIVITY_INTERVAL, XPC_ACTIVITY_INTERVAL_1_DAY);
  xpc_dictionary_set_BOOL(v0, XPC_ACTIVITY_ALLOW_BATTERY, 1);
  objc_opt_self();
  v1 = [[RDXPCActivity alloc] initWithName:@"com.apple.sensorkit.launchUsageCollector" criteria:v0];
  xpc_release(v0);
  return v1;
}

RDXPCActivity *sub_1000229EC()
{
  objc_opt_self();
  v0 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v0, XPC_ACTIVITY_ALLOW_BATTERY, 1);
  xpc_dictionary_set_string(v0, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_MAINTENANCE);
  xpc_dictionary_set_int64(v0, XPC_ACTIVITY_INTERVAL, XPC_ACTIVITY_INTERVAL_1_DAY);
  objc_opt_self();
  v1 = [[RDXPCActivity alloc] initWithName:@"com.apple.sensorkit.fetchStrideCalibration" criteria:v0];
  xpc_release(v0);
  return v1;
}

RDXPCActivity *sub_100022AAC()
{
  objc_opt_self();
  v0 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v0, XPC_ACTIVITY_ALLOW_BATTERY, 1);
  xpc_dictionary_set_string(v0, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_MAINTENANCE);
  xpc_dictionary_set_int64(v0, XPC_ACTIVITY_INTERVAL, XPC_ACTIVITY_INTERVAL_1_DAY);
  xpc_dictionary_set_BOOL(v0, XPC_ACTIVITY_REQUIRES_CLASS_A, 1);
  objc_opt_self();
  v1 = [[RDXPCActivity alloc] initWithName:@"com.apple.sensorkit.fetchVisits" criteria:v0];
  xpc_release(v0);
  return v1;
}

RDXPCActivity *sub_100022B84()
{
  objc_opt_self();
  v0 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v0, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_MAINTENANCE);
  xpc_dictionary_set_int64(v0, XPC_ACTIVITY_INTERVAL, XPC_ACTIVITY_INTERVAL_1_DAY);
  objc_opt_self();
  v1 = [[RDXPCActivity alloc] initWithName:@"com.apple.sensorkit.launchMediaEventsRecorder" criteria:v0];
  xpc_release(v0);
  return v1;
}

RDXPCActivity *sub_100022C2C()
{
  objc_opt_self();
  v0 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v0, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_MAINTENANCE);
  xpc_dictionary_set_int64(v0, XPC_ACTIVITY_INTERVAL, XPC_ACTIVITY_INTERVAL_1_DAY);
  objc_opt_self();
  v1 = [[RDXPCActivity alloc] initWithName:@"com.apple.sensorkit.launchAcousticSettingsCollector" criteria:v0];
  xpc_release(v0);
  return v1;
}

RDXPCActivity *sub_100022CD4()
{
  objc_opt_self();
  v0 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v0, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_MAINTENANCE);
  xpc_dictionary_set_int64(v0, XPC_ACTIVITY_INTERVAL, XPC_ACTIVITY_INTERVAL_1_DAY);
  objc_opt_self();
  v1 = [[RDXPCActivity alloc] initWithName:@"com.apple.sensorkit.launchSleepSessionsCollector" criteria:v0];
  xpc_release(v0);
  return v1;
}

RDXPCActivity *sub_100022D7C()
{
  objc_opt_self();
  v0 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v0, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_MAINTENANCE);
  xpc_dictionary_set_int64(v0, XPC_ACTIVITY_INTERVAL, XPC_ACTIVITY_INTERVAL_1_DAY);
  objc_opt_self();
  v1 = [[RDXPCActivity alloc] initWithName:@"com.apple.sensorkit.launchPhoneUsageCollector" criteria:v0];
  xpc_release(v0);
  return v1;
}

RDXPCActivity *sub_100022E24()
{
  objc_opt_self();
  v0 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v0, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_MAINTENANCE);
  xpc_dictionary_set_int64(v0, XPC_ACTIVITY_INTERVAL, XPC_ACTIVITY_INTERVAL_1_DAY);
  objc_opt_self();
  v1 = [[RDXPCActivity alloc] initWithName:@"com.apple.sensorkit.launchMessagesUsageCollector" criteria:v0];
  xpc_release(v0);
  return v1;
}

RDXPCActivity *sub_100022ECC()
{
  objc_opt_self();
  v0 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v0, XPC_ACTIVITY_ALLOW_BATTERY, 1);
  xpc_dictionary_set_string(v0, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_MAINTENANCE);
  xpc_dictionary_set_int64(v0, XPC_ACTIVITY_INTERVAL, XPC_ACTIVITY_INTERVAL_8_HOURS);
  xpc_dictionary_set_BOOL(v0, XPC_ACTIVITY_REQUIRES_CLASS_A, 1);
  objc_opt_self();
  v1 = [[RDXPCActivity alloc] initWithName:@"com.apple.sensorkit.decryptArchives" criteria:v0];
  xpc_release(v0);
  return v1;
}

RDXPCActivity *sub_100022FA4(uint64_t a1, uint64_t a2)
{
  objc_opt_self();
  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v3, XPC_ACTIVITY_ALLOW_BATTERY, 1);
  xpc_dictionary_set_string(v3, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_MAINTENANCE);
  xpc_dictionary_set_BOOL(v3, XPC_ACTIVITY_REQUIRES_CLASS_A, 1);
  xpc_dictionary_set_BOOL(v3, XPC_ACTIVITY_COMMUNICATES_WITH_PAIRED_DEVICE, 1);
  v4 = sub_10002A644(a2);
  xpc_dictionary_set_int64(v3, XPC_ACTIVITY_INTERVAL, v4);
  v5 = sub_10002A644(a2);
  xpc_dictionary_set_int64(v3, XPC_ACTIVITY_GRACE_PERIOD, 2 * v5);
  xpc_dictionary_set_string(v3, XPC_ACTIVITY_GROUP_NAME, "com.apple.sensorkitd.startup.group");
  xpc_dictionary_set_uint64(v3, XPC_ACTIVITY_GROUP_CONCURRENCY_LIMIT, 1uLL);
  objc_opt_self();
  v6 = [[RDXPCActivity alloc] initWithName:@"com.apple.sensorkit.syncCompanionStateToGizmo" criteria:v3];
  xpc_release(v3);
  return v6;
}

RDXPCActivity *sub_1000230FC(uint64_t a1, uint64_t a2)
{
  objc_opt_self();
  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v3, XPC_ACTIVITY_ALLOW_BATTERY, 1);
  xpc_dictionary_set_string(v3, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_MAINTENANCE);
  xpc_dictionary_set_BOOL(v3, XPC_ACTIVITY_COMMUNICATES_WITH_PAIRED_DEVICE, 1);
  v4 = sub_10002A644(a2);
  xpc_dictionary_set_int64(v3, XPC_ACTIVITY_INTERVAL, 2 * v4);
  xpc_dictionary_set_string(v3, XPC_ACTIVITY_GROUP_NAME, "com.apple.sensorkitd.startup.group");
  xpc_dictionary_set_uint64(v3, XPC_ACTIVITY_GROUP_CONCURRENCY_LIMIT, 1uLL);
  objc_opt_self();
  v5 = [[RDXPCActivity alloc] initWithName:@"com.apple.sensorkit.syncCompanionStateToGizmoLocked" criteria:v3];
  xpc_release(v3);
  return v5;
}

void sub_100023440(uint64_t a1, xpc_activity_state_t a2)
{
  if (a1 && !xpc_activity_set_state(*(a1 + 24), a2))
  {
    v4 = qword_100071AA8;
    if (os_log_type_enabled(qword_100071AA8, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 8);
      v6 = 138543618;
      v7 = v5;
      v8 = 2050;
      v9 = a2;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Failed to mark the activity %{public}@ as %{public}ld", &v6, 0x16u);
    }
  }
}

void sub_100023664(uint64_t a1)
{
  if (a1)
  {
    v2 = qword_100071AA8;
    if (os_log_type_enabled(qword_100071AA8, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 8);
      v4 = 138543362;
      v5 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Unregistering for XPC Activity %{public}@", &v4, 0xCu);
    }

    xpc_activity_unregister([*(a1 + 8) UTF8String]);
  }
}

void *sub_1000237EC(void *a1, void *a2, void *a3, NSObject *a4, uint64_t a5)
{
  v5 = a1;
  if (a1)
  {
    v10 = [[IDSService alloc] initWithService:@"com.apple.private.alloy.sensorkit"];
    v11 = [[IDSService alloc] initWithService:@"com.apple.private.alloy.sensorkitkeys"];
    v16.receiver = v5;
    v16.super_class = RDGizmoSyncService;
    v12 = objc_msgSendSuper2(&v16, "init");
    v5 = v12;
    if (v12)
    {
      v12[1] = a4;
      v12[2] = a5;
      dispatch_retain(a4);
      v5[5] = a3;
      v5[6] = a2;
      v5[7] = +[NSHashTable weakObjectsHashTable];
      v13 = v10;
      v5[3] = v13;
      [v13 addDelegate:v5 queue:a4];
      v14 = v11;
      v5[4] = v14;
      [v14 addDelegate:v5 queue:a4];
    }
  }

  return v5;
}

const __CFString *sub_10002399C(uint64_t a1, char *a2, void *a3)
{
  if (!a1)
  {
    return 0;
  }

  v4 = sub_10003A334(a3, 0, *(a1 + 48), *(a1 + 40));
  v5 = sub_100011CFC([RDEncryptingDatastore alloc], v4);
  v6 = sub_10001206C(v5, a2);
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = &stru_100062328;
  }

  return v7;
}

id *sub_100023A24(id *result, uint64_t a2)
{
  if (result)
  {
    v3 = result;
    v4 = qword_100071AB0;
    if (os_log_type_enabled(qword_100071AB0, OS_LOG_TYPE_DEFAULT))
    {
      v5[0] = 67240192;
      v5[1] = a2;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Setting prefer infra wifi to %{public, BOOL}d", v5, 8u);
    }

    return [v3[3] setPreferInfraWiFi:a2];
  }

  return result;
}

void *sub_100023AE0(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = [*(a1 + 24) devices];
  v2 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = *v9;
LABEL_5:
  v5 = 0;
  while (1)
  {
    if (*v9 != v4)
    {
      objc_enumerationMutation(v1);
    }

    v6 = *(*(&v8 + 1) + 8 * v5);
    if ([v6 isLocallyPaired])
    {
      if ([v6 isActive] && ((objc_opt_respondsToSelector() & 1) == 0 || (objc_msgSend(v6, "relationship") & 2) == 0))
      {
        return v6;
      }
    }

    if (v3 == ++v5)
    {
      v3 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (!v3)
      {
        return 0;
      }

      goto LABEL_5;
    }
  }
}

id sub_100023C20(id result, uint64_t a2, void *a3)
{
  if (result)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    result = [a3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (result)
    {
      v5 = result;
      v6 = *v12;
      while (2)
      {
        v7 = 0;
        do
        {
          if (*v12 != v6)
          {
            objc_enumerationMutation(a3);
          }

          v8 = *(*(&v11 + 1) + 8 * v7);
          v9 = IDSCopyIDForDevice();
          v10 = [v9 isEqualToString:a2];

          if (v10)
          {
            return sub_100028414(RDDeviceInfo, v8, a2);
          }

          v7 = v7 + 1;
        }

        while (v5 != v7);
        result = [a3 countByEnumeratingWithState:&v11 objects:v15 count:16];
        v5 = result;
        if (result)
        {
          continue;
        }

        break;
      }
    }
  }

  return result;
}

NSDictionary *sub_100023D50(NSDictionary *result)
{
  if (result)
  {
    p_isa = &result->super.isa;
    v2 = sub_100023DB4(result);
    v3 = sub_100023C20(p_isa, v2, [p_isa[3] devices]);

    return sub_100027DC8(RDDeviceInfo, v3);
  }

  return result;
}

id sub_100023DB4(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = sub_100023AE0(a1);
  if (!v1)
  {
    v5 = qword_100071AB0;
    if (os_log_type_enabled(qword_100071AB0, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v7) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "No paired device found to send snapshot.", &v7, 2u);
    }

    return 0;
  }

  v2 = v1;
  v3 = IDSCopyIDForDevice();
  if (!v3)
  {
    v6 = qword_100071AB0;
    if (os_log_type_enabled(qword_100071AB0, OS_LOG_TYPE_ERROR))
    {
      v7 = 138543362;
      v8 = v2;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Failed to get device id from IDS for %{public}@", &v7, 0xCu);
    }

    return 0;
  }

  return v3;
}

void sub_100023F18(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a1)
  {
    v8 = sub_100023DB4(a1);
    if (!v8)
    {
      v22 = qword_100071AB0;
      if (!os_log_type_enabled(qword_100071AB0, OS_LOG_TYPE_INFO))
      {
        return;
      }

      *buf = 0;
      v19 = "No connected device found. Ignoring message.";
      v20 = v22;
      v21 = 2;
      goto LABEL_18;
    }

    v9 = [NSSet setWithObject:v8];
    v10 = sub_10001BD40(a2);
    v32 = 0;
    v33 = 0;
    v31 = [a3 sendMessage:v10 toDestinations:v9 priority:300 options:a4 identifier:&v32 error:&v33];
    v11 = v32;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v12 = *(a1 + 56);
    v13 = [v12 countByEnumeratingWithState:&v34 objects:buf count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v35;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v35 == v15)
          {
            v17 = *(*(&v34 + 1) + 8 * i);
            if ((objc_opt_respondsToSelector() & 1) == 0)
            {
              continue;
            }
          }

          else
          {
            objc_enumerationMutation(v12);
            v17 = *(*(&v34 + 1) + 8 * i);
            if ((objc_opt_respondsToSelector() & 1) == 0)
            {
              continue;
            }
          }

          [v17 service:a1 didRequestToSendIDSMessage:v10 withIDSIdentifier:v11];
        }

        v14 = [v12 countByEnumeratingWithState:&v34 objects:buf count:16];
      }

      while (v14);
    }

    v18 = qword_100071AB0;
    if (v31)
    {
      if (!os_log_type_enabled(qword_100071AB0, OS_LOG_TYPE_INFO))
      {
        return;
      }

      *buf = 138478083;
      v39 = v10;
      v40 = 2114;
      v41 = v32;
      v19 = "Sent message %{private}@ with identifier %{public}@";
      v20 = v18;
      v21 = 22;
LABEL_18:
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, v19, buf, v21);
      return;
    }

    if (os_log_type_enabled(qword_100071AB0, OS_LOG_TYPE_ERROR))
    {
      *buf = 138478083;
      v39 = v10;
      v40 = 2114;
      v41 = v33;
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Failed to send message %{private}@ immediately. %{public}@", buf, 0x16u);
    }

    v23 = v32;
    v24 = v33;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v25 = *(a1 + 56);
    v26 = [v25 countByEnumeratingWithState:&v34 objects:buf count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v35;
      do
      {
        for (j = 0; j != v27; j = j + 1)
        {
          if (*v35 == v28)
          {
            v30 = *(*(&v34 + 1) + 8 * j);
            if ((objc_opt_respondsToSelector() & 1) == 0)
            {
              continue;
            }
          }

          else
          {
            objc_enumerationMutation(v25);
            v30 = *(*(&v34 + 1) + 8 * j);
            if ((objc_opt_respondsToSelector() & 1) == 0)
            {
              continue;
            }
          }

          [v30 service:a1 didFailIDSMessage:v10 IDSIdentifier:v23 withError:v24];
        }

        v27 = [v25 countByEnumeratingWithState:&v34 objects:buf count:16];
      }

      while (v27);
    }
  }
}

void sub_1000242A0(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!a1)
  {
    return;
  }

  v10 = sub_100023DB4(a1);
  if (!v10)
  {
    return;
  }

  v36 = 0;
  v37 = 0;
  v11 = [*(a1 + 24) sendResourceAtURL:a2 metadata:a4 toDestinations:+[NSSet setWithObject:](NSSet priority:"setWithObject:" options:v10) identifier:sub_10002B348(*(a1 + 40)) error:{a5, &v37, &v36}];
  v12 = [a2 path];
  v13 = sub_10003A334(a3, 0, *(a1 + 48), *(a1 + 40));
  v14 = sub_100011CFC([RDEncryptingDatastore alloc], v13);
  v15 = sub_10001206C(v14, v12);
  if (v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = &stru_100062328;
  }

  if ((v11 & 1) == 0)
  {
    v26 = v36;
    v25 = v37;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v27 = *(a1 + 56);
    v28 = [v27 countByEnumeratingWithState:&v38 objects:buf count:16];
    if (!v28)
    {
LABEL_29:
      v33 = qword_100071AB0;
      if (os_log_type_enabled(qword_100071AB0, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v43 = a2;
        v44 = 2114;
        v45 = v36;
        _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "Failed to send resource %{public}@. %{public}@", buf, 0x16u);
      }

      return;
    }

    v29 = v28;
    v30 = *v39;
LABEL_22:
    v31 = 0;
    while (1)
    {
      if (*v39 == v30)
      {
        v32 = *(*(&v38 + 1) + 8 * v31);
        if (objc_opt_respondsToSelector())
        {
          goto LABEL_28;
        }
      }

      else
      {
        objc_enumerationMutation(v27);
        v32 = *(*(&v38 + 1) + 8 * v31);
        if (objc_opt_respondsToSelector())
        {
LABEL_28:
          [v32 service:a1 didFailResource:a2 IDSIdentifier:v25 keyName:v16 sensor:a3 withError:v26];
        }
      }

      if (v29 == ++v31)
      {
        v29 = [v27 countByEnumeratingWithState:&v38 objects:buf count:16];
        if (!v29)
        {
          goto LABEL_29;
        }

        goto LABEL_22;
      }
    }
  }

  v17 = qword_100071AB0;
  if (os_log_type_enabled(qword_100071AB0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v43 = a2;
    v44 = 2114;
    v45 = v37;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Sent resource %{public}@ with identifier %{public}@", buf, 0x16u);
  }

  v18 = v37;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v19 = *(a1 + 56);
  v20 = [v19 countByEnumeratingWithState:&v38 objects:buf count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v39;
    do
    {
      for (i = 0; i != v21; i = i + 1)
      {
        if (*v39 == v22)
        {
          v24 = *(*(&v38 + 1) + 8 * i);
          if ((objc_opt_respondsToSelector() & 1) == 0)
          {
            continue;
          }
        }

        else
        {
          objc_enumerationMutation(v19);
          v24 = *(*(&v38 + 1) + 8 * i);
          if ((objc_opt_respondsToSelector() & 1) == 0)
          {
            continue;
          }
        }

        [v24 service:a1 didRequestToSendResource:a2 withIDSIdentifier:v18 keyName:v16 sensor:a3 isRetry:a6];
      }

      v21 = [v19 countByEnumeratingWithState:&v38 objects:buf count:16];
    }

    while (v21);
  }
}

void *sub_100025A68(void *a1, void *a2, void *a3, void *a4)
{
  if (!a1)
  {
    return 0;
  }

  v10.receiver = a1;
  v10.super_class = RDLaunchEvents;
  v7 = objc_msgSendSuper2(&v10, "init");
  if (v7)
  {
    v7[4] = a3;
    v7[3] = a4;
    objc_setProperty_nonatomic(v7, v8, a2, 16);
  }

  return v7;
}

RDXPCActivity *sub_100025B80(uint64_t a1, void *a2)
{
  if (!a1)
  {
    return 0;
  }

  if ([a2 isEqualToString:@"com.apple.sensorkit.updateCompanionWithSamples"])
  {
    v4 = *(a1 + 24);

    return sub_100022310(RDXPCActivity, v4);
  }

  if ([a2 isEqualToString:@"com.apple.sensorkit.removeOldData"])
  {

    return sub_100022578();
  }

  if ([a2 isEqualToString:@"com.apple.sensorkit.postMetric"])
  {

    return sub_100022760();
  }

  if ([a2 isEqualToString:@"com.apple.sensorkit.launchAlsRecorder"])
  {

    return sub_10002283C();
  }

  if ([a2 isEqualToString:@"com.apple.sensorkit.launchUsageCollector"])
  {

    return sub_10002292C();
  }

  if ([a2 isEqualToString:@"com.apple.sensorkit.launchPhoneUsageCollector"])
  {

    return sub_100022D7C();
  }

  if ([a2 isEqualToString:@"com.apple.sensorkit.launchMessagesUsageCollector"])
  {

    return sub_100022E24();
  }

  if ([a2 isEqualToString:@"com.apple.sensorkit.fetchStrideCalibration"])
  {

    return sub_1000229EC();
  }

  if ([a2 isEqualToString:@"com.apple.sensorkit.fetchVisits"])
  {

    return sub_100022AAC();
  }

  if ([a2 isEqualToString:@"com.apple.sensorkit.decryptArchives"])
  {

    return sub_100022ECC();
  }

  if ([a2 isEqualToString:@"com.apple.sensorkit.syncCompanionStateToGizmo"])
  {
    v6 = *(a1 + 24);

    return sub_100022FA4(RDXPCActivity, v6);
  }

  if ([a2 isEqualToString:@"com.apple.sensorkit.syncCompanionStateToGizmoLocked"])
  {
    v7 = *(a1 + 24);

    return sub_1000230FC(RDXPCActivity, v7);
  }

  if ([a2 isEqualToString:@"com.apple.sensorkit.prepareArchives"])
  {
    v8 = *(a1 + 24);

    return sub_100022414(RDXPCActivity, v8);
  }

  if ([a2 isEqualToString:@"com.apple.sensorkit.gcKeys"])
  {

    return sub_100022654();
  }

  if ([a2 isEqualToString:@"com.apple.sensorkit.launchMediaEventsRecorder"])
  {

    return sub_100022B84();
  }

  if ([a2 isEqualToString:@"com.apple.sensorkit.launchAcousticSettingsCollector"])
  {

    return sub_100022C2C();
  }

  if (![a2 isEqualToString:@"com.apple.sensorkit.launchSleepSessionsCollector"])
  {
    return 0;
  }

  return sub_100022CD4();
}

void sub_100025F74(uint64_t a1)
{
  v1[0] = _NSConcreteStackBlock;
  v1[1] = 3221225472;
  v1[2] = sub_100025FF8;
  v1[3] = &unk_100061308;
  v2 = *(a1 + 32);
  _os_activity_initiate(&_mh_execute_header, "Running XPC Activity", OS_ACTIVITY_FLAG_DEFAULT, v1);
}

void sub_100026288(uint64_t a1, _xpc_activity_s *a2)
{
  v4 = objc_autoreleasePoolPush();
  Weak = objc_loadWeak((a1 + 40));
  if (!Weak)
  {
    goto LABEL_34;
  }

  v6 = Weak;
  v7 = *(a1 + 32);
  state = xpc_activity_get_state(a2);
  v10 = sub_100025B80(v6, v7);
  if (v10 || (v11 = qword_100071AC0, !os_log_type_enabled(qword_100071AC0, OS_LOG_TYPE_FAULT)))
  {
    if (state != 2)
    {
      goto LABEL_5;
    }

LABEL_21:
    if (v10)
    {
      objc_setProperty_nonatomic(v10, v9, a2, 24);
    }

    v19 = objc_loadWeak((v6 + 8));
    if (v19)
    {
      v20 = v19;
      if (objc_opt_respondsToSelector())
      {
        sub_100023440(v10, 4);
        v21 = *(v6 + 16);
        *v28 = _NSConcreteStackBlock;
        *&v28[8] = 3221225472;
        *&v28[16] = sub_100025F74;
        v29 = &unk_100061308;
        v30 = v20;
        v31 = v10;
        dispatch_async(v21, v28);
        goto LABEL_34;
      }

      v27 = qword_100071AC0;
      if (!os_log_type_enabled(qword_100071AC0, OS_LOG_TYPE_INFO))
      {
        goto LABEL_33;
      }

      *v28 = 0;
      v24 = "Delegate does not support receiving launch events based on XPC activities";
      v25 = v27;
      v26 = 2;
    }

    else
    {
      v22 = qword_100071AC0;
      if (!os_log_type_enabled(qword_100071AC0, OS_LOG_TYPE_INFO))
      {
LABEL_33:
        [(RDXPCActivity *)v10 markCompleted:*v28];
        goto LABEL_34;
      }

      if (v10)
      {
        name = v10->_name;
      }

      else
      {
        name = 0;
      }

      *v28 = 138543362;
      *&v28[4] = name;
      v24 = "No delegate available to run xpc activity %{public}@";
      v25 = v22;
      v26 = 12;
    }

    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, v24, v28, v26);
    goto LABEL_33;
  }

  *v28 = 138543362;
  *&v28[4] = v7;
  _os_log_fault_impl(&_mh_execute_header, v11, OS_LOG_TYPE_FAULT, "Failed to create and activity named %{public}@", v28, 0xCu);
  if (state == 2)
  {
    goto LABEL_21;
  }

LABEL_5:
  if (state)
  {
    v17 = qword_100071AC0;
    if (os_log_type_enabled(qword_100071AC0, OS_LOG_TYPE_DEBUG))
    {
      if (v10)
      {
        v18 = v10->_name;
      }

      else
      {
        v18 = 0;
      }

      *v28 = 134349314;
      *&v28[4] = state;
      *&v28[12] = 2114;
      *&v28[14] = v18;
      _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "Unexpected xpc activity state %{public}ld for activity %{public}@", v28, 0x16u);
    }
  }

  else
  {
    v12 = qword_100071AC0;
    if (os_log_type_enabled(qword_100071AC0, OS_LOG_TYPE_DEFAULT))
    {
      if (v10)
      {
        v13 = v10->_name;
      }

      else
      {
        v13 = 0;
      }

      *v28 = 138543362;
      *&v28[4] = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Checking in for %{public}@", v28, 0xCu);
    }

    if (v10)
    {
      v14 = xpc_activity_copy_criteria(a2);
      v15 = v14;
      if (!v14 || !xpc_equal(v14, v10->_criteria))
      {
        xpc_activity_set_criteria(a2, v10->_criteria);
      }

      v16 = objc_loadWeak((v6 + 8));
      if (objc_opt_respondsToSelector())
      {
        [v16 launchEventCheckInActivity:v10];
      }
    }

    else
    {
      objc_loadWeak((v6 + 8));
    }
  }

LABEL_34:

  objc_autoreleasePoolPop(v4);
}

void sub_100026898(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000268C8(uint64_t a1, uint64_t a2)
{
  Weak = objc_loadWeak((a1 + 32));
  if (Weak)
  {
    v4 = objc_loadWeak(Weak + 1);
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      return;
    }
  }

  else
  {
    v4 = 0;
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      return;
    }
  }

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100026998;
  v5[3] = &unk_100061308;
  v5[4] = v4;
  v5[5] = a2;
  _os_activity_initiate(&_mh_execute_header, "Running XPC Event Handler", OS_ACTIVITY_FLAG_DEFAULT, v5);
}

void sub_100026998(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) launchEventXPCEventReceived:*(a1 + 40)];

  objc_autoreleasePoolPop(v2);
}

id sub_100026A40(void *a1, void *a2, void *a3)
{
  if (!a1)
  {
    return 0;
  }

  v50.receiver = a1;
  v50.super_class = RDStateCache;
  v5 = objc_msgSendSuper2(&v50, "init");
  if (v5)
  {
    v49 = 0.0;
    *(v5 + 11) = a2;
    *(v5 + 13) = a3;
    v6 = sub_10001B44C(*(v5 + 11));
    v7 = [[NSDictionary alloc] initWithContentsOfURL:v6 error:&v49];
    if (v7)
    {
      sub_100027000(v5, v7);
      v8 = *(v5 + 12);
      if (v8)
      {
        goto LABEL_5;
      }

LABEL_9:
      v10 = *(v5 + 2);
      v11 = mach_continuous_time();
      if (qword_100071B60 != -1)
      {
        dispatch_once(&qword_100071B60, &stru_100060D90);
      }

      v12 = qword_100071B68;
      v13 = *&qword_100071B70;
      v14 = *&qword_100071B78;
      TMConvertTicksToSeconds();
      if (v12 >= v11)
      {
        v15 = -v15;
      }

      v16 = [NSNumber numberWithInt:v10 > v14 + v13 + v15];
      objc_setProperty_nonatomic(v5, v17, v16, 96);
      if (([*(v5 + 12) BOOLValue] & 1) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_14;
    }

    v9 = qword_100071AC8;
    if (os_log_type_enabled(qword_100071AC8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v61 = *&v6;
      v62 = 2114;
      v63 = v49;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Unable to initialize cache from %{public}@ because %{public}@", buf, 0x16u);
      sub_100027000(v5, 0);
      v8 = *(v5 + 12);
      if (!v8)
      {
        goto LABEL_9;
      }
    }

    else
    {
      sub_100027000(v5, 0);
      v8 = *(v5 + 12);
      if (!v8)
      {
        goto LABEL_9;
      }
    }

LABEL_5:
    if (![v8 BOOLValue])
    {
LABEL_40:
      v41 = *(v5 + 4);
      if (v41 != 0.0)
      {
        v42 = qword_100071AC8;
        if (os_log_type_enabled(qword_100071AC8, OS_LOG_TYPE_FAULT))
        {
          v44 = mach_continuous_time();
          if (qword_100071B60 != -1)
          {
            dispatch_once(&qword_100071B60, &stru_100060D90);
          }

          v45 = qword_100071B68;
          v46 = *&qword_100071B70;
          v47 = *&qword_100071B78;
          TMConvertTicksToSeconds();
          if (v45 >= v44)
          {
            v48 = -v48;
          }

          *buf = 134349312;
          v61 = v41;
          v62 = 2050;
          v63 = v47 + v46 + v48;
          _os_log_fault_impl(&_mh_execute_header, v42, OS_LOG_TYPE_FAULT, "Phone has a cached timeSyncTimestamp of (%{public}f, now: %{public}f) which should not happen", buf, 0x16u);
        }

        *(v5 + 4) = 0;
        sub_100027584(v5);
      }

      return v5;
    }

LABEL_14:
    v18 = qword_100071AC8;
    if (os_log_type_enabled(qword_100071AC8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "System went through an RTC reset. Resetting cached timestamps.", buf, 2u);
    }

    *(v5 + 1) = 0;
    *(v5 + 4) = 0;
    *(v5 + 5) = 0;
    *(v5 + 7) = 0;
    *(v5 + 8) = 0;
    v19 = +[NSMutableSet set];
    v20 = *(v5 + 6);
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v21 = [*(v5 + 13) readerAuthorizationGroups];
    v22 = [v21 countByEnumeratingWithState:&v55 objects:buf count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v56;
      do
      {
        for (i = 0; i != v23; i = i + 1)
        {
          if (*v56 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = *(*(&v55 + 1) + 8 * i);
          if ([v20 objectForKeyedSubscript:v26])
          {
            [v19 addObject:v26];
          }
        }

        v23 = [v21 countByEnumeratingWithState:&v55 objects:buf count:16];
      }

      while (v23);
    }

    v27 = mach_continuous_time();
    if (qword_100071B60 != -1)
    {
      dispatch_once(&qword_100071B60, &stru_100060D90);
    }

    v28 = qword_100071B68;
    v29 = *&qword_100071B70;
    v30 = *&qword_100071B78;
    TMConvertTicksToSeconds();
    if (v28 >= v27)
    {
      v32 = -v31;
    }

    else
    {
      v32 = v31;
    }

    v33 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v19 count]);
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v34 = [v19 countByEnumeratingWithState:&v51 objects:v59 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = v30 + v29 + v32;
      v37 = *v52;
      do
      {
        for (j = 0; j != v35; j = j + 1)
        {
          if (*v52 != v37)
          {
            objc_enumerationMutation(v19);
          }

          [(NSMutableDictionary *)v33 setObject:[NSNumber forKeyedSubscript:"numberWithDouble:" numberWithDouble:v36], *(*(&v51 + 1) + 8 * j)];
        }

        v35 = [v19 countByEnumeratingWithState:&v51 objects:v59 count:16];
      }

      while (v35);
    }

    v39 = *(v5 + 6);
    if (v39 != v33)
    {
      *(v5 + 6) = v33;
    }

    sub_100027584(v5);
    objc_setProperty_nonatomic(v5, v40, 0, 112);
    sub_100027584(v5);
    goto LABEL_40;
  }

  return v5;
}

id sub_100027000(NSDictionary *a1, void *a2)
{
  [objc_msgSend(a2 objectForKeyedSubscript:{@"LastTimeReminderAlertShown", "doubleValue"}];
  a1[1].super.isa = v4;
  [objc_msgSend(a2 objectForKeyedSubscript:{@"LocalDaemonLaunchTime", "doubleValue"}];
  a1[2].super.isa = v5;
  [objc_msgSend(a2 objectForKeyedSubscript:{@"RemoteRTCOffset", "doubleValue"}];
  a1[5].super.isa = v6;
  v7 = [a2 objectForKeyedSubscript:@"ServiceStartTimes"];
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = &__NSDictionary0__struct;
  }

  a1[6].super.isa = [[NSDictionary alloc] initWithDictionary:v8];
  a1[3].super.isa = [objc_msgSend(a2 objectForKeyedSubscript:{@"LastVersionMigrated", "unsignedLongLongValue"}];
  [objc_msgSend(a2 objectForKeyedSubscript:{@"TimeSyncTimestamp", "doubleValue"}];
  a1[4].super.isa = v9;
  [objc_msgSend(a2 objectForKeyedSubscript:{@"PreferWifiAssertionEndTime", "doubleValue"}];
  a1[7].super.isa = v10;
  [objc_msgSend(a2 objectForKeyedSubscript:{@"StateSentTimestamp", "doubleValue"}];
  a1[8].super.isa = v11;
  [objc_msgSend(a2 objectForKeyedSubscript:{@"FaceMetricsReminderScheduled", "doubleValue"}];
  a1[10].super.isa = v12;
  v13 = [a2 objectForKeyedSubscript:@"DeviceIdentifier"];
  if (!v13)
  {
    v13 = [+[NSUUID UUID](NSUUID UUIDString];
    v14 = qword_100071AC8;
    if (os_log_type_enabled(qword_100071AC8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v48 = v13;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Assigning a new device identifier: %{public}@", buf, 0xCu);
    }
  }

  a1[9].super.isa = v13;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = [a2 objectForKeyedSubscript:@"AuthorizationTimes"];
  result = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
  v34 = result;
  if (result)
  {
    v33 = *v42;
    do
    {
      v16 = 0;
      do
      {
        if (*v42 != v33)
        {
          objc_enumerationMutation(obj);
        }

        v36 = v16;
        v17 = *(*(&v41 + 1) + 8 * v16);
        v18 = [obj objectForKeyedSubscript:{v17, v33}];
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        v19 = [v18 countByEnumeratingWithState:&v37 objects:v45 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = *v38;
          do
          {
            for (i = 0; i != v20; i = i + 1)
            {
              if (*v38 != v21)
              {
                objc_enumerationMutation(v18);
              }

              v24 = *(*(&v37 + 1) + 8 * i);
              [objc_msgSend(v18 objectForKeyedSubscript:{v24), "doubleValue"}];
              v26 = v25;
              v27 = qword_100071AC8;
              if (os_log_type_enabled(qword_100071AC8, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138543874;
                v48 = v17;
                v49 = 2114;
                v50 = v24;
                v51 = 2050;
                v52 = v26;
                _os_log_debug_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEBUG, "Updating auth time for service: %{public}@ bundle: %{public}@ time: %{public}f", buf, 0x20u);
                v32 = __isnand();
                isa = a1[14].super.isa;
                if (v32)
                {
LABEL_18:
                  v23 = 0;
                  goto LABEL_19;
                }
              }

              else
              {
                v28 = __isnand();
                isa = a1[14].super.isa;
                if (v28)
                {
                  goto LABEL_18;
                }
              }

              if (isa)
              {
                if (![(objc_class *)isa objectForKeyedSubscript:v17])
                {
                  goto LABEL_28;
                }
              }

              else
              {
                v30 = +[NSMutableDictionary dictionary];
                objc_setProperty_nonatomic(a1, v31, v30, 112);
                if (![(objc_class *)a1[14].super.isa objectForKeyedSubscript:v17])
                {
LABEL_28:
                  [(objc_class *)a1[14].super.isa setObject:+[NSMutableDictionary forKeyedSubscript:"dictionary"], v17];
                }
              }

              v23 = [NSNumber numberWithDouble:v26];
              isa = a1[14].super.isa;
LABEL_19:
              [-[objc_class objectForKeyedSubscript:](isa objectForKeyedSubscript:{v17), "setObject:forKeyedSubscript:", v23, v24}];
              sub_100027584(a1);
            }

            v20 = [v18 countByEnumeratingWithState:&v37 objects:v45 count:16];
          }

          while (v20);
        }

        v16 = v36 + 1;
      }

      while ((v36 + 1) != v34);
      result = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
      v34 = result;
    }

    while (result);
  }

  return result;
}

id sub_10002747C(id result)
{
  if (result)
  {
    if (*(result + 12))
    {
      v2 = *(result + 12);
    }

    else
    {
      v3 = result;
      v4 = *(result + 2);
      v5 = mach_continuous_time();
      if (qword_100071B60 != -1)
      {
        dispatch_once(&qword_100071B60, &stru_100060D90);
      }

      v6 = qword_100071B68;
      v7 = *&qword_100071B70;
      v8 = *&qword_100071B78;
      TMConvertTicksToSeconds();
      if (v6 >= v5)
      {
        v9 = -v9;
      }

      v10 = [NSNumber numberWithInt:v4 > v8 + v7 + v9];
      objc_setProperty_nonatomic(v3, v11, v10, 96);
      v2 = v3[12];
    }

    return [v2 BOOLValue];
  }

  return result;
}

void sub_100027584(NSDictionary *a1)
{
  if (a1)
  {
    v2 = sub_100027B10(a1);
    v12 = 0;
    v3 = [NSPropertyListSerialization dataWithPropertyList:v2 format:200 options:0 error:&v12];
    v4 = v12;
    if (v12)
    {
      v5 = qword_100071AC8;
      if (os_log_type_enabled(qword_100071AC8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v14 = v4;
        v6 = "Failed to cache state to because %{public}@";
        v7 = v5;
LABEL_11:
        _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, v6, buf, 0xCu);
      }
    }

    else
    {
      isa = a1[11].super.isa;
      v11 = 0;
      v9 = [(NSData *)v3 writeToURL:sub_10001B44C(isa) options:268435457 error:&v11];
      v10 = qword_100071AC8;
      if (v9)
      {
        if (os_log_type_enabled(qword_100071AC8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v14 = v2;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Cache written to disk: %{public}@", buf, 0xCu);
        }
      }

      else if (os_log_type_enabled(qword_100071AC8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v14 = v11;
        v6 = "Failed to cache state because %{public}@";
        v7 = v10;
        goto LABEL_11;
      }
    }
  }
}

void sub_1000277E0(NSDictionary *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = [NSMutableDictionary dictionaryWithDictionary:a1[6].super.isa];
    v5 = mach_continuous_time();
    if (qword_100071B60 != -1)
    {
      dispatch_once(&qword_100071B60, &stru_100060D90);
    }

    v6 = qword_100071B68;
    v7 = *&qword_100071B70;
    v8 = *&qword_100071B78;
    TMConvertTicksToSeconds();
    if (v6 >= v5)
    {
      v9 = -v9;
    }

    [(NSMutableDictionary *)v4 setObject:[NSNumber forKeyedSubscript:"numberWithDouble:" numberWithDouble:?], a2];
    isa = a1[6].super.isa;
    if (isa != v4)
    {
      a1[6].super.isa = v4;
    }

    sub_100027584(a1);
  }
}

void sub_1000278F0(NSDictionary *a1, uint64_t a2, uint64_t a3, double a4)
{
  if (a1)
  {
    v8 = qword_100071AC8;
    if (os_log_type_enabled(qword_100071AC8, OS_LOG_TYPE_DEBUG))
    {
      v15 = 138543874;
      v16 = a2;
      v17 = 2114;
      v18 = a3;
      v19 = 2050;
      v20 = a4;
      _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Updating auth time for service: %{public}@ bundle: %{public}@ time: %{public}f", &v15, 0x20u);
      v12 = __isnand();
      isa = a1[14].super.isa;
      if (v12)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v9 = __isnand();
      isa = a1[14].super.isa;
      if (v9)
      {
LABEL_4:
        v11 = 0;
LABEL_9:
        [-[objc_class objectForKeyedSubscript:](isa objectForKeyedSubscript:{a2), "setObject:forKeyedSubscript:", v11, a3}];
        sub_100027584(a1);
        return;
      }
    }

    if (isa)
    {
      if ([(objc_class *)isa objectForKeyedSubscript:a2])
      {
LABEL_8:
        v11 = [NSNumber numberWithDouble:a4];
        isa = a1[14].super.isa;
        goto LABEL_9;
      }
    }

    else
    {
      v13 = +[NSMutableDictionary dictionary];
      objc_setProperty_nonatomic(a1, v14, v13, 112);
      if ([(objc_class *)a1[14].super.isa objectForKeyedSubscript:a2])
      {
        goto LABEL_8;
      }
    }

    [(objc_class *)a1[14].super.isa setObject:+[NSMutableDictionary forKeyedSubscript:"dictionary"], a2];
    goto LABEL_8;
  }
}

NSDictionary *sub_100027A88(NSDictionary *result)
{
  if (result)
  {
    if (result[14].super.isa)
    {
      isa = result[14].super.isa;
    }

    else
    {
      isa = &__NSDictionary0__struct;
    }

    return [NSDictionary dictionaryWithDictionary:isa];
  }

  return result;
}

NSDictionary *sub_100027AB4(NSDictionary *result, uint64_t a2)
{
  if (result)
  {
    v2 = [(objc_class *)result[14].super.isa objectForKeyedSubscript:a2];
    if (v2)
    {
      v3 = v2;
    }

    else
    {
      v3 = &__NSDictionary0__struct;
    }

    return [NSDictionary dictionaryWithDictionary:v3];
  }

  return result;
}

NSDictionary *sub_100027B10(NSDictionary *result)
{
  if (result)
  {
    v1 = result;
    v8[0] = @"LastTimeReminderAlertShown";
    v9[0] = [NSNumber numberWithDouble:*&result[1].super.isa];
    v8[1] = @"LocalDaemonLaunchTime";
    v9[1] = [NSNumber numberWithDouble:*&v1[2].super.isa];
    v8[2] = @"RemoteRTCOffset";
    v2 = [NSNumber numberWithDouble:*&v1[5].super.isa];
    isa = v1[6].super.isa;
    v9[2] = v2;
    v9[3] = isa;
    v8[3] = @"ServiceStartTimes";
    v8[4] = @"LastVersionMigrated";
    v9[4] = [NSNumber numberWithUnsignedLongLong:v1[3].super.isa];
    v8[5] = @"TimeSyncTimestamp";
    v9[5] = [NSNumber numberWithDouble:*&v1[4].super.isa];
    v8[6] = @"PreferWifiAssertionEndTime";
    v9[6] = [NSNumber numberWithDouble:*&v1[7].super.isa];
    v8[7] = @"StateSentTimestamp";
    v4 = [NSNumber numberWithDouble:*&v1[8].super.isa];
    v5 = v1[9].super.isa;
    v9[7] = v4;
    v9[8] = v5;
    v8[8] = @"DeviceIdentifier";
    v8[9] = @"FaceMetricsReminderScheduled";
    v6 = [NSNumber numberWithDouble:*&v1[10].super.isa];
    v8[10] = @"AuthorizationTimes";
    v7 = v1[14].super.isa;
    if (!v7)
    {
      v7 = &__NSDictionary0__struct;
    }

    v9[9] = v6;
    v9[10] = v7;
    return [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:11];
  }

  return result;
}

NSDictionary *sub_100027DC8(uint64_t a1, void *a2)
{
  objc_opt_self();
  objc_opt_self();
  if (qword_100071AD8)
  {
    result = [qword_100071AD8 objectForKey:a2];
    if (result)
    {
      return result;
    }

LABEL_5:
    objc_opt_self();
    v4 = qword_100071B88;
    if ([a2 isEqualToString:qword_100071B88])
    {
      v22[0] = @"deviceId";
      v22[1] = @"isCurrentDevice";
      v23[0] = v4;
      v23[1] = &__kCFBooleanTrue;
      v5 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:2];
      objc_opt_self();
      v6 = qword_100071AD8;
      if (qword_100071AD8)
      {
LABEL_8:
        [v6 setObject:v5 forKey:a2];
        return v5;
      }

LABEL_7:
      qword_100071AD8 = objc_alloc_init(NSCache);
      [qword_100071AD8 setName:@"com.apple.sensorkitd.deviceInfoCache"];
      v6 = qword_100071AD8;
      goto LABEL_8;
    }

    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000282F0;
    v16[3] = &unk_100061380;
    v16[4] = a2;
    v7 = [-[NRPairedDeviceRegistry getDevicesMatching:](+[NRPairedDeviceRegistry sharedInstance](NRPairedDeviceRegistry "sharedInstance")];
    v8 = [v7 pairingID];
    if (v7 && (v9 = v8) != 0)
    {
      objc_opt_self();
      v10 = [v9 UUIDString];
      if (v10)
      {
        a2 = v10;
        v17[0] = _NSConcreteStackBlock;
        v17[1] = 3221225472;
        v18 = sub_10002833C;
        v19 = &unk_1000613A8;
        v20 = v7;
        v21 = v10;
        *&buf = v10;
        v24[0] = @"deviceId";
        v24[1] = @"model";
        v11 = NRDevicePropertyLocalizedModel;
        v12 = [v7 valueForProperty:NRDevicePropertyLocalizedModel];
        if (!v12)
        {
          v13 = qword_100071AD0;
          if (os_log_type_enabled(qword_100071AD0, OS_LOG_TYPE_ERROR))
          {
            *v33 = 138543618;
            v34 = v11;
            v35 = 2114;
            v36 = v21;
            _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "No %{public}@ found for device id %{public}@", v33, 0x16u);
          }

          v12 = &stru_100062328;
        }

        *(&buf + 1) = v12;
        v24[2] = @"systemName";
        v26 = v18(v17, NRDevicePropertySystemName);
        v24[3] = @"systemVersion";
        v27 = v18(v17, NRDevicePropertySystemVersion);
        v24[4] = @"name";
        v28 = v18(v17, NRDevicePropertyName);
        v24[5] = @"buildVersion";
        v29 = v18(v17, NRDevicePropertySystemBuildVersion);
        v24[6] = @"productType";
        v30 = v18(v17, NRDevicePropertyProductType);
        v24[7] = @"enclosureMaterial";
        v31 = v18(v17, NRDevicePropertyEnclosureMaterial);
        v24[8] = @"supportsCurrentVersion";
        v32 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v7 supportsCapability:{objc_msgSend([NSUUID alloc], "initWithUUIDString:", @"9B084186-2B81-4526-9A7D-AD719EC81C83"}]);
        v5 = [NSDictionary dictionaryWithObjects:&buf forKeys:v24 count:9];
        objc_opt_self();
        v6 = qword_100071AD8;
        if (qword_100071AD8)
        {
          goto LABEL_8;
        }

        goto LABEL_7;
      }

      v15 = qword_100071AD0;
      if (os_log_type_enabled(qword_100071AD0, OS_LOG_TYPE_FAULT))
      {
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v9;
        _os_log_fault_impl(&_mh_execute_header, v15, OS_LOG_TYPE_FAULT, "Failed to create a UUIDString for UUID %{public}@", &buf, 0xCu);
      }
    }

    else
    {
      v14 = qword_100071AD0;
      if (os_log_type_enabled(qword_100071AD0, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 138543362;
        *(&buf + 4) = a2;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "No device info found for id %{public}@", &buf, 0xCu);
      }
    }

    return &__NSDictionary0__struct;
  }

  qword_100071AD8 = objc_alloc_init(NSCache);
  [qword_100071AD8 setName:@"com.apple.sensorkitd.deviceInfoCache"];
  result = [qword_100071AD8 objectForKey:a2];
  if (!result)
  {
    goto LABEL_5;
  }

  return result;
}

id sub_1000282F0(uint64_t a1, void *a2)
{
  v3 = [objc_msgSend(a2 valueForProperty:{NRDevicePropertyPairingID), "UUIDString"}];
  v4 = *(a1 + 32);

  return [v3 isEqualToString:v4];
}

const __CFString *sub_10002833C(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) valueForProperty:a2];
  if (!result)
  {
    v5 = qword_100071AD0;
    if (os_log_type_enabled(qword_100071AD0, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 40);
      v7 = 138543618;
      v8 = a2;
      v9 = 2114;
      v10 = v6;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "No %{public}@ found for device id %{public}@", &v7, 0x16u);
    }

    return &stru_100062328;
  }

  return result;
}

id sub_100028414(uint64_t a1, uint64_t a2, uint64_t a3)
{
  objc_opt_self();
  objc_opt_self();
  if (qword_100071AD8)
  {
    result = [qword_100071AD8 objectForKey:a3];
    if (result)
    {
      return result;
    }
  }

  else
  {
    qword_100071AD8 = objc_alloc_init(NSCache);
    [qword_100071AD8 setName:@"com.apple.sensorkitd.deviceInfoCache"];
    result = [qword_100071AD8 objectForKey:a3];
    if (result)
    {
      return result;
    }
  }

  v6 = [+[NRPairedDeviceRegistry sharedInstance](NRPairedDeviceRegistry deviceForIDSDevice:"deviceForIDSDevice:", a2];
  result = [objc_msgSend(v6 valueForProperty:{NRDevicePropertyPairingID), "UUIDString"}];
  if (result)
  {
    v7 = result;
    objc_opt_self();
    v8 = qword_100071AD8;
    if (!qword_100071AD8)
    {
      qword_100071AD8 = objc_alloc_init(NSCache);
      [qword_100071AD8 setName:@"com.apple.sensorkitd.deviceInfoCache"];
      v8 = qword_100071AD8;
    }

    [v8 setObject:v7 forKey:a3];
    return v7;
  }

  return result;
}

id *sub_100029410(id *result)
{
  if (result)
  {
    v1 = result;
    v8 = 0u;
    v9 = 0u;
    v6 = 0u;
    v7 = 0u;
    if (qword_100071AE8 != -1)
    {
      dispatch_once(&qword_100071AE8, &stru_1000613C8);
    }

    v2 = qword_100071AF0;
    result = [qword_100071AF0 countByEnumeratingWithState:&v6 objects:v10 count:16];
    if (result)
    {
      v3 = result;
      v4 = *v7;
      do
      {
        v5 = 0;
        do
        {
          if (*v7 != v4)
          {
            objc_enumerationMutation(v2);
          }

          [v1[3] removeObjectForKey:{*(*(&v6 + 1) + 8 * v5), v6}];
          v5 = (v5 + 1);
        }

        while (v3 != v5);
        result = [v2 countByEnumeratingWithState:&v6 objects:v10 count:16];
        v3 = result;
      }

      while (result);
    }
  }

  return result;
}

void *sub_100029538(void *result, char a2, int a3)
{
  if (result)
  {
    v4 = result;
    v5 = result[3];
    v6 = [0 componentsSeparatedByString:@"."];
    v7 = [v6 count];
    do
    {
      if (!v7)
      {
        break;
      }

      v8 = [objc_msgSend(v6 subarrayWithRange:{0, v7), "componentsJoinedByString:", @"."}];
      if ([v8 length])
      {
        v9 = [v8 stringByAppendingFormat:@".%@", @"Enabled"];
        if ([v4[3] objectForKey:v9])
        {
          goto LABEL_10;
        }
      }

      else
      {
        v9 = @"Enabled";
        if ([v4[3] objectForKey:@"Enabled"])
        {
          goto LABEL_10;
        }
      }

      --v7;
    }

    while (![objc_msgSend(v6 objectAtIndexedSubscript:{v7), "isEqualToString:", @"tombstones"}]);
    v9 = @"Enabled";
LABEL_10:
    v10 = [v5 integerForKey:v9];
    v11 = v10 & ~(v10 >> 63) & ~(1 << a2);
    v12 = v4[3];

    return [v12 setInteger:v11 | (a3 << a2) forKey:@"Enabled"];
  }

  return result;
}

unint64_t sub_1000296BC(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 24);
    v3 = [0 componentsSeparatedByString:@"."];
    v4 = [v3 count];
    do
    {
      if (!v4)
      {
        break;
      }

      v5 = [objc_msgSend(v3 subarrayWithRange:{0, v4), "componentsJoinedByString:", @"."}];
      if ([v5 length])
      {
        v6 = [v5 stringByAppendingFormat:@".%@", @"Enabled"];
        if ([*(v1 + 24) objectForKey:v6])
        {
          goto LABEL_10;
        }
      }

      else
      {
        v6 = @"Enabled";
        if ([*(v1 + 24) objectForKey:@"Enabled"])
        {
          goto LABEL_10;
        }
      }

      --v4;
    }

    while (![objc_msgSend(v3 objectAtIndexedSubscript:{v4), "isEqualToString:", @"tombstones"}]);
    v6 = @"Enabled";
LABEL_10:
    v7 = [v2 integerForKey:v6];
    return v7 & ~(v7 >> 63) & 1;
  }

  return result;
}

unint64_t sub_1000297E4(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 24);
    v3 = [0 componentsSeparatedByString:@"."];
    v4 = [v3 count];
    do
    {
      if (!v4)
      {
        break;
      }

      v5 = [objc_msgSend(v3 subarrayWithRange:{0, v4), "componentsJoinedByString:", @"."}];
      if ([v5 length])
      {
        v6 = [v5 stringByAppendingFormat:@".%@", @"Enabled"];
        if ([*(v1 + 24) objectForKey:v6])
        {
          goto LABEL_10;
        }
      }

      else
      {
        v6 = @"Enabled";
        if ([*(v1 + 24) objectForKey:@"Enabled"])
        {
          goto LABEL_10;
        }
      }

      --v4;
    }

    while (![objc_msgSend(v3 objectAtIndexedSubscript:{v4), "isEqualToString:", @"tombstones"}]);
    v6 = @"Enabled";
LABEL_10:
    v7 = [v2 integerForKey:v6];
    if ((v7 & ~(v7 >> 63) & 4) != 0)
    {
      return 1;
    }

    else
    {
      v8 = *(v1 + 24);
      v9 = [0 componentsSeparatedByString:@"."];
      v10 = [v9 count];
      do
      {
        if (!v10)
        {
          break;
        }

        v11 = [objc_msgSend(v9 subarrayWithRange:{0, v10), "componentsJoinedByString:", @"."}];
        if ([v11 length])
        {
          v12 = [v11 stringByAppendingFormat:@".%@", @"Enabled"];
          if ([*(v1 + 24) objectForKey:v12])
          {
            goto LABEL_19;
          }
        }

        else
        {
          v12 = @"Enabled";
          if ([*(v1 + 24) objectForKey:@"Enabled"])
          {
            goto LABEL_19;
          }
        }

        --v10;
      }

      while (![objc_msgSend(v9 objectAtIndexedSubscript:{v10), "isEqualToString:", @"tombstones"}]);
      v12 = @"Enabled";
LABEL_19:
      v13 = [v8 integerForKey:v12];
      return ((v13 & ~(v13 >> 62)) >> 1) & 1;
    }
  }

  return result;
}

void *sub_1000299E0(void *result, void *a2)
{
  if (result)
  {
    v2 = result;
    v3 = result[3];
    v4 = [a2 componentsSeparatedByString:@"."];
    v5 = [v4 count];
    do
    {
      if (!v5)
      {
        break;
      }

      v6 = [objc_msgSend(v4 subarrayWithRange:{0, v5), "componentsJoinedByString:", @"."}];
      if ([v6 length])
      {
        v7 = [v6 stringByAppendingFormat:@".%@", @"ArchiveCompressionEnabled"];
        if ([v2[3] objectForKey:v7])
        {
          goto LABEL_10;
        }
      }

      else
      {
        v7 = @"ArchiveCompressionEnabled";
        if ([v2[3] objectForKey:@"ArchiveCompressionEnabled"])
        {
          goto LABEL_10;
        }
      }

      --v5;
    }

    while (![objc_msgSend(v4 objectAtIndexedSubscript:{v5), "isEqualToString:", @"tombstones"}]);
    v7 = @"ArchiveCompressionEnabled";
LABEL_10:

    return [v3 BOOLForKey:v7];
  }

  return result;
}

void *sub_100029B08(void *result, void *a2)
{
  if (result)
  {
    v2 = result;
    v3 = result[3];
    v4 = [a2 componentsSeparatedByString:@"."];
    v5 = [v4 count];
    do
    {
      if (!v5)
      {
        break;
      }

      v6 = [objc_msgSend(v4 subarrayWithRange:{0, v5), "componentsJoinedByString:", @"."}];
      if ([v6 length])
      {
        v7 = [v6 stringByAppendingFormat:@".%@", @"ProtectionClass"];
        if ([v2[3] objectForKey:v7])
        {
          goto LABEL_10;
        }
      }

      else
      {
        v7 = @"ProtectionClass";
        if ([v2[3] objectForKey:@"ProtectionClass"])
        {
          goto LABEL_10;
        }
      }

      --v5;
    }

    while (![objc_msgSend(v4 objectAtIndexedSubscript:{v5), "isEqualToString:", @"tombstones"}]);
    v7 = @"ProtectionClass";
LABEL_10:

    return [v3 integerForKey:v7];
  }

  return result;
}

uint64_t sub_100029C30(uint64_t result, void *a2)
{
  if (result)
  {
    v3 = result;
    v4 = [a2 hasSuffix:@".tombstones"];
    v5 = *(v3 + 24);
    if (v4)
    {
      v6 = [0 componentsSeparatedByString:@"."];
      v7 = [v6 count];
      v8 = @"TombstoneDataRetentionLengthSeconds";
      do
      {
        if (!v7)
        {
          break;
        }

        v9 = [objc_msgSend(v6 subarrayWithRange:{0, v7), "componentsJoinedByString:", @"."}];
        if ([v9 length])
        {
          v10 = [v9 stringByAppendingFormat:@".%@", @"TombstoneDataRetentionLengthSeconds"];
          if ([*(v3 + 24) objectForKey:v10])
          {
            goto LABEL_19;
          }
        }

        else
        {
          v10 = @"TombstoneDataRetentionLengthSeconds";
          if ([*(v3 + 24) objectForKey:@"TombstoneDataRetentionLengthSeconds"])
          {
            goto LABEL_19;
          }
        }

        --v7;
      }

      while (([objc_msgSend(v6 objectAtIndexedSubscript:{v7), "isEqualToString:", @"tombstones"}] & 1) == 0);
    }

    else
    {
      v11 = [a2 componentsSeparatedByString:@"."];
      v12 = [v11 count];
      v8 = @"DataProtectionLengthSeconds";
      do
      {
        if (!v12)
        {
          break;
        }

        v13 = [objc_msgSend(v11 subarrayWithRange:{0, v12), "componentsJoinedByString:", @"."}];
        if ([v13 length])
        {
          v10 = [v13 stringByAppendingFormat:@".%@", @"DataProtectionLengthSeconds"];
          if ([*(v3 + 24) objectForKey:v10])
          {
            goto LABEL_19;
          }
        }

        else
        {
          v10 = @"DataProtectionLengthSeconds";
          if ([*(v3 + 24) objectForKey:@"DataProtectionLengthSeconds"])
          {
            goto LABEL_19;
          }
        }

        --v12;
      }

      while (![objc_msgSend(v11 objectAtIndexedSubscript:{v12), "isEqualToString:", @"tombstones"}]);
    }

    v10 = v8;
LABEL_19:
    v14 = [v5 integerForKey:v10];
    return v14 & ~(v14 >> 63);
  }

  return result;
}

uint64_t sub_100029E20(uint64_t result, void *a2)
{
  if (result)
  {
    v3 = result;
    v4 = [a2 hasSuffix:@".tombstones"];
    v5 = *(v3 + 24);
    if (v4)
    {
      v6 = [0 componentsSeparatedByString:@"."];
      v7 = [v6 count];
      v8 = @"TombstoneDataRetentionLengthSeconds";
      do
      {
        if (!v7)
        {
          break;
        }

        v9 = [objc_msgSend(v6 subarrayWithRange:{0, v7), "componentsJoinedByString:", @"."}];
        if ([v9 length])
        {
          v10 = [v9 stringByAppendingFormat:@".%@", @"TombstoneDataRetentionLengthSeconds"];
          if ([*(v3 + 24) objectForKey:v10])
          {
            goto LABEL_19;
          }
        }

        else
        {
          v10 = @"TombstoneDataRetentionLengthSeconds";
          if ([*(v3 + 24) objectForKey:@"TombstoneDataRetentionLengthSeconds"])
          {
            goto LABEL_19;
          }
        }

        --v7;
      }

      while (([objc_msgSend(v6 objectAtIndexedSubscript:{v7), "isEqualToString:", @"tombstones"}] & 1) == 0);
    }

    else
    {
      v11 = [a2 componentsSeparatedByString:@"."];
      v12 = [v11 count];
      v8 = @"KeyProtectionLengthSeconds";
      do
      {
        if (!v12)
        {
          break;
        }

        v13 = [objc_msgSend(v11 subarrayWithRange:{0, v12), "componentsJoinedByString:", @"."}];
        if ([v13 length])
        {
          v10 = [v13 stringByAppendingFormat:@".%@", @"KeyProtectionLengthSeconds"];
          if ([*(v3 + 24) objectForKey:v10])
          {
            goto LABEL_19;
          }
        }

        else
        {
          v10 = @"KeyProtectionLengthSeconds";
          if ([*(v3 + 24) objectForKey:@"KeyProtectionLengthSeconds"])
          {
            goto LABEL_19;
          }
        }

        --v12;
      }

      while (![objc_msgSend(v11 objectAtIndexedSubscript:{v12), "isEqualToString:", @"tombstones"}]);
    }

    v10 = v8;
LABEL_19:
    v14 = [v5 integerForKey:v10];
    return v14 & ~(v14 >> 63);
  }

  return result;
}

double sub_10002A010(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a1)
  {
    return 0.0;
  }

  v5 = *(a1 + 24);
  v6 = [a3 componentsSeparatedByString:@"."];
  v7 = [v6 count];
  do
  {
    if (!v7)
    {
      break;
    }

    v8 = [objc_msgSend(v6 subarrayWithRange:{0, v7), "componentsJoinedByString:", @"."}];
    if ([v8 length])
    {
      v9 = [v8 stringByAppendingFormat:@".%@", @"CacheDeleteAgeLimit"];
      if ([*(a1 + 24) objectForKey:v9])
      {
        goto LABEL_10;
      }
    }

    else
    {
      v9 = @"CacheDeleteAgeLimit";
      if ([*(a1 + 24) objectForKey:@"CacheDeleteAgeLimit"])
      {
        goto LABEL_10;
      }
    }

    --v7;
  }

  while (![objc_msgSend(v6 objectAtIndexedSubscript:{v7), "isEqualToString:", @"tombstones"}]);
  v9 = @"CacheDeleteAgeLimit";
LABEL_10:
  v10 = [objc_msgSend(v5 dictionaryForKey:{v9), "objectForKeyedSubscript:", -[NSNumber stringValue](+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", a2), "stringValue")}];
  if (!v10)
  {
    return (3 * XPC_ACTIVITY_INTERVAL_1_DAY);
  }

  [v10 doubleValue];
  return result;
}

void *sub_10002A184(void *result, void *a2)
{
  if (result)
  {
    v2 = result;
    v3 = result[3];
    v4 = [a2 componentsSeparatedByString:@"."];
    v5 = [v4 count];
    do
    {
      if (!v5)
      {
        break;
      }

      v6 = [objc_msgSend(v4 subarrayWithRange:{0, v5), "componentsJoinedByString:", @"."}];
      if ([v6 length])
      {
        v7 = [v6 stringByAppendingFormat:@".%@", @"Curated"];
        if ([v2[3] objectForKey:v7])
        {
          goto LABEL_10;
        }
      }

      else
      {
        v7 = @"Curated";
        if ([v2[3] objectForKey:@"Curated"])
        {
          goto LABEL_10;
        }
      }

      --v5;
    }

    while (![objc_msgSend(v4 objectAtIndexedSubscript:{v5), "isEqualToString:", @"tombstones"}]);
    v7 = @"Curated";
LABEL_10:

    return [v3 BOOLForKey:v7];
  }

  return result;
}

void *sub_10002A2AC(void *result, void *a2)
{
  if (result)
  {
    v2 = result;
    v3 = result[3];
    v4 = [a2 componentsSeparatedByString:@"."];
    v5 = [v4 count];
    do
    {
      if (!v5)
      {
        break;
      }

      v6 = [objc_msgSend(v4 subarrayWithRange:{0, v5), "componentsJoinedByString:", @"."}];
      if ([v6 length])
      {
        v7 = [v6 stringByAppendingFormat:@".%@", @"MaxArchiveBytes"];
        if ([v2[3] objectForKey:v7])
        {
          goto LABEL_10;
        }
      }

      else
      {
        v7 = @"MaxArchiveBytes";
        if ([v2[3] objectForKey:@"MaxArchiveBytes"])
        {
          goto LABEL_10;
        }
      }

      --v5;
    }

    while (![objc_msgSend(v4 objectAtIndexedSubscript:{v5), "isEqualToString:", @"tombstones"}]);
    v7 = @"MaxArchiveBytes";
LABEL_10:

    return [v3 integerForKey:v7];
  }

  return result;
}

uint64_t sub_10002A3D4(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 24);
    v3 = [0 componentsSeparatedByString:@"."];
    v4 = [v3 count];
    do
    {
      if (!v4)
      {
        break;
      }

      v5 = [objc_msgSend(v3 subarrayWithRange:{0, v4), "componentsJoinedByString:", @"."}];
      if ([v5 length])
      {
        v6 = [v5 stringByAppendingFormat:@".%@", @"UpdateCompanionIntervalSeconds"];
        if ([*(v1 + 24) objectForKey:v6])
        {
          goto LABEL_10;
        }
      }

      else
      {
        v6 = @"UpdateCompanionIntervalSeconds";
        if ([*(v1 + 24) objectForKey:@"UpdateCompanionIntervalSeconds"])
        {
          goto LABEL_10;
        }
      }

      --v4;
    }

    while (![objc_msgSend(v3 objectAtIndexedSubscript:{v4), "isEqualToString:", @"tombstones"}]);
    v6 = @"UpdateCompanionIntervalSeconds";
LABEL_10:
    v7 = [v2 integerForKey:v6];
    return v7 & ~(v7 >> 63);
  }

  return result;
}

uint64_t sub_10002A4F4(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 24);
    v3 = [0 componentsSeparatedByString:@"."];
    v4 = [v3 count];
    do
    {
      if (!v4)
      {
        break;
      }

      v5 = [objc_msgSend(v3 subarrayWithRange:{0, v4), "componentsJoinedByString:", @"."}];
      if ([v5 length])
      {
        v6 = [v5 stringByAppendingFormat:@".%@", @"PrepareArchivesIntervalSeconds"];
        if ([*(v1 + 24) objectForKey:v6])
        {
          goto LABEL_10;
        }
      }

      else
      {
        v6 = @"PrepareArchivesIntervalSeconds";
        if ([*(v1 + 24) objectForKey:@"PrepareArchivesIntervalSeconds"])
        {
          goto LABEL_10;
        }
      }

      --v4;
    }

    while (![objc_msgSend(v3 objectAtIndexedSubscript:{v4), "isEqualToString:", @"tombstones"}]);
    v6 = @"PrepareArchivesIntervalSeconds";
LABEL_10:
    v7 = [v2 integerForKey:v6];
    return v7 & ~(v7 >> 63);
  }

  return result;
}

id *sub_10002A614(id *result)
{
  if (result)
  {
    return [result[3] BOOLForKey:@"PrepareArchivesDiskIntensive"];
  }

  return result;
}

id *sub_10002A62C(id *result)
{
  if (result)
  {
    return [result[3] BOOLForKey:@"PrepareArchivesCPUIntensive"];
  }

  return result;
}

uint64_t sub_10002A644(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 24);
    v3 = [0 componentsSeparatedByString:@"."];
    v4 = [v3 count];
    do
    {
      if (!v4)
      {
        break;
      }

      v5 = [objc_msgSend(v3 subarrayWithRange:{0, v4), "componentsJoinedByString:", @"."}];
      if ([v5 length])
      {
        v6 = [v5 stringByAppendingFormat:@".%@", @"SyncCompanionStateToGizmoInterval"];
        if ([*(v1 + 24) objectForKey:v6])
        {
          goto LABEL_10;
        }
      }

      else
      {
        v6 = @"SyncCompanionStateToGizmoInterval";
        if ([*(v1 + 24) objectForKey:@"SyncCompanionStateToGizmoInterval"])
        {
          goto LABEL_10;
        }
      }

      --v4;
    }

    while (![objc_msgSend(v3 objectAtIndexedSubscript:{v4), "isEqualToString:", @"tombstones"}]);
    v6 = @"SyncCompanionStateToGizmoInterval";
LABEL_10:
    v7 = [v2 integerForKey:v6];
    return v7 & ~(v7 >> 63);
  }

  return result;
}

void *sub_10002A764(void *result, void *a2)
{
  if (result)
  {
    v2 = result;
    v3 = result[3];
    v4 = [a2 componentsSeparatedByString:@"."];
    v5 = [v4 count];
    do
    {
      if (!v5)
      {
        break;
      }

      v6 = [objc_msgSend(v4 subarrayWithRange:{0, v5), "componentsJoinedByString:", @"."}];
      if ([v6 length])
      {
        v7 = [v6 stringByAppendingFormat:@".%@", @"HoldingPeriod"];
        if ([v2[3] objectForKey:v7])
        {
          goto LABEL_10;
        }
      }

      else
      {
        v7 = @"HoldingPeriod";
        if ([v2[3] objectForKey:@"HoldingPeriod"])
        {
          goto LABEL_10;
        }
      }

      --v5;
    }

    while (![objc_msgSend(v4 objectAtIndexedSubscript:{v5), "isEqualToString:", @"tombstones"}]);
    v7 = @"HoldingPeriod";
LABEL_10:

    return [v3 integerForKey:v7];
  }

  return result;
}

NSDictionary *sub_10002A88C(NSDictionary *result, void *a2)
{
  if (result)
  {
    v2 = result;
    v49[0] = @"DatastoreVersion";
    isa = result[3].super.isa;
    v4 = [a2 componentsSeparatedByString:@"."];
    v5 = [v4 count];
    do
    {
      if (!v5)
      {
        break;
      }

      v6 = [objc_msgSend(v4 subarrayWithRange:{0, v5), "componentsJoinedByString:", @"."}];
      if ([v6 length])
      {
        v7 = [v6 stringByAppendingFormat:@".%@", @"DatastoreVersion"];
        if ([(objc_class *)v2[3].super.isa objectForKey:v7])
        {
          goto LABEL_10;
        }
      }

      else
      {
        v7 = @"DatastoreVersion";
        if ([(objc_class *)v2[3].super.isa objectForKey:@"DatastoreVersion"])
        {
          goto LABEL_10;
        }
      }

      --v5;
    }

    while (![objc_msgSend(v4 objectAtIndexedSubscript:{v5), "isEqualToString:", @"tombstones"}]);
    v7 = @"DatastoreVersion";
LABEL_10:
    v8 = [(objc_class *)isa integerForKey:v7];
    v50[0] = [NSNumber numberWithUnsignedInteger:v8 & ~(v8 >> 63)];
    v49[1] = @"SegmentSize";
    v9 = v2[3].super.isa;
    v10 = [a2 componentsSeparatedByString:@"."];
    v11 = [v10 count];
    do
    {
      if (!v11)
      {
        break;
      }

      v12 = [objc_msgSend(v10 subarrayWithRange:{0, v11), "componentsJoinedByString:", @"."}];
      if ([v12 length])
      {
        v13 = [v12 stringByAppendingFormat:@".%@", @"SegmentSizeBytes"];
        if ([(objc_class *)v2[3].super.isa objectForKey:v13])
        {
          goto LABEL_18;
        }
      }

      else
      {
        v13 = @"SegmentSizeBytes";
        if ([(objc_class *)v2[3].super.isa objectForKey:@"SegmentSizeBytes"])
        {
          goto LABEL_18;
        }
      }

      --v11;
    }

    while (![objc_msgSend(v10 objectAtIndexedSubscript:{v11), "isEqualToString:", @"tombstones"}]);
    v13 = @"SegmentSizeBytes";
LABEL_18:
    v14 = [(objc_class *)v9 integerForKey:v13];
    v50[1] = [NSNumber numberWithUnsignedInteger:v14 & ~(v14 >> 63)];
    v49[2] = @"MaxAllowedMappedPages";
    v15 = v2[3].super.isa;
    v16 = [a2 componentsSeparatedByString:@"."];
    v17 = [v16 count];
    do
    {
      if (!v17)
      {
        break;
      }

      v18 = [objc_msgSend(v16 subarrayWithRange:{0, v17), "componentsJoinedByString:", @"."}];
      if ([v18 length])
      {
        v19 = [v18 stringByAppendingFormat:@".%@", @"MaxAllowedMappedPages"];
        if ([(objc_class *)v2[3].super.isa objectForKey:v19])
        {
          goto LABEL_26;
        }
      }

      else
      {
        v19 = @"MaxAllowedMappedPages";
        if ([(objc_class *)v2[3].super.isa objectForKey:@"MaxAllowedMappedPages"])
        {
          goto LABEL_26;
        }
      }

      --v17;
    }

    while (![objc_msgSend(v16 objectAtIndexedSubscript:{v17), "isEqualToString:", @"tombstones"}]);
    v19 = @"MaxAllowedMappedPages";
LABEL_26:
    v20 = [(objc_class *)v15 integerForKey:v19];
    v50[2] = [NSNumber numberWithUnsignedInteger:v20 & ~(v20 >> 63)];
    v49[3] = @"SegmentResizeFactor";
    v21 = v2[3].super.isa;
    v22 = [a2 componentsSeparatedByString:@"."];
    v23 = [v22 count];
    do
    {
      if (!v23)
      {
        break;
      }

      v24 = [objc_msgSend(v22 subarrayWithRange:{0, v23), "componentsJoinedByString:", @"."}];
      if ([v24 length])
      {
        v25 = [v24 stringByAppendingFormat:@".%@", @"SegmentResizeFactor"];
        if ([(objc_class *)v2[3].super.isa objectForKey:v25])
        {
          goto LABEL_34;
        }
      }

      else
      {
        v25 = @"SegmentResizeFactor";
        if ([(objc_class *)v2[3].super.isa objectForKey:@"SegmentResizeFactor"])
        {
          goto LABEL_34;
        }
      }

      --v23;
    }

    while (![objc_msgSend(v22 objectAtIndexedSubscript:{v23), "isEqualToString:", @"tombstones"}]);
    v25 = @"SegmentResizeFactor";
LABEL_34:
    [(objc_class *)v21 floatForKey:v25];
    v50[3] = [NSNumber numberWithFloat:?];
    v49[4] = @"SegmentPaddingFactor";
    v26 = v2[3].super.isa;
    v27 = [a2 componentsSeparatedByString:@"."];
    v28 = [v27 count];
    do
    {
      if (!v28)
      {
        break;
      }

      v29 = [objc_msgSend(v27 subarrayWithRange:{0, v28), "componentsJoinedByString:", @"."}];
      if ([v29 length])
      {
        v30 = [v29 stringByAppendingFormat:@".%@", @"SegmentPaddingFactor"];
        if ([(objc_class *)v2[3].super.isa objectForKey:v30])
        {
          goto LABEL_42;
        }
      }

      else
      {
        v30 = @"SegmentPaddingFactor";
        if ([(objc_class *)v2[3].super.isa objectForKey:@"SegmentPaddingFactor"])
        {
          goto LABEL_42;
        }
      }

      --v28;
    }

    while (![objc_msgSend(v27 objectAtIndexedSubscript:{v28), "isEqualToString:", @"tombstones"}]);
    v30 = @"SegmentPaddingFactor";
LABEL_42:
    [(objc_class *)v26 floatForKey:v30];
    v50[4] = [NSNumber numberWithFloat:?];
    v49[5] = @"MetadataSize";
    v31 = v2[3].super.isa;
    v32 = [a2 componentsSeparatedByString:@"."];
    v33 = [v32 count];
    do
    {
      if (!v33)
      {
        break;
      }

      v34 = [objc_msgSend(v32 subarrayWithRange:{0, v33), "componentsJoinedByString:", @"."}];
      if ([v34 length])
      {
        v35 = [v34 stringByAppendingFormat:@".%@", @"MetadataSizeBytes"];
        if ([(objc_class *)v2[3].super.isa objectForKey:v35])
        {
          goto LABEL_50;
        }
      }

      else
      {
        v35 = @"MetadataSizeBytes";
        if ([(objc_class *)v2[3].super.isa objectForKey:@"MetadataSizeBytes"])
        {
          goto LABEL_50;
        }
      }

      --v33;
    }

    while (![objc_msgSend(v32 objectAtIndexedSubscript:{v33), "isEqualToString:", @"tombstones"}]);
    v35 = @"MetadataSizeBytes";
LABEL_50:
    v36 = [(objc_class *)v31 integerForKey:v35];
    v50[5] = [NSNumber numberWithUnsignedInteger:v36 & ~(v36 >> 63)];
    v49[6] = @"SegmentFillDuration";
    v37 = v2[3].super.isa;
    v38 = [a2 componentsSeparatedByString:@"."];
    v39 = [v38 count];
    do
    {
      if (!v39)
      {
        break;
      }

      v40 = [objc_msgSend(v38 subarrayWithRange:{0, v39), "componentsJoinedByString:", @"."}];
      if ([v40 length])
      {
        v41 = [v40 stringByAppendingFormat:@".%@", @"SegmentFillDurationSecs"];
        if ([(objc_class *)v2[3].super.isa objectForKey:v41])
        {
          goto LABEL_58;
        }
      }

      else
      {
        v41 = @"SegmentFillDurationSecs";
        if ([(objc_class *)v2[3].super.isa objectForKey:@"SegmentFillDurationSecs"])
        {
          goto LABEL_58;
        }
      }

      --v39;
    }

    while (![objc_msgSend(v38 objectAtIndexedSubscript:{v39), "isEqualToString:", @"tombstones"}]);
    v41 = @"SegmentFillDurationSecs";
LABEL_58:
    [(objc_class *)v37 floatForKey:v41];
    v50[6] = [NSNumber numberWithDouble:v42];
    v49[7] = @"SegmentMinimumFactor";
    v43 = v2[3].super.isa;
    v44 = [a2 componentsSeparatedByString:@"."];
    v45 = [v44 count];
    do
    {
      if (!v45)
      {
        break;
      }

      v46 = [objc_msgSend(v44 subarrayWithRange:{0, v45), "componentsJoinedByString:", @"."}];
      if ([v46 length])
      {
        v47 = [v46 stringByAppendingFormat:@".%@", @"SegmentSizeMinimumFactor"];
        if ([(objc_class *)v2[3].super.isa objectForKey:v47])
        {
          goto LABEL_66;
        }
      }

      else
      {
        v47 = @"SegmentSizeMinimumFactor";
        if ([(objc_class *)v2[3].super.isa objectForKey:@"SegmentSizeMinimumFactor"])
        {
          goto LABEL_66;
        }
      }

      --v45;
    }

    while (![objc_msgSend(v44 objectAtIndexedSubscript:{v45), "isEqualToString:", @"tombstones"}]);
    v47 = @"SegmentSizeMinimumFactor";
LABEL_66:
    [(objc_class *)v43 floatForKey:v47];
    v50[7] = [NSNumber numberWithFloat:?];
    return [NSDictionary dictionaryWithObjects:v50 forKeys:v49 count:8];
  }

  return result;
}

uint64_t sub_10002B090(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 24);
    v3 = [0 componentsSeparatedByString:@"."];
    v4 = [v3 count];
    do
    {
      if (!v4)
      {
        break;
      }

      v5 = [objc_msgSend(v3 subarrayWithRange:{0, v4), "componentsJoinedByString:", @"."}];
      if ([v5 length])
      {
        v6 = [v5 stringByAppendingFormat:@".%@", @"Enabled"];
        if ([*(v1 + 24) objectForKey:v6])
        {
          goto LABEL_10;
        }
      }

      else
      {
        v6 = @"Enabled";
        if ([*(v1 + 24) objectForKey:@"Enabled"])
        {
          goto LABEL_10;
        }
      }

      --v4;
    }

    while (![objc_msgSend(v3 objectAtIndexedSubscript:{v4), "isEqualToString:", @"tombstones"}]);
    v6 = @"Enabled";
LABEL_10:
    v7 = [v2 integerForKey:v6];
    return v7 & ~(v7 >> 63);
  }

  return result;
}

id *sub_10002B1B0(id *result, uint64_t a2)
{
  if (result)
  {
    return [result[3] setInteger:a2 forKey:@"Enabled"];
  }

  return result;
}

double sub_10002B1CC(uint64_t a1)
{
  if (!a1)
  {
    return 0.0;
  }

  [*(a1 + 24) doubleForKey:@"ResourceSendTimeout"];
  return result;
}

void *sub_10002B1E8(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = result[3];
    v3 = [0 componentsSeparatedByString:@"."];
    v4 = [v3 count];
    do
    {
      if (!v4)
      {
        break;
      }

      v5 = [objc_msgSend(v3 subarrayWithRange:{0, v4), "componentsJoinedByString:", @"."}];
      if ([v5 length])
      {
        v6 = [v5 stringByAppendingFormat:@".%@", @"AnalyticsEnabled"];
        if ([v1[3] objectForKey:v6])
        {
          goto LABEL_10;
        }
      }

      else
      {
        v6 = @"AnalyticsEnabled";
        if ([v1[3] objectForKey:@"AnalyticsEnabled"])
        {
          goto LABEL_10;
        }
      }

      --v4;
    }

    while (![objc_msgSend(v3 objectAtIndexedSubscript:{v4), "isEqualToString:", @"tombstones"}]);
    v6 = @"AnalyticsEnabled";
LABEL_10:

    return [v2 BOOLForKey:v6];
  }

  return result;
}

double sub_10002B310(uint64_t a1)
{
  if (!a1)
  {
    return 0.0;
  }

  [*(a1 + 24) doubleForKey:@"ReminderAlertThresholdSecs"];
  return result;
}

double sub_10002B32C(uint64_t a1)
{
  if (!a1)
  {
    return 0.0;
  }

  [*(a1 + 24) doubleForKey:@"FirstReminderAlertThresholdSecs"];
  return result;
}

id *sub_10002B348(id *result)
{
  if (result)
  {
    return [result[3] integerForKey:@"SendResourcePriority"];
  }

  return result;
}

void *sub_10002B360(void *result, void *a2)
{
  if (result)
  {
    v2 = result;
    v3 = result[3];
    v4 = [a2 componentsSeparatedByString:@"."];
    v5 = [v4 count];
    do
    {
      if (!v5)
      {
        break;
      }

      v6 = [objc_msgSend(v4 subarrayWithRange:{0, v5), "componentsJoinedByString:", @"."}];
      if ([v6 length])
      {
        v7 = [v6 stringByAppendingFormat:@".%@", @"ArchiveResendThresholdSecs"];
        if ([v2[3] objectForKey:v7])
        {
          goto LABEL_10;
        }
      }

      else
      {
        v7 = @"ArchiveResendThresholdSecs";
        if ([v2[3] objectForKey:@"ArchiveResendThresholdSecs"])
        {
          goto LABEL_10;
        }
      }

      --v5;
    }

    while (![objc_msgSend(v4 objectAtIndexedSubscript:{v5), "isEqualToString:", @"tombstones"}]);
    v7 = @"ArchiveResendThresholdSecs";
LABEL_10:

    return [v3 integerForKey:v7];
  }

  return result;
}

id *sub_10002B488(id *result)
{
  if (result)
  {
    return [result[3] arrayForKey:@"LegacyResearchStudyBundleIDs"];
  }

  return result;
}

id *sub_10002B4A0(id *result)
{
  if (result)
  {
    return [result[3] stringForKey:@"LegacyResearchStudyEntitlement"];
  }

  return result;
}

id *sub_10002B4B8(id *result)
{
  if (result)
  {
    return [result[3] integerForKey:@"PreferWifiAssertionDurationSecs"];
  }

  return result;
}

double sub_10002B4D0(uint64_t a1)
{
  if (!a1)
  {
    return 0.0;
  }

  [*(a1 + 24) doubleForKey:@"StateCacheSendDebounceIntervalSecs"];
  return result;
}

id *sub_10002B4EC(id *result)
{
  if (result)
  {
    return [result[3] BOOLForKey:@"AdditionalDiagnosticsEnabled"];
  }

  return result;
}

double sub_10002B504(uint64_t a1)
{
  if (!a1)
  {
    return 0.0;
  }

  [*(a1 + 24) doubleForKey:@"TimeSyncSendDebounceIntervalSecs"];
  return result;
}

id *sub_10002B520(id *result)
{
  if (result)
  {
    return [result[3] integerForKey:@"PendingMessageResendLimit"];
  }

  return result;
}

id *sub_10002B538(id *result)
{
  if (result)
  {
    return [result[3] integerForKey:@"RTCResetTimestampThresholdSecs"];
  }

  return result;
}

id *sub_10002B550(id *result)
{
  if (result)
  {
    return [result[3] dictionaryForKey:@"AuthorizationVersions"];
  }

  return result;
}

double sub_10002B7C0(uint64_t a1)
{
  if (!a1)
  {
    return 0.0;
  }

  [*(a1 + 24) doubleForKey:@"TimeSyncMessageTimeoutSecs"];
  return result;
}

id *sub_10002B7DC(id *result)
{
  if (result)
  {
    v1 = result;
    v2 = objc_alloc_init(NSDateComponents);
    [v2 setWeekday:{objc_msgSend(v1[3], "integerForKey:", @"FaceMetricsReminderWeekday"}];
    [v2 setHour:{objc_msgSend(v1[3], "integerForKey:", @"FaceMetricsReminderHour"}];
    [v2 setMinute:{objc_msgSend(v1[3], "integerForKey:", @"FaceMetricsReminderMinute"}];
    [v2 setTimeZone:{+[NSTimeZone localTimeZone](NSTimeZone, "localTimeZone")}];

    return v2;
  }

  return result;
}

uint64_t sub_10002B8BC(uint64_t result, void *a2, id *a3, void *a4, void *a5)
{
  if (!result)
  {
    return result;
  }

  v9 = result;
  v10 = [a4 bundleIdForConnection:result];
  if ([a2 bundleIdentifier])
  {
    if ([a2 bundleIdentifier])
    {
      goto LABEL_4;
    }

LABEL_13:
    if (a5)
    {
      *a5 = +[SRError authorizationError];
    }

    if (qword_100071AF8 == -1)
    {
      v12 = qword_100071B00;
      result = os_log_type_enabled(qword_100071B00, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }
    }

    else
    {
      dispatch_once(&qword_100071AF8, &stru_1000613E8);
      v12 = qword_100071B00;
      result = os_log_type_enabled(qword_100071B00, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }
    }

    v13 = 138543874;
    v14 = v9;
    v15 = 1026;
    v16 = [v9 processIdentifier];
    v17 = 2114;
    v18 = a2;
    _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Connection %{public}@ from pid %{public}d rejected because no bundle identifier could be found for this connection. Request: %{public}@", &v13, 0x1Cu);
    return 0;
  }

  [a2 setBundleIdentifier:v10];
  if (![a2 bundleIdentifier])
  {
    goto LABEL_13;
  }

LABEL_4:
  if (([objc_msgSend(a2 "bundleIdentifier")] & 1) != 0 || (result = sub_10002BB64(v9, @"com.apple.private.sensorkit.auth.request.arbitrary_bundle", 0, 0, 0, a3, a4, a5), result))
  {
    result = sub_10002BB64(v9, @"com.apple.sensorkit.reader.allow", [a2 sensor], objc_msgSend(a2, "bundleIdentifier"), @"com.apple.private.sensorkit.export.allow-all", a3, a4, a5);
    if (result)
    {
      if ([a2 conformsToProtocol:&OBJC_PROTOCOL___SRRequestRecording] && objc_msgSend(objc_msgSend(a2, "sensorConfiguration"), "count"))
      {
        v11 = [a2 sensor];

        return sub_10002BB64(v9, @"com.apple.SensorKit.reader.sensor-configuration.allow", v11, 0, 0, a3, a4, a5);
      }

      else
      {
        return 1;
      }
    }
  }

  return result;
}

BOOL sub_10002BB64(_BOOL8 result, void *a2, void *a3, void *a4, uint64_t a5, id *a6, void *a7, void *a8)
{
  if (!result)
  {
    return result;
  }

  v15 = result;
  if ((sub_1000296BC(a6) & 1) == 0)
  {
    if (!a8)
    {
      return 0;
    }

    v26 = 4098;
LABEL_28:
    v25 = [SRError authorizationErrorWithStatus:v26];
    goto LABEL_29;
  }

  if ((sub_1000297E4(a6) & 1) == 0)
  {
    if (!a8)
    {
      return 0;
    }

    v26 = 4097;
    goto LABEL_28;
  }

  v16 = [a3 sr_sensorByDeletingDeletionRecord];
  v17 = [a2 isEqualToString:@"com.apple.sensorkit.reader.allow"];
  if (([v15 _sr_hasEntitlement:a2 sensor:v16 valueProvider:a7] & 1) == 0)
  {
    v18 = v17 ? @"com.apple.developer.sensorkit.reader.allow" : 0;
    if (([v15 _sr_hasEntitlement:v18 sensor:v16 valueProvider:a7] & 1) == 0)
    {
      if (a8)
      {
        *a8 = +[SRError invalidEntitlementError];
      }

      if (qword_100071AF8 == -1)
      {
        v28 = qword_100071B00;
        result = os_log_type_enabled(qword_100071B00, OS_LOG_TYPE_ERROR);
        if (!result)
        {
          return result;
        }
      }

      else
      {
        dispatch_once(&qword_100071AF8, &stru_1000613E8);
        v28 = qword_100071B00;
        result = os_log_type_enabled(qword_100071B00, OS_LOG_TYPE_ERROR);
        if (!result)
        {
          return result;
        }
      }

      *buf = 138543874;
      v32 = v15;
      v33 = 1026;
      LODWORD(v34[0]) = [v15 processIdentifier];
      WORD2(v34[0]) = 2114;
      *(v34 + 6) = a2;
      _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Connection %{public}@ from pid %{public}d rejected for lacking entitlement for %{public}@", buf, 0x1Cu);
      return 0;
    }
  }

  if ([a2 isEqualToString:{@"com.apple.private.sensorkit.diagnostics.allow", @"com.apple.developer.sensorkit.reader.allow"}])
  {
    v19 = [@"com.apple.private.sensorkit.debugging.allow" isEqualToString:@"com.apple.sensorkit.reader.allow"];
    if (([v15 _sr_hasEntitlement:@"com.apple.private.sensorkit.debugging.allow" sensor:v16 valueProvider:a7] & 1) == 0)
    {
      v20 = v19 ? v30 : 0;
      if (([v15 _sr_hasEntitlement:v20 sensor:v16 valueProvider:a7] & 1) == 0 && (sub_10002B4EC(a6) & 1) == 0)
      {
        if (qword_100071AF8 == -1)
        {
          v29 = qword_100071B00;
          if (!os_log_type_enabled(qword_100071B00, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_38;
          }
        }

        else
        {
          dispatch_once(&qword_100071AF8, &stru_1000613E8);
          v29 = qword_100071B00;
          if (!os_log_type_enabled(qword_100071B00, OS_LOG_TYPE_ERROR))
          {
LABEL_38:
            if (a8)
            {
LABEL_39:
              v25 = +[SRError invalidEntitlementError];
              goto LABEL_29;
            }

            return 0;
          }
        }

        *buf = 138543618;
        v32 = v15;
        v33 = 1026;
        LODWORD(v34[0]) = [v15 processIdentifier];
        _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "Connection %{public}@ from pid %{public}d rejected because additional diagnostics are not enabled", buf, 0x12u);
        if (a8)
        {
          goto LABEL_39;
        }

        return 0;
      }
    }
  }

  if (!a4)
  {
    return 1;
  }

  v21 = [a7 isAuthorizedForSensor:v16 bundleIdentifier:a4];
  v22 = objc_autoreleasePoolPush();
  v23 = [a7 valueForEntitlement:a5 connection:v15];
  objc_autoreleasePoolPop(v22);
  result = 1;
  if ((v21 & 1) == 0 && !v23)
  {
    if (qword_100071AF8 == -1)
    {
      v24 = qword_100071B00;
      if (!os_log_type_enabled(qword_100071B00, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_22;
      }
    }

    else
    {
      dispatch_once(&qword_100071AF8, &stru_1000613E8);
      v24 = qword_100071B00;
      if (!os_log_type_enabled(qword_100071B00, OS_LOG_TYPE_DEFAULT))
      {
LABEL_22:
        if (a8)
        {
          v25 = +[SRError authorizationError];
LABEL_29:
          v27 = v25;
          result = 0;
          *a8 = v27;
          return result;
        }

        return 0;
      }
    }

    *buf = 138543618;
    v32 = a4;
    v33 = 2114;
    v34[0] = v16;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%{public}@ isn't authorized for %{public}@", buf, 0x16u);
    goto LABEL_22;
  }

  return result;
}

id sub_10002C5B8(id result, void *a2)
{
  if (result)
  {
    v5.receiver = result;
    v5.super_class = RDPruner;
    result = objc_msgSendSuper2(&v5, "init");
    if (result)
    {
      v3 = result;
      v4 = a2;
      result = v3;
      v3[1] = v4;
    }
  }

  return result;
}

BOOL sub_10002C674(uint64_t a1, id *a2, double a3, double a4)
{
  if (!a1)
  {
    return a1 != 0;
  }

  v7 = sub_10000BC68([RDPruneableDatastore alloc], *(a1 + 8));
  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v43 = a3;
  v39 = 0;
  while (v41[3] < a4)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = v41[3];
    if (v9 == a3)
    {
      v10 = sub_10000CEF0(v7, &v39, v9);
    }

    else
    {
      v11 = [(NSURL *)sub_10001ADB4(v9) lastPathComponent];
      v10 = sub_10000CFB0(v7, v11, &v39);
    }

    v12 = v10;
    if (v39)
    {
      v13 = v39;
    }

    else
    {
      v15 = [(NSDictionary *)v10 objectForKeyedSubscript:@"samples"];
      if (v15)
      {
        v17 = [SRDefaults alloc];
        v18 = *(a1 + 8);
        if (v18)
        {
          Property = objc_getProperty(v18, v16, 16, 1);
          v21 = *(a1 + 8);
          if (v21)
          {
            v22 = objc_getProperty(v21, v19, 24, 1);
          }

          else
          {
            v22 = 0;
          }
        }

        else
        {
          Property = 0;
          v22 = 0;
        }

        v23 = sub_10002A88C(Property, v22);
        v24 = sub_10004375C(v17, v23);
        v25 = [SRDatastore alloc];
        v26 = [(NSDictionary *)v12 objectForKeyedSubscript:@"metadata"];
        v27 = [(NSDictionary *)v12 objectForKeyedSubscript:@"sensorConfiguration"];
        if (v25)
        {
          v28 = sub_100040CAC(v25, v15, v26, v27, 2, v24, 0);
        }

        else
        {
          v28 = 0;
        }

        v35 = 0;
        v36 = &v35;
        v37 = 0x2020000000;
        v38 = 0;
        v29 = v41[3];
        v34[0] = _NSConcreteStackBlock;
        v34[1] = 3221225472;
        v34[2] = sub_10002CA0C;
        v34[3] = &unk_100061468;
        v34[4] = &v40;
        v34[5] = &v35;
        sub_100041818(v28, v34, v29, a4);
        if ((v36[3] & 1) == 0)
        {
          v41[3] = a4;
        }

        _Block_object_dispose(&v35, 8);
        v14 = 1;
        goto LABEL_19;
      }
    }

    v14 = 0;
LABEL_19:
    objc_autoreleasePoolPop(v8);
    if ((v14 & 1) == 0)
    {
      break;
    }
  }

  v30 = v39;
  if (a2)
  {
    *a2 = v39;
  }

  v31 = v30;
  _Block_object_dispose(&v40, 8);
  return a1 != 0;
}

void sub_10002C958(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10002C970(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10002C988(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_10002C9AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10002C9C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10002C9DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10002C9F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10002CA0C(uint64_t result, double a2)
{
  *(*(*(result + 32) + 8) + 24) = a2;
  *(*(*(result + 40) + 8) + 24) = 1;
  return result;
}

const __CFString *sub_10002CB34(uint64_t a1)
{
  if (a1 < 4096)
  {
    if (a1 <= 1)
    {
      if (a1)
      {
        if (a1 != 1)
        {
          return 0;
        }

        v3 = [NSBundle bundleForClass:objc_opt_class()];
        v4 = @"SRErrorNoAuthorization";
      }

      else
      {
        v3 = [NSBundle bundleForClass:objc_opt_class()];
        v4 = @"SRErrorInvalidEntitlement";
      }
    }

    else
    {
      switch(a1)
      {
        case 2:
          v3 = [NSBundle bundleForClass:objc_opt_class()];
          v4 = @"SRErrorDataInaccessible";
          break;
        case 3:
          v3 = [NSBundle bundleForClass:objc_opt_class()];
          v4 = @"SRErrorFetchRequestInvalid";
          break;
        case 4:
          v3 = [NSBundle bundleForClass:objc_opt_class()];
          v4 = @"SRErrorPromptDeclined";
          break;
        default:
          return 0;
      }
    }

    return [(NSBundle *)v3 localizedStringForKey:v4 value:&stru_100062328 table:0];
  }

  else
  {
    if (!os_variant_has_internal_content())
    {
      return 0;
    }

    if (a1 > 12288)
    {
      if (a1 > 12295)
      {
        if ((a1 - 20480) >= 5)
        {
          if (a1 == 12296)
          {
            return @"Provided sample is from the future";
          }

          if (a1 == 0x4000)
          {
            return @"Sensor Configuration is invalid";
          }
        }

        return 0;
      }

      if (a1 <= 12291)
      {
        if (a1 == 12289)
        {
          return @"Writer Not Authorized";
        }

        else if (a1 == 12290)
        {
          return @"Writer Input was invalid";
        }

        else
        {
          return @"No available memory mapped to write sample";
        }
      }

      else if (a1 > 12293)
      {
        if (a1 == 12294)
        {
          return @"Framework datastore state is invalid";
        }

        else
        {
          return @"Writer does not have explicit authorization";
        }
      }

      else if (a1 == 12292)
      {
        return @"Provided sample is out of order from previous samples";
      }

      else
      {
        return @"Provided sample is too large";
      }
    }

    else
    {
      if (a1 <= 8195)
      {
        if (a1 >= 0x2000)
        {
          if (a1 > 8193)
          {
            if (a1 == 8194)
            {
              return @"Internal Error";
            }

            else
            {
              return @"Prompt Busy";
            }
          }

          else if (a1 == 0x2000)
          {
            return @"No space available to write samples";
          }

          else
          {
            return @"Connection Not Found";
          }
        }

        switch(a1)
        {
          case 4096:
            return @"Required app is not installed";
          case 4097:
            return @"Required onboarding not completed";
          case 4098:
            return @"Global setting not enabled";
        }

        return 0;
      }

      if (a1 <= 8198)
      {
        if (a1 == 8196)
        {
          return @"Prompt is cancelled";
        }

        if (a1 != 8197)
        {
          return @"No device identifier could be found";
        }

        return 0;
      }

      if (a1 > 8200)
      {
        if (a1 == 8201)
        {
          return @"No new authorization groups were requested";
        }

        if (a1 == 12288)
        {
          return @"Writer Not Monitoring";
        }

        return 0;
      }

      if (a1 == 8199)
      {
        return @"Time synchronization state is invalid";
      }

      else
      {
        return @"The requested bundle authorization is being requested for could not be found";
      }
    }
  }
}

void *sub_10002D310(void *a1, void *a2, void *a3)
{
  if (!a1)
  {
    return 0;
  }

  v10.receiver = a1;
  v10.super_class = RDCacheDelete;
  v5 = objc_msgSendSuper2(&v10, "init");
  v7 = v5;
  if (v5)
  {
    objc_setProperty_nonatomic(v5, v6, a2, 32);
    objc_setProperty_nonatomic(v7, v8, a3, 24);
  }

  return v7;
}

void sub_10002D400(uint64_t a1)
{
  if (a1)
  {
    v1 = CacheDeleteRegisterInfoCallbacks();
    if (v1 < 0)
    {
      v2 = v1;
      v3 = qword_100071B10;
      if (os_log_type_enabled(qword_100071B10, OS_LOG_TYPE_FAULT))
      {
        *buf = 67240192;
        v5 = v2;
        _os_log_fault_impl(&_mh_execute_header, v3, OS_LOG_TYPE_FAULT, "Failed to register for CacheDelete. %{public}d", buf, 8u);
      }
    }
  }
}

NSDictionary *sub_10002D560(uint64_t a1, int a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = (a2 - 1);
  if (v4 < 4)
  {
    v5 = v4 + 1;
  }

  else
  {
    v5 = 0;
  }

  result = sub_10002D5A8(v3, v5, a3, 1);
  if (result)
  {

    return CFRetain(result);
  }

  return result;
}

NSDictionary *sub_10002D5A8(uint64_t a1, __darwin_ino64_t a2, void *a3, uint64_t a4)
{
  if (!a1)
  {
    return 0;
  }

  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v7 = [a3 objectForKeyedSubscript:@"CACHE_DELETE_VOLUME"];
  v8 = qword_100071B10;
  if (os_log_type_enabled(qword_100071B10, OS_LOG_TYPE_INFO))
  {
    buf.st_dev = 138543874;
    *&buf.st_mode = v7;
    WORD2(buf.st_ino) = 2048;
    *(&buf.st_ino + 6) = a2;
    HIWORD(buf.st_gid) = 1026;
    buf.st_rdev = a4;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "CacheDelete purgeable for volume %{public}@ with urgency %ld dryRun %{public, BOOL}d", &buf, 0x1Cu);
  }

  v9 = [(NSURL *)sub_10001A2B8(*(a1 + 32)) path];
  if (!v7 || (v10 = v9, memset(&buf, 0, sizeof(buf)), stat([v7 fileSystemRepresentation], &buf) < 0) || (memset(&v26, 0, sizeof(v26)), stat(-[NSString fileSystemRepresentation](v10, "fileSystemRepresentation"), &v26) < 0) || buf.st_dev != v26.st_dev)
  {
    v12 = qword_100071B10;
    if (os_log_type_enabled(qword_100071B10, OS_LOG_TYPE_INFO))
    {
      v13 = [(NSURL *)sub_10001A2B8(*(a1 + 32)) path];
      buf.st_dev = 138543618;
      *&buf.st_mode = v7;
      WORD2(buf.st_ino) = 2114;
      *(&buf.st_ino + 6) = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Volume doesn't match %{public}@ %{public}@", &buf, 0x16u);
    }
  }

  else
  {
    v11 = *(a1 + 24);
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10002DA48;
    v20[3] = &unk_100061518;
    v20[4] = a1;
    v20[5] = &v22;
    v20[6] = a2;
    v21 = a4;
    dispatch_async_and_wait(v11, v20);
    [objc_loadWeak((a1 + 16)) cacheDelete:a1 purgeWithUrgency:a2 dryRun:a4];
  }

  if (a4)
  {
    v14 = v23[3];
  }

  else
  {
    v14 = 0;
  }

  v27[0] = @"CACHE_DELETE_VOLUME";
  v27[1] = @"CACHE_DELETE_AMOUNT";
  v28[0] = v7;
  v28[1] = [NSNumber numberWithLongLong:v14];
  v15 = [NSDictionary dictionaryWithObjects:v28 forKeys:v27 count:2];
  v16 = qword_100071B10;
  if (os_log_type_enabled(qword_100071B10, OS_LOG_TYPE_INFO))
  {
    v17 = "purged";
    v18 = v23[3];
    if (a4)
    {
      v17 = "could purge";
    }

    buf.st_dev = 136315650;
    *&buf.st_mode = v17;
    WORD2(buf.st_ino) = 2050;
    *(&buf.st_ino + 6) = v18;
    HIWORD(buf.st_gid) = 2114;
    *&buf.st_rdev = v15;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Telling CacheDelete we %s %{public}lld %{public}@", &buf, 0x20u);
  }

  _Block_object_dispose(&v22, 8);
  return v15;
}

void sub_10002D918(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10002D930(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10002D948(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

NSDictionary *sub_10002D960(uint64_t a1, int a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = (a2 - 1);
  if (v4 < 4)
  {
    v5 = v4 + 1;
  }

  else
  {
    v5 = 0;
  }

  result = sub_10002D5A8(v3, v5, a3, 0);
  if (result)
  {

    return CFRetain(result);
  }

  return result;
}

__CFDictionary *__cdecl sub_10002D9AC(id a1, int a2, __CFDictionary *a3)
{
  v4[0] = @"CACHE_DELETE_VOLUME";
  v4[1] = @"CACHE_DELETE_AMOUNT";
  v5[0] = [(__CFDictionary *)a3 objectForKeyedSubscript:@"CACHE_DELETE_VOLUME"];
  v5[1] = &off_1000654F0;
  result = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:2];
  if (result)
  {
    return CFRetain(result);
  }

  return result;
}

id sub_10002DA48(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    Weak = objc_loadWeak((v2 + 8));
    v4 = *(a1 + 32);
  }

  else
  {
    v4 = 0;
    Weak = 0;
  }

  result = [Weak cacheDelete:v4 purgeWithUrgency:*(a1 + 48) dryRun:*(a1 + 56)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

NSDictionary *sub_10002DADC(uint64_t a1)
{
  v1 = [NSMutableDictionary dictionaryWithDictionary:a1];
  v2 = mach_continuous_time();
  if (qword_100071B60 != -1)
  {
    dispatch_once(&qword_100071B60, &stru_100060D90);
  }

  v3 = qword_100071B68;
  v4 = *&qword_100071B70;
  v5 = *&qword_100071B78;
  TMConvertTicksToSeconds();
  if (v3 >= v2)
  {
    v6 = -v6;
  }

  v7 = v5 + v4 + v6;
  Current = CFAbsoluteTimeGetCurrent();
  [(NSMutableDictionary *)v1 setObject:[NSNumber forKeyedSubscript:"numberWithDouble:" numberWithDouble:v7], @"RDAnalyticsSRAbsoluteTimeKey"];
  [(NSMutableDictionary *)v1 setObject:[NSNumber forKeyedSubscript:"numberWithDouble:" numberWithDouble:?], @"RDAnalyticsCFAbsoluteTimeKey"];

  return [NSDictionary dictionaryWithDictionary:v1];
}

NSBundle *sub_10002E77C(uint64_t a1, _OWORD *a2)
{
  objc_opt_self();
  v3 = a2[1];
  v12[0] = *a2;
  v12[1] = v3;
  result = sub_10001C624(NSURL, v12);
  if (result)
  {
    v5 = result;
    v6 = _CFBundleCopyBundleURLForExecutableURL();
    if (v6)
    {
      v7 = v6;
      result = [NSBundle bundleWithURL:v6];
      if (result)
      {
        return result;
      }

      if (qword_100071B28 != -1)
      {
        dispatch_once(&qword_100071B28, &stru_100061650);
        v8 = qword_100071B20;
        if (!os_log_type_enabled(qword_100071B20, OS_LOG_TYPE_ERROR))
        {
          return 0;
        }

        goto LABEL_6;
      }

      v8 = qword_100071B20;
      if (os_log_type_enabled(qword_100071B20, OS_LOG_TYPE_ERROR))
      {
LABEL_6:
        LODWORD(v12[0]) = 138543362;
        *(v12 + 4) = v7;
        v9 = "Could not create bundle for bundle URL %{public}@";
        v10 = v8;
LABEL_13:
        _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, v9, v12, 0xCu);
      }

      return 0;
    }

    if (qword_100071B28 == -1)
    {
      v11 = qword_100071B20;
      if (!os_log_type_enabled(qword_100071B20, OS_LOG_TYPE_ERROR))
      {
        return 0;
      }
    }

    else
    {
      dispatch_once(&qword_100071B28, &stru_100061650);
      v11 = qword_100071B20;
      if (!os_log_type_enabled(qword_100071B20, OS_LOG_TYPE_ERROR))
      {
        return 0;
      }
    }

    LODWORD(v12[0]) = 138543362;
    *(v12 + 4) = v5;
    v9 = "Could not get bundle URL for executable URL %{public}@";
    v10 = v11;
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_10002EA68(uint64_t a1, dispatch_queue_t queue)
{
  v2 = a1;
  if (!a1)
  {
    return v2;
  }

  dispatch_assert_queue_V2(queue);
  v4 = qword_100071B30;
  newValue = queue;
  if (os_log_type_enabled(qword_100071B30, OS_LOG_TYPE_INFO))
  {
    v5 = [+[NSBundle mainBundle](NSBundle bundleIdentifier];
    v6 = mach_continuous_time();
    if (qword_100071B60 != -1)
    {
      dispatch_once(&qword_100071B60, &stru_100060D90);
    }

    v7 = qword_100071B68;
    v8 = *&qword_100071B70;
    v9 = *&qword_100071B78;
    TMConvertTicksToSeconds();
    if (v7 >= v6)
    {
      v10 = -v10;
    }

    *buf = 138543618;
    *&buf[4] = v5;
    *&buf[12] = 2050;
    *&buf[14] = v9 + v8 + v10;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Starting %{public}@, Current Time: %{public}f", buf, 0x16u);
  }

  v11 = objc_alloc_init(RDFileURLs);
  v114 = +[SRAuthorizationStore allSensorsStore];
  v12 = sub_100026A40([RDStateCache alloc], v11, v114);
  v13 = v12;
  if (v12)
  {
    v14 = v12[5];
    qword_100071B78 = v14;
    v15 = qword_100071B30;
    if (!os_log_type_enabled(qword_100071B30, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }
  }

  else
  {
    v14 = 0;
    qword_100071B78 = 0;
    v15 = qword_100071B30;
    if (!os_log_type_enabled(qword_100071B30, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }
  }

  v16 = mach_continuous_time();
  if (qword_100071B60 != -1)
  {
    dispatch_once(&qword_100071B60, &stru_100060D90);
  }

  v17 = qword_100071B68;
  v18 = *&qword_100071B70;
  v19 = *&qword_100071B78;
  TMConvertTicksToSeconds();
  if (v17 >= v16)
  {
    v20 = -v20;
  }

  *buf = 134218240;
  *&buf[4] = v14;
  *&buf[12] = 2050;
  *&buf[14] = v19 + v18 + v20;
  _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Initialized SRAbsoluteTime with cached remote offset. RemoteRTCOffset: %f, Current Time: %{public}f", buf, 0x16u);
LABEL_15:
  v21 = objc_alloc_init(RDDefaults);
  v22 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___SRSensorKitServiceServerReading];
  [(NSXPCInterface *)v22 setClasses:[NSSet setWithObject:?]ofReply:"requestFileHandleForReading:reply:", 0, 0];
  [(NSXPCInterface *)v22 setClasses:[NSSet setWithObject:?]ofReply:"requestFileHandleForReading:afterSegment:reply:", 0, 0];
  [(NSXPCInterface *)v22 setClasses:[NSSet setWithObject:?]ofReply:"startRecording:reply:", 0, 0];
  [(NSXPCInterface *)v22 setClasses:[NSSet setWithObject:?]ofReply:"stopRecording:reply:", 0, 0];
  [(NSXPCInterface *)v22 setClasses:[NSSet setWithObject:?]ofReply:"fetchAllDevices:reply:", 0, 0];
  [(NSXPCInterface *)v22 setClasses:[NSSet setWithObject:?]ofReply:"fetchReaderMetadata:reply:", 0, 0];
  v23 = sub_100007A70([RDListener alloc], @"com.apple.SensorKit.reader", [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___SRSensorKitServiceClientReading], v22, v2, 0xFFFFFFFFFFFFFFFFLL, newValue, v13);
  v112 = sub_100007A70([RDListener alloc], @"com.apple.SensorKit.writer", [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___SRSensorKitServiceClientWriting], [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___SRSensorKitServiceServerWriting], v2, 1, newValue, v13);
  v113 = sub_100007A70([RDListener alloc], @"com.apple.SensorKit.pruner", [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___SRSensorKitServiceClientPruning], [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___SRSensorKitServiceServerPruning], v2, 1, newValue, v13);
  v24 = sub_100007A70([RDListener alloc], @"com.apple.SensorKit.debugging", [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___SRSensorKitServiceClientDebugging], [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___SRSensorKitServiceServerDebugging], v2, 1, newValue, v13);
  v111 = sub_10003A4EC([RDAuthorizationBroadcaster alloc], newValue, v21, v13, v114);
  v115 = sub_100001A94([RDClientInterestCache alloc], v11);
  v109 = sub_100025A68([RDLaunchEvents alloc], newValue, v11, v21);
  if (sub_10002B1E8(v21) && (v25 = sub_10003E8EC([RDAnalyticsEventListener alloc], v13)) != 0)
  {
    v110 = v25;
    objc_storeWeak(v25 + 2, v2);
  }

  else
  {
    v110 = 0;
  }

  v27 = v112;
  v26 = v113;
  v108 = sub_10002D310([RDCacheDelete alloc], v11, newValue);
  v107 = sub_10001DB9C([RDNotifier alloc], v21, v13, v115, v114, newValue);
  dispatch_assert_queue_V2(newValue);
  v117.receiver = v2;
  v117.super_class = RDDaemon;
  v28 = objc_msgSendSuper2(&v117, "init");
  v2 = v28;
  if (v28)
  {
    objc_setProperty_nonatomic(v28, v29, v21, 56);
    objc_setProperty_nonatomic(v2, v30, v13, 104);
    objc_setProperty_nonatomic(v2, v31, v11, 64);
    v32 = *(v2 + 104);
    v105 = v24;
    if (v32)
    {
      v33 = *(v32 + 72);
      objc_opt_self();
      v34 = qword_100071B88;
      if (qword_100071B88 == v33)
      {
LABEL_23:
        v35 = *(v2 + 104);
        v103 = v13;
        v104 = v11;
        v102 = v21;
        v36 = &off_100071000;
        if (v35 && *(v35 + 24) == 140000)
        {
          goto LABEL_52;
        }

        v37 = qword_100071B30;
        if (os_log_type_enabled(qword_100071B30, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Migrating legacy defaults", buf, 2u);
        }

        v38 = *(v2 + 56);
        if (v38)
        {
          v101 = v23;
          [*(v38 + 24) doubleForKey:@"LastTimeReminderAlertShown"];
          v40 = *(v2 + 104);
          if (!v40)
          {
LABEL_30:
            v41 = +[NSMutableDictionary dictionary];
            v118 = 0u;
            v119 = 0u;
            v120 = 0u;
            v121 = 0u;
            obj = [*(v2 + 112) readerAuthorizationGroups];
            v42 = [obj countByEnumeratingWithState:&v118 objects:buf count:16];
            if (v42)
            {
              v43 = v42;
              v44 = *v119;
              do
              {
                for (i = 0; i != v43; i = i + 1)
                {
                  if (*v119 != v44)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v46 = *(*(&v118 + 1) + 8 * i);
                  v47 = objc_autoreleasePoolPush();
                  v48 = [NSString stringWithFormat:@"%@.ServiceStartTime", v46];
                  v49 = *(v2 + 56);
                  if (v49)
                  {
                    v50 = [*(v49 + 24) objectForKey:v48];
                    if (!v50)
                    {
                      goto LABEL_39;
                    }

LABEL_38:
                    [(objc_class *)v41 setObject:v50 forKeyedSubscript:v46];
                    goto LABEL_39;
                  }

                  v50 = [0 objectForKey:v48];
                  if (v50)
                  {
                    goto LABEL_38;
                  }

LABEL_39:
                  v51 = *(v2 + 56);
                  if (v51)
                  {
                    v52 = *(v51 + 24);
                  }

                  else
                  {
                    v52 = 0;
                  }

                  [v52 removeObjectForKey:v48];
                  objc_autoreleasePoolPop(v47);
                }

                v43 = [obj countByEnumeratingWithState:&v118 objects:buf count:16];
              }

              while (v43);
            }

            v53 = *(v2 + 104);
            v27 = v112;
            v36 = &off_100071000;
            if (v53)
            {
              isa = v53[6].super.isa;
              if (isa != v41)
              {
                v53[6].super.isa = v41;
              }

              sub_100027584(v53);
              v55 = *(v2 + 104);
              if (v55)
              {
                v55[3].super.isa = 140000;
                sub_100027584(v55);
              }
            }

            sub_100029410(*(v2 + 56));
            v23 = v101;
LABEL_52:
            v56 = mach_continuous_time();
            if (qword_100071B60 != -1)
            {
              dispatch_once(&qword_100071B60, &stru_100060D90);
            }

            v57 = qword_100071B68;
            v58 = *(v36 + 366);
            v59 = *&qword_100071B78;
            TMConvertTicksToSeconds();
            v61 = *(v2 + 104);
            if (v61)
            {
              if (v57 >= v56)
              {
                v60 = -v60;
              }

              *(v61 + 16) = v59 + v58 + v60 - *(v61 + 40);
              sub_100027584(v61);
            }

            v62 = qword_100071B30;
            if (os_log_type_enabled(qword_100071B30, OS_LOG_TYPE_DEFAULT))
            {
              v64 = *(v2 + 104);
              *buf = 138543362;
              *&buf[4] = v64;
              _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "Cached State: %{public}@", buf, 0xCu);
            }

            objc_setProperty_nonatomic(v2, v63, newValue, 48);
            *(v2 + 128) = v23;
            *(v2 + 136) = v27;
            *(v2 + 144) = v113;
            objc_setProperty_nonatomic(v2, v65, v107, 96);
            *(v2 + 152) = v105;
            objc_setProperty_nonatomic(v2, v66, v111, 24);
            v68 = *(v2 + 24);
            if (v68)
            {
              objc_storeWeak((v68 + 24), v2);
            }

            objc_setProperty_nonatomic(v2, v67, v114, 112);
            [*(v2 + 112) addReaderAuthorizationDelegate:v2];
            objc_setProperty_nonatomic(v2, v69, v115, 32);
            objc_setProperty_nonatomic(v2, v70, 0, 16);
            objc_setProperty_nonatomic(v2, v71, 0, 88);
            objc_setProperty_nonatomic(v2, v72, v109, 40);
            v74 = *(v2 + 40);
            if (v74)
            {
              objc_storeWeak((v74 + 8), v2);
            }

            objc_setProperty_nonatomic(v2, v73, v110, 80);
            objc_setProperty_nonatomic(v2, v75, v108, 120);
            v76 = *(v2 + 120);
            if (v76)
            {
              objc_storeWeak((v76 + 8), v2);
              v77 = *(v2 + 120);
              v78 = (v2 + 80);
              if (v77)
              {
                objc_storeWeak((v77 + 16), *v78);
              }

              v79 = qword_100071B30;
              if (os_log_type_enabled(qword_100071B30, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_68;
              }
            }

            else
            {
              v78 = (v2 + 80);
              v79 = qword_100071B30;
              if (os_log_type_enabled(qword_100071B30, OS_LOG_TYPE_DEFAULT))
              {
LABEL_68:
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_DEFAULT, "Verifying datastore for RTC rollback", buf, 2u);
              }
            }

            if (sub_10002747C(*(v2 + 104)))
            {
              v80 = qword_100071B30;
              if (os_log_type_enabled(qword_100071B30, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_error_impl(&_mh_execute_header, v80, OS_LOG_TYPE_ERROR, "RTC has rolled back!! Removing existing datastore", buf, 2u);
              }

              sub_10003606C(v2, 4, 4096);
              sub_10001DB60();
            }

            v81 = v23;
            dispatch_assert_queue_V2(*(v2 + 48));
            v82 = sub_10003A2C0(*(v2 + 64), *(v2 + 56));
            v83 = sub_10000DB60([RDTopLevelInformingDatastore alloc], v82);
            v84 = v83;
            v118 = 0u;
            v119 = 0u;
            v120 = 0u;
            v121 = 0u;
            if (v83)
            {
              v85 = sub_10000DC14(v83, 0);
              v86 = [v85 countByEnumeratingWithState:&v118 objects:buf count:16];
              if (v86)
              {
                goto LABEL_75;
              }
            }

            else
            {
              v85 = 0;
              v86 = [0 countByEnumeratingWithState:&v118 objects:buf count:16];
              if (v86)
              {
LABEL_75:
                v87 = v86;
                v88 = *v119;
                do
                {
                  for (j = 0; j != v87; j = j + 1)
                  {
                    if (*v119 != v88)
                    {
                      objc_enumerationMutation(v85);
                    }

                    v90 = *(*(&v118 + 1) + 8 * j);
                    v91 = [objc_msgSend(v2 authorizedAndInterestedClientsForSensor:{v90), "count"}];
                    if ([sub_100008650(*(v2 + 136) v90)])
                    {
                      v92 = 1;
                    }

                    else
                    {
                      v92 = v91 == 0;
                    }

                    if (!v92)
                    {
                      sub_10001D8DC(RDNotifier, 1, v90);
                    }
                  }

                  v87 = [v85 countByEnumeratingWithState:&v118 objects:buf count:16];
                }

                while (v87);
              }
            }

            if (!*(v2 + 88))
            {
              *(v2 + 88) = sub_1000237EC([RDGizmoSyncService alloc], *(v2 + 64), *(v2 + 56), *(v2 + 48), 1);
              if (sub_10002B1E8(*(v2 + 56)))
              {
                v93 = *(v2 + 88);
                if (v93)
                {
                  [*(v93 + 56) addObject:*v78];
                }
              }
            }

            v94 = *(v2 + 16);
            v13 = v103;
            v11 = v104;
            v21 = v102;
            v23 = v81;
            v27 = v112;
            v24 = v105;
            if (!v94)
            {
              v95 = *(v2 + 112);
              v96 = sub_10001BCD0(*(v2 + 88), *(v2 + 48), *(v2 + 64), *(v2 + 56), *(v2 + 104));
              *(v2 + 16) = v96;
              [v96 setDelegate:v2];
              v97 = sub_1000021B0([RDIDSMessageEventListener alloc], *(v2 + 64), *(v2 + 56));
              *(v2 + 72) = v97;
              v98 = *(v2 + 88);
              if (v98)
              {
                [*(v98 + 56) addObject:v97];
              }

              v94 = *(v2 + 16);
            }

            [v94 validatePreferWifiAssertion];
            *buf = @"com.apple.sensorkit.removeOldData";
            *&buf[8] = @"com.apple.sensorkit.gcKeys";
            *&buf[16] = @"com.apple.sensorkit.postMetric";
            v123 = @"com.apple.sensorkit.syncCompanionStateToGizmo";
            v124 = @"com.apple.sensorkit.syncCompanionStateToGizmoLocked";
            v99 = [NSArray arrayWithObjects:buf count:5];
            sub_10002D400(*(v2 + 120));
            [*(v2 + 40) registerForXPCEvent:@"com.apple.notifyd.matching"];
            [*(v2 + 40) registerForXPCActivities:v99];
            v26 = v113;
            goto LABEL_102;
          }
        }

        else
        {
          v101 = v23;
          [0 doubleForKey:@"LastTimeReminderAlertShown"];
          v40 = *(v2 + 104);
          if (!v40)
          {
            goto LABEL_30;
          }
        }

        v40[1].super.isa = v39;
        sub_100027584(v40);
        goto LABEL_30;
      }
    }

    else
    {
      v33 = 0;
      objc_opt_self();
      v34 = qword_100071B88;
      if (!qword_100071B88)
      {
        goto LABEL_23;
      }
    }

    qword_100071B88 = v33;
    goto LABEL_23;
  }

LABEL_102:
  if (v23)
  {
    [v23[8] resume];
  }

  if (v27)
  {
    [v27[8] resume];
  }

  if (v26)
  {
    [v26[8] resume];
  }

  if (v24)
  {
    [v24[8] resume];
  }

  return v2;
}

void sub_10002FDB0(uint64_t a1, void *a2)
{
  if (a1)
  {
    v2 = a1;
    if (!sub_10001A2B8(*(a1 + 64)))
    {
      v45 = qword_100071B30;
      if (os_log_type_enabled(qword_100071B30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v46 = "No top level directory found, no need to continue";
LABEL_55:
        _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, v46, buf, 2u);
      }

LABEL_56:
      [a2 markCompleted];
      return;
    }

    v3 = *(v2 + 88);
    if (!v3 || !*(v3 + 16))
    {
      v47 = *(v2 + 104);
      if (!v47 || *(v47 + 32) == 0.0)
      {
        v45 = qword_100071B30;
        if (os_log_type_enabled(qword_100071B30, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v46 = "Unable to garbage collect keys because time hasn't synced with companion";
          goto LABEL_55;
        }

        goto LABEL_56;
      }
    }

    v4 = mach_continuous_time();
    if (qword_100071B60 != -1)
    {
      dispatch_once(&qword_100071B60, &stru_100060D90);
    }

    v5 = qword_100071B68;
    v6 = *&qword_100071B70;
    v7 = *&qword_100071B78;
    TMConvertTicksToSeconds();
    if (v5 >= v4)
    {
      v9 = -v8;
    }

    else
    {
      v9 = v8;
    }

    v10 = sub_10002B538(*(v2 + 56));
    v11 = sub_10003A2C0(*(v2 + 64), *(v2 + 56));
    v48 = sub_10000DB60([RDTopLevelInformingDatastore alloc], v11);
    v12 = sub_10000DC14(v48, 1);
    v13 = objc_autoreleasePoolPush();
    v50 = v12;
    v14 = [v12 nextObject];
    if (!v14)
    {
LABEL_50:
      objc_autoreleasePoolPop(v13);

      goto LABEL_56;
    }

    v15 = v14;
    v16 = v7 + v6 + v9 + v10;
    v49 = v2;
    while (1)
    {
      if ([a2 deferIfNeeded])
      {

        objc_autoreleasePoolPop(v13);
        return;
      }

      v17 = mach_continuous_time();
      context = v13;
      if (qword_100071B60 != -1)
      {
        dispatch_once(&qword_100071B60, &stru_100060D90);
      }

      v18 = qword_100071B68;
      v19 = *&qword_100071B70;
      v20 = *&qword_100071B78;
      TMConvertTicksToSeconds();
      if (v18 >= v17)
      {
        v22 = -v21;
      }

      else
      {
        v22 = v21;
      }

      v23 = sub_100029E20(*(v2 + 56), v15);
      objc_opt_self();
      v24 = sub_10003A334(v15, qword_100071B88, *(v2 + 64), *(v2 + 56));
      v25 = sub_100011CFC([RDEncryptingDatastore alloc], v24);
      v27 = [NSString stringWithFormat:@"%@.", v15, v48];
      v53 = 0u;
      v54 = 0u;
      v55 = 0u;
      v56 = 0u;
      if (v25)
      {
        v28 = v25[1];
        v29 = v25[2];
        if (v28)
        {
          Property = objc_getProperty(v28, v26, 24, 1);
        }

        else
        {
          Property = 0;
        }

        v31 = [v29 keyNamesForSensor:Property];
        v32 = [v31 countByEnumeratingWithState:&v53 objects:v61 count:16];
        if (v32)
        {
LABEL_23:
          v33 = v32;
          v34 = fmax(v20 + v19 + v22 - v23, 0.0);
          v35 = *v54;
          do
          {
            for (i = 0; i != v33; i = i + 1)
            {
              if (*v54 != v35)
              {
                objc_enumerationMutation(v31);
              }

              v37 = *(*(&v53 + 1) + 8 * i);
              [objc_msgSend(objc_msgSend(objc_msgSend(v37 stringByReplacingOccurrencesOfString:v27 withString:{&stru_100062328), "componentsSeparatedByString:", @"_", "lastObject"), "doubleValue"}];
              if (v38 == 0.0)
              {
                v39 = qword_100071B30;
                if (os_log_type_enabled(qword_100071B30, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138543362;
                  v58 = v37;
                  _os_log_error_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "Unable to determine file age of key %{public}@", buf, 0xCu);
                }

                continue;
              }

              if (v38 < v34 || v38 > v16)
              {
                if (v38 >= v34)
                {
                  if (v38 > v16)
                  {
                    v44 = qword_100071B30;
                    if (os_log_type_enabled(qword_100071B30, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138543618;
                      v58 = v37;
                      v59 = 2048;
                      v60 = v16;
                      v42 = v44;
                      v43 = "Removing key %{public}@ because it is too new (< %f secs))";
LABEL_42:
                      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, v43, buf, 0x16u);
                    }
                  }
                }

                else
                {
                  v41 = qword_100071B30;
                  if (os_log_type_enabled(qword_100071B30, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138543618;
                    v58 = v37;
                    v59 = 2048;
                    v60 = v34;
                    v42 = v41;
                    v43 = "Removing key %{public}@ because it is too old (> %f secs))";
                    goto LABEL_42;
                  }
                }

                if (v25)
                {
                  [qword_100071B80 removeFromKeychain:v37];
                  [v25[2] removeFromKeychain:v37];
                }

                continue;
              }
            }

            v33 = [v31 countByEnumeratingWithState:&v53 objects:v61 count:16];
          }

          while (v33);
        }
      }

      else
      {
        v31 = 0;
        v32 = [0 countByEnumeratingWithState:&v53 objects:v61 count:16];
        if (v32)
        {
          goto LABEL_23;
        }
      }

      objc_autoreleasePoolPop(context);
      v13 = objc_autoreleasePoolPush();
      v15 = [v50 nextObject];
      v2 = v49;
      if (!v15)
      {
        goto LABEL_50;
      }
    }
  }
}

void sub_10003036C(uint64_t a1, void *a2, const char *a3, uint64_t a4)
{
  v6 = sub_100029C30(*(a1 + 56), a2);
  v7 = mach_continuous_time();
  if (qword_100071B60 != -1)
  {
    dispatch_once(&qword_100071B60, &stru_100060D90);
  }

  v8 = qword_100071B68;
  v9 = *&qword_100071B70;
  v10 = *&qword_100071B78;
  TMConvertTicksToSeconds();
  if (v8 >= v7)
  {
    v12 = -v11;
  }

  else
  {
    v12 = v11;
  }

  v13 = mach_continuous_time();
  if (qword_100071B60 != -1)
  {
    dispatch_once(&qword_100071B60, &stru_100060D90);
  }

  v14 = qword_100071B68;
  v15 = *&qword_100071B70;
  v16 = *&qword_100071B78;
  TMConvertTicksToSeconds();
  if (v14 >= v13)
  {
    v18 = -v17;
  }

  else
  {
    v18 = v17;
  }

  v19 = sub_10002B538(*(a1 + 56));
  v20 = sub_10003A334(a2, 0, *(a1 + 64), *(a1 + 56));
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v34 = sub_10000D068([RDInformingDatastore alloc], v20);
  obj = sub_10000D2B8(v34);
  v21 = [(NSSet *)obj countByEnumeratingWithState:&v38 objects:v44 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = fmax(v9 - v6 + v10 + v12, 0.0);
    v24 = v16 + v15 + v18 + v19;
    v25 = *v39;
    do
    {
      for (i = 0; i != v22; i = i + 1)
      {
        if (*v39 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v27 = *(*(&v38 + 1) + 8 * i);
        v28 = objc_autoreleasePoolPush();
        v29 = *(a1 + 64);
        v43 = v27;
        [+[NSFileManager defaultManager](NSFileManager removeItemAtURL:"removeItemAtURL:error:" error:sub_10001AB74(v29, [NSArray arrayWithObjects:&v43 count:1, v34], a2, 1), 0];
        v30 = *(a1 + 64);
        v42 = v27;
        [+[NSFileManager defaultManager](NSFileManager removeItemAtURL:"removeItemAtURL:error:" error:sub_10001AC44(v30, [NSArray arrayWithObjects:&v42 count:1], a2, 1), 0];
        v31 = sub_10003A334(a2, v27, *(a1 + 64), *(a1 + 56));
        v32 = sub_10000BC68([RDPruneableDatastore alloc], &v31->super.isa);
        v33 = v32;
        if (v32)
        {
          sub_10000BE00(v32, a3, a4, 0, v23, v24);
        }

        sub_10000C428(v33);

        objc_autoreleasePoolPop(v28);
      }

      v22 = [(NSSet *)obj countByEnumeratingWithState:&v38 objects:v44 count:16];
    }

    while (v22);
  }
}

void sub_1000306A0(uint64_t a1, void *a2, const char *a3, uint64_t a4)
{
  if (a1)
  {
    v6 = a1;
    v7 = *(a1 + 88);
    if (!v7 || !*(v7 + 16))
    {
      v54 = *(a1 + 104);
      if (!v54 || *(v54 + 32) == 0.0)
      {
        v55 = qword_100071B30;
        if (os_log_type_enabled(qword_100071B30, OS_LOG_TYPE_DEFAULT))
        {
          *v115 = 0;
          _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "Unable to garbage collect data because time hasn't synced with companion", v115, 2u);
        }

LABEL_84:
        [a2 markCompleted];
        return;
      }
    }

    v75 = sub_10003A2C0(*(a1 + 64), *(a1 + 56));
    v84 = 0u;
    v85 = 0u;
    v86 = 0u;
    v87 = 0u;
    v82 = sub_10000DB60([RDTopLevelInformingDatastore alloc], v75);
    v8 = sub_10000DC14(v82, 1);
    v9 = [v8 countByEnumeratingWithState:&v84 objects:v105 count:16];
    v83 = v6;
    if (!v9)
    {
      goto LABEL_17;
    }

    v10 = v9;
    v11 = *v85;
    if (a3 != 2 && a4 != 4096)
    {
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v85 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v84 + 1) + 8 * i);
          v14 = objc_autoreleasePoolPush();
          if ([a2 deferIfNeeded])
          {
            goto LABEL_95;
          }

          if (([v13 hasSuffix:@".tombstones"] & 1) == 0)
          {
            if (![objc_msgSend(v83 authorizedAndInterestedClientsForSensor:{v13), "count"}])
            {
              sub_10003115C(v83, v13, 3, 0);
            }

            sub_10003036C(v83, v13, a3, a4);
          }

          objc_autoreleasePoolPop(v14);
        }

        v10 = [v8 countByEnumeratingWithState:&v84 objects:v105 count:16];
        v6 = v83;
      }

      while (v10);
      goto LABEL_17;
    }

    while (2)
    {
      for (j = 0; j != v10; j = j + 1)
      {
        if (*v85 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v72 = *(*(&v84 + 1) + 8 * j);
        v14 = objc_autoreleasePoolPush();
        if ([a2 deferIfNeeded])
        {
LABEL_95:

          objc_autoreleasePoolPop(v14);
          return;
        }

        if (([v72 hasSuffix:@".tombstones"] & 1) == 0 && !objc_msgSend(objc_msgSend(v83, "authorizedAndInterestedClientsForSensor:", v72), "count"))
        {
          sub_10003115C(v83, v72, 3, 0);
        }

        sub_10003036C(v83, v72, a3, a4);
        objc_autoreleasePoolPop(v14);
      }

      v10 = [v8 countByEnumeratingWithState:&v84 objects:v105 count:16];
      v6 = v83;
      if (v10)
      {
        continue;
      }

      break;
    }

LABEL_17:

    v15 = sub_10003A2C0(v6[8], v6[7]);
    v16 = sub_10000DB60([RDTopLevelInformingDatastore alloc], v15);
    v101 = 0u;
    v102 = 0u;
    v103 = 0u;
    v104 = 0u;
    v73 = v16;
    if (v16)
    {
      v16 = sub_10000DC14(v16, 0);
    }

    obj = v16;
    v79 = [v16 countByEnumeratingWithState:&v101 objects:v115 count:{16, v73}];
    if (!v79)
    {
LABEL_75:

      v56 = sub_100012B50([RDIDSMessageStore alloc], v75);
      v57 = mach_continuous_time();
      if (qword_100071B60 != -1)
      {
        dispatch_once(&qword_100071B60, &stru_100060D90);
      }

      v58 = qword_100071B68;
      v59 = *&qword_100071B70;
      v60 = *&qword_100071B78;
      TMConvertTicksToSeconds();
      if (v58 >= v57)
      {
        v61 = -v61;
      }

      v62 = v60 + v59 + v61 - sub_100029C30(v83[7], 0);
      v63 = mach_continuous_time();
      if (qword_100071B60 != -1)
      {
        dispatch_once(&qword_100071B60, &stru_100060D90);
      }

      v64 = qword_100071B68;
      v65 = *&qword_100071B70;
      v66 = *&qword_100071B78;
      TMConvertTicksToSeconds();
      if (v64 >= v63)
      {
        v67 = -v67;
      }

      v68 = v66 + v65 + v67;
      v69 = sub_10002B538(v83[7]);
      sub_1000139B8(v56, v62, v68 + v69);

      v70 = sub_10000E144([RDTopLevelPruneableDatastore alloc], v75);
      sub_10000E1F8(v70);

      goto LABEL_84;
    }

    v78 = *v102;
LABEL_22:
    v17 = 0;
    while (1)
    {
      if (*v102 != v78)
      {
        objc_enumerationMutation(obj);
      }

      v81 = v17;
      v19 = *(*(&v101 + 1) + 8 * v17);
      context = objc_autoreleasePoolPush();
      v97 = 0u;
      v98 = 0u;
      v99 = 0u;
      v100 = 0u;
      v20 = v6[4];
      if (v20)
      {
        v21 = [*(v20 + 16) rd_objectsForSensor:v19 fallbackURL:{sub_10001AAE4(*(v20 + 8), v19)}];
        v22 = [v21 countByEnumeratingWithState:&v97 objects:v114 count:16];
        if (v22)
        {
          break;
        }

        goto LABEL_47;
      }

      v21 = 0;
      v22 = [0 countByEnumeratingWithState:&v97 objects:v114 count:16];
      if (v22)
      {
        break;
      }

LABEL_47:
      v94 = 0u;
      v95 = 0u;
      v92 = 0u;
      v93 = 0u;
      v35 = v6[4];
      if (v35)
      {
        v36 = [*(v35 + 24) rd_objectsForSensor:v19 fallbackURL:{sub_10001AB2C(*(v35 + 8), v19)}];
      }

      else
      {
        v36 = 0;
      }

      v37 = [v36 countByEnumeratingWithState:&v92 objects:v107 count:16];
      if (v37)
      {
        v38 = v37;
        v39 = *v93;
        do
        {
          for (k = 0; k != v38; k = k + 1)
          {
            if (*v93 != v39)
            {
              objc_enumerationMutation(v36);
            }

            v41 = *(*(&v92 + 1) + 8 * k);
            v42 = objc_autoreleasePoolPush();
            v43 = [v41 objectForKeyedSubscript:@"_requestingBundleIdentifier"];
            if (([+[LSApplicationWorkspace defaultWorkspace](LSApplicationWorkspace "defaultWorkspace")] & 1) == 0)
            {
              v96 = 0;
              if ((sub_100001EC0(v6[4], v43, v19, &v96) & 1) == 0)
              {
                v44 = qword_100071B30;
                if (os_log_type_enabled(qword_100071B30, OS_LOG_TYPE_FAULT))
                {
                  *buf = 138543618;
                  v109 = v43;
                  v110 = 2114;
                  v111 = v96;
                  _os_log_fault_impl(&_mh_execute_header, v44, OS_LOG_TYPE_FAULT, "Failed to remove configuration for uninstalled client %{public}@ because %{public}@", buf, 0x16u);
                }
              }
            }

            objc_autoreleasePoolPop(v42);
          }

          v38 = [v36 countByEnumeratingWithState:&v92 objects:v107 count:16];
        }

        while (v38);
      }

      v45 = [SRSensorDescription sensorDescriptionForSensor:v19];
      if (v45)
      {
        v46 = [v45 authorizationService];
        v47 = sub_100027AB4(v6[13], v46);
        v88 = 0u;
        v89 = 0u;
        v90 = 0u;
        v91 = 0u;
        v48 = [(NSDictionary *)v47 countByEnumeratingWithState:&v88 objects:v106 count:16];
        if (v48)
        {
          v49 = v48;
          v50 = *v89;
          do
          {
            for (m = 0; m != v49; m = m + 1)
            {
              if (*v89 != v50)
              {
                objc_enumerationMutation(v47);
              }

              v52 = *(*(&v88 + 1) + 8 * m);
              v53 = objc_autoreleasePoolPush();
              if (([+[LSApplicationWorkspace defaultWorkspace](LSApplicationWorkspace "defaultWorkspace")] & 1) == 0)
              {
                sub_1000278F0(v6[13], v46, v52, NAN);
              }

              objc_autoreleasePoolPop(v53);
            }

            v49 = [(NSDictionary *)v47 countByEnumeratingWithState:&v88 objects:v106 count:16];
          }

          while (v49);
        }
      }

      else
      {
        v18 = qword_100071B30;
        if (os_log_type_enabled(qword_100071B30, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v109 = 0;
          _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Failed to find a sensor description for %{public}@ to remove authorization times", buf, 0xCu);
        }
      }

      objc_autoreleasePoolPop(context);
      v17 = v81 + 1;
      if ((v81 + 1) == v79)
      {
        v79 = [obj countByEnumeratingWithState:&v101 objects:v115 count:16];
        if (!v79)
        {
          goto LABEL_75;
        }

        goto LABEL_22;
      }
    }

    v23 = v22;
    v24 = *v98;
LABEL_32:
    v25 = 0;
    while (1)
    {
      if (*v98 != v24)
      {
        objc_enumerationMutation(v21);
      }

      v26 = *(*(&v97 + 1) + 8 * v25);
      v27 = objc_autoreleasePoolPush();
      v28 = [+[NSBundle sk_bundleWithIdentifier:](NSBundle sk_bundleWithIdentifier:{v26), "sr_normalizedBundleIdentifier"}];
      if ([+[LSApplicationWorkspace defaultWorkspace](LSApplicationWorkspace "defaultWorkspace")])
      {
        goto LABEL_35;
      }

      v29 = qword_100071B30;
      if (os_log_type_enabled(qword_100071B30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543874;
        v109 = v28;
        v110 = 2114;
        v111 = v26;
        v112 = 2114;
        v113 = v19;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "App %{public}@ is not installed. Removing client %{public}@ from the %{public}@ client interest cache", buf, 0x20u);
      }

      v96 = 0;
      v30 = v6[4];
      if (!v30)
      {
        break;
      }

      v31 = [*(v30 + 16) rd_objectsForSensor:v19 fallbackURL:{sub_10001AAE4(*(v30 + 8), v19)}];
      v32 = [v31 mutableCopy];
      [v32 removeObject:v26];
      if ([v31 isEqualToSet:v32])
      {
      }

      else
      {
        [*(v30 + 16) setObject:v32 forKey:v19];
        v33 = [*(v30 + 16) rd_writeObject:v32 forKey:v19 toURL:sub_10001AAE4(*(v30 + 8) error:{v19), &v96}];

        if ((v33 & 1) == 0)
        {
          break;
        }
      }

LABEL_34:
      v6 = v83;
LABEL_35:
      objc_autoreleasePoolPop(v27);
      if (v23 == ++v25)
      {
        v23 = [v21 countByEnumeratingWithState:&v97 objects:v114 count:16];
        if (!v23)
        {
          goto LABEL_47;
        }

        goto LABEL_32;
      }
    }

    v34 = qword_100071B30;
    if (os_log_type_enabled(qword_100071B30, OS_LOG_TYPE_FAULT))
    {
      *buf = 138543618;
      v109 = v26;
      v110 = 2114;
      v111 = v96;
      _os_log_fault_impl(&_mh_execute_header, v34, OS_LOG_TYPE_FAULT, "Failed to remove interest for uninstalled client %{public}@ because %{public}@", buf, 0x16u);
    }

    goto LABEL_34;
  }
}

void sub_10003115C(uint64_t a1, void *a2, const char *a3, uint64_t a4)
{
  v5 = a2;
  if ([a2 hasSuffix:@".tombstones"])
  {
    v7 = qword_100071B30;
    if (os_log_type_enabled(qword_100071B30, OS_LOG_TYPE_FAULT))
    {
      *buf = 138543362;
      v36 = v5;
      _os_log_fault_impl(&_mh_execute_header, v7, OS_LOG_TYPE_FAULT, "Attempting to remove all tombstones (%{public}@)", buf, 0xCu);
    }
  }

  else
  {
    v8 = sub_10003A334(v5, 0, *(a1 + 64), *(a1 + 56));
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v27 = sub_10000D068([RDInformingDatastore alloc], v8);
    obj = sub_10000D2B8(v27);
    v9 = [(NSSet *)obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v31;
      v12 = v5;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v31 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v30 + 1) + 8 * i);
          v15 = objc_autoreleasePoolPush();
          v16 = sub_10003A334(v5, v14, *(a1 + 64), *(a1 + 56));
          v17 = sub_10000BC68([RDPruneableDatastore alloc], &v16->super.isa);
          if (v17)
          {
            v18 = mach_continuous_time();
            if (qword_100071B60 != -1)
            {
              dispatch_once(&qword_100071B60, &stru_100060D90);
            }

            v19 = qword_100071B68;
            v20 = *&qword_100071B70;
            v21 = *&qword_100071B78;
            TMConvertTicksToSeconds();
            if (v19 >= v18)
            {
              v24 = -v23;
            }

            else
            {
              v24 = v23;
            }

            Property = v17[1];
            if (Property)
            {
              Property = objc_getProperty(Property, v22, 16, 1);
            }

            v5 = v12;
            v26 = sub_10002B538(Property);
            sub_10000BE00(v17, a3, a4, 0, INFINITY, v21 + v20 + v24 + v26);
          }

          objc_autoreleasePoolPop(v15);
        }

        v10 = [(NSSet *)obj countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v10);
    }
  }
}

BOOL sub_1000316F0(unint64_t *a1, void *a2)
{
  if ((sub_1000296BC(a1[7]) & 1) == 0)
  {
    v8 = qword_100071B30;
    result = os_log_type_enabled(qword_100071B30, OS_LOG_TYPE_INFO);
    if (!result)
    {
      return result;
    }

    LOWORD(v16) = 0;
    v9 = "Found no authorized clients because global data collection is disabled";
    v10 = v8;
    v11 = OS_LOG_TYPE_INFO;
    goto LABEL_10;
  }

  v4 = a1[11];
  if (v4 && *(v4 + 16) || (v14 = a1[13]) != 0 && *(v14 + 32) != 0.0)
  {
    if (([+[SRSensorDescription sensorDescriptionForSensor:](SRSensorDescription sensorDescriptionForSensor:{a2), "supportsCurrentPlatform"}] & 1) == 0)
    {
      v13 = qword_100071B30;
      result = os_log_type_enabled(qword_100071B30, OS_LOG_TYPE_DEFAULT);
      if (!result)
      {
        return result;
      }

      v16 = 138543362;
      v17 = a2;
      v9 = "%{public}@ is not supported on this platform";
      v10 = v13;
      v11 = OS_LOG_TYPE_DEFAULT;
      v12 = 12;
      goto LABEL_13;
    }

    v5 = [a1 authorizedAndInterestedClientsForSensor:a2];
    v6 = qword_100071B30;
    if (os_log_type_enabled(qword_100071B30, OS_LOG_TYPE_INFO))
    {
      v16 = 134218242;
      v17 = [v5 count];
      v18 = 2114;
      v19 = a2;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Found %lu authorized and interested clients for %{public}@", &v16, 0x16u);
    }

    return [v5 count] != 0;
  }

  else
  {
    v15 = qword_100071B30;
    result = os_log_type_enabled(qword_100071B30, OS_LOG_TYPE_DEFAULT);
    if (result)
    {
      LOWORD(v16) = 0;
      v9 = "No writer should be monitoring as time sync state is invalid";
      v10 = v15;
      v11 = OS_LOG_TYPE_DEFAULT;
LABEL_10:
      v12 = 2;
LABEL_13:
      _os_log_impl(&_mh_execute_header, v10, v11, v9, &v16, v12);
      return 0;
    }
  }

  return result;
}

void sub_1000318E8(uint64_t a1, void *a2)
{
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 48));
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v4 = [a2 countByEnumeratingWithState:&v44 objects:v53 count:16];
    if (v4)
    {
      v6 = v4;
      v7 = *v45;
      *&v5 = 138543362;
      v43 = v5;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v45 != v7)
          {
            objc_enumerationMutation(a2);
          }

          v9 = *(*(&v44 + 1) + 8 * i);
          v10 = objc_autoreleasePoolPush();
          v11 = [SRSensorDescription sensorDescriptionForSensor:v9];
          if (sub_1000316F0(a1, v9))
          {
            v12 = [v11 name];
            v13 = qword_100071B30;
            if (os_log_type_enabled(qword_100071B30, OS_LOG_TYPE_INFO))
            {
              *buf = v43;
              v55 = v12;
              _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Starting recording for %{public}@", buf, 0xCu);
            }

            dispatch_assert_queue_V2(*(a1 + 48));
            v14 = [v11 onDemandWriterService];
            if (v14)
            {
              [a1 setWriterService:v14 enabled:1];
            }

            v15 = [sub_100008650(*(a1 + 136) v12)];
            if (v15)
            {
              *v48 = _NSConcreteStackBlock;
              v49 = 3221225472;
              v50 = sub_1000325E4;
              v51 = &unk_1000611D0;
              v52 = v12;
              v16 = [v15 remoteObjectProxyWithErrorHandler:v48];
              v17 = *(a1 + 32);
              if (v17)
              {
                v18 = [*(v17 + 24) rd_objectsForSensor:v12 fallbackURL:{sub_10001AB2C(*(v17 + 8), v12)}];
              }

              else
              {
                v18 = 0;
              }

              [v16 setMonitoring:1 withRequestedConfigurations:{objc_msgSend(v18, "allObjects", v43)}];
            }

            else
            {
              sub_10001D8DC(RDNotifier, 1, v12);
            }

            v23 = *(a1 + 96);
            v24 = mach_continuous_time();
            if (qword_100071B60 != -1)
            {
              dispatch_once(&qword_100071B60, &stru_100060D90);
            }

            v25 = qword_100071B68;
            v26 = *&qword_100071B70;
            v27 = *&qword_100071B78;
            TMConvertTicksToSeconds();
            if (v23)
            {
              if (v25 >= v24)
              {
                v28 = -v28;
              }

              v29 = v27 + v26 + v28;
              v30 = objc_autoreleasePoolPush();
              if (sub_10001DCD4(v23, v29))
              {
                v31 = sub_1000296BC(v23[2]);
                objc_autoreleasePoolPop(v30);
                if (v31)
                {
                  sub_10001E15C(v23);
                }
              }

              else
              {
                objc_autoreleasePoolPop(v30);
              }
            }
          }

          else
          {
            v19 = [v11 name];
            v20 = qword_100071B30;
            if (os_log_type_enabled(qword_100071B30, OS_LOG_TYPE_DEBUG))
            {
              *buf = v43;
              v55 = v19;
              _os_log_debug_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "Stopping recording for %{public}@", buf, 0xCu);
            }

            dispatch_assert_queue_V2(*(a1 + 48));
            v21 = [sub_100008650(*(a1 + 136) v19)];
            if (v21)
            {
              *v48 = _NSConcreteStackBlock;
              v49 = 3221225472;
              v50 = sub_1000326B8;
              v51 = &unk_1000611D0;
              v52 = v19;
              [objc_msgSend(v21 remoteObjectProxyWithErrorHandler:{v48), "setMonitoring:withRequestedConfigurations:", 0, &__NSArray0__struct}];
            }

            v22 = [v11 onDemandWriterService];
            if (v22)
            {
              [a1 setWriterService:v22 enabled:0];
            }
          }

          objc_autoreleasePoolPop(v10);
        }

        v6 = [a2 countByEnumeratingWithState:&v44 objects:v53 count:16];
      }

      while (v6);
    }

    v32 = *(a1 + 88);
    if (v32)
    {
      if (*(v32 + 16) == 1)
      {
        v33 = sub_100031E44(a1);
        if ((sub_100032104(a1, &v33->super.isa) & 1) == 0)
        {
          v34 = mach_continuous_time();
          if (qword_100071B60 != -1)
          {
            dispatch_once(&qword_100071B60, &stru_100060D90);
          }

          v35 = qword_100071B68;
          v36 = *&qword_100071B70;
          v37 = *&qword_100071B78;
          TMConvertTicksToSeconds();
          if (v35 >= v34)
          {
            v38 = -v38;
          }

          v39 = v37 + v36 + v38;
          v40 = *(a1 + 104);
          if (v40)
          {
            v41 = v39 - *(v40 + 64);
            if (v41 > sub_10002B4D0(*(a1 + 56)))
            {
LABEL_44:
              sub_1000321C4(a1);
              return;
            }
          }

          else if (v39 - 0.0 > sub_10002B4D0(*(a1 + 56)))
          {
            goto LABEL_44;
          }

          v42 = qword_100071B30;
          if (os_log_type_enabled(qword_100071B30, OS_LOG_TYPE_DEFAULT))
          {
            *v48 = 0;
            _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "Not updating gizmo because our state was sent too recently.", v48, 2u);
          }
        }
      }
    }
  }
}

RDGizmoSyncState *sub_100031E44(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = objc_alloc_init(RDGizmoSyncState);
  v3 = [RDDaemon currentRecordingStatesForAnalytics:]_0(a1);
  if (!v2)
  {
    sub_10002B090(*(a1 + 56));
    [*(a1 + 16) isRemoteSupported];
    v6 = *(a1 + 104);
    if (!v6)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  objc_setProperty_nonatomic(v2, v4, v3, 16);
  v2->_prerequisites = sub_10002B090(*(a1 + 56));
  v2->_requiredAppInstalled_deprecated = [*(a1 + 16) isRemoteSupported];
  v6 = *(a1 + 104);
  if (v6)
  {
LABEL_4:
    v6 = v6[6];
  }

LABEL_5:
  if (v2)
  {
    if (v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = &__NSDictionary0__struct;
    }

    objc_setProperty_nonatomic(v2, v5, v7, 24);
    v2->_capabilities = 3;
  }

  self = v2;
  v8 = +[NSMutableDictionary dictionary];
  context = objc_autoreleasePoolPush();
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v9 = sub_100019058();
  v10 = sub_1000193F0(v9);
  v11 = [(SRSensorDescriptionEnumerator *)v10 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v28;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v28 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v27 + 1) + 8 * i);
        v16 = objc_autoreleasePoolPush();
        v17 = [v15 name];
        v18 = *(a1 + 32);
        if (v18)
        {
          v19 = [*(v18 + 24) rd_objectsForSensor:v17 fallbackURL:{sub_10001AB2C(*(v18 + 8), v17)}];
        }

        else
        {
          v19 = 0;
        }

        v20 = [v19 allObjects];
        [v8 setObject:v20 forKeyedSubscript:v17];
        v21 = [v15 legacyName];
        if (v21)
        {
          [v8 setObject:v20 forKeyedSubscript:v21];
        }

        objc_autoreleasePoolPop(v16);
      }

      v12 = [(SRSensorDescriptionEnumerator *)v10 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v12);
  }

  objc_autoreleasePoolPop(context);
  v22 = [NSDictionary dictionaryWithDictionary:v8];
  if (self)
  {
    objc_setProperty_nonatomic(self, v23, v22, 40);
  }

  return self;
}

id *sub_100032104(uint64_t a1, id *a2)
{
  v2 = *(a1 + 88);
  if (!v2)
  {
    return 0;
  }

  v5 = sub_100023DB4(*(a1 + 88));
  v6 = sub_100023C20(v2, v5, [v2[3] devices]);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = sub_10003A2C0(*(a1 + 64), *(a1 + 56));
  v9 = sub_100013A44([RDGizmoStateDatastore alloc], v8);
  v10 = sub_1000140D4(v9, v7);

  return sub_10001BDAC(a2, v10);
}

void sub_1000321C4(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_100031E44(a1);
    if ((*(a1 + 8) & 1) != 0 || !sub_100032104(a1, &v2->super.isa))
    {
      [*(a1 + 16) sendStateToPeer:v2];
      v7 = mach_continuous_time();
      if (qword_100071B60 != -1)
      {
        dispatch_once(&qword_100071B60, &stru_100060D90);
      }

      v8 = qword_100071B68;
      v9 = *&qword_100071B70;
      v10 = *&qword_100071B78;
      TMConvertTicksToSeconds();
      v12 = *(a1 + 104);
      if (v12)
      {
        if (v8 >= v7)
        {
          v11 = -v11;
        }

        *(v12 + 64) = v10 + v9 + v11;

        sub_100027584(v12);
      }
    }

    else
    {
      v3 = qword_100071B30;
      if (os_log_type_enabled(qword_100071B30, OS_LOG_TYPE_INFO))
      {
        v4 = *(a1 + 88);
        if (v4)
        {
          v5 = sub_100023DB4(v4);
          v6 = sub_100023C20(v4, v5, [v4[3] devices]);
        }

        else
        {
          v6 = 0;
        }

        v13 = 138543362;
        v14 = v6;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Remote device %{public}@ already knows we are not authorized for any data streams. Not sending this information again", &v13, 0xCu);
      }
    }
  }
}

id sub_100032390(uint64_t a1, void *a2)
{
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  result = [a2 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (result)
  {
    v6 = result;
    v7 = *v20;
    *&v5 = 138543362;
    v18 = v5;
    do
    {
      v8 = 0;
      do
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(a2);
        }

        v9 = *(*(&v19 + 1) + 8 * v8);
        v10 = qword_100071B30;
        if (os_log_type_enabled(qword_100071B30, OS_LOG_TYPE_INFO))
        {
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v9;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Force segment creation for %@", &buf, 0xCu);
        }

        v11 = [sub_100008650(*(a1 + 136) v9)];
        if (v11)
        {
          v12 = *(a1 + 136);
          if (v12)
          {
            v13 = v11;
            v14 = [*(v12 + 72) objectForKey:v11];
            if (v14)
            {
              Property = objc_getProperty(v14, v15, 24, 1);
              v17 = qword_100071B30;
              if (os_log_type_enabled(qword_100071B30, OS_LOG_TYPE_INFO))
              {
                *v28 = v18;
                v29 = Property;
                _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Resetting datastore for %{public}@", v28, 0xCu);
              }

              *&buf = _NSConcreteStackBlock;
              *(&buf + 1) = 3221225472;
              v25 = sub_100034868;
              v26 = &unk_1000611D0;
              v27 = Property;
              [objc_msgSend(v13 remoteObjectProxyWithErrorHandler:{&buf, v18), "resetDatastoreFiles:", &__NSDictionary0__struct}];
            }
          }
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      result = [a2 countByEnumeratingWithState:&v19 objects:v23 count:16];
      v6 = result;
    }

    while (result);
  }

  return result;
}

void sub_1000325E4(uint64_t a1, uint64_t a2)
{
  v4 = qword_100071B30;
  if (os_log_type_enabled(qword_100071B30, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = 138543618;
    v7 = v5;
    v8 = 2114;
    v9 = a2;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Error trying to start monitoring for %{public}@. %{public}@", &v6, 0x16u);
  }
}

void sub_1000326B8(uint64_t a1, uint64_t a2)
{
  v4 = qword_100071B30;
  if (os_log_type_enabled(qword_100071B30, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = 138543618;
    v7 = v5;
    v8 = 2114;
    v9 = a2;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Error trying to stop monitoring for %{public}@. %{public}@", &v6, 0x16u);
  }
}

uint64_t sub_1000332B8(uint64_t result, int a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (result)
  {
    v9 = result;
    dispatch_assert_queue_V2(*(result + 48));
    v20 = 0;
    v10 = sub_10002B8BC(+[NSXPCConnection currentConnection], a3, *(v9 + 56), v9, &v20);
    if ((a2 & 1) == 0 && -[SRError code](v20, "code") == 1 && [objc_msgSend(-[SRError underlyingErrors](v20 "underlyingErrors")] == 4098)
    {
      v11 = qword_100071B30;
      if (os_log_type_enabled(qword_100071B30, OS_LOG_TYPE_INFO))
      {
        v12 = [a3 sensor];
        *buf = 138543362;
        v22 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Global collection is disabled but allowing client to stop recording for %{public}@", buf, 0xCu);
      }
    }

    else if ((v10 & 1) == 0)
    {
      v17 = qword_100071B30;
      if (os_log_type_enabled(qword_100071B30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v22 = v20;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Connection not valid because %{public}@", buf, 0xCu);
      }

      goto LABEL_18;
    }

    v13 = [a3 sensor];
    if (sub_100001BAC(*(v9 + 32), a2, v13, [a3 bundleIdentifier], &v20))
    {
      if ([a3 bundleIdentifier])
      {
        v14 = [NSMutableDictionary dictionaryWithDictionary:a4];
        -[NSMutableDictionary setObject:forKeyedSubscript:](v14, "setObject:forKeyedSubscript:", [a3 bundleIdentifier], @"_requestingBundleIdentifier");
        if ((sub_100001CA0(*(v9 + 32), v14, v13, &v20) & 1) == 0)
        {
          v15 = qword_100071B30;
          if (os_log_type_enabled(qword_100071B30, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v22 = v20;
            _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Failed to write requested configuration because %{public}@", buf, 0xCu);
          }

          v16 = [SRError errorWithCode:0x4000];
          return (*(a5 + 16))(a5, v16);
        }
      }

      else
      {
        v19 = qword_100071B30;
        if (os_log_type_enabled(qword_100071B30, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&_mh_execute_header, v19, OS_LOG_TYPE_FAULT, "Got a recording request with no bundle ID", buf, 2u);
        }
      }

      sub_1000318E8(v9, [NSSet setWithObject:v13]);
      v16 = 0;
      return (*(a5 + 16))(a5, v16);
    }

    v18 = qword_100071B30;
    if (os_log_type_enabled(qword_100071B30, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v22 = v20;
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Failed to set client interest because %{public}@", buf, 0xCu);
    }

LABEL_18:
    v16 = v20;
    return (*(a5 + 16))(a5, v16);
  }

  return result;
}

NSArray *sub_1000339B8(NSArray *result, void *a2)
{
  if (result)
  {
    v3 = +[NSMutableArray array];
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = [a2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v10;
      do
      {
        v7 = 0;
        do
        {
          if (*v10 != v6)
          {
            objc_enumerationMutation(a2);
          }

          v8 = sub_100027DC8(RDDeviceInfo, *(*(&v9 + 1) + 8 * v7));
          if ([(NSDictionary *)v8 count])
          {
            [v3 addObject:v8];
          }

          v7 = v7 + 1;
        }

        while (v5 != v7);
        v5 = [a2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v5);
    }

    return [NSArray arrayWithArray:v3];
  }

  return result;
}

void sub_100033DA0(uint64_t a1, uint64_t a2)
{
  v4 = qword_100071B30;
  if (os_log_type_enabled(qword_100071B30, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = 138543618;
    v7 = v5;
    v8 = 2114;
    v9 = a2;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Error trying to start monitoring for %{public}@. %{public}@", &v6, 0x16u);
  }
}