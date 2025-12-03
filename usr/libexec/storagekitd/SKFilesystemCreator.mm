@interface SKFilesystemCreator
- (BOOL)createWithVolumes:(id)volumes error:(id *)error;
- (BOOL)setupTaskUpdateHandlerWithClient:(id)client taskPairs:(id)pairs error:(id *)error;
- (SKFilesystemCreator)init;
@end

@implementation SKFilesystemCreator

- (SKFilesystemCreator)init
{
  v6.receiver = self;
  v6.super_class = SKFilesystemCreator;
  v2 = [(SKFilesystemCreator *)&v6 init];
  if (v2)
  {
    v3 = [SKProgress progressWithTotalUnitCount:100];
    progress = v2->_progress;
    v2->_progress = v3;
  }

  return v2;
}

- (BOOL)setupTaskUpdateHandlerWithClient:(id)client taskPairs:(id)pairs error:(id *)error
{
  clientCopy = client;
  pairsCopy = pairs;
  if (clientCopy)
  {
    v9 = dispatch_semaphore_create(0);
    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = sub_100024584;
    v23 = sub_100024594;
    v24 = 0;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10002760C;
    v17[3] = &unk_100049878;
    v18 = pairsCopy;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100027A0C;
    v14[3] = &unk_1000498A0;
    v16 = &v19;
    v10 = v9;
    v15 = v10;
    [clientCopy setTaskUpdateHandler:v17 replyHandler:v14];
    dispatch_semaphore_wait(v10, 0xFFFFFFFFFFFFFFFFLL);
    v11 = v20[5];
    v12 = v11 == 0;
    if (error && v11)
    {
      *error = v11;
    }

    _Block_object_dispose(&v19, 8);
  }

  else
  {
    v12 = 1;
  }

  return v12;
}

- (BOOL)createWithVolumes:(id)volumes error:(id *)error
{
  volumesCopy = volumes;
  v72 = objc_opt_new();
  v73 = objc_opt_new();
  v4 = sub_10000BFD0();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "[SKFilesystemCreator createWithVolumes:error:]";
    *&buf[12] = 2112;
    *&buf[14] = volumesCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s: Creating volumes %@", buf, 0x16u);
  }

  v77 = +[FSClient sharedInstance];
  group = dispatch_group_create();
  if ([(SKFilesystemCreator *)self setupTaskUpdateHandlerWithClient:v77 taskPairs:v73 error:error])
  {
    v95 = 0u;
    v96 = 0u;
    v93 = 0u;
    v94 = 0u;
    obj = volumesCopy;
    v75 = [(SKWaitableAggregate *)obj countByEnumeratingWithState:&v93 objects:v102 count:16];
    if (v75)
    {
      v74 = *v94;
      v69 = &v100;
      v70 = &v99;
      v67 = v85;
      v68 = v90;
LABEL_6:
      v5 = 0;
      while (1)
      {
        if (*v94 != v74)
        {
          v6 = v5;
          objc_enumerationMutation(obj);
          v5 = v6;
        }

        v79 = v5;
        v7 = *(*(&v93 + 1) + 8 * v5);
        filesystem = [v7 filesystem];
        isExtension = [filesystem isExtension];

        if (isExtension)
        {
          if (!v77)
          {
            v12 = sub_10000BFD0();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315138;
              *&buf[4] = "[SKFilesystemCreator createWithVolumes:error:]";
              _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%s: Cannot create FSClient object for extension erase", buf, 0xCu);
            }

            goto LABEL_33;
          }

          disk = [v7 disk];
          diskIdentifier = [disk diskIdentifier];
          v12 = [FSBlockDeviceResource proxyResourceForBSDName:diskIdentifier isWritable:1];

          v13 = [SKFSTaskPair alloc];
          v14 = [SKFSTaskMessageHandler alloc];
          progress = [(SKFilesystemCreator *)self progress];
          v16 = [(SKFSTaskMessageHandler *)v14 initWithProgress:progress dispatchGroup:group];
          v17 = [(SKFSTaskPair *)v13 initWithMessageHandler:v16];

          v18 = v73;
          objc_sync_enter(v18);
          [v18 addObject:v17];
          objc_sync_exit(v18);

          filesystem2 = [v7 filesystem];
          bundle = [filesystem2 bundle];
          bundleIdentifier = [bundle bundleIdentifier];
          v22 = sub_1000253B4(bundleIdentifier, 1, error);

          if (!v22)
          {
            v64 = sub_10000BFD0();
            if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315138;
              *&buf[4] = "[SKFilesystemCreator createWithVolumes:error:]";
              _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_ERROR, "%s: Failed to create bundle options", buf, 0xCu);
            }

LABEL_33:
            LOBYTE(v61) = 0;
            goto LABEL_34;
          }

          name = [v7 name];
          v24 = [FSTaskOption option:@"v" value:name];
          [v22 addOption:v24];

          filesystem3 = [v7 filesystem];
          majorType = [filesystem3 majorType];
          LODWORD(v24) = [majorType isEqualToString:@"apfs"];

          if (v24)
          {
            filesystem4 = [v7 filesystem];
            v28 = [filesystem4 isCaseSensitive] ? @"e" : @"i";
            v29 = [FSTaskOption optionWithoutValue:v28];
            [v22 addOption:v29];

            v30 = [FSTaskOption optionWithoutValue:@"w"];
            [v22 addOption:v30];

            filesystem5 = [v7 filesystem];
            LODWORD(v29) = [filesystem5 isEncrypted];

            if (v29)
            {
              v32 = [FSTaskOption optionWithoutValue:@"E"];
              [v22 addOption:v32];

              password = [v7 password];
              v34 = [FSTaskOption option:@"S" value:password];
              [v22 addOption:v34];
            }
          }

          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x3032000000;
          v99 = sub_100024584;
          v100 = sub_100024594;
          v101 = 0;
          v89[0] = _NSConcreteStackBlock;
          v89[1] = 3221225472;
          v90[0] = sub_100028604;
          v90[1] = &unk_1000498E8;
          v92 = buf;
          v90[2] = self;
          v91 = obj;
          v35 = objc_retainBlock(v89);
          dispatch_group_enter(group);
          filesystem6 = [v7 filesystem];
          bundle2 = [filesystem6 bundle];
          bundleIdentifier2 = [bundle2 bundleIdentifier];
          receiver = [(SKFSTaskPair *)v17 receiver];
          getConnection = [receiver getConnection];
          v84[0] = _NSConcreteStackBlock;
          v84[1] = 3221225472;
          v85[0] = sub_1000287C8;
          v85[1] = &unk_100049950;
          v41 = v17;
          v86 = v41;
          v42 = v12;
          v87 = v42;
          v43 = v35;
          v88 = v43;
          [v77 formatResource:v42 usingBundle:bundleIdentifier2 options:v22 connection:getConnection replyHandler:v84];

          _Block_object_dispose(buf, 8);
        }

        else
        {
          v44 = [SKRemoteAPFSFormatTask alloc];
          name2 = [v7 name];
          disk2 = [v7 disk];
          filesystem7 = [v7 filesystem];
          isCaseSensitive = [filesystem7 isCaseSensitive];
          password2 = [v7 password];
          v42 = [(SKRemoteAPFSFormatTask *)v44 initWithName:name2 disk:disk2 caseSensitive:isCaseSensitive password:password2];

          progress2 = [(SKFilesystemCreator *)self progress];
          progress3 = [(SKRemoteAPFSFormatTask *)v42 progress];
          [progress2 addChild:progress3 withPendingUnitCount:{0x64 / -[SKWaitableAggregate count](obj, "count")}];

          v52 = [SKTaskLineParser alloc];
          v83[0] = _NSConcreteStackBlock;
          v83[1] = 3221225472;
          v83[2] = sub_1000289F8;
          v83[3] = &unk_100049978;
          v83[4] = self;
          v53 = [(SKTaskLineParser *)v52 initWithCallback:v83];
          [(SKRemoteAPFSFormatTask *)v42 setStdoutParser:v53];

          v54 = [SKTaskLineParser alloc];
          v82[0] = _NSConcreteStackBlock;
          v82[1] = 3221225472;
          v82[2] = sub_100028A60;
          v82[3] = &unk_100049978;
          v82[4] = self;
          v55 = [(SKTaskLineParser *)v54 initWithCallback:v82];
          [(SKRemoteAPFSFormatTask *)v42 setStderrParser:v55];

          [v72 addObject:v42];
        }

        v5 = v79 + 1;
        if (v75 == (v79 + 1))
        {
          v75 = [(SKWaitableAggregate *)obj countByEnumeratingWithState:&v93 objects:v102 count:16];
          if (v75)
          {
            goto LABEL_6;
          }

          break;
        }
      }
    }

    v56 = [SKWaitableAggregate alloc];
    v57 = [[SKRemoteTaskExecuter alloc] initWithTasks:v72];
    v97[0] = v57;
    v58 = [[SKFSTaskPairsWaiter alloc] initWithTaskPairs:v73];
    v97[1] = v58;
    v59 = [NSArray arrayWithObjects:v97 count:2];
    v60 = [(SKWaitableAggregate *)v56 initWithWaitables:v59];

    v81 = 0;
    v61 = [(SKWaitableAggregate *)v60 waitWithError:&v81];
    v12 = v81;
    v62 = sub_10000BFD0();
    if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      *&buf[4] = "[SKFilesystemCreator createWithVolumes:error:]";
      *&buf[12] = 2112;
      *&buf[14] = obj;
      *&buf[22] = 1024;
      LODWORD(v99) = v61;
      _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "%s: Finished creating volumes %@, status %hhd", buf, 0x1Cu);
    }

    [v77 setTaskUpdateHandler:0 replyHandler:0];
    if (v12)
    {
      v63 = [SKError errorWithCode:352 underlyingError:v12];
      LOBYTE(v61) = [SKError failWithError:v63 error:error];
    }

    obj = v60;
LABEL_34:
  }

  else
  {
    LOBYTE(v61) = 0;
  }

  return v61;
}

@end