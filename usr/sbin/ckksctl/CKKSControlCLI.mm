@interface CKKSControlCLI
- (CKKSControlCLI)initWithCKKSControl:(id)control;
- (id)fetchPerformanceCounters;
- (id)fetchStatus:(id)status;
- (id)parseJSON:(Class)n name:(id)name json:(id)json;
- (int)deleteSEZone:(id)zone;
- (int)fetchSEView:(id)view json:(BOOL)json;
- (int)modifySEZone:(id)zone tlkShareJsonStrings:(id)strings deletetlkShareJsonStrings:(id)jsonStrings;
- (int)proposeSETLK:(id)k tlkJson:(id)json oldTlkJson:(id)tlkJson tlkShareJsonStrings:(id)strings;
- (int)toggleHavoc;
- (int64_t)ckmetric;
- (int64_t)fetch:(id)fetch;
- (int64_t)push:(id)push;
- (int64_t)resetCloudKit:(id)kit;
- (int64_t)resetLocal:(id)local;
- (int64_t)resync:(id)resync;
- (void)printHumanReadableStatus:(id)status shortenOutput:(BOOL)output;
@end

@implementation CKKSControlCLI

- (int)toggleHavoc
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 1;
  v3 = dispatch_semaphore_create(0);
  control = [(CKKSControlCLI *)self control];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100001650;
  v9[3] = &unk_10000C428;
  v11 = &v12;
  v5 = v3;
  v10 = v5;
  [control toggleHavoc:v9];

  v6 = dispatch_time(0, 65000000000);
  if (dispatch_semaphore_wait(v5, v6))
  {
    puts("\n\nError: timed out waiting for response");
    v7 = -1;
  }

  else
  {
    v7 = *(v13 + 6);
  }

  _Block_object_dispose(&v12, 8);
  return v7;
}

- (int)deleteSEZone:(id)zone
{
  zoneCopy = zone;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 1;
  v5 = dispatch_semaphore_create(0);
  control = [(CKKSControlCLI *)self control];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10000189C;
  v13[3] = &unk_10000C388;
  v15 = &v16;
  v7 = v5;
  v14 = v7;
  [control deleteSEView:zoneCopy reply:v13];

  v8 = dispatch_time(0, 150000000000);
  if (dispatch_semaphore_wait(v7, v8))
  {
    puts("\n\nError: timed out waiting for response");
    v9 = secLogObjForScope();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Timed out waiting for deleteSEZone response", v12, 2u);
    }

    v10 = -1;
  }

  else
  {
    v10 = *(v17 + 6);
  }

  _Block_object_dispose(&v16, 8);
  return v10;
}

- (int)modifySEZone:(id)zone tlkShareJsonStrings:(id)strings deletetlkShareJsonStrings:(id)jsonStrings
{
  zoneCopy = zone;
  stringsCopy = strings;
  jsonStringsCopy = jsonStrings;
  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v44 = 1;
  v9 = +[NSMutableArray array];
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v10 = stringsCopy;
  v11 = [v10 countByEnumeratingWithState:&v37 objects:v46 count:16];
  if (v11)
  {
    v12 = *v38;
    while (2)
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v38 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = [(CKKSControlCLI *)self parseJSON:objc_opt_class() name:@"TLK Share" json:*(*(&v37 + 1) + 8 * i)];
        if (!v14)
        {
          v24 = 1;
          v15 = v10;
          goto LABEL_26;
        }

        [v9 addObject:v14];
      }

      v11 = [v10 countByEnumeratingWithState:&v37 objects:v46 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v15 = +[NSMutableArray array];
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = jsonStringsCopy;
  v16 = [obj countByEnumeratingWithState:&v33 objects:v45 count:16];
  if (v16)
  {
    v17 = *v34;
    while (2)
    {
      for (j = 0; j != v16; j = j + 1)
      {
        if (*v34 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = [(CKKSControlCLI *)self parseJSON:objc_opt_class() name:@"TLK Share" json:*(*(&v33 + 1) + 8 * j)];
        if (!v19)
        {
          v24 = 1;
          goto LABEL_25;
        }

        [v15 addObject:v19];
      }

      v16 = [obj countByEnumeratingWithState:&v33 objects:v45 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }
  }

  v20 = dispatch_semaphore_create(0);
  control = [(CKKSControlCLI *)self control];
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_100001D48;
  v30[3] = &unk_10000C388;
  v32 = &v41;
  obj = v20;
  v31 = obj;
  [control modifyTLKSharesForSEView:zoneCopy adding:v9 deleting:v15 reply:v30];

  v22 = dispatch_time(0, 150000000000);
  if (dispatch_semaphore_wait(obj, v22))
  {
    puts("\n\nError: timed out waiting for response");
    v23 = secLogObjForScope();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Timed out waiting for modifySEZone response", buf, 2u);
    }

    v24 = -1;
  }

  else
  {
    v24 = *(v42 + 6);
  }

LABEL_25:
LABEL_26:

  _Block_object_dispose(&v41, 8);
  return v24;
}

- (int)fetchSEView:(id)view json:(BOOL)json
{
  viewCopy = view;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 1;
  v7 = dispatch_semaphore_create(0);
  control = [(CKKSControlCLI *)self control];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100001F80;
  v15[3] = &unk_10000C400;
  jsonCopy = json;
  v17 = &v19;
  v9 = v7;
  v16 = v9;
  [control fetchSEViewKeyHierarchy:viewCopy reply:v15];

  v10 = dispatch_time(0, 150000000000);
  if (dispatch_semaphore_wait(v9, v10))
  {
    puts("\n\nError: timed out waiting for response");
    v11 = secLogObjForScope();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Timed out waiting for fetchSEView response", v14, 2u);
    }

    v12 = -1;
  }

  else
  {
    v12 = *(v20 + 6);
  }

  _Block_object_dispose(&v19, 8);
  return v12;
}

- (int)proposeSETLK:(id)k tlkJson:(id)json oldTlkJson:(id)tlkJson tlkShareJsonStrings:(id)strings
{
  kCopy = k;
  jsonCopy = json;
  tlkJsonCopy = tlkJson;
  stringsCopy = strings;
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = 1;
  v11 = [(CKKSControlCLI *)self parseJSON:objc_opt_class() name:@"TLK" json:jsonCopy];
  if (!v11)
  {
    goto LABEL_4;
  }

  if (tlkJsonCopy)
  {
    v24 = [(CKKSControlCLI *)self parseJSON:objc_opt_class() name:@"old TLK" json:tlkJsonCopy];
    if (!v24)
    {
LABEL_4:
      v12 = 1;
      goto LABEL_22;
    }
  }

  else
  {
    v24 = 0;
  }

  v13 = +[NSMutableArray array];
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v14 = stringsCopy;
  v15 = [v14 countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v15)
  {
    v16 = *v33;
    while (2)
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v33 != v16)
        {
          objc_enumerationMutation(v14);
        }

        v18 = [(CKKSControlCLI *)self parseJSON:objc_opt_class() name:@"TLKShare" json:*(*(&v32 + 1) + 8 * i)];
        if (!v18)
        {
          v12 = 1;
          goto LABEL_21;
        }

        [v13 addObject:v18];
      }

      v15 = [v14 countByEnumeratingWithState:&v32 objects:v40 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }
  }

  v19 = dispatch_semaphore_create(0);
  control = [(CKKSControlCLI *)self control];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_100002E90;
  v29[3] = &unk_10000C388;
  v31 = &v36;
  v14 = v19;
  v30 = v14;
  [control proposeTLKForSEView:kCopy proposedTLK:v11 wrappedOldTLK:0 tlkShares:v13 reply:v29];

  v21 = dispatch_time(0, 150000000000);
  if (dispatch_semaphore_wait(v14, v21))
  {
    puts("\n\nError: timed out waiting for response");
    v22 = secLogObjForScope();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Timed out waiting for proposeSETLK response", buf, 2u);
    }

    v12 = -1;
  }

  else
  {
    v12 = *(v37 + 6);
  }

LABEL_21:
LABEL_22:

  _Block_object_dispose(&v36, 8);
  return v12;
}

- (id)parseJSON:(Class)n name:(id)name json:(id)json
{
  nameCopy = name;
  jsonCopy = json;
  v9 = [jsonCopy dataUsingEncoding:4];
  v21 = 0;
  v10 = [NSJSONSerialization JSONObjectWithData:v9 options:0 error:&v21];
  v11 = v21;

  if (v10)
  {
    v12 = v11 == 0;
  }

  else
  {
    v12 = 0;
  }

  if (v12)
  {
    v20 = 0;
    v15 = [(objc_class *)n parseFromJSONDict:v10 error:&v20];
    v11 = v20;
    if (v15)
    {
      v14 = v15;
      v16 = v14;
      goto LABEL_10;
    }

    uTF8String = [nameCopy UTF8String];
    v18 = [v11 description];
    printf("Unable to parse %s from JSON: %s\n", uTF8String, [v18 UTF8String]);

    printf("JSON: %s\n", [jsonCopy UTF8String]);
    v14 = 0;
  }

  else
  {
    uTF8String2 = [nameCopy UTF8String];
    v14 = [v11 description];
    printf("Unable to parse %s as JSON: %s\n", uTF8String2, [v14 UTF8String]);
  }

  v16 = 0;
LABEL_10:

  return v16;
}

- (int64_t)ckmetric
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v3 = dispatch_semaphore_create(0);
  control = [(CKKSControlCLI *)self control];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100003254;
  v11[3] = &unk_10000C388;
  v13 = &v14;
  v5 = v3;
  v12 = v5;
  [control rpcCKMetric:@"testMetric" attributes:&off_10000CD90 reply:v11];

  v6 = dispatch_time(0, 65000000000);
  if (dispatch_semaphore_wait(v5, v6))
  {
    puts("\n\nError: timed out waiting for response");
    v7 = secLogObjForScope();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Timed out waiting for ckmetric response", v10, 2u);
    }

    v8 = -1;
  }

  else
  {
    v8 = v15[3];
  }

  _Block_object_dispose(&v14, 8);
  return v8;
}

- (int64_t)push:(id)push
{
  pushCopy = push;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v5 = dispatch_semaphore_create(0);
  control = [(CKKSControlCLI *)self control];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000034A4;
  v13[3] = &unk_10000C388;
  v15 = &v16;
  v7 = v5;
  v14 = v7;
  [control rpcPushOutgoingChanges:pushCopy reply:v13];

  v8 = dispatch_time(0, 150000000000);
  if (dispatch_semaphore_wait(v7, v8))
  {
    puts("\n\nError: timed out waiting for response");
    v9 = secLogObjForScope();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Timed out waiting for push response", v12, 2u);
    }

    v10 = -1;
  }

  else
  {
    v10 = v17[3];
  }

  _Block_object_dispose(&v16, 8);
  return v10;
}

- (int64_t)fetch:(id)fetch
{
  fetchCopy = fetch;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v5 = dispatch_semaphore_create(0);
  control = [(CKKSControlCLI *)self control];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000036F4;
  v13[3] = &unk_10000C388;
  v15 = &v16;
  v7 = v5;
  v14 = v7;
  [control rpcFetchAndProcessChanges:fetchCopy reply:v13];

  v8 = dispatch_time(0, 150000000000);
  if (dispatch_semaphore_wait(v7, v8))
  {
    puts("\n\nError: timed out waiting for response");
    v9 = secLogObjForScope();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Timed out waiting for fetch response", v12, 2u);
    }

    v10 = -1;
  }

  else
  {
    v10 = v17[3];
  }

  _Block_object_dispose(&v16, 8);
  return v10;
}

- (void)printHumanReadableStatus:(id)status shortenOutput:(BOOL)output
{
  statusCopy = status;
  v7 = dispatch_semaphore_create(0);
  control = [(CKKSControlCLI *)self control];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000038F4;
  v13[3] = &unk_10000C3D8;
  outputCopy = output;
  v9 = v7;
  v14 = v9;
  [control rpcStatus:statusCopy reply:v13];

  v10 = dispatch_time(0, 45000000000);
  if (dispatch_semaphore_wait(v9, v10))
  {
    puts("\n\nError: timed out waiting for response");
    v11 = secLogObjForScope();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Timed out waiting for status response", v12, 2u);
    }
  }
}

- (id)fetchStatus:(id)status
{
  statusCopy = status;
  v5 = objc_alloc_init(NSMutableDictionary);
  v6 = dispatch_semaphore_create(0);
  control = [(CKKSControlCLI *)self control];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000054F8;
  v16[3] = &unk_10000C3B0;
  v8 = v5;
  v17 = v8;
  v9 = v6;
  v18 = v9;
  [control rpcStatus:statusCopy reply:v16];

  v10 = dispatch_time(0, 45000000000);
  if (dispatch_semaphore_wait(v9, v10))
  {
    [v8 setObject:@"timed out" forKeyedSubscript:@"error"];
    v11 = secLogObjForScope();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v15[0] = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Timed out waiting for status response", v15, 2u);
    }
  }

  v12 = v18;
  v13 = v8;

  return v8;
}

- (int64_t)resync:(id)resync
{
  resyncCopy = resync;
  v5 = resyncCopy;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  if (resyncCopy)
  {
    v6 = [resyncCopy description];
    printf("Beginning resync for %s...\n", [v6 UTF8String]);
  }

  else
  {
    printf("Beginning resync for %s...\n", "all zones");
  }

  v7 = dispatch_semaphore_create(0);
  control = [(CKKSControlCLI *)self control];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100005880;
  v15[3] = &unk_10000C388;
  v17 = &v18;
  v9 = v7;
  v16 = v9;
  [control rpcResync:v5 reply:v15];

  v10 = dispatch_time(0, 300000000000);
  if (dispatch_semaphore_wait(v9, v10))
  {
    puts("\n\nError: timed out waiting for response");
    v11 = secLogObjForScope();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Timed out waiting for resync response", buf, 2u);
    }

    v12 = -1;
  }

  else
  {
    v12 = v19[3];
  }

  _Block_object_dispose(&v18, 8);
  return v12;
}

- (int64_t)resetCloudKit:(id)kit
{
  kitCopy = kit;
  v5 = kitCopy;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  if (kitCopy)
  {
    v6 = [kitCopy description];
    printf("Beginning CloudKit reset for %s...\n", [v6 UTF8String]);
  }

  else
  {
    printf("Beginning CloudKit reset for %s...\n", "all CKKS-managed zones");
  }

  v7 = dispatch_semaphore_create(0);
  control = [(CKKSControlCLI *)self control];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100005B00;
  v15[3] = &unk_10000C388;
  v17 = &v18;
  v9 = v7;
  v16 = v9;
  [control rpcResetCloudKit:v5 reason:@"ckksctl" reply:v15];

  v10 = dispatch_time(0, 300000000000);
  if (dispatch_semaphore_wait(v9, v10))
  {
    puts("\n\nError: timed out waiting for response");
    v11 = secLogObjForScope();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Timed out waiting for reset-cloudkit response", buf, 2u);
    }

    v12 = -1;
  }

  else
  {
    v12 = v19[3];
  }

  _Block_object_dispose(&v18, 8);
  return v12;
}

- (int64_t)resetLocal:(id)local
{
  localCopy = local;
  v5 = localCopy;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  if (localCopy)
  {
    v6 = [localCopy description];
    printf("Beginning local reset for %s...\n", [v6 UTF8String]);
  }

  else
  {
    printf("Beginning local reset for %s...\n", "all zones");
  }

  v7 = dispatch_semaphore_create(0);
  control = [(CKKSControlCLI *)self control];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100005D78;
  v15[3] = &unk_10000C388;
  v17 = &v18;
  v9 = v7;
  v16 = v9;
  [control rpcResetLocal:v5 reply:v15];

  v10 = dispatch_time(0, 180000000000);
  if (dispatch_semaphore_wait(v9, v10))
  {
    puts("\n\nError: timed out waiting for response");
    v11 = secLogObjForScope();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Timed out waiting for reset-local response", buf, 2u);
    }

    v12 = -1;
  }

  else
  {
    v12 = v19[3];
  }

  _Block_object_dispose(&v18, 8);
  return v12;
}

- (id)fetchPerformanceCounters
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = dispatch_semaphore_create(0);
  control = [(CKKSControlCLI *)self control];
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_100005F28;
  v15 = &unk_10000C360;
  v6 = v3;
  v16 = v6;
  v7 = v4;
  v17 = v7;
  [control rpcPerformanceCounters:&v12];

  v8 = dispatch_time(0, 60000000000);
  if (dispatch_semaphore_wait(v7, v8))
  {
    [v6 setObject:@"timed out waiting for response" forKeyedSubscript:{@"error", v12, v13, v14, v15, v16}];
  }

  v9 = v17;
  v10 = v6;

  return v6;
}

- (CKKSControlCLI)initWithCKKSControl:(id)control
{
  controlCopy = control;
  v9.receiver = self;
  v9.super_class = CKKSControlCLI;
  v6 = [(CKKSControlCLI *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_control, control);
  }

  return v7;
}

@end