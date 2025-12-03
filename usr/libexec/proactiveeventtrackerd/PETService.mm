@interface PETService
+ (void)clearAllLogs;
+ (void)updateMobileAssetMetadataWithXPCActivity:(id)activity;
- (BOOL)_writeUploadForTransparency:(id)transparency;
- (PETService)init;
- (void)_uploadBatchedDataToPFA:(id)a schema:(id)schema messageGroup:(id)group;
- (void)_uploadGMSDataToPFA:(id)a;
- (void)_uploadToFBFv2WithUpload:(id)upload;
- (void)_uploadToParsecWithUpload:(id)upload;
- (void)_uploadWithUploadPackage:(id)package;
- (void)upload;
@end

@implementation PETService

- (void)_uploadWithUploadPackage:(id)package
{
  packageCopy = package;
  if ((+[_PASDeviceInfo isDNUEnabled]& 1) != 0)
  {
    metadata = [packageCopy metadata];
    messageGroup = [metadata messageGroup];

    if (!messageGroup)
    {
      metadata2 = [packageCopy metadata];
      [metadata2 setMessageGroup:@"null"];
    }

    if ([(PETService *)self _writeUploadForTransparency:packageCopy])
    {
      v8 = +[PETMetadata getCountryCode];
      metadata3 = [packageCopy metadata];
      if ([metadata3 isInternal])
      {
        metadata4 = [packageCopy metadata];
        messageGroup2 = [metadata4 messageGroup];
        v12 = [messageGroup2 isEqualToString:@"com.apple.generativefunctions.instrumentation.UberEvent"];

        if (v12)
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            metadata5 = [packageCopy metadata];
            messageGroup3 = [metadata5 messageGroup];
            v22 = 138412290;
            v23 = messageGroup3;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Found GMS Event Message Group: %@", &v22, 0xCu);
          }

          [(PETService *)self _uploadGMSDataToPFA:packageCopy];
        }
      }

      else
      {
      }

      if ([v8 isEqualToString:@"CN"])
      {
        [(PETService *)self _uploadToFBFv2WithUpload:packageCopy];
LABEL_26:

        goto LABEL_27;
      }

      v18 = +[PETServiceUploadAssembler loadPETConfig];
      if (([v18 shouldUploadToFBFv2] & 1) == 0)
      {
        if (![v18 shouldUploadToFBFv2ForCarryAndSeed])
        {
          goto LABEL_23;
        }

        metadata6 = [packageCopy metadata];
        if ([metadata6 isInternal])
        {
        }

        else
        {
          metadata7 = [packageCopy metadata];
          isSeed = [metadata7 isSeed];

          if (!isSeed)
          {
            goto LABEL_23;
          }
        }
      }

      [(PETService *)self _uploadToFBFv2WithUpload:packageCopy];
LABEL_23:
      if ([v18 shouldUploadToParsec])
      {
        [(PETService *)self _uploadToParsecWithUpload:packageCopy];
      }

      goto LABEL_26;
    }

    v24[0] = @"reason";
    v24[1] = @"group";
    v25[0] = @"write_osa";
    metadata8 = [packageCopy metadata];
    messageGroup4 = [metadata8 messageGroup];
    v25[1] = messageGroup4;
    v17 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:2];
    AnalyticsSendEvent();

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      LOWORD(v22) = 0;
      _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "Failed to write upload data to OSAnalytics for transparency", &v22, 2u);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v22) = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "DNU is disabled. Skip uploading", &v22, 2u);
  }

LABEL_27:
}

- (void)_uploadBatchedDataToPFA:(id)a schema:(id)schema messageGroup:(id)group
{
  aCopy = a;
  schemaCopy = schema;
  groupCopy = group;
  v10 = [FLLogger sharedLoggerWithPersistenceConfiguration:1];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v11 = aCopy;
  v12 = [v11 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v12)
  {
    v14 = v12;
    v15 = *v24;
    *&v13 = 138412290;
    v19 = v13;
    do
    {
      v16 = 0;
      do
      {
        if (*v24 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v23 + 1) + 8 * v16);
        if (objc_opt_respondsToSelector())
        {
          v20[0] = _NSConcreteStackBlock;
          v20[1] = 3221225472;
          v20[2] = sub_100002694;
          v20[3] = &unk_10000C4A8;
          v21 = groupCopy;
          v22 = v17;
          [v10 reportDataPlatformBatchedEvent:v17 forBundleID:@"com.apple.proactive" ofSchema:schemaCopy completion:v20];
          v18 = v21;
        }

        else
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            *buf = v19;
            v30 = groupCopy;
            _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "%@ is failed to upload to PFA backend", buf, 0xCu);
          }

          v27[0] = @"reason";
          v27[1] = @"group";
          v28[0] = @"PFA-backend is not available ";
          v28[1] = groupCopy;
          v18 = [NSDictionary dictionaryWithObjects:v28 forKeys:v27 count:2, v19];
          AnalyticsSendEvent();
        }

        v16 = v16 + 1;
      }

      while (v14 != v16);
      v14 = [v11 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v14);
  }
}

- (void)_uploadGMSDataToPFA:(id)a
{
  aCopy = a;
  v4 = +[NSUUID UUID];
  uUIDString = [v4 UUIDString];

  v6 = +[NSMutableArray array];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v7 = aCopy;
  obj = [aCopy unaggregatedMessages];
  v8 = [obj countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v27;
    do
    {
      v11 = 0;
      do
      {
        if (*v27 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v26 + 1) + 8 * v11);
        v13 = objc_opt_new();
        name = [v12 name];
        v15 = -[PETService _createMetadataFrom:submissionId:messageName:typeId:](self, "_createMetadataFrom:submissionId:messageName:typeId:", v7, uUIDString, name, [v12 typeId]);
        [v13 setMetadata:v15];

        v16 = [PBDataReader alloc];
        rawBytes = [v12 rawBytes];
        v18 = [v16 initWithData:rawBytes];

        v19 = objc_opt_new();
        COMAPPLEPROACTIVEGMSGMSUberEventReadFrom();
        [v13 setUberEvent:v19];
        data = [v13 data];
        [v6 addObject:data];

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [obj countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v9);
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v21 = [v6 count];
    *buf = 134218242;
    v31 = v21;
    v32 = 2112;
    v33 = @"com.apple.proactive.gms.PetUploadEvent";
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Repackaged %lu GMS messages, ready for uploading to PFA with schema: %@", buf, 0x16u);
  }

  metadata = [v7 metadata];
  messageGroup = [metadata messageGroup];
  [(PETService *)self _uploadBatchedDataToPFA:v6 schema:@"com.apple.proactive.gms.PetUploadEvent" messageGroup:messageGroup];
}

- (void)_uploadToParsecWithUpload:(id)upload
{
  uploadCopy = upload;
  metadata = [uploadCopy metadata];
  [metadata setUploadService:1];

  data = [uploadCopy data];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Sending upload data to Parsec.", buf, 2u);
  }

  metadata2 = [uploadCopy metadata];
  messageGroup = [metadata2 messageGroup];
  v8 = [messageGroup isEqualToString:@"_aggregated"];

  if (v8)
  {
    v9 = 14;
  }

  else
  {
    v9 = 7;
  }

  v25 = 0;
  v26 = &v25;
  v27 = 0x2050000000;
  v10 = qword_100010A08;
  v28 = qword_100010A08;
  if (!qword_100010A08)
  {
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_10000327C;
    v32 = &unk_10000C4F8;
    v33 = &v25;
    sub_10000327C(buf);
    v10 = v26[3];
  }

  v11 = v10;
  _Block_object_dispose(&v25, 8);
  v12 = [v10 alloc];
  v13 = [v12 initWithType:v9 data:{data, v25}];
  v25 = 0;
  v26 = &v25;
  v27 = 0x2050000000;
  v14 = qword_100010A18;
  v28 = qword_100010A18;
  if (!qword_100010A18)
  {
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_100003468;
    v32 = &unk_10000C4F8;
    v33 = &v25;
    sub_100003468(buf);
    v14 = v26[3];
  }

  v15 = v14;
  _Block_object_dispose(&v25, 8);
  sharedSession = [v14 sharedSession];
  v17 = sharedSession;
  if (v13 && sharedSession)
  {
    [sharedSession sendCustomFeedback:v13];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      metadata3 = [uploadCopy metadata];
      messageGroup2 = [metadata3 messageGroup];
      v20 = [data length];
      *buf = 138412546;
      *&buf[4] = messageGroup2;
      *&buf[12] = 2048;
      *&buf[14] = v20;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Upload data has been sent to Parsec. messageGroup: %@; size: %lu", buf, 0x16u);
    }

    v29[0] = @"message_group";
    metadata4 = [uploadCopy metadata];
    messageGroup3 = [metadata4 messageGroup];
    v30[0] = messageGroup3;
    v29[1] = @"compressed_size";
    v23 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [data length]);
    v30[1] = v23;
    v29[2] = @"upload_service";
    v30[2] = @"parsec";
    v24 = [NSDictionary dictionaryWithObjects:v30 forKeys:v29 count:3];
    AnalyticsSendEvent();
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "Failed to initialize Parsec feedback or session objects", buf, 2u);
  }
}

- (void)_uploadToFBFv2WithUpload:(id)upload
{
  uploadCopy = upload;
  metadata = [uploadCopy metadata];
  [metadata setUploadService:2];

  [uploadCopy clearUnaggregatedMessages];
  [uploadCopy clearAggregatedMessages];
  data = [uploadCopy data];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Sending upload data to FBFv2.", buf, 2u);
  }

  v6 = [[PETSchemaPETUpload alloc] initWithData:data];
  wrapAsAnyEvent = [v6 wrapAsAnyEvent];
  if (wrapAsAnyEvent)
  {
    v8 = +[FLLogger sharedLogger];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000038BC;
    v9[3] = &unk_10000C4A8;
    v10 = uploadCopy;
    v11 = data;
    [v8 reportSiriInstrumentationEvent:wrapAsAnyEvent forBundleID:@"com.apple.proactive.eventtracker" completion:v9];
  }
}

- (BOOL)_writeUploadForTransparency:(id)transparency
{
  transparencyCopy = transparency;
  v5 = objc_opt_new();
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  aggregatedMessages = [transparencyCopy aggregatedMessages];
  v7 = [aggregatedMessages countByEnumeratingWithState:&v45 objects:v50 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v46;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v46 != v9)
        {
          objc_enumerationMutation(aggregatedMessages);
        }

        v11 = [PETEventTracker2 formattedTextForAggregatedMessage:*(*(&v45 + 1) + 8 * i)];
        [v5 addObject:v11];
      }

      v8 = [aggregatedMessages countByEnumeratingWithState:&v45 objects:v50 count:16];
    }

    while (v8);
  }

  if (![v5 count])
  {
    goto LABEL_10;
  }

  v12 = [@"proactive_event_tracker-" stringByAppendingString:@"aggregated"];
  v40 = _NSConcreteStackBlock;
  v41 = 3221225472;
  v42 = sub_100003FC0;
  v43 = &unk_10000C480;
  v44 = v5;
  v13 = OSAWriteLogForSubmission();

  if (!v13)
  {
    v29 = 0;
  }

  else
  {
LABEL_10:
    v14 = [PETServiceUploadAssembler alloc];
    rootDir = [(PETEventTracker2 *)self->_tracker rootDir];
    v16 = [(PETServiceUploadAssembler *)v14 initWithRootDir:rootDir];

    v33 = v16;
    if (v16)
    {
      v17 = objc_opt_new();
      metadata = [transparencyCopy metadata];
      messageGroup = [metadata messageGroup];

      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v31 = transparencyCopy;
      obj = [transparencyCopy unaggregatedMessages];
      v20 = [obj countByEnumeratingWithState:&v35 objects:v49 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v36;
        do
        {
          for (j = 0; j != v21; j = j + 1)
          {
            if (*v36 != v22)
            {
              objc_enumerationMutation(obj);
            }

            v24 = *(*(&v35 + 1) + 8 * j);
            petConfig = [(PETServiceUploadAssembler *)v33 petConfig];
            v26 = [PETEventTracker2 formattedTextForUnaggregatedMessage:v24 messageGroup:messageGroup config:petConfig];

            [v17 addObject:v26];
          }

          v21 = [obj countByEnumeratingWithState:&v35 objects:v49 count:16];
        }

        while (v21);
      }

      if ([v17 count])
      {
        v27 = [messageGroup stringByReplacingOccurrencesOfString:@"." withString:@"_"];
        v28 = [@"proactive_event_tracker-" stringByAppendingString:v27];
        v34 = v17;
        v29 = OSAWriteLogForSubmission();
      }

      else
      {
        v29 = 1;
      }

      transparencyCopy = v31;
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "Failed to initialize the upload assembler", buf, 2u);
      }

      v29 = 0;
    }
  }

  return v29;
}

- (void)upload
{
  v3 = [PETServiceUploadAssembler alloc];
  rootDir = [(PETEventTracker2 *)self->_tracker rootDir];
  v5 = [(PETServiceUploadAssembler *)v3 initWithRootDir:rootDir];

  if (v5)
  {
    v6 = [(PETServiceUploadAssembler *)v5 assembleAggregatedUploadWithTracker:self->_tracker];
    if (v6)
    {
      [(PETService *)self _uploadWithUploadPackage:v6];
    }

    tracker = self->_tracker;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100004220;
    v8[3] = &unk_10000C458;
    v9 = v5;
    selfCopy = self;
    [(PETEventTracker2 *)tracker enumerateMessageGroups:v8];
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "Failed to initialize the upload assembler", buf, 2u);
  }
}

- (PETService)init
{
  v8.receiver = self;
  v8.super_class = PETService;
  v2 = [(PETService *)&v8 init];
  if (!v2)
  {
LABEL_6:
    v5 = v2;
    goto LABEL_10;
  }

  v2->_isInternalDevice = +[_PASDeviceInfo isInternalBuild];
  v3 = [[PETEventTracker2 alloc] initWithAsyncEnabled:0];
  tracker = v2->_tracker;
  v2->_tracker = v3;

  if (v2->_tracker)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "PETService has been initialized", v7, 2u);
    }

    AnalyticsSendEvent();
    goto LABEL_6;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
  {
    *v7 = 0;
    _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "Failed to initialize the tracker", v7, 2u);
  }

  AnalyticsSendEvent();
  v5 = 0;
LABEL_10:

  return v5;
}

+ (void)clearAllLogs
{
  v3 = [[PETEventTracker2 alloc] initWithAsyncEnabled:0];
  aggregateState = [v3 aggregateState];
  [aggregateState reset];

  [v3 clearLogStores];
}

+ (void)updateMobileAssetMetadataWithXPCActivity:(id)activity
{
  activityCopy = activity;
  v4 = dispatch_queue_create("PETAsset-notifications", 0);
  v5 = [[_PASAsset2 alloc] initWithAssetTypeDescriptorPath:@"/System/Library/AssetTypeDescriptors/com.apple.MobileAsset.AssetTypeDescriptor.ProactiveEventTrackerAssets.plist" defaultBundlePath:0 matchingKeysAndValues:0 notificationQueue:v4 logHandle:&_os_log_default];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Kicking off mobile asset metadata download.", buf, 2u);
  }

  if (!xpc_activity_set_state(activityCopy, 4) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Error setting XPC activity state to CONTINUE", buf, 2u);
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000045B8;
  v7[3] = &unk_10000C4D0;
  v8 = activityCopy;
  v6 = activityCopy;
  [v5 downloadMetadataWithCompletion:v7];
}

@end