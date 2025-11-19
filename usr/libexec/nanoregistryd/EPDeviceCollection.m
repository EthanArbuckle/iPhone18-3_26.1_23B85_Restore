@interface EPDeviceCollection
- (EPDeviceCollection)initWithDelegate:(id)a3;
- (id)initBase;
- (id)newDeviceWithPeer:(id)a3;
- (id)newDeviceWithPeripheral:(id)a3 withAdvertisementData:(id)a4 withRSSI:(id)a5;
- (void)_updateTimer;
- (void)clear;
- (void)dealloc;
- (void)deviceInfo:(id)a3 peerDidInvalidate:(id)a4;
- (void)deviceInfoDeviceDidDeallocate:(id)a3;
- (void)deviceInfoPairingFailure:(id)a3;
- (void)deviceInfoPairingSuccess:(id)a3;
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

- (EPDeviceCollection)initWithDelegate:(id)a3
{
  v5 = a3;
  v6 = [(EPDeviceCollection *)self initBase];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(v6 + 1, a3);
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
  v29 = self;
  v16 = v6;
  dispatch_async(v15, block);

  v17 = +[EPFactory queue];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10008EFAC;
  v24[3] = &unk_100175598;
  v25 = v7;
  v26 = self;
  v18 = v7;
  dispatch_async(v17, v24);

  v19 = +[EPFactory queue];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10008F1B8;
  v21[3] = &unk_100175598;
  v22 = v8;
  v23 = self;
  v20 = v8;
  dispatch_async(v19, v21);
}

- (void)update
{
  v2 = self;
  if ([(NSMutableDictionary *)self->_devicesDictionary count]> self->_maxDevicesSeen)
  {
    v2->_maxDevicesSeen = [(NSMutableDictionary *)v2->_devicesDictionary count];
  }

  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  v3 = [(NSMutableDictionary *)v2->_devicesDictionary allKeys];
  v4 = [v3 copy];

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
        v11 = [(NSMutableDictionary *)v2->_devicesDictionary objectForKeyedSubscript:v66];
        v71 = [v11 isExpired];
        v72 = [v11 isDisplayabilityExpired];
        v12 = [v11 isProximateExpired];
        v13 = nr_daemon_log();
        v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);

        v73 = v12;
        if (v14)
        {
          v15 = nr_daemon_log();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            v16 = [v69 UUIDString];
            v17 = [v11 name];
            v18 = [NSNumber numberWithBool:v71];
            v19 = [NSNumber numberWithBool:v72];
            [NSNumber numberWithBool:v73];
            v20 = v8;
            v22 = v21 = v2;
            *buf = 138413314;
            v89 = v16;
            v90 = 2112;
            v91 = v17;
            v92 = 2112;
            v93 = v18;
            v94 = 2112;
            v95 = v19;
            v96 = 2112;
            v97 = v22;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "EPDeviceCollection: Device %@ %@ isExpired (%@); isDisplayabilityExpired (%@); isProximateExpired (%@)", buf, 0x34u);

            v2 = v21;
            v8 = v20;

            v12 = v73;
          }

          p_cache = EPSagaTransactionTellIDSLocalPairingSetupComplete.cache;
        }

        LODWORD(v23) = v72;
        if (v12 && [(NSMutableSet *)v2->_proximateDevices containsObject:v11])
        {
          [(NSMutableSet *)v2->_proximateDevices removeObject:v11];
          v24 = sub_1000A98C0();
          v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);

          if (v25)
          {
            v26 = sub_1000A98C0();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
            {
              v27 = [v69 UUIDString];
              v23 = [v11 name];
              *buf = 138412546;
              v89 = v27;
              v90 = 2112;
              v91 = v23;
              _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "EPDeviceCollection: Device %@ %@ has become unproximate", buf, 0x16u);

              LODWORD(v23) = v72;
            }
          }

          v28 = [p_cache + 183 queue];
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_10008FEE8;
          block[3] = &unk_100175598;
          block[4] = v2;
          v83 = v11;
          dispatch_async(v28, block);
        }

        if (v23 && [(NSMutableSet *)v2->_displayableDevices containsObject:v11])
        {
          [(NSMutableSet *)v2->_displayableDevices removeObject:v11];
          v29 = sub_1000A98C0();
          v30 = os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);

          if (v30)
          {
            v31 = sub_1000A98C0();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
            {
              v32 = [v69 UUIDString];
              v23 = [v11 name];
              *buf = 138412546;
              v89 = v32;
              v90 = 2112;
              v91 = v23;
              _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "EPDeviceCollection: Device %@ %@ has become undisplayable.", buf, 0x16u);

              LOBYTE(v23) = v72;
            }
          }

          v33 = [p_cache + 183 queue];
          v80[0] = _NSConcreteStackBlock;
          v80[1] = 3221225472;
          v80[2] = sub_10008FF44;
          v80[3] = &unk_100175598;
          v80[4] = v2;
          v81 = v11;
          dispatch_async(v33, v80);
        }

        if (v71)
        {
          devicesDictionary = v2->_devicesDictionary;
          v35 = [v11 uuid];
          [(NSMutableDictionary *)devicesDictionary removeObjectForKey:v35];

          v36 = sub_1000A98C0();
          LODWORD(v35) = os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT);

          if (v35)
          {
            v37 = sub_1000A98C0();
            if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
            {
              v38 = [v69 UUIDString];
              v23 = [v11 name];
              *buf = 138412546;
              v89 = v38;
              v90 = 2112;
              v91 = v23;
              _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "EPDeviceCollection: Device %@ %@ has expired.", buf, 0x16u);

              LOBYTE(v23) = v72;
            }
          }

          v39 = [p_cache + 183 queue];
          v78[0] = _NSConcreteStackBlock;
          v78[1] = 3221225472;
          v78[2] = sub_10008FFA0;
          v78[3] = &unk_100175598;
          v78[4] = v2;
          v79 = v11;
          dispatch_async(v39, v78);

          v67 = 1;
        }

        if ((v23 & 1) == 0)
        {
          if (([(NSMutableSet *)v2->_displayableDevices containsObject:v11]& 1) != 0)
          {
            v40 = sub_1000A98C0();
            v41 = os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT);

            if (v41)
            {
              v42 = sub_1000A98C0();
              if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
              {
                v43 = [v69 UUIDString];
                v44 = [v11 name];
                v45 = [v11 RSSI];
                *buf = v66;
                v89 = v43;
                v90 = 2112;
                v91 = v44;
                v92 = 2112;
                v93 = v45;
                _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "EPDeviceCollection: Device %@ %@ is already displayable with RSSI %@.", buf, 0x20u);

                p_cache = (EPSagaTransactionTellIDSLocalPairingSetupComplete + 16);
              }
            }
          }

          else
          {
            [(NSMutableSet *)v2->_displayableDevices addObject:v11];
            v46 = sub_1000A98C0();
            v47 = os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT);

            if (v47)
            {
              v48 = sub_1000A98C0();
              if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
              {
                v49 = [v69 UUIDString];
                v50 = [v11 name];
                v51 = [v11 RSSI];
                *buf = v66;
                v89 = v49;
                v90 = 2112;
                v91 = v50;
                v92 = 2112;
                v93 = v51;
                _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "EPDeviceCollection: Device %@ %@ has become displayable with RSSI %@.", buf, 0x20u);

                p_cache = EPSagaTransactionTellIDSLocalPairingSetupComplete.cache;
              }
            }

            v52 = [p_cache + 183 queue];
            v76[0] = _NSConcreteStackBlock;
            v76[1] = 3221225472;
            v76[2] = sub_10008FFFC;
            v76[3] = &unk_100175598;
            v76[4] = v2;
            v77 = v11;
            dispatch_async(v52, v76);
          }
        }

        if ((v73 & 1) == 0)
        {
          if (([(NSMutableSet *)v2->_proximateDevices containsObject:v11]& 1) != 0)
          {
            v53 = sub_1000A98C0();
            v54 = os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT);

            if (v54)
            {
              v55 = sub_1000A98C0();
              if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
              {
                v56 = [v69 UUIDString];
                v57 = [v11 name];
                v58 = [v11 RSSI];
                *buf = v66;
                v89 = v56;
                v90 = 2112;
                v91 = v57;
                v92 = 2112;
                v93 = v58;
                _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "EPDeviceCollection: Device %@ %@ is already proximate with RSSI %@.", buf, 0x20u);

                p_cache = (EPSagaTransactionTellIDSLocalPairingSetupComplete + 16);
              }
            }
          }

          else
          {
            [(NSMutableSet *)v2->_proximateDevices addObject:v11];
            v59 = sub_1000A98C0();
            v60 = os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT);

            if (v60)
            {
              v61 = sub_1000A98C0();
              if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
              {
                v62 = [v69 UUIDString];
                v63 = [v11 name];
                v64 = [v11 RSSI];
                *buf = v66;
                v89 = v62;
                v90 = 2112;
                v91 = v63;
                v92 = 2112;
                v93 = v64;
                _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "EPDeviceCollection: Device %@ %@ has become proximate with RSSI %@.", buf, 0x20u);

                p_cache = EPSagaTransactionTellIDSLocalPairingSetupComplete.cache;
              }
            }

            v65 = [p_cache + 183 queue];
            v74[0] = _NSConcreteStackBlock;
            v74[1] = 3221225472;
            v74[2] = sub_100090058;
            v74[3] = &unk_100175598;
            v74[4] = v2;
            v75 = v11;
            dispatch_async(v65, v74);
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
      [(EPDeviceCollection *)v2 _updateTimer];
    }
  }

  else
  {
  }
}

- (id)newDeviceWithPeripheral:(id)a3 withAdvertisementData:(id)a4 withRSSI:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([EPDevice isInRangeWithRSSI:v10])
  {
    v11 = [[EPDeviceInfo alloc] initWithPeer:v8];
    v12 = [(EPDeviceInfo *)v11 newPeripheralDeviceWithAdvertisementData:v9 withRSSI:v10];
    if (v12)
    {
      v13 = [v8 identifier];
      [(NSMutableDictionary *)self->_devicesDictionary setObject:v12 forKeyedSubscript:v13];
      [(EPDeviceCollection *)self _updateTimer];
      [(NSMutableDictionary *)self->_deviceInfos setObject:v11 forKeyedSubscript:v13];
      [(EPDeviceInfo *)v11 setDelegate:self];
      v14 = +[EPFactory queue];
      v16 = _NSConcreteStackBlock;
      v17 = 3221225472;
      v18 = sub_10009023C;
      v19 = &unk_100175598;
      v20 = self;
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

- (id)newDeviceWithPeer:(id)a3
{
  v4 = a3;
  v5 = [[EPDeviceInfo alloc] initWithPeer:v4];
  v6 = [(EPDeviceInfo *)v5 newCentralDevice];
  if (v6)
  {
    v7 = [v4 identifier];
    [(NSMutableDictionary *)self->_devicesDictionary setObject:v6 forKeyedSubscript:v7];
    [(EPDeviceCollection *)self _updateTimer];
    [(NSMutableDictionary *)self->_deviceInfos setObject:v5 forKeyedSubscript:v7];
    [(EPDeviceInfo *)v5 setDelegate:self];
    v8 = +[EPFactory queue];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000903CC;
    v10[3] = &unk_100175598;
    v10[4] = self;
    v11 = v6;
    dispatch_async(v8, v10);
  }

  return v6;
}

- (void)deviceInfo:(id)a3 peerDidInvalidate:(id)a4
{
  v6 = [a4 identifier];
  v7 = v6;
  if (a4)
  {
    v9 = v6;
    v6 = [(NSMutableDictionary *)self->_devicesDictionary objectForKeyedSubscript:v6];
    v7 = v9;
    if (v6)
    {
      v8 = v6;
      [(EPDeviceCollection *)self update];

      v7 = v9;
    }
  }

  _objc_release_x1(v6, v7);
}

- (void)deviceInfoDeviceDidDeallocate:(id)a3
{
  v6 = a3;
  v4 = [v6 uuid];
  [(NSMutableDictionary *)self->_deviceInfos removeObjectForKey:v4];
  delegate = self->_delegate;
  if (objc_opt_respondsToSelector())
  {
    [(EPDeviceCollectionDelegate *)self->_delegate collection:self deviceInfoDidDealloc:v6];
  }
}

- (void)deviceInfoPairingFailure:(id)a3
{
  delegate = self->_delegate;
  if (objc_opt_respondsToSelector())
  {
    v5 = self->_delegate;

    [(EPDeviceCollectionDelegate *)v5 collectionPairingFailure:self];
  }
}

- (void)deviceInfoPairingSuccess:(id)a3
{
  delegate = self->_delegate;
  if (objc_opt_respondsToSelector())
  {
    v5 = self->_delegate;

    [(EPDeviceCollectionDelegate *)v5 collectionPairingSuccess:self];
  }
}

@end