@interface UMSyncService
+ (id)sharedService;
- (BOOL)remoteProcessHasBooleanEntitlement:(id)a3;
- (BOOL)retrievePasscodeFromFileHandle:(id)a3 ofLength:(unint64_t)a4 withbaseaddress:(char *)a5;
- (id)externalizeUserDictionary:(id)a3;
- (id)remoteServiceName;
- (int)asidForClient:(id)a3 withAuid:(unsigned int *)a4 withPid:(int)a5;
- (void)MKBUserSessionSetInternalTest:(BOOL)a3 withReply:(id)a4;
- (void)addSyncServiceSource:(id)a3 toUserSession:(int)a4 withReply:(id)a5;
- (void)bundleIdentifiersForPersona:(id)a3 completionHandler:(id)a4;
- (void)changeBootstrapTokenWithOldSecret:(id)a3 oldSize:(unint64_t)a4 withNewSecret:(id)a5 newSize:(unint64_t)a6 withReply:(id)a7;
- (void)changeBootstrapTokenWithOldSecret:(id)a3 withNewSecret:(id)a4 withReply:(id)a5;
- (void)checkBootstrapTokenExistsWithReply:(id)a3;
- (void)clearSyncBubbleUserswithReply:(id)a3;
- (void)configureLoginUIWithUserSessionCount:(int)a3 reply:(id)a4;
- (void)createBootstrapTokenWithSecret:(id)a3 secretSize:(unint64_t)a4 withDeviceSecretHandle:(id)a5 deviceSecretSize:(unint64_t)a6 withReply:(id)a7;
- (void)createBootstrapTokenWithSecret:(id)a3 withDevicePasscode:(id)a4 withReply:(id)a5;
- (void)createUserSession:(id)a3 withSecret:(id)a4 oldSize:(unint64_t)a5 withOpaqueData:(id)a6 reply:(id)a7;
- (void)currentSyncBubbleIDwithReply:(id)a3;
- (void)dataMigrationSetup:(id)a3 withSecret:(id)a4 oldSize:(unint64_t)a5 reply:(id)a6;
- (void)deleteBootstrapTokenWithSecret:(id)a3 secretSize:(unint64_t)a4 withDeviceSecretHandle:(id)a5 deviceSecretSize:(unint64_t)a6 withReply:(id)a7;
- (void)deleteBootstrapTokenWithSecret:(id)a3 withDevicePasscode:(id)a4 withReply:(id)a5;
- (void)deleteUserSessionBlobwithReply:(id)a3;
- (void)deleteUserSessionSecureBlobwithReply:(id)a3;
- (void)fetchAllUsersPersonaListforPid:(int)a3 withCompletionHandler:(id)a4;
- (void)fetchAsidMapforPid:(int)a3 withCompletionHandler:(id)a4;
- (void)fetchPersonaGenerationNumberWithCompletionHandler:(id)a3;
- (void)foregroundUserSessionAttributesWithReply:(id)a3;
- (void)getUserSessionAttributes:(id)a3 reply:(id)a4;
- (void)grantSandboxExtensionForPersonaWithUniqueString:(id)a3 completionHandler:(id)a4;
- (void)isLoginSessionwithReply:(id)a3;
- (void)limitNumberOfUserSessions:(int)a3 withReply:(id)a4;
- (void)listAllUserSessionIDsWithAReply:(id)a3;
- (void)listSyncBubbleUserswithReply:(id)a3;
- (void)listSyncServiceSourcesForUserSession:(id)a3 withReply:(id)a4;
- (void)loadUserSession:(id)a3 withSecret:(id)a4 oldSize:(unint64_t)a5 reply:(id)a6;
- (void)migrateGuestUserVolume:(id)a3 withReply:(id)a4;
- (void)migrateSharedAndPrimaryUserVolumeWithReply:(id)a3;
- (void)mountUserSessionVolumeforID:(int)a3 withReply:(id)a4;
- (void)personaLoginWithPid:(int)a3 WithUserODuuid:(id)a4 withUid:(unsigned int)a5 completionHandler:(id)a6;
- (void)personaLogoutWithPid:(int)a3 WithUserODuuid:(id)a4 withUid:(unsigned int)a5 completionHandler:(id)a6;
- (void)removeSyncServiceSource:(id)a3 toUserSession:(int)a4 withReply:(id)a5;
- (void)removeUserSession:(id)a3 reply:(id)a4;
- (void)replacePersonaMachPortVoucher:(id)a3 withAccountID:(id)a4 generationSet:(BOOL)a5 forPid:(int)a6 withReply:(id)a7;
- (void)retrieveUserSessionBlobwithReply:(id)a3;
- (void)retrieveUserSessionSecureBackupBlobwithReply:(id)a3;
- (void)setBundlesIdentifiers:(id)a3 forPersona:(id)a4 completionHandler:(id)a5;
- (void)setUserKeybagOpaqueData:(id)a3 keybagBlob:(id)a4 withReply:(id)a5;
- (void)setUserSessionAttributes:(id)a3 reply:(id)a4;
- (void)setUserSessionSecureBackupBlob:(id)a3 withReply:(id)a4;
- (void)startUserSyncBubble:(int)a3 withReply:(id)a4;
- (void)stoptUserSyncBubble:(int)a3 withReply:(id)a4;
- (void)switchBlockTasksInfoWithReply:(id)a3;
- (void)switchToLoginUIUserSessionWithReply:(id)a3;
- (void)switchToUserSession:(id)a3 withOpaqueData:(id)a4 reply:(id)a5;
- (void)unloadUserSession:(id)a3 reply:(id)a4;
- (void)unmountUserSessionVolumeforID:(int)a3 withReply:(id)a4;
- (void)userKeybagOpaqueData:(id)a3 KeybagBlobwithReply:(id)a4;
- (void)userSessionDeviceConfigurationInfo:(int)a3 withReply:(id)a4;
- (void)userSessionLRUInfoWithReply:(id)a3;
- (void)validateBootstrapTokenWithSecret:(id)a3 secretSize:(unint64_t)a4 withReply:(id)a5;
- (void)validateBootstrapTokenWithSecret:(id)a3 withReply:(id)a4;
@end

@implementation UMSyncService

+ (id)sharedService
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100057D48;
  block[3] = &unk_1000DCE88;
  block[4] = a1;
  if (qword_1000EB408 != -1)
  {
    dispatch_once(&qword_1000EB408, block);
  }

  v2 = qword_1000EB400;

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
LABEL_16:
    v9 = 1;
    goto LABEL_17;
  }

  if (read([v7 fileDescriptor], a5, a4) != a4)
  {
    if (qword_1000EB428 != -1)
    {
      sub_100095F8C();
    }

    v10 = qword_1000EB420;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = sub_1000011A8(1);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v12 = v11;
      }

      else
      {
        v12 = v11 & 0xFFFFFFFE;
      }

      if (v12)
      {
        v13 = _os_log_send_and_compose_impl();
        v14 = v13;
        if (v13)
        {
          sub_100002A8C(v13);
        }
      }

      else
      {
        v14 = 0;
      }

      free(v14);
    }

    goto LABEL_16;
  }

  v9 = 0;
LABEL_17:

  return v9;
}

- (id)externalizeUserDictionary:(id)a3
{
  v3 = [a3 mutableCopy];
  v4 = v3;
  if (v3)
  {
    [v3 removeObjectForKey:kUMUserSessionKeybagOpaqueDataKey];
    v5 = [NSDictionary dictionaryWithDictionary:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)loadUserSession:(id)a3 withSecret:(id)a4 oldSize:(unint64_t)a5 reply:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v75 = 0;
  v76 = &v75;
  v77 = 0x3032000000;
  v78 = sub_100058864;
  v79 = sub_100058874;
  v80 = 0;
  v69 = 0;
  v70 = &v69;
  v71 = 0x3032000000;
  v72 = sub_100058864;
  v73 = sub_100058874;
  v74 = 0;
  address = 0;
  if (qword_1000EB428 != -1)
  {
    sub_100095FA0();
  }

  v13 = qword_1000EB420;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v67 = 0;
    v14 = sub_1000011A8(1);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v14;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFE;
    }

    if (v15)
    {
      v66 = 0;
      v16 = _os_log_send_and_compose_impl();
      v17 = v16;
      if (v16)
      {
        sub_100002A8C(v16);
      }
    }

    else
    {
      v17 = 0;
    }

    free(v17);
  }

  if (![(UMSyncService *)self remoteProcessHasBooleanEntitlement:@"com.apple.mkb.usersession.load"])
  {
    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v23 = qword_1000EB420;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v67 = 0;
      v24 = sub_1000011A8(1);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v25 = v24;
      }

      else
      {
        v25 = v24 & 0xFFFFFFFE;
      }

      if (v25)
      {
        v66 = 0;
        v26 = _os_log_send_and_compose_impl();
        v27 = v26;
        if (v26)
        {
          sub_100002A8C(v26);
        }
      }

      else
      {
        v27 = 0;
      }

      free(v27);
    }

    v34 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
LABEL_74:
    v50 = v70[5];
    v70[5] = v34;

    if (v12)
    {
LABEL_88:
      v12[2](v12, 0, v70[5]);
      goto LABEL_89;
    }

    goto LABEL_89;
  }

  if (vm_page_size < a5)
  {
    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v18 = qword_1000EB420;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v67 = 0;
      v19 = sub_1000011A8(1);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v20 = v19;
      }

      else
      {
        v20 = v19 & 0xFFFFFFFE;
      }

      if (v20)
      {
        v66 = 0;
        v21 = _os_log_send_and_compose_impl();
        v22 = v21;
        if (v21)
        {
          sub_100002A8C(v21);
        }
      }

      else
      {
        v22 = 0;
      }

      free(v22);
    }

    v34 = [NSError errorWithDomain:NSPOSIXErrorDomain code:7 userInfo:0];
    goto LABEL_74;
  }

  if (a5)
  {
    if (vm_allocate(mach_task_self_, &address, vm_page_size, -268435455))
    {
      if (qword_1000EB428 != -1)
      {
        sub_100095FA0();
      }

      v28 = qword_1000EB420;
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v67 = 0;
        v29 = sub_1000011A8(1);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          v30 = v29;
        }

        else
        {
          v30 = v29 & 0xFFFFFFFE;
        }

        if (v30)
        {
          v66 = 0;
          v31 = _os_log_send_and_compose_impl();
          v32 = v31;
          if (v31)
          {
            sub_100002A8C(v31);
          }
        }

        else
        {
          v32 = 0;
        }

        free(v32);
      }

      v51 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
      v52 = v70[5];
      v70[5] = v51;

      address = 0;
      goto LABEL_88;
    }

    v33 = address;
    if ([(UMSyncService *)self retrievePasscodeFromFileHandle:v11 ofLength:a5 withbaseaddress:address])
    {
      if (qword_1000EB428 != -1)
      {
        sub_100095FA0();
      }

      v35 = qword_1000EB420;
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        v67 = 0;
        v36 = sub_1000011A8(1);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          v37 = v36;
        }

        else
        {
          v37 = v36 & 0xFFFFFFFE;
        }

        if (v37)
        {
          v66 = 0;
          v38 = _os_log_send_and_compose_impl();
          v39 = v38;
          if (v38)
          {
            sub_100002A8C(v38);
          }
        }

        else
        {
          v39 = 0;
        }

        free(v39);
      }

      v53 = [NSError errorWithDomain:NSPOSIXErrorDomain code:5 userInfo:0];
      v54 = v70[5];
      v70[5] = v53;

      v55 = mach_task_self_;
      v56 = address;
      v57 = vm_page_size;
      if (vm_page_size >= a5)
      {
        v58 = a5;
      }

      else
      {
        v58 = vm_page_size;
      }

      memset_s(address, v58, 0, v58);
      vm_deallocate(v55, v56, v57);
      goto LABEL_88;
    }
  }

  else
  {
    v33 = 0;
  }

  v40 = qword_1000EB610;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005887C;
  block[3] = &unk_1000DD8E8;
  v64 = v33;
  v65 = a5;
  v60 = v10;
  v61 = self;
  v62 = &v75;
  v63 = &v69;
  dispatch_sync(v40, block);
  v41 = address;
  if (address)
  {
    v42 = mach_task_self_;
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
    vm_deallocate(v42, v41, v43);
  }

  v12[2](v12, v76[5], v70[5]);
  if (qword_1000EB428 != -1)
  {
    sub_100095FA0();
  }

  v45 = qword_1000EB420;
  if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
  {
    v67 = 0;
    v46 = sub_1000011A8(1);
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      v47 = v46;
    }

    else
    {
      v47 = v46 & 0xFFFFFFFE;
    }

    if (v47)
    {
      v66 = 0;
      v48 = _os_log_send_and_compose_impl();
      v49 = v48;
      if (v48)
      {
        sub_100002A8C(v48);
      }
    }

    else
    {
      v49 = 0;
    }

    free(v49);
  }

LABEL_89:
  _Block_object_dispose(&v69, 8);

  _Block_object_dispose(&v75, 8);
}

- (void)unloadUserSession:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = sub_100058864;
  v32 = sub_100058874;
  v33 = 0;
  if (qword_1000EB428 != -1)
  {
    sub_100095FA0();
  }

  v8 = qword_1000EB420;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v27 = 0;
    v9 = sub_1000011A8(1);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v9;
    }

    else
    {
      v10 = v9 & 0xFFFFFFFE;
    }

    if (v10)
    {
      v26 = 0;
      v11 = _os_log_send_and_compose_impl();
      v12 = v11;
      if (v11)
      {
        sub_100002A8C(v11);
      }
    }

    else
    {
      v12 = 0;
    }

    free(v12);
  }

  if ([(UMSyncService *)self remoteProcessHasBooleanEntitlement:@"com.apple.mkb.usersession.load"])
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100058F30;
    block[3] = &unk_1000DD910;
    block[4] = &v28;
    dispatch_sync(qword_1000EB610, block);
    v7[2](v7, v29[5]);
    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v13 = qword_1000EB420;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v27 = 0;
      v14 = sub_1000011A8(1);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v15 = v14;
      }

      else
      {
        v15 = v14 & 0xFFFFFFFE;
      }

      if (v15)
      {
        v26 = 0;
        v16 = _os_log_send_and_compose_impl();
        v17 = v16;
        if (v16)
        {
          sub_100002A8C(v16);
        }
      }

      else
      {
        v17 = 0;
      }

      free(v17);
    }
  }

  else
  {
    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v18 = qword_1000EB420;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v27 = 0;
      v19 = sub_1000011A8(1);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v20 = v19;
      }

      else
      {
        v20 = v19 & 0xFFFFFFFE;
      }

      if (v20)
      {
        v26 = 0;
        v21 = _os_log_send_and_compose_impl();
        v22 = v21;
        if (v21)
        {
          sub_100002A8C(v21);
        }
      }

      else
      {
        v22 = 0;
      }

      free(v22);
    }

    v23 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
    v24 = v29[5];
    v29[5] = v23;

    if (v7)
    {
      v7[2](v7, v29[5]);
    }
  }

  _Block_object_dispose(&v28, 8);
}

- (void)createUserSession:(id)a3 withSecret:(id)a4 oldSize:(unint64_t)a5 withOpaqueData:(id)a6 reply:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v82 = 0;
  v83 = &v82;
  v84 = 0x3032000000;
  v85 = sub_100058864;
  v86 = sub_100058874;
  v87 = 0;
  v76 = 0;
  v77 = &v76;
  v78 = 0x3032000000;
  v79 = sub_100058864;
  v80 = sub_100058874;
  v81 = 0;
  address = 0;
  if (qword_1000EB428 != -1)
  {
    sub_100095FA0();
  }

  v16 = qword_1000EB420;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v74 = 0;
    v17 = sub_1000011A8(1);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v18 = v17;
    }

    else
    {
      v18 = v17 & 0xFFFFFFFE;
    }

    if (v18)
    {
      v73 = 0;
      v19 = _os_log_send_and_compose_impl();
      v20 = v19;
      if (v19)
      {
        sub_100002A8C(v19);
      }
    }

    else
    {
      v20 = 0;
    }

    free(v20);
  }

  if ([(UMSyncService *)self remoteProcessHasBooleanEntitlement:@"com.apple.mkb.usersession.load"])
  {
    if (vm_page_size >= a5)
    {
      if (a5)
      {
        if (qword_1000EB428 != -1)
        {
          sub_100095FA0();
        }

        v33 = qword_1000EB420;
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          v74 = 0;
          v34 = sub_1000011A8(1);
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            v35 = v34;
          }

          else
          {
            v35 = v34 & 0xFFFFFFFE;
          }

          if (v35)
          {
            v73 = 0;
            v36 = _os_log_send_and_compose_impl();
            v37 = v36;
            if (v36)
            {
              sub_100002A8C(v36);
            }
          }

          else
          {
            v37 = 0;
          }

          free(v37);
        }

        if (vm_allocate(mach_task_self_, &address, vm_page_size, -268435455))
        {
          if (qword_1000EB428 != -1)
          {
            sub_100095FA0();
          }

          v45 = qword_1000EB420;
          if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
          {
            v74 = 0;
            v46 = sub_1000011A8(1);
            if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
            {
              v47 = v46;
            }

            else
            {
              v47 = v46 & 0xFFFFFFFE;
            }

            if (v47)
            {
              v73 = 0;
              v48 = _os_log_send_and_compose_impl();
              v49 = v48;
              if (v48)
              {
                sub_100002A8C(v48);
              }
            }

            else
            {
              v49 = 0;
            }

            free(v49);
          }

          v55 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
          v56 = v77[5];
          v77[5] = v55;

          address = 0;
          goto LABEL_110;
        }

        if ([(UMSyncService *)self retrievePasscodeFromFileHandle:v13 ofLength:a5 withbaseaddress:address])
        {
          if (qword_1000EB428 != -1)
          {
            sub_100095FA0();
          }

          v50 = qword_1000EB420;
          if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
          {
            v74 = 0;
            v51 = sub_1000011A8(1);
            if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
            {
              v52 = v51;
            }

            else
            {
              v52 = v51 & 0xFFFFFFFE;
            }

            if (v52)
            {
              v73 = 0;
              v53 = _os_log_send_and_compose_impl();
              v54 = v53;
              if (v53)
              {
                sub_100002A8C(v53);
              }
            }

            else
            {
              v54 = 0;
            }

            free(v54);
          }

          v66 = [NSError errorWithDomain:NSPOSIXErrorDomain code:5 userInfo:0];
          v67 = v77[5];
          v77[5] = v66;

          v68 = mach_task_self_;
          v69 = address;
          v70 = vm_page_size;
          if (vm_page_size >= a5)
          {
            v71 = a5;
          }

          else
          {
            v71 = vm_page_size;
          }

          memset_s(address, v71, 0, v71);
          vm_deallocate(v68, v69, v70);
          goto LABEL_110;
        }
      }

      else
      {
        if (qword_1000EB428 != -1)
        {
          sub_100095FA0();
        }

        v38 = qword_1000EB420;
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          v74 = 0;
          v39 = sub_1000011A8(1);
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            v40 = v39;
          }

          else
          {
            v40 = v39 & 0xFFFFFFFE;
          }

          if (v40)
          {
            v73 = 0;
            v41 = _os_log_send_and_compose_impl();
            v42 = v41;
            if (v41)
            {
              sub_100002A8C(v41);
            }
          }

          else
          {
            v42 = 0;
          }

          free(v42);
        }
      }

      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100059A58;
      block[3] = &unk_1000DD458;
      block[4] = &v82;
      block[5] = &v76;
      dispatch_sync(qword_1000EB610, block);
      v57 = address;
      if (address)
      {
        v58 = mach_task_self_;
        v59 = vm_page_size;
        if (vm_page_size >= a5)
        {
          v60 = a5;
        }

        else
        {
          v60 = vm_page_size;
        }

        memset_s(address, v60, 0, v60);
        vm_deallocate(v58, v57, v59);
      }

      v15[2](v15, v83[5], v77[5]);
      if (qword_1000EB428 != -1)
      {
        sub_100095FA0();
      }

      v61 = qword_1000EB420;
      if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
      {
        v74 = 0;
        v62 = sub_1000011A8(1);
        if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
        {
          v63 = v62;
        }

        else
        {
          v63 = v62 & 0xFFFFFFFE;
        }

        if (v63)
        {
          v73 = 0;
          v64 = _os_log_send_and_compose_impl();
          v65 = v64;
          if (v64)
          {
            sub_100002A8C(v64);
          }
        }

        else
        {
          v65 = 0;
        }

        free(v65);
      }
    }

    else
    {
      if (qword_1000EB428 != -1)
      {
        sub_100095FA0();
      }

      v21 = qword_1000EB420;
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v74 = 0;
        v22 = sub_1000011A8(1);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v23 = v22;
        }

        else
        {
          v23 = v22 & 0xFFFFFFFE;
        }

        if (v23)
        {
          v73 = 0;
          v24 = _os_log_send_and_compose_impl();
          v25 = v24;
          if (v24)
          {
            sub_100002A8C(v24);
          }
        }

        else
        {
          v25 = 0;
        }

        free(v25);
      }

      v43 = [NSError errorWithDomain:NSPOSIXErrorDomain code:7 userInfo:0];
      v44 = v77[5];
      v77[5] = v43;

      if (v15)
      {
LABEL_110:
        v15[2](v15, 0, v77[5]);
      }
    }
  }

  else
  {
    v26 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
    v27 = v77[5];
    v77[5] = v26;

    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v28 = qword_1000EB420;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v74 = 0;
      v29 = sub_1000011A8(1);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v30 = v29;
      }

      else
      {
        v30 = v29 & 0xFFFFFFFE;
      }

      if (v30)
      {
        v73 = 0;
        v31 = _os_log_send_and_compose_impl();
        v32 = v31;
        if (v31)
        {
          sub_100002A8C(v31);
        }
      }

      else
      {
        v32 = 0;
      }

      free(v32);
    }

    if (v15)
    {
      goto LABEL_110;
    }
  }

  _Block_object_dispose(&v76, 8);

  _Block_object_dispose(&v82, 8);
}

- (void)dataMigrationSetup:(id)a3 withSecret:(id)a4 oldSize:(unint64_t)a5 reply:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v76 = 0;
  v77 = &v76;
  v78 = 0x3032000000;
  v79 = sub_100058864;
  v80 = sub_100058874;
  v81 = 0;
  address = 0;
  if (qword_1000EB428 != -1)
  {
    sub_100095FA0();
  }

  v13 = qword_1000EB420;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v74 = 0;
    v14 = sub_1000011A8(1);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v14;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFE;
    }

    if (v15)
    {
      v73 = 0;
      v16 = _os_log_send_and_compose_impl();
      v17 = v16;
      if (v16)
      {
        sub_100002A8C(v16);
      }
    }

    else
    {
      v17 = 0;
    }

    free(v17);
  }

  if ([(UMSyncService *)self remoteProcessHasBooleanEntitlement:@"com.apple.mkb.usersession.migration"])
  {
    if (vm_page_size >= a5)
    {
      if (a5)
      {
        if (qword_1000EB428 != -1)
        {
          sub_100095FA0();
        }

        v30 = qword_1000EB420;
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          v74 = 0;
          v31 = sub_1000011A8(1);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            v32 = v31;
          }

          else
          {
            v32 = v31 & 0xFFFFFFFE;
          }

          if (v32)
          {
            v73 = 0;
            v33 = _os_log_send_and_compose_impl();
            v34 = v33;
            if (v33)
            {
              sub_100002A8C(v33);
            }
          }

          else
          {
            v34 = 0;
          }

          free(v34);
        }

        if (vm_allocate(mach_task_self_, &address, vm_page_size, -268435455))
        {
          if (qword_1000EB428 != -1)
          {
            sub_100095FA0();
          }

          v42 = qword_1000EB420;
          if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
          {
            v74 = 0;
            v43 = sub_1000011A8(1);
            if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
            {
              v44 = v43;
            }

            else
            {
              v44 = v43 & 0xFFFFFFFE;
            }

            if (v44)
            {
              v73 = 0;
              v45 = _os_log_send_and_compose_impl();
              v46 = v45;
              if (v45)
              {
                sub_100002A8C(v45);
              }
            }

            else
            {
              v46 = 0;
            }

            free(v46);
          }

          v53 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
          v54 = v77[5];
          v77[5] = v53;

          address = 0;
          goto LABEL_105;
        }

        v47 = address;
        if ([(UMSyncService *)self retrievePasscodeFromFileHandle:v11 ofLength:a5 withbaseaddress:address])
        {
          if (qword_1000EB428 != -1)
          {
            sub_100095FA0();
          }

          v48 = qword_1000EB420;
          if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
          {
            v74 = 0;
            v49 = sub_1000011A8(1);
            if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
            {
              v50 = v49;
            }

            else
            {
              v50 = v49 & 0xFFFFFFFE;
            }

            if (v50)
            {
              v73 = 0;
              v51 = _os_log_send_and_compose_impl();
              v52 = v51;
              if (v51)
              {
                sub_100002A8C(v51);
              }
            }

            else
            {
              v52 = 0;
            }

            free(v52);
          }

          v61 = [NSError errorWithDomain:NSPOSIXErrorDomain code:5 userInfo:0];
          v62 = v77[5];
          v77[5] = v61;

          v63 = mach_task_self_;
          v64 = address;
          v65 = vm_page_size;
          if (vm_page_size >= a5)
          {
            v66 = a5;
          }

          else
          {
            v66 = vm_page_size;
          }

          memset_s(address, v66, 0, v66);
          vm_deallocate(v63, v64, v65);
          goto LABEL_105;
        }
      }

      else
      {
        if (qword_1000EB428 != -1)
        {
          sub_100095FA0();
        }

        v35 = qword_1000EB420;
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          v74 = 0;
          v36 = sub_1000011A8(1);
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            v37 = v36;
          }

          else
          {
            v37 = v36 & 0xFFFFFFFE;
          }

          if (v37)
          {
            v73 = 0;
            v38 = _os_log_send_and_compose_impl();
            v39 = v38;
            if (v38)
            {
              sub_100002A8C(v38);
            }
          }

          else
          {
            v39 = 0;
          }

          free(v39);
        }

        v47 = 0;
      }

      v55 = qword_1000EB610;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10005A60C;
      block[3] = &unk_1000DD938;
      v70 = v47;
      v71 = a5;
      v68 = v10;
      v69 = &v76;
      v72 = address;
      dispatch_sync(v55, block);
      v12[2](v12, v77[5]);
      if (qword_1000EB428 != -1)
      {
        sub_100095FA0();
      }

      v56 = qword_1000EB420;
      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
      {
        v74 = 0;
        v57 = sub_1000011A8(1);
        if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
        {
          v58 = v57;
        }

        else
        {
          v58 = v57 & 0xFFFFFFFE;
        }

        if (v58)
        {
          v73 = 0;
          v59 = _os_log_send_and_compose_impl();
          v60 = v59;
          if (v59)
          {
            sub_100002A8C(v59);
          }
        }

        else
        {
          v60 = 0;
        }

        free(v60);
      }
    }

    else
    {
      if (qword_1000EB428 != -1)
      {
        sub_100095FA0();
      }

      v18 = qword_1000EB420;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v74 = 0;
        v19 = sub_1000011A8(1);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v20 = v19;
        }

        else
        {
          v20 = v19 & 0xFFFFFFFE;
        }

        if (v20)
        {
          v73 = 0;
          v21 = _os_log_send_and_compose_impl();
          v22 = v21;
          if (v21)
          {
            sub_100002A8C(v21);
          }
        }

        else
        {
          v22 = 0;
        }

        free(v22);
      }

      v40 = [NSError errorWithDomain:NSPOSIXErrorDomain code:7 userInfo:0];
      v41 = v77[5];
      v77[5] = v40;

      if (v12)
      {
LABEL_105:
        v12[2](v12, v77[5]);
      }
    }
  }

  else
  {
    v23 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
    v24 = v77[5];
    v77[5] = v23;

    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v25 = qword_1000EB420;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v74 = 0;
      v26 = sub_1000011A8(1);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v27 = v26;
      }

      else
      {
        v27 = v26 & 0xFFFFFFFE;
      }

      if (v27)
      {
        v73 = 0;
        v28 = _os_log_send_and_compose_impl();
        v29 = v28;
        if (v28)
        {
          sub_100002A8C(v28);
        }
      }

      else
      {
        v29 = 0;
      }

      free(v29);
    }

    if (v12)
    {
      goto LABEL_105;
    }
  }

  _Block_object_dispose(&v76, 8);
}

- (void)migrateSharedAndPrimaryUserVolumeWithReply:(id)a3
{
  v4 = a3;
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = sub_100058864;
  v44 = sub_100058874;
  v45 = 0;
  if (qword_1000EB428 != -1)
  {
    sub_100095FA0();
  }

  v5 = qword_1000EB420;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v36 = 0;
    v6 = sub_1000011A8(1);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFE;
    }

    if (v7)
    {
      LOWORD(v32) = 0;
      v8 = _os_log_send_and_compose_impl();
      v9 = v8;
      if (v8)
      {
        sub_100002A8C(v8);
      }
    }

    else
    {
      v9 = 0;
    }

    free(v9);
  }

  if ([(UMSyncService *)self remoteProcessHasBooleanEntitlement:@"com.apple.mkb.usersession.migration"])
  {
    v36 = 0;
    v37 = &v36;
    v38 = 0x2020000000;
    v39 = 0;
    v32 = 0;
    v33 = &v32;
    v34 = 0x2020000000;
    v35 = 0;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10005AC6C;
    block[3] = &unk_1000DD960;
    block[4] = &v36;
    block[5] = &v32;
    block[6] = &v40;
    dispatch_sync(qword_1000EB610, block);
    if (v33[3])
    {
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_10005B0F0;
      v28[3] = &unk_1000DD458;
      v28[4] = &v36;
      v28[5] = &v40;
      dispatch_sync(qword_1000EB628, v28);
    }

    else
    {
      if (qword_1000EB428 != -1)
      {
        sub_100095FA0();
      }

      v17 = qword_1000EB420;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v30 = 0;
        v18 = sub_1000011A8(1);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v19 = v18;
        }

        else
        {
          v19 = v18 & 0xFFFFFFFE;
        }

        if (v19)
        {
          v29 = 0;
          v20 = _os_log_send_and_compose_impl();
          v21 = v20;
          if (v20)
          {
            sub_100002A8C(v20);
          }
        }

        else
        {
          v21 = 0;
        }

        free(v21);
      }
    }

    if (*(v33 + 24) == 1)
    {
      v22 = v37[3];
      if (v22)
      {
        CFRelease(v22);
        v37[3] = 0;
      }
    }

    v4[2](v4, v41[5]);
    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v23 = qword_1000EB420;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v30 = 0;
      v24 = sub_1000011A8(1);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v25 = v24;
      }

      else
      {
        v25 = v24 & 0xFFFFFFFE;
      }

      if (v25)
      {
        v29 = 0;
        v26 = _os_log_send_and_compose_impl();
        v27 = v26;
        if (v26)
        {
          sub_100002A8C(v26);
        }
      }

      else
      {
        v27 = 0;
      }

      free(v27);
    }

    _Block_object_dispose(&v32, 8);
    _Block_object_dispose(&v36, 8);
  }

  else
  {
    v10 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
    v11 = v41[5];
    v41[5] = v10;

    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v12 = qword_1000EB420;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v36 = 0;
      v13 = sub_1000011A8(1);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v14 = v13;
      }

      else
      {
        v14 = v13 & 0xFFFFFFFE;
      }

      if (v14)
      {
        LOWORD(v32) = 0;
        v15 = _os_log_send_and_compose_impl();
        v16 = v15;
        if (v15)
        {
          sub_100002A8C(v15);
        }
      }

      else
      {
        v16 = 0;
      }

      free(v16);
    }

    if (v4)
    {
      v4[2](v4, v41[5]);
    }
  }

  _Block_object_dispose(&v40, 8);
}

- (void)migrateGuestUserVolume:(id)a3 withReply:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (qword_1000EB428 != -1)
  {
    sub_100095F8C();
  }

  v8 = qword_1000EB420;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v59 = 0;
    v9 = sub_1000011A8(1);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v9;
    }

    else
    {
      v10 = v9 & 0xFFFFFFFE;
    }

    if (v10)
    {
      LOWORD(v54) = 0;
      v11 = _os_log_send_and_compose_impl();
      v12 = v11;
      if (v11)
      {
        sub_100002A8C(v11);
      }
    }

    else
    {
      v12 = 0;
    }

    free(v12);
  }

  v59 = 0;
  v60 = &v59;
  v61 = 0x3032000000;
  v62 = sub_100058864;
  v63 = sub_100058874;
  v64 = 0;
  v58 = -1;
  if ([(UMSyncService *)self remoteProcessHasBooleanEntitlement:@"com.apple.mkb.usersession.migration"])
  {
    v13 = +[NSXPCConnection currentConnection];
    v14 = [v13 processIdentifier];

    v15 = [(UMSyncService *)self asidForClient:0 withAuid:&v58 withPid:v14];
    v16 = +[NSXPCConnection currentConnection];
    LODWORD(v14) = sub_1000011DC([v16 processIdentifier]);

    v54 = 0;
    v55 = &v54;
    v56 = 0x2020000000;
    v57 = 0;
    v50 = 0;
    v51 = &v50;
    v52 = 0x2020000000;
    v53 = 0;
    v17 = qword_1000EB610;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10005BA18;
    block[3] = &unk_1000DD988;
    v47 = v15;
    v48 = v58;
    v49 = v14;
    v44 = &v54;
    v18 = v6;
    v43 = v18;
    v45 = &v59;
    v46 = &v50;
    dispatch_sync(v17, block);
    if (*(v51 + 24) == 1)
    {
      v19 = qword_1000EB628;
      v38[0] = _NSConcreteStackBlock;
      v38[1] = 3221225472;
      v38[2] = sub_10005BAD4;
      v38[3] = &unk_1000DD9B0;
      v39 = v18;
      v40 = &v54;
      v41 = &v59;
      dispatch_sync(v19, v38);
      v20 = v55[3];
      if (v20)
      {
        CFRelease(v20);
        v55[3] = 0;
      }

      v21 = v39;
    }

    else
    {
      if (qword_1000EB428 != -1)
      {
        sub_100095FA0();
      }

      v21 = qword_1000EB420;
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v29 = sub_1000011A8(1);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v30 = v29;
        }

        else
        {
          v30 = v29 & 0xFFFFFFFE;
        }

        if (v30)
        {
          v31 = _os_log_send_and_compose_impl();
          v32 = v31;
          if (v31)
          {
            sub_100002A8C(v31);
          }
        }

        else
        {
          v32 = 0;
        }

        free(v32);
      }
    }

    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v33 = qword_1000EB420;
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v34 = sub_1000011A8(1);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        v35 = v34;
      }

      else
      {
        v35 = v34 & 0xFFFFFFFE;
      }

      if (v35)
      {
        v36 = _os_log_send_and_compose_impl();
        v37 = v36;
        if (v36)
        {
          sub_100002A8C(v36);
        }
      }

      else
      {
        v37 = 0;
      }

      free(v37);
    }

    v7[2](v7, v60[5]);
    _Block_object_dispose(&v50, 8);
    _Block_object_dispose(&v54, 8);
  }

  else
  {
    v22 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
    v23 = v60[5];
    v60[5] = v22;

    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v24 = qword_1000EB420;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v54 = 0;
      v25 = sub_1000011A8(1);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v26 = v25;
      }

      else
      {
        v26 = v25 & 0xFFFFFFFE;
      }

      if (v26)
      {
        LOWORD(v50) = 0;
        v27 = _os_log_send_and_compose_impl();
        v28 = v27;
        if (v27)
        {
          sub_100002A8C(v27);
        }
      }

      else
      {
        v28 = 0;
      }

      free(v28);
    }

    if (v7)
    {
      v7[2](v7, v60[5]);
    }
  }

  _Block_object_dispose(&v59, 8);
}

- (void)createBootstrapTokenWithSecret:(id)a3 secretSize:(unint64_t)a4 withDeviceSecretHandle:(id)a5 deviceSecretSize:(unint64_t)a6 withReply:(id)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a7;
  v104 = 0;
  v105 = &v104;
  v106 = 0x3032000000;
  v107 = sub_100058864;
  v108 = sub_100058874;
  v109 = 0;
  address = 0;
  if (qword_1000EB428 != -1)
  {
    sub_100095FA0();
  }

  v15 = qword_1000EB420;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v102 = 0;
    v16 = sub_1000011A8(1);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v17 = v16;
    }

    else
    {
      v17 = v16 & 0xFFFFFFFE;
    }

    if (v17)
    {
      v101 = 0;
      v18 = _os_log_send_and_compose_impl();
      v19 = v18;
      if (v18)
      {
        sub_100002A8C(v18);
      }
    }

    else
    {
      v19 = 0;
    }

    free(v19);
  }

  if (![(UMSyncService *)self remoteProcessHasBooleanEntitlement:@"com.apple.usermanagerd.bootstrap.fullaccess"])
  {
    v25 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
    v26 = v105[5];
    v105[5] = v25;

    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v27 = qword_1000EB420;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v102 = 0;
      v28 = sub_1000011A8(1);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v29 = v28;
      }

      else
      {
        v29 = v28 & 0xFFFFFFFE;
      }

      if (v29)
      {
        v101 = 0;
        v30 = _os_log_send_and_compose_impl();
        v31 = v30;
        if (v30)
        {
          sub_100002A8C(v30);
        }
      }

      else
      {
        v31 = 0;
      }

      free(v31);
    }

    if (!v14)
    {
      goto LABEL_73;
    }

LABEL_60:
    v14[2](v14, v105[5]);
LABEL_73:
    v51 = 0;
    goto LABEL_74;
  }

  if (a4 > 0x400 || a6 >= 0x401)
  {
    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v32 = qword_1000EB420;
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v102 = 0;
      v33 = sub_1000011A8(1);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        v34 = v33;
      }

      else
      {
        v34 = v33 & 0xFFFFFFFE;
      }

      if (v34)
      {
        v101 = 0;
        v35 = _os_log_send_and_compose_impl();
        v36 = v35;
        if (v35)
        {
          sub_100002A8C(v35);
        }
      }

      else
      {
        v36 = 0;
      }

      free(v36);
    }

    v42 = [NSError errorWithDomain:NSPOSIXErrorDomain code:7 userInfo:0];
    v43 = v105[5];
    v105[5] = v42;

    if (!v14)
    {
      goto LABEL_73;
    }

    goto LABEL_60;
  }

  if (vm_allocate(mach_task_self_, &address, vm_page_size, -268435455))
  {
    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v20 = qword_1000EB420;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v102 = 0;
      v21 = sub_1000011A8(1);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v22 = v21;
      }

      else
      {
        v22 = v21 & 0xFFFFFFFE;
      }

      if (v22)
      {
        v101 = 0;
        v23 = _os_log_send_and_compose_impl();
        v24 = v23;
        if (v23)
        {
          sub_100002A8C(v23);
        }
      }

      else
      {
        v24 = 0;
      }

      free(v24);
    }

    v49 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
    v50 = v105[5];
    v105[5] = v49;

    address = 0;
    v14[2](v14, v105[5]);
    goto LABEL_73;
  }

  if (a4)
  {
    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v37 = qword_1000EB420;
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v102 = 0;
      v38 = sub_1000011A8(1);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        v39 = v38;
      }

      else
      {
        v39 = v38 & 0xFFFFFFFE;
      }

      if (v39)
      {
        v101 = 0;
        v40 = _os_log_send_and_compose_impl();
        v41 = v40;
        if (v40)
        {
          sub_100002A8C(v40);
        }
      }

      else
      {
        v41 = 0;
      }

      free(v41);
    }

    v52 = address;
    if ([(UMSyncService *)self retrievePasscodeFromFileHandle:v12 ofLength:a4 withbaseaddress:address])
    {
      if (qword_1000EB428 != -1)
      {
        sub_100095FA0();
      }

      v53 = qword_1000EB420;
      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
      {
        v102 = 0;
        v54 = sub_1000011A8(1);
        if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
        {
          v55 = v54;
        }

        else
        {
          v55 = v54 & 0xFFFFFFFE;
        }

        if (v55)
        {
          v101 = 0;
          v56 = _os_log_send_and_compose_impl();
          v57 = v56;
          if (v56)
          {
            sub_100002A8C(v56);
          }
        }

        else
        {
          v57 = 0;
        }

        free(v57);
      }

      v75 = [NSError errorWithDomain:NSPOSIXErrorDomain code:5 userInfo:0];
      v76 = v105[5];
      v105[5] = v75;

      v77 = mach_task_self_;
      v78 = address;
      v79 = vm_page_size;
      if (vm_page_size >= a4)
      {
        v80 = a4;
      }

      else
      {
        v80 = vm_page_size;
      }

      memset_s(address, v80, 0, v80);
      vm_deallocate(v77, v78, v79);
      v14[2](v14, v105[5]);
      goto LABEL_73;
    }

    v51 = [NSData dataWithBytesNoCopy:v52 length:a4 freeWhenDone:0];
  }

  else
  {
    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v44 = qword_1000EB420;
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      v102 = 0;
      v45 = sub_1000011A8(1);
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        v46 = v45;
      }

      else
      {
        v46 = v45 & 0xFFFFFFFE;
      }

      if (v46)
      {
        v101 = 0;
        v47 = _os_log_send_and_compose_impl();
        v48 = v47;
        if (v47)
        {
          sub_100002A8C(v47);
        }
      }

      else
      {
        v48 = 0;
      }

      free(v48);
    }

    v51 = 0;
  }

  if (a6)
  {
    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v58 = qword_1000EB420;
    if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
    {
      v94 = v13;
      v102 = 0;
      v59 = sub_1000011A8(1);
      if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
      {
        v60 = v59;
      }

      else
      {
        v60 = v59 & 0xFFFFFFFE;
      }

      if (v60)
      {
        v101 = 0;
        v61 = _os_log_send_and_compose_impl();
        v62 = v61;
        if (v61)
        {
          sub_100002A8C(v61);
        }
      }

      else
      {
        v62 = 0;
      }

      free(v62);
      v13 = v94;
    }

    v68 = address;
    if ([(UMSyncService *)self retrievePasscodeFromFileHandle:v13 ofLength:a6 withbaseaddress:address + 1024])
    {
      if (qword_1000EB428 != -1)
      {
        sub_100095FA0();
      }

      v69 = qword_1000EB420;
      if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
      {
        v102 = 0;
        v70 = sub_1000011A8(1);
        if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
        {
          v71 = v70;
        }

        else
        {
          v71 = v70 & 0xFFFFFFFE;
        }

        if (v71)
        {
          v101 = 0;
          v72 = _os_log_send_and_compose_impl();
          v73 = v72;
          if (v72)
          {
            sub_100002A8C(v72);
          }
        }

        else
        {
          v73 = 0;
        }

        free(v73);
      }

      v88 = [NSError errorWithDomain:NSPOSIXErrorDomain code:5 userInfo:0];
      v89 = v105[5];
      v105[5] = v88;

      v90 = mach_task_self_;
      v91 = address;
      v92 = vm_page_size;
      if (vm_page_size >= a6 + 1024)
      {
        v93 = a6 + 1024;
      }

      else
      {
        v93 = vm_page_size;
      }

      memset_s(address, v93, 0, v93);
      vm_deallocate(v90, v91, v92);
      v14[2](v14, v105[5]);
      goto LABEL_74;
    }

    v74 = [NSData dataWithBytesNoCopy:v68 + 1024 length:a4 freeWhenDone:0];
  }

  else
  {
    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v63 = qword_1000EB420;
    if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
    {
      v102 = 0;
      v64 = sub_1000011A8(1);
      if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
      {
        v65 = v64;
      }

      else
      {
        v65 = v64 & 0xFFFFFFFE;
      }

      if (v65)
      {
        v101 = 0;
        v66 = _os_log_send_and_compose_impl();
        v67 = v66;
        if (v66)
        {
          sub_100002A8C(v66);
        }
      }

      else
      {
        v67 = 0;
      }

      free(v67);
    }

    v74 = 0;
  }

  v81 = qword_1000EB610;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005CCC0;
  block[3] = &unk_1000DD9D8;
  v51 = v51;
  v96 = v51;
  v82 = v74;
  v97 = v82;
  v98 = &v104;
  v99 = address;
  v100 = a6;
  dispatch_sync(v81, block);
  v14[2](v14, v105[5]);
  if (qword_1000EB428 != -1)
  {
    sub_100095FA0();
  }

  v83 = qword_1000EB420;
  if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
  {
    v102 = 0;
    v84 = sub_1000011A8(1);
    if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
    {
      v85 = v84;
    }

    else
    {
      v85 = v84 & 0xFFFFFFFE;
    }

    if (v85)
    {
      v101 = 0;
      v86 = _os_log_send_and_compose_impl();
      v87 = v86;
      if (v86)
      {
        sub_100002A8C(v86);
      }
    }

    else
    {
      v87 = 0;
    }

    free(v87);
  }

LABEL_74:
  _Block_object_dispose(&v104, 8);
}

- (void)createBootstrapTokenWithSecret:(id)a3 withDevicePasscode:(id)a4 withReply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = sub_100058864;
  v39 = sub_100058874;
  v40 = 0;
  if (qword_1000EB428 != -1)
  {
    sub_100095FA0();
  }

  v11 = qword_1000EB420;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v34 = 0;
    v12 = sub_1000011A8(1);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v12;
    }

    else
    {
      v13 = v12 & 0xFFFFFFFE;
    }

    if (v13)
    {
      v33 = 0;
      v14 = _os_log_send_and_compose_impl();
      v15 = v14;
      if (v14)
      {
        sub_100002A8C(v14);
      }
    }

    else
    {
      v15 = 0;
    }

    free(v15);
  }

  if ([(UMSyncService *)self remoteProcessHasBooleanEntitlement:@"com.apple.usermanagerd.bootstrap.fullaccess"])
  {
    v16 = qword_1000EB610;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10005D1B0;
    block[3] = &unk_1000DDA00;
    v30 = v8;
    v31 = v9;
    v32 = &v35;
    dispatch_sync(v16, block);
    v10[2](v10, v36[5]);
    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v17 = qword_1000EB420;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v34 = 0;
      v18 = sub_1000011A8(1);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v19 = v18;
      }

      else
      {
        v19 = v18 & 0xFFFFFFFE;
      }

      if (v19)
      {
        v33 = 0;
        v20 = _os_log_send_and_compose_impl();
        v21 = v20;
        if (v20)
        {
          sub_100002A8C(v20);
        }
      }

      else
      {
        v21 = 0;
      }

      free(v21);
    }
  }

  else
  {
    v22 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
    v23 = v36[5];
    v36[5] = v22;

    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v24 = qword_1000EB420;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v34 = 0;
      v25 = sub_1000011A8(1);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v26 = v25;
      }

      else
      {
        v26 = v25 & 0xFFFFFFFE;
      }

      if (v26)
      {
        v33 = 0;
        v27 = _os_log_send_and_compose_impl();
        v28 = v27;
        if (v27)
        {
          sub_100002A8C(v27);
        }
      }

      else
      {
        v28 = 0;
      }

      free(v28);
    }

    if (v10)
    {
      v10[2](v10, v36[5]);
    }
  }

  _Block_object_dispose(&v35, 8);
}

- (void)changeBootstrapTokenWithOldSecret:(id)a3 oldSize:(unint64_t)a4 withNewSecret:(id)a5 newSize:(unint64_t)a6 withReply:(id)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a7;
  v103 = 0;
  v104 = &v103;
  v105 = 0x3032000000;
  v106 = sub_100058864;
  v107 = sub_100058874;
  v108 = 0;
  address = 0;
  if (qword_1000EB428 != -1)
  {
    sub_100095FA0();
  }

  v15 = qword_1000EB420;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v101 = 0;
    v16 = sub_1000011A8(1);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v17 = v16;
    }

    else
    {
      v17 = v16 & 0xFFFFFFFE;
    }

    if (v17)
    {
      v100 = 0;
      v18 = _os_log_send_and_compose_impl();
      v19 = v18;
      if (v18)
      {
        sub_100002A8C(v18);
      }
    }

    else
    {
      v19 = 0;
    }

    free(v19);
  }

  if (![(UMSyncService *)self remoteProcessHasBooleanEntitlement:@"com.apple.usermanagerd.bootstrap.fullaccess"])
  {
    v25 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
    v26 = v104[5];
    v104[5] = v25;

    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v27 = qword_1000EB420;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v101 = 0;
      v28 = sub_1000011A8(1);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v29 = v28;
      }

      else
      {
        v29 = v28 & 0xFFFFFFFE;
      }

      if (v29)
      {
        v100 = 0;
        v30 = _os_log_send_and_compose_impl();
        v31 = v30;
        if (v30)
        {
          sub_100002A8C(v30);
        }
      }

      else
      {
        v31 = 0;
      }

      free(v31);
    }

    if (!v14)
    {
      goto LABEL_73;
    }

LABEL_60:
    v14[2](v14, v104[5]);
LABEL_73:
    v51 = 0;
    goto LABEL_74;
  }

  if (a4 > 0x400 || a6 >= 0x401)
  {
    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v32 = qword_1000EB420;
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v101 = 0;
      v33 = sub_1000011A8(1);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        v34 = v33;
      }

      else
      {
        v34 = v33 & 0xFFFFFFFE;
      }

      if (v34)
      {
        v100 = 0;
        v35 = _os_log_send_and_compose_impl();
        v36 = v35;
        if (v35)
        {
          sub_100002A8C(v35);
        }
      }

      else
      {
        v36 = 0;
      }

      free(v36);
    }

    v42 = [NSError errorWithDomain:NSPOSIXErrorDomain code:7 userInfo:0];
    v43 = v104[5];
    v104[5] = v42;

    if (!v14)
    {
      goto LABEL_73;
    }

    goto LABEL_60;
  }

  if (vm_allocate(mach_task_self_, &address, vm_page_size, -268435455))
  {
    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v20 = qword_1000EB420;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v101 = 0;
      v21 = sub_1000011A8(1);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v22 = v21;
      }

      else
      {
        v22 = v21 & 0xFFFFFFFE;
      }

      if (v22)
      {
        v100 = 0;
        v23 = _os_log_send_and_compose_impl();
        v24 = v23;
        if (v23)
        {
          sub_100002A8C(v23);
        }
      }

      else
      {
        v24 = 0;
      }

      free(v24);
    }

    v49 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
    v50 = v104[5];
    v104[5] = v49;

    address = 0;
    v14[2](v14, v104[5]);
    goto LABEL_73;
  }

  if (a4)
  {
    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v37 = qword_1000EB420;
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v101 = 0;
      v38 = sub_1000011A8(1);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        v39 = v38;
      }

      else
      {
        v39 = v38 & 0xFFFFFFFE;
      }

      if (v39)
      {
        v100 = 0;
        v40 = _os_log_send_and_compose_impl();
        v41 = v40;
        if (v40)
        {
          sub_100002A8C(v40);
        }
      }

      else
      {
        v41 = 0;
      }

      free(v41);
    }

    v52 = address;
    if ([(UMSyncService *)self retrievePasscodeFromFileHandle:v12 ofLength:a4 withbaseaddress:address])
    {
      if (qword_1000EB428 != -1)
      {
        sub_100095FA0();
      }

      v53 = qword_1000EB420;
      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
      {
        v101 = 0;
        v54 = sub_1000011A8(1);
        if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
        {
          v55 = v54;
        }

        else
        {
          v55 = v54 & 0xFFFFFFFE;
        }

        if (v55)
        {
          v100 = 0;
          v56 = _os_log_send_and_compose_impl();
          v57 = v56;
          if (v56)
          {
            sub_100002A8C(v56);
          }
        }

        else
        {
          v57 = 0;
        }

        free(v57);
      }

      v75 = [NSError errorWithDomain:NSPOSIXErrorDomain code:5 userInfo:0];
      v76 = v104[5];
      v104[5] = v75;

      v77 = mach_task_self_;
      v78 = address;
      v79 = vm_page_size;
      if (vm_page_size >= a4)
      {
        v80 = a4;
      }

      else
      {
        v80 = vm_page_size;
      }

      memset_s(address, v80, 0, v80);
      vm_deallocate(v77, v78, v79);
      v14[2](v14, v104[5]);
      goto LABEL_73;
    }

    v51 = [NSData dataWithBytesNoCopy:v52 length:a4 freeWhenDone:0];
  }

  else
  {
    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v44 = qword_1000EB420;
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      v101 = 0;
      v45 = sub_1000011A8(1);
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        v46 = v45;
      }

      else
      {
        v46 = v45 & 0xFFFFFFFE;
      }

      if (v46)
      {
        v100 = 0;
        v47 = _os_log_send_and_compose_impl();
        v48 = v47;
        if (v47)
        {
          sub_100002A8C(v47);
        }
      }

      else
      {
        v48 = 0;
      }

      free(v48);
    }

    v51 = 0;
  }

  if (a6)
  {
    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v58 = qword_1000EB420;
    if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
    {
      v101 = 0;
      v59 = sub_1000011A8(1);
      if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
      {
        v60 = v59;
      }

      else
      {
        v60 = v59 & 0xFFFFFFFE;
      }

      if (v60)
      {
        v100 = 0;
        v61 = _os_log_send_and_compose_impl();
        v62 = v61;
        if (v61)
        {
          sub_100002A8C(v61);
        }
      }

      else
      {
        v62 = 0;
      }

      free(v62);
    }

    v68 = address;
    if ([(UMSyncService *)self retrievePasscodeFromFileHandle:v13 ofLength:a6 withbaseaddress:address + 1024])
    {
      if (qword_1000EB428 != -1)
      {
        sub_100095FA0();
      }

      v69 = qword_1000EB420;
      if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
      {
        v101 = 0;
        v70 = sub_1000011A8(1);
        if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
        {
          v71 = v70;
        }

        else
        {
          v71 = v70 & 0xFFFFFFFE;
        }

        if (v71)
        {
          v100 = 0;
          v72 = _os_log_send_and_compose_impl();
          v73 = v72;
          if (v72)
          {
            sub_100002A8C(v72);
          }
        }

        else
        {
          v73 = 0;
        }

        free(v73);
      }

      v88 = [NSError errorWithDomain:NSPOSIXErrorDomain code:5 userInfo:0];
      v89 = v104[5];
      v104[5] = v88;

      v90 = mach_task_self_;
      v91 = address;
      v92 = vm_page_size;
      if (vm_page_size >= a6 + 1024)
      {
        v93 = a6 + 1024;
      }

      else
      {
        v93 = vm_page_size;
      }

      memset_s(address, v93, 0, v93);
      vm_deallocate(v90, v91, v92);
      v14[2](v14, v104[5]);
      goto LABEL_74;
    }

    v74 = [NSData dataWithBytesNoCopy:v68 + 1024 length:a6 freeWhenDone:0];
  }

  else
  {
    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v63 = qword_1000EB420;
    if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
    {
      v101 = 0;
      v64 = sub_1000011A8(1);
      if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
      {
        v65 = v64;
      }

      else
      {
        v65 = v64 & 0xFFFFFFFE;
      }

      if (v65)
      {
        v100 = 0;
        v66 = _os_log_send_and_compose_impl();
        v67 = v66;
        if (v66)
        {
          sub_100002A8C(v66);
        }
      }

      else
      {
        v67 = 0;
      }

      free(v67);
    }

    v74 = 0;
  }

  v81 = qword_1000EB610;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005DEF8;
  block[3] = &unk_1000DD9D8;
  v51 = v51;
  v95 = v51;
  v82 = v74;
  v96 = v82;
  v97 = &v103;
  v98 = address;
  v99 = a6;
  dispatch_sync(v81, block);
  v14[2](v14, v104[5]);
  if (qword_1000EB428 != -1)
  {
    sub_100095FA0();
  }

  v83 = qword_1000EB420;
  if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
  {
    v101 = 0;
    v84 = sub_1000011A8(1);
    if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
    {
      v85 = v84;
    }

    else
    {
      v85 = v84 & 0xFFFFFFFE;
    }

    if (v85)
    {
      v100 = 0;
      v86 = _os_log_send_and_compose_impl();
      v87 = v86;
      if (v86)
      {
        sub_100002A8C(v86);
      }
    }

    else
    {
      v87 = 0;
    }

    free(v87);
  }

LABEL_74:
  _Block_object_dispose(&v103, 8);
}

- (void)changeBootstrapTokenWithOldSecret:(id)a3 withNewSecret:(id)a4 withReply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = sub_100058864;
  v39 = sub_100058874;
  v40 = 0;
  if (qword_1000EB428 != -1)
  {
    sub_100095FA0();
  }

  v11 = qword_1000EB420;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v34 = 0;
    v12 = sub_1000011A8(1);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v12;
    }

    else
    {
      v13 = v12 & 0xFFFFFFFE;
    }

    if (v13)
    {
      v33 = 0;
      v14 = _os_log_send_and_compose_impl();
      v15 = v14;
      if (v14)
      {
        sub_100002A8C(v14);
      }
    }

    else
    {
      v15 = 0;
    }

    free(v15);
  }

  if ([(UMSyncService *)self remoteProcessHasBooleanEntitlement:@"com.apple.usermanagerd.bootstrap.fullaccess"])
  {
    v16 = qword_1000EB610;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10005E3E0;
    block[3] = &unk_1000DDA00;
    v30 = v8;
    v31 = v9;
    v32 = &v35;
    dispatch_sync(v16, block);
    v10[2](v10, v36[5]);
    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v17 = qword_1000EB420;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v34 = 0;
      v18 = sub_1000011A8(1);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v19 = v18;
      }

      else
      {
        v19 = v18 & 0xFFFFFFFE;
      }

      if (v19)
      {
        v33 = 0;
        v20 = _os_log_send_and_compose_impl();
        v21 = v20;
        if (v20)
        {
          sub_100002A8C(v20);
        }
      }

      else
      {
        v21 = 0;
      }

      free(v21);
    }
  }

  else
  {
    v22 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
    v23 = v36[5];
    v36[5] = v22;

    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v24 = qword_1000EB420;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v34 = 0;
      v25 = sub_1000011A8(1);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v26 = v25;
      }

      else
      {
        v26 = v25 & 0xFFFFFFFE;
      }

      if (v26)
      {
        v33 = 0;
        v27 = _os_log_send_and_compose_impl();
        v28 = v27;
        if (v27)
        {
          sub_100002A8C(v27);
        }
      }

      else
      {
        v28 = 0;
      }

      free(v28);
    }

    if (v10)
    {
      v10[2](v10, v36[5]);
    }
  }

  _Block_object_dispose(&v35, 8);
}

- (void)deleteBootstrapTokenWithSecret:(id)a3 secretSize:(unint64_t)a4 withDeviceSecretHandle:(id)a5 deviceSecretSize:(unint64_t)a6 withReply:(id)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a7;
  v104 = 0;
  v105 = &v104;
  v106 = 0x3032000000;
  v107 = sub_100058864;
  v108 = sub_100058874;
  v109 = 0;
  address = 0;
  if (qword_1000EB428 != -1)
  {
    sub_100095FA0();
  }

  v15 = qword_1000EB420;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v102 = 0;
    v16 = sub_1000011A8(1);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v17 = v16;
    }

    else
    {
      v17 = v16 & 0xFFFFFFFE;
    }

    if (v17)
    {
      v101 = 0;
      v18 = _os_log_send_and_compose_impl();
      v19 = v18;
      if (v18)
      {
        sub_100002A8C(v18);
      }
    }

    else
    {
      v19 = 0;
    }

    free(v19);
  }

  if (![(UMSyncService *)self remoteProcessHasBooleanEntitlement:@"com.apple.usermanagerd.bootstrap.fullaccess"])
  {
    v25 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
    v26 = v105[5];
    v105[5] = v25;

    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v27 = qword_1000EB420;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v102 = 0;
      v28 = sub_1000011A8(1);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v29 = v28;
      }

      else
      {
        v29 = v28 & 0xFFFFFFFE;
      }

      if (v29)
      {
        v101 = 0;
        v30 = _os_log_send_and_compose_impl();
        v31 = v30;
        if (v30)
        {
          sub_100002A8C(v30);
        }
      }

      else
      {
        v31 = 0;
      }

      free(v31);
    }

    if (!v14)
    {
      goto LABEL_73;
    }

LABEL_60:
    v14[2](v14, v105[5]);
LABEL_73:
    v51 = 0;
    goto LABEL_74;
  }

  if (a4 > 0x400 || a6 >= 0x401)
  {
    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v32 = qword_1000EB420;
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v102 = 0;
      v33 = sub_1000011A8(1);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        v34 = v33;
      }

      else
      {
        v34 = v33 & 0xFFFFFFFE;
      }

      if (v34)
      {
        v101 = 0;
        v35 = _os_log_send_and_compose_impl();
        v36 = v35;
        if (v35)
        {
          sub_100002A8C(v35);
        }
      }

      else
      {
        v36 = 0;
      }

      free(v36);
    }

    v42 = [NSError errorWithDomain:NSPOSIXErrorDomain code:7 userInfo:0];
    v43 = v105[5];
    v105[5] = v42;

    if (!v14)
    {
      goto LABEL_73;
    }

    goto LABEL_60;
  }

  if (vm_allocate(mach_task_self_, &address, vm_page_size, -268435455))
  {
    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v20 = qword_1000EB420;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v102 = 0;
      v21 = sub_1000011A8(1);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v22 = v21;
      }

      else
      {
        v22 = v21 & 0xFFFFFFFE;
      }

      if (v22)
      {
        v101 = 0;
        v23 = _os_log_send_and_compose_impl();
        v24 = v23;
        if (v23)
        {
          sub_100002A8C(v23);
        }
      }

      else
      {
        v24 = 0;
      }

      free(v24);
    }

    v49 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
    v50 = v105[5];
    v105[5] = v49;

    address = 0;
    v14[2](v14, v105[5]);
    goto LABEL_73;
  }

  if (a4)
  {
    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v37 = qword_1000EB420;
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v102 = 0;
      v38 = sub_1000011A8(1);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        v39 = v38;
      }

      else
      {
        v39 = v38 & 0xFFFFFFFE;
      }

      if (v39)
      {
        v101 = 0;
        v40 = _os_log_send_and_compose_impl();
        v41 = v40;
        if (v40)
        {
          sub_100002A8C(v40);
        }
      }

      else
      {
        v41 = 0;
      }

      free(v41);
    }

    v52 = address;
    if ([(UMSyncService *)self retrievePasscodeFromFileHandle:v12 ofLength:a4 withbaseaddress:address])
    {
      if (qword_1000EB428 != -1)
      {
        sub_100095FA0();
      }

      v53 = qword_1000EB420;
      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
      {
        v102 = 0;
        v54 = sub_1000011A8(1);
        if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
        {
          v55 = v54;
        }

        else
        {
          v55 = v54 & 0xFFFFFFFE;
        }

        if (v55)
        {
          v101 = 0;
          v56 = _os_log_send_and_compose_impl();
          v57 = v56;
          if (v56)
          {
            sub_100002A8C(v56);
          }
        }

        else
        {
          v57 = 0;
        }

        free(v57);
      }

      v75 = [NSError errorWithDomain:NSPOSIXErrorDomain code:5 userInfo:0];
      v76 = v105[5];
      v105[5] = v75;

      v77 = mach_task_self_;
      v78 = address;
      v79 = vm_page_size;
      if (vm_page_size >= a4)
      {
        v80 = a4;
      }

      else
      {
        v80 = vm_page_size;
      }

      memset_s(address, v80, 0, v80);
      vm_deallocate(v77, v78, v79);
      v14[2](v14, v105[5]);
      goto LABEL_73;
    }

    v51 = [NSData dataWithBytesNoCopy:v52 length:a4 freeWhenDone:0];
  }

  else
  {
    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v44 = qword_1000EB420;
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      v102 = 0;
      v45 = sub_1000011A8(1);
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        v46 = v45;
      }

      else
      {
        v46 = v45 & 0xFFFFFFFE;
      }

      if (v46)
      {
        v101 = 0;
        v47 = _os_log_send_and_compose_impl();
        v48 = v47;
        if (v47)
        {
          sub_100002A8C(v47);
        }
      }

      else
      {
        v48 = 0;
      }

      free(v48);
    }

    v51 = 0;
  }

  if (a6)
  {
    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v58 = qword_1000EB420;
    if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
    {
      v94 = v13;
      v102 = 0;
      v59 = sub_1000011A8(1);
      if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
      {
        v60 = v59;
      }

      else
      {
        v60 = v59 & 0xFFFFFFFE;
      }

      if (v60)
      {
        v101 = 0;
        v61 = _os_log_send_and_compose_impl();
        v62 = v61;
        if (v61)
        {
          sub_100002A8C(v61);
        }
      }

      else
      {
        v62 = 0;
      }

      free(v62);
      v13 = v94;
    }

    v68 = address;
    if ([(UMSyncService *)self retrievePasscodeFromFileHandle:v13 ofLength:a6 withbaseaddress:address + 1024])
    {
      if (qword_1000EB428 != -1)
      {
        sub_100095FA0();
      }

      v69 = qword_1000EB420;
      if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
      {
        v102 = 0;
        v70 = sub_1000011A8(1);
        if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
        {
          v71 = v70;
        }

        else
        {
          v71 = v70 & 0xFFFFFFFE;
        }

        if (v71)
        {
          v101 = 0;
          v72 = _os_log_send_and_compose_impl();
          v73 = v72;
          if (v72)
          {
            sub_100002A8C(v72);
          }
        }

        else
        {
          v73 = 0;
        }

        free(v73);
      }

      v88 = [NSError errorWithDomain:NSPOSIXErrorDomain code:5 userInfo:0];
      v89 = v105[5];
      v105[5] = v88;

      v90 = mach_task_self_;
      v91 = address;
      v92 = vm_page_size;
      if (vm_page_size >= a6 + 1024)
      {
        v93 = a6 + 1024;
      }

      else
      {
        v93 = vm_page_size;
      }

      memset_s(address, v93, 0, v93);
      vm_deallocate(v90, v91, v92);
      v14[2](v14, v105[5]);
      goto LABEL_74;
    }

    v74 = [NSData dataWithBytesNoCopy:v68 + 1024 length:a4 freeWhenDone:0];
  }

  else
  {
    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v63 = qword_1000EB420;
    if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
    {
      v102 = 0;
      v64 = sub_1000011A8(1);
      if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
      {
        v65 = v64;
      }

      else
      {
        v65 = v64 & 0xFFFFFFFE;
      }

      if (v65)
      {
        v101 = 0;
        v66 = _os_log_send_and_compose_impl();
        v67 = v66;
        if (v66)
        {
          sub_100002A8C(v66);
        }
      }

      else
      {
        v67 = 0;
      }

      free(v67);
    }

    v74 = 0;
  }

  v81 = qword_1000EB610;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005F130;
  block[3] = &unk_1000DD9D8;
  v51 = v51;
  v96 = v51;
  v82 = v74;
  v97 = v82;
  v98 = &v104;
  v99 = address;
  v100 = a6;
  dispatch_sync(v81, block);
  v14[2](v14, v105[5]);
  if (qword_1000EB428 != -1)
  {
    sub_100095FA0();
  }

  v83 = qword_1000EB420;
  if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
  {
    v102 = 0;
    v84 = sub_1000011A8(1);
    if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
    {
      v85 = v84;
    }

    else
    {
      v85 = v84 & 0xFFFFFFFE;
    }

    if (v85)
    {
      v101 = 0;
      v86 = _os_log_send_and_compose_impl();
      v87 = v86;
      if (v86)
      {
        sub_100002A8C(v86);
      }
    }

    else
    {
      v87 = 0;
    }

    free(v87);
  }

LABEL_74:
  _Block_object_dispose(&v104, 8);
}

- (void)deleteBootstrapTokenWithSecret:(id)a3 withDevicePasscode:(id)a4 withReply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = sub_100058864;
  v39 = sub_100058874;
  v40 = 0;
  if (qword_1000EB428 != -1)
  {
    sub_100095FA0();
  }

  v11 = qword_1000EB420;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v34 = 0;
    v12 = sub_1000011A8(1);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v12;
    }

    else
    {
      v13 = v12 & 0xFFFFFFFE;
    }

    if (v13)
    {
      v33 = 0;
      v14 = _os_log_send_and_compose_impl();
      v15 = v14;
      if (v14)
      {
        sub_100002A8C(v14);
      }
    }

    else
    {
      v15 = 0;
    }

    free(v15);
  }

  if ([(UMSyncService *)self remoteProcessHasBooleanEntitlement:@"com.apple.usermanagerd.bootstrap.fullaccess"])
  {
    v16 = qword_1000EB610;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10005F618;
    block[3] = &unk_1000DDA00;
    v30 = v8;
    v31 = v9;
    v32 = &v35;
    dispatch_sync(v16, block);
    v10[2](v10, v36[5]);
    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v17 = qword_1000EB420;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v34 = 0;
      v18 = sub_1000011A8(1);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v19 = v18;
      }

      else
      {
        v19 = v18 & 0xFFFFFFFE;
      }

      if (v19)
      {
        v33 = 0;
        v20 = _os_log_send_and_compose_impl();
        v21 = v20;
        if (v20)
        {
          sub_100002A8C(v20);
        }
      }

      else
      {
        v21 = 0;
      }

      free(v21);
    }
  }

  else
  {
    v22 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
    v23 = v36[5];
    v36[5] = v22;

    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v24 = qword_1000EB420;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v34 = 0;
      v25 = sub_1000011A8(1);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v26 = v25;
      }

      else
      {
        v26 = v25 & 0xFFFFFFFE;
      }

      if (v26)
      {
        v33 = 0;
        v27 = _os_log_send_and_compose_impl();
        v28 = v27;
        if (v27)
        {
          sub_100002A8C(v27);
        }
      }

      else
      {
        v28 = 0;
      }

      free(v28);
    }

    if (v10)
    {
      v10[2](v10, v36[5]);
    }
  }

  _Block_object_dispose(&v35, 8);
}

- (void)checkBootstrapTokenExistsWithReply:(id)a3
{
  v4 = a3;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = sub_100058864;
  v29 = sub_100058874;
  v30 = 0;
  if (qword_1000EB428 != -1)
  {
    sub_100095FA0();
  }

  v5 = qword_1000EB420;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v24 = 0;
    v6 = sub_1000011A8(1);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFE;
    }

    if (v7)
    {
      v23 = 0;
      v8 = _os_log_send_and_compose_impl();
      v9 = v8;
      if (v8)
      {
        sub_100002A8C(v8);
      }
    }

    else
    {
      v9 = 0;
    }

    free(v9);
  }

  if ([(UMSyncService *)self remoteProcessHasBooleanEntitlement:@"com.apple.usermanagerd.bootstrap.fullaccess"])
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10005FA68;
    block[3] = &unk_1000DD910;
    block[4] = &v25;
    dispatch_sync(qword_1000EB610, block);
    v4[2](v4, v26[5]);
    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v10 = qword_1000EB420;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v24 = 0;
      v11 = sub_1000011A8(1);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v12 = v11;
      }

      else
      {
        v12 = v11 & 0xFFFFFFFE;
      }

      if (v12)
      {
        v23 = 0;
        v13 = _os_log_send_and_compose_impl();
        v14 = v13;
        if (v13)
        {
          sub_100002A8C(v13);
        }
      }

      else
      {
        v14 = 0;
      }

      free(v14);
    }
  }

  else
  {
    v15 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
    v16 = v26[5];
    v26[5] = v15;

    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v17 = qword_1000EB420;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v24 = 0;
      v18 = sub_1000011A8(1);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v19 = v18;
      }

      else
      {
        v19 = v18 & 0xFFFFFFFE;
      }

      if (v19)
      {
        v23 = 0;
        v20 = _os_log_send_and_compose_impl();
        v21 = v20;
        if (v20)
        {
          sub_100002A8C(v20);
        }
      }

      else
      {
        v21 = 0;
      }

      free(v21);
    }

    if (v4)
    {
      v4[2](v4, v26[5]);
    }
  }

  _Block_object_dispose(&v25, 8);
}

- (void)validateBootstrapTokenWithSecret:(id)a3 secretSize:(unint64_t)a4 withReply:(id)a5
{
  v8 = a3;
  v9 = a5;
  v73 = 0;
  v74 = &v73;
  v75 = 0x3032000000;
  v76 = sub_100058864;
  v77 = sub_100058874;
  v78 = 0;
  address = 0;
  if (qword_1000EB428 != -1)
  {
    sub_100095FA0();
  }

  v10 = qword_1000EB420;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v71 = 0;
    v11 = sub_1000011A8(1);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
    }

    else
    {
      v12 = v11 & 0xFFFFFFFE;
    }

    if (v12)
    {
      v70 = 0;
      v13 = _os_log_send_and_compose_impl();
      v14 = v13;
      if (v13)
      {
        sub_100002A8C(v13);
      }
    }

    else
    {
      v14 = 0;
    }

    free(v14);
  }

  if ([(UMSyncService *)self remoteProcessHasBooleanEntitlement:@"com.apple.usermanagerd.bootstrap.fullaccess"])
  {
    if (a4 < 0x401)
    {
      if (vm_allocate(mach_task_self_, &address, vm_page_size, -268435455))
      {
        if (qword_1000EB428 != -1)
        {
          sub_100095FA0();
        }

        v27 = qword_1000EB420;
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          v71 = 0;
          v28 = sub_1000011A8(1);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            v29 = v28;
          }

          else
          {
            v29 = v28 & 0xFFFFFFFE;
          }

          if (v29)
          {
            v70 = 0;
            v30 = _os_log_send_and_compose_impl();
            v31 = v30;
            if (v30)
            {
              sub_100002A8C(v30);
            }
          }

          else
          {
            v31 = 0;
          }

          free(v31);
        }

        v44 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
        v45 = v74[5];
        v74[5] = v44;

        address = 0;
        v9[2](v9, v74[5]);
        goto LABEL_106;
      }

      if (a4)
      {
        if (qword_1000EB428 != -1)
        {
          sub_100095FA0();
        }

        v32 = qword_1000EB420;
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          v71 = 0;
          v33 = sub_1000011A8(1);
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            v34 = v33;
          }

          else
          {
            v34 = v33 & 0xFFFFFFFE;
          }

          if (v34)
          {
            v70 = 0;
            v35 = _os_log_send_and_compose_impl();
            v36 = v35;
            if (v35)
            {
              sub_100002A8C(v35);
            }
          }

          else
          {
            v36 = 0;
          }

          free(v36);
        }

        v46 = address;
        if ([(UMSyncService *)self retrievePasscodeFromFileHandle:v8 ofLength:a4 withbaseaddress:address])
        {
          if (qword_1000EB428 != -1)
          {
            sub_100095FA0();
          }

          v47 = qword_1000EB420;
          if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
          {
            v71 = 0;
            v48 = sub_1000011A8(1);
            if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
            {
              v49 = v48;
            }

            else
            {
              v49 = v48 & 0xFFFFFFFE;
            }

            if (v49)
            {
              v70 = 0;
              v50 = _os_log_send_and_compose_impl();
              v51 = v50;
              if (v50)
              {
                sub_100002A8C(v50);
              }
            }

            else
            {
              v51 = 0;
            }

            free(v51);
          }

          v60 = [NSError errorWithDomain:NSPOSIXErrorDomain code:5 userInfo:0];
          v61 = v74[5];
          v74[5] = v60;

          v62 = mach_task_self_;
          v63 = address;
          v64 = vm_page_size;
          if (vm_page_size >= a4)
          {
            v65 = a4;
          }

          else
          {
            v65 = vm_page_size;
          }

          memset_s(address, v65, 0, v65);
          vm_deallocate(v62, v63, v64);
          v9[2](v9, v74[5]);
          goto LABEL_106;
        }

        v52 = [NSData dataWithBytesNoCopy:v46 length:a4 freeWhenDone:0];
      }

      else
      {
        if (qword_1000EB428 != -1)
        {
          sub_100095FA0();
        }

        v39 = qword_1000EB420;
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          v71 = 0;
          v40 = sub_1000011A8(1);
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
          {
            v41 = v40;
          }

          else
          {
            v41 = v40 & 0xFFFFFFFE;
          }

          if (v41)
          {
            v70 = 0;
            v42 = _os_log_send_and_compose_impl();
            v43 = v42;
            if (v42)
            {
              sub_100002A8C(v42);
            }
          }

          else
          {
            v43 = 0;
          }

          free(v43);
        }

        v52 = 0;
      }

      v53 = qword_1000EB610;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10006043C;
      block[3] = &unk_1000DDA28;
      v54 = v52;
      v67 = v54;
      v68 = &v73;
      v69 = address;
      dispatch_sync(v53, block);
      v9[2](v9, v74[5]);
      if (qword_1000EB428 != -1)
      {
        sub_100095FA0();
      }

      v55 = qword_1000EB420;
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
      {
        v71 = 0;
        v56 = sub_1000011A8(1);
        if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
        {
          v57 = v56;
        }

        else
        {
          v57 = v56 & 0xFFFFFFFE;
        }

        if (v57)
        {
          v70 = 0;
          v58 = _os_log_send_and_compose_impl();
          v59 = v58;
          if (v58)
          {
            sub_100002A8C(v58);
          }
        }

        else
        {
          v59 = 0;
        }

        free(v59);
      }
    }

    else
    {
      if (qword_1000EB428 != -1)
      {
        sub_100095FA0();
      }

      v15 = qword_1000EB420;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v71 = 0;
        v16 = sub_1000011A8(1);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v17 = v16;
        }

        else
        {
          v17 = v16 & 0xFFFFFFFE;
        }

        if (v17)
        {
          v70 = 0;
          v18 = _os_log_send_and_compose_impl();
          v19 = v18;
          if (v18)
          {
            sub_100002A8C(v18);
          }
        }

        else
        {
          v19 = 0;
        }

        free(v19);
      }

      v37 = [NSError errorWithDomain:NSPOSIXErrorDomain code:7 userInfo:0];
      v38 = v74[5];
      v74[5] = v37;

      if (v9)
      {
LABEL_59:
        v9[2](v9, v74[5]);
      }
    }
  }

  else
  {
    v20 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
    v21 = v74[5];
    v74[5] = v20;

    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v22 = qword_1000EB420;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v71 = 0;
      v23 = sub_1000011A8(1);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v24 = v23;
      }

      else
      {
        v24 = v23 & 0xFFFFFFFE;
      }

      if (v24)
      {
        v70 = 0;
        v25 = _os_log_send_and_compose_impl();
        v26 = v25;
        if (v25)
        {
          sub_100002A8C(v25);
        }
      }

      else
      {
        v26 = 0;
      }

      free(v26);
    }

    if (v9)
    {
      goto LABEL_59;
    }
  }

LABEL_106:
  _Block_object_dispose(&v73, 8);
}

- (void)validateBootstrapTokenWithSecret:(id)a3 withReply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = sub_100058864;
  v35 = sub_100058874;
  v36 = 0;
  if (qword_1000EB428 != -1)
  {
    sub_100095FA0();
  }

  v8 = qword_1000EB420;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v30 = 0;
    v9 = sub_1000011A8(1);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v9;
    }

    else
    {
      v10 = v9 & 0xFFFFFFFE;
    }

    if (v10)
    {
      v29 = 0;
      v11 = _os_log_send_and_compose_impl();
      v12 = v11;
      if (v11)
      {
        sub_100002A8C(v11);
      }
    }

    else
    {
      v12 = 0;
    }

    free(v12);
  }

  if ([(UMSyncService *)self remoteProcessHasBooleanEntitlement:@"com.apple.usermanagerd.bootstrap.fullaccess"])
  {
    v13 = qword_1000EB610;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100060904;
    block[3] = &unk_1000DDA50;
    v27 = v6;
    v28 = &v31;
    dispatch_sync(v13, block);
    v7[2](v7, v32[5]);
    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v14 = qword_1000EB420;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v30 = 0;
      v15 = sub_1000011A8(1);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v16 = v15;
      }

      else
      {
        v16 = v15 & 0xFFFFFFFE;
      }

      if (v16)
      {
        v29 = 0;
        v17 = _os_log_send_and_compose_impl();
        v18 = v17;
        if (v17)
        {
          sub_100002A8C(v17);
        }
      }

      else
      {
        v18 = 0;
      }

      free(v18);
    }
  }

  else
  {
    v19 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
    v20 = v32[5];
    v32[5] = v19;

    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v21 = qword_1000EB420;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v30 = 0;
      v22 = sub_1000011A8(1);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v23 = v22;
      }

      else
      {
        v23 = v22 & 0xFFFFFFFE;
      }

      if (v23)
      {
        v29 = 0;
        v24 = _os_log_send_and_compose_impl();
        v25 = v24;
        if (v24)
        {
          sub_100002A8C(v24);
        }
      }

      else
      {
        v25 = 0;
      }

      free(v25);
    }

    if (v7)
    {
      v7[2](v7, v32[5]);
    }
  }

  _Block_object_dispose(&v31, 8);
}

- (void)removeUserSession:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = sub_100058864;
  v35 = sub_100058874;
  v36 = 0;
  if (qword_1000EB428 != -1)
  {
    sub_100095FA0();
  }

  v8 = qword_1000EB420;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v30 = 0;
    v9 = sub_1000011A8(1);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v9;
    }

    else
    {
      v10 = v9 & 0xFFFFFFFE;
    }

    if (v10)
    {
      v29 = 0;
      v11 = _os_log_send_and_compose_impl();
      v12 = v11;
      if (v11)
      {
        sub_100002A8C(v11);
      }
    }

    else
    {
      v12 = 0;
    }

    free(v12);
  }

  if ([(UMSyncService *)self remoteProcessHasBooleanEntitlement:@"com.apple.mkb.usersession.delete"])
  {
    v13 = qword_1000EB610;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100060D78;
    block[3] = &unk_1000DDA50;
    v27 = v6;
    v28 = &v31;
    dispatch_sync(v13, block);
    v7[2](v7, v32[5]);
    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v14 = qword_1000EB420;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v30 = 0;
      v15 = sub_1000011A8(1);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v16 = v15;
      }

      else
      {
        v16 = v15 & 0xFFFFFFFE;
      }

      if (v16)
      {
        v29 = 0;
        v17 = _os_log_send_and_compose_impl();
        v18 = v17;
        if (v17)
        {
          sub_100002A8C(v17);
        }
      }

      else
      {
        v18 = 0;
      }

      free(v18);
    }
  }

  else
  {
    v19 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
    v20 = v32[5];
    v32[5] = v19;

    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v21 = qword_1000EB420;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v30 = 0;
      v22 = sub_1000011A8(1);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v23 = v22;
      }

      else
      {
        v23 = v22 & 0xFFFFFFFE;
      }

      if (v23)
      {
        v29 = 0;
        v24 = _os_log_send_and_compose_impl();
        v25 = v24;
        if (v24)
        {
          sub_100002A8C(v24);
        }
      }

      else
      {
        v25 = 0;
      }

      free(v25);
    }

    if (v7)
    {
      v7[2](v7, v32[5]);
    }
  }

  _Block_object_dispose(&v31, 8);
}

- (void)listAllUserSessionIDsWithAReply:(id)a3
{
  v4 = a3;
  if (qword_1000EB428 != -1)
  {
    sub_100095F8C();
  }

  v5 = qword_1000EB420;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = sub_1000011A8(1);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFE;
    }

    if (v7)
    {
      v8 = _os_log_send_and_compose_impl();
      v9 = v8;
      if (v8)
      {
        sub_100002A8C(v8);
      }
    }

    else
    {
      v9 = 0;
    }

    free(v9);
  }

  if ([(UMSyncService *)self remoteProcessHasBooleanEntitlement:@"com.apple.mkb.usersession.info"])
  {
    v10 = sub_10001890C();
    if (v10)
    {
      v11 = 0;
    }

    else
    {
      v11 = [NSError errorWithDomain:NSPOSIXErrorDomain code:5 userInfo:0];
    }

    v4[2](v4, v10, v11);
    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v17 = qword_1000EB420;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = sub_1000011A8(1);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v19 = v18;
      }

      else
      {
        v19 = v18 & 0xFFFFFFFE;
      }

      if (v19)
      {
        v20 = _os_log_send_and_compose_impl();
        v21 = v20;
        if (v20)
        {
          sub_100002A8C(v20);
        }
      }

      else
      {
        v21 = 0;
      }

      free(v21);
    }
  }

  else
  {
    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v12 = qword_1000EB420;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = sub_1000011A8(1);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v14 = v13;
      }

      else
      {
        v14 = v13 & 0xFFFFFFFE;
      }

      if (v14)
      {
        v15 = _os_log_send_and_compose_impl();
        v16 = v15;
        if (v15)
        {
          sub_100002A8C(v15);
        }
      }

      else
      {
        v16 = 0;
      }

      free(v16);
    }

    v11 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
    if (v4)
    {
      v4[2](v4, 0, v11);
    }
  }
}

- (void)retrieveUserSessionBlobwithReply:(id)a3
{
  v4 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_100058864;
  v19 = sub_100058874;
  v20 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_100058864;
  v13 = sub_100058874;
  v14 = 0;
  if ([(UMSyncService *)self remoteProcessHasBooleanEntitlement:@"com.apple.mkb.usersession.retrieve"])
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000613A0;
    v8[3] = &unk_1000DD458;
    v8[4] = &v9;
    v8[5] = &v15;
    dispatch_sync(qword_1000EB610, v8);
    v5 = v10[5];
LABEL_5:
    v4[2](v4, v5, v16[5]);
    goto LABEL_6;
  }

  v6 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
  v7 = v16[5];
  v16[5] = v6;

  if (v4)
  {
    v5 = 0;
    goto LABEL_5;
  }

LABEL_6:
  _Block_object_dispose(&v9, 8);

  _Block_object_dispose(&v15, 8);
}

- (void)deleteUserSessionBlobwithReply:(id)a3
{
  v4 = a3;
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2020000000;
  v15 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_100058864;
  v12 = sub_100058874;
  v13 = 0;
  if ([(UMSyncService *)self remoteProcessHasBooleanEntitlement:@"com.apple.mkb.usersession.retrieve"])
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100061798;
    v7[3] = &unk_1000DD458;
    v7[4] = v14;
    v7[5] = &v8;
    dispatch_sync(qword_1000EB610, v7);
LABEL_4:
    v4[2](v4, v9[5]);
    goto LABEL_5;
  }

  v5 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
  v6 = v9[5];
  v9[5] = v5;

  if (v4)
  {
    goto LABEL_4;
  }

LABEL_5:
  _Block_object_dispose(&v8, 8);

  _Block_object_dispose(v14, 8);
}

- (void)switchToUserSession:(id)a3 withOpaqueData:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_100058864;
  v22 = sub_100058874;
  v23 = 0;
  if ([(UMSyncService *)self remoteProcessHasBooleanEntitlement:@"com.apple.mkb.usersession.switch"])
  {
    v11 = qword_1000EB610;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100061C7C;
    block[3] = &unk_1000DDA78;
    v17 = &v18;
    v15 = v8;
    v16 = v9;
    dispatch_sync(v11, block);
    v10[2](v10, v19[5]);
  }

  else
  {
    v12 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
    v13 = v19[5];
    v19[5] = v12;

    if (v10)
    {
      v10[2](v10, v19[5]);
    }
  }

  _Block_object_dispose(&v18, 8);
}

- (void)setUserSessionSecureBackupBlob:(id)a3 withReply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_100058864;
  v25 = sub_100058874;
  v26 = 0;
  if ([(UMSyncService *)self remoteProcessHasBooleanEntitlement:@"com.apple.mkb.usersession.securebackup"])
  {
    v8 = qword_1000EB610;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100062278;
    block[3] = &unk_1000DDA50;
    v17 = v6;
    v18 = &v21;
    dispatch_sync(v8, block);
    v7[2](v7, v22[5]);
  }

  else
  {
    v9 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
    v10 = v22[5];
    v22[5] = v9;

    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v11 = qword_1000EB420;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 0;
      v12 = sub_1000011A8(1);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v13 = v12;
      }

      else
      {
        v13 = v12 & 0xFFFFFFFE;
      }

      if (v13)
      {
        v19 = 0;
        v14 = _os_log_send_and_compose_impl();
        v15 = v14;
        if (v14)
        {
          sub_100002A8C(v14);
        }
      }

      else
      {
        v15 = 0;
      }

      free(v15);
    }

    if (v7)
    {
      v7[2](v7, v22[5]);
    }
  }

  _Block_object_dispose(&v21, 8);
}

- (void)setUserKeybagOpaqueData:(id)a3 keybagBlob:(id)a4 withReply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_100058864;
  v25 = sub_100058874;
  v26 = 0;
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x2020000000;
  v20 = 0;
  if ([(UMSyncService *)self remoteProcessHasBooleanEntitlement:@"com.apple.mkb.usersession.keybagopaquedata"])
  {
    v11 = qword_1000EB610;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000626F8;
    v14[3] = &unk_1000DDAA0;
    v17 = v19;
    v15 = v8;
    v16 = v9;
    v18 = &v21;
    dispatch_sync(v11, v14);
    v10[2](v10, v22[5]);
  }

  else
  {
    v12 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
    v13 = v22[5];
    v22[5] = v12;

    if (v10)
    {
      v10[2](v10, v22[5]);
    }
  }

  _Block_object_dispose(v19, 8);
  _Block_object_dispose(&v21, 8);
}

- (void)userKeybagOpaqueData:(id)a3 KeybagBlobwithReply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_100058864;
  v25 = sub_100058874;
  v26 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_100058864;
  v19 = sub_100058874;
  v20 = 0;
  if ([(UMSyncService *)self remoteProcessHasBooleanEntitlement:@"com.apple.mkb.usersession.keybagopaquedata"]|| [(UMSyncService *)self remoteProcessHasBooleanEntitlement:@"com.apple.keystore.device"])
  {
    v8 = qword_1000EB610;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100062B68;
    block[3] = &unk_1000DDAC8;
    v13 = &v15;
    v12 = v6;
    v14 = &v21;
    dispatch_sync(v8, block);
    v7[2](v7, v16[5], v22[5]);
  }

  else
  {
    v9 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
    v10 = v22[5];
    v22[5] = v9;

    if (v7)
    {
      v7[2](v7, v16[5], v22[5]);
    }
  }

  _Block_object_dispose(&v15, 8);

  _Block_object_dispose(&v21, 8);
}

- (void)retrieveUserSessionSecureBackupBlobwithReply:(id)a3
{
  v4 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_100058864;
  v19 = sub_100058874;
  v20 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_100058864;
  v13 = sub_100058874;
  v14 = 0;
  if ([(UMSyncService *)self remoteProcessHasBooleanEntitlement:@"com.apple.mkb.usersession.securebackup"])
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100062F8C;
    v8[3] = &unk_1000DD458;
    v8[4] = &v9;
    v8[5] = &v15;
    dispatch_sync(qword_1000EB610, v8);
    v5 = v10[5];
LABEL_5:
    v4[2](v4, v5, v16[5]);
    goto LABEL_6;
  }

  v6 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
  v7 = v16[5];
  v16[5] = v6;

  if (v4)
  {
    v5 = 0;
    goto LABEL_5;
  }

LABEL_6:
  _Block_object_dispose(&v9, 8);

  _Block_object_dispose(&v15, 8);
}

- (void)deleteUserSessionSecureBlobwithReply:(id)a3
{
  v4 = a3;
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2020000000;
  v15 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_100058864;
  v12 = sub_100058874;
  v13 = 0;
  if ([(UMSyncService *)self remoteProcessHasBooleanEntitlement:@"com.apple.mkb.usersession.securebackup"])
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100063384;
    v7[3] = &unk_1000DD458;
    v7[4] = v14;
    v7[5] = &v8;
    dispatch_sync(qword_1000EB610, v7);
LABEL_4:
    v4[2](v4, v9[5]);
    goto LABEL_5;
  }

  v5 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
  v6 = v9[5];
  v9[5] = v5;

  if (v4)
  {
    goto LABEL_4;
  }

LABEL_5:
  _Block_object_dispose(&v8, 8);

  _Block_object_dispose(v14, 8);
}

- (void)getUserSessionAttributes:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_100058864;
  v26 = sub_100058874;
  v27 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_100058864;
  v20 = sub_100058874;
  v21 = 0;
  if ([(UMSyncService *)self remoteProcessHasBooleanEntitlement:@"com.apple.mkb.usersession.info"])
  {
    v8 = qword_1000EB610;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000638AC;
    v11[3] = &unk_1000DDAF0;
    v12 = v6;
    v13 = self;
    v14 = &v22;
    v15 = &v16;
    dispatch_sync(v8, v11);
    v7[2](v7, v23[5], v17[5]);
  }

  else
  {
    v9 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
    v10 = v17[5];
    v17[5] = v9;

    if (v7)
    {
      v7[2](v7, 0, v17[5]);
    }
  }

  _Block_object_dispose(&v16, 8);

  _Block_object_dispose(&v22, 8);
}

- (void)setUserSessionAttributes:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = sub_100058864;
  v35 = sub_100058874;
  v36 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = sub_100058864;
  v29 = sub_100058874;
  v30 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_100058864;
  v23 = sub_100058874;
  v24 = 0;
  if ([(UMSyncService *)self remoteProcessHasBooleanEntitlement:@"com.apple.mkb.usersession.info"])
  {
    if (v6)
    {
      v8 = [v6 objectForKey:kUMUserSessionIDKey];
      v9 = v20[5];
      v20[5] = v8;
    }

    v10 = qword_1000EB610;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100063CB8;
    block[3] = &unk_1000DDB18;
    v14 = v6;
    v15 = self;
    v16 = &v31;
    v17 = &v25;
    v18 = &v19;
    dispatch_sync(v10, block);
    v7[2](v7, v32[5], v26[5]);
  }

  else
  {
    v11 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
    v12 = v26[5];
    v26[5] = v11;

    if (v7)
    {
      v7[2](v7, 0, v26[5]);
    }
  }

  _Block_object_dispose(&v19, 8);

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v31, 8);
}

- (void)foregroundUserSessionAttributesWithReply:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100058864;
  v16 = sub_100058874;
  v17 = 0;
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_100058864;
  v10 = sub_100058874;
  v11 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000640AC;
  block[3] = &unk_1000DDAC8;
  block[4] = self;
  block[5] = &v6;
  block[6] = &v12;
  dispatch_sync(qword_1000EB610, block);
  v4[2](v4, v7[5], v13[5]);
  _Block_object_dispose(&v6, 8);

  _Block_object_dispose(&v12, 8);
}

- (void)configureLoginUIWithUserSessionCount:(int)a3 reply:(id)a4
{
  v6 = a4;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = sub_100058864;
  v33 = sub_100058874;
  v34 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_100058864;
  v27 = sub_100058874;
  v28 = 0;
  if ([(UMSyncService *)self remoteProcessHasBooleanEntitlement:@"com.apple.mkb.usersession.loginwindow"])
  {
    if (!_os_feature_enabled_impl())
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10006468C;
      block[3] = &unk_1000DDB40;
      v20 = a3;
      block[5] = &v29;
      block[6] = &v23;
      block[4] = self;
      dispatch_sync(qword_1000EB610, block);
      v6[2](v6, v24[5], v30[5]);
      goto LABEL_30;
    }

    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v7 = qword_1000EB420;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 0;
      v8 = sub_1000011A8(1);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v9 = v8;
      }

      else
      {
        v9 = v8 & 0xFFFFFFFE;
      }

      if (v9)
      {
        v21 = 0;
        v10 = _os_log_send_and_compose_impl();
        v11 = v10;
        if (v10)
        {
          sub_100002A8C(v10);
        }
      }

      else
      {
        v11 = 0;
      }

      free(v11);
    }

    if (qword_1000EB438 != -1)
    {
      sub_100095FDC();
    }

    v13 = qword_1000EB430;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v22 = 0;
      v14 = sub_1000011A8(0);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v15 = v14;
      }

      else
      {
        v15 = v14 & 0xFFFFFFFE;
      }

      if (v15)
      {
        v21 = 0;
        v16 = _os_log_send_and_compose_impl();
        v17 = v16;
        if (v16)
        {
          sub_100002A8C(v16);
        }
      }

      else
      {
        v17 = 0;
      }

      free(v17);
    }

    v12 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
  }

  else
  {
    v12 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
  }

  v18 = v30[5];
  v30[5] = v12;

  if (v6)
  {
    v6[2](v6, 0, v30[5]);
  }

LABEL_30:
  _Block_object_dispose(&v23, 8);

  _Block_object_dispose(&v29, 8);
}

- (void)switchToLoginUIUserSessionWithReply:(id)a3
{
  v7 = a3;
  if ([(UMSyncService *)self remoteProcessHasBooleanEntitlement:@"com.apple.mkb.usersession.loginwindow"])
  {
    v4 = sub_100029CC8();
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

- (void)addSyncServiceSource:(id)a3 toUserSession:(int)a4 withReply:(id)a5
{
  v8 = a3;
  v9 = a5;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = -1;
  if ([(UMSyncService *)self remoteProcessHasBooleanEntitlement:@"com.apple.mkb.usersession.synctest"])
  {
    v10 = qword_1000EB610;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100064D4C;
    block[3] = &unk_1000DDB68;
    v16 = a4;
    v14 = v8;
    v15 = &v17;
    dispatch_sync(v10, block);
    v11 = *(v18 + 6);
    if (v11)
    {
      v12 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v11 userInfo:0];
    }

    else
    {
      v12 = 0;
    }

    v9[2](v9, v12);
  }

  else
  {
    v12 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
    if (v9)
    {
      v9[2](v9, v12);
    }
  }

  _Block_object_dispose(&v17, 8);
}

- (void)removeSyncServiceSource:(id)a3 toUserSession:(int)a4 withReply:(id)a5
{
  v8 = a3;
  v9 = a5;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = -1;
  if ([(UMSyncService *)self remoteProcessHasBooleanEntitlement:@"com.apple.mkb.usersession.synctest"])
  {
    v10 = qword_1000EB610;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100065154;
    block[3] = &unk_1000DDB68;
    v16 = a4;
    v14 = v8;
    v15 = &v17;
    dispatch_sync(v10, block);
    v11 = *(v18 + 6);
    if (v11)
    {
      v12 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v11 userInfo:0];
    }

    else
    {
      v12 = 0;
    }

    v9[2](v9, v12);
  }

  else
  {
    v12 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
    if (v9)
    {
      v9[2](v9, v12);
    }
  }

  _Block_object_dispose(&v17, 8);
}

- (void)startUserSyncBubble:(int)a3 withReply:(id)a4
{
  v6 = a4;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = -1;
  if ([(UMSyncService *)self remoteProcessHasBooleanEntitlement:@"com.apple.mkb.usersession.synctest"])
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10006553C;
    v9[3] = &unk_1000DD550;
    v10 = a3;
    v9[4] = &v11;
    dispatch_sync(qword_1000EB610, v9);
    v7 = *(v12 + 6);
    if (v7)
    {
      v8 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v7 userInfo:0];
    }

    else
    {
      v8 = 0;
    }

    v6[2](v6, v8);
  }

  else
  {
    v8 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
    if (v6)
    {
      v6[2](v6, v8);
    }
  }

  _Block_object_dispose(&v11, 8);
}

- (void)stoptUserSyncBubble:(int)a3 withReply:(id)a4
{
  v6 = a4;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = -1;
  if ([(UMSyncService *)self remoteProcessHasBooleanEntitlement:@"com.apple.mkb.usersession.synctest"])
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10006596C;
    v9[3] = &unk_1000DD550;
    v10 = a3;
    v9[4] = &v11;
    dispatch_sync(qword_1000EB610, v9);
    v7 = *(v12 + 6);
    if (v7)
    {
      v8 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v7 userInfo:0];
    }

    else
    {
      v8 = 0;
    }

    v6[2](v6, v8);
  }

  else
  {
    v8 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
    if (v6)
    {
      v6[2](v6, v8);
    }
  }

  _Block_object_dispose(&v11, 8);
}

- (void)MKBUserSessionSetInternalTest:(BOOL)a3 withReply:(id)a4
{
  v6 = a4;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = -1;
  if ([(UMSyncService *)self remoteProcessHasBooleanEntitlement:@"com.apple.mkb.usersession.synctest"])
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100065DA0;
    v9[3] = &unk_1000DDB90;
    v10 = a3;
    v9[4] = &v11;
    dispatch_sync(qword_1000EB610, v9);
    v7 = *(v12 + 6);
    if (v7)
    {
      v8 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v7 userInfo:0];
    }

    else
    {
      v8 = 0;
    }

    v6[2](v6, v8);
  }

  else
  {
    v8 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
    if (v6)
    {
      v6[2](v6, v8);
    }
  }

  _Block_object_dispose(&v11, 8);
}

- (void)currentSyncBubbleIDwithReply:(id)a3
{
  v4 = a3;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = -1;
  if ([(UMSyncService *)self remoteProcessHasBooleanEntitlement:@"com.apple.mkb.usersession.synctest"])
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100066314;
    block[3] = &unk_1000DD910;
    block[4] = &v8;
    dispatch_sync(qword_1000EB610, block);
    v5 = *(v9 + 6);
    if (v5 == -1)
    {
      v6 = [NSError errorWithDomain:NSPOSIXErrorDomain code:5 userInfo:0];
      v5 = *(v9 + 6);
    }

    else
    {
      v6 = 0;
    }

    v4[2](v4, v5, v6);
  }

  else
  {
    v6 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
    if (v4)
    {
      v4[2](v4, *(v9 + 6), v6);
    }
  }

  _Block_object_dispose(&v8, 8);
}

- (void)listSyncServiceSourcesForUserSession:(id)a3 withReply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = -1;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_100058864;
  v19 = sub_100058874;
  v20 = 0;
  if ([(UMSyncService *)self remoteProcessHasBooleanEntitlement:@"com.apple.mkb.usersession.synctest"])
  {
    if (v6)
    {
      v8 = qword_1000EB610;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000666A8;
      block[3] = &unk_1000DD9B0;
      v12 = v6;
      v13 = &v15;
      v14 = &v21;
      dispatch_sync(v8, block);
      v9 = *(v22 + 6);
      if (v9)
      {
        v10 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v9 userInfo:0];
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
    }

    v7[2](v7, v16[5], v10);
  }

  else
  {
    v10 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
    if (v7)
    {
      v7[2](v7, v16[5], v10);
    }
  }

  _Block_object_dispose(&v15, 8);

  _Block_object_dispose(&v21, 8);
}

- (void)listSyncBubbleUserswithReply:(id)a3
{
  v4 = a3;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_100058864;
  v12 = sub_100058874;
  v13 = 0;
  if ([(UMSyncService *)self remoteProcessHasBooleanEntitlement:@"com.apple.mkb.usersession.synctest"])
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100066B64;
    block[3] = &unk_1000DD910;
    block[4] = &v8;
    dispatch_sync(qword_1000EB610, block);
    v5 = v9[5];
    if (v5)
    {
      v6 = 0;
    }

    else
    {
      v6 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      v5 = v9[5];
    }

    v4[2](v4, v5, v6);
  }

  else
  {
    v6 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
    if (v4)
    {
      v4[2](v4, 0, v6);
    }
  }

  _Block_object_dispose(&v8, 8);
}

- (void)clearSyncBubbleUserswithReply:(id)a3
{
  v4 = a3;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = -1;
  if ([(UMSyncService *)self remoteProcessHasBooleanEntitlement:@"com.apple.mkb.usersession.synctest"])
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100066D44;
    block[3] = &unk_1000DD910;
    block[4] = &v8;
    dispatch_sync(qword_1000EB610, block);
    v5 = *(v9 + 6);
    if (v5)
    {
      v6 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v5 userInfo:0];
    }

    else
    {
      v6 = 0;
    }

    v4[2](v4, v6);
  }

  else
  {
    v6 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
    if (v4)
    {
      v4[2](v4, v6);
    }
  }

  _Block_object_dispose(&v8, 8);
}

- (void)limitNumberOfUserSessions:(int)a3 withReply:(id)a4
{
  v8 = a4;
  if ([(UMSyncService *)self remoteProcessHasBooleanEntitlement:@"com.apple.mkb.usersession.synctest"])
  {
    if (sub_1000310B4(a3) == -1)
    {
      v6 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
    }

    else
    {
      v6 = 0;
    }

    v7 = v8[2];
  }

  else
  {
    v6 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
    if (!v8)
    {
      goto LABEL_9;
    }

    v7 = v8[2];
  }

  v7();
LABEL_9:
}

- (void)switchBlockTasksInfoWithReply:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100058864;
  v16 = sub_100058874;
  v17 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = -1;
  if ([(UMSyncService *)self remoteProcessHasBooleanEntitlement:@"com.apple.mkb.usersession.synctest"])
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10006721C;
    v7[3] = &unk_1000DD458;
    v7[4] = &v12;
    v7[5] = &v8;
    dispatch_sync(qword_1000EB610, v7);
    v5 = *(v9 + 6);
    if (v5)
    {
      v6 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v5 userInfo:0];
    }

    else
    {
      v6 = 0;
    }

    v4[2](v4, v13[5], v6);
  }

  else
  {
    v6 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
    if (v4)
    {
      v4[2](v4, 0, v6);
    }
  }

  _Block_object_dispose(&v8, 8);
  _Block_object_dispose(&v12, 8);
}

- (void)userSessionLRUInfoWithReply:(id)a3
{
  v4 = a3;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_100058864;
  v12 = sub_100058874;
  v13 = 0;
  if ([(UMSyncService *)self remoteProcessHasBooleanEntitlement:@"com.apple.mkb.usersession.synctest"])
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100067510;
    block[3] = &unk_1000DD910;
    block[4] = &v8;
    dispatch_sync(qword_1000EB610, block);
    v5 = v9[5];
    if (v5)
    {
      v6 = 0;
    }

    else
    {
      v6 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      v5 = v9[5];
    }

    v4[2](v4, v5, v6);
  }

  else
  {
    v6 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
    if (v4)
    {
      v4[2](v4, 0, v6);
    }
  }

  _Block_object_dispose(&v8, 8);
}

- (void)mountUserSessionVolumeforID:(int)a3 withReply:(id)a4
{
  v6 = a4;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = -1;
  if ([(UMSyncService *)self remoteProcessHasBooleanEntitlement:@"com.apple.mkb.usersession.synctest"])
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100067700;
    v9[3] = &unk_1000DD550;
    v10 = a3;
    v9[4] = &v11;
    dispatch_sync(qword_1000EB610, v9);
    v7 = *(v12 + 6);
    if (v7)
    {
      v8 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v7 userInfo:0];
    }

    else
    {
      v8 = 0;
    }

    v6[2](v6, v8);
  }

  else
  {
    v8 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
    if (v6)
    {
      v6[2](v6, v8);
    }
  }

  _Block_object_dispose(&v11, 8);
}

- (void)unmountUserSessionVolumeforID:(int)a3 withReply:(id)a4
{
  v6 = a4;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = -1;
  if ([(UMSyncService *)self remoteProcessHasBooleanEntitlement:@"com.apple.mkb.usersession.synctest"])
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100067A08;
    v9[3] = &unk_1000DD550;
    v10 = a3;
    v9[4] = &v11;
    dispatch_sync(qword_1000EB610, v9);
    v7 = *(v12 + 6);
    if (v7)
    {
      v8 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v7 userInfo:0];
    }

    else
    {
      v8 = 0;
    }

    v6[2](v6, v8);
  }

  else
  {
    v8 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
    if (v6)
    {
      v6[2](v6, v8);
    }
  }

  _Block_object_dispose(&v11, 8);
}

- (void)isLoginSessionwithReply:(id)a3
{
  v4 = a3;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_100058864;
  v24 = sub_100058874;
  v25 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = -1;
  if ([(UMSyncService *)self remoteProcessHasBooleanEntitlement:@"com.apple.mkb.usersession.loginwindow"])
  {
    v5 = qword_1000EB610;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100067D94;
    block[3] = &unk_1000DDBB8;
    v14 = &v16;
    v15 = &v20;
    v6 = v4;
    v13 = v6;
    dispatch_sync(v5, block);
    v7 = *(v17 + 6);
    if (v7)
    {
      v8 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v7 userInfo:0];
      v9 = v21[5];
      v21[5] = v8;
    }

    (*(v6 + 2))(v6, v21[5]);
  }

  else
  {
    v10 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
    v11 = v21[5];
    v21[5] = v10;

    if (v4)
    {
      (*(v4 + 2))(v4, v21[5]);
    }
  }

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v20, 8);
}

- (void)userSessionDeviceConfigurationInfo:(int)a3 withReply:(id)a4
{
  v6 = a4;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = -1;
  if ([(UMSyncService *)self remoteProcessHasBooleanEntitlement:@"com.apple.mkb.usersession.deviceconfig"])
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100067FC8;
    v9[3] = &unk_1000DD550;
    v10 = a3;
    v9[4] = &v11;
    dispatch_sync(qword_1000EB610, v9);
    v7 = *(v12 + 6);
    if (v7)
    {
      v8 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v7 userInfo:0];
    }

    else
    {
      v8 = 0;
    }

    v6[2](v6, v8);
  }

  else
  {
    v8 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
    if (v6)
    {
      v6[2](v6, v8);
    }
  }

  _Block_object_dispose(&v11, 8);
}

- (void)replacePersonaMachPortVoucher:(id)a3 withAccountID:(id)a4 generationSet:(BOOL)a5 forPid:(int)a6 withReply:(id)a7
{
  v9 = a5;
  v12 = a3;
  v13 = a4;
  v14 = a7;
  v67 = 0;
  v68 = &v67;
  v69 = 0x3032000000;
  v70 = sub_100058864;
  v71 = sub_100058874;
  v72 = 0;
  v61 = 0;
  v62 = &v61;
  v63 = 0x3032000000;
  v64 = sub_100058864;
  v65 = sub_100058874;
  v66 = 0;
  v59[0] = 0;
  v59[1] = v59;
  v59[2] = 0x2020000000;
  v60 = 22;
  v57[0] = 0;
  v57[1] = v57;
  v57[2] = 0x2020000000;
  v58 = 0;
  v55[0] = 0;
  v55[1] = v55;
  v55[2] = 0x2020000000;
  v56 = 0;
  if (v9)
  {
    if (qword_1000EB448 != -1)
    {
      sub_100096004();
    }

    v15 = qword_1000EB440;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v77 = 0;
      v16 = sub_1000011A8(0);
      v17 = v15;
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        v16 &= ~1u;
      }

      if (v16)
      {
        v18 = [(UMSyncService *)self remoteServiceName];
        *v73 = 138543618;
        *&v73[4] = v18;
        *&v73[12] = 1024;
        *v74 = a6;
        v19 = _os_log_send_and_compose_impl();

        if (v19)
        {
          sub_100002A8C(v19);
        }
      }

      else
      {

        v19 = 0;
      }

      free(v19);
    }
  }

  else if (![(UMSyncService *)self remoteProcessHasBooleanEntitlement:@"com.apple.usermanagerd.persona.background"])
  {
    if (qword_1000EB448 != -1)
    {
      sub_100096004();
    }

    v20 = qword_1000EB440;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *v73 = 0;
      v21 = sub_1000011A8(0);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v22 = v21;
      }

      else
      {
        v22 = v21 & 0xFFFFFFFE;
      }

      if (v22)
      {
        LODWORD(v77) = 67109120;
        HIDWORD(v77) = a6;
        v23 = _os_log_send_and_compose_impl();
        v24 = v23;
        if (v23)
        {
          sub_100002A8C(v23);
        }
      }

      else
      {
        v24 = 0;
      }

      free(v24);
    }

    if (v14)
    {
      v34 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
      v14[2](v14, 0, v34);
      goto LABEL_67;
    }

    goto LABEL_68;
  }

  current_persona = voucher_get_current_persona();
  if (qword_1000EB448 != -1)
  {
    sub_100096004();
  }

  v26 = qword_1000EB440;
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v77 = 0;
    v27 = sub_1000011A8(0);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v28 = v27;
    }

    else
    {
      v28 = v27 & 0xFFFFFFFE;
    }

    if (v28)
    {
      *v73 = 67109890;
      *&v73[4] = a6;
      *&v73[8] = 1024;
      *&v73[10] = current_persona;
      *v74 = 2114;
      *&v74[2] = v13;
      v75 = 1024;
      v76 = v9;
      v29 = _os_log_send_and_compose_impl();
      v30 = v29;
      if (v29)
      {
        sub_100002A8C(v29);
      }
    }

    else
    {
      v30 = 0;
    }

    free(v30);
  }

  if (v12)
  {
    if (v13)
    {
      v31 = +[NSXPCConnection currentConnection];
      v32 = sub_1000011DC([v31 processIdentifier]);

      v33 = qword_1000EB610;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100068B80;
      block[3] = &unk_1000DDBE0;
      v48 = v57;
      v53 = v32;
      v46 = v12;
      v49 = v59;
      v54 = a6;
      v47 = v13;
      v50 = v55;
      v51 = &v67;
      v52 = &v61;
      dispatch_sync(v33, block);
      v14[2](v14, v62[5], v68[5]);

      v34 = v46;
LABEL_67:

      goto LABEL_68;
    }

    if (qword_1000EB448 != -1)
    {
      sub_100096004();
    }

    v40 = qword_1000EB440;
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      *v73 = 0;
      v41 = sub_1000011A8(0);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        v42 = v41;
      }

      else
      {
        v42 = v41 & 0xFFFFFFFE;
      }

      if (v42)
      {
        LODWORD(v77) = 67109120;
        HIDWORD(v77) = a6;
        v43 = _os_log_send_and_compose_impl();
        v44 = v43;
        if (v43)
        {
          sub_100002A8C(v43);
        }
      }

      else
      {
        v44 = 0;
      }

      free(v44);
    }

    if (v14)
    {
LABEL_66:
      v34 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      v14[2](v14, 0, v34);
      goto LABEL_67;
    }
  }

  else
  {
    if (qword_1000EB448 != -1)
    {
      sub_100096004();
    }

    v35 = qword_1000EB440;
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      *v73 = 0;
      v36 = sub_1000011A8(0);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v37 = v36;
      }

      else
      {
        v37 = v36 & 0xFFFFFFFE;
      }

      if (v37)
      {
        LODWORD(v77) = 67109120;
        HIDWORD(v77) = a6;
        v38 = _os_log_send_and_compose_impl();
        v39 = v38;
        if (v38)
        {
          sub_100002A8C(v38);
        }
      }

      else
      {
        v39 = 0;
      }

      free(v39);
    }

    if (v14)
    {
      goto LABEL_66;
    }
  }

LABEL_68:
  _Block_object_dispose(v55, 8);
  _Block_object_dispose(v57, 8);
  _Block_object_dispose(v59, 8);
  _Block_object_dispose(&v61, 8);

  _Block_object_dispose(&v67, 8);
}

- (void)fetchAllUsersPersonaListforPid:(int)a3 withCompletionHandler:(id)a4
{
  v6 = a4;
  if (qword_1000EB448 != -1)
  {
    sub_10009602C();
  }

  v7 = qword_1000EB440;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v31 = 0;
    v8 = sub_1000011A8(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v9 = v8;
    }

    else
    {
      v9 = v8 & 0xFFFFFFFE;
    }

    if (v9)
    {
      v32 = 67109120;
      v33 = a3;
      v10 = _os_log_send_and_compose_impl();
      v11 = v10;
      if (v10)
      {
        sub_100002A8C(v10);
      }
    }

    else
    {
      v11 = 0;
    }

    free(v11);
  }

  if (v6)
  {
    if ([(UMSyncService *)self remoteProcessHasBooleanEntitlement:@"com.apple.usermanagerd.persona.fetch"])
    {
      if (qword_1000EB448 != -1)
      {
        sub_100096004();
      }

      v12 = qword_1000EB440;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v31 = 0;
        v13 = sub_1000011A8(0);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          v14 = v13;
        }

        else
        {
          v14 = v13 & 0xFFFFFFFE;
        }

        if (v14)
        {
          v32 = 67109120;
          v33 = a3;
          v15 = _os_log_send_and_compose_impl();
          v16 = v15;
          if (v15)
          {
            sub_100002A8C(v15);
          }
        }

        else
        {
          v16 = 0;
        }

        free(v16);
      }

      v27 = qword_1000EB610;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100069CB8;
      block[3] = &unk_1000DDC30;
      v30 = a3;
      v29 = v6;
      dispatch_sync(v27, block);
      v17 = v29;
    }

    else
    {
      if (qword_1000EB448 != -1)
      {
        sub_100096004();
      }

      v22 = qword_1000EB440;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v31 = 0;
        v23 = sub_1000011A8(0);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v24 = v23;
        }

        else
        {
          v24 = v23 & 0xFFFFFFFE;
        }

        if (v24)
        {
          v32 = 67109120;
          v33 = a3;
          v25 = _os_log_send_and_compose_impl();
          v26 = v25;
          if (v25)
          {
            sub_100002A8C(v25);
          }
        }

        else
        {
          v26 = 0;
        }

        free(v26);
      }

      v17 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
      (*(v6 + 2))(v6, 0, v17);
    }
  }

  else
  {
    if (qword_1000EB448 != -1)
    {
      sub_100096004();
    }

    v17 = qword_1000EB440;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v31 = 0;
      v18 = sub_1000011A8(0);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v19 = v18;
      }

      else
      {
        v19 = v18 & 0xFFFFFFFE;
      }

      if (v19)
      {
        v32 = 67109120;
        v33 = a3;
        v20 = _os_log_send_and_compose_impl();
        v21 = v20;
        if (v20)
        {
          sub_100002A8C(v20);
        }
      }

      else
      {
        v21 = 0;
      }

      free(v21);
    }
  }
}

- (void)fetchAsidMapforPid:(int)a3 withCompletionHandler:(id)a4
{
  v5 = a4;
  if ([(UMSyncService *)self remoteProcessHasBooleanEntitlement:@"com.apple.usermanagerd.persona.fetch"])
  {
    if (qword_1000EB428 != -1)
    {
      sub_100095F8C();
    }

    v6 = qword_1000EB420;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = sub_1000011A8(1);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        v8 = v7;
      }

      else
      {
        v8 = v7 & 0xFFFFFFFE;
      }

      if (v8)
      {
        v9 = _os_log_send_and_compose_impl();
        v10 = v9;
        if (v9)
        {
          sub_100002A8C(v9);
        }
      }

      else
      {
        v10 = 0;
      }

      free(v10);
    }

    if (v5)
    {
      v16 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
LABEL_28:
      v5[2](v5, 0, v16);
      goto LABEL_29;
    }

    v16 = 0;
  }

  else
  {
    if (qword_1000EB428 != -1)
    {
      sub_100095F8C();
    }

    v11 = qword_1000EB420;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = sub_1000011A8(1);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v13 = v12;
      }

      else
      {
        v13 = v12 & 0xFFFFFFFE;
      }

      if (v13)
      {
        v14 = _os_log_send_and_compose_impl();
        v15 = v14;
        if (v14)
        {
          sub_100002A8C(v14);
        }
      }

      else
      {
        v15 = 0;
      }

      free(v15);
    }

    v16 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
    if (v5)
    {
      goto LABEL_28;
    }
  }

LABEL_29:
}

- (void)fetchPersonaGenerationNumberWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = +[NSXPCConnection currentConnection];
  v6 = [v5 processIdentifier];

  if ([(UMSyncService *)self remoteProcessHasBooleanEntitlement:@"com.apple.usermanagerd.persona.fetch"])
  {
    v7 = qword_1000EB610;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10006AA34;
    block[3] = &unk_1000DD1B0;
    v15 = v4;
    dispatch_sync(v7, block);
    v8 = v15;
  }

  else
  {
    if (qword_1000EB448 != -1)
    {
      sub_10009602C();
    }

    v9 = qword_1000EB440;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v16 = 0;
      v10 = sub_1000011A8(0);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v11 = v10;
      }

      else
      {
        v11 = v10 & 0xFFFFFFFE;
      }

      if (v11)
      {
        v17 = 67109120;
        v18 = v6;
        v12 = _os_log_send_and_compose_impl();
        v13 = v12;
        if (v12)
        {
          sub_100002A8C(v12);
        }
      }

      else
      {
        v13 = 0;
      }

      free(v13);
    }

    v8 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
    (*(v4 + 2))(v4, 0, v8);
  }
}

- (void)bundleIdentifiersForPersona:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = sub_100058864;
  v41 = sub_100058874;
  v42 = 0;
  v36 = -1;
  v8 = +[NSXPCConnection currentConnection];
  v9 = [v8 processIdentifier];

  if ([(UMSyncService *)self remoteProcessHasBooleanEntitlement:@"com.apple.usermanagerd.persona.fetchbundle"])
  {
    if (v6)
    {
      goto LABEL_28;
    }

    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v10 = qword_1000EB420;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v35 = 0;
      v11 = sub_1000011A8(1);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v12 = v11;
      }

      else
      {
        v12 = v11 & 0xFFFFFFFE;
      }

      if (v12)
      {
        LOWORD(v43) = 0;
        v13 = _os_log_send_and_compose_impl();
        v14 = v13;
        if (v13)
        {
          sub_100002A8C(v13);
        }
      }

      else
      {
        v14 = 0;
      }

      free(v14);
    }

    v19 = 22;
  }

  else
  {
    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v10 = qword_1000EB420;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v35 = 0;
      v15 = sub_1000011A8(1);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v16 = v15;
      }

      else
      {
        v16 = v15 & 0xFFFFFFFE;
      }

      if (v16)
      {
        v43 = 67109120;
        v44 = v9;
        v17 = _os_log_send_and_compose_impl();
        v18 = v17;
        if (v17)
        {
          sub_100002A8C(v17);
        }
      }

      else
      {
        v18 = 0;
      }

      free(v18);
    }

    v19 = 1;
  }

  v20 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v19 userInfo:0];
  v21 = v38[5];
  v38[5] = v20;

LABEL_28:
  if (v38[5])
  {
    if (v7)
    {
      v7[2](v7, 0);
    }
  }

  else
  {
    v22 = [(UMSyncService *)self asidForClient:0 withAuid:&v36 withPid:v9];
    v23 = +[NSXPCConnection currentConnection];
    v24 = sub_1000011DC([v23 processIdentifier]);

    v25 = qword_1000EB610;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10006AE80;
    block[3] = &unk_1000DDC58;
    v26 = v6;
    v31 = v9;
    v32 = v22;
    v33 = v36;
    v34 = v24;
    v28 = v26;
    v30 = &v37;
    v29 = v7;
    dispatch_sync(v25, block);
  }

  _Block_object_dispose(&v37, 8);
}

- (void)setBundlesIdentifiers:(id)a3 forPersona:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v47 = 0;
  v48 = &v47;
  v49 = 0x3032000000;
  v50 = sub_100058864;
  v51 = sub_100058874;
  v52 = 0;
  v46 = -1;
  v11 = +[NSXPCConnection currentConnection];
  v12 = [v11 processIdentifier];

  if (![(UMSyncService *)self remoteProcessHasBooleanEntitlement:@"com.apple.usermanagerd.persona.setbundle"])
  {
    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v18 = qword_1000EB420;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v45 = 0;
      v19 = sub_1000011A8(1);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v20 = v19;
      }

      else
      {
        v20 = v19 & 0xFFFFFFFE;
      }

      if (v20)
      {
        v53 = 67109120;
        v54 = v12;
        v21 = _os_log_send_and_compose_impl();
        v22 = v21;
        if (v21)
        {
          sub_100002A8C(v21);
        }
      }

      else
      {
        v22 = 0;
      }

      free(v22);
    }

    v23 = 1;
    goto LABEL_40;
  }

  if (!v9)
  {
    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v13 = qword_1000EB420;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v45 = 0;
      v14 = sub_1000011A8(1);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v15 = v14;
      }

      else
      {
        v15 = v14 & 0xFFFFFFFE;
      }

      if (v15)
      {
        LOWORD(v53) = 0;
        v16 = _os_log_send_and_compose_impl();
        v17 = v16;
        if (v16)
        {
          sub_100002A8C(v16);
        }
      }

      else
      {
        v17 = 0;
      }

      free(v17);
    }

    v24 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
    v25 = v48[5];
    v48[5] = v24;
  }

  if (!v8)
  {
    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v18 = qword_1000EB420;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v45 = 0;
      v26 = sub_1000011A8(1);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v27 = v26;
      }

      else
      {
        v27 = v26 & 0xFFFFFFFE;
      }

      if (v27)
      {
        LOWORD(v53) = 0;
        v28 = _os_log_send_and_compose_impl();
        v29 = v28;
        if (v28)
        {
          sub_100002A8C(v28);
        }
      }

      else
      {
        v29 = 0;
      }

      free(v29);
    }

    v23 = 22;
LABEL_40:

    v30 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v23 userInfo:0];
    v31 = v48[5];
    v48[5] = v30;
  }

  if (v48[5])
  {
    if (v10)
    {
      v10[2](v10);
    }
  }

  else
  {
    v32 = [(UMSyncService *)self asidForClient:0 withAuid:&v46 withPid:v12];
    v33 = +[NSXPCConnection currentConnection];
    v34 = sub_1000011DC([v33 processIdentifier]);

    v35 = qword_1000EB610;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10006B6F4;
    block[3] = &unk_1000DDC80;
    v37 = v9;
    v41 = v12;
    v42 = v32;
    v43 = v46;
    v44 = v34;
    v38 = v8;
    v40 = &v47;
    v39 = v10;
    dispatch_sync(v35, block);
  }

  _Block_object_dispose(&v47, 8);
}

- (void)personaLoginWithPid:(int)a3 WithUserODuuid:(id)a4 withUid:(unsigned int)a5 completionHandler:(id)a6
{
  if (a6)
  {
    v7 = a6;
    v8 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
    (*(a6 + 2))(v7, v8);
  }
}

- (void)personaLogoutWithPid:(int)a3 WithUserODuuid:(id)a4 withUid:(unsigned int)a5 completionHandler:(id)a6
{
  if (a6)
  {
    v7 = a6;
    v8 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
    (*(a6 + 2))(v7, v8);
  }
}

- (void)grantSandboxExtensionForPersonaWithUniqueString:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = sub_100058864;
  v47 = sub_100058874;
  v48 = 0;
  v8 = +[NSXPCConnection currentConnection];
  v9 = [v8 processIdentifier];

  if ([(UMSyncService *)self remoteProcessHasBooleanEntitlement:@"com.apple.usermanagerd.persona.grantSandboxExtension"])
  {
    v42 = 0u;
    v41 = 0u;
    v10 = +[NSXPCConnection currentConnection];
    v11 = v10;
    if (v10)
    {
      [v10 auditToken];
    }

    else
    {
      v42 = 0u;
      v41 = 0u;
    }

    v40 = -1;
    v17 = [(UMSyncService *)self asidForClient:0 withAuid:&v40 withPid:v9];
    v18 = +[NSXPCConnection currentConnection];
    v19 = sub_1000011DC([v18 processIdentifier]);

    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v20 = qword_1000EB420;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v39 = 0;
      v21 = sub_1000011A8(1);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v22 = v21;
      }

      else
      {
        v22 = v21 & 0xFFFFFFFE;
      }

      if (v22)
      {
        v49 = 138413058;
        v50 = v6;
        v51 = 1024;
        v52 = v9;
        v53 = 1024;
        v54 = v17;
        v55 = 1024;
        v56 = v40;
        v23 = _os_log_send_and_compose_impl();
        v24 = v23;
        if (v23)
        {
          sub_100002A8C(v23);
        }
      }

      else
      {
        v24 = 0;
      }

      free(v24);
    }

    v27 = qword_1000EB610;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10006C624;
    block[3] = &unk_1000DDCD0;
    v33 = v17;
    v34 = v40;
    v35 = v19;
    v28 = v6;
    v36 = v41;
    v37 = v42;
    v38 = v9;
    v30 = v28;
    v32 = &v43;
    v31 = v7;
    dispatch_sync(v27, block);
  }

  else
  {
    if (qword_1000EB428 != -1)
    {
      sub_100095FA0();
    }

    v12 = qword_1000EB420;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *&v41 = 0;
      v13 = sub_1000011A8(1);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v14 = v13;
      }

      else
      {
        v14 = v13 & 0xFFFFFFFE;
      }

      if (v14)
      {
        v49 = 67109120;
        LODWORD(v50) = v9;
        v15 = _os_log_send_and_compose_impl();
        v16 = v15;
        if (v15)
        {
          sub_100002A8C(v15);
        }
      }

      else
      {
        v16 = 0;
      }

      free(v16);
    }

    v25 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
    v26 = v44[5];
    v44[5] = v25;

    if (v7)
    {
      (*(v7 + 2))(v7, 0, v44[5]);
    }
  }

  _Block_object_dispose(&v43, 8);
}

- (int)asidForClient:(id)a3 withAuid:(unsigned int *)a4 withPid:(int)a5
{
  if (a4)
  {
    *a4 = -1;
  }

  return -1;
}

@end