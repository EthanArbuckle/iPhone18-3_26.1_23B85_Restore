@interface IDSServiceDelegate
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (id)selfAccountKey:(id *)a3;
- (void)deleteKTSession:(id)a3 complete:(id)a4;
- (void)getKTSessionByHandle:(id)a3 complete:(id)a4;
- (void)getKTSessionByID:(id)a3 complete:(id)a4;
- (void)listKTSession:(id)a3;
- (void)sasTTR:(id)a3 toHandle:(id)a4 pushToken:(id)a5 complete:(id)a6;
- (void)setupKTSession:(id)a3 complete:(id)a4;
@end

@implementation IDSServiceDelegate

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  v6 = [v5 valueForEntitlement:@"com.apple.transparency.kt"];
  if ([v6 BOOLValue])
  {

LABEL_4:
    if (qword_1000AEC70 != -1)
    {
      sub_10006D580();
    }

    v9 = qword_1000AEC78;
    if (os_log_type_enabled(qword_1000AEC78, OS_LOG_TYPE_INFO))
    {
      LOWORD(v17[0]) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Accepting new connection", v17, 2u);
    }

    v10 = [(IDSServiceDelegate *)self xpcQueue];
    [v5 _setQueue:v10];

    v11 = +[TransparencyXPCIDSInterface interface];
    [v5 setExportedInterface:v11];

    [v5 setExportedObject:self];
    [v5 resume];
    v12 = 1;
    goto LABEL_14;
  }

  v7 = [v5 valueForEntitlement:@"com.apple.transparency.transparencyd"];
  v8 = [v7 BOOLValue];

  if (v8)
  {
    goto LABEL_4;
  }

  v13 = [v5 valueForEntitlement:@"application-identifier"];
  if (qword_1000AEC70 != -1)
  {
    sub_10006D56C();
  }

  v14 = qword_1000AEC78;
  if (os_log_type_enabled(qword_1000AEC78, OS_LOG_TYPE_ERROR))
  {
    v15 = v14;
    v17[0] = 67109378;
    v17[1] = [v5 processIdentifier];
    v18 = 2114;
    v19 = v13;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "ids rejecting client %d/[%{public}@] due to lack of entitlement", v17, 0x12u);
  }

  v12 = 0;
LABEL_14:

  return v12;
}

- (id)selfAccountKey:(id *)a3
{
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = sub_100002C10;
  v39 = sub_100002C20;
  v40 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = sub_100002C10;
  v33 = sub_100002C20;
  v34 = 0;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100002C28;
  v25[3] = &unk_100094C58;
  v27 = &v29;
  v28 = &v35;
  v26 = dispatch_semaphore_create(0);
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100002D74;
  v22[3] = &unk_100094C80;
  v24 = &v35;
  v4 = v26;
  v23 = v4;
  [TransparencyXPCConnection invokeIDSSupportWithBlock:v25 errorHandler:v22];
  v5 = dispatch_time(0, 5000000000);
  if (dispatch_semaphore_wait(v4, v5))
  {
    v6 = [TransparencyError errorWithDomain:kTransparencyErrorInternal code:-321 description:@"timeout getting self public key"];
    v7 = v36[5];
    v36[5] = v6;

    if (qword_1000AEC70 != -1)
    {
      sub_10006D594();
    }

    v8 = qword_1000AEC78;
    if (os_log_type_enabled(qword_1000AEC78, OS_LOG_TYPE_ERROR))
    {
      v9 = v36[5];
      *buf = 138543362;
      v42 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Timed out to get account public key: %{public}@", buf, 0xCu);
    }

    if (a3)
    {
      v10 = v36[5];
      if (v10)
      {
LABEL_8:
        v11 = 0;
        *a3 = v10;
        goto LABEL_20;
      }
    }

    goto LABEL_19;
  }

  v12 = v30[5];
  if (!v12)
  {
    if (qword_1000AEC70 != -1)
    {
      sub_10006D5E4();
    }

    v15 = qword_1000AEC78;
    if (os_log_type_enabled(qword_1000AEC78, OS_LOG_TYPE_ERROR))
    {
      v16 = v36[5];
      *buf = 138543362;
      v42 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Failed to get account public key: %{public}@", buf, 0xCu);
    }

    if (a3)
    {
      v10 = v36[5];
      if (v10)
      {
        goto LABEL_8;
      }
    }

LABEL_19:
    v11 = 0;
    goto LABEL_20;
  }

  v13 = v36;
  obj = v36[5];
  v11 = [KTAccountPublicID ktAccountPublicIDWithPublicKeyInfo:v12 error:&obj];
  objc_storeStrong(v13 + 5, obj);
  if (v11)
  {
    v14 = v11;
  }

  else
  {
    if (qword_1000AEC70 != -1)
    {
      sub_10006D5BC();
    }

    v18 = qword_1000AEC78;
    if (os_log_type_enabled(qword_1000AEC78, OS_LOG_TYPE_ERROR))
    {
      v19 = v36[5];
      *buf = 138543362;
      v42 = v19;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Failed to convert public key: %{public}@", buf, 0xCu);
    }

    if (a3)
    {
      v20 = v36[5];
      if (v20)
      {
        *a3 = v20;
      }
    }
  }

LABEL_20:
  _Block_object_dispose(&v29, 8);

  _Block_object_dispose(&v35, 8);

  return v11;
}

- (void)setupKTSession:(id)a3 complete:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (qword_1000AEC70 != -1)
  {
    sub_10006D60C();
  }

  v8 = qword_1000AEC78;
  if (os_log_type_enabled(qword_1000AEC78, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v10 = [v6 peer];
    v11 = [v6 lastUsedAddressOfMe];
    *buf = 138412546;
    v25 = v10;
    v26 = 2112;
    v27 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "setupKTSession to peer: %{mark.hash}@ from: %{mark.hash}@", buf, 0x16u);
  }

  v12 = [(IDSServiceDelegate *)self idsTransport];

  if (v12)
  {
    v23 = 0;
    v13 = [(IDSServiceDelegate *)self selfAccountKey:&v23];
    v14 = v23;
    if (v13)
    {
      if (qword_1000AEC70 != -1)
      {
        sub_10006D620();
      }

      v15 = qword_1000AEC78;
      if (os_log_type_enabled(qword_1000AEC78, OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        v25 = v13;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "setupKTSession got account key: %{public}@", buf, 0xCu);
      }

      v16 = [v13 publicKeyInfo];
      v17 = [(IDSServiceDelegate *)self idsTransport];
      v18 = [v17 setupMailbox:v6 publicInfo:v16];

      [v18 setStateUpdate:&stru_100094D80];
      v19 = [(IDSServiceDelegate *)self idsTransport];
      [v19 startSession:v18];

      v20 = [v18 mapMailbox];
      if (qword_1000AEC70 != -1)
      {
        sub_10006D648();
      }

      v21 = qword_1000AEC78;
      if (os_log_type_enabled(qword_1000AEC78, OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        v25 = v20;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "setupKTSession setup complete: %{public}@", buf, 0xCu);
      }

      v7[2](v7, v20, 0);
    }

    else
    {
      if (qword_1000AEC70 != -1)
      {
        sub_10006D670();
      }

      v22 = qword_1000AEC78;
      if (os_log_type_enabled(qword_1000AEC78, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v25 = v14;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Failed to convert public key: %{public}@", buf, 0xCu);
      }

      (v7)[2](v7, 0, v14);
    }
  }

  else
  {
    v14 = [(IDSServiceDelegate *)self staticKeyFeatureNotEnabled:@"IDS protocol"];
    (v7)[2](v7, 0, v14);
  }
}

- (void)listKTSession:(id)a3
{
  v5 = a3;
  v7 = [(IDSServiceDelegate *)self idsTransport];
  v6 = [v7 listSessions];
  (*(a3 + 2))(v5, v6);
}

- (void)deleteKTSession:(id)a3 complete:(id)a4
{
  v7 = a4;
  v8 = a3;
  v10 = [(IDSServiceDelegate *)self idsTransport];
  v9 = [v10 deleteSessionByID:v8];

  (*(a4 + 2))(v7, v9);
}

- (void)getKTSessionByHandle:(id)a3 complete:(id)a4
{
  v7 = a4;
  v8 = a3;
  v9 = [(IDSServiceDelegate *)self idsTransport];
  v10 = [v9 findSessionByHandle:v8];

  v12 = v10;
  v11 = [NSArray arrayWithObjects:&v12 count:1];
  (*(a4 + 2))(v7, v11);
}

- (void)getKTSessionByID:(id)a3 complete:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(IDSServiceDelegate *)self idsTransport];
  v9 = [v8 findSessionByID:v6];

  if (qword_1000AEC70 != -1)
  {
    sub_10006D6D4();
  }

  v10 = qword_1000AEC78;
  if (os_log_type_enabled(qword_1000AEC78, OS_LOG_TYPE_DEBUG))
  {
    v11 = 138543618;
    v12 = v6;
    v13 = 2114;
    v14 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "getKTSessionByID: %{public}@ found %{public}@", &v11, 0x16u);
  }

  v7[2](v7, v9);
}

- (void)sasTTR:(id)a3 toHandle:(id)a4 pushToken:(id)a5 complete:(id)a6
{
  v14 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (+[TransparencyAnalytics hasInternalDiagnostics])
  {
    v13 = [(IDSServiceDelegate *)self idsTransport];
    [v13 sasTTR:v14 toHandle:v10 pushToken:v11];
  }

  v12[2](v12, 0);
}

@end