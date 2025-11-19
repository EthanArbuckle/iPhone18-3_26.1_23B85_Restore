@interface PCStatusConditionsService
+ (PCStatusConditionsService)sharedInstance;
- (BOOL)evaluate:(id)a3 error:(id *)a4;
- (PCStatusConditionsService)init;
- (void)clearCache;
@end

@implementation PCStatusConditionsService

- (void)clearCache
{
  obj = self;
  objc_sync_enter(obj);
  [(NSMutableDictionary *)obj->_cachedEvaluations removeAllObjects];
  objc_sync_exit(obj);
}

+ (PCStatusConditionsService)sharedInstance
{
  if (qword_1004EA3D8 != -1)
  {
    sub_100396FDC();
  }

  v3 = qword_1004EA3D0;

  return v3;
}

- (PCStatusConditionsService)init
{
  v14.receiver = self;
  v14.super_class = PCStatusConditionsService;
  v2 = [(PCStatusConditionsService *)&v14 init];
  if (v2)
  {
    v3 = +[NSMutableDictionary dictionary];
    cachedEvaluations = v2->_cachedEvaluations;
    v2->_cachedEvaluations = v3;

    objc_initWeak(&location, v2);
    v5 = +[NSDistributedNotificationCenter defaultCenter];
    v6 = kAPAccountChangedNotification;
    v7 = kAPAdLibBundleID;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100002708;
    v11[3] = &unk_10047C8E0;
    objc_copyWeak(&v12, &location);
    v8 = [v5 addObserverForName:v6 object:v7 queue:0 usingBlock:v11];
    notificationObject = v2->_notificationObject;
    v2->_notificationObject = v8;

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (BOOL)evaluate:(id)a3 error:(id *)a4
{
  v7 = a3;
  v8 = v7;
  if (a4)
  {
    *a4 = 0;
  }

  if (!v7 || ![v7 length])
  {
    if (a4)
    {
      [NSError errorWithDomain:@"com.apple.ap.statusconditionserror" code:-1122 userInfo:0];
      *a4 = v4 = 0;
    }

    else
    {
      v4 = 0;
    }

    goto LABEL_51;
  }

  v9 = self;
  objc_sync_enter(v9);
  v10 = [(NSMutableDictionary *)v9->_cachedEvaluations objectForKey:v8];
  if (v10)
  {
    v11 = APLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = +[APIDAccountProvider privateUserAccount];
      v13 = [v12 iTunesDSID];
      *buf = 136643587;
      v51 = "[PCStatusConditionsService evaluate:error:]";
      v52 = 2114;
      v53 = v8;
      v54 = 2160;
      v55 = 1752392040;
      v56 = 2112;
      v57 = v13;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "[%{sensitive}s]: fetching previously evaluated status condition expression from the cache (%{public}@) for DSID %{mask.hash}@", buf, 0x2Au);
    }

    v4 = [v10 BOOLValue];
  }

  objc_sync_exit(v9);
  if (!v10)
  {
    v38 = [v8 dataUsingEncoding:4];
    v40 = [NSJSONSerialization JSONObjectWithData:v38 options:4 error:a4];
    if (v40)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v45 = 0u;
        v46 = 0u;
        v47 = 0u;
        v48 = 0u;
        obj = v40;
        v14 = 0;
        v15 = [obj countByEnumeratingWithState:&v45 objects:v49 count:16];
        if (!v15)
        {
          v41 = 0;
          goto LABEL_35;
        }

        v41 = 0;
        v16 = *v46;
LABEL_17:
        v17 = 0;
        while (1)
        {
          if (*v46 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v45 + 1) + 8 * v17);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            break;
          }

          v19 = [v18 objectForKeyedSubscript:@"version"];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              if (a4)
              {
                *a4 = [NSError errorWithDomain:@"com.apple.ap.statusconditionserror" code:-1116 userInfo:0];
              }

LABEL_46:
              goto LABEL_47;
            }
          }

          v20 = [v19 integerValue];
          if (v20 <= +[PCStatusConditionsService maxVersion]&& v20 > v14)
          {
            v21 = v18;

            v14 = v20;
            v41 = v21;
          }

          if (v15 == ++v17)
          {
            v15 = [obj countByEnumeratingWithState:&v45 objects:v49 count:16];
            if (v15)
            {
              goto LABEL_17;
            }

LABEL_35:

            [PCStatusConditionsService setVersion:v14];
            if (+[PCStatusConditionsService version]<= 0)
            {
              if (a4)
              {
                [NSError errorWithDomain:@"com.apple.ap.statusconditionserror" code:-1116 userInfo:0];
                *a4 = v4 = 0;
              }

              else
              {
LABEL_47:
                v4 = 0;
              }

              goto LABEL_48;
            }

            if (!v41)
            {
              if (a4)
              {
                v29 = [NSError errorWithDomain:@"com.apple.ap.statusconditionserror" code:-1116 userInfo:0];
                v27 = 0;
                v4 = 0;
                *a4 = v29;
              }

              else
              {
                v27 = 0;
                v4 = 0;
              }

              goto LABEL_49;
            }

            v22 = [v41 objectForKeyedSubscript:@"expression"];
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                if (a4)
                {
                  [NSError errorWithDomain:@"com.apple.ap.statusconditionserror" code:-1112 userInfo:0];
                  *a4 = v4 = 0;
                }

                else
                {
                  v4 = 0;
                }

                goto LABEL_72;
              }
            }

            if (qword_1004EA3E0 != -1)
            {
              sub_100396FF0();
            }

            v44 = 0;
            v23 = [[PCSCTreeNode alloc] initWithExpression:v22 version:+[PCStatusConditionsService andParent:"version"]error:0, &v44];
            v24 = v44;
            if (v24)
            {
              v25 = v24;
              LOBYTE(v26) = 0;
LABEL_68:
              v4 = v25 == 0 && v26;
              if (a4 && v25)
              {
                v34 = v25;
                v4 = 0;
                *a4 = v25;
              }

LABEL_72:
LABEL_48:
              v27 = v41;
LABEL_49:

LABEL_50:
              goto LABEL_51;
            }

            v43 = 0;
            v37 = [PCSCTreeNode _translateRootNodeToExpressionFormat:v23 error:&v43];
            v25 = v43;
            if (v37)
            {
              v30 = [[APTargetingExpression alloc] initWithDictionary:v37];
              v31 = [(APTargetingExpression *)v30 error];
              v32 = v31 == 0;

              if (!v32)
              {
                v33 = [(APTargetingExpression *)v30 error];
                LOBYTE(v26) = 0;
                goto LABEL_59;
              }

              v42 = v25;
              v26 = [(APTargetingExpression *)v30 evaluate:&v42];
              v33 = v42;

              if (!v33)
              {
                v25 = v9;
                objc_sync_enter(v25);
                cachedEvaluations = v9->_cachedEvaluations;
                v36 = [NSNumber numberWithBool:v26];
                [(NSMutableDictionary *)cachedEvaluations setObject:v36 forKey:v8];

                objc_sync_exit(v25);
                v33 = 0;
LABEL_59:
              }

              v25 = v33;
            }

            else
            {
              LOBYTE(v26) = 0;
            }

            goto LABEL_68;
          }
        }

        if (a4)
        {
          *a4 = [NSError errorWithDomain:@"com.apple.ap.statusconditionserror" code:-1123 userInfo:0];
        }

        goto LABEL_46;
      }

      if (a4)
      {
        [NSError errorWithDomain:@"com.apple.ap.statusconditionserror" code:-1112 userInfo:0];
        *a4 = v4 = 0;
        goto LABEL_50;
      }
    }

    v4 = 0;
    goto LABEL_50;
  }

LABEL_51:

  return v4 & 1;
}

@end