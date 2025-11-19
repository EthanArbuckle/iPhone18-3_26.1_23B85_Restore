@interface fskitdXPCServer
- (BOOL)extensionSupportsResource:(id)a3 resource:(id)a4;
- (BOOL)extensionSupportsResourceScheme:(id)a3 resource:(id)a4;
- (id)applyResource:(id)a3 targetBundle:(id)a4 instanceID:(id)a5 initiatorAuditToken:(id)a6 authorizingAuditToken:(id)a7 usingBlock:(id)a8;
- (id)applyResource:(id)a3 usingIdentity:(id)a4 instanceID:(id)a5 initiatorAuditToken:(id)a6 authorizingAuditToken:(id)a7 usingBlock:(id)a8;
- (id)canStartActivateTask:(id)a3 resource:(id)a4;
- (id)canStartDeactivateTask:(id)a3 resource:(id)a4;
- (id)canStartProbeTask:(id)a3 resource:(id)a4;
- (id)canStartTask:(id)a3 resource:(id)a4;
- (id)canStartUnloadTask:(id)a3 resource:(id)a4;
- (id)getExtensionModuleFromID:(id)a3 forToken:(id)a4;
- (id)getInitiatorBundleIDForToken:(id *)a3;
- (id)getInitiatorSigningIDForToken:(id *)a3;
- (id)getModuleIdentityFromShortName:(id)a3;
- (id)getModuleIdentityFromShortName:(id)a3 user:(id)a4;
- (id)getTeamIDForToken:(id *)a3;
- (id)initForEntitledClient:(BOOL)a3;
- (void)LiveMounterReallyMountVolume:(id)a3 fileSystem:(id)a4 displayName:(id)a5 provider:(id)a6 domainError:(id)a7 on:(id)a8 how:(int)a9 options:(id)a10 auditToken:(id *)a11 reply:(id)a12;
- (void)_activateVolume:(id)a3 usingIdentity:(id)a4 options:(id)a5 auditToken:(id *)a6 replyHandler:(id)a7;
- (void)_checkResource:(id)a3 usingBundle:(id)a4 options:(id)a5 auditToken:(id *)a6 connection:(id)a7 replyHandler:(id)a8;
- (void)_currentContainersForAuditToken:(id *)a3 replyHandler:(id)a4;
- (void)_currentResourceIDsForAuditToken:(id *)a3 replyHandler:(id)a4;
- (void)_currentTasksForAuditToken:(id *)a3 replyHandler:(id)a4;
- (void)_deactivateVolume:(id)a3 usingIdentity:(id)a4 numericOptions:(unint64_t)a5 auditToken:(id *)a6 replyHandler:(id)a7;
- (void)_formatResource:(id)a3 usingBundle:(id)a4 options:(id)a5 auditToken:(id *)a6 connection:(id)a7 replyHandler:(id)a8;
- (void)_installedExtensionWithBundleID:(id)a3 user:(id)a4 replyHandler:(id)a5;
- (void)_installedExtensionsForAuditToken:(id *)a3 replyHandler:(id)a4;
- (void)_loadResource:(id)a3 usingIdentity:(id)a4 options:(id)a5 auditToken:(id *)a6 replyHandler:(id)a7;
- (void)_probeResource:(id)a3 usingBundle:(id)a4 auditToken:(id *)a5 replyHandler:(id)a6;
- (void)_unloadResource:(id)a3 usingIdentity:(id)a4 options:(id)a5 auditToken:(id *)a6 replyHandler:(id)a7;
- (void)activateVolume:(id)a3 shortName:(id)a4 options:(id)a5 auditToken:(id *)a6 replyHandler:(id)a7;
- (void)activateVolume:(id)a3 shortName:(id)a4 options:(id)a5 replyHandler:(id)a6;
- (void)activateVolume:(id)a3 usingBundle:(id)a4 options:(id)a5 auditToken:(id *)a6 replyHandler:(id)a7;
- (void)activateVolume:(id)a3 usingBundle:(id)a4 options:(id)a5 replyHandler:(id)a6;
- (void)cancelTask:(id)a3 replyHandler:(id)a4;
- (void)checkResource:(id)a3 usingBundle:(id)a4 options:(id)a5 auditToken:(id *)a6 connection:(id)a7 replyHandler:(id)a8;
- (void)cleanupTaskAfterError:(id)a3 resource:(id)a4 bundleIdentifier:(id)a5 token:(id *)a6;
- (void)currentContainers:(id)a3;
- (void)currentContainersForAuditToken:(id *)a3 replyHandler:(id)a4;
- (void)currentResourceIDs:(id)a3;
- (void)currentResourceIDsForAuditToken:(id *)a3 replyHandler:(id)a4;
- (void)currentTasks:(id)a3;
- (void)currentTasksForAuditToken:(id *)a3 replyHandler:(id)a4;
- (void)deactivateVolume:(id)a3 shortName:(id)a4 numericOptions:(unint64_t)a5 auditToken:(id *)a6 replyHandler:(id)a7;
- (void)deactivateVolume:(id)a3 shortName:(id)a4 numericOptions:(unint64_t)a5 replyHandler:(id)a6;
- (void)deactivateVolume:(id)a3 usingBundle:(id)a4 numericOptions:(unint64_t)a5 auditToken:(id *)a6 replyHandler:(id)a7;
- (void)deactivateVolume:(id)a3 usingBundle:(id)a4 numericOptions:(unint64_t)a5 replyHandler:(id)a6;
- (void)doCheckResource:(id)a3 usingBundle:(id)a4 options:(id)a5 connection:(id)a6 reply:(id)a7;
- (void)doKernelMount:(id)a3 providerName:(id)a4 mountEntry:(id)a5;
- (void)doneFSCKWithTask:(id)a3 replyHandler:(id)a4;
- (void)formatResource:(id)a3 usingBundle:(id)a4 options:(id)a5 auditToken:(id *)a6 connection:(id)a7 replyHandler:(id)a8;
- (void)formatResource:(id)a3 usingBundle:(id)a4 options:(id)a5 connection:(id)a6 replyHandler:(id)a7;
- (void)getRealResource:(id)a3 auditToken:(id)a4 reply:(id)a5;
- (void)handleInvalidated;
- (void)installedExtensionWithBundleID:(id)a3 replyHandler:(id)a4;
- (void)installedExtensionWithShortName:(id)a3 replyHandler:(id)a4;
- (void)installedExtensionWithShortName:(id)a3 user:(id)a4 replyHandler:(id)a5;
- (void)installedExtensions:(id)a3;
- (void)installedExtensionsForAuditToken:(id *)a3 replyHandler:(id)a4;
- (void)loadResource:(id)a3 shortName:(id)a4 options:(id)a5 auditToken:(id *)a6 replyHandler:(id)a7;
- (void)loadResource:(id)a3 shortName:(id)a4 options:(id)a5 replyHandler:(id)a6;
- (void)loadResource:(id)a3 usingBundle:(id)a4 options:(id)a5 auditToken:(id *)a6 replyHandler:(id)a7;
- (void)loadResource:(id)a3 usingBundle:(id)a4 options:(id)a5 replyHandler:(id)a6;
- (void)mountVolume:(id)a3 fileSystem:(id)a4 displayName:(id)a5 provider:(id)a6 domainError:(id)a7 on:(id)a8 how:(int)a9 options:(id)a10 auditToken:(id *)a11 reply:(id)a12;
- (void)mountVolume:(id)a3 fileSystem:(id)a4 displayName:(id)a5 provider:(id)a6 domainError:(id)a7 on:(id)a8 how:(int)a9 options:(id)a10 reply:(id)a11;
- (void)probeResource:(id)a3 usingBundle:(id)a4 auditToken:(id *)a5 replyHandler:(id)a6;
- (void)probeResource:(id)a3 usingBundle:(id)a4 replyHandler:(id)a5;
- (void)reallyUpdateErrorStateForVolume:(id)a3 provider:(id)a4 domainError:(id)a5 reply:(id)a6;
- (void)setTaskUpdateInterest:(BOOL)a3 replyHandler:(id)a4;
- (void)setVerboseLevel:(int)a3 reply:(id)a4;
- (void)startFSCKWithDevice:(id)a3 volumes:(id)a4 replyHandler:(id)a5;
- (void)switchToFSKit:(id)a3;
- (void)unloadResource:(id)a3 shortName:(id)a4 options:(id)a5 auditToken:(id *)a6 replyHandler:(id)a7;
- (void)unloadResource:(id)a3 shortName:(id)a4 options:(id)a5 replyHandler:(id)a6;
- (void)unloadResource:(id)a3 usingBundle:(id)a4 options:(id)a5 auditToken:(id *)a6 replyHandler:(id)a7;
- (void)unloadResource:(id)a3 usingBundle:(id)a4 options:(id)a5 replyHandler:(id)a6;
- (void)unmountVolume:(id)a3 provider:(id)a4 how:(int)a5 domainError:(id)a6 reply:(id)a7;
- (void)updateErrorStateForVolume:(id)a3 provider:(id)a4 domainError:(id)a5 reply:(id)a6;
@end

@implementation fskitdXPCServer

- (id)initForEntitledClient:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = fskitdXPCServer;
  result = [(fskitdXPCServer *)&v5 init];
  if (result)
  {
    *(result + 9) = a3;
  }

  return result;
}

- (void)handleInvalidated
{
  v2 = self;
  objc_sync_enter(v2);
  ourConn = v2->_ourConn;
  v2->_ourConn = 0;

  hasTaskInterest = v2->_hasTaskInterest;
  objc_sync_exit(v2);

  if (hasTaskInterest)
  {
    v5 = [gSettings taskUpdateClients];
    objc_sync_enter(v5);
    v6 = v2;
    objc_sync_enter(v6);
    if (v2->_hasTaskInterest)
    {
      v2->_hasTaskInterest = 0;
      v7 = [gSettings taskUpdateClients];
      [v7 removeObject:v6];
    }

    objc_sync_exit(v6);

    objc_sync_exit(v5);
    v8 = gSettings;

    [v8 updateWorkTransaction];
  }
}

- (void)switchToFSKit:(id)a3
{
  v4 = a3;
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

  v4[2](v4, 0);
}

- (void)LiveMounterReallyMountVolume:(id)a3 fileSystem:(id)a4 displayName:(id)a5 provider:(id)a6 domainError:(id)a7 on:(id)a8 how:(int)a9 options:(id)a10 auditToken:(id *)a11 reply:(id)a12
{
  v18 = a3;
  v81 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v84 = a8;
  v80 = a10;
  v22 = a12;
  v93 = 0;
  v94[0] = &v93;
  v94[1] = 0x3032000000;
  v94[2] = sub_100016264;
  v94[3] = sub_100016274;
  v95 = 0;
  v23 = v18;
  keyExistsAndHasValidFormat = 0;
  [gSettings startedWork];
  v24 = livefs_std_log();
  v79 = a9;
  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    *buf = 138413570;
    *&buf[4] = v23;
    *&buf[12] = 2112;
    *&buf[14] = v19;
    *&buf[22] = 2112;
    *&buf[24] = v20;
    *v101 = 2112;
    *&v101[2] = v21;
    *&v101[10] = 2112;
    *&v101[12] = v84;
    v102 = 1024;
    v103 = a9;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "ReallyMountVolume:volume:%@:displayName:%@:provider:%@:domainError:%@:on:%@:how:0x%08x", buf, 0x3Au);
  }

  v82 = v19;

  if (v21)
  {
    v25 = [v21 domain];
    if (![v25 isEqual:NSPOSIXErrorDomain])
    {
LABEL_9:

      goto LABEL_10;
    }

    v26 = [v21 code] == 80;

    if (v26)
    {
      v27 = livefs_std_log();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        sub_100025500();
      }

      [NSError errorWithDomain:NSFileProviderErrorDomain code:-1000 userInfo:0];
      v21 = v25 = v21;
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
    v83 = 0;
LABEL_13:
    v33 = *(v94[0] + 40);
    *(v94[0] + 40) = v28;
LABEL_41:

    goto LABEL_42;
  }

  if ([v84 isAbsolutePath])
  {
    v83 = v84;
  }

  else
  {
    v83 = [NSString stringWithFormat:@"%@/%@", gLiveFilesMountPath, v84];
  }

  v34 = livefs_std_log();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    *&buf[4] = v20;
    *&buf[12] = 2112;
    *&buf[14] = v83;
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "ReallyMountVolume: Enter for provider %{public}@ mounting: %@", buf, 0x16u);
  }

  v35 = (v94[0] + 40);
  obj = *(v94[0] + 40);
  v32 = [theMountTable preflightMountWithName:v23 displayName:v19 storageName:v23 provider:v20 path:v84 error:&obj];
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
    if ((a9 & 0x40) == 0 && [v32 currentState] <= 1)
    {
      v28 = [NSError errorWithDomain:NSPOSIXErrorDomain code:17 userInfo:0];
      v29 = 0;
      v30 = 0;
      v31 = 0;
      goto LABEL_13;
    }

    v36 = [v32 displayName];
    if ([v36 isEqualToString:v19])
    {
      v37 = [v32 storageName];
      if ([v37 isEqualToString:v23])
      {
        v38 = [v32 mntOn];
        v78 = [v38 isEqualToString:v83];

        if (v78)
        {
          goto LABEL_37;
        }

LABEL_36:
        [v32 refreshPath:v83 displayName:v82 storageName:v23];
        goto LABEL_37;
      }
    }

    goto LABEL_36;
  }

  v39 = [[FSAuditToken alloc] initWithToken:a11];
  LODWORD(v76) = -1;
  v32 = [mountEntry newWithName:v23 fileSystem:v81 displayName:v19 storageName:v23 provider:v20 path:v83 mountID:v76 auditToken:v39 mntTable:theMountTable];

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
  v41 = [theRoot mkMountPath:v84 mountID:{objc_msgSend(v32, "midx")}];
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
    v61 = [@"com.apple.filesystems.UserFS.FileProvider" isEqualToString:v20];
    v62 = a9;
    if (v61)
    {
      v62 = a9 | 0x100;
    }

    v79 = v62;
  }

  BYTE4(v77) = (v79 & 0x40) != 0;
  LODWORD(v77) = v79;
  v63 = [gSettings addMountNamed:v23 displayName:v82 mountID:objc_msgSend(v32 mountedOn:"midx") provider:v84 fpStorage:v20 domainError:v23 how:v21 isReAdd:v77];
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

  [v32 setDomainError:v21];
  if (v21)
  {
    v65 = livefs_std_log();
    if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
    {
      sub_10002568C();
    }

    v79 |= 2u;
  }

  [v32 setCurrentState:1];
  v30 = (v79 & 4) == 0;
  if ((v79 & 4) == 0)
  {
    v66 = dispatch_semaphore_create(0);
    v67 = livefs_std_log();
    if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      *&buf[4] = v23;
      *&buf[12] = 2112;
      *&buf[14] = v20;
      *&buf[22] = 2112;
      *&buf[24] = v21;
      _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "Adding domain %@ for provider %@ domainError %@", buf, 0x20u);
    }

    v88[0] = _NSConcreteStackBlock;
    v88[1] = 3221225472;
    v88[2] = sub_10001627C;
    v88[3] = &unk_100061298;
    v90 = &v93;
    v33 = v66;
    v89 = v33;
    [LivefsDomainManager addDomain:v23 displayName:v82 storage:v23 provider:v20 domainError:v21 how:v79 reply:v88];
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
      *&buf[4] = v20;
      _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEFAULT, "addDomain succeeded for provider %@", buf, 0xCu);
    }

    v69 = livefs_std_log();
    if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
    {
      sub_1000256C8();
    }
  }

  v70 = livefs_std_log();
  v79 |= (v79 >> 5) & 2;
  if (os_log_type_enabled(v70, OS_LOG_TYPE_DEBUG))
  {
    sub_100025740();
  }

  if ((v79 & 2) == 0)
  {
    v71 = [v32 connect];
    v72 = *(v94[0] + 40);
    *(v94[0] + 40) = v71;

    if (v71)
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
    *&buf[14] = v79;
    *&buf[18] = 2112;
    *&buf[20] = v80;
    _os_log_debug_impl(&_mh_execute_header, v73, OS_LOG_TYPE_DEBUG, "ReallyMountVolume:mount mp for volume:%@ how:0x%08x mountOptions:%@", buf, 0x1Cu);
  }

  v74 = [v32 mount:v79 options:v80];
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

  if ((v79 & 2) == 0)
  {
    [(fskitdXPCServer *)self doKernelMount:v83 providerName:v20 mountEntry:v32];
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
      [LivefsDomainManager removeDomain:v23 provider:v20 how:v79 reply:v85];
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
      v47 = [gSettings removeMountNamed:v23 provider:v20];
    }

    if (v29)
    {
      if (v32)
      {
        v48 = [v32 unmount:7];
      }

      v49 = v83;
      if (rmdir([v83 fileSystemRepresentation]))
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
  v22[2](v22, *(v94[0] + 40));

  _Block_object_dispose(&v93, 8);
}

- (void)doKernelMount:(id)a3 providerName:(id)a4 mountEntry:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = dispatch_get_global_queue(2, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100016460;
  block[3] = &unk_1000612C0;
  v15 = v7;
  v16 = v8;
  v17 = v9;
  v11 = v9;
  v12 = v8;
  v13 = v7;
  dispatch_async(v10, block);
}

- (void)mountVolume:(id)a3 fileSystem:(id)a4 displayName:(id)a5 provider:(id)a6 domainError:(id)a7 on:(id)a8 how:(int)a9 options:(id)a10 reply:(id)a11
{
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v22 = a8;
  v23 = a10;
  v24 = a11;
  if (v17 && v20 && v22)
  {
    [gSettings startedWork];
    v25 = dispatch_get_global_queue(2, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100016824;
    block[3] = &unk_1000612E8;
    block[4] = self;
    v28 = v17;
    v29 = v18;
    v30 = v19;
    v31 = v20;
    v32 = v21;
    v33 = v22;
    v36 = a9;
    v34 = v23;
    v35 = v24;
    dispatch_async(v25, block);
  }

  else
  {
    v26 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
    (*(v24 + 2))(v24, v26);
  }
}

- (void)mountVolume:(id)a3 fileSystem:(id)a4 displayName:(id)a5 provider:(id)a6 domainError:(id)a7 on:(id)a8 how:(int)a9 options:(id)a10 auditToken:(id *)a11 reply:(id)a12
{
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v22 = a7;
  v23 = a8;
  v24 = a10;
  v25 = a12;
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

  if (!v18 || !v21 || !v23)
  {
    v28 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
LABEL_10:
    v29 = v28;
    v25[2](v25, v28);

    goto LABEL_11;
  }

  queue = dispatch_get_global_queue(2, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100016B58;
  block[3] = &unk_100061310;
  block[4] = self;
  v32 = v18;
  v33 = v19;
  v34 = v20;
  v35 = v21;
  v36 = v22;
  v37 = v23;
  v40 = a9;
  v38 = v24;
  v26 = *&a11->var0[4];
  v41 = *a11->var0;
  v42 = v26;
  v39 = v25;
  dispatch_async(queue, block);

LABEL_11:
}

- (void)reallyUpdateErrorStateForVolume:(id)a3 provider:(id)a4 domainError:(id)a5 reply:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  [gSettings startedWork];
  v14 = gSettings;
  v28 = 0;
  v23 = _NSConcreteStackBlock;
  v24 = 3221225472;
  v25 = sub_100016DE0;
  v26 = &unk_100061338;
  v15 = v12;
  v27 = v15;
  v16 = [v14 updateMountEntry:v10 provider:v11 settingsDictionary:&v28 updateBlock:&v23];
  v17 = v28;
  if (v16)
  {
    [gSettings updateWorkTransaction];
    v13[2](v13, v16);
  }

  else
  {
    v18 = [theMountTable lookupName:v10 provider:v11];
    v19 = v18;
    if (v18)
    {
      if (v15)
      {
        [v18 setDomainError:v15];
      }

      else
      {
        v20 = [v18 domainError];

        [v19 setDomainError:0];
        if (v20)
        {
          [v19 resetConnectError];
          v21 = [v19 mntOn];
          v22 = v21;
          if (([v21 isAbsolutePath] & 1) == 0)
          {
            v22 = [NSString stringWithFormat:@"%@/%@", gLiveFilesMountPath, v21, v23, v24, v25, v26];
          }

          [(fskitdXPCServer *)self doKernelMount:v22 providerName:v11 mountEntry:v19];
        }
      }
    }

    [LivefsDomainManager updateDomain:v17 reply:v13];
  }
}

- (void)updateErrorStateForVolume:(id)a3 provider:(id)a4 domainError:(id)a5 reply:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (v10 && v11)
  {
    v14 = dispatch_get_global_queue(2, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100016FF8;
    block[3] = &unk_100061360;
    block[4] = self;
    v17 = v10;
    v18 = v11;
    v19 = v12;
    v20 = v13;
    dispatch_async(v14, block);
  }

  else
  {
    v15 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
    (*(v13 + 2))(v13, v15);
  }
}

- (void)unmountVolume:(id)a3 provider:(id)a4 how:(int)a5 domainError:(id)a6 reply:(id)a7
{
  LODWORD(v9) = a5;
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  if (verbose)
  {
    v16 = livefs_std_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413058;
      v32 = v12;
      v33 = 2112;
      v34 = v13;
      v35 = 1024;
      v36 = v9;
      v37 = 2112;
      v38 = v14;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Unmount of %@ for %@ with how %d domError %@", buf, 0x26u);
    }
  }

  v17 = [theMountTable lookupName:v12 provider:v13];
  v18 = v17;
  if (v17)
  {
    v19 = [v17 domainError];
    [v18 setDomainError:v14];
    if (v14)
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
    v23 = v19;
    v24 = v14;
    v30 = v9;
    v25 = v18;
    v26 = self;
    v27 = v12;
    v28 = v13;
    v29 = v15;
    v21 = v19;
    [v20 LiveMounterDoUnmount:v25 how:v9 reply:v22];
  }

  else
  {
    v21 = [NSError errorWithDomain:NSPOSIXErrorDomain code:2 userInfo:0];
    (*(v15 + 2))(v15, v21, 0);
  }
}

- (void)setVerboseLevel:(int)a3 reply:(id)a4
{
  if (a3 < 0x65)
  {
    verbose = a3;
    v8 = *(a4 + 2);
    v6 = a4;
    v8();
  }

  else
  {
    v9 = NSDebugDescriptionErrorKey;
    v10 = @"verbose level must be between 0 and 100";
    v5 = a4;
    v6 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    v7 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:v6];
    (*(a4 + 2))(v5, v7);
  }
}

- (void)installedExtensions:(id)a3
{
  v4 = a3;
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
  v8 = v4;
  v6 = v4;
  [(fskitdXPCServer *)self _installedExtensionsForAuditToken:v9 replyHandler:v7];
}

- (void)installedExtensionWithShortName:(id)a3 replyHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
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
  [(fskitdXPCServer *)self _installedExtensionWithShortName:v6 user:v9 replyHandler:v7];
}

- (void)installedExtensionWithShortName:(id)a3 user:(id)a4 replyHandler:(id)a5
{
  if (self->_clientHasEntitlement)
  {
    v10 = a5;
    [(fskitdXPCServer *)self _installedExtensionWithShortName:a3 user:a4 replyHandler:?];
  }

  else
  {
    v9 = a5;
    v10 = fs_errorForPOSIXError();
    (*(a5 + 2))(v9, 0);
  }
}

- (void)installedExtensionWithBundleID:(id)a3 replyHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
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
  [(fskitdXPCServer *)self _installedExtensionWithBundleID:v6 user:v9 replyHandler:v7];
}

- (void)_installedExtensionWithBundleID:(id)a3 user:(id)a4 replyHandler:(id)a5
{
  v8 = a5;
  v9 = [(fskitdXPCServer *)self getExtensionModuleFromID:a3 forToken:a4];
  v8[2](v8, v9, 0);
}

- (id)getExtensionModuleFromID:(id)a3 forToken:(id)a4
{
  v5 = a3;
  v6 = a4;
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
  [gAgentManager currentExtensionsForToken:v6 replyHandler:v19];
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
    v11 = v5;
    v12 = &v13;
    [v8 enumerateObjectsUsingBlock:v10];
    v7 = v14[5];

    _Block_object_dispose(&v13, 8);
  }

  _Block_object_dispose(&v20, 8);

  _Block_object_dispose(&v26, 8);

  return v7;
}

- (id)getModuleIdentityFromShortName:(id)a3
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
  v4 = a3;
  v8 = v4;
  v9 = &v10;
  [(fskitdXPCServer *)self installedExtensionWithShortName:v4 replyHandler:v7];
  v5 = v11[5];

  _Block_object_dispose(&v10, 8);

  return v5;
}

- (id)getModuleIdentityFromShortName:(id)a3 user:(id)a4
{
  v6 = a3;
  v7 = a4;
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
  v8 = v6;
  v12 = v8;
  v13 = &v14;
  [(fskitdXPCServer *)self installedExtensionWithShortName:v8 user:v7 replyHandler:v11];
  v9 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v9;
}

- (BOOL)extensionSupportsResource:(id)a3 resource:(id)a4
{
  v5 = a3;
  v6 = [a4 kind];
  v7 = [v5 attributes];
  v8 = v7;
  if (v6 <= 2)
  {
    if (v6 != 1)
    {
      if (v6 == 2)
      {
        v9 = &FSModuleIdentityAttributeSupportsGenericURLs;
        goto LABEL_8;
      }

      goto LABEL_10;
    }

    v18 = &FSModuleIdentityAttributeSupportsBlockResources;
LABEL_21:
    v10 = [v7 objectForKeyedSubscript:*v18];

    if (!v10 || ([v10 BOOLValue] & 1) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_25;
  }

  if (v6 == 3)
  {
    v18 = &FSModuleIdentityAttributeSupportsServerURLs;
    goto LABEL_21;
  }

  if (v6 != 4)
  {
LABEL_10:
    v10 = [v7 objectForKeyedSubscript:FSModuleIdentityAttributeSupportsBlockResources];

    v12 = [v5 attributes];
    v13 = [v12 objectForKeyedSubscript:FSModuleIdentityAttributeSupportsServerURLs];

    v14 = [v5 attributes];
    v15 = [v14 objectForKeyedSubscript:FSModuleIdentityAttributeSupportsGenericURLs];

    v16 = [v5 attributes];
    v17 = [v16 objectForKeyedSubscript:FSModuleIdentityAttributeSupportsPathURLs];

    if (v10 && ([v10 BOOLValue] & 1) != 0 || v13 && (objc_msgSend(v13, "BOOLValue") & 1) != 0 || v15 && (objc_msgSend(v15, "BOOLValue") & 1) != 0 || v17 && (objc_msgSend(v17, "BOOLValue") & 1) != 0)
    {

      goto LABEL_23;
    }

LABEL_25:
    v11 = 1;
    goto LABEL_26;
  }

  v9 = &FSModuleIdentityAttributeSupportsPathURLs;
LABEL_8:
  v10 = [v7 objectForKeyedSubscript:*v9];

  if (!v10)
  {
LABEL_23:
    v11 = 0;
    goto LABEL_26;
  }

  v11 = [v10 BOOLValue];
LABEL_26:

  return v11;
}

- (BOOL)extensionSupportsResourceScheme:(id)a3 resource:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v6 kind] == 2 || objc_msgSend(v6, "kind") == 3)
  {
    v7 = [v6 kind];
    v8 = FSGenericURLResource_ptr;
    if (v7 != 2)
    {
      v8 = FSServerURLResource_ptr;
    }

    v9 = [*v8 dynamicCast:v6];
    v10 = [v9 url];
    v11 = [v10 scheme];

    if (!v11)
    {
      v13 = fskit_std_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_100025D9C(v5, v6, v13);
      }

      v15 = 0;
      goto LABEL_23;
    }

    v12 = [v5 attributes];
    v13 = [v12 objectForKeyedSubscript:FSModuleIdentityAttributeSupportedSchemes];

    if (v13)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v23[0] = _NSConcreteStackBlock;
        v23[1] = 3221225472;
        v23[2] = sub_100019378;
        v23[3] = &unk_100061428;
        v14 = v11;
        v24 = v14;
        v15 = [v13 fs_any_of:v23];
        v16 = fskit_std_log();
        v17 = v16;
        if (v15)
        {
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
          {
            v18 = [v5 bundleIdentifier];
            v19 = [v6 getResourceID];
            *buf = 136315906;
            v26 = "[fskitdXPCServer extensionSupportsResourceScheme:resource:]";
            v27 = 2112;
            v28 = v18;
            v29 = 2112;
            v30 = v19;
            v31 = 2112;
            v32 = v14;
            _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "%s: Extension (%@) supports given resource (%@) scheme (%@)", buf, 0x2Au);
LABEL_26:
          }
        }

        else if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v18 = [v5 bundleIdentifier];
          v19 = [v6 getResourceID];
          *buf = 136315906;
          v26 = "[fskitdXPCServer extensionSupportsResourceScheme:resource:]";
          v27 = 2112;
          v28 = v18;
          v29 = 2112;
          v30 = v19;
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
        sub_100025CFC(v5, v20);
      }
    }

    else
    {
      v20 = fskit_std_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = [v5 bundleIdentifier];
        *buf = 136315394;
        v26 = "[fskitdXPCServer extensionSupportsResourceScheme:resource:]";
        v27 = 2112;
        v28 = v21;
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

- (void)getRealResource:(id)a3 auditToken:(id)a4 reply:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if ([v7 kind] != 1)
  {
    if ([v7 kind] == 2)
    {
      v13 = [FSGenericURLResource dynamicCast:v7];
      v14 = [gSettings resourceManager];
      objc_sync_enter(v14);
      v15 = [gSettings resourceManager];
      v16 = [v13 getResourceID];
      v17 = [v15 getResource:v16];

      if (v17)
      {
LABEL_15:
        objc_sync_exit(v14);

        v9[2](v9, v17, 0);
        v7 = v17;
        goto LABEL_26;
      }
    }

    else
    {
      if ([v7 kind] != 4)
      {
LABEL_25:
        v30 = fs_errorForPOSIXError();
        (v9)[2](v9, 0, v30);

        goto LABEL_26;
      }

      v13 = [FSPathURLResource dynamicCast:v7];
      v14 = [gSettings resourceManager];
      objc_sync_enter(v14);
      v18 = [gSettings resourceManager];
      v19 = [v13 getResourceID];
      v17 = [v18 getResource:v19];

      if (v17)
      {
        goto LABEL_15;
      }
    }

    v17 = v13;
    v20 = [gSettings resourceManager];
    [v20 updateResource:v17];

    goto LABEL_15;
  }

  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = sub_100016264;
  v42 = sub_100016274;
  v43 = [FSBlockDeviceResource dynamicCast:v7];
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
        [v7 getResourceID];
        objc_claimAutoreleasedReturnValue();
        sub_100025E5C();
      }

      v9[2](v9, v39[5], 0);
      v12 = 0;
      goto LABEL_24;
    }

LABEL_11:
    v12 = 1;
    goto LABEL_24;
  }

  v21 = [v39[5] BSDName];
  v22 = [v39[5] isWritable];
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_10001995C;
  v31[3] = &unk_100061450;
  v31[4] = &v32;
  v31[5] = &v38;
  [FSBlockDeviceResource openWithBSDName:v21 writable:v22 auditToken:v8 replyHandler:v31];

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

    v28 = [gSettings resourceManager];
    objc_sync_enter(v28);
    v29 = [gSettings resourceManager];
    [v29 updateResource:v23];

    objc_sync_exit(v28);
    v26 = 0;
    v25 = v23;
  }

  v9[2](v9, v25, v26);
  v12 = 0;
  v7 = v23;
LABEL_24:
  _Block_object_dispose(&v32, 8);

  _Block_object_dispose(&v38, 8);
  if (v12)
  {
    goto LABEL_25;
  }

LABEL_26:
}

- (id)applyResource:(id)a3 targetBundle:(id)a4 instanceID:(id)a5 initiatorAuditToken:(id)a6 authorizingAuditToken:(id)a7 usingBlock:(id)a8
{
  v14 = a8;
  v15 = a7;
  v16 = a6;
  v17 = a5;
  v18 = a3;
  v19 = [(fskitdXPCServer *)self getExtensionModuleFromID:a4 forToken:v16];
  v20 = [(fskitdXPCServer *)self applyResource:v18 usingIdentity:v19 instanceID:v17 initiatorAuditToken:v16 authorizingAuditToken:v15 usingBlock:v14];

  return v20;
}

- (id)applyResource:(id)a3 usingIdentity:(id)a4 instanceID:(id)a5 initiatorAuditToken:(id)a6 authorizingAuditToken:(id)a7 usingBlock:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
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
    sub_100025F7C(v14, v85, [v14 kind], v20);
  }

  v21 = v15;
  v22 = [v21 bundleIdentifier];
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
    *&buf[14] = v22;
    v31 = "%s: Attempt to start disabled extension %@";
    v32 = v30;
    v33 = 22;
LABEL_19:
    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, v31, buf, v33);
    goto LABEL_25;
  }

  if (![v17 ruid] && (objc_msgSend(v21, "isSystem") & 1) == 0)
  {
    v30 = fskit_std_log();
    if (!os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_25;
    }

    *buf = 138412290;
    *&buf[4] = v22;
    v31 = "Attempt to start non-Apple extension %@ on behalf of root";
    v32 = v30;
    v33 = 12;
    goto LABEL_19;
  }

  if (![(fskitdXPCServer *)self extensionSupportsResource:v21 resource:v14])
  {
    v30 = fskit_std_log();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      [v14 getResourceID];
      objc_claimAutoreleasedReturnValue();
      sub_100025FD4();
    }

    goto LABEL_25;
  }

  if (![(fskitdXPCServer *)self extensionSupportsResourceScheme:v21 resource:v14])
  {
    v30 = fskit_std_log();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      [v14 getResourceID];
      objc_claimAutoreleasedReturnValue();
      sub_10002602C();
    }

    goto LABEL_25;
  }

  v23 = gExtensionManager;
  v24 = [v16 fs_containerIdentifier];
  v62[0] = _NSConcreteStackBlock;
  v62[1] = 3221225472;
  v62[2] = sub_10001A594;
  v62[3] = &unk_100061478;
  v62[4] = &v75;
  v62[5] = &v63;
  [v23 extensionForBundle:v22 user:v17 instance:v24 replyHandler:v62];

  if (v76[5] || ([v64[5] errorFromStartingProc], v25 = objc_claimAutoreleasedReturnValue(), v26 = v76[5], v76[5] = v25, v26, v76[5]))
  {
    v27 = fskit_std_log();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = v76[5];
      *buf = 136315650;
      *&buf[4] = "[fskitdXPCServer applyResource:usingIdentity:instanceID:initiatorAuditToken:authorizingAuditToken:usingBlock:]";
      *&buf[12] = 2112;
      *&buf[14] = v22;
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
  [(fskitdXPCServer *)self getRealResource:v14 auditToken:v17 reply:v61];
  if (v76[5])
  {
    v36 = fskit_std_log();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      [v14 getResourceID];
      objc_claimAutoreleasedReturnValue();
      sub_100026084();
    }

    [gSettings removeReferencesToTask:v16];
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
      *&buf[14] = v22;
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
      *&buf[4] = v22;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "About to talk to the connection for %@", buf, 0xCu);
    }

    v59[0] = _NSConcreteStackBlock;
    v59[1] = 3221225472;
    v59[2] = sub_10001A698;
    v59[3] = &unk_1000614C8;
    v59[4] = &v75;
    v51 = [v40 synchronousRemoteObjectProxyWithErrorHandler:v59];
    v44 = [v16 fs_containerIdentifier];
    v58[0] = _NSConcreteStackBlock;
    v58[1] = 3221225472;
    v58[2] = sub_10001A6A8;
    v58[3] = &unk_1000614C8;
    v58[4] = &v75;
    [v51 checkIn:v44 replyHandler:v58];

    if (v76[5])
    {
      v45 = fskit_std_log();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        v46 = v76[5];
        *buf = 136315650;
        *&buf[4] = "[fskitdXPCServer applyResource:usingIdentity:instanceID:initiatorAuditToken:authorizingAuditToken:usingBlock:]";
        *&buf[12] = 2112;
        *&buf[14] = v22;
        *&buf[22] = 2112;
        v84 = v46;
        _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "%s: checkIn to extension %@ reported error %@", buf, 0x20u);
      }

      v34 = v76[5];
    }

    else
    {
      v47 = v64[5];
      v48 = [v37 getResourceID];
      [v47 addResourceID:v48];

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
      v19[2](v19, v22, v54, v40, v52);
      dispatch_group_wait(v50, 0xFFFFFFFFFFFFFFFFLL);
      v34 = v76[5];

      _Block_object_dispose(buf, 8);
    }
  }

  v14 = v37;
LABEL_27:

  _Block_object_dispose(&v63, 8);
  _Block_object_dispose(&v69, 8);

  _Block_object_dispose(&v75, 8);
  _Block_object_dispose(v81, 8);

  return v34;
}

- (id)canStartProbeTask:(id)a3 resource:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [gSettings resourceManager];
  objc_sync_enter(v7);
  v8 = [gSettings resourceManager];
  v9 = [v6 getResourceID];
  v10 = [v8 getResourceState:v9];

  v11 = [FSBlockDeviceResource dynamicCast:v6];
  v12 = v11;
  if (v10 >= 2 && (v10 - 4 <= 0xFFFFFFFD ? (v15 = v11 == 0) : (v15 = 1), v15 || ([v11 isWritable] & 1) != 0))
  {
    v14 = fs_errorForPOSIXError();
    v16 = fskit_std_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [v6 getResourceID];
      objc_claimAutoreleasedReturnValue();
      sub_10002615C();
    }
  }

  else
  {
    v13 = [gSettings resourceManager];
    [v13 addTaskUUID:v5 resource:v6];

    v14 = 0;
  }

  objc_sync_exit(v7);

  return v14;
}

- (void)probeResource:(id)a3 usingBundle:(id)a4 replyHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  ourConn = self->_ourConn;
  if (ourConn)
  {
    [(NSXPCConnection *)ourConn auditToken];
  }

  else
  {
    memset(v12, 0, sizeof(v12));
  }

  [(fskitdXPCServer *)self _probeResource:v8 usingBundle:v9 auditToken:v12 replyHandler:v10];
}

- (id)canStartTask:(id)a3 resource:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [gSettings resourceManager];
  objc_sync_enter(v7);
  v8 = [gSettings resourceManager];
  v9 = [v6 getResourceID];
  v10 = [v8 getResourceState:v9];

  if (v10)
  {
    v11 = fs_errorForPOSIXError();
    v12 = fskit_std_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [v6 getResourceID];
      objc_claimAutoreleasedReturnValue();
      sub_1000261B8();
    }
  }

  else
  {
    v13 = [gSettings resourceManager];
    [v13 addTaskUUID:v5 resource:v6];

    v11 = 0;
  }

  objc_sync_exit(v7);

  return v11;
}

- (id)canStartUnloadTask:(id)a3 resource:(id)a4
{
  v5 = a3;
  v6 = a4;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_100016264;
  v27 = sub_100016274;
  v28 = 0;
  v7 = [gSettings resourceManager];
  objc_sync_enter(v7);
  v8 = [gSettings resourceManager];
  v9 = [v8 getTaskUUIDs:v6];

  if (v9)
  {
    v10 = [gSettings tasks];
    objc_sync_enter(v10);
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10001B038;
    v20[3] = &unk_100061518;
    v22 = &v23;
    v21 = v6;
    [v9 enumerateObjectsUsingBlock:v20];

    objc_sync_exit(v10);
  }

  if (!v24[5])
  {
    v11 = [gSettings resourceManager];
    v12 = [v6 getResourceID];
    v13 = [v11 getResourceState:v12];

    if (v13 <= 6 && ((1 << v13) & 0x71) != 0)
    {
      v14 = fskit_std_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        [v6 getResourceID];
        objc_claimAutoreleasedReturnValue();
        sub_100026214();
      }

      v15 = [gSettings resourceManager];
      [v15 addTaskUUID:v5 resource:v6];
    }

    else
    {
      v18 = fs_errorForPOSIXError();
      v19 = v24[5];
      v24[5] = v18;

      v15 = fskit_std_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [v6 getResourceID];
        objc_claimAutoreleasedReturnValue();
        [v24[5] localizedDescription];
        objc_claimAutoreleasedReturnValue();
        sub_100026264();
      }
    }
  }

  objc_sync_exit(v7);

  v16 = v24[5];
  _Block_object_dispose(&v23, 8);

  return v16;
}

- (void)doCheckResource:(id)a3 usingBundle:(id)a4 options:(id)a5 connection:(id)a6 reply:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  ourConn = self->_ourConn;
  if (ourConn)
  {
    [(NSXPCConnection *)ourConn auditToken];
  }

  else
  {
    memset(v18, 0, sizeof(v18));
  }

  [(fskitdXPCServer *)self _checkResource:v12 usingBundle:v13 options:v14 auditToken:v18 connection:v15 replyHandler:v16];
}

- (id)getInitiatorBundleIDForToken:(id *)a3
{
  v3 = *&a3->var0[4];
  *v11.val = *a3->var0;
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

- (id)getTeamIDForToken:(id *)a3
{
  v3 = *&a3->var0[4];
  *token.val = *a3->var0;
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

- (id)getInitiatorSigningIDForToken:(id *)a3
{
  v3 = *&a3->var0[4];
  *cf.val = *a3->var0;
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

- (void)formatResource:(id)a3 usingBundle:(id)a4 options:(id)a5 connection:(id)a6 replyHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  ourConn = self->_ourConn;
  if (ourConn)
  {
    [(NSXPCConnection *)ourConn auditToken];
  }

  else
  {
    memset(v18, 0, sizeof(v18));
  }

  [(fskitdXPCServer *)self _formatResource:v12 usingBundle:v13 options:v14 auditToken:v18 connection:v15 replyHandler:v16];
}

- (void)currentTasks:(id)a3
{
  v4 = a3;
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
  v8 = v4;
  v6 = v4;
  [(fskitdXPCServer *)self _currentTasksForAuditToken:v9 replyHandler:v7];
}

- (void)currentResourceIDs:(id)a3
{
  v4 = a3;
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
  v8 = v4;
  v6 = v4;
  [(fskitdXPCServer *)self _currentResourceIDsForAuditToken:v9 replyHandler:v7];
}

- (void)currentContainers:(id)a3
{
  v4 = a3;
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
  v8 = v4;
  v6 = v4;
  [(fskitdXPCServer *)self _currentContainersForAuditToken:v9 replyHandler:v7];
}

- (void)setTaskUpdateInterest:(BOOL)a3 replyHandler:(id)a4
{
  v4 = a3;
  v11 = a4;
  v6 = [gSettings taskUpdateClients];
  objc_sync_enter(v6);
  v7 = self;
  objc_sync_enter(v7);
  if (v7->_ourConn)
  {
    v7->_hasTaskInterest = v4;
    if (v4)
    {
      v8 = [gSettings taskUpdateClients];
      [v8 addObject:v7];
    }

    else
    {
      v9 = [gSettings taskUpdateClients];
      v10 = [v9 containsObject:v7];

      if (!v10)
      {
        goto LABEL_7;
      }

      v8 = [gSettings taskUpdateClients];
      [v8 removeObject:v7];
    }
  }

LABEL_7:
  objc_sync_exit(v7);

  objc_sync_exit(v6);
  [gSettings updateWorkTransaction];
  v11[2](v11, 0);
}

- (void)cancelTask:(id)a3 replyHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = fskit_std_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_100026540();
  }

  v9 = [gSettings tasks];
  objc_sync_enter(v9);
  v10 = [gSettings tasks];
  v11 = [v10 objectForKey:v6];

  objc_sync_exit(v9);
  if (v11)
  {
    v12 = [v11 taskReferenceHolder];
    v13 = [fskitdExtensionInstance dynamicCast:v12];

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
      v21 = [v11 taskInitiatorID];
      if ([v18 isEqualToString:v21])
      {
        v22 = [v11 taskSigningID];
        v23 = [v20 isEqualToString:v22];

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

          v7[2](v7, v25);
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
        v28 = [v11 taskInitiatorID];
        v29 = [v11 taskSigningID];
        LODWORD(v30[0]) = 136316162;
        *(v30 + 4) = "[fskitdXPCServer cancelTask:replyHandler:]";
        WORD6(v30[0]) = 2112;
        *(v30 + 14) = v18;
        WORD3(v30[1]) = 2112;
        *(&v30[1] + 1) = v20;
        v31 = 2112;
        v32 = v28;
        v33 = 2112;
        v34 = v29;
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
    v7[2](v7, v17);
  }

  else
  {
    v15 = fskit_std_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_1000266B8();
    }

    v11 = fs_errorForPOSIXError();
    v7[2](v7, v11);
  }

LABEL_27:
}

- (id)canStartActivateTask:(id)a3 resource:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [gSettings resourceManager];
  objc_sync_enter(v7);
  v8 = [gSettings resourceManager];
  v9 = [v8 getTaskUUIDs:v6];

  if ([v9 count])
  {
    v10 = fs_errorForPOSIXError();
    v11 = fskit_std_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [v6 getResourceID];
      v13 = [v10 localizedDescription];
      v19 = 136315906;
      v20 = "[fskitdXPCServer canStartActivateTask:resource:]";
      v21 = 2112;
      v22 = v12;
      v23 = 2112;
      v24 = v9;
      v25 = 2112;
      v26 = v13;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s:%@: Can't start new task, previous task is running: %@, error: %@", &v19, 0x2Au);
    }
  }

  else
  {
    v14 = [gSettings resourceManager];
    v15 = [v6 getResourceID];
    v16 = [v14 getResourceState:v15];

    if (v16 == 4)
    {
      v17 = fskit_std_log();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        [v6 getResourceID];
        objc_claimAutoreleasedReturnValue();
        sub_100026790();
      }

      v11 = [gSettings resourceManager];
      [v11 addTaskUUID:v5 resource:v6];
      v10 = 0;
    }

    else
    {
      v10 = fs_errorForPOSIXError();
      v11 = fskit_std_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [v6 getResourceID];
        objc_claimAutoreleasedReturnValue();
        [v10 localizedDescription];
        objc_claimAutoreleasedReturnValue();
        sub_100026734();
      }
    }
  }

  objc_sync_exit(v7);

  return v10;
}

- (void)activateVolume:(id)a3 usingBundle:(id)a4 options:(id)a5 replyHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
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
  v16 = [(fskitdXPCServer *)self getExtensionModuleFromID:v11 forToken:v15];
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

    [(fskitdXPCServer *)self _activateVolume:v10 usingIdentity:v16 options:v12 auditToken:&v20 replyHandler:v13];
  }

  else
  {
    v18 = fskit_std_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_1000267E0();
    }

    v19 = fs_errorForPOSIXError();
    v13[2](v13, v19);
  }
}

- (void)activateVolume:(id)a3 shortName:(id)a4 options:(id)a5 replyHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(fskitdXPCServer *)self getModuleIdentityFromShortName:v11];
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

    [(fskitdXPCServer *)self _activateVolume:v10 usingIdentity:v14 options:v12 auditToken:v18 replyHandler:v13];
  }

  else
  {
    v16 = fskit_std_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_10002685C();
    }

    v17 = fs_errorForPOSIXError();
    v13[2](v13, v17);
  }
}

- (void)activateVolume:(id)a3 shortName:(id)a4 options:(id)a5 auditToken:(id *)a6 replyHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v16 = *&a6->var0[4];
  v22 = *a6->var0;
  v23 = v16;
  v17 = [FSAuditToken tokenWithToken:&v22];
  v18 = [(fskitdXPCServer *)self getModuleIdentityFromShortName:v13 user:v17];
  if (v18)
  {
    v19 = *&a6->var0[4];
    v22 = *a6->var0;
    v23 = v19;
    [(fskitdXPCServer *)self _activateVolume:v12 usingIdentity:v18 options:v14 auditToken:&v22 replyHandler:v15];
  }

  else
  {
    v20 = fskit_std_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_1000268D8();
    }

    v21 = fs_errorForPOSIXError();
    v15[2](v15, v21);
  }
}

- (id)canStartDeactivateTask:(id)a3 resource:(id)a4
{
  v5 = a3;
  v6 = a4;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_100016264;
  v27 = sub_100016274;
  v28 = 0;
  v7 = [gSettings resourceManager];
  objc_sync_enter(v7);
  v8 = [gSettings resourceManager];
  v9 = [v8 getTaskUUIDs:v6];

  if (v9)
  {
    v10 = [gSettings tasks];
    objc_sync_enter(v10);
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10001C8C0;
    v20[3] = &unk_100061518;
    v22 = &v23;
    v21 = v6;
    [v9 enumerateObjectsUsingBlock:v20];

    objc_sync_exit(v10);
  }

  if (!v24[5])
  {
    v11 = [gSettings resourceManager];
    v12 = [v6 getResourceID];
    v13 = [v11 getResourceState:v12];

    if (v13 - 5 > 1)
    {
      v16 = fs_errorForPOSIXError();
      v17 = v24[5];
      v24[5] = v16;

      v15 = fskit_std_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [v6 getResourceID];
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
        [v6 getResourceID];
        objc_claimAutoreleasedReturnValue();
        sub_1000269B0();
      }

      v15 = [gSettings resourceManager];
      [v15 addTaskUUID:v5 resource:v6];
    }
  }

  objc_sync_exit(v7);

  v18 = v24[5];
  _Block_object_dispose(&v23, 8);

  return v18;
}

- (void)deactivateVolume:(id)a3 usingBundle:(id)a4 numericOptions:(unint64_t)a5 replyHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
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
  v15 = [(fskitdXPCServer *)self getExtensionModuleFromID:v11 forToken:v14];
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

    [(fskitdXPCServer *)self _deactivateVolume:v10 usingIdentity:v15 numericOptions:a5 auditToken:&v19 replyHandler:v12];
  }

  else
  {
    v17 = fskit_std_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_100026A00();
    }

    v18 = fs_errorForPOSIXError();
    v12[2](v12, v18);
  }
}

- (void)deactivateVolume:(id)a3 shortName:(id)a4 numericOptions:(unint64_t)a5 replyHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [(fskitdXPCServer *)self getModuleIdentityFromShortName:v11];
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

    [(fskitdXPCServer *)self _deactivateVolume:v10 usingIdentity:v13 numericOptions:a5 auditToken:v17 replyHandler:v12];
  }

  else
  {
    v15 = fskit_std_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_100026A7C();
    }

    v16 = fs_errorForPOSIXError();
    v12[2](v12, v16);
  }
}

- (void)deactivateVolume:(id)a3 shortName:(id)a4 numericOptions:(unint64_t)a5 auditToken:(id *)a6 replyHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a7;
  v15 = *&a6->var0[4];
  v21 = *a6->var0;
  v22 = v15;
  v16 = [FSAuditToken tokenWithToken:&v21];
  v17 = [(fskitdXPCServer *)self getModuleIdentityFromShortName:v13 user:v16];
  if (v17)
  {
    v18 = *&a6->var0[4];
    v21 = *a6->var0;
    v22 = v18;
    [(fskitdXPCServer *)self _deactivateVolume:v12 usingIdentity:v17 numericOptions:a5 auditToken:&v21 replyHandler:v14];
  }

  else
  {
    v19 = fskit_std_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_100026AF8();
    }

    v20 = fs_errorForPOSIXError();
    v14[2](v14, v20);
  }
}

- (void)loadResource:(id)a3 usingBundle:(id)a4 options:(id)a5 replyHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
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
  v16 = [(fskitdXPCServer *)self getExtensionModuleFromID:v11 forToken:v15];
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

    [(fskitdXPCServer *)self _loadResource:v10 usingIdentity:v16 options:v12 auditToken:&v20 replyHandler:v13];
  }

  else
  {
    v18 = fskit_std_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_100026B74();
    }

    v19 = fs_errorForPOSIXError();
    v13[2](v13, 0, v19);
  }
}

- (void)loadResource:(id)a3 shortName:(id)a4 options:(id)a5 replyHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(fskitdXPCServer *)self getModuleIdentityFromShortName:v11];
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

    [(fskitdXPCServer *)self _loadResource:v10 usingIdentity:v14 options:v12 auditToken:v18 replyHandler:v13];
  }

  else
  {
    v16 = fskit_std_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_100026BF0();
    }

    v17 = fs_errorForPOSIXError();
    v13[2](v13, 0, v17);
  }
}

- (void)loadResource:(id)a3 shortName:(id)a4 options:(id)a5 auditToken:(id *)a6 replyHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v16 = *&a6->var0[4];
  v22 = *a6->var0;
  v23 = v16;
  v17 = [FSAuditToken tokenWithToken:&v22];
  v18 = [(fskitdXPCServer *)self getModuleIdentityFromShortName:v13 user:v17];
  if (v18)
  {
    v19 = *&a6->var0[4];
    v22 = *a6->var0;
    v23 = v19;
    [(fskitdXPCServer *)self _loadResource:v12 usingIdentity:v18 options:v14 auditToken:&v22 replyHandler:v15];
  }

  else
  {
    v20 = fskit_std_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_100026C6C();
    }

    v21 = fs_errorForPOSIXError();
    v15[2](v15, 0, v21);
  }
}

- (void)unloadResource:(id)a3 usingBundle:(id)a4 options:(id)a5 replyHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
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
  v16 = [(fskitdXPCServer *)self getExtensionModuleFromID:v11 forToken:v15];
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

    [(fskitdXPCServer *)self _unloadResource:v10 usingIdentity:v16 options:v12 auditToken:&v20 replyHandler:v13];
  }

  else
  {
    v18 = fskit_std_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_100026CE8();
    }

    v19 = fs_errorForPOSIXError();
    v13[2](v13, v19);
  }
}

- (void)unloadResource:(id)a3 shortName:(id)a4 options:(id)a5 replyHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(fskitdXPCServer *)self getModuleIdentityFromShortName:v11];
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

    [(fskitdXPCServer *)self _unloadResource:v10 usingIdentity:v14 options:v12 auditToken:v18 replyHandler:v13];
  }

  else
  {
    v16 = fskit_std_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_100026D64();
    }

    v17 = fs_errorForPOSIXError();
    v13[2](v13, v17);
  }
}

- (void)unloadResource:(id)a3 shortName:(id)a4 options:(id)a5 auditToken:(id *)a6 replyHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v16 = *&a6->var0[4];
  v22 = *a6->var0;
  v23 = v16;
  v17 = [FSAuditToken tokenWithToken:&v22];
  v18 = [(fskitdXPCServer *)self getModuleIdentityFromShortName:v13 user:v17];
  if (v18)
  {
    v19 = *&a6->var0[4];
    v22 = *a6->var0;
    v23 = v19;
    [(fskitdXPCServer *)self _unloadResource:v12 usingIdentity:v18 options:v14 auditToken:&v22 replyHandler:v15];
  }

  else
  {
    v20 = fskit_std_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_100026DE0();
    }

    v21 = fs_errorForPOSIXError();
    v15[2](v15, v21);
  }
}

- (void)activateVolume:(id)a3 usingBundle:(id)a4 options:(id)a5 auditToken:(id *)a6 replyHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  if (self->_clientHasEntitlement)
  {
    v16 = *&a6->var0[4];
    v22 = *a6->var0;
    v23 = v16;
    v17 = [FSAuditToken tokenWithToken:&v22];
    v18 = [(fskitdXPCServer *)self getExtensionModuleFromID:v13 forToken:v17];
    if (v18)
    {
      v19 = *&a6->var0[4];
      v22 = *a6->var0;
      v23 = v19;
      [(fskitdXPCServer *)self _activateVolume:v12 usingIdentity:v18 options:v14 auditToken:&v22 replyHandler:v15];
    }

    else
    {
      v20 = fskit_std_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_100026E5C();
      }

      v21 = fs_errorForPOSIXError();
      v15[2](v15, v21);
    }
  }

  else
  {
    v17 = fs_errorForPOSIXError();
    v15[2](v15, v17);
  }
}

- (void)_activateVolume:(id)a3 usingIdentity:(id)a4 options:(id)a5 auditToken:(id *)a6 replyHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v16 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  v17 = *&a6->var0[4];
  v28 = *a6->var0;
  v29 = v17;
  block[2] = sub_10001D848;
  block[3] = &unk_1000615E0;
  v23 = v13;
  v24 = v12;
  v26 = v14;
  v27 = v15;
  v25 = self;
  v18 = v14;
  v19 = v15;
  v20 = v12;
  v21 = v13;
  dispatch_async(v16, block);
}

- (void)checkResource:(id)a3 usingBundle:(id)a4 options:(id)a5 auditToken:(id *)a6 connection:(id)a7 replyHandler:(id)a8
{
  if (self->_clientHasEntitlement)
  {
    v14 = *&a6->var0[4];
    v18[0] = *a6->var0;
    v18[1] = v14;
    v15 = a8;
    [(fskitdXPCServer *)self _checkResource:a3 usingBundle:a4 options:a5 auditToken:v18 connection:a7 replyHandler:v15];
  }

  else
  {
    v16 = a8;
    v17 = fs_errorForPOSIXError();
    (*(a8 + 2))(v16, 0, v17);
  }
}

- (void)_checkResource:(id)a3 usingBundle:(id)a4 options:(id)a5 auditToken:(id *)a6 connection:(id)a7 replyHandler:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a7;
  v18 = a8;
  v19 = dispatch_get_global_queue(0, 0);
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_10001E608;
  v26[3] = &unk_1000616F8;
  v26[4] = self;
  v27 = v14;
  v20 = *&a6->var0[4];
  v32 = *a6->var0;
  v33 = v20;
  v28 = v15;
  v29 = v16;
  v30 = v17;
  v31 = v18;
  v21 = v17;
  v22 = v16;
  v23 = v15;
  v24 = v18;
  v25 = v14;
  dispatch_async(v19, v26);
}

- (void)currentContainersForAuditToken:(id *)a3 replyHandler:(id)a4
{
  if (self->_clientHasEntitlement)
  {
    v6 = *&a3->var0[4];
    v10[0] = *a3->var0;
    v10[1] = v6;
    v7 = a4;
    [(fskitdXPCServer *)self _currentContainersForAuditToken:v10 replyHandler:v7];
  }

  else
  {
    v8 = a4;
    v9 = fs_errorForPOSIXError();
    (*(a4 + 2))(v8, 0, v9);
  }
}

- (void)_currentContainersForAuditToken:(id *)a3 replyHandler:(id)a4
{
  v5 = gExtensionManager;
  v6 = a4;
  v7 = [v5 getInstancesInfo];
  (*(a4 + 2))(v6, v7, 0);
}

- (void)currentResourceIDsForAuditToken:(id *)a3 replyHandler:(id)a4
{
  if (self->_clientHasEntitlement)
  {
    v6 = *&a3->var0[4];
    v10[0] = *a3->var0;
    v10[1] = v6;
    v7 = a4;
    [(fskitdXPCServer *)self _currentResourceIDsForAuditToken:v10 replyHandler:v7];
  }

  else
  {
    v8 = a4;
    v9 = fs_errorForPOSIXError();
    (*(a4 + 2))(v8, 0, v9);
  }
}

- (void)_currentResourceIDsForAuditToken:(id *)a3 replyHandler:(id)a4
{
  v8 = a4;
  v4 = [gSettings resourceManager];
  objc_sync_enter(v4);
  v5 = [gSettings resourceManager];
  v6 = [v5 getResources];

  objc_sync_exit(v4);
  if (v6)
  {
    [v6 allKeys];
  }

  else
  {
    fs_errorForPOSIXError();
  }
  v7 = ;
  v8[2]();
}

- (void)currentTasksForAuditToken:(id *)a3 replyHandler:(id)a4
{
  if (self->_clientHasEntitlement)
  {
    v6 = *&a3->var0[4];
    v10[0] = *a3->var0;
    v10[1] = v6;
    v7 = a4;
    [(fskitdXPCServer *)self _currentTasksForAuditToken:v10 replyHandler:v7];
  }

  else
  {
    v8 = a4;
    v9 = fs_errorForPOSIXError();
    (*(a4 + 2))(v8, 0, v9);
  }
}

- (void)_currentTasksForAuditToken:(id *)a3 replyHandler:(id)a4
{
  v5 = a4;
  v6 = [gSettings tasks];
  objc_sync_enter(v6);
  v7 = [gSettings tasks];
  v8 = [v7 allValues];

  objc_sync_exit(v6);
  if (self->_clientHasEntitlement)
  {
    v5[2](v5, v8, 0);
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
    v13 = [v8 fs_filter:v14];
    v5[2](v5, v13, 0);
  }
}

- (void)deactivateVolume:(id)a3 usingBundle:(id)a4 numericOptions:(unint64_t)a5 auditToken:(id *)a6 replyHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a7;
  if (self->_clientHasEntitlement)
  {
    v15 = *&a6->var0[4];
    v21 = *a6->var0;
    v22 = v15;
    v16 = [FSAuditToken tokenWithToken:&v21];
    v17 = [(fskitdXPCServer *)self getExtensionModuleFromID:v13 forToken:v16];
    if (v17)
    {
      v18 = *&a6->var0[4];
      v21 = *a6->var0;
      v22 = v18;
      [(fskitdXPCServer *)self _deactivateVolume:v12 usingIdentity:v17 numericOptions:a5 auditToken:&v21 replyHandler:v14];
    }

    else
    {
      v19 = fskit_std_log();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_100027070();
      }

      v20 = fs_errorForPOSIXError();
      v14[2](v14, v20);
    }
  }

  else
  {
    v16 = fs_errorForPOSIXError();
    v14[2](v14, v16);
  }
}

- (void)_deactivateVolume:(id)a3 usingIdentity:(id)a4 numericOptions:(unint64_t)a5 auditToken:(id *)a6 replyHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a7;
  v15 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  v16 = *&a6->var0[4];
  v26 = *a6->var0;
  v27 = v16;
  block[2] = sub_10001FCB4;
  block[3] = &unk_100061798;
  v21 = v13;
  v22 = v12;
  v23 = self;
  v24 = v14;
  v25 = a5;
  v17 = v14;
  v18 = v12;
  v19 = v13;
  dispatch_async(v15, block);
}

- (void)formatResource:(id)a3 usingBundle:(id)a4 options:(id)a5 auditToken:(id *)a6 connection:(id)a7 replyHandler:(id)a8
{
  if (self->_clientHasEntitlement)
  {
    v14 = *&a6->var0[4];
    v18[0] = *a6->var0;
    v18[1] = v14;
    v15 = a8;
    [(fskitdXPCServer *)self _formatResource:a3 usingBundle:a4 options:a5 auditToken:v18 connection:a7 replyHandler:v15];
  }

  else
  {
    v16 = a8;
    v17 = fs_errorForPOSIXError();
    (*(a8 + 2))(v16, 0, v17);
  }
}

- (void)_formatResource:(id)a3 usingBundle:(id)a4 options:(id)a5 auditToken:(id *)a6 connection:(id)a7 replyHandler:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a7;
  v18 = a8;
  v19 = dispatch_get_global_queue(0, 0);
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100020BAC;
  v26[3] = &unk_1000616F8;
  v26[4] = self;
  v27 = v14;
  v20 = *&a6->var0[4];
  v32 = *a6->var0;
  v33 = v20;
  v28 = v15;
  v29 = v16;
  v30 = v17;
  v31 = v18;
  v21 = v17;
  v22 = v16;
  v23 = v15;
  v24 = v18;
  v25 = v14;
  dispatch_async(v19, v26);
}

- (void)installedExtensionsForAuditToken:(id *)a3 replyHandler:(id)a4
{
  if (self->_clientHasEntitlement)
  {
    v6 = *&a3->var0[4];
    v10[0] = *a3->var0;
    v10[1] = v6;
    v7 = a4;
    [(fskitdXPCServer *)self _installedExtensionsForAuditToken:v10 replyHandler:v7];
  }

  else
  {
    v8 = a4;
    v9 = fs_errorForPOSIXError();
    (*(a4 + 2))(v8, 0, v9);
  }
}

- (void)_installedExtensionsForAuditToken:(id *)a3 replyHandler:(id)a4
{
  v6 = a4;
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
  v9 = *&a3->var0[4];
  buf = *a3->var0;
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
    v6[2](v6, *(v29[0] + 40), v23[5]);
  }

  else if (v23[5])
  {
    (v6[2])(v6, 0);
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

    (v6)[2](v6, v17, 0);
  }

  _Block_object_dispose(&v22, 8);

  _Block_object_dispose(&v28, 8);
}

- (void)loadResource:(id)a3 usingBundle:(id)a4 options:(id)a5 auditToken:(id *)a6 replyHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  if (self->_clientHasEntitlement)
  {
    v16 = *&a6->var0[4];
    v22 = *a6->var0;
    v23 = v16;
    v17 = [FSAuditToken tokenWithToken:&v22];
    v18 = [(fskitdXPCServer *)self getExtensionModuleFromID:v13 forToken:v17];
    if (v18)
    {
      v19 = *&a6->var0[4];
      v22 = *a6->var0;
      v23 = v19;
      [(fskitdXPCServer *)self _loadResource:v12 usingIdentity:v18 options:v14 auditToken:&v22 replyHandler:v15];
    }

    else
    {
      v20 = fskit_std_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_10002736C();
      }

      v21 = fs_errorForPOSIXError();
      v15[2](v15, 0, v21);
    }
  }

  else
  {
    v17 = fs_errorForPOSIXError();
    v15[2](v15, 0, v17);
  }
}

- (void)_loadResource:(id)a3 usingIdentity:(id)a4 options:(id)a5 auditToken:(id *)a6 replyHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v16 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  v17 = *&a6->var0[4];
  v28 = *a6->var0;
  v29 = v17;
  block[2] = sub_1000221D4;
  block[3] = &unk_100061880;
  v26 = v14;
  v27 = v15;
  v23 = v13;
  v24 = self;
  v25 = v12;
  v18 = v14;
  v19 = v12;
  v20 = v15;
  v21 = v13;
  dispatch_async(v16, block);
}

- (void)probeResource:(id)a3 usingBundle:(id)a4 auditToken:(id *)a5 replyHandler:(id)a6
{
  if (self->_clientHasEntitlement)
  {
    v10 = *&a5->var0[4];
    v14[0] = *a5->var0;
    v14[1] = v10;
    v11 = a6;
    [(fskitdXPCServer *)self _probeResource:a3 usingBundle:a4 auditToken:v14 replyHandler:v11];
  }

  else
  {
    v12 = a6;
    v13 = fs_errorForPOSIXError();
    (*(a6 + 2))(v12, 0, v13);
  }
}

- (void)_probeResource:(id)a3 usingBundle:(id)a4 auditToken:(id *)a5 replyHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = fskit_std_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = [v10 getResourceID];
    *buf = 138412290;
    v27 = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Probe starting on %@", buf, 0xCu);
  }

  v15 = dispatch_get_global_queue(0, 0);
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100023220;
  v20[3] = &unk_100061920;
  v20[4] = self;
  v21 = v10;
  v22 = v11;
  v23 = v12;
  v16 = *&a5->var0[4];
  v24 = *a5->var0;
  v25 = v16;
  v17 = v11;
  v18 = v12;
  v19 = v10;
  dispatch_async(v15, v20);
}

- (void)unloadResource:(id)a3 usingBundle:(id)a4 options:(id)a5 auditToken:(id *)a6 replyHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  if (self->_clientHasEntitlement)
  {
    v16 = *&a6->var0[4];
    v22 = *a6->var0;
    v23 = v16;
    v17 = [FSAuditToken tokenWithToken:&v22];
    v18 = [(fskitdXPCServer *)self getExtensionModuleFromID:v13 forToken:v17];
    if (v18)
    {
      v19 = *&a6->var0[4];
      v22 = *a6->var0;
      v23 = v19;
      [(fskitdXPCServer *)self _unloadResource:v12 usingIdentity:v18 options:v14 auditToken:&v22 replyHandler:v15];
    }

    else
    {
      v20 = fskit_std_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_10002751C();
      }

      v21 = fs_errorForPOSIXError();
      v15[2](v15, v21);
    }
  }

  else
  {
    v17 = fs_errorForPOSIXError();
    v15[2](v15, v17);
  }
}

- (void)_unloadResource:(id)a3 usingIdentity:(id)a4 options:(id)a5 auditToken:(id *)a6 replyHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v16 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  v17 = *&a6->var0[4];
  v28 = *a6->var0;
  v29 = v17;
  block[2] = sub_100023FDC;
  block[3] = &unk_1000615E0;
  v23 = v13;
  v24 = v12;
  v26 = v14;
  v27 = v15;
  v25 = self;
  v18 = v14;
  v19 = v15;
  v20 = v12;
  v21 = v13;
  dispatch_async(v16, block);
}

- (void)startFSCKWithDevice:(id)a3 volumes:(id)a4 replyHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = dispatch_get_global_queue(0, 0);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100024AC8;
  v15[3] = &unk_100061970;
  v16 = v8;
  v17 = v9;
  v18 = self;
  v19 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_sync(v11, v15);
}

- (void)doneFSCKWithTask:(id)a3 replyHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100024E84;
  block[3] = &unk_100061998;
  v13 = self;
  v14 = v7;
  v12 = v6;
  v9 = v7;
  v10 = v6;
  dispatch_sync(v8, block);
}

- (void)cleanupTaskAfterError:(id)a3 resource:(id)a4 bundleIdentifier:(id)a5 token:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_100016264;
  v24 = sub_100016274;
  v25 = 0;
  v12 = gExtensionManager;
  v13 = *&a6->var0[4];
  v19[0] = *a6->var0;
  v19[1] = v13;
  v14 = [FSAuditToken tokenWithToken:v19];
  v15 = [v9 fs_containerIdentifier];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000253A8;
  v18[3] = &unk_1000619C0;
  v18[4] = &v20;
  [v12 existingExtensionForBundle:v11 user:v14 instance:v15 replyHandler:v18];

  v16 = v21[5];
  if (v16)
  {
    [v16 terminate];
  }

  [gSettings removeReferencesToTask:v9];
  v17 = [gSettings resourceManager];
  [v17 removeResource:v10];

  _Block_object_dispose(&v20, 8);
}

@end