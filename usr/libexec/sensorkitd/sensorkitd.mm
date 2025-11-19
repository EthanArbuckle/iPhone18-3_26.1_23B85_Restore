id sub_1000013C0(id result, void *a2)
{
  if (result)
  {
    v5.receiver = result;
    v5.super_class = RDWriter;
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

BOOL sub_10000147C(uint64_t a1, void *a2, const __CFString **a3, double a4)
{
  if (!a1)
  {
    return 0;
  }

  v8 = sub_10000A3F0([RDWriteableDatastore alloc], *(a1 + 8));
  v9 = [(NSURL *)sub_10001ADB4(a4) lastPathComponent];
  v10 = sub_10000AA38(v8, v9, 0, 0, a3);

  v11 = [(NSMutableDictionary *)v10 objectForKeyedSubscript:@"samples"];
  if (!v11)
  {
    return 0;
  }

  v12 = v11;
  v14 = [SRDefaults alloc];
  v15 = *(a1 + 8);
  if (v15)
  {
    Property = objc_getProperty(v15, v13, 16, 1);
    v18 = *(a1 + 8);
    if (v18)
    {
      v19 = objc_getProperty(v18, v16, 24, 1);
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    Property = 0;
    v19 = 0;
  }

  v20 = sub_10002A88C(Property, v19);
  v21 = sub_10004375C(v14, v20);
  v22 = [SRDatastore alloc];
  if (v22)
  {
    v23 = sub_100040CAC(v22, v12, 0, 0, 1, v21, 0);
  }

  else
  {
    v23 = 0;
  }

  v24 = [a2 binarySampleRepresentation];
  v25 = sub_100041018(v23, [v24 bytes], objc_msgSend(v24, "length"), a3, a4);

  return v25;
}

void *sub_100001A94(void *a1, void *a2)
{
  if (!a1)
  {
    return 0;
  }

  v7.receiver = a1;
  v7.super_class = RDClientInterestCache;
  v3 = objc_msgSendSuper2(&v7, "init");
  if (v3)
  {
    v3[1] = a2;
    v4 = objc_alloc_init(NSCache);
    v3[2] = v4;
    [v4 setDelegate:v3];
    v5 = objc_alloc_init(NSCache);
    v3[3] = v5;
    [v5 setDelegate:v3];
  }

  return v3;
}

uint64_t sub_100001BAC(uint64_t a1, int a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (!a1)
  {
    return 0;
  }

  v10 = [*(a1 + 16) rd_objectsForSensor:a3 fallbackURL:{sub_10001AAE4(*(a1 + 8), a3)}];
  v11 = [v10 mutableCopy];
  v12 = v11;
  if (!a2)
  {
    [v11 removeObject:a4];
    if (([v10 isEqualToSet:v12] & 1) == 0)
    {
      goto LABEL_4;
    }

LABEL_6:
    v13 = 1;
    goto LABEL_7;
  }

  [v11 addObject:a4];
  if ([v10 isEqualToSet:v12])
  {
    goto LABEL_6;
  }

LABEL_4:
  [*(a1 + 16) setObject:v12 forKey:a3];
  v13 = [*(a1 + 16) rd_writeObject:v12 forKey:a3 toURL:sub_10001AAE4(*(a1 + 8) error:{a3), a5}];
LABEL_7:

  return v13;
}

uint64_t sub_100001CA0(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (!a1)
  {
    return 0;
  }

  v8 = [*(a1 + 24) rd_objectsForSensor:a3 fallbackURL:{sub_10001AB2C(*(a1 + 8), a3)}];
  v9 = [v8 mutableCopy];
  v10 = [a2 objectForKeyedSubscript:@"_requestingBundleIdentifier"];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v11 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v18 = a2;
    v19 = a4;
    v13 = *v21;
LABEL_4:
    v14 = 0;
    while (1)
    {
      if (*v21 != v13)
      {
        objc_enumerationMutation(v8);
      }

      v15 = *(*(&v20 + 1) + 8 * v14);
      if ([objc_msgSend(v15 objectForKeyedSubscript:{@"_requestingBundleIdentifier", v18, v19), "isEqualToString:", v10}])
      {
        break;
      }

      if (v12 == ++v14)
      {
        v12 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v12)
        {
          goto LABEL_4;
        }

        v15 = 0;
        break;
      }
    }

    a2 = v18;
    a4 = v19;
    if (![v15 count])
    {
      goto LABEL_13;
    }
  }

  else
  {
    v15 = 0;
    if (![0 count])
    {
      goto LABEL_13;
    }
  }

  [v9 removeObject:v15];
LABEL_13:
  if (a2)
  {
    [v9 addObject:a2];
  }

  if ([v8 isEqualToSet:v9])
  {
    v16 = 1;
  }

  else
  {
    [*(a1 + 24) setObject:v9 forKey:a3];
    v16 = [*(a1 + 24) rd_writeObject:v9 forKey:a3 toURL:sub_10001AB2C(*(a1 + 8) error:{a3), a4}];
  }

  return v16;
}

uint64_t sub_100001EC0(uint64_t result, uint64_t a2, void *a3, uint64_t a4)
{
  if (result)
  {
    v7 = result;
    v8 = +[NSMutableSet setWithSet:](NSMutableSet, "setWithSet:", [*(result + 24) rd_objectsForSensor:a3 fallbackURL:{sub_10001AB2C(*(result + 8), a3)}]);
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v9 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v15;
LABEL_4:
      v12 = 0;
      while (1)
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v14 + 1) + 8 * v12);
        if ([objc_msgSend(v13 objectForKeyedSubscript:{@"_requestingBundleIdentifier", "isEqualToString:", a2}])
        {
          break;
        }

        if (v10 == ++v12)
        {
          v10 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
          if (v10)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:
      v13 = 0;
    }

    if ([v13 count])
    {
      [(NSMutableSet *)v8 removeObject:v13];
      [*(v7 + 24) setObject:v8 forKey:a3];
      return [*(v7 + 24) rd_writeObject:v8 forKey:a3 toURL:sub_10001AB2C(*(v7 + 8) error:{a3), a4}];
    }

    else
    {
      return 1;
    }
  }

  return result;
}

void *sub_1000021B0(void *a1, void *a2, void *a3)
{
  if (!a1)
  {
    return 0;
  }

  v7.receiver = a1;
  v7.super_class = RDIDSMessageEventListener;
  v5 = objc_msgSendSuper2(&v7, "init");
  if (v5)
  {
    v5[1] = a2;
    v5[2] = a3;
  }

  return v5;
}

void sub_1000025E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL sub_1000025FC(uint64_t a1, const char *a2, void *a3)
{
  v6 = objc_autoreleasePoolPush();
  sub_100013800(*(a1 + 32), a2);
  if ([objc_msgSend(a3 objectForKeyedSubscript:{@"RDGizmoSyncMessageTypeKey", "integerValue"}] != 3)
  {
    goto LABEL_8;
  }

  v7 = [a3 objectForKeyedSubscript:@"RDGizmoSyncSamplesURLKey"];
  if (!v7)
  {
    v14 = qword_100071988;
    if (os_log_type_enabled(qword_100071988, OS_LOG_TYPE_FAULT))
    {
      *buf = 138543362;
      v19 = a3;
      _os_log_fault_impl(&_mh_execute_header, v14, OS_LOG_TYPE_FAULT, "RDGizmoSyncSamplesURLKey in archive transfer status message is nil, %{public}@", buf, 0xCu);
      v13 = 1;
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v8 = v7;
  if ([*(a1 + 40) containsObject:v7])
  {
LABEL_8:
    v13 = 1;
    goto LABEL_9;
  }

  [*(a1 + 40) addObject:v8];
  v9 = *(a1 + 48);
  v16 = IDSSendMessageOptionExpectsPeerResponseKey;
  v17 = &__kCFBooleanTrue;
  v10 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  if (v9)
  {
    sub_100023F18(v9, a3, *(v9 + 24), v10);
  }

  v11 = *(*(a1 + 56) + 8);
  v12 = *(v11 + 24);
  *(v11 + 24) = v12 + 1;
  v13 = v12 < *(a1 + 64);
LABEL_9:
  objc_autoreleasePoolPop(v6);
  return v13;
}

uint64_t sub_100002DA0(uint64_t a1, const char *a2, void *a3)
{
  if ([objc_msgSend(a3 objectForKeyedSubscript:{@"RDGizmoSyncMessageTypeKey", "integerValue"}] == 9 && objc_msgSend(objc_msgSend(a3, "objectForKeyedSubscript:", @"RDGizmoSyncSensorIdentifierKey"), "isEqualToString:", objc_msgSend(*(a1 + 32), "objectForKeyedSubscript:", @"RDGizmoSyncSensorIdentifierKey")) && objc_msgSend(objc_msgSend(objc_msgSend(a3, "objectForKeyedSubscript:", @"RDGizmoSyncSamplesURLKey"), "lastPathComponent"), "isEqualToString:", objc_msgSend(objc_msgSend(*(a1 + 32), "objectForKeyedSubscript:", @"RDGizmoSyncSamplesURLKey"), "lastPathComponent")))
  {
    sub_100013800(*(a1 + 40), a2);
  }

  return 1;
}

void *sub_100002ED0(void *a1, void *a2, void *a3, uint64_t a4, void *a5, void *a6)
{
  if (!a1)
  {
    return 0;
  }

  v13.receiver = a1;
  v13.super_class = RDCompanionSideSync;
  v10 = objc_msgSendSuper2(&v13, "init");
  if (v10)
  {
    v10[4] = a5;
    v10[3] = a2;
    v10[7] = a6;
    v11 = a3;
    v10[5] = v11;
    if (v11)
    {
      [v11[7] addObject:v10];
    }
  }

  return v10;
}

uint64_t sub_100003868(uint64_t a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  if (a2 == 1)
  {
    v5 = v4;
    v6 = *(a1 + 32);
    v7 = [*(a1 + 40) lastPathComponent];
    if (v6)
    {
      v15[0] = @"RDGizmoSyncMessageTypeKey";
      v15[1] = @"RDGizmoSyncSamplesURLKey";
      v8 = *(a1 + 48);
      v16[0] = &off_1000651F0;
      v16[1] = v7;
      v16[2] = v8;
      v15[2] = @"RDGizmoSyncSensorIdentifierKey";
      v15[3] = @"RDGizmoSyncArchiveTransferStatusKey";
      v16[3] = [NSNumber numberWithInteger:1];
      v9 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:4];
      v10 = *(v6 + 40);
      v13 = IDSSendMessageOptionExpectsPeerResponseKey;
      v14 = &__kCFBooleanTrue;
      v11 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
      if (v10)
      {
        sub_100023F18(v10, v9, *(v10 + 24), v11);
      }
    }

    v4 = v5;
  }

  objc_autoreleasePoolPop(v4);
  return 1;
}

uint64_t sub_100004938(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a2)
  {
LABEL_7:
    v9 = *(a1 + 48);
    v10 = [a3 path];
    if (v9)
    {
      v21[0] = @"RDGizmoSyncMessageTypeKey";
      v21[1] = @"RDGizmoSyncSamplesURLKey";
      v11 = *(a1 + 32);
      *&buf = &off_1000651F0;
      *(&buf + 1) = v10;
      v23 = v11;
      v21[2] = @"RDGizmoSyncSensorIdentifierKey";
      v21[3] = @"RDGizmoSyncArchiveTransferStatusKey";
      v24 = [NSNumber numberWithInteger:a2];
      v12 = [NSDictionary dictionaryWithObjects:&buf forKeys:v21 count:4];
      v13 = *(v9 + 40);
      v19 = IDSSendMessageOptionExpectsPeerResponseKey;
      v20 = &__kCFBooleanTrue;
      v14 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
      if (v13)
      {
        sub_100023F18(v13, v12, *(v13 + 24), v14);
      }
    }

    goto LABEL_12;
  }

  if (a2 != 1)
  {
    if (a2 != 2)
    {
      goto LABEL_12;
    }

    v6 = qword_100071990;
    if (os_log_type_enabled(qword_100071990, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138543362;
      *(&buf + 4) = a3;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Failed to unarchive, removing local file %{public}@", &buf, 0xCu);
    }

    v7 = sub_10003A334(*(a1 + 32), *(a1 + 40), *(*(a1 + 48) + 24), *(*(a1 + 48) + 32));
    v8 = sub_10000E610([RDArchiveableDatastore alloc], &v7->super.isa);
    sub_10001092C(v8, a3);

    goto LABEL_7;
  }

  v15 = qword_100071990;
  if (os_log_type_enabled(qword_100071990, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = a3;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "No key available to decrypt %{public}@", &buf, 0xCu);
  }

LABEL_12:
  v16 = *(a1 + 56);
  if (v16)
  {
    v17 = (*(v16 + 16))(v16, a2, a3);
  }

  else
  {
    v17 = 1;
  }

  return (a2 != 1) & v17;
}

void sub_100004B88(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a1)
  {
    v7 = sub_10003A334(a2, a3, *(a1 + 24), *(a1 + 32));
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v23 = sub_10000D068([RDInformingDatastore alloc], v7);
    obj = sub_10000D678(v23, v8);
    v9 = [obj countByEnumeratingWithState:&v26 objects:v34 count:16];
    if (!v9)
    {
LABEL_21:

      return;
    }

    v10 = v9;
    v25 = *v27;
LABEL_5:
    v11 = 0;
    while (1)
    {
      if (*v27 != v25)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v26 + 1) + 8 * v11);
      v13 = objc_autoreleasePoolPush();
      v14 = qword_100071990;
      if (os_log_type_enabled(qword_100071990, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v31 = v12;
        _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "Attempting to decrypt %{public}@", buf, 0xCu);
      }

      v15 = sub_10002399C(*(a1 + 40), [v12 path], a2);
      v16 = sub_100011CFC([RDEncryptingDatastore alloc], v7);
      v17 = sub_100012A40(v16, [v12 URLByResolvingSymlinksInPath]);
      if (v17)
      {
        v18 = v17;
        [objc_loadWeak((a1 + 16)) gizmoSync:a1 didDecryptArchiveWithKey:v15 sensor:a2];
        v19 = qword_100071990;
        if (os_log_type_enabled(qword_100071990, OS_LOG_TYPE_INFO))
        {
          *buf = 138543618;
          v31 = v18;
          v32 = 2114;
          v33 = a2;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Successfully decrypted archive %{public}@ for %{public}@", buf, 0x16u);
        }

        v20 = sub_10000E610([RDArchiveableDatastore alloc], &v7->super.isa);
        v21 = sub_10001118C(v20, v18);

        if (!v21)
        {
          v22 = qword_100071990;
          if (os_log_type_enabled(qword_100071990, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v31 = v12;
            _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Failed to store decrypted archive %{public}@", buf, 0xCu);
          }

          if (!(*(a4 + 16))(a4, 2, v12))
          {
LABEL_19:

            objc_autoreleasePoolPop(v13);
            return;
          }
        }
      }

      else if (((*(a4 + 16))(a4, 1, v12) & 1) == 0)
      {
        goto LABEL_19;
      }

      objc_autoreleasePoolPop(v13);
      if (v10 == ++v11)
      {
        v10 = [obj countByEnumeratingWithState:&v26 objects:v34 count:16];
        if (!v10)
        {
          goto LABEL_21;
        }

        goto LABEL_5;
      }
    }
  }
}

void sub_100004EE8(void **a1, __CFString *a2, void *a3, uint64_t a4)
{
  if (a1)
  {
    v7 = sub_10003A334(a2, a3, a1[3], a1[4]);
    v8 = sub_10000D068([RDInformingDatastore alloc], v7);
    v25 = a1;
    v24 = [a1 analyticsDelegate];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v21 = v8;
    obj = sub_10000D76C(v8, v9);
    v10 = [obj countByEnumeratingWithState:&v27 objects:v35 count:16];
    if (v10)
    {
      v11 = v10;
      v23 = *v28;
      while (2)
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v28 != v23)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v27 + 1) + 8 * i);
          v14 = objc_autoreleasePoolPush();
          v15 = sub_10000E610([RDArchiveableDatastore alloc], &v7->super.isa);
          v16 = sub_100011CFC([RDEncryptingDatastore alloc], v7);
          v17 = sub_10001206C(v16, [v13 lastPathComponent]);

          v26 = 0;
          if (sub_10000E78C(v15, v13, &v26))
          {
            v18 = qword_100071990;
            if (os_log_type_enabled(qword_100071990, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543618;
              v32 = v13;
              v33 = 2114;
              v34 = a2;
              _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Successfully unarchived snapshot %{public}@ for %{public}@", buf, 0x16u);
            }

            [v24 gizmoSync:v25 didUnarchiveWithKey:v17 sensor:a2];
            sub_10001092C(v15, v13);

            if (((*(a4 + 16))(a4, 0, v13) & 1) == 0)
            {
              goto LABEL_23;
            }
          }

          else
          {

            [v24 gizmoSync:v25 failedToUnarchiveWithKey:v17 sensor:a2];
            v19 = v26;
            v20 = qword_100071990;
            if (v26)
            {
              if (os_log_type_enabled(qword_100071990, OS_LOG_TYPE_ERROR))
              {
                *buf = 138543618;
                v32 = v13;
                v33 = 2114;
                v34 = v19;
                _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Error unarchiving %{public}@ because %{public}@. Will retry when unlocked", buf, 0x16u);
              }

              if (!(*(a4 + 16))(a4, 1, v13))
              {
                goto LABEL_23;
              }
            }

            else
            {
              if (os_log_type_enabled(qword_100071990, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543618;
                v32 = v13;
                v33 = 2114;
                v34 = a2;
                _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Decrypted archive but failed to unarchive %{public}@ for %{public}@.", buf, 0x16u);
              }

              if (!(*(a4 + 16))(a4, 2, v13))
              {
LABEL_23:

                objc_autoreleasePoolPop(v14);
                return;
              }
            }
          }

          objc_autoreleasePoolPop(v14);
        }

        v11 = [obj countByEnumeratingWithState:&v27 objects:v35 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }
  }
}

id sub_10000536C(id result, void *a2)
{
  if (result)
  {
    v8 = 0;
    v9 = 0;
    if ([a2 getResourceValue:&v9 forKey:NSURLFileSizeKey error:&v8])
    {
      if (!v9)
      {
        if (qword_100071998 != -1)
        {
          dispatch_once(&qword_100071998, &stru_100060B30);
          v3 = qword_1000719A0;
          if (!os_log_type_enabled(qword_1000719A0, OS_LOG_TYPE_ERROR))
          {
            return [v9 longLongValue];
          }

          goto LABEL_6;
        }

        v3 = qword_1000719A0;
        if (os_log_type_enabled(qword_1000719A0, OS_LOG_TYPE_ERROR))
        {
LABEL_6:
          *buf = 138543362;
          v11 = a2;
          v4 = "Failed to get file size for %{public}@ with no error";
          v5 = v3;
          v6 = 12;
LABEL_13:
          _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, v4, buf, v6);
        }
      }

      return [v9 longLongValue];
    }

    if (qword_100071998 == -1)
    {
      v7 = qword_1000719A0;
      if (!os_log_type_enabled(qword_1000719A0, OS_LOG_TYPE_ERROR))
      {
        return [v9 longLongValue];
      }
    }

    else
    {
      dispatch_once(&qword_100071998, &stru_100060B30);
      v7 = qword_1000719A0;
      if (!os_log_type_enabled(qword_1000719A0, OS_LOG_TYPE_ERROR))
      {
        return [v9 longLongValue];
      }
    }

    *buf = 138543618;
    v11 = a2;
    v12 = 2114;
    v13 = v8;
    v4 = "Failed to get file size for %{public}@. %{public}@";
    v5 = v7;
    v6 = 22;
    goto LABEL_13;
  }

  return result;
}

id sub_100005520(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v14 = NSURLFileSizeKey;
  v2 = [+[NSFileManager defaultManager](NSFileManager enumeratorAtURL:"enumeratorAtURL:includingPropertiesForKeys:options:errorHandler:" includingPropertiesForKeys:a2 options:[NSArray errorHandler:"arrayWithObjects:count:" arrayWithObjects:1 count:?], 4, 0];
  v3 = +[NSMutableArray array];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [(NSDirectoryEnumerator *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(v2);
        }

        [v3 addObject:*(*(&v9 + 1) + 8 * v7)];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSDirectoryEnumerator *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  [v3 sortUsingComparator:&stru_100060AF0];
  return v3;
}

int64_t sub_1000056A8(id a1, NSURL *a2, NSURL *a3)
{
  v5 = objc_autoreleasePoolPush();
  [-[NSArray lastObject](-[NSString componentsSeparatedByString:](-[NSURL lastPathComponent](a2 "lastPathComponent")];
  v7 = v6;
  [-[NSArray lastObject](-[NSString componentsSeparatedByString:](-[NSURL lastPathComponent](a3 "lastPathComponent")];
  v9 = v8;
  objc_autoreleasePoolPop(v5);
  if (v7 < v9)
  {
    return -1;
  }

  else
  {
    return v9 < v7;
  }
}

id sub_10000573C(id result, uint64_t a2)
{
  if (result)
  {
    v10 = NSURLFileSizeKey;
    v2 = [+[NSFileManager defaultManager](NSFileManager enumeratorAtURL:"enumeratorAtURL:includingPropertiesForKeys:options:errorHandler:" includingPropertiesForKeys:a2 options:[NSArray errorHandler:"arrayWithObjects:count:" arrayWithObjects:1 count:?], 0, 0];
    v3 = objc_autoreleasePoolPush();
    v4 = [(NSDirectoryEnumerator *)v2 nextObject];
    if (v4)
    {
      v5 = v4;
      v6 = 0;
      v7 = INFINITY;
      do
      {
        if (sub_10000536C(+[NSFileManager defaultManager], v5))
        {
          [objc_msgSend(objc_msgSend(objc_msgSend(v5 "lastPathComponent")];
          if (v8 < v7)
          {
            v9 = v8;

            v6 = v5;
            v7 = v9;
          }
        }

        objc_autoreleasePoolPop(v3);
        v3 = objc_autoreleasePoolPush();
        v5 = [(NSDirectoryEnumerator *)v2 nextObject];
      }

      while (v5);
    }

    else
    {
      v6 = 0;
    }

    objc_autoreleasePoolPop(v3);
    return v6;
  }

  return result;
}

id sub_1000058AC(id result, uint64_t a2)
{
  if (result)
  {
    v2 = [+[NSFileManager defaultManager](NSFileManager enumeratorAtURL:"enumeratorAtURL:includingPropertiesForKeys:options:errorHandler:" includingPropertiesForKeys:a2 options:&__NSArray0__struct errorHandler:0, 0];
    v3 = objc_autoreleasePoolPush();
    v4 = [(NSDirectoryEnumerator *)v2 nextObject];
    if (v4)
    {
      v5 = v4;
      v6 = 0;
      do
      {
        [objc_msgSend(v5 "lastPathComponent")];
        v8 = v7;
        [objc_msgSend(v6 "lastPathComponent")];
        if (v8 > v9)
        {

          v6 = v5;
        }

        objc_autoreleasePoolPop(v3);
        v3 = objc_autoreleasePoolPush();
        v5 = [(NSDirectoryEnumerator *)v2 nextObject];
      }

      while (v5);
    }

    else
    {
      v6 = 0;
    }

    objc_autoreleasePoolPop(v3);

    return v6;
  }

  return result;
}

NSDictionary *sub_1000059A0(NSDictionary *result, void *a2, void *a3, void *a4, int a5, int a6, void *a7)
{
  if (result)
  {
    v13 = +[NSMutableDictionary dictionary];
    [v13 setObject:sub_10001C0E8(NSFileHandle forKeyedSubscript:{a2, a5, a6, a7), @"samples"}];
    if (a3)
    {
      [v13 setObject:sub_10001C0E8(NSFileHandle forKeyedSubscript:{a3, a5, a6, a7), @"metadata"}];
    }

    if (a4)
    {
      [v13 setObject:sub_10001C0E8(NSFileHandle forKeyedSubscript:{a4, a5, a6, a7), @"sensorConfiguration"}];
    }

    return [NSDictionary dictionaryWithDictionary:v13];
  }

  return result;
}

uint64_t sub_100005AB4(uint64_t a1, void *a2, int a3, double *a4, double *a5, double a6, double a7)
{
  if (!a1)
  {
    return 0;
  }

  if (qword_100071998 != -1)
  {
    dispatch_once(&qword_100071998, &stru_100060B30);
    v10 = qword_1000719A0;
    if (!os_log_type_enabled(qword_1000719A0, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_4;
    }

LABEL_59:
    *buf = 138544130;
    v46 = a2;
    v47 = 2050;
    v48 = a6;
    v49 = 2050;
    v50 = a7;
    v51 = 1026;
    v52 = a3;
    _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "Removing files from %{public}@ older than %{public}f, newer than %{public}f, dry run: %{public, BOOL}d", buf, 0x26u);
    goto LABEL_4;
  }

  v10 = qword_1000719A0;
  if (os_log_type_enabled(qword_1000719A0, OS_LOG_TYPE_DEBUG))
  {
    goto LABEL_59;
  }

LABEL_4:
  v44[0] = NSURLFileSizeKey;
  v44[1] = NSURLIsDirectoryKey;
  v11 = [+[NSFileManager defaultManager](NSFileManager enumeratorAtURL:"enumeratorAtURL:includingPropertiesForKeys:options:errorHandler:" includingPropertiesForKeys:a2 options:[NSArray errorHandler:"arrayWithObjects:count:" arrayWithObjects:v44 count:2], 0, 0];
  v12 = objc_autoreleasePoolPush();
  v13 = [(NSDirectoryEnumerator *)v11 nextObject];
  if (v13)
  {
    v15 = v13;
    v16 = 0;
    v17 = NAN;
    *&v14 = 138543362;
    v37 = v14;
    v18 = NAN;
    while (1)
    {
      v42 = 0;
      v43 = 0.0;
      if ([v15 getResourceValue:&v42 forKey:NSURLIsDirectoryKey error:{&v43, v37}])
      {
        break;
      }

      if (qword_100071998 == -1)
      {
        v19 = qword_1000719A0;
        if (!os_log_type_enabled(qword_1000719A0, OS_LOG_TYPE_FAULT))
        {
          break;
        }
      }

      else
      {
        dispatch_once(&qword_100071998, &stru_100060B30);
        v19 = qword_1000719A0;
        if (!os_log_type_enabled(qword_1000719A0, OS_LOG_TYPE_FAULT))
        {
          break;
        }
      }

      *buf = 138543618;
      v46 = v15;
      v47 = 2114;
      v48 = v43;
      _os_log_fault_impl(&_mh_execute_header, v19, OS_LOG_TYPE_FAULT, "Failed to get NSURLIsDirectoryKey resource for %{public}@ because %{public}@", buf, 0x16u);
      if ([v42 BOOLValue])
      {
        goto LABEL_7;
      }

LABEL_12:
      v20 = [objc_msgSend(v15 "lastPathComponent")];
      [objc_msgSend(v20 "firstObject")];
      v22 = v21;
      [objc_msgSend(v20 "lastObject")];
      if (v23 == 0.0)
      {
        if (qword_100071998 != -1)
        {
          dispatch_once(&qword_100071998, &stru_100060B30);
          v24 = qword_1000719A0;
          if (!os_log_type_enabled(qword_1000719A0, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_7;
          }

LABEL_15:
          *buf = v37;
          v46 = v15;
          v25 = v24;
          v26 = "Unable to determine file age of %{public}@";
          goto LABEL_16;
        }

        v24 = qword_1000719A0;
        if (os_log_type_enabled(qword_1000719A0, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_15;
        }
      }

      else
      {
        if (v23 >= a6 && v23 <= a7)
        {
          goto LABEL_7;
        }

        v28 = v23;
        v29 = COERCE_DOUBLE(sub_10000536C(+[NSFileManager defaultManager], v15));
        v30 = v29;
        if (!a3)
        {
          if (v28 >= a6)
          {
            if (qword_100071998 == -1)
            {
              v34 = qword_1000719A0;
              if (!os_log_type_enabled(qword_1000719A0, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_30;
              }
            }

            else
            {
              dispatch_once(&qword_100071998, &stru_100060B30);
              v34 = qword_1000719A0;
              if (!os_log_type_enabled(qword_1000719A0, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_30;
              }
            }

            *buf = 138543874;
            v46 = v15;
            v47 = 2050;
            v48 = v30;
            v49 = 2050;
            v50 = a7;
            v32 = v34;
            v33 = "Removing %{public}@ (%{public}lld bytes) as it is newer than SRAbsoluteTime %{public}f ";
          }

          else
          {
            if (qword_100071998 == -1)
            {
              v31 = qword_1000719A0;
              if (os_log_type_enabled(qword_1000719A0, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_25;
              }

LABEL_30:
              v41 = 0;
              if ([+[NSFileManager removeItemAtURL:"removeItemAtURL:error:"]
              {
                v16 += *&v30;
                if (__isnand() != 0 || v22 < v17)
                {
                  v17 = v22;
                }

                if (__isnand() != 0 || v22 > v18)
                {
                  v18 = v22;
                }

                goto LABEL_7;
              }

              if (qword_100071998 == -1)
              {
                v35 = qword_1000719A0;
                if (!os_log_type_enabled(qword_1000719A0, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_7;
                }
              }

              else
              {
                dispatch_once(&qword_100071998, &stru_100060B30);
                v35 = qword_1000719A0;
                if (!os_log_type_enabled(qword_1000719A0, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_7;
                }
              }

              *buf = v37;
              v46 = v15;
              v25 = v35;
              v26 = "Failed to remove old file %{public}@";
LABEL_16:
              _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, v26, buf, 0xCu);
              goto LABEL_7;
            }

            dispatch_once(&qword_100071998, &stru_100060B30);
            v31 = qword_1000719A0;
            if (!os_log_type_enabled(qword_1000719A0, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_30;
            }

LABEL_25:
            *buf = 138543874;
            v46 = v15;
            v47 = 2050;
            v48 = v30;
            v49 = 2050;
            v50 = a6;
            v32 = v31;
            v33 = "Removing %{public}@ (%{public}lld bytes) as it is older than SRAbsoluteTime %{public}f";
          }

          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, v33, buf, 0x20u);
          goto LABEL_30;
        }

        v16 += *&v29;
      }

LABEL_7:
      objc_autoreleasePoolPop(v12);
      v12 = objc_autoreleasePoolPush();
      v15 = [(NSDirectoryEnumerator *)v11 nextObject];
      if (!v15)
      {
        goto LABEL_51;
      }
    }

    if ([v42 BOOLValue])
    {
      goto LABEL_7;
    }

    goto LABEL_12;
  }

  v16 = 0;
  v18 = NAN;
  v17 = NAN;
LABEL_51:
  objc_autoreleasePoolPop(v12);
  if (a4 && !__isnand())
  {
    *a4 = v17;
  }

  if (a5 && !__isnand())
  {
    *a5 = v18;
  }

  return v16;
}

NSBundle *sub_10000659C(uint64_t a1, NSURL *a2, NSURL *a3)
{
  objc_opt_self();
  if (qword_1000719A8 == -1)
  {
    v5 = qword_1000719B0;
    if (!os_log_type_enabled(qword_1000719B0, OS_LOG_TYPE_INFO))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  dispatch_once(&qword_1000719A8, &stru_100060C78);
  v5 = qword_1000719B0;
  if (os_log_type_enabled(qword_1000719B0, OS_LOG_TYPE_INFO))
  {
LABEL_3:
    *buf = 138543362;
    v30 = a2;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Looking for %{public}@ in LaunchServices", buf, 0xCu);
  }

LABEL_4:
  v27 = 0;
  v6 = [LSApplicationRecord sr_applicationRecordWithIdentifier:a2 error:&v27];
  if (!v6)
  {
    if (qword_1000719A8 != -1)
    {
      dispatch_once(&qword_1000719A8, &stru_100060C78);
    }

    v7 = qword_1000719B0;
    v8 = os_log_type_enabled(qword_1000719B0, OS_LOG_TYPE_DEFAULT);
    v6 = 0;
    if (v8)
    {
      *buf = 138543618;
      v30 = a2;
      v31 = 2114;
      v32 = v27;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "No application record found for %{public}@ because %{public}@", buf, 0x16u);
      v6 = 0;
    }
  }

  v9 = [objc_msgSend(v6 "URL")];
  if (v9)
  {
    goto LABEL_14;
  }

  if (qword_1000719A8 == -1)
  {
    v10 = qword_1000719B0;
    if (!os_log_type_enabled(qword_1000719B0, OS_LOG_TYPE_INFO))
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  dispatch_once(&qword_1000719A8, &stru_100060C78);
  v10 = qword_1000719B0;
  if (os_log_type_enabled(qword_1000719B0, OS_LOG_TYPE_INFO))
  {
LABEL_12:
    *buf = 138543618;
    v30 = a2;
    v31 = 2114;
    v32 = a3;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Searching for study bundle %{public}@ in %{public}@", buf, 0x16u);
  }

LABEL_13:
  v9 = [+[NSBundle bundleWithURL:](NSBundle bundlePath:+[NSURL fileURLWithPath:isDirectory:relativeToURL:](NSURL];
  if (!v9)
  {
    if (qword_1000719A8 == -1)
    {
      v18 = qword_1000719B0;
      if (!os_log_type_enabled(qword_1000719B0, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_27;
      }
    }

    else
    {
      dispatch_once(&qword_1000719A8, &stru_100060C78);
      v18 = qword_1000719B0;
      if (!os_log_type_enabled(qword_1000719B0, OS_LOG_TYPE_DEFAULT))
      {
LABEL_27:
        v19 = [NSURL fileURLWithPath:@"loadedStudies.plist" isDirectory:0 relativeToURL:a3];
        if (qword_1000719A8 == -1)
        {
          v20 = qword_1000719B0;
          if (!os_log_type_enabled(qword_1000719B0, OS_LOG_TYPE_INFO))
          {
            goto LABEL_30;
          }
        }

        else
        {
          dispatch_once(&qword_1000719A8, &stru_100060C78);
          v20 = qword_1000719B0;
          if (!os_log_type_enabled(qword_1000719B0, OS_LOG_TYPE_INFO))
          {
LABEL_30:
            if (v19)
            {
              v28 = 0;
              v21 = [NSDictionary dictionaryWithContentsOfURL:v19 error:&v28];
              if (v28)
              {
                if (qword_1000719A8 == -1)
                {
                  v22 = qword_1000719B0;
                  if (!os_log_type_enabled(qword_1000719B0, OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_16;
                  }
                }

                else
                {
                  dispatch_once(&qword_1000719A8, &stru_100060C78);
                  v22 = qword_1000719B0;
                  if (!os_log_type_enabled(qword_1000719B0, OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_16;
                  }
                }

                *buf = 138543362;
                v30 = v19;
                v23 = "Error creating dictionary from %{public}@";
              }

              else
              {
                v24 = [-[NSDictionary objectForKeyedSubscript:](v21 objectForKeyedSubscript:{@"studies", "objectForKeyedSubscript:", a2}];
                if (!v24)
                {
                  if (qword_1000719A8 == -1)
                  {
                    v26 = qword_1000719B0;
                    if (!os_log_type_enabled(qword_1000719B0, OS_LOG_TYPE_DEFAULT))
                    {
                      goto LABEL_16;
                    }
                  }

                  else
                  {
                    dispatch_once(&qword_1000719A8, &stru_100060C78);
                    v26 = qword_1000719B0;
                    if (!os_log_type_enabled(qword_1000719B0, OS_LOG_TYPE_DEFAULT))
                    {
                      goto LABEL_16;
                    }
                  }

                  *buf = 138543618;
                  v30 = a2;
                  v31 = 2114;
                  v32 = v19;
                  _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "No %{public}@ was found in %{public}@", buf, 0x16u);
                  goto LABEL_16;
                }

                v25 = -[NSString stringByAppendingPathExtension:](+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@-v%@", a2, [v24 stringValue]), "stringByAppendingPathExtension:", @"bundle");
                v35[0] = [(NSURL *)a3 path];
                v35[1] = v25;
                v11 = [NSString pathWithComponents:[NSArray arrayWithObjects:v35 count:2]];
                if ([+[NSFileManager fileExistsAtPath:"fileExistsAtPath:"]
                {
                  if (!v11)
                  {
                    goto LABEL_16;
                  }

                  goto LABEL_15;
                }

                if (qword_1000719A8 == -1)
                {
                  v22 = qword_1000719B0;
                  if (!os_log_type_enabled(qword_1000719B0, OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_16;
                  }
                }

                else
                {
                  dispatch_once(&qword_1000719A8, &stru_100060C78);
                  v22 = qword_1000719B0;
                  if (!os_log_type_enabled(qword_1000719B0, OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_16;
                  }
                }

                *buf = 138543362;
                v30 = v11;
                v23 = "Failed to locate bundle %{public}@";
              }
            }

            else
            {
              if (qword_1000719A8 == -1)
              {
                v22 = qword_1000719B0;
                if (!os_log_type_enabled(qword_1000719B0, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_16;
                }
              }

              else
              {
                dispatch_once(&qword_1000719A8, &stru_100060C78);
                v22 = qword_1000719B0;
                if (!os_log_type_enabled(qword_1000719B0, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_16;
                }
              }

              *buf = 138543362;
              v30 = 0;
              v23 = "Failed to location %{public}@";
            }

            _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, v23, buf, 0xCu);
            goto LABEL_16;
          }
        }

        *buf = 138543618;
        v30 = a2;
        v31 = 2114;
        v32 = v19;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Searching for %{public}@ in plist %{public}@", buf, 0x16u);
        goto LABEL_30;
      }
    }

    *buf = 138543874;
    v30 = a2;
    v31 = 2114;
    v32 = a3;
    v33 = 2114;
    v34 = @"loadedStudies.plist";
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%{public}@ not found in %{public}@. Trying %{public}@", buf, 0x20u);
    goto LABEL_27;
  }

LABEL_14:
  v11 = v9;
LABEL_15:
  v12 = [NSBundle bundleWithPath:v11];
  if (v12)
  {
    goto LABEL_17;
  }

LABEL_16:
  v12 = [NSBundle bundleWithIdentifier:a2];
  if (!v12)
  {
    if (qword_1000719A8 == -1)
    {
      v16 = qword_1000719B0;
      if (!os_log_type_enabled(qword_1000719B0, OS_LOG_TYPE_ERROR))
      {
        return 0;
      }
    }

    else
    {
      dispatch_once(&qword_1000719A8, &stru_100060C78);
      v16 = qword_1000719B0;
      if (!os_log_type_enabled(qword_1000719B0, OS_LOG_TYPE_ERROR))
      {
        return 0;
      }
    }

    *buf = 138543362;
    v30 = a2;
    _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Failed to find bundle for %{public}@", buf, 0xCu);
    return 0;
  }

LABEL_17:
  v13 = v12;
  if (qword_1000719A8 != -1)
  {
    dispatch_once(&qword_1000719A8, &stru_100060C78);
    v14 = qword_1000719B0;
    if (!os_log_type_enabled(qword_1000719B0, OS_LOG_TYPE_INFO))
    {
      return v13;
    }

    goto LABEL_19;
  }

  v14 = qword_1000719B0;
  if (os_log_type_enabled(qword_1000719B0, OS_LOG_TYPE_INFO))
  {
LABEL_19:
    v15 = [(NSBundle *)v13 bundleURL];
    *buf = 138543618;
    v30 = a2;
    v31 = 2114;
    v32 = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Found bundle for %{public}@ at %{public}@", buf, 0x16u);
  }

  return v13;
}

uint64_t sub_1000070F4(uint64_t a1, void *a2, void *a3)
{
  objc_opt_class();
  result = objc_opt_isKindOfClass();
  if (result)
  {
    result = [objc_msgSend(a2 stringByTrimmingCharactersInSet:{+[NSCharacterSet whitespaceAndNewlineCharacterSet](NSCharacterSet, "whitespaceAndNewlineCharacterSet")), "length"}];
    if (result)
    {
      objc_opt_class();
      result = objc_opt_isKindOfClass();
      if (result)
      {
        v7 = [a3 objectForKeyedSubscript:@"Required"];
        objc_opt_class();
        result = objc_opt_isKindOfClass();
        if (result)
        {
          result = [v7 BOOLValue];
          if (result)
          {
            v8 = *(a1 + 32);

            return [v8 addObject:a2];
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1000072B0(uint64_t a1, void *a2, void *a3)
{
  objc_opt_class();
  result = objc_opt_isKindOfClass();
  if (result)
  {
    result = [objc_msgSend(a2 stringByTrimmingCharactersInSet:{+[NSCharacterSet whitespaceAndNewlineCharacterSet](NSCharacterSet, "whitespaceAndNewlineCharacterSet")), "length"}];
    if (result)
    {
      objc_opt_class();
      result = objc_opt_isKindOfClass();
      if (result)
      {
        v7 = [a3 objectForKeyedSubscript:@"Description"];
        v8 = [*(a1 + 32) objectForInfoDictionaryKey:v7];
        if (v8)
        {
          v7 = v8;
        }

        objc_opt_class();
        result = objc_opt_isKindOfClass();
        if (result)
        {
          result = [objc_msgSend(v7 stringByTrimmingCharactersInSet:{+[NSCharacterSet whitespaceAndNewlineCharacterSet](NSCharacterSet, "whitespaceAndNewlineCharacterSet")), "length"}];
          if (result)
          {
            v9 = *(a1 + 40);

            return [v9 setObject:v7 forKeyedSubscript:a2];
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_10000742C(void *a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v18 = 0;
  if (![a1 bundleIdentifier])
  {
    if (qword_1000719A8 == -1)
    {
      v6 = qword_1000719B0;
      if (!os_log_type_enabled(qword_1000719B0, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_16;
      }
    }

    else
    {
      dispatch_once(&qword_1000719A8, &stru_100060C78);
      v6 = qword_1000719B0;
      if (!os_log_type_enabled(qword_1000719B0, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_16;
      }
    }

    *buf = 138543362;
    v20 = [a1 bundleURL];
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "No bundle identifier found for bundle URL: %{public}@", buf, 0xCu);
    goto LABEL_16;
  }

  if (+[LSApplicationRecord sr_applicationRecordWithIdentifier:error:](LSApplicationRecord, "sr_applicationRecordWithIdentifier:error:", [a1 bundleIdentifier], &v18))
  {
    if (qword_1000719A8 == -1)
    {
      v11 = qword_1000719B0;
      if (!os_log_type_enabled(qword_1000719B0, OS_LOG_TYPE_INFO))
      {
        return 2;
      }
    }

    else
    {
      dispatch_once(&qword_1000719A8, &stru_100060C78);
      v11 = qword_1000719B0;
      if (!os_log_type_enabled(qword_1000719B0, OS_LOG_TYPE_INFO))
      {
        return 2;
      }
    }

    v4 = [a1 bundleIdentifier];
    *buf = 138543362;
    v20 = v4;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Detected %{public}@ as app bundle type", buf, 0xCu);
    return 2;
  }

  if (qword_1000719A8 == -1)
  {
    v16 = qword_1000719B0;
    if (!os_log_type_enabled(qword_1000719B0, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  dispatch_once(&qword_1000719A8, &stru_100060C78);
  v16 = qword_1000719B0;
  if (os_log_type_enabled(qword_1000719B0, OS_LOG_TYPE_DEFAULT))
  {
LABEL_15:
    v7 = [a1 bundleIdentifier];
    *buf = 138543618;
    v20 = v7;
    v21 = 2114;
    v22 = v18;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "No application record found for %{public}@ because %{public}@", buf, 0x16u);
  }

LABEL_16:
  if (!-[NSString isEqualToString:](-[NSURL path](+[NSURL fileURLWithPath:isDirectory:relativeToURL:](NSURL, "fileURLWithPath:isDirectory:relativeToURL:", [objc_msgSend(a1 "bundleURL")], 1, a2), "path"), "isEqualToString:", objc_msgSend(objc_msgSend(a1, "bundleURL"), "path")))
  {
    if (qword_1000719A8 == -1)
    {
      v13 = qword_1000719B0;
      if (!os_log_type_enabled(qword_1000719B0, OS_LOG_TYPE_ERROR))
      {
        return 0;
      }
    }

    else
    {
      dispatch_once(&qword_1000719A8, &stru_100060C78);
      v13 = qword_1000719B0;
      if (!os_log_type_enabled(qword_1000719B0, OS_LOG_TYPE_ERROR))
      {
        return 0;
      }
    }

    v15 = [a1 bundleIdentifier];
    *buf = 138543362;
    v20 = v15;
    _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Failed to detect a bundle type for %{public}@", buf, 0xCu);
    return 0;
  }

  if (qword_1000719A8 != -1)
  {
    dispatch_once(&qword_1000719A8, &stru_100060C78);
  }

  v8 = qword_1000719B0;
  v5 = 1;
  if (os_log_type_enabled(qword_1000719B0, OS_LOG_TYPE_INFO))
  {
    v9 = [a1 bundleIdentifier];
    *buf = 138543362;
    v20 = v9;
    v5 = 1;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Detected %{public}@ as study bundle type", buf, 0xCu);
  }

  return v5;
}

id *sub_100007A70(id *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8 = a1;
  if (a1)
  {
    v16 = [[NSXPCListener alloc] initWithMachServiceName:a2];
    v21.receiver = v8;
    v21.super_class = RDListener;
    v8 = objc_msgSendSuper2(&v21, "init");
    if (v8)
    {
      v8[1] = [a2 copy];
      v8[2] = a3;
      v17 = a4;
      v8[7] = a5;
      v8[3] = v17;
      v8[4] = a6;
      v8[9] = +[NSMapTable strongToStrongObjectsMapTable];
      [v8 setListener:v16];
      [v8[8] setDelegate:v8];
      objc_setProperty_nonatomic(v8, v18, a7, 40);
      v8[6] = a8;
      [v16 _setQueue:a7];
    }

    v19 = qword_1000719B8;
    if (os_log_type_enabled(qword_1000719B8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v23 = v8;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Starting %@", buf, 0xCu);
    }
  }

  return v8;
}

void sub_100007F74(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 80));
  _Unwind_Resume(a1);
}

NSDictionary *__cdecl sub_100007FAC(id a1)
{
  v2 = @"RDAnalyticsDaemonStartReasonKey";
  v3 = &off_100065208;
  return sub_10002DADC([NSDictionary dictionaryWithObjects:&v3 forKeys:&v2 count:1]);
}

void sub_100008024(uint64_t a1)
{
  Weak = objc_loadWeak((a1 + 32));
  v2 = qword_1000719B8;
  if (os_log_type_enabled(qword_1000719B8, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 138543362;
    v4 = Weak;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}@, Connection interrupted for sensor", &v3, 0xCu);
  }
}

void sub_1000080CC(uint64_t a1)
{
  Weak = objc_loadWeak((a1 + 40));
  v3 = qword_1000719B8;
  if (os_log_type_enabled(qword_1000719B8, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138543362;
    v5 = Weak;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@, XPC Connection invalidated", &v4, 0xCu);
  }

  if (Weak)
  {
    [Weak[9] removeObjectForKey:*(a1 + 32)];
  }
}

void sub_100008190(uint64_t a1, void *a2, void *a3)
{
  if (a1)
  {
    v6 = [*(a1 + 72) objectForKey:a2];
    if (v6)
    {
      v7 = v6;
      v8 = qword_1000719B8;
      if (os_log_type_enabled(qword_1000719B8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v35 = a2;
        v36 = 2114;
        Property = objc_getProperty(v7, v9, 24, 1);
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ is already a connection for %{public}@", buf, 0x16u);
      }
    }

    else
    {
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v10 = *(a1 + 72);
      v11 = [v10 countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v30;
        v14 = 0;
        if (a3)
        {
          do
          {
            for (i = 0; i != v12; i = i + 1)
            {
              if (*v30 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v19 = [*(a1 + 72) objectForKey:*(*(&v29 + 1) + 8 * i)];
              if (v19)
              {
                v21 = objc_getProperty(v19, v20, 24, 1);
              }

              else
              {
                v21 = 0;
              }

              v14 += [v21 isEqualToString:{objc_getProperty(a3, v20, 24, 1)}];
            }

            v12 = [v10 countByEnumeratingWithState:&v29 objects:v33 count:16];
          }

          while (v12);
        }

        else
        {
          do
          {
            for (j = 0; j != v12; j = j + 1)
            {
              if (*v30 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v16 = [*(a1 + 72) objectForKey:*(*(&v29 + 1) + 8 * j)];
              if (v16)
              {
                v16 = objc_getProperty(v16, v17, 24, 1);
              }

              v14 += [v16 isEqualToString:0];
            }

            v12 = [v10 countByEnumeratingWithState:&v29 objects:v33 count:16];
          }

          while (v12);
        }
      }

      else
      {
        v14 = 0;
      }

      if (v14 >= *(a1 + 32))
      {
        AnalyticsSendEventLazy();
        v25 = qword_1000719B8;
        if (os_log_type_enabled(qword_1000719B8, OS_LOG_TYPE_ERROR))
        {
          v27 = *(a1 + 8);
          if (a3)
          {
            v28 = objc_getProperty(a3, v26, 24, 1);
          }

          else
          {
            v28 = 0;
          }

          *buf = 138543618;
          v35 = v27;
          v36 = 2114;
          Property = v28;
          _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Can't have more than one connection to %{public}@ for sensor %{public}@. Invalidating client connection", buf, 0x16u);
        }

        [a2 invalidate];
      }

      else
      {
        v22 = qword_1000719B8;
        if (os_log_type_enabled(qword_1000719B8, OS_LOG_TYPE_DEFAULT))
        {
          if (a3)
          {
            v24 = objc_getProperty(a3, v23, 24, 1);
          }

          else
          {
            v24 = 0;
          }

          *buf = 138543618;
          v35 = a2;
          v36 = 2114;
          Property = v24;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Adding new client %{public}@ for %{public}@", buf, 0x16u);
        }

        [*(a1 + 72) setObject:a3 forKey:a2];
      }
    }
  }
}

NSDictionary *sub_10000854C(uint64_t a1)
{
  v4[0] = @"RDAnalyticsConnectionTypeKey";
  v1 = *(a1 + 32);
  if (v1)
  {
    if ([*(v1 + 8) isEqualToString:@"com.apple.SensorKit.reader"])
    {
      v2 = 1;
    }

    else if ([*(v1 + 8) isEqualToString:@"com.apple.SensorKit.writer"])
    {
      v2 = 2;
    }

    else if ([*(v1 + 8) isEqualToString:@"com.apple.SensorKit.pruner"])
    {
      v2 = 3;
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = 0;
  }

  v4[1] = @"RDAnalyticsConnectionRejectionTypeKey";
  v5[0] = [NSNumber numberWithInteger:v2];
  v5[1] = &off_100065208;
  return sub_10002DADC([NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:2]);
}

id sub_100008650(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v4 = +[NSMutableArray array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = *(a1 + 72);
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        Property = [*(a1 + 72) objectForKey:v10];
        if (Property)
        {
          Property = objc_getProperty(Property, v12, 24, 1);
        }

        if ([Property isEqualToString:a2])
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return v4;
}

void *sub_1000090AC(void *a1, void *a2, void *a3, uint64_t a4)
{
  if (!a1)
  {
    return 0;
  }

  v18.receiver = a1;
  v18.super_class = RDUnarchiver;
  v7 = objc_msgSendSuper2(&v18, "init");
  if (v7)
  {
    v7[3] = a3;
    v7[1] = archive_read_new();
    v7[4] = a4;
    *(v7 + 41) = 1;
    support_format_all = archive_read_support_format_all();
    if (!support_format_all)
    {
      v9 = v7[1];
      support_format_all = archive_read_support_filter_all();
      if (!support_format_all)
      {
        v10 = v7[1];
        [a2 bytes];
        [a2 length];
        support_format_all = archive_read_open_memory();
        if (!support_format_all)
        {
          if (!v7[3])
          {
            return v7;
          }

          v7[2] = archive_write_disk_new();
          v15 = archive_write_disk_set_options();
          if (v15)
          {
            v11 = v15;
            *(v7 + 40) = 1;
            v12 = qword_1000719C0;
            if (!os_log_type_enabled(qword_1000719C0, OS_LOG_TYPE_ERROR))
            {
LABEL_7:
              if (*(v7 + 41) != 1)
              {
                goto LABEL_8;
              }

              goto LABEL_17;
            }

LABEL_16:
            *buf = 138412546;
            v20 = a3;
            v21 = 1024;
            v22 = v11;
            _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Error creating unarchive output at path %@ %d", buf, 0x12u);
            if (*(v7 + 41) != 1)
            {
LABEL_8:
              if (*(v7 + 40) != 1)
              {
LABEL_10:
                *(v7 + 20) = 0;

                return 0;
              }

LABEL_9:
              v13 = v7[2];
              archive_write_free();
              goto LABEL_10;
            }

LABEL_17:
            v16 = v7[1];
            archive_read_free();
            if (*(v7 + 40) != 1)
            {
              goto LABEL_10;
            }

            goto LABEL_9;
          }

          v17 = v7[2];
          support_format_all = archive_write_disk_set_standard_lookup();
          *(v7 + 40) = 1;
          if (!support_format_all)
          {
            return v7;
          }
        }
      }
    }

    v11 = support_format_all;
    v12 = qword_1000719C0;
    if (!os_log_type_enabled(qword_1000719C0, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

  return v7;
}

uint64_t sub_10000931C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  objc_opt_self();
  v9 = [NSData dataWithContentsOfURL:a2 options:1 error:a5];
  if (v9)
  {
    v10 = sub_1000090AC([RDUnarchiver alloc], v9, a3, a4);
    v11 = v10;
    if (!v10)
    {
      v33 = 0;
      goto LABEL_29;
    }

    v12 = v10[1];
    if (archive_read_next_header() == 1)
    {
LABEL_23:
      if (*(v11 + 41) == 1)
      {
        v33 = *(v11 + 40);
        v36 = v11[1];
        archive_read_free();
        if (*(v11 + 40) != 1)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v33 = 0;
        if (*(v11 + 40) != 1)
        {
LABEL_28:
          *(v11 + 20) = 0;
LABEL_29:

          return v33 & 1;
        }
      }

      v37 = v11[2];
      archive_write_free();
      goto LABEL_28;
    }

    while (2)
    {
      v13 = objc_autoreleasePoolPush();
      v14 = archive_entry_pathname();
      if (!v14)
      {
        v39 = qword_1000719C0;
        if (os_log_type_enabled(qword_1000719C0, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "Got no pathname from entry", buf, 2u);
        }

        v35 = 41;
        goto LABEL_22;
      }

      v15 = [NSURL fileURLWithPath:[NSString stringWithUTF8String:v14] relativeToURL:v11[3]];
      [(NSString *)[(NSURL *)v15 path] UTF8String];
      archive_entry_set_pathname();
      v16 = v11[2];
      if ((archive_write_header() & 0x80000000) != 0)
      {
        v34 = qword_1000719C0;
        if (!os_log_type_enabled(qword_1000719C0, OS_LOG_TYPE_ERROR))
        {
LABEL_21:
          v35 = 40;
LABEL_22:
          *(v11 + v35) = 0;
          objc_autoreleasePoolPop(v13);
          goto LABEL_23;
        }

        v40 = v11[2];
        v41 = archive_error_string();
        *buf = 136446210;
        v49 = v41;
        v42 = "Failed to write header. %{public}s";
LABEL_39:
        _os_log_error_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, v42, buf, 0xCu);
        goto LABEL_21;
      }

      do
      {
        v17 = v11[1];
        data_block = archive_read_data_block();
        if (data_block == 1)
        {
          goto LABEL_11;
        }

        if (data_block < 0)
        {
          goto LABEL_20;
        }

        v19 = v11[2];
        v20 = archive_write_data_block();
      }

      while ((v20 & 0x8000000000000000) == 0);
      v21 = v20;
      v22 = qword_1000719C0;
      if (os_log_type_enabled(qword_1000719C0, OS_LOG_TYPE_ERROR))
      {
        v29 = v11[2];
        v30 = archive_error_string();
        *buf = 136446210;
        v49 = v30;
        _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Failed to write a data block. %{public}s", buf, 0xCu);
        if ((v21 & 0x80000000) == 0)
        {
          goto LABEL_11;
        }
      }

      else if ((v21 & 0x80000000) == 0)
      {
LABEL_11:
        v23 = v11[2];
        if ((archive_write_finish_entry() & 0x80000000) == 0)
        {
          v24 = [NSFileHandle fileHandleForUpdatingAtPath:[(NSURL *)v15 path]];
          v25 = fcntl([(NSFileHandle *)v24 fileDescriptor], 64, v11[4]);
          if (v25 < 0)
          {
            v26 = v25;
            v27 = qword_1000719C0;
            if (os_log_type_enabled(qword_1000719C0, OS_LOG_TYPE_ERROR))
            {
              v31 = [(NSURL *)v15 path];
              v47 = v11[4];
              v32 = *__error();
              *buf = 138544130;
              v49 = v31;
              v50 = 2050;
              v51 = v47;
              v52 = 1026;
              v53 = v26;
              v54 = 1026;
              v55 = v32;
              _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "Failed to set data protection on file %{public}@ to %{public}ld because %{public}d %{public, errno}d", buf, 0x22u);
            }
          }

          [(NSFileHandle *)v24 closeFile];
          objc_autoreleasePoolPop(v13);
          v28 = v11[1];
          if (archive_read_next_header() != 1)
          {
            continue;
          }

          goto LABEL_23;
        }

        v34 = qword_1000719C0;
        if (!os_log_type_enabled(qword_1000719C0, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_21;
        }

        v43 = v11[2];
        v44 = archive_error_string();
        *buf = 136315138;
        v49 = v44;
        v42 = "Failed to finish writing entry. %s";
        goto LABEL_39;
      }

      break;
    }

LABEL_20:
    v34 = qword_1000719C0;
    if (!os_log_type_enabled(qword_1000719C0, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    v45 = v11[2];
    v46 = archive_error_string();
    *buf = 136446210;
    v49 = v46;
    v42 = "Failed to copy data. %{public}s";
    goto LABEL_39;
  }

  v33 = 0;
  return v33 & 1;
}

void sub_10000978C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  objc_opt_self();
  v18 = 0;
  v5 = [NSData dataWithContentsOfURL:a2 options:1 error:&v18];
  if (v5)
  {
    v6 = sub_1000090AC([RDUnarchiver alloc], v5, 0, 0);
    v7 = v6;
    v13 = _NSConcreteStackBlock;
    v14 = 3221225472;
    v15 = sub_100009928;
    v16 = &unk_100060D70;
    v17 = a3;
    if (v6)
    {
      v20 = 0;
      v8 = v6[1];
      if (archive_read_next_header() != 1)
      {
        while (1)
        {
          v9 = archive_entry_pathname();
          if (!v9)
          {
            break;
          }

          v10 = [NSString stringWithUTF8String:v9, v13, v14];
          (v15)(&v13, v10);
          v11 = v7[1];
          if (archive_read_next_header() == 1)
          {
            goto LABEL_11;
          }
        }

        v12 = qword_1000719C0;
        if (os_log_type_enabled(qword_1000719C0, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Got no pathname from entry", buf, 2u);
        }

        *(v7 + 41) = 0;
      }
    }

LABEL_11:
  }

  else
  {
    (*(a3 + 16))(a3, 0, v18);
  }
}

SRAbsoluteTime SRAbsoluteTimeGetCurrent(void)
{
  v0 = mach_continuous_time();
  if (qword_100071B60 != -1)
  {
    dispatch_once(&qword_100071B60, &stru_100060D90);
  }

  v1 = qword_100071B68;
  v2 = *&qword_100071B70;
  v3 = *&qword_100071B78;
  TMConvertTicksToSeconds();
  if (v1 >= v0)
  {
    v4 = -v4;
  }

  return v3 + v2 + v4;
}

void sub_100009DB4(id a1)
{
  v1 = mach_continuous_time();
  TMGetKernelMonotonicClock();
  qword_100071B70 = v2;
  qword_100071B68 = v1 + ((mach_continuous_time() - v1) >> 1);
}

CFAbsoluteTime SRAbsoluteTimeToCFAbsoluteTime(SRAbsoluteTime sr)
{
  mach_get_times();
  if (qword_100071B60 != -1)
  {
    dispatch_once(&qword_100071B60, &stru_100060D90);
  }

  v2 = *&qword_100071B70;
  v3 = *&qword_100071B78;
  TMConvertTicksToSeconds();
  return sr - (v2 + v3) + v4 + 0 - kCFAbsoluteTimeIntervalSince1970 + 0 * 0.000000001;
}

BOOL SRAbsoluteTimeSetSyntheticStartFromRemoteTime(unint64_t a1, unint64_t a2, double a3, uint64_t a4, double *a5)
{
  mach_get_times();
  TMConvertTicksToSeconds();
  v10 = v9;
  TMConvertTicksToSeconds();
  if (a2 < a1)
  {
    v11 = -v11;
  }

  v12 = v10 + a3 + v11;
  TMConvertTicksToSeconds();
  v14 = v12 - v13;
  TMConvertTicksToSeconds();
  v16 = v14 + v15;
  v17 = qword_100071B68;
  v18 = *&qword_100071B70;
  TMConvertTicksToSeconds();
  if (v16 > 0.0)
  {
    if (a1 > v17)
    {
      v19 = -v19;
    }

    v20 = v19 + v16 - v18;
    qword_100071B78 = *&v20;
    if (a5)
    {
      *a5 = v20;
    }
  }

  return v16 > 0.0;
}

CFTimeInterval SRAbsoluteTimeRoundedDownToNearestInterval(double a1, double a2)
{
  mach_get_times();
  if (qword_100071B60 != -1)
  {
    dispatch_once(&qword_100071B60, &stru_100060D90);
  }

  v4 = *&qword_100071B70;
  v5 = *&qword_100071B78;
  TMConvertTicksToSeconds();
  v7 = v6;
  mach_get_times();
  if (qword_100071B60 != -1)
  {
    dispatch_once(&qword_100071B60, &stru_100060D90);
  }

  v8 = *&qword_100071B70;
  v9 = *&qword_100071B78;
  TMConvertTicksToSeconds();
  v11 = -v10;
  v12 = 1.0;
  if (a2 != 0.0)
  {
    v12 = a2;
  }

  return kCFAbsoluteTimeIntervalSince1970 + floor((a1 - (v4 + v5) + v7 + 0 - kCFAbsoluteTimeIntervalSince1970 + 0 * 0.000000001) / v12) * v12 - 0 + 0 * -0.000000001 + v8 + v9 + v11;
}

id sub_10000A3F0(id result, void **self)
{
  if (!result)
  {
    return result;
  }

  v3 = result;
  if (!self || !objc_getProperty(self, self, 24, 1) || !objc_getProperty(self, v4, 32, 1))
  {
    if (qword_1000719D0 == -1)
    {
      v7 = qword_1000719D8;
      if (!os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_ERROR))
      {
LABEL_11:

        return 0;
      }
    }

    else
    {
      dispatch_once(&qword_1000719D0, &stru_100060E18);
      v7 = qword_1000719D8;
      if (!os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_11;
      }
    }

    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Trying to create a datastore object with an incomplete datastore context", buf, 2u);
    goto LABEL_11;
  }

  v8.receiver = v3;
  v8.super_class = RDWriteableDatastore;
  result = objc_msgSendSuper2(&v8, "init");
  if (result)
  {
    *(result + 1) = 1;
    v5 = result;
    if (sub_10002A184(self[2], self[3]))
    {
      v5[1] |= 4uLL;
    }

    *(v5 + 4) = 514;
    v6 = self;
    result = v5;
    v5[3] = v6;
  }

  return result;
}

double sub_10000A590(uint64_t a1)
{
  if (!a1)
  {
    return 0.0;
  }

  v3 = +[NSFileManager defaultManager];
  v4 = *(a1 + 24);
  if (v4)
  {
    Property = objc_getProperty(v4, v2, 8, 1);
    v7 = sub_10003A234(*(a1 + 24));
    v8 = *(a1 + 24);
    if (v8)
    {
LABEL_4:
      v9 = objc_getProperty(v8, v6, 24, 1);
      goto LABEL_5;
    }
  }

  else
  {
    Property = 0;
    v7 = sub_10003A234(0);
    v8 = *(a1 + 24);
    if (v8)
    {
      goto LABEL_4;
    }
  }

  v9 = 0;
LABEL_5:
  v10 = sub_10001A5D4(Property, v7, v9, *(a1 + 8));
  v11 = sub_1000058AC(v3, v10);
  v19 = 0;
  v12 = [NSFileHandle fileHandleForReadingFromURL:v11 error:&v19];
  if (!v12)
  {
    if (qword_1000719D0 == -1)
    {
      v16 = qword_1000719D8;
      if (!os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_ERROR))
      {
LABEL_9:
        [objc_msgSend(v11 "lastPathComponent")];
        return v17 + 5.0;
      }
    }

    else
    {
      dispatch_once(&qword_1000719D0, &stru_100060E18);
      v16 = qword_1000719D8;
      if (!os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_9;
      }
    }

    *buf = 138543618;
    v23 = v11;
    v24 = 2114;
    v25 = v19;
    _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Failed to open %{public}@ to find latest sample because %{public}@", buf, 0x16u);
    goto LABEL_9;
  }

  v13 = v12;
  v14 = sub_10001C870([RDReader alloc], *(a1 + 24));
  v20 = @"samples";
  v21 = v13;
  v15 = sub_10001CE08(v14, [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1]);

  return v15;
}

id sub_10000A7DC(uint64_t a1, uint64_t a2, uint64_t a3, const __CFString **a4)
{
  v6 = [NSURL fileURLWithPath:a2 isDirectory:0 relativeToURL:a3];
  [+[NSFileManager defaultManager](NSFileManager createDirectoryAtURL:"createDirectoryAtURL:withIntermediateDirectories:attributes:error:" withIntermediateDirectories:[(NSURL *)v6 URLByDeletingLastPathComponent] attributes:1 error:0, 0];
  v8 = *(a1 + 24);
  if (v8)
  {
    Property = objc_getProperty(v8, v7, 16, 1);
    v11 = *(a1 + 24);
    if (v11)
    {
      v12 = objc_getProperty(v11, v9, 24, 1);
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    Property = 0;
    v12 = 0;
  }

  v13 = sub_100029B08(Property, v12);
  v14 = sub_10001C0E8(NSFileHandle, v6, v13, *(a1 + 16), a4);
  if (v14)
  {
    if (qword_1000719D0 == -1)
    {
      v16 = qword_1000719D8;
      if (os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_DEBUG))
      {
LABEL_8:
        v21 = 138543362;
        v22 = v6;
        _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "Created a new segment %{public}@", &v21, 0xCu);
      }
    }

    else
    {
      dispatch_once(&qword_1000719D0, &stru_100060E18);
      v16 = qword_1000719D8;
      if (os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
    if (qword_1000719D0 == -1)
    {
      v18 = qword_1000719D8;
      if (!os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_ERROR))
      {
        return v14;
      }
    }

    else
    {
      dispatch_once(&qword_1000719D0, &stru_100060E18);
      v18 = qword_1000719D8;
      if (!os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_ERROR))
      {
        return v14;
      }
    }

    if (a4)
    {
      v20 = *a4;
    }

    else
    {
      v20 = @"(null)";
    }

    v21 = 138543618;
    v22 = v6;
    v23 = 2114;
    v24 = v20;
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Failed to create new segment %{public}@ because %{public}@", &v21, 0x16u);
  }

  return v14;
}

NSMutableDictionary *sub_10000AA38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const __CFString **a5)
{
  if (!a1)
  {
    return 0;
  }

  if (!a2)
  {
    return &__NSDictionary0__struct;
  }

  v11 = [NSMutableDictionary dictionaryWithCapacity:3];
  v12 = *(a1 + 24);
  if (v12)
  {
    Property = objc_getProperty(v12, v10, 8, 1);
    v15 = sub_10003A234(*(a1 + 24));
    v16 = *(a1 + 24);
    if (v16)
    {
LABEL_5:
      v17 = objc_getProperty(v16, v14, 24, 1);
      goto LABEL_6;
    }
  }

  else
  {
    Property = 0;
    v15 = sub_10003A234(0);
    v16 = *(a1 + 24);
    if (v16)
    {
      goto LABEL_5;
    }
  }

  v17 = 0;
LABEL_6:
  v18 = sub_10001A5D4(Property, v15, v17, *(a1 + 8));
  v19 = sub_10000A7DC(a1, a2, v18, a5);
  if (!v19)
  {
    return &__NSDictionary0__struct;
  }

  [(NSMutableDictionary *)v11 setObject:v19 forKeyedSubscript:@"samples"];
  v21 = *(a1 + 24);
  if (v21)
  {
    v22 = [SRSensorDescription sensorDescriptionForSensor:objc_getProperty(v21, v20, 24, 1)];
    if (!a3)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v22 = [SRSensorDescription sensorDescriptionForSensor:0];
    if (!a3)
    {
      goto LABEL_14;
    }
  }

  if ([v22 metadataEnabled])
  {
    v24 = *(a1 + 24);
    if (v24)
    {
      v25 = objc_getProperty(v24, v23, 8, 1);
      v27 = sub_10003A234(*(a1 + 24));
      v28 = *(a1 + 24);
      if (v28)
      {
LABEL_12:
        v29 = objc_getProperty(v28, v26, 24, 1);
LABEL_13:
        v30 = sub_10001A6A4(v25, v27, v29, *(a1 + 8));
        [(NSMutableDictionary *)v11 setObject:sub_10000A7DC(a1 forKeyedSubscript:a3, v30, a5), @"metadata"];
        goto LABEL_14;
      }
    }

    else
    {
      v25 = 0;
      v27 = sub_10003A234(0);
      v28 = *(a1 + 24);
      if (v28)
      {
        goto LABEL_12;
      }
    }

    v29 = 0;
    goto LABEL_13;
  }

LABEL_14:
  if (a4 && [v22 sensorConfigurationEnabled])
  {
    v32 = *(a1 + 24);
    if (v32)
    {
      v33 = objc_getProperty(v32, v31, 8, 1);
      v35 = sub_10003A234(*(a1 + 24));
      v36 = *(a1 + 24);
      if (v36)
      {
LABEL_18:
        v37 = objc_getProperty(v36, v34, 24, 1);
LABEL_19:
        v38 = sub_10001A774(v33, v35, v37, *(a1 + 8));
        [(NSMutableDictionary *)v11 setObject:sub_10000A7DC(a1 forKeyedSubscript:a4, v38, a5), @"sensorConfiguration"];
        return v11;
      }
    }

    else
    {
      v33 = 0;
      v35 = sub_10003A234(0);
      v36 = *(a1 + 24);
      if (v36)
      {
        goto LABEL_18;
      }
    }

    v37 = 0;
    goto LABEL_19;
  }

  return v11;
}

id sub_10000ACCC(id result, void **self)
{
  if (!result)
  {
    return result;
  }

  v3 = result;
  if (!self || !objc_getProperty(self, self, 24, 1) || !objc_getProperty(self, v4, 32, 1))
  {
    if (qword_1000719D0 == -1)
    {
      v7 = qword_1000719D8;
      if (!os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_ERROR))
      {
LABEL_11:

        return 0;
      }
    }

    else
    {
      dispatch_once(&qword_1000719D0, &stru_100060E18);
      v7 = qword_1000719D8;
      if (!os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_11;
      }
    }

    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Trying to create a datastore object with an incomplete datastore context", buf, 2u);
    goto LABEL_11;
  }

  v8.receiver = v3;
  v8.super_class = RDReadableDatastore;
  result = objc_msgSendSuper2(&v8, "init");
  if (result)
  {
    *(result + 2) = 0;
    v5 = result;
    if (sub_10002A184(self[2], self[3]))
    {
      *(v5 + 16) |= 4uLL;
    }

    *(v5 + 24) = 0;
    v6 = self;
    result = v5;
    *(v5 + 8) = v6;
  }

  return result;
}

NSDictionary *sub_10000AE64(uint64_t a1, const char *a2, NSURL *a3, NSURL *a4, void *a5)
{
  v10 = *(a1 + 8);
  if (v10)
  {
    Property = objc_getProperty(v10, a2, 8, 1);
    v13 = sub_10003A234(*(a1 + 8));
    v14 = *(a1 + 8);
    if (v14)
    {
LABEL_3:
      v15 = objc_getProperty(v14, v12, 24, 1);
      goto LABEL_4;
    }
  }

  else
  {
    Property = 0;
    v13 = sub_10003A234(0);
    v14 = *(a1 + 8);
    if (v14)
    {
      goto LABEL_3;
    }
  }

  v15 = 0;
LABEL_4:
  v17 = [NSURL fileURLWithPath:a2 isDirectory:0 relativeToURL:sub_10001A5D4(Property, v13, v15, *(a1 + 16))];
  if (!a3)
  {
    goto LABEL_9;
  }

  v18 = *(a1 + 8);
  if (!v18)
  {
    v19 = 0;
    v21 = sub_10003A234(0);
    v22 = *(a1 + 8);
    if (v22)
    {
      goto LABEL_7;
    }

LABEL_24:
    v23 = 0;
    goto LABEL_8;
  }

  v19 = objc_getProperty(v18, v16, 8, 1);
  v21 = sub_10003A234(*(a1 + 8));
  v22 = *(a1 + 8);
  if (!v22)
  {
    goto LABEL_24;
  }

LABEL_7:
  v23 = objc_getProperty(v22, v20, 24, 1);
LABEL_8:
  a3 = [NSURL fileURLWithPath:a3 isDirectory:0 relativeToURL:sub_10001A6A4(v19, v21, v23, *(a1 + 16))];
LABEL_9:
  if (!a4)
  {
    goto LABEL_14;
  }

  v24 = *(a1 + 8);
  if (!v24)
  {
    v25 = 0;
    v27 = sub_10003A234(0);
    v28 = *(a1 + 8);
    if (v28)
    {
      goto LABEL_12;
    }

LABEL_26:
    v29 = 0;
    goto LABEL_13;
  }

  v25 = objc_getProperty(v24, v16, 8, 1);
  v27 = sub_10003A234(*(a1 + 8));
  v28 = *(a1 + 8);
  if (!v28)
  {
    goto LABEL_26;
  }

LABEL_12:
  v29 = objc_getProperty(v28, v26, 24, 1);
LABEL_13:
  a4 = [NSURL fileURLWithPath:a4 isDirectory:0 relativeToURL:sub_10001A774(v25, v27, v29, *(a1 + 16))];
LABEL_14:
  v30 = *(a1 + 8);
  if (v30)
  {
    v32 = objc_getProperty(v30, v16, 16, 1);
    v33 = *(a1 + 8);
    if (v33)
    {
      v34 = objc_getProperty(v33, v31, 24, 1);
    }

    else
    {
      v34 = 0;
    }
  }

  else
  {
    v32 = 0;
    v34 = 0;
  }

  v35 = sub_100029B08(v32, v34);
  v36 = +[NSFileManager defaultManager];
  v37 = *(a1 + 24);

  return sub_1000059A0(v36, v17, a3, a4, v35, v37, a5);
}

NSDictionary *sub_10000B0D0(uint64_t a1, char *a2, double a3)
{
  if (!a1)
  {
    return 0;
  }

  v6 = *(a1 + 8);
  if (v6)
  {
    Property = objc_getProperty(v6, a2, 8, 1);
    v9 = sub_10003A234(*(a1 + 8));
    v10 = *(a1 + 8);
    if (v10)
    {
LABEL_4:
      v11 = objc_getProperty(v10, v8, 24, 1);
      goto LABEL_5;
    }
  }

  else
  {
    Property = 0;
    v9 = sub_10003A234(0);
    v10 = *(a1 + 8);
    if (v10)
    {
      goto LABEL_4;
    }
  }

  v11 = 0;
LABEL_5:
  v12 = sub_10001A5D4(Property, v9, v11, *(a1 + 16));
  v13 = [sub_10000B338(v12 a3)];
  v15 = &__NSDictionary0__struct;
  if (!v13)
  {
    return v15;
  }

  v16 = v13;
  v17 = *(a1 + 8);
  if (v17)
  {
    v18 = [SRSensorDescription sensorDescriptionForSensor:objc_getProperty(v17, v14, 24, 1)];
    if ([v18 metadataEnabled])
    {
      goto LABEL_8;
    }

LABEL_17:
    v27 = 0;
    if (![v18 sensorConfigurationEnabled])
    {
      goto LABEL_12;
    }

    goto LABEL_18;
  }

  v18 = [SRSensorDescription sensorDescriptionForSensor:0];
  if (![v18 metadataEnabled])
  {
    goto LABEL_17;
  }

LABEL_8:
  v20 = *(a1 + 8);
  if (v20)
  {
    v21 = objc_getProperty(v20, v19, 8, 1);
    v23 = sub_10003A234(*(a1 + 8));
    v24 = *(a1 + 8);
    if (v24)
    {
LABEL_10:
      v25 = objc_getProperty(v24, v22, 24, 1);
      goto LABEL_11;
    }
  }

  else
  {
    v21 = 0;
    v23 = sub_10003A234(0);
    v24 = *(a1 + 8);
    if (v24)
    {
      goto LABEL_10;
    }
  }

  v25 = 0;
LABEL_11:
  v26 = sub_10001A6A4(v21, v23, v25, *(a1 + 16));
  v27 = [sub_10000B338(v26 a3)];
  if (![v18 sensorConfigurationEnabled])
  {
LABEL_12:
    v29 = 0;
    goto LABEL_22;
  }

LABEL_18:
  v30 = *(a1 + 8);
  if (!v30)
  {
    v31 = 0;
    v33 = sub_10003A234(0);
    v34 = *(a1 + 8);
    if (v34)
    {
      goto LABEL_20;
    }

LABEL_28:
    v35 = 0;
    goto LABEL_21;
  }

  v31 = objc_getProperty(v30, v28, 8, 1);
  v33 = sub_10003A234(*(a1 + 8));
  v34 = *(a1 + 8);
  if (!v34)
  {
    goto LABEL_28;
  }

LABEL_20:
  v35 = objc_getProperty(v34, v32, 24, 1);
LABEL_21:
  v36 = sub_10001A774(v31, v33, v35, *(a1 + 16));
  v29 = [sub_10000B338(v36 a3)];
LABEL_22:
  v37 = sub_10000AE64(a1, v16, v27, v29, a2);
  if ([(NSDictionary *)v37 objectForKeyedSubscript:@"samples"])
  {
    return v37;
  }

  return v15;
}

id sub_10000B338(uint64_t a1, double a2)
{
  v23 = NSURLFileSizeKey;
  v3 = [+[NSFileManager defaultManager](NSFileManager enumeratorAtURL:"enumeratorAtURL:includingPropertiesForKeys:options:errorHandler:" includingPropertiesForKeys:a1 options:[NSArray errorHandler:"arrayWithObjects:count:" arrayWithObjects:1 count:?], 4, 0];
  v4 = objc_autoreleasePoolPush();
  v5 = [(NSDirectoryEnumerator *)v3 nextObject];
  if (!v5)
  {
    objc_autoreleasePoolPop(v4);
    goto LABEL_22;
  }

  v6 = v5;
  v7 = 0;
  v8 = 0;
  do
  {
    if (!sub_10000536C(+[NSFileManager defaultManager], v6))
    {
      goto LABEL_3;
    }

    [objc_msgSend(v6 "lastPathComponent")];
    v10 = v9;
    [objc_msgSend(v7 "lastPathComponent")];
    if (v10 <= a2 && v10 > v11)
    {

      v7 = v6;
      goto LABEL_3;
    }

    if (v8)
    {
      [objc_msgSend(v8 "lastPathComponent")];
      if (v10 <= a2)
      {
        goto LABEL_3;
      }
    }

    else
    {
      v13 = INFINITY;
      if (v10 <= a2)
      {
        goto LABEL_3;
      }
    }

    if (v10 <= v13)
    {

      v8 = v6;
    }

LABEL_3:
    objc_autoreleasePoolPop(v4);
    v4 = objc_autoreleasePoolPush();
    v6 = [(NSDirectoryEnumerator *)v3 nextObject];
  }

  while (v6);
  objc_autoreleasePoolPop(v4);
  if (!v7)
  {
    if (v8)
    {
      if (qword_1000719D0 == -1)
      {
        v18 = qword_1000719D8;
        if (!os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_INFO))
        {
LABEL_30:
          v15 = v8;
          return v15;
        }
      }

      else
      {
        dispatch_once(&qword_1000719D0, &stru_100060E18);
        v18 = qword_1000719D8;
        if (!os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_INFO))
        {
          goto LABEL_30;
        }
      }

      v19 = 138543618;
      v20 = v8;
      v21 = 2050;
      v22 = a2;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Returning segment %{public}@ which contains sample %{public}f", &v19, 0x16u);
      goto LABEL_30;
    }

LABEL_22:
    if (qword_1000719D0 == -1)
    {
      v16 = qword_1000719D8;
      if (!os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_INFO))
      {
        return 0;
      }
    }

    else
    {
      dispatch_once(&qword_1000719D0, &stru_100060E18);
      v16 = qword_1000719D8;
      if (!os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_INFO))
      {
        return 0;
      }
    }

    LOWORD(v19) = 0;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "No closest segment found", &v19, 2u);
    return 0;
  }

  if (qword_1000719D0 == -1)
  {
    v14 = qword_1000719D8;
    if (os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_INFO))
    {
      goto LABEL_19;
    }
  }

  else
  {
    dispatch_once(&qword_1000719D0, &stru_100060E18);
    v14 = qword_1000719D8;
    if (os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_INFO))
    {
LABEL_19:
      v19 = 138543618;
      v20 = v7;
      v21 = 2050;
      v22 = a2;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Returning segment %{public}@ which contains sample %{public}f", &v19, 0x16u);
    }
  }

  v15 = v7;
  return v15;
}

NSDictionary *sub_10000B6C0(uint64_t a1, void *a2, void *a3)
{
  if (!a1)
  {
    return 0;
  }

  if (!a2)
  {
    if (qword_1000719D0 == -1)
    {
      v34 = qword_1000719D8;
      if (!os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_ERROR))
      {
        return 0;
      }
    }

    else
    {
      dispatch_once(&qword_1000719D0, &stru_100060E18);
      v34 = qword_1000719D8;
      if (!os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_ERROR))
      {
        return 0;
      }
    }

    *v44 = 0;
    _os_log_error_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "No segment provided", v44, 2u);
    return 0;
  }

  [a2 doubleValue];
  v7 = v6;
  v8 = *(a1 + 8);
  if (v8)
  {
    Property = objc_getProperty(v8, v5, 8, 1);
    v11 = sub_10003A234(*(a1 + 8));
    v12 = *(a1 + 8);
    if (v12)
    {
LABEL_5:
      v13 = objc_getProperty(v12, v10, 24, 1);
      goto LABEL_6;
    }
  }

  else
  {
    Property = 0;
    v11 = sub_10003A234(0);
    v12 = *(a1 + 8);
    if (v12)
    {
      goto LABEL_5;
    }
  }

  v13 = 0;
LABEL_6:
  v14 = sub_10001A5D4(Property, v11, v13, *(a1 + 16));
  v15 = sub_10000B9C4(v14, v7);
  v16 = &__NSDictionary0__struct;
  if (!v15)
  {
    return v16;
  }

  v17 = [v15 lastPathComponent];
  [v17 doubleValue];
  v20 = v19;
  v21 = *(a1 + 8);
  if (v21)
  {
    v22 = [SRSensorDescription sensorDescriptionForSensor:objc_getProperty(v21, v18, 24, 1)];
    if ([v22 metadataEnabled])
    {
      goto LABEL_9;
    }

LABEL_22:
    v31 = 0;
    if (![v22 sensorConfigurationEnabled])
    {
      goto LABEL_13;
    }

    goto LABEL_23;
  }

  v22 = [SRSensorDescription sensorDescriptionForSensor:0];
  if (![v22 metadataEnabled])
  {
    goto LABEL_22;
  }

LABEL_9:
  v24 = *(a1 + 8);
  if (v24)
  {
    v25 = objc_getProperty(v24, v23, 8, 1);
    v27 = sub_10003A234(*(a1 + 8));
    v28 = *(a1 + 8);
    if (v28)
    {
LABEL_11:
      v29 = objc_getProperty(v28, v26, 24, 1);
      goto LABEL_12;
    }
  }

  else
  {
    v25 = 0;
    v27 = sub_10003A234(0);
    v28 = *(a1 + 8);
    if (v28)
    {
      goto LABEL_11;
    }
  }

  v29 = 0;
LABEL_12:
  v30 = sub_10001A6A4(v25, v27, v29, *(a1 + 16));
  v31 = [sub_10000B9C4(v30 v20)];
  if (![v22 sensorConfigurationEnabled])
  {
LABEL_13:
    v33 = 0;
    goto LABEL_27;
  }

LABEL_23:
  v35 = *(a1 + 8);
  if (!v35)
  {
    v36 = 0;
    v38 = sub_10003A234(0);
    v39 = *(a1 + 8);
    if (v39)
    {
      goto LABEL_25;
    }

LABEL_33:
    v40 = 0;
    goto LABEL_26;
  }

  v36 = objc_getProperty(v35, v32, 8, 1);
  v38 = sub_10003A234(*(a1 + 8));
  v39 = *(a1 + 8);
  if (!v39)
  {
    goto LABEL_33;
  }

LABEL_25:
  v40 = objc_getProperty(v39, v37, 24, 1);
LABEL_26:
  v41 = sub_10001A774(v36, v38, v40, *(a1 + 16));
  v33 = [sub_10000B9C4(v41 v20)];
LABEL_27:
  v42 = sub_10000AE64(a1, v17, v31, v33, a3);
  if ([(NSDictionary *)v42 objectForKeyedSubscript:@"samples"])
  {
    return v42;
  }

  return v16;
}

id sub_10000B9C4(uint64_t a1, double a2)
{
  v20 = NSURLFileSizeKey;
  v3 = [+[NSFileManager defaultManager](NSFileManager enumeratorAtURL:"enumeratorAtURL:includingPropertiesForKeys:options:errorHandler:" includingPropertiesForKeys:a1 options:[NSArray errorHandler:"arrayWithObjects:count:" arrayWithObjects:1 count:?], 4, 0];
  v4 = objc_autoreleasePoolPush();
  v5 = [(NSDirectoryEnumerator *)v3 nextObject];
  if (!v5)
  {
    objc_autoreleasePoolPop(v4);
LABEL_24:
    if (qword_1000719D0 == -1)
    {
      v14 = qword_1000719D8;
      if (!os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_INFO))
      {
LABEL_27:
        v7 = 0;
        return v7;
      }
    }

    else
    {
      dispatch_once(&qword_1000719D0, &stru_100060E18);
      v14 = qword_1000719D8;
      if (!os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_INFO))
      {
        goto LABEL_27;
      }
    }

    LOWORD(v16) = 0;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "No closest segment found", &v16, 2u);
    goto LABEL_27;
  }

  v6 = v5;
  v7 = 0;
  do
  {
    if (sub_10000536C(+[NSFileManager defaultManager], v6))
    {
      [objc_msgSend(v6 "lastPathComponent")];
      v9 = v8;
      if (v7)
      {
        [objc_msgSend(v7 "lastPathComponent")];
        if (v9 > a2 && v9 < v10)
        {
          goto LABEL_3;
        }
      }

      else if (v8 > a2 && v8 < INFINITY)
      {
LABEL_3:

        v7 = v6;
      }
    }

    objc_autoreleasePoolPop(v4);
    v4 = objc_autoreleasePoolPush();
    v6 = [(NSDirectoryEnumerator *)v3 nextObject];
  }

  while (v6);
  objc_autoreleasePoolPop(v4);
  if (!v7)
  {
    goto LABEL_24;
  }

  if (qword_1000719D0 == -1)
  {
    v13 = qword_1000719D8;
    if (os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_22;
    }
  }

  else
  {
    dispatch_once(&qword_1000719D0, &stru_100060E18);
    v13 = qword_1000719D8;
    if (os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_DEBUG))
    {
LABEL_22:
      v16 = 138543618;
      v17 = v7;
      v18 = 2050;
      v19 = a2;
      _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "Returning segment %{public}@ which was closest segment after requested segment %{public}f", &v16, 0x16u);
    }
  }

  return v7;
}

id sub_10000BC68(id result, void **self)
{
  if (!result)
  {
    return result;
  }

  v3 = result;
  if (!self || !objc_getProperty(self, self, 24, 1) || !objc_getProperty(self, v4, 32, 1))
  {
    if (qword_1000719D0 == -1)
    {
      v7 = qword_1000719D8;
      if (!os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_ERROR))
      {
LABEL_11:

        return 0;
      }
    }

    else
    {
      dispatch_once(&qword_1000719D0, &stru_100060E18);
      v7 = qword_1000719D8;
      if (!os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_11;
      }
    }

    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Trying to create a datastore object with an incomplete datastore context", buf, 2u);
    goto LABEL_11;
  }

  v8.receiver = v3;
  v8.super_class = RDPruneableDatastore;
  result = objc_msgSendSuper2(&v8, "init");
  if (result)
  {
    v5 = result;
    *(result + 1) = self;
    v5[2] = 2;
    v6 = sub_10002A184(self[2], self[3]);
    result = v5;
    if (v6)
    {
      v5[2] |= 4uLL;
    }

    *(v5 + 6) = 2;
  }

  return result;
}

uint64_t sub_10000BE00(uint64_t a1, const char *a2, uint64_t a3, int a4, double a5, double a6)
{
  if (!a1)
  {
    return 0;
  }

  v12 = *(a1 + 8);
  if (v12)
  {
    Property = objc_getProperty(v12, a2, 8, 1);
    v12 = *(a1 + 8);
    if (v12)
    {
      v12 = objc_getProperty(v12, v13, 32, 1);
    }
  }

  else
  {
    Property = 0;
  }

  v89 = v12;
  v16 = [NSArray arrayWithObjects:&v89 count:1];
  v17 = *(a1 + 8);
  if (v17)
  {
    v18 = objc_getProperty(v17, v15, 24, 1);
  }

  else
  {
    v18 = 0;
  }

  v19 = sub_10001A5D4(Property, v16, v18, 2);
  v83 = a5;
  v82 = 0.0;
  v21 = sub_100005AB4(+[NSFileManager defaultManager], v19, a4, &v83, &v82, a5, a6);
  if ((a4 & 1) == 0)
  {
    v22 = *(a1 + 8);
    if (v22)
    {
      v22 = objc_getProperty(v22, v20, 24, 1);
    }

    v23 = [v22 hasSuffix:@".tombstones"];
    if (a2 != 2 && !v23 && v21 >= 1)
    {
      if (v82 > a6)
      {
        a3 = 4096;
      }

      sub_10000C804(a1, a2, a3, v83, a5);
    }
  }

  v81 = a5;
  v80 = 0.0;
  v24 = *(a1 + 8);
  if (v24)
  {
    v26 = objc_getProperty(v24, v20, 8, 1);
    v24 = *(a1 + 8);
    if (v24)
    {
      v24 = objc_getProperty(v24, v25, 32, 1);
    }
  }

  else
  {
    v26 = 0;
  }

  v88 = v24;
  v28 = [NSArray arrayWithObjects:&v88 count:1];
  v29 = *(a1 + 8);
  if (v29)
  {
    v30 = objc_getProperty(v29, v27, 24, 1);
  }

  else
  {
    v30 = 0;
  }

  v31 = sub_10001A924(v26, v28, v30);
  v32 = sub_100005AB4(+[NSFileManager defaultManager], v31, a4, &v81, &v80, a5, a6);
  v34 = v32;
  if ((a4 & 1) == 0 && v32)
  {
    if (v80 <= a6)
    {
      if (a2 == 2)
      {
        v35 = *(a1 + 8);
        v36 = v35 ? objc_getProperty(v35, v33, 32, 1) : 0;
        objc_opt_self();
        if (![v36 isEqualToString:qword_100071B88])
        {
          a3 = 4098;
        }
      }
    }

    else
    {
      a3 = 4096;
    }

    sub_10000C804(a1, a2, a3, v81, a5);
  }

  v37 = *(a1 + 8);
  if (v37)
  {
    v39 = objc_getProperty(v37, v33, 8, 1);
    v37 = *(a1 + 8);
    if (v37)
    {
      v37 = objc_getProperty(v37, v38, 32, 1);
    }
  }

  else
  {
    v39 = 0;
  }

  v87 = v37;
  v41 = [NSArray arrayWithObjects:&v87 count:1];
  v42 = *(a1 + 8);
  if (v42)
  {
    v43 = objc_getProperty(v42, v40, 24, 1);
  }

  else
  {
    v43 = 0;
  }

  v44 = sub_10001A844(v39, v41, v43);
  v45 = sub_100005AB4(+[NSFileManager defaultManager], v44, a4, &v81, &v80, a5, a6);
  v47 = v45;
  if ((a4 & 1) == 0 && v45)
  {
    if (v80 <= a6)
    {
      if (a2 == 2)
      {
        v48 = *(a1 + 8);
        v49 = v48 ? objc_getProperty(v48, v46, 32, 1) : 0;
        objc_opt_self();
        if (![v49 isEqualToString:qword_100071B88])
        {
          a3 = 4099;
        }
      }
    }

    else
    {
      a3 = 4096;
    }

    sub_10000C804(a1, a2, a3, v81, a5);
  }

  v50 = v34 + v21;
  v51 = *(a1 + 8);
  if (v51)
  {
    v53 = objc_getProperty(v51, v46, 8, 1);
    v51 = *(a1 + 8);
    if (v51)
    {
      v51 = objc_getProperty(v51, v52, 32, 1);
    }
  }

  else
  {
    v53 = 0;
  }

  v54 = v50 + v47;
  v86 = v51;
  v56 = [NSArray arrayWithObjects:&v86 count:1];
  v57 = *(a1 + 8);
  if (v57)
  {
    v58 = objc_getProperty(v57, v55, 24, 1);
  }

  else
  {
    v58 = 0;
  }

  v59 = sub_10001AA04(v53, v56, v58);
  v61 = v54 + sub_100005AB4(+[NSFileManager defaultManager], v59, a4, 0, 0, a5, a6);
  if (a2 == 2 || a3 == 4096)
  {
    v62 = *(a1 + 8);
    if (v62)
    {
      v64 = objc_getProperty(v62, v60, 8, 1);
      v62 = *(a1 + 8);
      if (v62)
      {
        v62 = objc_getProperty(v62, v63, 32, 1);
      }
    }

    else
    {
      v64 = 0;
    }

    v85 = v62;
    v66 = [NSArray arrayWithObjects:&v85 count:1];
    v67 = *(a1 + 8);
    if (v67)
    {
      v68 = objc_getProperty(v67, v65, 24, 1);
    }

    else
    {
      v68 = 0;
    }

    v69 = sub_10001A6A4(v64, v66, v68, 1);
    sub_100005AB4(+[NSFileManager defaultManager], v69, a4, 0, 0, a5, a6);
    v71 = *(a1 + 8);
    if (v71)
    {
      v73 = objc_getProperty(v71, v70, 8, 1);
      v71 = *(a1 + 8);
      if (v71)
      {
        v71 = objc_getProperty(v71, v72, 32, 1);
      }
    }

    else
    {
      v73 = 0;
    }

    v84 = v71;
    v75 = [NSArray arrayWithObjects:&v84 count:1];
    v76 = *(a1 + 8);
    if (v76)
    {
      v77 = objc_getProperty(v76, v74, 24, 1);
    }

    else
    {
      v77 = 0;
    }

    v78 = sub_10001A774(v73, v75, v77, 1);
    sub_100005AB4(+[NSFileManager defaultManager], v78, a4, 0, 0, a5, a6);
  }

  return v61;
}

void sub_10000C428(uint64_t a1)
{
  if (a1)
  {
    v19[0] = NSURLIsDirectoryKey;
    v19[1] = NSURLFileSizeKey;
    v19[2] = NSURLLinkCountKey;
    v2 = [+[NSFileManager defaultManager](NSFileManager enumeratorAtURL:"enumeratorAtURL:includingPropertiesForKeys:options:errorHandler:" includingPropertiesForKeys:sub_10000C710(a1) options:[NSArray errorHandler:"arrayWithObjects:count:" arrayWithObjects:v19 count:3], 0, 0];
    v3 = +[NSFileManager defaultManager];
    v4 = sub_10000C710(a1);
    v5 = sub_1000058AC(v3, v4);
    v6 = objc_autoreleasePoolPush();
    v7 = [(NSDirectoryEnumerator *)v2 nextObject];
    if (v7)
    {
      v9 = v7;
      *&v8 = 138543618;
      v12 = v8;
      do
      {
        v14 = 0;
        [v9 getResourceValue:&v14 forKey:NSURLIsDirectoryKey error:{0, v12}];
        if ([v14 BOOLValue] & 1) != 0 || sub_10000536C(+[NSFileManager defaultManager](NSFileManager, "defaultManager"), v9) || (objc_msgSend(v9, "isEqual:", v5))
        {
          goto LABEL_4;
        }

        if (qword_1000719D0 == -1)
        {
          v10 = qword_1000719D8;
          if (!os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_10;
          }
        }

        else
        {
          dispatch_once(&qword_1000719D0, &stru_100060E18);
          v10 = qword_1000719D8;
          if (!os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_10;
          }
        }

        *buf = 138543362;
        v16 = v9;
        _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "Deleting empty sample %{public}@", buf, 0xCu);
LABEL_10:
        v13 = 0;
        if (![+[NSFileManager removeItemAtURL:"removeItemAtURL:error:"]
        {
          if (qword_1000719D0 != -1)
          {
            dispatch_once(&qword_1000719D0, &stru_100060E18);
            v11 = qword_1000719D8;
            if (!os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_4;
            }

LABEL_13:
            *buf = v12;
            v16 = v9;
            v17 = 2114;
            v18 = v13;
            _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Failed to delete %{public}@ because %{public}@", buf, 0x16u);
            goto LABEL_4;
          }

          v11 = qword_1000719D8;
          if (os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_13;
          }
        }

LABEL_4:
        objc_autoreleasePoolPop(v6);
        v6 = objc_autoreleasePoolPush();
        v9 = [(NSDirectoryEnumerator *)v2 nextObject];
      }

      while (v9);
    }

    objc_autoreleasePoolPop(v6);
  }
}

NSURL *sub_10000C710(uint64_t a1)
{
  v2 = [RDReadableDatastore alloc];
  if (!v2 || (v4 = *(a1 + 8), v3 = *(a1 + 16), v5 = *(a1 + 24), v17.receiver = v2, v17.super_class = RDReadableDatastore, (v6 = objc_msgSendSuper2(&v17, "init")) == 0))
  {
    v7 = 0;
    v15 = 0;
    goto LABEL_8;
  }

  v7 = v6;
  v8 = v4;
  *(v7 + 1) = v8;
  *(v7 + 2) = v3;
  *(v7 + 6) = v5;
  if (!v8)
  {
    Property = 0;
    v12 = sub_10003A234(0);
    v13 = *(v7 + 1);
    if (v13)
    {
      goto LABEL_5;
    }

LABEL_10:
    v14 = 0;
    goto LABEL_6;
  }

  Property = objc_getProperty(v8, v9, 8, 1);
  v12 = sub_10003A234(*(v7 + 1));
  v13 = *(v7 + 1);
  if (!v13)
  {
    goto LABEL_10;
  }

LABEL_5:
  v14 = objc_getProperty(v13, v11, 24, 1);
LABEL_6:
  v15 = sub_10001A5D4(Property, v12, v14, *(v7 + 2));
LABEL_8:

  return v15;
}

void sub_10000C804(uint64_t a1, const char *a2, uint64_t a3, double a4, double a5)
{
  v10 = *(a1 + 8);
  if (v10)
  {
    Property = objc_getProperty(v10, a2, 32, 1);
  }

  else
  {
    Property = 0;
  }

  objc_opt_self();
  if ([Property isEqualToString:qword_100071B88])
  {
    v12 = 0;
  }

  else
  {
    objc_opt_self();
    v12 = qword_100071B88;
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
    v18 = -v18;
  }

  v19 = fmin(a5, v16 + v15 + v18);
  if (a3)
  {
    if (a3 == 4096)
    {
      v20 = v19;
      v21 = *(a1 + 8);
      if (v21)
      {
        v23 = objc_getProperty(v21, v17, 16, 1);
        v24 = *(a1 + 8);
        if (v24)
        {
          v25 = objc_getProperty(v24, v22, 24, 1);
        }

        else
        {
          v25 = 0;
        }
      }

      else
      {
        v23 = 0;
        v25 = 0;
      }

      v26 = sub_100029C30(v23, v25);
      v19 = v20;
      a4 = fmax(v20 - v26, 0.0);
    }

    v28 = [SRDeletionRecord tombstoneWithStartTime:a3 endTime:v12 extendedReason:a4 originatingDeviceIdentifier:v19];
    v29 = *(a1 + 8);
    if (v29)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v28 = [SRDeletionRecord tombstoneWithStartTime:a2 endTime:v12 reason:a4 originatingDeviceIdentifier:v19];
    v29 = *(a1 + 8);
    if (v29)
    {
LABEL_17:
      v29 = objc_getProperty(v29, v27, 24, 1);
    }
  }

  v31 = [v29 sr_sensorForDeletionRecordsFromSensor];
  v32 = *(a1 + 8);
  if (v32)
  {
    v34 = objc_getProperty(v32, v30, 32, 1);
    v35 = *(a1 + 8);
    if (v35)
    {
      v37 = objc_getProperty(v35, v33, 8, 1);
      v38 = *(a1 + 8);
      if (v38)
      {
        v39 = objc_getProperty(v38, v36, 16, 1);
        goto LABEL_22;
      }
    }

    else
    {
      v37 = 0;
    }

    v39 = 0;
  }

  else
  {
    v37 = 0;
    v34 = 0;
    v39 = 0;
  }

LABEL_22:
  v40 = sub_10003A334(v31, v34, v37, v39);
  v48 = 0;
  v41 = sub_1000013C0([RDWriter alloc], v40);
  if (v41)
  {
    v42 = mach_continuous_time();
    if (qword_100071B60 != -1)
    {
      dispatch_once(&qword_100071B60, &stru_100060D90);
    }

    v43 = qword_100071B68;
    v44 = *&qword_100071B70;
    v45 = *&qword_100071B78;
    TMConvertTicksToSeconds();
    if (v43 >= v42)
    {
      v46 = -v46;
    }

    sub_10000147C(v41, v28, &v48, v45 + v44 + v46);
  }

  if (v48)
  {
    if (qword_1000719D0 == -1)
    {
      v47 = qword_1000719D8;
      if (!os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_ERROR))
      {
        return;
      }

LABEL_35:
      *buf = 138543362;
      v50 = v48;
      _os_log_error_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, "Failed to write deletion records because %{public}@", buf, 0xCu);
      return;
    }

    dispatch_once(&qword_1000719D0, &stru_100060E18);
    v47 = qword_1000719D8;
    if (os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_35;
    }
  }
}

uint64_t sub_10000CBE0(uint64_t result, const char *a2, uint64_t a3)
{
  if (result)
  {
    v5 = result;
    v6 = *(result + 8);
    if (v6)
    {
      Property = objc_getProperty(v6, a2, 8, 1);
      v6 = *(v5 + 8);
      if (v6)
      {
        v6 = objc_getProperty(v6, v7, 32, 1);
      }
    }

    else
    {
      Property = 0;
    }

    v29 = v6;
    v10 = [NSArray arrayWithObjects:&v29 count:1];
    v11 = *(v5 + 8);
    if (v11)
    {
      v12 = objc_getProperty(v11, v9, 24, 1);
      v14 = sub_10001A924(Property, v10, v12);
      v15 = *(v5 + 8);
      if (v15)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v14 = sub_10001A924(Property, v10, 0);
      v15 = *(v5 + 8);
      if (v15)
      {
LABEL_7:
        v17 = objc_getProperty(v15, v13, 8, 1);
        v15 = *(v5 + 8);
        if (v15)
        {
          v15 = objc_getProperty(v15, v16, 32, 1);
        }

LABEL_9:
        v28 = v15;
        v19 = [NSArray arrayWithObjects:&v28 count:1];
        v20 = *(v5 + 8);
        if (v20)
        {
          v21 = objc_getProperty(v20, v18, 24, 1);
        }

        else
        {
          v21 = 0;
        }

        v22 = sub_10001AA04(v17, v19, v21);
        v23 = [NSURL fileURLWithPath:a2 isDirectory:0 relativeToURL:v14];
        if ([+[NSFileManager fileExistsAtPath:"fileExistsAtPath:"]
        {
LABEL_16:
          result = [+[NSFileManager defaultManager](NSFileManager removeItemAtURL:"removeItemAtURL:error:" error:v23, a3];
          if (!result)
          {
            return result;
          }

          if (qword_1000719D0 == -1)
          {
            v25 = qword_1000719D8;
            if (!os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_DEBUG))
            {
              return 1;
            }
          }

          else
          {
            dispatch_once(&qword_1000719D0, &stru_100060E18);
            v25 = qword_1000719D8;
            if (!os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_DEBUG))
            {
              return 1;
            }
          }

          v26 = 138543362;
          v27 = v23;
          _os_log_debug_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "Removed snapshot URL %{public}@", &v26, 0xCu);
          return 1;
        }

        if (qword_1000719D0 == -1)
        {
          v24 = qword_1000719D8;
          if (!os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_INFO))
          {
LABEL_15:
            v23 = [NSURL fileURLWithPath:a2 isDirectory:0 relativeToURL:v22];
            goto LABEL_16;
          }
        }

        else
        {
          dispatch_once(&qword_1000719D0, &stru_100060E18);
          v24 = qword_1000719D8;
          if (!os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_INFO))
          {
            goto LABEL_15;
          }
        }

        v26 = 138543362;
        v27 = v23;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "%{public}@ doesn't existing, looking for an already delivered snapshot", &v26, 0xCu);
        goto LABEL_15;
      }
    }

    v17 = 0;
    goto LABEL_9;
  }

  return result;
}

NSDictionary *sub_10000CEF0(uint64_t a1, char *a2, double a3)
{
  if (!a1)
  {
    return 0;
  }

  v6 = [RDReadableDatastore alloc];
  if (v6)
  {
    v8 = *(a1 + 8);
    v7 = *(a1 + 16);
    v9 = *(a1 + 24);
    v13.receiver = v6;
    v13.super_class = RDReadableDatastore;
    v10 = objc_msgSendSuper2(&v13, "init");
    if (v10)
    {
      v10[1] = v8;
      v10[2] = v7;
      *(v10 + 6) = v9;
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = sub_10000B0D0(v10, a2, a3);

  return v11;
}

NSDictionary *sub_10000CFB0(uint64_t a1, void *a2, void *a3)
{
  if (!a1)
  {
    return 0;
  }

  v6 = [RDReadableDatastore alloc];
  if (v6)
  {
    v8 = *(a1 + 8);
    v7 = *(a1 + 16);
    v9 = *(a1 + 24);
    v13.receiver = v6;
    v13.super_class = RDReadableDatastore;
    v10 = objc_msgSendSuper2(&v13, "init");
    if (v10)
    {
      v10[1] = v8;
      v10[2] = v7;
      *(v10 + 6) = v9;
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = sub_10000B6C0(v10, a2, a3);

  return v11;
}

id sub_10000D068(id result, id self)
{
  if (result)
  {
    v3 = result;
    if (self && objc_getProperty(self, self, 24, 1))
    {
      v7.receiver = v3;
      v7.super_class = RDInformingDatastore;
      result = objc_msgSendSuper2(&v7, "init");
      if (result)
      {
        v4 = result;
        v5 = self;
        result = v4;
        *(v4 + 8) = v5;
      }

      return result;
    }

    if (qword_1000719D0 == -1)
    {
      v6 = qword_1000719D8;
      if (!os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_ERROR))
      {
LABEL_8:

        return 0;
      }
    }

    else
    {
      dispatch_once(&qword_1000719D0, &stru_100060E18);
      v6 = qword_1000719D8;
      if (!os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_8;
      }
    }

    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Trying to create a datastore object without a sensor identifier", buf, 2u);
    goto LABEL_8;
  }

  return result;
}

uint64_t sub_10000D1C4(uint64_t result, const char *a2)
{
  if (result)
  {
    v2 = result;
    v3 = *(result + 8);
    if (v3)
    {
      Property = objc_getProperty(v3, a2, 8, 1);
      v3 = *(v2 + 8);
      if (v3)
      {
        v3 = objc_getProperty(v3, v4, 32, 1);
      }
    }

    else
    {
      Property = 0;
    }

    v11 = v3;
    v7 = [NSArray arrayWithObjects:&v11 count:1];
    v8 = *(v2 + 8);
    if (v8)
    {
      v9 = objc_getProperty(v8, v6, 24, 1);
    }

    else
    {
      v9 = 0;
    }

    v10 = sub_10001A5D4(Property, v7, v9, 0);
    return sub_10001AEBC(RDFileURLs, v10);
  }

  return result;
}

NSSet *sub_10000D2B8(NSSet *result)
{
  if (!result)
  {
    return result;
  }

  v1 = result;
  v3 = +[NSMutableSet set];
  isa = v1[1].super.isa;
  if (!isa)
  {
    Property = 0;
    goto LABEL_16;
  }

  Property = objc_getProperty(isa, v2, 8, 1);
  v7 = v1[1].super.isa;
  if (!v7)
  {
LABEL_16:
    v8 = 0;
    goto LABEL_5;
  }

  v8 = objc_getProperty(v7, v5, 24, 1);
LABEL_5:
  v16 = NSURLIsDirectoryKey;
  v9 = [+[NSFileManager defaultManager](NSFileManager enumeratorAtURL:"enumeratorAtURL:includingPropertiesForKeys:options:errorHandler:" includingPropertiesForKeys:sub_10001A3C4(Property options:v8) errorHandler:[NSArray arrayWithObjects:&v16 count:1], 0, 0];
  v10 = objc_autoreleasePoolPush();
  v11 = [(NSDirectoryEnumerator *)v9 nextObject];
  if (v11)
  {
    v12 = v11;
    do
    {
      v15 = 0;
      [v12 getResourceValue:&v15 forKey:NSURLIsDirectoryKey error:0];
      if ([v15 BOOLValue])
      {
        v13 = [v12 pathComponents];
        v14 = sub_10001AE14(RDFileURLs, v13);
        if (v14 != 0x7FFFFFFFFFFFFFFFLL || (v14 = sub_10001AE5C(RDFileURLs, v13), v14 != 0x7FFFFFFFFFFFFFFFLL))
        {
          [v3 addObject:{objc_msgSend(v13, "objectAtIndexedSubscript:", v14)}];
        }
      }

      objc_autoreleasePoolPop(v10);
      v10 = objc_autoreleasePoolPush();
      v12 = [(NSDirectoryEnumerator *)v9 nextObject];
    }

    while (v12);
  }

  objc_autoreleasePoolPop(v10);
  return [NSSet setWithSet:v3];
}

void *sub_10000D4A0(void *result, const char *a2)
{
  if (result)
  {
    v2 = result;
    v3 = result[1];
    if (v3)
    {
      Property = objc_getProperty(v3, a2, 8, 1);
      v3 = v2[1];
      if (v3)
      {
        v3 = objc_getProperty(v3, v4, 32, 1);
      }
    }

    else
    {
      Property = 0;
    }

    v15 = v3;
    v7 = [NSArray arrayWithObjects:&v15 count:1];
    v8 = v2[1];
    if (v8)
    {
      v9 = objc_getProperty(v8, v6, 24, 1);
      v11 = sub_10001A924(Property, v7, v9);
      v12 = v2[1];
      if (!v12)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v11 = sub_10001A924(Property, v7, 0);
      v12 = v2[1];
      if (!v12)
      {
        goto LABEL_11;
      }
    }

    if (objc_getProperty(v12, v10, 32, 1))
    {
      return sub_10000573C(+[NSFileManager defaultManager], v11);
    }

LABEL_11:
    if (qword_1000719D0 == -1)
    {
      v13 = qword_1000719D8;
      if (!os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_FAULT))
      {
        return 0;
      }
    }

    else
    {
      dispatch_once(&qword_1000719D0, &stru_100060E18);
      v13 = qword_1000719D8;
      if (!os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_FAULT))
      {
        return 0;
      }
    }

    *v14 = 0;
    _os_log_fault_impl(&_mh_execute_header, v13, OS_LOG_TYPE_FAULT, "No device id provided for oldestSnapshotURLInDirectory", v14, 2u);
    return 0;
  }

  return result;
}

void *sub_10000D678(void *result, const char *a2)
{
  if (result)
  {
    v2 = result;
    v3 = result[1];
    if (v3)
    {
      Property = objc_getProperty(v3, a2, 8, 1);
      v3 = v2[1];
      if (v3)
      {
        v3 = objc_getProperty(v3, v4, 32, 1);
      }
    }

    else
    {
      Property = 0;
    }

    v11 = v3;
    v7 = [NSArray arrayWithObjects:&v11 count:1];
    v8 = v2[1];
    if (v8)
    {
      v9 = objc_getProperty(v8, v6, 24, 1);
    }

    else
    {
      v9 = 0;
    }

    v10 = sub_10001A924(Property, v7, v9);
    return sub_100005520(+[NSFileManager defaultManager], v10);
  }

  return result;
}

void *sub_10000D76C(void *result, const char *a2)
{
  if (result)
  {
    v2 = result;
    v3 = result[1];
    if (v3)
    {
      Property = objc_getProperty(v3, a2, 8, 1);
      v3 = v2[1];
      if (v3)
      {
        v3 = objc_getProperty(v3, v4, 32, 1);
      }
    }

    else
    {
      Property = 0;
    }

    v11 = v3;
    v7 = [NSArray arrayWithObjects:&v11 count:1];
    v8 = v2[1];
    if (v8)
    {
      v9 = objc_getProperty(v8, v6, 24, 1);
    }

    else
    {
      v9 = 0;
    }

    v10 = sub_10001A844(Property, v7, v9);
    return sub_100005520(+[NSFileManager defaultManager], v10);
  }

  return result;
}

NSDirectoryEnumerator *sub_10000D860(NSDirectoryEnumerator *result, const char *a2)
{
  if (result)
  {
    v2 = result;
    isa = result[1].super.super.isa;
    if (isa)
    {
      Property = objc_getProperty(isa, a2, 8, 1);
      isa = v2[1].super.super.isa;
      if (isa)
      {
        isa = objc_getProperty(isa, v4, 32, 1);
      }
    }

    else
    {
      Property = 0;
    }

    v10 = isa;
    v7 = [NSArray arrayWithObjects:&v10 count:1];
    v8 = v2[1].super.super.isa;
    if (v8)
    {
      v9 = objc_getProperty(v8, v6, 24, 1);
    }

    else
    {
      v9 = 0;
    }

    return [+[NSFileManager defaultManager](NSFileManager enumeratorAtURL:"enumeratorAtURL:includingPropertiesForKeys:options:errorHandler:" includingPropertiesForKeys:sub_10001A924(Property options:v7 errorHandler:v9), 0, 1, 0];
  }

  return result;
}

NSDirectoryEnumerator *sub_10000D960(NSDirectoryEnumerator *result, const char *a2)
{
  if (result)
  {
    v2 = result;
    isa = result[1].super.super.isa;
    if (isa)
    {
      Property = objc_getProperty(isa, a2, 8, 1);
      isa = v2[1].super.super.isa;
      if (isa)
      {
        isa = objc_getProperty(isa, v4, 32, 1);
      }
    }

    else
    {
      Property = 0;
    }

    v10 = isa;
    v7 = [NSArray arrayWithObjects:&v10 count:1];
    v8 = v2[1].super.super.isa;
    if (v8)
    {
      v9 = objc_getProperty(v8, v6, 24, 1);
    }

    else
    {
      v9 = 0;
    }

    return [+[NSFileManager defaultManager](NSFileManager enumeratorAtURL:"enumeratorAtURL:includingPropertiesForKeys:options:errorHandler:" includingPropertiesForKeys:sub_10001A844(Property options:v7 errorHandler:v9), 0, 1, 0];
  }

  return result;
}

NSDirectoryEnumerator *sub_10000DA60(NSDirectoryEnumerator *result, const char *a2)
{
  if (result)
  {
    v2 = result;
    isa = result[1].super.super.isa;
    if (isa)
    {
      Property = objc_getProperty(isa, a2, 8, 1);
      isa = v2[1].super.super.isa;
      if (isa)
      {
        isa = objc_getProperty(isa, v4, 32, 1);
      }
    }

    else
    {
      Property = 0;
    }

    v10 = isa;
    v7 = [NSArray arrayWithObjects:&v10 count:1];
    v8 = v2[1].super.super.isa;
    if (v8)
    {
      v9 = objc_getProperty(v8, v6, 24, 1);
    }

    else
    {
      v9 = 0;
    }

    return [+[NSFileManager defaultManager](NSFileManager enumeratorAtURL:"enumeratorAtURL:includingPropertiesForKeys:options:errorHandler:" includingPropertiesForKeys:sub_10001AA04(Property options:v7 errorHandler:v9), 0, 1, 0];
  }

  return result;
}

id sub_10000DB60(id result, void *a2)
{
  if (result)
  {
    v5.receiver = result;
    v5.super_class = RDTopLevelInformingDatastore;
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

void *sub_10000DC14(void *result, char a2)
{
  if (result)
  {
    v3 = result;
    v5 = +[NSFileManager defaultManager];
    Property = v3[1];
    if (Property)
    {
      Property = objc_getProperty(Property, v4, 8, 1);
    }

    v14 = NSURLIsDirectoryKey;
    v7 = [(NSFileManager *)v5 enumeratorAtURL:sub_10001A2B8(Property) includingPropertiesForKeys:[NSArray arrayWithObjects:1 count:?], 1, 0];
    v8 = [RDSensorStreamEnumerator alloc];
    if (v8 && (v13.receiver = v8, v13.super_class = RDSensorStreamEnumerator, (v9 = objc_msgSendSuper2(&v13, "init")) != 0))
    {
      v10 = v9;
      v11 = v7;
      v12 = v10;
      *(v10 + 1) = v11;
      *(v10 + 16) = a2;
    }

    else
    {
      v12 = 0;
    }

    return v12;
  }

  return result;
}

void sub_10000DD48(uint64_t a1, void *a2)
{
  if (a1)
  {
    v4 = NSURLIsDirectoryKey;
    v39[0] = NSURLFileSizeKey;
    v39[1] = NSURLIsDirectoryKey;
    v39[2] = NSURLContentAccessDateKey;
    v39[3] = NSURLContentModificationDateKey;
    v39[4] = NSURLCreationDateKey;
    v5 = [NSArray arrayWithObjects:v39 count:5];
    v7 = +[NSFileManager defaultManager];
    Property = *(a1 + 8);
    if (Property)
    {
      Property = objc_getProperty(Property, v6, 8, 1);
    }

    v9 = [(NSFileManager *)v7 enumeratorAtURL:sub_10001A2B8(Property) includingPropertiesForKeys:v5 options:0 errorHandler:0];
    v10 = objc_autoreleasePoolPush();
    v11 = [(NSDirectoryEnumerator *)v9 nextObject];
    if (v11)
    {
      v12 = v11;
      v13 = 0;
      v33 = v9;
      while (1)
      {
        v34 = 0;
        v27 = [v12 resourceValuesForKeys:v5 error:&v34];
        if (!v34)
        {
          v29 = v27;
          if ((v13 & 1) == 0)
          {
            v30 = [@"File Size\tCreation Date\tModification Date\tAccess Date\n" dataUsingEncoding:4];
            [a2 write:objc_msgSend(v30 maxLength:{"bytes"), objc_msgSend(v30, "length")}];
          }

          if ([objc_msgSend(v29 objectForKeyedSubscript:{v4), "BOOLValue"}])
          {
            v31 = -[NSString dataUsingEncoding:](+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@:\n", [v12 path]), "dataUsingEncoding:", 4);
            [a2 write:-[NSData bytes](v31 maxLength:{"bytes"), -[NSData length](v31, "length")}];
          }

          else
          {
            v14 = [v29 objectForKeyedSubscript:NSURLFileSizeKey];
            v15 = [v29 objectForKeyedSubscript:NSURLContentAccessDateKey];
            v16 = v5;
            v17 = a2;
            v18 = [v29 objectForKeyedSubscript:NSURLContentModificationDateKey];
            v19 = [v29 objectForKeyedSubscript:NSURLCreationDateKey];
            v20 = objc_alloc_init(NSISO8601DateFormatter);
            [v20 setTimeZone:{+[NSTimeZone localTimeZone](NSTimeZone, "localTimeZone")}];
            v21 = [v14 unsignedLongLongValue];
            v22 = [v20 stringFromDate:v19];
            v32 = [v20 stringFromDate:v18];
            a2 = v17;
            v5 = v16;
            v9 = v33;
            v23 = -[NSString dataUsingEncoding:](+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%llu\t%@\t%@\t%@\t%@\n", v21, v22, v32, [v20 stringFromDate:v15], objc_msgSend(v12, "lastPathComponent")), "dataUsingEncoding:", 4);
            v24 = [(NSData *)v23 bytes];
            v25 = [(NSData *)v23 length];
            v26 = v24;
            v4 = NSURLIsDirectoryKey;
            [a2 write:v26 maxLength:v25];
          }

          v13 = 1;
          goto LABEL_8;
        }

        if (qword_1000719D0 != -1)
        {
          break;
        }

        v28 = qword_1000719D8;
        if (os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_12;
        }

LABEL_8:
        objc_autoreleasePoolPop(v10);
        v10 = objc_autoreleasePoolPush();
        v12 = [(NSDirectoryEnumerator *)v9 nextObject];
        if (!v12)
        {
          goto LABEL_19;
        }
      }

      dispatch_once(&qword_1000719D0, &stru_100060E18);
      v28 = qword_1000719D8;
      if (!os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_8;
      }

LABEL_12:
      *buf = 138543618;
      v36 = v12;
      v37 = 2114;
      v38 = v34;
      _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Failed to get resource keys from %{public}@ because %{public}@", buf, 0x16u);
      goto LABEL_8;
    }

LABEL_19:
    objc_autoreleasePoolPop(v10);
  }
}

id sub_10000E144(id result, void *a2)
{
  if (result)
  {
    v5.receiver = result;
    v5.super_class = RDTopLevelPruneableDatastore;
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

void sub_10000E1F8(uint64_t a1)
{
  if (a1)
  {
    v3 = +[NSFileManager defaultManager];
    Property = *(a1 + 8);
    if (Property)
    {
      Property = objc_getProperty(Property, v2, 8, 1);
    }

    v28[0] = NSURLFileSizeKey;
    v28[1] = NSURLIsDirectoryKey;
    v5 = [(NSFileManager *)v3 enumeratorAtURL:sub_10001A2B8(Property) includingPropertiesForKeys:[NSArray arrayWithObjects:2 count:?], 0, 0];
    v6 = objc_autoreleasePoolPush();
    v7 = [(NSDirectoryEnumerator *)v5 nextObject];
    if (v7)
    {
      v9 = v7;
      *&v8 = 138543618;
      v19 = v8;
      while (1)
      {
        v22 = 0;
        if (![objc_msgSend(v9 path])
        {
          break;
        }

        v21 = 0;
        if (![+[NSFileManager removeItemAtURL:"removeItemAtURL:error:"]
        {
          if (qword_1000719D0 == -1)
          {
            v17 = qword_1000719D8;
            if (!os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_7;
            }
          }

          else
          {
            dispatch_once(&qword_1000719D0, &stru_100060E18);
            v17 = qword_1000719D8;
            if (!os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_7;
            }
          }

          *buf = v19;
          v25 = v9;
          v26 = 2114;
          v27 = v21;
          v13 = v17;
          v14 = "Failed to remove %{public}@ because %{public}@";
LABEL_6:
          _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, v14, buf, 0x16u);
          goto LABEL_7;
        }

        if (qword_1000719D0 != -1)
        {
          dispatch_once(&qword_1000719D0, &stru_100060E18);
          v15 = qword_1000719D8;
          if (!os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_7;
          }

LABEL_13:
          *buf = 138543362;
          v25 = v9;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Removed invalid identifier %{public}@", buf, 0xCu);
          goto LABEL_7;
        }

        v15 = qword_1000719D8;
        if (os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_13;
        }

LABEL_7:
        objc_autoreleasePoolPop(v6);
        v6 = objc_autoreleasePoolPush();
        v9 = [(NSDirectoryEnumerator *)v5 nextObject];
        if (!v9)
        {
          goto LABEL_34;
        }
      }

      [v9 getResourceValue:&v22 forKey:NSURLIsDirectoryKey error:0];
      if (![v22 BOOLValue])
      {
        goto LABEL_7;
      }

      v10 = [+[NSFileManager defaultManager](NSFileManager enumeratorAtURL:"enumeratorAtURL:includingPropertiesForKeys:options:errorHandler:" includingPropertiesForKeys:v9 options:0 errorHandler:0, 0];
      memset(v20, 0, sizeof(v20));
      if ([(NSDirectoryEnumerator *)v10 countByEnumeratingWithState:v20 objects:v23 count:16])
      {
        goto LABEL_7;
      }

      if (qword_1000719D0 == -1)
      {
        v11 = qword_1000719D8;
        if (!os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_DEBUG))
        {
LABEL_18:
          v21 = 0;
          if ([+[NSFileManager removeItemAtURL:"removeItemAtURL:error:"]
          {
            goto LABEL_7;
          }

          if (qword_1000719D0 == -1)
          {
            v12 = qword_1000719D8;
            if (!os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_7;
            }
          }

          else
          {
            dispatch_once(&qword_1000719D0, &stru_100060E18);
            v12 = qword_1000719D8;
            if (!os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_7;
            }
          }

          *buf = v19;
          v25 = v9;
          v26 = 2114;
          v27 = v21;
          v13 = v12;
          v14 = "Failed to remove directory %{public}@ because %{public}@";
          goto LABEL_6;
        }
      }

      else
      {
        dispatch_once(&qword_1000719D0, &stru_100060E18);
        v11 = qword_1000719D8;
        if (!os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_18;
        }
      }

      *buf = 138543362;
      v25 = v9;
      _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Removing empty directory %{public}@", buf, 0xCu);
      goto LABEL_18;
    }

LABEL_34:
    objc_autoreleasePoolPop(v6);
  }
}

void *sub_10000E610(void *a1, void **self)
{
  v2 = a1;
  if (!a1)
  {
    return v2;
  }

  if (self && objc_getProperty(self, self, 24, 1))
  {
    v6.receiver = v2;
    v6.super_class = RDArchiveableDatastore;
    v2 = objc_msgSendSuper2(&v6, "init");
    if (v2)
    {
      v2[1] = self;
      v2[2] = 0;
      if (sub_10002A184(self[2], self[3]))
      {
        v2[2] |= 4uLL;
      }
    }

    return v2;
  }

  if (qword_1000719D0 != -1)
  {
    dispatch_once(&qword_1000719D0, &stru_100060E18);
    v5 = qword_1000719D8;
    if (!os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

LABEL_12:
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Trying to create a datastore object without a sensor identifier", buf, 2u);
    goto LABEL_10;
  }

  v5 = qword_1000719D8;
  if (os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_12;
  }

LABEL_10:

  return 0;
}

uint64_t sub_10000E78C(uint64_t a1, const char *a2, const __CFString **a3)
{
  if (!a1)
  {
    return 0;
  }

  v6 = *(a1 + 8);
  if (v6)
  {
    v8 = [SRSensorDescription sensorDescriptionForSensor:objc_getProperty(v6, a2, 24, 1)];
    v9 = *(a1 + 8);
    if (v9)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v8 = [SRSensorDescription sensorDescriptionForSensor:0];
    v9 = *(a1 + 8);
    if (v9)
    {
LABEL_4:
      Property = objc_getProperty(v9, v7, 24, 1);
      if (![Property isEqualToString:{objc_msgSend(v8, "legacyName")}])
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }
  }

  Property = 0;
  if ([0 isEqualToString:{objc_msgSend(v8, "legacyName")}])
  {
LABEL_5:
    Property = [v8 name];
  }

LABEL_6:
  v12 = *(a1 + 8);
  if (v12)
  {
    v12 = objc_getProperty(v12, v11, 8, 1);
  }

  v13 = sub_10001A134(v12);
  v14 = sub_10001A3C4(v13, Property);
  v15 = &IDSCopyIDForDevice_ptr;
  if (![+[NSFileManager createDirectoryAtURL:"createDirectoryAtURL:withIntermediateDirectories:attributes:error:"]
  {
    if (qword_1000719D0 == -1)
    {
      v49 = qword_1000719D8;
      if (!os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_ERROR))
      {
        return 0;
      }
    }

    else
    {
      dispatch_once(&qword_1000719D0, &stru_100060E18);
      v49 = qword_1000719D8;
      if (!os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_ERROR))
      {
        return 0;
      }
    }

    if (a3)
    {
      v150 = *a3;
    }

    else
    {
      v150 = &stru_100062328;
    }

    *buf = 138543618;
    v174 = v14;
    v175 = 2114;
    v176 = v150;
    _os_log_error_impl(&_mh_execute_header, v49, OS_LOG_TYPE_ERROR, "Failed to create destination staging directory %{public}@, %{public}@", buf, 0x16u);
    return 0;
  }

  v17 = *(a1 + 8);
  if (v17)
  {
    v17 = objc_getProperty(v17, v16, 16, 1);
  }

  v18 = sub_100029B08(v17, Property);
  if ((sub_10000931C(RDUnarchiver, a2, v14, v18, a3) & 1) == 0)
  {
    if (qword_1000719D0 == -1)
    {
      v154 = qword_1000719D8;
      if (!os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_45;
      }
    }

    else
    {
      dispatch_once(&qword_1000719D0, &stru_100060E18);
      v154 = qword_1000719D8;
      if (!os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_45;
      }
    }

    if (a3)
    {
      v156 = *a3;
    }

    else
    {
      v156 = &stru_100062328;
    }

    *buf = 138543618;
    v174 = a2;
    v175 = 2114;
    v176 = v156;
    v88 = "Failed to unarchive %{public}@ because %{public}@";
    goto LABEL_185;
  }

  if (qword_1000719D0 == -1)
  {
    v151 = qword_1000719D8;
    if (!os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_INFO))
    {
      goto LABEL_16;
    }
  }

  else
  {
    dispatch_once(&qword_1000719D0, &stru_100060E18);
    v151 = qword_1000719D8;
    if (!os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_INFO))
    {
      goto LABEL_16;
    }
  }

  *buf = 138543362;
  v174 = a2;
  _os_log_impl(&_mh_execute_header, v151, OS_LOG_TYPE_INFO, "Unarchived %{public}@, now storing in proper device ID", buf, 0xCu);
LABEL_16:
  v19 = *(a1 + 8);
  if (v19)
  {
    v20 = objc_getProperty(v19, v153, 16, 1);
  }

  else
  {
    v20 = 0;
  }

  v159 = v13;
  v21 = sub_10003A334(Property, 0, v13, v20);
  v22 = sub_10000D068([RDInformingDatastore alloc], v21);
  v23 = [NSMutableSet setWithSet:sub_10000D2B8(v22)];

  v25 = *(a1 + 8);
  v161 = a3;
  v158 = a2;
  if (v25)
  {
    v27 = objc_getProperty(v25, v24, 32, 1);
    v28 = *(a1 + 8);
    if (v28)
    {
      v30 = objc_getProperty(v28, v26, 8, 1);
      v31 = *(a1 + 8);
      if (v31)
      {
        v32 = objc_getProperty(v31, v29, 16, 1);
        goto LABEL_22;
      }
    }

    else
    {
      v30 = 0;
    }

    v32 = 0;
  }

  else
  {
    v30 = 0;
    v27 = 0;
    v32 = 0;
  }

LABEL_22:
  v160 = Property;
  v33 = sub_10003A334(Property, v27, v30, v32);
  v34 = sub_10000D068([RDInformingDatastore alloc], v33);
  [(NSMutableSet *)v23 minusSet:sub_10000D2B8(v34)];

  v35 = objc_alloc_init(RDOverwritingFileManagerDelegate);
  v36 = objc_alloc_init(NSFileManager);
  [v36 setDelegate:v35];
  v171 = NSURLIsDirectoryKey;
  v162 = v14;
  v37 = [+[NSFileManager defaultManager](NSFileManager enumeratorAtURL:"enumeratorAtURL:includingPropertiesForKeys:options:errorHandler:" includingPropertiesForKeys:v14 options:[NSArray errorHandler:"arrayWithObjects:count:" arrayWithObjects:1 count:?], 0, 0];
  v38 = objc_autoreleasePoolPush();
  v39 = [(NSDirectoryEnumerator *)v37 nextObject];
  if (!v39)
  {
LABEL_48:
    objc_autoreleasePoolPop(v38);
    if (qword_1000719D0 != -1)
    {
      dispatch_once(&qword_1000719D0, &stru_100060E18);
    }

    v52 = v161;
    v14 = v162;
    v53 = qword_1000719D8;
    if (os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v174 = v158;
      _os_log_debug_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEBUG, "Unarchived %{public}@, now applying tombstones from companion", buf, 0xCu);
      v55 = *(a1 + 8);
      if (!v55)
      {
LABEL_53:
        if ([v55 hasSuffix:@".tombstones"])
        {
          if (qword_1000719D0 == -1)
          {
            goto LABEL_55;
          }

LABEL_156:
          dispatch_once(&qword_1000719D0, &stru_100060E18);
LABEL_55:
          v15 = &IDSCopyIDForDevice_ptr;
          v56 = qword_1000719D8;
          if (os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_debug_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEBUG, "All data update. Ready to move staged data into place", buf, 2u);
            v58 = *(a1 + 8);
            if (!v58)
            {
              goto LABEL_58;
            }
          }

          else
          {
            v58 = *(a1 + 8);
            if (!v58)
            {
LABEL_58:
              v59 = sub_10001A3C4(v58, v160);
              if ([v36 copyItemAtURL:v14 toURL:v59 error:v52])
              {
                v50 = 1;
                goto LABEL_46;
              }

              if (qword_1000719D0 != -1)
              {
                dispatch_once(&qword_1000719D0, &stru_100060E18);
                v76 = qword_1000719D8;
                if (!os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_45;
                }

                goto LABEL_71;
              }

              v76 = qword_1000719D8;
              if (os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_ERROR))
              {
LABEL_71:
                if (v52)
                {
                  v77 = *v52;
                }

                else
                {
                  v77 = &stru_100062328;
                }

                *buf = 138543874;
                v174 = v14;
                v175 = 2114;
                v176 = v59;
                v177 = 2114;
                v178 = v77;
                v88 = "Failed to move %{public}@ to %{public}@, %{public}@";
                v147 = v76;
                v148 = 32;
                goto LABEL_186;
              }

LABEL_45:
              v50 = 0;
              goto LABEL_46;
            }
          }

          v58 = objc_getProperty(v58, v57, 8, 1);
          goto LABEL_58;
        }

        objc_opt_self();
        v60 = qword_100071B88;
        if (!qword_100071B88)
        {
          if (qword_1000719D0 != -1)
          {
            dispatch_once(&qword_1000719D0, &stru_100060E18);
          }

          v15 = &IDSCopyIDForDevice_ptr;
          v89 = qword_1000719D8;
          if (os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&_mh_execute_header, v89, OS_LOG_TYPE_ERROR, "Failed to find current device id", buf, 2u);
            if (!v161)
            {
              goto LABEL_45;
            }
          }

          else if (!v161)
          {
            goto LABEL_45;
          }

          *v161 = [SRError errorWithCode:8198];
          goto LABEL_45;
        }

        v62 = +[NSMutableArray array];
        v63 = *(a1 + 8);
        if (v63)
        {
          v63 = objc_getProperty(v63, v61, 24, 1);
        }

        v65 = [v63 sr_sensorForDeletionRecordsFromSensor];
        v66 = *(a1 + 8);
        if (v66)
        {
          v68 = objc_getProperty(v66, v64, 8, 1);
          v69 = *(a1 + 8);
          if (v69)
          {
            v70 = objc_getProperty(v69, v67, 16, 1);
          }

          else
          {
            v70 = 0;
          }
        }

        else
        {
          v68 = 0;
          v70 = 0;
        }

        v71 = sub_10003A334(v65, v60, v68, v70);
        v72 = sub_10001C870([RDReader alloc], v71);
        v73 = +[NSMutableArray array];
        v74 = sub_10001C92C(v72, v161, 0.0, INFINITY);
        v75 = v74;
        v157 = v36;
        if (v161 && *v161)
        {

          [v62 addObjectsFromArray:&__NSArray0__struct];
        }

        else
        {
          v169 = 0u;
          v170 = 0u;
          v167 = 0u;
          v168 = 0u;
          v78 = [(NSArray *)v74 countByEnumeratingWithState:&v167 objects:buf count:16, v36];
          if (v78)
          {
            v79 = v78;
            v80 = *v168;
            do
            {
              for (i = 0; i != v79; i = i + 1)
              {
                if (*v168 != v80)
                {
                  objc_enumerationMutation(v75);
                }

                v82 = *(*(&v167 + 1) + 8 * i);
                v83 = [v82 reason];
                if (v83)
                {
                  v84 = v83 == 3;
                }

                else
                {
                  v84 = 1;
                }

                if (v84)
                {
                  [v73 addObject:v82];
                }

                else if (v83 == 4)
                {
                  [v82 extendedReason];
                }
              }

              v79 = [(NSArray *)v75 countByEnumeratingWithState:&v167 objects:buf count:16];
            }

            while (v79);
          }

          [v62 addObjectsFromArray:{+[NSArray arrayWithArray:](NSArray, "arrayWithArray:", v73)}];
          v14 = v162;
          v52 = v161;
          if (!v161)
          {
            goto LABEL_100;
          }
        }

        if (*v52)
        {
          if (qword_1000719D0 != -1)
          {
            dispatch_once(&qword_1000719D0, &stru_100060E18);
          }

          v15 = &IDSCopyIDForDevice_ptr;
          v154 = qword_1000719D8;
          if (!os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_45;
          }

          v86 = *(a1 + 8);
          if (v86)
          {
            v86 = objc_getProperty(v86, v85, 24, 1);
          }

          v87 = *v52;
          *buf = 138543618;
          v174 = v86;
          v175 = 2114;
          v176 = v87;
          v88 = "Failed to read deletion records for companion for %{public}@ because %{public}@";
LABEL_185:
          v147 = v154;
          v148 = 22;
          goto LABEL_186;
        }

LABEL_100:
        if (qword_1000719D0 != -1)
        {
          dispatch_once(&qword_1000719D0, &stru_100060E18);
        }

        v90 = qword_1000719D8;
        if (os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_debug_impl(&_mh_execute_header, v90, OS_LOG_TYPE_DEBUG, "Companion tombstones applied", buf, 2u);
          v92 = *(a1 + 8);
          if (v92)
          {
            goto LABEL_104;
          }
        }

        else
        {
          v92 = *(a1 + 8);
          if (v92)
          {
LABEL_104:
            v94 = objc_getProperty(v92, v91, 24, 1);
            v95 = *(a1 + 8);
            if (v95)
            {
              v97 = objc_getProperty(v95, v93, 32, 1);
              v98 = *(a1 + 8);
              if (v98)
              {
                v99 = objc_getProperty(v98, v96, 16, 1);
                goto LABEL_107;
              }
            }

            else
            {
              v97 = 0;
            }

            v99 = 0;
LABEL_107:
            v100 = sub_10003A334(v94, v97, v159, v99);
            v101 = sub_10002C5B8([RDPruner alloc], v100);
            v163 = 0u;
            v164 = 0u;
            v165 = 0u;
            v166 = 0u;
            v102 = [v62 countByEnumeratingWithState:&v163 objects:v172 count:16];
            if (v102)
            {
              v103 = v102;
              v104 = *v164;
              if (v52)
              {
                while (2)
                {
                  for (j = 0; j != v103; j = j + 1)
                  {
                    if (*v164 != v104)
                    {
                      objc_enumerationMutation(v62);
                    }

                    v106 = *(*(&v163 + 1) + 8 * j);
                    [v106 startTime];
                    v108 = v107;
                    [v106 endTime];
                    sub_10002C674(v101, v52, v108, v109);
                    if (*v52)
                    {
                      if (qword_1000719D0 != -1)
                      {
                        dispatch_once(&qword_1000719D0, &stru_100060E18);
                      }

                      v15 = &IDSCopyIDForDevice_ptr;
                      v134 = qword_1000719D8;
                      if (os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_ERROR))
                      {
                        v149 = *v52;
                        *buf = 138543362;
                        v174 = v149;
                        _os_log_error_impl(&_mh_execute_header, v134, OS_LOG_TYPE_ERROR, "Failed to apply tombstone for samples because %{public}@", buf, 0xCu);
                      }

                      goto LABEL_147;
                    }
                  }

                  v103 = [v62 countByEnumeratingWithState:&v163 objects:v172 count:16];
                  if (v103)
                  {
                    continue;
                  }

                  break;
                }
              }

              else
              {
                do
                {
                  for (k = 0; k != v103; k = k + 1)
                  {
                    if (*v164 != v104)
                    {
                      objc_enumerationMutation(v62);
                    }

                    v127 = *(*(&v163 + 1) + 8 * k);
                    [v127 startTime];
                    v129 = v128;
                    [v127 endTime];
                    sub_10002C674(v101, 0, v129, v130);
                  }

                  v103 = [v62 countByEnumeratingWithState:&v163 objects:v172 count:16];
                }

                while (v103);
              }
            }

            if (qword_1000719D0 == -1)
            {
              v110 = qword_1000719D8;
              if (!os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_DEBUG))
              {
                goto LABEL_117;
              }
            }

            else
            {
              dispatch_once(&qword_1000719D0, &stru_100060E18);
              v110 = qword_1000719D8;
              if (!os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_DEBUG))
              {
LABEL_117:
                v111 = mach_continuous_time();
                if (qword_100071B60 == -1)
                {
                  goto LABEL_118;
                }

LABEL_191:
                dispatch_once(&qword_100071B60, &stru_100060D90);
LABEL_118:
                v112 = qword_100071B68;
                v113 = *&qword_100071B70;
                v114 = *&qword_100071B78;
                TMConvertTicksToSeconds();
                if (v112 >= v111)
                {
                  v116 = -v116;
                }

                v117 = v114 + v113 + v116;
                v118 = *(a1 + 8);
                if (v118)
                {
                  v120 = objc_getProperty(v118, v115, 16, 1);
                  v121 = *(a1 + 8);
                  v14 = v162;
                  if (v121)
                  {
                    v122 = objc_getProperty(v121, v119, 24, 1);
                  }

                  else
                  {
                    v122 = 0;
                  }
                }

                else
                {
                  v120 = 0;
                  v122 = 0;
                  v14 = v162;
                }

                v123 = sub_100029C30(v120, v122);
                sub_10002C674(v101, v52, 0.0, v117 - v123);
                if (v52)
                {
                  if (*v52)
                  {
                    if (qword_1000719D0 != -1)
                    {
                      dispatch_once(&qword_1000719D0, &stru_100060E18);
                    }

                    v15 = &IDSCopyIDForDevice_ptr;
                    v124 = qword_1000719D8;
                    if (os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_ERROR))
                    {
                      v125 = *v52;
                      *buf = 138543362;
                      v174 = v125;
                      _os_log_error_impl(&_mh_execute_header, v124, OS_LOG_TYPE_ERROR, "Failed to remove old gizmo data because %{public}@", buf, 0xCu);
                    }

LABEL_147:

                    goto LABEL_45;
                  }

                  v140 = mach_continuous_time();
                  if (qword_100071B60 != -1)
                  {
                    dispatch_once(&qword_100071B60, &stru_100060D90);
                  }

                  v141 = qword_100071B68;
                  v142 = *&qword_100071B70;
                  v143 = *&qword_100071B78;
                  TMConvertTicksToSeconds();
                  if (v141 >= v140)
                  {
                    v144 = -v144;
                  }

                  sub_10002C674(v101, v52, v143 + v142 + XPC_ACTIVITY_INTERVAL_1_DAY + v144, INFINITY);

                  if (*v52)
                  {
                    v15 = &IDSCopyIDForDevice_ptr;
                    if (qword_1000719D0 == -1)
                    {
                      v145 = qword_1000719D8;
                      if (!os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_ERROR))
                      {
                        goto LABEL_45;
                      }
                    }

                    else
                    {
                      dispatch_once(&qword_1000719D0, &stru_100060E18);
                      v145 = qword_1000719D8;
                      if (!os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_ERROR))
                      {
                        goto LABEL_45;
                      }
                    }

                    v146 = *v52;
                    *buf = 138543362;
                    v174 = v146;
                    v88 = "Failed to remove future gizmo data because %{public}@";
                    v147 = v145;
                    v148 = 12;
LABEL_186:
                    _os_log_error_impl(&_mh_execute_header, v147, OS_LOG_TYPE_ERROR, v88, buf, v148);
                    goto LABEL_45;
                  }
                }

                else
                {
                  v135 = mach_continuous_time();
                  if (qword_100071B60 != -1)
                  {
                    dispatch_once(&qword_100071B60, &stru_100060D90);
                  }

                  v136 = qword_100071B68;
                  v137 = *&qword_100071B70;
                  v138 = *&qword_100071B78;
                  TMConvertTicksToSeconds();
                  if (v136 >= v135)
                  {
                    v139 = -v139;
                  }

                  sub_10002C674(v101, 0, v138 + v137 + XPC_ACTIVITY_INTERVAL_1_DAY + v139, INFINITY);
                }

                v36 = v157;
                if (qword_1000719D0 == -1)
                {
                  goto LABEL_55;
                }

                goto LABEL_156;
              }
            }

            *buf = 0;
            _os_log_debug_impl(&_mh_execute_header, v110, OS_LOG_TYPE_DEBUG, "Applied tombstones, now removing any old samples", buf, 2u);
            v111 = mach_continuous_time();
            if (qword_100071B60 == -1)
            {
              goto LABEL_118;
            }

            goto LABEL_191;
          }
        }

        v97 = 0;
        v94 = 0;
        v99 = 0;
        goto LABEL_107;
      }
    }

    else
    {
      v55 = *(a1 + 8);
      if (!v55)
      {
        goto LABEL_53;
      }
    }

    v55 = objc_getProperty(v55, v54, 24, 1);
    goto LABEL_53;
  }

  v40 = v39;
  while (1)
  {
    v172[0] = 0;
    [v40 getResourceValue:v172 forKey:NSURLIsDirectoryKey error:0];
    if (![v172[0] BOOLValue] || !-[NSMutableSet containsObject:](v23, "containsObject:", objc_msgSend(v40, "lastPathComponent")))
    {
      goto LABEL_25;
    }

    v41 = v36;
    v42 = v15;
    -[NSMutableSet removeObject:](v23, "removeObject:", [v40 lastPathComponent]);
    *&v167 = 0;
    v44 = *(a1 + 8);
    if (v44)
    {
      v45 = objc_getProperty(v44, v43, 32, 1);
    }

    else
    {
      v45 = 0;
    }

    v46 = +[NSURL fileURLWithPath:isDirectory:relativeToURL:](NSURL, "fileURLWithPath:isDirectory:relativeToURL:", v45, 1, [v40 URLByDeletingLastPathComponent]);
    if (qword_1000719D0 == -1)
    {
      v47 = qword_1000719D8;
      if (!os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_INFO))
      {
        goto LABEL_33;
      }

LABEL_32:
      v48 = [v40 lastPathComponent];
      *buf = 138478083;
      v174 = v48;
      v175 = 2112;
      v176 = v46;
      _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_INFO, "Storing device %{private}@ snapshot in %{publice}@", buf, 0x16u);
      goto LABEL_33;
    }

    dispatch_once(&qword_1000719D0, &stru_100060E18);
    v47 = qword_1000719D8;
    if (os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_INFO))
    {
      goto LABEL_32;
    }

LABEL_33:
    v15 = v42;
    if (([objc_msgSend(v42[243] "defaultManager")] & 1) == 0)
    {
      break;
    }

    v36 = v41;
    if (([v41 copyItemAtURL:v40 toURL:v46 error:&v167] & 1) == 0)
    {
      if (qword_1000719D0 != -1)
      {
        dispatch_once(&qword_1000719D0, &stru_100060E18);
      }

      v132 = qword_1000719D8;
      if (os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_DEFAULT))
      {
        v133 = [v40 lastPathComponent];
        *buf = 138543874;
        v174 = v133;
        v175 = 2114;
        v176 = v46;
        v177 = 2114;
        v178 = v167;
        _os_log_impl(&_mh_execute_header, v132, OS_LOG_TYPE_DEFAULT, "Failed to rename watch UUID %{public}@ to remote identifier %{public}@ because %{public}@", buf, 0x20u);
      }

      goto LABEL_142;
    }

    [v41 removeItemAtURL:v40 error:0];
LABEL_25:
    objc_autoreleasePoolPop(v38);
    v38 = objc_autoreleasePoolPush();
    v40 = [(NSDirectoryEnumerator *)v37 nextObject];
    if (!v40)
    {
      goto LABEL_48;
    }
  }

  if (qword_1000719D0 != -1)
  {
    dispatch_once(&qword_1000719D0, &stru_100060E18);
  }

  v131 = qword_1000719D8;
  if (os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543618;
    v174 = v46;
    v175 = 2114;
    v176 = v167;
    _os_log_error_impl(&_mh_execute_header, v131, OS_LOG_TYPE_ERROR, "Failed to create directory %{public}@ because %{public}@", buf, 0x16u);
  }

LABEL_142:
  objc_autoreleasePoolPop(v38);
  v50 = 0;
  v14 = v162;
LABEL_46:
  [objc_msgSend(v15[243] defaultManager];
  return v50;
}

NSURL *sub_10000FBB0(uint64_t a1, const char *a2)
{
  if (!a1)
  {
    return 0;
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    Property = objc_getProperty(v4, a2, 8, 1);
    v7 = *(a1 + 8);
    if (v7)
    {
      v8 = objc_getProperty(v7, v5, 24, 1);
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    Property = 0;
    v8 = 0;
  }

  v9 = sub_10001A54C(Property, v8, *(a1 + 16));
  if (![+[NSFileManager fileExistsAtPath:"fileExistsAtPath:"]
  {
    if (qword_1000719D0 == -1)
    {
      v72 = qword_1000719D8;
      if (!os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_INFO))
      {
        return 0;
      }
    }

    else
    {
      dispatch_once(&qword_1000719D0, &stru_100060E18);
      v72 = qword_1000719D8;
      if (!os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_INFO))
      {
        return 0;
      }
    }

    LODWORD(v94) = 138543362;
    *(&v94 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_INFO, "No file exists at %{public}@. Skipping archive", &v94, 0xCu);
    return 0;
  }

  v11 = *(a1 + 8);
  if (!v11 || !objc_getProperty(v11, v10, 32, 1))
  {
    if (qword_1000719D0 == -1)
    {
      v73 = qword_1000719D8;
      if (!os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_FAULT))
      {
        return 0;
      }
    }

    else
    {
      dispatch_once(&qword_1000719D0, &stru_100060E18);
      v73 = qword_1000719D8;
      if (!os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_FAULT))
      {
        return 0;
      }
    }

    LOWORD(v94) = 0;
    _os_log_fault_impl(&_mh_execute_header, v73, OS_LOG_TYPE_FAULT, "No device id provided for archiveReadableSamplesWithBaseName", &v94, 2u);
    return 0;
  }

  v13 = *(a1 + 8);
  if (v13)
  {
    v15 = objc_getProperty(v13, v12, 8, 1);
    v13 = *(a1 + 8);
    if (v13)
    {
      v13 = objc_getProperty(v13, v14, 32, 1);
    }
  }

  else
  {
    v15 = 0;
  }

  v99 = v13;
  v17 = [NSArray arrayWithObjects:&v99 count:1];
  v18 = *(a1 + 8);
  if (v18)
  {
    v19 = objc_getProperty(v18, v16, 24, 1);
  }

  else
  {
    v19 = 0;
  }

  v21 = [NSURL fileURLWithPath:a2 isDirectory:0 relativeToURL:sub_10001A844(v15, v17, v19)];
  v22 = *(a1 + 8);
  if (v22)
  {
    v24 = objc_getProperty(v22, v20, 16, 1);
    v25 = *(a1 + 8);
    if (v25)
    {
      v26 = objc_getProperty(v25, v23, 24, 1);
    }

    else
    {
      v26 = 0;
    }
  }

  else
  {
    v24 = 0;
    v26 = 0;
  }

  v27 = sub_1000299E0(v24, v26);
  v29 = +[NSMutableArray array];
  v30 = *(a1 + 8);
  if (v30)
  {
    v32 = objc_getProperty(v30, v28, 8, 1);
    v30 = *(a1 + 8);
    if (v30)
    {
      v30 = objc_getProperty(v30, v31, 32, 1);
    }
  }

  else
  {
    v32 = 0;
  }

  v98 = v30;
  v34 = [NSArray arrayWithObjects:&v98 count:1];
  v35 = *(a1 + 8);
  if (v35)
  {
    v36 = objc_getProperty(v35, v33, 24, 1);
  }

  else
  {
    v36 = 0;
  }

  v38 = sub_10001A774(v32, v34, v36, 1);
  v39 = *(a1 + 8);
  if (v39)
  {
    v41 = objc_getProperty(v39, v37, 8, 1);
    v39 = *(a1 + 8);
    if (v39)
    {
      v39 = objc_getProperty(v39, v40, 32, 1);
    }
  }

  else
  {
    v41 = 0;
  }

  v97 = v39;
  v43 = [NSArray arrayWithObjects:&v97 count:1];
  v44 = *(a1 + 8);
  if (v44)
  {
    v45 = objc_getProperty(v44, v42, 24, 1);
  }

  else
  {
    v45 = 0;
  }

  v47 = sub_10001A6A4(v41, v43, v45, 1);
  *&v94 = 0;
  *(&v94 + 1) = &v94;
  v95 = 0x2020000000;
  v96 = 0;
  v48 = *(a1 + 8);
  if (v48)
  {
    v50 = objc_getProperty(v48, v46, 16, 1);
    v51 = *(a1 + 8);
    if (v51)
    {
      v52 = objc_getProperty(v51, v49, 24, 1);
    }

    else
    {
      v52 = 0;
    }
  }

  else
  {
    v50 = 0;
    v52 = 0;
  }

  v54 = sub_10002A2AC(v50, v52);
  v55 = *(a1 + 8);
  if (v55)
  {
    v57 = objc_getProperty(v55, v53, 16, 1);
    v58 = *(a1 + 8);
    if (v58)
    {
      v59 = objc_getProperty(v58, v56, 24, 1);
    }

    else
    {
      v59 = 0;
    }
  }

  else
  {
    v57 = 0;
    v59 = 0;
  }

  v60 = sub_100029B08(v57, v59);
  v86[0] = _NSConcreteStackBlock;
  v86[1] = 3221225472;
  v86[2] = sub_100010778;
  v86[3] = &unk_100060DF8;
  v86[4] = v38;
  v86[5] = v47;
  v86[6] = v29;
  v86[7] = &v94;
  v86[8] = v54;
  v61 = sub_100014B10(RDArchiver, v9, v21, v27, 0, v60, &stru_100060DD0, v86);
  v62 = v61;
  if (!v61)
  {
    if (qword_1000719D0 == -1)
    {
      v75 = qword_1000719D8;
      if (!os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_ERROR))
      {
LABEL_75:
        v70 = 0;
        goto LABEL_76;
      }
    }

    else
    {
      dispatch_once(&qword_1000719D0, &stru_100060E18);
      v75 = qword_1000719D8;
      if (!os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_75;
      }
    }

    *buf = 138543362;
    v88 = v9;
    _os_log_error_impl(&_mh_execute_header, v75, OS_LOG_TYPE_ERROR, "Failed to archive %{public}@", buf, 0xCu);
    goto LABEL_75;
  }

  if (!*(*(&v94 + 1) + 24))
  {
    if (qword_1000719D0 == -1)
    {
      v76 = qword_1000719D8;
      if (os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_INFO))
      {
LABEL_71:
        v78 = *(a1 + 8);
        if (v78)
        {
          v78 = objc_getProperty(v78, v77, 24, 1);
        }

        *buf = 138543618;
        v88 = v78;
        v89 = 2114;
        v90 = v62;
        _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_INFO, "No segments to archive for %{public}@, removing empty archive %{public}@", buf, 0x16u);
      }
    }

    else
    {
      dispatch_once(&qword_1000719D0, &stru_100060E18);
      v76 = qword_1000719D8;
      if (os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_INFO))
      {
        goto LABEL_71;
      }
    }

    [+[NSFileManager defaultManager](NSFileManager removeItemAtURL:"removeItemAtURL:error:" error:v62, 0];
    goto LABEL_75;
  }

  v80 = v61;
  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  v63 = [v29 countByEnumeratingWithState:&v82 objects:v93 count:16];
  if (!v63)
  {
    goto LABEL_56;
  }

  v64 = *v83;
  do
  {
    for (i = 0; i != v63; i = i + 1)
    {
      if (*v83 != v64)
      {
        objc_enumerationMutation(v29);
      }

      v66 = *(*(&v82 + 1) + 8 * i);
      if (v66 != [v29 lastObject])
      {
        v81 = 0;
        if ([+[NSFileManager removeItemAtURL:"removeItemAtURL:error:"]
        {
          if (qword_1000719D0 == -1)
          {
            v67 = qword_1000719D8;
            if (os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_INFO))
            {
              goto LABEL_37;
            }
          }

          else
          {
            dispatch_once(&qword_1000719D0, &stru_100060E18);
            v67 = qword_1000719D8;
            if (os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_INFO))
            {
LABEL_37:
              *buf = 138543362;
              v88 = v66;
              _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_INFO, "Removed %{public}@ as it has already been archived", buf, 0xCu);
              continue;
            }
          }
        }

        else
        {
          if (qword_1000719D0 == -1)
          {
            v68 = qword_1000719D8;
            if (!os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_ERROR))
            {
              continue;
            }

LABEL_50:
            *buf = 138543618;
            v88 = v66;
            v89 = 2114;
            v90 = v81;
            _os_log_error_impl(&_mh_execute_header, v68, OS_LOG_TYPE_ERROR, "Failed to remove %{public}@ that has already been archived because %{public}@", buf, 0x16u);
            continue;
          }

          dispatch_once(&qword_1000719D0, &stru_100060E18);
          v68 = qword_1000719D8;
          if (os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_50;
          }
        }
      }
    }

    v63 = [v29 countByEnumeratingWithState:&v82 objects:v93 count:16];
  }

  while (v63);
LABEL_56:
  v69 = [v29 firstObject];
  v70 = v80;
  if (!v69)
  {
    goto LABEL_76;
  }

  v71 = +[NSURL fileURLWithPath:isDirectory:relativeToURL:](NSURL, "fileURLWithPath:isDirectory:relativeToURL:", +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@_%@", [v69 lastPathComponent], -[NSURL lastPathComponent](v80, "lastPathComponent")), 0, -[NSURL URLByDeletingLastPathComponent](v80, "URLByDeletingLastPathComponent"));
  v81 = 0;
  if ([+[NSFileManager moveItemAtURL:"moveItemAtURL:toURL:error:"]
  {
    v70 = v71;
    goto LABEL_76;
  }

  if (qword_1000719D0 == -1)
  {
    v79 = qword_1000719D8;
    if (os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_79;
    }
  }

  else
  {
    dispatch_once(&qword_1000719D0, &stru_100060E18);
    v79 = qword_1000719D8;
    if (os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_ERROR))
    {
LABEL_79:
      *buf = 138543874;
      v88 = v80;
      v89 = 2114;
      v90 = v71;
      v91 = 2114;
      v92 = v81;
      _os_log_error_impl(&_mh_execute_header, v79, OS_LOG_TYPE_ERROR, "Failed to rename archive URL %{public}@ to %{public}@ because %{public}@", buf, 0x20u);
    }
  }

LABEL_76:
  _Block_object_dispose(&v94, 8);
  return v70;
}

int64_t sub_100010700(id a1, NSString *a2, NSString *a3)
{
  [[(NSString *)a2 lastPathComponent] doubleValue];
  v4 = [NSNumber numberWithDouble:?];
  [[(NSString *)a3 lastPathComponent] doubleValue];
  v5 = [NSNumber numberWithDouble:?];

  return [(NSNumber *)v4 compare:v5];
}

BOOL sub_100010778(uint64_t a1, void *a2)
{
  [objc_msgSend(a2 "lastPathComponent")];
  if (v4 == 0.0 || ([objc_msgSend(objc_msgSend(a2 "URLByDeletingLastPathComponent")] & 1) != 0 || (objc_msgSend(objc_msgSend(objc_msgSend(a2, "URLByDeletingLastPathComponent"), "path"), "isEqual:", objc_msgSend(*(a1 + 40), "path")) & 1) != 0)
  {
    return 1;
  }

  if (qword_1000719D0 != -1)
  {
    dispatch_once(&qword_1000719D0, &stru_100060E18);
    v6 = qword_1000719D8;
    if (!os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_INFO))
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v6 = qword_1000719D8;
  if (os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_INFO))
  {
LABEL_7:
    v7 = 138543362;
    v8 = a2;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Adding %{public}@ to archive", &v7, 0xCu);
  }

LABEL_8:
  [*(a1 + 48) addObject:a2];
  *(*(*(a1 + 56) + 8) + 24) += sub_10000536C(+[NSFileManager defaultManager], a2);
  return *(*(*(a1 + 56) + 8) + 24) < *(a1 + 64);
}

void sub_10001092C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4 = 0;
    if (![+[NSFileManager removeItemAtURL:"removeItemAtURL:error:"]
    {
      if (qword_1000719D0 == -1)
      {
        v3 = qword_1000719D8;
        if (!os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_ERROR))
        {
          return;
        }

LABEL_7:
        *buf = 138543618;
        v6 = a2;
        v7 = 2112;
        v8 = v4;
        _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Failed to remove %{public}@ because %@", buf, 0x16u);
        return;
      }

      dispatch_once(&qword_1000719D0, &stru_100060E18);
      v3 = qword_1000719D8;
      if (os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_7;
      }
    }
  }
}

NSURL *sub_100010A54(NSURL *result, void *a2)
{
  if (result)
  {
    v3 = result;
    v5 = [a2 lastPathComponent];
    urlString = v3->_urlString;
    if (urlString)
    {
      Property = objc_getProperty(urlString, v4, 8, 1);
      urlString = v3->_urlString;
      if (urlString)
      {
        urlString = objc_getProperty(urlString, v7, 32, 1);
      }
    }

    else
    {
      Property = 0;
    }

    v14 = urlString;
    v10 = [NSArray arrayWithObjects:&v14 count:1];
    v11 = v3->_urlString;
    if (v11)
    {
      v12 = objc_getProperty(v11, v9, 24, 1);
    }

    else
    {
      v12 = 0;
    }

    v13 = sub_10001A924(Property, v10, v12);
    return sub_100010C64(v3->_urlString, a2, v5, v13, 0);
  }

  return result;
}

NSURL *sub_100010B60(NSURL *result, const char *a2, uint64_t a3)
{
  if (result)
  {
    v5 = result;
    urlString = result->_urlString;
    if (urlString)
    {
      Property = objc_getProperty(urlString, a2, 8, 1);
      urlString = v5->_urlString;
      if (urlString)
      {
        urlString = objc_getProperty(urlString, v7, 32, 1);
      }
    }

    else
    {
      Property = 0;
    }

    v14 = urlString;
    v10 = [NSArray arrayWithObjects:&v14 count:1];
    v11 = v5->_urlString;
    if (v11)
    {
      v12 = objc_getProperty(v11, v9, 24, 1);
    }

    else
    {
      v12 = 0;
    }

    v13 = sub_10001A924(Property, v10, v12);
    return sub_100010C64(v5->_urlString, a2, a3, v13, 0);
  }

  return result;
}

NSURL *sub_100010C64(void *a1, const char *a2, uint64_t a3, uint64_t a4, NSURL **a5)
{
  if (!a1 || !objc_getProperty(a1, a2, 32, 1))
  {
    if (qword_1000719D0 == -1)
    {
      v12 = qword_1000719D8;
      if (!os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_11;
      }
    }

    else
    {
      dispatch_once(&qword_1000719D0, &stru_100060E18);
      v12 = qword_1000719D8;
      if (!os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_FAULT))
      {
LABEL_11:
        if (!a5)
        {
          return 0;
        }

LABEL_12:
        v9 = 0;
        *a5 = [SRError errorWithCode:8194];
        return v9;
      }
    }

    *buf = 0;
    _os_log_fault_impl(&_mh_execute_header, v12, OS_LOG_TYPE_FAULT, "No device id provided for storeEncryptedArchive", buf, 2u);
    if (!a5)
    {
      return 0;
    }

    goto LABEL_12;
  }

  v9 = [NSURL fileURLWithPath:a3 isDirectory:0 relativeToURL:a4];
  [+[NSFileManager defaultManager](NSFileManager removeItemAtURL:"removeItemAtURL:error:" error:v9, 0];
  if (![+[NSFileManager moveItemAtURL:"moveItemAtURL:toURL:error:"]
  {
    if (a5)
    {
      v13 = *a5;
      if (qword_1000719D0 == -1)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v13 = 0;
      if (qword_1000719D0 == -1)
      {
LABEL_15:
        v14 = qword_1000719D8;
        if (!os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_ERROR))
        {
          return 0;
        }

LABEL_20:
        *buf = 138543874;
        v19 = a2;
        v20 = 2114;
        v21 = v9;
        v22 = 2114;
        v23 = v13;
        _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Error moving %{public}@ to %{public}@ because %{public}@", buf, 0x20u);
        return 0;
      }
    }

    dispatch_once(&qword_1000719D0, &stru_100060E18);
    v14 = qword_1000719D8;
    if (!os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    goto LABEL_20;
  }

  v16 = NSFileProtectionKey;
  v17 = NSFileProtectionCompleteUntilFirstUserAuthentication;
  if ([+[NSFileManager setAttributes:"setAttributes:ofItemAtPath:error:"]
  {
    return v9;
  }

  if (a5)
  {
    v10 = *a5;
    if (qword_1000719D0 == -1)
    {
      goto LABEL_7;
    }

LABEL_22:
    dispatch_once(&qword_1000719D0, &stru_100060E18);
    v11 = qword_1000719D8;
    if (!os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_INFO))
    {
      return v9;
    }

    goto LABEL_8;
  }

  v10 = 0;
  if (qword_1000719D0 != -1)
  {
    goto LABEL_22;
  }

LABEL_7:
  v11 = qword_1000719D8;
  if (os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_INFO))
  {
LABEL_8:
    *buf = 138543618;
    v19 = v9;
    v20 = 2114;
    v21 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Error changing %{public}@ to class c because %{public}@", buf, 0x16u);
  }

  return v9;
}

uint64_t sub_100010FB8(uint64_t result, char *a2, NSURL **a3)
{
  if (result)
  {
    v5 = result;
    v6 = *(result + 8);
    if (v6)
    {
      Property = objc_getProperty(v6, a2, 8, 1);
      v6 = *(v5 + 8);
      if (v6)
      {
        v6 = objc_getProperty(v6, v7, 32, 1);
      }
    }

    else
    {
      Property = 0;
    }

    v18 = v6;
    v10 = [NSArray arrayWithObjects:&v18 count:1];
    v11 = *(v5 + 8);
    v12 = v11 ? objc_getProperty(v11, v9, 24, 1) : 0;
    v13 = sub_10001AA04(Property, v10, v12);
    result = sub_100010C64(*(v5 + 8), a2, [a2 lastPathComponent], v13, a3);
    if (result)
    {
      v15 = 0;
      if (([objc_msgSend(objc_msgSend(result "lastPathComponent")] & 1) == 0)
      {
        if (qword_1000719D0 == -1)
        {
          v14 = qword_1000719D8;
          if (!os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_ERROR))
          {
            return 1;
          }
        }

        else
        {
          dispatch_once(&qword_1000719D0, &stru_100060E18);
          v14 = qword_1000719D8;
          if (!os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_ERROR))
          {
            return 1;
          }
        }

        *buf = 138543362;
        v17 = v15;
        _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Failed to write empty delivered URL because %{public}@", buf, 0xCu);
      }

      return 1;
    }
  }

  return result;
}

NSURL *sub_10001118C(NSURL *result, char *a2)
{
  if (result)
  {
    v3 = result;
    urlString = result->_urlString;
    if (urlString)
    {
      Property = objc_getProperty(urlString, a2, 8, 1);
      urlString = v3->_urlString;
      if (urlString)
      {
        urlString = objc_getProperty(urlString, v5, 32, 1);
      }
    }

    else
    {
      Property = 0;
    }

    v12 = urlString;
    v8 = [NSArray arrayWithObjects:&v12 count:1];
    v9 = v3->_urlString;
    if (v9)
    {
      v10 = objc_getProperty(v9, v7, 24, 1);
    }

    else
    {
      v10 = 0;
    }

    v11 = sub_10001A844(Property, v8, v10);
    return sub_100010C64(v3->_urlString, a2, [a2 lastPathComponent], v11, 0);
  }

  return result;
}

void *sub_100011CFC(void *a1, void *a2)
{
  v2 = a1;
  if (!a1)
  {
    return v2;
  }

  objc_opt_self();
  v4 = objc_alloc_init(RDKeychainStore);
  v6.receiver = v2;
  v6.super_class = RDEncryptingDatastore;
  v2 = objc_msgSendSuper2(&v6, "init");
  if (!v2)
  {
    return v2;
  }

  v2[1] = a2;
  v2[2] = v4;
  if (qword_100071B80)
  {
    return v2;
  }

  qword_100071B80 = objc_alloc_init(RDKeychainCache);
  return v2;
}

NSMutableData *sub_100011E1C()
{
  objc_opt_self();
  v0 = [NSMutableData dataWithLength:32];
  Bytes = CCRandomGenerateBytes([(NSMutableData *)v0 mutableBytes], 0x20uLL);
  if (!Bytes)
  {
    return v0;
  }

  v2 = Bytes;
  if (qword_1000719D0 != -1)
  {
    dispatch_once(&qword_1000719D0, &stru_100060E18);
    v3 = qword_1000719D8;
    if (!os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_FAULT))
    {
      return 0;
    }

LABEL_8:
    v5[0] = 67109120;
    v5[1] = v2;
    _os_log_fault_impl(&_mh_execute_header, v3, OS_LOG_TYPE_FAULT, "Failed to generate random data for a key. %d", v5, 8u);
    return 0;
  }

  v3 = qword_1000719D8;
  if (os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_FAULT))
  {
    goto LABEL_8;
  }

  return 0;
}

NSMutableData *sub_100011F44()
{
  objc_opt_self();
  v0 = [NSMutableData dataWithLength:16];
  Bytes = CCRandomGenerateBytes([(NSMutableData *)v0 mutableBytes], 0x10uLL);
  if (!Bytes)
  {
    return v0;
  }

  v2 = Bytes;
  if (qword_1000719D0 != -1)
  {
    dispatch_once(&qword_1000719D0, &stru_100060E18);
    v3 = qword_1000719D8;
    if (!os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_FAULT))
    {
      return 0;
    }

LABEL_8:
    v5[0] = 67109120;
    v5[1] = v2;
    _os_log_fault_impl(&_mh_execute_header, v3, OS_LOG_TYPE_FAULT, "Failed to generate random data for an initialization vector. %d", v5, 8u);
    return 0;
  }

  v3 = qword_1000719D8;
  if (os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_FAULT))
  {
    goto LABEL_8;
  }

  return 0;
}

NSString *sub_10001206C(NSString *result, char *a2)
{
  if (result)
  {
    v3 = result[1];
    if (v3)
    {
      Property = objc_getProperty(v3, a2, 24, 1);
    }

    else
    {
      Property = 0;
    }

    return +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@.%@", Property, [objc_msgSend(a2 "lastPathComponent")]);
  }

  return result;
}

uint64_t sub_1000120EC(uint64_t a1, void *a2, void *a3, void *a4)
{
  if (!a1)
  {
    v20 = 0;
    return v20 & 1;
  }

  v8 = +[NSMutableData dataWithCapacity:](NSMutableData, "dataWithCapacity:", [a3 length] + objc_msgSend(a2, "length"));
  [(NSMutableData *)v8 appendData:a3];
  [(NSMutableData *)v8 appendData:a2];
  v10 = *(a1 + 8);
  if (v10)
  {
    Property = objc_getProperty(v10, v9, 24, 1);
  }

  else
  {
    Property = 0;
  }

  v12 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@.%@", Property, [objc_msgSend(a4 "lastPathComponent")]);
  if ([*(a1 + 16) keyDataFromKeyChainWithName:v12])
  {
    v14 = 1;
    v15 = qword_100071B80;
    v16 = *(a1 + 8);
    if (v16)
    {
LABEL_6:
      v17 = objc_getProperty(v16, v13, 24, 1);
      goto LABEL_7;
    }
  }

  else
  {
    v22 = *(a1 + 8);
    v23 = *(a1 + 16);
    if (v22)
    {
      v24 = objc_getProperty(v22, v13, 24, 1);
    }

    else
    {
      v24 = 0;
    }

    v14 = [v23 addToKeychainKey:v8 withName:v12 sensor:v24];
    v15 = qword_100071B80;
    v16 = *(a1 + 8);
    if (v16)
    {
      goto LABEL_6;
    }
  }

  v17 = 0;
LABEL_7:
  v18 = [v15 addToKeychainKey:v8 withName:v12 sensor:v17];
  if (qword_1000719D0 != -1)
  {
    dispatch_once(&qword_1000719D0, &stru_100060E18);
    v19 = qword_1000719D8;
    if (!os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_INFO))
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v19 = qword_1000719D8;
  if (os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_INFO))
  {
LABEL_9:
    *buf = 138478339;
    v26 = v12;
    v27 = 1026;
    v28 = v14;
    v29 = 1026;
    v30 = v18;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Attempted add to key %{private}@ to keychain: %{public, BOOL}d, cache %{public, BOOL}d", buf, 0x18u);
  }

LABEL_10:
  v20 = v14 | v18;
  return v20 & 1;
}

NSDictionary *sub_100012344(NSDictionary *result, uint64_t a2)
{
  if (result)
  {
    if (a2)
    {
      v3 = result;
      v4 = [qword_100071B80 keyDataFromKeyChainWithName:a2];
      v5 = v4;
      if (v4)
      {
        goto LABEL_8;
      }

      v6 = [(objc_class *)v3[2].super.isa keyDataFromKeyChainWithName:a2];
      if (v6)
      {
        v5 = v6;
        v8 = qword_100071B80;
        isa = v3[1].super.isa;
        if (isa)
        {
          Property = objc_getProperty(isa, v7, 24, 1);
        }

        else
        {
          Property = 0;
        }

        [v8 addToKeychainKey:v5 withName:a2 sensor:Property];
LABEL_8:
        if (qword_1000719D0 == -1)
        {
          v11 = qword_1000719D8;
          if (!os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_DEBUG))
          {
LABEL_10:
            v13[0] = @"key";
            v13[1] = @"iv";
            v14[0] = +[NSData dataWithBytes:length:](NSData, "dataWithBytes:length:", [v5 bytes] + 16, objc_msgSend(v5, "length") - 16);
            v14[1] = +[NSData dataWithBytes:length:](NSData, "dataWithBytes:length:", [v5 bytes], 16);
            return [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:2];
          }
        }

        else
        {
          dispatch_once(&qword_1000719D0, &stru_100060E18);
          v11 = qword_1000719D8;
          if (!os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_10;
          }
        }

        v12 = @"cache";
        if (!v4)
        {
          v12 = @"keychain";
        }

        *buf = 138478083;
        v16 = a2;
        v17 = 2114;
        v18 = v12;
        _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Key %{private}@ found in %{public}@", buf, 0x16u);
        goto LABEL_10;
      }

      return &__NSDictionary0__struct;
    }

    else
    {
      return &__NSDictionary0__struct;
    }
  }

  return result;
}

void *sub_100012588(void *result, CCOperation a2, void *a3, void *a4, void *a5)
{
  if (result)
  {
    if (a2 >= 2)
    {
      if (qword_1000719D0 == -1)
      {
        v6 = qword_1000719D8;
        if (os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_ERROR))
        {
LABEL_5:
          *buf = 67109120;
          *&buf[4] = a2;
          v7 = "CCCrypt operation %d not supported";
          v8 = buf;
LABEL_6:
          v9 = v6;
          v10 = 8;
LABEL_16:
          _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, v7, v8, v10);
          return 0;
        }
      }

      else
      {
        dispatch_once(&qword_1000719D0, &stru_100060E18);
        v6 = qword_1000719D8;
        if (os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_5;
        }
      }

      return 0;
    }

    v24 = 0;
    v14 = sub_10001C0E8(NSFileHandle, a3, 3, 514, &v24);
    if (!v14)
    {
      if (qword_1000719D0 == -1)
      {
        v21 = qword_1000719D8;
        if (!os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_ERROR))
        {
          return 0;
        }
      }

      else
      {
        dispatch_once(&qword_1000719D0, &stru_100060E18);
        v21 = qword_1000719D8;
        if (!os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_ERROR))
        {
          return 0;
        }
      }

      *buf = 138543618;
      *&buf[4] = a3;
      v27 = 2114;
      v28 = v24;
      v7 = "Unable to open %{public}@ because %{public}@";
      v8 = buf;
      v9 = v21;
      v10 = 22;
      goto LABEL_16;
    }

    v15 = v14;
    v16 = [v14 seekToEndOfFile];
    [v15 seekToFileOffset:0];
    dataOutAvailable = NSRoundUpToMultipleOfPageSize(v16 + 16);
    [v15 truncateFileAtOffset:dataOutAvailable];
    v18 = mmap(0, dataOutAvailable, 2, 1, [v15 fileDescriptor], 0);
    if (v18 == -1)
    {
      if (qword_1000719D0 == -1)
      {
        v22 = qword_1000719D8;
        if (!os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_FAULT))
        {
          return 0;
        }
      }

      else
      {
        dispatch_once(&qword_1000719D0, &stru_100060E18);
        v22 = qword_1000719D8;
        if (!os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_FAULT))
        {
          return 0;
        }
      }

      v23 = *__error();
      *buf = 138543618;
      *&buf[4] = v15;
      v27 = 1026;
      LODWORD(v28) = v23;
      _os_log_fault_impl(&_mh_execute_header, v22, OS_LOG_TYPE_FAULT, "Unable to mmap storage file %{public}@ because %{public, darwin.errno}d", buf, 0x12u);
      return 0;
    }

    dataOut = v18;
    *buf = 0;
    v20 = CCCrypt(a2, 0, 1u, [a4 bytes], objc_msgSend(a4, "length"), objc_msgSend(a5, "bytes"), dataOut, v16 + 16, dataOut, dataOutAvailable, buf);
    munmap(dataOut, dataOutAvailable);
    if (!v20)
    {
      [v15 truncateFileAtOffset:*buf];
      return a3;
    }

    if (qword_1000719D0 == -1)
    {
      v6 = qword_1000719D8;
      if (!os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_ERROR))
      {
        return 0;
      }
    }

    else
    {
      dispatch_once(&qword_1000719D0, &stru_100060E18);
      v6 = qword_1000719D8;
      if (!os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_ERROR))
      {
        return 0;
      }
    }

    v25[0] = 67109120;
    v25[1] = v20;
    v7 = "Failed to archive data! %d";
    v8 = v25;
    goto LABEL_6;
  }

  return result;
}

void *sub_100012994(void *a1, void *a2)
{
  if (!a1)
  {
    return 0;
  }

  objc_opt_class();
  v4 = sub_100011E1C();
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  objc_opt_class();
  v6 = sub_100011F44();
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  if (!sub_1000120EC(a1, v5, v6, [a2 lastPathComponent]))
  {
    return 0;
  }

  return sub_100012588(a1, 0, a2, v5, v7);
}

void *sub_100012A40(NSDictionary *a1, void *a2)
{
  if (!a1)
  {
    return 0;
  }

  v5 = [a2 lastPathComponent];
  isa = a1[1].super.isa;
  v7 = isa ? objc_getProperty(isa, v4, 24, 1) : 0;
  v8 = sub_100012344(a1, +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@.%@", v7, [objc_msgSend(v5 "lastPathComponent")]));
  v9 = [(NSDictionary *)v8 objectForKeyedSubscript:@"key"];
  v10 = [(NSDictionary *)v8 objectForKeyedSubscript:@"iv"];
  if (!v9 || v10 == 0)
  {
    return 0;
  }

  return sub_100012588(a1, 1u, a2, v9, v10);
}

id sub_100012B50(id result, void *a2)
{
  if (result)
  {
    v5.receiver = result;
    v5.super_class = RDIDSMessageStore;
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

void sub_100012C04(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = *(a1 + 8);
    if (!v3 || (Property = objc_getProperty(v3, a2, 32, 1)) == 0)
    {
      if (qword_1000719D0 == -1)
      {
        v18 = qword_1000719D8;
        if (!os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_FAULT))
        {
          return;
        }
      }

      else
      {
        dispatch_once(&qword_1000719D0, &stru_100060E18);
        v18 = qword_1000719D8;
        if (!os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_FAULT))
        {
          return;
        }
      }

      LOWORD(v19) = 0;
      _os_log_fault_impl(&_mh_execute_header, v18, OS_LOG_TYPE_FAULT, "No remote device ID found", &v19, 2u);
      return;
    }

    v7 = Property;
    v8 = *(a1 + 8);
    if (v8)
    {
      v9 = objc_getProperty(v8, v6, 8, 1);
    }

    else
    {
      v9 = 0;
    }

    v21 = v7;
    v20 = NSURLIsDirectoryKey;
    v10 = [+[NSFileManager defaultManager](NSFileManager enumeratorAtURL:"enumeratorAtURL:includingPropertiesForKeys:options:errorHandler:" includingPropertiesForKeys:sub_10001B260(v9 options:[NSArray errorHandler:"arrayWithObjects:count:" arrayWithObjects:1 count:?]), [NSArray arrayWithObjects:&v20 count:1], 4, 0];
    v11 = objc_autoreleasePoolPush();
    v12 = [(NSDirectoryEnumerator *)v10 nextObject];
    if (v12)
    {
      v13 = v12;
      v14 = 0;
      v15 = 1;
      do
      {
        if (v15)
        {
          while (1)
          {
            v19 = 0;
            [v13 getResourceValue:&v19 forKey:NSURLIsDirectoryKey error:0];
            if ([v19 BOOLValue])
            {
              break;
            }

            objc_autoreleasePoolPop(v11);
            v11 = objc_autoreleasePoolPush();
            v13 = [(NSDirectoryEnumerator *)v10 nextObject];
            if (!v13)
            {
              goto LABEL_25;
            }
          }
        }

        else
        {
          while (1)
          {
            v19 = 0;
            [v13 getResourceValue:&v19 forKey:NSURLIsDirectoryKey error:0];
            if ([v19 BOOLValue])
            {
              break;
            }

            v16 = sub_100012EF8(v13);
            if ([v16 count])
            {
              v17 = (*(a2 + 16))(a2, v14, v16);

              objc_autoreleasePoolPop(v11);
              if ((v17 & 1) == 0)
              {
                return;
              }

              v14 = 0;
              goto LABEL_19;
            }

            objc_autoreleasePoolPop(v11);
            v11 = objc_autoreleasePoolPush();
            v13 = [(NSDirectoryEnumerator *)v10 nextObject];
            if (!v13)
            {
              goto LABEL_25;
            }
          }
        }

        v14 = [objc_msgSend(v13 "lastPathComponent")];
        objc_autoreleasePoolPop(v11);
LABEL_19:
        v15 = v14 == 0;
        v11 = objc_autoreleasePoolPush();
        v13 = [(NSDirectoryEnumerator *)v10 nextObject];
      }

      while (v13);
    }

    else
    {
      v14 = 0;
    }

LABEL_25:

    objc_autoreleasePoolPop(v11);
  }
}

id sub_100012EF8(uint64_t a1)
{
  v2 = [NSData dataWithContentsOfURL:a1];
  if (!v2)
  {
    if (qword_1000719D0 == -1)
    {
      v7 = qword_1000719D8;
      if (!os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_FAULT))
      {
        return &__NSDictionary0__struct;
      }
    }

    else
    {
      dispatch_once(&qword_1000719D0, &stru_100060E18);
      v7 = qword_1000719D8;
      if (!os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_FAULT))
      {
        return &__NSDictionary0__struct;
      }
    }

    *buf = 138543362;
    v11 = a1;
    _os_log_fault_impl(&_mh_execute_header, v7, OS_LOG_TYPE_FAULT, "No data found for pending IDS message %{public}@", buf, 0xCu);
    return &__NSDictionary0__struct;
  }

  v9 = 0;
  v3 = [NSPropertyListSerialization propertyListWithData:v2 options:0 format:0 error:&v9];
  if (v3)
  {
    v4 = v9 == 0;
  }

  else
  {
    v4 = 0;
  }

  if (!v4 || (v5 = v3, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    if (qword_1000719D0 == -1)
    {
      v6 = qword_1000719D8;
      if (!os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_ERROR))
      {
        return &__NSDictionary0__struct;
      }
    }

    else
    {
      dispatch_once(&qword_1000719D0, &stru_100060E18);
      v6 = qword_1000719D8;
      if (!os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_ERROR))
      {
        return &__NSDictionary0__struct;
      }
    }

    *buf = 138543362;
    v11 = v9;
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Failed to load serialized IDS Message because %{public}@", buf, 0xCu);
    return &__NSDictionary0__struct;
  }

  return v5;
}

void *sub_1000130DC(void *result, const char *a2)
{
  if (!result)
  {
    return result;
  }

  v2 = result;
  v3 = result[1];
  if (!v3 || !objc_getProperty(v3, a2, 32, 1))
  {
    if (qword_1000719D0 == -1)
    {
      v9 = qword_1000719D8;
      if (!os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_ERROR))
      {
        return &__NSDictionary0__struct;
      }
    }

    else
    {
      dispatch_once(&qword_1000719D0, &stru_100060E18);
      v9 = qword_1000719D8;
      if (!os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_ERROR))
      {
        return &__NSDictionary0__struct;
      }
    }

    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "No remote device ID found", buf, 2u);
    return &__NSDictionary0__struct;
  }

  v6 = v2[1];
  if (v6)
  {
    Property = objc_getProperty(v6, v5, 8, 1);
    v6 = v2[1];
    if (v6)
    {
      v6 = objc_getProperty(v6, v7, 32, 1);
    }
  }

  else
  {
    Property = 0;
  }

  v13 = v6;
  memset(v10, 0, sizeof(v10));
  if ([(NSDirectoryEnumerator *)[[NSFileManager enumeratorAtURL:"enumeratorAtURL:includingPropertiesForKeys:options:errorHandler:" includingPropertiesForKeys:[NSURL fileURLWithPath:? isDirectory:? relativeToURL:?] defaultManager:4]]
  {
    return sub_100012EF8(**(&v10[0] + 1));
  }

  else
  {
    return &__NSDictionary0__struct;
  }
}

void sub_1000132DC(uint64_t a1, const char *a2, uint64_t a3)
{
  if (!a1)
  {
    return;
  }

  if (!a3)
  {
    if (qword_1000719D0 == -1)
    {
      v21 = qword_1000719D8;
      if (!os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_FAULT))
      {
        return;
      }
    }

    else
    {
      dispatch_once(&qword_1000719D0, &stru_100060E18);
      v21 = qword_1000719D8;
      if (!os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_FAULT))
      {
        return;
      }
    }

    *buf = 0;
    v22 = "IDS Identifier is nil";
    goto LABEL_29;
  }

  if (!a2)
  {
    if (qword_1000719D0 == -1)
    {
      v21 = qword_1000719D8;
      if (!os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_FAULT))
      {
        return;
      }
    }

    else
    {
      dispatch_once(&qword_1000719D0, &stru_100060E18);
      v21 = qword_1000719D8;
      if (!os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_FAULT))
      {
        return;
      }
    }

    *buf = 0;
    v22 = "IDS message is nil";
    goto LABEL_29;
  }

  v4 = *(a1 + 8);
  if (!v4 || !objc_getProperty(v4, a2, 32, 1))
  {
    if (qword_1000719D0 == -1)
    {
      v21 = qword_1000719D8;
      if (!os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_FAULT))
      {
        return;
      }
    }

    else
    {
      dispatch_once(&qword_1000719D0, &stru_100060E18);
      v21 = qword_1000719D8;
      if (!os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_FAULT))
      {
        return;
      }
    }

    *buf = 0;
    v22 = "No remote device ID found";
LABEL_29:
    _os_log_fault_impl(&_mh_execute_header, v21, OS_LOG_TYPE_FAULT, v22, buf, 2u);
    return;
  }

  v8 = *(a1 + 8);
  if (v8)
  {
    Property = objc_getProperty(v8, v7, 8, 1);
    v8 = *(a1 + 8);
    if (v8)
    {
      v8 = objc_getProperty(v8, v9, 32, 1);
    }
  }

  else
  {
    Property = 0;
  }

  v29 = v8;
  v11 = [NSURL fileURLWithPath:a3 isDirectory:1 relativeToURL:sub_10001B260(Property, [NSArray arrayWithObjects:&v29 count:1])];
  v24 = 0;
  if (![+[NSFileManager createDirectoryAtURL:"createDirectoryAtURL:withIntermediateDirectories:attributes:error:"]
  {
    if (qword_1000719D0 == -1)
    {
      v19 = qword_1000719D8;
      if (!os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_ERROR))
      {
        return;
      }
    }

    else
    {
      dispatch_once(&qword_1000719D0, &stru_100060E18);
      v19 = qword_1000719D8;
      if (!os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_ERROR))
      {
        return;
      }
    }

    *buf = 138543362;
    v26 = v24;
    v20 = "Failed to create IDS message store directory because %{public}@";
    goto LABEL_33;
  }

  v12 = [NSPropertyListSerialization dataWithPropertyList:a2 format:200 options:0 error:&v24];
  if (!v12 || v24)
  {
    if (qword_1000719D0 == -1)
    {
      v23 = qword_1000719D8;
      if (!os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_FAULT))
      {
        return;
      }
    }

    else
    {
      dispatch_once(&qword_1000719D0, &stru_100060E18);
      v23 = qword_1000719D8;
      if (!os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_FAULT))
      {
        return;
      }
    }

    *buf = 138543618;
    v26 = a2;
    v27 = 2114;
    v28 = v24;
    _os_log_fault_impl(&_mh_execute_header, v23, OS_LOG_TYPE_FAULT, "Failed to serialize IDS message %{public}@ because %{public}@", buf, 0x16u);
    return;
  }

  v13 = v12;
  v14 = mach_continuous_time();
  if (qword_100071B60 != -1)
  {
    dispatch_once(&qword_100071B60, &stru_100060D90);
  }

  v15 = qword_100071B68;
  v16 = *&qword_100071B70;
  v17 = *&qword_100071B78;
  TMConvertTicksToSeconds();
  if (v15 >= v14)
  {
    v18 = -v18;
  }

  if (![(NSData *)v13 writeToURL:[NSURL fileURLWithPath:0 isDirectory:v11 relativeToURL:?], 1, &v24])
  {
    if (qword_1000719D0 == -1)
    {
      v19 = qword_1000719D8;
      if (os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_ERROR))
      {
LABEL_19:
        *buf = 138543362;
        v26 = v24;
        v20 = "Failed to write serialized IDS message to disk because %{public}@";
LABEL_33:
        _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, v20, buf, 0xCu);
      }
    }

    else
    {
      dispatch_once(&qword_1000719D0, &stru_100060E18);
      v19 = qword_1000719D8;
      if (os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_19;
      }
    }
  }
}

void sub_100013800(uint64_t a1, const char *a2)
{
  if (a1)
  {
    v3 = *(a1 + 8);
    if (!v3 || !objc_getProperty(v3, a2, 32, 1))
    {
      if (qword_1000719D0 == -1)
      {
        v9 = qword_1000719D8;
        if (!os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_FAULT))
        {
          return;
        }
      }

      else
      {
        dispatch_once(&qword_1000719D0, &stru_100060E18);
        v9 = qword_1000719D8;
        if (!os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_FAULT))
        {
          return;
        }
      }

      *v10 = 0;
      _os_log_fault_impl(&_mh_execute_header, v9, OS_LOG_TYPE_FAULT, "No remote device ID found", v10, 2u);
      return;
    }

    v6 = *(a1 + 8);
    if (v6)
    {
      Property = objc_getProperty(v6, v5, 8, 1);
      v6 = *(a1 + 8);
      if (v6)
      {
        v6 = objc_getProperty(v6, v7, 32, 1);
      }
    }

    else
    {
      Property = 0;
    }

    v11 = v6;
    [+[NSFileManager defaultManager](NSFileManager removeItemAtURL:"removeItemAtURL:error:" error:[NSURL fileURLWithPath:a2 isDirectory:1 relativeToURL:sub_10001B260(Property, [NSArray arrayWithObjects:&v11 count:1])], 0];
  }
}

uint64_t sub_1000139B8(uint64_t result, double a2, double a3)
{
  if (result)
  {
    v5 = result;
    v7 = +[NSFileManager defaultManager];
    Property = *(v5 + 8);
    if (Property)
    {
      Property = objc_getProperty(Property, v6, 8, 1);
    }

    v9 = sub_10001B140(Property);

    return sub_100005AB4(v7, v9, 0, 0, 0, a2, a3);
  }

  return result;
}

id sub_100013A44(id result, void *a2)
{
  if (result)
  {
    v5.receiver = result;
    v5.super_class = RDGizmoStateDatastore;
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

void sub_100013AF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    return;
  }

  if (!a2)
  {
    if (qword_1000719D0 == -1)
    {
      v17 = qword_1000719D8;
      if (!os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_FAULT))
      {
        return;
      }
    }

    else
    {
      dispatch_once(&qword_1000719D0, &stru_100060E18);
      v17 = qword_1000719D8;
      if (!os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_FAULT))
      {
        return;
      }
    }

    *buf = 0;
    v18 = "state is nil";
    goto LABEL_22;
  }

  if (!a3)
  {
    if (qword_1000719D0 == -1)
    {
      v17 = qword_1000719D8;
      if (!os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_FAULT))
      {
        return;
      }
    }

    else
    {
      dispatch_once(&qword_1000719D0, &stru_100060E18);
      v17 = qword_1000719D8;
      if (!os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_FAULT))
      {
        return;
      }
    }

    *buf = 0;
    v18 = "device ID is nil";
LABEL_22:
    _os_log_fault_impl(&_mh_execute_header, v17, OS_LOG_TYPE_FAULT, v18, buf, 2u);
    return;
  }

  v7 = +[NSFileManager defaultManager];
  Property = *(a1 + 8);
  if (Property)
  {
    Property = objc_getProperty(Property, v6, 8, 1);
  }

  v43 = NSURLIsDirectoryKey;
  v9 = [(NSFileManager *)v7 enumeratorAtURL:sub_10001B2EC(Property) includingPropertiesForKeys:[NSArray arrayWithObjects:1 count:?], 4, 0];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v10 = [(NSDirectoryEnumerator *)v9 countByEnumeratingWithState:&v35 objects:v42 count:16];
  if (v10)
  {
    v12 = v10;
    v13 = 0;
    v14 = *v36;
    while (2)
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v36 != v14)
        {
          objc_enumerationMutation(v9);
        }

        v16 = *(*(&v35 + 1) + 8 * i);
        *buf = 0;
        [v16 getResourceValue:buf forKey:NSURLIsDirectoryKey error:0];
        if ([*buf BOOLValue])
        {
          if (v13 >= 10)
          {
            goto LABEL_24;
          }

          ++v13;
        }
      }

      v12 = [(NSDirectoryEnumerator *)v9 countByEnumeratingWithState:&v35 objects:v42 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }

    if (v13 >= 11)
    {
LABEL_24:
      v20 = +[NSFileManager defaultManager];
      v21 = *(a1 + 8);
      if (v21)
      {
        v21 = objc_getProperty(v21, v19, 8, 1);
      }

      [(NSFileManager *)v20 removeItemAtURL:sub_10001B2EC(v21) error:0];
    }
  }

  v22 = *(a1 + 8);
  if (v22)
  {
    v22 = objc_getProperty(v22, v11, 8, 1);
  }

  v23 = [NSURL fileURLWithPath:a3 isDirectory:1 relativeToURL:sub_10001B2EC(v22)];
  [+[NSFileManager defaultManager](NSFileManager removeItemAtURL:"removeItemAtURL:error:" error:v23, 0];
  v34 = 0;
  if (![+[NSFileManager createDirectoryAtURL:"createDirectoryAtURL:withIntermediateDirectories:attributes:error:"]
  {
    if (qword_1000719D0 == -1)
    {
      v31 = qword_1000719D8;
      if (!os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_ERROR))
      {
        return;
      }
    }

    else
    {
      dispatch_once(&qword_1000719D0, &stru_100060E18);
      v31 = qword_1000719D8;
      if (!os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_ERROR))
      {
        return;
      }
    }

    *buf = 138543362;
    *&buf[4] = v34;
    v32 = "Failed to create gizmo state store directory because %{public}@";
    goto LABEL_43;
  }

  v24 = [NSPropertyListSerialization dataWithPropertyList:a2 format:200 options:0 error:&v34];
  if (!v24 || v34)
  {
    if (qword_1000719D0 == -1)
    {
      v33 = qword_1000719D8;
      if (!os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_FAULT))
      {
        return;
      }
    }

    else
    {
      dispatch_once(&qword_1000719D0, &stru_100060E18);
      v33 = qword_1000719D8;
      if (!os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_FAULT))
      {
        return;
      }
    }

    *buf = 138543618;
    *&buf[4] = a2;
    v40 = 2114;
    v41 = v34;
    _os_log_fault_impl(&_mh_execute_header, v33, OS_LOG_TYPE_FAULT, "Failed to serialize gizmo state %{public}@ because %{public}@", buf, 0x16u);
    return;
  }

  v25 = v24;
  v26 = mach_continuous_time();
  if (qword_100071B60 != -1)
  {
    dispatch_once(&qword_100071B60, &stru_100060D90);
  }

  v27 = qword_100071B68;
  v28 = *&qword_100071B70;
  v29 = *&qword_100071B78;
  TMConvertTicksToSeconds();
  if (v27 >= v26)
  {
    v30 = -v30;
  }

  if (![(NSData *)v25 writeToURL:[NSURL fileURLWithPath:0 isDirectory:v23 relativeToURL:?], 1, &v34])
  {
    if (qword_1000719D0 == -1)
    {
      v31 = qword_1000719D8;
      if (os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_ERROR))
      {
LABEL_39:
        *buf = 138543362;
        *&buf[4] = v34;
        v32 = "Failed to write serialized gizmo state to disk because %{public}@";
LABEL_43:
        _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, v32, buf, 0xCu);
      }
    }

    else
    {
      dispatch_once(&qword_1000719D0, &stru_100060E18);
      v31 = qword_1000719D8;
      if (os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_39;
      }
    }
  }
}

id sub_1000140D4(uint64_t a1, const char *a2)
{
  if (!a1)
  {
    return 0;
  }

  Property = *(a1 + 8);
  if (Property)
  {
    Property = objc_getProperty(Property, a2, 8, 1);
  }

  v4 = [+[NSFileManager defaultManager](NSFileManager enumeratorAtURL:"enumeratorAtURL:includingPropertiesForKeys:options:errorHandler:" includingPropertiesForKeys:[NSURL fileURLWithPath:1 isDirectory:sub_10001B2EC(Property) relativeToURL:?], 0, 4, 0];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = [(NSDirectoryEnumerator *)v4 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v24;
    *&v6 = 138478083;
    v21 = v6;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v23 + 1) + 8 * i);
        v22 = 0;
        v11 = [NSData dataWithContentsOfURL:v10 options:0 error:&v22, v21];
        if (v11)
        {
          v12 = [NSPropertyListSerialization propertyListWithData:v11 options:0 format:0 error:&v22];
          if (v12)
          {
            v13 = v22 == 0;
          }

          else
          {
            v13 = 0;
          }

          if (v13)
          {
            v14 = v12;
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              return v14;
            }
          }

          if (qword_1000719D0 == -1)
          {
            v15 = qword_1000719D8;
            if (os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_21;
            }
          }

          else
          {
            dispatch_once(&qword_1000719D0, &stru_100060E18);
            v15 = qword_1000719D8;
            if (os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_ERROR))
            {
LABEL_21:
              *buf = 138543362;
              v28 = v22;
              v16 = v15;
              v17 = "Failed to load serialized state because %{public}@";
              v18 = 12;
LABEL_8:
              _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, v17, buf, v18);
              continue;
            }
          }
        }

        else if (qword_1000719D0 == -1)
        {
          v19 = qword_1000719D8;
          if (os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_24;
          }
        }

        else
        {
          dispatch_once(&qword_1000719D0, &stru_100060E18);
          v19 = qword_1000719D8;
          if (os_log_type_enabled(qword_1000719D8, OS_LOG_TYPE_ERROR))
          {
LABEL_24:
            *buf = v21;
            v28 = v10;
            v29 = 2114;
            v30 = v22;
            v16 = v19;
            v17 = "Failed to load data file %{private}@ because %{public}@";
            v18 = 22;
            goto LABEL_8;
          }
        }
      }

      v7 = [(NSDirectoryEnumerator *)v4 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v7);
  }

  return &__NSDictionary0__struct;
}

void sub_1000144E8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a1 && a2)
  {
    v51 = 0;
    v7 = &IDSCopyIDForDevice_ptr;
    v8 = +[NSMutableArray arrayWithArray:](NSMutableArray, "arrayWithArray:", -[NSFileManager contentsOfDirectoryAtPath:error:](+[NSFileManager defaultManager](NSFileManager, "defaultManager"), "contentsOfDirectoryAtPath:error:", [a2 path], &v51));
    v9 = v51;
    if (v51)
    {
      v10 = qword_1000719E0;
      if (os_log_type_enabled(qword_1000719E0, OS_LOG_TYPE_ERROR))
      {
        v59.st_dev = 138412290;
        *&v59.st_mode = v9;
        _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "error while reading directory, %@", &v59, 0xCu);
      }

      return;
    }

    v11 = v8;
    if (v8)
    {
      v45 = a1;
      v50 = 0;
      if (a3)
      {
        [(NSMutableArray *)v8 sortUsingComparator:a3];
      }

      v43 = a3;
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v46 objects:v54 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v47;
LABEL_13:
        v15 = 0;
        while (1)
        {
          if (*v47 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v46 + 1) + 8 * v15);
          v17 = objc_autoreleasePoolPush();
          v18 = [objc_msgSend(a2 "path")];
          v19 = [objc_msgSend(a2 "relativePath")];
          if (![objc_msgSend(v7[243] "defaultManager")])
          {
            goto LABEL_15;
          }

          v20 = +[NSURL fileURLWithPath:isDirectory:relativeToURL:](NSURL, "fileURLWithPath:isDirectory:relativeToURL:", v19, v50, [a2 baseURL]);
          v21 = v20;
          if (v50 == 1)
          {
            sub_1000144E8(v45, v20, v43, a4);
          }

          else
          {
            if (!v20)
            {
              goto LABEL_15;
            }

            memset(&v59, 0, sizeof(v59));
            v22 = [(NSString *)[(NSURL *)v20 path] UTF8String];
            if (!v22)
            {
              goto LABEL_15;
            }

            stat(v22, &v59);
            archive_entry_new();
            archive_entry_copy_stat();
            [(NSString *)[(NSURL *)v21 relativePath] UTF8String];
            archive_entry_set_pathname();
            v23 = *(v45 + 8);
            if (archive_write_header())
            {
              v24 = qword_1000719E0;
              if (os_log_type_enabled(qword_1000719E0, OS_LOG_TYPE_ERROR))
              {
                v41 = [(NSURL *)v21 path];
                v25 = *(v45 + 8);
                v26 = archive_errno();
                v27 = *(v45 + 8);
                v28 = archive_error_string();
                *buf = 138412802;
                v56 = v41;
                v57 = 1024;
                *v58 = v26;
                *&v58[4] = 2080;
                *&v58[6] = v28;
                _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "failed to write header for file, %@, status, %d, reason: %s", buf, 0x1Cu);
              }

              goto LABEL_15;
            }

            v53 = 0;
            v29 = [NSData dataWithContentsOfURL:v21 options:1 error:&v53];
            if (!v29)
            {
              v33 = qword_1000719E0;
              if (os_log_type_enabled(qword_1000719E0, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412546;
                v56 = v21;
                v57 = 2112;
                *v58 = v53;
                v34 = v33;
                v35 = "failed to open file %@. %@ ";
                v36 = 22;
                goto LABEL_40;
              }

LABEL_41:
              archive_entry_free();
              goto LABEL_15;
            }

            v30 = v29;
            if (([(NSData *)v29 length]& 0x8000000000000000) != 0)
            {
              v37 = qword_1000719E0;
              if (!os_log_type_enabled(qword_1000719E0, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_41;
              }

              v38 = [(NSData *)v30 length];
              *buf = 134218240;
              v56 = v38;
              v57 = 2048;
              *v58 = 0x7FFFFFFFFFFFFFFFLL;
              v34 = v37;
              v35 = "Data being written is too large (%lu > %ldd)";
              v36 = 22;
LABEL_40:
              _os_log_error_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, v35, buf, v36);
              goto LABEL_41;
            }

            v31 = *(v45 + 8);
            [(NSData *)v30 bytes];
            [(NSData *)v30 length];
            v42 = archive_write_data();
            if (v42 != [(NSData *)v30 length])
            {
              v40 = qword_1000719E0;
              v7 = &IDSCopyIDForDevice_ptr;
              if (!os_log_type_enabled(qword_1000719E0, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_41;
              }

              v39 = [(NSData *)v30 length];
              *buf = 138412802;
              v56 = v21;
              v57 = 2048;
              *v58 = v39;
              *&v58[8] = 2048;
              v34 = v40;
              *&v58[10] = v42;
              v35 = "error writing file, %@, request to write %lu bytes but wrote %ld bytes";
              v36 = 32;
              goto LABEL_40;
            }

            archive_entry_free();
            v7 = &IDSCopyIDForDevice_ptr;
            if (*(v45 + 16) == 1 && (v52 = 0, ![+[NSFileManager removeItemAtPath:"removeItemAtPath:error:"]&& (v32 = qword_1000719E0, os_log_type_enabled(qword_1000719E0, OS_LOG_TYPE_ERROR)))
            {
              *buf = 138543618;
              v56 = v21;
              v57 = 2114;
              *v58 = v52;
              _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "error removing file that has been archived %{public}@. %{public}@", buf, 0x16u);
              if (!a4)
              {
                goto LABEL_15;
              }
            }

            else if (!a4)
            {
              goto LABEL_15;
            }

            if (((*(a4 + 16))(a4, v21) & 1) == 0)
            {
              objc_autoreleasePoolPop(v17);
              return;
            }
          }

LABEL_15:
          objc_autoreleasePoolPop(v17);
          if (v13 == ++v15)
          {
            v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v46 objects:v54 count:16];
            if (!v13)
            {
              return;
            }

            goto LABEL_13;
          }
        }
      }
    }
  }
}

uint64_t sub_100014B10(uint64_t a1, void *a2, void *a3, int a4, char a5, int a6, uint64_t a7, uint64_t a8)
{
  objc_opt_self();
  v15 = [RDArchiver alloc];
  if (!v15)
  {
    goto LABEL_15;
  }

  if (!a3)
  {

    goto LABEL_15;
  }

  v38.receiver = v15;
  v38.super_class = RDArchiver;
  v16 = objc_msgSendSuper2(&v38, "init");
  if (!v16)
  {
LABEL_15:
    sub_1000144E8(0, a2, a7, a8);
    v17 = 0;
    goto LABEL_16;
  }

  v17 = v16;
  v16[16] = a5;
  *(v16 + 1) = archive_write_new();
  *(v17 + 32) = [a3 URLByAppendingPathExtension:@"tar"];
  v18 = *(v17 + 8);
  if (a4)
  {
    v19 = archive_write_add_filter_gzip();
    *(v17 + 32) = [*(v17 + 32) URLByAppendingPathExtension:@"gz"];
    v20 = *(v17 + 8);
    archive_write_set_bytes_per_block();
    v21 = *(v17 + 32);
    if (v19)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v19 = archive_write_add_filter_none();
    v22 = *(v17 + 8);
    archive_write_set_bytes_per_block();
    v23 = *(v17 + 32);
    if (v19)
    {
      goto LABEL_11;
    }
  }

  v24 = *(v17 + 8);
  v25 = archive_write_set_format_pax();
  if (v25)
  {
    goto LABEL_10;
  }

  v30 = open_dprotected_np([objc_msgSend(*(v17 + 32) "path")], 514, a6, 0, 416);
  *(v17 + 20) = v30;
  if (v30 < 0)
  {
    v34 = qword_1000719E0;
    if (os_log_type_enabled(qword_1000719E0, OS_LOG_TYPE_ERROR))
    {
      v36 = *(v17 + 32);
      v37 = *__error();
      *buf = 138412546;
      v40 = v36;
      v41 = 1024;
      v42 = v37;
      _os_log_error_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "Unable to create archive at path %@ with data protection, errno, %{errno}d", buf, 0x12u);
    }

    v35 = *(v17 + 8);
    archive_write_close();
    goto LABEL_14;
  }

  v31 = *(v17 + 8);
  v25 = archive_write_open_fd();
  *(v17 + 24) = 1;
  if (v25)
  {
LABEL_10:
    v19 = v25;
LABEL_11:
    v26 = qword_1000719E0;
    if (os_log_type_enabled(qword_1000719E0, OS_LOG_TYPE_ERROR))
    {
      v33 = *(v17 + 32);
      *buf = 138412546;
      v40 = v33;
      v41 = 1024;
      v42 = v19;
      _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Error creating archive at path %@ %d", buf, 0x12u);
      if (*(v17 + 24) != 1)
      {
        goto LABEL_14;
      }
    }

    else if (*(v17 + 24) != 1)
    {
LABEL_14:

      goto LABEL_15;
    }

    v27 = *(v17 + 8);
    archive_write_free();
    close(*(v17 + 20));
    *(v17 + 24) = 0;
    goto LABEL_14;
  }

  sub_1000144E8(v17, a2, a7, a8);
  if (*(v17 + 24) == 1)
  {
    v28 = *(v17 + 32);
    v32 = *(v17 + 8);
    archive_write_free();
    close(*(v17 + 20));
    *(v17 + 24) = 0;
    goto LABEL_17;
  }

LABEL_16:
  v28 = 0;
LABEL_17:

  return v28;
}

SRAuthorizationStore *sub_1000152BC(uint64_t a1)
{
  result = [[SRAuthorizationStore alloc] initWithSensors:*(a1 + 32) withAuthorizationTimes:0];
  qword_1000719F0 = result;
  return result;
}

void sub_100015948(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, id location)
{
  objc_destroyWeak((v31 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000159B4(uint64_t a1)
{
  Weak = objc_loadWeak((a1 + 32));

  sub_1000159E0(Weak);
}

void sub_1000159E0(uint64_t a1)
{
  if (a1)
  {
    dispatch_assert_queue_V2([a1 updateQueue]);
    v1 = os_transaction_create();
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    v2 = _os_activity_create(&_mh_execute_header, "Retrieving fresh authorizations from TCC", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v2, &state);
    v3 = qword_1000719E8;
    if (os_log_type_enabled(qword_1000719E8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Retrieving fresh authorizations from TCC", buf, 2u);
    }

    v92 = v1;
    v100 = +[NSMutableDictionary dictionary];
    v134[0] = _NSConcreteStackBlock;
    v134[1] = 3221225472;
    v135 = sub_100018214;
    v136 = &unk_100060F20;
    v137 = v100;
    v4 = [a1 readerAuthorizationGroups];
    v160 = 0u;
    v161 = 0u;
    memset(v159, 0, sizeof(v159));
    v5 = [v4 countByEnumeratingWithState:v159 objects:buf count:16];
    v6 = &off_100071000;
    if (v5)
    {
      v7 = **&v159[16];
      obj = v4;
      v88 = **&v159[16];
      do
      {
        v99 = 0;
        v90 = v5;
        do
        {
          if (**&v159[16] != v7)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*&v159[8] + 8 * v99);
          context = objc_autoreleasePoolPush();
          v104 = [*(a1 + 32) bundleIdentifiersForService:v8];
          v9 = [*(a1 + 32) bundleIdentifiersDisabledForService:v8];
          v101 = v9;
          if (v104)
          {
            v10 = v9 == 0;
          }

          else
          {
            v10 = 1;
          }

          if (v10)
          {
            v11 = v6[317];
            if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
            {
              *v153 = 138543362;
              v154 = v8;
              _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Could not retrieve authorization information for TCC service %{public}@", v153, 0xCu);
            }
          }

          v12 = [*(a1 + 32) isOverriddenForService:v8];
          v13 = v6[317];
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *v153 = 138543874;
            v154 = v8;
            v155 = 1026;
            v156 = v12;
            v157 = 2114;
            v158 = v104;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Authorized Bundle Ids for %{public}@, overridden %{public, BOOL}d, %{public}@", v153, 0x1Cu);
            v13 = v6[317];
          }

          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *v153 = 138543874;
            v154 = v8;
            v155 = 1026;
            v156 = v12;
            v157 = 2114;
            v158 = v101;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Deauthorized Bundle Ids for %{public}@, overridden %{public, BOOL}d, %{public}@", v153, 0x1Cu);
          }

          v14 = [obj objectForKeyedSubscript:v8];
          v151 = 0u;
          v152 = 0u;
          memset(v150, 0, sizeof(v150));
          v15 = [v14 countByEnumeratingWithState:v150 objects:v166 count:16];
          if (v15)
          {
            v16 = **&v150[16];
            if (v12)
            {
              v17 = &__kCFBooleanTrue;
            }

            else
            {
              v17 = &__kCFBooleanFalse;
            }

            do
            {
              for (i = 0; i != v15; i = i + 1)
              {
                if (**&v150[16] != v16)
                {
                  objc_enumerationMutation(v14);
                }

                [v135(v134 @"com.apple.sensorkit.dummy-bundle-id")];
              }

              v15 = [v14 countByEnumeratingWithState:v150 objects:v166 count:16];
            }

            while (v15);
          }

          v132 = 0u;
          v133 = 0u;
          v130 = 0u;
          v131 = 0u;
          v6 = &off_100071000;
          v19 = [v104 countByEnumeratingWithState:&v130 objects:&v162 count:16];
          if (v19)
          {
            v107 = *v131;
            do
            {
              v20 = 0;
              v111 = v19;
              do
              {
                if (*v131 != v107)
                {
                  objc_enumerationMutation(v104);
                }

                v21 = *(*(&v130 + 1) + 8 * v20);
                v126 = 0u;
                v127 = 0u;
                v128 = 0u;
                v129 = 0u;
                v22 = [v14 countByEnumeratingWithState:&v126 objects:&v146 count:16];
                if (v22)
                {
                  v23 = *v127;
                  do
                  {
                    for (j = 0; j != v22; j = j + 1)
                    {
                      if (*v127 != v23)
                      {
                        objc_enumerationMutation(v14);
                      }

                      [v135(v134 v21)];
                    }

                    v22 = [v14 countByEnumeratingWithState:&v126 objects:&v146 count:16];
                  }

                  while (v22);
                }

                v20 = v20 + 1;
                v6 = &off_100071000;
              }

              while (v20 != v111);
              v19 = [v104 countByEnumeratingWithState:&v130 objects:&v162 count:16];
            }

            while (v19);
          }

          v124 = 0u;
          v125 = 0u;
          v122 = 0u;
          v123 = 0u;
          v25 = [v101 countByEnumeratingWithState:&v122 objects:&v142 count:16];
          if (v25)
          {
            v108 = *v123;
            do
            {
              v26 = 0;
              v112 = v25;
              do
              {
                if (*v123 != v108)
                {
                  objc_enumerationMutation(v101);
                }

                v27 = *(*(&v122 + 1) + 8 * v26);
                v118 = 0u;
                v119 = 0u;
                v120 = 0u;
                v121 = 0u;
                v28 = [v14 countByEnumeratingWithState:&v118 objects:&v138 count:16];
                if (v28)
                {
                  v29 = *v119;
                  do
                  {
                    for (k = 0; k != v28; k = k + 1)
                    {
                      if (*v119 != v29)
                      {
                        objc_enumerationMutation(v14);
                      }

                      [v135(v134 v27)];
                    }

                    v28 = [v14 countByEnumeratingWithState:&v118 objects:&v138 count:16];
                  }

                  while (v28);
                }

                v26 = v26 + 1;
                v6 = &off_100071000;
              }

              while (v26 != v112);
              v25 = [v101 countByEnumeratingWithState:&v122 objects:&v142 count:16];
            }

            while (v25);
          }

          objc_autoreleasePoolPop(context);
          v7 = v88;
          v99 = v99 + 1;
        }

        while (v99 != v90);
        v5 = [obj countByEnumeratingWithState:v159 objects:buf count:16];
      }

      while (v5);
    }

    v95 = +[NSDictionary dictionaryWithDictionary:](NSDictionary, "dictionaryWithDictionary:", [a1 readerAuthorizationValues]);
    [a1 setReaderAuthorizationValues:v100];
    v162 = 0u;
    v163 = 0u;
    v164 = 0u;
    v165 = 0u;
    v31 = [a1 readerAuthorizationValues];
    v32 = [v31 countByEnumeratingWithState:&v162 objects:buf count:16];
    if (v32)
    {
      v113 = v31;
      v33 = 0;
      v34 = *v163;
      v35 = a1;
      do
      {
        for (m = 0; m != v32; m = m + 1)
        {
          if (*v163 != v34)
          {
            objc_enumerationMutation(v113);
          }

          v37 = *(*(&v162 + 1) + 8 * m);
          v146 = 0u;
          v147 = 0u;
          v148 = 0u;
          v149 = 0u;
          v38 = [objc_msgSend(v35 "readerAuthorizationValues")];
          v39 = [v38 countByEnumeratingWithState:&v146 objects:v166 count:16];
          if (v39)
          {
            v40 = *v147;
            do
            {
              for (n = 0; n != v39; n = n + 1)
              {
                if (*v147 != v40)
                {
                  objc_enumerationMutation(v38);
                }

                if ([objc_msgSend(objc_msgSend(objc_msgSend(a1 "readerAuthorizationValues")])
                {
                  v33 = 1;
                  goto LABEL_65;
                }
              }

              v39 = [v38 countByEnumeratingWithState:&v146 objects:v166 count:16];
            }

            while (v39);
LABEL_65:
            v35 = a1;
          }
        }

        v32 = [v113 countByEnumeratingWithState:&v162 objects:buf count:16];
      }

      while (v32);
    }

    else
    {
      v33 = 0;
      v35 = a1;
    }

    [v35 setSensorKitActive:v33 & 1];
    v42 = a1;
    if (*(a1 + 12) == 1)
    {
      v43 = objc_alloc_init(NSMutableDictionary);
      v148 = 0u;
      v149 = 0u;
      v146 = 0u;
      v147 = 0u;
      v44 = [a1 readerAuthorizationValues];
      v45 = [v44 countByEnumeratingWithState:&v146 objects:buf count:16];
      if (v45)
      {
        v89 = *v147;
        v86 = v44;
        do
        {
          v46 = 0;
          v87 = v45;
          do
          {
            if (*v147 != v89)
            {
              objc_enumerationMutation(v86);
            }

            v47 = *(*(&v146 + 1) + 8 * v46);
            contexta = objc_autoreleasePoolPush();
            v48 = [*(a1 + 32) informationForBundleId:v47];
            v144 = 0u;
            v145 = 0u;
            v142 = 0u;
            v143 = 0u;
            v49 = v48;
            v50 = [v48 countByEnumeratingWithState:&v142 objects:v166 count:16];
            v51 = v49;
            v91 = v46;
            if (v50)
            {
              v102 = v49;
              v105 = *v143;
              do
              {
                v52 = 0;
                v109 = v50;
                do
                {
                  if (*v143 != v105)
                  {
                    objc_enumerationMutation(v51);
                  }

                  v54 = *(*(&v142 + 1) + 8 * v52);
                  v55 = [v54 objectForKeyedSubscript:kTCCInfoService];
                  v114 = v52;
                  if (v55)
                  {
                    v56 = [v54 objectForKeyedSubscript:kTCCInfoLastModified];
                    if (v56)
                    {
                      if (![v43 objectForKeyedSubscript:v47])
                      {
                        v57 = objc_alloc_init(NSMutableDictionary);
                        [v43 setObject:v57 forKeyedSubscript:v47];
                      }

                      v140 = 0u;
                      v141 = 0u;
                      v138 = 0u;
                      v139 = 0u;
                      v58 = [objc_msgSend(a1 "readerAuthorizationGroups")];
                      v59 = [v58 countByEnumeratingWithState:&v138 objects:&v162 count:16];
                      if (v59)
                      {
                        v60 = *v139;
                        do
                        {
                          for (ii = 0; ii != v59; ii = ii + 1)
                          {
                            if (*v139 != v60)
                            {
                              objc_enumerationMutation(v58);
                            }

                            v62 = *(*(&v138 + 1) + 8 * ii);
                            [v56 timeIntervalSinceReferenceDate];
                            [objc_msgSend(v43 objectForKeyedSubscript:{v47), "setObject:forKeyedSubscript:", +[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:"), v62}];
                          }

                          v59 = [v58 countByEnumeratingWithState:&v138 objects:&v162 count:16];
                        }

                        while (v59);
                      }
                    }

                    else
                    {
                      v63 = qword_1000719E8;
                      if (os_log_type_enabled(qword_1000719E8, OS_LOG_TYPE_ERROR))
                      {
                        *v159 = 138543618;
                        *&v159[4] = v47;
                        *&v159[12] = 2114;
                        *&v159[14] = v55;
                        _os_log_error_impl(&_mh_execute_header, v63, OS_LOG_TYPE_ERROR, "No last modified date for authorization of bundle %{public}@, service: %{public}@", v159, 0x16u);
                      }
                    }
                  }

                  else
                  {
                    v53 = qword_1000719E8;
                    if (os_log_type_enabled(qword_1000719E8, OS_LOG_TYPE_ERROR))
                    {
                      *v159 = 138543362;
                      *&v159[4] = v54;
                      _os_log_error_impl(&_mh_execute_header, v53, OS_LOG_TYPE_ERROR, "Couldn't find a TCC service in the TCC access dictionary %{public}@", v159, 0xCu);
                    }
                  }

                  v52 = v114 + 1;
                  v51 = v102;
                }

                while (v114 + 1 != v109);
                v50 = [v102 countByEnumeratingWithState:&v142 objects:v166 count:16];
                v51 = v102;
              }

              while (v50);
            }

            objc_autoreleasePoolPop(contexta);
            v46 = v91 + 1;
          }

          while ((v91 + 1) != v87);
          v45 = [v86 countByEnumeratingWithState:&v146 objects:buf count:16];
        }

        while (v45);
      }

      [a1 setReaderLastModifiedAuthorizationTimes:v43];

      v42 = a1;
    }

    v64 = *(v42 + 16);
    objc_sync_enter(v64);
    v65 = [*(v42 + 16) copy];
    objc_sync_exit(v64);
    sub_100016CAC(v42, v100, v95, v65);

    v66 = *(a1 + 24);
    objc_sync_enter(v66);
    v67 = &off_100071000;
    obja = [*(a1 + 24) copy];
    objc_sync_exit(v66);
    v68 = +[NSMutableDictionary dictionary];
    *v159 = _NSConcreteStackBlock;
    *&v159[8] = 3221225472;
    *&v159[16] = sub_100018284;
    *&v159[24] = &unk_100060F20;
    *&v160 = v68;
    v69 = [a1 writerAuthorizationGroups];
    v148 = 0u;
    v149 = 0u;
    v146 = 0u;
    v147 = 0u;
    v70 = [v69 countByEnumeratingWithState:&v146 objects:buf count:16];
    v96 = v68;
    if (v70)
    {
      v103 = *v147;
      v110 = v69;
      do
      {
        v71 = 0;
        v106 = v70;
        do
        {
          if (*v147 != v103)
          {
            objc_enumerationMutation(v110);
          }

          v72 = *(*(&v146 + 1) + 8 * v71);
          v115 = objc_autoreleasePoolPush();
          v73 = [*(a1 + 32) bundleIdentifiersForService:v72];
          v74 = [*(a1 + 32) bundleIdentifiersDisabledForService:v72];
          v75 = v74;
          v76 = v67[317];
          if (v73)
          {
            v77 = v74 == 0;
          }

          else
          {
            v77 = 1;
          }

          if (v77 && os_log_type_enabled(v67[317], OS_LOG_TYPE_INFO))
          {
            *v150 = 138543362;
            *&v150[4] = v72;
            _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_INFO, "Could not retrieve authorization information for TCC service %{public}@", v150, 0xCu);
            v76 = v67[317];
          }

          if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
          {
            *v150 = 138543618;
            *&v150[4] = v72;
            *&v150[12] = 2114;
            *&v150[14] = v73;
            _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_DEFAULT, "Authorized Bundle Ids for %{public}@, %{public}@", v150, 0x16u);
            v76 = v67[317];
          }

          if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
          {
            *v150 = 138543618;
            *&v150[4] = v72;
            *&v150[12] = 2114;
            *&v150[14] = v75;
            _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_DEFAULT, "Deauthorized Bundle Ids for %{public}@, %{public}@", v150, 0x16u);
          }

          v78 = [v110 objectForKeyedSubscript:v72];
          v144 = 0u;
          v145 = 0u;
          v142 = 0u;
          v143 = 0u;
          v79 = [v73 countByEnumeratingWithState:&v142 objects:v166 count:16];
          if (v79)
          {
            v80 = *v143;
            do
            {
              for (jj = 0; jj != v79; jj = jj + 1)
              {
                if (*v143 != v80)
                {
                  objc_enumerationMutation(v73);
                }

                [(*&v159[16])(v159 *(*(&v142 + 1) + 8 * jj))];
              }

              v79 = [v73 countByEnumeratingWithState:&v142 objects:v166 count:16];
            }

            while (v79);
          }

          v140 = 0u;
          v141 = 0u;
          v138 = 0u;
          v139 = 0u;
          v82 = [v75 countByEnumeratingWithState:&v138 objects:&v162 count:16];
          if (v82)
          {
            v83 = *v139;
            do
            {
              for (kk = 0; kk != v82; kk = kk + 1)
              {
                if (*v139 != v83)
                {
                  objc_enumerationMutation(v75);
                }

                [(*&v159[16])(v159 *(*(&v138 + 1) + 8 * kk))];
              }

              v82 = [v75 countByEnumeratingWithState:&v138 objects:&v162 count:16];
            }

            while (v82);
          }

          objc_autoreleasePoolPop(v115);
          v67 = &off_100071000;
          v71 = v71 + 1;
        }

        while (v71 != v106);
        v70 = [v110 countByEnumeratingWithState:&v146 objects:buf count:16];
      }

      while (v70);
    }

    v85 = +[NSDictionary dictionaryWithDictionary:](NSDictionary, "dictionaryWithDictionary:", [a1 writerAuthorizationValues]);
    [a1 setWriterAuthorizationValues:v96];
    sub_100016CAC(a1, v96, v85, obja);

    os_activity_scope_leave(&state);
  }
}