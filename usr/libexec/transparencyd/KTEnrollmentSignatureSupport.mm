@interface KTEnrollmentSignatureSupport
+ (BOOL)checkCloudRecordsWithDataStore:(id)a3;
+ (BOOL)updateCloudRecordsWithRegistrationData:(id)a3 deps:(id)a4;
+ (BOOL)validateSignatures:(id)a3 error:(id *)a4;
+ (id)enrollementLoggingKeys:(id)a3;
+ (void)updateClientData:(id)a3 deps:(id)a4 complete:(id)a5;
@end

@implementation KTEnrollmentSignatureSupport

+ (void)updateClientData:(id)a3 deps:(id)a4 complete:(id)a5
{
  v94 = a3;
  v7 = a4;
  v85 = a5;
  v116 = 0;
  v117 = &v116;
  v118 = 0x3032000000;
  v119 = sub_1001E664C;
  v120 = sub_1001E665C;
  v121 = 0;
  v110 = 0;
  v111 = &v110;
  v112 = 0x3032000000;
  v113 = sub_1001E664C;
  v114 = sub_1001E665C;
  v115 = 0;
  v106 = 0;
  v107 = &v106;
  v108 = 0x2020000000;
  v109 = 0;
  v92 = v7;
  v8 = [v7 accountOperations];
  v9 = (v111 + 5);
  obj = v111[5];
  v86 = [v8 primaryAccount:&obj];
  objc_storeStrong(v9, obj);

  if (!v86)
  {
    if (qword_10039CA60 != -1)
    {
      sub_10025CE88();
    }

    v58 = qword_10039CA68;
    if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
    {
      v59 = [v94 traceUUID];
      *buf = 138543362;
      *v124 = v59;
      _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_ERROR, "TransparencyAccount no account: %{public}@", buf, 0xCu);
    }

    v60 = +[NSDictionary dictionary];
    (*(v85 + 2))(v85, v60, 0, 0, v111[5]);
    goto LABEL_83;
  }

  v10 = [v7 accountOperations];
  v83 = [v10 accountLevel:v86];

  if (v83 != 4)
  {
    if (qword_10039CA60 != -1)
    {
      sub_10025CD70();
    }

    v11 = qword_10039CA68;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [v94 traceUUID];
      *buf = 67109378;
      *v124 = v83;
      *&v124[4] = 2114;
      *&v124[6] = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "TransparencyAccount level not HSA2: %d: %{public}@", buf, 0x12u);
    }
  }

  v13 = [v86 aa_altDSID];
  if (!v13)
  {
    if (qword_10039CA60 != -1)
    {
      sub_10025CD98();
    }

    v14 = qword_10039CA68;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = [v94 traceUUID];
      *buf = 138543362;
      *v124 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Can't get AltDSID: %{public}@", buf, 0xCu);
    }
  }

  [v86 aa_personID];
  v91 = v93 = v13;
  if (!v91)
  {
    if (qword_10039CA60 != -1)
    {
      sub_10025CDC0();
    }

    v16 = qword_10039CA68;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = [v94 traceUUID];
      *buf = 138543362;
      *v124 = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Can't get DSID: %{public}@", buf, 0xCu);
    }
  }

  v18 = [v94 requests];
  v84 = [v18 allKeys];

  if (![v84 count])
  {
    v61 = +[NSDictionary dictionary];
    (*(v85 + 2))(v85, v61, 0, 0, 0);
    goto LABEL_82;
  }

  v19 = [v92 smDataStore];
  v104[0] = _NSConcreteStackBlock;
  v104[1] = 3221225472;
  v104[2] = sub_1001E6774;
  v104[3] = &unk_100328440;
  v104[4] = &v116;
  [v19 fetchDeviceSignature:v84 complete:v104];

  v87 = +[NSMutableSet set];
  v102 = 0u;
  v103 = 0u;
  v100 = 0u;
  v101 = 0u;
  v20 = [v117[5] allValues];
  v21 = [v20 countByEnumeratingWithState:&v100 objects:v127 count:16];
  if (!v21)
  {
    v88 = 0;
    goto LABEL_65;
  }

  v88 = 0;
  v22 = *v101;
  v89 = v20;
  do
  {
    v23 = 0;
    do
    {
      if (*v101 != v22)
      {
        objc_enumerationMutation(v89);
      }

      v24 = *(*(&v100 + 1) + 8 * v23);
      v25 = [v94 requests];
      v26 = [v24 application];
      v27 = [v25 objectForKeyedSubscript:v26];

      v28 = [v24 tbsKTIDSRegistrationData];
      v29 = [v27 tbsKTIDSRegistrationData];
      LOBYTE(v26) = [v28 isEqual:v29];

      if ((v26 & 1) == 0)
      {
        v39 = [v92 logger];
        v40 = [v24 application];
        v41 = [NSString stringWithFormat:@"TBS-%@-%@", @"u", v40];
        [v39 incrementIntegerPropertyForKey:v41];

        if (qword_10039CA60 != -1)
        {
          sub_10025CDE8();
        }

        v37 = qword_10039CA68;
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          v42 = [v24 application];
          v43 = [v24 tbsKTIDSRegistrationData];
          v44 = [v43 kt_hexString];
          v45 = [v27 tbsKTIDSRegistrationData];
          v46 = [v45 kt_hexString];
          *buf = 138412802;
          *v124 = v42;
          *&v124[8] = 2112;
          *&v124[10] = v44;
          v125 = 2112;
          v126 = v46;
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "TBS changed since last update: %@, old %@, new %@", buf, 0x20u);
        }

        v88 = 1;
        goto LABEL_54;
      }

      v30 = [v24 pushToken];
      v31 = [v27 pushToken];
      v32 = [v30 isEqual:v31];

      if ((v32 & 1) == 0)
      {
        v47 = [v92 logger];
        v48 = [v24 application];
        v49 = [NSString stringWithFormat:@"TBS-%@-%@", @"h", v48];
        [v47 incrementIntegerPropertyForKey:v49];

        if (qword_10039CA60 != -1)
        {
          sub_10025CE10();
        }

        v37 = qword_10039CA68;
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          v50 = [v24 application];
          *buf = 138412290;
          *v124 = v50;
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "Pushtoken changed since last update: %@", buf, 0xCu);
        }

        goto LABEL_54;
      }

      v33 = [v24 altDSID];
      v34 = v33;
      if (v33 && v93)
      {
        v35 = [v24 altDSID];
        v36 = [v93 isEqual:v35];

        if ((v36 & 1) == 0)
        {
          if (qword_10039CA60 != -1)
          {
            sub_10025CE38();
          }

          v37 = qword_10039CA68;
          if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            v38 = [v24 application];
            *buf = 138412290;
            *v124 = v38;
            _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "TBS have different DSID: %@", buf, 0xCu);
          }

          goto LABEL_54;
        }
      }

      else
      {
      }

      v51 = [v24 dsid];
      v52 = v51 == 0;

      if (v52)
      {
        if (qword_10039CA60 != -1)
        {
          sub_10025CE60();
        }

        v53 = qword_10039CA68;
        if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
        {
          v54 = [v24 application];
          *buf = 138412290;
          *v124 = v54;
          _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_ERROR, "TBS missing dsid, adding in: %@", buf, 0xCu);
        }

        [v24 setDsid:v91];
      }

      v55 = [v24 signature];
      if (v55)
      {
        v56 = [v24 publicKey];
        v57 = v56 == 0;

        if (!v57)
        {
          v37 = [v24 application];
          [v87 addObject:v37];
LABEL_54:
        }
      }

      v23 = v23 + 1;
    }

    while (v21 != v23);
    v20 = v89;
    v21 = [v89 countByEnumeratingWithState:&v100 objects:v127 count:16];
  }

  while (v21);
LABEL_65:

  v90 = [NSMutableSet setWithArray:v84];
  [v90 minusSet:v87];
  if ([v90 count])
  {
    v62 = +[NSMutableArray array];
    v98 = 0u;
    v99 = 0u;
    v96 = 0u;
    v97 = 0u;
    v63 = v90;
    v64 = [v63 countByEnumeratingWithState:&v96 objects:v122 count:16];
    if (v64)
    {
      v65 = *v97;
      do
      {
        for (i = 0; i != v64; i = i + 1)
        {
          if (*v97 != v65)
          {
            objc_enumerationMutation(v63);
          }

          v67 = *(*(&v96 + 1) + 8 * i);
          v68 = [v94 requests];
          v69 = [v68 objectForKeyedSubscript:v67];

          v70 = [TransparencyIDSRegistrationData alloc];
          v71 = [v69 tbsKTIDSRegistrationData];
          v72 = [v70 initWithApplication:v67 registrationData:v71];

          v73 = [v69 pushToken];
          [v72 setPushToken:v73];

          [v72 setAltDSID:v93];
          [v72 setDsid:v91];
          [v62 addObject:v72];
          [v117[5] setObject:v72 forKeyedSubscript:v67];
        }

        v64 = [v63 countByEnumeratingWithState:&v96 objects:v122 count:16];
      }

      while (v64);
    }

    v74 = [v92 smDataStore];
    v95[0] = _NSConcreteStackBlock;
    v95[1] = 3221225472;
    v95[2] = sub_1001E68E4;
    v95[3] = &unk_1003284E8;
    v95[4] = &v110;
    v95[5] = &v106;
    [v74 storeDeviceSignature:v62 complete:v95];
  }

  v75 = [a1 checkCloudRecordsWithDataStore:v92] ^ 1;
  if (v83 != 4)
  {
    v75 = 1;
  }

  if ((v75 & 1) == 0)
  {
    v76 = [KTPendingFlag alloc];
    v77 = [v92 cloudKitOutgoingNFS];
    v78 = [(KTPendingFlag *)v76 initWithFlag:@"CloudKitOutgoing" conditions:2 scheduler:v77];

    v79 = [v92 flagHandler];
    [v79 handlePendingFlag:v78];

    v80 = [v92 cloudKitOutgoingNFS];
    [v80 trigger];

    goto LABEL_79;
  }

  if (v83 == 4)
  {
LABEL_79:
    v81 = v117[5];
  }

  else
  {
    v81 = &__NSDictionary0__struct;
  }

  (*(v85 + 2))(v85, v81, *(v107 + 24), v88 & 1, v111[5]);

  v61 = v87;
LABEL_82:

  v60 = v93;
LABEL_83:

  _Block_object_dispose(&v106, 8);
  _Block_object_dispose(&v110, 8);

  _Block_object_dispose(&v116, 8);
}

+ (BOOL)updateCloudRecordsWithRegistrationData:(id)a3 deps:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 cloudRecords];

  if (v7)
  {
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_1001E6BA4;
    v28[3] = &unk_100328510;
    v8 = objc_alloc_init(KDeviceSet);
    v29 = v8;
    v22 = v5;
    [v5 enumerateKeysAndObjectsUsingBlock:v28];
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v21 = v8;
    obj = [(KDeviceSet *)v8 devices];
    v9 = [obj countByEnumeratingWithState:&v24 objects:v30 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = 0;
      v12 = *v25;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v25 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v24 + 1) + 8 * i);
          v15 = [v6 cloudRecords];
          v16 = [v14 pushToken];
          v17 = [v14 registrationData];
          v18 = [v14 apps];
          v19 = [v18 allObjects];
          v11 |= [v15 updateSelfCloudDeviceWithPushToken:v16 tbsRegistrationData:v17 applications:v19];
        }

        v10 = [obj countByEnumeratingWithState:&v24 objects:v30 count:16];
      }

      while (v10);
    }

    else
    {
      LOBYTE(v11) = 0;
    }

    v5 = v22;
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  return v11 & 1;
}

+ (BOOL)checkCloudRecordsWithDataStore:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v5 = [v4 smDataStore];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001E6D44;
  v8[3] = &unk_100328538;
  v10 = &v12;
  v11 = a1;
  v6 = v4;
  v9 = v6;
  [v5 fetchDeviceSignature:0 complete:v8];

  LOBYTE(v5) = *(v13 + 24);
  _Block_object_dispose(&v12, 8);

  return v5;
}

+ (id)enrollementLoggingKeys:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableArray array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [&off_10033D898 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(&off_10033D898);
        }

        v9 = [NSString stringWithFormat:@"TBS-%@-%@", *(*(&v11 + 1) + 8 * i), v3];
        [v4 addObject:v9];
      }

      v6 = [&off_10033D898 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v4;
}

+ (BOOL)validateSignatures:(id)a3 error:(id *)a4
{
  v5 = a3;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 1;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_1001E664C;
  v19 = sub_1001E665C;
  v20 = 0;
  v6 = [v5 smDataStore];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001E7068;
  v11[3] = &unk_100328560;
  v13 = &v15;
  v14 = &v21;
  v7 = v5;
  v12 = v7;
  [v6 fetchDeviceSignature:0 complete:v11];

  if (a4)
  {
    v8 = v16[5];
    if (v8)
    {
      *a4 = v8;
    }
  }

  v9 = *(v22 + 24);

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v21, 8);

  return v9;
}

@end