@interface SKFilesystemMaintainer
- (BOOL)repairWithError:(id *)a3;
- (BOOL)runMaintenanceOperationWithArgsCreator:(id)a3 error:(id *)a4;
- (BOOL)verifyWithError:(id *)a3;
- (FSClient)client;
- (SKFilesystemMaintainer)initWithDisk:(id)a3;
- (SKFilesystemMaintainer)initWithDisks:(id)a3;
@end

@implementation SKFilesystemMaintainer

- (SKFilesystemMaintainer)initWithDisk:(id)a3
{
  v8 = a3;
  v4 = a3;
  v5 = [NSArray arrayWithObjects:&v8 count:1];

  v6 = [(SKFilesystemMaintainer *)self initWithDisks:v5, v8];
  return v6;
}

- (SKFilesystemMaintainer)initWithDisks:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = SKFilesystemMaintainer;
  v6 = [(SKFilesystemMaintainer *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_disks, a3);
    v8 = [SKProgress progressWithTotalUnitCount:100];
    progress = v7->_progress;
    v7->_progress = v8;
  }

  return v7;
}

- (FSClient)client
{
  client = self->_client;
  if (!client)
  {
    v4 = self;
    objc_sync_enter(v4);
    if (!self->_client)
    {
      v5 = +[FSClient sharedInstance];
      v6 = self->_client;
      self->_client = v5;
    }

    objc_sync_exit(v4);

    client = self->_client;
  }

  return client;
}

- (BOOL)runMaintenanceOperationWithArgsCreator:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(SKFilesystemMaintainer *)self disks];
  v8 = [NSPredicate predicateWithBlock:&stru_1000497D0];
  v9 = [v7 filteredArrayUsingPredicate:v8];

  if ([v9 count])
  {
    v10 = sub_10000BFD0();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v69 = "[SKFilesystemMaintainer runMaintenanceOperationWithArgsCreator:error:]";
      v70 = 2112;
      v71 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s: Cannot run maintenance operation on disks without filesystem, %@", buf, 0x16u);
    }

    v11 = [SKError errorWithCode:117 disks:v9 userInfo:0];
    v12 = [SKError failWithError:v11 error:a4];
    goto LABEL_29;
  }

  v13 = [(SKFilesystemMaintainer *)self progress];
  [v13 setCompletedUnitCount:0];

  v53 = objc_opt_new();
  v14 = objc_opt_new();
  v58 = dispatch_group_create();
  v15 = [(SKFilesystemMaintainer *)self disks];
  v16 = [v15 count];

  if (!v16)
  {
LABEL_18:
    v38 = [SKWaitableAggregate alloc];
    v11 = v53;
    v39 = [[SKTaskExecuter alloc] initWithTasks:v53];
    v66[0] = v39;
    v40 = [[SKFSTaskPairsWaiter alloc] initWithTaskPairs:v14];
    v66[1] = v40;
    v41 = [NSArray arrayWithObjects:v66 count:2];
    v42 = [(SKWaitableAggregate *)v38 initWithWaitables:v41];

    v12 = [(SKWaitableAggregate *)v42 waitWithError:a4];
    goto LABEL_28;
  }

  v17 = 0;
  v57 = v14;
  v55 = a4;
  v56 = v6;
  v54 = self;
  while (1)
  {
    v18 = [(SKFilesystemMaintainer *)self disks];
    v60 = v17;
    v19 = [v18 objectAtIndexedSubscript:v17];

    v20 = v6[2](v6, v19, a4);
    v61 = v19;
    if (!v20)
    {
      v12 = 0;
      v11 = v53;
LABEL_23:

      goto LABEL_27;
    }

    v21 = [(SKWaitableAggregate *)v19 filesystem];
    v22 = [v21 repairArgs];
    v59 = [v20 containsObject:v22];

    v23 = [(SKWaitableAggregate *)v19 filesystem];
    LODWORD(v22) = [v23 isExtension];

    if (!v22)
    {
      v43 = objc_opt_new();
      [v43 addObjectsFromArray:v20];
      v44 = [(SKWaitableAggregate *)v19 filesystem];
      [v44 xmlOutputArg];
      v46 = v45 = v19;

      v11 = v53;
      if (v46)
      {
        v47 = [(SKWaitableAggregate *)v45 filesystem];
        v48 = [v47 xmlOutputArg];
        [v43 addObject:v48];
      }

      v49 = [(SKWaitableAggregate *)v45 diskIdentifier];
      v50 = [NSString stringWithFormat:@"/dev/%@", v49];
      [v43 addObject:v50];

      v12 = [SKError failWithPOSIXCode:45 error:a4];
      goto LABEL_23;
    }

    v24 = [(SKWaitableAggregate *)v19 filesystem];
    v25 = [v24 bundle];
    v26 = [v25 bundleIdentifier];
    v27 = sub_1000253B4(v26, 0, a4);

    if (!v27)
    {
      break;
    }

    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v28 = v20;
    v29 = [v28 countByEnumeratingWithState:&v62 objects:v67 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v63;
      do
      {
        for (i = 0; i != v30; i = i + 1)
        {
          if (*v63 != v31)
          {
            objc_enumerationMutation(v28);
          }

          v33 = [*(*(&v62 + 1) + 8 * i) stringByReplacingOccurrencesOfString:@"-" withString:&stru_10004A890];
          v34 = [FSTaskOption optionWithoutValue:v33];
          [v27 addOption:v34];
        }

        v30 = [v28 countByEnumeratingWithState:&v62 objects:v67 count:16];
      }

      while (v30);
    }

    v35 = [(SKFilesystemMaintainer *)v54 createReceiverUsingFSKit:v61 opts:v27 taskGroup:v58 writable:([(SKWaitableAggregate *)v61 isWritable]| v59) & 1];
    v14 = v57;
    [v57 addObject:v35];

    self = v54;
    v17 = v60 + 1;
    v36 = [(SKFilesystemMaintainer *)v54 disks];
    v37 = [v36 count];

    a4 = v55;
    v6 = v56;
    if (v60 + 1 >= v37)
    {
      goto LABEL_18;
    }
  }

  v51 = sub_10000BFD0();
  v14 = v57;
  if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v69 = "[SKFilesystemMaintainer runMaintenanceOperationWithArgsCreator:error:]";
    _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_ERROR, "%s: Failed to create bundle options", buf, 0xCu);
  }

  v12 = 0;
  v11 = v53;
LABEL_27:
  v42 = v61;
LABEL_28:

LABEL_29:
  return v12;
}

- (BOOL)verifyWithError:(id *)a3
{
  v5 = sub_10000BFD0();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(SKFilesystemMaintainer *)self disks];
    *buf = 136315394;
    v17 = "[SKFilesystemMaintainer verifyWithError:]";
    v18 = 2112;
    v19 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s: Started verify on %@", buf, 0x16u);
  }

  v15 = 0;
  v7 = [(SKFilesystemMaintainer *)self runMaintenanceOperationWithArgsCreator:&stru_100049810 error:&v15];
  v8 = v15;
  v9 = sub_10000BFD0();
  v10 = v9;
  if (v7)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [(SKFilesystemMaintainer *)self disks];
      *buf = 136315394;
      v17 = "[SKFilesystemMaintainer verifyWithError:]";
      v18 = 2112;
      v19 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s: Finished verify on %@", buf, 0x16u);
    }

    v12 = 1;
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v13 = [(SKFilesystemMaintainer *)self disks];
      *buf = 136315394;
      v17 = "[SKFilesystemMaintainer verifyWithError:]";
      v18 = 2112;
      v19 = v13;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s: Failed to verify disk(s) %@", buf, 0x16u);
    }

    v10 = [SKError errorWithCode:350 underlyingError:v8];
    v12 = [SKError failWithError:v10 error:a3];
  }

  return v12;
}

- (BOOL)repairWithError:(id *)a3
{
  v4 = sub_10000BFD0();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(SKFilesystemMaintainer *)self disks];
    *buf = 136315394;
    v37 = "[SKFilesystemMaintainer repairWithError:]";
    v38 = 2112;
    v39 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s: Started repair on %@", buf, 0x16u);
  }

  v32 = 0;
  v6 = [(SKFilesystemMaintainer *)self runMaintenanceOperationWithArgsCreator:&stru_100049830 error:&v32];
  v7 = v32;
  v8 = v7;
  if (v6)
  {
    v25 = v7;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    obj = [(SKFilesystemMaintainer *)self disks];
    v9 = [obj countByEnumeratingWithState:&v28 objects:v35 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v29;
      while (2)
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v29 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v28 + 1) + 8 * i);
          v14 = +[SKManager syncSharedManager];
          v15 = [v13 diskIdentifier];
          v16 = [v14 diskForString:v15];

          v33 = kSKDiskMountOptionRestore;
          v34 = &__kCFBooleanTrue;
          v17 = [NSDictionary dictionaryWithObjects:&v34 forKeys:&v33 count:1];
          LOBYTE(v15) = [v16 mountWithOptionsDictionary:v17 error:a3];

          if ((v15 & 1) == 0)
          {
            v23 = sub_10000BFD0();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v37 = "[SKFilesystemMaintainer repairWithError:]";
              v38 = 2112;
              v39 = v16;
              _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%s: Failed to remount disk %@ after repair", buf, 0x16u);
            }

            v20 = 0;
            v8 = v25;
            v18 = obj;
            goto LABEL_21;
          }
        }

        v10 = [obj countByEnumeratingWithState:&v28 objects:v35 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v18 = sub_10000BFD0();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [(SKFilesystemMaintainer *)self disks];
      *buf = 136315394;
      v37 = "[SKFilesystemMaintainer repairWithError:]";
      v38 = 2112;
      v39 = v19;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%s: Finished repair on %@", buf, 0x16u);
    }

    v20 = 1;
    v8 = v25;
  }

  else
  {
    v21 = sub_10000BFD0();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = [(SKFilesystemMaintainer *)self disks];
      *buf = 136315394;
      v37 = "[SKFilesystemMaintainer repairWithError:]";
      v38 = 2112;
      v39 = v22;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%s: Failed to repair disk(s) %@", buf, 0x16u);
    }

    v18 = [SKError errorWithCode:351 underlyingError:v8];
    v20 = [SKError failWithError:v18 error:a3];
  }

LABEL_21:

  return v20;
}

@end