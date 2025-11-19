@interface SDClassroomBrowser
+ (id)sharedBrowser;
- (SDClassroomBrowser)init;
- (__SFNode)convertShareTargetToNode:(id)a3;
- (id)convertAdvancedDescriptionToSimple:(id)a3;
- (id)operationNameForPersonID:(id)a3 sessionID:(id)a4 clientBundleID:(id)a5;
- (void)browserInvalidated;
- (void)cancelSendingItemsToPersonWithID:(id)a3 sessionID:(id)a4 clientBundleID:(id)a5;
- (void)operationEnded:(id)a3;
- (void)operationMadeProgress:(id)a3;
- (void)operationStarted:(id)a3;
- (void)potentiallyInvalidate;
- (void)shareTargetBrowser:(id)a3 didFindTargets:(id)a4;
- (void)shareTargetBrowser:(id)a3 didInterruptWithError:(id)a4;
- (void)shareTargetBrowser:(id)a3 didRemoveTargets:(id)a4;
- (void)start;
- (void)startSendingItems:(id)a3 withProperties:(id)a4 toPersonWithID:(id)a5 clientBundleID:(id)a6 airDropClientDelegate:(id)a7;
- (void)stop;
- (void)transferConcluded;
@end

@implementation SDClassroomBrowser

+ (id)sharedBrowser
{
  if (qword_100989A20 != -1)
  {
    sub_1000737E0();
  }

  v3 = qword_100989A28;

  return v3;
}

- (SDClassroomBrowser)init
{
  v10.receiver = self;
  v10.super_class = SDClassroomBrowser;
  v2 = [(SDClassroomBrowser *)&v10 init];
  v3 = v2;
  if (v2)
  {
    browser = v2->_browser;
    v2->_browser = 0;

    v3->_clientCount = 0;
    v5 = objc_opt_new();
    personIDToShareTarget = v3->_personIDToShareTarget;
    v3->_personIDToShareTarget = v5;

    v7 = objc_opt_new();
    operationsQueue = v3->_operationsQueue;
    v3->_operationsQueue = v7;

    [(NSOperationQueue *)v3->_operationsQueue setQualityOfService:25];
  }

  return v3;
}

- (void)start
{
  ++self->_clientCount;
  if (!self->_browser)
  {
    v4 = [objc_alloc(off_10096FBC0()) initWithDelegate:self queue:&_dispatch_main_q];
    browser = self->_browser;
    self->_browser = v4;

    v6 = self->_browser;

    [(CRKShareTargetBrowser *)v6 resume];
  }
}

- (void)stop
{
  clientCount = self->_clientCount;
  v3 = __OFSUB__(clientCount, 1);
  v4 = clientCount - 1;
  if (v4 < 0 == v3)
  {
    self->_clientCount = v4;
    if (!v4)
    {
      [(SDClassroomBrowser *)self potentiallyInvalidate];
    }
  }
}

- (void)transferConcluded
{
  if (![(NSOperationQueue *)self->_operationsQueue operationCount])
  {

    [(SDClassroomBrowser *)self potentiallyInvalidate];
  }
}

- (void)potentiallyInvalidate
{
  if (self->_browser && ![(NSOperationQueue *)self->_operationsQueue operationCount]&& !self->_clientCount)
  {
    [(CRKShareTargetBrowser *)self->_browser invalidate];
    [(SDClassroomBrowser *)self browserInvalidated];
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 postNotificationName:@"com.apple.sharingd.ClassroomChanged" object:0 userInfo:0];
  }
}

- (void)browserInvalidated
{
  browser = self->_browser;
  self->_browser = 0;

  nodes = self->_nodes;
  self->_nodes = 0;

  [(NSMutableDictionary *)self->_personIDToShareTarget removeAllObjects];
  operationsQueue = self->_operationsQueue;

  [(NSOperationQueue *)operationsQueue cancelAllOperations];
}

- (void)startSendingItems:(id)a3 withProperties:(id)a4 toPersonWithID:(id)a5 clientBundleID:(id)a6 airDropClientDelegate:(id)a7
{
  v63 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v61 = self;
  v62 = [(NSMutableDictionary *)self->_personIDToShareTarget objectForKeyedSubscript:v13];
  v65 = v12;
  v16 = [v12 mutableCopy];
  v17 = [v16 objectForKeyedSubscript:kSFOperationSessionIDKey];
  v64 = [v16 objectForKeyedSubscript:kSFOperationItemsDescriptionKey];
  v18 = kSFOperationFileIconKey;
  v19 = [v16 objectForKeyedSubscript:kSFOperationFileIconKey];

  if (v19)
  {
    v60 = sub_100117CB4(v19, 0);
  }

  else
  {
    v60 = 0;
  }

  v20 = [NSProgress alloc];
  v21 = [v20 sf_initWithAppBundle:v14 sessionID:v17 andPersonRealName:v13];

  v71[0] = _NSConcreteStackBlock;
  v71[1] = 3221225472;
  v71[2] = sub_100072410;
  v71[3] = &unk_1008CE158;
  value = v13;
  v72 = value;
  v22 = v17;
  v23 = v61;
  v73 = v22;
  v74 = v61;
  v24 = v14;
  v75 = v24;
  [v21 setCancellationHandler:v71];
  [v21 _publish];
  [v21 setSf_transferState:2];
  v26 = v62;
  v25 = v63;
  if (v62)
  {
    if ([v63 count])
    {
      v27 = [v65 count];
      if (v15)
      {
        if (v24 && value && v27)
        {
          v59 = v22;
          v58 = v24;
          [v16 removeObjectForKey:v18];
          [v16 removeObjectForKey:kSFOperationSmallFileIconKey];
          v28 = objc_opt_new();
          v67 = 0u;
          v68 = 0u;
          v69 = 0u;
          v70 = 0u;
          v29 = v63;
          v30 = [v29 countByEnumeratingWithState:&v67 objects:v76 count:16];
          if (!v30)
          {
            goto LABEL_23;
          }

          v31 = v30;
          v32 = *v68;
          while (1)
          {
            for (i = 0; i != v31; i = i + 1)
            {
              if (*v68 != v32)
              {
                objc_enumerationMutation(v29);
              }

              v34 = *(*(&v67 + 1) + 8 * i);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v35 = v34;
              }

              else
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  continue;
                }

                v35 = [NSURL URLWithString:v34];
              }

              v36 = v35;
              if (v35)
              {
                [v28 addObject:v35];
              }
            }

            v31 = [v29 countByEnumeratingWithState:&v67 objects:v76 count:16];
            if (!v31)
            {
LABEL_23:

              v37 = airdrop_log();
              if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
              {
                v38 = [v29 count];
                *buf = 67109378;
                *v78 = v38;
                *&v78[4] = 2112;
                *&v78[6] = value;
                _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "SDClassroomBrowser sending %d item(s) to %@", buf, 0x12u);
              }

              v26 = v62;
              if ([v62 isInstructor])
              {
                v39 = [(SDClassroomBrowser *)v61 convertAdvancedDescriptionToSimple:v64];

                v40 = v39;
              }

              else
              {
                v40 = v64;
              }

              [v16 setObject:&off_10090B7D8 forKeyedSubscript:kSFOperationFilesCopiedKey];
              v43 = [v62 displayName];
              [v16 setObject:v43 forKeyedSubscript:kSFOperationReceiverCompositeNameKey];

              v44 = [v62 secondaryName];
              [v16 setObject:v44 forKeyedSubscript:kSFOperationReceiverComputerNameKey];

              v45 = [v62 displayName];
              [v16 setObject:v45 forKeyedSubscript:kSFOperationReceiverFirstNameKey];

              v46 = [v62 displayName];
              [v16 setObject:v46 forKeyedSubscript:kSFOperationReceiverLastNameKey];

              [v16 setObject:@"Classroom" forKeyedSubscript:kSFOperationReceiverModelNameKey];
              v47 = [v62 identifier];
              [v16 setObject:v47 forKeyedSubscript:kSFOperationReceiverIDKey];

              v64 = v40;
              v48 = [v62 operationToSendItems:v28 fromBundleIdentifier:v58 description:v40 previewImageData:v60];
              v22 = v59;
              v49 = [(SDClassroomBrowser *)v61 operationNameForPersonID:value sessionID:v59 clientBundleID:v58];
              [v48 setName:v49];

              [v48 addTarget:v61 selector:"operationStarted:" forOperationEvents:1 delegateQueue:&_dispatch_main_q];
              [v48 addTarget:v61 selector:"operationMadeProgress:" forOperationEvents:8 delegateQueue:&_dispatch_main_q];

              [v48 addTarget:v61 selector:"operationEnded:" forOperationEvents:6 delegateQueue:&_dispatch_main_q];
              v24 = v58;
              objc_setAssociatedObject(v48, "SFClassroomPersonID", value, 0x301);
              objc_setAssociatedObject(v48, "SFClassroomDelegate", v15, 0x301);
              objc_setAssociatedObject(v48, "SFClassroomProgress", v21, 0x301);
              objc_setAssociatedObject(v48, "SFClassroomResults", v16, 0x301);
              [(NSOperationQueue *)v61->_operationsQueue addOperation:v48];

              v25 = v63;
              goto LABEL_29;
            }
          }
        }
      }
    }
  }

  v41 = airdrop_log();
  if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
  {
    if (v62)
    {
      v50 = "yes";
    }

    else
    {
      v50 = "no";
    }

    v51 = v15;
    if ([v63 count])
    {
      v52 = "yes";
    }

    else
    {
      v52 = "no";
    }

    v53 = [v65 count];
    *buf = 136316418;
    if (v53)
    {
      v54 = "yes";
    }

    else
    {
      v54 = "no";
    }

    *v78 = v50;
    v26 = v62;
    v25 = v63;
    if (value)
    {
      v55 = "yes";
    }

    else
    {
      v55 = "no";
    }

    *&v78[8] = 2080;
    if (v24)
    {
      v56 = "yes";
    }

    else
    {
      v56 = "no";
    }

    *&v78[10] = v52;
    v15 = v51;
    v23 = v61;
    if (v15)
    {
      v57 = "yes";
    }

    else
    {
      v57 = "no";
    }

    v79 = 2080;
    v80 = v54;
    v81 = 2080;
    v82 = v55;
    v83 = 2080;
    v84 = v56;
    v85 = 2080;
    v86 = v57;
    _os_log_error_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "failed send via classroom: shareTarget %s, items.count %s, _properties.count %s, self.personID %s, _clientBundleID %s, _delegate %s", buf, 0x3Eu);
  }

  v28 = sub_100092BE0(-1, 0);
  [v16 setObject:v28 forKeyedSubscript:kSFOperationErrorKey];
  v42 = [v28 localizedDescription];
  [v21 sf_failedWithError:v42];

  [v15 airDropClient:0 event:10 withResults:v16];
  [v21 _unpublish];
  [(SDClassroomBrowser *)v23 transferConcluded];
LABEL_29:
}

- (void)cancelSendingItemsToPersonWithID:(id)a3 sessionID:(id)a4 clientBundleID:(id)a5
{
  v6 = [(SDClassroomBrowser *)self operationNameForPersonID:a3 sessionID:a4 clientBundleID:a5];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [(NSOperationQueue *)self->_operationsQueue operations];
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        v13 = [v12 name];
        v14 = [v13 isEqual:v6];

        if (v14)
        {
          [v12 cancel];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  [(SDClassroomBrowser *)self transferConcluded];
}

- (id)convertAdvancedDescriptionToSimple:(id)a3
{
  v3 = a3;
  v4 = SFStringIsJSON();
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = airdrop_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        sub_1000737F4();
      }

      v6 = [v4 objectForKeyedSubscript:@"SFAirDropActivitySubjectMain"];

      v3 = v6;
    }

    else
    {

      v3 = 0;
    }
  }

  return v3;
}

- (id)operationNameForPersonID:(id)a3 sessionID:(id)a4 clientBundleID:(id)a5
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [NSArray arrayWithObjects:&v13 count:3];

  v11 = [v10 componentsJoinedByString:{@"_", v13, v14, v15}];

  return v11;
}

- (void)operationStarted:(id)a3
{
  v3 = a3;
  v4 = objc_getAssociatedObject(v3, "SFClassroomResults");
  v5 = objc_getAssociatedObject(v3, "SFClassroomPersonID");
  v6 = objc_getAssociatedObject(v3, "SFClassroomProgress");
  [v6 setSf_transferState:3];
  [v6 setTotalUnitCount:{objc_msgSend(v3, "totalUnitCount")}];
  [v6 setCompletedUnitCount:{objc_msgSend(v3, "completedUnitCount")}];
  v7 = airdrop_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "SDClassroomBrowser started send operation to %@", &v9, 0xCu);
  }

  v8 = objc_getAssociatedObject(v3, "SFClassroomDelegate");
  [v8 airDropClient:0 event:11 withResults:v4];
  [v8 airDropClient:0 event:3 withResults:v4];
  [v8 airDropClient:0 event:6 withResults:v4];
}

- (void)operationMadeProgress:(id)a3
{
  v3 = a3;
  v4 = objc_getAssociatedObject(v3, "SFClassroomProgress");
  v5 = objc_getAssociatedObject(v3, "SFClassroomPersonID");
  [v4 setTotalUnitCount:{objc_msgSend(v3, "totalUnitCount")}];
  [v4 setCompletedUnitCount:{objc_msgSend(v3, "completedUnitCount")}];
  v6 = airdrop_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_100073868(v5, v4);
  }

  v7 = objc_getAssociatedObject(v3, "SFClassroomDelegate");
  v8 = objc_getAssociatedObject(v3, "SFClassroomResults");
  v9 = kSFOperationTotalBytesKey;
  v10 = [v8 objectForKeyedSubscript:kSFOperationTotalBytesKey];

  if (!v10)
  {
    v11 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v4 totalUnitCount]);
    [v8 setObject:v11 forKeyedSubscript:v9];

    [v8 setObject:&off_10090B7D8 forKeyedSubscript:kSFOperationUsePKZip];
    [v7 airDropClient:0 event:5 withResults:v8];
  }

  v12 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v4 completedUnitCount]);
  [v8 setObject:v12 forKeyedSubscript:kSFOperationBytesCopiedKey];

  [v8 setObject:&off_10090B7D8 forKeyedSubscript:kSFOperationTimeRemainingKey];
  [v7 airDropClient:0 event:7 withResults:v8];
}

- (void)operationEnded:(id)a3
{
  v4 = a3;
  v5 = objc_getAssociatedObject(v4, "SFClassroomPersonID");
  v6 = objc_getAssociatedObject(v4, "SFClassroomDelegate");
  v7 = objc_getAssociatedObject(v4, "SFClassroomProgress");
  v8 = objc_getAssociatedObject(v4, "SFClassroomResults");
  v9 = [v4 error];

  if (!v9)
  {
    v12 = airdrop_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v23 = 138412290;
      *&v23[4] = v5;
      v13 = "SDClassroomBrowser finished send operation to %@";
      goto LABEL_7;
    }

LABEL_8:

    [v7 setSf_transferState:6];
    v14 = v6;
    v15 = 9;
LABEL_9:
    [v14 airDropClient:0 event:v15 withResults:{v8, *v23}];
    goto LABEL_10;
  }

  v10 = [v4 error];
  v11 = [v10 code];

  if (v11 == 404)
  {
    v12 = airdrop_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v23 = 138412290;
      *&v23[4] = v5;
      v13 = "SDClassroomBrowser sender cancelled send operation to %@";
LABEL_7:
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v13, v23, 0xCu);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v16 = [v4 error];
  v17 = [v16 code];

  v18 = airdrop_log();
  v19 = v18;
  if (v17 == 18)
  {
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *v23 = 138412290;
      *&v23[4] = v5;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "SDClassroomBrowser receiver cancelled send operation to %@", v23, 0xCu);
    }

    [v7 setSf_transferState:4];
    v14 = v6;
    v15 = 4;
    goto LABEL_9;
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    sub_100073920(v5, v4, v19);
  }

  v20 = [v4 error];
  v21 = sub_100092BE0(-1, v20);

  [v8 setObject:v21 forKeyedSubscript:kSFOperationErrorKey];
  v22 = [v21 localizedDescription];
  [v7 sf_failedWithError:v22];

  [v6 airDropClient:0 event:10 withResults:v8];
LABEL_10:
  [v7 _unpublish];
  [(SDClassroomBrowser *)self transferConcluded];
}

- (__SFNode)convertShareTargetToNode:(id)a3
{
  v4 = a3;
  v5 = [v4 displayName];
  v6 = [v4 identifier];
  v7 = SFNodeCreate();

  v8 = [v4 secondaryName];
  SFNodeSetSecondaryName();

  v9 = [v4 iconImageData];
  if (v9)
  {
    v10 = v9;
    v11 = [UIImage imageWithData:v9];
    [v11 CGImage];
    v12 = SFDataFromCGImage();
  }

  else
  {
    v13 = [(SDClassroomBrowser *)self clientBundleID];
    v14 = v13;
    if (v13 == @"com.apple.finder")
    {
      v15 = 0;
    }

    else if (v13)
    {
      v15 = [(__CFString *)v13 isEqual:@"com.apple.finder"]^ 1;
    }

    else
    {
      v15 = 1;
    }

    v12 = sub_1000906C0(0, v15, 0, 0);
    if (v12)
    {
      SFNodeAddKind();
    }
  }

  SFNodeSetIconData();
  SFNodeAddKind();
  SFNodeAddKind();
  if (([v4 isGroup] & 1) == 0 && !objc_msgSend(v4, "isCourse"))
  {
    v16 = &kSFNodeKindPerson;
    goto LABEL_17;
  }

  if ([v4 isGroup])
  {
    SFNodeAddKind();
  }

  if ([v4 isCourse])
  {
    v16 = &kSFNodeKindClassroomCourse;
LABEL_17:
    v17 = *v16;
    SFNodeAddKind();
  }

  valuePtr = 705;
  v18 = CFNumberCreate(0, kCFNumberLongType, &valuePtr);
  SFNodeSetFlags();
  CFRelease(v18);

  return v7;
}

- (void)shareTargetBrowser:(id)a3 didInterruptWithError:(id)a4
{
  v5 = a4;
  v6 = browser_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_1000739D4();
  }

  self->_clientCount = 1;
  [(SDClassroomBrowser *)self stop];
}

- (void)shareTargetBrowser:(id)a3 didFindTargets:(id)a4
{
  v5 = a4;
  v6 = browser_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_100073A48();
  }

  p_nodes = &self->_nodes;
  v8 = [NSMutableArray arrayWithArray:self->_nodes];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v9 = v5;
  v10 = [v9 countByEnumeratingWithState:&v26 objects:v32 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v27;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v27 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v26 + 1) + 8 * i);
        personIDToShareTarget = self->_personIDToShareTarget;
        v16 = [v14 identifier];
        [(NSMutableDictionary *)personIDToShareTarget setObject:v14 forKeyedSubscript:v16];

        v17 = [(SDClassroomBrowser *)self convertShareTargetToNode:v14];
        [v8 addObject:v17];
      }

      v11 = [v9 countByEnumeratingWithState:&v26 objects:v32 count:16];
    }

    while (v11);
  }

  objc_storeStrong(&self->_nodes, v8);
  v18 = [(NSArray *)self->_nodes count];
  v19 = [(NSMutableDictionary *)self->_personIDToShareTarget allKeys];
  v20 = [v19 count];

  if (v18 != v20)
  {
    sub_100073AD4(a2, self);
  }

  v21 = browser_log();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = *p_nodes;
    v23 = SFCompactStringFromCollection();
    *buf = 138412290;
    v31 = v23;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "SDClassroomBrowser shareTargetBrowser:didFindTargets: nodes %@", buf, 0xCu);
  }

  v24 = +[NSNotificationCenter defaultCenter];
  [v24 postNotificationName:@"com.apple.sharingd.ClassroomChanged" object:0 userInfo:0];
}

- (void)shareTargetBrowser:(id)a3 didRemoveTargets:(id)a4
{
  v5 = a4;
  v6 = browser_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_100073B38();
  }

  v29 = self;
  location = &self->_nodes;
  v30 = [NSMutableArray arrayWithArray:self->_nodes];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = v5;
  v33 = [obj countByEnumeratingWithState:&v38 objects:v45 count:16];
  if (v33)
  {
    v31 = *v39;
    do
    {
      for (i = 0; i != v33; i = i + 1)
      {
        if (*v39 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v38 + 1) + 8 * i);
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        v9 = *location;
        v10 = [v9 countByEnumeratingWithState:&v34 objects:v44 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v35;
          while (2)
          {
            for (j = 0; j != v11; j = j + 1)
            {
              if (*v35 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = *(*(&v34 + 1) + 8 * j);
              v15 = SFNodeCopyRealName();
              v16 = [v8 identifier];
              v17 = [v16 isEqual:v15];

              if (v17)
              {
                personIDToShareTarget = v29->_personIDToShareTarget;
                v19 = [v8 identifier];
                [(NSMutableDictionary *)personIDToShareTarget removeObjectForKey:v19];

                [v30 removeObject:v14];
                goto LABEL_18;
              }
            }

            v11 = [v9 countByEnumeratingWithState:&v34 objects:v44 count:16];
            if (v11)
            {
              continue;
            }

            break;
          }
        }

LABEL_18:
      }

      v33 = [obj countByEnumeratingWithState:&v38 objects:v45 count:16];
    }

    while (v33);
  }

  objc_storeStrong(location, v30);
  v20 = [(NSArray *)v29->_nodes count];
  v21 = [(NSMutableDictionary *)v29->_personIDToShareTarget allKeys];
  v22 = [v21 count];

  if (v20 != v22)
  {
    sub_100073BC4(a2, v29);
  }

  v23 = browser_log();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = *location;
    v25 = SFCompactStringFromCollection();
    *buf = 138412290;
    v43 = v25;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "SDClassroomBrowser shareTargetBrowser:didRemoveTargets: nodes %@", buf, 0xCu);
  }

  v26 = +[NSNotificationCenter defaultCenter];
  [v26 postNotificationName:@"com.apple.sharingd.ClassroomChanged" object:0 userInfo:0];
}

@end