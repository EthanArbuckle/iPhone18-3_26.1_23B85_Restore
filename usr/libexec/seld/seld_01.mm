void sub_100027F08(uint64_t a1, void *a2)
{
  v3 = a2;
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v5 = Logger;
    Class = object_getClass(*(a1 + 32));
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(*(a1 + 32));
    Name = sel_getName(*(a1 + 56));
    v10 = [*(a1 + 40) NF_clientName];
    v11 = 45;
    if (isMetaClass)
    {
      v11 = 43;
    }

    v5(6, "%c[%{public}s %{public}s]:%i Processing %{public}@", v11, ClassName, Name, 1792, v10);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v12 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = object_getClass(*(a1 + 32));
    if (class_isMetaClass(v13))
    {
      v14 = 43;
    }

    else
    {
      v14 = 45;
    }

    v15 = object_getClassName(*(a1 + 32));
    v16 = sel_getName(*(a1 + 56));
    v17 = [*(a1 + 40) NF_clientName];
    *buf = 67110146;
    v40 = v14;
    v41 = 2082;
    v42 = v15;
    v43 = 2082;
    v44 = v16;
    v45 = 1024;
    v46 = 1792;
    v47 = 2114;
    v48 = v17;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Processing %{public}@", buf, 0x2Cu);
  }

  if (v3)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v18 = *(a1 + 32);
    v19 = *(a1 + 48);
    if (v18)
    {
      v20 = v18;
      objc_sync_enter(v20);
      v21 = v20[12];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v20[12] abort:1];
LABEL_25:
        objc_sync_exit(v20);

        v19[2](v19, 0);
      }

      else
      {
        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        v22 = sub_100033310();
        v23 = sub_100038884(v22);

        v24 = [v23 countByEnumeratingWithState:&v33 objects:buf count:16];
        if (v24)
        {
          v25 = v24;
          v26 = *v34;
          while (2)
          {
            for (i = 0; i != v25; i = i + 1)
            {
              if (*v34 != v26)
              {
                objc_enumerationMutation(v23);
              }

              v28 = *(*(&v33 + 1) + 8 * i);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                [v28 setStep:4];
                [v28 save];

                goto LABEL_25;
              }
            }

            v25 = [v23 countByEnumeratingWithState:&v33 objects:buf count:16];
            if (v25)
            {
              continue;
            }

            break;
          }
        }

        objc_sync_exit(v20);
        v29 = [NSError alloc];
        v30 = [NSString stringWithUTF8String:"seld"];
        v37 = NSLocalizedDescriptionKey;
        v38 = @"No pending ReaderSession";
        v31 = [NSDictionary dictionaryWithObjects:&v38 forKeys:&v37 count:1];
        v32 = [v29 initWithDomain:v30 code:12 userInfo:v31];
        (v19)[2](v19, v32);
      }
    }
  }
}

void sub_1000282F4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v8 = Logger;
      Class = object_getClass(*(a1 + 32));
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(*(a1 + 32));
      Name = sel_getName(*(a1 + 48));
      v11 = 45;
      if (isMetaClass)
      {
        v11 = 43;
      }

      v8(3, "%c[%{public}s %{public}s]:%i %{public}@", v11, ClassName, Name, 1808, v6);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v12 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v13))
      {
        v14 = 43;
      }

      else
      {
        v14 = 45;
      }

      v15 = object_getClassName(*(a1 + 32));
      v16 = sel_getName(*(a1 + 48));
      *buf = 67110146;
      v50 = v14;
      v51 = 2082;
      v52 = v15;
      v53 = 2082;
      v54 = v16;
      v55 = 1024;
      v56 = 1808;
      v57 = 2114;
      v58 = v6;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i %{public}@", buf, 0x2Cu);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v17 = sub_100033310();
    v18 = sub_100037C1C(v17, &stru_100055408, v5);

    if (v18)
    {
      v19 = [[NSMutableDictionary alloc] initWithDictionary:v18];
      v20 = [*(*(a1 + 32) + 48) publicToken];
      if (v20)
      {
        v21 = v20;
        v22 = [v20 NF_asHexString];
        [v19 setObject:v22 forKey:@"APNTokenUpdateInfo"];

        (*(*(a1 + 40) + 16))();
      }

      else
      {
        v37 = *(a1 + 40);
        v38 = [NSError alloc];
        v39 = [NSString stringWithUTF8String:"seld"];
        v45 = NSLocalizedDescriptionKey;
        v46 = @"Failed getting token info";
        v40 = [NSDictionary dictionaryWithObjects:&v46 forKeys:&v45 count:1];
        v41 = [v38 initWithDomain:v39 code:40 userInfo:v40];
        (*(v37 + 16))(v37, 0, v41);

        v21 = 0;
      }
    }

    else
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v23 = NFLogGetLogger();
      if (v23)
      {
        v24 = v23;
        v25 = object_getClass(*(a1 + 32));
        v26 = class_isMetaClass(v25);
        v27 = object_getClassName(*(a1 + 32));
        v44 = sel_getName(*(a1 + 48));
        v28 = 45;
        if (v26)
        {
          v28 = 43;
        }

        v24(3, "%c[%{public}s %{public}s]:%i Failed getting SELD info", v28, v27, v44, 1815);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v29 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v30 = object_getClass(*(a1 + 32));
        if (class_isMetaClass(v30))
        {
          v31 = 43;
        }

        else
        {
          v31 = 45;
        }

        v32 = object_getClassName(*(a1 + 32));
        v33 = sel_getName(*(a1 + 48));
        *buf = 67109890;
        v50 = v31;
        v51 = 2082;
        v52 = v32;
        v53 = 2082;
        v54 = v33;
        v55 = 1024;
        v56 = 1815;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed getting SELD info", buf, 0x22u);
      }

      v34 = *(a1 + 40);
      v35 = [NSError alloc];
      v19 = [NSString stringWithUTF8String:"seld"];
      v47 = NSLocalizedDescriptionKey;
      v48 = @"Failed getting SELD info";
      v21 = [NSDictionary dictionaryWithObjects:&v48 forKeys:&v47 count:1];
      v36 = [v35 initWithDomain:v19 code:12 userInfo:v21];
      (*(v34 + 16))(v34, 0, v36);
    }

    [v5 endSession];
  }
}

void sub_100028A48(uint64_t a1, void *a2)
{
  v3 = a2;
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v5 = Logger;
    Class = object_getClass(*(a1 + 32));
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(*(a1 + 32));
    Name = sel_getName(*(a1 + 56));
    v10 = [*(a1 + 40) NF_clientName];
    v11 = 45;
    if (isMetaClass)
    {
      v11 = 43;
    }

    v5(6, "%c[%{public}s %{public}s]:%i Processing %{public}@", v11, ClassName, Name, 1839, v10);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v12 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = object_getClass(*(a1 + 32));
    if (class_isMetaClass(v13))
    {
      v14 = 43;
    }

    else
    {
      v14 = 45;
    }

    v15 = object_getClassName(*(a1 + 32));
    v16 = sel_getName(*(a1 + 56));
    v17 = [*(a1 + 40) NF_clientName];
    *buf = 67110146;
    *&buf[4] = v14;
    *v23 = 2082;
    *&v23[2] = v15;
    *&v23[10] = 2082;
    *&v23[12] = v16;
    *&v23[20] = 1024;
    *&v23[22] = 1839;
    *&v23[26] = 2114;
    *&v23[28] = v17;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Processing %{public}@", buf, 0x2Cu);
  }

  if (v3)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v18 = *(a1 + 32);
    v19 = *(a1 + 48);
    if (v18)
    {
      v20 = +[NFHardwareManager sharedHardwareManager];
      *buf = _NSConcreteStackBlock;
      *v23 = 3221225472;
      *&v23[8] = sub_1000282F4;
      *&v23[16] = &unk_100054C98;
      *&v23[24] = v18;
      v24 = "_getSELDInfoForBrokerWithCompletion:";
      *&v23[32] = v19;
      v21 = [v20 startSecureElementManagerSession:buf];
    }
  }
}

void sub_100028CE0(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a1)
  {
    v29 = 0;
    v6 = sub_10001D610(a1, 0, &v29);
    v7 = v29;
    v8 = v7;
    if (v7)
    {
      if ([v7 code] == 5)
      {
        v9 = sub_100016628();
        sub_10001B3A4(v9);

        sub_10001B350(a1);
      }
    }

    else if (v6)
    {
      if (a2 == 8 || a2 == 4)
      {
        v28 = 0;
        [v6 deleteAllAppletsOfType:a2 queueConnection:0 error:&v28];
        v10 = v28;
        v11 = [NSString alloc];
        v12 = "SP";
        if (a2 == 4)
        {
          v12 = "wallet";
        }

        v13 = [v11 initWithFormat:@"Delete all %s applets", v12];
      }

      else
      {
        v27 = 0;
        [v6 deleteAllApplets:0 error:&v27];
        v10 = v27;
        v13 = @"Delete all applets";
      }

      v24 = sub_10001DDC0(a1, v6, v13);
      [v6 endSession];
      if (!v24 && v10)
      {
        v24 = v10;
      }

      v5[2](v5, v24);

      goto LABEL_26;
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v15 = Logger;
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
      Name = sel_getName("_sync_deleteAllAppletsAndCleanupWithTSM:completion:");
      v18 = 45;
      if (isMetaClass)
      {
        v18 = 43;
      }

      v15(3, "%c[%{public}s %{public}s]:%i Unable to start session: %{public}@", v18, ClassName, Name, 1865, v8);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v19 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = object_getClass(a1);
      if (class_isMetaClass(v20))
      {
        v21 = 43;
      }

      else
      {
        v21 = 45;
      }

      v22 = object_getClassName(a1);
      v23 = sel_getName("_sync_deleteAllAppletsAndCleanupWithTSM:completion:");
      *buf = 67110146;
      v31 = v21;
      v32 = 2082;
      v33 = v22;
      v34 = 2082;
      v35 = v23;
      v36 = 1024;
      v37 = 1865;
      v38 = 2114;
      v39 = v8;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Unable to start session: %{public}@", buf, 0x2Cu);
    }

    v5[2](v5, v8);
LABEL_26:
  }
}

void sub_100029274(uint64_t a1, void *a2)
{
  v3 = a2;
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v5 = Logger;
    Class = object_getClass(*(a1 + 32));
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(*(a1 + 32));
    Name = sel_getName(*(a1 + 56));
    v10 = [*(a1 + 40) NF_clientName];
    v11 = 45;
    if (isMetaClass)
    {
      v11 = 43;
    }

    v5(6, "%c[%{public}s %{public}s]:%i Processing %{public}@", v11, ClassName, Name, 1898, v10);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v12 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = object_getClass(*(a1 + 32));
    if (class_isMetaClass(v13))
    {
      v14 = 43;
    }

    else
    {
      v14 = 45;
    }

    v15 = object_getClassName(*(a1 + 32));
    v16 = sel_getName(*(a1 + 56));
    v17 = [*(a1 + 40) NF_clientName];
    *buf = 67110146;
    v22 = v14;
    v23 = 2082;
    v24 = v15;
    v25 = 2082;
    v26 = v16;
    v27 = 1024;
    v28 = 1898;
    v29 = 2114;
    v30 = v17;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Processing %{public}@", buf, 0x2Cu);
  }

  if (v3)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v18 = *(a1 + 32);
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000294CC;
    v19[3] = &unk_100054CC0;
    v19[4] = v18;
    v20 = *(a1 + 48);
    sub_1000198F4(v18, v19);
  }
}

void sub_100029748(uint64_t a1, void *a2)
{
  v3 = a2;
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v5 = Logger;
    Class = object_getClass(*(a1 + 32));
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(*(a1 + 32));
    Name = sel_getName(*(a1 + 56));
    v10 = [*(a1 + 40) NF_clientName];
    v11 = 45;
    if (isMetaClass)
    {
      v11 = 43;
    }

    v5(6, "%c[%{public}s %{public}s]:%i Processing %{public}@", v11, ClassName, Name, 1916, v10);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v12 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = object_getClass(*(a1 + 32));
    if (class_isMetaClass(v13))
    {
      v14 = 43;
    }

    else
    {
      v14 = 45;
    }

    v15 = object_getClassName(*(a1 + 32));
    v16 = sel_getName(*(a1 + 56));
    v17 = [*(a1 + 40) NF_clientName];
    *buf = 67110146;
    v22 = v14;
    v23 = 2082;
    v24 = v15;
    v25 = 2082;
    v26 = v16;
    v27 = 1024;
    v28 = 1916;
    v29 = 2114;
    v30 = v17;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Processing %{public}@", buf, 0x2Cu);
  }

  if (v3)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v18 = *(a1 + 32);
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000299A0;
    v19[3] = &unk_100054CC0;
    v19[4] = v18;
    v20 = *(a1 + 48);
    sub_1000198F4(v18, v19);
  }
}

void sub_100029C1C(uint64_t a1, void *a2)
{
  v3 = a2;
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v5 = Logger;
    Class = object_getClass(*(a1 + 32));
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(*(a1 + 32));
    Name = sel_getName(*(a1 + 56));
    v10 = [*(a1 + 40) NF_clientName];
    v11 = 45;
    if (isMetaClass)
    {
      v11 = 43;
    }

    v5(6, "%c[%{public}s %{public}s]:%i Processing %{public}@", v11, ClassName, Name, 1935, v10);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v12 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = object_getClass(*(a1 + 32));
    if (class_isMetaClass(v13))
    {
      v14 = 43;
    }

    else
    {
      v14 = 45;
    }

    v15 = object_getClassName(*(a1 + 32));
    v16 = sel_getName(*(a1 + 56));
    v17 = [*(a1 + 40) NF_clientName];
    *buf = 67110146;
    v22 = v14;
    v23 = 2082;
    v24 = v15;
    v25 = 2082;
    v26 = v16;
    v27 = 1024;
    v28 = 1935;
    v29 = 2114;
    v30 = v17;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Processing %{public}@", buf, 0x2Cu);
  }

  if (v3)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v18 = *(a1 + 32);
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100029E74;
    v19[3] = &unk_100054CC0;
    v19[4] = v18;
    v20 = *(a1 + 48);
    sub_1000198F4(v18, v19);
  }
}

void sub_10002A214(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = *(a1 + 48);
  v2 = *(a1 + 56);
  v4 = *(a1 + 40);
  v5 = v2;
  if (v1)
  {
    v27 = 0;
    v6 = sub_10001D610(v1, v3, &v27);
    v7 = v27;
    v8 = v7;
    if (v7)
    {
      if ([v7 code] == 5)
      {
        v9 = sub_100016628();
        sub_10001B3A4(v9);

        v10 = sub_100016628();
        sub_10001B350(v10);
      }
    }

    else if (v6)
    {
      [v6 deleteApplets:v4 queueServerConnection:0];
      v11 = [NSString alloc];
      v12 = [v4 description];
      v13 = [v11 initWithFormat:@"Delete %@", v12];

      v14 = sub_10001DDC0(v1, v6, v13);
      [v6 endSession];
      v5[2](v5, v14);

LABEL_17:
      goto LABEL_18;
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v16 = Logger;
      Class = object_getClass(v1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(v1);
      Name = sel_getName("_sync_deleteAppletsAndCleanupWithTSM:parentSessionToken:completion:");
      v19 = 45;
      if (isMetaClass)
      {
        v19 = 43;
      }

      v16(3, "%c[%{public}s %{public}s]:%i Unable to start session: %{public}@", v19, ClassName, Name, 1965, v8);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v20 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = object_getClass(v1);
      if (class_isMetaClass(v21))
      {
        v22 = 43;
      }

      else
      {
        v22 = 45;
      }

      v23 = object_getClassName(v1);
      v24 = sel_getName("_sync_deleteAppletsAndCleanupWithTSM:parentSessionToken:completion:");
      *buf = 67110146;
      v29 = v22;
      v30 = 2082;
      v31 = v23;
      v32 = 2082;
      v33 = v24;
      v34 = 1024;
      v35 = 1965;
      v36 = 2114;
      v37 = v8;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Unable to start session: %{public}@", buf, 0x2Cu);
    }

    v5[2](v5, v8);
    goto LABEL_17;
  }

LABEL_18:
}

void sub_10002A764(uint64_t a1, void *a2)
{
  v3 = a2;
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v5 = Logger;
    Class = object_getClass(*(a1 + 32));
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(*(a1 + 32));
    Name = sel_getName(*(a1 + 56));
    v10 = [*(a1 + 40) NF_clientName];
    v11 = 45;
    if (isMetaClass)
    {
      v11 = 43;
    }

    v5(6, "%c[%{public}s %{public}s]:%i Processing %{public}@", v11, ClassName, Name, 2023, v10);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v12 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = object_getClass(*(a1 + 32));
    if (class_isMetaClass(v13))
    {
      v14 = 43;
    }

    else
    {
      v14 = 45;
    }

    v15 = object_getClassName(*(a1 + 32));
    v16 = sel_getName(*(a1 + 56));
    v17 = [*(a1 + 40) NF_clientName];
    *buf = 67110146;
    *&buf[4] = v14;
    v26 = 2082;
    v27 = v15;
    v28 = 2082;
    v29 = v16;
    v30 = 1024;
    v31 = 2023;
    v32 = 2114;
    v33 = v17;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Processing %{public}@", buf, 0x2Cu);
  }

  if (v3)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v18 = *(a1 + 32);
    v19 = *(a1 + 48);
    if (v18)
    {
      v20 = [*(v18 + 48) publicToken];
      if (v20)
      {
        v19[2](v19, v20, 0);
      }

      else
      {
        v21 = [NSError alloc];
        v22 = [NSString stringWithUTF8String:"seld"];
        v34 = NSLocalizedDescriptionKey;
        *buf = @"Missing default token";
        v23 = [NSDictionary dictionaryWithObjects:buf forKeys:&v34 count:1];
        v24 = [v21 initWithDomain:v22 code:40 userInfo:v23];
        (v19)[2](v19, 0, v24);
      }
    }
  }
}

void sub_10002AA40(uint64_t a1)
{
  *(*(a1 + 32) + 9) = 1;
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  v4 = sub_100018770(v2, @"seld");
  sub_100037160(v3, v4);

  v5 = *(a1 + 32);

  sub_100015830(v5);
}

void sub_10002AAB4(uint64_t a1)
{
  *(*(a1 + 32) + 9) = 0;
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  v4 = sub_100018770(v2, @"seld");
  sub_100037160(v3, v4);

  v5 = *(a1 + 32);

  sub_100015830(v5);
}

void sub_10002AB24(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((*(v2 + 10) & 1) == 0)
  {
    *(v2 + 10) = 1;
    v4 = *(a1 + 32);
    v5 = *(v4 + 24);
    v6 = sub_100018770(v4, @"seld");
    sub_100037160(v5, v6);

    v7 = *(a1 + 32);

    sub_100015830(v7);
  }
}

id *sub_10002BD50(uint64_t a1)
{
  [*(a1 + 32) timeIntervalSinceNow];
  v3 = v2;
  (*(*(a1 + 48) + 16))();
  [*(a1 + 32) timeIntervalSinceNow];
  if (v3 < -300.0 || v4 < -300.0)
  {
    v5 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      v7 = +[NSThread callStackSymbols];
      v8 = 136315650;
      v9 = "[_NFRemoteAdminManager _dispatchOnSessionQueue:]_block_invoke";
      v10 = 1024;
      v11 = v3 < -300.0;
      v12 = 2112;
      v13 = v7;
      _os_log_fault_impl(&_mh_execute_header, v5, OS_LOG_TYPE_FAULT, "%s: beforeBlockExec=%d\n%@", &v8, 0x1Cu);
    }
  }

  sub_10001B3A4(*(a1 + 40));
  return sub_100015D10(*(a1 + 40));
}

void sub_10002BE98(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    if (*(v1 + 136) == 1)
    {
      *(v1 + 136) = 0;
      sub_100015D10(v1);
    }

    atomic_store(0, (v1 + 154));
    if (*(v1 + 8) == 1)
    {
      v2 = +[NFHardwareManager sharedHardwareManager];
      v3 = [v2 areSessionsAllowed];

      if (v3)
      {
        if (!*(v1 + 216))
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          Logger = NFLogGetLogger();
          if (Logger)
          {
            v10 = Logger;
            Class = object_getClass(v1);
            isMetaClass = class_isMetaClass(Class);
            ClassName = object_getClassName(v1);
            Name = sel_getName("_startNextSession");
            v14 = 45;
            if (isMetaClass)
            {
              v14 = 43;
            }

            v10(5, "%c[%{public}s %{public}s]:%i Network is not available.  A session will not be started.", v14, ClassName, Name, 2360);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v15 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            v16 = object_getClass(v1);
            if (class_isMetaClass(v16))
            {
              v17 = 43;
            }

            else
            {
              v17 = 45;
            }

            *buf = 67109890;
            v172 = v17;
            v173 = 2082;
            v174 = object_getClassName(v1);
            v175 = 2082;
            v176 = sel_getName("_startNextSession");
            v177 = 1024;
            v178 = 2360;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Network is not available.  A session will not be started.", buf, 0x22u);
          }

          goto LABEL_179;
        }

        v4 = sub_10001A730(v1);
        v5 = &selRef_didChangeRadioState_;
        v6 = &selRef_didChangeRadioState_;
        if (byte_10005BA78)
        {
          v7 = 0;
          v8 = 0.0;
          goto LABEL_126;
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v18 = NFLogGetLogger();
        if (v18)
        {
          v19 = v18;
          v20 = object_getClass(v1);
          v21 = class_isMetaClass(v20);
          v22 = object_getClassName(v1);
          v156 = sel_getName("_startNextSession");
          v23 = 45;
          if (v21)
          {
            v23 = 43;
          }

          v19(6, "%c[%{public}s %{public}s]:%i Perform OS update system check", v23, v22, v156, 2376);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v24 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          v25 = object_getClass(v1);
          if (class_isMetaClass(v25))
          {
            v26 = 43;
          }

          else
          {
            v26 = 45;
          }

          *buf = 67109890;
          v172 = v26;
          v173 = 2082;
          v174 = object_getClassName(v1);
          v175 = 2082;
          v176 = sel_getName("_startNextSession");
          v177 = 1024;
          v178 = 2376;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Perform OS update system check", buf, 0x22u);
        }

        v27 = +[NFHardwareManager sharedHardwareManager];
        [v27 refreshSecureElementsWithError:0];

        v28 = sub_100033310();
        v29 = sub_1000368E4(v28);

        if (!v29)
        {
          v7 = 0;
          v8 = 0.0;
LABEL_125:

LABEL_126:
          v110 = *(v6 + 2736);
          if (v4)
          {
            if (*(v6 + 2736))
            {
              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v111 = NFLogGetLogger();
              if (v111)
              {
                v112 = v111;
                v113 = object_getClass(v1);
                v114 = class_isMetaClass(v113);
                v154 = object_getClassName(v1);
                v163 = sel_getName("_startNextSession");
                v115 = 45;
                if (v114)
                {
                  v115 = 43;
                }

                v112(6, "%c[%{public}s %{public}s]:%i [TSM] NextState=%@", v115, v154, v163, 2432, v4);
              }

              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v116 = NFSharedLogGetLogger();
              if (os_log_type_enabled(v116, OS_LOG_TYPE_DEFAULT))
              {
                v117 = object_getClass(v1);
                if (class_isMetaClass(v117))
                {
                  v118 = 43;
                }

                else
                {
                  v118 = 45;
                }

                v119 = object_getClassName(v1);
                v120 = sel_getName("_startNextSession");
                *buf = 67110146;
                v172 = v118;
                v173 = 2082;
                v174 = v119;
                v175 = 2082;
                v176 = v120;
                v177 = 1024;
                v178 = 2432;
                v179 = 2112;
                v180 = *&v4;
                _os_log_impl(&_mh_execute_header, v116, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i [TSM] NextState=%@", buf, 0x2Cu);
              }
            }

            if ([v4 pendingImmediateRetry])
            {
              goto LABEL_152;
            }

            v121 = [v4 retryInterval];
            v122 = v121;
            v123 = v121 ? *(v121 + 16) : 0;
            v124 = v123;
            [v124 timeIntervalSinceNow];
            v126 = v125;

            if (v126 <= 0.0)
            {
LABEL_152:
              [v4 refreshRetryInterval];
              sub_10001AB8C(v1, "com.apple.seld.processing", 120.0);
              v15 = sub_10001E43C(v1, v4, v7, 0, 0);
              sub_100018DA4(v1, "com.apple.seld.processing");
              if (v15)
              {
                if ([v15 code]== 2)
                {
                  *(v1 + 136) = 1;
                  sub_10001549C(v1);
                }

                if (v7)
                {
                  sub_100018DA4(v1, "com.apple.seld.osupdate");
                  *(v5 + 2680) = 0;
                  v138 = 86400.0;
                  if (v8 != 0.0)
                  {
                    v138 = v8;
                  }

                  sub_10001AB8C(v1, "com.apple.seld.osupdate", v138);
                  *(v5 + 2680) = 1;
                }

                if ([v15 code]== 1 || [v15 code]== 2 || [v15 code]== 5)
                {
                  goto LABEL_178;
                }
              }

              else if (v7)
              {
                sub_100018DA4(v1, "com.apple.seld.osupdate");
                *(v5 + 2680) = 0;
              }

              sub_100015830(v1);
LABEL_178:

LABEL_179:
              return;
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v127 = NFLogGetLogger();
            if (v127)
            {
              v128 = v127;
              v129 = object_getClass(v1);
              v130 = class_isMetaClass(v129);
              v131 = object_getClassName(v1);
              v164 = sel_getName("_startNextSession");
              v132 = 45;
              if (v130)
              {
                v132 = 43;
              }

              v128(6, "%c[%{public}s %{public}s]:%i Handling internal retry delay of %f seconds", v132, v131, v164, 2439, *&v126);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v133 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v133, OS_LOG_TYPE_DEFAULT))
            {
              v134 = object_getClass(v1);
              if (class_isMetaClass(v134))
              {
                v135 = 43;
              }

              else
              {
                v135 = 45;
              }

              v136 = object_getClassName(v1);
              v137 = sel_getName("_startNextSession");
              *buf = 67110146;
              v172 = v135;
              v173 = 2082;
              v174 = v136;
              v175 = 2082;
              v176 = v137;
              v177 = 1024;
              v178 = 2439;
              v179 = 2048;
              v180 = v126;
              _os_log_impl(&_mh_execute_header, v133, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Handling internal retry delay of %f seconds", buf, 0x2Cu);
            }

            sub_10001B070(v1, v4);
          }

          else if (*(v6 + 2736))
          {
            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v139 = NFLogGetLogger();
            if (v139)
            {
              v140 = v139;
              v141 = object_getClass(v1);
              v142 = class_isMetaClass(v141);
              v143 = object_getClassName(v1);
              v165 = sel_getName("_startNextSession");
              v144 = 45;
              if (v142)
              {
                v144 = 43;
              }

              v140(6, "%c[%{public}s %{public}s]:%i [TSM] No remaining sessions.", v144, v143, v165, 2428);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v145 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v145, OS_LOG_TYPE_DEFAULT))
            {
              v146 = object_getClass(v1);
              if (class_isMetaClass(v146))
              {
                v147 = 43;
              }

              else
              {
                v147 = 45;
              }

              v148 = object_getClassName(v1);
              v149 = sel_getName("_startNextSession");
              *buf = 67109890;
              v172 = v147;
              v173 = 2082;
              v174 = v148;
              v175 = 2082;
              v176 = v149;
              v177 = 1024;
              v178 = 2428;
              _os_log_impl(&_mh_execute_header, v145, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i [TSM] No remaining sessions.", buf, 0x22u);
            }
          }

          v15 = 0;
          goto LABEL_178;
        }

        v30 = sub_100033310();
        v31 = sub_100036D14(v30);

        if (v31)
        {
          v170 = 0;
          v32 = [NFSecureElement embeddedSecureElementWithError:&v170];
          v33 = v170;

          v168 = v33;
          if (v32)
          {
            v34 = 1;
            goto LABEL_44;
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v35 = NFLogGetLogger();
          if (v35)
          {
            v36 = v35;
            v37 = object_getClass(v1);
            v38 = class_isMetaClass(v37);
            v150 = object_getClassName(v1);
            v157 = sel_getName("_startNextSession");
            v39 = 45;
            if (v38)
            {
              v39 = 43;
            }

            v36(4, "%c[%{public}s %{public}s]:%i SE not present but JCOP update info available - %{public}@", v39, v150, v157, 2384, v33);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v40 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
          {
            v41 = object_getClass(v1);
            if (class_isMetaClass(v41))
            {
              v42 = 43;
            }

            else
            {
              v42 = 45;
            }

            v43 = object_getClassName(v1);
            v44 = sel_getName("_startNextSession");
            *buf = 67110146;
            v172 = v42;
            v173 = 2082;
            v174 = v43;
            v175 = 2082;
            v176 = v44;
            v177 = 1024;
            v178 = 2384;
            v179 = 2114;
            v180 = *&v33;
            _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i SE not present but JCOP update info available - %{public}@", buf, 0x2Cu);
          }
        }

        else
        {
          v168 = 0;
        }

        v34 = 0;
LABEL_44:
        v45 = sub_100033310();
        v46 = sub_10003701C(v45);

        v47 = *(v1 + 9);
        v169 = *(v1 + 10);
        v48 = [NFSecureElement embeddedSecureElementWithError:0];
        v49 = [v48 info];

        if ([v49 migrationState] == 1)
        {
          if (v46)
          {
            v50 = 1;
          }

          else
          {
            v50 = v34;
          }

          v6 = &selRef_didChangeRadioState_;
          if (v50 & 1) != 0 || (v47 & 1) != 0 || (v169)
          {
LABEL_72:
            if (v34 && *(v6 + 2736) == 1)
            {
              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v64 = NFLogGetLogger();
              if (v64)
              {
                v65 = v64;
                v66 = object_getClass(v1);
                v67 = class_isMetaClass(v66);
                v68 = object_getClassName(v1);
                v159 = sel_getName("_startNextSession");
                v57 = !v67;
                v6 = &selRef_didChangeRadioState_;
                v69 = 45;
                if (!v57)
                {
                  v69 = 43;
                }

                v65(6, "%c[%{public}s %{public}s]:%i [TSM] Reporting SE version change to TSM", v69, v68, v159, 2405);
              }

              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v70 = NFSharedLogGetLogger();
              if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
              {
                v71 = object_getClass(v1);
                if (class_isMetaClass(v71))
                {
                  v72 = 43;
                }

                else
                {
                  v72 = 45;
                }

                v73 = object_getClassName(v1);
                v74 = sel_getName("_startNextSession");
                *buf = 67109890;
                v172 = v72;
                v173 = 2082;
                v174 = v73;
                v6 = &selRef_didChangeRadioState_;
                v175 = 2082;
                v176 = v74;
                v177 = 1024;
                v178 = 2405;
                _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i [TSM] Reporting SE version change to TSM", buf, 0x22u);
              }
            }

            if (v46)
            {
              v8 = 1800.0;
              v5 = &selRef_didChangeRadioState_;
              if (*(v6 + 2736) == 1)
              {
                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v75 = NFLogGetLogger();
                if (v75)
                {
                  v76 = v75;
                  v77 = object_getClass(v1);
                  v78 = class_isMetaClass(v77);
                  v79 = object_getClassName(v1);
                  v160 = sel_getName("_startNextSession");
                  v80 = 45;
                  if (v78)
                  {
                    v80 = 43;
                  }

                  v151 = v79;
                  v6 = &selRef_didChangeRadioState_;
                  v76(6, "%c[%{public}s %{public}s]:%i [TSM] Reporting APN token change to TSM", v80, v151, v160, 2408);
                }

                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v81 = NFSharedLogGetLogger();
                if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
                {
                  v82 = object_getClass(v1);
                  if (class_isMetaClass(v82))
                  {
                    v83 = 43;
                  }

                  else
                  {
                    v83 = 45;
                  }

                  v84 = object_getClassName(v1);
                  v85 = sel_getName("_startNextSession");
                  *buf = 67109890;
                  v172 = v83;
                  v6 = &selRef_didChangeRadioState_;
                  v173 = 2082;
                  v174 = v84;
                  v175 = 2082;
                  v176 = v85;
                  v177 = 1024;
                  v178 = 2408;
                  _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i [TSM] Reporting APN token change to TSM", buf, 0x22u);
                }
              }
            }

            else
            {
              v8 = 0.0;
              v5 = &selRef_didChangeRadioState_;
            }

            if (v47)
            {
              if (*(v6 + 2736) == 1)
              {
                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v86 = NFLogGetLogger();
                if (v86)
                {
                  v87 = v86;
                  v88 = object_getClass(v1);
                  v89 = class_isMetaClass(v88);
                  v90 = object_getClassName(v1);
                  v161 = sel_getName("_startNextSession");
                  v91 = 45;
                  if (v89)
                  {
                    v91 = 43;
                  }

                  v152 = v90;
                  v6 = &selRef_didChangeRadioState_;
                  v87(6, "%c[%{public}s %{public}s]:%i [TSM] Reporting restricted mode to TSM", v91, v152, v161, 2412);
                }

                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v92 = NFSharedLogGetLogger();
                if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
                {
                  v93 = object_getClass(v1);
                  if (class_isMetaClass(v93))
                  {
                    v94 = 43;
                  }

                  else
                  {
                    v94 = 45;
                  }

                  v95 = object_getClassName(v1);
                  v96 = sel_getName("_startNextSession");
                  *buf = 67109890;
                  v172 = v94;
                  v173 = 2082;
                  v174 = v95;
                  v175 = 2082;
                  v176 = v96;
                  v177 = 1024;
                  v178 = 2412;
                  _os_log_impl(&_mh_execute_header, v92, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i [TSM] Reporting restricted mode to TSM", buf, 0x22u);
                }
              }

              *(v1 + 9) = 0;
            }

            if (v169)
            {
              if (*(v6 + 2736) == 1)
              {
                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v97 = NFLogGetLogger();
                if (v97)
                {
                  v98 = v97;
                  v99 = object_getClass(v1);
                  v100 = class_isMetaClass(v99);
                  v101 = object_getClassName(v1);
                  v162 = sel_getName("_startNextSession");
                  v102 = 45;
                  if (v100)
                  {
                    v102 = 43;
                  }

                  v153 = v101;
                  v6 = &selRef_didChangeRadioState_;
                  v98(6, "%c[%{public}s %{public}s]:%i [TSM] Reporting performance mode to TSM", v102, v153, v162, 2416);
                }

                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v103 = NFSharedLogGetLogger();
                if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
                {
                  v104 = object_getClass(v1);
                  if (class_isMetaClass(v104))
                  {
                    v105 = 43;
                  }

                  else
                  {
                    v105 = 45;
                  }

                  v106 = object_getClassName(v1);
                  v107 = sel_getName("_startNextSession");
                  *buf = 67109890;
                  v172 = v105;
                  v173 = 2082;
                  v174 = v106;
                  v175 = 2082;
                  v176 = v107;
                  v177 = 1024;
                  v178 = 2416;
                  _os_log_impl(&_mh_execute_header, v103, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i [TSM] Reporting performance mode to TSM", buf, 0x22u);
                }
              }

              *(v1 + 10) = 0;
            }

            v108 = sub_100033310();
            v109 = sub_100037550(v108, v29);

            v7 = 1;
            [v109 setPendingImmediateRetry:1];
            v4 = v109;
            goto LABEL_124;
          }
        }

        else
        {
          v51 = [v49 migrationState];
          if (v46)
          {
            v52 = 1;
          }

          else
          {
            v52 = v34;
          }

          v6 = &selRef_didChangeRadioState_;
          if (v52 & 1) != 0 || (v47 & 1) != 0 || v51 || (v169)
          {
            if (v51 && byte_10005BAB0 == 1)
            {
              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v53 = NFLogGetLogger();
              if (v53)
              {
                v54 = v53;
                v55 = object_getClass(v1);
                v56 = class_isMetaClass(v55);
                v166 = object_getClassName(v1);
                v158 = sel_getName("_startNextSession");
                v57 = !v56;
                v6 = &selRef_didChangeRadioState_;
                v58 = 45;
                if (!v57)
                {
                  v58 = 43;
                }

                v54(6, "%c[%{public}s %{public}s]:%i [TSM] Reaching out to TSM when eSE migation state is not IDLE", v58, v166, v158, 2402);
              }

              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v59 = NFSharedLogGetLogger();
              if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
              {
                v60 = object_getClass(v1);
                if (class_isMetaClass(v60))
                {
                  v61 = 43;
                }

                else
                {
                  v61 = 45;
                }

                v167 = v61;
                v62 = object_getClassName(v1);
                v63 = sel_getName("_startNextSession");
                *buf = 67109890;
                v172 = v167;
                v173 = 2082;
                v174 = v62;
                v6 = &selRef_didChangeRadioState_;
                v175 = 2082;
                v176 = v63;
                v177 = 1024;
                v178 = 2402;
                _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i [TSM] Reaching out to TSM when eSE migation state is not IDLE", buf, 0x22u);
              }
            }

            goto LABEL_72;
          }
        }

        v7 = 0;
        v8 = 0.0;
        v5 = &selRef_didChangeRadioState_;
LABEL_124:

        goto LABEL_125;
      }
    }
  }
}

void sub_10002D00C(void *a1)
{
  v1 = a1;
  [v1 setPendingImmediateRetry:0];
  [v1 clearRetryInterval];
  [v1 setSourceUrl:0];
  [v1 setInitialClientRequestInfo:0];
}

void sub_10002D188(const char *a1, void *a2)
{
  v4 = strlen(a1);
  v5 = [a2 description];
  v6 = [v5 length];
  if ([v5 length])
  {
    v7 = 0;
    v8 = 951 - v4;
    do
    {
      if (v6 > v8)
      {
        v9 = +[NSCharacterSet newlineCharacterSet];
        v10 = [v5 rangeOfCharacterFromSet:v9 options:4 range:{v7, v8}];

        if (v10 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v6 = 951 - v4;
        }

        else
        {
          v6 = &v10[-v7];
          if (!v6)
          {
            ++v7;
            v6 = 950 - v4;
          }
        }
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v12 = Logger;
        v13 = [v5 substringWithRange:{v7, v6}];
        v12(6, "%s:%i %s %s", "NFLogLargeTSMDescription", 65, a1, [v13 UTF8String]);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v14 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [v5 substringWithRange:{v7, v6}];
        v16 = [v15 UTF8String];
        *buf = 136446978;
        v18 = "NFLogLargeTSMDescription";
        v19 = 1024;
        v20 = 65;
        v21 = 2080;
        v22 = a1;
        v23 = 2080;
        v24 = v16;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}s:%i %s %s", buf, 0x26u);
      }

      v7 += v6;
      v6 = [v5 length] - v7;
    }

    while (v7 < [v5 length]);
  }
}

void sub_10002D5F4(uint64_t a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    *(a1 + 24) = v4 == 0;
    v5 = v4;
    objc_storeStrong((a1 + 16), a2);
    v4 = v5;
  }
}

uint64_t sub_1000325E0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000325F8(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  v8 = *(*(*(a1 + 48) + 8) + 40);
  objc_sync_enter(v8);
  if (v7 || (*(*(*(a1 + 56) + 8) + 24) & 1) != 0)
  {
    if (v7 && *(*(*(a1 + 56) + 8) + 24))
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v10 = Logger;
        Class = object_getClass(*(a1 + 32));
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(*(a1 + 32));
        Name = sel_getName(*(a1 + 64));
        v13 = 45;
        if (isMetaClass)
        {
          v13 = 43;
        }

        v10(3, "%c[%{public}s %{public}s]:%i %{public}@", v13, ClassName, Name, 593, v7);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v14 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = object_getClass(*(a1 + 32));
        if (class_isMetaClass(v15))
        {
          v16 = 43;
        }

        else
        {
          v16 = 45;
        }

        v17 = object_getClassName(*(a1 + 32));
        v18 = sel_getName(*(a1 + 64));
        *buf = 67110146;
        v22 = v16;
        v23 = 2082;
        v24 = v17;
        v25 = 2082;
        v26 = v18;
        v27 = 1024;
        v28 = 593;
        v29 = 2114;
        v30 = v7;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i %{public}@", buf, 0x2Cu);
      }
    }
  }

  else
  {
    objc_storeStrong((*(a1 + 32) + 16), a2);
  }

  objc_sync_exit(v8);

  dispatch_semaphore_signal(*(a1 + 40));
}

void sub_10003327C(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 72), a2);
  }
}

void sub_10003328C(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 80), a2);
  }
}

id sub_100033310()
{
  objc_opt_self();
  if (qword_10005BA98 != -1)
  {
    dispatch_once(&qword_10005BA98, &stru_100055000);
  }

  v0 = qword_10005BA90;

  return v0;
}

void sub_100033368(id a1)
{
  qword_10005BA90 = objc_opt_new();

  _objc_release_x1();
}

void sub_1000349CC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v8 = Logger;
      Class = object_getClass(*(a1 + 32));
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(*(a1 + 32));
      Name = sel_getName(*(a1 + 40));
      v32 = object_getClass(v5);
      v13 = 45;
      if (isMetaClass)
      {
        v13 = 43;
      }

      v8(4, "%c[%{public}s %{public}s]:%i Invalid key: %{public}@", v13, ClassName, Name, 84, v32);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v14 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

    v15 = object_getClass(*(a1 + 32));
    if (class_isMetaClass(v15))
    {
      v16 = 43;
    }

    else
    {
      v16 = 45;
    }

    v17 = object_getClassName(*(a1 + 32));
    v18 = sel_getName(*(a1 + 40));
    *buf = 67110146;
    v35 = v16;
    v36 = 2082;
    v37 = v17;
    v38 = 2082;
    v39 = v18;
    v40 = 1024;
    v41 = 84;
    v42 = 2114;
    v43 = object_getClass(v5);
    v19 = v43;
    v20 = "%c[%{public}s %{public}s]:%i Invalid key: %{public}@";
    goto LABEL_22;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v21 = NFLogGetLogger();
    if (v21)
    {
      v22 = v21;
      v23 = object_getClass(*(a1 + 32));
      v24 = class_isMetaClass(v23);
      v25 = object_getClassName(*(a1 + 32));
      v26 = sel_getName(*(a1 + 40));
      v33 = object_getClass(v6);
      v27 = 45;
      if (v24)
      {
        v27 = 43;
      }

      v22(4, "%c[%{public}s %{public}s]:%i Invalid admin state: %{public}@", v27, v25, v26, 86, v33);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v14 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

    v28 = object_getClass(*(a1 + 32));
    if (class_isMetaClass(v28))
    {
      v29 = 43;
    }

    else
    {
      v29 = 45;
    }

    v30 = object_getClassName(*(a1 + 32));
    v31 = sel_getName(*(a1 + 40));
    *buf = 67110146;
    v35 = v29;
    v36 = 2082;
    v37 = v30;
    v38 = 2082;
    v39 = v31;
    v40 = 1024;
    v41 = 86;
    v42 = 2114;
    v43 = object_getClass(v6);
    v19 = v43;
    v20 = "%c[%{public}s %{public}s]:%i Invalid admin state: %{public}@";
LABEL_22:
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, v20, buf, 0x2Cu);

LABEL_23:
    goto LABEL_24;
  }

  [*(*(a1 + 32) + 24) setObject:v6 forKey:v5];
LABEL_24:
}

void sub_100034D24(id *a1)
{
  v37 = objc_opt_new();
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v2 = [a1[3] allKeys];
  v3 = [v2 countByEnumeratingWithState:&v38 objects:v52 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v39;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v39 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v38 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v8 = [a1[3] NF_objectForKey:v7 expectedClass:objc_opt_class()];
          v9 = [v8 sourceUrl];
          if (v9)
          {
          }

          else
          {
            v22 = [v8 serverIdentifier];
            v23 = sub_10003584C(a1, v22);

            if (!v23)
            {
              [v37 addObject:v7];
            }
          }
        }

        else
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          Logger = NFLogGetLogger();
          if (Logger)
          {
            v11 = Logger;
            Class = object_getClass(a1);
            isMetaClass = class_isMetaClass(Class);
            ClassName = object_getClassName(a1);
            Name = sel_getName("_fixupAdminStates");
            v36 = objc_opt_class();
            v16 = 45;
            if (isMetaClass)
            {
              v16 = 43;
            }

            v11(3, "%c[%{public}s %{public}s]:%i Unexpected element, %{public}@", v16, ClassName, Name, 177, v36);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v8 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
          {
            v17 = object_getClass(a1);
            if (class_isMetaClass(v17))
            {
              v18 = 43;
            }

            else
            {
              v18 = 45;
            }

            v19 = object_getClassName(a1);
            v20 = sel_getName("_fixupAdminStates");
            v21 = objc_opt_class();
            *buf = 67110146;
            v43 = v18;
            v44 = 2082;
            v45 = v19;
            v46 = 2082;
            v47 = v20;
            v48 = 1024;
            v49 = 177;
            v50 = 2114;
            v51 = v21;
            _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Unexpected element, %{public}@", buf, 0x2Cu);
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v38 objects:v52 count:16];
    }

    while (v4);
  }

  if ([v37 count])
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v24 = NFLogGetLogger();
    if (v24)
    {
      v25 = v24;
      v26 = object_getClass(a1);
      v27 = class_isMetaClass(v26);
      v34 = object_getClassName(a1);
      v35 = sel_getName("_fixupAdminStates");
      v28 = 45;
      if (v27)
      {
        v28 = 43;
      }

      v25(5, "%c[%{public}s %{public}s]:%i Removing ghost admin states: %{public}@", v28, v34, v35, 189, v37);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v29 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = object_getClass(a1);
      if (class_isMetaClass(v30))
      {
        v31 = 43;
      }

      else
      {
        v31 = 45;
      }

      v32 = object_getClassName(a1);
      v33 = sel_getName("_fixupAdminStates");
      *buf = 67110146;
      v43 = v31;
      v44 = 2082;
      v45 = v32;
      v46 = 2082;
      v47 = v33;
      v48 = 1024;
      v49 = 189;
      v50 = 2114;
      v51 = v37;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Removing ghost admin states: %{public}@", buf, 0x2Cu);
    }

    [a1[3] removeObjectsForKeys:v37];
    sub_10003563C(a1);
  }
}

void sub_100035180(id *a1)
{
  v38 = sub_1000355D0(a1);
  if (!v38)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v28 = Logger;
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
      Name = sel_getName("_updateAdminStatesURL");
      v32 = 45;
      if (isMetaClass)
      {
        v32 = 43;
      }

      v28(4, "%c[%{public}s %{public}s]:%i Empty registration info", v32, ClassName, Name, 142);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v2 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v33 = object_getClass(a1);
      if (class_isMetaClass(v33))
      {
        v34 = 43;
      }

      else
      {
        v34 = 45;
      }

      *buf = 67109890;
      v44 = v34;
      v45 = 2082;
      v46 = object_getClassName(a1);
      v47 = 2082;
      v48 = sel_getName("_updateAdminStatesURL");
      v49 = 1024;
      v50 = 142;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Empty registration info", buf, 0x22u);
    }

    goto LABEL_38;
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v2 = [a1[3] allValues];
  v3 = [v2 countByEnumeratingWithState:&v39 objects:v53 count:16];
  if (!v3)
  {
LABEL_38:

    goto LABEL_39;
  }

  v4 = v3;
  v37 = 0;
  v5 = *v40;
  do
  {
    for (i = 0; i != v4; i = i + 1)
    {
      if (*v40 != v5)
      {
        objc_enumerationMutation(v2);
      }

      v7 = *(*(&v39 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = [v7 serverIdentifier];
        v9 = [v38 NF_stringForKey:v8];

        v10 = [v7 sourceUrl];
        v11 = v10;
        if (v10)
        {
          v12 = v9 == 0;
        }

        else
        {
          v12 = 1;
        }

        if (v12)
        {
        }

        else
        {
          v25 = [v7 sourceUrl];
          v26 = [v9 compare:v25];

          if (v26)
          {
            [v7 setSourceUrl:v9];
            v37 = 1;
          }
        }
      }

      else
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v13 = NFLogGetLogger();
        if (v13)
        {
          v14 = v13;
          v15 = object_getClass(a1);
          v16 = class_isMetaClass(v15);
          v17 = object_getClassName(a1);
          v18 = sel_getName("_updateAdminStatesURL");
          v36 = objc_opt_class();
          v19 = 45;
          if (v16)
          {
            v19 = 43;
          }

          v14(3, "%c[%{public}s %{public}s]:%i Unexpected element, %{public}@", v19, v17, v18, 152, v36);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v9 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v20 = object_getClass(a1);
          if (class_isMetaClass(v20))
          {
            v21 = 43;
          }

          else
          {
            v21 = 45;
          }

          v22 = object_getClassName(a1);
          v23 = sel_getName("_updateAdminStatesURL");
          v24 = objc_opt_class();
          *buf = 67110146;
          v44 = v21;
          v45 = 2082;
          v46 = v22;
          v47 = 2082;
          v48 = v23;
          v49 = 1024;
          v50 = 152;
          v51 = 2114;
          v52 = v24;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Unexpected element, %{public}@", buf, 0x2Cu);
        }
      }
    }

    v4 = [v2 countByEnumeratingWithState:&v39 objects:v53 count:16];
  }

  while (v4);

  if (v37)
  {
    sub_10003563C(a1);
  }

LABEL_39:
}

id sub_1000355D0(void *a1)
{
  if (a1)
  {
    v1 = a1;
    objc_sync_enter(v1);
    v2 = [v1[1] dictionaryForKey:@"RegistrationInfo"];
    objc_sync_exit(v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_10003563C(void *a1)
{
  if (a1)
  {
    v1 = a1;
    objc_sync_enter(v1);
    v2 = v1[3];
    v17 = 0;
    v3 = [NSKeyedArchiver archivedDataWithRootObject:v2 requiringSecureCoding:1 error:&v17];
    v4 = v17;
    if (v4)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v6 = Logger;
        Class = object_getClass(v1);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(v1);
        Name = sel_getName("saveServerStates");
        v9 = 45;
        if (isMetaClass)
        {
          v9 = 43;
        }

        v6(3, "%c[%{public}s %{public}s]:%i archive failed:%{public}@", v9, ClassName, Name, 554, v4);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v10 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = object_getClass(v1);
        if (class_isMetaClass(v11))
        {
          v12 = 43;
        }

        else
        {
          v12 = 45;
        }

        v13 = object_getClassName(v1);
        v14 = sel_getName("saveServerStates");
        *buf = 67110146;
        v19 = v12;
        v20 = 2082;
        v21 = v13;
        v22 = 2082;
        v23 = v14;
        v24 = 1024;
        v25 = 554;
        v26 = 2114;
        v27 = v4;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i archive failed:%{public}@", buf, 0x2Cu);
      }
    }

    if (v3)
    {
      [v1[1] setObject:v3 forKey:@"ServerStates"];
      [v1[1] synchronize];
    }

    objc_sync_exit(v1);
  }
}

id sub_10003584C(void *a1, void *a2)
{
  v3 = a2;
  v4 = sub_1000355D0(a1);
  v5 = [v4 NF_stringForKey:v3];

  if (v5)
  {
    v6 = v5;
  }

  else
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v8 = Logger;
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
      Name = sel_getName("serverURLStringForIdentifier:");
      v11 = 45;
      if (isMetaClass)
      {
        v11 = 43;
      }

      v8(3, "%c[%{public}s %{public}s]:%i No URL for %{public}@", v11, ClassName, Name, 368, v3);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v12 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = object_getClass(a1);
      if (class_isMetaClass(v13))
      {
        v14 = 43;
      }

      else
      {
        v14 = 45;
      }

      *buf = 67110146;
      v19 = v14;
      v20 = 2082;
      v21 = object_getClassName(a1);
      v22 = 2082;
      v23 = sel_getName("serverURLStringForIdentifier:");
      v24 = 1024;
      v25 = 368;
      v26 = 2114;
      v27 = v3;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i No URL for %{public}@", buf, 0x2Cu);
    }
  }

  return v5;
}

void sub_100035A3C(void *a1)
{
  if (a1)
  {
    v1 = a1;
    objc_sync_enter(v1);
    v2 = v1[4];
    v17 = 0;
    v3 = [NSKeyedArchiver archivedDataWithRootObject:v2 requiringSecureCoding:1 error:&v17];
    v4 = v17;
    if (v4)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v6 = Logger;
        Class = object_getClass(v1);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(v1);
        Name = sel_getName("saveRedirectStates");
        v9 = 45;
        if (isMetaClass)
        {
          v9 = 43;
        }

        v6(3, "%c[%{public}s %{public}s]:%i archive failed:%{public}@", v9, ClassName, Name, 673, v4);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v10 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = object_getClass(v1);
        if (class_isMetaClass(v11))
        {
          v12 = 43;
        }

        else
        {
          v12 = 45;
        }

        v13 = object_getClassName(v1);
        v14 = sel_getName("saveRedirectStates");
        *buf = 67110146;
        v19 = v12;
        v20 = 2082;
        v21 = v13;
        v22 = 2082;
        v23 = v14;
        v24 = 1024;
        v25 = 673;
        v26 = 2114;
        v27 = v4;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i archive failed:%{public}@", buf, 0x2Cu);
      }
    }

    if (v3)
    {
      [v1[1] setObject:v3 forKey:@"RedirectStates"];
      [v1[1] synchronize];
    }

    objc_sync_exit(v1);
  }
}

void sub_100035C4C(uint64_t a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    objc_storeStrong((a1 + 56), a2);
  }
}

uint64_t sub_100035CA4(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!a1)
  {
    v44 = 0;
    goto LABEL_55;
  }

  v7 = a1;
  objc_sync_enter(v7);
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v9 = Logger;
    Class = object_getClass(v7);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(v7);
    Name = sel_getName("setRegistrationInfo:defaultServerIdentifier:");
    v13 = 45;
    if (isMetaClass)
    {
      v13 = 43;
    }

    v9(6, "%c[%{public}s %{public}s]:%i %{public}@ %{public}@", v13, ClassName, Name, 314, v5, v6);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v14 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = object_getClass(v7);
    if (class_isMetaClass(v15))
    {
      v16 = 43;
    }

    else
    {
      v16 = 45;
    }

    v17 = object_getClassName(v7);
    v18 = sel_getName("setRegistrationInfo:defaultServerIdentifier:");
    *buf = 67110402;
    v95 = v16;
    v96 = 2082;
    v97 = v17;
    v98 = 2082;
    v99 = v18;
    v100 = 1024;
    v101 = 314;
    v102 = 2114;
    v103 = v5;
    v104 = 2114;
    v105 = v6;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@ %{public}@", buf, 0x36u);
  }

  if (!v5)
  {
    [v7[1] removeObjectForKey:@"RegistrationInfo"];
    [v7[1] removeObjectForKey:@"PrimaryRegionTopic"];
    sub_100034D24(v7);
    goto LABEL_42;
  }

  v83 = v5;
  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  v19 = [v5 allKeys];
  v20 = [v19 countByEnumeratingWithState:&v88 objects:v93 count:16];
  if (!v20)
  {

    goto LABEL_44;
  }

  v21 = v20;
  v22 = 0;
  v23 = *v89;
  do
  {
    for (i = 0; i != v21; i = i + 1)
    {
      if (*v89 != v23)
      {
        objc_enumerationMutation(v19);
      }

      v25 = *(*(&v88 + 1) + 8 * i);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v33 = NFLogGetLogger();
        if (v33)
        {
          v34 = v33;
          v35 = object_getClass(v7);
          v36 = class_isMetaClass(v35);
          v37 = object_getClassName(v7);
          v79 = sel_getName("setRegistrationInfo:defaultServerIdentifier:");
          v38 = 45;
          if (v36)
          {
            v38 = 43;
          }

          v34(3, "%c[%{public}s %{public}s]:%i Invalid type for info dictionary key", v38, v37, v79, 320);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v39 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          v40 = object_getClass(v7);
          if (class_isMetaClass(v40))
          {
            v41 = 43;
          }

          else
          {
            v41 = 45;
          }

          v42 = object_getClassName(v7);
          v43 = sel_getName("setRegistrationInfo:defaultServerIdentifier:");
          *buf = 67109890;
          v95 = v41;
          v96 = 2082;
          v97 = v42;
          v98 = 2082;
          v99 = v43;
          v100 = 1024;
          v101 = 320;
          _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid type for info dictionary key", buf, 0x22u);
        }

        goto LABEL_53;
      }

      v22 |= [v25 isEqualToString:v6];
    }

    v21 = [v19 countByEnumeratingWithState:&v88 objects:v93 count:16];
  }

  while (v21);

  if ((v22 & 1) == 0)
  {
LABEL_44:
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v45 = NFLogGetLogger();
    if (v45)
    {
      v46 = v45;
      v47 = object_getClass(v7);
      v48 = class_isMetaClass(v47);
      v77 = object_getClassName(v7);
      v80 = sel_getName("setRegistrationInfo:defaultServerIdentifier:");
      v49 = 45;
      if (v48)
      {
        v49 = 43;
      }

      v46(3, "%c[%{public}s %{public}s]:%i Registration info does not contain %{public}@", v49, v77, v80, 329, v6);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v19 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v50 = object_getClass(v7);
      if (class_isMetaClass(v50))
      {
        v51 = 43;
      }

      else
      {
        v51 = 45;
      }

      v52 = object_getClassName(v7);
      v53 = sel_getName("setRegistrationInfo:defaultServerIdentifier:");
      *buf = 67110146;
      v95 = v51;
      v96 = 2082;
      v97 = v52;
      v98 = 2082;
      v99 = v53;
      v100 = 1024;
      v101 = 329;
      v102 = 2114;
      v103 = v6;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Registration info does not contain %{public}@", buf, 0x2Cu);
    }

LABEL_53:

    v44 = 0;
    v5 = v83;
    goto LABEL_54;
  }

  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  v26 = [v83 allValues];
  v27 = [v26 countByEnumeratingWithState:&v84 objects:v92 count:16];
  if (!v27)
  {
    goto LABEL_30;
  }

  v28 = v27;
  v29 = *v85;
  while (2)
  {
    v30 = 0;
    while (2)
    {
      if (*v85 != v29)
      {
        objc_enumerationMutation(v26);
      }

      v31 = *(*(&v84 + 1) + 8 * v30);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v55 = NFLogGetLogger();
        if (v55)
        {
          v56 = v55;
          v57 = object_getClass(v7);
          v58 = class_isMetaClass(v57);
          v59 = object_getClassName(v7);
          v81 = sel_getName("setRegistrationInfo:defaultServerIdentifier:");
          v60 = 45;
          if (v58)
          {
            v60 = 43;
          }

          v56(3, "%c[%{public}s %{public}s]:%i Invalid type for info dictionary value", v60, v59, v81, 335);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v61 = NFSharedLogGetLogger();
        if (!os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_75;
        }

        v62 = object_getClass(v7);
        if (class_isMetaClass(v62))
        {
          v63 = 43;
        }

        else
        {
          v63 = 45;
        }

        v64 = object_getClassName(v7);
        v65 = sel_getName("setRegistrationInfo:defaultServerIdentifier:");
        *buf = 67109890;
        v95 = v63;
        v96 = 2082;
        v97 = v64;
        v98 = 2082;
        v99 = v65;
        v100 = 1024;
        v101 = 335;
        v66 = "%c[%{public}s %{public}s]:%i Invalid type for info dictionary value";
        goto LABEL_74;
      }

      v32 = [NSURL URLWithString:v31];

      if (!v32)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v67 = NFLogGetLogger();
        if (v67)
        {
          v68 = v67;
          v69 = object_getClass(v7);
          v70 = class_isMetaClass(v69);
          v71 = object_getClassName(v7);
          v82 = sel_getName("setRegistrationInfo:defaultServerIdentifier:");
          v72 = 45;
          if (v70)
          {
            v72 = 43;
          }

          v68(3, "%c[%{public}s %{public}s]:%i Invalid URL value", v72, v71, v82, 339);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v61 = NFSharedLogGetLogger();
        if (!os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_75;
        }

        v73 = object_getClass(v7);
        if (class_isMetaClass(v73))
        {
          v74 = 43;
        }

        else
        {
          v74 = 45;
        }

        v75 = object_getClassName(v7);
        v76 = sel_getName("setRegistrationInfo:defaultServerIdentifier:");
        *buf = 67109890;
        v95 = v74;
        v96 = 2082;
        v97 = v75;
        v98 = 2082;
        v99 = v76;
        v100 = 1024;
        v101 = 339;
        v66 = "%c[%{public}s %{public}s]:%i Invalid URL value";
LABEL_74:
        _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_ERROR, v66, buf, 0x22u);
LABEL_75:
        v5 = v83;

        v44 = 0;
        goto LABEL_54;
      }

      if (v28 != ++v30)
      {
        continue;
      }

      break;
    }

    v28 = [v26 countByEnumeratingWithState:&v84 objects:v92 count:16];
    if (v28)
    {
      continue;
    }

    break;
  }

LABEL_30:

  v5 = v83;
  [v7[1] setObject:v83 forKey:@"RegistrationInfo"];
  [v7[1] setObject:v6 forKey:@"PrimaryRegionTopic"];
  sub_100035180(v7);
LABEL_42:
  [v7[1] synchronize];
  v44 = 1;
LABEL_54:
  objc_sync_exit(v7);

LABEL_55:
  return v44;
}

void sub_100036520(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v24 = Logger;
      Class = object_getClass(*(a1 + 32));
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(*(a1 + 32));
      Name = sel_getName(*(a1 + 48));
      v35 = object_getClass(v7);
      v29 = 45;
      if (isMetaClass)
      {
        v29 = 43;
      }

      v24(4, "%c[%{public}s %{public}s]:%i Invalid AID type: %{public}@", v29, ClassName, Name, 268, v35);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v16 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    v30 = object_getClass(*(a1 + 32));
    if (class_isMetaClass(v30))
    {
      v31 = 43;
    }

    else
    {
      v31 = 45;
    }

    v32 = object_getClassName(*(a1 + 32));
    v33 = sel_getName(*(a1 + 48));
    *buf = 67110146;
    v37 = v31;
    v38 = 2082;
    v39 = v32;
    v40 = 2082;
    v41 = v33;
    v42 = 1024;
    v43 = 268;
    v44 = 2114;
    v45 = object_getClass(v7);
    v21 = v45;
    v22 = "%c[%{public}s %{public}s]:%i Invalid AID type: %{public}@";
    goto LABEL_21;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v9 = NFLogGetLogger();
    if (v9)
    {
      v10 = v9;
      v11 = object_getClass(*(a1 + 32));
      v12 = class_isMetaClass(v11);
      v13 = object_getClassName(*(a1 + 32));
      v14 = sel_getName(*(a1 + 48));
      v34 = object_getClass(v8);
      v15 = 45;
      if (v12)
      {
        v15 = 43;
      }

      v10(4, "%c[%{public}s %{public}s]:%i Invalid Topic type: %{public}@", v15, v13, v14, 272, v34);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v16 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    v17 = object_getClass(*(a1 + 32));
    if (class_isMetaClass(v17))
    {
      v18 = 43;
    }

    else
    {
      v18 = 45;
    }

    v19 = object_getClassName(*(a1 + 32));
    v20 = sel_getName(*(a1 + 48));
    *buf = 67110146;
    v37 = v18;
    v38 = 2082;
    v39 = v19;
    v40 = 2082;
    v41 = v20;
    v42 = 1024;
    v43 = 272;
    v44 = 2114;
    v45 = object_getClass(v8);
    v21 = v45;
    v22 = "%c[%{public}s %{public}s]:%i Invalid Topic type: %{public}@";
LABEL_21:
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, v22, buf, 0x2Cu);

LABEL_22:
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a4 = 1;
  }
}

id sub_10003687C(void *a1, void *a2)
{
  if (a1)
  {
    v2 = sub_10003584C(a1, a2);
    v3 = [NSURL URLWithString:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id sub_1000368E4(void *a1)
{
  if (a1)
  {
    v1 = a1;
    objc_sync_enter(v1);
    v2 = [v1[1] stringForKey:@"PrimaryRegionTopic"];
    objc_sync_exit(v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id sub_100036950(void *a1, void *a2)
{
  if (a1)
  {
    v3 = a1;
    v4 = a2;
    objc_sync_enter(v3);
    v5 = [v3[2] objectForKey:v4];

    objc_sync_exit(v3);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_1000369D4(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (a1)
  {
    if (v6)
    {
      v8 = a1;
      objc_sync_enter(v8);
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v10 = Logger;
        Class = object_getClass(v8);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(v8);
        Name = sel_getName("setServerIdentifier:forAppletID:");
        v14 = 45;
        if (isMetaClass)
        {
          v14 = 43;
        }

        v10(6, "%c[%{public}s %{public}s]:%i %{public}@ = %{public}@", v14, ClassName, Name, 399, v5, v7);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v15 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = object_getClass(v8);
        if (class_isMetaClass(v16))
        {
          v17 = 43;
        }

        else
        {
          v17 = 45;
        }

        *buf = 67110402;
        v30 = v17;
        v31 = 2082;
        v32 = object_getClassName(v8);
        v33 = 2082;
        v34 = sel_getName("setServerIdentifier:forAppletID:");
        v35 = 1024;
        v36 = 399;
        v37 = 2114;
        v38 = v5;
        v39 = 2114;
        v40 = v7;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@ = %{public}@", buf, 0x36u);
      }

      isa = v8[2].isa;
      if (v5)
      {
        [(objc_class *)isa setObject:v5 forKey:v7];
      }

      else
      {
        [(objc_class *)isa removeObjectForKey:v7];
      }

      [(objc_class *)v8[1].isa setObject:v8[2].isa forKey:@"ServersForApplets"];
      [(objc_class *)v8[1].isa synchronize];
      objc_sync_exit(v8);
    }

    else
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v19 = NFLogGetLogger();
      if (v19)
      {
        v20 = v19;
        v21 = object_getClass(a1);
        v22 = class_isMetaClass(v21);
        v26 = object_getClassName(a1);
        v28 = sel_getName("setServerIdentifier:forAppletID:");
        v23 = 45;
        if (v22)
        {
          v23 = 43;
        }

        v20(3, "%c[%{public}s %{public}s]:%i Invalid ID, %{public}@", v23, v26, v28, 394, 0);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v8 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v24 = object_getClass(a1);
        if (class_isMetaClass(v24))
        {
          v25 = 43;
        }

        else
        {
          v25 = 45;
        }

        *buf = 67110146;
        v30 = v25;
        v31 = 2082;
        v32 = object_getClassName(a1);
        v33 = 2082;
        v34 = sel_getName("setServerIdentifier:forAppletID:");
        v35 = 1024;
        v36 = 394;
        v37 = 2114;
        v38 = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid ID, %{public}@", buf, 0x2Cu);
      }
    }
  }
}

uint64_t sub_100036D14(uint64_t a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = [NFSecureElement embeddedSecureElementWithError:0];
    v3 = [v2 info];

    if (v3)
    {
      v4 = [v3 sequenceCounter];
      v1 = [v4 unsignedIntegerValue] != *(v1 + 48);
    }

    else
    {
      v1 = 0;
    }
  }

  return v1;
}

void sub_100036DA0(void *a1, char a2)
{
  if (a1 && (a2 & 1) == 0)
  {
    v3 = [NFSecureElement embeddedSecureElementWithError:0];
    v4 = [v3 info];

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v6 = Logger;
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
      Name = sel_getName("setHasJCOPUpdated:");
      v11 = a1[6];
      v12 = [v4 sequenceCounter];
      v24 = [v12 unsignedIntValue];
      v13 = 45;
      if (isMetaClass)
      {
        v13 = 43;
      }

      v6(6, "%c[%{public}s %{public}s]:%i Update counter changed %d => %d", v13, ClassName, Name, 429, v11, v24);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v14 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = object_getClass(a1);
      if (class_isMetaClass(v15))
      {
        v16 = 43;
      }

      else
      {
        v16 = 45;
      }

      v17 = object_getClassName(a1);
      v18 = sel_getName("setHasJCOPUpdated:");
      v19 = a1[6];
      v20 = [v4 sequenceCounter];
      *buf = 67110402;
      v26 = v16;
      v27 = 2082;
      v28 = v17;
      v29 = 2082;
      v30 = v18;
      v31 = 1024;
      v32 = 429;
      v33 = 1024;
      v34 = v19;
      v35 = 1024;
      v36 = [v20 unsignedIntValue];
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Update counter changed %d => %d", buf, 0x2Eu);
    }

    v21 = +[NSUserDefaults standardUserDefaults];
    v22 = [v4 sequenceCounter];
    [v21 setInteger:objc_msgSend(v22 forKey:{"unsignedIntegerValue"), @"SecureElementSequenceCounter"}];

    v23 = [v4 sequenceCounter];
    a1[6] = [v23 unsignedIntegerValue];
  }
}

id sub_10003701C(void *a1)
{
  if (a1)
  {
    v1 = a1;
    objc_sync_enter(v1);
    v2 = v1[5];
    objc_sync_exit(v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_10003707C(void *a1, void *a2)
{
  if (a1)
  {
    obj = a1;
    v3 = a2;
    objc_sync_enter(obj);
    v4 = [v3 copy];

    v5 = obj[5];
    obj[5] = v4;

    objc_sync_exit(obj);
  }
}

id sub_100037100(void *a1)
{
  v1 = a1;
  objc_sync_enter(v1);
  v2 = [v1[1] dictionaryForKey:@"APNConnectionRequestManual"];
  objc_sync_exit(v1);

  return v2;
}

void sub_100037160(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v7 = v3;
    v4 = a1;
    objc_sync_enter(v4);
    v5 = v4[1];
    if (v7)
    {
      v6 = [v5 objectForKey:@"APNConnectionRequestManual"];

      if (!v6)
      {
        [v4[1] setObject:v7 forKey:@"APNConnectionRequestManual"];
      }
    }

    else
    {
      [v5 removeObjectForKey:@"APNConnectionRequestManual"];
    }

    [v4[1] synchronize];
    objc_sync_exit(v4);

    v3 = v7;
  }
}

void sub_100037214(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = a1;
    objc_sync_enter(v7);
    if (v6)
    {
      v8 = sub_100037550(v7, v6);
      if (v8)
      {
        v9 = v8;
        v10 = [v8 APNConnectionRequesterFirst];

        if (v10)
        {
          [v9 setAPNConnectionRequesterLatest:v5];
        }

        else
        {
          [v9 setAPNConnectionRequesterFirst:v5];
        }
      }

      else
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        Logger = NFLogGetLogger();
        if (Logger)
        {
          v20 = Logger;
          Class = object_getClass(v7);
          isMetaClass = class_isMetaClass(Class);
          ClassName = object_getClassName(v7);
          Name = sel_getName("setAPNConnectionRequesterPush:forIdentifier:");
          v23 = 45;
          if (isMetaClass)
          {
            v23 = 43;
          }

          v20(4, "%c[%{public}s %{public}s]:%i No state for topic %{public}@", v23, ClassName, Name, 501, v6);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v24 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v25 = object_getClass(v7);
          if (class_isMetaClass(v25))
          {
            v26 = 43;
          }

          else
          {
            v26 = 45;
          }

          *buf = 67110146;
          v31 = v26;
          v32 = 2082;
          v33 = object_getClassName(v7);
          v34 = 2082;
          v35 = sel_getName("setAPNConnectionRequesterPush:forIdentifier:");
          v36 = 1024;
          v37 = 501;
          v38 = 2114;
          v39 = v6;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i No state for topic %{public}@", buf, 0x2Cu);
        }

        v9 = 0;
      }
    }

    else
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v11 = NFLogGetLogger();
      if (v11)
      {
        v12 = v11;
        v13 = object_getClass(v7);
        v14 = class_isMetaClass(v13);
        v15 = object_getClassName(v7);
        v28 = sel_getName("setAPNConnectionRequesterPush:forIdentifier:");
        v16 = 45;
        if (v14)
        {
          v16 = 43;
        }

        v12(6, "%c[%{public}s %{public}s]:%i No identifier", v16, v15, v28, 489);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v9 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v17 = object_getClass(v7);
        if (class_isMetaClass(v17))
        {
          v18 = 43;
        }

        else
        {
          v18 = 45;
        }

        *buf = 67109890;
        v31 = v18;
        v32 = 2082;
        v33 = object_getClassName(v7);
        v34 = 2082;
        v35 = sel_getName("setAPNConnectionRequesterPush:forIdentifier:");
        v36 = 1024;
        v37 = 489;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i No identifier", buf, 0x22u);
      }
    }

    objc_sync_exit(v7);
  }
}

NFRemoteAdminState *sub_100037550(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (!v3)
    {
      v16 = +[NSAssertionHandler currentHandler];
      [v16 handleFailureInMethod:"serverStateForIdentifier:" object:a1 file:@"NFRemoteAdminStorage.m" lineNumber:533 description:{@"Invalid parameter not satisfying: %@", @"theIdentifier != nil"}];
    }

    v5 = a1;
    objc_sync_enter(v5);
    v6 = [v5[3] NF_objectForKey:v4 expectedClass:objc_opt_class()];
    if (!v6)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v8 = Logger;
        Class = object_getClass(v5);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(v5);
        Name = sel_getName("serverStateForIdentifier:");
        v11 = 45;
        if (isMetaClass)
        {
          v11 = 43;
        }

        v8(6, "%c[%{public}s %{public}s]:%i Init state for %{public}@", v11, ClassName, Name, 538, v4);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v12 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = object_getClass(v5);
        if (class_isMetaClass(v13))
        {
          v14 = 43;
        }

        else
        {
          v14 = 45;
        }

        *buf = 67110146;
        v20 = v14;
        v21 = 2082;
        v22 = object_getClassName(v5);
        v23 = 2082;
        v24 = sel_getName("serverStateForIdentifier:");
        v25 = 1024;
        v26 = 538;
        v27 = 2114;
        v28 = v4;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Init state for %{public}@", buf, 0x2Cu);
      }

      v6 = [[NFRemoteAdminState alloc] initWithIdentifier:v4 sourceURL:0 retryDate:0];
      [v5[3] setObject:v6 forKey:v4];
    }

    objc_sync_exit(v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void sub_1000377D4(void *a1)
{
  if (a1)
  {
    v1 = a1;
    objc_sync_enter(v1);
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v3 = Logger;
      Class = object_getClass(v1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(v1);
      Name = sel_getName("resetAPNConnectionRequest");
      v7 = 45;
      if (isMetaClass)
      {
        v7 = 43;
      }

      v3(6, "%c[%{public}s %{public}s]:%i Resetting all APN connection states", v7, ClassName, Name, 509);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v8 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = object_getClass(v1);
      if (class_isMetaClass(v9))
      {
        v10 = 43;
      }

      else
      {
        v10 = 45;
      }

      *buf = 67109890;
      v37 = v10;
      v38 = 2082;
      v39 = object_getClassName(v1);
      v40 = 2082;
      v41 = sel_getName("resetAPNConnectionRequest");
      v42 = 1024;
      v43 = 509;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Resetting all APN connection states", buf, 0x22u);
    }

    sub_100037160(v1, 0);
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    obj = [v1[3] allValues];
    v11 = [obj countByEnumeratingWithState:&v32 objects:v46 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v33;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v33 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v32 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v15 setAPNConnectionRequesterFirst:0];
            [v15 setAPNConnectionRequesterLatest:0];
          }

          else
          {
            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v16 = NFLogGetLogger();
            if (v16)
            {
              v17 = v16;
              v18 = object_getClass(v1);
              v19 = class_isMetaClass(v18);
              v20 = object_getClassName(v1);
              v21 = sel_getName("resetAPNConnectionRequest");
              v30 = objc_opt_class();
              v22 = 45;
              if (v19)
              {
                v22 = 43;
              }

              v17(4, "%c[%{public}s %{public}s]:%i Unexpected state object, %{public}@", v22, v20, v21, 515, v30);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v23 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              v24 = object_getClass(v1);
              if (class_isMetaClass(v24))
              {
                v25 = 43;
              }

              else
              {
                v25 = 45;
              }

              v26 = object_getClassName(v1);
              v27 = sel_getName("resetAPNConnectionRequest");
              v28 = objc_opt_class();
              *buf = 67110146;
              v37 = v25;
              v38 = 2082;
              v39 = v26;
              v40 = 2082;
              v41 = v27;
              v42 = 1024;
              v43 = 515;
              v44 = 2114;
              v45 = v28;
              _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Unexpected state object, %{public}@", buf, 0x2Cu);
            }
          }
        }

        v12 = [obj countByEnumeratingWithState:&v32 objects:v46 count:16];
      }

      while (v12);
    }

    objc_sync_exit(v1);
  }
}

id sub_100037BB8(void *a1)
{
  if (a1)
  {
    v1 = a1;
    objc_sync_enter(v1);
    v2 = [v1[3] allValues];
    objc_sync_exit(v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id sub_100037C1C(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v121 = a3;
  v126 = a1;
  if (a1)
  {
    v6 = &GetElapsedTimeInMillisecondsFromMachTime_ptr;
    v7 = objc_opt_new();
    if ([v5 length])
    {
      v8 = sub_100037550(a1, v5);
    }

    else
    {
      v8 = 0;
    }

    v9 = [v8 unsentScriptResponse];

    v10 = &GetElapsedTimeInMillisecondsFromMachTime_ptr;
    if (v9)
    {
      v11 = [v8 unsentScriptResponse];
      [v7 addEntriesFromDictionary:v11];
    }

    else if (v121)
    {
      obj = [v121 stateInformation];
      if (![obj count])
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        Logger = NFLogGetLogger();
        if (Logger)
        {
          v46 = Logger;
          Class = object_getClass(v126);
          v48 = v8;
          isMetaClass = class_isMetaClass(Class);
          ClassName = object_getClassName(v126);
          Name = sel_getName("nextRequestForServer:session:");
          v51 = !isMetaClass;
          v8 = v48;
          v52 = 45;
          if (!v51)
          {
            v52 = 43;
          }

          v46(3, "%c[%{public}s %{public}s]:%i Failed to get state info", v52, ClassName, Name, 582);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v53 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
        {
          v54 = object_getClass(v126);
          if (class_isMetaClass(v54))
          {
            v55 = 43;
          }

          else
          {
            v55 = 45;
          }

          *buf = 67109890;
          *&buf[4] = v55;
          *v140 = 2082;
          *&v140[2] = object_getClassName(v126);
          v141 = 2082;
          v142 = sel_getName("nextRequestForServer:session:");
          v143 = 1024;
          v144 = 582;
          _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to get state info", buf, 0x22u);
        }

        v38 = 0;
LABEL_34:

        goto LABEL_35;
      }

      v118 = v8;
      v40 = [NFSecureElement embeddedSecureElementWithError:0];
      v41 = [v40 info];

      v115 = v7;
      v116 = v5;
      if (v41 && ([v41 sequenceCounter], v42 = objc_claimAutoreleasedReturnValue(), v43 = objc_msgSend(v42, "unsignedIntegerValue"), v44 = v126[6], v42, v43 != v44))
      {
        v148[0] = @"osUpdateInfo";
        v56 = [NSString alloc];
        v57 = [v41 sequenceCounter];
        v58 = [v56 initWithFormat:@"%04X", objc_msgSend(v57, "unsignedIntValue")];
        *buf = v58;
        v148[1] = @"seAppletStateMap";
        v59 = [NSString alloc];
        v107 = [v41 appletMap];
        v60 = v59;
        v6 = &GetElapsedTimeInMillisecondsFromMachTime_ptr;
        v61 = [v60 initWithFormat:@"%04X", v107];
        *v140 = v61;
        v123 = [NSDictionary dictionaryWithObjects:buf forKeys:v148 count:2];
      }

      else
      {
        v123 = 0;
      }

      v62 = [NSNumber numberWithInteger:2];
      v113 = [NSMutableDictionary dictionaryWithObject:v62 forKey:@"kVersion"];

      v120 = objc_opt_new();
      v132 = 0u;
      v133 = 0u;
      v134 = 0u;
      v135 = 0u;
      obja = obj;
      v63 = [obja countByEnumeratingWithState:&v132 objects:v147 count:16];
      v64 = v126;
      if (v63)
      {
        v65 = v63;
        v66 = @"secureElementType";
        v67 = *v133;
        v119 = *v133;
        do
        {
          v68 = 0;
          v122 = v65;
          do
          {
            if (*v133 != v67)
            {
              objc_enumerationMutation(obja);
            }

            v69 = *(*(&v132 + 1) + 8 * v68);
            v70 = [v69 NF_stringForKey:v66];
            if ([v70 isEqualToString:@"JCOP"])
            {
              v71 = [objc_alloc(v6[198]) initWithDictionary:v69];
              v72 = v71;
              if (v123)
              {
                [v71 addEntriesFromDictionary:v123];
                v73 = [v72 NF_stringForKey:@"osUpdateInfo"];
                v74 = v73;
                if (v73)
                {
                  v75 = [v73 uppercaseString];
                  [v72 setObject:v75 forKeyedSubscript:@"osUpdateInfo"];
                }
              }

              v76 = v66;
              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v77 = NFLogGetLogger();
              if (v77)
              {
                v78 = v77;
                v79 = object_getClass(v64);
                v80 = class_isMetaClass(v79);
                v81 = object_getClassName(v64);
                v110 = sel_getName("nextRequestForServer:session:");
                v82 = 45;
                if (v80)
                {
                  v82 = 43;
                }

                v78(6, "%c[%{public}s %{public}s]:%i Calling into SES to get PT key information", v82, v81, v110, 611);
              }

              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v83 = NFSharedLogGetLogger();
              if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
              {
                v84 = object_getClass(v64);
                if (class_isMetaClass(v84))
                {
                  v85 = 43;
                }

                else
                {
                  v85 = 45;
                }

                v86 = object_getClassName(v126);
                v87 = sel_getName("nextRequestForServer:session:");
                *buf = 67109890;
                *&buf[4] = v85;
                v64 = v126;
                *v140 = 2082;
                *&v140[2] = v86;
                v141 = 2082;
                v142 = v87;
                v143 = 1024;
                v144 = 611;
                _os_log_impl(&_mh_execute_header, v83, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Calling into SES to get PT key information", buf, 0x22u);
              }

              v88 = [v69 objectForKeyedSubscript:@"SEID"];
              v131 = 0;
              v89 = SESEndPointTSMDictionary();
              v90 = 0;

              if (v90 || !v89)
              {
                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v91 = NFLogGetLogger();
                if (v91)
                {
                  v92 = v91;
                  v93 = object_getClass(v64);
                  v94 = class_isMetaClass(v93);
                  v108 = object_getClassName(v64);
                  v111 = sel_getName("nextRequestForServer:session:");
                  v95 = 45;
                  if (v94)
                  {
                    v95 = 43;
                  }

                  v6 = &GetElapsedTimeInMillisecondsFromMachTime_ptr;
                  v92(3, "%c[%{public}s %{public}s]:%i Failed to get PT Key Info from SESD? %{public}@", v95, v108, v111, 615, v90);
                }

                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v96 = NFSharedLogGetLogger();
                if (os_log_type_enabled(v96, OS_LOG_TYPE_ERROR))
                {
                  v97 = object_getClass(v64);
                  if (class_isMetaClass(v97))
                  {
                    v98 = 43;
                  }

                  else
                  {
                    v98 = 45;
                  }

                  v99 = object_getClassName(v126);
                  v100 = sel_getName("nextRequestForServer:session:");
                  *buf = 67110146;
                  *&buf[4] = v98;
                  v64 = v126;
                  *v140 = 2082;
                  *&v140[2] = v99;
                  v141 = 2082;
                  v142 = v100;
                  v143 = 1024;
                  v144 = 615;
                  v145 = 2114;
                  v146 = v90;
                  _os_log_impl(&_mh_execute_header, v96, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to get PT Key Info from SESD? %{public}@", buf, 0x2Cu);
                }

                v66 = v76;
              }

              else
              {
                [v72 addEntriesFromDictionary:v89];
                v66 = v76;
              }

              [v120 addObject:v72];

              v65 = v122;
              v67 = v119;
            }

            v68 = v68 + 1;
          }

          while (v65 != v68);
          v65 = [obja countByEnumeratingWithState:&v132 objects:v147 count:16];
        }

        while (v65);
      }

      [v113 setObject:v120 forKey:@"SEStateInformation"];
      v101 = sub_10003701C(v64);
      v102 = v101;
      if (v101)
      {
        v103 = [v101 NF_asHexString];
        [v113 setObject:v103 forKey:@"APNTokenUpdateInfo"];
      }

      v104 = [v118 initialClientRequestInfo];
      v105 = [v104 count];

      v8 = v118;
      v7 = v115;
      v5 = v116;
      v10 = &GetElapsedTimeInMillisecondsFromMachTime_ptr;
      if (v105)
      {
        v106 = [v118 initialClientRequestInfo];
        [v113 setObject:v106 forKey:@"ClientRequestInfo"];

        v8 = v118;
        [v118 setInitialClientRequestInfo:0];
      }

      [v115 addEntriesFromDictionary:v113];
    }

    v12 = v10[197];
    obj = objc_opt_new();
    if (obj)
    {
      v117 = v8;
      v114 = v7;
      v13 = sub_100037100(v126);

      if (v13)
      {
        v14 = sub_100037100(v126);
        [obj addObject:v14];
      }

      v129 = 0u;
      v130 = 0u;
      v127 = 0u;
      v128 = 0u;
      v15 = [v126[3] allValues];
      v16 = [v15 countByEnumeratingWithState:&v127 objects:v138 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v128;
        do
        {
          for (i = 0; i != v17; i = i + 1)
          {
            if (*v128 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = *(*(&v127 + 1) + 8 * i);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v25 = NFLogGetLogger();
              if (v25)
              {
                v26 = v25;
                v27 = object_getClass(v126);
                v28 = class_isMetaClass(v27);
                v29 = object_getClassName(v126);
                v30 = sel_getName("nextRequestForServer:session:");
                v112 = objc_opt_class();
                v31 = 45;
                if (v28)
                {
                  v31 = 43;
                }

                v26(4, "%c[%{public}s %{public}s]:%i Unexected state object, %{public}@", v31, v29, v30, 647, v112);
              }

              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v24 = NFSharedLogGetLogger();
              if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
              {
                v32 = object_getClass(v126);
                if (class_isMetaClass(v32))
                {
                  v33 = 43;
                }

                else
                {
                  v33 = 45;
                }

                v34 = object_getClassName(v126);
                v35 = sel_getName("nextRequestForServer:session:");
                v36 = objc_opt_class();
                *buf = 67110146;
                *&buf[4] = v33;
                *v140 = 2082;
                *&v140[2] = v34;
                v141 = 2082;
                v142 = v35;
                v143 = 1024;
                v144 = 647;
                v145 = 2114;
                v146 = v36;
                _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Unexected state object, %{public}@", buf, 0x2Cu);
              }

              goto LABEL_29;
            }

            v21 = [v20 APNConnectionRequesterFirst];

            if (v21)
            {
              v22 = [v20 APNConnectionRequesterFirst];
              [obj addObject:v22];
            }

            v23 = [v20 APNConnectionRequesterLatest];

            if (v23)
            {
              v24 = [v20 APNConnectionRequesterLatest];
              [obj addObject:v24];
LABEL_29:

              continue;
            }
          }

          v17 = [v15 countByEnumeratingWithState:&v127 objects:v138 count:16];
        }

        while (v17);
      }

      v136 = @"APNState";
      v137 = obj;
      v37 = [NSDictionary dictionaryWithObjects:&v137 forKeys:&v136 count:1];
      v7 = v114;
      [v114 addEntriesFromDictionary:v37];

      v8 = v117;
    }

    v38 = v7;
    goto LABEL_34;
  }

  v38 = 0;
LABEL_35:

  return v38;
}

id sub_100038884(void *a1)
{
  if (a1)
  {
    v1 = a1;
    objc_sync_enter(v1);
    v2 = [[NSArray alloc] initWithArray:v1[4]];
    objc_sync_exit(v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_1000388F0(void *a1, void *a2)
{
  if (a1)
  {
    v3 = a1;
    v4 = a2;
    objc_sync_enter(v3);
    [v3[4] addObject:v4];

    objc_sync_exit(v3);

    sub_100035A3C(v3);
  }
}

void sub_100038960(void *a1, void *a2)
{
  if (a1)
  {
    v3 = a1;
    v4 = a2;
    objc_sync_enter(v3);
    [v3[4] removeObject:v4];

    objc_sync_exit(v3);

    sub_100035A3C(v3);
  }
}

id sub_1000389D0(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1 && v3)
  {
    v5 = a1;
    objc_sync_enter(v5);
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v31 = v5;
    obj = v5[4];
    v6 = [obj countByEnumeratingWithState:&v32 objects:v46 count:16];
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
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v32 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v11 = [v10 taskId];
            v12 = [v4 isEqualToString:v11];

            if (v12)
            {
              v27 = v10;
              goto LABEL_25;
            }
          }

          else
          {
            v13 = v4;
            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            Logger = NFLogGetLogger();
            if (Logger)
            {
              v15 = Logger;
              Class = object_getClass(v31);
              isMetaClass = class_isMetaClass(Class);
              ClassName = object_getClassName(v31);
              Name = sel_getName("redirectStateForTaskID:");
              v29 = objc_opt_class();
              v20 = 45;
              if (isMetaClass)
              {
                v20 = 43;
              }

              v15(4, "%c[%{public}s %{public}s]:%i Unexpected state object, %{public}@", v20, ClassName, Name, 715, v29);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v21 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              v22 = object_getClass(v31);
              if (class_isMetaClass(v22))
              {
                v23 = 43;
              }

              else
              {
                v23 = 45;
              }

              v24 = object_getClassName(v31);
              v25 = sel_getName("redirectStateForTaskID:");
              v26 = objc_opt_class();
              *buf = 67110146;
              v37 = v23;
              v38 = 2082;
              v39 = v24;
              v40 = 2082;
              v41 = v25;
              v42 = 1024;
              v43 = 715;
              v44 = 2114;
              v45 = v26;
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Unexpected state object, %{public}@", buf, 0x2Cu);
            }

            v4 = v13;
          }
        }

        v7 = [obj countByEnumeratingWithState:&v32 objects:v46 count:16];
      }

      while (v7);
    }

    v27 = 0;
LABEL_25:

    objc_sync_exit(v31);
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

id sub_100038CE4(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (!v3)
    {
      v13 = +[NSAssertionHandler currentHandler];
      [v13 handleFailureInMethod:"redirectStateForIdentifier:" object:a1 file:@"NFRemoteAdminStorage.m" lineNumber:729 description:{@"Invalid parameter not satisfying: %@", @"theIdentifier != nil"}];
    }

    v5 = a1;
    objc_sync_enter(v5);
    v6 = [v5[4] objectEnumerator];
    v7 = 0;
    while (1)
    {
      v8 = v7;
      v7 = [v6 nextObject];

      if (!v7)
      {
        break;
      }

      v9 = [v7 serverIdentifier];
      v10 = [v9 isEqualToString:v4];

      if (v10)
      {
        v11 = v7;
        break;
      }
    }

    objc_sync_exit(v5);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void sub_100038E88(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = +[NSURLSessionConfiguration ephemeralSessionConfiguration];
  [v3 setTimeoutIntervalForRequest:30.0];
  [v3 setTimeoutIntervalForResource:120.0];
  [v3 setHTTPCookieAcceptPolicy:0];
  [v3 setHTTPShouldSetCookies:1];
  [v3 setAllowsCellularAccess:1];
  [v3 setRequestCachePolicy:1];
  [v3 setWaitsForConnectivity:0];
  v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v5 = dispatch_queue_create("com.apple.seld.network", v4);

  if (!v5)
  {
    v9 = +[NSAssertionHandler currentHandler];
    [v9 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"NFRemoteAdminConnectionHTTP.m" lineNumber:78 description:@"networkCallbackQueue is nil"];
  }

  v6 = objc_opt_new();
  [v6 setUnderlyingQueue:v5];
  v7 = [NSURLSession sessionWithConfiguration:v3 delegate:*(a1 + 32) delegateQueue:v6];
  v8 = qword_10005BAA8;
  qword_10005BAA8 = v7;

  objc_autoreleasePoolPop(v2);
}

uint64_t sub_100039F6C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100039F84(uint64_t a1, void *a2, void *a3, void *a4)
{
  v163 = a2;
  v7 = a3;
  v8 = a4;
  v9 = v7;
  v164 = [v9 statusCode];
  if (byte_10005BAB0 == 1)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v11 = Logger;
      Class = object_getClass(*(a1 + 32));
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(*(a1 + 32));
      Name = sel_getName(*(a1 + 88));
      v16 = [v9 allHeaderFields];
      v17 = 45;
      if (isMetaClass)
      {
        v17 = 43;
      }

      v11(6, "%c[%{public}s %{public}s]:%i [TSM] Response Header: %@", v17, ClassName, Name, 315, v16);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v18 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v19))
      {
        v20 = 43;
      }

      else
      {
        v20 = 45;
      }

      v21 = object_getClassName(*(a1 + 32));
      v22 = sel_getName(*(a1 + 88));
      v23 = [v9 allHeaderFields];
      *buf = 67110146;
      v174 = v20;
      v175 = 2082;
      v176 = v21;
      v177 = 2082;
      v178 = v22;
      v179 = 1024;
      v180 = 315;
      v181 = 2112;
      v182 = v23;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i [TSM] Response Header: %@", buf, 0x2Cu);
    }
  }

  v165 = v8;
  v169 = 0u;
  v170 = 0u;
  v167 = 0u;
  v168 = 0u;
  v24 = [&off_100057610 countByEnumeratingWithState:&v167 objects:v185 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v168;
    do
    {
      for (i = 0; i != v25; i = i + 1)
      {
        if (*v168 != v26)
        {
          objc_enumerationMutation(&off_100057610);
        }

        v28 = *(*(&v167 + 1) + 8 * i);
        v29 = [v9 allHeaderFields];
        v30 = [v29 valueForKey:v28];

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v30 length])
        {
          [*(a1 + 40) setObject:v30 forKey:v28];
        }
      }

      v25 = [&off_100057610 countByEnumeratingWithState:&v167 objects:v185 count:16];
    }

    while (v25);
  }

  *(*(*(a1 + 56) + 8) + 24) = mach_continuous_time();
  v31 = *(a1 + 96);
  v32 = v164;
  if (v31)
  {
    *v31 = v164;
  }

  v33 = v8;
  v34 = [v8 copy];
  v35 = *(*(a1 + 64) + 8);
  v36 = *(v35 + 40);
  *(v35 + 40) = v34;

  v37 = &selRef_didChangeRadioState_;
  if (!v8)
  {
    if (byte_10005BAB0)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v70 = NFLogGetLogger();
      if (v70)
      {
        v71 = v70;
        v72 = object_getClass(*(a1 + 32));
        v73 = class_isMetaClass(v72);
        v74 = object_getClassName(*(a1 + 32));
        v75 = sel_getName(*(a1 + 88));
        v76 = [v9 URL];
        v77 = [v76 description];
        v155 = v74;
        v158 = v75;
        v32 = v164;
        v78 = 45;
        if (v73)
        {
          v78 = 43;
        }

        v37 = &selRef_didChangeRadioState_;
        v71(6, "%c[%{public}s %{public}s]:%i [TSM] URL: %@", v78, v155, v158, 349, v77);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v79 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
      {
        v80 = object_getClass(*(a1 + 32));
        if (class_isMetaClass(v80))
        {
          v81 = 43;
        }

        else
        {
          v81 = 45;
        }

        v82 = object_getClassName(*(a1 + 32));
        v83 = sel_getName(*(a1 + 88));
        v84 = [v9 URL];
        v85 = [v84 description];
        *buf = 67110146;
        v174 = v81;
        v175 = 2082;
        v176 = v82;
        v177 = 2082;
        v178 = v83;
        v179 = 1024;
        v180 = 349;
        v181 = 2112;
        v182 = v85;
        _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i [TSM] URL: %@", buf, 0x2Cu);

        v37 = &selRef_didChangeRadioState_;
        v32 = v164;
      }
    }

    if (*(v37 + 2736) == 1)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v86 = NFLogGetLogger();
      if (v86)
      {
        v87 = v86;
        v88 = object_getClass(*(a1 + 32));
        v89 = class_isMetaClass(v88);
        v156 = object_getClassName(*(a1 + 32));
        v159 = sel_getName(*(a1 + 88));
        v90 = 45;
        if (v89)
        {
          v90 = 43;
        }

        v87(6, "%c[%{public}s %{public}s]:%i [TSM] Server response HTTP status: %ld", v90, v156, v159, 350, v32);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v91 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
      {
        v92 = object_getClass(*(a1 + 32));
        if (class_isMetaClass(v92))
        {
          v93 = 43;
        }

        else
        {
          v93 = 45;
        }

        v94 = object_getClassName(*(a1 + 32));
        v95 = sel_getName(*(a1 + 88));
        *buf = 67110146;
        v174 = v93;
        v175 = 2082;
        v176 = v94;
        v177 = 2082;
        v178 = v95;
        v179 = 1024;
        v180 = 350;
        v181 = 2048;
        v182 = v32;
        _os_log_impl(&_mh_execute_header, v91, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i [TSM] Server response HTTP status: %ld", buf, 0x2Cu);
      }
    }

    if (v32 == 200)
    {
      v96 = [v9 MIMEType];
      if (([v96 isEqualToString:@"application/json"] & 1) == 0)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v114 = NFLogGetLogger();
        if (v114)
        {
          v115 = v114;
          v116 = object_getClass(*(a1 + 32));
          v117 = class_isMetaClass(v116);
          v157 = object_getClassName(*(a1 + 32));
          v160 = sel_getName(*(a1 + 88));
          v118 = 45;
          if (v117)
          {
            v118 = 43;
          }

          v115(3, "%c[%{public}s %{public}s]:%i Unexpected content type: %{public}@", v118, v157, v160, 387, v96);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v119 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v119, OS_LOG_TYPE_ERROR))
        {
          v120 = object_getClass(*(a1 + 32));
          if (class_isMetaClass(v120))
          {
            v121 = 43;
          }

          else
          {
            v121 = 45;
          }

          v122 = object_getClassName(*(a1 + 32));
          v123 = sel_getName(*(a1 + 88));
          *buf = 67110146;
          v174 = v121;
          v175 = 2082;
          v176 = v122;
          v177 = 2082;
          v178 = v123;
          v179 = 1024;
          v180 = 387;
          v181 = 2114;
          v182 = v96;
          _os_log_impl(&_mh_execute_header, v119, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Unexpected content type: %{public}@", buf, 0x2Cu);
        }

        *(*(*(a1 + 80) + 8) + 24) = 18;
        v69 = v163;
        goto LABEL_130;
      }

      *(*(*(a1 + 80) + 8) + 24) = 0;
      v69 = v163;
      if ([v163 length])
      {
        v166 = 0;
        v97 = [NSJSONSerialization JSONObjectWithData:v163 options:0 error:&v166];
        v98 = v166;
        if (v98 || !v97)
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v134 = NFLogGetLogger();
          if (v134)
          {
            v135 = v134;
            v136 = object_getClass(*(a1 + 32));
            v137 = class_isMetaClass(v136);
            v138 = object_getClassName(*(a1 + 32));
            v139 = v97;
            v140 = sel_getName(*(a1 + 88));
            v141 = [v98 description];
            v162 = v140;
            v97 = v139;
            v142 = 45;
            if (v137)
            {
              v142 = 43;
            }

            v135(3, "%c[%{public}s %{public}s]:%i JSON parsing error: %{public}@", v142, v138, v162, 400, v141);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v143 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v143, OS_LOG_TYPE_ERROR))
          {
            v144 = object_getClass(*(a1 + 32));
            if (class_isMetaClass(v144))
            {
              v145 = 43;
            }

            else
            {
              v145 = 45;
            }

            v146 = object_getClassName(*(a1 + 32));
            v147 = sel_getName(*(a1 + 88));
            v148 = [v98 description];
            *buf = 67110146;
            v174 = v145;
            v175 = 2082;
            v176 = v146;
            v177 = 2082;
            v178 = v147;
            v179 = 1024;
            v180 = 400;
            v181 = 2114;
            v182 = v148;
            _os_log_impl(&_mh_execute_header, v143, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i JSON parsing error: %{public}@", buf, 0x2Cu);
          }

          *(*(*(a1 + 80) + 8) + 24) = 23;
          v149 = [NSError alloc];
          v150 = [NSString stringWithUTF8String:"seld"];
          v171 = NSLocalizedDescriptionKey;
          v172 = @"Decoding Error";
          v151 = [NSDictionary dictionaryWithObjects:&v172 forKeys:&v171 count:1];
          v152 = [v149 initWithDomain:v150 code:23 userInfo:v151];
          v153 = *(*(a1 + 64) + 8);
          v154 = *(v153 + 40);
          *(v153 + 40) = v152;

          v69 = v163;
        }

        else
        {
          [*(a1 + 48) addEntriesFromDictionary:v97];
        }
      }

      else
      {
        if (*(v37 + 2736) != 1)
        {
LABEL_130:
          dispatch_semaphore_signal(*(*(a1 + 32) + 24));

          v33 = 0;
          goto LABEL_131;
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v124 = NFLogGetLogger();
        if (v124)
        {
          v125 = v124;
          v126 = object_getClass(*(a1 + 32));
          v127 = class_isMetaClass(v126);
          v128 = object_getClassName(*(a1 + 32));
          v161 = sel_getName(*(a1 + 88));
          v129 = 45;
          if (v127)
          {
            v129 = 43;
          }

          v125(6, "%c[%{public}s %{public}s]:%i [TSM] Received 0 bytes, empty body.", v129, v128, v161, 410);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v98 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
        {
          v130 = object_getClass(*(a1 + 32));
          if (class_isMetaClass(v130))
          {
            v131 = 43;
          }

          else
          {
            v131 = 45;
          }

          v132 = object_getClassName(*(a1 + 32));
          v133 = sel_getName(*(a1 + 88));
          *buf = 67109890;
          v174 = v131;
          v175 = 2082;
          v176 = v132;
          v177 = 2082;
          v178 = v133;
          v179 = 1024;
          v180 = 410;
          _os_log_impl(&_mh_execute_header, v98, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i [TSM] Received 0 bytes, empty body.", buf, 0x22u);
        }

        v69 = v163;
      }

      goto LABEL_130;
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v99 = NFLogGetLogger();
    if (v99)
    {
      v100 = v99;
      v101 = object_getClass(*(a1 + 32));
      v102 = class_isMetaClass(v101);
      v103 = object_getClassName(*(a1 + 32));
      v104 = sel_getName(*(a1 + 88));
      v105 = [NSNumber numberWithInteger:v32];
      v106 = 45;
      if (v102)
      {
        v106 = 43;
      }

      v100(6, "%c[%{public}s %{public}s]:%i HTTP status: %{public}@", v106, v103, v104, 354, v105);

      v32 = v164;
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v107 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT))
    {
      v108 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v108))
      {
        v109 = 43;
      }

      else
      {
        v109 = 45;
      }

      v110 = object_getClassName(*(a1 + 32));
      v111 = sel_getName(*(a1 + 88));
      v112 = [NSNumber numberWithInteger:v32];
      *buf = 67110146;
      v174 = v109;
      v175 = 2082;
      v176 = v110;
      v177 = 2082;
      v178 = v111;
      v179 = 1024;
      v180 = 354;
      v181 = 2114;
      v182 = v112;
      _os_log_impl(&_mh_execute_header, v107, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i HTTP status: %{public}@", buf, 0x2Cu);
    }

    if (v32 <= 411)
    {
      v113 = 0;
      v69 = v163;
      if (v32 == 204 || v32 == 404)
      {
        goto LABEL_117;
      }
    }

    else
    {
      v69 = v163;
      switch(v32)
      {
        case 503:
          v113 = 19;
          goto LABEL_117;
        case 500:
          v113 = 20;
          goto LABEL_117;
        case 412:
          v113 = 3;
LABEL_117:
          *(*(*(a1 + 80) + 8) + 24) = v113;
          dispatch_semaphore_signal(*(*(a1 + 32) + 24));
          goto LABEL_131;
      }
    }

    v113 = 18;
    goto LABEL_117;
  }

  if (byte_10005BAB0)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v38 = NFLogGetLogger();
    if (v38)
    {
      v39 = v38;
      v40 = object_getClass(*(a1 + 32));
      v41 = class_isMetaClass(v40);
      v42 = object_getClassName(*(a1 + 32));
      v43 = sel_getName(*(a1 + 88));
      v44 = [*(*(*(a1 + 72) + 8) + 40) description];
      v45 = 45;
      if (v41)
      {
        v45 = 43;
      }

      v39(6, "%c[%{public}s %{public}s]:%i [TSM] URL: %@", v45, v42, v43, 336, v44);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v46 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      v47 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v47))
      {
        v48 = 43;
      }

      else
      {
        v48 = 45;
      }

      v49 = object_getClassName(*(a1 + 32));
      v50 = sel_getName(*(a1 + 88));
      v51 = [*(*(*(a1 + 72) + 8) + 40) description];
      *buf = 67110146;
      v174 = v48;
      v175 = 2082;
      v176 = v49;
      v177 = 2082;
      v178 = v50;
      v179 = 1024;
      v180 = 336;
      v181 = 2112;
      v182 = v51;
      _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i [TSM] URL: %@", buf, 0x2Cu);
    }
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v52 = NFLogGetLogger();
  if (v52)
  {
    v53 = v52;
    v54 = object_getClass(*(a1 + 32));
    v55 = class_isMetaClass(v54);
    v56 = object_getClassName(*(a1 + 32));
    v57 = sel_getName(*(a1 + 88));
    v58 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v165 code]);
    v59 = [v165 localizedDescription];
    v60 = 45;
    if (v55)
    {
      v60 = 43;
    }

    v53(3, "%c[%{public}s %{public}s]:%i Client error: %{public}@ - %{public}@", v60, v56, v57, 337, v58, v59);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v61 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
  {
    v62 = object_getClass(*(a1 + 32));
    if (class_isMetaClass(v62))
    {
      v63 = 43;
    }

    else
    {
      v63 = 45;
    }

    v64 = object_getClassName(*(a1 + 32));
    v65 = sel_getName(*(a1 + 88));
    v66 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v165 code]);
    v67 = [v165 localizedDescription];
    *buf = 67110402;
    v174 = v63;
    v175 = 2082;
    v176 = v64;
    v177 = 2082;
    v178 = v65;
    v179 = 1024;
    v180 = 337;
    v181 = 2114;
    v182 = v66;
    v183 = 2114;
    v184 = v67;
    _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Client error: %{public}@ - %{public}@", buf, 0x36u);
  }

  v33 = v165;
  if ([v165 code] == -1009)
  {
    v68 = 25;
  }

  else
  {
    v68 = 17;
  }

  *(*(*(a1 + 80) + 8) + 24) = v68;
  dispatch_semaphore_signal(*(*(a1 + 32) + 24));
  v69 = v163;
LABEL_131:
}

uint64_t sub_10003AFFC(uint64_t a1, int a2, char a3, CFErrorRef err)
{
  if (err)
  {
    v7 = CFErrorCopyDescription(err);
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v9 = Logger;
      Class = object_getClass(*(a1 + 32));
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(*(a1 + 32));
      Name = sel_getName(*(a1 + 48));
      v12 = 45;
      if (isMetaClass)
      {
        v12 = 43;
      }

      v9(3, "%c[%{public}s %{public}s]:%i Not trusted, error=%{public}@", v12, ClassName, Name, 496, err);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v13 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v14))
      {
        v15 = 43;
      }

      else
      {
        v15 = 45;
      }

      v16 = object_getClassName(*(a1 + 32));
      v17 = sel_getName(*(a1 + 48));
      *buf = 67110146;
      v72 = v15;
      v73 = 2082;
      v74 = v16;
      v75 = 2082;
      v76 = v17;
      v77 = 1024;
      v78 = 496;
      v79 = 2114;
      v80 = err;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Not trusted, error=%{public}@", buf, 0x2Cu);
    }

    CFRelease(v7);
  }

  if ((a3 & 1) == 0)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v18 = NFLogGetLogger();
    if (v18)
    {
      v19 = v18;
      v20 = object_getClass(*(a1 + 32));
      v21 = class_isMetaClass(v20);
      v22 = object_getClassName(*(a1 + 32));
      v67 = sel_getName(*(a1 + 48));
      v23 = 45;
      if (v21)
      {
        v23 = 43;
      }

      v19(3, "%c[%{public}s %{public}s]:%i Not trusted", v23, v22, v67, 512);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v24 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v25))
      {
        v26 = 43;
      }

      else
      {
        v26 = 45;
      }

      v27 = object_getClassName(*(a1 + 32));
      v28 = sel_getName(*(a1 + 48));
      *buf = 67109890;
      v72 = v26;
      v73 = 2082;
      v74 = v27;
      v75 = 2082;
      v76 = v28;
      v77 = 1024;
      v78 = 512;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Not trusted", buf, 0x22u);
    }

    v29 = *(a1 + 32);
    if (v29 && os_variant_has_internal_content() && (v30 = CFPreferencesGetAppBooleanValue(@"PKBypassCertValidation", kCFPreferencesAnyApplication, 0) != 0, CFPreferencesGetAppBooleanValue(@"PKBypassEVCertValidation", kCFPreferencesAnyApplication, 0) | v30))
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v31 = NFLogGetLogger();
      if (v31)
      {
        v32 = v31;
        v33 = object_getClass(v29);
        v34 = class_isMetaClass(v33);
        v35 = object_getClassName(v29);
        v68 = sel_getName("_canBypassTrustExtendedValidation");
        v36 = 45;
        if (v34)
        {
          v36 = 43;
        }

        v32(6, "%c[%{public}s %{public}s]:%i Allowing bypass of extended trust validation by preference on internal build", v36, v35, v68, 478);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v37 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        v38 = object_getClass(v29);
        if (class_isMetaClass(v38))
        {
          v39 = 43;
        }

        else
        {
          v39 = 45;
        }

        v40 = object_getClassName(v29);
        v41 = sel_getName("_canBypassTrustExtendedValidation");
        *buf = 67109890;
        v72 = v39;
        v73 = 2082;
        v74 = v40;
        v75 = 2082;
        v76 = v41;
        v77 = 1024;
        v78 = 478;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Allowing bypass of extended trust validation by preference on internal build", buf, 0x22u);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v42 = NFLogGetLogger();
      if (v42)
      {
        v43 = v42;
        v44 = object_getClass(*(a1 + 32));
        v45 = class_isMetaClass(v44);
        v46 = object_getClassName(*(a1 + 32));
        v69 = sel_getName(*(a1 + 48));
        v47 = 45;
        if (v45)
        {
          v47 = 43;
        }

        v43(6, "%c[%{public}s %{public}s]:%i Internal trust bypass", v47, v46, v69, 516);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v48 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_54;
      }

      v49 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v49))
      {
        v50 = 43;
      }

      else
      {
        v50 = 45;
      }

      v51 = object_getClassName(*(a1 + 32));
      v52 = sel_getName(*(a1 + 48));
      *buf = 67109890;
      v72 = v50;
      v73 = 2082;
      v74 = v51;
      v75 = 2082;
      v76 = v52;
      v77 = 1024;
      v78 = 516;
      v53 = "%c[%{public}s %{public}s]:%i Internal trust bypass";
    }

    else
    {
      if (*(*(a1 + 32) + 49) != 1)
      {
        return (*(*(a1 + 40) + 16))();
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v54 = NFLogGetLogger();
      if (v54)
      {
        v55 = v54;
        v56 = object_getClass(*(a1 + 32));
        v57 = class_isMetaClass(v56);
        v58 = object_getClassName(*(a1 + 32));
        v70 = sel_getName(*(a1 + 48));
        v59 = 45;
        if (v57)
        {
          v59 = 43;
        }

        v55(6, "%c[%{public}s %{public}s]:%i Override EV trust validation", v59, v58, v70, 523);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v48 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_54;
      }

      v60 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v60))
      {
        v61 = 43;
      }

      else
      {
        v61 = 45;
      }

      v62 = object_getClassName(*(a1 + 32));
      v63 = sel_getName(*(a1 + 48));
      *buf = 67109890;
      v72 = v61;
      v73 = 2082;
      v74 = v62;
      v75 = 2082;
      v76 = v63;
      v77 = 1024;
      v78 = 523;
      v53 = "%c[%{public}s %{public}s]:%i Override EV trust validation";
    }

    _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, v53, buf, 0x22u);
LABEL_54:
  }

  return (*(*(a1 + 40) + 16))();
}

void sub_10003BB64(uint64_t a1, int a2)
{
  v2 = *(a1 + 40);
  if (a2)
  {
    v5 = +[NSURLCredential credentialForTrust:](NSURLCredential, "credentialForTrust:", [*(a1 + 32) serverTrust]);
    (*(v2 + 16))(v2, 0, v5);
  }

  else
  {
    v3 = *(v2 + 16);
    v4 = *(a1 + 40);

    v3(v4, 2, 0);
  }
}