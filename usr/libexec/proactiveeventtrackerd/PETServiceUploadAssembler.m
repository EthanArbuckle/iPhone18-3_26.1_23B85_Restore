@interface PETServiceUploadAssembler
+ (id)loadPET1Config;
+ (id)loadPETConfig;
- (BOOL)_canLog:(id)a3 messageGroup:(id)a4 isInternal:(BOOL)a5;
- (BOOL)_checkMessageSampling:(id)a3;
- (BOOL)_checkSampling:(id)a3;
- (PETServiceUploadAssembler)initWithRootDir:(id)a3;
- (id)assembleAggregatedUploadWithTracker:(id)a3;
- (id)assembleUnaggregatedUploadWithTracker:(id)a3 messageGroup:(id)a4;
@end

@implementation PETServiceUploadAssembler

- (BOOL)_checkMessageSampling:(id)a3
{
  v4 = a3;
  v5 = [(PETServiceUploadAssembler *)self petConfig];
  [v5 messageSamplingForMessageName:v4 isSeed:0];
  v7 = v6;

  result = 0;
  if (v7 > 0.0)
  {
    return v7 >= 1.0 || v7 * 4294967300.0 > arc4random();
  }

  return result;
}

- (BOOL)_checkSampling:(id)a3
{
  v4 = a3;
  v5 = [(PETServiceUploadAssembler *)self petConfig];
  [v5 deviceSamplingForMessageName:v4 isSeed:0];
  v7 = v6;

  v8 = 0;
  if (v7 > 0.0)
  {
    if (v7 >= 1.0)
    {
      v8 = 1;
    }

    else
    {
      v9 = [(PETServiceUploadAssembler *)self petConfig];
      v10 = [v9 groupForMessageName:v4];

      v11 = [(PETServiceUploadAssembler *)self deviceId];
      v12 = [(PETServiceUploadAssembler *)self petConfig];
      v13 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@%@%lu", v11, v10, [v12 version]);

      v14 = [v13 UTF8String];
      v15 = strlen(v14);
      CC_MD5(v14, v15, md);
      LODWORD(v16) = *md;
      v8 = v7 * 4294967300.0 > v16;
    }
  }

  return v8;
}

- (BOOL)_canLog:(id)a3 messageGroup:(id)a4 isInternal:(BOOL)a5
{
  v8 = a4;
  v9 = [a3 name];
  v10 = [(PETServiceUploadAssembler *)self petConfig];
  v11 = [v10 whitelistForMessageName:v9];

  if (v11 && (a5 || [(PETServiceUploadAssembler *)self _checkSampling:v9]))
  {
    v12 = +[PETMetadata getCountryCode];
    v15 = 1;
    if ([v12 isEqualToString:@"CN"])
    {
      v13 = [(PETServiceUploadAssembler *)self petConfig];
      v14 = [v13 isChinaEnabledForMessageName:v9 messageGroup:v8];

      if (!v14)
      {
        v15 = 0;
      }
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)assembleUnaggregatedUploadWithTracker:(id)a3 messageGroup:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_new();
  v9 = objc_opt_new();
  [v8 setMetadata:v9];

  v10 = [v8 metadata];
  v11 = [(PETServiceUploadAssembler *)self petConfig];
  [v10 setMetadataWithConfigVersion:{objc_msgSend(v11, "version")}];

  v12 = [(PETServiceUploadAssembler *)self isConfigEnabled];
  v13 = [v8 metadata];
  [v13 setIsConfigEnabled:v12];

  v14 = [v8 metadata];
  [v14 setMessageGroup:v7];

  [v8 setIsCompressed:1];
  if ([v6 isTesting])
  {
    v15 = 0;
  }

  else
  {
    v15 = +[_PASDeviceInfo isInternalBuild];
  }

  v43 = 0;
  v44 = &v43;
  v45 = 0x2020000000;
  v46 = 0;
  v33 = _NSConcreteStackBlock;
  v34 = 3221225472;
  v35 = sub_100004ED0;
  v36 = &unk_10000C598;
  v16 = objc_opt_new();
  v37 = v16;
  v38 = self;
  v17 = v7;
  v39 = v17;
  v42 = v15;
  v18 = v8;
  v40 = v18;
  v41 = &v43;
  [v6 enumerateMessagesWithBlock:&v33 messageGroup:v17 clearStore:1];
  [v16 close];
  if ((v44[3] & 1) == 0)
  {
    goto LABEL_11;
  }

  v19 = [v16 compressedMessages];
  v20 = v19 == 0;

  if (v20)
  {
    v53 = @"group";
    v54 = v17;
    v29 = [NSDictionary dictionaryWithObjects:&v54 forKeys:&v53 count:1];
    AnalyticsSendEvent();

LABEL_11:
    v30 = 0;
    goto LABEL_12;
  }

  v21 = [v16 compressedMessages];
  v22 = [v21 length] > 0x1F8000;

  if (v22)
  {
    v23 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v24 = [v16 compressedMessages];
      v25 = [v24 length];
      *buf = 134218240;
      v50 = v25;
      v51 = 2048;
      v52 = 2064384;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Dropping aggregated messages (size %lu) due to exceeding MAX_UPLOAD_BYTES (%lu)", buf, 0x16u);
    }

    v47[0] = @"size";
    v26 = [v16 compressedMessages];
    v27 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v26 length]);
    v47[1] = @"group";
    v48[0] = v27;
    v48[1] = v17;
    v28 = [NSDictionary dictionaryWithObjects:v48 forKeys:v47 count:2];
    AnalyticsSendEvent();

    goto LABEL_11;
  }

  v32 = [v16 compressedMessages];
  [v18 setCompressedMessages:v32];

  v30 = v18;
LABEL_12:

  _Block_object_dispose(&v43, 8);

  return v30;
}

- (id)assembleAggregatedUploadWithTracker:(id)a3
{
  v4 = a3;
  v5 = [v4 aggregateState];
  v6 = [v5 checkIntegrity];

  if (v6)
  {
    v7 = objc_opt_new();
    v8 = objc_opt_new();
    [v7 setMetadata:v8];

    v9 = [v7 metadata];
    v10 = [(PETServiceUploadAssembler *)self petConfig];
    [v9 setMetadataWithConfigVersion:{objc_msgSend(v10, "version")}];

    v11 = [(PETServiceUploadAssembler *)self isConfigEnabled];
    v12 = [v7 metadata];
    [v12 setIsConfigEnabled:v11];

    v13 = [v7 metadata];
    [v13 setMessageGroup:@"_aggregated"];

    [v7 setIsCompressed:1];
    if ([v4 isTesting])
    {
      v14 = 0;
    }

    else
    {
      v14 = +[_PASDeviceInfo isInternalBuild];
    }

    *v37 = 0;
    v38 = v37;
    v39 = 0x2020000000;
    v40 = 0;
    v29 = _NSConcreteStackBlock;
    v30 = 3221225472;
    v31 = sub_1000055D0;
    v32 = &unk_10000C570;
    v16 = objc_opt_new();
    v33 = v16;
    v34 = self;
    v36 = v14;
    v35 = v37;
    [v4 enumerateAggregatedMessagesWithBlock:&v29 clearStore:1];
    [v16 close];
    if (v38[24])
    {
      v17 = [v16 compressedMessages];
      v18 = v17 == 0;

      if (v18)
      {
        AnalyticsSendEvent();
      }

      else
      {
        v19 = [v16 compressedMessages];
        v20 = [v19 length] > 0x1F8000;

        if (!v20)
        {
          v28 = [v16 compressedMessages];
          [v7 setCompressedMessages:v28];

          v15 = v7;
          goto LABEL_16;
        }

        v21 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          v22 = [v16 compressedMessages];
          v23 = [v22 length];
          *buf = 134218240;
          v44 = v23;
          v45 = 2048;
          v46 = 2064384;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Dropping aggregated messages (size %lu) due to exceeding MAX_UPLOAD_BYTES (%lu)", buf, 0x16u);
        }

        v41[0] = @"size";
        v24 = [v16 compressedMessages];
        v25 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v24 length]);
        v41[1] = @"group";
        v42[0] = v25;
        v42[1] = @"_aggregated";
        v26 = [NSDictionary dictionaryWithObjects:v42 forKeys:v41 count:2];
        AnalyticsSendEvent();
      }
    }

    v15 = 0;
LABEL_16:

    _Block_object_dispose(v37, 8);
    goto LABEL_17;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    *v37 = 0;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "The aggregate state is corrupt. Resetting the state store", v37, 2u);
  }

  AnalyticsSendEvent();
  v7 = [v4 aggregateState];
  [v7 reset];
  v15 = 0;
LABEL_17:

  return v15;
}

- (PETServiceUploadAssembler)initWithRootDir:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = PETServiceUploadAssembler;
  v5 = [(PETServiceUploadAssembler *)&v18 init];
  if (!v5)
  {
    goto LABEL_16;
  }

  v6 = +[PETServiceUploadAssembler loadPETConfig];
  [(PETServiceUploadAssembler *)v5 setPetConfig:v6];

  v7 = [(PETServiceUploadAssembler *)v5 petConfig];

  if (!v7)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      *v17 = 0;
      _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "Failed to load PET configuration", v17, 2u);
    }

    goto LABEL_11;
  }

  v8 = +[PETServiceUploadAssembler loadPET1Config];
  [(PETServiceUploadAssembler *)v5 setPet1Config:v8];

  v9 = [(PETServiceUploadAssembler *)v5 pet1Config];

  if (!v9)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      *v17 = 0;
      _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "Failed to load PET 1.0 configuration", v17, 2u);
    }

LABEL_11:
    AnalyticsSendEvent();
    goto LABEL_12;
  }

  if (+[_PASDeviceInfo isInternalBuild])
  {
    v10 = arc4random() < 0x28F5C29;
  }

  else
  {
    v10 = 1;
  }

  [(PETServiceUploadAssembler *)v5 setIsConfigEnabled:v10];
  v12 = [v4 stringByAppendingPathComponent:@"device_id"];
  v13 = [[_PASDeviceIdentifier alloc] initWithBasePath:v12];
  v14 = [v13 UUID];
  [(PETServiceUploadAssembler *)v5 setDeviceId:v14];

  v15 = [(PETServiceUploadAssembler *)v5 deviceId];

  if (v15)
  {

LABEL_16:
    v11 = v5;
    goto LABEL_17;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
  {
    *v17 = 0;
    _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "Failed to generate device identifer for sampling", v17, 2u);
  }

  AnalyticsSendEvent();

LABEL_12:
  v11 = 0;
LABEL_17:

  return v11;
}

+ (id)loadPET1Config
{
  v2 = dispatch_queue_create("PETAsset-notifications", 0);
  v3 = [[_PASAsset2 alloc] initWithAssetTypeDescriptorPath:@"/System/Library/AssetTypeDescriptors/com.apple.MobileAsset.AssetTypeDescriptor.ProactiveEventTrackerAssets.plist" defaultBundlePath:0 matchingKeysAndValues:0 notificationQueue:v2 logHandle:&_os_log_default];
  v4 = [v3 filesystemPathForAssetDataRelativePath:@"pet1_config.plist"];
  if (v4)
  {
    v5 = v4;
LABEL_4:
    v7 = [NSDictionary dictionaryWithContentsOfFile:v5];

    goto LABEL_5;
  }

  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [v6 pathForResource:@"pet1_config" ofType:@"plist"];

  if (v5)
  {
    goto LABEL_4;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    *v9 = 0;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Failed to load PET1 config from the bundle", v9, 2u);
  }

  v7 = 0;
LABEL_5:

  return v7;
}

+ (id)loadPETConfig
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 pathForResource:@"pet_config" ofType:@"plist"];

  if (v3)
  {
    v4 = [[PETConfig alloc] initWithFile:v3];
    v5 = dispatch_queue_create("PETAsset-notifications", 0);
    v6 = [[_PASAsset2 alloc] initWithAssetTypeDescriptorPath:@"/System/Library/AssetTypeDescriptors/com.apple.MobileAsset.AssetTypeDescriptor.ProactiveEventTrackerAssets.plist" defaultBundlePath:0 matchingKeysAndValues:0 notificationQueue:v5 logHandle:&_os_log_default];
    v7 = [v6 filesystemPathForAssetDataRelativePath:@"pet_config.plist"];
    if (v7)
    {
      v8 = [[PETConfig alloc] initWithFile:v7];
      v9 = [v4 version];
      if (v9 <= [v8 version])
      {
        v10 = v8;
      }

      else
      {
        v10 = v4;
      }

      v11 = v10;
    }

    else
    {
      v11 = v4;
    }
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *v13 = 0;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Failed to load PET config from the bundle", v13, 2u);
    }

    v11 = 0;
  }

  return v11;
}

@end