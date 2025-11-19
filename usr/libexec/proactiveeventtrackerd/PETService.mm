@interface PETService
+ (void)clearAllLogs;
+ (void)updateMobileAssetMetadataWithXPCActivity:(id)a3;
- (BOOL)_writeUploadForTransparency:(id)a3;
- (PETService)init;
- (void)_uploadBatchedDataToPFA:(id)a3 schema:(id)a4 messageGroup:(id)a5;
- (void)_uploadGMSDataToPFA:(id)a3;
- (void)_uploadToFBFv2WithUpload:(id)a3;
- (void)_uploadToParsecWithUpload:(id)a3;
- (void)_uploadWithUploadPackage:(id)a3;
- (void)upload;
@end

@implementation PETService

- (void)_uploadWithUploadPackage:(id)a3
{
  v4 = a3;
  if ((+[_PASDeviceInfo isDNUEnabled]& 1) != 0)
  {
    v5 = [v4 metadata];
    v6 = [v5 messageGroup];

    if (!v6)
    {
      v7 = [v4 metadata];
      [v7 setMessageGroup:@"null"];
    }

    if ([(PETService *)self _writeUploadForTransparency:v4])
    {
      v8 = +[PETMetadata getCountryCode];
      v9 = [v4 metadata];
      if ([v9 isInternal])
      {
        v10 = [v4 metadata];
        v11 = [v10 messageGroup];
        v12 = [v11 isEqualToString:@"com.apple.generativefunctions.instrumentation.UberEvent"];

        if (v12)
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            v13 = [v4 metadata];
            v14 = [v13 messageGroup];
            v22 = 138412290;
            v23 = v14;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Found GMS Event Message Group: %@", &v22, 0xCu);
          }

          [(PETService *)self _uploadGMSDataToPFA:v4];
        }
      }

      else
      {
      }

      if ([v8 isEqualToString:@"CN"])
      {
        [(PETService *)self _uploadToFBFv2WithUpload:v4];
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

        v19 = [v4 metadata];
        if ([v19 isInternal])
        {
        }

        else
        {
          v20 = [v4 metadata];
          v21 = [v20 isSeed];

          if (!v21)
          {
            goto LABEL_23;
          }
        }
      }

      [(PETService *)self _uploadToFBFv2WithUpload:v4];
LABEL_23:
      if ([v18 shouldUploadToParsec])
      {
        [(PETService *)self _uploadToParsecWithUpload:v4];
      }

      goto LABEL_26;
    }

    v24[0] = @"reason";
    v24[1] = @"group";
    v25[0] = @"write_osa";
    v15 = [v4 metadata];
    v16 = [v15 messageGroup];
    v25[1] = v16;
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

- (void)_uploadBatchedDataToPFA:(id)a3 schema:(id)a4 messageGroup:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [FLLogger sharedLoggerWithPersistenceConfiguration:1];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v11 = v7;
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
          v21 = v9;
          v22 = v17;
          [v10 reportDataPlatformBatchedEvent:v17 forBundleID:@"com.apple.proactive" ofSchema:v8 completion:v20];
          v18 = v21;
        }

        else
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            *buf = v19;
            v30 = v9;
            _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "%@ is failed to upload to PFA backend", buf, 0xCu);
          }

          v27[0] = @"reason";
          v27[1] = @"group";
          v28[0] = @"PFA-backend is not available ";
          v28[1] = v9;
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

- (void)_uploadGMSDataToPFA:(id)a3
{
  v3 = a3;
  v4 = +[NSUUID UUID];
  v5 = [v4 UUIDString];

  v6 = +[NSMutableArray array];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v7 = v3;
  obj = [v3 unaggregatedMessages];
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
        v14 = [v12 name];
        v15 = -[PETService _createMetadataFrom:submissionId:messageName:typeId:](self, "_createMetadataFrom:submissionId:messageName:typeId:", v7, v5, v14, [v12 typeId]);
        [v13 setMetadata:v15];

        v16 = [PBDataReader alloc];
        v17 = [v12 rawBytes];
        v18 = [v16 initWithData:v17];

        v19 = objc_opt_new();
        COMAPPLEPROACTIVEGMSGMSUberEventReadFrom();
        [v13 setUberEvent:v19];
        v20 = [v13 data];
        [v6 addObject:v20];

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

  v22 = [v7 metadata];
  v23 = [v22 messageGroup];
  [(PETService *)self _uploadBatchedDataToPFA:v6 schema:@"com.apple.proactive.gms.PetUploadEvent" messageGroup:v23];
}

- (void)_uploadToParsecWithUpload:(id)a3
{
  v3 = a3;
  v4 = [v3 metadata];
  [v4 setUploadService:1];

  v5 = [v3 data];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Sending upload data to Parsec.", buf, 2u);
  }

  v6 = [v3 metadata];
  v7 = [v6 messageGroup];
  v8 = [v7 isEqualToString:@"_aggregated"];

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
  v13 = [v12 initWithType:v9 data:{v5, v25}];
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
  v16 = [v14 sharedSession];
  v17 = v16;
  if (v13 && v16)
  {
    [v16 sendCustomFeedback:v13];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [v3 metadata];
      v19 = [v18 messageGroup];
      v20 = [v5 length];
      *buf = 138412546;
      *&buf[4] = v19;
      *&buf[12] = 2048;
      *&buf[14] = v20;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Upload data has been sent to Parsec. messageGroup: %@; size: %lu", buf, 0x16u);
    }

    v29[0] = @"message_group";
    v21 = [v3 metadata];
    v22 = [v21 messageGroup];
    v30[0] = v22;
    v29[1] = @"compressed_size";
    v23 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v5 length]);
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

- (void)_uploadToFBFv2WithUpload:(id)a3
{
  v3 = a3;
  v4 = [v3 metadata];
  [v4 setUploadService:2];

  [v3 clearUnaggregatedMessages];
  [v3 clearAggregatedMessages];
  v5 = [v3 data];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Sending upload data to FBFv2.", buf, 2u);
  }

  v6 = [[PETSchemaPETUpload alloc] initWithData:v5];
  v7 = [v6 wrapAsAnyEvent];
  if (v7)
  {
    v8 = +[FLLogger sharedLogger];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000038BC;
    v9[3] = &unk_10000C4A8;
    v10 = v3;
    v11 = v5;
    [v8 reportSiriInstrumentationEvent:v7 forBundleID:@"com.apple.proactive.eventtracker" completion:v9];
  }
}

- (BOOL)_writeUploadForTransparency:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v6 = [v4 aggregatedMessages];
  v7 = [v6 countByEnumeratingWithState:&v45 objects:v50 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = [PETEventTracker2 formattedTextForAggregatedMessage:*(*(&v45 + 1) + 8 * i)];
        [v5 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v45 objects:v50 count:16];
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
    v15 = [(PETEventTracker2 *)self->_tracker rootDir];
    v16 = [(PETServiceUploadAssembler *)v14 initWithRootDir:v15];

    v33 = v16;
    if (v16)
    {
      v17 = objc_opt_new();
      v18 = [v4 metadata];
      v19 = [v18 messageGroup];

      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v31 = v4;
      obj = [v4 unaggregatedMessages];
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
            v25 = [(PETServiceUploadAssembler *)v33 petConfig];
            v26 = [PETEventTracker2 formattedTextForUnaggregatedMessage:v24 messageGroup:v19 config:v25];

            [v17 addObject:v26];
          }

          v21 = [obj countByEnumeratingWithState:&v35 objects:v49 count:16];
        }

        while (v21);
      }

      if ([v17 count])
      {
        v27 = [v19 stringByReplacingOccurrencesOfString:@"." withString:@"_"];
        v28 = [@"proactive_event_tracker-" stringByAppendingString:v27];
        v34 = v17;
        v29 = OSAWriteLogForSubmission();
      }

      else
      {
        v29 = 1;
      }

      v4 = v31;
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
  v4 = [(PETEventTracker2 *)self->_tracker rootDir];
  v5 = [(PETServiceUploadAssembler *)v3 initWithRootDir:v4];

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
    v10 = self;
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
  v2 = [v3 aggregateState];
  [v2 reset];

  [v3 clearLogStores];
}

+ (void)updateMobileAssetMetadataWithXPCActivity:(id)a3
{
  v3 = a3;
  v4 = dispatch_queue_create("PETAsset-notifications", 0);
  v5 = [[_PASAsset2 alloc] initWithAssetTypeDescriptorPath:@"/System/Library/AssetTypeDescriptors/com.apple.MobileAsset.AssetTypeDescriptor.ProactiveEventTrackerAssets.plist" defaultBundlePath:0 matchingKeysAndValues:0 notificationQueue:v4 logHandle:&_os_log_default];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Kicking off mobile asset metadata download.", buf, 2u);
  }

  if (!xpc_activity_set_state(v3, 4) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Error setting XPC activity state to CONTINUE", buf, 2u);
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000045B8;
  v7[3] = &unk_10000C4D0;
  v8 = v3;
  v6 = v3;
  [v5 downloadMetadataWithCompletion:v7];
}

@end