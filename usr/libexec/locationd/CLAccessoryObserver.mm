@interface CLAccessoryObserver
- (BOOL)isOnDenyList:(id)list;
- (BOOL)sendEphemeris:(id)ephemeris;
- (BOOL)sendReferenceTime:(double)time;
- (BOOL)sendReferenceTime:(double)time locationLatitude:(double)latitude longitude:(double)longitude accuracy:(double)accuracy;
- (BOOL)setupAccessory:(id)accessory withListenerCall:(BOOL)call;
- (BOOL)setupEphemeris;
- (BOOL)startLocation;
- (BOOL)stopLocation;
- (CLAccessoryObserver)initWithListener:(const CLAccessoryObserverListener *)listener silo:(id)silo timeSync:(BOOL)sync;
- (id).cxx_construct;
- (void)accessoryConnected:(id)connected;
- (void)accessoryDidDisconnect:(id)disconnect;
- (void)dealloc;
- (void)ephemerisURLRequested:(id)requested;
- (void)locationPointDataRequested:(id)requested;
- (void)nmeaReceived:(id)received;
- (void)onStarkTimeSyncNotification:(id)notification;
- (void)sendGPRMCDataStatusValues:(BOOL)values;
- (void)timeRequested:(id)requested;
@end

@implementation CLAccessoryObserver

- (BOOL)startLocation
{
  if (qword_1025D45E0 != -1)
  {
    sub_1018EE0CC();
  }

  v3 = qword_1025D45E8;
  if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEFAULT))
  {
    v4 = self->fAccessory != 0;
    *buf = 67240192;
    *&buf[4] = v4;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "AccessoryObserver,starting accessory location,alreadyConnected,%{public}d", buf, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018EE0E0(self);
  }

  v5 = +[EAAccessoryManager sharedAccessoryManager];
  [(EAAccessoryManager *)v5 registerForLocalNotifications];
  [(EAAccessoryManager *)v5 setAreLocationAccessoriesEnabled:1];
  if (!self->fAccessory)
  {
    connectedAccessories = [(EAAccessoryManager *)v5 connectedAccessories];
    if (qword_1025D45E0 != -1)
    {
      sub_1018EE1FC();
    }

    v7 = qword_1025D45E8;
    if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEBUG))
    {
      v8 = [(NSArray *)connectedAccessories count];
      *buf = 134349056;
      *&buf[4] = v8;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "AccessoryObserver,examining %{public}lu connected accessories", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018EE224(connectedAccessories);
    }

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v9 = [(NSArray *)connectedAccessories countByEnumeratingWithState:&v30 objects:v45 count:16];
    if (v9)
    {
      v10 = *v31;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v31 != v10)
          {
            objc_enumerationMutation(connectedAccessories);
          }

          v12 = *(*(&v30 + 1) + 8 * i);
          if ([(CLAccessoryObserver *)self setupAccessory:v12 withListenerCall:0])
          {
            v42 = 0u;
            memset(v43, 0, sizeof(v43));
            *v40 = 0u;
            *v41 = 0u;
            *v38 = 0u;
            v39 = 0u;
            v36 = 0u;
            *v37 = 0u;
            *buf = 0u;
            *v35 = 0u;
            v44 = 257;
            sub_1006360B4(v12, buf);
            info = self->fListener.info;
            onConnected = self->fListener.onConnected;
            sub_10063A160(v16, buf);
            onConnected(info, v16, 0);
            if (v29 < 0)
            {
              operator delete(__p);
            }

            if (v27 < 0)
            {
              operator delete(v26);
            }

            if (v25 < 0)
            {
              operator delete(v24);
            }

            if (v23 < 0)
            {
              operator delete(v22);
            }

            if (v21 < 0)
            {
              operator delete(v20);
            }

            if (v19 < 0)
            {
              operator delete(v18);
            }

            if (v17 < 0)
            {
              operator delete(v16[0]);
            }

            if ((v43[23] & 0x80000000) != 0)
            {
              operator delete(*v43);
            }

            if (SHIBYTE(v42) < 0)
            {
              operator delete(v41[1]);
            }

            if (SHIBYTE(v41[0]) < 0)
            {
              operator delete(v40[0]);
            }

            if (SHIBYTE(v39) < 0)
            {
              operator delete(v38[1]);
            }

            if (SHIBYTE(v38[0]) < 0)
            {
              operator delete(v37[0]);
            }

            if (SHIBYTE(v36) < 0)
            {
              operator delete(v35[1]);
            }

            if (SHIBYTE(v35[0]) < 0)
            {
              operator delete(*buf);
            }
          }
        }

        v9 = [(NSArray *)connectedAccessories countByEnumeratingWithState:&v30 objects:v45 count:16];
      }

      while (v9);
    }
  }

  return self->fAccessory != 0;
}

- (BOOL)stopLocation
{
  if (qword_1025D45E0 != -1)
  {
    sub_1018EE0CC();
  }

  v3 = qword_1025D45E8;
  if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "AccessoryObserver,stopping accessory location", v7, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018EE344();
  }

  v4 = +[EAAccessoryManager sharedAccessoryManager];
  [(EAAccessoryManager *)v4 setAreLocationAccessoriesEnabled:0];
  [(EAAccessoryManager *)v4 unregisterForLocalNotifications];
  fAccessory = self->fAccessory;
  if (fAccessory)
  {

    self->fAccessory = 0;
  }

  return 1;
}

- (CLAccessoryObserver)initWithListener:(const CLAccessoryObserverListener *)listener silo:(id)silo timeSync:(BOOL)sync
{
  v21.receiver = self;
  v21.super_class = CLAccessoryObserver;
  v8 = [(CLAccessoryObserver *)&v21 init];
  v9 = v8;
  if (v8)
  {
    v8->fAccessory = 0;
    v10 = *&listener->info;
    v11 = *&listener->onReferenceTime;
    onEphemerisURL = listener->onEphemerisURL;
    *&v8->fListener.onDisconnected = *&listener->onDisconnected;
    *&v8->fListener.onReferenceTime = v11;
    *&v8->fListener.info = v10;
    v8->fListener.onEphemerisURL = onEphemerisURL;
    v8->fSilo = silo;
    v8->_iAPTimeSyncEnable = sync;
    [+[NSNotificationCenter defaultCenter](NSNotificationCenter addObserver:"addObserver:selector:name:object:" selector:v8 name:"accessoryConnected:" object:EAAccessoryDidConnectNotification, 0];
    [+[NSNotificationCenter defaultCenter](NSNotificationCenter addObserver:"addObserver:selector:name:object:" selector:v9 name:"accessoryDisconnected:" object:EAAccessoryDidDisconnectNotification, 0];
    v13 = +[NSNotificationCenter defaultCenter];
    [(NSNotificationCenter *)v13 addObserver:v9 selector:"nmeaReceived:" name:EAAccessoryDidReceiveNMEASentenceNotification object:0];
    v14 = +[NSNotificationCenter defaultCenter];
    [(NSNotificationCenter *)v14 addObserver:v9 selector:"timeRequested:" name:EAAccessoryDidRequestGPSTimeNotification object:0];
    v15 = +[NSNotificationCenter defaultCenter];
    [(NSNotificationCenter *)v15 addObserver:v9 selector:"locationPointDataRequested:" name:EAAccessoryDidReceiveLocationPointDataNotification object:0];
    v16 = +[NSNotificationCenter defaultCenter];
    [(NSNotificationCenter *)v16 addObserver:v9 selector:"ephemerisURLRequested:" name:EAAccessoryDidReceiveEphemerisURLNotification object:0];
    v17 = +[NSNotificationCenter defaultCenter];
    [(NSNotificationCenter *)v17 addObserver:v9 selector:"ephemerisURLRequested:" name:EAAccessoryDidReceiveEphemerisRefreshInterval object:0];
    v18 = +[NSNotificationCenter defaultCenter];
    [(NSNotificationCenter *)v18 addObserver:v9 selector:"ephemerisURLRequested:" name:EAAccessoryDidReceiveEphemerisExpirationInterval object:0];
    if ([(CLAccessoryObserver *)v9 iAPTimeSyncEnable])
    {
      v19 = +[NSNotificationCenter defaultCenter];
      [(NSNotificationCenter *)v19 addObserver:v9 selector:"onStarkTimeSyncNotification:" name:EAAccessoryTimeSyncInfoUpdateNotification object:0];
    }
  }

  return v9;
}

- (void)dealloc
{
  [+[NSNotificationCenter defaultCenter](NSNotificationCenter removeObserver:"removeObserver:", self];
  v3.receiver = self;
  v3.super_class = CLAccessoryObserver;
  [(CLAccessoryObserver *)&v3 dealloc];
}

- (void)accessoryDidDisconnect:(id)disconnect
{
  fSilo = self->fSilo;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1006366B8;
  v4[3] = &unk_1024473F0;
  v4[4] = disconnect;
  v4[5] = self;
  [(CLSilo *)fSilo async:v4];
}

- (BOOL)sendReferenceTime:(double)time
{
  if (self->fAccessory)
  {
    v10 = 0;
    v4 = sub_100153734(&v10 + 1, &v10, time);
    LODWORD(v4) = v10;
    v5 = [(EAAccessory *)self->fAccessory sendGpsWeek:HIDWORD(v10) gpsTOW:*&v4 / 1000.0];
    if ((v5 & 1) == 0)
    {
      if (qword_1025D45E0 != -1)
      {
        sub_1018EE1FC();
      }

      v6 = qword_1025D45E8;
      if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_FAULT))
      {
        *v9 = 0;
        _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_FAULT, "AccessoryObserver,sendGpsWeek failed", v9, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018EE4D8();
      }
    }
  }

  else
  {
    if (qword_1025D45E0 != -1)
    {
      sub_1018EE0CC();
    }

    v7 = qword_1025D45E8;
    if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "AccessoryObserver,no location accessory available", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018EE5BC();
    }

    return 0;
  }

  return v5;
}

- (BOOL)sendReferenceTime:(double)time locationLatitude:(double)latitude longitude:(double)longitude accuracy:(double)accuracy
{
  if (self->fAccessory)
  {
    v16 = 0;
    v10 = sub_100153734(&v16 + 1, &v16, time);
    LODWORD(v10) = v16;
    v11 = [(EAAccessory *)self->fAccessory sendEphemerisPointDataGpsWeek:HIDWORD(v16) gpsTOW:accuracy latitude:*&v10 / 1000.0 longitude:latitude accuracy:longitude];
    if ((v11 & 1) == 0)
    {
      if (qword_1025D45E0 != -1)
      {
        sub_1018EE1FC();
      }

      v12 = qword_1025D45E8;
      if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_FAULT))
      {
        *v15 = 0;
        _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_FAULT, "AccessoryObserver,sendEphemerisPointDataGpsWeek failed", v15, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018EE6A0();
      }
    }
  }

  else
  {
    if (qword_1025D45E0 != -1)
    {
      sub_1018EE0CC();
    }

    v13 = qword_1025D45E8;
    if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEFAULT, "AccessoryObserver,no location accessory available", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018EE784();
    }

    return 0;
  }

  return v11;
}

- (BOOL)sendEphemeris:(id)ephemeris
{
  fAccessory = self->fAccessory;
  if (!fAccessory)
  {
    if (qword_1025D45E0 != -1)
    {
      sub_1018EE0CC();
    }

    v5 = qword_1025D45E8;
    if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "AccessoryObserver,no location accessory available", buf, 2u);
    }

    v4 = sub_10000A100(121, 2);
    if (!v4)
    {
      return v4;
    }

    sub_1018EE94C();
LABEL_17:
    LOBYTE(v4) = 0;
    return v4;
  }

  if (([(EAAccessory *)fAccessory sendEphemeris:ephemeris]& 1) != 0)
  {
    LOBYTE(v4) = 1;
    return v4;
  }

  if (qword_1025D45E0 != -1)
  {
    sub_1018EE0CC();
  }

  v6 = qword_1025D45E8;
  if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_FAULT))
  {
    *v8 = 0;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_FAULT, "AccessoryObserver,sendEphemeris failed", v8, 2u);
  }

  v4 = sub_10000A100(121, 0);
  if (v4)
  {
    sub_1018EE868();
    goto LABEL_17;
  }

  return v4;
}

- (BOOL)isOnDenyList:(id)list
{
  v4 = +[CLAccessoryObserverHelper isDenyListAccessory:name:model:serialNumber:firmware:hardwareRevision:](CLAccessoryObserverHelper, "isDenyListAccessory:name:model:serialNumber:firmware:hardwareRevision:", [list manufacturer], objc_msgSend(list, "name"), objc_msgSend(list, "modelNumber"), objc_msgSend(list, "serialNumber"), objc_msgSend(list, "firmwareRevision"), objc_msgSend(list, "hardwareRevision"));
  if (v4)
  {
    if (qword_1025D45E0 != -1)
    {
      sub_1018EE0CC();
    }

    v5 = qword_1025D45E8;
    if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136381955;
      v8 = [objc_msgSend(list "manufacturer")];
      v9 = 2081;
      v10 = [objc_msgSend(list "modelNumber")];
      v11 = 2081;
      v12 = [objc_msgSend(list "firmwareRevision")];
      v13 = 2081;
      v14 = [objc_msgSend(list "serialNumber")];
      v15 = 2081;
      v16 = [objc_msgSend(list "name")];
      v17 = 2081;
      v18 = [objc_msgSend(list "hardwareRevision")];
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "AccessoryObserver,AccessoryInDenyList,manufacturer,%{private}s,model,%{private}s,firmware,%{private}s,serialNumber,%{private}s,name,%{private}s,hardwareRevision,%{private}s", &v7, 0x3Eu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018EEA30(list);
    }
  }

  return v4;
}

- (BOOL)setupAccessory:(id)accessory withListenerCall:(BOOL)call
{
  callCopy = call;
  if ([(EAAccessory *)self->fAccessory isEqual:?])
  {
    if (qword_1025D45E0 != -1)
    {
      sub_1018EE0CC();
    }

    v7 = qword_1025D45E8;
    if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000238CC([accessory name], __p);
      v8 = SHIBYTE(__p[2]) >= 0 ? __p : __p[0];
      *buf = 136315394;
      *&buf[4] = v8;
      *&buf[12] = 2048;
      *&buf[14] = accessory;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "AccessoryObserver,already connected to accessory %s (%p)", buf, 0x16u);
      if (SHIBYTE(__p[2]) < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018EEBEC(accessory);
    }

    return 0;
  }

  memset(v103, 0, sizeof(v103));
  v102 = 0u;
  *v101 = 0u;
  *v100 = 0u;
  v99 = 0u;
  *v98 = 0u;
  *v97 = 0u;
  v96 = 0u;
  memset(buf, 0, sizeof(buf));
  v104 = 257;
  sub_1006360B4(accessory, buf);
  if (qword_1025D4620 != -1)
  {
    sub_1018EE46C();
  }

  v10 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *buf;
    if ((buf[23] & 0x80u) == 0)
    {
      v11 = buf;
    }

    v12 = v97;
    if (SHIBYTE(v98[0]) < 0)
    {
      v12 = v97[0];
    }

    LODWORD(__p[0]) = 136315394;
    *(__p + 4) = v11;
    WORD2(__p[1]) = 2080;
    *(&__p[1] + 6) = v12;
    _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "@ClxAccessory, state, 1, model, %s, %s", __p, 0x16u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018EE494(__p);
    v32 = *buf;
    if ((buf[23] & 0x80u) == 0)
    {
      v32 = buf;
    }

    v33 = v97;
    if (SHIBYTE(v98[0]) < 0)
    {
      v33 = v97[0];
    }

    *v80 = 136315394;
    *&v80[4] = v32;
    v81 = 2080;
    v82 = v33;
    v34 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "[CLAccessoryObserver setupAccessory:withListenerCall:]", "%s\n", v34);
    if (v34 != __p)
    {
      free(v34);
    }
  }

  sub_10000EC00(v76, "AccessoryObserver,setting up accessory");
  sub_10063861C(buf, v76);
  if (v77 < 0)
  {
    operator delete(v76[0]);
  }

  if ([(CLAccessoryObserver *)self isOnDenyList:accessory]|| sub_100CE5278(&self->fAccessoryMobileAssetConfig, buf))
  {
    v103[24] = 1;
    p_fListener = &self->fListener;
    info = self->fListener.info;
    onConnected = p_fListener->onConnected;
    sub_10063A160(__dst, buf);
    onConnected(info, __dst, 1);
    if (v75 < 0)
    {
      operator delete(v74);
    }

    if (v73 < 0)
    {
      operator delete(v72);
    }

    if (v71 < 0)
    {
      operator delete(v70);
    }

    if (v69 < 0)
    {
      operator delete(v68);
    }

    if (v67 < 0)
    {
      operator delete(v66);
    }

    if (v65 < 0)
    {
      operator delete(v64);
    }

    if (v63 < 0)
    {
      operator delete(__dst[0]);
    }

    if (qword_1025D45E0 != -1)
    {
      sub_1018EE1FC();
    }

    v16 = qword_1025D45E8;
    if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEFAULT, "AccessoryObserver,accessory is on deny list", __p, 2u);
    }

    if (!sub_10000A100(121, 2))
    {
      goto LABEL_45;
    }

    sub_1018EE428(__p);
    *v80 = 0;
    v31 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "[CLAccessoryObserver setupAccessory:withListenerCall:]", "%s\n", v31);
    goto LABEL_122;
  }

  if ([accessory supportsLocation])
  {
    if (self->fAccessory)
    {
      if (qword_1025D45E0 != -1)
      {
        sub_1018EE1FC();
      }

      v18 = qword_1025D45E8;
      if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEFAULT))
      {
        v19 = v80;
        sub_1000238CC([(EAAccessory *)self->fAccessory manufacturer], v80);
        if (v83 < 0)
        {
          v19 = *v80;
        }

        v20 = v46;
        sub_1000238CC([(EAAccessory *)self->fAccessory modelNumber], v46);
        if (v47 < 0)
        {
          v20 = v46[0];
        }

        sub_1000238CC([(EAAccessory *)self->fAccessory name], v44);
        if (v45 >= 0)
        {
          v21 = v44;
        }

        else
        {
          v21 = v44[0];
        }

        LODWORD(__p[0]) = 136381187;
        *(__p + 4) = v19;
        WORD2(__p[1]) = 2081;
        *(&__p[1] + 6) = v20;
        HIWORD(__p[2]) = 2081;
        __p[3] = v21;
        _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEFAULT, "AccessoryObserver,discarding old location accessory and handling new,oldManufacturer,%{private}s,oldModel,%{private}s,oldName,%{private}s", __p, 0x20u);
        if (v45 < 0)
        {
          operator delete(v44[0]);
        }

        if (v47 < 0)
        {
          operator delete(v46[0]);
        }

        if (SHIBYTE(v83) < 0)
        {
          operator delete(*v80);
        }
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018EE428(__p);
        v36 = v46;
        sub_1000238CC([(EAAccessory *)self->fAccessory manufacturer], v46);
        if (v47 < 0)
        {
          v36 = v46[0];
        }

        v37 = v44;
        sub_1000238CC([(EAAccessory *)self->fAccessory modelNumber], v44);
        if (v45 < 0)
        {
          v37 = v44[0];
        }

        sub_1000238CC([(EAAccessory *)self->fAccessory name], v42);
        if (v43 >= 0)
        {
          v38 = v42;
        }

        else
        {
          v38 = v42[0];
        }

        *v80 = 136381187;
        *&v80[4] = v36;
        v81 = 2081;
        v82 = v37;
        v83 = 2081;
        v84 = v38;
        v39 = _os_log_send_and_compose_impl();
        if (v43 < 0)
        {
          operator delete(v42[0]);
        }

        if (v45 < 0)
        {
          operator delete(v44[0]);
        }

        if (v47 < 0)
        {
          operator delete(v46[0]);
        }

        sub_100152C7C("Generic", 1, 0, 2, "[CLAccessoryObserver setupAccessory:withListenerCall:]", "%s\n", v39);
        if (v39 != __p)
        {
          free(v39);
        }
      }

      if (callCopy)
      {
        v92 = 0u;
        memset(v93, 0, sizeof(v93));
        v90 = 0u;
        v91 = 0u;
        v88 = 0u;
        v89 = 0u;
        v86 = 0u;
        v87 = 0u;
        memset(__p, 0, sizeof(__p));
        v94 = 257;
        sub_1006360B4(self->fAccessory, __p);
        onDisconnected = self->fListener.onDisconnected;
        v23 = self->fListener.info;
        sub_10063A160(v41, __p);
        onDisconnected(v23, v41);
        sub_10063A344(v41);
        sub_10063A344(__p);
      }

      self->fAccessory = 0;
    }

    if (qword_1025D45E0 != -1)
    {
      sub_1018EE1FC();
    }

    v24 = qword_1025D45E8;
    if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_DEFAULT, "AccessoryObserver,connected to new location accessory", __p, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018EE428(__p);
      *v80 = 0;
      v35 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "[CLAccessoryObserver setupAccessory:withListenerCall:]", "%s\n", v35);
      if (v35 != __p)
      {
        free(v35);
      }
    }

    self->fAccessory = accessory;
    accessoryCopy = accessory;
    [(EAAccessory *)self->fAccessory setDelegate:self];
    [(EAAccessory *)self->fAccessory setNMEASentencesToFilter:[NSArray arrayWithObjects:@"GPGGA", @"GPRMC", @"GPGSV", @"PASCD", @"PAGCD", @"PAACD", @"GPHDT", 0]];
    [(CLAccessoryObserver *)self setupEphemeris];
    if ([(CLAccessoryObserver *)self iAPTimeSyncEnable])
    {
      v78[0] = EATimeSyncOffsetUncertaintyThreshold;
      v78[1] = EATimeSyncOffsetMeasurementInterval;
      v79[0] = &off_10254ED80;
      v79[1] = &off_10254ED98;
      [(EAAccessory *)self->fAccessory setIAPTimeSyncParams:[NSDictionary dictionaryWithObjects:v79 forKeys:v78 count:2]];
      if (qword_1025D45E0 != -1)
      {
        sub_1018EE1FC();
      }

      v26 = qword_1025D45E8;
      if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(__p[0]) = 134349312;
        *(__p + 4) = 100;
        WORD2(__p[1]) = 1026;
        *(&__p[1] + 6) = 10000;
        _os_log_impl(dword_100000000, v26, OS_LOG_TYPE_DEBUG, "AccessoryObserver,STARK:setIAPTimeSyncParams,uncThresholdMs,%{public}llu,intervalMs,%{public}u", __p, 0x12u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018EE428(__p);
        *v80 = 134349312;
        *&v80[4] = 100;
        v81 = 1026;
        LODWORD(v82) = 10000;
        v40 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "[CLAccessoryObserver setupAccessory:withListenerCall:]", "%s\n", v40);
        if (v40 != __p)
        {
          free(v40);
        }
      }
    }

    v9 = 1;
    goto LABEL_46;
  }

  LOBYTE(v104) = 0;
  v29 = &self->fListener;
  v27 = self->fListener.info;
  v28 = v29->onConnected;
  sub_10063A160(v48, buf);
  v28(v27, v48, 1);
  if (v61 < 0)
  {
    operator delete(v60);
  }

  if (v59 < 0)
  {
    operator delete(v58);
  }

  if (v57 < 0)
  {
    operator delete(v56);
  }

  if (v55 < 0)
  {
    operator delete(v54);
  }

  if (v53 < 0)
  {
    operator delete(v52);
  }

  if (v51 < 0)
  {
    operator delete(v50);
  }

  if (v49 < 0)
  {
    operator delete(v48[0]);
  }

  if (qword_1025D45E0 != -1)
  {
    sub_1018EE1FC();
  }

  v30 = qword_1025D45E8;
  if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(__p[0]) = 0;
    _os_log_impl(dword_100000000, v30, OS_LOG_TYPE_DEFAULT, "AccessoryObserver,detected new non-location accessory", __p, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018EE428(__p);
    *v80 = 0;
    v31 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "[CLAccessoryObserver setupAccessory:withListenerCall:]", "%s\n", v31);
LABEL_122:
    if (v31 != __p)
    {
      free(v31);
    }
  }

LABEL_45:
  v9 = 0;
LABEL_46:
  if ((v103[23] & 0x80000000) != 0)
  {
    operator delete(*v103);
  }

  if (SHIBYTE(v102) < 0)
  {
    operator delete(v101[1]);
  }

  if (SHIBYTE(v101[0]) < 0)
  {
    operator delete(v100[0]);
  }

  if (SHIBYTE(v99) < 0)
  {
    operator delete(v98[1]);
  }

  if (SHIBYTE(v98[0]) < 0)
  {
    operator delete(v97[0]);
  }

  if (SHIBYTE(v96) < 0)
  {
    operator delete(*&buf[24]);
  }

  if (buf[23] < 0)
  {
    operator delete(*buf);
  }

  return v9;
}

- (BOOL)setupEphemeris
{
  fAccessory = self->fAccessory;
  if (fAccessory)
  {
    *buf = 0;
    v4 = [(EAAccessory *)fAccessory getEphemerisURL:buf];
    v5 = *buf;
    if (v4)
    {
      v6 = *buf == 0;
    }

    else
    {
      v6 = 1;
    }

    if (!v6)
    {
      v13 = 0;
      v7 = self->fAccessory;
      if (!v7 || ([(EAAccessory *)v7 getEphemerisRecommendRefreshInterval:&v13]& 1) == 0)
      {
        v13 = 0x7FEFFFFFFFFFFFFFLL;
      }

      v12 = 0;
      v8 = self->fAccessory;
      if (!v8 || ([(EAAccessory *)v8 getEphemerisExpirationInterval:&v12]& 1) == 0)
      {
        v12 = 0x7FEFFFFFFFFFFFFFLL;
      }

      (self->fListener.onEphemerisURL)(self->fListener.info, *buf, &v13, &v12);
      v5 = *buf;
    }

    LOBYTE(v9) = v5 != 0;
  }

  else
  {
    if (qword_1025D45E0 != -1)
    {
      sub_1018EE0CC();
    }

    v10 = qword_1025D45E8;
    if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "no location accessory available", buf, 2u);
    }

    v9 = sub_10000A100(121, 2);
    if (v9)
    {
      sub_1018EEF40();
      LOBYTE(v9) = 0;
    }
  }

  return v9;
}

- (void)sendGPRMCDataStatusValues:(BOOL)values
{
  fAccessory = self->fAccessory;
  if (fAccessory)
  {
    if (([(EAAccessory *)fAccessory sendGPRMCDataStatusValueA:1 ValueV:1 ValueX:values]& 1) == 0)
    {
      if (qword_1025D45E0 != -1)
      {
        sub_1018EE0CC();
      }

      v4 = qword_1025D45E8;
      if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_FAULT))
      {
        *v6 = 0;
        _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_FAULT, "sendGPRMCDataStatus failed", v6, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018EF024();
      }
    }
  }

  else
  {
    if (qword_1025D45E0 != -1)
    {
      sub_1018EE0CC();
    }

    v5 = qword_1025D45E8;
    if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "no location accessory available", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018EF108();
    }
  }
}

- (void)accessoryConnected:(id)connected
{
  fSilo = self->fSilo;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100638AA0;
  v4[3] = &unk_1024473F0;
  v4[4] = connected;
  v4[5] = self;
  [(CLSilo *)fSilo async:v4];
}

- (void)nmeaReceived:(id)received
{
  fSilo = self->fSilo;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100638D7C;
  v4[3] = &unk_1024473F0;
  v4[4] = self;
  v4[5] = received;
  [(CLSilo *)fSilo async:v4];
}

- (void)timeRequested:(id)requested
{
  fSilo = self->fSilo;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100639458;
  v4[3] = &unk_102447418;
  v4[4] = self;
  [(CLSilo *)fSilo async:v4];
}

- (void)locationPointDataRequested:(id)requested
{
  fSilo = self->fSilo;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1006394DC;
  v4[3] = &unk_102447418;
  v4[4] = self;
  [(CLSilo *)fSilo async:v4];
}

- (void)ephemerisURLRequested:(id)requested
{
  fSilo = self->fSilo;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100639560;
  v4[3] = &unk_102447418;
  v4[4] = self;
  [(CLSilo *)fSilo async:v4];
}

- (void)onStarkTimeSyncNotification:(id)notification
{
  fSilo = self->fSilo;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100639674;
  v4[3] = &unk_1024473F0;
  v4[4] = notification;
  v4[5] = self;
  [(CLSilo *)fSilo async:v4];
}

- (id).cxx_construct
{
  *(self + 12) = 0;
  *(self + 11) = 0;
  *(self + 10) = self + 88;
  *(self + 104) = 1;
  *(self + 108) = 0xA00000041;
  *(self + 29) = 180;
  *(self + 15) = 0x403E000000000000;
  *(self + 64) = 1;
  *(self + 136) = xmmword_101C822A0;
  return self;
}

@end