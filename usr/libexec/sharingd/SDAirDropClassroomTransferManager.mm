@interface SDAirDropClassroomTransferManager
- (SDAirDropClassroomTransferManager)init;
- (id)exportedInterface;
- (id)makeDestinationDirectoryWithIdentifier:(id)identifier error:(id *)error;
- (void)activate;
- (void)alertManager:(id)manager acceptingTransferWithRecordID:(id)d withDestinationURL:(id)l shouldExtractMediaFromPhotosBundlesForRecordID:(BOOL)iD;
- (void)alertManager:(id)manager cancelingTransferWithRecordID:(id)d withFailureReason:(unint64_t)reason;
- (void)connectionEstablished:(id)established;
- (void)connectionInvalidated:(id)invalidated;
- (void)invalidate;
- (void)replaceIconValue:(id)value forKey:(id)key;
- (void)updateTransferWithIdentifier:(id)identifier withState:(int64_t)state information:(id)information completionHandler:(id)handler;
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

- (id)makeDestinationDirectoryWithIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  v6 = sub_1001F17F4();
  if (v6)
  {
    v7 = v6;
    v8 = [v6 URLByAppendingPathComponent:@"com.apple.AirDrop" isDirectory:1];

    v9 = [v8 URLByAppendingPathComponent:identifierCopy isDirectory:1];

    v10 = [v9 URLByAppendingPathComponent:@"Files" isDirectory:1];

    v19 = NSFileProtectionKey;
    v20 = NSFileProtectionCompleteUntilFirstUserAuthentication;
    v11 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    v12 = +[NSFileManager defaultManager];
    v13 = [v12 createDirectoryAtURL:v10 withIntermediateDirectories:1 attributes:v11 error:error];

    if ((v13 & 1) == 0)
    {
      v14 = airdrop_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_10026BD44(error);
      }
    }

    v15 = v10;

    v16 = v15;
  }

  else
  {
    if (error)
    {
      v17 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-6709 userInfo:0];
      *error = v17;
    }

    v15 = airdrop_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_10026BDBC(error);
    }

    v16 = 0;
  }

  return v16;
}

- (void)replaceIconValue:(id)value forKey:(id)key
{
  valueCopy = value;
  keyCopy = key;
  v7 = [valueCopy objectForKeyedSubscript:keyCopy];
  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = sub_100117BCC(v7);
      if (v8)
      {
        v9 = v8;
        [valueCopy setObject:v8 forKeyedSubscript:keyCopy];
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

- (void)updateTransferWithIdentifier:(id)identifier withState:(int64_t)state information:(id)information completionHandler:(id)handler
{
  identifierCopy = identifier;
  informationCopy = information;
  handlerCopy = handler;
  dispatchQueue = [(SDXPCDaemon *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  v12 = airdrop_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v48 = identifierCopy;
    v49 = 1024;
    stateCopy = state;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Update transfer %@ with state %d", buf, 0x12u);
  }

  v13 = [informationCopy mutableCopy];
  [v13 setObject:&__kCFBooleanFalse forKeyedSubscript:kSFOperationSenderIsMeKey];
  [v13 setObject:&__kCFBooleanTrue forKeyedSubscript:kSFOperationVerifiableIdentityKey];
  [(SDAirDropClassroomTransferManager *)self replaceIconValue:v13 forKey:kSFOperationSmallFileIconKey];
  [(SDAirDropClassroomTransferManager *)self replaceIconValue:v13 forKey:kSFOperationFileIconKey];
  [(SDAirDropClassroomTransferManager *)self replaceIconValue:v13 forKey:kSFOperationSenderIconKey];
  [(SDAirDropClassroomTransferManager *)self replaceIconValue:v13 forKey:kSFOperationReceiverIconKey];
  v14 = [(NSMutableDictionary *)self->_transferIDToProgress objectForKeyedSubscript:identifierCopy];
  objc_initWeak(buf, self);
  if (state > 2)
  {
    switch(state)
    {
      case 3:
        [v14 setSf_transferState:4];
        alertManager = [(SDAirDropClassroomTransferManager *)self alertManager];
        [alertManager cancelEventForRecordID:identifierCopy withResults:v13];
        goto LABEL_13;
      case 4:
        v20 = [v13 objectForKeyedSubscript:kSFOperationErrorKey];
        localizedDescription = [v20 localizedDescription];
        [v14 sf_failedWithError:localizedDescription];

        alertManager = [(SDAirDropClassroomTransferManager *)self alertManager];
        [alertManager errorEventForRecordID:identifierCopy withResults:v13];
        goto LABEL_13;
      case 5:
        [v14 setSf_transferState:6];
        alertManager = [(SDAirDropClassroomTransferManager *)self alertManager];
        [alertManager finishedEventForRecordID:identifierCopy withResults:v13];
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
        v38 = identifierCopy;
        dispatch_after(v22, v23, block);

        objc_destroyWeak(&v39);
        objc_destroyWeak(&location);
        goto LABEL_14;
    }

    goto LABEL_19;
  }

  if (state == 1)
  {
    v44 = 0;
    v24 = [(SDAirDropClassroomTransferManager *)self makeDestinationDirectoryWithIdentifier:identifierCopy error:&v44];
    v25 = v44;
    [v13 setObject:v24 forKeyedSubscript:kSFOperationReceiverClassroomDestination];
    v27 = [NSProgress alloc];
    uRLByDeletingLastPathComponent = [v24 URLByDeletingLastPathComponent];
    v29 = [v27 sf_initWithFileURL:uRLByDeletingLastPathComponent];

    [(NSMutableDictionary *)self->_transferIDToProgress setObject:v29 forKeyedSubscript:identifierCopy];
    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = sub_10026B554;
    v41[3] = &unk_1008D64F8;
    objc_copyWeak(&v43, buf);
    v41[4] = self;
    v30 = identifierCopy;
    v42 = v30;
    [v29 setCancellationHandler:v41];
    [v29 _publish];
    [v29 setSf_transferState:3];
    v31 = [v13 objectForKeyedSubscript:kSFOperationTotalBytesKey];
    [v29 setTotalUnitCount:{objc_msgSend(v31, "longLongValue")}];

    [v29 setCompletedUnitCount:0];
    alertManager2 = [(SDAirDropClassroomTransferManager *)self alertManager];
    [alertManager2 askEventForRecordID:v30 withResults:v13];

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

  if (state != 2)
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

  alertManager3 = [(SDAirDropClassroomTransferManager *)self alertManager];
  [alertManager3 progressEventForRecordID:identifierCopy withResults:v13];

LABEL_14:
  v24 = 0;
  v25 = 0;
  v26 = 1;
LABEL_22:
  handlerCopy[2](handlerCopy, v26, v24, v25);

  objc_destroyWeak(buf);
}

- (void)alertManager:(id)manager acceptingTransferWithRecordID:(id)d withDestinationURL:(id)l shouldExtractMediaFromPhotosBundlesForRecordID:(BOOL)iD
{
  dCopy = d;
  v8 = airdrop_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    activeConnections = [(SDXPCDaemon *)self activeConnections];
    *buf = 67109378;
    v14 = [activeConnections count];
    v15 = 2112;
    v16 = dCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Notifying %d clients that transfer %@ was accepted", buf, 0x12u);
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10026B74C;
  v11[3] = &unk_1008D6520;
  v11[4] = self;
  v12 = dCopy;
  v10 = dCopy;
  [(SDAirDropClassroomTransferManager *)self _enumerateRemoteObjectProxiesUsingBlock:v11];
}

- (void)alertManager:(id)manager cancelingTransferWithRecordID:(id)d withFailureReason:(unint64_t)reason
{
  dCopy = d;
  v8 = airdrop_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    activeConnections = [(SDXPCDaemon *)self activeConnections];
    *buf = 67109378;
    v15 = [activeConnections count];
    v16 = 2112;
    v17 = dCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Notifying %d clients that transfer %@ was declined", buf, 0x12u);
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10026B908;
  v11[3] = &unk_1008D6548;
  v11[4] = self;
  v12 = dCopy;
  reasonCopy = reason;
  v10 = dCopy;
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

- (void)connectionEstablished:(id)established
{
  establishedCopy = established;
  v5 = airdrop_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    sd_description = [establishedCopy sd_description];
    v8 = 138412290;
    v9 = sd_description;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "connection established %@", &v8, 0xCu);
  }

  alertManager = [(SDAirDropClassroomTransferManager *)self alertManager];
  [alertManager setClassroomDelegate:self];
}

- (void)connectionInvalidated:(id)invalidated
{
  invalidatedCopy = invalidated;
  v5 = airdrop_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    sd_description = [invalidatedCopy sd_description];
    v10 = 138412290;
    v11 = sd_description;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "connection invalidated %@", &v10, 0xCu);
  }

  activeConnections = [(SDXPCDaemon *)self activeConnections];
  v8 = [activeConnections count];

  if (!v8)
  {
    alertManager = [(SDAirDropClassroomTransferManager *)self alertManager];
    [alertManager setClassroomDelegate:0];
  }
}

@end