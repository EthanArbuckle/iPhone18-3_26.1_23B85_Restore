@interface SDRapportBrowser
+ (BOOL)deviceIsEligibleForAirDrop:(id)a3;
+ (BOOL)personHasAirDropEligibleDevice:(id)a3;
+ (SDRapportBrowser)sharedRapportBrowser;
+ (id)deviceTypeFromModelIdentifier:(id)a3;
+ (id)identifiersForPerson:(id)a3;
+ (void)updateRangingMeasurementForDevice:(id)a3 inNode:(__SFNode *)a4;
+ (void)updateRangingMeasurementForPerson:(id)a3 inNode:(__SFNode *)a4;
- (SDRapportBrowser)init;
- (SDXPCHelperConnection)helperConnection;
- (__SFNode)createSFNodeFromCNContacts:(id)a3 identifier:(id)a4 device:(id)a5;
- (__SFNode)createSFNodeFromMyRPDevice:(id)a3;
- (__SFNode)createSFNodeFromRPPerson:(id)a3;
- (void)_start;
- (void)_stop;
- (void)addObservers;
- (void)addOrUpdateNodesForPerson:(id)a3 withChanges:(unsigned int)a4;
- (void)contactsChanged:(id)a3;
- (void)removeNodesForPerson:(id)a3;
- (void)removeObservers;
- (void)resumeHandoffAdvertisingIfAppropriate;
- (void)start;
- (void)stop;
- (void)stopHandoffAdvertisingIfAppropriate;
- (void)updateUltraWideBandStateTo:(unint64_t)a3;
@end

@implementation SDRapportBrowser

+ (SDRapportBrowser)sharedRapportBrowser
{
  if (qword_100989CC8 != -1)
  {
    sub_1000FA6F4();
  }

  v3 = qword_100989CD0;

  return v3;
}

- (SDRapportBrowser)init
{
  v5.receiver = self;
  v5.super_class = SDRapportBrowser;
  v2 = [(SDRapportBrowser *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(SDRapportBrowser *)v2 updateUltraWideBandStateTo:0];
  }

  return v3;
}

- (void)start
{
  v3 = airdrop_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    startCount = self->_startCount;
    v6[0] = 67109120;
    v6[1] = startCount;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Rapport Browser start, current request count %d", v6, 8u);
  }

  v5 = self->_startCount;
  if (!v5)
  {
    [(SDRapportBrowser *)self _start];
    v5 = self->_startCount;
  }

  self->_startCount = v5 + 1;
}

- (void)stop
{
  startCount = self->_startCount;
  if (startCount <= 1)
  {
    startCount = 1;
  }

  self->_startCount = startCount - 1;
  v4 = airdrop_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = self->_startCount;
    v6[0] = 67109120;
    v6[1] = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Rapport Browser stop, current request count %d", v6, 8u);
  }

  if (!self->_startCount)
  {
    [(SDRapportBrowser *)self _stop];
  }
}

- (void)_start
{
  v3 = airdrop_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Rapport Browser start", buf, 2u);
  }

  [(SDRapportBrowser *)self stopHandoffAdvertisingIfAppropriate];
  v4 = objc_alloc_init(NSMutableDictionary);
  cachedNodes = self->_cachedNodes;
  self->_cachedNodes = v4;

  v6 = objc_alloc_init(RPPeopleDiscovery);
  peopleDiscovery = self->_peopleDiscovery;
  self->_peopleDiscovery = v6;

  [(RPPeopleDiscovery *)self->_peopleDiscovery setChangeFlags:0xFFFFFFFFLL];
  [(RPPeopleDiscovery *)self->_peopleDiscovery setDiscoveryFlags:16];
  [(RPPeopleDiscovery *)self->_peopleDiscovery setDiscoveryFlags:[(RPPeopleDiscovery *)self->_peopleDiscovery discoveryFlags]| 4];
  [(RPPeopleDiscovery *)self->_peopleDiscovery setDiscoveryFlags:[(RPPeopleDiscovery *)self->_peopleDiscovery discoveryFlags]| 8];
  [(RPPeopleDiscovery *)self->_peopleDiscovery setDiscoveryFlags:[(RPPeopleDiscovery *)self->_peopleDiscovery discoveryFlags]| 0x80];
  v8 = +[SDStatusMonitor sharedMonitor];
  v9 = [v8 enableStrangers];

  if (v9)
  {
    v10 = airdrop_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Enabling Stranger Discovery", buf, 2u);
    }

    [(RPPeopleDiscovery *)self->_peopleDiscovery setDiscoveryFlags:[(RPPeopleDiscovery *)self->_peopleDiscovery discoveryFlags]| 0x400];
  }

  [(RPPeopleDiscovery *)self->_peopleDiscovery setDiscoveryMode:1];
  objc_initWeak(buf, self);
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000F8668;
  v19[3] = &unk_1008D03C8;
  objc_copyWeak(&v20, buf);
  [(RPPeopleDiscovery *)self->_peopleDiscovery setPersonFoundHandler:v19];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000F8770;
  v17[3] = &unk_1008D03F0;
  objc_copyWeak(&v18, buf);
  [(RPPeopleDiscovery *)self->_peopleDiscovery setPersonChangedHandler:v17];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000F8828;
  v15[3] = &unk_1008D03C8;
  objc_copyWeak(&v16, buf);
  [(RPPeopleDiscovery *)self->_peopleDiscovery setPersonLostHandler:v15];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000F892C;
  v13[3] = &unk_1008CDD98;
  objc_copyWeak(&v14, buf);
  [(RPPeopleDiscovery *)self->_peopleDiscovery setStatusChangedHandler:v13];
  [(RPPeopleDiscovery *)self->_peopleDiscovery setInterruptionHandler:&stru_1008D0410];
  [(RPPeopleDiscovery *)self->_peopleDiscovery setInvalidationHandler:&stru_1008D0430];
  v11 = self->_peopleDiscovery;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000F8A58;
  v12[3] = &unk_1008CDF90;
  v12[4] = self;
  [(RPPeopleDiscovery *)v11 activateWithCompletion:v12];
  [(SDRapportBrowser *)self addObservers];
  objc_destroyWeak(&v14);
  objc_destroyWeak(&v16);
  objc_destroyWeak(&v18);
  objc_destroyWeak(&v20);
  objc_destroyWeak(buf);
}

- (void)_stop
{
  v3 = airdrop_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Rapport Browser stop", v5, 2u);
  }

  [(SDRapportBrowser *)self updateUltraWideBandStateTo:0];
  [(SDRapportBrowser *)self removeObservers];
  [(RPPeopleDiscovery *)self->_peopleDiscovery invalidate];
  peopleDiscovery = self->_peopleDiscovery;
  self->_peopleDiscovery = 0;

  [(SDRapportBrowser *)self resumeHandoffAdvertisingIfAppropriate];
}

- (void)updateUltraWideBandStateTo:(unint64_t)a3
{
  if (self->_ultraWideBandState != a3)
  {
    self->_ultraWideBandState = a3;
    v4 = airdrop_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      if (a3 > 2)
      {
        v5 = "?";
      }

      else
      {
        v5 = off_1008D0478[a3];
      }

      v7 = 136315138;
      v8 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "UWB state changed to %s", &v7, 0xCu);
    }

    v6 = +[NSNotificationCenter defaultCenter];
    [v6 postNotificationName:@"com.apple.sharingd.RapportStatusChanged" object:0 userInfo:0];
  }
}

- (void)contactsChanged:(id)a3
{
  [(NSMutableDictionary *)self->_cachedNodes removeAllObjects];
  v4 = [(RPPeopleDiscovery *)self->_peopleDiscovery discoveredPeople];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(SDRapportBrowser *)self addOrUpdateNodesForPerson:*(*(&v10 + 1) + 8 * v8) withChanges:0];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = +[NSNotificationCenter defaultCenter];
  [v9 postNotificationName:@"com.apple.sharingd.RapportChanged" object:0 userInfo:0];
}

- (void)addObservers
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"contactsChanged:" name:@"com.apple.sharingd.ContactsChanged" object:0];
}

- (void)removeObservers
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];
}

- (void)addOrUpdateNodesForPerson:(id)a3 withChanges:(unsigned int)a4
{
  v6 = a3;
  if ([v6 flags])
  {
    v7 = [v6 devices];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000F91C8;
    v14[3] = &unk_1008D0458;
    v14[4] = self;
    v15 = a4;
    [v7 enumerateObjectsUsingBlock:v14];
  }

  else
  {
    v7 = [v6 identifier];
    v8 = [(NSMutableDictionary *)self->_cachedNodes objectForKeyedSubscript:v7];

    if ([objc_opt_class() personHasAirDropEligibleDevice:v6])
    {
      if (v8)
      {
        if ((a4 & 8) != 0)
        {
          [objc_opt_class() updateRangingMeasurementForPerson:v6 inNode:v8];
        }
      }

      else if (v7 || ([v6 flags] & 0x100) != 0)
      {
        v11 = [(SDRapportBrowser *)self createSFNodeFromRPPerson:v6];
        v12 = airdrop_log();
        v13 = v12;
        if (v11)
        {
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v17 = v11;
            v18 = 2112;
            v19 = v6;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "SDRapportBrowser: Adding SFNode %@ for %@", buf, 0x16u);
          }

          [(NSMutableDictionary *)self->_cachedNodes setObject:v11 forKeyedSubscript:v7];
        }

        else
        {
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            sub_1000FA834();
          }
        }
      }

      else
      {
        v10 = airdrop_log();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
        {
          sub_1000FA89C();
        }
      }
    }

    else if (v8)
    {
      v9 = airdrop_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v17 = v8;
        v18 = 2112;
        v19 = v6;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "SDRapportBrowser: Removing SFNode %@ for RPPerson %@", buf, 0x16u);
      }

      [(NSMutableDictionary *)self->_cachedNodes setObject:0 forKeyedSubscript:v7];
    }
  }
}

- (void)removeNodesForPerson:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() identifiersForPerson:v4];

  [(NSMutableDictionary *)self->_cachedNodes removeObjectsForKeys:v5];
}

- (void)stopHandoffAdvertisingIfAppropriate
{
  if ([(SDRapportBrowser *)self shouldStopHandoffAdvertising])
  {
    v4 = +[SDActivityAdvertiser sharedAdvertiser];
    v3 = [(SDRapportBrowser *)self assertionIdentifier];
    [v4 stopForReason:v3];
  }
}

- (void)resumeHandoffAdvertisingIfAppropriate
{
  if ([(SDRapportBrowser *)self shouldStopHandoffAdvertising])
  {
    v4 = +[SDActivityAdvertiser sharedAdvertiser];
    v3 = [(SDRapportBrowser *)self assertionIdentifier];
    [v4 resumeForReason:v3];
  }
}

+ (void)updateRangingMeasurementForPerson:(id)a3 inNode:(__SFNode *)a4
{
  v5 = a3;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v6 = [v5 devices];
  v7 = [v6 countByEnumeratingWithState:&v35 objects:v47 count:16];
  if (v7)
  {
    v8 = v7;
    v32 = a4;
    v33 = v5;
    v9 = 0;
    v10 = 0;
    v11 = *v36;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v36 != v11)
        {
          objc_enumerationMutation(v6);
        }

        v13 = *(*(&v35 + 1) + 8 * i);
        v14 = [objc_opt_class() deviceIsEligibleForAirDrop:v13];
        v15 = magic_head_log();
        v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
        if (v14)
        {
          if (v16)
          {
            v17 = [v13 relativeLocation];
            *buf = 138412546;
            v40 = v13;
            v41 = 2112;
            v42 = v17;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "SDRapportBrowser: Device %@ with location %@ eligible for AirDrop", buf, 0x16u);
          }

          v18 = [v13 relativeLocation];
          v15 = v18;
          if (v18)
          {
            [v18 ptsScore];
            v20 = v19;
            [v9 ptsScore];
            if (v20 > v21 || v9 == 0)
            {
              v15 = v15;

              v9 = v15;
            }
          }
        }

        else if (v16)
        {
          v23 = [v13 relativeLocation];
          [v23 ptsScore];
          *buf = 138412546;
          v40 = v13;
          v41 = 2048;
          v42 = v24;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "SDRapportBrowser: Device %@ with score %f not eligible for AirDrop", buf, 0x16u);
        }

        v10 |= ([v13 flags] & 0x100) >> 8;
      }

      v8 = [v6 countByEnumeratingWithState:&v35 objects:v47 count:16];
    }

    while (v8);

    if (v9)
    {
      v34 = 0;
      v25 = [NSKeyedArchiver archivedDataWithRootObject:v9 requiringSecureCoding:1 error:&v34];
      v26 = v34;
      [v9 timestampTicks];
      v27 = SFUpTicksDiffFromNowToString();
      v28 = magic_head_log();
      v5 = v33;
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138413058;
        v40 = v33;
        v41 = 2112;
        v42 = v9;
        v43 = 2112;
        v44 = v27;
        v45 = 2112;
        v46 = v26;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Setting ranging measurement for person %@ to %@ - %@ (%@)", buf, 0x2Au);
      }

      goto LABEL_29;
    }

    v5 = v33;
  }

  else
  {

    LOBYTE(v10) = 0;
  }

  v26 = magic_head_log();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v40 = v5;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "No highest ranging measurement found for %@", buf, 0xCu);
  }

  v9 = 0;
  v25 = 0;
LABEL_29:

  SFNodeSetRangingData();
  v29 = SFNodeCopyFlags();
  v30 = [v29 longValue];
  if (v10)
  {
    v31 = v30 | 0x400;
  }

  else
  {
    v31 = v30 & 0x400;
  }

  [NSNumber numberWithUnsignedInteger:v31, v32];
  SFNodeSetFlags();
}

+ (void)updateRangingMeasurementForDevice:(id)a3 inNode:(__SFNode *)a4
{
  v4 = a3;
  v5 = [v4 relativeLocation];
  if (v5)
  {
    v14 = 0;
    v6 = [NSKeyedArchiver archivedDataWithRootObject:v5 requiringSecureCoding:1 error:&v14];
    v7 = v14;
    [v5 timestampTicks];
    v8 = SFUpTicksDiffFromNowToString();
    v9 = magic_head_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413058;
      v16 = v4;
      v17 = 2112;
      v18 = v5;
      v19 = 2112;
      v20 = v8;
      v21 = 2112;
      v22 = v7;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Setting ranging measurement for device %@ to %@ - %@ (%@)", buf, 0x2Au);
    }
  }

  else
  {
    v7 = magic_head_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "No highest ranging measurement found for %@", buf, 0xCu);
    }

    v6 = 0;
  }

  SFNodeSetRangingData();
  v10 = [v4 flags];
  v11 = SFNodeCopyFlags();
  v12 = [v11 longValue];
  if ((v10 & 0x100) != 0)
  {
    v13 = v12 | 0x400;
  }

  else
  {
    v13 = v12 & 0x400;
  }

  [NSNumber numberWithUnsignedInteger:v13];
  SFNodeSetFlags();
}

- (__SFNode)createSFNodeFromCNContacts:(id)a3 identifier:(id)a4 device:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = SFNodeCreate();
  if ([v7 count])
  {
    v10 = +[SDStatusMonitor sharedMonitor];
    v11 = [v10 contactWithPreferredIdentifierForContacts:v7];
    v12 = objc_alloc_init(CNContactFormatter);
    v13 = [v11 mutableCopy];
    [v13 setMiddleName:&stru_1008EFBD0];
    v33 = v12;
    v14 = [v12 stringFromContact:v13];
    v15 = [v11 identifier];
    SFNodeSetContactIdentifier();

    sub_1001EAB78(v7);
    SFNodeSetContactIdentifiers();
    SFNodeSetDisplayName();
    v16 = [v11 givenName];
    SFNodeSetFirstName();

    v17 = [v11 familyName];
    SFNodeSetLastName();

    v18 = [v11 nickname];
    SFNodeSetNickName();

    v19 = [v10 meCard];
    LODWORD(v15) = [v19 isEqual:v11];

    if (v15)
    {
      SFNodeAddKind();
      v20 = [v10 myAppleID];
      SFNodeSetAppleID();

      if ([v8 idsDeviceIdentifierConflict])
      {
        v21 = airdrop_log();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v35 = v8;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "SDRapportBrowser: IDS device info for %@ may be inaccurate. Don't use it for AirDrop", buf, 0xCu);
        }
      }

      else
      {
        v23 = [v8 name];
        SFNodeSetComputerName();

        v21 = [v8 idsDeviceIdentifier];
        SFNodeSetIDSDeviceIdentifier();
      }

      v32 = self;
      v24 = objc_opt_class();
      v25 = [v8 model];
      v26 = [v24 deviceTypeFromModelIdentifier:v25];

      SFNodeSetSecondaryName();
      v27 = [v8 model];
      v28 = SFDeviceImageFromDeviceModel();

      if ([v28 CGImage])
      {
        [v28 CGImage];
        v29 = SFDataFromCGImage();

        self = v32;
        if (v29)
        {
LABEL_14:
          SFNodeSetIconData();

          goto LABEL_15;
        }
      }

      else
      {

        self = v32;
      }
    }

    buf[0] = 0;
    v30 = [(SDRapportBrowser *)self helperConnection];
    v29 = sub_1000906C0(v11, 1, buf, v30);

    if ((buf[0] & 1) == 0)
    {
      SFNodeAddKind();
    }

    goto LABEL_14;
  }

  SFNodeAddKind();
  v22 = [v8 bleAuthTag];
  [v22 base64EncodedStringWithOptions:0];
  SFNodeSetUserName();

LABEL_15:
  SFNodeAddKind();
  SFNodeAddKind();
  +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [objc_opt_class() defaultSFNodeFlags]);
  SFNodeSetFlags();

  return v9;
}

- (__SFNode)createSFNodeFromRPPerson:(id)a3
{
  v4 = a3;
  v5 = +[SDStatusMonitor sharedMonitor];
  v6 = [CNContactFormatter descriptorForRequiredKeysForStyle:0];
  v16[0] = v6;
  v16[1] = CNContactThumbnailImageDataKey;
  v16[2] = CNContactPhoneNumbersKey;
  v16[3] = CNContactEmailAddressesKey;
  v7 = [NSArray arrayWithObjects:v16 count:4];

  v8 = [v4 identifier];
  v9 = [v5 contactsWithPhoneNumberOrEmail:v8 keys:v7];

  if ([v9 count] || (objc_msgSend(v4, "flags") & 0x100) != 0)
  {
    v12 = [v4 identifier];
    v13 = [v4 devices];
    v14 = [v13 firstObject];
    v11 = [(SDRapportBrowser *)self createSFNodeFromCNContacts:v9 identifier:v12 device:v14];

    +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v4 flags]);
    SFNodeSetRapportFlags();
    [objc_opt_class() updateRangingMeasurementForPerson:v4 inNode:v11];
  }

  else
  {
    v10 = airdrop_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1000FA978();
    }

    v11 = 0;
  }

  return v11;
}

- (__SFNode)createSFNodeFromMyRPDevice:(id)a3
{
  v4 = a3;
  v5 = +[SDStatusMonitor sharedMonitor];
  v6 = [v5 meCard];

  if (v6)
  {
    v7 = [NSSet setWithObject:v6];
    v8 = [v4 identifier];
    v9 = [(SDRapportBrowser *)self createSFNodeFromCNContacts:v7 identifier:v8 device:v4];

    SFNodeSetRapportFlags();
    [objc_opt_class() updateRangingMeasurementForDevice:v4 inNode:v9];
  }

  else
  {
    v10 = airdrop_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1000FA9E0(v10);
    }

    v9 = 0;
  }

  return v9;
}

+ (id)identifiersForPerson:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  if ([v3 flags])
  {
    v5 = [v3 devices];

    v6 = [v5 valueForKey:@"identifier"];
    [v4 addObjectsFromArray:v6];
  }

  else
  {
    v5 = [v3 identifier];

    [v4 addObject:v5];
  }

  return v4;
}

+ (BOOL)personHasAirDropEligibleDevice:(id)a3
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [a3 devices];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if ([a1 deviceIsEligibleForAirDrop:*(*(&v11 + 1) + 8 * i)])
        {
          v9 = 1;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  return v9;
}

+ (BOOL)deviceIsEligibleForAirDrop:(id)a3
{
  v3 = a3;
  v4 = [v3 model];
  v5 = v4;
  if (v4 && (([v4 hasPrefix:@"AppleTV"] & 1) != 0 || (objc_msgSend(v5, "hasPrefix:", @"Watch") & 1) != 0 || (objc_msgSend(v5, "hasPrefix:", @"Audio") & 1) != 0))
  {

    LOBYTE(v5) = 0;
  }

  else
  {

    LODWORD(v5) = ([v3 flags] >> 11) & 1;
  }

  return v5;
}

+ (id)deviceTypeFromModelIdentifier:(id)a3
{
  v3 = a3;
  v4 = @"iPhone";
  if (([v3 hasPrefix:@"iPhone"] & 1) == 0)
  {
    v4 = @"iPad";
    if (([v3 hasPrefix:@"iPad"] & 1) == 0)
    {
      if ([v3 hasPrefix:@"iPod"])
      {
        v4 = @"iPod touch";
      }

      else if ([v3 hasPrefix:@"MacBookPro"])
      {
        v4 = @"MacBook Pro";
      }

      else if ([v3 hasPrefix:@"MacBookAir"])
      {
        v4 = @"MacBook Air";
      }

      else if ([v3 hasPrefix:@"MacPro"])
      {
        v4 = @"Mac Pro";
      }

      else
      {
        v4 = @"iMac";
        if (![v3 hasPrefix:@"iMac"])
        {
          v4 = &stru_1008EFBD0;
        }
      }
    }
  }

  return v4;
}

- (SDXPCHelperConnection)helperConnection
{
  WeakRetained = objc_loadWeakRetained(&self->_helperConnection);

  return WeakRetained;
}

@end