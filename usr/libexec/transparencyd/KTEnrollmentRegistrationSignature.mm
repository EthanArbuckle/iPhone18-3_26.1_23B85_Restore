@interface KTEnrollmentRegistrationSignature
- (KTCheckIDSRegistrationInterface)idsRegistrationInterface;
- (KTSignatureTracker)signatureTracker;
- (void)groupStart;
@end

@implementation KTEnrollmentRegistrationSignature

- (void)groupStart
{
  v2 = +[NSMutableArray array];
  v70 = 0;
  v71 = &v70;
  v72 = 0x2020000000;
  v73 = 0;
  v3 = objc_alloc_init(KDeviceSet);
  v66 = 0;
  v67 = &v66;
  v68 = 0x2020000000;
  v69 = 0;
  v4 = [(KTEnrollmentRegistrationSignature *)self deps];
  v5 = [v4 accountOperations];
  v65 = 0;
  v49 = [v5 primaryAccount:&v65];
  v47 = v65;

  v6 = [v49 aa_altDSID];
  if (!v6)
  {
    if (qword_10039C9B0 != -1)
    {
      sub_10025C35C();
    }

    v7 = qword_10039C9B8;
    if (os_log_type_enabled(qword_10039C9B8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v76 = v47;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Can't get AltDSID: %@", buf, 0xCu);
    }
  }

  v8 = [v49 aa_personID];
  if (!v8)
  {
    if (qword_10039C9B0 != -1)
    {
      sub_10025C384();
    }

    v9 = qword_10039C9B8;
    if (os_log_type_enabled(qword_10039C9B8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v76 = v47;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Can't get DSID: %@", buf, 0xCu);
    }
  }

  v10 = [(KTEnrollmentRegistrationSignature *)self deps];
  v11 = [v10 smDataStore];
  v58[0] = _NSConcreteStackBlock;
  v58[1] = 3221225472;
  v58[2] = sub_1001CEFDC;
  v58[3] = &unk_1003278D0;
  v58[4] = self;
  v48 = v3;
  v59 = v48;
  v50 = v2;
  v60 = v50;
  v46 = v8;
  v61 = v46;
  v45 = v6;
  v62 = v45;
  v63 = &v70;
  v64 = &v66;
  [v11 fetchDeviceSignature:0 complete:v58];

  if (qword_10039C9B0 != -1)
  {
    sub_10025C3AC();
  }

  v12 = qword_10039C9B8;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [v50 count];
    *buf = 67109120;
    LODWORD(v76) = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Updating registration datas: %d", buf, 8u);
  }

  if ([v50 count])
  {
    v14 = [(KTEnrollmentRegistrationSignature *)self deps];
    v15 = [v14 smDataStore];
    v57[0] = _NSConcreteStackBlock;
    v57[1] = 3221225472;
    v57[2] = sub_1001CFFF8;
    v57[3] = &unk_10031A5F8;
    v57[4] = self;
    [v15 storeDeviceSignature:v50 complete:v57];

    *(v67 + 24) = 1;
  }

  v16 = [(KTEnrollmentRegistrationSignature *)self deps];
  v17 = [(KTPendingFlag *)v16 cloudRecords];
  if (!v17 || *(v67 + 24) != 1)
  {
    goto LABEL_32;
  }

  v18 = [(KDeviceSet *)v48 devices];
  v19 = [v18 count] == 0;

  if (!v19)
  {
    if (qword_10039C9B0 != -1)
    {
      sub_10025C3D4();
    }

    v20 = qword_10039C9B8;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = [(KDeviceSet *)v48 devices];
      v22 = [v21 count];
      *buf = 67109120;
      LODWORD(v76) = v22;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Updating cloud devices: %d", buf, 8u);
    }

    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v23 = [(KDeviceSet *)v48 devices];
    v24 = [v23 allObjects];

    v25 = [v24 countByEnumeratingWithState:&v53 objects:v74 count:16];
    if (v25)
    {
      v26 = *v54;
      do
      {
        for (i = 0; i != v25; i = i + 1)
        {
          if (*v54 != v26)
          {
            objc_enumerationMutation(v24);
          }

          v28 = *(*(&v53 + 1) + 8 * i);
          v29 = [(KTEnrollmentRegistrationSignature *)self deps];
          v30 = [v29 cloudRecords];
          v31 = [v28 pushToken];
          v32 = [v28 registrationData];
          v33 = [v28 apps];
          v34 = [v33 allObjects];
          [v30 updateSelfCloudDeviceWithPushToken:v31 tbsRegistrationData:v32 applications:v34];
        }

        v25 = [v24 countByEnumeratingWithState:&v53 objects:v74 count:16];
      }

      while (v25);
    }

    v35 = [KTPendingFlag alloc];
    v36 = [(KTEnrollmentRegistrationSignature *)self deps];
    v37 = [v36 cloudKitOutgoingNFS];
    v16 = [(KTPendingFlag *)v35 initWithFlag:@"CloudKitOutgoing" conditions:2 scheduler:v37];

    v38 = [(KTEnrollmentRegistrationSignature *)self deps];
    v39 = [v38 flagHandler];
    [v39 handlePendingFlag:v16];

    v17 = [(KTEnrollmentRegistrationSignature *)self deps];
    v40 = [v17 cloudKitOutgoingNFS];
    [v40 trigger];

LABEL_32:
  }

  if (((v71[3] & 1) != 0 || [(KTEnrollmentRegistrationSignature *)self forceUpdate]) && (v67[3] & 1) == 0)
  {
    v41 = [(KTEnrollmentRegistrationSignature *)self signatureTracker];
    v42 = [v41 signatureQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001D00D0;
    block[3] = &unk_100316FE0;
    block[4] = self;
    dispatch_async(v42, block);

    v43 = [(KTEnrollmentRegistrationSignature *)self deps];
    v44 = [v43 flagHandler];
    [v44 cancelPendingFlag:@"ValidateSelf"];
  }

  _Block_object_dispose(&v66, 8);
  _Block_object_dispose(&v70, 8);
}

- (KTCheckIDSRegistrationInterface)idsRegistrationInterface
{
  WeakRetained = objc_loadWeakRetained((&self->_deps + 6));

  return WeakRetained;
}

- (KTSignatureTracker)signatureTracker
{
  WeakRetained = objc_loadWeakRetained((&self->_idsRegistrationInterface + 6));

  return WeakRetained;
}

@end