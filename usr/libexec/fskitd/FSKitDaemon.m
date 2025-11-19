@interface FSKitDaemon
+ (id)daemon;
- (BOOL)start;
- (id)_init;
@end

@implementation FSKitDaemon

- (id)_init
{
  v21.receiver = self;
  v21.super_class = FSKitDaemon;
  v2 = [(FSKitDaemon *)&v21 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_overcommit();
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_USER_INITIATED, 0);

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(v4, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);

    v6 = dispatch_queue_create("lifs_queue", v5);
    v7 = gLifsQueue;
    gLifsQueue = v6;

    v8 = objc_opt_new();
    v9 = gSettings;
    gSettings = v8;

    v10 = objc_opt_new();
    v11 = gExtensionManager;
    gExtensionManager = v10;

    v12 = objc_alloc_init(fskitdAgentManager);
    v13 = gAgentManager;
    gAgentManager = v12;

    v14 = objc_alloc_init(FSAuditToken);
    v15 = gOwnAuditToken;
    gOwnAuditToken = v14;

    gIsInternalBuild = os_variant_has_internal_content();
    verbose = 0;
    v16 = objc_alloc_init(mountTable);
    v17 = theMountTable;
    theMountTable = v16;

    v18 = [NSString stringWithFormat:@"/private/var/mobile/Library/%s", "LiveFiles"];
    v19 = gLiveFilesMountPath;
    gLiveFilesMountPath = v18;

    theFsidEncryptionSeed = arc4random();
  }

  return v2;
}

+ (id)daemon
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000087A4;
  block[3] = &unk_100060B68;
  block[4] = a1;
  if (qword_1000686D8 != -1)
  {
    dispatch_once(&qword_1000686D8, block);
  }

  v2 = qword_1000686E0;

  return v2;
}

- (BOOL)start
{
  name = 0;
  v3 = mach_port_allocate(mach_task_self_, 1u, &name);
  if (v3)
  {
    v4 = v3;
    v5 = livefs_std_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100008B7C(v4, v5);
    }

LABEL_16:
    v14 = 0;
    goto LABEL_17;
  }

  v6 = name;
  if (name - 1 >= 0xFFFFFFFE)
  {
    v5 = livefs_std_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100008C2C(&name);
    }

    goto LABEL_16;
  }

  v7 = [(FSKitDaemon *)self lifsQueue];
  v8 = dispatch_source_create(&_dispatch_source_type_mach_recv, v6, 0, v7);
  v9 = qword_1000686E8;
  qword_1000686E8 = v8;

  if (!qword_1000686E8)
  {
    v5 = livefs_std_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100008DC8();
    }

    goto LABEL_16;
  }

  dispatch_source_set_event_handler(qword_1000686E8, &stru_100060B88);
  dispatch_activate(qword_1000686E8);
  if (mach_port_insert_right(mach_task_self_, name, name, 0x14u))
  {
    v5 = livefs_std_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100008CD0();
    }

    goto LABEL_16;
  }

  v10 = +[LiveFSUserClient defaultClient];
  v11 = [v10 setMainMachPort:name forDomain:&stru_100062B08];
  v12 = gUserClient;
  gUserClient = v10;

  v13 = livefs_std_log();
  v5 = v13;
  if (v11)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_100008D4C();
    }

    goto LABEL_16;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Done setting up mach ports", v16, 2u);
  }

  v14 = 1;
LABEL_17:

  return v14;
}

@end