@interface KBXPCService
+ (id)sharedService;
- (BOOL)remoteProcessHasBooleanEntitlement:(id)entitlement;
- (BOOL)retrievePasscodeFromFileHandle:(id)handle ofLength:(unint64_t)length withbaseaddress:(char *)withbaseaddress;
- (id)remoteServiceName;
- (void)SeshatDebugWithDebugMask:(int)mask withReply:(id)reply;
- (void)SeshatEnrollWithSecret:(id)secret secretSize:(unint64_t)size secretIsACM:(BOOL)m withReply:(id)reply;
- (void)SeshatRecoverWithSecret:(id)secret secretSize:(unint64_t)size secretIsACM:(BOOL)m withReply:(id)reply;
- (void)SeshatUnlockWithSecret:(id)secret secretSize:(unint64_t)size secretIsACM:(BOOL)m withMemento:(BOOL)memento verifyOnly:(BOOL)only withACMRef:(id)ref forHandle:(int)handle withReply:(id)self0;
- (void)backupUUIDForVolume:(id)volume reply:(id)reply;
- (void)changeClassKeysGenerationWithSecret:(id)secret secretSize:(unint64_t)size secretIsACM:(BOOL)m generationOption:(int)option reply:(id)reply;
- (void)changeSystemSecretWithEscrow:(id)escrow fromOldSecret:(id)secret oldSize:(unint64_t)size toNewSecret:(id)newSecret newSize:(unint64_t)newSize opaqueData:(id)data keepstate:(BOOL)keepstate withACM:(BOOL)self0 reply:(id)self1;
- (void)changeSystemSecretfromOldSecret:(id)secret oldSize:(unint64_t)size toNewSecret:(id)newSecret newSize:(unint64_t)newSize opaqueData:(id)data withParams:(unsigned int)params reply:(id)reply;
- (void)createKeybagForUserSession:(id)session withSessionUID:(int)d WithSecret:(id)secret secretSize:(unint64_t)size withGracePeriod:(int)period withOpaqeStuff:(id)stuff withReply:(id)reply;
- (void)createPersonaKeyForUserSession:(id)session forPath:(id)path withUID:(unsigned int)d WithSecret:(id)secret secretSize:(unint64_t)size secretIsACM:(BOOL)m withReply:(id)reply;
- (void)createSyncBagForUserSession:(id)session withSessionUID:(int)d withReply:(id)reply;
- (void)disableBackupForVolume:(id)volume reply:(id)reply;
- (void)enableBackupForVolume:(id)volume withSecret:(id)secret secretSize:(unint64_t)size secretIsACM:(BOOL)m reply:(id)reply;
- (void)forgottenPasscodeEventWithReply:(id)reply;
- (void)getBackupBlobreply:(id)blobreply;
- (void)getBackupkeyForVolume:(id)volume andCryptoID:(unint64_t)d withReply:(id)reply;
- (void)getLockSateInfoforUser:(int)user WithReply:(id)reply;
- (void)getPasscodeBlobWithReply:(id)reply;
- (void)isKeyRollingInProgresswithreply:(id)progresswithreply;
- (void)loadKeybagForUserSession:(id)session withSessionID:(int)d withSecret:(id)secret secretSize:(unint64_t)size shouldSetGracePeriod:(BOOL)period withGracePeriod:(int)gracePeriod isInEarlyStar:(BOOL)star withReply:(id)self0;
- (void)loadSyncBagForUserSession:(id)session withSessionUID:(int)d withReply:(id)reply;
- (void)migrationWithReply:(id)reply;
- (void)passcodeUnlockFailedWithReply:(id)reply;
- (void)passcodeUnlockStartWithReply:(id)reply;
- (void)passcodeUnlockSuccessWithReply:(id)reply;
- (void)registerBackupBag:(id)bag withSecret:(id)secret secretSize:(unint64_t)size secretIsACM:(BOOL)m reply:(id)reply;
- (void)removePersonaKeyForUserSession:(id)session withUID:(unsigned int)d withVolumeUUIDString:(id)string withReply:(id)reply;
- (void)removeSyncBagForUserSession:(id)session withSessionUID:(int)d withReply:(id)reply;
- (void)setSpacedRepetitionMode:(unsigned int)mode reply:(id)reply;
- (void)setSystemSecretBlob:(id)blob reply:(id)reply;
- (void)setVolumeToPersona:(id)persona withPersonaString:(id)string withReply:(id)reply;
- (void)startBackupSessionForVolume:(id)volume withReply:(id)reply;
- (void)stashCommitwithUID:(unsigned int)d WithFlags:(unsigned int)flags WithReply:(id)reply;
- (void)stashCreatewithSecret:(id)secret secrestSize:(unint64_t)size withMode:(int)mode withUID:(unsigned int)d WithFlags:(unsigned int)flags reply:(id)reply;
- (void)stashDestroywithReply:(id)reply;
- (void)stashVerifywithUID:(unsigned int)d WithFlags:(unsigned int)flags WithReply:(id)reply;
- (void)stopBackupSessionForVolume:(id)volume withReply:(id)reply;
- (void)unloadKeybagForUserSession:(int)session withReply:(id)reply;
- (void)unloadSyncBagForUserSession:(id)session withSessionUID:(int)d withReply:(id)reply;
- (void)verifySyncBagForUserSession:(id)session withSessionUID:(int)d withReply:(id)reply;
@end

@implementation KBXPCService

+ (id)sharedService
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100005434;
  block[3] = &unk_100034D08;
  block[4] = self;
  if (qword_10003D2F8 != -1)
  {
    dispatch_once(&qword_10003D2F8, block);
  }

  v2 = qword_10003D2F0;

  return v2;
}

- (BOOL)remoteProcessHasBooleanEntitlement:(id)entitlement
{
  entitlementCopy = entitlement;
  v4 = +[NSXPCConnection currentConnection];
  v5 = [v4 valueForEntitlement:entitlementCopy];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bOOLValue = [v5 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (id)remoteServiceName
{
  v2 = +[NSXPCConnection currentConnection];
  serviceName = [v2 serviceName];

  return serviceName;
}

- (BOOL)retrievePasscodeFromFileHandle:(id)handle ofLength:(unint64_t)length withbaseaddress:(char *)withbaseaddress
{
  handleCopy = handle;
  v8 = handleCopy;
  if (!length)
  {
    goto LABEL_5;
  }

  if (read([handleCopy fileDescriptor], withbaseaddress, length) != length)
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

- (void)changeSystemSecretfromOldSecret:(id)secret oldSize:(unint64_t)size toNewSecret:(id)newSecret newSize:(unint64_t)newSize opaqueData:(id)data withParams:(unsigned int)params reply:(id)reply
{
  secretCopy = secret;
  newSecretCopy = newSecret;
  dataCopy = data;
  replyCopy = reply;
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
    if (vm_page_size < size || vm_page_size < newSize)
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
      replyCopy[2](replyCopy, v76[5]);
      goto LABEL_25;
    }

    if (size)
    {
      v62 = address;
      if ([(KBXPCService *)self retrievePasscodeFromFileHandle:secretCopy ofLength:size withbaseaddress:?])
      {
        sub_100011BE0("[KBXPCService changeSystemSecretfromOldSecret:oldSize:toNewSecret:newSize:opaqueData:withParams:reply:]", @"Failed to retrieve oldpasscode", v35, v36, v37, v38, v39, v40, v61);
        v41 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
        v42 = v76[5];
        v76[5] = v41;

        v43 = mach_task_self_;
        v44 = address;
        v45 = vm_page_size;
        if (vm_page_size >= size)
        {
          sizeCopy = size;
        }

        else
        {
          sizeCopy = vm_page_size;
        }

LABEL_23:
        memset_s(address, sizeCopy, 0, sizeCopy);
        vm_deallocate(v43, v44, v45);
        goto LABEL_24;
      }
    }

    else
    {
      v62 = 0;
    }

    if (newSize)
    {
      v47 = address + 1024;
      if ([(KBXPCService *)self retrievePasscodeFromFileHandle:newSecretCopy ofLength:newSize withbaseaddress:address + 1024])
      {
        sub_100011BE0("[KBXPCService changeSystemSecretfromOldSecret:oldSize:toNewSecret:newSize:opaqueData:withParams:reply:]", @"Failed to retrieve newpasscode", v48, v49, v50, v51, v52, v53, v61);
        v54 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
        v55 = v76[5];
        v76[5] = v54;

        v43 = mach_task_self_;
        v44 = address;
        v45 = vm_page_size;
        if (vm_page_size >= newSize + 1024)
        {
          sizeCopy = newSize + 1024;
        }

        else
        {
          sizeCopy = vm_page_size;
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
    sizeCopy2 = size;
    v69 = v47;
    newSizeCopy = newSize;
    paramsCopy = params;
    v64 = dataCopy;
    v65 = &v75;
    v66 = v72;
    dispatch_sync(v56, block);
    v57 = mach_task_self_;
    v58 = address;
    v59 = vm_page_size;
    if (vm_page_size >= newSize + 1024)
    {
      v60 = newSize + 1024;
    }

    else
    {
      v60 = vm_page_size;
    }

    memset_s(address, v60, 0, v60);
    vm_deallocate(v57, v58, v59);
    replyCopy[2](replyCopy, v76[5]);

    goto LABEL_25;
  }

  v25 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
LABEL_8:
  v26 = v76[5];
  v76[5] = v25;

  if (replyCopy)
  {
    goto LABEL_24;
  }

LABEL_25:
  _Block_object_dispose(v72, 8);
  _Block_object_dispose(&v75, 8);
}

- (void)setSpacedRepetitionMode:(unsigned int)mode reply:(id)reply
{
  replyCopy = reply;
  if ([(KBXPCService *)self remoteProcessHasBooleanEntitlement:@"com.apple.keystore.device"])
  {
    sub_100011BE0("[KBXPCService setSpacedRepetitionMode:reply:]", @"setting spaced repetition verification mode to %d", v6, v7, v8, v9, v10, v11, mode);
    dword_10003D280 = mode;
    v12 = NSPOSIXErrorDomain;
    v13 = 0;
  }

  else
  {
    v12 = NSPOSIXErrorDomain;
    v13 = 1;
  }

  v14 = [NSError errorWithDomain:v12 code:v13 userInfo:0];
  if (replyCopy)
  {
    replyCopy[2](replyCopy, v14);
  }
}

- (void)getPasscodeBlobWithReply:(id)reply
{
  replyCopy = reply;
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

    replyCopy[2](replyCopy, v4, 0);

    v5 = 0;
  }

  else
  {
    v5 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
    if (replyCopy)
    {
      (replyCopy[2])();
    }
  }
}

- (void)changeSystemSecretWithEscrow:(id)escrow fromOldSecret:(id)secret oldSize:(unint64_t)size toNewSecret:(id)newSecret newSize:(unint64_t)newSize opaqueData:(id)data keepstate:(BOOL)keepstate withACM:(BOOL)self0 reply:(id)self1
{
  escrowCopy = escrow;
  secretCopy = secret;
  newSecretCopy = newSecret;
  dataCopy = data;
  replyCopy = reply;
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
    if (vm_page_size < size || vm_page_size < newSize)
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
      replyCopy[2](replyCopy, v82[5]);
      goto LABEL_25;
    }

    if (size)
    {
      v66 = address;
      if ([(KBXPCService *)self retrievePasscodeFromFileHandle:secretCopy ofLength:size withbaseaddress:?])
      {
        sub_100011BE0("[KBXPCService changeSystemSecretWithEscrow:fromOldSecret:oldSize:toNewSecret:newSize:opaqueData:keepstate:withACM:reply:]", @"Failed to retrieve oldpasscode", v38, v39, v40, v41, v42, v43, v64);
        v44 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
        v45 = v82[5];
        v82[5] = v44;

        v46 = mach_task_self_;
        v47 = address;
        v48 = vm_page_size;
        if (vm_page_size >= size)
        {
          sizeCopy = size;
        }

        else
        {
          sizeCopy = vm_page_size;
        }

LABEL_23:
        memset_s(address, sizeCopy, 0, sizeCopy);
        vm_deallocate(v46, v47, v48);
        goto LABEL_24;
      }
    }

    else
    {
      v66 = 0;
    }

    if (newSize)
    {
      v50 = address + 1024;
      if ([(KBXPCService *)self retrievePasscodeFromFileHandle:newSecretCopy ofLength:newSize withbaseaddress:address + 1024])
      {
        sub_100011BE0("[KBXPCService changeSystemSecretWithEscrow:fromOldSecret:oldSize:toNewSecret:newSize:opaqueData:keepstate:withACM:reply:]", @"Failed to retrieve newpasscode", v51, v52, v53, v54, v55, v56, v64);
        v57 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
        v58 = v82[5];
        v82[5] = v57;

        v47 = address;
        v48 = vm_page_size;
        v59 = newSize + 1024;
        v46 = mach_task_self_;
        if (vm_page_size >= v59)
        {
          sizeCopy = v59;
        }

        else
        {
          sizeCopy = vm_page_size;
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
    sizeCopy2 = size;
    v74 = v50;
    newSizeCopy = newSize;
    v68 = dataCopy;
    mCopy = m;
    keepstateCopy = keepstate;
    v69 = escrowCopy;
    v70 = &v81;
    v71 = v78;
    dispatch_sync(queue, block);
    v60 = mach_task_self_;
    v61 = address;
    v62 = vm_page_size;
    if (vm_page_size >= newSize + 1024)
    {
      v63 = newSize + 1024;
    }

    else
    {
      v63 = vm_page_size;
    }

    memset_s(address, v63, 0, v63);
    vm_deallocate(v60, v61, v62);
    replyCopy[2](replyCopy, v82[5]);

    goto LABEL_25;
  }

  v28 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
LABEL_8:
  v29 = v82[5];
  v82[5] = v28;

  if (replyCopy)
  {
    goto LABEL_24;
  }

LABEL_25:
  _Block_object_dispose(v78, 8);
  _Block_object_dispose(&v81, 8);
}

- (void)changeClassKeysGenerationWithSecret:(id)secret secretSize:(unint64_t)size secretIsACM:(BOOL)m generationOption:(int)option reply:(id)reply
{
  secretCopy = secret;
  replyCopy = reply;
  address = 0;
  if (![(KBXPCService *)self remoteProcessHasBooleanEntitlement:@"com.apple.keystore.device"])
  {
    v19 = NSPOSIXErrorDomain;
    v20 = 1;
LABEL_5:
    v21 = [NSError errorWithDomain:v19 code:v20 userInfo:0];
    if (!replyCopy)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  if (vm_page_size < size)
  {
    sub_100011BE0("[KBXPCService changeClassKeysGenerationWithSecret:secretSize:secretIsACM:generationOption:reply:]", @"Long Secret, can't handle ...", vm_page_size, v14, v15, v16, v17, v18, v42);
    v19 = NSPOSIXErrorDomain;
    v20 = 7;
    goto LABEL_5;
  }

  if (!vm_allocate(mach_task_self_, &address, vm_page_size, -268435455))
  {
    if (size)
    {
      v28 = address;
      if ([(KBXPCService *)self retrievePasscodeFromFileHandle:secretCopy ofLength:size withbaseaddress:address])
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

    v37 = sub_100014A4C(v28, size, m, option);
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
    if (vm_page_size >= size)
    {
      sizeCopy = size;
    }

    else
    {
      sizeCopy = vm_page_size;
    }

    memset_s(address, sizeCopy, 0, sizeCopy);
    vm_deallocate(v38, v39, v40);
    goto LABEL_21;
  }

  sub_100011BE0("[KBXPCService changeClassKeysGenerationWithSecret:secretSize:secretIsACM:generationOption:reply:]", @"FAILED to allocate VM", v22, v23, v24, v25, v26, v27, v42);
  v21 = [NSError errorWithDomain:NSPOSIXErrorDomain code:12 userInfo:0];
  address = 0;
LABEL_21:
  replyCopy[2](replyCopy, v21);
LABEL_22:
}

- (void)setSystemSecretBlob:(id)blob reply:(id)reply
{
  blobCopy = blob;
  replyCopy = reply;
  if ([(KBXPCService *)self remoteProcessHasBooleanEntitlement:@"com.apple.keystore.device"])
  {
    v7 = sub_10001322C(blobCopy);
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
  if (replyCopy)
  {
LABEL_7:
    replyCopy[2](replyCopy, v8);
  }
}

- (void)registerBackupBag:(id)bag withSecret:(id)secret secretSize:(unint64_t)size secretIsACM:(BOOL)m reply:(id)reply
{
  bagCopy = bag;
  secretCopy = secret;
  replyCopy = reply;
  address = 0;
  if (![(KBXPCService *)self remoteProcessHasBooleanEntitlement:@"com.apple.keystore.devicebackup"])
  {
    v20 = NSPOSIXErrorDomain;
    v21 = 1;
LABEL_5:
    v22 = [NSError errorWithDomain:v20 code:v21 userInfo:0];
    if (!replyCopy)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  if (vm_page_size < size)
  {
    sub_100011BE0("[KBXPCService registerBackupBag:withSecret:secretSize:secretIsACM:reply:]", @"Long Secret, can't handle ...", vm_page_size, v15, v16, v17, v18, v19, v43);
    v20 = NSPOSIXErrorDomain;
    v21 = 7;
    goto LABEL_5;
  }

  if (!vm_allocate(mach_task_self_, &address, vm_page_size, -268435455))
  {
    if (size)
    {
      v29 = address;
      if ([(KBXPCService *)self retrievePasscodeFromFileHandle:secretCopy ofLength:size withbaseaddress:address])
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

    v38 = sub_100013350(bagCopy, v29, size, m);
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
    if (vm_page_size >= size)
    {
      sizeCopy = size;
    }

    else
    {
      sizeCopy = vm_page_size;
    }

    memset_s(address, sizeCopy, 0, sizeCopy);
    vm_deallocate(v39, v40, v41);
    goto LABEL_21;
  }

  sub_100011BE0("[KBXPCService registerBackupBag:withSecret:secretSize:secretIsACM:reply:]", @"FAILED to allocate VM", v23, v24, v25, v26, v27, v28, v43);
  v22 = [NSError errorWithDomain:NSPOSIXErrorDomain code:12 userInfo:0];
  address = 0;
LABEL_21:
  replyCopy[2](replyCopy, v22);
LABEL_22:
}

- (void)getBackupBlobreply:(id)blobreply
{
  blobreplyCopy = blobreply;
  if ([(KBXPCService *)self remoteProcessHasBooleanEntitlement:@"com.apple.keystore.devicebackup"])
  {
    v4 = sub_1000130B4(1);
    blobreplyCopy[2](blobreplyCopy, v4, 0);

    v5 = 0;
  }

  else
  {
    v5 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
    if (blobreplyCopy)
    {
      (blobreplyCopy[2])();
    }
  }
}

- (void)getBackupkeyForVolume:(id)volume andCryptoID:(unint64_t)d withReply:(id)reply
{
  volumeCopy = volume;
  replyCopy = reply;
  if ([(KBXPCService *)self remoteProcessHasBooleanEntitlement:@"com.apple.keystore.devicebackup"])
  {
    v12 = 0;
    v10 = sub_1000200EC(volumeCopy, d, &v12);
    if (v10)
    {
      v11 = 0;
    }

    else
    {
      v11 = v12;
    }

    replyCopy[2](replyCopy, v10, v11);
  }

  else
  {
    v11 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
    if (replyCopy)
    {
      replyCopy[2](replyCopy, 0, v11);
    }
  }
}

- (void)startBackupSessionForVolume:(id)volume withReply:(id)reply
{
  volumeCopy = volume;
  replyCopy = reply;
  if ([(KBXPCService *)self remoteProcessHasBooleanEntitlement:@"com.apple.keystore.devicebackup"])
  {
    v7 = sub_100013634(volumeCopy, 1);
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
  if (replyCopy)
  {
LABEL_7:
    replyCopy[2](replyCopy, v8);
  }
}

- (void)stopBackupSessionForVolume:(id)volume withReply:(id)reply
{
  volumeCopy = volume;
  replyCopy = reply;
  if ([(KBXPCService *)self remoteProcessHasBooleanEntitlement:@"com.apple.keystore.devicebackup"])
  {
    v7 = sub_100013634(volumeCopy, 0);
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
  if (replyCopy)
  {
LABEL_7:
    replyCopy[2](replyCopy, v8);
  }
}

- (void)enableBackupForVolume:(id)volume withSecret:(id)secret secretSize:(unint64_t)size secretIsACM:(BOOL)m reply:(id)reply
{
  volumeCopy = volume;
  secretCopy = secret;
  replyCopy = reply;
  v46 = 0;
  address = 0;
  if (![(KBXPCService *)self remoteProcessHasBooleanEntitlement:@"com.apple.keystore.devicebackup"])
  {
    v20 = NSPOSIXErrorDomain;
    v21 = 1;
LABEL_5:
    v22 = [NSError errorWithDomain:v20 code:v21 userInfo:0];
    if (!replyCopy)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (vm_page_size < size)
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
    replyCopy[2](replyCopy, 0, v22);
    goto LABEL_10;
  }

  if (size)
  {
    v29 = address;
    if ([(KBXPCService *)self retrievePasscodeFromFileHandle:secretCopy ofLength:size withbaseaddress:address])
    {
      sub_100011BE0("[KBXPCService enableBackupForVolume:withSecret:secretSize:secretIsACM:reply:]", @"Failed to retrieve oldpasscode", v30, v31, v32, v33, v34, v35, v46);
      v22 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      v36 = mach_task_self_;
      v37 = address;
      v38 = vm_page_size;
      if (vm_page_size >= size)
      {
        sizeCopy = size;
      }

      else
      {
        sizeCopy = vm_page_size;
      }

      memset_s(address, sizeCopy, 0, sizeCopy);
      vm_deallocate(v36, v37, v38);
      goto LABEL_9;
    }
  }

  else
  {
    v29 = 0;
  }

  v40 = sub_1000138CC(volumeCopy, v29, size, m, &v46);
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
  if (vm_page_size >= size)
  {
    sizeCopy2 = size;
  }

  else
  {
    sizeCopy2 = vm_page_size;
  }

  memset_s(address, sizeCopy2, 0, sizeCopy2);
  vm_deallocate(v41, v42, v43);
  v45 = v46;
  (replyCopy)[2](replyCopy, v46, v22);

LABEL_10:
}

- (void)disableBackupForVolume:(id)volume reply:(id)reply
{
  volumeCopy = volume;
  replyCopy = reply;
  if ([(KBXPCService *)self remoteProcessHasBooleanEntitlement:@"com.apple.keystore.devicebackup"])
  {
    v7 = sub_10002022C(volumeCopy);
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
  if (replyCopy)
  {
LABEL_7:
    replyCopy[2](replyCopy, v8);
  }
}

- (void)backupUUIDForVolume:(id)volume reply:(id)reply
{
  replyCopy = reply;
  v5 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
  replyCopy[2](replyCopy, 0, v5);
}

- (void)stashCreatewithSecret:(id)secret secrestSize:(unint64_t)size withMode:(int)mode withUID:(unsigned int)d WithFlags:(unsigned int)flags reply:(id)reply
{
  flagsCopy = flags;
  secretCopy = secret;
  replyCopy = reply;
  address = 0;
  if (![(KBXPCService *)self remoteProcessHasBooleanEntitlement:@"com.apple.keystore.stash.access"])
  {
    v21 = NSPOSIXErrorDomain;
    v22 = 1;
LABEL_5:
    v23 = [NSError errorWithDomain:v21 code:v22 userInfo:0];
    if (!replyCopy)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  if (vm_page_size < size)
  {
    sub_100011BE0("[KBXPCService stashCreatewithSecret:secrestSize:withMode:withUID:WithFlags:reply:]", @"Long Secret, can't handle ...", vm_page_size, v16, v17, v18, v19, v20, v44);
    v21 = NSPOSIXErrorDomain;
    v22 = 7;
    goto LABEL_5;
  }

  if (!vm_allocate(mach_task_self_, &address, vm_page_size, -268435455))
  {
    if (size)
    {
      v30 = address;
      if ([(KBXPCService *)self retrievePasscodeFromFileHandle:secretCopy ofLength:size withbaseaddress:address])
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

    v39 = sub_100013C8C(v30, size, mode, flagsCopy, d);
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
    if (vm_page_size >= size)
    {
      sizeCopy = size;
    }

    else
    {
      sizeCopy = vm_page_size;
    }

    memset_s(address, sizeCopy, 0, sizeCopy);
    vm_deallocate(v40, v41, v42);
    goto LABEL_21;
  }

  sub_100011BE0("[KBXPCService stashCreatewithSecret:secrestSize:withMode:withUID:WithFlags:reply:]", @"FAILED to allocate VM", v24, v25, v26, v27, v28, v29, v44);
  v23 = [NSError errorWithDomain:NSPOSIXErrorDomain code:12 userInfo:0];
  address = 0;
LABEL_21:
  replyCopy[2](replyCopy, v23);
LABEL_22:
}

- (void)stashCommitwithUID:(unsigned int)d WithFlags:(unsigned int)flags WithReply:(id)reply
{
  flagsCopy = flags;
  replyCopy = reply;
  if ([(KBXPCService *)self remoteProcessHasBooleanEntitlement:@"com.apple.keystore.stash.access"])
  {
    v8 = sub_100014740(d, flagsCopy);
    if (v8)
    {
      v9 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v8 userInfo:0];
    }

    else
    {
      v9 = 0;
    }

    v10 = replyCopy;
    goto LABEL_8;
  }

  v9 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
  v10 = replyCopy;
  if (replyCopy)
  {
LABEL_8:
    v10[2](v10, v9);
  }
}

- (void)stashVerifywithUID:(unsigned int)d WithFlags:(unsigned int)flags WithReply:(id)reply
{
  flagsCopy = flags;
  replyCopy = reply;
  v11 = 0;
  if ([(KBXPCService *)self remoteProcessHasBooleanEntitlement:@"com.apple.keystore.stash.access"])
  {
    v9 = sub_100013F60(d, flagsCopy, &v11);
    if (v9)
    {
      v10 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v9 userInfo:0];
    }

    else
    {
      v10 = 0;
    }

    replyCopy[2](replyCopy, v11, v10);
  }

  else
  {
    v10 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
    if (replyCopy)
    {
      replyCopy[2](replyCopy, 0, v10);
    }
  }
}

- (void)stashDestroywithReply:(id)reply
{
  replyCopy = reply;
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

    v6 = replyCopy;
    goto LABEL_8;
  }

  v5 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
  v6 = replyCopy;
  if (replyCopy)
  {
LABEL_8:
    v6[2](v6, v5);
  }
}

- (void)isKeyRollingInProgresswithreply:(id)progresswithreply
{
  progresswithreplyCopy = progresswithreply;
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

  progresswithreplyCopy[2](progresswithreplyCopy, v5, v6);
}

- (void)migrationWithReply:(id)reply
{
  replyCopy = reply;
  v3 = aks_migrate_fs();
  if (v3)
  {
    v4 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v3 userInfo:0];
  }

  else
  {
    v4 = 0;
  }

  replyCopy[2](replyCopy, v4);
}

- (void)forgottenPasscodeEventWithReply:(id)reply
{
  (*(reply + 2))(reply, 0);

  sub_100014FFC();
}

- (void)getLockSateInfoforUser:(int)user WithReply:(id)reply
{
  replyCopy = reply;
  v5 = sub_100014F04(user);
  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
  }

  replyCopy[2](replyCopy, v5, v6);
}

- (void)passcodeUnlockStartWithReply:(id)reply
{
  replyCopy = reply;
  v5 = sub_100011BDC(replyCopy, v3, v4);
  sub_10000B8B8(v5);
  replyCopy[2](replyCopy, 0);
}

- (void)passcodeUnlockSuccessWithReply:(id)reply
{
  replyCopy = reply;
  v5 = sub_100011BDC(replyCopy, v3, v4);
  sub_10000B8EC(v5);
  replyCopy[2](replyCopy, 0);
}

- (void)passcodeUnlockFailedWithReply:(id)reply
{
  replyCopy = reply;
  v5 = sub_100011BDC(replyCopy, v3, v4);
  sub_10000B920(v5);
  replyCopy[2](replyCopy, 0);
}

- (void)SeshatEnrollWithSecret:(id)secret secretSize:(unint64_t)size secretIsACM:(BOOL)m withReply:(id)reply
{
  mCopy = m;
  secretCopy = secret;
  replyCopy = reply;
  address = 0;
  if (vm_page_size < size)
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

  if (size)
  {
    v24 = address;
    if ([(KBXPCService *)self retrievePasscodeFromFileHandle:secretCopy ofLength:size withbaseaddress:address])
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

  v33 = sub_1000204E8(v24, size, mCopy);
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
  if (vm_page_size >= size)
  {
    sizeCopy = size;
  }

  else
  {
    sizeCopy = vm_page_size;
  }

  memset_s(address, sizeCopy, 0, sizeCopy);
  vm_deallocate(v34, v35, v36);
LABEL_17:
  replyCopy[2](replyCopy, v17);
}

- (void)SeshatUnlockWithSecret:(id)secret secretSize:(unint64_t)size secretIsACM:(BOOL)m withMemento:(BOOL)memento verifyOnly:(BOOL)only withACMRef:(id)ref forHandle:(int)handle withReply:(id)self0
{
  mCopy = m;
  secretCopy = secret;
  refCopy = ref;
  replyCopy = reply;
  address = 0;
  if (vm_page_size < size)
  {
    sub_100011BE0("[KBXPCService SeshatUnlockWithSecret:secretSize:secretIsACM:withMemento:verifyOnly:withACMRef:forHandle:withReply:]", @"Long Secret, can't handle ...", vm_page_size, v18, v19, v20, v21, v22, v46);
    v24 = [NSError errorWithDomain:NSPOSIXErrorDomain code:7 userInfo:0];
LABEL_5:
    replyCopy[2](replyCopy, 0, v24);
    goto LABEL_6;
  }

  if (vm_allocate(mach_task_self_, &address, vm_page_size, -268435455))
  {
    sub_100011BE0("[KBXPCService SeshatUnlockWithSecret:secretSize:secretIsACM:withMemento:verifyOnly:withACMRef:forHandle:withReply:]", @"FAILED to allocate VM", v25, v26, v27, v28, v29, v30, v46);
    v24 = [NSError errorWithDomain:NSPOSIXErrorDomain code:12 userInfo:0];
    address = 0;
    goto LABEL_5;
  }

  if (size)
  {
    v31 = address;
    if ([(KBXPCService *)self retrievePasscodeFromFileHandle:secretCopy ofLength:size withbaseaddress:address])
    {
      sub_100011BE0("[KBXPCService SeshatUnlockWithSecret:secretSize:secretIsACM:withMemento:verifyOnly:withACMRef:forHandle:withReply:]", @"Failed to retrieve oldpasscode", v32, v33, v34, v35, v36, v37, v46);
      v24 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      v38 = mach_task_self_;
      v39 = address;
      v40 = vm_page_size;
      if (vm_page_size >= size)
      {
        sizeCopy = size;
      }

      else
      {
        sizeCopy = vm_page_size;
      }

      memset_s(address, sizeCopy, 0, sizeCopy);
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
  v49 = replyCopy;
  v24 = v48;
  sub_100015EE4(handle, v31, size, mCopy, memento, only, refCopy, v47);
  v42 = mach_task_self_;
  v43 = address;
  v44 = vm_page_size;
  if (vm_page_size >= size)
  {
    sizeCopy2 = size;
  }

  else
  {
    sizeCopy2 = vm_page_size;
  }

  memset_s(address, sizeCopy2, 0, sizeCopy2);
  vm_deallocate(v42, v43, v44);

LABEL_6:
}

- (void)SeshatRecoverWithSecret:(id)secret secretSize:(unint64_t)size secretIsACM:(BOOL)m withReply:(id)reply
{
  secretCopy = secret;
  replyCopy = reply;
  address = 0;
  if (vm_page_size < size)
  {
    sub_100011BE0("[KBXPCService SeshatRecoverWithSecret:secretSize:secretIsACM:withReply:]", @"Long Secret, can't handle ...", vm_page_size, v11, v12, v13, v14, v15, v41);
    v17 = [NSError errorWithDomain:NSPOSIXErrorDomain code:7 userInfo:0];
LABEL_5:
    replyCopy[2](replyCopy, 0, v17);

    goto LABEL_6;
  }

  if (vm_allocate(mach_task_self_, &address, vm_page_size, -268435455))
  {
    sub_100011BE0("[KBXPCService SeshatRecoverWithSecret:secretSize:secretIsACM:withReply:]", @"FAILED to allocate VM", v18, v19, v20, v21, v22, v23, v41);
    v17 = [NSError errorWithDomain:NSPOSIXErrorDomain code:12 userInfo:0];
    address = 0;
    goto LABEL_5;
  }

  if (size)
  {
    v24 = address;
    if ([(KBXPCService *)self retrievePasscodeFromFileHandle:secretCopy ofLength:size withbaseaddress:address])
    {
      sub_100011BE0("[KBXPCService SeshatRecoverWithSecret:secretSize:secretIsACM:withReply:]", @"Failed to retrieve oldpasscode", v25, v26, v27, v28, v29, v30, v41);
      v31 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      v32 = mach_task_self_;
      v33 = address;
      v34 = vm_page_size;
      if (vm_page_size >= size)
      {
        sizeCopy = size;
      }

      else
      {
        sizeCopy = vm_page_size;
      }

      memset_s(address, sizeCopy, 0, sizeCopy);
      vm_deallocate(v32, v33, v34);
      replyCopy[2](replyCopy, 0, v31);

      goto LABEL_6;
    }
  }

  else
  {
    v24 = 0;
  }

  v36 = sub_100017080(v24, size, m);
  v37 = mach_task_self_;
  v38 = address;
  v39 = vm_page_size;
  if (vm_page_size >= size)
  {
    sizeCopy2 = size;
  }

  else
  {
    sizeCopy2 = vm_page_size;
  }

  memset_s(address, sizeCopy2, 0, sizeCopy2);
  vm_deallocate(v37, v38, v39);
  replyCopy[2](replyCopy, v36, 0);
LABEL_6:
}

- (void)SeshatDebugWithDebugMask:(int)mask withReply:(id)reply
{
  replyCopy = reply;
  if (sub_100017718(mask))
  {
    v5 = [NSError errorWithDomain:NSPOSIXErrorDomain code:12 userInfo:0];
  }

  else
  {
    v5 = 0;
  }

  replyCopy[2](replyCopy, v5);
}

- (void)createKeybagForUserSession:(id)session withSessionUID:(int)d WithSecret:(id)secret secretSize:(unint64_t)size withGracePeriod:(int)period withOpaqeStuff:(id)stuff withReply:(id)reply
{
  sessionCopy = session;
  secretCopy = secret;
  stuffCopy = stuff;
  replyCopy = reply;
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
      replyCopy[2](replyCopy, v61[5]);
      goto LABEL_17;
    }

    if (size)
    {
      v29 = address;
      if ([(KBXPCService *)self retrievePasscodeFromFileHandle:secretCopy ofLength:size withbaseaddress:address])
      {
        sub_100011BE0("[KBXPCService createKeybagForUserSession:withSessionUID:WithSecret:secretSize:withGracePeriod:withOpaqeStuff:withReply:]", @"Failed to retrieve passcode info", v30, v31, v32, v33, v34, v35, v47);
        v36 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
        v37 = v61[5];
        v61[5] = v36;

        v38 = mach_task_self_;
        v39 = address;
        v40 = vm_page_size;
        if (vm_page_size >= size)
        {
          sizeCopy = size;
        }

        else
        {
          sizeCopy = vm_page_size;
        }

        memset_s(address, sizeCopy, 0, sizeCopy);
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
    v49 = sessionCopy;
    sizeCopy2 = size;
    v54 = v29;
    dCopy = d;
    periodCopy = period;
    v50 = stuffCopy;
    v51 = &v60;
    v52 = v57;
    dispatch_sync(v42, block);
    v43 = mach_task_self_;
    v44 = address;
    v45 = vm_page_size;
    if (vm_page_size >= size)
    {
      sizeCopy3 = size;
    }

    else
    {
      sizeCopy3 = vm_page_size;
    }

    memset_s(address, sizeCopy3, 0, sizeCopy3);
    vm_deallocate(v43, v44, v45);
    replyCopy[2](replyCopy, v61[5]);
  }

  else
  {
    v27 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
    v28 = v61[5];
    v61[5] = v27;

    if (replyCopy)
    {
      goto LABEL_5;
    }
  }

LABEL_17:
  _Block_object_dispose(v57, 8);
  _Block_object_dispose(&v60, 8);
}

- (void)loadKeybagForUserSession:(id)session withSessionID:(int)d withSecret:(id)secret secretSize:(unint64_t)size shouldSetGracePeriod:(BOOL)period withGracePeriod:(int)gracePeriod isInEarlyStar:(BOOL)star withReply:(id)self0
{
  sessionCopy = session;
  secretCopy = secret;
  replyCopy = reply;
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
      replyCopy[2](replyCopy, v62[5]);
      goto LABEL_17;
    }

    if (size)
    {
      v29 = address;
      if ([(KBXPCService *)self retrievePasscodeFromFileHandle:secretCopy ofLength:size withbaseaddress:address])
      {
        sub_100011BE0("[KBXPCService loadKeybagForUserSession:withSessionID:withSecret:secretSize:shouldSetGracePeriod:withGracePeriod:isInEarlyStar:withReply:]", @"Failed to retrieve passcode info", v30, v31, v32, v33, v34, v35, v47);
        v36 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
        v37 = v62[5];
        v62[5] = v36;

        v38 = mach_task_self_;
        v39 = address;
        v40 = vm_page_size;
        if (vm_page_size >= size)
        {
          sizeCopy = size;
        }

        else
        {
          sizeCopy = vm_page_size;
        }

        memset_s(address, sizeCopy, 0, sizeCopy);
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
    sizeCopy2 = size;
    v53 = v29;
    periodCopy = period;
    dCopy = d;
    gracePeriodCopy = gracePeriod;
    starCopy = star;
    v49 = sessionCopy;
    v50 = &v61;
    v51 = v58;
    dispatch_sync(v42, block);
    v43 = mach_task_self_;
    v44 = address;
    v45 = vm_page_size;
    if (vm_page_size >= size)
    {
      sizeCopy3 = size;
    }

    else
    {
      sizeCopy3 = vm_page_size;
    }

    memset_s(address, sizeCopy3, 0, sizeCopy3);
    vm_deallocate(v43, v44, v45);
    replyCopy[2](replyCopy, v62[5]);
  }

  else
  {
    v27 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
    v28 = v62[5];
    v62[5] = v27;

    if (replyCopy)
    {
      goto LABEL_5;
    }
  }

LABEL_17:
  _Block_object_dispose(v58, 8);
  _Block_object_dispose(&v61, 8);
}

- (void)unloadKeybagForUserSession:(int)session withReply:(id)reply
{
  replyCopy = reply;
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
    sessionCopy = session;
    v9[4] = &v11;
    dispatch_sync(qword_10003D2A0, v9);
LABEL_4:
    replyCopy[2](replyCopy, v12[5]);
    goto LABEL_5;
  }

  v7 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
  v8 = v12[5];
  v12[5] = v7;

  if (replyCopy)
  {
    goto LABEL_4;
  }

LABEL_5:
  _Block_object_dispose(&v11, 8);
}

- (void)setVolumeToPersona:(id)persona withPersonaString:(id)string withReply:(id)reply
{
  personaCopy = persona;
  stringCopy = string;
  replyCopy = reply;
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
    v15 = personaCopy;
    v18 = &v19;
    v16 = stringCopy;
    v17 = replyCopy;
    dispatch_sync(v11, v14);
  }

  else
  {
    v12 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
    v13 = v20[5];
    v20[5] = v12;

    if (replyCopy)
    {
      (*(replyCopy + 2))(replyCopy, v20[5]);
    }
  }

  _Block_object_dispose(&v19, 8);
}

- (void)createSyncBagForUserSession:(id)session withSessionUID:(int)d withReply:(id)reply
{
  sessionCopy = session;
  replyCopy = reply;
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
    dCopy = d;
    v14 = sessionCopy;
    v15 = &v17;
    dispatch_sync(v10, block);
    replyCopy[2](replyCopy, v18[5]);
  }

  else
  {
    v11 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
    v12 = v18[5];
    v18[5] = v11;

    if (replyCopy)
    {
      replyCopy[2](replyCopy, v18[5]);
    }
  }

  _Block_object_dispose(&v17, 8);
}

- (void)loadSyncBagForUserSession:(id)session withSessionUID:(int)d withReply:(id)reply
{
  sessionCopy = session;
  replyCopy = reply;
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
    dCopy = d;
    v14 = sessionCopy;
    v15 = &v17;
    dispatch_sync(v10, block);
    replyCopy[2](replyCopy, v18[5]);
  }

  else
  {
    v11 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
    v12 = v18[5];
    v18[5] = v11;

    if (replyCopy)
    {
      replyCopy[2](replyCopy, v18[5]);
    }
  }

  _Block_object_dispose(&v17, 8);
}

- (void)verifySyncBagForUserSession:(id)session withSessionUID:(int)d withReply:(id)reply
{
  sessionCopy = session;
  replyCopy = reply;
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
    dCopy = d;
    v14 = sessionCopy;
    v15 = &v17;
    dispatch_sync(v10, block);
    replyCopy[2](replyCopy, v18[5]);
  }

  else
  {
    v11 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
    v12 = v18[5];
    v18[5] = v11;

    if (replyCopy)
    {
      replyCopy[2](replyCopy, v18[5]);
    }
  }

  _Block_object_dispose(&v17, 8);
}

- (void)unloadSyncBagForUserSession:(id)session withSessionUID:(int)d withReply:(id)reply
{
  sessionCopy = session;
  replyCopy = reply;
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
    dCopy = d;
    v14 = sessionCopy;
    v15 = &v17;
    dispatch_sync(v10, block);
    replyCopy[2](replyCopy, v18[5]);
  }

  else
  {
    v11 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
    v12 = v18[5];
    v18[5] = v11;

    if (replyCopy)
    {
      replyCopy[2](replyCopy, v18[5]);
    }
  }

  _Block_object_dispose(&v17, 8);
}

- (void)removeSyncBagForUserSession:(id)session withSessionUID:(int)d withReply:(id)reply
{
  sessionCopy = session;
  replyCopy = reply;
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
    dCopy = d;
    v14 = sessionCopy;
    v15 = &v17;
    dispatch_sync(v10, block);
    replyCopy[2](replyCopy, v18[5]);
  }

  else
  {
    v11 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
    v12 = v18[5];
    v18[5] = v11;

    if (replyCopy)
    {
      replyCopy[2](replyCopy, v18[5]);
    }
  }

  _Block_object_dispose(&v17, 8);
}

- (void)createPersonaKeyForUserSession:(id)session forPath:(id)path withUID:(unsigned int)d WithSecret:(id)secret secretSize:(unint64_t)size secretIsACM:(BOOL)m withReply:(id)reply
{
  sessionCopy = session;
  pathCopy = path;
  secretCopy = secret;
  replyCopy = reply;
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
      replyCopy[2](replyCopy, v61[5]);
      goto LABEL_17;
    }

    if (size)
    {
      v29 = address;
      if ([(KBXPCService *)self retrievePasscodeFromFileHandle:secretCopy ofLength:size withbaseaddress:address])
      {
        sub_100011BE0("[KBXPCService createPersonaKeyForUserSession:forPath:withUID:WithSecret:secretSize:secretIsACM:withReply:]", @"Failed to passcode info", v30, v31, v32, v33, v34, v35, v47);
        v36 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
        v37 = v61[5];
        v61[5] = v36;

        v38 = mach_task_self_;
        v39 = address;
        v40 = vm_page_size;
        if (vm_page_size >= size)
        {
          sizeCopy = size;
        }

        else
        {
          sizeCopy = vm_page_size;
        }

        memset_s(address, sizeCopy, 0, sizeCopy);
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
    dCopy = d;
    v49 = pathCopy;
    sizeCopy2 = size;
    v54 = v29;
    mCopy = m;
    v50 = sessionCopy;
    v51 = &v60;
    v52 = v57;
    dispatch_sync(v42, block);
    v43 = mach_task_self_;
    v44 = address;
    v45 = vm_page_size;
    if (vm_page_size >= size)
    {
      sizeCopy3 = size;
    }

    else
    {
      sizeCopy3 = vm_page_size;
    }

    memset_s(address, sizeCopy3, 0, sizeCopy3);
    vm_deallocate(v43, v44, v45);
    replyCopy[2](replyCopy, v61[5]);
  }

  else
  {
    v27 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
    v28 = v61[5];
    v61[5] = v27;

    if (replyCopy)
    {
      goto LABEL_5;
    }
  }

LABEL_17:
  _Block_object_dispose(v57, 8);
  _Block_object_dispose(&v60, 8);
}

- (void)removePersonaKeyForUserSession:(id)session withUID:(unsigned int)d withVolumeUUIDString:(id)string withReply:(id)reply
{
  sessionCopy = session;
  stringCopy = string;
  replyCopy = reply;
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
    dCopy = d;
    v17 = sessionCopy;
    v18 = stringCopy;
    v19 = &v21;
    dispatch_sync(v13, v16);
    replyCopy[2](replyCopy, v22[5]);
  }

  else
  {
    v14 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
    v15 = v22[5];
    v22[5] = v14;

    if (replyCopy)
    {
      replyCopy[2](replyCopy, v22[5]);
    }
  }

  _Block_object_dispose(&v21, 8);
}

@end