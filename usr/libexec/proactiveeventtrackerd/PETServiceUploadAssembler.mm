@interface PETServiceUploadAssembler
+ (id)loadPET1Config;
+ (id)loadPETConfig;
- (BOOL)_canLog:(id)log messageGroup:(id)group isInternal:(BOOL)internal;
- (BOOL)_checkMessageSampling:(id)sampling;
- (BOOL)_checkSampling:(id)sampling;
- (PETServiceUploadAssembler)initWithRootDir:(id)dir;
- (id)assembleAggregatedUploadWithTracker:(id)tracker;
- (id)assembleUnaggregatedUploadWithTracker:(id)tracker messageGroup:(id)group;
@end

@implementation PETServiceUploadAssembler

- (BOOL)_checkMessageSampling:(id)sampling
{
  samplingCopy = sampling;
  petConfig = [(PETServiceUploadAssembler *)self petConfig];
  [petConfig messageSamplingForMessageName:samplingCopy isSeed:0];
  v7 = v6;

  result = 0;
  if (v7 > 0.0)
  {
    return v7 >= 1.0 || v7 * 4294967300.0 > arc4random();
  }

  return result;
}

- (BOOL)_checkSampling:(id)sampling
{
  samplingCopy = sampling;
  petConfig = [(PETServiceUploadAssembler *)self petConfig];
  [petConfig deviceSamplingForMessageName:samplingCopy isSeed:0];
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
      petConfig2 = [(PETServiceUploadAssembler *)self petConfig];
      v10 = [petConfig2 groupForMessageName:samplingCopy];

      deviceId = [(PETServiceUploadAssembler *)self deviceId];
      petConfig3 = [(PETServiceUploadAssembler *)self petConfig];
      v13 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@%@%lu", deviceId, v10, [petConfig3 version]);

      uTF8String = [v13 UTF8String];
      v15 = strlen(uTF8String);
      CC_MD5(uTF8String, v15, md);
      LODWORD(v16) = *md;
      v8 = v7 * 4294967300.0 > v16;
    }
  }

  return v8;
}

- (BOOL)_canLog:(id)log messageGroup:(id)group isInternal:(BOOL)internal
{
  groupCopy = group;
  name = [log name];
  petConfig = [(PETServiceUploadAssembler *)self petConfig];
  v11 = [petConfig whitelistForMessageName:name];

  if (v11 && (internal || [(PETServiceUploadAssembler *)self _checkSampling:name]))
  {
    v12 = +[PETMetadata getCountryCode];
    v15 = 1;
    if ([v12 isEqualToString:@"CN"])
    {
      petConfig2 = [(PETServiceUploadAssembler *)self petConfig];
      v14 = [petConfig2 isChinaEnabledForMessageName:name messageGroup:groupCopy];

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

- (id)assembleUnaggregatedUploadWithTracker:(id)tracker messageGroup:(id)group
{
  trackerCopy = tracker;
  groupCopy = group;
  v8 = objc_opt_new();
  v9 = objc_opt_new();
  [v8 setMetadata:v9];

  metadata = [v8 metadata];
  petConfig = [(PETServiceUploadAssembler *)self petConfig];
  [metadata setMetadataWithConfigVersion:{objc_msgSend(petConfig, "version")}];

  isConfigEnabled = [(PETServiceUploadAssembler *)self isConfigEnabled];
  metadata2 = [v8 metadata];
  [metadata2 setIsConfigEnabled:isConfigEnabled];

  metadata3 = [v8 metadata];
  [metadata3 setMessageGroup:groupCopy];

  [v8 setIsCompressed:1];
  if ([trackerCopy isTesting])
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
  selfCopy = self;
  v17 = groupCopy;
  v39 = v17;
  v42 = v15;
  v18 = v8;
  v40 = v18;
  v41 = &v43;
  [trackerCopy enumerateMessagesWithBlock:&v33 messageGroup:v17 clearStore:1];
  [v16 close];
  if ((v44[3] & 1) == 0)
  {
    goto LABEL_11;
  }

  compressedMessages = [v16 compressedMessages];
  v20 = compressedMessages == 0;

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

  compressedMessages2 = [v16 compressedMessages];
  v22 = [compressedMessages2 length] > 0x1F8000;

  if (v22)
  {
    v23 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      compressedMessages3 = [v16 compressedMessages];
      v25 = [compressedMessages3 length];
      *buf = 134218240;
      v50 = v25;
      v51 = 2048;
      v52 = 2064384;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Dropping aggregated messages (size %lu) due to exceeding MAX_UPLOAD_BYTES (%lu)", buf, 0x16u);
    }

    v47[0] = @"size";
    compressedMessages4 = [v16 compressedMessages];
    v27 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [compressedMessages4 length]);
    v47[1] = @"group";
    v48[0] = v27;
    v48[1] = v17;
    v28 = [NSDictionary dictionaryWithObjects:v48 forKeys:v47 count:2];
    AnalyticsSendEvent();

    goto LABEL_11;
  }

  compressedMessages5 = [v16 compressedMessages];
  [v18 setCompressedMessages:compressedMessages5];

  v30 = v18;
LABEL_12:

  _Block_object_dispose(&v43, 8);

  return v30;
}

- (id)assembleAggregatedUploadWithTracker:(id)tracker
{
  trackerCopy = tracker;
  aggregateState = [trackerCopy aggregateState];
  checkIntegrity = [aggregateState checkIntegrity];

  if (checkIntegrity)
  {
    aggregateState2 = objc_opt_new();
    v8 = objc_opt_new();
    [aggregateState2 setMetadata:v8];

    metadata = [aggregateState2 metadata];
    petConfig = [(PETServiceUploadAssembler *)self petConfig];
    [metadata setMetadataWithConfigVersion:{objc_msgSend(petConfig, "version")}];

    isConfigEnabled = [(PETServiceUploadAssembler *)self isConfigEnabled];
    metadata2 = [aggregateState2 metadata];
    [metadata2 setIsConfigEnabled:isConfigEnabled];

    metadata3 = [aggregateState2 metadata];
    [metadata3 setMessageGroup:@"_aggregated"];

    [aggregateState2 setIsCompressed:1];
    if ([trackerCopy isTesting])
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
    selfCopy = self;
    v36 = v14;
    v35 = v37;
    [trackerCopy enumerateAggregatedMessagesWithBlock:&v29 clearStore:1];
    [v16 close];
    if (v38[24])
    {
      compressedMessages = [v16 compressedMessages];
      v18 = compressedMessages == 0;

      if (v18)
      {
        AnalyticsSendEvent();
      }

      else
      {
        compressedMessages2 = [v16 compressedMessages];
        v20 = [compressedMessages2 length] > 0x1F8000;

        if (!v20)
        {
          compressedMessages3 = [v16 compressedMessages];
          [aggregateState2 setCompressedMessages:compressedMessages3];

          v15 = aggregateState2;
          goto LABEL_16;
        }

        v21 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          compressedMessages4 = [v16 compressedMessages];
          v23 = [compressedMessages4 length];
          *buf = 134218240;
          v44 = v23;
          v45 = 2048;
          v46 = 2064384;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Dropping aggregated messages (size %lu) due to exceeding MAX_UPLOAD_BYTES (%lu)", buf, 0x16u);
        }

        v41[0] = @"size";
        compressedMessages5 = [v16 compressedMessages];
        v25 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [compressedMessages5 length]);
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
  aggregateState2 = [trackerCopy aggregateState];
  [aggregateState2 reset];
  v15 = 0;
LABEL_17:

  return v15;
}

- (PETServiceUploadAssembler)initWithRootDir:(id)dir
{
  dirCopy = dir;
  v18.receiver = self;
  v18.super_class = PETServiceUploadAssembler;
  v5 = [(PETServiceUploadAssembler *)&v18 init];
  if (!v5)
  {
    goto LABEL_16;
  }

  v6 = +[PETServiceUploadAssembler loadPETConfig];
  [(PETServiceUploadAssembler *)v5 setPetConfig:v6];

  petConfig = [(PETServiceUploadAssembler *)v5 petConfig];

  if (!petConfig)
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

  pet1Config = [(PETServiceUploadAssembler *)v5 pet1Config];

  if (!pet1Config)
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
  v12 = [dirCopy stringByAppendingPathComponent:@"device_id"];
  v13 = [[_PASDeviceIdentifier alloc] initWithBasePath:v12];
  uUID = [v13 UUID];
  [(PETServiceUploadAssembler *)v5 setDeviceId:uUID];

  deviceId = [(PETServiceUploadAssembler *)v5 deviceId];

  if (deviceId)
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
      version = [v4 version];
      if (version <= [v8 version])
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