@interface MTChaperoneParser
- (BOOL)isKeybagRollingNeeded;
- (MTChaperoneParser)init;
- (id)_allCommands;
- (id)_clearPasscode:(id)passcode;
- (id)_removeProfile:(id)profile;
- (id)_requestUnlockToken:(id)token;
- (unint64_t)_profileInstallationStyleForRequest:(id)request;
- (void)_installApplication:(id)application completionBlock:(id)block;
- (void)_processRequest:(id)request accessRights:(unint64_t)rights assertion:(id)assertion completionBlock:(id)block;
- (void)commandDefaultMDMOptionsCompletionBlock:(id)block;
- (void)commandProceedWithKeybagMigrationRequest:(id)request completionBlock:(id)block;
- (void)commandSetDefaultMDMOptionsRequest:(id)request completionBlock:(id)block;
- (void)waitUntilKeybagRollingHasBeenPerformedCompletionBlock:(id)block timeRemaining:(double)remaining;
@end

@implementation MTChaperoneParser

- (MTChaperoneParser)init
{
  v6.receiver = self;
  v6.super_class = MTChaperoneParser;
  v2 = [(MTChaperoneParser *)&v6 initWithManagingProfileIdentifier:0];
  if (v2)
  {
    v3 = objc_alloc_init(MTIPCUTunnelParser);
    iPCUParser = v2->_iPCUParser;
    v2->_iPCUParser = v3;

    [(MTChaperoneParser *)v2 setIsMDM:0];
  }

  return v2;
}

- (void)_processRequest:(id)request accessRights:(unint64_t)rights assertion:(id)assertion completionBlock:(id)block
{
  requestCopy = request;
  assertionCopy = assertion;
  blockCopy = block;
  v13 = [requestCopy objectForKey:kMCTPRequestTypeKey];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_8;
  }

  if (![v13 isEqualToString:@"DefaultMDMOptions"])
  {
    if ([v13 isEqualToString:@"SetDefaultMDMOptions"])
    {
      [(MTChaperoneParser *)self commandSetDefaultMDMOptionsRequest:requestCopy completionBlock:blockCopy];
      goto LABEL_9;
    }

    if ([v13 isEqualToString:@"ProceedWithKeybagMigration"])
    {
      [(MTChaperoneParser *)self commandProceedWithKeybagMigrationRequest:requestCopy completionBlock:blockCopy];
      goto LABEL_9;
    }

LABEL_8:
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100002E54;
    v15[3] = &unk_100010828;
    v15[4] = self;
    v16 = requestCopy;
    v17 = assertionCopy;
    v18 = blockCopy;
    v14.receiver = self;
    v14.super_class = MTChaperoneParser;
    [(MTChaperoneParser *)&v14 _processRequest:v16 accessRights:rights assertion:v17 completionBlock:v15];

    goto LABEL_9;
  }

  [(MTChaperoneParser *)self commandDefaultMDMOptionsCompletionBlock:blockCopy];
LABEL_9:
}

- (id)_allCommands
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100003020;
  block[3] = &unk_100010798;
  block[4] = self;
  if (qword_100014BE8 != -1)
  {
    dispatch_once(&qword_100014BE8, block);
  }

  return qword_100014BD0;
}

- (unint64_t)_profileInstallationStyleForRequest:(id)request
{
  v3 = [request objectForKey:kMCTPRequestTypeKey];
  v4 = [v3 isEqualToString:kMDMPRequestTypeInstallProfileSilent];

  return v4;
}

- (void)_installApplication:(id)application completionBlock:(id)block
{
  blockCopy = block;
  if (blockCopy)
  {
    v5 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000034A8;
    block[3] = &unk_100010850;
    v7 = blockCopy;
    dispatch_async(v5, block);
  }
}

- (id)_removeProfile:(id)profile
{
  v4 = [profile objectForKey:kIdentifierKey];
  if (v4)
  {
    v5 = *DMCLogObjects();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v11 = 138543362;
      v12 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Chaperone requested removal of profile “%{public}@”", &v11, 0xCu);
    }

    v6 = [MDMMCInterface profileIdentifiersWithFilterFlags:69];
    if ([v6 containsObject:v4])
    {
      v7 = [(MTChaperoneParser *)self _removeProfileWithIdentifier:v4 installationType:0];
    }

    else
    {
      v9 = *DMCLogObjects();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v11) = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Chaperone attempted to remove profile unavailable to Chaperone", &v11, 2u);
      }

      v7 = [MDMParser responseWithStatus:kMCTPStatusAcknowledged];
    }

    v8 = v7;
  }

  else
  {
    v8 = [MDMParser responseWithStatus:kMCTPStatusCommandFormatError];
  }

  return v8;
}

- (id)_requestUnlockToken:(id)token
{
  if (+[MDMMCInterface isPasscodeSet])
  {
    v3 = [NSError errorWithDomain:DMCKeybagErrorDomain code:37002 userInfo:0];
    v4 = [MTChaperoneParser responseWithError:v3];
  }

  else
  {
    v5 = MDMKeybagCreateSupervisionEscrowWithPasscode();
    v3 = 0;
    if (v5)
    {
      v4 = [MTChaperoneParser responseWithStatus:kMCTPStatusAcknowledged];
      [v4 setObject:v5 forKeyedSubscript:@"UnlockToken"];
    }

    else
    {
      v4 = [MTChaperoneParser responseWithError:v3];
    }
  }

  return v4;
}

- (id)_clearPasscode:(id)passcode
{
  v3 = [passcode objectForKeyedSubscript:kMDMPUnlockTokenKey];
  v12[1] = 0;
  v4 = MDMKeybagRetrieveSupervisionEscrowSecret();
  v5 = 0;
  v6 = v5;
  if (v4)
  {
    v12[0] = v5;
    v7 = [MDMMCInterface clearPasscodeWithEscrowKeybagData:v3 secret:v4 outError:v12];
    v8 = v12[0];

    if (v7)
    {
      v9 = [MDMParser responseWithStatus:kMCTPStatusAcknowledged];
      goto LABEL_7;
    }

    v6 = v8;
  }

  else
  {
    v8 = v5;
  }

  v9 = [MDMParser responseWithError:v6];
LABEL_7:
  v10 = v9;

  return v10;
}

- (void)commandDefaultMDMOptionsCompletionBlock:(id)block
{
  blockCopy = block;
  v3 = [MTChaperoneParser responseWithStatus:kMCTPStatusAcknowledged];
  v4 = +[MDMOptionsUtilities defaultMDMOptions];
  if (v4)
  {
    [v3 setObject:v4 forKeyedSubscript:@"DefaultMDMOptions"];
  }

  if (blockCopy)
  {
    blockCopy[2](blockCopy, v3);
  }
}

- (void)commandSetDefaultMDMOptionsRequest:(id)request completionBlock:(id)block
{
  blockCopy = block;
  v5 = [request objectForKeyedSubscript:@"DefaultMDMOptions"];
  v6 = [MDMOptionsUtilities validatedMDMOptionsFromOptionsDictionary:v5];
  [MDMOptionsUtilities setDefaultMDMOptions:v6];
  v7 = [MTChaperoneParser responseWithStatus:kMCTPStatusAcknowledged];
  if (blockCopy)
  {
    blockCopy[2](blockCopy, v7);
  }
}

- (BOOL)isKeybagRollingNeeded
{
  if (qword_100014BF8 != -1)
  {
    sub_10000834C();
  }

  CFProperty = IORegistryEntryCreateCFProperty(dword_100014BF4, @"enable-rolld-dev1", 0, 0);
  v3 = *DMCLogObjects();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v5[0] = 67109120;
    v5[1] = CFProperty != 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Is keybag rolling needed: %d", v5, 8u);
  }

  return CFProperty != 0;
}

- (void)waitUntilKeybagRollingHasBeenPerformedCompletionBlock:(id)block timeRemaining:(double)remaining
{
  blockCopy = block;
  v15 = 0;
  SystemGeneration = MKBKeyBagGetSystemGeneration();
  v6 = *DMCLogObjects();
  if (SystemGeneration)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Could not get keybag system generation number.", buf, 2u);
    }

    if (blockCopy)
    {
      v7 = dispatch_get_global_queue(0, 0);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000042D0;
      block[3] = &unk_100010850;
      v12 = blockCopy;
      dispatch_async(v7, block);

      v8 = v12;
LABEL_12:
    }
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      v17 = v15;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Keybag system generation status: %d", buf, 8u);
    }

    v9 = *DMCLogObjects();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "Keybag system generation is sufficient to proceed.", buf, 2u);
    }

    if (blockCopy)
    {
      v10 = dispatch_get_global_queue(0, 0);
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_100004130;
      v13[3] = &unk_100010850;
      v14 = blockCopy;
      dispatch_async(v10, v13);

      v8 = v14;
      goto LABEL_12;
    }
  }
}

- (void)commandProceedWithKeybagMigrationRequest:(id)request completionBlock:(id)block
{
  v5 = kMDMKeybagMigrationHasBeenClearedByHostKey;
  v6 = kMDMNotBackedUpPreferencesDomain;
  v7 = kMDMPreferencesMobileUserName;
  blockCopy = block;
  CFPreferencesSetValue(v5, kCFBooleanTrue, v6, v7, kCFPreferencesAnyHost);
  CFPreferencesSynchronize(v6, v7, kCFPreferencesAnyHost);
  MDMSendTriggerRollKeybagsNotification();
  [(MTChaperoneParser *)self waitUntilKeybagRollingHasBeenPerformedCompletionBlock:blockCopy timeRemaining:300.0];
}

@end