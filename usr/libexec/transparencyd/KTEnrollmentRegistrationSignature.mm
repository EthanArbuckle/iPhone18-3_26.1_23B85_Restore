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
  deps = [(KTEnrollmentRegistrationSignature *)self deps];
  accountOperations = [deps accountOperations];
  v65 = 0;
  v49 = [accountOperations primaryAccount:&v65];
  v47 = v65;

  aa_altDSID = [v49 aa_altDSID];
  if (!aa_altDSID)
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

  aa_personID = [v49 aa_personID];
  if (!aa_personID)
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

  deps2 = [(KTEnrollmentRegistrationSignature *)self deps];
  smDataStore = [deps2 smDataStore];
  v58[0] = _NSConcreteStackBlock;
  v58[1] = 3221225472;
  v58[2] = sub_1001CEFDC;
  v58[3] = &unk_1003278D0;
  v58[4] = self;
  v48 = v3;
  v59 = v48;
  v50 = v2;
  v60 = v50;
  v46 = aa_personID;
  v61 = v46;
  v45 = aa_altDSID;
  v62 = v45;
  v63 = &v70;
  v64 = &v66;
  [smDataStore fetchDeviceSignature:0 complete:v58];

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
    deps3 = [(KTEnrollmentRegistrationSignature *)self deps];
    smDataStore2 = [deps3 smDataStore];
    v57[0] = _NSConcreteStackBlock;
    v57[1] = 3221225472;
    v57[2] = sub_1001CFFF8;
    v57[3] = &unk_10031A5F8;
    v57[4] = self;
    [smDataStore2 storeDeviceSignature:v50 complete:v57];

    *(v67 + 24) = 1;
  }

  deps4 = [(KTEnrollmentRegistrationSignature *)self deps];
  cloudRecords = [(KTPendingFlag *)deps4 cloudRecords];
  if (!cloudRecords || *(v67 + 24) != 1)
  {
    goto LABEL_32;
  }

  devices = [(KDeviceSet *)v48 devices];
  v19 = [devices count] == 0;

  if (!v19)
  {
    if (qword_10039C9B0 != -1)
    {
      sub_10025C3D4();
    }

    v20 = qword_10039C9B8;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      devices2 = [(KDeviceSet *)v48 devices];
      v22 = [devices2 count];
      *buf = 67109120;
      LODWORD(v76) = v22;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Updating cloud devices: %d", buf, 8u);
    }

    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    devices3 = [(KDeviceSet *)v48 devices];
    allObjects = [devices3 allObjects];

    v25 = [allObjects countByEnumeratingWithState:&v53 objects:v74 count:16];
    if (v25)
    {
      v26 = *v54;
      do
      {
        for (i = 0; i != v25; i = i + 1)
        {
          if (*v54 != v26)
          {
            objc_enumerationMutation(allObjects);
          }

          v28 = *(*(&v53 + 1) + 8 * i);
          deps5 = [(KTEnrollmentRegistrationSignature *)self deps];
          cloudRecords2 = [deps5 cloudRecords];
          pushToken = [v28 pushToken];
          registrationData = [v28 registrationData];
          apps = [v28 apps];
          allObjects2 = [apps allObjects];
          [cloudRecords2 updateSelfCloudDeviceWithPushToken:pushToken tbsRegistrationData:registrationData applications:allObjects2];
        }

        v25 = [allObjects countByEnumeratingWithState:&v53 objects:v74 count:16];
      }

      while (v25);
    }

    v35 = [KTPendingFlag alloc];
    deps6 = [(KTEnrollmentRegistrationSignature *)self deps];
    cloudKitOutgoingNFS = [deps6 cloudKitOutgoingNFS];
    deps4 = [(KTPendingFlag *)v35 initWithFlag:@"CloudKitOutgoing" conditions:2 scheduler:cloudKitOutgoingNFS];

    deps7 = [(KTEnrollmentRegistrationSignature *)self deps];
    flagHandler = [deps7 flagHandler];
    [flagHandler handlePendingFlag:deps4];

    cloudRecords = [(KTEnrollmentRegistrationSignature *)self deps];
    cloudKitOutgoingNFS2 = [cloudRecords cloudKitOutgoingNFS];
    [cloudKitOutgoingNFS2 trigger];

LABEL_32:
  }

  if (((v71[3] & 1) != 0 || [(KTEnrollmentRegistrationSignature *)self forceUpdate]) && (v67[3] & 1) == 0)
  {
    signatureTracker = [(KTEnrollmentRegistrationSignature *)self signatureTracker];
    signatureQueue = [signatureTracker signatureQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001D00D0;
    block[3] = &unk_100316FE0;
    block[4] = self;
    dispatch_async(signatureQueue, block);

    deps8 = [(KTEnrollmentRegistrationSignature *)self deps];
    flagHandler2 = [deps8 flagHandler];
    [flagHandler2 cancelPendingFlag:@"ValidateSelf"];
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