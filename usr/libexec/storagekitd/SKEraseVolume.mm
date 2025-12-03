@interface SKEraseVolume
+ (void)reProbeWithDisk:(id)disk isEncrypted:(BOOL)encrypted;
- (BOOL)requiresEraseDiskForAPFS;
- (id)createStateMachineWithError:(id *)error;
- (id)syncDiskFromDaemon:(id)daemon error:(id *)error;
@end

@implementation SKEraseVolume

- (id)syncDiskFromDaemon:(id)daemon error:(id *)error
{
  daemonCopy = daemon;
  v6 = +[SKDaemonManager sharedManager];
  allDisks = [v6 allDisks];

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000134F8;
  v15[3] = &unk_1000491E8;
  v8 = daemonCopy;
  v16 = v8;
  v9 = [NSPredicate predicateWithBlock:v15];
  v10 = [allDisks filteredArrayUsingPredicate:v9];

  if ([v10 count] == 1)
  {
    v11 = [v10 objectAtIndexedSubscript:0];
  }

  else
  {
    v17 = v8;
    v12 = [NSArray arrayWithObjects:&v17 count:1];
    v13 = [SKError errorWithCode:300 disks:v12 userInfo:0];
    v11 = [SKError nilWithError:v13 error:error];
  }

  return v11;
}

- (BOOL)requiresEraseDiskForAPFS
{
  v3 = +[SKBaseManager sharedManager];
  disk = [(SKEraseVolume *)self disk];
  v5 = [v3 wholeDiskForDisk:disk];

  if ([v5 canPartitionDisk])
  {
    type = [v5 type];
    v7 = [type isEqualToString:kSKDiskTypeGPTWholeDisk] ^ 1;
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

+ (void)reProbeWithDisk:(id)disk isEncrypted:(BOOL)encrypted
{
  diskCopy = disk;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = diskCopy;
    container = [v6 container];
    diskCopy = v6;
    if (container)
    {
      container2 = [v6 container];
      isLiveFSAPFSDisk = [container2 isLiveFSAPFSDisk];

      diskCopy = v6;
      if (isLiveFSAPFSDisk)
      {
        diskCopy = [v6 container];
      }
    }
  }

  if (([diskCopy isLiveFSAPFSDisk] & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    if (![diskCopy isLiveFSAPFSDisk] || encrypted)
    {
      v27 = 0;
      v24 = [diskCopy reProbeWithError:&v27];
      v17 = v27;
      if (v24)
      {
        goto LABEL_25;
      }

      v25 = sub_10000BFD0();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v30 = "+[SKEraseVolume(Daemon) reProbeWithDisk:isEncrypted:]";
        v31 = 2112;
        v32 = diskCopy;
        v33 = 2112;
        v34 = v17;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%s: Failed to reProbe %@, %@", buf, 0x20u);
      }
    }

    else
    {
      v10 = +[SKDaemonManager sharedManager];
      disksNotificationsWaiters = [v10 disksNotificationsWaiters];

      v12 = [SKDiskNotificationWaiter alloc];
      diskIdentifier = [diskCopy diskIdentifier];
      v14 = [(SKDiskNotificationWaiter *)v12 initWithDiskIdentifier:diskIdentifier];

      v15 = disksNotificationsWaiters;
      objc_sync_enter(v15);
      [v15 addObject:v14];
      objc_sync_exit(v15);

      v28 = 0;
      v16 = [diskCopy reProbeWithError:&v28];
      v17 = v28;
      if (v16)
      {
        semaphore = [(SKDiskNotificationWaiter *)v14 semaphore];
        v19 = dispatch_time(0, 30000000000);
        v20 = dispatch_semaphore_wait(semaphore, v19) == 0;

        v21 = sub_10000BFD0();
        v22 = v21;
        if (v20)
        {
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            diskIdentifier2 = [diskCopy diskIdentifier];
            *buf = 136315394;
            v30 = "+[SKEraseVolume(Daemon) reProbeWithDisk:isEncrypted:]";
            v31 = 2112;
            v32 = diskIdentifier2;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%s: Received disk notification for %@", buf, 0x16u);
          }
        }

        else if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          diskIdentifier3 = [diskCopy diskIdentifier];
          *buf = 136315394;
          v30 = "+[SKEraseVolume(Daemon) reProbeWithDisk:isEncrypted:]";
          v31 = 2112;
          v32 = diskIdentifier3;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%s: Timeout waiting for notification about %@", buf, 0x16u);
        }
      }

      else
      {
        v22 = sub_10000BFD0();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v30 = "+[SKEraseVolume(Daemon) reProbeWithDisk:isEncrypted:]";
          v31 = 2112;
          v32 = diskCopy;
          v33 = 2112;
          v34 = v17;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%s: Failed to reProbe %@ (LiveFS), %@", buf, 0x20u);
        }
      }

      v25 = v15;
      objc_sync_enter(v25);
      [v25 removeObject:v14];
      objc_sync_exit(v25);
    }

    goto LABEL_25;
  }

  v17 = 0;
LABEL_25:
}

- (id)createStateMachineWithError:(id *)error
{
  disk = [(SKEraseVolume *)self disk];

  if (!disk)
  {
    v6 = +[SKDaemonManager sharedManager];
    diskRepresentation = [(SKEraseVolume *)self diskRepresentation];
    v8 = [v6 knownDiskForDictionary:diskRepresentation];
    [(SKEraseVolume *)self setDisk:v8];

    disk2 = [(SKEraseVolume *)self disk];

    if (!disk2)
    {
      diskRepresentation2 = [(SKEraseVolume *)self diskRepresentation];
      v37 = [SKError errorWithCode:117 userInfo:diskRepresentation2];
      v35 = [SKError nilWithError:v37 error:error];

      goto LABEL_35;
    }
  }

  v10 = [(SKEraseVolume *)self validateWithError:error];

  if (!v10)
  {
    goto LABEL_12;
  }

  descriptor = [(SKEraseVolume *)self descriptor];
  filesystem = [descriptor filesystem];
  descriptor2 = [(SKEraseVolume *)self descriptor];
  name = [descriptor2 name];
  v15 = [filesystem isValidName:name error:error];

  if (!v15)
  {
LABEL_12:
    v35 = 0;
    goto LABEL_35;
  }

  v96[0] = _NSConcreteStackBlock;
  v96[1] = 3221225472;
  v96[2] = sub_10001458C;
  v96[3] = &unk_100048CA0;
  v96[4] = self;
  v97 = @"probeFinishedEvent";
  v16 = objc_retainBlock(v96);
  v94[0] = _NSConcreteStackBlock;
  v94[1] = 3221225472;
  v94[2] = sub_10001471C;
  v94[3] = &unk_100048CA0;
  v94[4] = self;
  v95 = @"umountFinishedEvent";
  v84 = objc_retainBlock(v94);
  v92[0] = _NSConcreteStackBlock;
  v92[1] = 3221225472;
  v92[2] = sub_1000148B8;
  v92[3] = &unk_100048CA0;
  v92[4] = self;
  v93 = @"volumeDeletedEvent";
  v83 = objc_retainBlock(v92);
  v90[0] = _NSConcreteStackBlock;
  v90[1] = 3221225472;
  v90[2] = sub_100014B54;
  v90[3] = &unk_100048CA0;
  v90[4] = self;
  v91 = @"newfsFinishedEvent";
  v17 = objc_retainBlock(v90);
  v88[0] = _NSConcreteStackBlock;
  v88[1] = 3221225472;
  v88[2] = sub_100014CB4;
  v88[3] = &unk_100048CA0;
  v88[4] = self;
  v89 = @"rePartitionedEvent";
  v82 = objc_retainBlock(v88);
  v85[0] = _NSConcreteStackBlock;
  v85[1] = 3221225472;
  v85[2] = sub_100014ED4;
  v85[3] = &unk_100049210;
  v85[4] = self;
  v81 = v17;
  v86 = @"volumeCreatedEvent";
  v87 = v81;
  v80 = objc_retainBlock(v85);
  descriptor3 = [(SKEraseVolume *)self descriptor];
  filesystem2 = [descriptor3 filesystem];
  majorType = [filesystem2 majorType];
  if ([majorType isEqualToString:@"apfs"])
  {
    requiresEraseDiskForAPFS = [(SKEraseVolume *)self requiresEraseDiskForAPFS];

    if (requiresEraseDiskForAPFS)
    {
      v22 = +[SKBaseManager sharedManager];
      disk3 = [(SKEraseVolume *)self disk];
      v24 = [v22 wholeDiskForDisk:disk3];

      descriptor4 = [(SKEraseVolume *)self descriptor];
      v26 = [SKPartitionDescriptor descriptorWithVolume:descriptor4];
      v101 = v26;
      v27 = [NSArray arrayWithObjects:&v101 count:1];
      v28 = [SKEraseDisk eraseDiskWithRootDisk:v24 descriptors:v27 error:error];

      if (v28)
      {
        children = [v24 children];
        v30 = children;
        if (children && [children count]>= 2)
        {
          v31 = [v30 objectAtIndexedSubscript:0];
          [(SKEraseVolume *)self setDisk:v31];
        }

        progress = [(SKEraseVolume *)self progress];
        progress2 = [v28 progress];
        progress3 = [(SKEraseVolume *)self progress];
        [progress chainChildProgress:progress2 withPendingUnitCount:{objc_msgSend(progress3, "totalUnitCount")}];

        v35 = [v28 createStateMachineWithError:error];
      }

      else
      {
        v30 = sub_10000BFD0();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          v100 = "[SKEraseVolume(Daemon) createStateMachineWithError:]";
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "%s: Failed to create eraser for unsupported partition scheme change", buf, 0xCu);
        }

        v35 = 0;
      }

      goto LABEL_34;
    }
  }

  else
  {
  }

  disk4 = [(SKEraseVolume *)self disk];
  filesystem3 = [disk4 filesystem];
  majorType2 = [filesystem3 majorType];
  descriptor5 = [(SKEraseVolume *)self descriptor];
  filesystem4 = [descriptor5 filesystem];
  majorType3 = [filesystem4 majorType];
  v44 = [majorType2 isEqualToString:majorType3];

  if (v44)
  {
    goto LABEL_16;
  }

  descriptor6 = [(SKEraseVolume *)self descriptor];
  filesystem5 = [descriptor6 filesystem];
  majorType4 = [filesystem5 majorType];
  if ([majorType4 isEqualToString:@"apfs"])
  {
    disk5 = [(SKEraseVolume *)self disk];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
LABEL_16:
      v45 = @"eraseToSameFSEvent";
      goto LABEL_24;
    }
  }

  else
  {
  }

  descriptor7 = [(SKEraseVolume *)self descriptor];
  filesystem6 = [descriptor7 filesystem];
  majorType5 = [filesystem6 majorType];
  v54 = [majorType5 isEqualToString:@"apfs"];

  if (v54)
  {
    v45 = @"eraseToAPFSEvent";
  }

  else
  {
    v45 = @"eraseTodifferentFSEvent";
  }

LABEL_24:
  disk6 = [(SKEraseVolume *)self disk];
  canPartitionDisk = [disk6 canPartitionDisk];

  if (canPartitionDisk)
  {
    v57 = @"rePartitionedEvent";
  }

  else
  {
    v57 = v45;
  }

  v72 = v57;
  v78 = sub_10000A5B8(@"nonAPFSDiskState", @"eraseToSameFSEvent", v81, @"nonAPFSDiskState");
  v98[0] = v78;
  v77 = sub_10000A5B8(@"nonAPFSDiskState", @"newfsFinishedEvent", v16, @"nonAPFSDiskState");
  v98[1] = v77;
  v76 = sub_10000A5B8(@"nonAPFSDiskState", @"probeFinishedEvent", v84, @"nonAPFSDiskState");
  v98[2] = v76;
  v75 = sub_10000A5B8(@"nonAPFSDiskState", @"eraseTodifferentFSEvent", v82, @"nonAPFSDiskState");
  v98[3] = v75;
  v74 = sub_10000A5B8(@"nonAPFSDiskState", @"rePartitionedEvent", v81, @"nonAPFSDiskState");
  v98[4] = v74;
  v73 = sub_10000A608(@"nonAPFSDiskState", @"umountFinishedEvent");
  v98[5] = v73;
  v71 = sub_10000A5B8(@"nonAPFSDiskState", @"eraseToAPFSEvent", v82, @"APFSDiskState");
  v98[6] = v71;
  v70 = sub_10000A5B8(@"APFSDiskState", @"eraseTodifferentFSEvent", v83, @"nonAPFSDiskState");
  v98[7] = v70;
  v69 = sub_10000A5B8(@"nonAPFSDiskState", @"volumeDeletedEvent", v82, @"nonAPFSDiskState");
  v98[8] = v69;
  v68 = sub_10000A5B8(@"APFSDiskState", @"eraseToSameFSEvent", v80, @"APFSDiskState");
  v98[9] = v68;
  v58 = sub_10000A5B8(@"APFSDiskState", @"rePartitionedEvent", v81, @"APFSDiskState");
  v98[10] = v58;
  v79 = v16;
  v59 = sub_10000A5B8(@"APFSDiskState", @"newfsFinishedEvent", v16, @"APFSDiskState");
  v98[11] = v59;
  v60 = sub_10000A608(@"APFSDiskState", @"volumeCreatedEvent");
  v98[12] = v60;
  v61 = sub_10000A608(@"APFSDiskState", @"probeFinishedEvent");
  v98[13] = v61;
  v62 = [NSArray arrayWithObjects:v98 count:14];
  v63 = [SKStateTransitionTable tableWithTransitionEntries:v62];
  disk7 = [(SKEraseVolume *)self disk];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v35 = [SKStateMachine machineWithStateTransitionTable:v63 startState:@"APFSDiskState" startEvent:v72];
  }

  else
  {
    disk8 = [(SKEraseVolume *)self disk];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v66 = @"APFSDiskState";
    }

    else
    {
      v66 = @"nonAPFSDiskState";
    }

    v35 = [SKStateMachine machineWithStateTransitionTable:v63 startState:v66 startEvent:v72, SKStateTransitionTable, v68, v69, v70, v71];
  }

  v24 = v78;
  v16 = v79;
  v30 = v76;
  v28 = v77;
LABEL_34:

LABEL_35:

  return v35;
}

@end