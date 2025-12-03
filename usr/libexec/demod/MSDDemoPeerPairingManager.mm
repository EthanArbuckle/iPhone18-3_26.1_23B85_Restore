@interface MSDDemoPeerPairingManager
+ (id)sharedInstance;
- (BOOL)_savePairedPeer:(id)peer;
- (BOOL)_setupPairingManagerIfNeeded;
- (id)_findPairedPeerWithUUID:(id)d;
- (id)_getAllPairedPeers;
- (id)_readPairedPeersIntoData;
- (void)_restorePairedPeersFromData:(id)data;
- (void)preservePairedPeersData;
- (void)removePairedPeer:(id)peer withCompletion:(id)completion;
- (void)restorePairedPeersDataIfNeeded;
- (void)updateDeviceNameForPairedPeerOfUUID:(id)d withNewName:(id)name;
@end

@implementation MSDDemoPeerPairingManager

+ (id)sharedInstance
{
  if (qword_1001A5738 != -1)
  {
    sub_1000D0610();
  }

  v3 = qword_1001A5740;

  return v3;
}

- (void)preservePairedPeersData
{
  v3 = +[NSFileManager defaultManager];
  v4 = sub_100063A54();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "MSDDemoPeerPairingManager: Preserving paired peers data from system.", buf, 2u);
  }

  if ([v3 fileExistsAtPath:@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/Metadata/PairingRecords.data"])
  {
    v5 = sub_100063A54();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "MSDDemoPeerPairingManager: Deleting existing pairing data file.", buf, 2u);
    }

    v16 = 0;
    v6 = [v3 removeItemAtPath:@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/Metadata/PairingRecords.data" error:&v16];
    v7 = v16;
    if ((v6 & 1) == 0)
    {
      v8 = sub_100063A54();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_1000D0624();
      }
    }
  }

  else
  {
    v7 = 0;
  }

  _readPairedPeersIntoData = [(MSDDemoPeerPairingManager *)self _readPairedPeersIntoData];
  if (!_readPairedPeersIntoData)
  {
    v14 = sub_100063A54();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_1000D0740();
    }

    goto LABEL_19;
  }

  v10 = +[MSDCryptoHandler sharedInstance];
  v11 = [v10 performCryptoWithSecretKeyOnData:_readPairedPeersIntoData isDecipher:0];

  if (!v11)
  {
    v14 = sub_100063A54();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_1000D0704();
    }

LABEL_19:
    v11 = 0;
LABEL_23:

    v13 = v7;
    goto LABEL_14;
  }

  v15 = v7;
  v12 = [v11 writeToFile:@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/Metadata/PairingRecords.data" options:0 error:&v15];
  v13 = v15;

  if ((v12 & 1) == 0)
  {
    v14 = sub_100063A54();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_1000D0694();
    }

    v7 = v13;
    goto LABEL_23;
  }

LABEL_14:
}

- (void)restorePairedPeersDataIfNeeded
{
  v3 = +[MSDTargetDevice sharedInstance];
  v4 = +[NSFileManager defaultManager];
  v5 = sub_100063A54();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "MSDDemoPeerPairingManager: Restoring paired peers data to system.", buf, 2u);
  }

  if (([v4 fileExistsAtPath:@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/Metadata/PairingRecords.data"] & 1) == 0)
  {
    v12 = sub_100063A54();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "MSDDemoPeerPairingManager: No encrypted paired peers data file found.", buf, 2u);
    }

    v11 = 0;
    v9 = 0;
    v6 = 0;
    goto LABEL_13;
  }

  v14 = 0;
  v6 = [NSData dataWithContentsOfFile:@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/Metadata/PairingRecords.data" options:0 error:&v14];
  v7 = v14;
  if (v6)
  {
    v8 = +[MSDCryptoHandler sharedInstance];
    v9 = [v8 performCryptoWithSecretKeyOnData:v6 isDecipher:1];

    if (v9)
    {
      [(MSDDemoPeerPairingManager *)self _restorePairedPeersFromData:v9];
    }

    else
    {
      sub_1000D077C();
    }
  }

  else
  {
    sub_1000D07D8();
    v9 = 0;
  }

  v13 = v7;
  v10 = [v4 removeItemAtPath:@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/Metadata/PairingRecords.data" error:&v13];
  v11 = v13;

  if ((v10 & 1) == 0)
  {
    v12 = sub_100063A54();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1000D0624();
    }

LABEL_13:
  }
}

- (void)updateDeviceNameForPairedPeerOfUUID:(id)d withNewName:(id)name
{
  dCopy = d;
  nameCopy = name;
  v8 = sub_100063A54();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543618;
    v12 = nameCopy;
    v13 = 2114;
    v14 = dCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "MSDDemoPeerPairingManager: Assign new name '%{public}@' to paired peer '%{public}@'", &v11, 0x16u);
  }

  v9 = [(MSDDemoPeerPairingManager *)self _findPairedPeerWithUUID:dCopy];
  v10 = v9;
  if (v9)
  {
    [v9 setName:nameCopy];
    [(MSDDemoPeerPairingManager *)self _savePairedPeer:v10];
  }

  else
  {
    sub_1000D0870();
  }
}

- (void)removePairedPeer:(id)peer withCompletion:(id)completion
{
  peerCopy = peer;
  completionCopy = completion;
  v8 = sub_100063A54();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = peerCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "MSDDemoPeerPairingManager: Remove paired peer with ID '%{public}@'", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v29 = 0x3032000000;
  v30 = sub_100041278;
  v31 = sub_100041288;
  v32 = 0;
  v9 = [(MSDDemoPeerPairingManager *)self _findPairedPeerWithUUID:peerCopy];
  if (v9)
  {
    v10 = dispatch_semaphore_create(0);
    pairingManager = [(MSDDemoPeerPairingManager *)self pairingManager];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100041290;
    v23[3] = &unk_10016ABC8;
    p_buf = &buf;
    v12 = v9;
    v24 = v12;
    peerCopy = v10;
    v25 = peerCopy;
    [pairingManager removePairedPeer:v12 options:4 completion:v23];

    v14 = dispatch_time(0, 5000000000);
    if (dispatch_semaphore_wait(peerCopy, v14))
    {
      v15 = sub_100063A54();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_1000D08CC();
      }

      v16 = (*(&buf + 1) + 40);
      obj = *(*(&buf + 1) + 40);
      v17 = [NSString stringWithFormat:@"Timeout 5 seconds to remove peer '%@'", v12];
      sub_1000C13D8(&obj, 3727741111, @"Peer removal timeout", v17);
      objc_storeStrong(v16, obj);
    }

    v18 = v24;
  }

  else
  {
    v19 = sub_100063A54();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_1000D0954();
    }

    v20 = *(&buf + 1);
    v27 = *(*(&buf + 1) + 40);
    peerCopy = [NSString stringWithFormat:@"Failed to find peer with ID '%@'", peerCopy];
    sub_1000C13D8(&v27, 3727741104, @"Cannot find specified demo peer.", peerCopy);
    v21 = v27;
    v18 = *(v20 + 40);
    *(v20 + 40) = v21;
  }

  completionCopy[2](completionCopy, *(*(&buf + 1) + 40));
  _Block_object_dispose(&buf, 8);
}

- (BOOL)_setupPairingManagerIfNeeded
{
  pairingManager = [(MSDDemoPeerPairingManager *)self pairingManager];

  if (pairingManager)
  {
    return 1;
  }

  objc_initWeak(&location, self);
  v5 = objc_alloc_init(CUPairingManager);
  [(MSDDemoPeerPairingManager *)self setPairingManager:v5];

  v6 = dispatch_get_global_queue(21, 0);
  pairingManager2 = [(MSDDemoPeerPairingManager *)self pairingManager];
  [pairingManager2 setDispatchQueue:v6];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100041508;
  v14[3] = &unk_100169C78;
  objc_copyWeak(&v15, &location);
  pairingManager3 = [(MSDDemoPeerPairingManager *)self pairingManager];
  [pairingManager3 setInterruptionHandler:v14];

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100041574;
  v12[3] = &unk_100169C78;
  objc_copyWeak(&v13, &location);
  pairingManager4 = [(MSDDemoPeerPairingManager *)self pairingManager];
  [pairingManager4 setInvalidationHandler:v12];

  pairingManager5 = [(MSDDemoPeerPairingManager *)self pairingManager];
  v4 = pairingManager5 != 0;

  objc_destroyWeak(&v13);
  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
  return v4;
}

- (id)_getAllPairedPeers
{
  v3 = dispatch_semaphore_create(0);
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_100041278;
  v23 = sub_100041288;
  v24 = 0;
  v16 = 0;
  v17[0] = &v16;
  v17[1] = 0x3032000000;
  v17[2] = sub_100041278;
  v17[3] = sub_100041288;
  v18 = 0;
  if ([(MSDDemoPeerPairingManager *)self _setupPairingManagerIfNeeded])
  {
    pairingManager = [(MSDDemoPeerPairingManager *)self pairingManager];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100041814;
    v12[3] = &unk_10016ABF0;
    v14 = &v19;
    v15 = &v16;
    v5 = v3;
    v13 = v5;
    [pairingManager getPairedPeersWithOptions:134 completion:v12];

    v6 = dispatch_time(0, 5000000000);
    if (dispatch_semaphore_wait(v5, v6))
    {
      v10 = sub_100063A54();
      sub_1000D0B0C(v10, &v25);
    }

    else
    {
      if (v20[5])
      {

        v7 = v20[5];
        goto LABEL_5;
      }

      v11 = sub_100063A54();
      sub_1000D0B6C(v11, v17, &v25);
    }
  }

  else
  {
    v9 = sub_100063A54();
    sub_1000D0AB8(v9);
  }

  v7 = 0;
LABEL_5:
  _Block_object_dispose(&v16, 8);

  _Block_object_dispose(&v19, 8);

  return v7;
}

- (BOOL)_savePairedPeer:(id)peer
{
  peerCopy = peer;
  v5 = dispatch_semaphore_create(0);
  v17 = 0;
  v18[0] = &v17;
  v18[1] = 0x3032000000;
  v18[2] = sub_100041278;
  v18[3] = sub_100041288;
  v19 = 0;
  if ([(MSDDemoPeerPairingManager *)self _setupPairingManagerIfNeeded])
  {
    pairingManager = [(MSDDemoPeerPairingManager *)self pairingManager];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100041AC0;
    v14[3] = &unk_100169E68;
    v16 = &v17;
    v7 = v5;
    v15 = v7;
    [pairingManager savePairedPeer:peerCopy options:5 completion:v14];

    v8 = dispatch_time(0, 5000000000);
    if (dispatch_semaphore_wait(v7, v8))
    {
      v12 = sub_100063A54();
      sub_1000D0C54(v12, &v20);
      v13 = v20;
    }

    else
    {
      if (!*(v18[0] + 40))
      {
        v9 = 1;
LABEL_5:
        v10 = v15;
        goto LABEL_6;
      }

      v13 = sub_100063A54();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_1000D0CB4(peerCopy, v18);
      }
    }

    v9 = 0;
    goto LABEL_5;
  }

  v10 = sub_100063A54();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    sub_1000D0C18();
  }

  v9 = 0;
LABEL_6:

  _Block_object_dispose(&v17, 8);
  return v9;
}

- (void)_restorePairedPeersFromData:(id)data
{
  v21 = 0;
  v4 = [NSKeyedUnarchiver unarchiveTopLevelObjectWithData:data error:&v21];
  v5 = v21;
  v6 = v5;
  if (v4)
  {
    v15 = v5;
    v16 = v4;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = v4;
    v8 = [v7 countByEnumeratingWithState:&v17 objects:v24 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v17 + 1) + 8 * i);
          v13 = sub_100063A54();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            detailedDescription = [v12 detailedDescription];
            *buf = 138543362;
            v23 = detailedDescription;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "MSDDemoPeerPairingManager: Saving paired peer: %{public}@", buf, 0xCu);
          }

          [(MSDDemoPeerPairingManager *)self _savePairedPeer:v12];
        }

        v9 = [v7 countByEnumeratingWithState:&v17 objects:v24 count:16];
      }

      while (v9);
    }

    v6 = v15;
    v4 = v16;
  }

  else
  {
    sub_1000D0D30();
  }
}

- (id)_findPairedPeerWithUUID:(id)d
{
  dCopy = d;
  _getAllPairedPeers = [(MSDDemoPeerPairingManager *)self _getAllPairedPeers];
  v6 = _getAllPairedPeers;
  if (_getAllPairedPeers)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = _getAllPairedPeers;
    v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = *v17;
      while (2)
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v16 + 1) + 8 * i);
          identifier = [v11 identifier];
          uUIDString = [identifier UUIDString];
          v14 = [uUIDString isEqualToString:dCopy];

          if (v14)
          {
            v8 = v11;
            goto LABEL_12;
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_readPairedPeersIntoData
{
  _getAllPairedPeers = [(MSDDemoPeerPairingManager *)self _getAllPairedPeers];
  v3 = _getAllPairedPeers;
  if (_getAllPairedPeers)
  {
    [_getAllPairedPeers enumerateObjectsUsingBlock:&stru_10016AC30];
    v9 = 0;
    v4 = [NSKeyedArchiver archivedDataWithRootObject:v3 requiringSecureCoding:1 error:&v9];
    v5 = v9;
    if (v4)
    {
      v6 = v4;
      v7 = v5;
      v5 = v6;
    }

    else
    {
      v7 = sub_100063A54();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v11 = v5;
        _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "MSDDemoPeerPairingManager: Failed to archive paired peers: %{public}@", buf, 0xCu);
      }

      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end