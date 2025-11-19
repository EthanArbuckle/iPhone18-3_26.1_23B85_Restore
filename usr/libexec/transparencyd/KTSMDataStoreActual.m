@interface KTSMDataStoreActual
- (BOOL)clearDataStore:(id *)a3;
- (BOOL)clearDeviceSignatures:(id *)a3;
- (BOOL)haveDoneFixup:(id)a3;
- (BOOL)storeIDMSDeviceList:(id)a3 error:(id *)a4;
- (BOOL)storeQueryRequest:(id)a3 queryResponse:(id)a4 serverHint:(id)a5 uri:(id)a6 application:(id)a7 error:(id *)a8;
- (BOOL)storeSelfVerificationInfo:(id)a3 application:(id)a4 error:(id *)a5;
- (KTSMDataStoreActual)initWithPersistentContainer:(id)a3;
- (id)errorFromData:(id)a3;
- (id)errorFromJson:(id)a3;
- (id)getSettingsData:(id)a3;
- (id)getSettingsDate:(id)a3;
- (id)getSettingsNumber:(id)a3;
- (id)jsonifyError:(id)a3;
- (id)managedObjectContextWithMergePolicy;
- (id)pushTokenForService:(id)a3;
- (void)_onQueueClearDeviceSignatureSignatures;
- (void)delete:(id)a3 onMOC:(id)a4;
- (void)deleteFixup:(id)a3;
- (void)deleteSelfVerificationInfoForApplication:(id)a3 error:(id *)a4;
- (void)fetchDeviceSignature:(id)a3 complete:(id)a4;
- (void)fetchIDMSDeviceList:(id)a3;
- (void)fetchKTInfoForApplication:(id)a3 uri:(id)a4 complete:(id)a5;
- (void)fetchSelfVerificationInfoForApplication:(id)a3 complete:(id)a4;
- (void)setSettingsData:(id)a3 data:(id)a4;
- (void)setSettingsDate:(id)a3 date:(id)a4;
- (void)setSettingsNumber:(id)a3 number:(id)a4;
- (void)storeDeviceSignature:(id)a3 complete:(id)a4;
- (void)storeFixup:(id)a3;
@end

@implementation KTSMDataStoreActual

- (id)managedObjectContextWithMergePolicy
{
  v2 = [(KTSMDataStoreActual *)self container];
  v3 = [v2 newBackgroundContext];

  v4 = +[NSMergePolicy mergeByPropertyStoreTrumpMergePolicy];
  [v3 setMergePolicy:v4];

  return v3;
}

- (KTSMDataStoreActual)initWithPersistentContainer:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = KTSMDataStoreActual;
  v5 = [(KTSMDataStoreActual *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(KTSMDataStoreActual *)v5 setContainer:v4];
    v7 = v6;
  }

  return v6;
}

- (void)fetchSelfVerificationInfoForApplication:(id)a3 complete:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (qword_10039C928 != -1)
  {
    sub_10025BAD8();
  }

  v8 = qword_10039C930;
  if (os_log_type_enabled(qword_10039C930, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "fetchSelfVerificationInfoForApplication:application:", buf, 2u);
  }

  v9 = +[CachedData fetchRequest];
  v10 = [NSPredicate predicateWithFormat:@"key = %@ AND application = %@ AND unique = %@", @"SelfVerificationInfo", v6, &stru_10032E8E8];
  [v9 setPredicate:v10];

  *buf = 0;
  v39 = buf;
  v40 = 0x3032000000;
  v41 = sub_1001BE5B0;
  v42 = sub_1001BE5C0;
  v43 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = sub_1001BE5B0;
  v36 = sub_1001BE5C0;
  v37 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_1001BE5B0;
  v30 = sub_1001BE5C0;
  v31 = 0;
  [(KTSMDataStoreActual *)self managedObjectContextWithMergePolicy];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1001BE5C8;
  v11 = v20[3] = &unk_100326C68;
  v21 = v11;
  v12 = v9;
  v22 = v12;
  v23 = &v26;
  v24 = buf;
  v25 = &v32;
  [v11 performBlockAndWait:v20];
  if (*(v39 + 5))
  {
    v13 = objc_opt_class();
    v14 = *(v39 + 5);
    v15 = (v27 + 5);
    obj = v27[5];
    v16 = [NSKeyedUnarchiver unarchivedObjectOfClass:v13 fromData:v14 error:&obj];
    objc_storeStrong(v15, obj);
    v7[2](v7, v16, v33[5], v27[5]);
  }

  else
  {
    if (qword_10039C928 != -1)
    {
      sub_10025BAEC();
    }

    v17 = qword_10039C930;
    if (os_log_type_enabled(qword_10039C930, OS_LOG_TYPE_INFO))
    {
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "fetchSelfVerificationInfoForApplication: no data", v19, 2u);
    }

    v7[2](v7, 0, 0, v27[5]);
  }

  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v32, 8);

  _Block_object_dispose(buf, 8);
}

- (BOOL)storeSelfVerificationInfo:(id)a3 application:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if (qword_10039C928 != -1)
  {
    sub_10025BB14();
  }

  v10 = qword_10039C930;
  if (os_log_type_enabled(qword_10039C930, OS_LOG_TYPE_INFO))
  {
    v11 = v10;
    v12 = [v8 syncedLoggableDatas];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "storeSelfVerificationInfo: syncedLoggableDatas %@", &buf, 0xCu);
  }

  if (qword_10039C928 != -1)
  {
    sub_10025BB28();
  }

  v13 = qword_10039C930;
  if (os_log_type_enabled(qword_10039C930, OS_LOG_TYPE_INFO))
  {
    v14 = v13;
    v15 = [v8 uriToServerLoggableDatas];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "storeSelfVerificationInfo: uriToServerLoggableDatas: %@", &buf, 0xCu);
  }

  if (qword_10039C928 != -1)
  {
    sub_10025BB50();
  }

  v16 = qword_10039C930;
  if (os_log_type_enabled(qword_10039C930, OS_LOG_TYPE_INFO))
  {
    v17 = v16;
    v18 = [v8 selfDeviceID];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v18;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "storeSelfVerificationInfo: selfDeviceID: %@", &buf, 0xCu);
  }

  v19 = [NSKeyedArchiver archivedDataWithRootObject:v8 requiringSecureCoding:1 error:a5];
  if (v19)
  {
    v34 = 0;
    v35 = &v34;
    v36 = 0x2020000000;
    v37 = 0;
    *&buf = 0;
    *(&buf + 1) = &buf;
    v41 = 0x3032000000;
    v42 = sub_1001BE5B0;
    v43 = sub_1001BE5C0;
    v44 = 0;
    v20 = [(KTSMDataStoreActual *)self container];
    v21 = [v20 newBackgroundContext];

    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_1001BECE0;
    v28[3] = &unk_10031A230;
    v29 = v9;
    v22 = v21;
    v30 = v22;
    p_buf = &buf;
    v31 = v19;
    v33 = &v34;
    [v22 performBlockAndWait:v28];
    v23 = *(v35 + 24);
    if (a5 && (v35[3] & 1) == 0)
    {
      if (qword_10039C928 != -1)
      {
        sub_10025BB78();
      }

      v24 = qword_10039C930;
      if (os_log_type_enabled(qword_10039C930, OS_LOG_TYPE_ERROR))
      {
        v25 = *(*(&buf + 1) + 40);
        *v38 = 138412290;
        v39 = v25;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "storeSelfVerificationInfo: error %@", v38, 0xCu);
      }

      *a5 = *(*(&buf + 1) + 40);
      v23 = *(v35 + 24);
    }

    _Block_object_dispose(&buf, 8);
    _Block_object_dispose(&v34, 8);
  }

  else
  {
    if (qword_10039C928 != -1)
    {
      sub_10025BBA0();
    }

    v26 = qword_10039C930;
    if (os_log_type_enabled(qword_10039C930, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "storeSelfVerificationInfo: archivedDataWithRootObject", &buf, 2u);
    }

    v23 = 0;
  }

  return v23 & 1;
}

- (void)deleteSelfVerificationInfoForApplication:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(KTSMDataStoreActual *)self managedObjectContextWithMergePolicy];
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_1001BE5B0;
  v20 = sub_1001BE5C0;
  v21 = 0;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001BF240;
  v11[3] = &unk_100326DB0;
  v8 = v6;
  v12 = v8;
  v9 = v7;
  v14 = &v16;
  v15 = a4;
  v13 = v9;
  [v9 performBlockAndWait:v11];
  if (a4)
  {
    v10 = v17[5];
    if (v10)
    {
      *a4 = v10;
    }
  }

  _Block_object_dispose(&v16, 8);
}

- (void)fetchIDMSDeviceList:(id)a3
{
  v4 = a3;
  if (qword_10039C928 != -1)
  {
    sub_10025BC40();
  }

  v5 = qword_10039C930;
  if (os_log_type_enabled(qword_10039C930, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "fetchIDMSDeviceList", buf, 2u);
  }

  v6 = +[CachedData fetchRequest];
  v7 = [NSPredicate predicateWithFormat:@"key = %@ AND application = %@ AND unique = %@", @"IDMSDeviceList", @"global", &stru_10032E8E8];
  [v6 setPredicate:v7];

  *buf = 0;
  v38 = buf;
  v39 = 0x3032000000;
  v40 = sub_1001BE5B0;
  v41 = sub_1001BE5C0;
  v42 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = sub_1001BE5B0;
  v35 = sub_1001BE5C0;
  v36 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = sub_1001BE5B0;
  v29 = sub_1001BE5C0;
  v30 = 0;
  [(KTSMDataStoreActual *)self managedObjectContextWithMergePolicy];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1001BF86C;
  v8 = v19[3] = &unk_100326C68;
  v20 = v8;
  v9 = v6;
  v21 = v9;
  v22 = &v25;
  v23 = buf;
  v24 = &v31;
  [v8 performBlockAndWait:v19];
  if (*(v38 + 5))
  {
    v45[0] = objc_opt_class();
    v45[1] = objc_opt_class();
    v10 = [NSArray arrayWithObjects:v45 count:2];
    v11 = [NSSet setWithArray:v10];
    v12 = *(v38 + 5);
    v13 = (v26 + 5);
    obj = v26[5];
    v14 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v11 fromData:v12 error:&obj];
    objc_storeStrong(v13, obj);

    if (v26[5])
    {
      if (qword_10039C928 != -1)
      {
        sub_10025BC54();
      }

      v15 = qword_10039C930;
      if (os_log_type_enabled(qword_10039C930, OS_LOG_TYPE_ERROR))
      {
        v16 = v26[5];
        *v43 = 138412290;
        v44 = v16;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "fetchIDMSDeviceList: unarchivedObjectOfClasses %@", v43, 0xCu);
      }

      v17 = v26[5];
    }

    else
    {
      v17 = 0;
    }

    v4[2](v4, v14, v32[5], v17);
  }

  else
  {
    v4[2](v4, 0, 0, v26[5]);
  }

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v31, 8);

  _Block_object_dispose(buf, 8);
}

- (BOOL)storeIDMSDeviceList:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (qword_10039C928 != -1)
  {
    sub_10025BCA4();
  }

  v7 = qword_10039C930;
  if (os_log_type_enabled(qword_10039C930, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "storeIDMSDeviceList: %@", &buf, 0xCu);
  }

  v8 = [NSKeyedArchiver archivedDataWithRootObject:v6 requiringSecureCoding:1 error:a4];
  if (v8)
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    v23 = 0;
    *&buf = 0;
    *(&buf + 1) = &buf;
    v27 = 0x3032000000;
    v28 = sub_1001BE5B0;
    v29 = sub_1001BE5C0;
    v30 = 0;
    [(KTSMDataStoreActual *)self managedObjectContextWithMergePolicy];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1001BFE98;
    v9 = v15[3] = &unk_100326ED8;
    v16 = v9;
    p_buf = &buf;
    v17 = v8;
    v19 = &v20;
    [v9 performBlockAndWait:v15];
    v10 = *(v21 + 24);
    if (a4 && (v21[3] & 1) == 0)
    {
      if (qword_10039C928 != -1)
      {
        sub_10025BCB8();
      }

      v11 = qword_10039C930;
      if (os_log_type_enabled(qword_10039C930, OS_LOG_TYPE_ERROR))
      {
        v12 = *(*(&buf + 1) + 40);
        *v24 = 138412290;
        v25 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "storeIDMSDeviceList: error %@", v24, 0xCu);
      }

      *a4 = *(*(&buf + 1) + 40);
      v10 = *(v21 + 24);
    }

    _Block_object_dispose(&buf, 8);
    _Block_object_dispose(&v20, 8);
  }

  else
  {
    if (qword_10039C928 != -1)
    {
      sub_10025BCE0();
    }

    v13 = qword_10039C930;
    if (os_log_type_enabled(qword_10039C930, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "storeIDMSDeviceList: archivedDataWithRootObject", &buf, 2u);
    }

    v10 = 0;
  }

  return v10 & 1;
}

- (void)fetchKTInfoForApplication:(id)a3 uri:(id)a4 complete:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (qword_10039C928 != -1)
  {
    sub_10025BD80();
  }

  v11 = qword_10039C930;
  if (os_log_type_enabled(qword_10039C930, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "fetchKTInfoForApplication:uri:", buf, 2u);
  }

  v12 = +[CachedData fetchRequest];
  v13 = [NSPredicate predicateWithFormat:@"key = %@ AND application = %@ AND unique = %@", @"QueryResponse", v8, v9];
  [v12 setPredicate:v13];

  [(KTSMDataStoreActual *)self managedObjectContextWithMergePolicy];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1001C0498;
  v18 = v17[3] = &unk_10031A818;
  v19 = v12;
  v20 = v10;
  v14 = v10;
  v15 = v12;
  v16 = v18;
  [v16 performBlockAndWait:v17];
}

- (BOOL)storeQueryRequest:(id)a3 queryResponse:(id)a4 serverHint:(id)a5 uri:(id)a6 application:(id)a7 error:(id *)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  if (qword_10039C928 != -1)
  {
    sub_10025BDE4();
  }

  v18 = qword_10039C930;
  if (os_log_type_enabled(qword_10039C930, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v16;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "storeQueryResponse %@", &buf, 0xCu);
  }

  v19 = objc_alloc_init(KTQueryInfo);
  [(KTQueryInfo *)v19 setQueryRequest:v13];
  [(KTQueryInfo *)v19 setQueryResponse:v14];
  [(KTQueryInfo *)v19 setServerHint:v15];
  v20 = [(TransparencyGPBMessage *)v19 data];
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 0;
  *&buf = 0;
  *(&buf + 1) = &buf;
  v46 = 0x3032000000;
  v47 = sub_1001BE5B0;
  v48 = sub_1001BE5C0;
  v49 = 0;
  v21 = [(KTSMDataStoreActual *)self managedObjectContextWithMergePolicy];
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_1001C0B94;
  v32[3] = &unk_100327000;
  v22 = v17;
  v33 = v22;
  v30 = v16;
  v34 = v30;
  v23 = v21;
  v35 = v23;
  p_buf = &buf;
  v24 = v20;
  v36 = v24;
  v38 = &v39;
  [v23 performBlockAndWait:v32];
  v25 = *(v40 + 24);
  if (a8 && (v40[3] & 1) == 0)
  {
    if (qword_10039C928 == -1)
    {
      v26 = &qword_10039A8D0[742];
    }

    else
    {
      sub_10025BDF8();
      v26 = qword_10039A8D0 + 5936;
    }

    v27 = v26[294];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = *(*(&buf + 1) + 40);
      *v43 = 138412290;
      v44 = v28;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "storeQueryResponse: error %@", v43, 0xCu);
    }

    *a8 = *(*(&buf + 1) + 40);
    v25 = *(v40 + 24);
  }

  _Block_object_dispose(&buf, 8);
  _Block_object_dispose(&v39, 8);

  return v25 & 1;
}

- (id)jsonifyError:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v19[0] = @"code";
    v6 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v4 code]);
    v19[1] = @"domain";
    v20[0] = v6;
    v7 = [v5 domain];
    v20[1] = v7;
    v8 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:2];
    v9 = [v8 mutableCopy];

    v10 = [v5 userInfo];
    v11 = [v10 count];

    if (v11)
    {
      v12 = +[NSMutableDictionary dictionary];
      v13 = [v5 userInfo];
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_1001C116C;
      v16[3] = &unk_100327048;
      v17 = v12;
      v18 = self;
      v14 = v12;
      [v13 enumerateKeysAndObjectsUsingBlock:v16];

      [v9 setObject:v14 forKeyedSubscript:@"userinfo"];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)errorFromData:(id)a3
{
  if (a3)
  {
    v4 = [NSJSONSerialization JSONObjectWithData:a3 options:0 error:0];
    objc_opt_class();
    v5 = 0;
    if (objc_opt_isKindOfClass())
    {
      v5 = [(KTSMDataStoreActual *)self errorFromJson:v4];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)errorFromJson:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"code"];
  v6 = [v4 objectForKeyedSubscript:@"domain"];
  v7 = [v4 objectForKeyedSubscript:@"userinfo"];

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v7 count])
    {
      +[NSMutableDictionary dictionary];
      v11 = _NSConcreteStackBlock;
      v12 = 3221225472;
      v13 = sub_1001C14A4;
      v8 = v14 = &unk_100327070;
      v15 = v8;
      v16 = self;
      [v7 enumerateKeysAndObjectsUsingBlock:&v11];
    }

    else
    {
      v8 = 0;
    }

    v9 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", v6, [v5 longValue], v8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)pushTokenForService:(id)a3
{
  v4 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_1001BE5B0;
  v20 = sub_1001BE5C0;
  v21 = 0;
  v22 = v4;
  v5 = [NSArray arrayWithObjects:&v22 count:1];
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_1001C1714;
  v13 = &unk_10031AB10;
  v15 = &v16;
  v6 = v4;
  v14 = v6;
  [(KTSMDataStoreActual *)self fetchDeviceSignature:v5 complete:&v10];

  v7 = [v17[5] objectForKeyedSubscript:{v6, v10, v11, v12, v13}];
  v8 = [v7 pushToken];

  _Block_object_dispose(&v16, 8);

  return v8;
}

- (void)fetchDeviceSignature:(id)a3 complete:(id)a4
{
  v6 = a3;
  v7 = a4;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_1001BE5B0;
  v25 = sub_1001BE5C0;
  v26 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_1001BE5B0;
  v19 = sub_1001BE5C0;
  v20 = 0;
  v8 = [(KTSMDataStoreActual *)self managedObjectContextWithMergePolicy];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001C1924;
  v10[3] = &unk_10031C6B8;
  v9 = v6;
  v13 = &v15;
  v14 = &v21;
  v11 = v9;
  v12 = self;
  [v8 performBlockAndWait:v10];
  v7[2](v7, v22[5], v16[5]);

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v21, 8);
}

- (void)storeDeviceSignature:(id)a3 complete:(id)a4
{
  v6 = a3;
  v7 = a4;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v9)
  {
    v10 = *v29;
    while (2)
    {
      v11 = 0;
      do
      {
        if (*v29 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = [*(*(&v28 + 1) + 8 * v11) tbsKTIDSRegistrationData];
        v13 = v12 == 0;

        if (v13)
        {
          v16 = [TransparencyError errorWithDomain:kTransparencyErrorDecode code:-324 underlyingError:0 description:@"missing tbs data"];
          v7[2](v7, v16);

          v15 = v8;
          goto LABEL_11;
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v8 countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v14 = [(KTSMDataStoreActual *)self managedObjectContextWithMergePolicy];
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_1001BE5B0;
  v26 = sub_1001BE5C0;
  v27 = 0;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1001C1F4C;
  v17[3] = &unk_100327098;
  v18 = v8;
  v15 = v14;
  v19 = v15;
  v20 = self;
  v21 = &v22;
  [v15 performBlockAndWait:v17];
  v7[2](v7, v23[5]);

  _Block_object_dispose(&v22, 8);
LABEL_11:
}

- (void)delete:(id)a3 onMOC:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[NSBatchDeleteRequest alloc] initWithFetchRequest:v6];

  [v7 setResultType:1];
  v11 = 0;
  v8 = [v5 executeRequest:v7 error:&v11];

  v9 = v11;
  if (!v8)
  {
    if (qword_10039C928 != -1)
    {
      sub_10025BE98();
    }

    v10 = qword_10039C930;
    if (os_log_type_enabled(qword_10039C930, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v13 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "bulk delete failed: %@", buf, 0xCu);
    }
  }
}

- (void)_onQueueClearDeviceSignatureSignatures
{
  v2 = +[DeviceSignature fetchRequest];
  v16 = 0;
  v3 = [v2 execute:&v16];
  v4 = v16;
  if (v3)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v12 + 1) + 8 * i);
          [v10 setSignedAt:{0, v12}];
          [v10 setUploadedAt:0];
          [v10 setSignature:0];
          [v10 setPublicKey:0];
          [v10 setState:@"tbs"];
          [v10 setCurrentItemPointerModificationTime:0];
          [v10 setAltDSID:0];
          [v10 setError:0];
        }

        v7 = [v5 countByEnumeratingWithState:&v12 objects:v17 count:16];
      }

      while (v7);
    }
  }

  else
  {
    if (qword_10039C928 != -1)
    {
      sub_10025BEC0();
    }

    v11 = qword_10039C930;
    if (os_log_type_enabled(qword_10039C930, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v19 = v4;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "deleting DeviceSignatures failes: %@", buf, 0xCu);
    }
  }
}

- (BOOL)clearDeviceSignatures:(id *)a3
{
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_1001BE5B0;
  v20 = sub_1001BE5C0;
  v21 = 0;
  [(KTSMDataStoreActual *)self managedObjectContextWithMergePolicy];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001C291C;
  v12[3] = &unk_100326ED8;
  v12[4] = self;
  v5 = v14 = &v22;
  v13 = v5;
  v15 = &v16;
  [v5 performBlockAndWait:v12];
  if (a3)
  {
    v6 = v17[5];
    if (v6)
    {
      *a3 = v6;
    }
  }

  if (qword_10039C928 != -1)
  {
    sub_10025BEE8();
  }

  v7 = qword_10039C930;
  if (os_log_type_enabled(qword_10039C930, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(v23 + 24);
    v9 = v17[5];
    *buf = 67109378;
    v27 = v8;
    v28 = 2112;
    v29 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "done clearing signatures %d: %@", buf, 0x12u);
  }

  v10 = *(v23 + 24);

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v22, 8);
  return v10 & 1;
}

- (BOOL)clearDataStore:(id *)a3
{
  if (qword_10039C928 != -1)
  {
    sub_10025BF10();
  }

  v5 = qword_10039C930;
  if (os_log_type_enabled(qword_10039C930, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "deleting KTSMDataStore", buf, 2u);
  }

  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  *buf = 0;
  v18 = buf;
  v19 = 0x3032000000;
  v20 = sub_1001BE5B0;
  v21 = sub_1001BE5C0;
  v22 = 0;
  [(KTSMDataStoreActual *)self managedObjectContextWithMergePolicy];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1001C2C90;
  v13[3] = &unk_100327140;
  v6 = v13[4] = self;
  v14 = v6;
  v15 = &v23;
  v16 = buf;
  [v6 performBlockAndWait:v13];
  if (a3)
  {
    v7 = *(v18 + 5);
    if (v7)
    {
      *a3 = v7;
    }
  }

  if (qword_10039C928 != -1)
  {
    sub_10025BF24();
  }

  v8 = qword_10039C930;
  if (os_log_type_enabled(qword_10039C930, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(v24 + 24);
    v10 = *(v18 + 5);
    *v27 = 67109378;
    v28 = v9;
    v29 = 2112;
    v30 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "done deleting KTSMDataStore %d: %@", v27, 0x12u);
  }

  v11 = *(v24 + 24);

  _Block_object_dispose(buf, 8);
  _Block_object_dispose(&v23, 8);
  return v11 & 1;
}

- (void)storeFixup:(id)a3
{
  v4 = a3;
  [(KTSMDataStoreActual *)self managedObjectContextWithMergePolicy];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001C2E28;
  v8 = v7[3] = &unk_1003180E0;
  v9 = v4;
  v5 = v4;
  v6 = v8;
  [v6 performBlockAndWait:v7];
}

- (void)deleteFixup:(id)a3
{
  v4 = a3;
  v7 = [(KTSMDataStoreActual *)self managedObjectContextWithMergePolicy];
  v5 = +[CachedData fetchRequest];
  v6 = [NSPredicate predicateWithFormat:@"key = %@ AND application = %@", @"FixUps", v4];

  [v5 setPredicate:v6];
  [(KTSMDataStoreActual *)self delete:v5 onMOC:v7];
}

- (BOOL)haveDoneFixup:(id)a3
{
  v4 = a3;
  v5 = [(KTSMDataStoreActual *)self managedObjectContextWithMergePolicy];
  v6 = +[CachedData fetchRequest];
  v7 = [NSPredicate predicateWithFormat:@"key = %@ AND application = %@", @"FixUps", v4];
  [v6 setPredicate:v7];

  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001C3204;
  v11[3] = &unk_10031A198;
  v14 = &v15;
  v8 = v5;
  v12 = v8;
  v9 = v6;
  v13 = v9;
  [v8 performBlockAndWait:v11];
  LOBYTE(v7) = v16[3] != 0;

  _Block_object_dispose(&v15, 8);
  return v7;
}

- (void)setSettingsDate:(id)a3 date:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    v8 = 0;
    v9 = 0;
    goto LABEL_8;
  }

  v19 = 0;
  v8 = [NSKeyedArchiver archivedDataWithRootObject:v7 requiringSecureCoding:1 error:&v19];
  v9 = v19;
  if (v8)
  {
LABEL_8:
    v11 = [(KTSMDataStoreActual *)self managedObjectContextWithMergePolicy];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1001C356C;
    v14[3] = &unk_10031A148;
    v15 = v6;
    v16 = v7;
    v17 = v11;
    v18 = v8;
    v12 = v8;
    v13 = v11;
    [v13 performBlockAndWait:v14];

    goto LABEL_9;
  }

  if (qword_10039C928 != -1)
  {
    sub_10025BF9C();
  }

  v10 = qword_10039C930;
  if (os_log_type_enabled(qword_10039C930, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v21 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "setSettingsDate: archivedDataWithRootObject: %@", buf, 0xCu);
  }

LABEL_9:
}

- (id)getSettingsDate:(id)a3
{
  v4 = a3;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_1001BE5B0;
  v21 = sub_1001BE5C0;
  v22 = 0;
  v5 = +[CachedData fetchRequest];
  v6 = [NSPredicate predicateWithFormat:@"key = %@ AND application = %@", @"SettingsDate", v4];
  [v5 setPredicate:v6];

  [(KTSMDataStoreActual *)self managedObjectContextWithMergePolicy];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001C3AF4;
  v7 = v12[3] = &unk_100327098;
  v13 = v7;
  v8 = v5;
  v14 = v8;
  v9 = v4;
  v15 = v9;
  v16 = &v17;
  [v7 performBlockAndWait:v12];
  v10 = v18[5];

  _Block_object_dispose(&v17, 8);

  return v10;
}

- (void)setSettingsData:(id)a3 data:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(KTSMDataStoreActual *)self managedObjectContextWithMergePolicy];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001C3DE8;
  v11[3] = &unk_10031E018;
  v12 = v6;
  v14 = v13 = v7;
  v8 = v14;
  v9 = v7;
  v10 = v6;
  [v8 performBlockAndWait:v11];
}

- (id)getSettingsData:(id)a3
{
  v4 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_1001BE5B0;
  v19 = sub_1001BE5C0;
  v20 = 0;
  v5 = +[CachedData fetchRequest];
  v6 = [NSPredicate predicateWithFormat:@"key = %@ AND application = %@", @"SettingsData", v4];
  [v5 setPredicate:v6];

  [(KTSMDataStoreActual *)self managedObjectContextWithMergePolicy];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001C42A0;
  v7 = v11[3] = &unk_100327288;
  v12 = v7;
  v8 = v5;
  v13 = v8;
  v14 = &v15;
  [v7 performBlockAndWait:v11];
  v9 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v9;
}

- (void)setSettingsNumber:(id)a3 number:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    v8 = 0;
    v9 = 0;
    goto LABEL_8;
  }

  v19 = 0;
  v8 = [NSKeyedArchiver archivedDataWithRootObject:v7 requiringSecureCoding:1 error:&v19];
  v9 = v19;
  if (v8)
  {
LABEL_8:
    v11 = [(KTSMDataStoreActual *)self managedObjectContextWithMergePolicy];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1001C4668;
    v14[3] = &unk_10031A148;
    v15 = v6;
    v16 = v7;
    v17 = v11;
    v18 = v8;
    v12 = v8;
    v13 = v11;
    [v13 performBlockAndWait:v14];

    goto LABEL_9;
  }

  if (qword_10039C928 != -1)
  {
    sub_10025C08C();
  }

  v10 = qword_10039C930;
  if (os_log_type_enabled(qword_10039C930, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v21 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "setSettingsNumber: archivedDataWithRootObject: %@", buf, 0xCu);
  }

LABEL_9:
}

- (id)getSettingsNumber:(id)a3
{
  v4 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_1001BE5B0;
  v19 = sub_1001BE5C0;
  v20 = 0;
  v5 = +[CachedData fetchRequest];
  v6 = [NSPredicate predicateWithFormat:@"key = %@ AND application = %@", @"SettingsNumber", v4];
  [v5 setPredicate:v6];

  [(KTSMDataStoreActual *)self managedObjectContextWithMergePolicy];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001C4B20;
  v7 = v11[3] = &unk_100327288;
  v12 = v7;
  v8 = v5;
  v13 = v8;
  v14 = &v15;
  [v7 performBlockAndWait:v11];
  v9 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v9;
}

@end