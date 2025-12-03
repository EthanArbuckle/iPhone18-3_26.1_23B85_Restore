@interface NRTermsAcknowledgementRegistryService
+ (id)sharedInstance;
- (BOOL)_checkForLocalAcknowledgementForEvent:(id)event forDeviceID:(id)d;
- (NRTermsAcknowledgementRegistryService)delegate;
- (NRTermsAcknowledgementRegistryService)init;
- (void)add:(id)add forDeviceID:(id)d withCompletion:(id)completion;
- (void)checkForAcknowledgement:(id)acknowledgement forDeviceID:(id)d withCompletion:(id)completion;
@end

@implementation NRTermsAcknowledgementRegistryService

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100012CF4;
  block[3] = &unk_1001756A8;
  block[4] = self;
  if (qword_1001B3748 != -1)
  {
    dispatch_once(&qword_1001B3748, block);
  }

  v2 = qword_1001B3750;

  return v2;
}

- (NRTermsAcknowledgementRegistryService)init
{
  v14.receiver = self;
  v14.super_class = NRTermsAcknowledgementRegistryService;
  v2 = [(NRTermsAcknowledgementRegistryService *)&v14 init];
  if (v2)
  {
    v3 = [NRXPCServer alloc];
    proxyClass = [objc_opt_class() proxyClass];
    v5 = -[NRXPCServer initWithProxyClass:xpcListenerClass:serverDelegate:xpcTarget:services:](v3, "initWithProxyClass:xpcListenerClass:serverDelegate:xpcTarget:services:", proxyClass, [objc_opt_class() xpcListenerClass], v2, v2, v2);
    server = v2->_server;
    v2->_server = v5;

    v7 = [objc_msgSend(objc_opt_class() "proxyClass")];
    v8 = nr_framework_log();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

    if (v9)
    {
      v10 = nr_framework_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v16 = v7;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "NRTermsAcknowledgementRegistryService: Listening to %@", buf, 0xCu);
      }
    }

    v11 = +[NRTermsEventCollectionDB sharedInstance];
    termsDB = v2->_termsDB;
    v2->_termsDB = v11;

    [(NRTermsEventCollectionDB *)v2->_termsDB loadEvents];
  }

  return v2;
}

- (void)add:(id)add forDeviceID:(id)d withCompletion:(id)completion
{
  addCopy = add;
  dCopy = d;
  completionCopy = completion;
  v58 = addCopy;
  if (![addCopy eventType] || (objc_msgSend(addCopy, "termsText"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "length"), v9, v10 <= 9))
  {
    v11 = [NRTermsAcknowledgementRegistry errorWithEnum:3];
LABEL_7:
    v18 = v11;
    v19 = completionCopy;
    (*(completionCopy + 2))(completionCopy, v11);

    goto LABEL_8;
  }

  +[NSDate timeIntervalSinceReferenceDate];
  v13 = v12;
  [addCopy eventDate];
  if (v13 - v14 > 60.0 || (+[NSDate timeIntervalSinceReferenceDate](NSDate, "timeIntervalSinceReferenceDate"), v16 = v15, [addCopy eventDate], v16 - v17 < -60.0))
  {
    v11 = [NRTermsAcknowledgementRegistry errorWithEnum:7];
    goto LABEL_7;
  }

  [(NRTermsEventCollectionDB *)self->_termsDB addEvent:addCopy];
  [(NRTermsEventCollectionDB *)self->_termsDB saveEvents];
  delegate = [(NRTermsAcknowledgementRegistryService *)self delegate];
  v20 = +[NRPairedDeviceRegistry sharedInstance];
  v54 = [v20 getAllDevicesWithArchivedAltAccountDevicesMatching:&stru_100175C20];

  v21 = +[NRPairedDeviceRegistry sharedInstance];
  v53 = [v21 getAllDevicesWithArchivedAltAccountDevicesMatching:&stru_100175C40];

  termsAcknowledgementServiceGetCloudObject = [delegate termsAcknowledgementServiceGetCloudObject];
  if (dCopy)
  {
    v22 = +[NRPairedDeviceRegistry sharedInstance];
    getActivePairedDevice = [v22 getActivePairedDevice];

    v24 = [getActivePairedDevice valueForProperty:_NRDevicePropertyBluetoothIdentifier];
    termsAcknowledgementServiceGetRemoteObject = [delegate termsAcknowledgementServiceGetRemoteObject];
    if ([termsAcknowledgementServiceGetRemoteObject isIDSConnected])
    {
      [termsAcknowledgementServiceGetRemoteObject addTermsEvent:addCopy toIDSBTUUID:v24 withResponseBlock:completionCopy];
    }

    else
    {
      v28 = [NSSet setWithObject:dCopy];
      v77[0] = _NSConcreteStackBlock;
      v77[1] = 3221225472;
      v77[2] = sub_1000139CC;
      v77[3] = &unk_100175C68;
      v78 = completionCopy;
      v75[0] = _NSConcreteStackBlock;
      v75[1] = 3221225472;
      v75[2] = sub_100013AB8;
      v75[3] = &unk_100175C90;
      v76 = v78;
      [termsAcknowledgementServiceGetCloudObject sendTermsEventToDestinations:v28 termsEvent:addCopy withSentBlock:v77 withResponseBlock:v75];
    }

LABEL_17:
    goto LABEL_18;
  }

  v26 = nr_framework_log();
  v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);

  if (v27)
  {
    getActivePairedDevice = nr_framework_log();
    if (os_log_type_enabled(getActivePairedDevice, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, getActivePairedDevice, OS_LOG_TYPE_DEFAULT, "Active device is nil, skipping terms push to active device", buf, 2u);
    }

    goto LABEL_17;
  }

LABEL_18:
  termsAcknowledgementServiceForAltAccount = [delegate termsAcknowledgementServiceForAltAccount];
  if ([v54 count])
  {
    v29 = objc_alloc_init(NSMutableSet);
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v30 = v54;
    v31 = [v30 countByEnumeratingWithState:&v71 objects:v82 count:16];
    if (v31)
    {
      v32 = *v72;
      v33 = _NRDevicePropertyMigrationIDSCloudIdentifier;
      do
      {
        for (i = 0; i != v31; i = i + 1)
        {
          if (*v72 != v32)
          {
            objc_enumerationMutation(v30);
          }

          v35 = *(*(&v71 + 1) + 8 * i);
          v36 = [v35 objectForKeyedSubscript:v33];
          if (v36)
          {
            [v29 addObject:v36];
          }

          else
          {
            v37 = nr_framework_log();
            v38 = os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT);

            if (v38)
            {
              v39 = nr_framework_log();
              if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v81 = v35;
                _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "NRDevice: %@ has no cloudIDs", buf, 0xCu);
              }
            }
          }
        }

        v31 = [v30 countByEnumeratingWithState:&v71 objects:v82 count:16];
      }

      while (v31);
    }

    v69[0] = _NSConcreteStackBlock;
    v69[1] = 3221225472;
    v69[2] = sub_100013AC8;
    v69[3] = &unk_100175C68;
    v70 = completionCopy;
    v67[0] = _NSConcreteStackBlock;
    v67[1] = 3221225472;
    v67[2] = sub_100013BB4;
    v67[3] = &unk_100175C90;
    v68 = v70;
    [termsAcknowledgementServiceForAltAccount sendTermsEventToDestinations:v29 termsEvent:v58 withSentBlock:v69 withResponseBlock:v67];
  }

  if ([v53 count])
  {
    v40 = objc_alloc_init(NSMutableSet);
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v41 = v53;
    v42 = [v41 countByEnumeratingWithState:&v63 objects:v79 count:16];
    if (v42)
    {
      v43 = *v64;
      v44 = _NRDevicePropertyMigrationIDSCloudIdentifier;
      do
      {
        for (j = 0; j != v42; j = j + 1)
        {
          if (*v64 != v43)
          {
            objc_enumerationMutation(v41);
          }

          v46 = *(*(&v63 + 1) + 8 * j);
          v47 = [v46 objectForKeyedSubscript:v44];
          if (v47)
          {
            [v40 addObject:v47];
          }

          else
          {
            v48 = nr_framework_log();
            v49 = os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT);

            if (v49)
            {
              v50 = nr_framework_log();
              if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v81 = v46;
                _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "NRDevice: %@ has no cloudIDs", buf, 0xCu);
              }
            }
          }
        }

        v42 = [v41 countByEnumeratingWithState:&v63 objects:v79 count:16];
      }

      while (v42);
    }

    v61[0] = _NSConcreteStackBlock;
    v61[1] = 3221225472;
    v61[2] = sub_100013BC4;
    v61[3] = &unk_100175C68;
    v62 = completionCopy;
    v59[0] = _NSConcreteStackBlock;
    v59[1] = 3221225472;
    v59[2] = sub_100013CB0;
    v59[3] = &unk_100175C90;
    v60 = v62;
    [termsAcknowledgementServiceGetCloudObject sendTermsEventToDestinations:v40 termsEvent:v58 withSentBlock:v61 withResponseBlock:v59];
  }

  v19 = completionCopy;
LABEL_8:
}

- (void)checkForAcknowledgement:(id)acknowledgement forDeviceID:(id)d withCompletion:(id)completion
{
  acknowledgementCopy = acknowledgement;
  dCopy = d;
  completionCopy = completion;
  v11 = MGCopyAnswer();
  v12 = MGCopyAnswer();
  displayDeviceName = [acknowledgementCopy displayDeviceName];
  if ([v11 isEqual:displayDeviceName])
  {
    displayDeviceSerialNumber = [acknowledgementCopy displayDeviceSerialNumber];
    v15 = [v12 isEqual:displayDeviceSerialNumber];

    if (v15)
    {
      delegate = [(NRTermsAcknowledgementRegistryService *)self delegate];
      if (delegate)
      {
        v17 = [(NRTermsAcknowledgementRegistryService *)self _checkForLocalAcknowledgementForEvent:acknowledgementCopy forDeviceID:dCopy];
        v18 = nr_framework_log();
        v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);

        if (v17)
        {
          if (v19)
          {
            v20 = nr_framework_log();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315138;
              v28 = "[NRTermsAcknowledgementRegistryService checkForAcknowledgement:forDeviceID:withCompletion:]";
              _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%s:Terms already accepted.", buf, 0xCu);
            }
          }

          completionCopy[2](completionCopy, 1, 0);
        }

        else
        {
          if (v19)
          {
            v22 = nr_framework_log();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315138;
              v28 = "[NRTermsAcknowledgementRegistryService checkForAcknowledgement:forDeviceID:withCompletion:]";
              _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%s:Terms not already accepted. Checking active watch.", buf, 0xCu);
            }
          }

          v23[0] = _NSConcreteStackBlock;
          v23[1] = 3221225472;
          v23[2] = sub_100013FF8;
          v23[3] = &unk_100175CB8;
          v24 = delegate;
          v25 = acknowledgementCopy;
          v26 = completionCopy;
          [v24 termsAcknowledgementServiceGetDeviceMirrorFromDeviceID:dCopy block:v23];
        }
      }

      else if (completionCopy)
      {
        v21 = [NRTermsAcknowledgementRegistry errorWithEnum:4];
        (completionCopy)[2](completionCopy, 0, v21);
      }

      goto LABEL_13;
    }
  }

  else
  {
  }

  if (completionCopy)
  {
    delegate = [NRTermsAcknowledgementRegistry errorWithEnum:6];
    (completionCopy)[2](completionCopy, 0, delegate);
LABEL_13:
  }
}

- (BOOL)_checkForLocalAcknowledgementForEvent:(id)event forDeviceID:(id)d
{
  eventCopy = event;
  termsDigest = [eventCopy termsDigest];

  if (!termsDigest)
  {
    termsText = [eventCopy termsText];
    v8 = [NRTermsEvent digestFromData:termsText];
    [eventCopy setTermsDigest:v8];
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  reverseObjectEnumerator = [(NRTermsEventCollectionDB *)self->_termsDB reverseObjectEnumerator];
  v10 = [reverseObjectEnumerator countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v10)
  {
    v12 = v10;
    v13 = *v32;
    *&v11 = 138412546;
    v30 = v11;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v32 != v13)
        {
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        v15 = *(*(&v31 + 1) + 8 * i);
        termsDigest2 = [eventCopy termsDigest];
        termsDigest3 = [v15 termsDigest];
        v18 = [termsDigest2 isEqualToString:termsDigest3];

        if (v18)
        {
          termsText2 = [eventCopy termsText];
          termsText3 = [v15 termsText];
          v21 = [termsText2 isEqual:termsText3];

          if (v21)
          {
            eventType = [v15 eventType];
            v23 = eventType != 1;
            if (eventType == 1 || [v15 eventType] == 4)
            {
              goto LABEL_20;
            }
          }
        }

        else
        {
          v24 = nr_framework_log();
          v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);

          if (v25)
          {
            v26 = nr_framework_log();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
            {
              termsDigest4 = [eventCopy termsDigest];
              termsDigest5 = [v15 termsDigest];
              *buf = v30;
              v36 = termsDigest4;
              v37 = 2112;
              v38 = termsDigest5;
              _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "digests do not match: %@ - %@", buf, 0x16u);
            }
          }
        }
      }

      v12 = [reverseObjectEnumerator countByEnumeratingWithState:&v31 objects:v39 count:16];
    }

    while (v12);
  }

  v23 = 0;
LABEL_20:

  return v23;
}

- (NRTermsAcknowledgementRegistryService)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end