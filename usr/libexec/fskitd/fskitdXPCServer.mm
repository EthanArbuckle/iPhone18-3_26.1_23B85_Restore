@interface fskitdXPCServer
- (BOOL)extensionSupportsResource:(id)resource resource:(id)a4;
- (BOOL)extensionSupportsResourceScheme:(id)scheme resource:(id)resource;
- (id)applyResource:(id)resource targetBundle:(id)bundle instanceID:(id)d initiatorAuditToken:(id)token authorizingAuditToken:(id)auditToken usingBlock:(id)block;
- (id)applyResource:(id)resource usingIdentity:(id)identity instanceID:(id)d initiatorAuditToken:(id)token authorizingAuditToken:(id)auditToken usingBlock:(id)block;
- (id)canStartActivateTask:(id)task resource:(id)resource;
- (id)canStartDeactivateTask:(id)task resource:(id)resource;
- (id)canStartProbeTask:(id)task resource:(id)resource;
- (id)canStartTask:(id)task resource:(id)resource;
- (id)canStartUnloadTask:(id)task resource:(id)resource;
- (id)getExtensionModuleFromID:(id)d forToken:(id)token;
- (id)getInitiatorBundleIDForToken:(id *)token;
- (id)getInitiatorSigningIDForToken:(id *)token;
- (id)getModuleIdentityFromShortName:(id)name;
- (id)getModuleIdentityFromShortName:(id)name user:(id)user;
- (id)getTeamIDForToken:(id *)token;
- (id)initForEntitledClient:(BOOL)client;
- (void)LiveMounterReallyMountVolume:(id)volume fileSystem:(id)system displayName:(id)name provider:(id)provider domainError:(id)error on:(id)on how:(int)how options:(id)self0 auditToken:(id *)self1 reply:(id)self2;
- (void)_activateVolume:(id)volume usingIdentity:(id)identity options:(id)options auditToken:(id *)token replyHandler:(id)handler;
- (void)_checkResource:(id)resource usingBundle:(id)bundle options:(id)options auditToken:(id *)token connection:(id)connection replyHandler:(id)handler;
- (void)_currentContainersForAuditToken:(id *)token replyHandler:(id)handler;
- (void)_currentResourceIDsForAuditToken:(id *)token replyHandler:(id)handler;
- (void)_currentTasksForAuditToken:(id *)token replyHandler:(id)handler;
- (void)_deactivateVolume:(id)volume usingIdentity:(id)identity numericOptions:(unint64_t)options auditToken:(id *)token replyHandler:(id)handler;
- (void)_formatResource:(id)resource usingBundle:(id)bundle options:(id)options auditToken:(id *)token connection:(id)connection replyHandler:(id)handler;
- (void)_installedExtensionWithBundleID:(id)d user:(id)user replyHandler:(id)handler;
- (void)_installedExtensionsForAuditToken:(id *)token replyHandler:(id)handler;
- (void)_loadResource:(id)resource usingIdentity:(id)identity options:(id)options auditToken:(id *)token replyHandler:(id)handler;
- (void)_probeResource:(id)resource usingBundle:(id)bundle auditToken:(id *)token replyHandler:(id)handler;
- (void)_unloadResource:(id)resource usingIdentity:(id)identity options:(id)options auditToken:(id *)token replyHandler:(id)handler;
- (void)activateVolume:(id)volume shortName:(id)name options:(id)options auditToken:(id *)token replyHandler:(id)handler;
- (void)activateVolume:(id)volume shortName:(id)name options:(id)options replyHandler:(id)handler;
- (void)activateVolume:(id)volume usingBundle:(id)bundle options:(id)options auditToken:(id *)token replyHandler:(id)handler;
- (void)activateVolume:(id)volume usingBundle:(id)bundle options:(id)options replyHandler:(id)handler;
- (void)cancelTask:(id)task replyHandler:(id)handler;
- (void)checkResource:(id)resource usingBundle:(id)bundle options:(id)options auditToken:(id *)token connection:(id)connection replyHandler:(id)handler;
- (void)cleanupTaskAfterError:(id)error resource:(id)resource bundleIdentifier:(id)identifier token:(id *)token;
- (void)currentContainers:(id)containers;
- (void)currentContainersForAuditToken:(id *)token replyHandler:(id)handler;
- (void)currentResourceIDs:(id)ds;
- (void)currentResourceIDsForAuditToken:(id *)token replyHandler:(id)handler;
- (void)currentTasks:(id)tasks;
- (void)currentTasksForAuditToken:(id *)token replyHandler:(id)handler;
- (void)deactivateVolume:(id)volume shortName:(id)name numericOptions:(unint64_t)options auditToken:(id *)token replyHandler:(id)handler;
- (void)deactivateVolume:(id)volume shortName:(id)name numericOptions:(unint64_t)options replyHandler:(id)handler;
- (void)deactivateVolume:(id)volume usingBundle:(id)bundle numericOptions:(unint64_t)options auditToken:(id *)token replyHandler:(id)handler;
- (void)deactivateVolume:(id)volume usingBundle:(id)bundle numericOptions:(unint64_t)options replyHandler:(id)handler;
- (void)doCheckResource:(id)resource usingBundle:(id)bundle options:(id)options connection:(id)connection reply:(id)reply;
- (void)doKernelMount:(id)mount providerName:(id)name mountEntry:(id)entry;
- (void)doneFSCKWithTask:(id)task replyHandler:(id)handler;
- (void)formatResource:(id)resource usingBundle:(id)bundle options:(id)options auditToken:(id *)token connection:(id)connection replyHandler:(id)handler;
- (void)formatResource:(id)resource usingBundle:(id)bundle options:(id)options connection:(id)connection replyHandler:(id)handler;
- (void)getRealResource:(id)resource auditToken:(id)token reply:(id)reply;
- (void)handleInvalidated;
- (void)installedExtensionWithBundleID:(id)d replyHandler:(id)handler;
- (void)installedExtensionWithShortName:(id)name replyHandler:(id)handler;
- (void)installedExtensionWithShortName:(id)name user:(id)user replyHandler:(id)handler;
- (void)installedExtensions:(id)extensions;
- (void)installedExtensionsForAuditToken:(id *)token replyHandler:(id)handler;
- (void)loadResource:(id)resource shortName:(id)name options:(id)options auditToken:(id *)token replyHandler:(id)handler;
- (void)loadResource:(id)resource shortName:(id)name options:(id)options replyHandler:(id)handler;
- (void)loadResource:(id)resource usingBundle:(id)bundle options:(id)options auditToken:(id *)token replyHandler:(id)handler;
- (void)loadResource:(id)resource usingBundle:(id)bundle options:(id)options replyHandler:(id)handler;
- (void)mountVolume:(id)volume fileSystem:(id)system displayName:(id)name provider:(id)provider domainError:(id)error on:(id)on how:(int)how options:(id)self0 auditToken:(id *)self1 reply:(id)self2;
- (void)mountVolume:(id)volume fileSystem:(id)system displayName:(id)name provider:(id)provider domainError:(id)error on:(id)on how:(int)how options:(id)self0 reply:(id)self1;
- (void)probeResource:(id)resource usingBundle:(id)bundle auditToken:(id *)token replyHandler:(id)handler;
- (void)probeResource:(id)resource usingBundle:(id)bundle replyHandler:(id)handler;
- (void)reallyUpdateErrorStateForVolume:(id)volume provider:(id)provider domainError:(id)error reply:(id)reply;
- (void)setTaskUpdateInterest:(BOOL)interest replyHandler:(id)handler;
- (void)setVerboseLevel:(int)level reply:(id)reply;
- (void)startFSCKWithDevice:(id)device volumes:(id)volumes replyHandler:(id)handler;
- (void)switchToFSKit:(id)kit;
- (void)unloadResource:(id)resource shortName:(id)name options:(id)options auditToken:(id *)token replyHandler:(id)handler;
- (void)unloadResource:(id)resource shortName:(id)name options:(id)options replyHandler:(id)handler;
- (void)unloadResource:(id)resource usingBundle:(id)bundle options:(id)options auditToken:(id *)token replyHandler:(id)handler;
- (void)unloadResource:(id)resource usingBundle:(id)bundle options:(id)options replyHandler:(id)handler;
- (void)unmountVolume:(id)volume provider:(id)provider how:(int)how domainError:(id)error reply:(id)reply;
- (void)updateErrorStateForVolume:(id)volume provider:(id)provider domainError:(id)error reply:(id)reply;
@end

@implementation fskitdXPCServer

- (id)initForEntitledClient:(BOOL)client
{
  v5.receiver = self;
  v5.super_class = fskitdXPCServer;
  result = [(fskitdXPCServer *)&v5 init];
  if (result)
  {
    *(result + 9) = client;
  }

  return result;
}

- (void)handleInvalidated
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  ourConn = selfCopy->_ourConn;
  selfCopy->_ourConn = 0;

  hasTaskInterest = selfCopy->_hasTaskInterest;
  objc_sync_exit(selfCopy);

  if (hasTaskInterest)
  {
    taskUpdateClients = [gSettings taskUpdateClients];
    objc_sync_enter(taskUpdateClients);
    v6 = selfCopy;
    objc_sync_enter(v6);
    if (selfCopy->_hasTaskInterest)
    {
      selfCopy->_hasTaskInterest = 0;
      taskUpdateClients2 = [gSettings taskUpdateClients];
      [taskUpdateClients2 removeObject:v6];
    }

    objc_sync_exit(v6);

    objc_sync_exit(taskUpdateClients);
    v8 = gSettings;

    [v8 updateWorkTransaction];
  }
}

- (void)switchToFSKit:(id)kit
{
  kitCopy = kit;
  if (self->_clientHasEntitlement)
  {
    +[FSKitConstants FSAllClientXPCProtocols];
  }

  else
  {
    +[FSKitConstants FSClientXPCProtocol];
  }
  v5 = ;
  [(NSXPCConnection *)self->_ourConn setExportedInterface:v5];

  v6 = fskit_std_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    if (self->_clientHasEntitlement)
    {
      v7 = "yes";
    }

    else
    {
      v7 = "no";
    }

    v9 = 136315138;
    v10 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Hello FSClient! entitlement %s", &v9, 0xCu);
  }

  v8 = +[FSKitConstants FSClientHostXPCProtocol];
  [(NSXPCConnection *)self->_ourConn setRemoteObjectInterface:v8];

  kitCopy[2](kitCopy, 0);
}

- (void)LiveMounterReallyMountVolume:(id)volume fileSystem:(id)system displayName:(id)name provider:(id)provider domainError:(id)error on:(id)on how:(int)how options:(id)self0 auditToken:(id *)self1 reply:(id)self2
{
  volumeCopy = volume;
  systemCopy = system;
  nameCopy = name;
  providerCopy = provider;
  errorCopy = error;
  onCopy = on;
  optionsCopy = options;
  replyCopy = reply;
  v93 = 0;
  v94[0] = &v93;
  v94[1] = 0x3032000000;
  v94[2] = sub_100016264;
  v94[3] = sub_100016274;
  v95 = 0;
  v23 = volumeCopy;
  keyExistsAndHasValidFormat = 0;
  [gSettings startedWork];
  v24 = livefs_std_log();
  howCopy = how;
  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    *buf = 138413570;
    *&buf[4] = v23;
    *&buf[12] = 2112;
    *&buf[14] = nameCopy;
    *&buf[22] = 2112;
    *&buf[24] = providerCopy;
    *v101 = 2112;
    *&v101[2] = errorCopy;
    *&v101[10] = 2112;
    *&v101[12] = onCopy;
    v102 = 1024;
    howCopy2 = how;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "ReallyMountVolume:volume:%@:displayName:%@:provider:%@:domainError:%@:on:%@:how:0x%08x", buf, 0x3Au);
  }

  v82 = nameCopy;

  if (errorCopy)
  {
    domain = [errorCopy domain];
    if (![domain isEqual:NSPOSIXErrorDomain])
    {
LABEL_9:

      goto LABEL_10;
    }

    v26 = [errorCopy code] == 80;

    if (v26)
    {
      v27 = livefs_std_log();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        sub_100025500();
      }

      [NSError errorWithDomain:NSFileProviderErrorDomain code:-1000 userInfo:0];
      errorCopy = domain = errorCopy;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (([v23 containsString:@"/"] & 1) != 0 || objc_msgSend(v23, "containsString:", @":"))
  {
    v28 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    onCopy = 0;
LABEL_13:
    v33 = *(v94[0] + 40);
    *(v94[0] + 40) = v28;
LABEL_41:

    goto LABEL_42;
  }

  if ([onCopy isAbsolutePath])
  {
    onCopy = onCopy;
  }

  else
  {
    onCopy = [NSString stringWithFormat:@"%@/%@", gLiveFilesMountPath, onCopy];
  }

  v34 = livefs_std_log();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    *&buf[4] = providerCopy;
    *&buf[12] = 2112;
    *&buf[14] = onCopy;
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "ReallyMountVolume: Enter for provider %{public}@ mounting: %@", buf, 0x16u);
  }

  v35 = (v94[0] + 40);
  obj = *(v94[0] + 40);
  v32 = [theMountTable preflightMountWithName:v23 displayName:nameCopy storageName:v23 provider:providerCopy path:onCopy error:&obj];
  objc_storeStrong(v35, obj);
  if (*(v94[0] + 40))
  {
    v33 = livefs_std_log();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      sub_10002553C(v94);
    }

LABEL_40:
    v29 = 0;
    v30 = 0;
    v31 = 0;
    goto LABEL_41;
  }

  if (v32)
  {
    if ((how & 0x40) == 0 && [v32 currentState] <= 1)
    {
      v28 = [NSError errorWithDomain:NSPOSIXErrorDomain code:17 userInfo:0];
      v29 = 0;
      v30 = 0;
      v31 = 0;
      goto LABEL_13;
    }

    displayName = [v32 displayName];
    if ([displayName isEqualToString:nameCopy])
    {
      storageName = [v32 storageName];
      if ([storageName isEqualToString:v23])
      {
        mntOn = [v32 mntOn];
        v78 = [mntOn isEqualToString:onCopy];

        if (v78)
        {
          goto LABEL_37;
        }

LABEL_36:
        [v32 refreshPath:onCopy displayName:v82 storageName:v23];
        goto LABEL_37;
      }
    }

    goto LABEL_36;
  }

  v39 = [[FSAuditToken alloc] initWithToken:token];
  LODWORD(v76) = -1;
  v32 = [mountEntry newWithName:v23 fileSystem:systemCopy displayName:nameCopy storageName:v23 provider:providerCopy path:onCopy mountID:v76 auditToken:v39 mntTable:theMountTable];

  if (!v32)
  {
    v40 = livefs_std_log();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      sub_1000258A4();
    }

    v28 = [NSError errorWithDomain:NSCocoaErrorDomain code:516 userInfo:0];
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    goto LABEL_13;
  }

LABEL_37:
  v41 = [theRoot mkMountPath:onCopy mountID:{objc_msgSend(v32, "midx")}];
  v42 = *(v94[0] + 40);
  *(v94[0] + 40) = v41;

  if (v41)
  {
    v33 = livefs_std_log();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      sub_1000255AC(v94);
    }

    goto LABEL_40;
  }

  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"LIFS_DA", @"com.apple.filesystems.livefileproviderd", &keyExistsAndHasValidFormat);
  if (!keyExistsAndHasValidFormat || AppBooleanValue)
  {
    v61 = [@"com.apple.filesystems.UserFS.FileProvider" isEqualToString:providerCopy];
    howCopy3 = how;
    if (v61)
    {
      howCopy3 = how | 0x100;
    }

    howCopy = howCopy3;
  }

  BYTE4(v77) = (howCopy & 0x40) != 0;
  LODWORD(v77) = howCopy;
  v63 = [gSettings addMountNamed:v23 displayName:v82 mountID:objc_msgSend(v32 mountedOn:"midx") provider:onCopy fpStorage:providerCopy domainError:v23 how:errorCopy isReAdd:v77];
  v64 = *(v94[0] + 40);
  *(v94[0] + 40) = v63;

  if (*(v94[0] + 40))
  {
    v33 = livefs_std_log();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      sub_10002561C(v94);
    }

    v30 = 0;
    v31 = 0;
    v29 = 1;
    goto LABEL_41;
  }

  [v32 setDomainError:errorCopy];
  if (errorCopy)
  {
    v65 = livefs_std_log();
    if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
    {
      sub_10002568C();
    }

    howCopy |= 2u;
  }

  [v32 setCurrentState:1];
  v30 = (howCopy & 4) == 0;
  if ((howCopy & 4) == 0)
  {
    v66 = dispatch_semaphore_create(0);
    v67 = livefs_std_log();
    if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      *&buf[4] = v23;
      *&buf[12] = 2112;
      *&buf[14] = providerCopy;
      *&buf[22] = 2112;
      *&buf[24] = errorCopy;
      _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "Adding domain %@ for provider %@ domainError %@", buf, 0x20u);
    }

    v88[0] = _NSConcreteStackBlock;
    v88[1] = 3221225472;
    v88[2] = sub_10001627C;
    v88[3] = &unk_100061298;
    v90 = &v93;
    v33 = v66;
    v89 = v33;
    [LivefsDomainManager addDomain:v23 displayName:v82 storage:v23 provider:providerCopy domainError:errorCopy how:howCopy reply:v88];
    dispatch_semaphore_wait(v33, 0xFFFFFFFFFFFFFFFFLL);
    if (*(v94[0] + 40))
    {

      v30 = 0;
LABEL_109:
      v29 = 1;
      v31 = 1;
      goto LABEL_41;
    }

    v68 = livefs_std_log();
    if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = providerCopy;
      _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEFAULT, "addDomain succeeded for provider %@", buf, 0xCu);
    }

    v69 = livefs_std_log();
    if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
    {
      sub_1000256C8();
    }
  }

  v70 = livefs_std_log();
  howCopy |= (howCopy >> 5) & 2;
  if (os_log_type_enabled(v70, OS_LOG_TYPE_DEBUG))
  {
    sub_100025740();
  }

  if ((howCopy & 2) == 0)
  {
    connect = [v32 connect];
    v72 = *(v94[0] + 40);
    *(v94[0] + 40) = connect;

    if (connect)
    {
      v33 = livefs_std_log();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        sub_1000257C4();
      }

      goto LABEL_109;
    }
  }

  v73 = livefs_std_log();
  if (os_log_type_enabled(v73, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    *&buf[4] = v23;
    *&buf[12] = 1024;
    *&buf[14] = howCopy;
    *&buf[18] = 2112;
    *&buf[20] = optionsCopy;
    _os_log_debug_impl(&_mh_execute_header, v73, OS_LOG_TYPE_DEBUG, "ReallyMountVolume:mount mp for volume:%@ how:0x%08x mountOptions:%@", buf, 0x1Cu);
  }

  v74 = [v32 mount:howCopy options:optionsCopy];
  v75 = *(v94[0] + 40);
  *(v94[0] + 40) = v74;

  if (v74)
  {
    v33 = livefs_std_log();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      sub_100025834(v94);
    }

    goto LABEL_109;
  }

  if ((howCopy & 2) == 0)
  {
    [(fskitdXPCServer *)self doKernelMount:onCopy providerName:providerCopy mountEntry:v32];
  }

  v29 = 1;
  v31 = 1;
LABEL_42:
  if (*(v94[0] + 40))
  {
    if (v32)
    {
      [v32 setCurrentState:2];
    }

    if (v30)
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      *&buf[24] = sub_100016264;
      *v101 = sub_100016274;
      *&v101[8] = 0;
      v85[0] = _NSConcreteStackBlock;
      v85[1] = 3221225472;
      v85[2] = sub_100016300;
      v85[3] = &unk_100061298;
      v87 = buf;
      v43 = dispatch_semaphore_create(0);
      v86 = v43;
      [LivefsDomainManager removeDomain:v23 provider:providerCopy how:howCopy reply:v85];
      dispatch_semaphore_wait(v43, 0xFFFFFFFFFFFFFFFFLL);
      if (*(*&buf[8] + 40))
      {
        v44 = livefs_std_log();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
        {
          v45 = *(v94[0] + 40);
          v46 = *(*&buf[8] + 40);
          *v96 = 138412546;
          v97 = v45;
          v98 = 2112;
          v99 = v46;
          _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_INFO, "While recovering from %@, domain cleanup encountered %@", v96, 0x16u);
        }
      }

      _Block_object_dispose(buf, 8);
    }

    if (v31)
    {
      v47 = [gSettings removeMountNamed:v23 provider:providerCopy];
    }

    if (v29)
    {
      if (v32)
      {
        v48 = [v32 unmount:7];
      }

      v49 = onCopy;
      if (rmdir([onCopy fileSystemRepresentation]))
      {
        v50 = *__error();
        v51 = v32 && v50 == 2;
        v52 = v51;
        if (v50 && !v52)
        {
          v53 = livefs_std_log();
          if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
          {
            sub_1000258E0();
          }
        }
      }
    }
  }

  if (*(v94[0] + 40))
  {
    v54 = livefs_std_log();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
    {
      v55 = *(v94[0] + 40);
      *buf = 138412290;
      *&buf[4] = v55;
      v56 = "ReallyMountVolume: returning %@";
      v57 = v54;
      v58 = OS_LOG_TYPE_DEFAULT;
      v59 = 12;
LABEL_73:
      _os_log_impl(&_mh_execute_header, v57, v58, v56, buf, v59);
    }
  }

  else
  {
    v54 = livefs_std_log();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v56 = "ReallyMountVolume:finish:success";
      v57 = v54;
      v58 = OS_LOG_TYPE_INFO;
      v59 = 2;
      goto LABEL_73;
    }
  }

  [gSettings updateWorkTransaction];
  replyCopy[2](replyCopy, *(v94[0] + 40));

  _Block_object_dispose(&v93, 8);
}

- (void)doKernelMount:(id)mount providerName:(id)name mountEntry:(id)entry
{
  mountCopy = mount;
  nameCopy = name;
  entryCopy = entry;
  v10 = dispatch_get_global_queue(2, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100016460;
  block[3] = &unk_1000612C0;
  v15 = mountCopy;
  v16 = nameCopy;
  v17 = entryCopy;
  v11 = entryCopy;
  v12 = nameCopy;
  v13 = mountCopy;
  dispatch_async(v10, block);
}

- (void)mountVolume:(id)volume fileSystem:(id)system displayName:(id)name provider:(id)provider domainError:(id)error on:(id)on how:(int)how options:(id)self0 reply:(id)self1
{
  volumeCopy = volume;
  systemCopy = system;
  nameCopy = name;
  providerCopy = provider;
  errorCopy = error;
  onCopy = on;
  optionsCopy = options;
  replyCopy = reply;
  if (volumeCopy && providerCopy && onCopy)
  {
    [gSettings startedWork];
    v25 = dispatch_get_global_queue(2, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100016824;
    block[3] = &unk_1000612E8;
    block[4] = self;
    v28 = volumeCopy;
    v29 = systemCopy;
    v30 = nameCopy;
    v31 = providerCopy;
    v32 = errorCopy;
    v33 = onCopy;
    howCopy = how;
    v34 = optionsCopy;
    v35 = replyCopy;
    dispatch_async(v25, block);
  }

  else
  {
    v26 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
    (*(replyCopy + 2))(replyCopy, v26);
  }
}

- (void)mountVolume:(id)volume fileSystem:(id)system displayName:(id)name provider:(id)provider domainError:(id)error on:(id)on how:(int)how options:(id)self0 auditToken:(id *)self1 reply:(id)self2
{
  volumeCopy = volume;
  systemCopy = system;
  nameCopy = name;
  providerCopy = provider;
  errorCopy = error;
  onCopy = on;
  optionsCopy = options;
  replyCopy = reply;
  if (!self->_clientHasEntitlement)
  {
    v27 = fskit_std_log();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      sub_100025AA4();
    }

    v28 = fs_errorForPOSIXError();
    goto LABEL_10;
  }

  if (!volumeCopy || !providerCopy || !onCopy)
  {
    v28 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
LABEL_10:
    v29 = v28;
    replyCopy[2](replyCopy, v28);

    goto LABEL_11;
  }

  queue = dispatch_get_global_queue(2, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100016B58;
  block[3] = &unk_100061310;
  block[4] = self;
  v32 = volumeCopy;
  v33 = systemCopy;
  v34 = nameCopy;
  v35 = providerCopy;
  v36 = errorCopy;
  v37 = onCopy;
  howCopy = how;
  v38 = optionsCopy;
  v26 = *&token->var0[4];
  v41 = *token->var0;
  v42 = v26;
  v39 = replyCopy;
  dispatch_async(queue, block);

LABEL_11:
}

- (void)reallyUpdateErrorStateForVolume:(id)volume provider:(id)provider domainError:(id)error reply:(id)reply
{
  volumeCopy = volume;
  providerCopy = provider;
  errorCopy = error;
  replyCopy = reply;
  [gSettings startedWork];
  v14 = gSettings;
  v28 = 0;
  v23 = _NSConcreteStackBlock;
  v24 = 3221225472;
  v25 = sub_100016DE0;
  v26 = &unk_100061338;
  v15 = errorCopy;
  v27 = v15;
  v16 = [v14 updateMountEntry:volumeCopy provider:providerCopy settingsDictionary:&v28 updateBlock:&v23];
  v17 = v28;
  if (v16)
  {
    [gSettings updateWorkTransaction];
    replyCopy[2](replyCopy, v16);
  }

  else
  {
    v18 = [theMountTable lookupName:volumeCopy provider:providerCopy];
    v19 = v18;
    if (v18)
    {
      if (v15)
      {
        [v18 setDomainError:v15];
      }

      else
      {
        domainError = [v18 domainError];

        [v19 setDomainError:0];
        if (domainError)
        {
          [v19 resetConnectError];
          mntOn = [v19 mntOn];
          v22 = mntOn;
          if (([mntOn isAbsolutePath] & 1) == 0)
          {
            v22 = [NSString stringWithFormat:@"%@/%@", gLiveFilesMountPath, mntOn, v23, v24, v25, v26];
          }

          [(fskitdXPCServer *)self doKernelMount:v22 providerName:providerCopy mountEntry:v19];
        }
      }
    }

    [LivefsDomainManager updateDomain:v17 reply:replyCopy];
  }
}

- (void)updateErrorStateForVolume:(id)volume provider:(id)provider domainError:(id)error reply:(id)reply
{
  volumeCopy = volume;
  providerCopy = provider;
  errorCopy = error;
  replyCopy = reply;
  if (volumeCopy && providerCopy)
  {
    v14 = dispatch_get_global_queue(2, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100016FF8;
    block[3] = &unk_100061360;
    block[4] = self;
    v17 = volumeCopy;
    v18 = providerCopy;
    v19 = errorCopy;
    v20 = replyCopy;
    dispatch_async(v14, block);
  }

  else
  {
    v15 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
    (*(replyCopy + 2))(replyCopy, v15);
  }
}

- (void)unmountVolume:(id)volume provider:(id)provider how:(int)how domainError:(id)error reply:(id)reply
{
  LODWORD(v9) = how;
  volumeCopy = volume;
  providerCopy = provider;
  errorCopy = error;
  replyCopy = reply;
  if (verbose)
  {
    v16 = livefs_std_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413058;
      v32 = volumeCopy;
      v33 = 2112;
      v34 = providerCopy;
      v35 = 1024;
      v36 = v9;
      v37 = 2112;
      v38 = errorCopy;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Unmount of %@ for %@ with how %d domError %@", buf, 0x26u);
    }
  }

  v17 = [theMountTable lookupName:volumeCopy provider:providerCopy];
  v18 = v17;
  if (v17)
  {
    domainError = [v17 domainError];
    [v18 setDomainError:errorCopy];
    if (errorCopy)
    {
      v9 = v9 & 0xFFFFFFFD;
    }

    else
    {
      v9 = v9;
    }

    v20 = objc_opt_class();
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100017FE8;
    v22[3] = &unk_100061388;
    v23 = domainError;
    v24 = errorCopy;
    v30 = v9;
    v25 = v18;
    selfCopy = self;
    v27 = volumeCopy;
    v28 = providerCopy;
    v29 = replyCopy;
    v21 = domainError;
    [v20 LiveMounterDoUnmount:v25 how:v9 reply:v22];
  }

  else
  {
    v21 = [NSError errorWithDomain:NSPOSIXErrorDomain code:2 userInfo:0];
    (*(replyCopy + 2))(replyCopy, v21, 0);
  }
}

- (void)setVerboseLevel:(int)level reply:(id)reply
{
  if (level < 0x65)
  {
    verbose = level;
    v8 = *(reply + 2);
    replyCopy = reply;
    v8();
  }

  else
  {
    v9 = NSDebugDescriptionErrorKey;
    v10 = @"verbose level must be between 0 and 100";
    replyCopy2 = reply;
    replyCopy = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    v7 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:replyCopy];
    (*(reply + 2))(replyCopy2, v7);
  }
}

- (void)installedExtensions:(id)extensions
{
  extensionsCopy = extensions;
  ourConn = self->_ourConn;
  if (ourConn)
  {
    [(NSXPCConnection *)ourConn auditToken];
  }

  else
  {
    memset(v9, 0, sizeof(v9));
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100018314;
  v7[3] = &unk_1000613B0;
  v8 = extensionsCopy;
  v6 = extensionsCopy;
  [(fskitdXPCServer *)self _installedExtensionsForAuditToken:v9 replyHandler:v7];
}

- (void)installedExtensionWithShortName:(id)name replyHandler:(id)handler
{
  nameCopy = name;
  handlerCopy = handler;
  ourConn = self->_ourConn;
  if (ourConn)
  {
    [(NSXPCConnection *)ourConn auditToken];
  }

  else
  {
    memset(v10, 0, sizeof(v10));
  }

  v9 = [FSAuditToken tokenWithToken:v10];
  [(fskitdXPCServer *)self _installedExtensionWithShortName:nameCopy user:v9 replyHandler:handlerCopy];
}

- (void)installedExtensionWithShortName:(id)name user:(id)user replyHandler:(id)handler
{
  if (self->_clientHasEntitlement)
  {
    handlerCopy = handler;
    [(fskitdXPCServer *)self _installedExtensionWithShortName:name user:user replyHandler:?];
  }

  else
  {
    handlerCopy2 = handler;
    handlerCopy = fs_errorForPOSIXError();
    (*(handler + 2))(handlerCopy2, 0);
  }
}

- (void)installedExtensionWithBundleID:(id)d replyHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  ourConn = self->_ourConn;
  if (ourConn)
  {
    [(NSXPCConnection *)ourConn auditToken];
  }

  else
  {
    memset(v10, 0, sizeof(v10));
  }

  v9 = [FSAuditToken tokenWithToken:v10];
  [(fskitdXPCServer *)self _installedExtensionWithBundleID:dCopy user:v9 replyHandler:handlerCopy];
}

- (void)_installedExtensionWithBundleID:(id)d user:(id)user replyHandler:(id)handler
{
  handlerCopy = handler;
  v9 = [(fskitdXPCServer *)self getExtensionModuleFromID:d forToken:user];
  handlerCopy[2](handlerCopy, v9, 0);
}

- (id)getExtensionModuleFromID:(id)d forToken:(id)token
{
  dCopy = d;
  tokenCopy = token;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_100016264;
  v30 = sub_100016274;
  v31 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_100016264;
  v24 = sub_100016274;
  v25 = 0;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000188BC;
  v19[3] = &unk_100060F80;
  v19[4] = &v20;
  v19[5] = &v26;
  [gAgentManager currentExtensionsForToken:tokenCopy replyHandler:v19];
  if (v21[5])
  {
    v7 = 0;
  }

  else
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = sub_100016264;
    v17 = sub_100016274;
    v18 = 0;
    v8 = v27[5];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10001893C;
    v10[3] = &unk_1000613D8;
    v11 = dCopy;
    v12 = &v13;
    [v8 enumerateObjectsUsingBlock:v10];
    v7 = v14[5];

    _Block_object_dispose(&v13, 8);
  }

  _Block_object_dispose(&v20, 8);

  _Block_object_dispose(&v26, 8);

  return v7;
}

- (id)getModuleIdentityFromShortName:(id)name
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_100016264;
  v14 = sub_100016274;
  v15 = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100018B1C;
  v7[3] = &unk_100061400;
  nameCopy = name;
  v8 = nameCopy;
  v9 = &v10;
  [(fskitdXPCServer *)self installedExtensionWithShortName:nameCopy replyHandler:v7];
  v5 = v11[5];

  _Block_object_dispose(&v10, 8);

  return v5;
}

- (id)getModuleIdentityFromShortName:(id)name user:(id)user
{
  nameCopy = name;
  userCopy = user;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_100016264;
  v18 = sub_100016274;
  v19 = 0;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100018CFC;
  v11[3] = &unk_100061400;
  v8 = nameCopy;
  v12 = v8;
  v13 = &v14;
  [(fskitdXPCServer *)self installedExtensionWithShortName:v8 user:userCopy replyHandler:v11];
  v9 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v9;
}

- (BOOL)extensionSupportsResource:(id)resource resource:(id)a4
{
  resourceCopy = resource;
  kind = [a4 kind];
  attributes = [resourceCopy attributes];
  v8 = attributes;
  if (kind <= 2)
  {
    if (kind != 1)
    {
      if (kind == 2)
      {
        v9 = &FSModuleIdentityAttributeSupportsGenericURLs;
        goto LABEL_8;
      }

      goto LABEL_10;
    }

    v18 = &FSModuleIdentityAttributeSupportsBlockResources;
LABEL_21:
    v10 = [attributes objectForKeyedSubscript:*v18];

    if (!v10 || ([v10 BOOLValue] & 1) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_25;
  }

  if (kind == 3)
  {
    v18 = &FSModuleIdentityAttributeSupportsServerURLs;
    goto LABEL_21;
  }

  if (kind != 4)
  {
LABEL_10:
    v10 = [attributes objectForKeyedSubscript:FSModuleIdentityAttributeSupportsBlockResources];

    attributes2 = [resourceCopy attributes];
    v13 = [attributes2 objectForKeyedSubscript:FSModuleIdentityAttributeSupportsServerURLs];

    attributes3 = [resourceCopy attributes];
    v15 = [attributes3 objectForKeyedSubscript:FSModuleIdentityAttributeSupportsGenericURLs];

    attributes4 = [resourceCopy attributes];
    v17 = [attributes4 objectForKeyedSubscript:FSModuleIdentityAttributeSupportsPathURLs];

    if (v10 && ([v10 BOOLValue] & 1) != 0 || v13 && (objc_msgSend(v13, "BOOLValue") & 1) != 0 || v15 && (objc_msgSend(v15, "BOOLValue") & 1) != 0 || v17 && (objc_msgSend(v17, "BOOLValue") & 1) != 0)
    {

      goto LABEL_23;
    }

LABEL_25:
    bOOLValue = 1;
    goto LABEL_26;
  }

  v9 = &FSModuleIdentityAttributeSupportsPathURLs;
LABEL_8:
  v10 = [attributes objectForKeyedSubscript:*v9];

  if (!v10)
  {
LABEL_23:
    bOOLValue = 0;
    goto LABEL_26;
  }

  bOOLValue = [v10 BOOLValue];
LABEL_26:

  return bOOLValue;
}

- (BOOL)extensionSupportsResourceScheme:(id)scheme resource:(id)resource
{
  schemeCopy = scheme;
  resourceCopy = resource;
  if ([resourceCopy kind] == 2 || objc_msgSend(resourceCopy, "kind") == 3)
  {
    kind = [resourceCopy kind];
    v8 = FSGenericURLResource_ptr;
    if (kind != 2)
    {
      v8 = FSServerURLResource_ptr;
    }

    v9 = [*v8 dynamicCast:resourceCopy];
    v10 = [v9 url];
    scheme = [v10 scheme];

    if (!scheme)
    {
      v13 = fskit_std_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_100025D9C(schemeCopy, resourceCopy, v13);
      }

      v15 = 0;
      goto LABEL_23;
    }

    attributes = [schemeCopy attributes];
    v13 = [attributes objectForKeyedSubscript:FSModuleIdentityAttributeSupportedSchemes];

    if (v13)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v23[0] = _NSConcreteStackBlock;
        v23[1] = 3221225472;
        v23[2] = sub_100019378;
        v23[3] = &unk_100061428;
        v14 = scheme;
        v24 = v14;
        v15 = [v13 fs_any_of:v23];
        v16 = fskit_std_log();
        v17 = v16;
        if (v15)
        {
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
          {
            bundleIdentifier = [schemeCopy bundleIdentifier];
            getResourceID = [resourceCopy getResourceID];
            *buf = 136315906;
            v26 = "[fskitdXPCServer extensionSupportsResourceScheme:resource:]";
            v27 = 2112;
            v28 = bundleIdentifier;
            v29 = 2112;
            v30 = getResourceID;
            v31 = 2112;
            v32 = v14;
            _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "%s: Extension (%@) supports given resource (%@) scheme (%@)", buf, 0x2Au);
LABEL_26:
          }
        }

        else if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          bundleIdentifier = [schemeCopy bundleIdentifier];
          getResourceID = [resourceCopy getResourceID];
          *buf = 136315906;
          v26 = "[fskitdXPCServer extensionSupportsResourceScheme:resource:]";
          v27 = 2112;
          v28 = bundleIdentifier;
          v29 = 2112;
          v30 = getResourceID;
          v31 = 2112;
          v32 = v14;
          _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%s: Extension (%@) doesn't support given resource (%@) scheme (%@)", buf, 0x2Au);
          goto LABEL_26;
        }

        v20 = v24;
        goto LABEL_22;
      }

      v20 = fskit_std_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_100025CFC(schemeCopy, v20);
      }
    }

    else
    {
      v20 = fskit_std_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        bundleIdentifier2 = [schemeCopy bundleIdentifier];
        *buf = 136315394;
        v26 = "[fskitdXPCServer extensionSupportsResourceScheme:resource:]";
        v27 = 2112;
        v28 = bundleIdentifier2;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "%s: Extension (%@) doesn't have any supported schemes", buf, 0x16u);
      }
    }

    v15 = 0;
LABEL_22:

LABEL_23:
    goto LABEL_24;
  }

  v15 = 1;
LABEL_24:

  return v15;
}

- (void)getRealResource:(id)resource auditToken:(id)token reply:(id)reply
{
  resourceCopy = resource;
  tokenCopy = token;
  replyCopy = reply;
  if ([resourceCopy kind] != 1)
  {
    if ([resourceCopy kind] == 2)
    {
      v13 = [FSGenericURLResource dynamicCast:resourceCopy];
      resourceManager = [gSettings resourceManager];
      objc_sync_enter(resourceManager);
      resourceManager2 = [gSettings resourceManager];
      getResourceID = [v13 getResourceID];
      v17 = [resourceManager2 getResource:getResourceID];

      if (v17)
      {
LABEL_15:
        objc_sync_exit(resourceManager);

        replyCopy[2](replyCopy, v17, 0);
        resourceCopy = v17;
        goto LABEL_26;
      }
    }

    else
    {
      if ([resourceCopy kind] != 4)
      {
LABEL_25:
        v30 = fs_errorForPOSIXError();
        (replyCopy)[2](replyCopy, 0, v30);

        goto LABEL_26;
      }

      v13 = [FSPathURLResource dynamicCast:resourceCopy];
      resourceManager = [gSettings resourceManager];
      objc_sync_enter(resourceManager);
      resourceManager3 = [gSettings resourceManager];
      getResourceID2 = [v13 getResourceID];
      v17 = [resourceManager3 getResource:getResourceID2];

      if (v17)
      {
        goto LABEL_15;
      }
    }

    v17 = v13;
    resourceManager4 = [gSettings resourceManager];
    [resourceManager4 updateResource:v17];

    goto LABEL_15;
  }

  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = sub_100016264;
  v42 = sub_100016274;
  v43 = [FSBlockDeviceResource dynamicCast:resourceCopy];
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = sub_100016264;
  v36 = sub_100016274;
  v37 = 0;
  v10 = v39[5];
  if (!v10)
  {
    goto LABEL_11;
  }

  if ([v10 fileDescriptor] != -1)
  {
    if (v39[5])
    {
      v11 = fskit_std_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        [resourceCopy getResourceID];
        objc_claimAutoreleasedReturnValue();
        sub_100025E5C();
      }

      replyCopy[2](replyCopy, v39[5], 0);
      v12 = 0;
      goto LABEL_24;
    }

LABEL_11:
    v12 = 1;
    goto LABEL_24;
  }

  bSDName = [v39[5] BSDName];
  isWritable = [v39[5] isWritable];
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_10001995C;
  v31[3] = &unk_100061450;
  v31[4] = &v32;
  v31[5] = &v38;
  [FSBlockDeviceResource openWithBSDName:bSDName writable:isWritable auditToken:tokenCopy replyHandler:v31];

  v23 = v39[5];
  if (v33[5])
  {
    v24 = fskit_std_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      sub_100025EAC();
    }

    v25 = 0;
    v26 = v33[5];
  }

  else
  {
    v27 = fskit_std_log();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      [v23 getResourceID];
      objc_claimAutoreleasedReturnValue();
      sub_100025F2C();
    }

    resourceManager5 = [gSettings resourceManager];
    objc_sync_enter(resourceManager5);
    resourceManager6 = [gSettings resourceManager];
    [resourceManager6 updateResource:v23];

    objc_sync_exit(resourceManager5);
    v26 = 0;
    v25 = v23;
  }

  replyCopy[2](replyCopy, v25, v26);
  v12 = 0;
  resourceCopy = v23;
LABEL_24:
  _Block_object_dispose(&v32, 8);

  _Block_object_dispose(&v38, 8);
  if (v12)
  {
    goto LABEL_25;
  }

LABEL_26:
}

- (id)applyResource:(id)resource targetBundle:(id)bundle instanceID:(id)d initiatorAuditToken:(id)token authorizingAuditToken:(id)auditToken usingBlock:(id)block
{
  blockCopy = block;
  auditTokenCopy = auditToken;
  tokenCopy = token;
  dCopy = d;
  resourceCopy = resource;
  v19 = [(fskitdXPCServer *)self getExtensionModuleFromID:bundle forToken:tokenCopy];
  v20 = [(fskitdXPCServer *)self applyResource:resourceCopy usingIdentity:v19 instanceID:dCopy initiatorAuditToken:tokenCopy authorizingAuditToken:auditTokenCopy usingBlock:blockCopy];

  return v20;
}

- (id)applyResource:(id)resource usingIdentity:(id)identity instanceID:(id)d initiatorAuditToken:(id)token authorizingAuditToken:(id)auditToken usingBlock:(id)block
{
  resourceCopy = resource;
  identityCopy = identity;
  dCopy = d;
  tokenCopy = token;
  auditTokenCopy = auditToken;
  blockCopy = block;
  v81[0] = 0;
  v81[1] = v81;
  v81[2] = 0x2020000000;
  v82 = 1;
  v75 = 0;
  v76 = &v75;
  v77 = 0x3032000000;
  v78 = sub_100016264;
  v79 = sub_100016274;
  v80 = 0;
  v69 = 0;
  v70 = &v69;
  v71 = 0x3032000000;
  v72 = sub_100016264;
  v73 = sub_100016274;
  v74 = 0;
  v63 = 0;
  v64 = &v63;
  v65 = 0x3032000000;
  v66 = sub_100016264;
  v67 = sub_100016274;
  v68 = 0;
  v20 = fskit_std_log();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    sub_100025F7C(resourceCopy, v85, [resourceCopy kind], v20);
  }

  v21 = identityCopy;
  bundleIdentifier = [v21 bundleIdentifier];
  if (!v21)
  {
    v30 = fskit_std_log();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      sub_1000260E0();
    }

    goto LABEL_25;
  }

  if (([v21 isEnabled] & 1) == 0)
  {
    v30 = fskit_std_log();
    if (!os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
LABEL_25:

      v29 = fs_errorForPOSIXError();
      goto LABEL_26;
    }

    *buf = 136315394;
    *&buf[4] = "[fskitdXPCServer applyResource:usingIdentity:instanceID:initiatorAuditToken:authorizingAuditToken:usingBlock:]";
    *&buf[12] = 2112;
    *&buf[14] = bundleIdentifier;
    v31 = "%s: Attempt to start disabled extension %@";
    v32 = v30;
    v33 = 22;
LABEL_19:
    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, v31, buf, v33);
    goto LABEL_25;
  }

  if (![tokenCopy ruid] && (objc_msgSend(v21, "isSystem") & 1) == 0)
  {
    v30 = fskit_std_log();
    if (!os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_25;
    }

    *buf = 138412290;
    *&buf[4] = bundleIdentifier;
    v31 = "Attempt to start non-Apple extension %@ on behalf of root";
    v32 = v30;
    v33 = 12;
    goto LABEL_19;
  }

  if (![(fskitdXPCServer *)self extensionSupportsResource:v21 resource:resourceCopy])
  {
    v30 = fskit_std_log();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      [resourceCopy getResourceID];
      objc_claimAutoreleasedReturnValue();
      sub_100025FD4();
    }

    goto LABEL_25;
  }

  if (![(fskitdXPCServer *)self extensionSupportsResourceScheme:v21 resource:resourceCopy])
  {
    v30 = fskit_std_log();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      [resourceCopy getResourceID];
      objc_claimAutoreleasedReturnValue();
      sub_10002602C();
    }

    goto LABEL_25;
  }

  v23 = gExtensionManager;
  fs_containerIdentifier = [dCopy fs_containerIdentifier];
  v62[0] = _NSConcreteStackBlock;
  v62[1] = 3221225472;
  v62[2] = sub_10001A594;
  v62[3] = &unk_100061478;
  v62[4] = &v75;
  v62[5] = &v63;
  [v23 extensionForBundle:bundleIdentifier user:tokenCopy instance:fs_containerIdentifier replyHandler:v62];

  if (v76[5] || ([v64[5] errorFromStartingProc], v25 = objc_claimAutoreleasedReturnValue(), v26 = v76[5], v76[5] = v25, v26, v76[5]))
  {
    v27 = fskit_std_log();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = v76[5];
      *buf = 136315650;
      *&buf[4] = "[fskitdXPCServer applyResource:usingIdentity:instanceID:initiatorAuditToken:authorizingAuditToken:usingBlock:]";
      *&buf[12] = 2112;
      *&buf[14] = bundleIdentifier;
      *&buf[22] = 2112;
      v84 = v28;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "%s: Starting extension for %@ reported error %@", buf, 0x20u);
    }

LABEL_14:
    v29 = v76[5];
LABEL_26:
    v34 = v29;
    goto LABEL_27;
  }

  v61[0] = _NSConcreteStackBlock;
  v61[1] = 3221225472;
  v61[2] = sub_10001A614;
  v61[3] = &unk_1000614A0;
  v61[4] = &v75;
  v61[5] = &v69;
  [(fskitdXPCServer *)self getRealResource:resourceCopy auditToken:tokenCopy reply:v61];
  if (v76[5])
  {
    v36 = fskit_std_log();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      [resourceCopy getResourceID];
      objc_claimAutoreleasedReturnValue();
      sub_100026084();
    }

    [gSettings removeReferencesToTask:dCopy];
    goto LABEL_14;
  }

  v37 = v70[5];

  v38 = v64[5];
  v39 = v76;
  obj = v76[5];
  v40 = [v38 newXPCConnectionWithError:&obj];
  objc_storeStrong(v39 + 5, obj);
  if (v76[5])
  {
    v41 = fskit_std_log();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      v42 = v76[5];
      *buf = 136315650;
      *&buf[4] = "[fskitdXPCServer applyResource:usingIdentity:instanceID:initiatorAuditToken:authorizingAuditToken:usingBlock:]";
      *&buf[12] = 2112;
      *&buf[14] = bundleIdentifier;
      *&buf[22] = 2112;
      v84 = v42;
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "%s: Connecting to extension for %@ intending to probe reported error %@", buf, 0x20u);
    }

    v34 = v76[5];
  }

  else
  {
    v43 = fskit_std_log();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = bundleIdentifier;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "About to talk to the connection for %@", buf, 0xCu);
    }

    v59[0] = _NSConcreteStackBlock;
    v59[1] = 3221225472;
    v59[2] = sub_10001A698;
    v59[3] = &unk_1000614C8;
    v59[4] = &v75;
    v51 = [v40 synchronousRemoteObjectProxyWithErrorHandler:v59];
    fs_containerIdentifier2 = [dCopy fs_containerIdentifier];
    v58[0] = _NSConcreteStackBlock;
    v58[1] = 3221225472;
    v58[2] = sub_10001A6A8;
    v58[3] = &unk_1000614C8;
    v58[4] = &v75;
    [v51 checkIn:fs_containerIdentifier2 replyHandler:v58];

    if (v76[5])
    {
      v45 = fskit_std_log();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        v46 = v76[5];
        *buf = 136315650;
        *&buf[4] = "[fskitdXPCServer applyResource:usingIdentity:instanceID:initiatorAuditToken:authorizingAuditToken:usingBlock:]";
        *&buf[12] = 2112;
        *&buf[14] = bundleIdentifier;
        *&buf[22] = 2112;
        v84 = v46;
        _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "%s: checkIn to extension %@ reported error %@", buf, 0x20u);
      }

      v34 = v76[5];
    }

    else
    {
      v47 = v64[5];
      getResourceID = [v37 getResourceID];
      [v47 addResourceID:getResourceID];

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      LOBYTE(v84) = 0;
      v49 = dispatch_group_create();
      dispatch_group_enter(v49);
      v52[0] = _NSConcreteStackBlock;
      v52[1] = 3221225472;
      v52[2] = sub_10001A6B8;
      v52[3] = &unk_1000614F0;
      v50 = v49;
      v53 = v50;
      v55 = buf;
      v56 = &v63;
      v57 = v81;
      v54 = v37;
      blockCopy[2](blockCopy, bundleIdentifier, v54, v40, v52);
      dispatch_group_wait(v50, 0xFFFFFFFFFFFFFFFFLL);
      v34 = v76[5];

      _Block_object_dispose(buf, 8);
    }
  }

  resourceCopy = v37;
LABEL_27:

  _Block_object_dispose(&v63, 8);
  _Block_object_dispose(&v69, 8);

  _Block_object_dispose(&v75, 8);
  _Block_object_dispose(v81, 8);

  return v34;
}

- (id)canStartProbeTask:(id)task resource:(id)resource
{
  taskCopy = task;
  resourceCopy = resource;
  resourceManager = [gSettings resourceManager];
  objc_sync_enter(resourceManager);
  resourceManager2 = [gSettings resourceManager];
  getResourceID = [resourceCopy getResourceID];
  v10 = [resourceManager2 getResourceState:getResourceID];

  v11 = [FSBlockDeviceResource dynamicCast:resourceCopy];
  v12 = v11;
  if (v10 >= 2 && (v10 - 4 <= 0xFFFFFFFD ? (v15 = v11 == 0) : (v15 = 1), v15 || ([v11 isWritable] & 1) != 0))
  {
    v14 = fs_errorForPOSIXError();
    v16 = fskit_std_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [resourceCopy getResourceID];
      objc_claimAutoreleasedReturnValue();
      sub_10002615C();
    }
  }

  else
  {
    resourceManager3 = [gSettings resourceManager];
    [resourceManager3 addTaskUUID:taskCopy resource:resourceCopy];

    v14 = 0;
  }

  objc_sync_exit(resourceManager);

  return v14;
}

- (void)probeResource:(id)resource usingBundle:(id)bundle replyHandler:(id)handler
{
  resourceCopy = resource;
  bundleCopy = bundle;
  handlerCopy = handler;
  ourConn = self->_ourConn;
  if (ourConn)
  {
    [(NSXPCConnection *)ourConn auditToken];
  }

  else
  {
    memset(v12, 0, sizeof(v12));
  }

  [(fskitdXPCServer *)self _probeResource:resourceCopy usingBundle:bundleCopy auditToken:v12 replyHandler:handlerCopy];
}

- (id)canStartTask:(id)task resource:(id)resource
{
  taskCopy = task;
  resourceCopy = resource;
  resourceManager = [gSettings resourceManager];
  objc_sync_enter(resourceManager);
  resourceManager2 = [gSettings resourceManager];
  getResourceID = [resourceCopy getResourceID];
  v10 = [resourceManager2 getResourceState:getResourceID];

  if (v10)
  {
    v11 = fs_errorForPOSIXError();
    v12 = fskit_std_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [resourceCopy getResourceID];
      objc_claimAutoreleasedReturnValue();
      sub_1000261B8();
    }
  }

  else
  {
    resourceManager3 = [gSettings resourceManager];
    [resourceManager3 addTaskUUID:taskCopy resource:resourceCopy];

    v11 = 0;
  }

  objc_sync_exit(resourceManager);

  return v11;
}

- (id)canStartUnloadTask:(id)task resource:(id)resource
{
  taskCopy = task;
  resourceCopy = resource;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_100016264;
  v27 = sub_100016274;
  v28 = 0;
  resourceManager = [gSettings resourceManager];
  objc_sync_enter(resourceManager);
  resourceManager2 = [gSettings resourceManager];
  v9 = [resourceManager2 getTaskUUIDs:resourceCopy];

  if (v9)
  {
    tasks = [gSettings tasks];
    objc_sync_enter(tasks);
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10001B038;
    v20[3] = &unk_100061518;
    v22 = &v23;
    v21 = resourceCopy;
    [v9 enumerateObjectsUsingBlock:v20];

    objc_sync_exit(tasks);
  }

  if (!v24[5])
  {
    resourceManager3 = [gSettings resourceManager];
    getResourceID = [resourceCopy getResourceID];
    v13 = [resourceManager3 getResourceState:getResourceID];

    if (v13 <= 6 && ((1 << v13) & 0x71) != 0)
    {
      v14 = fskit_std_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        [resourceCopy getResourceID];
        objc_claimAutoreleasedReturnValue();
        sub_100026214();
      }

      resourceManager4 = [gSettings resourceManager];
      [resourceManager4 addTaskUUID:taskCopy resource:resourceCopy];
    }

    else
    {
      v18 = fs_errorForPOSIXError();
      v19 = v24[5];
      v24[5] = v18;

      resourceManager4 = fskit_std_log();
      if (os_log_type_enabled(resourceManager4, OS_LOG_TYPE_ERROR))
      {
        [resourceCopy getResourceID];
        objc_claimAutoreleasedReturnValue();
        [v24[5] localizedDescription];
        objc_claimAutoreleasedReturnValue();
        sub_100026264();
      }
    }
  }

  objc_sync_exit(resourceManager);

  v16 = v24[5];
  _Block_object_dispose(&v23, 8);

  return v16;
}

- (void)doCheckResource:(id)resource usingBundle:(id)bundle options:(id)options connection:(id)connection reply:(id)reply
{
  resourceCopy = resource;
  bundleCopy = bundle;
  optionsCopy = options;
  connectionCopy = connection;
  replyCopy = reply;
  ourConn = self->_ourConn;
  if (ourConn)
  {
    [(NSXPCConnection *)ourConn auditToken];
  }

  else
  {
    memset(v18, 0, sizeof(v18));
  }

  [(fskitdXPCServer *)self _checkResource:resourceCopy usingBundle:bundleCopy options:optionsCopy auditToken:v18 connection:connectionCopy replyHandler:replyCopy];
}

- (id)getInitiatorBundleIDForToken:(id *)token
{
  v3 = *&token->var0[4];
  *v11.val = *token->var0;
  *&v11.val[4] = v3;
  v4 = SecTaskCreateWithAuditToken(0, &v11);
  if (v4)
  {
    v5 = v4;
    v6 = SecTaskCopyValueForEntitlement(v4, @"application-identifier", 0);
    if (v6)
    {
      v7 = v6;
      v8 = CFGetTypeID(v6);
      if (v8 == CFStringGetTypeID())
      {
        CFRelease(v5);
        v9 = fskit_std_log();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          sub_1000262C0();
        }

        goto LABEL_11;
      }

      CFRelease(v7);
    }

    CFRelease(v5);
  }

  v9 = fskit_std_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v11.val[0] = 136315138;
    *&v11.val[1] = "[fskitdXPCServer getInitiatorBundleIDForToken:]";
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s did not find initiator ID", &v11, 0xCu);
  }

  v7 = &stru_100062B08;
LABEL_11:

  return v7;
}

- (id)getTeamIDForToken:(id *)token
{
  v3 = *&token->var0[4];
  *token.val = *token->var0;
  *&token.val[4] = v3;
  v4 = SecTaskCreateWithAuditToken(0, &token);
  if (v4)
  {
    v5 = v4;
    v6 = SecTaskCopyTeamIdentifier();
    if (v6)
    {
      v7 = v6;
      v8 = CFGetTypeID(v6);
      if (v8 == CFStringGetTypeID())
      {
        CFRelease(v5);
        v9 = fskit_std_log();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          sub_10002633C();
        }

        goto LABEL_14;
      }

      CFRelease(v7);
    }

    else
    {
      v10 = fskit_std_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *__error();
        token.val[0] = 138412546;
        *&token.val[1] = 0;
        LOWORD(token.val[3]) = 1024;
        *(&token.val[3] + 2) = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Received error '%@', errno %d, retrieving team ID", &token, 0x12u);
      }
    }

    CFRelease(v5);
  }

  v9 = fskit_std_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    token.val[0] = 136315138;
    *&token.val[1] = "[fskitdXPCServer getTeamIDForToken:]";
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s did not find team ID", &token, 0xCu);
  }

  v7 = &stru_100062B08;
LABEL_14:

  return v7;
}

- (id)getInitiatorSigningIDForToken:(id *)token
{
  v3 = *&token->var0[4];
  *cf.val = *token->var0;
  *&cf.val[4] = v3;
  v4 = SecTaskCreateWithAuditToken(0, &cf);
  if (!v4)
  {
LABEL_6:
    v10 = fskit_std_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      sub_1000264C0();
    }

    v6 = &stru_100062B08;
    goto LABEL_12;
  }

  v5 = v4;
  *cf.val = 0;
  v6 = SecTaskCopySigningIdentifier(v4, &cf);
  CFRelease(v5);
  v7 = *cf.val;
  v8 = fskit_std_log();
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1000263B8();
    }

    CFRelease(*cf.val);
    goto LABEL_6;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_100026438();
  }

LABEL_12:

  return v6;
}

- (void)formatResource:(id)resource usingBundle:(id)bundle options:(id)options connection:(id)connection replyHandler:(id)handler
{
  resourceCopy = resource;
  bundleCopy = bundle;
  optionsCopy = options;
  connectionCopy = connection;
  handlerCopy = handler;
  ourConn = self->_ourConn;
  if (ourConn)
  {
    [(NSXPCConnection *)ourConn auditToken];
  }

  else
  {
    memset(v18, 0, sizeof(v18));
  }

  [(fskitdXPCServer *)self _formatResource:resourceCopy usingBundle:bundleCopy options:optionsCopy auditToken:v18 connection:connectionCopy replyHandler:handlerCopy];
}

- (void)currentTasks:(id)tasks
{
  tasksCopy = tasks;
  ourConn = self->_ourConn;
  if (ourConn)
  {
    [(NSXPCConnection *)ourConn auditToken];
  }

  else
  {
    memset(v9, 0, sizeof(v9));
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001B828;
  v7[3] = &unk_1000613B0;
  v8 = tasksCopy;
  v6 = tasksCopy;
  [(fskitdXPCServer *)self _currentTasksForAuditToken:v9 replyHandler:v7];
}

- (void)currentResourceIDs:(id)ds
{
  dsCopy = ds;
  ourConn = self->_ourConn;
  if (ourConn)
  {
    [(NSXPCConnection *)ourConn auditToken];
  }

  else
  {
    memset(v9, 0, sizeof(v9));
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001B8F0;
  v7[3] = &unk_1000613B0;
  v8 = dsCopy;
  v6 = dsCopy;
  [(fskitdXPCServer *)self _currentResourceIDsForAuditToken:v9 replyHandler:v7];
}

- (void)currentContainers:(id)containers
{
  containersCopy = containers;
  ourConn = self->_ourConn;
  if (ourConn)
  {
    [(NSXPCConnection *)ourConn auditToken];
  }

  else
  {
    memset(v9, 0, sizeof(v9));
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001B9B8;
  v7[3] = &unk_1000613B0;
  v8 = containersCopy;
  v6 = containersCopy;
  [(fskitdXPCServer *)self _currentContainersForAuditToken:v9 replyHandler:v7];
}

- (void)setTaskUpdateInterest:(BOOL)interest replyHandler:(id)handler
{
  interestCopy = interest;
  handlerCopy = handler;
  taskUpdateClients = [gSettings taskUpdateClients];
  objc_sync_enter(taskUpdateClients);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_ourConn)
  {
    selfCopy->_hasTaskInterest = interestCopy;
    if (interestCopy)
    {
      taskUpdateClients2 = [gSettings taskUpdateClients];
      [taskUpdateClients2 addObject:selfCopy];
    }

    else
    {
      taskUpdateClients3 = [gSettings taskUpdateClients];
      v10 = [taskUpdateClients3 containsObject:selfCopy];

      if (!v10)
      {
        goto LABEL_7;
      }

      taskUpdateClients2 = [gSettings taskUpdateClients];
      [taskUpdateClients2 removeObject:selfCopy];
    }
  }

LABEL_7:
  objc_sync_exit(selfCopy);

  objc_sync_exit(taskUpdateClients);
  [gSettings updateWorkTransaction];
  handlerCopy[2](handlerCopy, 0);
}

- (void)cancelTask:(id)task replyHandler:(id)handler
{
  taskCopy = task;
  handlerCopy = handler;
  v8 = fskit_std_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_100026540();
  }

  tasks = [gSettings tasks];
  objc_sync_enter(tasks);
  tasks2 = [gSettings tasks];
  v11 = [tasks2 objectForKey:taskCopy];

  objc_sync_exit(tasks);
  if (v11)
  {
    taskReferenceHolder = [v11 taskReferenceHolder];
    v13 = [fskitdExtensionInstance dynamicCast:taskReferenceHolder];

    if (v13)
    {
      ourConn = self->_ourConn;
      if (ourConn)
      {
        [(NSXPCConnection *)ourConn auditToken];
      }

      else
      {
        memset(v30, 0, sizeof(v30));
      }

      v18 = [(fskitdXPCServer *)self getInitiatorBundleIDForToken:v30];
      v19 = self->_ourConn;
      if (v19)
      {
        [(NSXPCConnection *)v19 auditToken];
      }

      else
      {
        memset(v30, 0, sizeof(v30));
      }

      v20 = [(fskitdXPCServer *)self getInitiatorSigningIDForToken:v30];
      taskInitiatorID = [v11 taskInitiatorID];
      if ([v18 isEqualToString:taskInitiatorID])
      {
        taskSigningID = [v11 taskSigningID];
        v23 = [v20 isEqualToString:taskSigningID];

        if (v23)
        {
          [v13 terminate];
          v24 = [v11 updatedDescriptionInState:3 error:0];

          [fskitdExtensionClient postTaskStatusUpdate:v24];
          v25 = 0;
LABEL_24:
          v27 = fskit_std_log();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            sub_1000265BC();
          }

          handlerCopy[2](handlerCopy, v25);
          v11 = v24;
          goto LABEL_27;
        }
      }

      else
      {
      }

      v26 = fskit_std_log();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        taskInitiatorID2 = [v11 taskInitiatorID];
        taskSigningID2 = [v11 taskSigningID];
        LODWORD(v30[0]) = 136316162;
        *(v30 + 4) = "[fskitdXPCServer cancelTask:replyHandler:]";
        WORD6(v30[0]) = 2112;
        *(v30 + 14) = v18;
        WORD3(v30[1]) = 2112;
        *(&v30[1] + 1) = v20;
        v31 = 2112;
        v32 = taskInitiatorID2;
        v33 = 2112;
        v34 = taskSigningID2;
        _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%s: Can't cancel task, the initator (%@:%@) isn't the same initator of the task (%@:%@)", v30, 0x34u);
      }

      v25 = fs_errorForPOSIXError();
      v24 = v11;
      goto LABEL_24;
    }

    v16 = fskit_std_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_100026638();
    }

    v17 = fs_errorForPOSIXError();
    handlerCopy[2](handlerCopy, v17);
  }

  else
  {
    v15 = fskit_std_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_1000266B8();
    }

    v11 = fs_errorForPOSIXError();
    handlerCopy[2](handlerCopy, v11);
  }

LABEL_27:
}

- (id)canStartActivateTask:(id)task resource:(id)resource
{
  taskCopy = task;
  resourceCopy = resource;
  resourceManager = [gSettings resourceManager];
  objc_sync_enter(resourceManager);
  resourceManager2 = [gSettings resourceManager];
  v9 = [resourceManager2 getTaskUUIDs:resourceCopy];

  if ([v9 count])
  {
    v10 = fs_errorForPOSIXError();
    resourceManager4 = fskit_std_log();
    if (os_log_type_enabled(resourceManager4, OS_LOG_TYPE_ERROR))
    {
      getResourceID = [resourceCopy getResourceID];
      localizedDescription = [v10 localizedDescription];
      v19 = 136315906;
      v20 = "[fskitdXPCServer canStartActivateTask:resource:]";
      v21 = 2112;
      v22 = getResourceID;
      v23 = 2112;
      v24 = v9;
      v25 = 2112;
      v26 = localizedDescription;
      _os_log_error_impl(&_mh_execute_header, resourceManager4, OS_LOG_TYPE_ERROR, "%s:%@: Can't start new task, previous task is running: %@, error: %@", &v19, 0x2Au);
    }
  }

  else
  {
    resourceManager3 = [gSettings resourceManager];
    getResourceID2 = [resourceCopy getResourceID];
    v16 = [resourceManager3 getResourceState:getResourceID2];

    if (v16 == 4)
    {
      v17 = fskit_std_log();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        [resourceCopy getResourceID];
        objc_claimAutoreleasedReturnValue();
        sub_100026790();
      }

      resourceManager4 = [gSettings resourceManager];
      [resourceManager4 addTaskUUID:taskCopy resource:resourceCopy];
      v10 = 0;
    }

    else
    {
      v10 = fs_errorForPOSIXError();
      resourceManager4 = fskit_std_log();
      if (os_log_type_enabled(resourceManager4, OS_LOG_TYPE_ERROR))
      {
        [resourceCopy getResourceID];
        objc_claimAutoreleasedReturnValue();
        [v10 localizedDescription];
        objc_claimAutoreleasedReturnValue();
        sub_100026734();
      }
    }
  }

  objc_sync_exit(resourceManager);

  return v10;
}

- (void)activateVolume:(id)volume usingBundle:(id)bundle options:(id)options replyHandler:(id)handler
{
  volumeCopy = volume;
  bundleCopy = bundle;
  optionsCopy = options;
  handlerCopy = handler;
  ourConn = self->_ourConn;
  if (ourConn)
  {
    [(NSXPCConnection *)ourConn auditToken];
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
  }

  v15 = [FSAuditToken tokenWithToken:&v20];
  v16 = [(fskitdXPCServer *)self getExtensionModuleFromID:bundleCopy forToken:v15];
  if (v16)
  {
    v17 = self->_ourConn;
    if (v17)
    {
      [(NSXPCConnection *)v17 auditToken];
    }

    else
    {
      v20 = 0u;
      v21 = 0u;
    }

    [(fskitdXPCServer *)self _activateVolume:volumeCopy usingIdentity:v16 options:optionsCopy auditToken:&v20 replyHandler:handlerCopy];
  }

  else
  {
    v18 = fskit_std_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_1000267E0();
    }

    v19 = fs_errorForPOSIXError();
    handlerCopy[2](handlerCopy, v19);
  }
}

- (void)activateVolume:(id)volume shortName:(id)name options:(id)options replyHandler:(id)handler
{
  volumeCopy = volume;
  nameCopy = name;
  optionsCopy = options;
  handlerCopy = handler;
  v14 = [(fskitdXPCServer *)self getModuleIdentityFromShortName:nameCopy];
  if (v14)
  {
    ourConn = self->_ourConn;
    if (ourConn)
    {
      [(NSXPCConnection *)ourConn auditToken];
    }

    else
    {
      memset(v18, 0, sizeof(v18));
    }

    [(fskitdXPCServer *)self _activateVolume:volumeCopy usingIdentity:v14 options:optionsCopy auditToken:v18 replyHandler:handlerCopy];
  }

  else
  {
    v16 = fskit_std_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_10002685C();
    }

    v17 = fs_errorForPOSIXError();
    handlerCopy[2](handlerCopy, v17);
  }
}

- (void)activateVolume:(id)volume shortName:(id)name options:(id)options auditToken:(id *)token replyHandler:(id)handler
{
  volumeCopy = volume;
  nameCopy = name;
  optionsCopy = options;
  handlerCopy = handler;
  v16 = *&token->var0[4];
  v22 = *token->var0;
  v23 = v16;
  v17 = [FSAuditToken tokenWithToken:&v22];
  v18 = [(fskitdXPCServer *)self getModuleIdentityFromShortName:nameCopy user:v17];
  if (v18)
  {
    v19 = *&token->var0[4];
    v22 = *token->var0;
    v23 = v19;
    [(fskitdXPCServer *)self _activateVolume:volumeCopy usingIdentity:v18 options:optionsCopy auditToken:&v22 replyHandler:handlerCopy];
  }

  else
  {
    v20 = fskit_std_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_1000268D8();
    }

    v21 = fs_errorForPOSIXError();
    handlerCopy[2](handlerCopy, v21);
  }
}

- (id)canStartDeactivateTask:(id)task resource:(id)resource
{
  taskCopy = task;
  resourceCopy = resource;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_100016264;
  v27 = sub_100016274;
  v28 = 0;
  resourceManager = [gSettings resourceManager];
  objc_sync_enter(resourceManager);
  resourceManager2 = [gSettings resourceManager];
  v9 = [resourceManager2 getTaskUUIDs:resourceCopy];

  if (v9)
  {
    tasks = [gSettings tasks];
    objc_sync_enter(tasks);
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10001C8C0;
    v20[3] = &unk_100061518;
    v22 = &v23;
    v21 = resourceCopy;
    [v9 enumerateObjectsUsingBlock:v20];

    objc_sync_exit(tasks);
  }

  if (!v24[5])
  {
    resourceManager3 = [gSettings resourceManager];
    getResourceID = [resourceCopy getResourceID];
    v13 = [resourceManager3 getResourceState:getResourceID];

    if (v13 - 5 > 1)
    {
      v16 = fs_errorForPOSIXError();
      v17 = v24[5];
      v24[5] = v16;

      resourceManager4 = fskit_std_log();
      if (os_log_type_enabled(resourceManager4, OS_LOG_TYPE_ERROR))
      {
        [resourceCopy getResourceID];
        objc_claimAutoreleasedReturnValue();
        [v24[5] localizedDescription];
        objc_claimAutoreleasedReturnValue();
        sub_100026954();
      }
    }

    else
    {
      v14 = fskit_std_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        [resourceCopy getResourceID];
        objc_claimAutoreleasedReturnValue();
        sub_1000269B0();
      }

      resourceManager4 = [gSettings resourceManager];
      [resourceManager4 addTaskUUID:taskCopy resource:resourceCopy];
    }
  }

  objc_sync_exit(resourceManager);

  v18 = v24[5];
  _Block_object_dispose(&v23, 8);

  return v18;
}

- (void)deactivateVolume:(id)volume usingBundle:(id)bundle numericOptions:(unint64_t)options replyHandler:(id)handler
{
  volumeCopy = volume;
  bundleCopy = bundle;
  handlerCopy = handler;
  ourConn = self->_ourConn;
  if (ourConn)
  {
    [(NSXPCConnection *)ourConn auditToken];
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
  }

  v14 = [FSAuditToken tokenWithToken:&v19];
  v15 = [(fskitdXPCServer *)self getExtensionModuleFromID:bundleCopy forToken:v14];
  if (v15)
  {
    v16 = self->_ourConn;
    if (v16)
    {
      [(NSXPCConnection *)v16 auditToken];
    }

    else
    {
      v19 = 0u;
      v20 = 0u;
    }

    [(fskitdXPCServer *)self _deactivateVolume:volumeCopy usingIdentity:v15 numericOptions:options auditToken:&v19 replyHandler:handlerCopy];
  }

  else
  {
    v17 = fskit_std_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_100026A00();
    }

    v18 = fs_errorForPOSIXError();
    handlerCopy[2](handlerCopy, v18);
  }
}

- (void)deactivateVolume:(id)volume shortName:(id)name numericOptions:(unint64_t)options replyHandler:(id)handler
{
  volumeCopy = volume;
  nameCopy = name;
  handlerCopy = handler;
  v13 = [(fskitdXPCServer *)self getModuleIdentityFromShortName:nameCopy];
  if (v13)
  {
    ourConn = self->_ourConn;
    if (ourConn)
    {
      [(NSXPCConnection *)ourConn auditToken];
    }

    else
    {
      memset(v17, 0, sizeof(v17));
    }

    [(fskitdXPCServer *)self _deactivateVolume:volumeCopy usingIdentity:v13 numericOptions:options auditToken:v17 replyHandler:handlerCopy];
  }

  else
  {
    v15 = fskit_std_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_100026A7C();
    }

    v16 = fs_errorForPOSIXError();
    handlerCopy[2](handlerCopy, v16);
  }
}

- (void)deactivateVolume:(id)volume shortName:(id)name numericOptions:(unint64_t)options auditToken:(id *)token replyHandler:(id)handler
{
  volumeCopy = volume;
  nameCopy = name;
  handlerCopy = handler;
  v15 = *&token->var0[4];
  v21 = *token->var0;
  v22 = v15;
  v16 = [FSAuditToken tokenWithToken:&v21];
  v17 = [(fskitdXPCServer *)self getModuleIdentityFromShortName:nameCopy user:v16];
  if (v17)
  {
    v18 = *&token->var0[4];
    v21 = *token->var0;
    v22 = v18;
    [(fskitdXPCServer *)self _deactivateVolume:volumeCopy usingIdentity:v17 numericOptions:options auditToken:&v21 replyHandler:handlerCopy];
  }

  else
  {
    v19 = fskit_std_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_100026AF8();
    }

    v20 = fs_errorForPOSIXError();
    handlerCopy[2](handlerCopy, v20);
  }
}

- (void)loadResource:(id)resource usingBundle:(id)bundle options:(id)options replyHandler:(id)handler
{
  resourceCopy = resource;
  bundleCopy = bundle;
  optionsCopy = options;
  handlerCopy = handler;
  ourConn = self->_ourConn;
  if (ourConn)
  {
    [(NSXPCConnection *)ourConn auditToken];
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
  }

  v15 = [FSAuditToken tokenWithToken:&v20];
  v16 = [(fskitdXPCServer *)self getExtensionModuleFromID:bundleCopy forToken:v15];
  if (v16)
  {
    v17 = self->_ourConn;
    if (v17)
    {
      [(NSXPCConnection *)v17 auditToken];
    }

    else
    {
      v20 = 0u;
      v21 = 0u;
    }

    [(fskitdXPCServer *)self _loadResource:resourceCopy usingIdentity:v16 options:optionsCopy auditToken:&v20 replyHandler:handlerCopy];
  }

  else
  {
    v18 = fskit_std_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_100026B74();
    }

    v19 = fs_errorForPOSIXError();
    handlerCopy[2](handlerCopy, 0, v19);
  }
}

- (void)loadResource:(id)resource shortName:(id)name options:(id)options replyHandler:(id)handler
{
  resourceCopy = resource;
  nameCopy = name;
  optionsCopy = options;
  handlerCopy = handler;
  v14 = [(fskitdXPCServer *)self getModuleIdentityFromShortName:nameCopy];
  if (v14)
  {
    ourConn = self->_ourConn;
    if (ourConn)
    {
      [(NSXPCConnection *)ourConn auditToken];
    }

    else
    {
      memset(v18, 0, sizeof(v18));
    }

    [(fskitdXPCServer *)self _loadResource:resourceCopy usingIdentity:v14 options:optionsCopy auditToken:v18 replyHandler:handlerCopy];
  }

  else
  {
    v16 = fskit_std_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_100026BF0();
    }

    v17 = fs_errorForPOSIXError();
    handlerCopy[2](handlerCopy, 0, v17);
  }
}

- (void)loadResource:(id)resource shortName:(id)name options:(id)options auditToken:(id *)token replyHandler:(id)handler
{
  resourceCopy = resource;
  nameCopy = name;
  optionsCopy = options;
  handlerCopy = handler;
  v16 = *&token->var0[4];
  v22 = *token->var0;
  v23 = v16;
  v17 = [FSAuditToken tokenWithToken:&v22];
  v18 = [(fskitdXPCServer *)self getModuleIdentityFromShortName:nameCopy user:v17];
  if (v18)
  {
    v19 = *&token->var0[4];
    v22 = *token->var0;
    v23 = v19;
    [(fskitdXPCServer *)self _loadResource:resourceCopy usingIdentity:v18 options:optionsCopy auditToken:&v22 replyHandler:handlerCopy];
  }

  else
  {
    v20 = fskit_std_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_100026C6C();
    }

    v21 = fs_errorForPOSIXError();
    handlerCopy[2](handlerCopy, 0, v21);
  }
}

- (void)unloadResource:(id)resource usingBundle:(id)bundle options:(id)options replyHandler:(id)handler
{
  resourceCopy = resource;
  bundleCopy = bundle;
  optionsCopy = options;
  handlerCopy = handler;
  ourConn = self->_ourConn;
  if (ourConn)
  {
    [(NSXPCConnection *)ourConn auditToken];
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
  }

  v15 = [FSAuditToken tokenWithToken:&v20];
  v16 = [(fskitdXPCServer *)self getExtensionModuleFromID:bundleCopy forToken:v15];
  if (v16)
  {
    v17 = self->_ourConn;
    if (v17)
    {
      [(NSXPCConnection *)v17 auditToken];
    }

    else
    {
      v20 = 0u;
      v21 = 0u;
    }

    [(fskitdXPCServer *)self _unloadResource:resourceCopy usingIdentity:v16 options:optionsCopy auditToken:&v20 replyHandler:handlerCopy];
  }

  else
  {
    v18 = fskit_std_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_100026CE8();
    }

    v19 = fs_errorForPOSIXError();
    handlerCopy[2](handlerCopy, v19);
  }
}

- (void)unloadResource:(id)resource shortName:(id)name options:(id)options replyHandler:(id)handler
{
  resourceCopy = resource;
  nameCopy = name;
  optionsCopy = options;
  handlerCopy = handler;
  v14 = [(fskitdXPCServer *)self getModuleIdentityFromShortName:nameCopy];
  if (v14)
  {
    ourConn = self->_ourConn;
    if (ourConn)
    {
      [(NSXPCConnection *)ourConn auditToken];
    }

    else
    {
      memset(v18, 0, sizeof(v18));
    }

    [(fskitdXPCServer *)self _unloadResource:resourceCopy usingIdentity:v14 options:optionsCopy auditToken:v18 replyHandler:handlerCopy];
  }

  else
  {
    v16 = fskit_std_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_100026D64();
    }

    v17 = fs_errorForPOSIXError();
    handlerCopy[2](handlerCopy, v17);
  }
}

- (void)unloadResource:(id)resource shortName:(id)name options:(id)options auditToken:(id *)token replyHandler:(id)handler
{
  resourceCopy = resource;
  nameCopy = name;
  optionsCopy = options;
  handlerCopy = handler;
  v16 = *&token->var0[4];
  v22 = *token->var0;
  v23 = v16;
  v17 = [FSAuditToken tokenWithToken:&v22];
  v18 = [(fskitdXPCServer *)self getModuleIdentityFromShortName:nameCopy user:v17];
  if (v18)
  {
    v19 = *&token->var0[4];
    v22 = *token->var0;
    v23 = v19;
    [(fskitdXPCServer *)self _unloadResource:resourceCopy usingIdentity:v18 options:optionsCopy auditToken:&v22 replyHandler:handlerCopy];
  }

  else
  {
    v20 = fskit_std_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_100026DE0();
    }

    v21 = fs_errorForPOSIXError();
    handlerCopy[2](handlerCopy, v21);
  }
}

- (void)activateVolume:(id)volume usingBundle:(id)bundle options:(id)options auditToken:(id *)token replyHandler:(id)handler
{
  volumeCopy = volume;
  bundleCopy = bundle;
  optionsCopy = options;
  handlerCopy = handler;
  if (self->_clientHasEntitlement)
  {
    v16 = *&token->var0[4];
    v22 = *token->var0;
    v23 = v16;
    v17 = [FSAuditToken tokenWithToken:&v22];
    v18 = [(fskitdXPCServer *)self getExtensionModuleFromID:bundleCopy forToken:v17];
    if (v18)
    {
      v19 = *&token->var0[4];
      v22 = *token->var0;
      v23 = v19;
      [(fskitdXPCServer *)self _activateVolume:volumeCopy usingIdentity:v18 options:optionsCopy auditToken:&v22 replyHandler:handlerCopy];
    }

    else
    {
      v20 = fskit_std_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_100026E5C();
      }

      v21 = fs_errorForPOSIXError();
      handlerCopy[2](handlerCopy, v21);
    }
  }

  else
  {
    v17 = fs_errorForPOSIXError();
    handlerCopy[2](handlerCopy, v17);
  }
}

- (void)_activateVolume:(id)volume usingIdentity:(id)identity options:(id)options auditToken:(id *)token replyHandler:(id)handler
{
  volumeCopy = volume;
  identityCopy = identity;
  optionsCopy = options;
  handlerCopy = handler;
  v16 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  v17 = *&token->var0[4];
  v28 = *token->var0;
  v29 = v17;
  block[2] = sub_10001D848;
  block[3] = &unk_1000615E0;
  v23 = identityCopy;
  v24 = volumeCopy;
  v26 = optionsCopy;
  v27 = handlerCopy;
  selfCopy = self;
  v18 = optionsCopy;
  v19 = handlerCopy;
  v20 = volumeCopy;
  v21 = identityCopy;
  dispatch_async(v16, block);
}

- (void)checkResource:(id)resource usingBundle:(id)bundle options:(id)options auditToken:(id *)token connection:(id)connection replyHandler:(id)handler
{
  if (self->_clientHasEntitlement)
  {
    v14 = *&token->var0[4];
    v18[0] = *token->var0;
    v18[1] = v14;
    handlerCopy = handler;
    [(fskitdXPCServer *)self _checkResource:resource usingBundle:bundle options:options auditToken:v18 connection:connection replyHandler:handlerCopy];
  }

  else
  {
    handlerCopy2 = handler;
    v17 = fs_errorForPOSIXError();
    (*(handler + 2))(handlerCopy2, 0, v17);
  }
}

- (void)_checkResource:(id)resource usingBundle:(id)bundle options:(id)options auditToken:(id *)token connection:(id)connection replyHandler:(id)handler
{
  resourceCopy = resource;
  bundleCopy = bundle;
  optionsCopy = options;
  connectionCopy = connection;
  handlerCopy = handler;
  v19 = dispatch_get_global_queue(0, 0);
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_10001E608;
  v26[3] = &unk_1000616F8;
  v26[4] = self;
  v27 = resourceCopy;
  v20 = *&token->var0[4];
  v32 = *token->var0;
  v33 = v20;
  v28 = bundleCopy;
  v29 = optionsCopy;
  v30 = connectionCopy;
  v31 = handlerCopy;
  v21 = connectionCopy;
  v22 = optionsCopy;
  v23 = bundleCopy;
  v24 = handlerCopy;
  v25 = resourceCopy;
  dispatch_async(v19, v26);
}

- (void)currentContainersForAuditToken:(id *)token replyHandler:(id)handler
{
  if (self->_clientHasEntitlement)
  {
    v6 = *&token->var0[4];
    v10[0] = *token->var0;
    v10[1] = v6;
    handlerCopy = handler;
    [(fskitdXPCServer *)self _currentContainersForAuditToken:v10 replyHandler:handlerCopy];
  }

  else
  {
    handlerCopy2 = handler;
    v9 = fs_errorForPOSIXError();
    (*(handler + 2))(handlerCopy2, 0, v9);
  }
}

- (void)_currentContainersForAuditToken:(id *)token replyHandler:(id)handler
{
  v5 = gExtensionManager;
  handlerCopy = handler;
  getInstancesInfo = [v5 getInstancesInfo];
  (*(handler + 2))(handlerCopy, getInstancesInfo, 0);
}

- (void)currentResourceIDsForAuditToken:(id *)token replyHandler:(id)handler
{
  if (self->_clientHasEntitlement)
  {
    v6 = *&token->var0[4];
    v10[0] = *token->var0;
    v10[1] = v6;
    handlerCopy = handler;
    [(fskitdXPCServer *)self _currentResourceIDsForAuditToken:v10 replyHandler:handlerCopy];
  }

  else
  {
    handlerCopy2 = handler;
    v9 = fs_errorForPOSIXError();
    (*(handler + 2))(handlerCopy2, 0, v9);
  }
}

- (void)_currentResourceIDsForAuditToken:(id *)token replyHandler:(id)handler
{
  handlerCopy = handler;
  resourceManager = [gSettings resourceManager];
  objc_sync_enter(resourceManager);
  resourceManager2 = [gSettings resourceManager];
  getResources = [resourceManager2 getResources];

  objc_sync_exit(resourceManager);
  if (getResources)
  {
    [getResources allKeys];
  }

  else
  {
    fs_errorForPOSIXError();
  }
  v7 = ;
  handlerCopy[2]();
}

- (void)currentTasksForAuditToken:(id *)token replyHandler:(id)handler
{
  if (self->_clientHasEntitlement)
  {
    v6 = *&token->var0[4];
    v10[0] = *token->var0;
    v10[1] = v6;
    handlerCopy = handler;
    [(fskitdXPCServer *)self _currentTasksForAuditToken:v10 replyHandler:handlerCopy];
  }

  else
  {
    handlerCopy2 = handler;
    v9 = fs_errorForPOSIXError();
    (*(handler + 2))(handlerCopy2, 0, v9);
  }
}

- (void)_currentTasksForAuditToken:(id *)token replyHandler:(id)handler
{
  handlerCopy = handler;
  tasks = [gSettings tasks];
  objc_sync_enter(tasks);
  tasks2 = [gSettings tasks];
  allValues = [tasks2 allValues];

  objc_sync_exit(tasks);
  if (self->_clientHasEntitlement)
  {
    handlerCopy[2](handlerCopy, allValues, 0);
  }

  else
  {
    ourConn = self->_ourConn;
    if (ourConn)
    {
      [(NSXPCConnection *)ourConn auditToken];
    }

    else
    {
      memset(v17, 0, sizeof(v17));
    }

    v10 = [(fskitdXPCServer *)self getInitiatorBundleIDForToken:v17];
    [v10 stringByAppendingString:@"."];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10001F9B4;
    v14[3] = &unk_100061720;
    v16 = v15 = v10;
    v11 = v16;
    v12 = v10;
    v13 = [allValues fs_filter:v14];
    handlerCopy[2](handlerCopy, v13, 0);
  }
}

- (void)deactivateVolume:(id)volume usingBundle:(id)bundle numericOptions:(unint64_t)options auditToken:(id *)token replyHandler:(id)handler
{
  volumeCopy = volume;
  bundleCopy = bundle;
  handlerCopy = handler;
  if (self->_clientHasEntitlement)
  {
    v15 = *&token->var0[4];
    v21 = *token->var0;
    v22 = v15;
    v16 = [FSAuditToken tokenWithToken:&v21];
    v17 = [(fskitdXPCServer *)self getExtensionModuleFromID:bundleCopy forToken:v16];
    if (v17)
    {
      v18 = *&token->var0[4];
      v21 = *token->var0;
      v22 = v18;
      [(fskitdXPCServer *)self _deactivateVolume:volumeCopy usingIdentity:v17 numericOptions:options auditToken:&v21 replyHandler:handlerCopy];
    }

    else
    {
      v19 = fskit_std_log();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_100027070();
      }

      v20 = fs_errorForPOSIXError();
      handlerCopy[2](handlerCopy, v20);
    }
  }

  else
  {
    v16 = fs_errorForPOSIXError();
    handlerCopy[2](handlerCopy, v16);
  }
}

- (void)_deactivateVolume:(id)volume usingIdentity:(id)identity numericOptions:(unint64_t)options auditToken:(id *)token replyHandler:(id)handler
{
  volumeCopy = volume;
  identityCopy = identity;
  handlerCopy = handler;
  v15 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  v16 = *&token->var0[4];
  v26 = *token->var0;
  v27 = v16;
  block[2] = sub_10001FCB4;
  block[3] = &unk_100061798;
  v21 = identityCopy;
  v22 = volumeCopy;
  selfCopy = self;
  v24 = handlerCopy;
  optionsCopy = options;
  v17 = handlerCopy;
  v18 = volumeCopy;
  v19 = identityCopy;
  dispatch_async(v15, block);
}

- (void)formatResource:(id)resource usingBundle:(id)bundle options:(id)options auditToken:(id *)token connection:(id)connection replyHandler:(id)handler
{
  if (self->_clientHasEntitlement)
  {
    v14 = *&token->var0[4];
    v18[0] = *token->var0;
    v18[1] = v14;
    handlerCopy = handler;
    [(fskitdXPCServer *)self _formatResource:resource usingBundle:bundle options:options auditToken:v18 connection:connection replyHandler:handlerCopy];
  }

  else
  {
    handlerCopy2 = handler;
    v17 = fs_errorForPOSIXError();
    (*(handler + 2))(handlerCopy2, 0, v17);
  }
}

- (void)_formatResource:(id)resource usingBundle:(id)bundle options:(id)options auditToken:(id *)token connection:(id)connection replyHandler:(id)handler
{
  resourceCopy = resource;
  bundleCopy = bundle;
  optionsCopy = options;
  connectionCopy = connection;
  handlerCopy = handler;
  v19 = dispatch_get_global_queue(0, 0);
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100020BAC;
  v26[3] = &unk_1000616F8;
  v26[4] = self;
  v27 = resourceCopy;
  v20 = *&token->var0[4];
  v32 = *token->var0;
  v33 = v20;
  v28 = bundleCopy;
  v29 = optionsCopy;
  v30 = connectionCopy;
  v31 = handlerCopy;
  v21 = connectionCopy;
  v22 = optionsCopy;
  v23 = bundleCopy;
  v24 = handlerCopy;
  v25 = resourceCopy;
  dispatch_async(v19, v26);
}

- (void)installedExtensionsForAuditToken:(id *)token replyHandler:(id)handler
{
  if (self->_clientHasEntitlement)
  {
    v6 = *&token->var0[4];
    v10[0] = *token->var0;
    v10[1] = v6;
    handlerCopy = handler;
    [(fskitdXPCServer *)self _installedExtensionsForAuditToken:v10 replyHandler:handlerCopy];
  }

  else
  {
    handlerCopy2 = handler;
    v9 = fs_errorForPOSIXError();
    (*(handler + 2))(handlerCopy2, 0, v9);
  }
}

- (void)_installedExtensionsForAuditToken:(id *)token replyHandler:(id)handler
{
  handlerCopy = handler;
  v28 = 0;
  v29[0] = &v28;
  v29[1] = 0x3032000000;
  v29[2] = sub_100016264;
  v29[3] = sub_100016274;
  v30 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_100016264;
  v26 = sub_100016274;
  v27 = 0;
  v7 = fskit_std_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_100027284();
  }

  v8 = gAgentManager;
  v9 = *&token->var0[4];
  buf = *token->var0;
  v32 = v9;
  v10 = [FSAuditToken tokenWithToken:&buf];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100021D98;
  v21[3] = &unk_100060F80;
  v21[4] = &v22;
  v21[5] = &v28;
  [v8 currentExtensionsForToken:v10 replyHandler:v21];

  v11 = fskit_std_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    sub_1000272C0(v29);
  }

  if (self->_clientHasEntitlement)
  {
    handlerCopy[2](handlerCopy, *(v29[0] + 40), v23[5]);
  }

  else if (v23[5])
  {
    (handlerCopy[2])(handlerCopy, 0);
  }

  else
  {
    v12 = fskit_std_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100027330();
    }

    ourConn = self->_ourConn;
    if (ourConn)
    {
      [(NSXPCConnection *)ourConn auditToken];
    }

    else
    {
      buf = 0u;
      v32 = 0u;
    }

    v14 = [(fskitdXPCServer *)self getTeamIDForToken:&buf];
    v15 = *(v29[0] + 40);
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100021E18;
    v19[3] = &unk_1000617C0;
    v16 = v14;
    v20 = v16;
    v17 = [v15 fs_filter:v19];
    v18 = fskit_std_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v17;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Returniong set %@", &buf, 0xCu);
    }

    (handlerCopy)[2](handlerCopy, v17, 0);
  }

  _Block_object_dispose(&v22, 8);

  _Block_object_dispose(&v28, 8);
}

- (void)loadResource:(id)resource usingBundle:(id)bundle options:(id)options auditToken:(id *)token replyHandler:(id)handler
{
  resourceCopy = resource;
  bundleCopy = bundle;
  optionsCopy = options;
  handlerCopy = handler;
  if (self->_clientHasEntitlement)
  {
    v16 = *&token->var0[4];
    v22 = *token->var0;
    v23 = v16;
    v17 = [FSAuditToken tokenWithToken:&v22];
    v18 = [(fskitdXPCServer *)self getExtensionModuleFromID:bundleCopy forToken:v17];
    if (v18)
    {
      v19 = *&token->var0[4];
      v22 = *token->var0;
      v23 = v19;
      [(fskitdXPCServer *)self _loadResource:resourceCopy usingIdentity:v18 options:optionsCopy auditToken:&v22 replyHandler:handlerCopy];
    }

    else
    {
      v20 = fskit_std_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_10002736C();
      }

      v21 = fs_errorForPOSIXError();
      handlerCopy[2](handlerCopy, 0, v21);
    }
  }

  else
  {
    v17 = fs_errorForPOSIXError();
    handlerCopy[2](handlerCopy, 0, v17);
  }
}

- (void)_loadResource:(id)resource usingIdentity:(id)identity options:(id)options auditToken:(id *)token replyHandler:(id)handler
{
  resourceCopy = resource;
  identityCopy = identity;
  optionsCopy = options;
  handlerCopy = handler;
  v16 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  v17 = *&token->var0[4];
  v28 = *token->var0;
  v29 = v17;
  block[2] = sub_1000221D4;
  block[3] = &unk_100061880;
  v26 = optionsCopy;
  v27 = handlerCopy;
  v23 = identityCopy;
  selfCopy = self;
  v25 = resourceCopy;
  v18 = optionsCopy;
  v19 = resourceCopy;
  v20 = handlerCopy;
  v21 = identityCopy;
  dispatch_async(v16, block);
}

- (void)probeResource:(id)resource usingBundle:(id)bundle auditToken:(id *)token replyHandler:(id)handler
{
  if (self->_clientHasEntitlement)
  {
    v10 = *&token->var0[4];
    v14[0] = *token->var0;
    v14[1] = v10;
    handlerCopy = handler;
    [(fskitdXPCServer *)self _probeResource:resource usingBundle:bundle auditToken:v14 replyHandler:handlerCopy];
  }

  else
  {
    handlerCopy2 = handler;
    v13 = fs_errorForPOSIXError();
    (*(handler + 2))(handlerCopy2, 0, v13);
  }
}

- (void)_probeResource:(id)resource usingBundle:(id)bundle auditToken:(id *)token replyHandler:(id)handler
{
  resourceCopy = resource;
  bundleCopy = bundle;
  handlerCopy = handler;
  v13 = fskit_std_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    getResourceID = [resourceCopy getResourceID];
    *buf = 138412290;
    v27 = getResourceID;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Probe starting on %@", buf, 0xCu);
  }

  v15 = dispatch_get_global_queue(0, 0);
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100023220;
  v20[3] = &unk_100061920;
  v20[4] = self;
  v21 = resourceCopy;
  v22 = bundleCopy;
  v23 = handlerCopy;
  v16 = *&token->var0[4];
  v24 = *token->var0;
  v25 = v16;
  v17 = bundleCopy;
  v18 = handlerCopy;
  v19 = resourceCopy;
  dispatch_async(v15, v20);
}

- (void)unloadResource:(id)resource usingBundle:(id)bundle options:(id)options auditToken:(id *)token replyHandler:(id)handler
{
  resourceCopy = resource;
  bundleCopy = bundle;
  optionsCopy = options;
  handlerCopy = handler;
  if (self->_clientHasEntitlement)
  {
    v16 = *&token->var0[4];
    v22 = *token->var0;
    v23 = v16;
    v17 = [FSAuditToken tokenWithToken:&v22];
    v18 = [(fskitdXPCServer *)self getExtensionModuleFromID:bundleCopy forToken:v17];
    if (v18)
    {
      v19 = *&token->var0[4];
      v22 = *token->var0;
      v23 = v19;
      [(fskitdXPCServer *)self _unloadResource:resourceCopy usingIdentity:v18 options:optionsCopy auditToken:&v22 replyHandler:handlerCopy];
    }

    else
    {
      v20 = fskit_std_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_10002751C();
      }

      v21 = fs_errorForPOSIXError();
      handlerCopy[2](handlerCopy, v21);
    }
  }

  else
  {
    v17 = fs_errorForPOSIXError();
    handlerCopy[2](handlerCopy, v17);
  }
}

- (void)_unloadResource:(id)resource usingIdentity:(id)identity options:(id)options auditToken:(id *)token replyHandler:(id)handler
{
  resourceCopy = resource;
  identityCopy = identity;
  optionsCopy = options;
  handlerCopy = handler;
  v16 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  v17 = *&token->var0[4];
  v28 = *token->var0;
  v29 = v17;
  block[2] = sub_100023FDC;
  block[3] = &unk_1000615E0;
  v23 = identityCopy;
  v24 = resourceCopy;
  v26 = optionsCopy;
  v27 = handlerCopy;
  selfCopy = self;
  v18 = optionsCopy;
  v19 = handlerCopy;
  v20 = resourceCopy;
  v21 = identityCopy;
  dispatch_async(v16, block);
}

- (void)startFSCKWithDevice:(id)device volumes:(id)volumes replyHandler:(id)handler
{
  deviceCopy = device;
  volumesCopy = volumes;
  handlerCopy = handler;
  v11 = dispatch_get_global_queue(0, 0);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100024AC8;
  v15[3] = &unk_100061970;
  v16 = deviceCopy;
  v17 = volumesCopy;
  selfCopy = self;
  v19 = handlerCopy;
  v12 = handlerCopy;
  v13 = volumesCopy;
  v14 = deviceCopy;
  dispatch_sync(v11, v15);
}

- (void)doneFSCKWithTask:(id)task replyHandler:(id)handler
{
  taskCopy = task;
  handlerCopy = handler;
  v8 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100024E84;
  block[3] = &unk_100061998;
  selfCopy = self;
  v14 = handlerCopy;
  v12 = taskCopy;
  v9 = handlerCopy;
  v10 = taskCopy;
  dispatch_sync(v8, block);
}

- (void)cleanupTaskAfterError:(id)error resource:(id)resource bundleIdentifier:(id)identifier token:(id *)token
{
  errorCopy = error;
  resourceCopy = resource;
  identifierCopy = identifier;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_100016264;
  v24 = sub_100016274;
  v25 = 0;
  v12 = gExtensionManager;
  v13 = *&token->var0[4];
  v19[0] = *token->var0;
  v19[1] = v13;
  v14 = [FSAuditToken tokenWithToken:v19];
  fs_containerIdentifier = [errorCopy fs_containerIdentifier];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000253A8;
  v18[3] = &unk_1000619C0;
  v18[4] = &v20;
  [v12 existingExtensionForBundle:identifierCopy user:v14 instance:fs_containerIdentifier replyHandler:v18];

  v16 = v21[5];
  if (v16)
  {
    [v16 terminate];
  }

  [gSettings removeReferencesToTask:errorCopy];
  resourceManager = [gSettings resourceManager];
  [resourceManager removeResource:resourceCopy];

  _Block_object_dispose(&v20, 8);
}

@end