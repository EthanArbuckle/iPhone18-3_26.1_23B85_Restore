@interface SCRSSyncDaemon
- (SCRSSyncDaemon)init;
- (void)service:(id)service account:(id)account incomingData:(id)data fromID:(id)d context:(id)context;
- (void)service:(id)service account:(id)account incomingResourceAtURL:(id)l metadata:(id)metadata fromID:(id)d context:(id)context;
@end

@implementation SCRSSyncDaemon

- (SCRSSyncDaemon)init
{
  v8.receiver = self;
  v8.super_class = SCRSSyncDaemon;
  v2 = [(SCRSSyncDaemon *)&v8 init];
  if (v2)
  {
    v3 = [[IDSService alloc] initWithService:@"com.apple.private.alloy.screenshotter"];
    idsService = v2->_idsService;
    v2->_idsService = v3;

    [(IDSService *)v2->_idsService addDelegate:v2 queue:&_dispatch_main_q];
    v5 = os_log_create("com.apple.screenshotsync", "screenshot");
    logger = v2->_logger;
    v2->_logger = v5;
  }

  return v2;
}

- (void)service:(id)service account:(id)account incomingData:(id)data fromID:(id)d context:(id)context
{
  serviceCopy = service;
  accountCopy = account;
  dataCopy = data;
  dCopy = d;
  contextCopy = context;
  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
  {
    v17 = logger;
    outgoingResponseIdentifier = [contextCopy outgoingResponseIdentifier];
    *buf = 138412290;
    v50 = outgoingResponseIdentifier;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Received message with ID: %@,", buf, 0xCu);
  }

  v19 = objc_opt_class();
  v20 = objc_opt_class();
  v21 = objc_opt_class();
  v22 = objc_opt_class();
  v23 = [NSSet setWithObjects:v19, v20, v21, v22, objc_opt_class(), 0];
  v48 = 0;
  v24 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v23 fromData:dataCopy error:&v48];
  v25 = v48;
  if (v25)
  {
    v26 = self->_logger;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      sub_100001BB0(v25, v26);
    }
  }

  v27 = [v24 objectForKeyedSubscript:@"t"];
  integerValue = [v27 integerValue];

  if (integerValue == 1)
  {
    v36 = self->_logger;
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      sub_100001C28(dCopy, contextCopy, v36);
    }

    goto LABEL_16;
  }

  if (integerValue)
  {
LABEL_16:
    v35 = 0;
    goto LABEL_21;
  }

  v42 = dCopy;
  v29 = accountCopy;
  v30 = self->_logger;
  if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "Message is screenshot.", buf, 2u);
  }

  v31 = [v24 objectForKeyedSubscript:@"d"];
  v32 = [UIImage imageWithData:v31];

  v33 = self->_logger;
  if (v32)
  {
    accountCopy = v29;
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "Generated image, sending to PhotoLibrary.", buf, 2u);
    }

    v34 = +[PHPhotoLibrary sharedPhotoLibrary];
    v45[0] = _NSConcreteStackBlock;
    v45[1] = 3221225472;
    v45[2] = sub_1000012CC;
    v45[3] = &unk_100004210;
    v35 = v32;
    v46 = v35;
    v47 = v24;
    v44[0] = _NSConcreteStackBlock;
    v44[1] = 3221225472;
    v44[2] = sub_100001348;
    v44[3] = &unk_100004238;
    v44[4] = self;
    [v34 performChanges:v45 completionHandler:v44];
  }

  else
  {
    accountCopy = v29;
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      sub_100001CB0(v33);
    }

    v35 = 0;
  }

  dCopy = v42;
LABEL_21:
  v37 = self->_logger;
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
  {
    v38 = v37;
    [contextCopy outgoingResponseIdentifier];
    v39 = dCopy;
    v41 = v40 = accountCopy;
    *buf = 138412290;
    v50 = v41;
    _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Finished processing image from message with ID: %@,", buf, 0xCu);

    accountCopy = v40;
    dCopy = v39;
  }
}

- (void)service:(id)service account:(id)account incomingResourceAtURL:(id)l metadata:(id)metadata fromID:(id)d context:(id)context
{
  serviceCopy = service;
  accountCopy = account;
  lCopy = l;
  metadataCopy = metadata;
  dCopy = d;
  contextCopy = context;
  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
  {
    v21 = logger;
    outgoingResponseIdentifier = [contextCopy outgoingResponseIdentifier];
    *buf = 138412290;
    v38 = outgoingResponseIdentifier;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Received message with ID: %@,", buf, 0xCu);
  }

  v23 = [metadataCopy objectForKeyedSubscript:@"t"];
  integerValue = [v23 integerValue];

  if (integerValue == 2)
  {
    v25 = self->_logger;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "Message is screen recording. Sending to PhotoLibrary", buf, 2u);
    }

    v26 = [[SCRSIncomingFile alloc] initWithIDSURL:lCopy];
    v27 = +[PHPhotoLibrary sharedPhotoLibrary];
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_100001714;
    v34[3] = &unk_100004210;
    v35 = v26;
    v36 = metadataCopy;
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_1000017B4;
    v32[3] = &unk_100004260;
    v32[4] = self;
    v33 = v35;
    v28 = v35;
    [v27 performChanges:v34 completionHandler:v32];
  }

  v29 = self->_logger;
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    v30 = v29;
    outgoingResponseIdentifier2 = [contextCopy outgoingResponseIdentifier];
    *buf = 138412290;
    v38 = outgoingResponseIdentifier2;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Finished processing video from message with ID: %@,", buf, 0xCu);
  }
}

@end