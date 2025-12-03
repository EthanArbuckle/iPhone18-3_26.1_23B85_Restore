@interface CloudPairing
+ (id)sharedInstance;
- (BOOL)_generateKeys;
- (BOOL)generateKeys;
- (BOOL)getAccountStatus;
- (BOOL)handleXPCUnpairCommand:(id)command;
- (BTCloudServicesClient)cloudClient;
- (CloudPairing)init;
- (id)_generateCloudPairingIDWithResponse:(id)response localKeys:(id)keys from:(id)from forProtocolID:(id)d;
- (id)_getPairedDeviceForIDSIdentifier:(id)identifier;
- (id)createBluetoothAddressForIDSLocalDevice:(id)device;
- (id)deviceName;
- (id)generateCloudPairingIDWithResponse:(id)response localKeys:(id)keys from:(id)from forProtocolID:(id)d;
- (id)generateKeyDictForTypes:(id)types keyLength:(unint64_t)length forAddress:(id)address;
- (id)getIRKForRandomStaticAddress:(id)address;
- (id)getPairedDeviceForIDSIdentifier:(id)identifier;
- (id)readUserPreference:(id)preference;
- (void)_handleConnectionEvent:(id)event;
- (void)_handleMsg:(id)msg;
- (void)audioAccessorySmartChargeDeadlineHasChangedFromCloud:(void *)cloud;
- (void)audioAccessorySmartChargeDeadlineHasChangedFromNotification:(id)notification;
- (void)audioAccessorySmartChargeStatusHasChangedFromCloud:(void *)cloud;
- (void)audioAccessorySmartChargeStatusHasChangedFromNotification:(id)notification;
- (void)cloudpairdMsg:(id)msg args:(id)args;
- (void)cloudpairdReplyMsg:(id)msg args:(id)args;
- (void)fetchSoundProfile;
- (void)multipleAdvInstancesInitialized:(BOOL)initialized;
- (void)printDebug;
- (void)registerWithCloudPairedDevices:(id)devices identifiers:(id)identifiers;
- (void)removeuserPreference:(id)preference sync:(BOOL)sync;
- (void)resetDataForIDSLocalDevice:(id)device;
- (void)resetServerConnection;
- (void)sendCloudKitPush;
- (void)sendCloudpairingRetry:(id)retry;
- (void)setuserPreference:(id)preference value:(id)value sync:(BOOL)sync;
- (void)startListeningToPowerUIStatusChanges;
- (void)startUpServices;
- (void)stopListeningToPowerUIStatusChanges;
- (void)updateCurrentIDSUserInfo:(id)info;
- (void)updateRandomAddressContinuityAdvInstance:(id)instance;
@end

@implementation CloudPairing

+ (id)sharedInstance
{
  if (qword_100B6F668 != -1)
  {
    sub_10084F32C();
  }

  v3 = qword_100B6F660;

  return v3;
}

- (BTCloudServicesClient)cloudClient
{
  if (qword_100B6F678 != -1)
  {
    sub_10084F340();
  }

  v3 = qword_100B6F670;

  return v3;
}

- (CloudPairing)init
{
  v48.receiver = self;
  v48.super_class = CloudPairing;
  v2 = [(CloudPairing *)&v48 init];
  v3 = v2;
  if (!v2)
  {
LABEL_32:
    v36 = v3;
    goto LABEL_33;
  }

  v4 = qword_100BCE8E8;
  if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "CloudPairing init", buf, 2u);
  }

  if (MGGetBoolAnswer() & 1) != 0 || (v5 = sub_100017E6C(), ((*(*v5 + 280))(v5)))
  {
    v6 = +[NSArray array];
    cloudLocalUUIDs = v2->_cloudLocalUUIDs;
    v2->_cloudLocalUUIDs = v6;

    v8 = +[NSArray array];
    cloudidsIdentifiers = v2->_cloudidsIdentifiers;
    v2->_cloudidsIdentifiers = v8;

    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_attr_make_with_qos_class(v10, QOS_CLASS_DEFAULT, -1);
    v12 = dispatch_queue_create("com.apple.bluetoothd.cloudpairing.serial", v11);
    serialQueue = v2->_serialQueue;
    v2->_serialQueue = v12;

    v14 = [[NSArray alloc] initWithObjects:{@"EncryptionKeys", @"IdentityKeys", 0}];
    requestedKeyTypes = v2->_requestedKeyTypes;
    v2->_requestedKeyTypes = v14;

    v2->_keyLength = 16;
    deviceName = [(CloudPairing *)v2 deviceName];
    localDeviceName = v2->_localDeviceName;
    v2->_localDeviceName = deviceName;

    if (!v2->_localDeviceName)
    {
      v2->_localDeviceName = @"iOS Device";

      v18 = qword_100BCE8E8;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_10084F354([(NSString *)v2->_localDeviceName UTF8String], v51);
      }
    }

    v19 = [NSMutableArray arrayWithCapacity:1];
    cloudDevices = v2->_cloudDevices;
    v2->_cloudDevices = v19;

    v21 = [NSMutableArray arrayWithCapacity:1];
    cloudUploadedKeys = v2->_cloudUploadedKeys;
    v2->_cloudUploadedKeys = v21;

    v47 = 0;
    v46 = 0;
    v23 = sub_10009BD9C();
    if (!(*(*v23 + 32))(v23, &v46))
    {
      v24 = [NSString alloc];
      sub_1000BE6F8(&v46, buf);
      v25 = v50 >= 0 ? buf : *buf;
      v26 = [v24 initWithUTF8String:v25];
      publicAddress = v3->_publicAddress;
      v3->_publicAddress = v26;

      if (v50 < 0)
      {
        operator delete(*buf);
      }
    }

    if (v3->_publicAddress)
    {
      *&v3->_keysGenerated = 0;
      [(CloudPairing *)v3 setServerConnection:0];
      v3->_needsCloudKitPush = 0;
      v3->_updatingCloudKit = 0;
      v3->_supportsVirtualAddress = 0;
      idsMultiUsersDictionary = v3->_idsMultiUsersDictionary;
      v3->_idsMultiUsersDictionary = 0;

      currentIDSUser = v3->_currentIDSUser;
      v3->_currentIDSUser = 0;

      currentUserRandomAddress = v3->_currentUserRandomAddress;
      v3->_currentUserRandomAddress = 0;

      v3->_multipleAdvInitialized = 0;
      cloudClient = [(CloudPairing *)v3 cloudClient];
      v3->_accessibilityHeadTrackingEnabled = 1;
      v45 = 0;
      v32 = sub_100017E6C();
      (*(*v32 + 112))(v32, &v45);
      if (v45 == 1)
      {
        v33 = qword_100BCE8E8;
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          v34 = MKBDeviceUnlockedSinceBoot();
          *buf = 67109120;
          *&buf[4] = v34;
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Already first unlocked: %d", buf, 8u);
        }

        [(CloudPairing *)v3 startUpServices];
      }

      else
      {
        out_token = -1;
        objc_initWeak(buf, v3);
        v37 = *(sub_100017F4C() + 8);
        handler[0] = _NSConcreteStackBlock;
        handler[1] = 3221225472;
        handler[2] = sub_1005EC650;
        handler[3] = &unk_100AF8888;
        objc_copyWeak(&v43, buf);
        v38 = notify_register_dispatch("com.apple.mobile.keybagd.first_unlock", &out_token, v37, handler);

        v39 = qword_100BCE8E8;
        if (v38)
        {
          if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_ERROR))
          {
            sub_10084F398();
          }
        }

        else if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_DEFAULT))
        {
          *v41 = 0;
          _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Successfully registered for MKB first unlock notification", v41, 2u);
        }

        objc_destroyWeak(&v43);
        objc_destroyWeak(buf);
      }

      goto LABEL_32;
    }

    if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_FAULT))
    {
      sub_10084F408();
    }
  }

  else
  {
    v35 = qword_100BCE8E8;
    if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "CloudPairing not supported on this platform (LE)", buf, 2u);
    }
  }

  v36 = 0;
LABEL_33:

  return v36;
}

- (void)startUpServices
{
  v3 = sub_100432918();
  (*(*v3 + 200))(v3);
  if (_os_feature_enabled_impl() && NSClassFromString(@"PowerUISmartChargeClientAudioAccessories"))
  {
    [(CloudPairing *)self startListeningToPowerUIStatusChanges];
  }

  if (_os_feature_enabled_impl() && sub_1005FCCC4())
  {
    self->_cloudSoundProfileChangedNotifyToken = -1;
    uTF8String = [BTCloudSoundProfileChangedNotification UTF8String];
    serialQueue = self->_serialQueue;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1005EC928;
    handler[3] = &unk_100ADF848;
    handler[4] = self;
    v6 = notify_register_dispatch(uTF8String, &self->_cloudSoundProfileChangedNotifyToken, serialQueue, handler);
    v7 = qword_100BCE8E8;
    v8 = os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      if (v8)
      {
        *buf = 67109120;
        v11 = v6;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "BTAudioCloudSyncMonitor: Failed registration for CloudSoundProfileChangedNotification with error : %u", buf, 8u);
      }
    }

    else
    {
      if (v8)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "BTAudioCloudSyncMonitor: Successfully registered for CloudSoundProfileChangedNotification", buf, 2u);
      }

      [(CloudPairing *)self fetchSoundProfile];
    }
  }
}

- (void)multipleAdvInstancesInitialized:(BOOL)initialized
{
  initializedCopy = initialized;
  v5 = qword_100BCE8E8;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    multipleAdvInitialized = [(CloudPairing *)self multipleAdvInitialized];
    currentUserRandomAddress = [(CloudPairing *)self currentUserRandomAddress];
    v11[0] = 67109634;
    v11[1] = initializedCopy;
    v12 = 1024;
    v13 = multipleAdvInitialized;
    v14 = 2112;
    v15 = currentUserRandomAddress;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "MUC - multiple adv instances initialized? %d, stored %d, RSA %@", v11, 0x18u);
  }

  if ([(CloudPairing *)self multipleAdvInitialized]!= initializedCopy)
  {
    [(CloudPairing *)self setMultipleAdvInitialized:initializedCopy];
    if ([(CloudPairing *)self multipleAdvInitialized])
    {
      currentUserRandomAddress2 = [(CloudPairing *)self currentUserRandomAddress];
      v9 = currentUserRandomAddress2 == 0;

      if (!v9)
      {
        currentUserRandomAddress3 = [(CloudPairing *)self currentUserRandomAddress];
        [(CloudPairing *)self updateRandomAddressContinuityAdvInstance:currentUserRandomAddress3];
      }
    }
  }
}

- (id)deviceName
{
  v2 = MGCopyAnswer();

  return v2;
}

- (BOOL)generateKeys
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = sub_100007EE8();
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1005ECC20;
  v5[3] = &unk_100AF5548;
  v5[4] = self;
  v5[5] = &v6;
  sub_1005711EC(v3, v5);
  LOBYTE(self) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return self;
}

- (BOOL)_generateKeys
{
  if (qword_100B508C0 != -1)
  {
    sub_10084F448();
  }

  if ((sub_1007B644C(off_100B508B8) & 1) == 0)
  {
    if (qword_100B508C0 != -1)
    {
      sub_10084F448();
    }

    sub_1007B6DE8(off_100B508B8);
  }

  if (qword_100B508C0 != -1)
  {
    sub_10084F448();
  }

  *self->_encryptionRootKey = *(off_100B508B8 + 168);
  *self->_identityResolvingKey = *(off_100B508B8 + 184);
  v3 = (off_100B508B8 + 312);
  v4 = *(off_100B508B8 + 328);
  *self->_cloudPrivateKey = *(off_100B508B8 + 312);
  *&self->_cloudPrivateKey[16] = v4;
  v5 = v3[4];
  v6 = v3[5];
  v7 = v3[3];
  *&self->_cloudPrivateKey[32] = v3[2];
  *&self->_cloudPrivateKey[80] = v6;
  *&self->_cloudPrivateKey[64] = v5;
  *&self->_cloudPrivateKey[48] = v7;
  v8 = *(off_100B508B8 + 264);
  v9 = *(off_100B508B8 + 280);
  v10 = *(off_100B508B8 + 296);
  *self->_cloudPublicKey = *(off_100B508B8 + 248);
  *&self->_cloudPublicKey[48] = v10;
  *&self->_cloudPublicKey[32] = v9;
  *&self->_cloudPublicKey[16] = v8;
  *self->_cloudNonce = *(off_100B508B8 + 408);
  if (IsAppleInternalBuild())
  {
    v11 = qword_100BCE8E8;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [NSData dataWithBytes:self->_cloudPrivateKey length:96];
      v19 = 138412290;
      v20 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "_cloudPrivateKey: [ %@ ]", &v19, 0xCu);
    }

    v13 = qword_100BCE8E8;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [NSData dataWithBytes:self->_cloudPublicKey length:64];
      v19 = 138412290;
      v20 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "_cloudPublicKey: [ %@ ]", &v19, 0xCu);
    }

    v15 = qword_100BCE8E8;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [NSData dataWithBytes:self->_cloudNonce length:16];
      v19 = 138412290;
      v20 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "_cloudNonce: [ %@ ]", &v19, 0xCu);
    }
  }

  if (qword_100B508C0 != -1)
  {
    sub_10084F45C();
  }

  v17 = sub_100240328((off_100B508B8 + 136), 3, 0, self->_diversifierHidingKey);
  if (v17)
  {
    if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_FAULT))
    {
      sub_10084F484();
    }
  }

  else
  {
    self->_keysGenerated = 1;
  }

  return v17 == 0;
}

- (void)_handleConnectionEvent:(id)event
{
  eventCopy = event;
  type = xpc_get_type(eventCopy);
  if (type == &_xpc_type_connection)
  {
    if (eventCopy != &_xpc_error_connection_invalid)
    {
      objc_initWeak(buf, self);
      v8 = xpc_connection_copy_entitlement_value();
      v9 = v8;
      if (v8)
      {
        if (xpc_get_type(v8) != &_xpc_type_BOOL || xpc_BOOL_get_value(v9))
        {
          handler[0] = _NSConcreteStackBlock;
          handler[1] = 3221225472;
          handler[2] = sub_1005ED2D8;
          handler[3] = &unk_100B01208;
          objc_copyWeak(&v15, buf);
          xpc_connection_set_event_handler(eventCopy, handler);
          serialQueue = [(CloudPairing *)self serialQueue];
          xpc_connection_set_target_queue(eventCopy, serialQueue);

          xpc_connection_resume(eventCopy);
          objc_destroyWeak(&v15);

          objc_destroyWeak(buf);
          goto LABEL_24;
        }

        if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_ERROR))
        {
          sub_10084F4F8();
        }
      }

      else if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_ERROR))
      {
        sub_10084F568();
      }

      objc_destroyWeak(buf);
      goto LABEL_24;
    }

    if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_ERROR))
    {
      sub_10084F5D8();
    }

    serverConnection = [(CloudPairing *)self serverConnection];
    v12 = serverConnection == 0;

    goto LABEL_17;
  }

  v6 = qword_100BCE8E8;
  v7 = os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_DEFAULT);
  if (type != &_xpc_type_error)
  {
    if (v7)
    {
      *buf = 138412290;
      v17 = eventCopy;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Cloudpairing Unexpected XPC server event: %@", buf, 0xCu);
    }

    goto LABEL_24;
  }

  if (v7)
  {
    *buf = 138412290;
    v17 = eventCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Cloudpairing XPC server error: %@", buf, 0xCu);
  }

  if (eventCopy == &_xpc_error_connection_invalid)
  {
    serverConnection2 = [(CloudPairing *)self serverConnection];
    v12 = serverConnection2 == 0;

LABEL_17:
    if (!v12)
    {
      [(CloudPairing *)self setServerConnection:0];
    }
  }

LABEL_24:
}

- (void)_handleMsg:(id)msg
{
  msgCopy = msg;
  if (xpc_get_type(msgCopy) == &_xpc_type_dictionary)
  {
    string = xpc_dictionary_get_string(msgCopy, "kMsgId");
    v6 = qword_100BCE8E8;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v575 = 136315138;
      *&v575[4] = string;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Cloudpairing got msg: %s", v575, 0xCu);
    }

    v7 = xpc_dictionary_get_value(msgCopy, "kMsgArgs");
    v8 = v7;
    if (!v7)
    {
      if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_ERROR))
      {
        sub_10084F954();
      }

      goto LABEL_118;
    }

    if (xpc_get_type(v7) != &_xpc_type_dictionary)
    {
      v9 = qword_100BCE8E8;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        type = xpc_get_type(v8);
        name = xpc_type_get_name(type);
        sub_10084F658(name, v575);
      }

      goto LABEL_118;
    }

    if (!strcmp(string, "manateeUdpateStatus"))
    {
      v12 = _CFXPCCreateCFObjectFromXPCMessage();
      v16 = [v12 objectForKey:@"kUploadStatus"];
      v17 = v16 == 0;

      if (!v17)
      {
        v18 = [v12 objectForKey:@"kUploadStatus"];
        bOOLValue = [v18 BOOLValue];

        if (bOOLValue)
        {
          [(CloudPairing *)self cloudpairdMsg:@"deleteOldContainer" args:0];
        }
      }

      goto LABEL_117;
    }

    if (!strcmp(string, "smartRoutingCapable"))
    {
      v12 = _CFXPCCreateCFObjectFromXPCMessage();
      v20 = [v12 objectForKey:@"srCapable"];
      v21 = v20 == 0;

      if (!v21)
      {
        v22 = [v12 objectForKey:@"srCapable"];
        bOOLValue2 = [v22 BOOLValue];

        v24 = qword_100BCE8E8;
        if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_DEFAULT))
        {
          v25 = "No";
          if (bOOLValue2)
          {
            v25 = "Yes";
          }

          *v575 = 136315138;
          *&v575[4] = v25;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Smart Route Support: Set to %s", v575, 0xCu);
        }

        if (qword_100B508F0 != -1)
        {
          sub_10084F6C4();
        }

        sub_10056C9B8(off_100B508E8, bOOLValue2);
      }

      goto LABEL_117;
    }

    if (!strcmp(string, "SignInStatusChanged"))
    {
      v12 = _CFXPCCreateCFObjectFromXPCMessage();
      v26 = [v12 objectForKey:@"kSignInStatus"];
      v27 = v26 == 0;

      if (!v27)
      {
        v28 = [v12 objectForKey:@"kSignInStatus"];
        bOOLValue3 = [v28 BOOLValue];

        v30 = [v12 objectForKey:@"kSignInAppleID"];
        [(CloudPairing *)self setICloudSignedIn:bOOLValue3];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {

          v30 = &stru_100B0F9E0;
        }

        v31 = sub_100432918();
        v32 = v30;
        sub_100007E30(v563, [(__CFString *)v30 UTF8String]);
        (*(*v31 + 80))(v31, bOOLValue3, v563);
        if (v564 < 0)
        {
          operator delete(v563[0]);
        }
      }

      goto LABEL_117;
    }

    if (!strcmp(string, "MasterKeysAvailable"))
    {
      v12 = _CFXPCCreateCFObjectFromXPCMessage();
      v33 = [v12 objectForKey:@"kMasterKeyBlob"];
      v34 = v33 == 0;

      if (!v34)
      {
        v35 = [v12 objectForKey:@"kMasterKeyBlob"];
        v36 = [v35 length];
        v37 = v35;
        bytes = [v35 bytes];
        v39 = sub_100432918();
        (*(*v39 + 88))(v39, bytes, v36);
      }

      goto LABEL_117;
    }

    if (!strcmp(string, "MasterKeysNotAvailable"))
    {
      v12 = _CFXPCCreateCFObjectFromXPCMessage();
      v40 = [v12 objectForKey:@"kMasterKeyBlob"];
      v41 = v40 == 0;

      if (!v41)
      {
        v42 = sub_100432918();
        (*(*v42 + 96))(v42);
      }

      goto LABEL_117;
    }

    if (!strcmp(string, "DeviceInfoAvailable"))
    {
      v12 = _CFXPCCreateCFObjectFromXPCMessage();
      v43 = [v12 objectForKey:@"kDeviceInfoBlob"];
      v44 = [v12 objectForKeyedSubscript:@"loginID"];
      v580.__r_.__value_.__s.__data_[0] = 0;
      memset(v575, 0, 24);
      if (qword_100B50AB0 != -1)
      {
        sub_10084F69C();
      }

      sub_100560E64(off_100B50AA8, &v580, v575);
      if ([v44 length])
      {
        v45 = v44;
        if (std::string::compare(v575, [v44 UTF8String]))
        {
          v46 = qword_100BCE960;
          if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(v581[0]) = 138412546;
            *(v581 + 4) = v44;
            WORD2(v581[1]) = 2112;
            *(&v581[1] + 6) = v43;
            _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "Cloud: Dropping other user's legacy magic info message: %@ - %@", v581, 0x16u);
          }

          if ((v575[23] & 0x80000000) != 0)
          {
            operator delete(*v575);
          }

          goto LABEL_118;
        }
      }

      if (v43)
      {
        v52 = [v43 length];
        v54 = &v481 - ((__chkstk_darwin(v52, v53) + 15) & 0xFFFFFFFFFFFFFFF0);
        bzero(v54, v52);
        v55 = v43;
        memmove(v54, [v43 bytes], v52);
        v56 = sub_100432918();
        (*(*v56 + 104))(v56, v54, v52);
      }

      if ((v575[23] & 0x80000000) != 0)
      {
        operator delete(*v575);
      }

      goto LABEL_117;
    }

    if (!strcmp(string, "DeviceInfoUploadStatus"))
    {
      v12 = _CFXPCCreateCFObjectFromXPCMessage();
      v47 = [v12 objectForKey:@"kUploadStatus"];
      v48 = v47 == 0;

      if (!v48)
      {
        v49 = [v12 objectForKey:@"kUploadStatus"];
        bOOLValue4 = [v49 BOOLValue];

        v51 = sub_100432918();
        (*(*v51 + 112))(v51, bOOLValue4);
      }

      goto LABEL_117;
    }

    if (!strcmp(string, "ManateeBlobUpdate"))
    {
      v12 = _CFXPCCreateCFObjectFromXPCMessage();
      v57 = [v12 objectForKey:@"kDeviceInfoBlob"];
      v58 = v57 == 0;

      if (!v58)
      {
        v59 = [v12 objectForKey:@"kDeviceInfoBlob"];
        v60 = [v59 length];
        v62 = &v481 - ((__chkstk_darwin(v60, v61) + 15) & 0xFFFFFFFFFFFFFFF0);
        bzero(v62, v60);
        v63 = v59;
        memmove(v62, [v59 bytes], v60);
        v64 = sub_100432918();
        (*(*v64 + 160))(v64, v62, v60);
      }

      goto LABEL_117;
    }

    if (!strcmp(string, "oldContainerDeleted"))
    {
      v12 = _CFXPCCreateCFObjectFromXPCMessage();
      v65 = [v12 objectForKey:@"kDeleteSuccess"];
      v66 = v65 == 0;

      if (v66)
      {
        goto LABEL_117;
      }

      v67 = [v12 objectForKey:@"kDeleteSuccess"];
      bOOLValue5 = [v67 BOOLValue];

      v69 = qword_100BCE8E8;
      if (!os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_117;
      }

      *v575 = 67109120;
      *&v575[4] = bOOLValue5;
      v70 = "Status for old container deletion %d";
      v71 = v69;
      v72 = OS_LOG_TYPE_DEFAULT;
      v73 = 8;
    }

    else
    {
      if (!strcmp(string, "forceManateeUpgrade"))
      {
        v12 = _CFXPCCreateCFObjectFromXPCMessage();
        v74 = qword_100BCE8E8;
        if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_INFO))
        {
          *v575 = 138412290;
          *&v575[4] = v12;
          _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_INFO, "Process forceManateeUpgrade: %@", v575, 0xCu);
        }

        v75 = [v12 objectForKey:@"kEncryptionSupport"];
        v76 = v75 == 0;

        if (!v76)
        {
          v77 = [v12 objectForKey:@"kEncryptionSupport"];
          bOOLValue6 = [v77 BOOLValue];

          if (bOOLValue6)
          {
            v79 = sub_100432918();
            (*(*v79 + 136))(v79, 1);
          }
        }

        goto LABEL_117;
      }

      if (!strcmp(string, "GenerateCloudPairingKeys"))
      {
        v80 = qword_100BCE8E8;
        if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_INFO))
        {
          *v575 = 0;
          _os_log_impl(&_mh_execute_header, v80, OS_LOG_TYPE_INFO, "Process GenerateCloudPairingKeys", v575, 2u);
        }

        v12 = _CFXPCCreateCFObjectFromXPCObject();
        *&v509 = [v12 objectForKey:@"kCloudPairingKeyTypes"];
        v81 = [v12 objectForKey:@"kCloudPairingKeyLength"];
        unsignedIntegerValue = [v81 unsignedIntegerValue];

        v83 = [v12 objectForKeyedSubscript:@"kLocalRandomAddress"];
        v84 = [(CloudPairing *)self generateKeyDictForTypes:v509 keyLength:unsignedIntegerValue forAddress:v83];
        v85 = qword_100BCE8E8;
        if (os_log_type_enabled(v85, OS_LOG_TYPE_INFO))
        {
          v86 = IsAppleInternalBuild();
          v87 = v84;
          if (!v86)
          {
            v87 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v84 count]);
          }

          *v575 = 138412290;
          *&v575[4] = v87;
          _os_log_impl(&_mh_execute_header, v85, OS_LOG_TYPE_INFO, "Replying GenerateCloudPairingKeys: %@", v575, 0xCu);
          if (!v86)
          {
          }
        }

        [(CloudPairing *)self cloudpairdReplyMsg:msgCopy args:v84];
        goto LABEL_117;
      }

      if (!strcmp(string, "CloudPairingComplete"))
      {
        v12 = _CFXPCCreateCFObjectFromXPCObject();
        v88 = [v12 objectForKey:@"kCloudPairingCompleteResponse"];
        v89 = [v12 objectForKey:@"kCloudPairingLocalKeys"];
        *&v508 = v89;
        *&v509 = [v12 objectForKey:@"kCloudDeviceUniqueID"];
        v90 = [v12 objectForKey:@"kCloudPairingProtocolID"];
        v91 = qword_100BCE8E8;
        if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_DEFAULT))
        {
          *v575 = 138412290;
          *&v575[4] = v12;
          _os_log_impl(&_mh_execute_header, v91, OS_LOG_TYPE_DEFAULT, "MUC - Args for CloudPairingComplete: %@", v575, 0xCu);
        }

        v92 = [(CloudPairing *)self generateCloudPairingIDWithResponse:v88 localKeys:v89 from:v509 forProtocolID:v90];
        v93 = qword_100BCE8E8;
        v94 = v88;
        if (v92)
        {
          if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_DEFAULT))
          {
            *v575 = 138412290;
            *&v575[4] = v92;
            _os_log_impl(&_mh_execute_header, v93, OS_LOG_TYPE_DEFAULT, "Got pairingID: %@", v575, 0xCu);
          }

          v590 = @"kCloudPairingID";
          uUIDString = [v92 UUIDString];
          v591 = uUIDString;
          v96 = [NSDictionary dictionaryWithObjects:&v591 forKeys:&v590 count:1];
          [(CloudPairing *)self cloudpairdReplyMsg:msgCopy args:v96];
        }

        else
        {
          if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_ERROR))
          {
            sub_10084F918();
          }

          [(CloudPairing *)self cloudpairdReplyMsg:msgCopy args:&__NSDictionary0__struct];
        }

        goto LABEL_117;
      }

      if (!strcmp(string, "UnpairCloudDevice"))
      {
        v97 = qword_100BCE8E8;
        if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_INFO))
        {
          *v575 = 0;
          _os_log_impl(&_mh_execute_header, v97, OS_LOG_TYPE_INFO, "Process UnpairCloudDevice", v575, 2u);
        }

        v98 = _CFXPCCreateCFObjectFromXPCObject();
        *v575 = 0;
        *&v575[8] = v575;
        *&v575[16] = 0x2020000000;
        v575[24] = 0;
        v99 = sub_100007EE8();
        v560[0] = _NSConcreteStackBlock;
        v560[1] = 3221225472;
        v560[2] = sub_1005F3F5C;
        v560[3] = &unk_100B01230;
        v562 = v575;
        v560[4] = self;
        v12 = v98;
        v561 = v12;
        sub_1005711EC(v99, v560);
        v588 = @"kSuccess";
        v100 = [NSNumber numberWithBool:*(*&v575[8] + 24)];
        v589 = v100;
        v101 = [NSDictionary dictionaryWithObjects:&v589 forKeys:&v588 count:1];
        [(CloudPairing *)self cloudpairdReplyMsg:msgCopy args:v101];

        v102 = qword_100BCE8E8;
        if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_INFO))
        {
          LOWORD(v581[0]) = 0;
          _os_log_impl(&_mh_execute_header, v102, OS_LOG_TYPE_INFO, "Replying UnpairCloudDevice", v581, 2u);
        }

        _Block_object_dispose(v575, 8);
        goto LABEL_117;
      }

      if (!strcmp(string, "FetchPublicAddress"))
      {
        v103 = qword_100BCE8E8;
        if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_INFO))
        {
          *v575 = 0;
          _os_log_impl(&_mh_execute_header, v103, OS_LOG_TYPE_INFO, "Process FetchPublicAddress", v575, 2u);
        }

        publicAddress = [(CloudPairing *)self publicAddress];
        v105 = publicAddress == 0;

        if (v105)
        {
          [(CloudPairing *)self cloudpairdReplyMsg:msgCopy args:&__NSDictionary0__struct];
        }

        else
        {
          v586 = @"kPublicAddress";
          publicAddress2 = [(CloudPairing *)self publicAddress];
          v587 = publicAddress2;
          v107 = [NSDictionary dictionaryWithObjects:&v587 forKeys:&v586 count:1];
          [(CloudPairing *)self cloudpairdReplyMsg:msgCopy args:v107];
        }

        v12 = qword_100BCE8E8;
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          publicAddress3 = [(CloudPairing *)self publicAddress];
          *v575 = 138412290;
          *&v575[4] = publicAddress3;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Replying FetchPublicAddress: %@", v575, 0xCu);
        }

        goto LABEL_117;
      }

      if (strcmp(string, "RemoveCloudPairedDevice"))
      {
        if (!strcmp(string, "RemoveStaleLEPairedDevice"))
        {
          v12 = _CFXPCCreateCFObjectFromXPCMessage();
          v114 = qword_100BCE8E8;
          if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_DEFAULT))
          {
            *v575 = 138412290;
            *&v575[4] = v12;
            _os_log_impl(&_mh_execute_header, v114, OS_LOG_TYPE_DEFAULT, "MUC - Process RemoveCloudPairedDevice: %@", v575, 0xCu);
          }

          v115 = [v12 objectForKey:@"kCloudDeviceID"];
          if (v115 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v116 = qword_100BCE8E8;
            if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_DEFAULT))
            {
              *v575 = 138412290;
              *&v575[4] = v115;
              _os_log_impl(&_mh_execute_header, v116, OS_LOG_TYPE_DEFAULT, "MUC - Removing Stale CloudPairedDevice: %@", v575, 0xCu);
            }

            v117 = [[NSUUID alloc] initWithUUIDString:v115];
            if (v117)
            {
              v118 = sub_100007EE8();
              v556[0] = _NSConcreteStackBlock;
              v556[1] = 3221225472;
              v556[2] = sub_1005F402C;
              v556[3] = &unk_100ADF820;
              v557 = v117;
              sub_10000CA94(v118, v556);
            }

            else if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_ERROR))
            {
              sub_10084F838();
            }
          }

          else if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_ERROR))
          {
            sub_10084F8A8();
          }

          goto LABEL_117;
        }

        if (!strcmp(string, "checkIn"))
        {
          v132 = qword_100BCE8E8;
          if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_INFO))
          {
            *v575 = 0;
            _os_log_impl(&_mh_execute_header, v132, OS_LOG_TYPE_INFO, "Process checkIn", v575, 2u);
          }

          v12 = _CFXPCCreateCFObjectFromXPCObject();
          v133 = qword_100BCE8E8;
          if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_INFO))
          {
            *v575 = 138412290;
            *&v575[4] = v12;
            _os_log_impl(&_mh_execute_header, v133, OS_LOG_TYPE_INFO, "Process checkIn: %@", v575, 0xCu);
          }

          v134 = [v12 objectForKey:@"kCheckInVersion"];
          v135 = v134;
          if (v134)
          {
            if (([v134 isEqualToNumber:&off_100B33978] & 1) == 0 && os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_FAULT))
            {
              sub_10084F7B0();
            }

            v136 = [v12 objectForKey:@"kIDSLocalDeviceUniqueID"];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              *&v509 = [v12 objectForKey:@"kIDSLocalDeviceUniqueID"];
            }

            else
            {
              *&v509 = 0;
            }

            *&v508 = [(CloudPairing *)self getPairedDeviceForIDSIdentifier:v509];
            v137 = qword_100BCE8E8;
            if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_DEFAULT))
            {
              *v575 = 138412546;
              *&v575[4] = v508;
              *&v575[12] = 2112;
              *&v575[14] = v509;
              _os_log_impl(&_mh_execute_header, v137, OS_LOG_TYPE_DEFAULT, "MUC - sending BTUUID-IDS device mapping %@ for local IDS %@", v575, 0x16u);
            }

            v138 = +[NSMutableDictionary dictionary];
            publicAddress4 = [(CloudPairing *)self publicAddress];
            v140 = publicAddress4 == 0;

            if (!v140)
            {
              publicAddress5 = [(CloudPairing *)self publicAddress];
              [v138 setObject:publicAddress5 forKey:@"kPublicAddress"];
            }

            v142 = qword_100BCE8E8;
            if (os_log_type_enabled(v142, OS_LOG_TYPE_INFO))
            {
              publicAddress6 = [(CloudPairing *)self publicAddress];
              *v575 = 138412290;
              *&v575[4] = publicAddress6;
              _os_log_impl(&_mh_execute_header, v142, OS_LOG_TYPE_INFO, "Check in replying with Public Address: %@", v575, 0xCu);
            }

            [v138 setObject:v508 forKey:@"kCachedLEDevices"];
            [v138 setObject:&off_100B33978 forKey:@"kCheckInVersion"];
            [(CloudPairing *)self cloudpairdReplyMsg:msgCopy args:v138];
          }

          goto LABEL_117;
        }

        if (!strcmp(string, "AllDevicesRemovedWithRecords") || !strcmp(string, "DevicesRemovedWithRecords"))
        {
          v12 = _CFXPCCreateCFObjectFromXPCMessage();
          v121 = qword_100BCE960;
          if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
          {
            *v575 = 0;
            _os_log_impl(&_mh_execute_header, v121, OS_LOG_TYPE_DEFAULT, "Devices majestic info removed", v575, 2u);
          }

          if (sub_100432918() && v12)
          {
            *&v509 = [v12 objectForKeyedSubscript:@"devices"];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v585[0] = objc_opt_class();
              v585[1] = objc_opt_class();
              v585[2] = objc_opt_class();
              v122 = [NSArray arrayWithObjects:v585 count:3];
              v123 = [NSSet setWithArray:v122];
              *&v508 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v123 fromData:v509 error:0];

              if (v508)
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v554 = 0u;
                  v555 = 0u;
                  v552 = 0u;
                  v553 = 0u;
                  v124 = v508;
                  v125 = [v124 countByEnumeratingWithState:&v552 objects:v584 count:16];
                  if (v125)
                  {
                    v126 = *v553;
                    do
                    {
                      for (i = 0; i != v125; i = i + 1)
                      {
                        if (*v553 != v126)
                        {
                          objc_enumerationMutation(v124);
                        }

                        v128 = *(*(&v552 + 1) + 8 * i);
                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          v129 = sub_100432918();
                          bluetoothAddress = [v128 bluetoothAddress];
                          v131 = bluetoothAddress;
                          sub_100007E30(v550, [bluetoothAddress UTF8String]);
                          (*(*v129 + 184))(v129, v550);
                          if (v551 < 0)
                          {
                            operator delete(v550[0]);
                          }
                        }
                      }

                      v125 = [v124 countByEnumeratingWithState:&v552 objects:v584 count:16];
                    }

                    while (v125);
                  }
                }
              }
            }
          }

          goto LABEL_117;
        }

        if (strcmp(string, "DevicesUpdatedWithRecords"))
        {
          if (!strcmp(string, "AllDeviceSupportInformationRecordsRemoved") || !strcmp(string, "DeviceSupportInformationRecordsRemoved"))
          {
            v12 = _CFXPCCreateCFObjectFromXPCMessage();
            v144 = qword_100BCE960;
            if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
            {
              *v575 = 0;
              _os_log_impl(&_mh_execute_header, v144, OS_LOG_TYPE_DEFAULT, "Devices support info removed", v575, 2u);
            }

            if (sub_100432918() && v12)
            {
              *&v508 = [v12 objectForKeyedSubscript:@"records"];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v579[0] = objc_opt_class();
                v579[1] = objc_opt_class();
                v579[2] = objc_opt_class();
                v145 = [NSArray arrayWithObjects:v579 count:3];
                v146 = [NSSet setWithArray:v145];
                *&v507 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v146 fromData:v508 error:0];

                if (v507)
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v540 = 0u;
                    v541 = 0u;
                    v538 = 0u;
                    v539 = 0u;
                    v147 = v507;
                    v148 = [v147 countByEnumeratingWithState:&v538 objects:v578 count:16];
                    if (v148)
                    {
                      v150 = *v539;
                      *&v149 = 138412290;
                      v509 = v149;
                      do
                      {
                        for (j = 0; j != v148; j = j + 1)
                        {
                          if (*v539 != v150)
                          {
                            objc_enumerationMutation(v147);
                          }

                          v152 = *(*(&v538 + 1) + 8 * j);
                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            v153 = qword_100BCE960;
                            if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
                            {
                              *v575 = v509;
                              *&v575[4] = v152;
                              _os_log_impl(&_mh_execute_header, v153, OS_LOG_TYPE_DEFAULT, "Device Support Info to be removed: %@", v575, 0xCu);
                            }
                          }
                        }

                        v148 = [v147 countByEnumeratingWithState:&v538 objects:v578 count:16];
                      }

                      while (v148);
                    }
                  }
                }
              }
            }

            goto LABEL_117;
          }

          if (strcmp(string, "DeviceSupportInformationRecordsUpdated"))
          {
            if (strcmp(string, "MagicPairingRecordsRemoved"))
            {
              if (strcmp(string, "MagicPairingRecordsUpdated"))
              {
                if (!strcmp(string, "ManateeIdentityLost"))
                {
                  v475 = qword_100BCE960;
                  if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
                  {
                    *v575 = 0;
                    _os_log_impl(&_mh_execute_header, v475, OS_LOG_TYPE_DEFAULT, "ManateeIdentityLost in cloudkit. Push local data again to resync.", v575, 2u);
                  }

                  if (sub_100432918())
                  {
                    v476 = sub_100432918();
                    (*(*v476 + 192))(v476);
                  }

                  goto LABEL_118;
                }

                if (!strcmp(string, "OnlineStatusChanged"))
                {
                  v477 = xpc_dictionary_get_BOOL(v8, "kOnlineStatus");
                  if (sub_100432918())
                  {
                    v478 = qword_100BCE960;
                    if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
                    {
                      v479 = "no";
                      if (v477)
                      {
                        v479 = "yes";
                      }

                      *v575 = 136315138;
                      *&v575[4] = v479;
                      _os_log_impl(&_mh_execute_header, v478, OS_LOG_TYPE_DEFAULT, "Network changed to %s. Push local data if any to cloud.", v575, 0xCu);
                    }

                    v480 = sub_100432918();
                    (*(*v480 + 72))(v480, v477);
                  }

                  goto LABEL_118;
                }

                if (strcmp(string, "kBTAccessHeadTrackUpdate"))
                {
LABEL_118:

                  goto LABEL_119;
                }

                v12 = _CFXPCCreateCFObjectFromXPCMessage();
                v13 = qword_100BCE8E8;
                if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_DEFAULT))
                {
                  *v575 = 0;
                  _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Received kBTAccessHeadTrackUpdate for call", v575, 2u);
                }

                v14 = [v12 objectForKey:@"kAccessHeadTracking"];
                -[CloudPairing setAccessibilityHeadTrackingEnabled:](self, "setAccessibilityHeadTrackingEnabled:", [v14 BOOLValue]);

                v15 = sub_100017E6C();
                (*(*v15 + 248))(v15);
                goto LABEL_117;
              }

              v12 = _CFXPCCreateCFObjectFromXPCMessage();
              v254 = qword_100BCE960;
              if (os_log_type_enabled(v254, OS_LOG_TYPE_DEFAULT))
              {
                v255 = [v12 debugDescription];
                v256 = v255;
                uTF8String = [v255 UTF8String];
                *v575 = 136446210;
                *&v575[4] = uTF8String;
                _os_log_impl(&_mh_execute_header, v254, OS_LOG_TYPE_DEFAULT, "Devices magic info updated from cloudkit = %{public}s", v575, 0xCu);
              }

              if (qword_100B50AB0 != -1)
              {
                sub_10084F69C();
              }

              if (!sub_1000E25D8() || !sub_100432918())
              {
                goto LABEL_117;
              }

              iCloudSignedIn = [(CloudPairing *)self iCloudSignedIn];
              v259 = v12 ? iCloudSignedIn : 0;
              if (v259 != 1)
              {
                goto LABEL_117;
              }

              v496 = [v12 objectForKeyedSubscript:@"records"];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v572[0] = objc_opt_class();
                v572[1] = objc_opt_class();
                v572[2] = objc_opt_class();
                v260 = [NSArray arrayWithObjects:v572 count:3];
                v261 = [NSSet setWithArray:v260];
                v492 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v261 fromData:v496 error:0];

                if (v492)
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v525 = 0u;
                    v523 = 0u;
                    v524 = 0u;
                    v522 = 0u;
                    *&v504 = v492;
                    v506 = [v504 countByEnumeratingWithState:&v522 objects:v571 count:16];
                    if (!v506)
                    {
                      goto LABEL_771;
                    }

                    *&v505 = *v523;
                    *&v262 = 138412290;
                    v503 = v262;
                    *&v262 = 67110146;
                    v501 = v262;
                    *&v262 = 67109890;
                    v499 = v262;
                    *&v262 = 136315138;
                    v495 = v262;
                    *&v262 = 136446210;
                    v490 = v262;
                    *&v262 = 68158466;
                    v484 = v262;
                    *&v262 = 68158722;
                    v483 = v262;
                    *&v262 = 67109120;
                    v487 = v262;
                    *&v262 = 136446722;
                    v498 = v262;
                    *&v262 = 136446466;
                    v485 = v262;
                    *&v262 = 67109376;
                    v481 = v262;
                    *&v262 = 67109378;
                    v482 = v262;
                    *&v262 = 136315394;
                    v497 = v262;
                    *&v262 = 136315650;
                    v494 = v262;
                    *&v262 = 136446467;
                    v500 = v262;
                    while (1)
                    {
                      *&v508 = 0;
                      do
                      {
                        if (*v523 != v505)
                        {
                          objc_enumerationMutation(v504);
                        }

                        *&v509 = *(*(&v522 + 1) + 8 * v508);
                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          v263 = qword_100BCE960;
                          if (os_log_type_enabled(v263, OS_LOG_TYPE_DEFAULT))
                          {
                            *v575 = v503;
                            *&v575[4] = v509;
                            _os_log_impl(&_mh_execute_header, v263, OS_LOG_TYPE_DEFAULT, "Cloud: Device magic pairing records to be updated: %@", v575, 0xCu);
                          }

                          v521 = 0;
                          v520 = 0;
                          memset(v581, 0, sizeof(v581));
                          bluetoothAddress2 = [v509 bluetoothAddress];
                          v265 = bluetoothAddress2;
                          sub_100007E30(v581, [bluetoothAddress2 UTF8String]);

                          if (SHIBYTE(v581[2]) >= 0)
                          {
                            v266 = v581;
                          }

                          else
                          {
                            v266 = v581[0];
                          }

                          if (sub_10009D0B4(&v520, v266))
                          {
                            if (v520)
                            {
LABEL_425:
                              if (qword_100B508F0 != -1)
                              {
                                sub_10084F6C4();
                              }

                              *&v507 = sub_1000E6554(off_100B508E8, &v520, 1);
                              v517 = 1;
                              v516 = 0;
                              v515 = 0;
                              sub_1000C2364(v507, &v515, &v516, &v515 + 1, &v517);
                              v267 = qword_100BCE960;
                              if (os_log_type_enabled(v267, OS_LOG_TYPE_DEFAULT))
                              {
                                v268 = v516;
                                v269 = HIDWORD(v515);
                                v270 = v515;
                                v271 = v517;
                                sub_1000E5A58(v507, &v580);
                                v272 = &v580;
                                if ((v580.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                                {
                                  v272 = v580.__r_.__value_.__r.__words[0];
                                }

                                *v575 = __PAIR64__(v268, v501);
                                *&v575[8] = 1024;
                                *&v575[10] = v269;
                                *&v575[14] = 1024;
                                *&v575[16] = v270;
                                *&v575[20] = 1024;
                                *&v575[22] = v271;
                                *&v575[26] = 2082;
                                *&v575[28] = v272;
                                _os_log_impl(&_mh_execute_header, v267, OS_LOG_TYPE_DEFAULT, "[MP] Local Device ID; vid: %x, pid: %x, vidSrc: %d, version: %d for device: %{public}s", v575, 0x24u);
                                if (SHIBYTE(v580.__r_.__value_.__r.__words[2]) < 0)
                                {
                                  operator delete(v580.__r_.__value_.__l.__data_);
                                }
                              }

                              vendorID = [v509 vendorID];
                              integerValue = [vendorID integerValue];

                              productID = [v509 productID];
                              integerValue2 = [productID integerValue];

                              if (integerValue && integerValue2)
                              {
                                if (v515 <= 1)
                                {
                                  v277 = 1;
                                }

                                else
                                {
                                  v277 = v515;
                                }

                                v278 = qword_100BCE960;
                                if (os_log_type_enabled(v278, OS_LOG_TYPE_DEFAULT))
                                {
                                  sub_1000E5A58(v507, &v580);
                                  v279 = &v580;
                                  if ((v580.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                                  {
                                    v279 = v580.__r_.__value_.__r.__words[0];
                                  }

                                  *v575 = __PAIR64__(integerValue, v499);
                                  *&v575[8] = 1024;
                                  *&v575[10] = integerValue2;
                                  *&v575[14] = 1024;
                                  *&v575[16] = v277;
                                  *&v575[20] = 2082;
                                  *&v575[22] = v279;
                                  _os_log_impl(&_mh_execute_header, v278, OS_LOG_TYPE_DEFAULT, "[MP] Updating Device ID from cloud; vid: %x, cloud pid: %x, vidSrc: %x for device: %{public}s", v575, 0x1Eu);
                                  if (SHIBYTE(v580.__r_.__value_.__r.__words[2]) < 0)
                                  {
                                    operator delete(v580.__r_.__value_.__l.__data_);
                                  }
                                }

                                sub_10053D890(v507, v277, integerValue, integerValue2, v517);
                                sub_10053E630(v507);
                              }

                              v481 = [CBProductInfo productInfoWithProductID:integerValue2, v481];
                              productName = [v481 productName];

                              if (productName && ([productName isEqualToString:@"Unknown"] & 1) == 0 && objc_msgSend(productName, "length"))
                              {
                                sub_1000C23E0(v507, v575);
                                v282 = v575[23];
                                v283 = v575[23];
                                if (v575[23] < 0)
                                {
                                  v282 = *&v575[8];
                                }

                                if (v282)
                                {
                                  sub_1000C23E0(v507, &v580);
                                  v284 = productName;
                                  v285 = std::string::compare(&v580, [productName UTF8String]) != 0;
                                  if (SHIBYTE(v580.__r_.__value_.__r.__words[2]) < 0)
                                  {
                                    operator delete(v580.__r_.__value_.__l.__data_);
                                  }

                                  v283 = v575[23];
                                }

                                else
                                {
                                  v285 = 1;
                                }

                                if (v283 < 0)
                                {
                                  operator delete(*v575);
                                }

                                if (v285)
                                {
                                  sub_100007E30(v575, [productName utf8ValueSafe]);
                                  *&v570 = 0;
                                  sub_100016250(&v570);
                                  v580.__r_.__value_.__r.__words[0] = v570;
                                  v580.__r_.__value_.__l.__size_ = SWORD2(v570);
                                  sub_100538494(v507, v575, &v580);
                                  if ((v575[23] & 0x80000000) != 0)
                                  {
                                    operator delete(*v575);
                                  }

                                  v288 = qword_100BCE960;
                                  if (os_log_type_enabled(v288, OS_LOG_TYPE_DEFAULT))
                                  {
                                    sub_1000E5A58(v507, v575);
                                    v289 = v575;
                                    if (v575[23] < 0)
                                    {
                                      v289 = *v575;
                                    }

                                    LODWORD(v580.__r_.__value_.__l.__data_) = v490;
                                    *(v580.__r_.__value_.__r.__words + 4) = v289;
                                    _os_log_impl(&_mh_execute_header, v288, OS_LOG_TYPE_DEFAULT, "Cloud: Magic Settings updated productname %{public}s", &v580, 0xCu);
                                    if ((v575[23] & 0x80000000) != 0)
                                    {
                                      operator delete(*v575);
                                    }
                                  }
                                }
                              }

                              name = [v509 name];
                              v291 = [name length] == 0;

                              if (!v291)
                              {
                                v292 = qword_100BCE960;
                                if (os_log_type_enabled(v292, OS_LOG_TYPE_DEFAULT))
                                {
                                  sub_1000E5A58(v507, v575);
                                  v293 = v575[23] >= 0 ? v575 : *v575;
                                  name2 = [v509 name];
                                  v295 = name2;
                                  uTF8String2 = [name2 UTF8String];
                                  LODWORD(v580.__r_.__value_.__l.__data_) = v500;
                                  *(v580.__r_.__value_.__r.__words + 4) = v293;
                                  WORD2(v580.__r_.__value_.__r.__words[1]) = 2081;
                                  *(&v580.__r_.__value_.__r.__words[1] + 6) = uTF8String2;
                                  _os_log_impl(&_mh_execute_header, v292, OS_LOG_TYPE_DEFAULT, "Cloud: Magic Settings updating %{public}s username to -> %{private}s", &v580, 0x16u);

                                  if ((v575[23] & 0x80000000) != 0)
                                  {
                                    operator delete(*v575);
                                  }
                                }

                                name3 = [v509 name];
                                sub_100007E30(v575, [name3 utf8ValueSafe]);
                                sub_100538D30(v507, v575, 0);
                                if ((v575[23] & 0x80000000) != 0)
                                {
                                  operator delete(*v575);
                                }

                                v298 = sub_100432918();
                                bluetoothAddress3 = [v509 bluetoothAddress];
                                v300 = bluetoothAddress3;
                                sub_100007E30(v513, [bluetoothAddress3 UTF8String]);
                                name4 = [v509 name];
                                sub_100007E30(v511, [name4 utf8ValueSafe]);
                                (*(*v298 + 176))(v298, v513, v511);
                                if (v512 < 0)
                                {
                                  operator delete(v511[0]);
                                }

                                if (v514 < 0)
                                {
                                  operator delete(v513[0]);
                                }
                              }

                              sub_1000C23E0(v507, v575);
                              if ((v575[23] & 0x80000000) != 0)
                              {
                                v302 = *&v575[8];
                                operator delete(*v575);
                                if (!v302)
                                {
                                  goto LABEL_488;
                                }
                              }

                              else if (!v575[23])
                              {
LABEL_488:
                                v303 = qword_100BCE960;
                                if (os_log_type_enabled(v303, OS_LOG_TYPE_DEFAULT))
                                {
                                  sub_1000E5A58(v507, v575);
                                  v304 = v575;
                                  if (v575[23] < 0)
                                  {
                                    v304 = *v575;
                                  }

                                  LODWORD(v580.__r_.__value_.__l.__data_) = v495;
                                  *(v580.__r_.__value_.__r.__words + 4) = v304;
                                  _os_log_impl(&_mh_execute_header, v303, OS_LOG_TYPE_DEFAULT, "Cloud: Magic Settings No Name for device: %s", &v580, 0xCu);
                                  if ((v575[23] & 0x80000000) != 0)
                                  {
                                    operator delete(*v575);
                                  }
                                }

                                cloudClient = [(CloudPairing *)self cloudClient];
                                bluetoothAddress4 = [v509 bluetoothAddress];
                                [cloudClient deviceRecord:bluetoothAddress4 completion:&stru_100B01250];
                              }

                              deviceIDFeatureBitsV1 = [v509 deviceIDFeatureBitsV1];
                              v308 = [deviceIDFeatureBitsV1 length] == 0;

                              if (!v308)
                              {
                                LODWORD(v580.__r_.__value_.__l.__data_) = 0;
                                deviceIDFeatureBitsV12 = [v509 deviceIDFeatureBitsV1];
                                v310 = deviceIDFeatureBitsV12;
                                sub_100007E30(v575, [deviceIDFeatureBitsV12 UTF8String]);
                                v311 = std::stoul(v575, 0, 0);
                                if ((v575[23] & 0x80000000) != 0)
                                {
                                  operator delete(*v575);
                                }

                                v312 = sub_10053E4A8(v507, &v580);
                                if (LODWORD(v580.__r_.__value_.__l.__data_) == v311)
                                {
                                  v313 = v312;
                                }

                                else
                                {
                                  v313 = 0;
                                }

                                if ((v313 & 1) == 0)
                                {
                                  v314 = qword_100BCE960;
                                  if (os_log_type_enabled(v314, OS_LOG_TYPE_DEFAULT))
                                  {
                                    v315 = v581;
                                    if (SHIBYTE(v581[2]) < 0)
                                    {
                                      v315 = v581[0];
                                    }

                                    *v575 = v497;
                                    *&v575[4] = v315;
                                    *&v575[12] = 1024;
                                    *&v575[14] = v311;
                                    _os_log_impl(&_mh_execute_header, v314, OS_LOG_TYPE_DEFAULT, "Cloud: Received iCloud update for DID supported feature bits version 1, address: %s, supported feature bits 0x%x", v575, 0x12u);
                                  }

                                  sub_10053DCEC(v507, v311, 1);
                                }
                              }

                              deviceIDFeatureBitsV2 = [v509 deviceIDFeatureBitsV2];
                              v317 = [deviceIDFeatureBitsV2 length] == 0;

                              if (!v317)
                              {
                                v580.__r_.__value_.__r.__words[0] = 0;
                                deviceIDFeatureBitsV22 = [v509 deviceIDFeatureBitsV2];
                                v319 = deviceIDFeatureBitsV22;
                                sub_100007E30(v575, [deviceIDFeatureBitsV22 UTF8String]);
                                v320 = std::stoull(v575, 0, 0);
                                if ((v575[23] & 0x80000000) != 0)
                                {
                                  operator delete(*v575);
                                }

                                *&v570 = __ROR8__(v320, 32);
                                if ((!sub_10053E4E0(v507, &v580) || v580.__r_.__value_.__r.__words[0] != v570) && v320 != -1)
                                {
                                  v321 = qword_100BCE960;
                                  if (os_log_type_enabled(v321, OS_LOG_TYPE_DEFAULT))
                                  {
                                    v322 = v581;
                                    if (SHIBYTE(v581[2]) < 0)
                                    {
                                      v322 = v581[0];
                                    }

                                    *v575 = v494;
                                    *&v575[4] = v322;
                                    *&v575[12] = 1024;
                                    *&v575[14] = HIDWORD(v320);
                                    *&v575[18] = 1024;
                                    *&v575[20] = v320;
                                    _os_log_impl(&_mh_execute_header, v321, OS_LOG_TYPE_DEFAULT, "Cloud: Apply Received iCloud update for DID extended supported feature bits version 2, address: %s, extended supported feature bits I1: 0x%x, I2: 0x%x", v575, 0x18u);
                                  }

                                  HIDWORD(v580.__r_.__value_.__r.__words[0]) |= v320;
                                  sub_10053DFDC(v507, v580.__r_.__value_.__r.__words[0], 1);
                                }
                              }

                              accessoryKey = [v509 accessoryKey];
                              if ([accessoryKey length] == 16)
                              {
                                accessoryHint = [v509 accessoryHint];
                                if ([accessoryHint length] == 16)
                                {
                                  encryptionKey = [v509 encryptionKey];
                                  if ([encryptionKey length] == 16)
                                  {
                                    v326 = [v509 irk];
                                    if ([v326 length] == 16)
                                    {
                                      *&v502 = [v509 ratchet];
                                      if ([v502 length])
                                      {
                                        settingsMask = [v509 settingsMask];
                                        if ([settingsMask length])
                                        {
                                          supportedServices = [v509 supportedServices];
                                          if ([supportedServices length])
                                          {
                                            buttonModes = [v509 buttonModes];
                                            if ([buttonModes length])
                                            {
                                              color = [v509 color];
                                              if ([color length])
                                              {
                                                listeningServices = [v509 listeningServices];
                                                v486 = [listeningServices length] == 0;

                                                if ((v486 & 1) == 0)
                                                {
                                                  v570 = 0uLL;
                                                  v569 = 0uLL;
                                                  accessoryKey2 = [v509 accessoryKey];
                                                  v329 = accessoryKey2;
                                                  v570 = *[accessoryKey2 bytes];

                                                  accessoryHint2 = [v509 accessoryHint];
                                                  v331 = accessoryHint2;
                                                  v569 = *[accessoryHint2 bytes];

                                                  masterKey = [v509 masterKey];
                                                  if ([masterKey length] == 16)
                                                  {
                                                    masterHint = [v509 masterHint];
                                                    v334 = [masterHint length] == 16;

                                                    if (v334)
                                                    {
                                                      *&v580.__r_.__value_.__l.__data_ = 0uLL;
                                                      v568 = 0uLL;
                                                      v335 = qword_100BCE960;
                                                      if (os_log_type_enabled(v335, OS_LOG_TYPE_DEFAULT))
                                                      {
                                                        masterKey2 = [v509 masterKey];
                                                        *v575 = v503;
                                                        *&v575[4] = masterKey2;
                                                        _os_log_impl(&_mh_execute_header, v335, OS_LOG_TYPE_DEFAULT, "Cloud: Retrieved Master Key: %@", v575, 0xCu);
                                                      }

                                                      v337 = qword_100BCE960;
                                                      if (os_log_type_enabled(v337, OS_LOG_TYPE_DEFAULT))
                                                      {
                                                        masterHint2 = [v509 masterHint];
                                                        *v575 = v503;
                                                        *&v575[4] = masterHint2;
                                                        _os_log_impl(&_mh_execute_header, v337, OS_LOG_TYPE_DEFAULT, "Cloud: Retrieved Master Hint: %@", v575, 0xCu);
                                                      }

                                                      masterKey3 = [v509 masterKey];
                                                      v340 = masterKey3;
                                                      *&v580.__r_.__value_.__l.__data_ = *[masterKey3 bytes];

                                                      masterHint3 = [v509 masterHint];
                                                      v342 = masterHint3;
                                                      v568 = *[masterHint3 bytes];

                                                      v567 = 0uLL;
                                                      if (!sub_1002D898C(&v568, &v569, &v567, 0x10uLL) && v567 == *(v507 + 128) && WORD2(v567) == *(v507 + 132))
                                                      {
                                                        v344 = qword_100BCE960;
                                                        if (os_log_type_enabled(v344, OS_LOG_TYPE_INFO))
                                                        {
                                                          sub_1000E5A58(v507, v575);
                                                          v345 = v575;
                                                          if (v575[23] < 0)
                                                          {
                                                            v345 = *v575;
                                                          }

                                                          v565 = v490;
                                                          v566 = v345;
                                                          _os_log_impl(&_mh_execute_header, v344, OS_LOG_TYPE_INFO, "Valid Main Account Keys from cloud magic device %{public}s", &v565, 0xCu);
                                                          if ((v575[23] & 0x80000000) != 0)
                                                          {
                                                            operator delete(*v575);
                                                          }
                                                        }

                                                        if (qword_100B50AB0 != -1)
                                                        {
                                                          sub_10084F69C();
                                                        }

                                                        (*(*off_100B50AA8 + 56))(off_100B50AA8, &v580, &v568);
                                                      }
                                                    }
                                                  }

                                                  else
                                                  {
                                                  }

                                                  v346 = qword_100BCE960;
                                                  if (os_log_type_enabled(v346, OS_LOG_TYPE_DEBUG))
                                                  {
                                                    *v575 = v484 | 0x1000000000;
                                                    *&v575[8] = 2096;
                                                    *&v575[10] = &v570;
                                                    *&v575[18] = 1040;
                                                    *&v575[20] = 16;
                                                    *&v575[24] = 2096;
                                                    *&v575[26] = &v569;
                                                    _os_log_debug_impl(&_mh_execute_header, v346, OS_LOG_TYPE_DEBUG, "Cloud keys AccKeyPtr %.16P, HintPtr %.16P", v575, 0x22u);
                                                  }

                                                  v568 = 0uLL;
                                                  v567 = 0uLL;
                                                  ratchet = [v509 ratchet];
                                                  v348 = ratchet;
                                                  v349 = atol([ratchet UTF8String]);

                                                  v350 = [v509 irk];
                                                  v351 = v350;
                                                  v568 = *[v350 bytes];

                                                  encryptionKey2 = [v509 encryptionKey];
                                                  v353 = encryptionKey2;
                                                  v567 = *[encryptionKey2 bytes];

                                                  for (k = 0; k != 31; ++k)
                                                  {
                                                    supportedServices2 = [v509 supportedServices];
                                                    v356 = ([supportedServices2 integerValue] & (1 << k)) == 0;

                                                    if (!v356)
                                                    {
                                                      v357 = qword_100BCE960;
                                                      if (os_log_type_enabled(v357, OS_LOG_TYPE_DEFAULT))
                                                      {
                                                        v358 = v581;
                                                        if (SHIBYTE(v581[2]) < 0)
                                                        {
                                                          v358 = v581[0];
                                                        }

                                                        *v575 = v497;
                                                        *&v575[4] = v358;
                                                        *&v575[12] = 1024;
                                                        *&v575[14] = 1 << k;
                                                        _os_log_impl(&_mh_execute_header, v357, OS_LOG_TYPE_DEFAULT, "Cloud: Magic Paired Device with address: %s, ServiceID: %d", v575, 0x12u);
                                                      }

                                                      v580.__r_.__value_.__r.__words[0] = 0;
                                                      sub_100016250(&v580);
                                                      *v575 = SLODWORD(v580.__r_.__value_.__l.__data_);
                                                      *&v575[8] = SWORD2(v580.__r_.__value_.__r.__words[0]);
                                                      sub_100539554(v507, 1 << k, 4, v575, 0);
                                                    }
                                                  }

                                                  v359 = qword_100BCE960;
                                                  if (os_log_type_enabled(v359, OS_LOG_TYPE_DEBUG))
                                                  {
                                                    *v575 = v483 | 0x1000000000;
                                                    *&v575[8] = 2096;
                                                    *&v575[10] = &v568;
                                                    *&v575[18] = 1040;
                                                    *&v575[20] = 16;
                                                    *&v575[24] = 2096;
                                                    *&v575[26] = &v567;
                                                    *&v575[34] = 1024;
                                                    *&v575[36] = v349;
                                                    _os_log_debug_impl(&_mh_execute_header, v359, OS_LOG_TYPE_DEBUG, "Cloud IRK %.16P, EncKey %.16P, Ratchet: %d", v575, 0x28u);
                                                  }

                                                  if (qword_100B50AB0 != -1)
                                                  {
                                                    sub_10084F69C();
                                                  }

                                                  v360 = sub_100558DB8(off_100B50AA8, v507);
                                                  v361 = qword_100BCE960;
                                                  v362 = os_log_type_enabled(v361, OS_LOG_TYPE_DEFAULT);
                                                  if (!v360)
                                                  {
                                                    if (v362)
                                                    {
                                                      v365 = v581;
                                                      if (SHIBYTE(v581[2]) < 0)
                                                      {
                                                        v365 = v581[0];
                                                      }

                                                      *v575 = v495;
                                                      *&v575[4] = v365;
                                                      _os_log_impl(&_mh_execute_header, v361, OS_LOG_TYPE_DEFAULT, "Cloud: Create new Magic Paired Device with address: %s", v575, 0xCu);
                                                    }

                                                    operator new();
                                                  }

                                                  if (v362)
                                                  {
                                                    v363 = v581;
                                                    if (SHIBYTE(v581[2]) < 0)
                                                    {
                                                      v363 = v581[0];
                                                    }

                                                    *v575 = v495;
                                                    *&v575[4] = v363;
                                                    _os_log_impl(&_mh_execute_header, v361, OS_LOG_TYPE_DEFAULT, "Cloud: Update new Magic Paired Device with address: %s", v575, 0xCu);
                                                  }

                                                  v364 = v569;
                                                  *(v360 + 5) = v570;
                                                  *(v360 + 7) = v364;
                                                  if (v349)
                                                  {
                                                    *(v360 + 18) = v349;
                                                  }

                                                  sub_10055C750(v360, &v568);
                                                  *(v360 + 3) = v567;
                                                  if (qword_100B50AB0 != -1)
                                                  {
                                                    sub_10084F69C();
                                                  }

                                                  sub_10055D510(off_100B50AA8, v360);
                                                  settingsMask2 = [v509 settingsMask];
                                                  LODWORD(supportedServices) = [settingsMask2 intValue];

                                                  v367 = qword_100BCE960;
                                                  if (os_log_type_enabled(v367, OS_LOG_TYPE_DEFAULT))
                                                  {
                                                    *v575 = v487;
                                                    *&v575[4] = supportedServices;
                                                    _os_log_impl(&_mh_execute_header, v367, OS_LOG_TYPE_DEFAULT, "Cloud: Retrieved settings mask from cloud: %d", v575, 8u);
                                                  }

                                                  color2 = [v509 color];
                                                  LODWORD(color) = [color2 intValue];

                                                  v369 = qword_100BCE960;
                                                  if (os_log_type_enabled(v369, OS_LOG_TYPE_DEFAULT))
                                                  {
                                                    *v575 = v487;
                                                    *&v575[4] = color;
                                                    _os_log_impl(&_mh_execute_header, v369, OS_LOG_TYPE_DEFAULT, "Cloud: Retrieved color from cloud: %d", v575, 8u);
                                                  }

                                                  listeningServices2 = [v509 listeningServices];
                                                  *&v502 = [listeningServices2 integerValue];

                                                  v371 = qword_100BCE960;
                                                  if (os_log_type_enabled(v371, OS_LOG_TYPE_DEFAULT))
                                                  {
                                                    *v575 = v487;
                                                    v486 = v502;
                                                    *&v575[4] = v502;
                                                    _os_log_impl(&_mh_execute_header, v371, OS_LOG_TYPE_DEFAULT, "Cloud: Retrieved listening services from cloud: %d", v575, 8u);
                                                  }

                                                  else
                                                  {
                                                    v486 = v502;
                                                  }

                                                  LODWORD(buttonModes) = (v502 >> 7) & 7;
                                                  v372 = qword_100BCE960;
                                                  if (os_log_type_enabled(v372, OS_LOG_TYPE_DEFAULT))
                                                  {
                                                    *v575 = __PAIR64__(buttonModes, v487);
                                                    _os_log_impl(&_mh_execute_header, v372, OS_LOG_TYPE_DEFAULT, "Cloud: Retrieved listening services V1 from cloud: %d", v575, 8u);
                                                  }

                                                  listeningServicesV2 = [v509 listeningServicesV2];
                                                  settingsMask = [listeningServicesV2 integerValue];

                                                  v374 = qword_100BCE960;
                                                  if (os_log_type_enabled(v374, OS_LOG_TYPE_DEFAULT))
                                                  {
                                                    *v575 = __PAIR64__(settingsMask, v487);
                                                    _os_log_impl(&_mh_execute_header, v374, OS_LOG_TYPE_DEFAULT, "Cloud: Retrieved listening services V2 from cloud: %d", v575, 8u);
                                                  }

                                                  if ((v502 & 2) != 0 && !sub_1000E31D0(v507))
                                                  {
                                                    v375 = qword_100BCE960;
                                                    if (os_log_type_enabled(v375, OS_LOG_TYPE_DEFAULT))
                                                    {
                                                      *v575 = v487 | 0x100000000;
                                                      _os_log_impl(&_mh_execute_header, v375, OS_LOG_TYPE_DEFAULT, "Cloud: Retrieved GAPA from cloud: %d", v575, 8u);
                                                    }

                                                    sub_100540890(v507, 1, 1);
                                                  }

                                                  buttonModes2 = [v509 buttonModes];
                                                  intValue = [buttonModes2 intValue];

                                                  v378 = qword_100BCE960;
                                                  if (os_log_type_enabled(v378, OS_LOG_TYPE_DEFAULT))
                                                  {
                                                    *v575 = v487;
                                                    *&v575[4] = intValue;
                                                    _os_log_impl(&_mh_execute_header, v378, OS_LOG_TYPE_DEFAULT, "Cloud: Retrieved button Modes from cloud: %d", v575, 8u);
                                                  }

                                                  v379 = intValue & 0xF;
                                                  v380 = v379 | (intValue >> 4 << 8);
                                                  v381 = qword_100BCE960;
                                                  if (os_log_type_enabled(v381, OS_LOG_TYPE_DEFAULT))
                                                  {
                                                    *v575 = v487;
                                                    v575[4] = intValue & 0xF;
                                                    v575[5] = intValue >> 4;
                                                    _os_log_impl(&_mh_execute_header, v381, OS_LOG_TYPE_DEFAULT, "Cloud: Retrieved double tap from cloud: %d", v575, 8u);
                                                  }

                                                  if (qword_100B50950 != -1)
                                                  {
                                                    sub_10084F6EC();
                                                  }

                                                  v382 = sub_10033BE98(off_100B50948, v507, intValue & 0xF | ((intValue >> 4) << 8), (supportedServices >> 4) & 1);
                                                  if (v380 == v382)
                                                  {
                                                    v383 = intValue >> 4;
                                                  }

                                                  else
                                                  {
                                                    v383 = BYTE1(v382);
                                                  }

                                                  if (v380 == v382)
                                                  {
                                                    v384 = v379;
                                                  }

                                                  else
                                                  {
                                                    v384 = v382;
                                                  }

                                                  if (sub_1000E3188(v507) != v382)
                                                  {
                                                    v385 = qword_100BCE960;
                                                    if (os_log_type_enabled(v385, OS_LOG_TYPE_DEFAULT))
                                                    {
                                                      *v575 = 0;
                                                      _os_log_impl(&_mh_execute_header, v385, OS_LOG_TYPE_DEFAULT, "Cloud: Updating double tap settings from cloud", v575, 2u);
                                                    }

                                                    if ((supportedServices & 8) != 0)
                                                    {
                                                      if (qword_100B50950 != -1)
                                                      {
                                                        sub_10084F6EC();
                                                      }

                                                      sub_10033DD54(off_100B50948, v507, v383, v384, 4);
                                                    }
                                                  }

                                                  if ((supportedServices & 3) == 2)
                                                  {
                                                    v386 = 2;
                                                  }

                                                  else
                                                  {
                                                    v386 = (supportedServices & 3) == 1;
                                                  }

                                                  if (sub_1000E3314(v507) != v386)
                                                  {
                                                    if (qword_100B50950 != -1)
                                                    {
                                                      sub_10084F6EC();
                                                    }

                                                    sub_10033DA80(off_100B50948, v507, v386, 4u);
                                                  }

                                                  if (color)
                                                  {
                                                    sub_10054AE4C(v507, color);
                                                    v387 = qword_100BCE960;
                                                    if (os_log_type_enabled(v387, OS_LOG_TYPE_DEFAULT))
                                                    {
                                                      sub_1000E5A58(v507, v575);
                                                      v388 = v575[23];
                                                      v389 = *v575;
                                                      v390 = sub_1000C2398(v507);
                                                      LODWORD(v580.__r_.__value_.__l.__data_) = v485;
                                                      v391 = v575;
                                                      if (v388 < 0)
                                                      {
                                                        v391 = v389;
                                                      }

                                                      *(v580.__r_.__value_.__r.__words + 4) = v391;
                                                      WORD2(v580.__r_.__value_.__r.__words[1]) = 1024;
                                                      *(&v580.__r_.__value_.__r.__words[1] + 6) = v390;
                                                      _os_log_impl(&_mh_execute_header, v387, OS_LOG_TYPE_DEFAULT, "Cloud: Color info updated for device %{public}s ,color code %d", &v580, 0x12u);
                                                      if ((v575[23] & 0x80000000) != 0)
                                                      {
                                                        operator delete(*v575);
                                                      }
                                                    }
                                                  }

                                                  v392 = supportedServices & 4;
                                                  v393 = qword_100BCE960;
                                                  if (os_log_type_enabled(v393, OS_LOG_TYPE_DEFAULT))
                                                  {
                                                    sub_1000E5A58(v507, &v580);
                                                    v394 = SHIBYTE(v580.__r_.__value_.__r.__words[2]);
                                                    v395 = v580.__r_.__value_.__r.__words[0];
                                                    v396 = sub_1000E356C(v507);
                                                    v397 = &v580;
                                                    if (v394 < 0)
                                                    {
                                                      v397 = v395;
                                                    }

                                                    if ((supportedServices & 4) != 0)
                                                    {
                                                      v398 = "Enabled";
                                                    }

                                                    else
                                                    {
                                                      v398 = "Disabled";
                                                    }

                                                    *v575 = v498;
                                                    *&v575[4] = v397;
                                                    *&v575[12] = 2080;
                                                    if (v396)
                                                    {
                                                      v399 = "Enabled";
                                                    }

                                                    else
                                                    {
                                                      v399 = "Disabled";
                                                    }

                                                    *&v575[14] = v398;
                                                    *&v575[22] = 2080;
                                                    *&v575[24] = v399;
                                                    _os_log_impl(&_mh_execute_header, v393, OS_LOG_TYPE_DEFAULT, "Cloud: In Ear Detection state update from cloud for device %{public}s is %s, local state %s", v575, 0x20u);
                                                    if (SHIBYTE(v580.__r_.__value_.__r.__words[2]) < 0)
                                                    {
                                                      operator delete(v580.__r_.__value_.__l.__data_);
                                                    }
                                                  }

                                                  if (sub_1000E356C(v507) != v392 >> 2)
                                                  {
                                                    if (qword_100B50950 != -1)
                                                    {
                                                      sub_10084F6EC();
                                                    }

                                                    sub_10033DF90(off_100B50948, v507, v392 != 0, 4u);
                                                  }

                                                  v400 = qword_100BCE960;
                                                  if (os_log_type_enabled(v400, OS_LOG_TYPE_DEFAULT))
                                                  {
                                                    sub_1000E5A58(v507, v575);
                                                    v401 = v575;
                                                    if (v575[23] < 0)
                                                    {
                                                      v401 = *v575;
                                                    }

                                                    LODWORD(v580.__r_.__value_.__l.__data_) = v485;
                                                    *(v580.__r_.__value_.__r.__words + 4) = v401;
                                                    WORD2(v580.__r_.__value_.__r.__words[1]) = 1024;
                                                    *(&v580.__r_.__value_.__r.__words[1] + 6) = v486;
                                                    _os_log_impl(&_mh_execute_header, v400, OS_LOG_TYPE_DEFAULT, "Cloud: Update listening mode services for device %{public}s with service - %d", &v580, 0x12u);
                                                    if ((v575[23] & 0x80000000) != 0)
                                                    {
                                                      operator delete(*v575);
                                                    }
                                                  }

                                                  v402 = (v502 >> 10) & 7;
                                                  v403 = v402 | (v502 >> 13 << 8);
                                                  v404 = qword_100BCE960;
                                                  if (os_log_type_enabled(v404, OS_LOG_TYPE_DEFAULT))
                                                  {
                                                    sub_1000E5A58(v507, &v580);
                                                    v405 = SHIBYTE(v580.__r_.__value_.__r.__words[2]);
                                                    v406 = v580.__r_.__value_.__r.__words[0];
                                                    v407 = sub_1000E06EC(v507);
                                                    *v575 = v498;
                                                    v408 = &v580;
                                                    if (v405 < 0)
                                                    {
                                                      v408 = v406;
                                                    }

                                                    *&v575[4] = v408;
                                                    *&v575[12] = 1024;
                                                    *&v575[14] = v407;
                                                    *&v575[18] = 1024;
                                                    *&v575[20] = v402 | (v502 >> 13 << 8);
                                                    _os_log_impl(&_mh_execute_header, v404, OS_LOG_TYPE_DEFAULT, "Cloud: Click Hold mode info update for device %{public}s, current value: %d, cloud value %d", v575, 0x18u);
                                                    if (SHIBYTE(v580.__r_.__value_.__r.__words[2]) < 0)
                                                    {
                                                      operator delete(v580.__r_.__value_.__l.__data_);
                                                    }
                                                  }

                                                  if (v502 >> 13 && v402 && sub_1000E06EC(v507) != v403 && !sub_1000E2140(v507, 38))
                                                  {
                                                    if (qword_100B50950 != -1)
                                                    {
                                                      sub_10084F6EC();
                                                    }

                                                    sub_100331844(off_100B50948, v507, 22, v403, 4u);
                                                    v409 = qword_100BCE960;
                                                    if (os_log_type_enabled(v409, OS_LOG_TYPE_DEFAULT))
                                                    {
                                                      sub_1000E5A58(v507, v575);
                                                      v469 = v575[23];
                                                      v470 = *v575;
                                                      v471 = sub_1000E06EC(v507);
                                                      LODWORD(v580.__r_.__value_.__l.__data_) = v485;
                                                      v472 = v575;
                                                      if (v469 < 0)
                                                      {
                                                        v472 = v470;
                                                      }

                                                      *(v580.__r_.__value_.__r.__words + 4) = v472;
                                                      WORD2(v580.__r_.__value_.__r.__words[1]) = 1024;
                                                      *(&v580.__r_.__value_.__r.__words[1] + 6) = v471;
                                                      _os_log_impl(&_mh_execute_header, v409, OS_LOG_TYPE_DEFAULT, "Cloud: Click Hold mode info updated for device %{public}s, new mode %d", &v580, 0x12u);
                                                      if ((v575[23] & 0x80000000) != 0)
                                                      {
                                                        operator delete(*v575);
                                                      }
                                                    }

LABEL_668:
                                                  }

                                                  else if (!(v502 >> 13) || !v402)
                                                  {
                                                    v409 = &_os_log_default;
                                                    v410 = &_os_log_default;
                                                    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
                                                    {
                                                      *v575 = v481;
                                                      *&v575[4] = v502 >> 13;
                                                      *&v575[8] = 1024;
                                                      *&v575[10] = (v502 >> 10) & 7;
                                                      _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "CloudPairing: Unknown value caught for Press and Hold configs. Left: %d, Right %d", v575, 0xEu);
                                                    }

                                                    goto LABEL_668;
                                                  }

                                                  v411 = qword_100BCE960;
                                                  v412 = os_log_type_enabled(v411, OS_LOG_TYPE_DEFAULT);
                                                  if (settingsMask && (settingsMask & 7) == buttonModes)
                                                  {
                                                    if (v412)
                                                    {
                                                      sub_1000E5A58(v507, &v580);
                                                      v413 = SHIBYTE(v580.__r_.__value_.__r.__words[2]);
                                                      v414 = v580.__r_.__value_.__r.__words[0];
                                                      v415 = sub_1000E32CC(v507);
                                                      *v575 = v498;
                                                      v416 = &v580;
                                                      if (v413 < 0)
                                                      {
                                                        v416 = v414;
                                                      }

                                                      *&v575[4] = v416;
                                                      *&v575[12] = 1024;
                                                      *&v575[14] = v415;
                                                      *&v575[18] = 1024;
                                                      *&v575[20] = settingsMask;
                                                      _os_log_impl(&_mh_execute_header, v411, OS_LOG_TYPE_DEFAULT, "Cloud: Listening mode config update is from new services layer for device %{public}s, current value: %d, cloud configs(LSv2): %d", v575, 0x18u);
                                                      if (SHIBYTE(v580.__r_.__value_.__r.__words[2]) < 0)
                                                      {
                                                        operator delete(v580.__r_.__value_.__l.__data_);
                                                      }
                                                    }
                                                  }

                                                  else
                                                  {
                                                    if (v412)
                                                    {
                                                      sub_1000E5A58(v507, &v580);
                                                      v417 = (v580.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v580 : v580.__r_.__value_.__r.__words[0];
                                                      v418 = sub_1000E32CC(v507);
                                                      v419 = sub_1000E32CC(v507);
                                                      *v575 = v498;
                                                      *&v575[4] = v417;
                                                      *&v575[12] = 1024;
                                                      *&v575[14] = v418;
                                                      *&v575[18] = 1024;
                                                      *&v575[20] = v419 | buttonModes;
                                                      _os_log_impl(&_mh_execute_header, v411, OS_LOG_TYPE_DEFAULT, "Cloud: Listening mode config update for device %{public}s, current value: %d, cloud configs(+adaptive support): %d", v575, 0x18u);
                                                      if (SHIBYTE(v580.__r_.__value_.__r.__words[2]) < 0)
                                                      {
                                                        operator delete(v580.__r_.__value_.__l.__data_);
                                                      }
                                                    }

                                                    settingsMask = sub_1000E32CC(v507) | buttonModes;
                                                  }

                                                  if (!sub_100546C50(v507, settingsMask))
                                                  {
                                                    v420 = qword_100BCE960;
                                                    if (os_log_type_enabled(v420, OS_LOG_TYPE_ERROR))
                                                    {
                                                      sub_1000E5A58(v507, v575);
                                                      v473 = v575;
                                                      if (v575[23] < 0)
                                                      {
                                                        v473 = *v575;
                                                      }

                                                      v580.__r_.__value_.__r.__words[0] = v482 | 0x600000000;
                                                      LOWORD(v580.__r_.__value_.__r.__words[1]) = 2082;
                                                      *(&v580.__r_.__value_.__r.__words[1] + 2) = v473;
                                                      _os_log_error_impl(&_mh_execute_header, v420, OS_LOG_TYPE_ERROR, "Cloud: Using default listening mode configs %d for device %{public}s", &v580, 0x12u);
                                                      if ((v575[23] & 0x80000000) != 0)
                                                      {
                                                        operator delete(*v575);
                                                      }
                                                    }

                                                    settingsMask = 6;
                                                  }

                                                  if (sub_1000E32CC(v507) != settingsMask)
                                                  {
                                                    if (qword_100B50950 != -1)
                                                    {
                                                      sub_10084F6EC();
                                                    }

                                                    sub_100331844(off_100B50948, v507, 26, settingsMask, 4u);
                                                    v421 = qword_100BCE960;
                                                    if (os_log_type_enabled(v421, OS_LOG_TYPE_DEFAULT))
                                                    {
                                                      sub_1000E5A58(v507, v575);
                                                      v422 = v575[23];
                                                      v423 = *v575;
                                                      v424 = sub_1000E32CC(v507);
                                                      LODWORD(v580.__r_.__value_.__l.__data_) = v485;
                                                      v425 = v575;
                                                      if (v422 < 0)
                                                      {
                                                        v425 = v423;
                                                      }

                                                      *(v580.__r_.__value_.__r.__words + 4) = v425;
                                                      WORD2(v580.__r_.__value_.__r.__words[1]) = 1024;
                                                      *(&v580.__r_.__value_.__r.__words[1] + 6) = v424;
                                                      _os_log_impl(&_mh_execute_header, v421, OS_LOG_TYPE_DEFAULT, "Cloud: Listening mode config updated for device %{public}s, new configs %d", &v580, 0x12u);
                                                      if ((v575[23] & 0x80000000) != 0)
                                                      {
                                                        operator delete(*v575);
                                                      }
                                                    }
                                                  }

                                                  v426 = (v502 >> 2) & 3;
                                                  v427 = qword_100BCE960;
                                                  if (os_log_type_enabled(v427, OS_LOG_TYPE_DEFAULT))
                                                  {
                                                    sub_1000E5A58(v507, &v580);
                                                    v428 = SHIBYTE(v580.__r_.__value_.__r.__words[2]);
                                                    v429 = v580.__r_.__value_.__r.__words[0];
                                                    v430 = sub_1005493C4(v507);
                                                    *v575 = v498;
                                                    v431 = &v580;
                                                    if (v428 < 0)
                                                    {
                                                      v431 = v429;
                                                    }

                                                    *&v575[4] = v431;
                                                    *&v575[12] = 1024;
                                                    *&v575[14] = v430;
                                                    *&v575[18] = 1024;
                                                    *&v575[20] = (v502 >> 2) & 3;
                                                    _os_log_impl(&_mh_execute_header, v427, OS_LOG_TYPE_DEFAULT, "Cloud: One Bud ANC mode update for device %{public}s, current value: %d, cloud value %d", v575, 0x18u);
                                                    if (SHIBYTE(v580.__r_.__value_.__r.__words[2]) < 0)
                                                    {
                                                      operator delete(v580.__r_.__value_.__l.__data_);
                                                    }
                                                  }

                                                  v432 = sub_1000E2140(v507, 43);
                                                  v433 = ((v502 >> 2) & 3) == 0 || v432;
                                                  if ((v433 & 1) == 0 && sub_1005493C4(v507) != v426)
                                                  {
                                                    if (qword_100B50950 != -1)
                                                    {
                                                      sub_10084F6EC();
                                                    }

                                                    sub_100331844(off_100B50948, v507, 27, v426, 4u);
                                                    v434 = qword_100BCE960;
                                                    if (os_log_type_enabled(v434, OS_LOG_TYPE_DEFAULT))
                                                    {
                                                      sub_1000E5A58(v507, v575);
                                                      v435 = v575[23];
                                                      v436 = *v575;
                                                      v437 = sub_1005493C4(v507);
                                                      LODWORD(v580.__r_.__value_.__l.__data_) = v485;
                                                      v438 = v575;
                                                      if (v435 < 0)
                                                      {
                                                        v438 = v436;
                                                      }

                                                      *(v580.__r_.__value_.__r.__words + 4) = v438;
                                                      WORD2(v580.__r_.__value_.__r.__words[1]) = 1024;
                                                      *(&v580.__r_.__value_.__r.__words[1] + 6) = v437;
                                                      _os_log_impl(&_mh_execute_header, v434, OS_LOG_TYPE_DEFAULT, "Cloud: One Bud ANC mode updated for device %{public}s, new mode %d", &v580, 0x12u);
                                                      if ((v575[23] & 0x80000000) != 0)
                                                      {
                                                        operator delete(*v575);
                                                      }
                                                    }
                                                  }

                                                  if (sub_1000E2140(v507, 32) && !sub_1000E5DB8(v507))
                                                  {
                                                    v439 = qword_100BCE960;
                                                    if (os_log_type_enabled(v439, OS_LOG_TYPE_DEFAULT))
                                                    {
                                                      sub_1000E5A58(v507, &v580);
                                                      if ((v580.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                                                      {
                                                        v440 = &v580;
                                                      }

                                                      else
                                                      {
                                                        v440 = v580.__r_.__value_.__r.__words[0];
                                                      }

                                                      v441 = sub_1000E2140(v507, 32);
                                                      v442 = sub_1000E5DB8(v507);
                                                      *v575 = v498;
                                                      v443 = "No";
                                                      if (v441)
                                                      {
                                                        v443 = "Yes";
                                                      }

                                                      *&v575[4] = v440;
                                                      *&v575[12] = 2080;
                                                      *&v575[14] = v443;
                                                      *&v575[22] = 1024;
                                                      *&v575[24] = v442;
                                                      _os_log_impl(&_mh_execute_header, v439, OS_LOG_TYPE_DEFAULT, "Cloud: %{public}s Initialize setSmartRouteMode via cloud Tipi Support = %s current SR Mode =%d", v575, 0x1Cu);
                                                      if (SHIBYTE(v580.__r_.__value_.__r.__words[2]) < 0)
                                                      {
                                                        operator delete(v580.__r_.__value_.__l.__data_);
                                                      }
                                                    }

                                                    sub_100546280(v507, 1);
                                                  }

                                                  v444 = qword_100BCE960;
                                                  if (os_log_type_enabled(v444, OS_LOG_TYPE_DEFAULT))
                                                  {
                                                    sub_1000E5A58(v507, &v580);
                                                    v445 = SHIBYTE(v580.__r_.__value_.__r.__words[2]);
                                                    v446 = v580.__r_.__value_.__r.__words[0];
                                                    v447 = sub_1000E2140(v507, 32);
                                                    *v575 = v498;
                                                    v448 = &v580;
                                                    if (v445 < 0)
                                                    {
                                                      v448 = v446;
                                                    }

                                                    *&v575[4] = v448;
                                                    *&v575[12] = 1024;
                                                    *&v575[14] = v447;
                                                    *&v575[18] = 1024;
                                                    *&v575[20] = (v502 & 0x40) >> 6;
                                                    _os_log_impl(&_mh_execute_header, v444, OS_LOG_TYPE_DEFAULT, "Cloud: TiPi supported flag update from listeningServices mask %{public}s, current local value: %d, listeningServices mask value: %d", v575, 0x18u);
                                                    if (SHIBYTE(v580.__r_.__value_.__r.__words[2]) < 0)
                                                    {
                                                      operator delete(v580.__r_.__value_.__l.__data_);
                                                    }
                                                  }

                                                  if ((v502 & 0x40) != 0 && !sub_1000E2140(v507, 32))
                                                  {
                                                    sub_10053E4FC(v507, 32, 1);
                                                    if (!sub_1000E5DB8(v507))
                                                    {
                                                      sub_100546280(v507, 1);
                                                    }
                                                  }
                                                }
                                              }

                                              else
                                              {
                                              }
                                            }

                                            else
                                            {
                                            }
                                          }

                                          else
                                          {
                                          }
                                        }

                                        else
                                        {
                                        }
                                      }

                                      else
                                      {
                                      }
                                    }

                                    else
                                    {
                                    }
                                  }

                                  else
                                  {
                                  }
                                }

                                else
                                {
                                }
                              }

                              else
                              {
                              }

                              if (_os_feature_enabled_impl() && NSClassFromString(@"PowerUISmartChargeClientAudioAccessories"))
                              {
                                v449 = qword_100BCE960;
                                if (os_log_type_enabled(v449, OS_LOG_TYPE_DEFAULT))
                                {
                                  sub_1000E5A58(v507, &v580);
                                  v450 = (v580.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v580 : v580.__r_.__value_.__r.__words[0];
                                  optimizedBatteryCharging = [v509 optimizedBatteryCharging];
                                  optimizedBatteryFullChargeDeadline = [v509 optimizedBatteryFullChargeDeadline];
                                  *v575 = v498;
                                  *&v575[4] = v450;
                                  *&v575[12] = 2112;
                                  *&v575[14] = optimizedBatteryCharging;
                                  *&v575[22] = 2112;
                                  *&v575[24] = optimizedBatteryFullChargeDeadline;
                                  _os_log_impl(&_mh_execute_header, v449, OS_LOG_TYPE_DEFAULT, "Cloud: OBC PowerUI values updated for device %{public}s, optimizedBatteryCharging %@, optimizedBatteryFullChargeDeadline %@", v575, 0x20u);

                                  if (SHIBYTE(v580.__r_.__value_.__r.__words[2]) < 0)
                                  {
                                    operator delete(v580.__r_.__value_.__l.__data_);
                                  }
                                }

                                optimizedBatteryCharging2 = [v509 optimizedBatteryCharging];
                                v454 = [optimizedBatteryCharging2 length] == 0;

                                if (!v454)
                                {
                                  optimizedBatteryCharging3 = [v509 optimizedBatteryCharging];
                                  longLongValue = [optimizedBatteryCharging3 longLongValue];

                                  sub_10054B188(v507, longLongValue);
                                  [(CloudPairing *)self audioAccessorySmartChargeStatusHasChangedFromCloud:v507];
                                }

                                optimizedBatteryFullChargeDeadline2 = [v509 optimizedBatteryFullChargeDeadline];
                                v458 = [optimizedBatteryFullChargeDeadline2 length] == 0;

                                if (!v458)
                                {
                                  *&v502 = objc_alloc_init(NSDateFormatter);
                                  v459 = +[NSTimeZone localTimeZone];
                                  [v502 setTimeZone:v459];

                                  [v502 setDateFormat:@"yyyy-MM-dd'T'HH:mm:ss.SSSSSSSZZZZZ"];
                                  optimizedBatteryFullChargeDeadline3 = [v509 optimizedBatteryFullChargeDeadline];
                                  v461 = [v502 dateFromString:optimizedBatteryFullChargeDeadline3];

                                  v462 = [[PowerUISmartChargeClientAudioAccessories alloc] initWithClientName:@"com.apple.bluetooth"];
                                  bluetoothAddress5 = [v509 bluetoothAddress];
                                  v510 = 0;
                                  v464 = [v462 unfilteredDeadlineForDevice:bluetoothAddress5 withError:&v510];
                                  v465 = v510;

                                  if (v464 && ([v461 timeIntervalSinceDate:v464], v466 <= 0.0))
                                  {
                                    v467 = qword_100BCE960;
                                    if (os_log_type_enabled(v467, OS_LOG_TYPE_INFO))
                                    {
                                      sub_1000E5A58(v507, &v580);
                                      v468 = &v580;
                                      if ((v580.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                                      {
                                        v468 = v580.__r_.__value_.__r.__words[0];
                                      }

                                      *v575 = v498;
                                      *&v575[4] = v468;
                                      *&v575[12] = 2112;
                                      *&v575[14] = v461;
                                      *&v575[22] = 2112;
                                      *&v575[24] = v464;
                                      _os_log_impl(&_mh_execute_header, v467, OS_LOG_TYPE_INFO, "Cloud: Skip OBC PowerUI values updated for device %{public}s with older deadline %@ to keep newer deadline %@", v575, 0x20u);
                                      if (SHIBYTE(v580.__r_.__value_.__r.__words[2]) < 0)
                                      {
                                        operator delete(v580.__r_.__value_.__l.__data_);
                                      }
                                    }
                                  }

                                  else
                                  {
                                    sub_10054B26C(v507, v461);
                                    [(CloudPairing *)self audioAccessorySmartChargeDeadlineHasChangedFromCloud:v507];
                                  }
                                }
                              }

LABEL_755:
                              if (SHIBYTE(v581[2]) < 0)
                              {
                                operator delete(v581[0]);
                              }

                              goto LABEL_757;
                            }

                            v286 = 1;
                            while (v286 != 6)
                            {
                              if (*(&v520 + v286++))
                              {
                                if ((v286 - 2) < 5)
                                {
                                  goto LABEL_425;
                                }

                                break;
                              }
                            }
                          }

                          if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
                          {
                            sub_10084F714(&v518, v519);
                          }

                          goto LABEL_755;
                        }

LABEL_757:
                        *&v508 = v508 + 1;
                      }

                      while (v508 != v506);
                      v474 = [v504 countByEnumeratingWithState:&v522 objects:v571 count:16];
                      v506 = v474;
                      if (!v474)
                      {
LABEL_771:

                        break;
                      }
                    }
                  }
                }
              }

              goto LABEL_117;
            }

            v12 = _CFXPCCreateCFObjectFromXPCMessage();
            v231 = qword_100BCE8E8;
            if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_DEFAULT))
            {
              *v575 = 0;
              _os_log_impl(&_mh_execute_header, v231, OS_LOG_TYPE_DEFAULT, "Devices magic info removed", v575, 2u);
            }

            if (!sub_100432918())
            {
              goto LABEL_117;
            }

            iCloudSignedIn2 = [(CloudPairing *)self iCloudSignedIn];
            v233 = v12 ? iCloudSignedIn2 : 0;
            if (v233 != 1)
            {
              goto LABEL_117;
            }

            v506 = [v12 objectForKeyedSubscript:@"records"];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v574[0] = objc_opt_class();
              v574[1] = objc_opt_class();
              v574[2] = objc_opt_class();
              v234 = [NSArray arrayWithObjects:v574 count:3];
              v235 = [NSSet setWithArray:v234];
              *&v504 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v235 fromData:v506 error:0];

              if (v504)
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v528 = 0u;
                  v529 = 0u;
                  v526 = 0u;
                  v527 = 0u;
                  *&v509 = v504;
                  v236 = [v509 countByEnumeratingWithState:&v526 objects:v573 count:16];
                  if (!v236)
                  {
                    goto LABEL_396;
                  }

                  v238 = *v527;
                  *&v237 = 138412290;
                  v508 = v237;
                  *&v237 = 136446210;
                  v507 = v237;
                  *&v237 = 136315138;
                  v505 = v237;
                  while (1)
                  {
                    v239 = 0;
                    do
                    {
                      if (*v527 != v238)
                      {
                        objc_enumerationMutation(v509);
                      }

                      v240 = *(*(&v526 + 1) + 8 * v239);
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v241 = qword_100BCE960;
                        if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
                        {
                          *v575 = v508;
                          *&v575[4] = v240;
                          _os_log_impl(&_mh_execute_header, v241, OS_LOG_TYPE_DEFAULT, "Device magic Info to be removed: %@", v575, 0xCu);
                        }

                        WORD2(v570) = 0;
                        LODWORD(v570) = 0;
                        memset(v575, 0, 24);
                        bluetoothAddress6 = [v240 bluetoothAddress];
                        v243 = bluetoothAddress6;
                        sub_100007E30(v575, [bluetoothAddress6 UTF8String]);

                        if (v575[23] >= 0)
                        {
                          v244 = v575;
                        }

                        else
                        {
                          v244 = *v575;
                        }

                        if (sub_10009D0B4(&v570, v244))
                        {
                          if (v570)
                          {
LABEL_363:
                            if (qword_100B508F0 != -1)
                            {
                              sub_10084F6C4();
                            }

                            v245 = sub_1000E6554(off_100B508E8, &v570, 0);
                            if (v245)
                            {
                              if (qword_100B50AB0 != -1)
                              {
                                sub_10084F69C();
                              }

                              if (sub_100558DB8(off_100B50AA8, v245))
                              {
                                if (qword_100B50950 != -1)
                                {
                                  sub_10084F6EC();
                                }

                                *(off_100B50948 + 431) = 1;
                                v246 = qword_100BCE960;
                                if (os_log_type_enabled(v246, OS_LOG_TYPE_DEFAULT))
                                {
                                  sub_1000E5A58(v245, v581);
                                  v247 = v581;
                                  if (SHIBYTE(v581[2]) < 0)
                                  {
                                    v247 = v581[0];
                                  }

                                  LODWORD(v580.__r_.__value_.__l.__data_) = v507;
                                  *(v580.__r_.__value_.__r.__words + 4) = v247;
                                  _os_log_impl(&_mh_execute_header, v246, OS_LOG_TYPE_DEFAULT, "Remove magic paired device: %{public}s", &v580, 0xCu);
                                  if (SHIBYTE(v581[2]) < 0)
                                  {
                                    operator delete(v581[0]);
                                  }
                                }

                                if (qword_100B50AB0 != -1)
                                {
                                  sub_10084F69C();
                                }

                                sub_100558E48(off_100B50AA8, v245, 0);
                              }

                              else
                              {
                                v251 = qword_100BCE960;
                                if (os_log_type_enabled(v251, OS_LOG_TYPE_INFO))
                                {
                                  sub_1000E5A58(v245, v581);
                                  v252 = v581;
                                  if (SHIBYTE(v581[2]) < 0)
                                  {
                                    v252 = v581[0];
                                  }

                                  LODWORD(v580.__r_.__value_.__l.__data_) = v507;
                                  *(v580.__r_.__value_.__r.__words + 4) = v252;
                                  _os_log_impl(&_mh_execute_header, v251, OS_LOG_TYPE_INFO, "Cannot find magic paired device to remove: %{public}s", &v580, 0xCu);
                                  if (SHIBYTE(v581[2]) < 0)
                                  {
                                    operator delete(v581[0]);
                                  }
                                }
                              }
                            }

LABEL_385:
                            if ((v575[23] & 0x80000000) != 0)
                            {
                              operator delete(*v575);
                            }

                            goto LABEL_387;
                          }

                          v248 = 1;
                          while (v248 != 6)
                          {
                            if (v571[v248++ - 16])
                            {
                              if ((v248 - 2) < 5)
                              {
                                goto LABEL_363;
                              }

                              break;
                            }
                          }
                        }

                        v250 = qword_100BCE960;
                        if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
                        {
                          LODWORD(v581[0]) = v505;
                          *(v581 + 4) = v244;
                          _os_log_error_impl(&_mh_execute_header, v250, OS_LOG_TYPE_ERROR, "Received invalid device address for device record: %s", v581, 0xCu);
                        }

                        goto LABEL_385;
                      }

LABEL_387:
                      v239 = v239 + 1;
                    }

                    while (v239 != v236);
                    v253 = [v509 countByEnumeratingWithState:&v526 objects:v573 count:16];
                    v236 = v253;
                    if (!v253)
                    {
LABEL_396:

                      break;
                    }
                  }
                }
              }
            }

            goto LABEL_117;
          }

          v12 = _CFXPCCreateCFObjectFromXPCMessage();
          v197 = qword_100BCE960;
          if (os_log_type_enabled(v197, OS_LOG_TYPE_DEFAULT))
          {
            v198 = [v12 debugDescription];
            v199 = v198;
            uTF8String3 = [v198 UTF8String];
            *v575 = 136446210;
            *&v575[4] = uTF8String3;
            _os_log_impl(&_mh_execute_header, v197, OS_LOG_TYPE_DEFAULT, "Device support info updated from cloudkit = %{public}s", v575, 0xCu);
          }

          if (!sub_100432918() || !v12)
          {
            goto LABEL_117;
          }

          *&v501 = [v12 objectForKeyedSubscript:@"records"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v577[0] = objc_opt_class();
            v577[1] = objc_opt_class();
            v577[2] = objc_opt_class();
            v201 = [NSArray arrayWithObjects:v577 count:3];
            v202 = [NSSet setWithArray:v201];
            *&v500 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v202 fromData:v501 error:0];

            if (v500)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v536 = 0u;
                v537 = 0u;
                v534 = 0u;
                v535 = 0u;
                *&v507 = v500;
                *&v509 = [v507 countByEnumeratingWithState:&v534 objects:v576 count:16];
                if (!v509)
                {
                  goto LABEL_337;
                }

                *&v508 = *v535;
                *&v503 = v533;
                *&v203 = 136446210;
                v502 = v203;
                while (1)
                {
                  v204 = 0;
                  do
                  {
                    if (*v535 != v508)
                    {
                      objc_enumerationMutation(v507);
                    }

                    v205 = *(*(&v534 + 1) + 8 * v204);
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      bluetoothAddress7 = [v205 bluetoothAddress];
                      v207 = sub_100777FF4(bluetoothAddress7);

                      if (v207)
                      {
                        if (qword_100B508F0 != -1)
                        {
                          sub_10084F6C4();
                        }

                        v208 = sub_1000504C8(off_100B508E8, v207, 0);
                        v209 = v208;
                        if (v208)
                        {
                          if (*(v208 + 128))
                          {
LABEL_304:
                            v210 = qword_100BCE960;
                            if (os_log_type_enabled(v210, OS_LOG_TYPE_DEFAULT))
                            {
                              sub_1000E5A58(v209, v575);
                              v211 = v575;
                              if (v575[23] < 0)
                              {
                                v211 = *v575;
                              }

                              LODWORD(v581[0]) = v502;
                              *(v581 + 4) = v211;
                              _os_log_impl(&_mh_execute_header, v210, OS_LOG_TYPE_DEFAULT, "DeviceSupportInformationRecordsUpdated for %{public}s", v581, 0xCu);
                              if ((v575[23] & 0x80000000) != 0)
                              {
                                operator delete(*v575);
                              }
                            }

                            cloudClient2 = [(CloudPairing *)self cloudClient];
                            bluetoothAddress8 = [v205 bluetoothAddress];
                            v532[0] = _NSConcreteStackBlock;
                            v532[1] = 3221225472;
                            v533[0] = sub_1005F4080;
                            v533[1] = &unk_100AFC8B8;
                            v533[3] = v209;
                            v533[2] = v205;
                            [cloudClient2 deviceRecord:bluetoothAddress8 completion:v532];

                            ancAssetVersion = [v205 ancAssetVersion];
                            LODWORD(bluetoothAddress8) = [ancAssetVersion length] > 1;

                            if (bluetoothAddress8)
                            {
                              ancAssetVersion2 = [v205 ancAssetVersion];
                              v216 = ancAssetVersion2;
                              sub_100007E30(&v531, [ancAssetVersion2 UTF8String]);
                              sub_100541E60(v209, &v531);
                              if (SHIBYTE(v531.__r_.__value_.__r.__words[2]) < 0)
                              {
                                operator delete(v531.__r_.__value_.__l.__data_);
                              }
                            }

                            memset(v575, 0, 56);
                            sub_100007E30(&v575[32], "");
                            sub_1000E0610(v209, v575);
                            caseFirmwareVersion = [v205 caseFirmwareVersion];
                            v218 = caseFirmwareVersion == 0;

                            if (v218 || ([v205 caseFirmwareVersion], v219 = objc_claimAutoreleasedReturnValue(), v220 = objc_msgSend(v219, "longLongValue"), v219, !v220))
                            {
                              LODWORD(v506) = 0;
                            }

                            else
                            {
                              *&v575[16] = v220;
                              LODWORD(v506) = 1;
                            }

                            caseName = [v205 caseName];
                            v222 = [caseName length] > 1;

                            if (v222)
                            {
                              caseName2 = [v205 caseName];
                              v224 = caseName2;
                              std::string::assign(&v575[32], [caseName2 UTF8String]);

LABEL_328:
                              v228 = v575[0];
                              v229 = *&v575[2];
                              v230 = *&v575[4];
                              LODWORD(v506) = *&v575[8];
                              LODWORD(v505) = v575[10];
                              *&v504 = *&v575[16];
                              if ((v575[55] & 0x80000000) != 0)
                              {
                                sub_100008904(&v530, *&v575[32], *&v575[40]);
                              }

                              else
                              {
                                v530 = *&v575[32];
                              }

                              sub_100541F64(v209, v228, v229, v230, v506, v505, v504, 0, &v530);
                              if (SHIBYTE(v530.__r_.__value_.__r.__words[2]) < 0)
                              {
                                operator delete(v530.__r_.__value_.__l.__data_);
                              }
                            }

                            else if (v506)
                            {
                              goto LABEL_328;
                            }

                            if ((v575[55] & 0x80000000) != 0)
                            {
                              operator delete(*&v575[32]);
                            }

                            goto LABEL_335;
                          }

                          v225 = 0;
                          while (v225 != 5)
                          {
                            v226 = v225;
                            if (*(v208 + 129 + v225++))
                            {
                              if (v226 < 5)
                              {
                                goto LABEL_304;
                              }

                              break;
                            }
                          }
                        }

                        if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
                        {
                          sub_10084F748(&v570, &v570 + 1);
                        }
                      }

                      else if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
                      {
                        sub_10084F77C(&v580, &v580.__r_.__value_.__s.__data_[1]);
                      }
                    }

LABEL_335:
                    ++v204;
                  }

                  while (v204 != v509);
                  *&v509 = [v507 countByEnumeratingWithState:&v534 objects:v576 count:16];
                  if (!v509)
                  {
LABEL_337:

                    break;
                  }
                }
              }
            }
          }

          goto LABEL_117;
        }

        v12 = _CFXPCCreateCFObjectFromXPCMessage();
        v154 = qword_100BCE960;
        if (os_log_type_enabled(v154, OS_LOG_TYPE_DEFAULT))
        {
          v155 = [v12 debugDescription];
          v156 = v155;
          uTF8String4 = [v155 UTF8String];
          *v575 = 141558275;
          *&v575[4] = 1752392040;
          *&v575[12] = 2081;
          *&v575[14] = uTF8String4;
          _os_log_impl(&_mh_execute_header, v154, OS_LOG_TYPE_DEFAULT, "Devices nickname info updated from cloudkit = %{private, mask.hash}s", v575, 0x16u);
        }

        if (!sub_100432918() || !v12)
        {
          goto LABEL_117;
        }

        *&v503 = [v12 objectForKeyedSubscript:@"devices"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v583[0] = objc_opt_class();
          v583[1] = objc_opt_class();
          v583[2] = objc_opt_class();
          v158 = [NSArray arrayWithObjects:v583 count:3];
          v159 = [NSSet setWithArray:v158];
          *&v500 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v159 fromData:v503 error:0];

          if (v500)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v548 = 0u;
              v549 = 0u;
              v546 = 0u;
              v547 = 0u;
              v506 = v500;
              *&v509 = [v506 countByEnumeratingWithState:&v546 objects:v582 count:16];
              if (!v509)
              {
                goto LABEL_279;
              }

              *&v508 = *v547;
              *&v160 = 136315138;
              v501 = v160;
              *&v160 = 67110146;
              v504 = v160;
              *&v160 = 67109890;
              v502 = v160;
              *&v160 = 136446210;
              v499 = v160;
              while (1)
              {
                v161 = 0;
                do
                {
                  if (*v547 != v508)
                  {
                    objc_enumerationMutation(v506);
                  }

                  v162 = *(*(&v546 + 1) + 8 * v161);
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    WORD2(v569) = 0;
                    LODWORD(v569) = 0;
                    memset(v581, 0, sizeof(v581));
                    bluetoothAddress9 = [v162 bluetoothAddress];
                    v164 = bluetoothAddress9;
                    sub_100007E30(v581, [bluetoothAddress9 UTF8String]);

                    if (SHIBYTE(v581[2]) >= 0)
                    {
                      v165 = v581;
                    }

                    else
                    {
                      v165 = v581[0];
                    }

                    if (sub_10009D0B4(&v569, v165))
                    {
                      if (v569)
                      {
LABEL_221:
                        if (qword_100B508F0 != -1)
                        {
                          sub_10084F6C4();
                        }

                        *&v507 = sub_1000E6554(off_100B508E8, &v569, 0);
                        if (v507)
                        {
                          v166 = sub_100432918();
                          bluetoothAddress10 = [v162 bluetoothAddress];
                          v168 = bluetoothAddress10;
                          sub_100007E30(v544, [bluetoothAddress10 UTF8String]);
                          nickname = [v162 nickname];
                          v170 = nickname;
                          sub_100007E30(v542, [nickname UTF8String]);
                          (*(*v166 + 176))(v166, v544, v542);
                          if (v543 < 0)
                          {
                            operator delete(v542[0]);
                          }

                          if (v545 < 0)
                          {
                            operator delete(v544[0]);
                          }

                          v568.n128_u32[0] = 1;
                          LODWORD(v567) = 0;
                          v565 = 0;
                          v520 = 0;
                          sub_1000C2364(v507, &v520, &v567, &v565, &v568);
                          *&v505 = qword_100BCE960;
                          if (os_log_type_enabled(v505, OS_LOG_TYPE_DEFAULT))
                          {
                            v171 = v567;
                            v172 = v565;
                            v173 = v520;
                            v174 = v568.n128_u32[0];
                            sub_1000E5A58(v507, &v580);
                            v175 = &v580;
                            if ((v580.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                            {
                              v175 = v580.__r_.__value_.__r.__words[0];
                            }

                            *v575 = __PAIR64__(v171, v504);
                            *&v575[8] = 1024;
                            *&v575[10] = v172;
                            *&v575[14] = 1024;
                            *&v575[16] = v173;
                            *&v575[20] = 1024;
                            *&v575[22] = v174;
                            *&v575[26] = 2082;
                            *&v575[28] = v175;
                            _os_log_impl(&_mh_execute_header, v505, OS_LOG_TYPE_DEFAULT, "Local Device ID; vid: %x, pid: %x, vidSrc: %d, version: %d for device: %{public}s", v575, 0x24u);
                            if (SHIBYTE(v580.__r_.__value_.__r.__words[2]) < 0)
                            {
                              operator delete(v580.__r_.__value_.__l.__data_);
                            }
                          }

                          vendorID2 = [v162 vendorID];
                          integerValue3 = [vendorID2 integerValue];

                          productID2 = [v162 productID];
                          integerValue4 = [productID2 integerValue];

                          if (integerValue3 && integerValue4)
                          {
                            if (v520 <= 1)
                            {
                              v180 = 1;
                            }

                            else
                            {
                              v180 = v520;
                            }

                            v181 = qword_100BCE960;
                            if (os_log_type_enabled(v181, OS_LOG_TYPE_DEFAULT))
                            {
                              sub_1000E5A58(v507, &v580);
                              v182 = &v580;
                              if ((v580.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                              {
                                v182 = v580.__r_.__value_.__r.__words[0];
                              }

                              *v575 = __PAIR64__(integerValue3, v502);
                              *&v575[8] = 1024;
                              *&v575[10] = integerValue4;
                              *&v575[14] = 1024;
                              *&v575[16] = v180;
                              *&v575[20] = 2082;
                              *&v575[22] = v182;
                              _os_log_impl(&_mh_execute_header, v181, OS_LOG_TYPE_DEFAULT, "Updating Device ID from cloud; vid: %x, cloud pid: %x, vidSrc: %x for device: %{public}s", v575, 0x1Eu);
                              if (SHIBYTE(v580.__r_.__value_.__r.__words[2]) < 0)
                              {
                                operator delete(v580.__r_.__value_.__l.__data_);
                              }
                            }

                            sub_10053D890(v507, v180, integerValue3, integerValue4, v568.n128_i32[0]);
                            sub_10053E630(v507);
                          }

                          v183 = [CBProductInfo productInfoWithProductID:integerValue4];
                          productName2 = [v183 productName];

                          if (productName2 && ([productName2 isEqualToString:@"Unknown"] & 1) == 0 && objc_msgSend(productName2, "length"))
                          {
                            sub_1000C23E0(v507, v575);
                            v185 = v575[23];
                            v186 = v575[23];
                            if (v575[23] < 0)
                            {
                              v185 = *&v575[8];
                            }

                            if (v185)
                            {
                              sub_1000C23E0(v507, &v580);
                              v187 = productName2;
                              v188 = std::string::compare(&v580, [productName2 UTF8String]) != 0;
                              if (SHIBYTE(v580.__r_.__value_.__r.__words[2]) < 0)
                              {
                                operator delete(v580.__r_.__value_.__l.__data_);
                              }

                              v186 = v575[23];
                            }

                            else
                            {
                              v188 = 1;
                            }

                            if (v186 < 0)
                            {
                              operator delete(*v575);
                            }

                            if (v188)
                            {
                              sub_100007E30(v575, [productName2 utf8ValueSafe]);
                              *&v570 = 0;
                              sub_100016250(&v570);
                              v580.__r_.__value_.__r.__words[0] = v570;
                              v580.__r_.__value_.__l.__size_ = SWORD2(v570);
                              sub_100538494(v507, v575, &v580);
                              if ((v575[23] & 0x80000000) != 0)
                              {
                                operator delete(*v575);
                              }

                              v195 = qword_100BCE960;
                              if (os_log_type_enabled(v195, OS_LOG_TYPE_DEFAULT))
                              {
                                sub_1000E5A58(v507, v575);
                                v196 = v575;
                                if (v575[23] < 0)
                                {
                                  v196 = *v575;
                                }

                                LODWORD(v580.__r_.__value_.__l.__data_) = v499;
                                *(v580.__r_.__value_.__r.__words + 4) = v196;
                                _os_log_impl(&_mh_execute_header, v195, OS_LOG_TYPE_DEFAULT, "Cloud: Magic Settings updated productname %{public}s", &v580, 0xCu);
                                if ((v575[23] & 0x80000000) != 0)
                                {
                                  operator delete(*v575);
                                }
                              }
                            }
                          }

                          goto LABEL_275;
                        }

                        v194 = qword_100BCE960;
                        if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
                        {
                          *v575 = v501;
                          *&v575[4] = v165;
                          v192 = v194;
                          v193 = "[DeviceRecord] No device record for device address: %s";
LABEL_259:
                          _os_log_error_impl(&_mh_execute_header, v192, OS_LOG_TYPE_ERROR, v193, v575, 0xCu);
                        }

                        goto LABEL_275;
                      }

                      v189 = 1;
                      while (v189 != 6)
                      {
                        if (*(&v569 + v189++))
                        {
                          if ((v189 - 2) < 5)
                          {
                            goto LABEL_221;
                          }

                          break;
                        }
                      }
                    }

                    v191 = qword_100BCE960;
                    if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
                    {
                      *v575 = v501;
                      *&v575[4] = v165;
                      v192 = v191;
                      v193 = "Received invalid device address for device record: %s";
                      goto LABEL_259;
                    }

LABEL_275:
                    if (SHIBYTE(v581[2]) < 0)
                    {
                      operator delete(v581[0]);
                    }
                  }

                  ++v161;
                }

                while (v161 != v509);
                *&v509 = [v506 countByEnumeratingWithState:&v546 objects:v582 count:16];
                if (!v509)
                {
LABEL_279:

                  break;
                }
              }
            }
          }
        }

        goto LABEL_117;
      }

      v12 = _CFXPCCreateCFObjectFromXPCMessage();
      v108 = qword_100BCE8E8;
      if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_INFO))
      {
        *v575 = 138412290;
        *&v575[4] = v12;
        _os_log_impl(&_mh_execute_header, v108, OS_LOG_TYPE_INFO, "Process RemoveCloudPairedDevice: %@", v575, 0xCu);
      }

      v109 = [v12 objectForKey:@"kCloudDeviceUniqueID"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v110 = [v12 objectForKey:@"kCloudDeviceUniqueID"];

        if (v110)
        {
          v111 = qword_100BCE8E8;
          if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_DEFAULT))
          {
            *v575 = 138412290;
            *&v575[4] = v110;
            _os_log_impl(&_mh_execute_header, v111, OS_LOG_TYPE_DEFAULT, "Removing CloudPairedDevice value: %@", v575, 0xCu);
          }

          v112 = sub_100007EE8();
          v558[0] = _NSConcreteStackBlock;
          v558[1] = 3221225472;
          v558[2] = sub_1005F3F94;
          v558[3] = &unk_100ADF820;
          v113 = v110;
          v559 = v113;
          sub_10000CA94(v112, v558);

          goto LABEL_117;
        }
      }

      else
      {
      }

      v120 = qword_100BCE8E8;
      if (!os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_INFO))
      {
LABEL_117:

        goto LABEL_118;
      }

      *v575 = 138412290;
      *&v575[4] = 0;
      v70 = "Invalid RemoveCloudPairedDevice value: %@";
      v71 = v120;
      v72 = OS_LOG_TYPE_INFO;
      v73 = 12;
    }

    _os_log_impl(&_mh_execute_header, v71, v72, v70, v575, v73);
    goto LABEL_117;
  }

LABEL_119:
}

- (void)fetchSoundProfile
{
  if (_os_feature_enabled_impl() && (sub_1005FCCC4() & 1) != 0)
  {
    cloudClient = [(CloudPairing *)self cloudClient];
    [cloudClient fetchSoundProfileRecordWithCompletion:&stru_100B01290];
  }

  else
  {
    v3 = qword_100BCE8E8;
    if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "BTAudioCloudSyncMonitor: Spatial Profile Not supported hardware ", buf, 2u);
    }
  }
}

- (void)resetServerConnection
{
  serverConnection = [(CloudPairing *)self serverConnection];

  if (serverConnection)
  {
    serverConnection2 = [(CloudPairing *)self serverConnection];
    xpc_connection_cancel(serverConnection2);

    [(CloudPairing *)self setServerConnection:0];
  }

  v5 = dispatch_get_global_queue(2, 0);
  mach_service = xpc_connection_create_mach_service("com.apple.BTServer.cloudpairing", v5, 0);
  [(CloudPairing *)self setServerConnection:mach_service];

  serverConnection3 = [(CloudPairing *)self serverConnection];

  v8 = qword_100BCE8E8;
  v9 = os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_INFO);
  if (serverConnection3)
  {
    if (v9)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Connected to cloudpaird", buf, 2u);
    }

    serverConnection4 = [(CloudPairing *)self serverConnection];
    xpc_connection_set_event_handler(serverConnection4, &stru_100B012D0);

    serverConnection5 = [(CloudPairing *)self serverConnection];
    xpc_connection_resume(serverConnection5);

    if ([(NSMutableDictionary *)self->_idsMultiUsersDictionary count])
    {
      v12 = qword_100BCE8E8;
      if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "MUC - Connected to cloudpaird - send getIDSLocalDeviceInfo", v13, 2u);
      }

      [(CloudPairing *)self cloudpairdMsg:@"getIDSLocalDeviceInfo" args:&__NSDictionary0__struct];
    }
  }

  else if (v9)
  {
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Failed to connect to cloudpaird", v15, 2u);
  }
}

- (void)cloudpairdReplyMsg:(id)msg args:(id)args
{
  msgCopy = msg;
  argsCopy = args;
  if ([(CloudPairing *)self isRunningInRecovery])
  {
    v8 = qword_100BCE8E8;
    if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "CP: Not Available in this layer", v12, 2u);
    }
  }

  else
  {
    reply = xpc_dictionary_create_reply(msgCopy);
    if (argsCopy)
    {
      v10 = _CFXPCCreateXPCObjectFromCFObject();
      xpc_dictionary_set_value(reply, "kMsgArgs", v10);
    }

    v11 = xpc_dictionary_get_remote_connection(msgCopy);
    xpc_connection_send_message(v11, reply);
  }
}

- (void)cloudpairdMsg:(id)msg args:(id)args
{
  msgCopy = msg;
  argsCopy = args;
  if ([(CloudPairing *)self isRunningInRecovery])
  {
    v8 = qword_100BCE8E8;
    if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "CP: Not Available in this layer", &v16, 2u);
    }
  }

  else
  {
    serverConnection = [(CloudPairing *)self serverConnection];

    if (!serverConnection)
    {
      [(CloudPairing *)self resetServerConnection];
    }

    serverConnection2 = [(CloudPairing *)self serverConnection];

    v11 = qword_100BCE8E8;
    if (serverConnection2)
    {
      if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 138412803;
        v17 = msgCopy;
        v18 = 2160;
        v19 = 1752392040;
        v20 = 2113;
        v21 = argsCopy;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "CloudPairing: Send message: %@ - %{private, mask.hash}@", &v16, 0x20u);
      }

      v12 = xpc_dictionary_create(0, 0, 0);
      v13 = msgCopy;
      xpc_dictionary_set_string(v12, "kMsgId", [msgCopy UTF8String]);
      if (argsCopy)
      {
        v14 = _CFXPCCreateXPCMessageWithCFObject();
        xpc_dictionary_set_value(v12, "kMsgArgs", v14);
      }

      serverConnection3 = [(CloudPairing *)self serverConnection];
      xpc_connection_send_message(serverConnection3, v12);
    }

    else
    {
      sub_10084FA38(qword_100BCE8E8, msgCopy, argsCopy);
    }
  }
}

- (void)registerWithCloudPairedDevices:(id)devices identifiers:(id)identifiers
{
  devicesCopy = devices;
  identifiersCopy = identifiers;
  v8 = qword_100BCE8E8;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [identifiersCopy componentsJoinedByString:{@", "}];
    *buf = 136315138;
    uTF8String = [v9 UTF8String];
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Locally paired iCloud identifiers: [ %s ]", buf, 0xCu);
  }

  v10 = qword_100BCE8E8;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [devicesCopy componentsJoinedByString:{@", "}];
    v12 = v11;
    uTF8String2 = [v11 UTF8String];
    *buf = 136315138;
    uTF8String = uTF8String2;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Locally paired iCloud BTUUIDs: [ %s ]", buf, 0xCu);
  }

  v14 = [NSArray arrayWithArray:devicesCopy];
  cloudLocalUUIDs = self->_cloudLocalUUIDs;
  self->_cloudLocalUUIDs = v14;

  v16 = [NSArray arrayWithArray:identifiersCopy];
  cloudidsIdentifiers = self->_cloudidsIdentifiers;
  self->_cloudidsIdentifiers = v16;

  objc_initWeak(buf, self);
  serialQueue = [(CloudPairing *)self serialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1005F5750;
  block[3] = &unk_100AEB0C0;
  objc_copyWeak(&v20, buf);
  dispatch_async(serialQueue, block);

  objc_destroyWeak(&v20);
  objc_destroyWeak(buf);
}

- (void)printDebug
{
  v4 = qword_100BCE8E8;
  if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v17) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "statedump: ------------------ IDS Multi Users -------------------", &v17, 2u);
  }

  v5 = qword_100BCE8E8;
  if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_DEFAULT))
  {
    if (self->_supportsVirtualAddress)
    {
      v6 = "YES";
    }

    else
    {
      v6 = "NO";
    }

    v17 = 136315138;
    v18 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "statedump: Virtual address supported: %s", &v17, 0xCu);
  }

  v7 = qword_100BCE8E8;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    currentIDSUser = [(CloudPairing *)self currentIDSUser];
    if (currentIDSUser)
    {
      currentIDSUser2 = [(CloudPairing *)self currentIDSUser];
      v9 = currentIDSUser2;
      uTF8String = [currentIDSUser2 UTF8String];
    }

    else
    {
      uTF8String = "none";
    }

    v17 = 136315138;
    v18 = uTF8String;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "statedump: Current IDS user: %s", &v17, 0xCu);
    if (currentIDSUser)
    {
    }
  }

  v11 = qword_100BCE8E8;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    currentUserRandomAddress = [(CloudPairing *)self currentUserRandomAddress];
    if (currentUserRandomAddress)
    {
      currentIDSUser2 = [(CloudPairing *)self currentUserRandomAddress];
      v13 = currentIDSUser2;
      uTF8String2 = [currentIDSUser2 UTF8String];
    }

    else
    {
      uTF8String2 = "none";
    }

    v17 = 136315138;
    v18 = uTF8String2;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "statedump: Current user's RSA: %s", &v17, 0xCu);
    if (currentUserRandomAddress)
    {
    }
  }

  v15 = qword_100BCE8E8;
  if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_DEFAULT))
  {
    publicAddress = self->_publicAddress;
    v17 = 138412290;
    v18 = publicAddress;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "statedump: IDS Multi users dictionary for local address: %@", &v17, 0xCu);
  }

  [(NSMutableDictionary *)self->_idsMultiUsersDictionary enumerateKeysAndObjectsUsingBlock:&stru_100B01310];
  [(CloudPairing *)self cloudpairdMsg:@"printDebug" args:&__NSDictionary0__struct];
}

- (void)sendCloudKitPush
{
  v3 = qword_100BCE8E8;
  if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "sendCloudKitPush", v4, 2u);
  }

  [(CloudPairing *)self cloudpairdMsg:@"sendCloudKitPush" args:0];
}

- (BOOL)getAccountStatus
{
  v3 = qword_100BCE8E8;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109120;
    v5[1] = [(CloudPairing *)self iCloudSignedIn];
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "getAccountStatus : iCloud Account: %i", v5, 8u);
  }

  return [(CloudPairing *)self iCloudSignedIn];
}

- (BOOL)handleXPCUnpairCommand:(id)command
{
  commandCopy = command;
  v4 = [commandCopy objectForKeyedSubscript:@"PublicAddress"];
  v5 = [NSString stringWithFormat:@"Public %@", v4];
  v6 = sub_100777FF4(v5);

  v7 = [commandCopy objectForKeyedSubscript:@"RandomAddress"];
  v8 = [NSString stringWithFormat:@"Random %@", v7];
  v9 = sub_100777FF4(v8);

  v10 = (v6 | v9) != 0;
  if (v6 | v9)
  {
    v11 = [commandCopy objectForKeyedSubscript:@"kCloudDeviceUniqueID"];
    v12 = [commandCopy objectForKeyedSubscript:@"kCloudPairingID"];
    v13 = v12;
    if (v11 && v12)
    {
      if (qword_100B508D0 != -1)
      {
        sub_10084FB3C();
      }

      if (!sub_1007868D4(off_100B508C8, v13))
      {
        v14 = qword_100BCE8E8;
        if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
        {
          sub_10084FB50([v11 UTF8String], v13, buf);
        }
      }

      if (qword_100B508C0 != -1)
      {
        sub_10084F45C();
      }

      if (!sub_10004EE74(off_100B508B8, v13))
      {
        v15 = qword_100BCE8E8;
        if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
        {
          v16 = v11;
          sub_10084FB8C([v11 UTF8String], v13, v43);
        }
      }

      if (qword_100B508D0 != -1)
      {
        sub_10084FBC8();
      }

      sub_1000B006C(off_100B508C8, v13, __p);
      if (v42 >= 0)
      {
        v17 = __p;
      }

      else
      {
        v17 = __p[0];
      }

      v18 = [NSString stringWithUTF8String:v17];
      v19 = [v11 isEqualToString:v18];

      if (v42 < 0)
      {
        operator delete(__p[0]);
        if (v19)
        {
          goto LABEL_30;
        }
      }

      else if (v19)
      {
        goto LABEL_30;
      }

      v23 = qword_100BCE8E8;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
      {
        v24 = v11;
        sub_10084FBF0([v11 UTF8String], v13, __p);
      }
    }

LABEL_30:
    if (qword_100B508C0 != -1)
    {
      sub_10084F45C();
    }

    v25 = off_100B508B8;
    v26 = v11;
    sub_100007E30(v36, [v11 UTF8String]);
    v27 = sub_1007C2828(v25, v36);
    v28 = v27;
    if (v37 < 0)
    {
      operator delete(v36[0]);
      if (v28)
      {
LABEL_53:

        goto LABEL_54;
      }
    }

    else if (v27)
    {
      goto LABEL_53;
    }

    memset(uu, 0, sizeof(uu));
    uuid_clear(uu);
    if (qword_100B508D0 != -1)
    {
      sub_10084FBC8();
    }

    sub_1000498D4(off_100B508C8, v9, 0, 1u, 0, 0, src);
    uuid_copy(uu, src);
    if (uuid_is_null(uu))
    {
      v29 = qword_100BCE8E8;
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v30 = sub_100063D0C();
        *src = 138412290;
        v39 = v30;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "No static random device found with address %@", src, 0xCu);
      }
    }

    else
    {
      if (qword_100B508C0 != -1)
      {
        sub_10084F45C();
      }

      v31 = off_100B508B8;
      v29 = sub_10004DF60(uu);
      sub_1007C2AA4(v31, v29);
    }

    if (qword_100B508D0 != -1)
    {
      sub_10084FBC8();
    }

    sub_1000498D4(off_100B508C8, v6, 0, 1u, 0, 0, src);
    uuid_copy(uu, src);
    if (uuid_is_null(uu))
    {
      v32 = qword_100BCE8E8;
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        v33 = sub_100063D0C();
        *src = 138412290;
        v39 = v33;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "No local device found with address %@", src, 0xCu);
      }
    }

    else
    {
      if (qword_100B508C0 != -1)
      {
        sub_10084F45C();
      }

      v34 = off_100B508B8;
      v32 = sub_10004DF60(uu);
      sub_1007C2AA4(v34, v32);
    }

    goto LABEL_53;
  }

  v20 = [commandCopy objectForKeyedSubscript:@"PublicAddress"];
  v21 = [commandCopy objectForKeyedSubscript:@"RandomAddress"];
  v11 = [NSString stringWithFormat:@"Invalid public address %@ and Invalid random address %@", v20, v21];

  v22 = qword_100BCE8E8;
  if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v45 = v11;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Error unpairing Cloud Device: %@", buf, 0xCu);
  }

LABEL_54:

  return v10;
}

- (id)generateKeyDictForTypes:(id)types keyLength:(unint64_t)length forAddress:(id)address
{
  typesCopy = types;
  addressCopy = address;
  if (!self->_keysGenerated)
  {
    [(CloudPairing *)self generateKeys];
    if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_ERROR))
    {
      sub_10084FC2C();
    }
  }

  v10 = +[NSMutableDictionary dictionary];
  if (![typesCopy containsObject:@"EncryptionKeys"])
  {
    goto LABEL_17;
  }

  __buf = 0;
  v20 = 0;
  v23[1] = 0;
  v24 = 0;
  v22[1] = 0;
  v23[0] = 0;
  v22[0] = 0;
  arc4random_buf(&__buf + 2, 2uLL);
  arc4random_buf(&v24, 8uLL);
  if (!sub_10023FDC8(self->_diversifierHidingKey, &v24, &v20))
  {
    LOWORD(__buf) = HIWORD(__buf) ^ v20;
    if (sub_100240328(self->_encryptionRootKey, SHIWORD(__buf), 0, v23))
    {
      if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_ERROR))
      {
        sub_10084FD14();
      }

      goto LABEL_28;
    }

    if (length != 16)
    {
      bzero(v23 + length, 16 - length);
    }

    if (sub_100240328(self->_encryptionRootKey, SHIWORD(__buf), 1, v22))
    {
      if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_ERROR))
      {
        sub_10084FD84();
      }

      goto LABEL_28;
    }

    v11 = [NSData dataWithBytes:v23 length:16];
    [v10 setObject:v11 forKeyedSubscript:@"LTK"];

    v12 = [NSNumber numberWithUnsignedInteger:length];
    [v10 setObject:v12 forKeyedSubscript:@"LTKLength"];

    [v10 setObject:&off_100B33990 forKeyedSubscript:@"LTKType"];
    v13 = [NSData dataWithBytes:&__buf length:2];
    [v10 setObject:v13 forKeyedSubscript:@"EDIV"];

    v14 = [NSData dataWithBytes:&v24 length:8];
    [v10 setObject:v14 forKeyedSubscript:@"RAND"];

LABEL_17:
    if ([typesCopy containsObject:@"PublicKeys"])
    {
      v15 = [NSData dataWithBytes:self->_cloudPublicKey length:64];
      [v10 setObject:v15 forKeyedSubscript:@"CloudPublicKey"];

      v16 = [NSData dataWithBytes:self->_cloudNonce length:16];
      [v10 setObject:v16 forKeyedSubscript:@"CloudNonce"];
    }

    if ([typesCopy containsObject:@"IdentityKeys"])
    {
      if (addressCopy)
      {
        v17 = [(CloudPairing *)self getIRKForRandomStaticAddress:addressCopy];
        if (!v17)
        {
          if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_ERROR))
          {
            sub_10084FDF4();
          }

          goto LABEL_28;
        }

        [v10 setObject:v17 forKeyedSubscript:@"IRK"];
      }

      else
      {
        v17 = [NSData dataWithBytes:self->_identityResolvingKey length:16];
        [v10 setObject:v17 forKeyedSubscript:@"IRK"];
      }
    }

    v18 = v10;
    goto LABEL_29;
  }

  if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_ERROR))
  {
    sub_10084FCA4();
  }

LABEL_28:
  v18 = 0;
LABEL_29:

  return v18;
}

- (id)generateCloudPairingIDWithResponse:(id)response localKeys:(id)keys from:(id)from forProtocolID:(id)d
{
  responseCopy = response;
  keysCopy = keys;
  fromCopy = from;
  dCopy = d;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = sub_10004239C;
  v31 = sub_100042664;
  v32 = 0;
  v14 = sub_100007EE8();
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1005F6C40;
  v21[3] = &unk_100B01338;
  v26 = &v27;
  v21[4] = self;
  v15 = responseCopy;
  v22 = v15;
  v16 = keysCopy;
  v23 = v16;
  v17 = fromCopy;
  v24 = v17;
  v18 = dCopy;
  v25 = v18;
  sub_1005711EC(v14, v21);
  v19 = v28[5];

  _Block_object_dispose(&v27, 8);

  return v19;
}

- (id)_generateCloudPairingIDWithResponse:(id)response localKeys:(id)keys from:(id)from forProtocolID:(id)d
{
  responseCopy = response;
  keysCopy = keys;
  fromCopy = from;
  dCopy = d;
  if (self->_keysGenerated || [(CloudPairing *)self _generateKeys])
  {
    v11 = qword_100BCE8E8;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Keys available or generated", buf, 2u);
    }

    [responseCopy objectForKeyedSubscript:@"DeviceName"];
    objc_claimAutoreleasedReturnValue();
    [responseCopy objectForKeyedSubscript:@"RequestedKeyType"];
    objc_claimAutoreleasedReturnValue();
    [responseCopy objectForKeyedSubscript:@"RequestedKeys"];
    objc_claimAutoreleasedReturnValue();
    [responseCopy objectForKeyedSubscript:@"IDSLocalRandomAddress"];
    objc_claimAutoreleasedReturnValue();
    operator new();
  }

  if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_ERROR))
  {
    sub_10084FE30();
  }

  return 0;
}

- (id)readUserPreference:(id)preference
{
  v3 = CFPreferencesCopyValue(preference, @"com.apple.CoreBluetooth.cloud", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);

  return v3;
}

- (void)setuserPreference:(id)preference value:(id)value sync:(BOOL)sync
{
  preferenceCopy = preference;
  valueCopy = value;
  CFPreferencesSetValue(preferenceCopy, valueCopy, @"com.apple.CoreBluetooth.cloud", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  if (sync && !CFPreferencesSynchronize(@"com.apple.CoreBluetooth.cloud", kCFPreferencesCurrentUser, kCFPreferencesAnyHost))
  {
    v9 = qword_100BCE8E8;
    if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[setSystemPreference] syncs returns false\n", v10, 2u);
    }
  }
}

- (void)removeuserPreference:(id)preference sync:(BOOL)sync
{
  preferenceCopy = preference;
  CFPreferencesSetValue(preferenceCopy, 0, @"com.apple.CoreBluetooth.cloud", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  if (sync && !CFPreferencesSynchronize(@"com.apple.CoreBluetooth.cloud", kCFPreferencesCurrentUser, kCFPreferencesAnyHost))
  {
    v6 = qword_100BCE8E8;
    if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[setSystemPreference] syncs returns false\n", v7, 2u);
    }
  }
}

- (id)createBluetoothAddressForIDSLocalDevice:(id)device
{
  deviceCopy = device;
  v5 = qword_100BCE8E8;
  if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_DEFAULT))
  {
    idsMultiUsersDictionary = self->_idsMultiUsersDictionary;
    *buf = 138412546;
    *&buf[4] = deviceCopy;
    *&buf[12] = 2112;
    *&buf[14] = idsMultiUsersDictionary;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "MUC - create RSA for local IDS device: %@, current users: %@", buf, 0x16u);
  }

  v7 = 0;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v40 = sub_10004239C;
  v41 = sub_100042664;
  v42 = 0;
  if (!self->_supportsVirtualAddress)
  {
    goto LABEL_6;
  }

  v8 = self->_idsMultiUsersDictionary;
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_1005F94A4;
  v28[3] = &unk_100B01360;
  v9 = deviceCopy;
  v29 = v9;
  v30 = buf;
  [(NSMutableDictionary *)v8 enumerateKeysAndObjectsUsingBlock:v28];
  if (*(*&buf[8] + 40))
  {
LABEL_5:

    v7 = *(*&buf[8] + 40);
LABEL_6:
    v10 = v7;
    goto LABEL_7;
  }

  v27 = 0;
  __buf = 0;
  arc4random_buf(&__buf, 6uLL);
  LOBYTE(__buf) = __buf | 0xC0;
  v12 = sub_1007774DC();
  v13 = *(*&buf[8] + 40);
  *(*&buf[8] + 40) = v12;

  v14 = qword_100BCE8E8;
  if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_DEFAULT))
  {
    v15 = *(*&buf[8] + 40);
    *v31 = 138412290;
    v32 = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "MUC - RSA generated: %@", v31, 0xCu);
  }

  v38 = 0uLL;
  arc4random_buf(&v38, 0x10uLL);
  v37[0] = 0;
  v37[1] = 0;
  if (!sub_100240328(&v38, 1, 0, v37))
  {
    if (!self->_idsMultiUsersDictionary)
    {
      v16 = [NSMutableDictionary dictionaryWithCapacity:1];
      v17 = self->_idsMultiUsersDictionary;
      self->_idsMultiUsersDictionary = v16;
    }

    v18 = qword_100BCE8E8;
    if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_DEFAULT))
    {
      publicAddress = self->_publicAddress;
      *v31 = 138412290;
      v32 = publicAddress;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "MUC - local public address %@", v31, 0xCu);
    }

    v35[0] = @"IDSLocalID";
    v35[1] = @"IRK";
    v36[0] = v9;
    v20 = [NSData dataWithBytes:v37 length:16];
    v36[1] = v20;
    v21 = [NSDictionary dictionaryWithObjects:v36 forKeys:v35 count:2];
    [(NSMutableDictionary *)self->_idsMultiUsersDictionary setObject:v21 forKeyedSubscript:*(*&buf[8] + 40)];

    v22 = [NSDictionary dictionaryWithObject:self->_idsMultiUsersDictionary forKey:self->_publicAddress];
    [(CloudPairing *)self removeuserPreference:@"IDSMultiUsers" sync:1];
    [(CloudPairing *)self setuserPreference:@"IDSMultiUsers" value:v22 sync:1];
    v23 = qword_100BCE8E8;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = IsAppleInternalBuild();
      if (v24)
      {
        p_isa = &self->_idsMultiUsersDictionary->super.super.isa;
      }

      else
      {
        p_isa = [NSNumber numberWithUnsignedInteger:[(NSMutableDictionary *)self->_idsMultiUsersDictionary count]];
      }

      *v31 = 138412546;
      v32 = p_isa;
      v33 = 2112;
      v34 = v22;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "MUC - MUC dictionary = %@, dictToStore %@", v31, 0x16u);
      if (!v24)
      {
      }
    }

    goto LABEL_5;
  }

  if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_ERROR))
  {
    sub_10084FEA8();
  }

  v10 = 0;
LABEL_7:
  _Block_object_dispose(buf, 8);

  return v10;
}

- (void)resetDataForIDSLocalDevice:(id)device
{
  deviceCopy = device;
  v5 = qword_100BCE8E8;
  if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_DEFAULT))
  {
    idsMultiUsersDictionary = self->_idsMultiUsersDictionary;
    *buf = 138412546;
    *&buf[4] = deviceCopy;
    *&buf[12] = 2112;
    *&buf[14] = idsMultiUsersDictionary;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "MUC - Reset data for local IDS device: %@, current users: %@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v13 = sub_10004239C;
  v14 = sub_100042664;
  v15 = 0;
  if (self->_supportsVirtualAddress)
  {
    v7 = self->_idsMultiUsersDictionary;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1005F980C;
    v9[3] = &unk_100B01360;
    v10 = deviceCopy;
    v11 = buf;
    [(NSMutableDictionary *)v7 enumerateKeysAndObjectsUsingBlock:v9];
    if (*(*&buf[8] + 40))
    {
      if (qword_100B50C68 != -1)
      {
        sub_10084FF18();
      }

      *(off_100B50C60 + 17088) = 0;
      v8 = 0;
      sub_1000216B4(&v8);
      sub_1002E6E84(0);
      sub_10002249C(&v8);
    }
  }

  _Block_object_dispose(buf, 8);
}

- (id)getIRKForRandomStaticAddress:(id)address
{
  addressCopy = address;
  v5 = addressCopy;
  if (addressCopy)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = sub_10004239C;
    v16 = sub_100042664;
    v17 = 0;
    idsMultiUsersDictionary = self->_idsMultiUsersDictionary;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1005F9AA0;
    v9[3] = &unk_100B01360;
    v10 = addressCopy;
    v11 = &v12;
    [(NSMutableDictionary *)idsMultiUsersDictionary enumerateKeysAndObjectsUsingBlock:v9];
    v7 = v13[5];

    _Block_object_dispose(&v12, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)updateRandomAddressContinuityAdvInstance:(id)instance
{
  instanceCopy = instance;
  if (instanceCopy)
  {
    if ([(CloudPairing *)self multipleAdvInitialized])
    {
      v5 = [(CloudPairing *)self getIRKForRandomStaticAddress:instanceCopy];
      if (v5)
      {
        v10 = 0;
        sub_1000216B4(&v10);
        v6 = v5;
        sub_1002E6E84([v5 bytes]);
        v7 = sub_1002D2258();
        v8 = qword_100BCE8E8;
        if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          v12 = v7;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "MUC - updated RSA adv instance with status: %d", buf, 8u);
        }

        if (v7)
        {
          if (qword_100B50C68 != -1)
          {
            sub_10084FF18();
          }

          v9 = 0;
        }

        else
        {
          if (qword_100B50C68 != -1)
          {
            sub_10084FF18();
          }

          v9 = 1;
        }

        *(off_100B50C60 + 17088) = v9;
        sub_10002249C(&v10);
      }

      else if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_ERROR))
      {
        sub_10084FF7C();
      }
    }

    else if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_ERROR))
    {
      sub_10084FF40();
    }
  }

  else if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_ERROR))
  {
    sub_10084FFEC();
  }
}

- (void)updateCurrentIDSUserInfo:(id)info
{
  infoCopy = info;
  v5 = qword_100BCE8E8;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    currentUserRandomAddress = [(CloudPairing *)self currentUserRandomAddress];
    *buf = 138412546;
    v19 = currentUserRandomAddress;
    v20 = 2112;
    v21 = infoCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "MUC - update current -> new RSA (%@ - %@)", buf, 0x16u);
  }

  currentUserRandomAddress2 = [(CloudPairing *)self currentUserRandomAddress];
  v8 = (infoCopy | currentUserRandomAddress2) == 0;

  if (!v8)
  {
    currentUserRandomAddress3 = [(CloudPairing *)self currentUserRandomAddress];
    v10 = [currentUserRandomAddress3 isEqualToString:infoCopy];

    if (v10)
    {
      v11 = qword_100BCE8E8;
      if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "MUC - same user - don't update", buf, 2u);
      }
    }

    else
    {
      [(CloudPairing *)self setCurrentUserRandomAddress:infoCopy];
      currentUserRandomAddress4 = [(CloudPairing *)self currentUserRandomAddress];
      v13 = currentUserRandomAddress4 == 0;

      if (v13)
      {
        v17 = qword_100BCE8E8;
        if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "MUC - user has signed out", buf, 2u);
        }

        if (qword_100B508C0 != -1)
        {
          sub_10084F45C();
        }

        nullsub_21(off_100B508B8);
        if (qword_100B50C68 != -1)
        {
          sub_10084FF18();
        }

        *(off_100B50C60 + 17088) = 0;
        buf[0] = 0;
        sub_1000216B4(buf);
        sub_1002E6E84(0);
        sub_10002249C(buf);
      }

      else
      {
        currentUserRandomAddress5 = [(CloudPairing *)self currentUserRandomAddress];
        v15 = [NSString stringWithFormat:@"Random %@", currentUserRandomAddress5];
        sub_100777FF4(v15);

        if (qword_100B508C0 != -1)
        {
          sub_10084F45C();
        }

        nullsub_21(off_100B508B8);
        currentUserRandomAddress6 = [(CloudPairing *)self currentUserRandomAddress];
        [(CloudPairing *)self updateRandomAddressContinuityAdvInstance:currentUserRandomAddress6];
      }
    }
  }
}

- (id)getPairedDeviceForIDSIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_10004239C;
  v16 = sub_100042664;
  v17 = +[NSDictionary dictionary];
  v5 = sub_100007EE8();
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1005FA2C8;
  v9[3] = &unk_100B01230;
  v11 = &v12;
  v9[4] = self;
  v6 = identifierCopy;
  v10 = v6;
  sub_1005711EC(v5, v9);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (id)_getPairedDeviceForIDSIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v31 = +[NSMutableDictionary dictionary];
  if (qword_100B508C0 != -1)
  {
    sub_10084F448();
  }

  v3 = sub_10009DA04(off_100B508B8);
  v29 = [NSMutableSet setWithArray:v3];

  v4 = qword_100BCE8E8;
  if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_DEFAULT))
  {
    cloudLocalUUIDs = self->_cloudLocalUUIDs;
    *buf = 138412546;
    *&buf[4] = v29;
    *&buf[12] = 2112;
    *&buf[14] = cloudLocalUUIDs;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "MUC - Paired devices: %@, cloud local paired %@", buf, 0x16u);
  }

  if (identifierCopy && self->_supportsVirtualAddress)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v47 = sub_10004239C;
    v48 = sub_100042664;
    v49 = 0;
    idsMultiUsersDictionary = self->_idsMultiUsersDictionary;
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_1005FAA84;
    v40[3] = &unk_100B01360;
    v41 = identifierCopy;
    v42 = buf;
    [(NSMutableDictionary *)idsMultiUsersDictionary enumerateKeysAndObjectsUsingBlock:v40];
    if (*(*&buf[8] + 40))
    {
      v7 = [NSString stringWithFormat:@"Random %@", *(*&buf[8] + 40)];
      v8 = sub_100777FF4(v7);

      if (qword_100B508C0 != -1)
      {
        sub_10084F45C();
      }

      v9 = sub_1003CCB64(*(off_100B508B8 + 1884), v8);
      allKeys = [v9 allKeys];
      v11 = [NSSet setWithArray:allKeys];
      [v29 unionSet:v11];

      v12 = qword_100BCE8E8;
      if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_DEFAULT))
      {
        *v44 = 138412290;
        v45 = v29;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "MUC - All paired devices: %@", v44, 0xCu);
      }
    }

    _Block_object_dispose(buf, 8);
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = v29;
  v13 = [obj countByEnumeratingWithState:&v36 objects:v43 count:16];
  if (v13)
  {
    v14 = *v37;
    do
    {
      v15 = 0;
      do
      {
        if (*v37 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v36 + 1) + 8 * v15);
        v17 = qword_100BCE8E8;
        if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *&buf[4] = v16;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "MUC - Checking %@", buf, 0xCu);
        }

        if (qword_100B508D0 != -1)
        {
          sub_10084FBC8();
        }

        sub_1000B006C(off_100B508C8, v16, buf);
        if ((buf[23] & 0x80000000) != 0)
        {
          v25 = *&buf[8];
          operator delete(*buf);
          if (v25)
          {
LABEL_25:
            if (qword_100B508D0 != -1)
            {
              sub_10084FBC8();
            }

            sub_1000B006C(off_100B508C8, v16, buf);
            if (buf[23] >= 0)
            {
              v18 = buf;
            }

            else
            {
              v18 = *buf;
            }

            v19 = [NSString stringWithUTF8String:v18];
            if ((buf[23] & 0x80000000) != 0)
            {
              operator delete(*buf);
            }

            v20 = qword_100BCE8E8;
            if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              *&buf[4] = v19;
              _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "MUC - Cloud identifier %@", buf, 0xCu);
            }

            if (self->_supportsVirtualAddress)
            {
              if (qword_100B508D0 != -1)
              {
                sub_10084FBC8();
              }

              v21 = off_100B508C8;
              sub_100007E30(__p, "PairingAttemptedUsingRSA");
              v22 = sub_10004EB40(v21, v16, __p);
              v23 = v22;
              if ((v35 & 0x80000000) == 0)
              {
                if (v22)
                {
                  goto LABEL_39;
                }

LABEL_45:
                v27 = qword_100BCE8E8;
                if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412546;
                  *&buf[4] = v16;
                  *&buf[12] = 2112;
                  *&buf[14] = v19;
                  _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "MUC - Upgrade keys for BTUUID %@ iCloud %@ using RSA", buf, 0x16u);
                }

LABEL_47:

                goto LABEL_48;
              }

              operator delete(__p[0]);
              if (!v23)
              {
                goto LABEL_45;
              }
            }

LABEL_39:
            uUIDString = [v16 UUIDString];
            [v31 setObject:v19 forKey:uUIDString];

            goto LABEL_47;
          }
        }

        else if (buf[23])
        {
          goto LABEL_25;
        }

        v26 = qword_100BCE8E8;
        if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *&buf[4] = v16;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "MUC - Not a cloud paired device %@", buf, 0xCu);
        }

LABEL_48:
        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [obj countByEnumeratingWithState:&v36 objects:v43 count:16];
    }

    while (v13);
  }

  return v31;
}

- (void)sendCloudpairingRetry:(id)retry
{
  retryCopy = retry;
  if ([(CloudPairing *)self isRunningInRecovery])
  {
    v5 = qword_100BCE8E8;
    if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "CP: Not Available to retry", &v13, 2u);
    }
  }

  else
  {
    serverConnection = [(CloudPairing *)self serverConnection];

    if (!serverConnection)
    {
      [(CloudPairing *)self resetServerConnection];
    }

    serverConnection2 = [(CloudPairing *)self serverConnection];
    if (serverConnection2)
    {
      v8 = [retryCopy count];

      if (v8)
      {
        v9 = qword_100BCE8E8;
        if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_DEFAULT))
        {
          v13 = 138477827;
          v14 = retryCopy;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Send Cloud Pairing Retry for %{private}@", &v13, 0xCu);
        }

        v10 = xpc_dictionary_create(0, 0, 0);
        xpc_dictionary_set_string(v10, "kMsgId", "cloudpairingRetry");
        v11 = _CFXPCCreateXPCObjectFromCFObject();
        xpc_dictionary_set_value(v10, "kMsgArgs", v11);
        serverConnection3 = [(CloudPairing *)self serverConnection];
        xpc_connection_send_message(serverConnection3, v10);
      }
    }
  }
}

- (void)startListeningToPowerUIStatusChanges
{
  v3 = +[NSDistributedNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"audioAccessorySmartChargeStatusHasChangedFromNotification:" name:PowerUIAudioAccessorySmartChargeStatusHasChangedNote object:0];

  v4 = +[NSDistributedNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"audioAccessorySmartChargeDeadlineHasChangedFromNotification:" name:PowerUIAudioAccessorySmartChargeDeadlineHasChangedNote object:0];
}

- (void)stopListeningToPowerUIStatusChanges
{
  v3 = +[NSDistributedNotificationCenter defaultCenter];
  [v3 removeObserver:self];
}

- (void)audioAccessorySmartChargeStatusHasChangedFromNotification:(id)notification
{
  notificationCopy = notification;
  object = [notificationCopy object];
  if (object)
  {
    v5 = [[PowerUISmartChargeClientAudioAccessories alloc] initWithClientName:@"com.apple.bluetooth"];
    v13 = 0;
    v6 = [v5 isSmartChargingCurrentlyEnabledForDevice:object withError:&v13];
    v7 = v13;
    v8 = qword_100BCE8E8;
    if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v15 = object;
      v16 = 2048;
      v17 = v6;
      v18 = 2112;
      v19 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "PowerUI config values changed for device %@, isSmartChargingCurrentlyEnabledForDevice %lu, error %@", buf, 0x20u);
    }

    v9 = [NSString stringWithFormat:@"Public %@", object];
    v10 = sub_100777FF4(v9);

    if (qword_100B508F0 != -1)
    {
      sub_10084F6C4();
    }

    v11 = sub_1000504C8(off_100B508E8, v10, 1);
    v12 = v11;
    if (v11)
    {
      if (sub_10054B398(v11) != v6)
      {
        sub_10054B188(v12, v6);
        if (qword_100B50AB0 != -1)
        {
          sub_10084F69C();
        }

        (*(*off_100B50AA8 + 112))(off_100B50AA8, v12, 4101);
      }
    }

    else if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_ERROR))
    {
      sub_100850028();
    }
  }

  else if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_ERROR))
  {
    sub_100850098();
  }
}

- (void)audioAccessorySmartChargeDeadlineHasChangedFromNotification:(id)notification
{
  notificationCopy = notification;
  object = [notificationCopy object];
  v5 = [[PowerUISmartChargeClientAudioAccessories alloc] initWithClientName:@"com.apple.bluetooth"];
  v15 = 0;
  v6 = [v5 unfilteredDeadlineForDevice:object withError:&v15];
  v7 = v15;
  v8 = qword_100BCE8E8;
  if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v17 = object;
    v18 = 2112;
    v19 = v6;
    v20 = 2112;
    v21 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "PowerUI config values changed for device %@, fullChargeDeadlineForDevice %@ error %@", buf, 0x20u);
  }

  v9 = [NSString stringWithFormat:@"Public %@", object];
  v10 = sub_100777FF4(v9);

  if (qword_100B508F0 != -1)
  {
    sub_10084F6C4();
  }

  v11 = sub_1000504C8(off_100B508E8, v10, 1);
  v12 = v11;
  if (v11)
  {
    v13 = sub_10054B3E0(v11);
    if (!v13 || ([v6 timeIntervalSinceDate:v13], v14 > 0.0))
    {
      sub_10054B26C(v12, v6);
      if (qword_100B50AB0 != -1)
      {
        sub_10084F69C();
      }

      (*(*off_100B50AA8 + 112))(off_100B50AA8, v12, 4101);
    }
  }

  else if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_ERROR))
  {
    sub_100850028();
  }
}

- (void)audioAccessorySmartChargeStatusHasChangedFromCloud:(void *)cloud
{
  if (!_os_feature_enabled_impl() || !NSClassFromString(@"PowerUISmartChargeClientAudioAccessories"))
  {
    return;
  }

  v4 = [[PowerUISmartChargeClientAudioAccessories alloc] initWithClientName:@"com.apple.bluetooth"];
  v5 = sub_1007774DC();
  v6 = sub_10054B398(cloud);
  v7 = v6;
  if (v6 > 1)
  {
    if (v6 == 2)
    {
      v12 = 0;
      [v4 temporarilyEnableChargingForDevice:v5 withError:&v12];
      v8 = v12;
      goto LABEL_15;
    }

    if (v6 == 3)
    {
      v11 = 0;
      [v4 temporarilyDisableSmartChargingForDevice:v5 withError:&v11];
      v8 = v11;
      goto LABEL_15;
    }

LABEL_10:
    if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_ERROR))
    {
      sub_1008500D4();
    }

    v9 = 0;
    goto LABEL_16;
  }

  if (!v6)
  {
    v14 = 0;
    [v4 disableSmartChargingForDevice:v5 withError:&v14];
    v8 = v14;
    goto LABEL_15;
  }

  if (v6 != 1)
  {
    goto LABEL_10;
  }

  v13 = 0;
  [v4 enableSmartChargingForDevice:v5 withError:&v13];
  v8 = v13;
LABEL_15:
  v9 = v8;
LABEL_16:
  v10 = qword_100BCE8E8;
  if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v16 = v5;
    v17 = 2048;
    v18 = v7;
    v19 = 2112;
    v20 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "audioAccessorySmartChargeStatusHasChangedFromCloud for %@ to state %lu with error %@", buf, 0x20u);
  }
}

- (void)audioAccessorySmartChargeDeadlineHasChangedFromCloud:(void *)cloud
{
  if (_os_feature_enabled_impl() && NSClassFromString(@"PowerUISmartChargeClientAudioAccessories"))
  {
    v4 = [[PowerUISmartChargeClientAudioAccessories alloc] initWithClientName:@"com.apple.bluetooth"];
    v5 = sub_1007774DC();
    v6 = sub_10054B3E0(cloud);
    v10 = 0;
    [v4 updateOBCDeadline:v6 forDevice:v5 withError:&v10];
    v7 = v10;

    v8 = qword_100BCE8E8;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = sub_10054B3E0(cloud);
      *buf = 138412802;
      v12 = v5;
      v13 = 2112;
      v14 = v9;
      v15 = 2112;
      v16 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "audioAccessorySmartChargeDeadlineHasChangedFromCloud for %@ to date %@ with error %@", buf, 0x20u);
    }
  }
}

@end