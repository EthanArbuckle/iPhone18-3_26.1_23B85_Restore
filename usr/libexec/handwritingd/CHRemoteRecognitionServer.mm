@interface CHRemoteRecognitionServer
+ (BOOL)_hasEntitlement:(id)entitlement connection:(id)connection;
+ (id)_unableToProcessRequestErrorWithBundleIdentifier:(id)identifier;
+ (id)sharedRemoteRecognitionServer;
- (BOOL)_shouldFulfillRemoteRequestForConnection:(id)connection error:(id *)error;
- (BOOL)isBundleIdentifierWhiteListed:(id)listed;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (CHRemoteRecognitionServer)init;
- (void)_synthesizeStyleInventoryIfNeededWithConnection:(id)connection;
- (void)dealloc;
- (void)handleAwaitInventoryIdleRequestWithReply:(id)reply;
- (void)handleDocumentLayoutAnalysisRequest:(id)request withReply:(id)reply;
- (void)handleInventoryContentCheckRequest:(id)request withReply:(id)reply;
- (void)handleInventoryRequest:(id)request withReply:(id)reply;
- (void)handleInventoryStatusRequestWithReply:(id)reply;
- (void)handleLineWrappingRequest:(id)request withReply:(id)reply;
- (void)handlePowerLoggingRequest:(id)request;
- (void)handleRecognitionRequest:(id)request withReply:(id)reply;
- (void)handleRequest:(id)request withReply:(id)reply;
- (void)handleSessionStateUpdate:(id)update;
- (void)handleSketchRecognitionRequest:(id)request withReply:(id)reply;
- (void)handleSynthesisStringChunkingRequest:(id)request withReply:(id)reply;
- (void)optimizeResourceUsage;
- (void)resumeConnectionIfIdle;
- (void)transcriptionPathsForTokenizedTextResult:(id)result recognitionRequest:(id)request withReply:(id)reply;
@end

@implementation CHRemoteRecognitionServer

+ (id)sharedRemoteRecognitionServer
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100007104;
  block[3] = &unk_1000247B8;
  block[4] = self;
  if (qword_10002AC80 == -1)
  {
    v2 = qword_10002AC78;
  }

  else
  {
    dispatch_once(&qword_10002AC80, block);
    v2 = qword_10002AC78;
  }

  return v2;
}

- (CHRemoteRecognitionServer)init
{
  v32.receiver = self;
  v32.super_class = CHRemoteRecognitionServer;
  v2 = [(CHRemoteRecognitionServer *)&v32 init];
  if (v2)
  {
    v3 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.handwritingd.remoterecognition"];
    v4 = *(v2 + 1);
    *(v2 + 1) = v3;

    [*(v2 + 1) setDelegate:v2];
    *(v2 + 24) = 0;
    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_attr_make_with_qos_class(v5, QOS_CLASS_UNSPECIFIED, 0);

    v7 = dispatch_queue_create("com.apple.handwritingd.ServerQueue", v6);
    v8 = *(v2 + 2);
    *(v2 + 2) = v7;

    v9 = dispatch_workloop_create("com.apple.handwritingd.recognitionProcessingWorkloop");
    v10 = *(v2 + 6);
    *(v2 + 6) = v9;

    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_attr_make_with_qos_class(v11, QOS_CLASS_USER_INITIATED, 0);

    v13 = dispatch_queue_create_with_target_V2("com.apple.handwritingd.HighPriorityRecognitionProcessingQueue", v12, *(v2 + 6));
    v14 = *(v2 + 4);
    *(v2 + 4) = v13;

    v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v16 = dispatch_queue_attr_make_with_qos_class(v15, QOS_CLASS_UNSPECIFIED, 0);

    v17 = dispatch_queue_create_with_target_V2("com.apple.handwritingd.LowPriorityRecognitionProcessingQueue", v16, *(v2 + 6));
    v18 = *(v2 + 5);
    *(v2 + 5) = v17;

    v19 = [[CHRemoteDocumentLayoutAnalysisRequestHandler alloc] initWithServerQueue:*(v2 + 2) lowPriorityQueue:*(v2 + 5) highPriorityQueue:*(v2 + 4)];
    v20 = *(v2 + 8);
    *(v2 + 8) = v19;

    v21 = [[CHRemoteRecognitionRequestHandler alloc] initWithServerQueue:*(v2 + 2) lowPriorityQueue:*(v2 + 5) highPriorityQueue:*(v2 + 4)];
    v22 = *(v2 + 9);
    *(v2 + 9) = v21;

    v23 = [[CHRemoteSynthesisRequestHandler alloc] initWithServerQueue:*(v2 + 2) recognitionHandler:*(v2 + 9)];
    v24 = *(v2 + 12);
    *(v2 + 12) = v23;

    v25 = [[CHRemoteLineWrappingRequestHandler alloc] initWithServerQueue:*(v2 + 2) lowPriorityQueue:*(v2 + 5) highPriorityQueue:*(v2 + 4)];
    v26 = *(v2 + 10);
    *(v2 + 10) = v25;

    v27 = [(CHRemoteBasicRequestHandler *)[CHRemotePowerLoggingRequestHandler alloc] initWithServerQueue:*(v2 + 2)];
    v28 = *(v2 + 11);
    *(v2 + 11) = v27;

    v29 = objc_alloc_init(CHSessionStateCounter);
    v30 = *(v2 + 7);
    *(v2 + 7) = v29;
  }

  return v2;
}

- (void)dealloc
{
  [(NSXPCListener *)self->_listener setDelegate:0];
  [(NSXPCListener *)self->_listener invalidate];
  recognitionProcessingWorkloop = self->_recognitionProcessingWorkloop;
  self->_recognitionProcessingWorkloop = 0;

  highPriorityRecognitionProcessingQueue = self->_highPriorityRecognitionProcessingQueue;
  self->_highPriorityRecognitionProcessingQueue = 0;

  lowPriorityRecognitionProcessingQueue = self->_lowPriorityRecognitionProcessingQueue;
  self->_lowPriorityRecognitionProcessingQueue = 0;

  serverQueue = self->_serverQueue;
  self->_serverQueue = 0;

  v7.receiver = self;
  v7.super_class = CHRemoteRecognitionServer;
  [(CHRemoteRecognitionServer *)&v7 dealloc];
}

+ (BOOL)_hasEntitlement:(id)entitlement connection:(id)connection
{
  entitlementCopy = entitlement;
  connectionCopy = connection;
  v7 = connectionCopy;
  if (connectionCopy)
  {
    [connectionCopy auditToken];
  }

  else
  {
    memset(&v15, 0, sizeof(v15));
  }

  v8 = SecTaskCreateWithAuditToken(kCFAllocatorDefault, &v15);
  v9 = v8;
  v16 = v8;
  if (v8)
  {
    v10 = SecTaskCopyValueForEntitlement(v8, entitlementCopy, 0);
    v11 = v10;
    *v15.val = v10;
    if (v10)
    {
      v12 = CFGetTypeID(v10);
      v13 = v12 == CFBooleanGetTypeID() && CFBooleanGetValue(v11) != 0;
      CFRelease(v11);
    }

    else
    {
      v13 = 0;
    }

    CFRelease(v9);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)isBundleIdentifierWhiteListed:(id)listed
{
  listedCopy = listed;
  if ([listedCopy hasPrefix:@"com.apple.PaperKit.extension"] & 1) != 0 || (objc_msgSend(listedCopy, "isEqualToString:", @"com.apple.PaperKit.MarkupPhotoEditingExtension") & 1) != 0 || (objc_msgSend(listedCopy, "isEqualToString:", @"com.apple.quicklook.extension.previewUI") & 1) != 0 || (objc_msgSend(listedCopy, "isEqualToString:", @"com.apple.quicklook.UIExtension") & 1) != 0 || (objc_msgSend(listedCopy, "isEqualToString:", @"com.apple.ScreenshotServicesService"))
  {

    return 1;
  }

  else
  {
    v5 = [listedCopy hasPrefix:@"com.apple.Compose"];

    return v5;
  }
}

- (BOOL)_shouldFulfillRemoteRequestForConnection:(id)connection error:(id *)error
{
  connectionCopy = connection;
  v7 = +[RBSProcessIdentifier identifierWithPid:](RBSProcessIdentifier, "identifierWithPid:", [connectionCopy processIdentifier]);
  v8 = [RBSProcessHandle handleForIdentifier:v7 error:0];

  currentState = [v8 currentState];
  v10 = sub_100006F4C(connectionCopy);
  if (qword_10002AD20 != -1)
  {
    dispatch_once(&qword_10002AD20, &stru_1000249F0);
  }

  v11 = qword_10002ACC8;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v24 = 138412290;
    v25 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "_shouldFulfillRemoteRequestForConnection bundleIdentifier: %@", &v24, 0xCu);
  }

  if ([currentState taskState] == 4 || objc_msgSend(currentState, "taskState") == 2)
  {
    endowmentNamespaces = [currentState endowmentNamespaces];
    v13 = [endowmentNamespaces containsObject:@"com.apple.frontboard.visibility"];

    if (qword_10002AD20 == -1)
    {
      goto LABEL_8;
    }

LABEL_22:
    dispatch_once(&qword_10002AD20, &stru_1000249F0);
    v14 = qword_10002ACC8;
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  v13 = 0;
  if (qword_10002AD20 != -1)
  {
    goto LABEL_22;
  }

LABEL_8:
  v14 = qword_10002ACC8;
  if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    goto LABEL_12;
  }

LABEL_9:
  v15 = @"NO";
  if (v13)
  {
    v15 = @"YES";
  }

  v24 = 138412546;
  v25 = v10;
  v26 = 2112;
  v27 = v15;
  _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "_shouldFulfillRemoteRequestForConnection bundleIdentifier: %@ isForegroundClient: %@", &v24, 0x16u);
LABEL_12:

  if (v13)
  {
LABEL_19:
    LOBYTE(v19) = 1;
    goto LABEL_20;
  }

  v16 = [objc_opt_class() _hasEntitlement:@"com.apple.handwritingd.allowBackgroundRecognition" connection:connectionCopy];
  if (qword_10002AD20 == -1)
  {
    v17 = qword_10002ACC8;
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_18;
    }
  }

  else
  {
    dispatch_once(&qword_10002AD20, &stru_1000249F0);
    v17 = qword_10002ACC8;
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_18;
    }
  }

  v18 = @"NO";
  if (v16)
  {
    v18 = @"YES";
  }

  v24 = 138412546;
  v25 = v10;
  v26 = 2112;
  v27 = v18;
  _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "_shouldFulfillRemoteRequestForConnection bundleIdentifier: %@ hasBackgroundRecognitionEntitlement: %@", &v24, 0x16u);
LABEL_18:

  if (v16)
  {
    goto LABEL_19;
  }

  LODWORD(v19) = [(CHRemoteRecognitionServer *)self isBundleIdentifierWhiteListed:v10];
  if (qword_10002AD20 == -1)
  {
    v21 = qword_10002ACC8;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
LABEL_26:
      v22 = @"NO";
      if (v19)
      {
        v22 = @"YES";
      }

      v24 = 138412546;
      v25 = v10;
      v26 = 2112;
      v27 = v22;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "_shouldFulfillRemoteRequestForConnection bundleIdentifier: %@ is white listed bundle: %@", &v24, 0x16u);
    }
  }

  else
  {
    dispatch_once(&qword_10002AD20, &stru_1000249F0);
    v21 = qword_10002ACC8;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_26;
    }
  }

  if (error)
  {
    v23 = v19;
  }

  else
  {
    v23 = 1;
  }

  if ((v23 & 1) == 0)
  {
    v19 = sub_100006F4C(connectionCopy);
    *error = [objc_opt_class() _unableToProcessRequestErrorWithBundleIdentifier:v19];

    LOBYTE(v19) = 0;
  }

LABEL_20:

  return v19;
}

- (void)_synthesizeStyleInventoryIfNeededWithConnection:(id)connection
{
  connectionCopy = connection;
  v4 = [CHSynthesisRequestOptions synthesisOptionsWithSynthesizeCharacterInventoryBehavior:1];
  v5 = [[CHRemoteSynthesisRequest alloc] initWithString:&stru_100025778 drawing:0 options:v4 requestType:0];
  synthesisRequestHandler = self->_synthesisRequestHandler;
  v7 = sub_100006F4C(connectionCopy);
  [(CHRemoteSynthesisRequestHandler *)synthesisRequestHandler handleRequest:v5 withReply:&stru_100024A30 bundleIdentifier:v7];
}

- (void)handleDocumentLayoutAnalysisRequest:(id)request withReply:(id)reply
{
  requestCopy = request;
  replyCopy = reply;
  if (!self->_isListening)
  {
    if (qword_10002AD20 != -1)
    {
      dispatch_once(&qword_10002AD20, &stru_1000249F0);
    }

    v8 = qword_10002ACA8;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "The listener must be resumed to handle document layout analysis requests", buf, 2u);
    }

    if (!self->_isListening)
    {
      if (qword_10002AD20 == -1)
      {
        v9 = qword_10002ACA8;
        if (!os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
        {
LABEL_10:

          goto LABEL_11;
        }
      }

      else
      {
        dispatch_once(&qword_10002AD20, &stru_1000249F0);
        v9 = qword_10002ACA8;
        if (!os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_10;
        }
      }

      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_FAULT, "The listener must be resumed to handle document layout analysis requests", v16, 2u);
      goto LABEL_10;
    }
  }

LABEL_11:
  v10 = +[NSXPCConnection currentConnection];
  v15 = 0;
  v11 = [(CHRemoteRecognitionServer *)self _shouldFulfillRemoteRequestForConnection:v10 error:&v15];
  v12 = v15;
  if (v11)
  {
    documentLayoutAnalysisRequestHandler = self->_documentLayoutAnalysisRequestHandler;
    v14 = sub_100006F4C(v10);
    [(CHRemoteDocumentLayoutAnalysisRequestHandler *)documentLayoutAnalysisRequestHandler handleRequest:requestCopy withReply:replyCopy bundleIdentifier:v14];
  }

  else
  {
    replyCopy[2](replyCopy, 0, v12);
  }
}

- (void)handleRecognitionRequest:(id)request withReply:(id)reply
{
  requestCopy = request;
  replyCopy = reply;
  if (!self->_isListening)
  {
    if (qword_10002AD20 != -1)
    {
      dispatch_once(&qword_10002AD20, &stru_1000249F0);
    }

    v8 = qword_10002ACA8;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "The listener must be resumed to handle recognition requests", buf, 2u);
    }

    if (!self->_isListening)
    {
      if (qword_10002AD20 == -1)
      {
        v9 = qword_10002ACA8;
        if (!os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
        {
LABEL_10:

          goto LABEL_11;
        }
      }

      else
      {
        dispatch_once(&qword_10002AD20, &stru_1000249F0);
        v9 = qword_10002ACA8;
        if (!os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_10;
        }
      }

      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_FAULT, "The listener must be resumed to handle recognition requests", v16, 2u);
      goto LABEL_10;
    }
  }

LABEL_11:
  v10 = +[NSXPCConnection currentConnection];
  v15 = 0;
  v11 = [(CHRemoteRecognitionServer *)self _shouldFulfillRemoteRequestForConnection:v10 error:&v15];
  v12 = v15;
  if (v11)
  {
    recognitionRequestHandler = self->_recognitionRequestHandler;
    v14 = sub_100006F4C(v10);
    [(CHRemoteRecognitionRequestHandler *)recognitionRequestHandler handleRequest:requestCopy withReply:replyCopy bundleIdentifier:v14];
  }

  else
  {
    (*(replyCopy + 2))(replyCopy, 0, 0, v12);
  }
}

- (void)transcriptionPathsForTokenizedTextResult:(id)result recognitionRequest:(id)request withReply:(id)reply
{
  resultCopy = result;
  requestCopy = request;
  replyCopy = reply;
  if (!self->_isListening)
  {
    if (qword_10002AD20 != -1)
    {
      dispatch_once(&qword_10002AD20, &stru_1000249F0);
    }

    v11 = qword_10002ACA8;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "The listener must be resumed to handle recognition requests", buf, 2u);
    }

    if (!self->_isListening)
    {
      if (qword_10002AD20 == -1)
      {
        v12 = qword_10002ACA8;
        if (!os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
        {
LABEL_10:

          goto LABEL_11;
        }
      }

      else
      {
        dispatch_once(&qword_10002AD20, &stru_1000249F0);
        v12 = qword_10002ACA8;
        if (!os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_10;
        }
      }

      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_FAULT, "The listener must be resumed to handle recognition requests", v19, 2u);
      goto LABEL_10;
    }
  }

LABEL_11:
  v13 = +[NSXPCConnection currentConnection];
  v18 = 0;
  v14 = [(CHRemoteRecognitionServer *)self _shouldFulfillRemoteRequestForConnection:v13 error:&v18];
  v15 = v18;
  if (v14)
  {
    recognitionRequestHandler = self->_recognitionRequestHandler;
    v17 = sub_100006F4C(v13);
    [(CHRemoteRecognitionRequestHandler *)recognitionRequestHandler transcriptionPathsForTokenizedTextResult:resultCopy recognitionRequest:requestCopy withReply:replyCopy bundleIdentifier:v17];
  }

  else
  {
    (*(replyCopy + 2))(replyCopy, 0, 0, v15);
  }
}

- (void)handleRequest:(id)request withReply:(id)reply
{
  requestCopy = request;
  replyCopy = reply;
  if (!self->_isListening)
  {
    if (qword_10002AD20 != -1)
    {
      dispatch_once(&qword_10002AD20, &stru_1000249F0);
    }

    v8 = qword_10002ACA8;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "The listener must be resumed to handle synthesis requests", buf, 2u);
    }

    if (!self->_isListening)
    {
      if (qword_10002AD20 == -1)
      {
        v9 = qword_10002ACA8;
        if (!os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
        {
LABEL_10:

          goto LABEL_11;
        }
      }

      else
      {
        dispatch_once(&qword_10002AD20, &stru_1000249F0);
        v9 = qword_10002ACA8;
        if (!os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_10;
        }
      }

      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_FAULT, "The listener must be resumed to handle synthesis requests", buf, 2u);
      goto LABEL_10;
    }
  }

LABEL_11:
  v10 = +[NSXPCConnection currentConnection];
  v17 = 0;
  v11 = [(CHRemoteRecognitionServer *)self _shouldFulfillRemoteRequestForConnection:v10 error:&v17];
  v12 = v17;
  if (v11)
  {
    if (qword_10002AD20 != -1)
    {
      dispatch_once(&qword_10002AD20, &stru_1000249F0);
    }

    v13 = qword_10002ACA8;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v19 = requestCopy;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "Handling remote synthesis request: %@", buf, 0xCu);
    }

    synthesisRequestHandler = self->_synthesisRequestHandler;
    v15 = sub_100006F4C(v10);
    [(CHRemoteSynthesisRequestHandler *)synthesisRequestHandler handleRequest:requestCopy withReply:replyCopy bundleIdentifier:v15];
  }

  else
  {
    if (qword_10002AD20 != -1)
    {
      dispatch_once(&qword_10002AD20, &stru_1000249F0);
    }

    v16 = qword_10002ACF0;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v19 = v12;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Handling remote synthesis request was not fullfilled due to: %@", buf, 0xCu);
    }

    replyCopy[2](replyCopy, 0, v12);
  }
}

- (void)handleInventoryRequest:(id)request withReply:(id)reply
{
  requestCopy = request;
  replyCopy = reply;
  if (!self->_isListening)
  {
    if (qword_10002AD20 != -1)
    {
      dispatch_once(&qword_10002AD20, &stru_1000249F0);
    }

    v8 = qword_10002ACA8;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "The listener must be resumed to handle inventory requests", buf, 2u);
    }

    if (!self->_isListening)
    {
      if (qword_10002AD20 == -1)
      {
        v9 = qword_10002ACA8;
        if (!os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
        {
LABEL_10:

          goto LABEL_11;
        }
      }

      else
      {
        dispatch_once(&qword_10002AD20, &stru_1000249F0);
        v9 = qword_10002ACA8;
        if (!os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_10;
        }
      }

      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_FAULT, "The listener must be resumed to handle inventory requests", buf, 2u);
      goto LABEL_10;
    }
  }

LABEL_11:
  if (qword_10002AC90 != -1)
  {
    dispatch_once(&qword_10002AC90, &stru_100024A50);
  }

  v10 = +[NSXPCConnection currentConnection];
  v18 = 0;
  v11 = [(CHRemoteRecognitionServer *)self _shouldFulfillRemoteRequestForConnection:v10 error:&v18];
  v12 = v18;
  if (!v11)
  {
    goto LABEL_22;
  }

  v13 = sub_100006F4C(v10);
  v14 = [qword_10002AC88 containsObject:v13];
  if (!v13)
  {
    if ((os_variant_has_internal_diagnostics() | v14))
    {
      goto LABEL_16;
    }

LABEL_22:
    replyCopy[2](replyCopy, 0, v12);
    goto LABEL_23;
  }

  if ((v14 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_16:
  if (qword_10002AD20 != -1)
  {
    dispatch_once(&qword_10002AD20, &stru_1000249F0);
  }

  v15 = qword_10002ACA8;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v20 = requestCopy;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "Handling remote inventory request: %@", buf, 0xCu);
  }

  synthesisRequestHandler = self->_synthesisRequestHandler;
  v17 = sub_100006F4C(v10);
  [(CHRemoteSynthesisRequestHandler *)synthesisRequestHandler handleInventoryRequest:requestCopy withReply:replyCopy bundleIdentifier:v17];

  [(CHRemoteRecognitionServer *)self _synthesizeStyleInventoryIfNeededWithConnection:v10];
LABEL_23:
}

- (void)handleInventoryStatusRequestWithReply:(id)reply
{
  replyCopy = reply;
  if (!self->_isListening)
  {
    if (qword_10002AD20 != -1)
    {
      dispatch_once(&qword_10002AD20, &stru_1000249F0);
    }

    v5 = qword_10002ACA8;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "The listener must be resumed to handle inventory status requests", buf, 2u);
    }

    if (!self->_isListening)
    {
      if (qword_10002AD20 == -1)
      {
        v6 = qword_10002ACA8;
        if (!os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
        {
LABEL_10:

          goto LABEL_11;
        }
      }

      else
      {
        dispatch_once(&qword_10002AD20, &stru_1000249F0);
        v6 = qword_10002ACA8;
        if (!os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_10;
        }
      }

      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_FAULT, "The listener must be resumed to handle inventory status requests", v15, 2u);
      goto LABEL_10;
    }
  }

LABEL_11:
  v7 = +[NSXPCConnection currentConnection];
  v14 = 0;
  v8 = [(CHRemoteRecognitionServer *)self _shouldFulfillRemoteRequestForConnection:v7 error:&v14];
  v9 = v14;
  if (v8)
  {
    if (qword_10002AD20 != -1)
    {
      dispatch_once(&qword_10002AD20, &stru_1000249F0);
    }

    v10 = qword_10002ACA8;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "Handling remote inventory status request", v13, 2u);
    }

    synthesisRequestHandler = self->_synthesisRequestHandler;
    v12 = sub_100006F4C(v7);
    [(CHRemoteSynthesisRequestHandler *)synthesisRequestHandler handleInventoryStatusRequestWithReply:replyCopy bundleIdentifier:v12];
  }

  else
  {
    replyCopy[2](replyCopy, 0, v9);
  }
}

- (void)handleInventoryContentCheckRequest:(id)request withReply:(id)reply
{
  requestCopy = request;
  replyCopy = reply;
  if (!self->_isListening)
  {
    if (qword_10002AD20 != -1)
    {
      dispatch_once(&qword_10002AD20, &stru_1000249F0);
    }

    v8 = qword_10002ACA8;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "The listener must be resumed to handle inventory status requests", buf, 2u);
    }

    if (!self->_isListening)
    {
      if (qword_10002AD20 == -1)
      {
        v9 = qword_10002ACA8;
        if (!os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
        {
LABEL_10:

          goto LABEL_11;
        }
      }

      else
      {
        dispatch_once(&qword_10002AD20, &stru_1000249F0);
        v9 = qword_10002ACA8;
        if (!os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_10;
        }
      }

      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_FAULT, "The listener must be resumed to handle inventory status requests", v18, 2u);
      goto LABEL_10;
    }
  }

LABEL_11:
  v10 = +[NSXPCConnection currentConnection];
  v17 = 0;
  v11 = [(CHRemoteRecognitionServer *)self _shouldFulfillRemoteRequestForConnection:v10 error:&v17];
  v12 = v17;
  if (v11)
  {
    if (qword_10002AD20 != -1)
    {
      dispatch_once(&qword_10002AD20, &stru_1000249F0);
    }

    v13 = qword_10002ACA8;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "Handling remote inventory containing sample request", v16, 2u);
    }

    synthesisRequestHandler = self->_synthesisRequestHandler;
    v15 = sub_100006F4C(v10);
    [(CHRemoteSynthesisRequestHandler *)synthesisRequestHandler handleInventoryContainingSampleRequest:requestCopy withReply:replyCopy bundleIdentifier:v15];
  }

  else
  {
    replyCopy[2](replyCopy, 0, v12);
  }
}

- (void)handleAwaitInventoryIdleRequestWithReply:(id)reply
{
  replyCopy = reply;
  if (!self->_isListening)
  {
    if (qword_10002AD20 != -1)
    {
      dispatch_once(&qword_10002AD20, &stru_1000249F0);
    }

    v5 = qword_10002ACA8;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "The listener must be resumed to handle await inventory idle requests", buf, 2u);
    }

    if (!self->_isListening)
    {
      if (qword_10002AD20 == -1)
      {
        v6 = qword_10002ACA8;
        if (!os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
        {
LABEL_10:

          goto LABEL_11;
        }
      }

      else
      {
        dispatch_once(&qword_10002AD20, &stru_1000249F0);
        v6 = qword_10002ACA8;
        if (!os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_10;
        }
      }

      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_FAULT, "The listener must be resumed to handle await inventory idle requests", v15, 2u);
      goto LABEL_10;
    }
  }

LABEL_11:
  v7 = +[NSXPCConnection currentConnection];
  v14 = 0;
  v8 = [(CHRemoteRecognitionServer *)self _shouldFulfillRemoteRequestForConnection:v7 error:&v14];
  v9 = v14;
  if (v8)
  {
    if (qword_10002AD20 != -1)
    {
      dispatch_once(&qword_10002AD20, &stru_1000249F0);
    }

    v10 = qword_10002ACA8;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "Handling await inventory idle request", v13, 2u);
    }

    synthesisRequestHandler = self->_synthesisRequestHandler;
    v12 = sub_100006F4C(v7);
    [(CHRemoteSynthesisRequestHandler *)synthesisRequestHandler handleAwaitInventoryIdleRequestWithReply:replyCopy bundleIdentifier:v12];
  }

  else
  {
    replyCopy[2](replyCopy, 0, v9);
  }
}

- (void)handleSketchRecognitionRequest:(id)request withReply:(id)reply
{
  requestCopy = request;
  replyCopy = reply;
  if (!self->_isListening)
  {
    if (qword_10002AD20 != -1)
    {
      dispatch_once(&qword_10002AD20, &stru_1000249F0);
    }

    v8 = qword_10002ACA8;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "The listener must be resumed to handle sketch recognition requests", buf, 2u);
    }

    if (!self->_isListening)
    {
      if (qword_10002AD20 == -1)
      {
        v9 = qword_10002ACA8;
        if (!os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
        {
LABEL_10:

          goto LABEL_11;
        }
      }

      else
      {
        dispatch_once(&qword_10002AD20, &stru_1000249F0);
        v9 = qword_10002ACA8;
        if (!os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_10;
        }
      }

      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_FAULT, "The listener must be resumed to handle sketch recognition requests", v16, 2u);
      goto LABEL_10;
    }
  }

LABEL_11:
  v10 = +[NSXPCConnection currentConnection];
  v15 = 0;
  v11 = [(CHRemoteRecognitionServer *)self _shouldFulfillRemoteRequestForConnection:v10 error:&v15];
  v12 = v15;
  if (v11)
  {
    recognitionRequestHandler = self->_recognitionRequestHandler;
    v14 = sub_100006F4C(v10);
    [(CHRemoteRecognitionRequestHandler *)recognitionRequestHandler handleSketchRequest:requestCopy withReply:replyCopy bundleIdentifier:v14];
  }

  else
  {
    replyCopy[2](replyCopy, 0, v12);
  }
}

- (void)handleLineWrappingRequest:(id)request withReply:(id)reply
{
  requestCopy = request;
  replyCopy = reply;
  if (!self->_isListening)
  {
    if (qword_10002AD20 != -1)
    {
      dispatch_once(&qword_10002AD20, &stru_1000249F0);
    }

    v8 = qword_10002ACA8;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "The listener must be resumed to handle line wrapping requests", buf, 2u);
    }

    if (!self->_isListening)
    {
      if (qword_10002AD20 == -1)
      {
        v9 = qword_10002ACA8;
        if (!os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
        {
LABEL_10:

          goto LABEL_11;
        }
      }

      else
      {
        dispatch_once(&qword_10002AD20, &stru_1000249F0);
        v9 = qword_10002ACA8;
        if (!os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_10;
        }
      }

      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_FAULT, "The listener must be resumed to handle line wrapping requests", v16, 2u);
      goto LABEL_10;
    }
  }

LABEL_11:
  v10 = +[NSXPCConnection currentConnection];
  v15 = 0;
  v11 = [(CHRemoteRecognitionServer *)self _shouldFulfillRemoteRequestForConnection:v10 error:&v15];
  v12 = v15;
  if (v11)
  {
    lineWrappingHandler = self->_lineWrappingHandler;
    v14 = sub_100006F4C(v10);
    [(CHRemoteLineWrappingRequestHandler *)lineWrappingHandler handleRequest:requestCopy withReply:replyCopy bundleIdentifier:v14];
  }

  else
  {
    replyCopy[2](replyCopy, 0, v12);
  }
}

- (void)handleSessionStateUpdate:(id)update
{
  updateCopy = update;
  if (!self->_isListening)
  {
    if (qword_10002AD20 != -1)
    {
      dispatch_once(&qword_10002AD20, &stru_1000249F0);
    }

    v5 = qword_10002ACA8;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "The listener must be resumed to handle recognition requests", buf, 2u);
    }

    if (!self->_isListening)
    {
      if (qword_10002AD20 == -1)
      {
        v6 = qword_10002ACA8;
        if (!os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
        {
LABEL_10:

          goto LABEL_11;
        }
      }

      else
      {
        dispatch_once(&qword_10002AD20, &stru_1000249F0);
        v6 = qword_10002ACA8;
        if (!os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_10;
        }
      }

      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_FAULT, "The listener must be resumed to handle recognition requests", buf, 2u);
      goto LABEL_10;
    }
  }

LABEL_11:
  serverQueue = self->_serverQueue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100009884;
  v9[3] = &unk_100024A78;
  v10 = updateCopy;
  selfCopy = self;
  v8 = updateCopy;
  dispatch_async(serverQueue, v9);
}

- (void)handlePowerLoggingRequest:(id)request
{
  requestCopy = request;
  if (!self->_isListening)
  {
    if (qword_10002AD20 != -1)
    {
      dispatch_once(&qword_10002AD20, &stru_1000249F0);
    }

    v5 = qword_10002ACA8;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "The listener must be resumed to power logging requests", buf, 2u);
    }

    if (!self->_isListening)
    {
      if (qword_10002AD20 == -1)
      {
        v6 = qword_10002ACA8;
        if (!os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
        {
LABEL_10:

          goto LABEL_11;
        }
      }

      else
      {
        dispatch_once(&qword_10002AD20, &stru_1000249F0);
        v6 = qword_10002ACA8;
        if (!os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_10;
        }
      }

      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_FAULT, "The listener must be resumed to power logging requests", v7, 2u);
      goto LABEL_10;
    }
  }

LABEL_11:
  [(CHRemotePowerLoggingRequestHandler *)self->_powerLoggingRequestHandler handleRequest:requestCopy];
}

- (void)handleSynthesisStringChunkingRequest:(id)request withReply:(id)reply
{
  requestCopy = request;
  replyCopy = reply;
  if (!self->_isListening)
  {
    if (qword_10002AD20 != -1)
    {
      dispatch_once(&qword_10002AD20, &stru_1000249F0);
    }

    v8 = qword_10002ACA8;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "The listener must be resumed to handle chunking string requests", buf, 2u);
    }

    if (!self->_isListening)
    {
      if (qword_10002AD20 == -1)
      {
        v9 = qword_10002ACA8;
        if (!os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
        {
LABEL_10:

          goto LABEL_11;
        }
      }

      else
      {
        dispatch_once(&qword_10002AD20, &stru_1000249F0);
        v9 = qword_10002ACA8;
        if (!os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_10;
        }
      }

      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_FAULT, "The listener must be resumed to handle chunking string requests", v16, 2u);
      goto LABEL_10;
    }
  }

LABEL_11:
  v10 = +[NSXPCConnection currentConnection];
  v15 = 0;
  v11 = [(CHRemoteRecognitionServer *)self _shouldFulfillRemoteRequestForConnection:v10 error:&v15];
  v12 = v15;
  if (v11)
  {
    synthesisRequestHandler = self->_synthesisRequestHandler;
    v14 = sub_100006F4C(v10);
    [(CHRemoteSynthesisRequestHandler *)synthesisRequestHandler handleSynthesisStringChunkingRequest:requestCopy withReply:replyCopy bundleIdentifier:v14];
  }

  else
  {
    replyCopy[2](replyCopy, 0, v12);
  }
}

- (void)optimizeResourceUsage
{
  v3 = dispatch_time(0, 12000000000);
  serverQueue = self->_serverQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100009F2C;
  block[3] = &unk_100024AA0;
  block[4] = self;
  dispatch_after(v3, serverQueue, block);
}

- (void)resumeConnectionIfIdle
{
  if (!self->_isListening)
  {
    [(NSXPCListener *)self->_listener resume];
    self->_isListening = 1;
  }
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___CHRemoteRequestProtocol];
  [connectionCopy setExportedInterface:v6];

  [connectionCopy setExportedObject:self];
  [connectionCopy resume];

  return 1;
}

+ (id)_unableToProcessRequestErrorWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  identifierCopy = [NSString stringWithFormat:@"Unable to fulfill request for %@. The application does not have permission to run remote recognition or synthesis at this time", identifierCopy];
  v8[0] = NSLocalizedDescriptionKey;
  v8[1] = NSLocalizedFailureReasonErrorKey;
  v9[0] = identifierCopy;
  v9[1] = @"Requests cannot be executed because this app may not have permission to run remote recognition or synthesis in the background, or at all.";
  v8[2] = NSLocalizedRecoverySuggestionErrorKey;
  v9[2] = @"Re-submit the request from a permitted client application in an acceptable state";
  v5 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:3];
  v6 = [NSError errorWithDomain:@"com.apple.corehandwriting" code:-1003 userInfo:v5];

  return v6;
}

@end