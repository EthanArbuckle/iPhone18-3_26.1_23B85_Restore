@interface EPDeviceCollection
- (EPDeviceCollection)initWithDelegate:(id)delegate;
- (id)initBase;
- (id)newDeviceWithPeer:(id)peer;
- (id)newDeviceWithPeripheral:(id)peripheral withAdvertisementData:(id)data withRSSI:(id)i;
- (void)_updateTimer;
- (void)clear;
- (void)dealloc;
- (void)deviceInfo:(id)info peerDidInvalidate:(id)invalidate;
- (void)deviceInfoDeviceDidDeallocate:(id)deallocate;
- (void)deviceInfoPairingFailure:(id)failure;
- (void)deviceInfoPairingSuccess:(id)success;
- (void)update;
@end

@implementation EPDeviceCollection

- (id)initBase
{
  v3.receiver = self;
  v3.super_class = EPDeviceCollection;
  return [(EPDeviceCollection *)&v3 init];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = EPDeviceCollection;
  [(EPDeviceCollection *)&v2 dealloc];
}

- (EPDeviceCollection)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  initBase = [(EPDeviceCollection *)self initBase];
  v7 = initBase;
  if (initBase)
  {
    objc_storeStrong(initBase + 1, delegate);
    v8 = +[NSMutableDictionary dictionary];
    v9 = v7[2];
    v7[2] = v8;

    v10 = +[NSMutableDictionary dictionary];
    v11 = v7[3];
    v7[3] = v10;

    v12 = +[NSMutableSet set];
    v13 = v7[9];
    v7[9] = v12;

    v14 = +[NSMutableSet set];
    v15 = v7[10];
    v7[10] = v14;

    v16 = +[NSMutableDictionary dictionary];
    v17 = v7[8];
    v7[8] = v16;

    v18 = +[NSMutableDictionary dictionary];
    v19 = v7[11];
    v7[11] = v18;

    v20 = +[NSDate date];
    [v20 timeIntervalSinceReferenceDate];
    v7[7] = v21;
  }

  return v7;
}

- (void)_updateTimer
{
  v3 = [(NSMutableDictionary *)self->_devicesDictionary count];
  purgeTimer = self->_purgeTimer;
  if (!v3)
  {
    if (purgeTimer)
    {
      dispatch_source_cancel(purgeTimer);
      v11 = self->_purgeTimer;
      self->_purgeTimer = 0;
    }

    v12 = +[NSDate date];
    [v12 timeIntervalSinceReferenceDate];
    v14 = v13 - self->_startTime;

    maxDevicesSeen = self->_maxDevicesSeen;
    v16 = nr_daemon_log();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);

    if (maxDevicesSeen)
    {
      if (v17)
      {
        v18 = nr_daemon_log();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v19 = self->_maxDevicesSeen;
          *buf = 134218240;
          v26 = *&v19;
          v27 = 2048;
          v28 = v14;
          v20 = "During the last discovery %ld unique devices were seen in about %1.2f seconds";
          v21 = v18;
          v22 = 22;
LABEL_13:
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, v20, buf, v22);
          goto LABEL_14;
        }

        goto LABEL_14;
      }
    }

    else if (v17)
    {
      v18 = nr_daemon_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v26 = v14;
        v20 = "During the last discovery NO DEVICES were seen in about %1.2f seconds";
        v21 = v18;
        v22 = 12;
        goto LABEL_13;
      }

LABEL_14:
    }

    me = self->me;
    self->me = 0;

    return;
  }

  if (!purgeTimer)
  {
    objc_storeStrong(&self->me, self);
    v5 = +[EPFactory queue];
    v6 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v5);
    v7 = self->_purgeTimer;
    self->_purgeTimer = v6;

    v8 = self->_purgeTimer;
    v9 = dispatch_walltime(0, 1000000000);
    dispatch_source_set_timer(v8, v9, 0x3B9ACA00uLL, 0x1DCD6500uLL);
    v10 = self->_purgeTimer;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10008EB20;
    handler[3] = &unk_100175660;
    handler[4] = self;
    dispatch_source_set_event_handler(v10, handler);
    dispatch_resume(self->_purgeTimer);
  }
}

- (void)clear
{
  v3 = sub_1000A98C0();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = sub_1000A98C0();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "EPDeviceCollection: Clearing all devices", buf, 2u);
    }
  }

  v6 = self->_proximateDevices;
  v7 = self->_displayableDevices;
  v8 = self->_devicesDictionary;
  v9 = +[NSMutableSet set];
  proximateDevices = self->_proximateDevices;
  self->_proximateDevices = v9;

  v11 = +[NSMutableSet set];
  displayableDevices = self->_displayableDevices;
  self->_displayableDevices = v11;

  v13 = +[NSMutableDictionary dictionary];
  devicesDictionary = self->_devicesDictionary;
  self->_devicesDictionary = v13;

  v15 = +[EPFactory queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10008EDA0;
  block[3] = &unk_100175598;
  v28 = v6;
  selfCopy = self;
  v16 = v6;
  dispatch_async(v15, block);

  v17 = +[EPFactory queue];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10008EFAC;
  v24[3] = &unk_100175598;
  v25 = v7;
  selfCopy2 = self;
  v18 = v7;
  dispatch_async(v17, v24);

  v19 = +[EPFactory queue];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10008F1B8;
  v21[3] = &unk_100175598;
  v22 = v8;
  selfCopy3 = self;
  v20 = v8;
  dispatch_async(v19, v21);
}

- (void)update
{
  selfCopy = self;
  if ([(NSMutableDictionary *)self->_devicesDictionary count]> self->_maxDevicesSeen)
  {
    selfCopy->_maxDevicesSeen = [(NSMutableDictionary *)selfCopy->_devicesDictionary count];
  }

  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  allKeys = [(NSMutableDictionary *)selfCopy->_devicesDictionary allKeys];
  v4 = [allKeys copy];

  obj = v4;
  v5 = [v4 countByEnumeratingWithState:&v84 objects:v98 count:16];
  if (v5)
  {
    v7 = v5;
    v67 = 0;
    v8 = *v85;
    p_cache = (EPSagaTransactionTellIDSLocalPairingSetupComplete + 16);
    *&v6 = 138412802;
    v66 = v6;
    do
    {
      v10 = 0;
      do
      {
        if (*v85 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v69 = *(*(&v84 + 1) + 8 * v10);
        v70 = v10;
        v11 = [(NSMutableDictionary *)selfCopy->_devicesDictionary objectForKeyedSubscript:v66];
        isExpired = [v11 isExpired];
        isDisplayabilityExpired = [v11 isDisplayabilityExpired];
        isProximateExpired = [v11 isProximateExpired];
        v13 = nr_daemon_log();
        v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);

        v73 = isProximateExpired;
        if (v14)
        {
          v15 = nr_daemon_log();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            uUIDString = [v69 UUIDString];
            name = [v11 name];
            v18 = [NSNumber numberWithBool:isExpired];
            v19 = [NSNumber numberWithBool:isDisplayabilityExpired];
            [NSNumber numberWithBool:v73];
            v20 = v8;
            v22 = v21 = selfCopy;
            *buf = 138413314;
            v89 = uUIDString;
            v90 = 2112;
            v91 = name;
            v92 = 2112;
            v93 = v18;
            v94 = 2112;
            v95 = v19;
            v96 = 2112;
            v97 = v22;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "EPDeviceCollection: Device %@ %@ isExpired (%@); isDisplayabilityExpired (%@); isProximateExpired (%@)", buf, 0x34u);

            selfCopy = v21;
            v8 = v20;

            isProximateExpired = v73;
          }

          p_cache = EPSagaTransactionTellIDSLocalPairingSetupComplete.cache;
        }

        LODWORD(name2) = isDisplayabilityExpired;
        if (isProximateExpired && [(NSMutableSet *)selfCopy->_proximateDevices containsObject:v11])
        {
          [(NSMutableSet *)selfCopy->_proximateDevices removeObject:v11];
          v24 = sub_1000A98C0();
          v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);

          if (v25)
          {
            v26 = sub_1000A98C0();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
            {
              uUIDString2 = [v69 UUIDString];
              name2 = [v11 name];
              *buf = 138412546;
              v89 = uUIDString2;
              v90 = 2112;
              v91 = name2;
              _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "EPDeviceCollection: Device %@ %@ has become unproximate", buf, 0x16u);

              LODWORD(name2) = isDisplayabilityExpired;
            }
          }

          queue = [p_cache + 183 queue];
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_10008FEE8;
          block[3] = &unk_100175598;
          block[4] = selfCopy;
          v83 = v11;
          dispatch_async(queue, block);
        }

        if (name2 && [(NSMutableSet *)selfCopy->_displayableDevices containsObject:v11])
        {
          [(NSMutableSet *)selfCopy->_displayableDevices removeObject:v11];
          v29 = sub_1000A98C0();
          v30 = os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);

          if (v30)
          {
            v31 = sub_1000A98C0();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
            {
              uUIDString3 = [v69 UUIDString];
              name2 = [v11 name];
              *buf = 138412546;
              v89 = uUIDString3;
              v90 = 2112;
              v91 = name2;
              _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "EPDeviceCollection: Device %@ %@ has become undisplayable.", buf, 0x16u);

              LOBYTE(name2) = isDisplayabilityExpired;
            }
          }

          queue2 = [p_cache + 183 queue];
          v80[0] = _NSConcreteStackBlock;
          v80[1] = 3221225472;
          v80[2] = sub_10008FF44;
          v80[3] = &unk_100175598;
          v80[4] = selfCopy;
          v81 = v11;
          dispatch_async(queue2, v80);
        }

        if (isExpired)
        {
          devicesDictionary = selfCopy->_devicesDictionary;
          uuid = [v11 uuid];
          [(NSMutableDictionary *)devicesDictionary removeObjectForKey:uuid];

          v36 = sub_1000A98C0();
          LODWORD(uuid) = os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT);

          if (uuid)
          {
            v37 = sub_1000A98C0();
            if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
            {
              uUIDString4 = [v69 UUIDString];
              name2 = [v11 name];
              *buf = 138412546;
              v89 = uUIDString4;
              v90 = 2112;
              v91 = name2;
              _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "EPDeviceCollection: Device %@ %@ has expired.", buf, 0x16u);

              LOBYTE(name2) = isDisplayabilityExpired;
            }
          }

          queue3 = [p_cache + 183 queue];
          v78[0] = _NSConcreteStackBlock;
          v78[1] = 3221225472;
          v78[2] = sub_10008FFA0;
          v78[3] = &unk_100175598;
          v78[4] = selfCopy;
          v79 = v11;
          dispatch_async(queue3, v78);

          v67 = 1;
        }

        if ((name2 & 1) == 0)
        {
          if (([(NSMutableSet *)selfCopy->_displayableDevices containsObject:v11]& 1) != 0)
          {
            v40 = sub_1000A98C0();
            v41 = os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT);

            if (v41)
            {
              v42 = sub_1000A98C0();
              if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
              {
                uUIDString5 = [v69 UUIDString];
                name3 = [v11 name];
                rSSI = [v11 RSSI];
                *buf = v66;
                v89 = uUIDString5;
                v90 = 2112;
                v91 = name3;
                v92 = 2112;
                v93 = rSSI;
                _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "EPDeviceCollection: Device %@ %@ is already displayable with RSSI %@.", buf, 0x20u);

                p_cache = (EPSagaTransactionTellIDSLocalPairingSetupComplete + 16);
              }
            }
          }

          else
          {
            [(NSMutableSet *)selfCopy->_displayableDevices addObject:v11];
            v46 = sub_1000A98C0();
            v47 = os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT);

            if (v47)
            {
              v48 = sub_1000A98C0();
              if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
              {
                uUIDString6 = [v69 UUIDString];
                name4 = [v11 name];
                rSSI2 = [v11 RSSI];
                *buf = v66;
                v89 = uUIDString6;
                v90 = 2112;
                v91 = name4;
                v92 = 2112;
                v93 = rSSI2;
                _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "EPDeviceCollection: Device %@ %@ has become displayable with RSSI %@.", buf, 0x20u);

                p_cache = EPSagaTransactionTellIDSLocalPairingSetupComplete.cache;
              }
            }

            queue4 = [p_cache + 183 queue];
            v76[0] = _NSConcreteStackBlock;
            v76[1] = 3221225472;
            v76[2] = sub_10008FFFC;
            v76[3] = &unk_100175598;
            v76[4] = selfCopy;
            v77 = v11;
            dispatch_async(queue4, v76);
          }
        }

        if ((v73 & 1) == 0)
        {
          if (([(NSMutableSet *)selfCopy->_proximateDevices containsObject:v11]& 1) != 0)
          {
            v53 = sub_1000A98C0();
            v54 = os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT);

            if (v54)
            {
              v55 = sub_1000A98C0();
              if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
              {
                uUIDString7 = [v69 UUIDString];
                name5 = [v11 name];
                rSSI3 = [v11 RSSI];
                *buf = v66;
                v89 = uUIDString7;
                v90 = 2112;
                v91 = name5;
                v92 = 2112;
                v93 = rSSI3;
                _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "EPDeviceCollection: Device %@ %@ is already proximate with RSSI %@.", buf, 0x20u);

                p_cache = (EPSagaTransactionTellIDSLocalPairingSetupComplete + 16);
              }
            }
          }

          else
          {
            [(NSMutableSet *)selfCopy->_proximateDevices addObject:v11];
            v59 = sub_1000A98C0();
            v60 = os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT);

            if (v60)
            {
              v61 = sub_1000A98C0();
              if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
              {
                uUIDString8 = [v69 UUIDString];
                name6 = [v11 name];
                rSSI4 = [v11 RSSI];
                *buf = v66;
                v89 = uUIDString8;
                v90 = 2112;
                v91 = name6;
                v92 = 2112;
                v93 = rSSI4;
                _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "EPDeviceCollection: Device %@ %@ has become proximate with RSSI %@.", buf, 0x20u);

                p_cache = EPSagaTransactionTellIDSLocalPairingSetupComplete.cache;
              }
            }

            queue5 = [p_cache + 183 queue];
            v74[0] = _NSConcreteStackBlock;
            v74[1] = 3221225472;
            v74[2] = sub_100090058;
            v74[3] = &unk_100175598;
            v74[4] = selfCopy;
            v75 = v11;
            dispatch_async(queue5, v74);
          }
        }

        v10 = v70 + 1;
      }

      while (v7 != (v70 + 1));
      v7 = [obj countByEnumeratingWithState:&v84 objects:v98 count:16];
    }

    while (v7);

    if (v67)
    {
      [(EPDeviceCollection *)selfCopy _updateTimer];
    }
  }

  else
  {
  }
}

- (id)newDeviceWithPeripheral:(id)peripheral withAdvertisementData:(id)data withRSSI:(id)i
{
  peripheralCopy = peripheral;
  dataCopy = data;
  iCopy = i;
  if ([EPDevice isInRangeWithRSSI:iCopy])
  {
    v11 = [[EPDeviceInfo alloc] initWithPeer:peripheralCopy];
    v12 = [(EPDeviceInfo *)v11 newPeripheralDeviceWithAdvertisementData:dataCopy withRSSI:iCopy];
    if (v12)
    {
      identifier = [peripheralCopy identifier];
      [(NSMutableDictionary *)self->_devicesDictionary setObject:v12 forKeyedSubscript:identifier];
      [(EPDeviceCollection *)self _updateTimer];
      [(NSMutableDictionary *)self->_deviceInfos setObject:v11 forKeyedSubscript:identifier];
      [(EPDeviceInfo *)v11 setDelegate:self];
      v14 = +[EPFactory queue];
      v16 = _NSConcreteStackBlock;
      v17 = 3221225472;
      v18 = sub_10009023C;
      v19 = &unk_100175598;
      selfCopy = self;
      v21 = v12;
      dispatch_async(v14, &v16);

      [(EPDeviceCollection *)self update:v16];
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)newDeviceWithPeer:(id)peer
{
  peerCopy = peer;
  v5 = [[EPDeviceInfo alloc] initWithPeer:peerCopy];
  newCentralDevice = [(EPDeviceInfo *)v5 newCentralDevice];
  if (newCentralDevice)
  {
    identifier = [peerCopy identifier];
    [(NSMutableDictionary *)self->_devicesDictionary setObject:newCentralDevice forKeyedSubscript:identifier];
    [(EPDeviceCollection *)self _updateTimer];
    [(NSMutableDictionary *)self->_deviceInfos setObject:v5 forKeyedSubscript:identifier];
    [(EPDeviceInfo *)v5 setDelegate:self];
    v8 = +[EPFactory queue];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000903CC;
    v10[3] = &unk_100175598;
    v10[4] = self;
    v11 = newCentralDevice;
    dispatch_async(v8, v10);
  }

  return newCentralDevice;
}

- (void)deviceInfo:(id)info peerDidInvalidate:(id)invalidate
{
  identifier = [invalidate identifier];
  v7 = identifier;
  if (invalidate)
  {
    v9 = identifier;
    identifier = [(NSMutableDictionary *)self->_devicesDictionary objectForKeyedSubscript:identifier];
    v7 = v9;
    if (identifier)
    {
      v8 = identifier;
      [(EPDeviceCollection *)self update];

      v7 = v9;
    }
  }

  _objc_release_x1(identifier, v7);
}

- (void)deviceInfoDeviceDidDeallocate:(id)deallocate
{
  deallocateCopy = deallocate;
  uuid = [deallocateCopy uuid];
  [(NSMutableDictionary *)self->_deviceInfos removeObjectForKey:uuid];
  delegate = self->_delegate;
  if (objc_opt_respondsToSelector())
  {
    [(EPDeviceCollectionDelegate *)self->_delegate collection:self deviceInfoDidDealloc:deallocateCopy];
  }
}

- (void)deviceInfoPairingFailure:(id)failure
{
  delegate = self->_delegate;
  if (objc_opt_respondsToSelector())
  {
    v5 = self->_delegate;

    [(EPDeviceCollectionDelegate *)v5 collectionPairingFailure:self];
  }
}

- (void)deviceInfoPairingSuccess:(id)success
{
  delegate = self->_delegate;
  if (objc_opt_respondsToSelector())
  {
    v5 = self->_delegate;

    [(EPDeviceCollectionDelegate *)v5 collectionPairingSuccess:self];
  }
}

@end