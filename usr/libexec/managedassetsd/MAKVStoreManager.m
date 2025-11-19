@interface MAKVStoreManager
+ (id)defaultManager;
- (BOOL)dedupeCoreRX:(id)a3 store:(id)a4 attributes:(id)a5 error:(id *)a6;
- (BOOL)deleteProfile:(id)a3 error:(id *)a4;
- (BOOL)didReceiveKVSData:(id)a3 assetType:(unint64_t)a4 storeName:(id)a5 storeGroup:(id)a6 profileType:(unint64_t)a7 data:(id)a8;
- (BOOL)didReceiveKVSDataDelete:(id)a3 recordHandle:(id)a4 assetType:(unint64_t)a5 storeName:(id)a6 storeGroup:(id)a7 profileType:(unint64_t)a8;
- (BOOL)didReceiveKVSDataZoneDelete:(id)a3 reason:(unint64_t)a4;
- (BOOL)didSyncUpKVSData:(id)a3 assetType:(unint64_t)a4 storeName:(id)a5 storeGroup:(id)a6 profileType:(unint64_t)a7 data:(id)a8;
- (BOOL)didSyncUpKVSDataDelete:(id)a3 recordHandle:(id)a4 assetType:(unint64_t)a5 storeName:(id)a6 storeGroup:(id)a7 profileType:(unint64_t)a8;
- (BOOL)fetchCoreRxLensData:(id)a3 accPayload:(id)a4 rxIdL:(int64_t)a5 rxIdR:(int64_t)a6 axisL:(int64_t)a7 axisR:(int64_t)a8 calRequiredL:(BOOL)a9 calRequiredR:(BOOL)a10 version:(unint64_t)a11 leftLensOnly:(BOOL)a12 rightLensOnly:(BOOL)a13 attributes:(id)a14 records:(id)a15 cloudSync:(BOOL)a16 store:(id)a17 recordUUIDOut:(id *)a18 error:(id *)a19;
- (BOOL)queryNominalDataFor:(int64_t)a3 rxId2:(int64_t)a4 record:(id *)a5 record2:(id *)a6 error:(id *)a7;
- (BOOL)removeStore:(id)a3 error:(id *)a4;
- (BOOL)resetKVCloudStateWithError:(id *)a3;
- (BOOL)resetKVCloudStateWithProfile:(id)a3 error:(id *)a4;
- (BOOL)updateWithNominalData:(id)a3 accPayload:(id)a4 rxIdL:(int64_t)a5 rxIdR:(int64_t)a6 axisL:(int64_t)a7 axisR:(int64_t)a8 calRequiredL:(BOOL)a9 calRequiredR:(BOOL)a10 version:(unint64_t)a11 leftLensOnly:(BOOL)a12 rightLensOnly:(BOOL)a13 attributes:(id)a14 records:(id)a15 cloudSync:(BOOL)a16 store:(id)a17 needsCloudFetch:(BOOL *)a18 uuidOut:(id *)a19 error:(id *)a20;
- (MAKVStoreManager)init;
- (id)getStore:(id)a3 groupPath:(id)a4 profile:(id)a5 attributes:(id)a6 isCreateOp:(BOOL)a7 isBaseStore:(BOOL)a8 isNew:(BOOL *)a9 storeChain:(id *)a10 error:(id *)a11;
- (id)getStoreChainFor:(id)a3 error:(id *)a4;
- (id)openCoreRXDataSharingStoreAndCheckUpgrade:(id)a3 profile:(id)a4 attributes:(id)a5 groupDB:(id)a6 storeIdentifier:(id)a7 error:(id *)a8;
- (id)openCoreRXUserStoreAndCheckUpgrade:(id)a3 profile:(id)a4 attributes:(id)a5 groupDB:(id)a6 storeIdentifier:(id)a7 error:(id *)a8;
- (id)registerStore:(id)a3 isCreateOp:(BOOL)a4 storeChain:(id *)a5 error:(id *)a6;
- (void)checkStoreForUploadWithOption:(unint64_t)a3 completionHandler:(id)a4;
- (void)checkStoreForUploadWithOption:(unint64_t)a3 profile:(id)a4 completionHandler:(id)a5;
- (void)close;
- (void)deleteAllStores;
- (void)failedToDeleteKVSData:(id)a3 assetType:(unint64_t)a4 storeName:(id)a5 storeGroup:(id)a6 profileType:(unint64_t)a7 error:(id)a8;
- (void)failedToDeleteKVSZone:(id)a3 error:(id)a4;
- (void)failedToUploadKVSData:(id)a3 assetType:(unint64_t)a4 storeName:(id)a5 storeGroup:(id)a6 profileType:(unint64_t)a7 data:(id)a8 error:(id)a9;
- (void)unloadGroupDb:(id)a3;
@end

@implementation MAKVStoreManager

- (id)openCoreRXUserStoreAndCheckUpgrade:(id)a3 profile:(id)a4 attributes:(id)a5 groupDB:(id)a6 storeIdentifier:(id)a7 error:(id *)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v22 = 1;
  v18 = MAGenCoreRxUserFields();
  v19 = [v16 upgradeTable:v13 fields:v18 attributes:v15 missingNewColumn:0 hasDeletedColumn:kMAKVCol_ckSyncState migrateData:&v22 error:a8];

  if (v19)
  {
    v20 = [[MAKVStore alloc] initWithName:v13 identifier:v17 profile:v14 db:v16 attributes:v15 error:a8];
  }

  else
  {
    if (os_log_type_enabled(off_100127CF0, OS_LOG_TYPE_ERROR))
    {
      sub_100028CBC(v13, a8);
    }

    v20 = 0;
  }

  return v20;
}

- (id)openCoreRXDataSharingStoreAndCheckUpgrade:(id)a3 profile:(id)a4 attributes:(id)a5 groupDB:(id)a6 storeIdentifier:(id)a7 error:(id *)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v22 = 1;
  v18 = MAGenCoreRxDataSharingFields();
  v19 = [v16 upgradeTable:v13 fields:v18 attributes:v15 missingNewColumn:kMARxUserCol_sn hasDeletedColumn:0 migrateData:&v22 error:a8];

  if (v19)
  {
    v20 = [[MAKVStore alloc] initWithName:v13 identifier:v17 profile:v14 db:v16 attributes:v15 error:a8];
  }

  else
  {
    if (os_log_type_enabled(off_100127CF0, OS_LOG_TYPE_ERROR))
    {
      sub_100028CBC(v13, a8);
    }

    v20 = 0;
  }

  return v20;
}

- (BOOL)queryNominalDataFor:(int64_t)a3 rxId2:(int64_t)a4 record:(id *)a5 record2:(id *)a6 error:(id *)a7
{
  v21 = 0;
  v13 = kMANominalCalibrationDataStore;
  v14 = kMACoreRXNominalGroup;
  v28 = kMAGroupKey;
  v29 = kMACoreRXNominalGroup;
  v15 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
  v16 = [(MAKVStoreManager *)self getStore:v13 groupPath:v14 profile:0 attributes:v15 isCreateOp:0 isBaseStore:0 isNew:&v21 storeChain:0 error:a7];

  if (!v16)
  {
    if (!*a7)
    {
      *a7 = createManagedAssetError();
    }

    v18 = off_100127CF0;
    if (os_log_type_enabled(off_100127CF0, OS_LOG_TYPE_ERROR))
    {
      v20 = *a7;
      *buf = 138412802;
      v23 = v13;
      v24 = 2112;
      v25 = v14;
      v26 = 2112;
      v27 = v20;
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "error getting nominal lens data store %@ group: %@ error=%@", buf, 0x20u);
    }

    goto LABEL_10;
  }

  if (!sub_100027B7C(v16, a3, a5, a7) || (a4 & 0x8000000000000000) == 0 && !sub_100027B7C(v16, a4, a6, a7))
  {
LABEL_10:
    v17 = 0;
    goto LABEL_11;
  }

  v17 = 1;
LABEL_11:

  return v17;
}

- (BOOL)updateWithNominalData:(id)a3 accPayload:(id)a4 rxIdL:(int64_t)a5 rxIdR:(int64_t)a6 axisL:(int64_t)a7 axisR:(int64_t)a8 calRequiredL:(BOOL)a9 calRequiredR:(BOOL)a10 version:(unint64_t)a11 leftLensOnly:(BOOL)a12 rightLensOnly:(BOOL)a13 attributes:(id)a14 records:(id)a15 cloudSync:(BOOL)a16 store:(id)a17 needsCloudFetch:(BOOL *)a18 uuidOut:(id *)a19 error:(id *)a20
{
  v90 = a3;
  v89 = a4;
  v93 = a14;
  v25 = a15;
  v87 = a17;
  v110[0] = kMARxUserCol_owner;
  v111[0] = objc_opt_class();
  v110[1] = kMARxUserCol_sn;
  v111[1] = objc_opt_class();
  v110[2] = kMARxUserCol_colorCode;
  v111[2] = objc_opt_class();
  v110[3] = kMARxUserCol_issueDate;
  v111[3] = objc_opt_class();
  v92 = [NSDictionary dictionaryWithObjects:v111 forKeys:v110 count:4];
  v88 = v25;
  if ([v25 count] == 1)
  {
    v26 = [v25 objectAtIndexedSubscript:0];
    v27 = [v26 objectForKeyedSubscript:kMAKVCol_uuid];
    *a19 = v27;
    if (os_log_type_enabled(off_100127CF0, OS_LOG_TYPE_DEBUG))
    {
      sub_100028E0C();
    }

    v28 = kMARxFactoryCalibrated;
    v29 = [v26 objectForKeyedSubscript:kMARxUserCol_lensDataTypeLeft];
    v30 = [v28 isEqual:v29];

    v31 = [v26 objectForKeyedSubscript:kMARxUserCol_lensDataTypeRight];
    v32 = [v28 isEqual:v31];

    v91 = v26;
    if (v30 & a12 & 1) != 0 || (v30 & v32)
    {
      goto LABEL_8;
    }

    if (v32)
    {
      if (a13)
      {
LABEL_8:
        *a18 = 0;
        v33 = off_100127CF0;
        v34 = 1;
        if (os_log_type_enabled(off_100127CF0, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v35 = v90;
          v109 = v90;
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "factory data is already fetched for: %@, skipping the fetching", buf, 0xCu);
          v36 = 0;
          v37 = 0;
          v38 = 0;
        }

        else
        {
          v36 = 0;
          v37 = 0;
          v38 = 0;
          v35 = v90;
        }

        v45 = v89;
        v46 = v87;
        goto LABEL_89;
      }

      v39 = 1;
    }

    else
    {
      v39 = 0;
    }
  }

  else
  {
    v27 = 0;
    v39 = 0;
    LOBYTE(v30) = 0;
    v91 = 0;
  }

  v40 = +[NSMutableDictionary dictionary];
  v84 = kMARxUserCol_accPayload;
  if (os_log_type_enabled(off_100127CF0, OS_LOG_TYPE_DEBUG))
  {
    sub_100028E74();
  }

  v103[0] = _NSConcreteStackBlock;
  v103[1] = 3221225472;
  v103[2] = sub_100028AA8;
  v103[3] = &unk_1001162B8;
  v41 = v93;
  v104 = v41;
  v42 = v40;
  v105 = v42;
  [v92 enumerateKeysAndObjectsUsingBlock:v103];
  if ((v39 | a12) & 1) != 0 || ((v30 | a13))
  {
    if ((v30 | a13))
    {
      if ((v39 | a12))
      {
        v38 = 0;
        v37 = 0;
        v86 = 0;
        goto LABEL_43;
      }

      v96 = 0;
      v97 = 0;
      v43 = [(MAKVStoreManager *)self queryNominalDataFor:a6 rxId2:-1 record:&v97 record2:0 error:&v96];
      v86 = v97;
      v44 = v96;
      v38 = v44;
      v37 = 0;
    }

    else
    {
      v98 = 0;
      v99 = 0;
      v43 = [(MAKVStoreManager *)self queryNominalDataFor:a5 rxId2:-1 record:&v99 record2:0 error:&v98];
      v37 = v99;
      v44 = v98;
      v38 = v44;
      v86 = 0;
    }
  }

  else
  {
    v101 = 0;
    v102 = 0;
    v100 = 0;
    v43 = [(MAKVStoreManager *)self queryNominalDataFor:a5 rxId2:a6 record:&v102 record2:&v101 error:&v100];
    v37 = v102;
    v86 = v101;
    v44 = v100;
    v38 = v44;
  }

  if (v43)
  {
    v81 = v44;
    if ((a5 & 0x8000000000000000) == 0)
    {
      v47 = [NSNumber numberWithInteger:a5];
      [v42 setObject:v47 forKeyedSubscript:kMARxUserCol_idRXL];
    }

    if ((a6 & 0x8000000000000000) == 0)
    {
      v48 = [NSNumber numberWithInteger:a6];
      [v42 setObject:v48 forKeyedSubscript:kMARxUserCol_idRXR];
    }

    if ((a7 & 0x8000000000000000) == 0)
    {
      v49 = [NSNumber numberWithInteger:a7];
      [v42 setObject:v49 forKeyedSubscript:kMARxUserCol_axisL];
    }

    v82 = a9;
    if ((a8 & 0x8000000000000000) == 0)
    {
      v50 = [NSNumber numberWithInteger:?];
      [v42 setObject:v50 forKeyedSubscript:kMARxUserCol_axisR];
    }

    v51 = a10;
    if (!a13)
    {
      v52 = [NSNumber numberWithBool:a9];
      [v42 setObject:v52 forKeyedSubscript:kMARxUserCol_facCalRequiredLeft];
    }

    if (!a12)
    {
      v53 = [NSNumber numberWithBool:a10];
      [v42 setObject:v53 forKeyedSubscript:kMARxUserCol_facCalRequiredRight];
    }

    if (!v37)
    {
LABEL_49:
      if (v86)
      {
        v61 = kMARxUserCol_lensDataRight;
        v62 = [v41 objectForKeyedSubscript:kMARxUserCol_lensDataRight];
        if (v62)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v38 = createManagedAssetError();

            v73 = off_100127CF0;
            v57 = v84;
            if (os_log_type_enabled(off_100127CF0, OS_LOG_TYPE_ERROR))
            {
              sub_100028EDC(v38, v73);
            }

            v34 = 0;
            v45 = v89;
            v35 = v90;
            v46 = v87;
            goto LABEL_86;
          }

          [v42 setObject:kMARxFactoryCalibrated forKeyedSubscript:kMARxUserCol_lensDataTypeRight];
          [v42 setObject:v62 forKeyedSubscript:v61];
          v63 = off_100127CF0;
          v64 = v86;
          if (os_log_type_enabled(off_100127CF0, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v109 = v62;
            _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_INFO, "calibrationDataRight by input: %@", buf, 0xCu);
          }

          v51 = 0;
        }

        else
        {
          [v42 setObject:kMARxNominal forKeyedSubscript:kMARxUserCol_lensDataTypeRight];
          v64 = v86;
          v66 = [v86 objectForKeyedSubscript:@"data"];
          [v42 setObject:v66 forKeyedSubscript:v61];

          v67 = off_100127CF0;
          if (os_log_type_enabled(off_100127CF0, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v109 = v86;
            _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_INFO, "nominalRight: %@", buf, 0xCu);
          }
        }

        v68 = [v64 objectForKeyedSubscript:@"airgapP2"];
        [v42 setObject:v68 forKeyedSubscript:kMARxUserCol_airgapRight];
      }

      v57 = v84;
      if (a12)
      {
        v69 = kMARxUserCol_accPayloadLeft;

        v57 = v69;
      }

      else if (a13)
      {
        v70 = kMARxUserCol_accPayloadRight;

        v57 = v70;
        v82 = v51;
      }

      else
      {
        v82 |= v51;
      }

      v45 = v89;
      v35 = v90;
      v46 = v87;
      if (!v89 && v82)
      {
        v38 = createManagedAssetError();

LABEL_85:
        v34 = 0;
        goto LABEL_86;
      }

      if (v89)
      {
        [v42 setObject:v89 forKeyedSubscript:v57];
      }

      if (v91)
      {
        v106 = kMAKVCol_uuid;
        v107 = v27;
        v71 = [NSDictionary dictionaryWithObjects:&v107 forKeys:&v106 count:1];
        if (os_log_type_enabled(off_100127CF0, OS_LOG_TYPE_DEBUG))
        {
          sub_100028F78();
        }

        v94 = v81;
        v72 = [v87 updateFor:v71 value:v42 attributes:0 error:&v94];
        v38 = v94;

        if (v72)
        {
LABEL_76:
          *a18 = v82;
          v34 = 1;
          goto LABEL_86;
        }
      }

      else
      {
        v85 = v57;
        v74 = +[NSUUID UUID];
        v75 = [v74 UUIDString];

        v76 = v75;
        v27 = v75;
        *a19 = v75;
        [v42 setObject:v75 forKeyedSubscript:kMAKVCol_uuid];
        [v42 setObject:v90 forKeyedSubscript:kMARxUserCol_name];
        v77 = [NSNumber numberWithUnsignedInteger:a11];
        [v42 setObject:v77 forKeyedSubscript:kMARxUserCol_version];

        if (os_log_type_enabled(off_100127CF0, OS_LOG_TYPE_DEBUG))
        {
          sub_100028FEC();
        }

        v95 = v81;
        v78 = [v87 putDictionay:v42 attributes:0 error:&v95];
        v38 = v95;

        v57 = v85;
        if (v78)
        {
          goto LABEL_76;
        }
      }

      if (os_log_type_enabled(off_100127CF0, OS_LOG_TYPE_ERROR))
      {
        sub_100029060();
      }

      goto LABEL_85;
    }

    v54 = kMARxUserCol_lensDataLeft;
    v55 = [v41 objectForKeyedSubscript:kMARxUserCol_lensDataLeft];
    if (!v55)
    {
      [v42 setObject:kMARxNominal forKeyedSubscript:kMARxUserCol_lensDataTypeLeft];
      v58 = [v37 objectForKeyedSubscript:@"data"];
      [v42 setObject:v58 forKeyedSubscript:v54];

      v59 = off_100127CF0;
      if (os_log_type_enabled(off_100127CF0, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v109 = v37;
        _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_INFO, "nominalLeft: %@", buf, 0xCu);
      }

      goto LABEL_48;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v42 setObject:kMARxFactoryCalibrated forKeyedSubscript:kMARxUserCol_lensDataTypeLeft];
      [v42 setObject:v55 forKeyedSubscript:v54];
      v56 = off_100127CF0;
      if (os_log_type_enabled(off_100127CF0, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v109 = v55;
        _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_INFO, "calibrationDataLeft by input: %@", buf, 0xCu);
      }

      v82 = 0;
LABEL_48:
      v60 = [v37 objectForKeyedSubscript:@"airgapP2"];
      [v42 setObject:v60 forKeyedSubscript:kMARxUserCol_airgapLeft];

      goto LABEL_49;
    }

    v38 = createManagedAssetError();

    v65 = off_100127CF0;
    if (os_log_type_enabled(off_100127CF0, OS_LOG_TYPE_ERROR))
    {
      sub_100028EDC(v38, v65);
    }

    goto LABEL_44;
  }

LABEL_43:
  if (os_log_type_enabled(off_100127CF0, OS_LOG_TYPE_ERROR))
  {
    v35 = v90;
    sub_1000290C8();
    v34 = 0;
    goto LABEL_45;
  }

LABEL_44:
  v34 = 0;
  v35 = v90;
LABEL_45:
  v45 = v89;
  v46 = v87;
  v57 = v84;
LABEL_86:
  if (v38)
  {
    v79 = v38;
    *a20 = v38;
  }

  v36 = v86;
LABEL_89:

  return v34;
}

- (BOOL)fetchCoreRxLensData:(id)a3 accPayload:(id)a4 rxIdL:(int64_t)a5 rxIdR:(int64_t)a6 axisL:(int64_t)a7 axisR:(int64_t)a8 calRequiredL:(BOOL)a9 calRequiredR:(BOOL)a10 version:(unint64_t)a11 leftLensOnly:(BOOL)a12 rightLensOnly:(BOOL)a13 attributes:(id)a14 records:(id)a15 cloudSync:(BOOL)a16 store:(id)a17 recordUUIDOut:(id *)a18 error:(id *)a19
{
  v37[0] = 0;
  v35 = 0;
  v36 = 0;
  LOBYTE(v29) = a16;
  v20 = a3;
  LOWORD(v28) = __PAIR16__(a13, a12);
  LOWORD(v27) = __PAIR16__(a10, a9);
  v21 = [MAKVStoreManager updateWithNominalData:"updateWithNominalData:accPayload:rxIdL:rxIdR:axisL:axisR:calRequiredL:calRequiredR:version:leftLensOnly:rightLensOnly:attributes:records:cloudSync:store:needsCloudFetch:uuidOut:error:" accPayload:v20 rxIdL:a4 rxIdR:a5 axisL:a6 axisR:a7 calRequiredL:a8 calRequiredR:v27 version:a11 leftLensOnly:v28 rightLensOnly:a14 attributes:a15 records:v29 cloudSync:a17 store:v37 needsCloudFetch:&v36 uuidOut:&v35 error:?];
  v22 = v36;
  v23 = v35;
  if (!v21 && os_log_type_enabled(off_100127CF0, OS_LOG_TYPE_ERROR))
  {
    sub_100029130();
  }

  v24 = v22;
  *a18 = v22;
  v25 = v23;
  *a19 = v23;

  return v21;
}

- (void)unloadGroupDb:(id)a3
{
  v4 = [(NSMutableDictionary *)self->_dbs objectForKeyedSubscript:a3];
  if (v4)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = [(NSMutableDictionary *)self->_stores allKeys];
    v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v15 + 1) + 8 * i);
          v11 = [(NSMutableDictionary *)self->_stores objectForKeyedSubscript:v10];
          v12 = [v11 db];

          if (v12 == v4)
          {
            [(NSMutableDictionary *)self->_stores removeObjectForKey:v10];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }

    dbs = self->_dbs;
    v14 = [v4 identifier];
    [(NSMutableDictionary *)dbs removeObjectForKey:v14];

    [v4 close];
  }
}

+ (id)defaultManager
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000293C4;
  block[3] = &unk_100115D08;
  block[4] = a1;
  if (qword_100129428 != -1)
  {
    dispatch_once(&qword_100129428, block);
  }

  v2 = qword_100129430;

  return v2;
}

- (MAKVStoreManager)init
{
  v27.receiver = self;
  v27.super_class = MAKVStoreManager;
  v2 = [(MAKVStoreManager *)&v27 init];
  if (v2)
  {
    v3 = +[NSFileManager defaultManager];
    v4 = +[MAStorage defaultManager];
    v5 = +[MANotificationEngine sharedInstance];
    notificationEngine = v2->_notificationEngine;
    v2->_notificationEngine = v5;

    v7 = [v4 marootPath];
    v8 = [v4 maUsersPath];
    maUsersPath = v2->_maUsersPath;
    v2->_maUsersPath = v8;

    v26 = 0;
    v10 = [MAStorage ensureDirectoryExists:"kvStores/" parent:v7 fileMgr:v3 error:&v26];
    v11 = v26;
    topDir = v2->_topDir;
    v2->_topDir = v10;

    if (v2->_topDir)
    {
      v13 = [NSMutableDictionary dictionaryWithCapacity:16];
      dbs = v2->_dbs;
      v2->_dbs = v13;

      v15 = [NSMutableDictionary dictionaryWithCapacity:32];
      stores = v2->_stores;
      v2->_stores = v15;

      v17 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v18 = dispatch_queue_create("com.apple.managedassetsd.kvs.serial", v17);
      serialQueue = v2->_serialQueue;
      v2->_serialQueue = v18;

      v20 = +[NSFileManager defaultManager];
      v21 = +[NSMutableDictionary dictionary];
      if ([v20 fileExistsAtPath:@"/System/Library/PrivateFrameworks/CorePrescription.framework/coreRXNominalGroup.sqlite"])
      {
        [v21 setObject:@"/System/Library/PrivateFrameworks/CorePrescription.framework/coreRXNominalGroup.sqlite" forKeyedSubscript:@"coreRXNominalGroup"];
      }

      v22 = qword_100129438;
      qword_100129438 = v21;

      v23 = v2;
    }

    else
    {
      v24 = off_100127CF8;
      if (os_log_type_enabled(off_100127CF8, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v29 = v11;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "failed to create top directory for kvstore, error: %@", buf, 0xCu);
      }

      v23 = 0;
    }
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (void)close
{
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100029768;
  block[3] = &unk_100115E70;
  block[4] = self;
  dispatch_sync(serialQueue, block);
}

- (BOOL)deleteProfile:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [NSString stringWithFormat:@"%@%@/kvStore", self->_maUsersPath, v6];
  v8 = +[NSFileManager defaultManager];
  if ([v8 fileExistsAtPath:v7])
  {
    v9 = off_100127CF8;
    if (os_log_type_enabled(off_100127CF8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v18 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "deleting profile %@", buf, 0xCu);
    }

    v10 = [v6 stringByAppendingString:@"$"];
    serialQueue = self->_serialQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100029AA4;
    block[3] = &unk_100115E20;
    block[4] = self;
    v16 = v10;
    v12 = v10;
    dispatch_sync(serialQueue, block);
    v13 = [v8 removeItemAtPath:v7 error:a4];
  }

  else
  {
    v13 = 1;
  }

  return v13;
}

- (void)deleteAllStores
{
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100029D08;
  block[3] = &unk_100115E70;
  block[4] = self;
  dispatch_sync(serialQueue, block);
}

- (id)getStore:(id)a3 groupPath:(id)a4 profile:(id)a5 attributes:(id)a6 isCreateOp:(BOOL)a7 isBaseStore:(BOOL)a8 isNew:(BOOL *)a9 storeChain:(id *)a10 error:(id *)a11
{
  v11 = a7;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  if (v18)
  {
    v20 = [NSString stringWithFormat:@"%@%@/kvStore/%@.sqlite", self->_maUsersPath, v18, v17];
    v21 = [NSString stringWithFormat:@"%@$%@", v18, v17];
    v22 = 0;
  }

  else
  {
    v20 = [qword_100129438 objectForKeyedSubscript:v17];
    v22 = v20 != 0;
    if (!v20)
    {
      v20 = [NSString stringWithFormat:@"%@%@.sqlite", self->_topDir, v17];
    }

    v21 = v17;
  }

  v51 = [NSString stringWithFormat:@"%@.sqlite/%@", v21, v16];
  v52 = v21;
  v49 = v22;
  v95 = 0;
  v96 = &v95;
  v97 = 0x3032000000;
  v98 = sub_10002A804;
  v99 = sub_10002A814;
  v100 = 0;
  v89 = 0;
  v90 = &v89;
  v91 = 0x3032000000;
  v92 = sub_10002A804;
  v93 = sub_10002A814;
  v94 = 0;
  v83 = 0;
  v84 = &v83;
  v85 = 0x3032000000;
  v86 = sub_10002A804;
  v87 = sub_10002A814;
  v88 = 0;
  v79 = 0;
  v80 = &v79;
  v81 = 0x2020000000;
  v82 = 0;
  v73 = 0;
  v74 = &v73;
  v75 = 0x3032000000;
  v76 = sub_10002A804;
  v77 = sub_10002A814;
  v78 = 0;
  v23 = [v19 objectForKeyedSubscript:kMAGroupKey];
  v24 = kMACoreRXUserGroup;
  v48 = v18;
  if ([kMACoreRXUserGroup isEqual:v23])
  {
    v25 = [kMAUserCalibrationDataStore isEqualToString:v16];
    v26 = v19;
    v27 = v11;
  }

  else
  {
    v26 = v19;
    v27 = v11;
    v25 = 0;
  }

  v47 = v23;
  if ([v24 isEqual:v23])
  {
    v28 = [kMARXDataSharingStore isEqualToString:v16];
    v29 = v17;
  }

  else
  {
    v29 = v17;
    v28 = 0;
  }

  v30 = off_100127CF8;
  if (os_log_type_enabled(off_100127CF8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v102 = v20;
    v103 = 2112;
    v104 = v52;
    v105 = 2112;
    v106 = v51;
    _os_log_debug_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEBUG, "dbFile:%@ db:%@ store:%@", buf, 0x20u);
  }

  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002A81C;
  block[3] = &unk_1001162E0;
  v61 = &v95;
  block[4] = self;
  v46 = v52;
  v55 = v46;
  v32 = v20;
  v56 = v32;
  v66 = ((v27 | v25 | v28) & 1) == 0;
  v67 = v49;
  v68 = a8;
  v53 = v26;
  v57 = v53;
  v62 = &v83;
  v63 = &v79;
  v64 = &v89;
  v33 = v51;
  v58 = v33;
  v69 = v25;
  v34 = v16;
  v59 = v34;
  v35 = v48;
  v70 = v28;
  v71 = a10 != 0;
  v60 = v35;
  v65 = &v73;
  v72 = v27;
  dispatch_sync(serialQueue, block);
  if (a10)
  {
    *a10 = v74[5];
  }

  if (*(v80 + 24) == 1)
  {
    v36 = off_100127CF8;
    if (os_log_type_enabled(off_100127CF8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v102 = v32;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_INFO, "create or load:%@", buf, 0xCu);
    }
  }

  v37 = v84[5];
  if (v37)
  {
    v38 = v37;
LABEL_21:
    v39 = 0;
    *a11 = v38;
    goto LABEL_30;
  }

  v40 = v96[5];
  if (v40)
  {
    v41 = v90[5];
    if (v41)
    {
LABEL_27:
      v39 = v41;
      goto LABEL_30;
    }

    if (v27 || ([v40 tableExists:v34 error:a11] & 1) != 0)
    {
      v42 = [MAKVStore alloc];
      v43 = [(MAKVStore *)v42 initWithName:v34 identifier:v33 profile:v35 db:v96[5] attributes:v53 error:a11];
      v44 = v90[5];
      v90[5] = v43;

      *a9 = 1;
      v41 = v90[5];
      goto LABEL_27;
    }

    if (!*a11)
    {
      v38 = createManagedAssetError();
      goto LABEL_21;
    }
  }

  v39 = 0;
LABEL_30:

  _Block_object_dispose(&v73, 8);
  _Block_object_dispose(&v79, 8);
  _Block_object_dispose(&v83, 8);

  _Block_object_dispose(&v89, 8);
  _Block_object_dispose(&v95, 8);

  return v39;
}

- (id)registerStore:(id)a3 isCreateOp:(BOOL)a4 storeChain:(id *)a5 error:(id *)a6
{
  v10 = a3;
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = sub_10002A804;
  v40 = sub_10002A814;
  v41 = 0;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = sub_10002A804;
  v34 = sub_10002A814;
  v35 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_10002A804;
  v28 = sub_10002A814;
  v29 = 0;
  v11 = [v10 identifier];
  if (os_log_type_enabled(off_100127CF8, OS_LOG_TYPE_DEBUG))
  {
    sub_10002E79C();
  }

  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002AFBC;
  block[3] = &unk_100116308;
  v20 = &v36;
  block[4] = self;
  v13 = v11;
  v18 = v13;
  v21 = &v24;
  v14 = v10;
  v19 = v14;
  v22 = &v30;
  v23 = a4;
  dispatch_sync(serialQueue, block);
  *a6 = v31[5];
  if (a5)
  {
    *a5 = v25[5];
  }

  v15 = v37[5];

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v30, 8);

  _Block_object_dispose(&v36, 8);

  return v15;
}

- (id)getStoreChainFor:(id)a3 error:(id *)a4
{
  v6 = a3;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_10002A804;
  v25 = sub_10002A814;
  v26 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_10002A804;
  v19 = sub_10002A814;
  v20 = 0;
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002B2C4;
  block[3] = &unk_100116330;
  v12 = v6;
  v13 = &v21;
  v14 = &v15;
  v8 = v6;
  dispatch_sync(serialQueue, block);
  *a4 = v16[5];
  v9 = v22[5];

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v21, 8);

  return v9;
}

- (BOOL)removeStore:(id)a3 error:(id *)a4
{
  v6 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_10002A804;
  v17 = sub_10002A814;
  v18 = 0;
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002B460;
  block[3] = &unk_100116358;
  block[4] = self;
  v11 = v6;
  v12 = &v13;
  v8 = v6;
  dispatch_sync(serialQueue, block);
  *a4 = v14[5];
  LOBYTE(a4) = v14[5] == 0;

  _Block_object_dispose(&v13, 8);
  return a4;
}

- (BOOL)didReceiveKVSDataDelete:(id)a3 recordHandle:(id)a4 assetType:(unint64_t)a5 storeName:(id)a6 storeGroup:(id)a7 profileType:(unint64_t)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a6;
  v16 = a7;
  v17 = off_100127CF8;
  if (os_log_type_enabled(off_100127CF8, OS_LOG_TYPE_INFO))
  {
    *buf = 138413058;
    v63 = v13;
    v64 = 2112;
    v65 = v15;
    v66 = 2112;
    v67 = v16;
    v68 = 2048;
    v69 = a8;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "KVSData delete sync down, recordName:%@ store:%@ group:%@ profileType:%lu", buf, 0x2Au);
  }

  v53 = 0;
  v60[0] = kMAGroupKey;
  v60[1] = kMAKVStoreOptionsKey;
  v61[0] = v16;
  v61[1] = &off_10011DC70;
  v18 = [NSDictionary dictionaryWithObjects:v61 forKeys:v60 count:2];
  v51 = 0;
  v52 = 0;
  v19 = sub_10002BBF0(a8, &v52, &v51);
  v20 = v52;
  v21 = v51;
  v22 = v21;
  if (v19)
  {
    v50 = v21;
    v23 = [(MAKVStoreManager *)self getStore:v15 groupPath:v16 profile:v20 attributes:v18 isCreateOp:0 isBaseStore:0 isNew:&v53 storeChain:0 error:&v50];
    v24 = v50;

    v25 = off_100127CF8;
    v26 = os_log_type_enabled(off_100127CF8, OS_LOG_TYPE_INFO);
    if (v23)
    {
      v45 = v14;
      if (v26)
      {
        *buf = 138412290;
        v63 = v13;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "Deleting local record for KVSData delete sync down, recordName:%@", buf, 0xCu);
      }

      v58 = kMAKVCol_recordName;
      v59 = v13;
      v27 = [NSDictionary dictionaryWithObjects:&v59 forKeys:&v58 count:1];
      v49 = v24;
      v28 = [v23 deleteFor:v27 attributes:v18 error:&v49];
      v22 = v49;

      if ((v28 & 1) == 0)
      {
        v36 = off_100127CF8;
        if (os_log_type_enabled(off_100127CF8, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412802;
          v63 = v15;
          v64 = 2112;
          v65 = v13;
          v66 = 2112;
          v67 = v22;
          _os_log_error_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "KVS store to be deleted failed to be deleted, store: %@ recordName: %@ with error=%@", buf, 0x20u);
        }

        v35 = 0;
        goto LABEL_21;
      }

      v14 = v45;
      if (!v45)
      {
        v35 = 1;
        goto LABEL_32;
      }

      v42 = [v23 recordHandleField];
      v56 = v42;
      v57 = v45;
      v29 = [NSDictionary dictionaryWithObjects:&v57 forKeys:&v56 count:1];
      v30 = [v23 recordHandleField];
      v47 = v22;
      v48 = 0;
      v40 = [v23 queryForColumn:v29 column:v30 attributes:v18 values:&v48 error:&v47];
      v31 = v48;
      v44 = v47;

      if (v40)
      {
        if (![v31 count])
        {
          v22 = v44;
          goto LABEL_27;
        }

        if (os_log_type_enabled(off_100127CF8, OS_LOG_TYPE_ERROR))
        {
          sub_10002E810();
        }

        v43 = v31;
        v41 = [v23 recordHandleField];
        v54 = v41;
        v55 = v45;
        v32 = [NSDictionary dictionaryWithObjects:&v55 forKeys:&v54 count:1];
        v46 = v44;
        v33 = [v23 deleteFor:v32 attributes:v18 error:&v46];
        v34 = v46;

        v22 = v34;
        if (v33)
        {
          v31 = v43;
LABEL_27:

          v35 = 1;
LABEL_21:
          v14 = v45;
          goto LABEL_32;
        }

        v38 = off_100127CF8;
        if (os_log_type_enabled(off_100127CF8, OS_LOG_TYPE_ERROR))
        {
          *buf = 138413058;
          v63 = v15;
          v64 = 2112;
          v65 = v13;
          v66 = 2112;
          v14 = v45;
          v67 = v45;
          v68 = 2112;
          v69 = v22;
          _os_log_error_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "Failed to delete by recordHandle after delete with recordName, store: %@ recordName: %@ recordHandle: %@ with error=%@", buf, 0x2Au);
          v24 = v22;
        }

        else
        {
          v24 = v34;
          v14 = v45;
        }
      }

      else
      {
        v43 = v31;
        v37 = off_100127CF8;
        if (os_log_type_enabled(off_100127CF8, OS_LOG_TYPE_ERROR))
        {
          *buf = 138413058;
          v63 = v15;
          v64 = 2112;
          v65 = v13;
          v66 = 2112;
          v24 = v44;
          v14 = v45;
          v67 = v45;
          v68 = 2112;
          v69 = v44;
          _os_log_error_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "Failed to query by recordHandle after delete with recordName, store: %@ recordName: %@ recordHandle: %@ with error=%@", buf, 0x2Au);
        }

        else
        {
          v24 = v44;
          v14 = v45;
        }
      }

      v35 = 0;
    }

    else if (v26)
    {
      *buf = 138412290;
      v63 = v13;
      v35 = 1;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "KVS store to be deleted does not exist, recordName: %@", buf, 0xCu);
      v23 = 0;
    }

    else
    {
      v23 = 0;
      v35 = 1;
    }

    v22 = v24;
    goto LABEL_32;
  }

  v23 = 0;
  v35 = 0;
LABEL_32:

  return v35;
}

- (BOOL)didReceiveKVSData:(id)a3 assetType:(unint64_t)a4 storeName:(id)a5 storeGroup:(id)a6 profileType:(unint64_t)a7 data:(id)a8
{
  v13 = a3;
  v14 = a5;
  v15 = a6;
  v16 = a8;
  v17 = off_100127CF8;
  if (os_log_type_enabled(off_100127CF8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    v46 = v13;
    v47 = 2112;
    v48 = v14;
    v49 = 2112;
    v50 = v15;
    v51 = 2048;
    v52 = a7;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "didReceiveKVSData recordName:%@ storeName:%@ group:%@ profileType:%lu", buf, 0x2Au);
  }

  v37 = v13;
  buf[0] = 0;
  v43 = kMAGroupKey;
  v44 = v15;
  v18 = [NSDictionary dictionaryWithObjects:&v44 forKeys:&v43 count:1];
  v40 = 0;
  v41 = 0;
  v19 = sub_10002BBF0(a7, &v41, &v40);
  v20 = v41;
  v21 = v40;
  v22 = v21;
  if (v19)
  {
    v39 = v21;
    v23 = [(MAKVStoreManager *)self getStore:v14 groupPath:v15 profile:v20 attributes:v18 isCreateOp:0 isBaseStore:0 isNew:buf storeChain:0 error:&v39];
    v24 = v39;

    if ([v23 cloudSync])
    {
      v35 = v16;
      v36 = v14;
      v38 = 0;
      v25 = [(MAKVStoreManager *)self dedupeCoreRX:v16 store:v23 attributes:v18 error:&v38];
      v26 = v38;
      if ((v25 & 1) == 0 && os_log_type_enabled(off_100127CF8, OS_LOG_TYPE_ERROR))
      {
        sub_10002E950();
      }

      [(MANotificationEngine *)self->_notificationEngine postNotificationWheniCloudSyncedDown];
      notificationEngine = self->_notificationEngine;
      v27 = [v23 name];
      v42 = v27;
      v28 = 1;
      v29 = [NSArray arrayWithObjects:&v42 count:1];
      [v23 profile];
      v30 = v34 = v26;
      v31 = [v23 group];
      [(MANotificationEngine *)notificationEngine notifyKVStoreEventWith:0x400000 kvStores:v29 profile:v30 sharingGroup:v31];

      v16 = v35;
      v14 = v36;
    }

    else
    {
      if (os_log_type_enabled(off_100127CF8, OS_LOG_TYPE_ERROR))
      {
        sub_10002E8E8();
      }

      v28 = 0;
    }
  }

  else
  {
    v23 = 0;
    v28 = 0;
    v24 = v21;
  }

  return v28;
}

- (BOOL)didReceiveKVSDataZoneDelete:(id)a3 reason:(unint64_t)a4
{
  v5 = a3;
  v6 = off_100127CF8;
  if (os_log_type_enabled(off_100127CF8, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = v5;
    v10 = 2048;
    v11 = a4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Zone %@ was deleted, reason: %lu", &v8, 0x16u);
  }

  return 1;
}

- (BOOL)didSyncUpKVSData:(id)a3 assetType:(unint64_t)a4 storeName:(id)a5 storeGroup:(id)a6 profileType:(unint64_t)a7 data:(id)a8
{
  v13 = a3;
  v14 = a5;
  v15 = a6;
  v16 = a8;
  v17 = off_100127CF8;
  if (os_log_type_enabled(off_100127CF8, OS_LOG_TYPE_DEFAULT))
  {
    v18 = kMAKVCol_recordName;
    v19 = v17;
    v20 = [v16 objectForKeyedSubscript:v18];
    *buf = 138413314;
    v56 = v13;
    v57 = 2112;
    v58 = v20;
    v59 = 2112;
    v60 = v14;
    v61 = 2112;
    v62 = v15;
    v63 = 2048;
    v64 = a7;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "KVSData uploaded to cloud, recordHandle:%@ recordName:%@ store:%@ group:%@ profileType:%lu", buf, 0x34u);
  }

  v43 = v16;
  v44 = v13;
  v49 = 0;
  v53 = kMAGroupKey;
  v54 = v15;
  v21 = [NSDictionary dictionaryWithObjects:&v54 forKeys:&v53 count:1];
  v47 = 0;
  v48 = 0;
  v22 = sub_10002BBF0(a7, &v48, &v47);
  v23 = v48;
  v24 = v47;
  v25 = v24;
  if (v22)
  {
    v46 = v24;
    v26 = [(MAKVStoreManager *)self getStore:v14 groupPath:v15 profile:v23 attributes:v21 isCreateOp:0 isBaseStore:0 isNew:&v49 storeChain:0 error:&v46];
    v27 = v46;

    if (([v26 cloudSync] & 1) == 0)
    {
      if (os_log_type_enabled(off_100127CF8, OS_LOG_TYPE_ERROR))
      {
        sub_10002E8E8();
      }

      v32 = 0;
      goto LABEL_15;
    }

    v28 = [v26 recordHandleField];
    v51[0] = v28;
    v51[1] = kMAKVCol_stagingFrom;
    v52[0] = v13;
    v52[1] = &off_10011DC88;
    v29 = [NSDictionary dictionaryWithObjects:v52 forKeys:v51 count:2];
    v45 = v27;
    v30 = [v26 updateFor:v29 value:v43 attributes:&off_10011E4B8 error:&v45];
    v42 = v45;

    if (v30)
    {
      notificationEngine = self->_notificationEngine;
      v50 = v14;
      v32 = 1;
      v33 = [NSArray arrayWithObjects:&v50 count:1];
      v34 = [v26 profile];
      [(MANotificationEngine *)notificationEngine notifyKVStoreEventWith:0x1000000 kvStores:v33 profile:v34 sharingGroup:v15];

      [(MANotificationEngine *)self->_notificationEngine postNotificationWheniCloudSyncedUp];
      v35 = off_100127CF8;
      if (os_log_type_enabled(off_100127CF8, OS_LOG_TYPE_DEFAULT))
      {
        v36 = v35;
        v37 = [v26 name];
        *buf = 138412546;
        v56 = v44;
        v57 = 2112;
        v58 = v37;
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "updated record %@ for cloud sync up, store: %@", buf, 0x16u);

        v32 = 1;
      }
    }

    else
    {
      v38 = off_100127CF8;
      if (os_log_type_enabled(off_100127CF8, OS_LOG_TYPE_ERROR))
      {
        v40 = v38;
        v41 = [v26 name];
        *buf = 138412802;
        v56 = v44;
        v57 = 2112;
        v58 = v41;
        v59 = 2112;
        v60 = v42;
        _os_log_error_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "failed to update record %@ for cloud sync up, store: %@, error: %@", buf, 0x20u);

        v32 = 0;
        v27 = v42;
        goto LABEL_15;
      }

      v32 = 0;
    }

    v27 = v42;
LABEL_15:

    v25 = v27;
    goto LABEL_16;
  }

  v32 = 0;
LABEL_16:

  return v32;
}

- (BOOL)didSyncUpKVSDataDelete:(id)a3 recordHandle:(id)a4 assetType:(unint64_t)a5 storeName:(id)a6 storeGroup:(id)a7 profileType:(unint64_t)a8
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v16 = off_100127CF8;
  if (os_log_type_enabled(off_100127CF8, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138413314;
    v19 = v12;
    v20 = 2112;
    v21 = v13;
    v22 = 2112;
    v23 = v14;
    v24 = 2112;
    v25 = v15;
    v26 = 2048;
    v27 = a8;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "KVSData delete synced up to cloud, recordName:%@ recordHandle:%@ store:%@ group:%@ profileType:%lu", &v18, 0x34u);
  }

  return 1;
}

- (void)failedToDeleteKVSData:(id)a3 assetType:(unint64_t)a4 storeName:(id)a5 storeGroup:(id)a6 profileType:(unint64_t)a7 error:(id)a8
{
  v9 = a3;
  v10 = a8;
  if (os_log_type_enabled(off_100127CF8, OS_LOG_TYPE_ERROR))
  {
    sub_10002E9B8();
  }
}

- (void)failedToDeleteKVSZone:(id)a3 error:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (os_log_type_enabled(off_100127CF8, OS_LOG_TYPE_ERROR))
  {
    sub_10002EA20();
  }
}

- (void)failedToUploadKVSData:(id)a3 assetType:(unint64_t)a4 storeName:(id)a5 storeGroup:(id)a6 profileType:(unint64_t)a7 data:(id)a8 error:(id)a9
{
  v35 = a3;
  v34 = a5;
  v14 = a6;
  v33 = a8;
  v15 = a9;
  if (os_log_type_enabled(off_100127CF8, OS_LOG_TYPE_ERROR))
  {
    sub_10002EA88();
  }

  if ([v15 code] == -20602 && os_log_type_enabled(off_100127CF8, OS_LOG_TYPE_ERROR))
  {
    sub_10002EAF0();
  }

  v40 = 0;
  v49 = kMAGroupKey;
  v50 = v14;
  v16 = [NSDictionary dictionaryWithObjects:&v50 forKeys:&v49 count:1];
  v38 = 0;
  v39 = 0;
  v17 = sub_10002BBF0(a7, &v39, &v38);
  v18 = v39;
  v19 = v38;
  v20 = v19;
  v21 = v34;
  if (v17)
  {
    v37 = v19;
    v22 = [(MAKVStoreManager *)self getStore:v34 groupPath:v14 profile:v18 attributes:v16 isCreateOp:0 isBaseStore:0 isNew:&v40 storeChain:0 error:&v37];
    v23 = v37;

    if (([v22 cloudSync] & 1) == 0)
    {
      if (os_log_type_enabled(off_100127CF8, OS_LOG_TYPE_ERROR))
      {
        sub_10002E8E8();
      }

      goto LABEL_16;
    }

    v24 = [v22 recordHandleField];
    v47[0] = v24;
    v47[1] = kMAKVCol_stagingFrom;
    v48[0] = v35;
    v48[1] = &off_10011DC88;
    v25 = [NSDictionary dictionaryWithObjects:v48 forKeys:v47 count:2];
    v36 = v23;
    v26 = [v22 updateFor:v25 value:v33 attributes:&off_10011E4B8 error:&v36];
    v32 = v36;

    v27 = off_100127CF8;
    if (v26)
    {
      if (os_log_type_enabled(off_100127CF8, OS_LOG_TYPE_INFO))
      {
        v28 = v27;
        v29 = [v22 name];
        *buf = 138412546;
        v42 = v35;
        v43 = 2112;
        v44 = v29;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "updated record %@ state for cloud sync up error, store: %@", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(off_100127CF8, OS_LOG_TYPE_ERROR))
    {
      v30 = v27;
      v31 = [v22 name];
      *buf = 138412802;
      v42 = v35;
      v43 = 2112;
      v44 = v31;
      v45 = 2112;
      v23 = v32;
      v46 = v32;
      _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "failed to update record %@ state for cloud sync up error, store: %@, error: %@", buf, 0x20u);

      goto LABEL_15;
    }

    v23 = v32;
LABEL_15:
    v21 = v34;
LABEL_16:

    v20 = v23;
  }
}

- (BOOL)resetKVCloudStateWithError:(id *)a3
{
  v12 = 0;
  v5 = [(MAKVStoreManager *)self resetKVCloudStateWithProfile:kMASDDefaultLocalUser error:&v12];
  v6 = v12;
  v11 = 0;
  v7 = [(MAKVStoreManager *)self resetKVCloudStateWithProfile:0 error:&v11];
  v8 = v11;
  v9 = v8;
  if (v6)
  {
    v8 = v6;
  }

  *a3 = v8;

  return v5 & v7;
}

- (BOOL)resetKVCloudStateWithProfile:(id)a3 error:(id *)a4
{
  v6 = a3;
  v59 = 0;
  v7 = +[NSMutableDictionary dictionary];
  v8 = kMACoreRXUserGroup;
  [v7 setObject:kMACoreRXUserGroup forKeyedSubscript:kMAGroupKey];
  v9 = kMARXDataSharingStore;
  v10 = [(MAKVStoreManager *)self getStore:kMARXDataSharingStore groupPath:v8 profile:v6 attributes:v7 isCreateOp:0 isBaseStore:0 isNew:&v59 storeChain:0 error:a4];
  v11 = v10;
  if (*a4)
  {
    if (os_log_type_enabled(off_100127CF8, OS_LOG_TYPE_ERROR))
    {
      sub_10002EB60(v9, a4);
    }

    v12 = 0;
  }

  else if (v10)
  {
    v46 = kMAKVCol_stagingFrom;
    v76 = kMAKVCol_stagingFrom;
    v77 = &off_10011DC88;
    v13 = [NSDictionary dictionaryWithObjects:&v77 forKeys:&v76 count:1];
    v74 = kMAKVStoreDesiredKeys;
    v50 = kMAKVCol_RXUUID;
    v51 = kMAKVCol_ckSyncState;
    v73[0] = kMAKVCol_ckSyncState;
    v73[1] = kMAKVCol_RXUUID;
    v45 = kMAKVCol_recordName;
    v73[2] = kMAKVCol_recordName;
    v14 = [NSArray arrayWithObjects:v73 count:3];
    v75 = v14;
    v15 = [NSDictionary dictionaryWithObjects:&v75 forKeys:&v74 count:1];
    v58 = 0;
    [v11 queryFor:v13 attributes:v15 records:&v58 error:a4];
    v16 = v58;

    v12 = *a4 == 0;
    if (*a4)
    {
      v17 = v16;
      if (os_log_type_enabled(off_100127CF8, OS_LOG_TYPE_ERROR))
      {
        sub_10002EBD8(v9, a4);
      }
    }

    else
    {
      v42 = self;
      v47 = a4;
      v48 = v11;
      v40 = v7;
      v41 = v6;
      v18 = [MAKVStore queryOutputToArrayOfDictionaries:v16 error:a4];
      v17 = v16;
      if (os_log_type_enabled(off_100127CF8, OS_LOG_TYPE_DEBUG))
      {
        sub_10002EC50();
      }

      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      obj = v18;
      v19 = v46;
      v21 = v50;
      v20 = v51;
      v49 = [obj countByEnumeratingWithState:&v54 objects:v72 count:16];
      if (v49)
      {
        v44 = *v55;
        do
        {
          v22 = 0;
          do
          {
            v23 = v17;
            if (*v55 != v44)
            {
              objc_enumerationMutation(obj);
            }

            v24 = *(*(&v54 + 1) + 8 * v22);
            v25 = [v24 objectForKeyedSubscript:v20];
            v26 = [v25 intValue];
            v27 = [v24 objectForKeyedSubscript:v21];
            v28 = [v24 objectForKeyedSubscript:v45];
            v29 = off_100127CF8;
            if (os_log_type_enabled(off_100127CF8, OS_LOG_TYPE_INFO))
            {
              *buf = 138412802;
              v61 = v27;
              v62 = 2112;
              v63 = v25;
              v64 = 2048;
              v65 = v26 & 0xFFFFFFFFFFFFE1DFLL;
              _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "updating record %@ from %@ to %ld", buf, 0x20u);
            }

            v70[0] = v50;
            v70[1] = v19;
            v71[0] = v27;
            v71[1] = &off_10011DC88;
            v30 = [NSDictionary dictionaryWithObjects:v71 forKeys:v70 count:2];
            v68 = v51;
            v31 = [NSNumber numberWithInteger:v26 & 0xFFFFFFFFFFFFE1DFLL];
            v69 = v31;
            v32 = [NSDictionary dictionaryWithObjects:&v69 forKeys:&v68 count:1];
            v33 = [v48 updateFor:v30 value:v32 attributes:&off_10011E4B8 error:v47];

            if (v33)
            {
              v17 = v23;
              if (v28)
              {
                maServer = v42->_maServer;
                v52[0] = _NSConcreteStackBlock;
                v52[1] = 3221225472;
                v52[2] = sub_10002D248;
                v52[3] = &unk_100116118;
                v53 = v28;
                [(MAServer *)maServer localKVSCleanupWithRecordName:v53 completionHandler:v52];
              }
            }

            else
            {
              v35 = off_100127CF8;
              v17 = v23;
              if (os_log_type_enabled(off_100127CF8, OS_LOG_TYPE_ERROR))
              {
                v36 = v35;
                v37 = [v48 name];
                v38 = *v47;
                *buf = 138413058;
                v61 = v27;
                v62 = 2048;
                v63 = v26;
                v64 = 2112;
                v65 = v37;
                v66 = 2112;
                v67 = v38;
                _os_log_error_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "failed to update record %@ for setting sync state %ld, store: %@, error: %@", buf, 0x2Au);
              }
            }

            v22 = v22 + 1;
            v21 = v50;
            v19 = v46;
            v20 = v51;
          }

          while (v49 != v22);
          v49 = [obj countByEnumeratingWithState:&v54 objects:v72 count:16];
        }

        while (v49);
      }

      v7 = v40;
      v6 = v41;
      v11 = v48;
      v12 = 1;
    }
  }

  else
  {
    if (os_log_type_enabled(off_100127CF8, OS_LOG_TYPE_ERROR))
    {
      sub_10002ECC4();
    }

    createManagedAssetError();
    *a4 = v12 = 0;
  }

  return v12;
}

- (BOOL)dedupeCoreRX:(id)a3 store:(id)a4 attributes:(id)a5 error:(id *)a6
{
  v82 = a3;
  v76 = a4;
  v75 = a5;
  v8 = off_100127CF8;
  if (os_log_type_enabled(off_100127CF8, OS_LOG_TYPE_INFO))
  {
    v9 = v8;
    v10 = MACoreRxDataSharingRecordDescription(v82);
    *buf = 138412802;
    *&buf[4] = v10;
    *&buf[12] = 2112;
    *&buf[14] = v76;
    *&buf[22] = 2112;
    v102 = v75;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "dedupe core prescription record %@ store %@ attributes %@", buf, 0x20u);
  }

  v72 = +[NSMutableDictionary dictionary];
  v81 = objc_alloc_init(NSDateFormatter);
  [v81 setDateFormat:@"yyyy-MM-dd HH:mm:ss.SSSS"];
  v11 = [NSLocale localeWithLocaleIdentifier:@"en_US_POSIX"];
  [v81 setLocale:v11];

  v85 = kMAKVCol_RXUUID;
  v78 = [v82 objectForKeyedSubscript:?];
  if (!v78)
  {
    *a6 = createManagedAssetError();
    if (os_log_type_enabled(off_100127CF8, OS_LOG_TYPE_ERROR))
    {
      sub_10002EE94(a6);
    }

    v44 = 0;
    goto LABEL_68;
  }

  [v72 setObject:v78 forKeyedSubscript:v85];
  v71 = [v75 mutableCopy];
  v68 = kMAKVStoreOptionsKey;
  [v71 setObject:&off_10011DC70 forKeyedSubscript:?];
  v94 = 0;
  v12 = [v76 queryFor:v72 attributes:v71 records:&v94 error:a6];
  v13 = v94;
  v70 = v13;
  if ((v12 & 1) == 0)
  {
    if (os_log_type_enabled(off_100127CF8, OS_LOG_TYPE_ERROR))
    {
      sub_10002EDAC(a6);
    }

    v44 = 0;
    goto LABEL_67;
  }

  v14 = [MAKVStore queryOutputToArrayOfDictionaries:v13 error:a6];
  v15 = off_100127CF8;
  if (os_log_type_enabled(off_100127CF8, OS_LOG_TYPE_INFO))
  {
    v16 = v15;
    v17 = MACoreRxDataSharingRecordsDescription(v14);
    *buf = 138413058;
    *&buf[4] = kMARXDataSharingStore;
    *&buf[12] = 2112;
    *&buf[14] = v72;
    *&buf[22] = 2112;
    v102 = v71;
    v103 = 2112;
    v104 = v17;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "query for existing records in store:%@ keys:%@, attributes:%@ with results =%@", buf, 0x2Au);
  }

  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  obj = v14;
  v18 = [obj countByEnumeratingWithState:&v90 objects:v100 count:16];
  if (!v18)
  {

    goto LABEL_50;
  }

  v74 = 1;
  v83 = *v91;
  v84 = kMARxUserCol_accPayload;
  v73 = kMARXDataSharingStore;
  v79 = kMAKVCol_stagingFrom;
  do
  {
    for (i = 0; i != v18; i = i + 1)
    {
      if (*v91 != v83)
      {
        objc_enumerationMutation(obj);
      }

      v20 = *(*(&v90 + 1) + 8 * i);
      v21 = [v20 objectForKeyedSubscript:v85];
      if (v21)
      {
        v22 = [v20 objectForKeyedSubscript:v84];
        if (!v22)
        {
          goto LABEL_17;
        }

        v23 = [v82 objectForKeyedSubscript:v84];
        if (v23)
        {

          goto LABEL_17;
        }

        v24 = [@"00000000-0000-0000-0000-000000000000" isEqual:v78];

        if (v24)
        {
LABEL_17:
          v25 = [v20 objectForKeyedSubscript:@"enrollmentTime"];
          v26 = [v82 objectForKeyedSubscript:@"enrollmentTime"];
          v27 = v26;
          if (v25)
          {
            v28 = v26 == 0;
          }

          else
          {
            v28 = 1;
          }

          if (v28)
          {
            v30 = createManagedAssetError();
            v29 = off_100127CF8;
            if (os_log_type_enabled(off_100127CF8, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412802;
              *&buf[4] = v73;
              *&buf[12] = 2112;
              *&buf[14] = v20;
              *&buf[22] = 2112;
              v102 = v30;
              _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "No timestamp (enrollmentTime) found for store %@, record %@, error:=%@", buf, 0x20u);
            }
          }

          else
          {
            v30 = [v81 dateFromString:v25];
            [v30 timeIntervalSince1970];
            v32 = v31;
            v33 = [v81 dateFromString:v27];
            [v33 timeIntervalSince1970];
            if (v34 >= v32)
            {
              v36 = +[NSMutableDictionary dictionary];
              [v36 setObject:v21 forKeyedSubscript:v85];
              v37 = [v20 objectForKeyedSubscript:v79];
              [v36 setObject:v37 forKeyedSubscript:v79];

              v38 = [v76 deleteFor:v36 attributes:v75 error:a6];
              v39 = off_100127CF8;
              if (v38)
              {
                if (os_log_type_enabled(off_100127CF8, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412290;
                  *&buf[4] = v21;
                  _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_INFO, "deleted existing record rxuuid %@ and will put new record", buf, 0xCu);
                }
              }

              else if (os_log_type_enabled(off_100127CF8, OS_LOG_TYPE_ERROR))
              {
                v43 = *a6;
                *buf = 138412802;
                *&buf[4] = v73;
                *&buf[12] = 2112;
                *&buf[14] = v20;
                *&buf[22] = 2112;
                v102 = v43;
                _os_log_error_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "Error while trying to delete data in store %@, record %@, error:=%@", buf, 0x20u);
              }
            }

            else
            {
              v35 = off_100127CF8;
              if (os_log_type_enabled(off_100127CF8, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                *&buf[4] = v20;
                _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, "will not put new record and will keep existing record %@", buf, 0xCu);
              }

              v74 = 0;
            }
          }
        }

        else
        {
          v25 = createManagedAssetError();
          v40 = off_100127CF8;
          if (os_log_type_enabled(off_100127CF8, OS_LOG_TYPE_ERROR))
          {
            v41 = v40;
            v42 = MACoreRxDataSharingRecordDescription(v20);
            *buf = 138412802;
            *&buf[4] = v73;
            *&buf[12] = 2112;
            *&buf[14] = v42;
            *&buf[22] = 2112;
            v102 = v25;
            _os_log_error_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "Error deduping new record, store %@, record %@, error:=%@", buf, 0x20u);
          }
        }
      }
    }

    v18 = [obj countByEnumeratingWithState:&v90 objects:v100 count:16];
  }

  while (v18);

  if ((v74 & 1) == 0)
  {
LABEL_64:
    v44 = 1;
    goto LABEL_66;
  }

LABEL_50:
  v45 = [v82 mutableCopy];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v102 = 0;
  v46 = [v75 objectForKeyedSubscript:v68];
  v47 = [v46 intValue];
  [v45 setObject:&off_10011DC88 forKeyedSubscript:kMAKVCol_stagingFrom];
  *(*&buf[8] + 24) = 0x2000;
  v48 = [v76 putDictionay:v45 attributes:v75 error:a6];
  v49 = off_100127CF8;
  v50 = v49;
  if (v48)
  {
    if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
    {
      v51 = [v76 name];
      *v96 = 138412546;
      v97 = v51;
      v98 = 2112;
      v99 = v75;
      _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_INFO, "put new record for store:%@, attributes:%@", v96, 0x16u);
    }

    notificationEngine = self->_notificationEngine;
    v53 = [v76 name];
    v95 = v53;
    v54 = [NSArray arrayWithObjects:&v95 count:1];
    v55 = [v76 profile];
    v56 = [v76 group];
    [(MANotificationEngine *)notificationEngine notifyKVStoreEventWith:0x8000 kvStores:v54 profile:v55 sharingGroup:v56];

    if ((v47 & 0x80) != 0)
    {
      v57 = [v76 profile];
      v58 = v57 == 0;

      if (v58)
      {
        v61 = 3;
      }

      else
      {
        v59 = [v76 profile];
        v60 = [v59 isEqualToString:kMASDDefaultLocalUser];

        if (v60)
        {
          v61 = -1;
        }

        else
        {
          v61 = -2;
        }
      }

      maServer = self->_maServer;
      v64 = [v76 assetType];
      v65 = [v76 name];
      v66 = [v76 group];
      v86[0] = _NSConcreteStackBlock;
      v86[1] = 3221225472;
      v86[2] = sub_10002DE1C;
      v86[3] = &unk_100116380;
      v89 = buf;
      v87 = v76;
      v88 = self;
      [(MAServer *)maServer saveKVSDataToCloudWithRecordHandle:v78 assetType:v64 storeName:v65 storeGroup:v66 profileType:v61 data:v82 options:0 completionHandler:v86];

      v50 = v87;
      goto LABEL_62;
    }
  }

  else
  {
    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      v62 = [v76 name];
      sub_10002EE34(v62, v45, v96, v50);
    }

LABEL_62:
  }

  _Block_object_dispose(buf, 8);
  if (v48)
  {
    goto LABEL_64;
  }

  v44 = 0;
LABEL_66:

LABEL_67:
LABEL_68:

  return v44;
}

- (void)checkStoreForUploadWithOption:(unint64_t)a3 completionHandler:(id)a4
{
  v6 = kMASDDefaultLocalUser;
  v7 = a4;
  [(MAKVStoreManager *)self checkStoreForUploadWithOption:a3 profile:v6 completionHandler:v7];
  [(MAKVStoreManager *)self checkStoreForUploadWithOption:a3 profile:0 completionHandler:v7];
}

- (void)checkStoreForUploadWithOption:(unint64_t)a3 profile:(id)a4 completionHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  v62 = 0;
  v10 = +[NSMutableDictionary dictionary];
  v11 = kMACoreRXUserGroup;
  [v10 setObject:kMACoreRXUserGroup forKeyedSubscript:kMAGroupKey];
  v61 = 0;
  v46 = self;
  v12 = [(MAKVStoreManager *)self getStore:kMARXDataSharingStore groupPath:v11 profile:v8 attributes:v10 isCreateOp:0 isBaseStore:0 isNew:&v62 storeChain:0 error:&v61];
  v13 = v61;
  v14 = v13;
  v47 = v12;
  if (!v12)
  {
    if (os_log_type_enabled(off_100127CF8, OS_LOG_TYPE_ERROR))
    {
      sub_10002ECC4();
    }

    v15 = createManagedAssetError();

    v9[2](v9, v15);
    v14 = v15;
    goto LABEL_36;
  }

  if (v13)
  {
    if (os_log_type_enabled(off_100127CF8, OS_LOG_TYPE_ERROR))
    {
      sub_10002EFF8();
    }

    v9[2](v9, v14);
    goto LABEL_36;
  }

  v16 = a3 == 3;
  v68 = kMAKVCol_stagingFrom;
  v69 = &off_10011DC88;
  v17 = [NSDictionary dictionaryWithObjects:&v69 forKeys:&v68 count:1];
  v59 = 0;
  v60 = 0;
  [v12 queryFor:v17 attributes:0 records:&v60 error:&v59];
  v18 = v60;
  v14 = v59;

  if (!v14)
  {
    v44 = v16;
    v45 = v9;
    v41 = v10;
    v42 = v8;
    v58 = 0;
    v39 = v18;
    v19 = [MAKVStore queryOutputToArrayOfDictionaries:v18 error:&v58];
    v40 = v58;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    obj = v19;
    v51 = [obj countByEnumeratingWithState:&v54 objects:v67 count:16];
    if (!v51)
    {
      goto LABEL_34;
    }

    v20 = *v55;
    v21 = kMAKVCol_recordName;
    v49 = kMAKVCol_ckSyncState;
    v50 = kMAKVCol_RXUUID;
    if (v8)
    {
      v22 = -1;
    }

    else
    {
      v22 = 3;
    }

    v43 = v22;
    v23 = &selRef_queryInUseStatusWithAuditToken_completion_;
    while (1)
    {
      for (i = 0; i != v51; i = i + 1)
      {
        if (*v55 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v25 = *(*(&v54 + 1) + 8 * i);
        v26 = v23[415];
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          v27 = v26;
          v28 = MACoreRxDataSharingRecordDescription(v25);
          *buf = 138412290;
          v64 = v28;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "existingRecord = %@", buf, 0xCu);
        }

        v29 = [v25 objectForKeyedSubscript:v21];

        if (!v29)
        {
          goto LABEL_31;
        }

        v30 = [v25 objectForKeyedSubscript:v49];
        if (v30)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && ([v30 unsignedIntegerValue] & 0x6A20) == 0)
          {

LABEL_31:
            maServer = v46->_maServer;
            v35 = [v25 objectForKeyedSubscript:v50];
            v36 = [v47 assetType];
            v37 = [v47 name];
            v38 = [v47 group];
            v52[0] = _NSConcreteStackBlock;
            v52[1] = 3221225472;
            v52[2] = sub_10002E678;
            v52[3] = &unk_1001163A8;
            v52[4] = v25;
            v53 = v45;
            [(MAServer *)maServer saveKVSDataToCloudWithRecordHandle:v35 assetType:v36 storeName:v37 storeGroup:v38 profileType:v43 data:v25 options:v44 completionHandler:v52];

            v23 = &selRef_queryInUseStatusWithAuditToken_completion_;
            continue;
          }
        }

        v31 = v23[415];
        if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          v32 = v31;
          v33 = [v25 objectForKeyedSubscript:v50];
          *buf = 138412546;
          v64 = v33;
          v65 = 2112;
          v66 = v30;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "Skip record: rxUUID: %@ syncState: %@", buf, 0x16u);
        }
      }

      v51 = [obj countByEnumeratingWithState:&v54 objects:v67 count:16];
      if (!v51)
      {
LABEL_34:

        v10 = v41;
        v8 = v42;
        v9 = v45;
        v18 = v39;
        v14 = v40;
        goto LABEL_35;
      }
    }
  }

  if (os_log_type_enabled(off_100127CF8, OS_LOG_TYPE_ERROR))
  {
    sub_10002F060();
  }

  v9[2](v9, v14);
LABEL_35:

LABEL_36:
}

@end