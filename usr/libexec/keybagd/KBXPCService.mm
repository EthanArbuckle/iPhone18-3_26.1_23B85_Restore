@interface KBXPCService
+ (id)sharedService;
- (BOOL)remoteProcessHasBooleanEntitlement:(id)a3;
- (BOOL)retrievePasscodeFromFileHandle:(id)a3 ofLength:(unint64_t)a4 withbaseaddress:(char *)a5;
- (id)remoteServiceName;
- (void)SeshatDebugWithDebugMask:(int)a3 withReply:(id)a4;
- (void)SeshatEnrollWithSecret:(id)a3 secretSize:(unint64_t)a4 secretIsACM:(BOOL)a5 withReply:(id)a6;
- (void)SeshatRecoverWithSecret:(id)a3 secretSize:(unint64_t)a4 secretIsACM:(BOOL)a5 withReply:(id)a6;
- (void)SeshatUnlockWithSecret:(id)a3 secretSize:(unint64_t)a4 secretIsACM:(BOOL)a5 withMemento:(BOOL)a6 verifyOnly:(BOOL)a7 withACMRef:(id)a8 forHandle:(int)a9 withReply:(id)a10;
- (void)backupUUIDForVolume:(id)a3 reply:(id)a4;
- (void)changeClassKeysGenerationWithSecret:(id)a3 secretSize:(unint64_t)a4 secretIsACM:(BOOL)a5 generationOption:(int)a6 reply:(id)a7;
- (void)changeSystemSecretWithEscrow:(id)a3 fromOldSecret:(id)a4 oldSize:(unint64_t)a5 toNewSecret:(id)a6 newSize:(unint64_t)a7 opaqueData:(id)a8 keepstate:(BOOL)a9 withACM:(BOOL)a10 reply:(id)a11;
- (void)changeSystemSecretfromOldSecret:(id)a3 oldSize:(unint64_t)a4 toNewSecret:(id)a5 newSize:(unint64_t)a6 opaqueData:(id)a7 withParams:(unsigned int)a8 reply:(id)a9;
- (void)createKeybagForUserSession:(id)a3 withSessionUID:(int)a4 WithSecret:(id)a5 secretSize:(unint64_t)a6 withGracePeriod:(int)a7 withOpaqeStuff:(id)a8 withReply:(id)a9;
- (void)createPersonaKeyForUserSession:(id)a3 forPath:(id)a4 withUID:(unsigned int)a5 WithSecret:(id)a6 secretSize:(unint64_t)a7 secretIsACM:(BOOL)a8 withReply:(id)a9;
- (void)createSyncBagForUserSession:(id)a3 withSessionUID:(int)a4 withReply:(id)a5;
- (void)disableBackupForVolume:(id)a3 reply:(id)a4;
- (void)enableBackupForVolume:(id)a3 withSecret:(id)a4 secretSize:(unint64_t)a5 secretIsACM:(BOOL)a6 reply:(id)a7;
- (void)forgottenPasscodeEventWithReply:(id)a3;
- (void)getBackupBlobreply:(id)a3;
- (void)getBackupkeyForVolume:(id)a3 andCryptoID:(unint64_t)a4 withReply:(id)a5;
- (void)getLockSateInfoforUser:(int)a3 WithReply:(id)a4;
- (void)getPasscodeBlobWithReply:(id)a3;
- (void)isKeyRollingInProgresswithreply:(id)a3;
- (void)loadKeybagForUserSession:(id)a3 withSessionID:(int)a4 withSecret:(id)a5 secretSize:(unint64_t)a6 shouldSetGracePeriod:(BOOL)a7 withGracePeriod:(int)a8 isInEarlyStar:(BOOL)a9 withReply:(id)a10;
- (void)loadSyncBagForUserSession:(id)a3 withSessionUID:(int)a4 withReply:(id)a5;
- (void)migrationWithReply:(id)a3;
- (void)passcodeUnlockFailedWithReply:(id)a3;
- (void)passcodeUnlockStartWithReply:(id)a3;
- (void)passcodeUnlockSuccessWithReply:(id)a3;
- (void)registerBackupBag:(id)a3 withSecret:(id)a4 secretSize:(unint64_t)a5 secretIsACM:(BOOL)a6 reply:(id)a7;
- (void)removePersonaKeyForUserSession:(id)a3 withUID:(unsigned int)a4 withVolumeUUIDString:(id)a5 withReply:(id)a6;
- (void)removeSyncBagForUserSession:(id)a3 withSessionUID:(int)a4 withReply:(id)a5;
- (void)setSpacedRepetitionMode:(unsigned int)a3 reply:(id)a4;
- (void)setSystemSecretBlob:(id)a3 reply:(id)a4;
- (void)setVolumeToPersona:(id)a3 withPersonaString:(id)a4 withReply:(id)a5;
- (void)startBackupSessionForVolume:(id)a3 withReply:(id)a4;
- (void)stashCommitwithUID:(unsigned int)a3 WithFlags:(unsigned int)a4 WithReply:(id)a5;
- (void)stashCreatewithSecret:(id)a3 secrestSize:(unint64_t)a4 withMode:(int)a5 withUID:(unsigned int)a6 WithFlags:(unsigned int)a7 reply:(id)a8;
- (void)stashDestroywithReply:(id)a3;
- (void)stashVerifywithUID:(unsigned int)a3 WithFlags:(unsigned int)a4 WithReply:(id)a5;
- (void)stopBackupSessionForVolume:(id)a3 withReply:(id)a4;
- (void)unloadKeybagForUserSession:(int)a3 withReply:(id)a4;
- (void)unloadSyncBagForUserSession:(id)a3 withSessionUID:(int)a4 withReply:(id)a5;
- (void)verifySyncBagForUserSession:(id)a3 withSessionUID:(int)a4 withReply:(id)a5;
@end

@implementation KBXPCService

+ (id)sharedService
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100005434;
  block[3] = &unk_100034D08;
  block[4] = a1;
  if (qword_10003D2F8 != -1)
  {
    dispatch_once(&qword_10003D2F8, block);
  }

  v2 = qword_10003D2F0;

  return v2;
}

- (BOOL)remoteProcessHasBooleanEntitlement:(id)a3
{
  v3 = a3;
  v4 = +[NSXPCConnection currentConnection];
  v5 = [v4 valueForEntitlement:v3];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 BOOLValue];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)remoteServiceName
{
  v2 = +[NSXPCConnection currentConnection];
  v3 = [v2 serviceName];

  return v3;
}

- (BOOL)retrievePasscodeFromFileHandle:(id)a3 ofLength:(unint64_t)a4 withbaseaddress:(char *)a5
{
  v7 = a3;
  v8 = v7;
  if (!a4)
  {
    goto LABEL_5;
  }

  if (read([v7 fileDescriptor], a5, a4) != a4)
  {
    sub_100011BE0("[KBXPCService retrievePasscodeFromFileHandle:ofLength:withbaseaddress:]", @"Failed to read the retrievePasscodeFromFileHandle", v9, v10, v11, v12, v13, v14, v17);
LABEL_5:
    v15 = 1;
    goto LABEL_6;
  }

  v15 = 0;
LABEL_6:

  return v15;
}

- (void)changeSystemSecretfromOldSecret:(id)a3 oldSize:(unint64_t)a4 toNewSecret:(id)a5 newSize:(unint64_t)a6 opaqueData:(id)a7 withParams:(unsigned int)a8 reply:(id)a9
{
  v15 = a3;
  v16 = a5;
  v17 = a7;
  v18 = a9;
  v75 = 0;
  v76 = &v75;
  v77 = 0x3032000000;
  v78 = sub_100005A78;
  v79 = sub_100005A88;
  v80 = 0;
  address = 0;
  v72[0] = 0;
  v72[1] = v72;
  v72[2] = 0x2020000000;
  v73 = -1;
  if ([(KBXPCService *)self remoteProcessHasBooleanEntitlement:@"com.apple.keystore.device"])
  {
    if (vm_page_size < a4 || vm_page_size < a6)
    {
      sub_100011BE0("[KBXPCService changeSystemSecretfromOldSecret:oldSize:toNewSecret:newSize:opaqueData:withParams:reply:]", @"Long Secret, can't handle ...", vm_page_size, v19, v20, v21, v22, v23, v61);
      v25 = [NSError errorWithDomain:NSPOSIXErrorDomain code:7 userInfo:0];
      goto LABEL_8;
    }

    if (vm_allocate(mach_task_self_, &address, vm_page_size, -268435455))
    {
      sub_100011BE0("[KBXPCService changeSystemSecretfromOldSecret:oldSize:toNewSecret:newSize:opaqueData:withParams:reply:]", @"FAILED to allocate VM", v27, v28, v29, v30, v31, v32, v61);
      v33 = [NSError errorWithDomain:NSPOSIXErrorDomain code:12 userInfo:0];
      v34 = v76[5];
      v76[5] = v33;

      address = 0;
LABEL_24:
      v18[2](v18, v76[5]);
      goto LABEL_25;
    }

    if (a4)
    {
      v62 = address;
      if ([(KBXPCService *)self retrievePasscodeFromFileHandle:v15 ofLength:a4 withbaseaddress:?])
      {
        sub_100011BE0("[KBXPCService changeSystemSecretfromOldSecret:oldSize:toNewSecret:newSize:opaqueData:withParams:reply:]", @"Failed to retrieve oldpasscode", v35, v36, v37, v38, v39, v40, v61);
        v41 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
        v42 = v76[5];
        v76[5] = v41;

        v43 = mach_task_self_;
        v44 = address;
        v45 = vm_page_size;
        if (vm_page_size >= a4)
        {
          v46 = a4;
        }

        else
        {
          v46 = vm_page_size;
        }

LABEL_23:
        memset_s(address, v46, 0, v46);
        vm_deallocate(v43, v44, v45);
        goto LABEL_24;
      }
    }

    else
    {
      v62 = 0;
    }

    if (a6)
    {
      v47 = address + 1024;
      if ([(KBXPCService *)self retrievePasscodeFromFileHandle:v16 ofLength:a6 withbaseaddress:address + 1024])
      {
        sub_100011BE0("[KBXPCService changeSystemSecretfromOldSecret:oldSize:toNewSecret:newSize:opaqueData:withParams:reply:]", @"Failed to retrieve newpasscode", v48, v49, v50, v51, v52, v53, v61);
        v54 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
        v55 = v76[5];
        v76[5] = v54;

        v43 = mach_task_self_;
        v44 = address;
        v45 = vm_page_size;
        if (vm_page_size >= a6 + 1024)
        {
          v46 = a6 + 1024;
        }

        else
        {
          v46 = vm_page_size;
        }

        goto LABEL_23;
      }
    }

    else
    {
      v47 = 0;
    }

    v56 = qword_10003D2A0;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100005A90;
    block[3] = &unk_100034D30;
    v67 = v62;
    v68 = a4;
    v69 = v47;
    v70 = a6;
    v71 = a8;
    v64 = v17;
    v65 = &v75;
    v66 = v72;
    dispatch_sync(v56, block);
    v57 = mach_task_self_;
    v58 = address;
    v59 = vm_page_size;
    if (vm_page_size >= a6 + 1024)
    {
      v60 = a6 + 1024;
    }

    else
    {
      v60 = vm_page_size;
    }

    memset_s(address, v60, 0, v60);
    vm_deallocate(v57, v58, v59);
    v18[2](v18, v76[5]);

    goto LABEL_25;
  }

  v25 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
LABEL_8:
  v26 = v76[5];
  v76[5] = v25;

  if (v18)
  {
    goto LABEL_24;
  }

LABEL_25:
  _Block_object_dispose(v72, 8);
  _Block_object_dispose(&v75, 8);
}

- (void)setSpacedRepetitionMode:(unsigned int)a3 reply:(id)a4
{
  v15 = a4;
  if ([(KBXPCService *)self remoteProcessHasBooleanEntitlement:@"com.apple.keystore.device"])
  {
    sub_100011BE0("[KBXPCService setSpacedRepetitionMode:reply:]", @"setting spaced repetition verification mode to %d", v6, v7, v8, v9, v10, v11, a3);
    dword_10003D280 = a3;
    v12 = NSPOSIXErrorDomain;
    v13 = 0;
  }

  else
  {
    v12 = NSPOSIXErrorDomain;
    v13 = 1;
  }

  v14 = [NSError errorWithDomain:v12 code:v13 userInfo:0];
  if (v15)
  {
    v15[2](v15, v14);
  }
}

- (void)getPasscodeBlobWithReply:(id)a3
{
  v6 = a3;
  if ([(KBXPCService *)self remoteProcessHasBooleanEntitlement:@"com.apple.keystore.device"])
  {
    if (sub_100004190())
    {
      v4 = 0;
    }

    else
    {
      v4 = sub_1000130B4(0);
    }

    v6[2](v6, v4, 0);

    v5 = 0;
  }

  else
  {
    v5 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
    if (v6)
    {
      (v6[2])();
    }
  }
}

- (void)changeSystemSecretWithEscrow:(id)a3 fromOldSecret:(id)a4 oldSize:(unint64_t)a5 toNewSecret:(id)a6 newSize:(unint64_t)a7 opaqueData:(id)a8 keepstate:(BOOL)a9 withACM:(BOOL)a10 reply:(id)a11
{
  v17 = a3;
  v18 = a4;
  v19 = a6;
  v20 = a8;
  v21 = a11;
  v81 = 0;
  v82 = &v81;
  v83 = 0x3032000000;
  v84 = sub_100005A78;
  v85 = sub_100005A88;
  v86 = 0;
  address = 0;
  v78[0] = 0;
  v78[1] = v78;
  v78[2] = 0x2020000000;
  v79 = -1;
  if ([(KBXPCService *)self remoteProcessHasBooleanEntitlement:@"com.apple.keystore.device"])
  {
    if (vm_page_size < a5 || vm_page_size < a7)
    {
      sub_100011BE0("[KBXPCService changeSystemSecretWithEscrow:fromOldSecret:oldSize:toNewSecret:newSize:opaqueData:keepstate:withACM:reply:]", @"Long Secret, can't handle ...", vm_page_size, v22, v23, v24, v25, v26, v64);
      v28 = [NSError errorWithDomain:NSPOSIXErrorDomain code:7 userInfo:0];
      goto LABEL_8;
    }

    if (vm_allocate(mach_task_self_, &address, vm_page_size, -268435455))
    {
      sub_100011BE0("[KBXPCService changeSystemSecretWithEscrow:fromOldSecret:oldSize:toNewSecret:newSize:opaqueData:keepstate:withACM:reply:]", @"FAILED to allocate VM", v30, v31, v32, v33, v34, v35, v64);
      v36 = [NSError errorWithDomain:NSPOSIXErrorDomain code:12 userInfo:0];
      v37 = v82[5];
      v82[5] = v36;

      address = 0;
LABEL_24:
      v21[2](v21, v82[5]);
      goto LABEL_25;
    }

    if (a5)
    {
      v66 = address;
      if ([(KBXPCService *)self retrievePasscodeFromFileHandle:v18 ofLength:a5 withbaseaddress:?])
      {
        sub_100011BE0("[KBXPCService changeSystemSecretWithEscrow:fromOldSecret:oldSize:toNewSecret:newSize:opaqueData:keepstate:withACM:reply:]", @"Failed to retrieve oldpasscode", v38, v39, v40, v41, v42, v43, v64);
        v44 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
        v45 = v82[5];
        v82[5] = v44;

        v46 = mach_task_self_;
        v47 = address;
        v48 = vm_page_size;
        if (vm_page_size >= a5)
        {
          v49 = a5;
        }

        else
        {
          v49 = vm_page_size;
        }

LABEL_23:
        memset_s(address, v49, 0, v49);
        vm_deallocate(v46, v47, v48);
        goto LABEL_24;
      }
    }

    else
    {
      v66 = 0;
    }

    if (a7)
    {
      v50 = address + 1024;
      if ([(KBXPCService *)self retrievePasscodeFromFileHandle:v19 ofLength:a7 withbaseaddress:address + 1024])
      {
        sub_100011BE0("[KBXPCService changeSystemSecretWithEscrow:fromOldSecret:oldSize:toNewSecret:newSize:opaqueData:keepstate:withACM:reply:]", @"Failed to retrieve newpasscode", v51, v52, v53, v54, v55, v56, v64);
        v57 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
        v58 = v82[5];
        v82[5] = v57;

        v47 = address;
        v48 = vm_page_size;
        v59 = a7 + 1024;
        v46 = mach_task_self_;
        if (vm_page_size >= v59)
        {
          v49 = v59;
        }

        else
        {
          v49 = vm_page_size;
        }

        goto LABEL_23;
      }
    }

    else
    {
      v50 = 0;
    }

    queue = qword_10003D2A0;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100006378;
    block[3] = &unk_100034D58;
    v72 = v66;
    v73 = a5;
    v74 = v50;
    v75 = a7;
    v68 = v20;
    v76 = a10;
    v77 = a9;
    v69 = v17;
    v70 = &v81;
    v71 = v78;
    dispatch_sync(queue, block);
    v60 = mach_task_self_;
    v61 = address;
    v62 = vm_page_size;
    if (vm_page_size >= a7 + 1024)
    {
      v63 = a7 + 1024;
    }

    else
    {
      v63 = vm_page_size;
    }

    memset_s(address, v63, 0, v63);
    vm_deallocate(v60, v61, v62);
    v21[2](v21, v82[5]);

    goto LABEL_25;
  }

  v28 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
LABEL_8:
  v29 = v82[5];
  v82[5] = v28;

  if (v21)
  {
    goto LABEL_24;
  }

LABEL_25:
  _Block_object_dispose(v78, 8);
  _Block_object_dispose(&v81, 8);
}

- (void)changeClassKeysGenerationWithSecret:(id)a3 secretSize:(unint64_t)a4 secretIsACM:(BOOL)a5 generationOption:(int)a6 reply:(id)a7
{
  v12 = a3;
  v13 = a7;
  address = 0;
  if (![(KBXPCService *)self remoteProcessHasBooleanEntitlement:@"com.apple.keystore.device"])
  {
    v19 = NSPOSIXErrorDomain;
    v20 = 1;
LABEL_5:
    v21 = [NSError errorWithDomain:v19 code:v20 userInfo:0];
    if (!v13)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  if (vm_page_size < a4)
  {
    sub_100011BE0("[KBXPCService changeClassKeysGenerationWithSecret:secretSize:secretIsACM:generationOption:reply:]", @"Long Secret, can't handle ...", vm_page_size, v14, v15, v16, v17, v18, v42);
    v19 = NSPOSIXErrorDomain;
    v20 = 7;
    goto LABEL_5;
  }

  if (!vm_allocate(mach_task_self_, &address, vm_page_size, -268435455))
  {
    if (a4)
    {
      v28 = address;
      if ([(KBXPCService *)self retrievePasscodeFromFileHandle:v12 ofLength:a4 withbaseaddress:address])
      {
        sub_100011BE0("[KBXPCService changeClassKeysGenerationWithSecret:secretSize:secretIsACM:generationOption:reply:]", @"Failed to retrieve oldpasscode", v29, v30, v31, v32, v33, v34, v42);
        v35 = NSPOSIXErrorDomain;
        v36 = 22;
        goto LABEL_15;
      }
    }

    else
    {
      v28 = 0;
    }

    v37 = sub_100014A4C(v28, a4, a5, a6);
    if (!v37)
    {
      v21 = 0;
      goto LABEL_17;
    }

    v35 = NSPOSIXErrorDomain;
    v36 = v37;
LABEL_15:
    v21 = [NSError errorWithDomain:v35 code:v36 userInfo:0];
LABEL_17:
    v38 = mach_task_self_;
    v39 = address;
    v40 = vm_page_size;
    if (vm_page_size >= a4)
    {
      v41 = a4;
    }

    else
    {
      v41 = vm_page_size;
    }

    memset_s(address, v41, 0, v41);
    vm_deallocate(v38, v39, v40);
    goto LABEL_21;
  }

  sub_100011BE0("[KBXPCService changeClassKeysGenerationWithSecret:secretSize:secretIsACM:generationOption:reply:]", @"FAILED to allocate VM", v22, v23, v24, v25, v26, v27, v42);
  v21 = [NSError errorWithDomain:NSPOSIXErrorDomain code:12 userInfo:0];
  address = 0;
LABEL_21:
  v13[2](v13, v21);
LABEL_22:
}

- (void)setSystemSecretBlob:(id)a3 reply:(id)a4
{
  v9 = a3;
  v6 = a4;
  if ([(KBXPCService *)self remoteProcessHasBooleanEntitlement:@"com.apple.keystore.device"])
  {
    v7 = sub_10001322C(v9);
    if (v7)
    {
      v8 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v7 userInfo:0];
    }

    else
    {
      v8 = 0;
    }

    goto LABEL_7;
  }

  v8 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
  if (v6)
  {
LABEL_7:
    v6[2](v6, v8);
  }
}

- (void)registerBackupBag:(id)a3 withSecret:(id)a4 secretSize:(unint64_t)a5 secretIsACM:(BOOL)a6 reply:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a7;
  address = 0;
  if (![(KBXPCService *)self remoteProcessHasBooleanEntitlement:@"com.apple.keystore.devicebackup"])
  {
    v20 = NSPOSIXErrorDomain;
    v21 = 1;
LABEL_5:
    v22 = [NSError errorWithDomain:v20 code:v21 userInfo:0];
    if (!v14)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  if (vm_page_size < a5)
  {
    sub_100011BE0("[KBXPCService registerBackupBag:withSecret:secretSize:secretIsACM:reply:]", @"Long Secret, can't handle ...", vm_page_size, v15, v16, v17, v18, v19, v43);
    v20 = NSPOSIXErrorDomain;
    v21 = 7;
    goto LABEL_5;
  }

  if (!vm_allocate(mach_task_self_, &address, vm_page_size, -268435455))
  {
    if (a5)
    {
      v29 = address;
      if ([(KBXPCService *)self retrievePasscodeFromFileHandle:v13 ofLength:a5 withbaseaddress:address])
      {
        sub_100011BE0("[KBXPCService registerBackupBag:withSecret:secretSize:secretIsACM:reply:]", @"Failed to retrieve oldpasscode", v30, v31, v32, v33, v34, v35, v43);
        v36 = NSPOSIXErrorDomain;
        v37 = 22;
        goto LABEL_15;
      }
    }

    else
    {
      v29 = 0;
    }

    v38 = sub_100013350(v12, v29, a5, a6);
    if (!v38)
    {
      v22 = 0;
      goto LABEL_17;
    }

    v36 = NSPOSIXErrorDomain;
    v37 = v38;
LABEL_15:
    v22 = [NSError errorWithDomain:v36 code:v37 userInfo:0];
LABEL_17:
    v39 = mach_task_self_;
    v40 = address;
    v41 = vm_page_size;
    if (vm_page_size >= a5)
    {
      v42 = a5;
    }

    else
    {
      v42 = vm_page_size;
    }

    memset_s(address, v42, 0, v42);
    vm_deallocate(v39, v40, v41);
    goto LABEL_21;
  }

  sub_100011BE0("[KBXPCService registerBackupBag:withSecret:secretSize:secretIsACM:reply:]", @"FAILED to allocate VM", v23, v24, v25, v26, v27, v28, v43);
  v22 = [NSError errorWithDomain:NSPOSIXErrorDomain code:12 userInfo:0];
  address = 0;
LABEL_21:
  v14[2](v14, v22);
LABEL_22:
}

- (void)getBackupBlobreply:(id)a3
{
  v6 = a3;
  if ([(KBXPCService *)self remoteProcessHasBooleanEntitlement:@"com.apple.keystore.devicebackup"])
  {
    v4 = sub_1000130B4(1);
    v6[2](v6, v4, 0);

    v5 = 0;
  }

  else
  {
    v5 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
    if (v6)
    {
      (v6[2])();
    }
  }
}

- (void)getBackupkeyForVolume:(id)a3 andCryptoID:(unint64_t)a4 withReply:(id)a5
{
  v8 = a3;
  v9 = a5;
  if ([(KBXPCService *)self remoteProcessHasBooleanEntitlement:@"com.apple.keystore.devicebackup"])
  {
    v12 = 0;
    v10 = sub_1000200EC(v8, a4, &v12);
    if (v10)
    {
      v11 = 0;
    }

    else
    {
      v11 = v12;
    }

    v9[2](v9, v10, v11);
  }

  else
  {
    v11 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
    if (v9)
    {
      v9[2](v9, 0, v11);
    }
  }
}

- (void)startBackupSessionForVolume:(id)a3 withReply:(id)a4
{
  v9 = a3;
  v6 = a4;
  if ([(KBXPCService *)self remoteProcessHasBooleanEntitlement:@"com.apple.keystore.devicebackup"])
  {
    v7 = sub_100013634(v9, 1);
    if (v7)
    {
      v8 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v7 userInfo:0];
    }

    else
    {
      v8 = 0;
    }

    goto LABEL_7;
  }

  v8 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
  if (v6)
  {
LABEL_7:
    v6[2](v6, v8);
  }
}

- (void)stopBackupSessionForVolume:(id)a3 withReply:(id)a4
{
  v9 = a3;
  v6 = a4;
  if ([(KBXPCService *)self remoteProcessHasBooleanEntitlement:@"com.apple.keystore.devicebackup"])
  {
    v7 = sub_100013634(v9, 0);
    if (v7)
    {
      v8 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v7 userInfo:0];
    }

    else
    {
      v8 = 0;
    }

    goto LABEL_7;
  }

  v8 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
  if (v6)
  {
LABEL_7:
    v6[2](v6, v8);
  }
}

- (void)enableBackupForVolume:(id)a3 withSecret:(id)a4 secretSize:(unint64_t)a5 secretIsACM:(BOOL)a6 reply:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a7;
  v46 = 0;
  address = 0;
  if (![(KBXPCService *)self remoteProcessHasBooleanEntitlement:@"com.apple.keystore.devicebackup"])
  {
    v20 = NSPOSIXErrorDomain;
    v21 = 1;
LABEL_5:
    v22 = [NSError errorWithDomain:v20 code:v21 userInfo:0];
    if (!v14)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (vm_page_size < a5)
  {
    sub_100011BE0("[KBXPCService enableBackupForVolume:withSecret:secretSize:secretIsACM:reply:]", @"Long Secret, can't handle ...", vm_page_size, v15, v16, v17, v18, v19, v46);
    v20 = NSPOSIXErrorDomain;
    v21 = 7;
    goto LABEL_5;
  }

  if (vm_allocate(mach_task_self_, &address, vm_page_size, -268435455))
  {
    sub_100011BE0("[KBXPCService enableBackupForVolume:withSecret:secretSize:secretIsACM:reply:]", @"FAILED to allocate VM", v23, v24, v25, v26, v27, v28, v46);
    v22 = [NSError errorWithDomain:NSPOSIXErrorDomain code:12 userInfo:0];
    address = 0;
LABEL_9:
    v14[2](v14, 0, v22);
    goto LABEL_10;
  }

  if (a5)
  {
    v29 = address;
    if ([(KBXPCService *)self retrievePasscodeFromFileHandle:v13 ofLength:a5 withbaseaddress:address])
    {
      sub_100011BE0("[KBXPCService enableBackupForVolume:withSecret:secretSize:secretIsACM:reply:]", @"Failed to retrieve oldpasscode", v30, v31, v32, v33, v34, v35, v46);
      v22 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      v36 = mach_task_self_;
      v37 = address;
      v38 = vm_page_size;
      if (vm_page_size >= a5)
      {
        v39 = a5;
      }

      else
      {
        v39 = vm_page_size;
      }

      memset_s(address, v39, 0, v39);
      vm_deallocate(v36, v37, v38);
      goto LABEL_9;
    }
  }

  else
  {
    v29 = 0;
  }

  v40 = sub_1000138CC(v12, v29, a5, a6, &v46);
  if (v40)
  {
    v22 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v40 userInfo:0];
  }

  else
  {
    v22 = 0;
  }

  v41 = mach_task_self_;
  v42 = address;
  v43 = vm_page_size;
  if (vm_page_size >= a5)
  {
    v44 = a5;
  }

  else
  {
    v44 = vm_page_size;
  }

  memset_s(address, v44, 0, v44);
  vm_deallocate(v41, v42, v43);
  v45 = v46;
  (v14)[2](v14, v46, v22);

LABEL_10:
}

- (void)disableBackupForVolume:(id)a3 reply:(id)a4
{
  v9 = a3;
  v6 = a4;
  if ([(KBXPCService *)self remoteProcessHasBooleanEntitlement:@"com.apple.keystore.devicebackup"])
  {
    v7 = sub_10002022C(v9);
    if (v7)
    {
      v8 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v7 userInfo:0];
    }

    else
    {
      v8 = 0;
    }

    goto LABEL_7;
  }

  v8 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
  if (v6)
  {
LABEL_7:
    v6[2](v6, v8);
  }
}

- (void)backupUUIDForVolume:(id)a3 reply:(id)a4
{
  v4 = a4;
  v5 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
  v4[2](v4, 0, v5);
}

- (void)stashCreatewithSecret:(id)a3 secrestSize:(unint64_t)a4 withMode:(int)a5 withUID:(unsigned int)a6 WithFlags:(unsigned int)a7 reply:(id)a8
{
  v9 = a7;
  v14 = a3;
  v15 = a8;
  address = 0;
  if (![(KBXPCService *)self remoteProcessHasBooleanEntitlement:@"com.apple.keystore.stash.access"])
  {
    v21 = NSPOSIXErrorDomain;
    v22 = 1;
LABEL_5:
    v23 = [NSError errorWithDomain:v21 code:v22 userInfo:0];
    if (!v15)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  if (vm_page_size < a4)
  {
    sub_100011BE0("[KBXPCService stashCreatewithSecret:secrestSize:withMode:withUID:WithFlags:reply:]", @"Long Secret, can't handle ...", vm_page_size, v16, v17, v18, v19, v20, v44);
    v21 = NSPOSIXErrorDomain;
    v22 = 7;
    goto LABEL_5;
  }

  if (!vm_allocate(mach_task_self_, &address, vm_page_size, -268435455))
  {
    if (a4)
    {
      v30 = address;
      if ([(KBXPCService *)self retrievePasscodeFromFileHandle:v14 ofLength:a4 withbaseaddress:address])
      {
        sub_100011BE0("[KBXPCService stashCreatewithSecret:secrestSize:withMode:withUID:WithFlags:reply:]", @"Failed to retrieve Passcode", v31, v32, v33, v34, v35, v36, v44);
        v37 = NSPOSIXErrorDomain;
        v38 = 22;
        goto LABEL_15;
      }
    }

    else
    {
      v30 = 0;
    }

    v39 = sub_100013C8C(v30, a4, a5, v9, a6);
    if (!v39)
    {
      v23 = 0;
      goto LABEL_17;
    }

    v37 = NSPOSIXErrorDomain;
    v38 = v39;
LABEL_15:
    v23 = [NSError errorWithDomain:v37 code:v38 userInfo:0];
LABEL_17:
    v40 = mach_task_self_;
    v41 = address;
    v42 = vm_page_size;
    if (vm_page_size >= a4)
    {
      v43 = a4;
    }

    else
    {
      v43 = vm_page_size;
    }

    memset_s(address, v43, 0, v43);
    vm_deallocate(v40, v41, v42);
    goto LABEL_21;
  }

  sub_100011BE0("[KBXPCService stashCreatewithSecret:secrestSize:withMode:withUID:WithFlags:reply:]", @"FAILED to allocate VM", v24, v25, v26, v27, v28, v29, v44);
  v23 = [NSError errorWithDomain:NSPOSIXErrorDomain code:12 userInfo:0];
  address = 0;
LABEL_21:
  v15[2](v15, v23);
LABEL_22:
}

- (void)stashCommitwithUID:(unsigned int)a3 WithFlags:(unsigned int)a4 WithReply:(id)a5
{
  v5 = a4;
  v11 = a5;
  if ([(KBXPCService *)self remoteProcessHasBooleanEntitlement:@"com.apple.keystore.stash.access"])
  {
    v8 = sub_100014740(a3, v5);
    if (v8)
    {
      v9 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v8 userInfo:0];
    }

    else
    {
      v9 = 0;
    }

    v10 = v11;
    goto LABEL_8;
  }

  v9 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
  v10 = v11;
  if (v11)
  {
LABEL_8:
    v10[2](v10, v9);
  }
}

- (void)stashVerifywithUID:(unsigned int)a3 WithFlags:(unsigned int)a4 WithReply:(id)a5
{
  v5 = a4;
  v8 = a5;
  v11 = 0;
  if ([(KBXPCService *)self remoteProcessHasBooleanEntitlement:@"com.apple.keystore.stash.access"])
  {
    v9 = sub_100013F60(a3, v5, &v11);
    if (v9)
    {
      v10 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v9 userInfo:0];
    }

    else
    {
      v10 = 0;
    }

    v8[2](v8, v11, v10);
  }

  else
  {
    v10 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
    if (v8)
    {
      v8[2](v8, 0, v10);
    }
  }
}

- (void)stashDestroywithReply:(id)a3
{
  v7 = a3;
  if ([(KBXPCService *)self remoteProcessHasBooleanEntitlement:@"com.apple.keystore.stash.access"])
  {
    v4 = sub_10001488C();
    if (v4)
    {
      v5 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v4 userInfo:0];
    }

    else
    {
      v5 = 0;
    }

    v6 = v7;
    goto LABEL_8;
  }

  v5 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
  v6 = v7;
  if (v7)
  {
LABEL_8:
    v6[2](v6, v5);
  }
}

- (void)isKeyRollingInProgresswithreply:(id)a3
{
  v3 = a3;
  v7 = 0;
  v4 = sub_100014D70(&v7);
  if (v4)
  {
    v5 = v4;
    v6 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
    v7 = v5;
  }

  else
  {
    v6 = 0;
    v5 = v7;
  }

  v3[2](v3, v5, v6);
}

- (void)migrationWithReply:(id)a3
{
  v5 = a3;
  v3 = aks_migrate_fs();
  if (v3)
  {
    v4 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v3 userInfo:0];
  }

  else
  {
    v4 = 0;
  }

  v5[2](v5, v4);
}

- (void)forgottenPasscodeEventWithReply:(id)a3
{
  (*(a3 + 2))(a3, 0);

  sub_100014FFC();
}

- (void)getLockSateInfoforUser:(int)a3 WithReply:(id)a4
{
  v7 = a4;
  v5 = sub_100014F04(a3);
  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
  }

  v7[2](v7, v5, v6);
}

- (void)passcodeUnlockStartWithReply:(id)a3
{
  v6 = a3;
  v5 = sub_100011BDC(v6, v3, v4);
  sub_10000B8B8(v5);
  v6[2](v6, 0);
}

- (void)passcodeUnlockSuccessWithReply:(id)a3
{
  v6 = a3;
  v5 = sub_100011BDC(v6, v3, v4);
  sub_10000B8EC(v5);
  v6[2](v6, 0);
}

- (void)passcodeUnlockFailedWithReply:(id)a3
{
  v6 = a3;
  v5 = sub_100011BDC(v6, v3, v4);
  sub_10000B920(v5);
  v6[2](v6, 0);
}

- (void)SeshatEnrollWithSecret:(id)a3 secretSize:(unint64_t)a4 secretIsACM:(BOOL)a5 withReply:(id)a6
{
  v7 = a5;
  v10 = a3;
  v16 = a6;
  address = 0;
  if (vm_page_size < a4)
  {
    sub_100011BE0("[KBXPCService SeshatEnrollWithSecret:secretSize:secretIsACM:withReply:]", @"Long Secret, can't handle ...", vm_page_size, v11, v12, v13, v14, v15, v38);
    v17 = [NSError errorWithDomain:NSPOSIXErrorDomain code:7 userInfo:0];
    goto LABEL_17;
  }

  if (vm_allocate(mach_task_self_, &address, vm_page_size, -268435455))
  {
    sub_100011BE0("[KBXPCService SeshatEnrollWithSecret:secretSize:secretIsACM:withReply:]", @"FAILED to allocate VM", v18, v19, v20, v21, v22, v23, v38);
    v17 = [NSError errorWithDomain:NSPOSIXErrorDomain code:12 userInfo:0];
    address = 0;
    goto LABEL_17;
  }

  if (a4)
  {
    v24 = address;
    if ([(KBXPCService *)self retrievePasscodeFromFileHandle:v10 ofLength:a4 withbaseaddress:address])
    {
      sub_100011BE0("[KBXPCService SeshatEnrollWithSecret:secretSize:secretIsACM:withReply:]", @"Failed to retrieve oldpasscode", v25, v26, v27, v28, v29, v30, v38);
      v31 = NSPOSIXErrorDomain;
      v32 = 22;
      goto LABEL_11;
    }
  }

  else
  {
    v24 = 0;
  }

  v33 = sub_1000204E8(v24, a4, v7);
  if (!v33)
  {
    v17 = 0;
    goto LABEL_13;
  }

  v31 = NSPOSIXErrorDomain;
  v32 = v33;
LABEL_11:
  v17 = [NSError errorWithDomain:v31 code:v32 userInfo:0];
LABEL_13:
  v34 = mach_task_self_;
  v35 = address;
  v36 = vm_page_size;
  if (vm_page_size >= a4)
  {
    v37 = a4;
  }

  else
  {
    v37 = vm_page_size;
  }

  memset_s(address, v37, 0, v37);
  vm_deallocate(v34, v35, v36);
LABEL_17:
  v16[2](v16, v17);
}

- (void)SeshatUnlockWithSecret:(id)a3 secretSize:(unint64_t)a4 secretIsACM:(BOOL)a5 withMemento:(BOOL)a6 verifyOnly:(BOOL)a7 withACMRef:(id)a8 forHandle:(int)a9 withReply:(id)a10
{
  v13 = a5;
  v16 = a3;
  v17 = a8;
  v23 = a10;
  address = 0;
  if (vm_page_size < a4)
  {
    sub_100011BE0("[KBXPCService SeshatUnlockWithSecret:secretSize:secretIsACM:withMemento:verifyOnly:withACMRef:forHandle:withReply:]", @"Long Secret, can't handle ...", vm_page_size, v18, v19, v20, v21, v22, v46);
    v24 = [NSError errorWithDomain:NSPOSIXErrorDomain code:7 userInfo:0];
LABEL_5:
    v23[2](v23, 0, v24);
    goto LABEL_6;
  }

  if (vm_allocate(mach_task_self_, &address, vm_page_size, -268435455))
  {
    sub_100011BE0("[KBXPCService SeshatUnlockWithSecret:secretSize:secretIsACM:withMemento:verifyOnly:withACMRef:forHandle:withReply:]", @"FAILED to allocate VM", v25, v26, v27, v28, v29, v30, v46);
    v24 = [NSError errorWithDomain:NSPOSIXErrorDomain code:12 userInfo:0];
    address = 0;
    goto LABEL_5;
  }

  if (a4)
  {
    v31 = address;
    if ([(KBXPCService *)self retrievePasscodeFromFileHandle:v16 ofLength:a4 withbaseaddress:address])
    {
      sub_100011BE0("[KBXPCService SeshatUnlockWithSecret:secretSize:secretIsACM:withMemento:verifyOnly:withACMRef:forHandle:withReply:]", @"Failed to retrieve oldpasscode", v32, v33, v34, v35, v36, v37, v46);
      v24 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      v38 = mach_task_self_;
      v39 = address;
      v40 = vm_page_size;
      if (vm_page_size >= a4)
      {
        v41 = a4;
      }

      else
      {
        v41 = vm_page_size;
      }

      memset_s(address, v41, 0, v41);
      vm_deallocate(v38, v39, v40);
      goto LABEL_5;
    }
  }

  else
  {
    v31 = 0;
  }

  v47[0] = _NSConcreteStackBlock;
  v47[1] = 3221225472;
  v47[2] = sub_100008038;
  v47[3] = &unk_100034D80;
  v48 = os_transaction_create();
  v49 = v23;
  v24 = v48;
  sub_100015EE4(a9, v31, a4, v13, a6, a7, v17, v47);
  v42 = mach_task_self_;
  v43 = address;
  v44 = vm_page_size;
  if (vm_page_size >= a4)
  {
    v45 = a4;
  }

  else
  {
    v45 = vm_page_size;
  }

  memset_s(address, v45, 0, v45);
  vm_deallocate(v42, v43, v44);

LABEL_6:
}

- (void)SeshatRecoverWithSecret:(id)a3 secretSize:(unint64_t)a4 secretIsACM:(BOOL)a5 withReply:(id)a6
{
  v10 = a3;
  v16 = a6;
  address = 0;
  if (vm_page_size < a4)
  {
    sub_100011BE0("[KBXPCService SeshatRecoverWithSecret:secretSize:secretIsACM:withReply:]", @"Long Secret, can't handle ...", vm_page_size, v11, v12, v13, v14, v15, v41);
    v17 = [NSError errorWithDomain:NSPOSIXErrorDomain code:7 userInfo:0];
LABEL_5:
    v16[2](v16, 0, v17);

    goto LABEL_6;
  }

  if (vm_allocate(mach_task_self_, &address, vm_page_size, -268435455))
  {
    sub_100011BE0("[KBXPCService SeshatRecoverWithSecret:secretSize:secretIsACM:withReply:]", @"FAILED to allocate VM", v18, v19, v20, v21, v22, v23, v41);
    v17 = [NSError errorWithDomain:NSPOSIXErrorDomain code:12 userInfo:0];
    address = 0;
    goto LABEL_5;
  }

  if (a4)
  {
    v24 = address;
    if ([(KBXPCService *)self retrievePasscodeFromFileHandle:v10 ofLength:a4 withbaseaddress:address])
    {
      sub_100011BE0("[KBXPCService SeshatRecoverWithSecret:secretSize:secretIsACM:withReply:]", @"Failed to retrieve oldpasscode", v25, v26, v27, v28, v29, v30, v41);
      v31 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      v32 = mach_task_self_;
      v33 = address;
      v34 = vm_page_size;
      if (vm_page_size >= a4)
      {
        v35 = a4;
      }

      else
      {
        v35 = vm_page_size;
      }

      memset_s(address, v35, 0, v35);
      vm_deallocate(v32, v33, v34);
      v16[2](v16, 0, v31);

      goto LABEL_6;
    }
  }

  else
  {
    v24 = 0;
  }

  v36 = sub_100017080(v24, a4, a5);
  v37 = mach_task_self_;
  v38 = address;
  v39 = vm_page_size;
  if (vm_page_size >= a4)
  {
    v40 = a4;
  }

  else
  {
    v40 = vm_page_size;
  }

  memset_s(address, v40, 0, v40);
  vm_deallocate(v37, v38, v39);
  v16[2](v16, v36, 0);
LABEL_6:
}

- (void)SeshatDebugWithDebugMask:(int)a3 withReply:(id)a4
{
  v6 = a4;
  if (sub_100017718(a3))
  {
    v5 = [NSError errorWithDomain:NSPOSIXErrorDomain code:12 userInfo:0];
  }

  else
  {
    v5 = 0;
  }

  v6[2](v6, v5);
}

- (void)createKeybagForUserSession:(id)a3 withSessionUID:(int)a4 WithSecret:(id)a5 secretSize:(unint64_t)a6 withGracePeriod:(int)a7 withOpaqeStuff:(id)a8 withReply:(id)a9
{
  v15 = a3;
  v16 = a5;
  v17 = a8;
  v18 = a9;
  v60 = 0;
  v61 = &v60;
  v62 = 0x3032000000;
  v63 = sub_100005A78;
  v64 = sub_100005A88;
  v65 = 0;
  address = 0;
  v57[0] = 0;
  v57[1] = v57;
  v57[2] = 0x2020000000;
  v58 = -1;
  if ([(KBXPCService *)self remoteProcessHasBooleanEntitlement:@"com.apple.mkb.usersession.ops"])
  {
    if (vm_allocate(mach_task_self_, &address, vm_page_size, -268435455))
    {
      sub_100011BE0("[KBXPCService createKeybagForUserSession:withSessionUID:WithSecret:secretSize:withGracePeriod:withOpaqeStuff:withReply:]", @"FAILED to allocate VM", v19, v20, v21, v22, v23, v24, v47);
      v25 = [NSError errorWithDomain:NSPOSIXErrorDomain code:12 userInfo:0];
      v26 = v61[5];
      v61[5] = v25;

      address = 0;
LABEL_5:
      v18[2](v18, v61[5]);
      goto LABEL_17;
    }

    if (a6)
    {
      v29 = address;
      if ([(KBXPCService *)self retrievePasscodeFromFileHandle:v16 ofLength:a6 withbaseaddress:address])
      {
        sub_100011BE0("[KBXPCService createKeybagForUserSession:withSessionUID:WithSecret:secretSize:withGracePeriod:withOpaqeStuff:withReply:]", @"Failed to retrieve passcode info", v30, v31, v32, v33, v34, v35, v47);
        v36 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
        v37 = v61[5];
        v61[5] = v36;

        v38 = mach_task_self_;
        v39 = address;
        v40 = vm_page_size;
        if (vm_page_size >= a6)
        {
          v41 = a6;
        }

        else
        {
          v41 = vm_page_size;
        }

        memset_s(address, v41, 0, v41);
        vm_deallocate(v38, v39, v40);
        goto LABEL_5;
      }
    }

    else
    {
      v29 = 0;
    }

    v42 = qword_10003D2A0;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000086EC;
    block[3] = &unk_100034DA8;
    v49 = v15;
    v53 = a6;
    v54 = v29;
    v55 = a4;
    v56 = a7;
    v50 = v17;
    v51 = &v60;
    v52 = v57;
    dispatch_sync(v42, block);
    v43 = mach_task_self_;
    v44 = address;
    v45 = vm_page_size;
    if (vm_page_size >= a6)
    {
      v46 = a6;
    }

    else
    {
      v46 = vm_page_size;
    }

    memset_s(address, v46, 0, v46);
    vm_deallocate(v43, v44, v45);
    v18[2](v18, v61[5]);
  }

  else
  {
    v27 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
    v28 = v61[5];
    v61[5] = v27;

    if (v18)
    {
      goto LABEL_5;
    }
  }

LABEL_17:
  _Block_object_dispose(v57, 8);
  _Block_object_dispose(&v60, 8);
}

- (void)loadKeybagForUserSession:(id)a3 withSessionID:(int)a4 withSecret:(id)a5 secretSize:(unint64_t)a6 shouldSetGracePeriod:(BOOL)a7 withGracePeriod:(int)a8 isInEarlyStar:(BOOL)a9 withReply:(id)a10
{
  v16 = a3;
  v17 = a5;
  v18 = a10;
  v61 = 0;
  v62 = &v61;
  v63 = 0x3032000000;
  v64 = sub_100005A78;
  v65 = sub_100005A88;
  v66 = 0;
  address = 0;
  v58[0] = 0;
  v58[1] = v58;
  v58[2] = 0x2020000000;
  v59 = -1;
  if ([(KBXPCService *)self remoteProcessHasBooleanEntitlement:@"com.apple.mkb.usersession.ops"])
  {
    if (vm_allocate(mach_task_self_, &address, vm_page_size, -268435455))
    {
      sub_100011BE0("[KBXPCService loadKeybagForUserSession:withSessionID:withSecret:secretSize:shouldSetGracePeriod:withGracePeriod:isInEarlyStar:withReply:]", @"FAILED to allocate VM", v19, v20, v21, v22, v23, v24, v47);
      v25 = [NSError errorWithDomain:NSPOSIXErrorDomain code:12 userInfo:0];
      v26 = v62[5];
      v62[5] = v25;

      address = 0;
LABEL_5:
      v18[2](v18, v62[5]);
      goto LABEL_17;
    }

    if (a6)
    {
      v29 = address;
      if ([(KBXPCService *)self retrievePasscodeFromFileHandle:v17 ofLength:a6 withbaseaddress:address])
      {
        sub_100011BE0("[KBXPCService loadKeybagForUserSession:withSessionID:withSecret:secretSize:shouldSetGracePeriod:withGracePeriod:isInEarlyStar:withReply:]", @"Failed to retrieve passcode info", v30, v31, v32, v33, v34, v35, v47);
        v36 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
        v37 = v62[5];
        v62[5] = v36;

        v38 = mach_task_self_;
        v39 = address;
        v40 = vm_page_size;
        if (vm_page_size >= a6)
        {
          v41 = a6;
        }

        else
        {
          v41 = vm_page_size;
        }

        memset_s(address, v41, 0, v41);
        vm_deallocate(v38, v39, v40);
        goto LABEL_5;
      }
    }

    else
    {
      v29 = 0;
    }

    v42 = qword_10003D2A0;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100008B90;
    block[3] = &unk_100034DD0;
    v52 = a6;
    v53 = v29;
    v56 = a7;
    v54 = a4;
    v55 = a8;
    v57 = a9;
    v49 = v16;
    v50 = &v61;
    v51 = v58;
    dispatch_sync(v42, block);
    v43 = mach_task_self_;
    v44 = address;
    v45 = vm_page_size;
    if (vm_page_size >= a6)
    {
      v46 = a6;
    }

    else
    {
      v46 = vm_page_size;
    }

    memset_s(address, v46, 0, v46);
    vm_deallocate(v43, v44, v45);
    v18[2](v18, v62[5]);
  }

  else
  {
    v27 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
    v28 = v62[5];
    v62[5] = v27;

    if (v18)
    {
      goto LABEL_5;
    }
  }

LABEL_17:
  _Block_object_dispose(v58, 8);
  _Block_object_dispose(&v61, 8);
}

- (void)unloadKeybagForUserSession:(int)a3 withReply:(id)a4
{
  v6 = a4;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_100005A78;
  v15 = sub_100005A88;
  v16 = 0;
  if ([(KBXPCService *)self remoteProcessHasBooleanEntitlement:@"com.apple.mkb.usersession.ops"])
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100008DFC;
    v9[3] = &unk_100034DF8;
    v10 = a3;
    v9[4] = &v11;
    dispatch_sync(qword_10003D2A0, v9);
LABEL_4:
    v6[2](v6, v12[5]);
    goto LABEL_5;
  }

  v7 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
  v8 = v12[5];
  v12[5] = v7;

  if (v6)
  {
    goto LABEL_4;
  }

LABEL_5:
  _Block_object_dispose(&v11, 8);
}

- (void)setVolumeToPersona:(id)a3 withPersonaString:(id)a4 withReply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_100005A78;
  v23 = sub_100005A88;
  v24 = 0;
  if ([(KBXPCService *)self remoteProcessHasBooleanEntitlement:@"com.apple.mkb.usersession.ops"])
  {
    v11 = qword_10003D2A0;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000092EC;
    v14[3] = &unk_100034E20;
    v15 = v8;
    v18 = &v19;
    v16 = v9;
    v17 = v10;
    dispatch_sync(v11, v14);
  }

  else
  {
    v12 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
    v13 = v20[5];
    v20[5] = v12;

    if (v10)
    {
      (*(v10 + 2))(v10, v20[5]);
    }
  }

  _Block_object_dispose(&v19, 8);
}

- (void)createSyncBagForUserSession:(id)a3 withSessionUID:(int)a4 withReply:(id)a5
{
  v8 = a3;
  v9 = a5;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_100005A78;
  v21 = sub_100005A88;
  v22 = 0;
  if ([(KBXPCService *)self remoteProcessHasBooleanEntitlement:@"com.apple.mkb.usersession.ops"])
  {
    v10 = qword_10003D2A0;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000096F0;
    block[3] = &unk_100034E48;
    v16 = a4;
    v14 = v8;
    v15 = &v17;
    dispatch_sync(v10, block);
    v9[2](v9, v18[5]);
  }

  else
  {
    v11 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
    v12 = v18[5];
    v18[5] = v11;

    if (v9)
    {
      v9[2](v9, v18[5]);
    }
  }

  _Block_object_dispose(&v17, 8);
}

- (void)loadSyncBagForUserSession:(id)a3 withSessionUID:(int)a4 withReply:(id)a5
{
  v8 = a3;
  v9 = a5;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_100005A78;
  v21 = sub_100005A88;
  v22 = 0;
  if ([(KBXPCService *)self remoteProcessHasBooleanEntitlement:@"com.apple.mkb.usersession.ops"])
  {
    v10 = qword_10003D2A0;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100009968;
    block[3] = &unk_100034E48;
    v16 = a4;
    v14 = v8;
    v15 = &v17;
    dispatch_sync(v10, block);
    v9[2](v9, v18[5]);
  }

  else
  {
    v11 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
    v12 = v18[5];
    v18[5] = v11;

    if (v9)
    {
      v9[2](v9, v18[5]);
    }
  }

  _Block_object_dispose(&v17, 8);
}

- (void)verifySyncBagForUserSession:(id)a3 withSessionUID:(int)a4 withReply:(id)a5
{
  v8 = a3;
  v9 = a5;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_100005A78;
  v21 = sub_100005A88;
  v22 = 0;
  if ([(KBXPCService *)self remoteProcessHasBooleanEntitlement:@"com.apple.mkb.usersession.ops"])
  {
    v10 = qword_10003D2A0;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100009BE0;
    block[3] = &unk_100034E48;
    v16 = a4;
    v14 = v8;
    v15 = &v17;
    dispatch_sync(v10, block);
    v9[2](v9, v18[5]);
  }

  else
  {
    v11 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
    v12 = v18[5];
    v18[5] = v11;

    if (v9)
    {
      v9[2](v9, v18[5]);
    }
  }

  _Block_object_dispose(&v17, 8);
}

- (void)unloadSyncBagForUserSession:(id)a3 withSessionUID:(int)a4 withReply:(id)a5
{
  v8 = a3;
  v9 = a5;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_100005A78;
  v21 = sub_100005A88;
  v22 = 0;
  if ([(KBXPCService *)self remoteProcessHasBooleanEntitlement:@"com.apple.mkb.usersession.ops"])
  {
    v10 = qword_10003D2A0;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100009E58;
    block[3] = &unk_100034E48;
    v16 = a4;
    v14 = v8;
    v15 = &v17;
    dispatch_sync(v10, block);
    v9[2](v9, v18[5]);
  }

  else
  {
    v11 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
    v12 = v18[5];
    v18[5] = v11;

    if (v9)
    {
      v9[2](v9, v18[5]);
    }
  }

  _Block_object_dispose(&v17, 8);
}

- (void)removeSyncBagForUserSession:(id)a3 withSessionUID:(int)a4 withReply:(id)a5
{
  v8 = a3;
  v9 = a5;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_100005A78;
  v21 = sub_100005A88;
  v22 = 0;
  if ([(KBXPCService *)self remoteProcessHasBooleanEntitlement:@"com.apple.mkb.usersession.ops"])
  {
    v10 = qword_10003D2A0;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000A120;
    block[3] = &unk_100034E48;
    v16 = a4;
    v14 = v8;
    v15 = &v17;
    dispatch_sync(v10, block);
    v9[2](v9, v18[5]);
  }

  else
  {
    v11 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
    v12 = v18[5];
    v18[5] = v11;

    if (v9)
    {
      v9[2](v9, v18[5]);
    }
  }

  _Block_object_dispose(&v17, 8);
}

- (void)createPersonaKeyForUserSession:(id)a3 forPath:(id)a4 withUID:(unsigned int)a5 WithSecret:(id)a6 secretSize:(unint64_t)a7 secretIsACM:(BOOL)a8 withReply:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a6;
  v18 = a9;
  v60 = 0;
  v61 = &v60;
  v62 = 0x3032000000;
  v63 = sub_100005A78;
  v64 = sub_100005A88;
  v65 = 0;
  address = 0;
  v57[0] = 0;
  v57[1] = v57;
  v57[2] = 0x2020000000;
  v58 = -1;
  if ([(KBXPCService *)self remoteProcessHasBooleanEntitlement:@"com.apple.mkb.usersession.ops"])
  {
    if (vm_allocate(mach_task_self_, &address, vm_page_size, -268435455))
    {
      sub_100011BE0("[KBXPCService createPersonaKeyForUserSession:forPath:withUID:WithSecret:secretSize:secretIsACM:withReply:]", @"FAILED to allocate VM", v19, v20, v21, v22, v23, v24, v47);
      v25 = [NSError errorWithDomain:NSPOSIXErrorDomain code:12 userInfo:0];
      v26 = v61[5];
      v61[5] = v25;

      address = 0;
LABEL_5:
      v18[2](v18, v61[5]);
      goto LABEL_17;
    }

    if (a7)
    {
      v29 = address;
      if ([(KBXPCService *)self retrievePasscodeFromFileHandle:v17 ofLength:a7 withbaseaddress:address])
      {
        sub_100011BE0("[KBXPCService createPersonaKeyForUserSession:forPath:withUID:WithSecret:secretSize:secretIsACM:withReply:]", @"Failed to passcode info", v30, v31, v32, v33, v34, v35, v47);
        v36 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
        v37 = v61[5];
        v61[5] = v36;

        v38 = mach_task_self_;
        v39 = address;
        v40 = vm_page_size;
        if (vm_page_size >= a7)
        {
          v41 = a7;
        }

        else
        {
          v41 = vm_page_size;
        }

        memset_s(address, v41, 0, v41);
        vm_deallocate(v38, v39, v40);
        goto LABEL_5;
      }
    }

    else
    {
      v29 = 0;
    }

    v42 = qword_10003D2A0;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000A60C;
    block[3] = &unk_100034E70;
    v55 = a5;
    v49 = v16;
    v53 = a7;
    v54 = v29;
    v56 = a8;
    v50 = v15;
    v51 = &v60;
    v52 = v57;
    dispatch_sync(v42, block);
    v43 = mach_task_self_;
    v44 = address;
    v45 = vm_page_size;
    if (vm_page_size >= a7)
    {
      v46 = a7;
    }

    else
    {
      v46 = vm_page_size;
    }

    memset_s(address, v46, 0, v46);
    vm_deallocate(v43, v44, v45);
    v18[2](v18, v61[5]);
  }

  else
  {
    v27 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
    v28 = v61[5];
    v61[5] = v27;

    if (v18)
    {
      goto LABEL_5;
    }
  }

LABEL_17:
  _Block_object_dispose(v57, 8);
  _Block_object_dispose(&v60, 8);
}

- (void)removePersonaKeyForUserSession:(id)a3 withUID:(unsigned int)a4 withVolumeUUIDString:(id)a5 withReply:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_100005A78;
  v25 = sub_100005A88;
  v26 = 0;
  if ([(KBXPCService *)self remoteProcessHasBooleanEntitlement:@"com.apple.mkb.usersession.ops"])
  {
    v13 = qword_10003D2A0;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10000A8CC;
    v16[3] = &unk_100034E98;
    v20 = a4;
    v17 = v10;
    v18 = v11;
    v19 = &v21;
    dispatch_sync(v13, v16);
    v12[2](v12, v22[5]);
  }

  else
  {
    v14 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
    v15 = v22[5];
    v22[5] = v14;

    if (v12)
    {
      v12[2](v12, v22[5]);
    }
  }

  _Block_object_dispose(&v21, 8);
}

@end