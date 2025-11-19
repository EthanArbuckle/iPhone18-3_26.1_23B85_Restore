@interface OTSOSActualAdapter
+ (id)sosCKKSViewList;
- (BOOL)joinAfterRestore:(id *)a3;
- (BOOL)preloadOctagonKeySetOnAccount:(id)a3 error:(id *)a4;
- (BOOL)resetToOffering:(id *)a3;
- (BOOL)safariViewSyncingEnabled:(id *)a3;
- (BOOL)sosEnabled;
- (BOOL)updateCKKS4AllStatus:(BOOL)a3 error:(id *)a4;
- (BOOL)updateOctagonKeySetWithAccount:(id)a3 error:(id *)a4;
- (id)currentSOSSelf:(id *)a3;
- (id)currentState;
- (id)fetchSelfPeers:(id *)a3;
- (id)fetchTrustedPeers:(id *)a3;
- (id)initAsEssential:(BOOL)a3;
- (int)circleStatus:(id *)a3;
- (void)registerForPeerChangeUpdates:(id)a3;
- (void)sendSelfPeerChangedUpdate;
- (void)sendTrustedPeerSetChangedUpdate;
@end

@implementation OTSOSActualAdapter

- (BOOL)resetToOffering:(id *)a3
{
  if (![(OTSOSActualAdapter *)self sosEnabled])
  {
    if (!a3)
    {
      LOBYTE(v4) = 0;
      return v4;
    }

    v6 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-4 description:@"SOS is not enabled for compatibility mode"];
    LOBYTE(v4) = 0;
    goto LABEL_8;
  }

  v4 = SOSCCResetToOffering();
  v5 = sub_100006274("octagon-sos");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    v9 = v4;
    v10 = 2112;
    v11 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "SOSCCResetToOffering complete: %d %@", buf, 0x12u);
  }

  if (a3)
  {
    v6 = 0;
LABEL_8:
    *a3 = v6;
  }

  return v4;
}

- (BOOL)joinAfterRestore:(id *)a3
{
  if (![(OTSOSActualAdapter *)self sosEnabled])
  {
    if (!a3)
    {
      LOBYTE(v4) = 0;
      return v4;
    }

    v6 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-4 description:@"SOS unsupported on this platform"];
    LOBYTE(v4) = 0;
    goto LABEL_8;
  }

  v4 = SOSCCRequestToJoinCircleAfterRestore();
  v5 = sub_100006274("octagon-sos");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    v9 = v4;
    v10 = 2112;
    v11 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "SOSCCRequestToJoinCircleAfterRestore complete: %d %@", buf, 0x12u);
  }

  if (a3)
  {
    v6 = 0;
LABEL_8:
    *a3 = v6;
  }

  return v4;
}

- (BOOL)safariViewSyncingEnabled:(id *)a3
{
  if ([(OTSOSActualAdapter *)self sosEnabled])
  {
    return SOSCCView() == 1;
  }

  if (!a3)
  {
    return 0;
  }

  v4 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-4 description:@"SOS is not enabled for compatibility mode"];
  v5 = v4;
  result = 0;
  *a3 = v4;
  return result;
}

- (id)currentState
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_1000ED75C;
  v9 = sub_1000ED76C;
  v10 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000ED774;
  v4[3] = &unk_100344E90;
  v4[4] = self;
  v4[5] = &v5;
  [SOSAccount performOnQuietAccountQueue:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (void)sendTrustedPeerSetChangedUpdate
{
  v3 = [(OTSOSActualAdapter *)self peerChangeListeners];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000ED8F4;
  v4[3] = &unk_100336E38;
  v4[4] = self;
  [v3 iterateListeners:v4];
}

- (void)sendSelfPeerChangedUpdate
{
  v3 = [(OTSOSActualAdapter *)self peerChangeListeners];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000ED988;
  v4[3] = &unk_100336E38;
  v4[4] = self;
  [v3 iterateListeners:v4];
}

- (void)registerForPeerChangeUpdates:(id)a3
{
  v4 = a3;
  v5 = [(OTSOSActualAdapter *)self peerChangeListeners];
  [v5 registerListener:v4];
}

- (BOOL)updateCKKS4AllStatus:(BOOL)a3 error:(id *)a4
{
  v5 = a3;
  if ([(OTSOSActualAdapter *)self sosEnabled])
  {
    v13 = 0;
    *&buf = _NSConcreteStackBlock;
    *(&buf + 1) = 3221225472;
    v15 = sub_100257AA0;
    v16 = &unk_100346F80;
    v17 = v5;
    v6 = sub_1002463E8(&v13, &buf);
    v7 = v13;
    if (!v6 || v13)
    {
      v10 = sub_100006274("SecError");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v7;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "octagon-sos: failed to update CKKS4All status in SOS: %@", &buf, 0xCu);
      }

      if (a4 && v7)
      {
        v11 = v7;
        *a4 = v7;
      }
    }

    else
    {
      v8 = sub_100006274("octagon-sos");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = @"not supported";
        if (v5)
        {
          v9 = @"supported";
        }

        LODWORD(buf) = 138412290;
        *(&buf + 4) = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "successfully updated CKKS4All status in SOS to '%@'", &buf, 0xCu);
      }
    }
  }

  else if (a4)
  {
    [NSError errorWithDomain:NSOSStatusErrorDomain code:-4 description:@"SOS is not enabled for compatibility mode"];
    *a4 = LOBYTE(v6) = 0;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (BOOL)updateOctagonKeySetWithAccount:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (![(OTSOSActualAdapter *)self sosEnabled])
  {
    if (a4)
    {
      [NSError errorWithDomain:NSOSStatusErrorDomain code:-4 description:@"SOS is not enabled for compatibility mode"];
      *a4 = v38 = 0;
    }

    else
    {
      v38 = 0;
    }

    goto LABEL_24;
  }

  v7 = [v6 publicSigningKey];
  if ([v7 _secKey])
  {
    v8 = [v6 publicEncryptionKey];
    v9 = [v8 _secKey];

    if (v9)
    {
      v85 = 0;
      v86 = &v85;
      v87 = 0x2020000000;
      v10 = [v6 signingKey];
      v11 = [v10 keyData];

      v88 = v11;
      v81 = 0;
      v82 = &v81;
      v83 = 0x2020000000;
      v12 = [v6 encryptionKey];
      v13 = [v12 keyData];

      v84 = v13;
      v80[0] = 0;
      v80[1] = v80;
      v80[2] = 0x2020000000;
      v14 = [v6 publicSigningKey];
      v15 = [v14 keyData];

      v80[3] = v15;
      v79[0] = 0;
      v79[1] = v79;
      v79[2] = 0x2020000000;
      v16 = [v6 publicEncryptionKey];
      v17 = [v16 keyData];

      v79[3] = v17;
      v75 = 0;
      v76 = &v75;
      v77 = 0x2020000000;
      v18 = [v6 publicSigningKey];
      v19 = [v18 _secKey];

      if (v19)
      {
        CFRetain(v19);
      }

      v78 = v19;
      v71 = 0;
      v72 = &v71;
      v73 = 0x2020000000;
      v20 = [v6 publicEncryptionKey];
      v21 = [v20 _secKey];

      if (v21)
      {
        CFRetain(v21);
      }

      v74 = v21;
      v67 = 0;
      v68 = &v67;
      v69 = 0x2020000000;
      v22 = [v6 signingKey];
      v23 = [v22 _secKey];

      if (v23)
      {
        CFRetain(v23);
      }

      v70 = v23;
      v63 = 0;
      v64 = &v63;
      v65 = 0x2020000000;
      v24 = [v6 encryptionKey];
      v25 = [v24 _secKey];

      if (v25)
      {
        CFRetain(v25);
      }

      v66 = v25;
      v26 = [objc_opt_class() logger];
      v27 = [v26 startLogSystemMetricsForActivityNamed:@"OctagonSOSAdapterUpdateKeys"];

      v59 = 0;
      v60 = &v59;
      v61 = 0x2020000000;
      v62 = -86;
      v53 = 0;
      v54 = &v53;
      v55 = 0x3032000000;
      v56 = sub_1000ED75C;
      v57 = sub_1000ED76C;
      v58 = 0;
      v28 = v86[3];
      v29 = v82[3];
      v30 = v76[3];
      v31 = v72[3];
      v32 = v68[3];
      v33 = v64[3];
      v41[0] = _NSConcreteStackBlock;
      v41[1] = 3221225472;
      v41[2] = sub_1000EE20C;
      v41[3] = &unk_100336E10;
      v34 = v27;
      v42 = v34;
      v43 = &v59;
      v44 = &v53;
      v45 = &v85;
      v46 = &v81;
      v47 = v80;
      v48 = v79;
      v49 = &v75;
      v50 = &v71;
      v51 = &v67;
      v52 = &v63;
      v35 = v41;
      v100 = 0;
      *buf = _NSConcreteStackBlock;
      v90 = 3221225472;
      v91 = sub_1002570F0;
      v92 = &unk_100347018;
      v94 = v28;
      v95 = v29;
      v96 = v30;
      v97 = v31;
      v36 = v35;
      v93 = v36;
      v98 = v32;
      v99 = v33;
      sub_1002463E8(&v100, buf);
      v37 = v100;
      if (v100)
      {
        v100 = 0;
        CFRelease(v37);
      }

      if (a4)
      {
        *a4 = v54[5];
      }

      v38 = *(v60 + 24);

      _Block_object_dispose(&v53, 8);
      _Block_object_dispose(&v59, 8);

      _Block_object_dispose(&v63, 8);
      _Block_object_dispose(&v67, 8);
      _Block_object_dispose(&v71, 8);
      _Block_object_dispose(&v75, 8);
      _Block_object_dispose(v79, 8);
      _Block_object_dispose(v80, 8);
      _Block_object_dispose(&v81, 8);
      _Block_object_dispose(&v85, 8);
      goto LABEL_24;
    }
  }

  else
  {
  }

  v39 = sub_100006274("octagon-sos");
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "no octagon keys available skipping updating SOS record", buf, 2u);
  }

  v38 = 1;
LABEL_24:

  return v38 & 1;
}

- (BOOL)preloadOctagonKeySetOnAccount:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (![(OTSOSActualAdapter *)self sosEnabled])
  {
    if (a4)
    {
      [NSError errorWithDomain:NSOSStatusErrorDomain code:-4 description:@"SOS is not enabled for compatibility mode"];
      *a4 = v33 = 0;
    }

    else
    {
      v33 = 0;
    }

    goto LABEL_24;
  }

  v7 = [v6 publicSigningKey];
  if ([v7 _secKey])
  {
    v8 = [v6 publicEncryptionKey];
    v9 = [v8 _secKey];

    if (v9)
    {
      v77 = 0;
      v78 = &v77;
      v79 = 0x2020000000;
      v10 = [v6 signingKey];
      v11 = [v10 keyData];

      v80 = v11;
      v73 = 0;
      v74 = &v73;
      v75 = 0x2020000000;
      v12 = [v6 encryptionKey];
      v13 = [v12 keyData];

      v76 = v13;
      v69 = 0;
      v70 = &v69;
      v71 = 0x2020000000;
      v14 = [v6 publicSigningKey];
      v15 = [v14 _secKey];

      if (v15)
      {
        CFRetain(v15);
      }

      v72 = v15;
      v65 = 0;
      v66 = &v65;
      v67 = 0x2020000000;
      v16 = [v6 publicEncryptionKey];
      v17 = [v16 _secKey];

      if (v17)
      {
        CFRetain(v17);
      }

      v68 = v17;
      v61 = 0;
      v62 = &v61;
      v63 = 0x2020000000;
      v18 = [v6 signingKey];
      v19 = [v18 _secKey];

      if (v19)
      {
        CFRetain(v19);
      }

      v64 = v19;
      v57 = 0;
      v58 = &v57;
      v59 = 0x2020000000;
      v20 = [v6 encryptionKey];
      v21 = [v20 _secKey];

      if (v21)
      {
        CFRetain(v21);
      }

      v60 = v21;
      v22 = [objc_opt_class() logger];
      v23 = [v22 startLogSystemMetricsForActivityNamed:@"OctagonSOSAdapterUpdateKeys"];

      v53 = 0;
      v54 = &v53;
      v55 = 0x2020000000;
      v56 = -86;
      v47 = 0;
      v48 = &v47;
      v49 = 0x3032000000;
      v50 = sub_1000ED75C;
      v51 = sub_1000ED76C;
      v52 = 0;
      v24 = v78[3];
      v25 = v74[3];
      v26 = v58[3];
      v27 = v70[3];
      v28 = v66[3];
      v36 = v62[3];
      v37[0] = _NSConcreteStackBlock;
      v37[1] = 3221225472;
      v37[2] = sub_1000EE94C;
      v37[3] = &unk_100336DE8;
      v29 = v23;
      v38 = v29;
      v39 = &v53;
      v40 = &v47;
      v41 = &v77;
      v42 = &v73;
      v43 = &v69;
      v44 = &v65;
      v45 = &v61;
      v46 = &v57;
      v30 = v37;
      v92 = 0;
      *buf = _NSConcreteStackBlock;
      v82 = 3221225472;
      v83 = sub_1002577E4;
      v84 = &unk_100347018;
      v86 = v24;
      v87 = v25;
      v88 = v27;
      v89 = v28;
      v31 = v30;
      v85 = v31;
      v90 = v36;
      v91 = v26;
      sub_1002463E8(&v92, buf);
      v32 = v92;
      if (v92)
      {
        v92 = 0;
        CFRelease(v32);
      }

      if (a4)
      {
        *a4 = v48[5];
      }

      v33 = *(v54 + 24);

      _Block_object_dispose(&v47, 8);
      _Block_object_dispose(&v53, 8);

      _Block_object_dispose(&v57, 8);
      _Block_object_dispose(&v61, 8);
      _Block_object_dispose(&v65, 8);
      _Block_object_dispose(&v69, 8);
      _Block_object_dispose(&v73, 8);
      _Block_object_dispose(&v77, 8);
      goto LABEL_24;
    }
  }

  else
  {
  }

  v34 = sub_100006274("octagon-preload-keys");
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "no octagon keys available skipping updating SOS record", buf, 2u);
  }

  v33 = 1;
LABEL_24:

  return v33 & 1;
}

- (id)fetchTrustedPeers:(id *)a3
{
  if ([(OTSOSActualAdapter *)self sosEnabled])
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = sub_1000ED75C;
    v21 = sub_1000ED76C;
    v22 = +[NSMutableSet set];
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = sub_1000ED75C;
    v15 = sub_1000ED76C;
    v16 = 0;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000EED44;
    v10[3] = &unk_100336DC0;
    v10[4] = &v11;
    v10[5] = &v17;
    v4 = v10;
    v25 = 0;
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100257B5C;
    v23[3] = &unk_100346FC8;
    v5 = v4;
    v24 = v5;
    sub_1002463E8(&v25, v23);
    v6 = v25;
    if (v25)
    {
      v25 = 0;
      CFRelease(v6);
    }

    if (a3)
    {
      v7 = v12[5];
      if (v7)
      {
        *a3 = v7;
      }
    }

    v8 = v18[5];
    _Block_object_dispose(&v11, 8);

    _Block_object_dispose(&v17, 8);
  }

  else if (a3)
  {
    [NSError errorWithDomain:NSOSStatusErrorDomain code:-4 description:@"SOS is not enabled for compatibility mode"];
    *a3 = v8 = 0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)fetchSelfPeers:(id *)a3
{
  if ([(OTSOSActualAdapter *)self sosEnabled])
  {
    v5 = [(OTSOSActualAdapter *)self currentSOSSelf:a3];
    if (v5)
    {
      v6 = [[CKKSSelves alloc] initWithCurrent:v5 allSelves:0];
    }

    else
    {
      v6 = 0;
    }
  }

  else if (a3)
  {
    [NSError errorWithDomain:NSOSStatusErrorDomain code:-4 description:@"SOS is not enabled for compatibility mode"];
    *a3 = v6 = 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)currentSOSSelf:(id *)a3
{
  if ([(OTSOSActualAdapter *)self sosEnabled])
  {
    v45 = 0;
    v46 = &v45;
    v47 = 0x3032000000;
    v48 = sub_1000ED75C;
    v49 = sub_1000ED76C;
    v50 = 0;
    v39 = 0;
    v40 = &v39;
    v41 = 0x3032000000;
    v42 = sub_1000ED75C;
    v43 = sub_1000ED76C;
    v44 = 0;
    v33 = 0;
    v34 = &v33;
    v35 = 0x3032000000;
    v36 = sub_1000ED75C;
    v37 = sub_1000ED76C;
    v38 = 0;
    obj = 0;
    v32 = 0;
    v5 = [(OTSOSActualAdapter *)self circleStatus:&obj];
    objc_storeStrong(&v38, obj);
    if (v5)
    {
      if (!v34[5])
      {
        v6 = [NSError errorWithDomain:@"CKKSErrorDomain" code:24 description:@"Not in SOS circle, but no error returned"];
        v7 = v34[5];
        v34[5] = v6;
      }

      v8 = sub_100006274("SecError");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        if (v5 + 1 > 4)
        {
          v9 = @"kSOSCCError";
        }

        else
        {
          v9 = off_1003454A8[v5 + 1];
        }

        v24 = v34[5];
        *buf = 138412546;
        *&buf[4] = v9;
        *&buf[12] = 2112;
        *&buf[14] = v24;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "octagon-sos: Not in circle : %@ %@", buf, 0x16u);
      }

      v10 = 0;
      if (a3)
      {
        *a3 = v34[5];
      }

      goto LABEL_37;
    }

    v11 = sub_10024F05C(&v32);
    if (!v11 || v32)
    {
      v20 = v34[5];
      v34[5] = v32;

      if (!v34[5])
      {
        v21 = [NSError errorWithDomain:@"CKKSErrorDomain" code:24 description:@"No SOS peer info available, but no error returned"];
        v22 = v34[5];
        v34[5] = v21;
      }

      v23 = sub_100006274("SecError");
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = v32;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "octagon-sos: Error fetching self peer : %@", buf, 0xCu);
      }

      if (a3)
      {
        v19 = v34[5];
        goto LABEL_28;
      }
    }

    else
    {
      v30[0] = _NSConcreteStackBlock;
      v30[1] = 3221225472;
      v30[2] = sub_1000EF7D8;
      v30[3] = &unk_100336D98;
      v30[4] = &v33;
      v30[5] = &v45;
      v30[6] = &v39;
      v12 = v30;
      v51 = 0;
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3221225472;
      *&buf[16] = sub_100256920;
      v53 = &unk_100346FC8;
      v13 = v12;
      v54 = v13;
      sub_1002463E8(&v51, buf);
      v14 = v51;
      if (v51)
      {
        v51 = 0;
        CFRelease(v14);
      }

      if (!v34[5])
      {
        v25 = [CKKSSOSSelfPeer alloc];
        v26 = v40[5];
        v27 = v46[5];
        v28 = +[OTSOSActualAdapter sosCKKSViewList];
        v10 = [(CKKSSOSSelfPeer *)v25 initWithSOSPeerID:v11 encryptionKey:v26 signingKey:v27 viewList:v28];

        goto LABEL_36;
      }

      v15 = +[CKKSLockStateTracker globalTracker];
      v16 = [v15 isLockedError:v34[5]];

      if ((v16 & 1) == 0)
      {
        v17 = sub_100006274("SecError");
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = v34[5];
          *buf = 138412290;
          *&buf[4] = v18;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "octagon-sos: Error fetching self encryption keys: %@", buf, 0xCu);
        }
      }

      if (a3)
      {
        v19 = v34[5];
LABEL_28:
        v10 = 0;
        *a3 = v19;
LABEL_36:

LABEL_37:
        _Block_object_dispose(&v33, 8);

        _Block_object_dispose(&v39, 8);
        _Block_object_dispose(&v45, 8);

        goto LABEL_38;
      }
    }

    v10 = 0;
    goto LABEL_36;
  }

  if (a3)
  {
    [NSError errorWithDomain:NSOSStatusErrorDomain code:-4 description:@"SOS is not enabled for compatibility mode"];
    *a3 = v10 = 0;
  }

  else
  {
    v10 = 0;
  }

LABEL_38:

  return v10;
}

- (int)circleStatus:(id *)a3
{
  if ([(OTSOSActualAdapter *)self sosEnabled])
  {
    return SOSCCThisDeviceIsInCircle();
  }

  if (a3)
  {
    *a3 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-4 description:@"SOS is not enabled for compatibility mode"];
  }

  return -1;
}

- (id)initAsEssential:(BOOL)a3
{
  v17.receiver = self;
  v17.super_class = OTSOSActualAdapter;
  v4 = [(OTSOSActualAdapter *)&v17 init];
  v5 = v4;
  if (v4)
  {
    v4->_essential = a3;
    providerID = v4->_providerID;
    v4->_providerID = @"[OTSOSActualAdapter]";

    v7 = [[CKKSListenerCollection alloc] initWithName:@"ckks-sos"];
    peerChangeListeners = v5->_peerChangeListeners;
    v5->_peerChangeListeners = v7;

    v9 = v5;
    out_token = 0;
    v10 = kSOSCCCircleOctagonKeysChangedNotification;
    v11 = dispatch_get_global_queue(17, 0);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000EFACC;
    v14[3] = &unk_100345668;
    v12 = v9;
    v15 = v12;
    notify_register_dispatch(v10, &out_token, v11, v14);
  }

  return v5;
}

+ (id)sosCKKSViewList
{
  if (qword_10039DE60 != -1)
  {
    dispatch_once(&qword_10039DE60, &stru_100336D70);
  }

  v3 = qword_10039DE58;

  return v3;
}

- (BOOL)sosEnabled
{
  if (dword_10039E478)
  {
    return dword_10039E478 == 2;
  }

  if (qword_10039E118 != -1)
  {
    dispatch_once(&qword_10039E118, &stru_1003420D8);
  }

  if (byte_10039E110 != 1)
  {
    if (qword_10039E0F8 != -1)
    {
      dispatch_once(&qword_10039E0F8, &stru_100342098);
    }

    if (byte_10039CB18)
    {
      v11 = 2;
    }

    else
    {
      v11 = 1;
    }

    dword_10039E478 = v11;
    if ((byte_10039CB18 & 1) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_36;
  }

  v1 = sub_100006274("sos-compatibility");
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "compatibility mode feature flag enabled, checking keychain for sos compatibility mode", buf, 2u);
  }

  dword_10039E478 = 1;
  v25[0] = kSecClass;
  v25[1] = kSecUseDataProtectionKeychain;
  v26[0] = kSecClassGenericPassword;
  v26[1] = &__kCFBooleanTrue;
  v25[2] = kSecAttrSynchronizable;
  v25[3] = kSecAttrAccessGroup;
  v26[2] = &__kCFBooleanFalse;
  v26[3] = @"com.apple.security.sos";
  v25[4] = kSecAttrAccount;
  v25[5] = kSecReturnData;
  v26[4] = @"sos-compatibility-mode";
  v26[5] = &__kCFBooleanTrue;
  v25[6] = kSecMatchLimit;
  v25[7] = kSecAttrAccessible;
  v26[6] = kSecMatchLimitOne;
  v26[7] = kSecAttrAccessibleAfterFirstUnlock;
  v25[8] = kSecAttrSysBound;
  v26[8] = &off_100365230;
  v2 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:9];
  result = 0;
  v3 = SecItemCopyMatching(v2, &result);
  if (v3 == -25308)
  {
    v14 = sub_100006274("sos-compatibility");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "keychain is locked, will keep compatibility mode set to UNKNOWN", buf, 2u);
    }

    dword_10039E478 = 0;
    goto LABEL_43;
  }

  v4 = v3;
  if (v3 == -25300)
  {
    v12 = sub_100006274("sos-compatibility");
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_35;
    }

    *buf = 0;
    v13 = "could not find sos compatibility mode in the keychain, defaulting to OFF";
    goto LABEL_33;
  }

  if (v3)
  {
    v12 = sub_100006274("SecError");
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_35;
    }

    *buf = 67109120;
    LODWORD(v24) = v4;
    v13 = "sos-compatibility: failed to fetch sos compatibility mode from the keychain, error code: %d, defaulting to OFF";
    v15 = v12;
    v16 = 8;
    goto LABEL_34;
  }

  if (result)
  {
    v5 = CFGetTypeID(result);
    if (v5 == CFDataGetTypeID())
    {
      v6 = result;
      v7 = [[NSString alloc] initWithData:result encoding:134217984];
      v8 = v7;
      v9 = 1;
      if (v7)
      {
        v10 = [v7 isEqualToString:@"enabled"];
        if (v10)
        {
          v9 = 2;
        }

        else
        {
          v9 = 1;
        }
      }

      else
      {
        v10 = 0;
      }

      dword_10039E478 = v9;
      v19 = sub_100006274("sos-compatibility");
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = @"enabled";
        if ((v10 & 1) == 0)
        {
          v20 = @"disabled";
        }

        *buf = 138412290;
        v24 = v20;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "SOS compatibility mode is %@", buf, 0xCu);
      }

      if ((v10 & 1) == 0)
      {
        goto LABEL_43;
      }

LABEL_36:
      v18 = [objc_opt_class() logger];
      [v18 logSuccessForEventNamed:@"SOSDeferralEventCompatibilityModeEnabled"];

      return 1;
    }
  }

  v12 = sub_100006274("SecError");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v13 = "sos-compatibility: unexpected return type, defaulting to OFF";
LABEL_33:
    v15 = v12;
    v16 = 2;
LABEL_34:
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, v13, buf, v16);
  }

LABEL_35:

  v17 = dword_10039E478;
  if (v17 == 2)
  {
    goto LABEL_36;
  }

LABEL_43:
  v21 = [objc_opt_class() logger];
  [v21 logSuccessForEventNamed:@"SOSDeferralEventCompatibilityModeDisabled"];

  return 0;
}

@end