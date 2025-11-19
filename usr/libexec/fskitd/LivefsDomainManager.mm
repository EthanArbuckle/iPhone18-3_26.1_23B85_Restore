@interface LivefsDomainManager
+ (void)addDomain:(id)a3 displayName:(id)a4 storage:(id)a5 provider:(id)a6 domainError:(id)a7 how:(int)a8 reply:(id)a9;
+ (void)removeDomain:(id)a3 provider:(id)a4 how:(int)a5 reply:(id)a6;
+ (void)updateDomain:(id)a3 reply:(id)a4;
@end

@implementation LivefsDomainManager

+ (void)addDomain:(id)a3 displayName:(id)a4 storage:(id)a5 provider:(id)a6 domainError:(id)a7 how:(int)a8 reply:(id)a9
{
  v9 = a8;
  v26 = a3;
  v28 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a9;
  v18 = dispatch_semaphore_create(0);
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = sub_100027AB8;
  v39 = sub_100027AC8;
  v40 = 0;
  v19 = [[NSFileProviderDomain alloc] initWithIdentifier:v26 displayName:v28 pathRelativeToDocumentStorage:v14 hidden:(v9 & 0x80) != 0];
  v20 = livefs_std_log();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138413058;
    v42 = v26;
    v43 = 2112;
    v44 = v28;
    v45 = 2112;
    v46 = v15;
    v47 = 1024;
    v48 = (v9 & 0x80) >> 7;
    _os_log_debug_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "LivefsDomainManager: Domain name %@ displayName %@ provider %@ isHidden %d", buf, 0x26u);
  }

  v21 = [[NSFileProviderManager alloc] _initWithProviderIdentifier:v15];
  if ((v9 & 0x1000) != 0)
  {
    [v19 setErasable:1];
  }

  [v19 setError:{v16, v26}];
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_100027AD0;
  v32[3] = &unk_100061298;
  v34 = &v35;
  v22 = v18;
  v33 = v22;
  [v21 addDomain:v19 completionHandler:v32];
  dispatch_semaphore_wait(v22, 0xFFFFFFFFFFFFFFFFLL);
  v23 = v36[5];
  if ((v9 & 1) == 0 || v23)
  {
    v24 = v21;
  }

  else
  {
    v24 = [[NSFileProviderManager alloc] _initWithProviderIdentifier:v15 domain:v19];

    v25 = dispatch_semaphore_create(0);
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_100027B54;
    v29[3] = &unk_100061298;
    v31 = &v35;
    v22 = v25;
    v30 = v22;
    [v24 setConnected:1 completionHandler:v29];
    dispatch_semaphore_wait(v22, 0xFFFFFFFFFFFFFFFFLL);

    v23 = v36[5];
  }

  v17[2](v17, v23);

  _Block_object_dispose(&v35, 8);
}

+ (void)updateDomain:(id)a3 reply:(id)a4
{
  v16 = a4;
  v6 = LiveFSMounterVolumeNameKey;
  v7 = a3;
  v8 = [v7 objectForKeyedSubscript:v6];
  v9 = [v7 objectForKeyedSubscript:LiveFSMounterDisplayNameKey];
  v10 = [v7 objectForKeyedSubscript:LiveFSMounterDomainStorageKey];
  v11 = [v7 objectForKeyedSubscript:LiveFSMounterVolumeProviderNameKey];
  v12 = [v7 objectForKey:LiveFSMounterDomainErrorKey];
  v13 = [v7 objectForKey:LiveFSMounterDomainErasable];
  v14 = [v7 objectForKey:LiveFSMounterDomainHidden];

  if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    if ([v13 BOOLValue])
    {
      v15 = 4096;
    }

    else
    {
      v15 = 0;
    }

    if (!v14)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v15 = 0;
    if (!v14)
    {
      goto LABEL_13;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([v14 BOOLValue])
    {
      v15 = v15 | 0x80;
    }

    else
    {
      v15 = v15;
    }
  }

LABEL_13:
  [a1 addDomain:v8 displayName:v9 storage:v10 provider:v11 domainError:v12 how:v15 reply:v16];
}

+ (void)removeDomain:(id)a3 provider:(id)a4 how:(int)a5 reply:(id)a6
{
  v8 = a6;
  v9 = a4;
  v10 = a3;
  v11 = [[NSFileProviderDomain alloc] initWithIdentifier:v10 displayName:v10 pathRelativeToDocumentStorage:v10];

  v12 = [[NSFileProviderManager alloc] _initWithProviderIdentifier:v9];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100027F48;
  v14[3] = &unk_100060E08;
  v15 = v8;
  v13 = v8;
  [v12 removeDomain:v11 completionHandler:v14];
}

@end