@interface LivefsDomainManager
+ (void)addDomain:(id)domain displayName:(id)name storage:(id)storage provider:(id)provider domainError:(id)error how:(int)how reply:(id)reply;
+ (void)removeDomain:(id)domain provider:(id)provider how:(int)how reply:(id)reply;
+ (void)updateDomain:(id)domain reply:(id)reply;
@end

@implementation LivefsDomainManager

+ (void)addDomain:(id)domain displayName:(id)name storage:(id)storage provider:(id)provider domainError:(id)error how:(int)how reply:(id)reply
{
  howCopy = how;
  domainCopy = domain;
  nameCopy = name;
  storageCopy = storage;
  providerCopy = provider;
  errorCopy = error;
  replyCopy = reply;
  v18 = dispatch_semaphore_create(0);
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = sub_100027AB8;
  v39 = sub_100027AC8;
  v40 = 0;
  v19 = [[NSFileProviderDomain alloc] initWithIdentifier:domainCopy displayName:nameCopy pathRelativeToDocumentStorage:storageCopy hidden:(howCopy & 0x80) != 0];
  v20 = livefs_std_log();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138413058;
    v42 = domainCopy;
    v43 = 2112;
    v44 = nameCopy;
    v45 = 2112;
    v46 = providerCopy;
    v47 = 1024;
    v48 = (howCopy & 0x80) >> 7;
    _os_log_debug_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "LivefsDomainManager: Domain name %@ displayName %@ provider %@ isHidden %d", buf, 0x26u);
  }

  v21 = [[NSFileProviderManager alloc] _initWithProviderIdentifier:providerCopy];
  if ((howCopy & 0x1000) != 0)
  {
    [v19 setErasable:1];
  }

  [v19 setError:{errorCopy, domainCopy}];
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
  if ((howCopy & 1) == 0 || v23)
  {
    v24 = v21;
  }

  else
  {
    v24 = [[NSFileProviderManager alloc] _initWithProviderIdentifier:providerCopy domain:v19];

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

  replyCopy[2](replyCopy, v23);

  _Block_object_dispose(&v35, 8);
}

+ (void)updateDomain:(id)domain reply:(id)reply
{
  replyCopy = reply;
  v6 = LiveFSMounterVolumeNameKey;
  domainCopy = domain;
  v8 = [domainCopy objectForKeyedSubscript:v6];
  v9 = [domainCopy objectForKeyedSubscript:LiveFSMounterDisplayNameKey];
  v10 = [domainCopy objectForKeyedSubscript:LiveFSMounterDomainStorageKey];
  v11 = [domainCopy objectForKeyedSubscript:LiveFSMounterVolumeProviderNameKey];
  v12 = [domainCopy objectForKey:LiveFSMounterDomainErrorKey];
  v13 = [domainCopy objectForKey:LiveFSMounterDomainErasable];
  v14 = [domainCopy objectForKey:LiveFSMounterDomainHidden];

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
  [self addDomain:v8 displayName:v9 storage:v10 provider:v11 domainError:v12 how:v15 reply:replyCopy];
}

+ (void)removeDomain:(id)domain provider:(id)provider how:(int)how reply:(id)reply
{
  replyCopy = reply;
  providerCopy = provider;
  domainCopy = domain;
  v11 = [[NSFileProviderDomain alloc] initWithIdentifier:domainCopy displayName:domainCopy pathRelativeToDocumentStorage:domainCopy];

  v12 = [[NSFileProviderManager alloc] _initWithProviderIdentifier:providerCopy];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100027F48;
  v14[3] = &unk_100060E08;
  v15 = replyCopy;
  v13 = replyCopy;
  [v12 removeDomain:v11 completionHandler:v14];
}

@end