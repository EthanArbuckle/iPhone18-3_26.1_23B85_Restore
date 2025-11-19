@interface SDAirDropClassroomTransferManager
- (SDAirDropClassroomTransferManager)init;
- (id)exportedInterface;
- (id)makeDestinationDirectoryWithIdentifier:(id)a3 error:(id *)a4;
- (void)activate;
- (void)alertManager:(id)a3 acceptingTransferWithRecordID:(id)a4 withDestinationURL:(id)a5 shouldExtractMediaFromPhotosBundlesForRecordID:(BOOL)a6;
- (void)alertManager:(id)a3 cancelingTransferWithRecordID:(id)a4 withFailureReason:(unint64_t)a5;
- (void)connectionEstablished:(id)a3;
- (void)connectionInvalidated:(id)a3;
- (void)invalidate;
- (void)replaceIconValue:(id)a3 forKey:(id)a4;
- (void)updateTransferWithIdentifier:(id)a3 withState:(int64_t)a4 information:(id)a5 completionHandler:(id)a6;
@end

@implementation SDAirDropClassroomTransferManager

- (SDAirDropClassroomTransferManager)init
{
  v6.receiver = self;
  v6.super_class = SDAirDropClassroomTransferManager;
  v2 = [(SDXPCDaemon *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    transferIDToProgress = v2->_transferIDToProgress;
    v2->_transferIDToProgress = v3;
  }

  return v2;
}

- (void)activate
{
  v2.receiver = self;
  v2.super_class = SDAirDropClassroomTransferManager;
  [(SDXPCDaemon *)&v2 _activate];
}

- (void)invalidate
{
  v2.receiver = self;
  v2.super_class = SDAirDropClassroomTransferManager;
  [(SDXPCDaemon *)&v2 _invalidate];
}

- (id)makeDestinationDirectoryWithIdentifier:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = sub_1001F17F4();
  if (v6)
  {
    v7 = v6;
    v8 = [v6 URLByAppendingPathComponent:@"com.apple.AirDrop" isDirectory:1];

    v9 = [v8 URLByAppendingPathComponent:v5 isDirectory:1];

    v10 = [v9 URLByAppendingPathComponent:@"Files" isDirectory:1];

    v19 = NSFileProtectionKey;
    v20 = NSFileProtectionCompleteUntilFirstUserAuthentication;
    v11 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    v12 = +[NSFileManager defaultManager];
    v13 = [v12 createDirectoryAtURL:v10 withIntermediateDirectories:1 attributes:v11 error:a4];

    if ((v13 & 1) == 0)
    {
      v14 = airdrop_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_10026BD44(a4);
      }
    }

    v15 = v10;

    v16 = v15;
  }

  else
  {
    if (a4)
    {
      v17 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-6709 userInfo:0];
      *a4 = v17;
    }

    v15 = airdrop_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_10026BDBC(a4);
    }

    v16 = 0;
  }

  return v16;
}

- (void)replaceIconValue:(id)a3 forKey:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 objectForKeyedSubscript:v6];
  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = sub_100117BCC(v7);
      if (v8)
      {
        v9 = v8;
        [v5 setObject:v8 forKeyedSubscript:v6];
        CFRelease(v9);
        goto LABEL_10;
      }

      v10 = airdrop_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10026BE74();
      }
    }

    else
    {
      v10 = airdrop_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10026BE34();
      }
    }
  }

LABEL_10:
}

- (void)updateTransferWithIdentifier:(id)a3 withState:(int64_t)a4 information:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v36 = a5;
  v35 = a6;
  v11 = [(SDXPCDaemon *)self dispatchQueue];
  dispatch_assert_queue_V2(v11);

  v12 = airdrop_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v48 = v10;
    v49 = 1024;
    v50 = a4;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Update transfer %@ with state %d", buf, 0x12u);
  }

  v13 = [v36 mutableCopy];
  [v13 setObject:&__kCFBooleanFalse forKeyedSubscript:kSFOperationSenderIsMeKey];
  [v13 setObject:&__kCFBooleanTrue forKeyedSubscript:kSFOperationVerifiableIdentityKey];
  [(SDAirDropClassroomTransferManager *)self replaceIconValue:v13 forKey:kSFOperationSmallFileIconKey];
  [(SDAirDropClassroomTransferManager *)self replaceIconValue:v13 forKey:kSFOperationFileIconKey];
  [(SDAirDropClassroomTransferManager *)self replaceIconValue:v13 forKey:kSFOperationSenderIconKey];
  [(SDAirDropClassroomTransferManager *)self replaceIconValue:v13 forKey:kSFOperationReceiverIconKey];
  v14 = [(NSMutableDictionary *)self->_transferIDToProgress objectForKeyedSubscript:v10];
  objc_initWeak(buf, self);
  if (a4 > 2)
  {
    switch(a4)
    {
      case 3:
        [v14 setSf_transferState:4];
        v15 = [(SDAirDropClassroomTransferManager *)self alertManager];
        [v15 cancelEventForRecordID:v10 withResults:v13];
        goto LABEL_13;
      case 4:
        v20 = [v13 objectForKeyedSubscript:kSFOperationErrorKey];
        v21 = [v20 localizedDescription];
        [v14 sf_failedWithError:v21];

        v15 = [(SDAirDropClassroomTransferManager *)self alertManager];
        [v15 errorEventForRecordID:v10 withResults:v13];
        goto LABEL_13;
      case 5:
        [v14 setSf_transferState:6];
        v15 = [(SDAirDropClassroomTransferManager *)self alertManager];
        [v15 finishedEventForRecordID:v10 withResults:v13];
LABEL_13:

        objc_initWeak(&location, v14);
        v22 = sub_1001F0530(2.0);
        v23 = SFMainQueue();
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10026B5B4;
        block[3] = &unk_1008D64F8;
        objc_copyWeak(&v39, &location);
        block[4] = self;
        v38 = v10;
        dispatch_after(v22, v23, block);

        objc_destroyWeak(&v39);
        objc_destroyWeak(&location);
        goto LABEL_14;
    }

    goto LABEL_19;
  }

  if (a4 == 1)
  {
    v44 = 0;
    v24 = [(SDAirDropClassroomTransferManager *)self makeDestinationDirectoryWithIdentifier:v10 error:&v44];
    v25 = v44;
    [v13 setObject:v24 forKeyedSubscript:kSFOperationReceiverClassroomDestination];
    v27 = [NSProgress alloc];
    v28 = [v24 URLByDeletingLastPathComponent];
    v29 = [v27 sf_initWithFileURL:v28];

    [(NSMutableDictionary *)self->_transferIDToProgress setObject:v29 forKeyedSubscript:v10];
    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = sub_10026B554;
    v41[3] = &unk_1008D64F8;
    objc_copyWeak(&v43, buf);
    v41[4] = self;
    v30 = v10;
    v42 = v30;
    [v29 setCancellationHandler:v41];
    [v29 _publish];
    [v29 setSf_transferState:3];
    v31 = [v13 objectForKeyedSubscript:kSFOperationTotalBytesKey];
    [v29 setTotalUnitCount:{objc_msgSend(v31, "longLongValue")}];

    [v29 setCompletedUnitCount:0];
    v32 = [(SDAirDropClassroomTransferManager *)self alertManager];
    [v32 askEventForRecordID:v30 withResults:v13];

    objc_destroyWeak(&v43);
    if (!v25)
    {
LABEL_20:
      v26 = 1;
LABEL_21:
      v14 = v29;
      goto LABEL_22;
    }

LABEL_16:
    v33 = airdrop_log();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      sub_10026BEB4();
    }

    v26 = 0;
    goto LABEL_21;
  }

  if (a4 != 2)
  {
LABEL_19:
    v45 = NSLocalizedDescriptionKey;
    v46 = @"invalid state value";
    v34 = [NSDictionary dictionaryWithObjects:&v46 forKeys:&v45 count:1];
    v25 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:v34];

    v24 = 0;
    v29 = v14;
    if (!v25)
    {
      goto LABEL_20;
    }

    goto LABEL_16;
  }

  v16 = [v13 objectForKeyedSubscript:kSFOperationTotalBytesKey];
  [v14 setTotalUnitCount:{objc_msgSend(v16, "longLongValue")}];

  v17 = [v13 objectForKeyedSubscript:kSFOperationBytesCopiedKey];
  [v14 setCompletedUnitCount:{objc_msgSend(v17, "longLongValue")}];

  v18 = [v13 objectForKeyedSubscript:kSFOperationTimeRemainingKey];
  [v14 setUserInfoObject:v18 forKey:NSProgressEstimatedTimeRemainingKey];

  v19 = [(SDAirDropClassroomTransferManager *)self alertManager];
  [v19 progressEventForRecordID:v10 withResults:v13];

LABEL_14:
  v24 = 0;
  v25 = 0;
  v26 = 1;
LABEL_22:
  v35[2](v35, v26, v24, v25);

  objc_destroyWeak(buf);
}

- (void)alertManager:(id)a3 acceptingTransferWithRecordID:(id)a4 withDestinationURL:(id)a5 shouldExtractMediaFromPhotosBundlesForRecordID:(BOOL)a6
{
  v7 = a4;
  v8 = airdrop_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(SDXPCDaemon *)self activeConnections];
    *buf = 67109378;
    v14 = [v9 count];
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Notifying %d clients that transfer %@ was accepted", buf, 0x12u);
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10026B74C;
  v11[3] = &unk_1008D6520;
  v11[4] = self;
  v12 = v7;
  v10 = v7;
  [(SDAirDropClassroomTransferManager *)self _enumerateRemoteObjectProxiesUsingBlock:v11];
}

- (void)alertManager:(id)a3 cancelingTransferWithRecordID:(id)a4 withFailureReason:(unint64_t)a5
{
  v7 = a4;
  v8 = airdrop_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(SDXPCDaemon *)self activeConnections];
    *buf = 67109378;
    v15 = [v9 count];
    v16 = 2112;
    v17 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Notifying %d clients that transfer %@ was declined", buf, 0x12u);
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10026B908;
  v11[3] = &unk_1008D6548;
  v11[4] = self;
  v12 = v7;
  v13 = a5;
  v10 = v7;
  [(SDAirDropClassroomTransferManager *)self _enumerateRemoteObjectProxiesUsingBlock:v11];
}

- (id)exportedInterface
{
  v2 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___SDAirDropClassroomTransferManagerProtocol];
  v6[0] = objc_opt_class();
  v6[1] = objc_opt_class();
  v6[2] = objc_opt_class();
  v6[3] = objc_opt_class();
  v6[4] = objc_opt_class();
  v6[5] = objc_opt_class();
  v3 = [NSArray arrayWithObjects:v6 count:6];
  v4 = [NSSet setWithArray:v3];
  [v2 setClasses:v4 forSelector:"updateTransferWithIdentifier:withState:information:completionHandler:" argumentIndex:2 ofReply:0];

  return v2;
}

- (void)connectionEstablished:(id)a3
{
  v4 = a3;
  v5 = airdrop_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 sd_description];
    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "connection established %@", &v8, 0xCu);
  }

  v7 = [(SDAirDropClassroomTransferManager *)self alertManager];
  [v7 setClassroomDelegate:self];
}

- (void)connectionInvalidated:(id)a3
{
  v4 = a3;
  v5 = airdrop_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 sd_description];
    v10 = 138412290;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "connection invalidated %@", &v10, 0xCu);
  }

  v7 = [(SDXPCDaemon *)self activeConnections];
  v8 = [v7 count];

  if (!v8)
  {
    v9 = [(SDAirDropClassroomTransferManager *)self alertManager];
    [v9 setClassroomDelegate:0];
  }
}

@end