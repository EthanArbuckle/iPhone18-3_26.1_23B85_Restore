@interface NRDLocalDevice
- (NRDLocalDevice)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
@end

@implementation NRDLocalDevice

- (void)encodeWithCoder:(id)a3
{
  v15 = a3;
  v4 = objc_autoreleasePoolPush();
  if (self)
  {
    [v15 encodeObject:self->_nrUUID forKey:@"nrUUID"];
    [v15 encodeObject:self->_bluetoothUUID forKey:@"bluetoothUUID"];
    [v15 encodeObject:self->_idsDeviceID forKey:@"idsDeviceID"];
    [v15 encodeObject:self->_dateCreated forKey:@"dateCreated"];
    [v15 encodeBool:self->_isEmptyPairing forKey:@"isEmptyPairing"];
    if (self->_isEmptyPairing)
    {
      goto LABEL_13;
    }

    databaseFlags = self->_databaseFlags;
  }

  else
  {
    [v15 encodeObject:0 forKey:@"nrUUID"];
    [v15 encodeObject:0 forKey:@"bluetoothUUID"];
    [v15 encodeObject:0 forKey:@"idsDeviceID"];
    [v15 encodeObject:0 forKey:@"dateCreated"];
    [v15 encodeBool:0 forKey:@"isEmptyPairing"];
    databaseFlags = 0;
  }

  [v15 encodeInt64:databaseFlags forKey:@"databaseFlags"];
  [v15 encodeInt64:-[NRDLocalDevice pairingProtocolVersion](self forKey:{"pairingProtocolVersion"), @"pairingProtocolVersion"}];
  if (self)
  {
    [v15 encodeInt32:self->_lastSeenInnerLinkVersionHBO forKey:@"lastSeenInnerLinkVersionHBO"];
    [v15 encodeObject:self->_lastSeenName forKey:@"lastSeenName"];
    [v15 encodeObject:self->_lastSeenBuildVersion forKey:@"lastSeenBuildVersion"];
    if ((self->_databaseFlags & 0x10) != 0)
    {
      [v15 encodeInt64:self->_authMethodUsedForModernPairing forKey:@"authMethodUsedForModernPairing"];
    }

    psm = self->_psm;
  }

  else
  {
    [v15 encodeInt32:0 forKey:@"lastSeenInnerLinkVersionHBO"];
    [v15 encodeObject:0 forKey:@"lastSeenName"];
    [v15 encodeObject:0 forKey:@"lastSeenBuildVersion"];
    psm = 0;
  }

  [v15 encodeInt32:psm forKey:@"psm"];
  v7 = [(NRDLocalDevice *)self dateRegistered];
  [v15 encodeObject:v7 forKey:@"dateRegistered"];

  v8 = [(NRDLocalDevice *)self dateEnabled];
  [v15 encodeObject:v8 forKey:@"dateEnabled"];

  if (self)
  {
    [v15 encodeObject:self->_localIdentity forKey:@"localIdentity"];
    [v15 encodeObject:self->_remoteIdentity forKey:@"remoteIdentity"];
    [v15 encodeInt32:self->_deviceType forKey:@"deviceType"];
    [v15 encodeObject:self->_operationalProp forKey:@"operationalProp"];
    [v15 encodeInt64:self->_localFlags forKey:@"localFlags"];
    [v15 encodeInt64:self->_remoteFlags forKey:@"remoteFlags"];
    bluetoothMACAddress = self->_bluetoothMACAddress;
  }

  else
  {
    [v15 encodeObject:0 forKey:@"localIdentity"];
    [v15 encodeObject:0 forKey:@"remoteIdentity"];
    [v15 encodeInt32:0 forKey:@"deviceType"];
    [v15 encodeObject:0 forKey:@"operationalProp"];
    [v15 encodeInt64:0 forKey:@"localFlags"];
    [v15 encodeInt64:0 forKey:@"remoteFlags"];
    bluetoothMACAddress = 0;
  }

  [v15 encodeObject:bluetoothMACAddress forKey:@"bluetoothMACAddress"];
  v10 = [(NRDLocalDevice *)self localInnerIPv6AddressBytesClassD];
  [v15 encodeObject:v10 forKey:@"localInnerIPv6AddressBytesClassD"];

  v11 = [(NRDLocalDevice *)self remoteInnerIPv6AddressBytesClassD];
  [v15 encodeObject:v11 forKey:@"remoteInnerIPv6AddressBytesClassD"];

  v12 = [(NRDLocalDevice *)self localInnerIPv6AddressBytesClassC];
  [v15 encodeObject:v12 forKey:@"localInnerIPv6AddressBytesClassC"];

  v13 = [(NRDLocalDevice *)self remoteInnerIPv6AddressBytesClassC];
  [v15 encodeObject:v13 forKey:@"remoteInnerIPv6AddressBytesClassC"];

  if (self)
  {
    receivedProxyNotifyPayload = self->_receivedProxyNotifyPayload;
  }

  else
  {
    receivedProxyNotifyPayload = 0;
  }

  [v15 encodeObject:receivedProxyNotifyPayload forKey:@"receivedProxyNotifyPayload"];
LABEL_13:
  objc_autoreleasePoolPop(v4);
}

- (NRDLocalDevice)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"nrUUID"];
  if (!v6)
  {
    v88 = sub_10015B480();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v90 = sub_10015B480();
      _NRLogWithArgs();
    }

    v12 = 0;
    goto LABEL_12;
  }

  v7 = sub_10015D20C(self, v6);
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bluetoothUUID"];
  [v7 setBluetoothUUID:v8];

  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"idsDeviceID"];
  [v7 setIdsDeviceID:v9];

  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dateCreated"];
  if (v7)
  {
    objc_storeStrong(v7 + 21, v10);
  }

  v11 = [v4 decodeBoolForKey:@"isEmptyPairing"];
  if (v7)
  {
    if (v7[12] != v11)
    {
      v7[12] = v11;
      if (v11)
      {
        sub_10015D3F4(v7);
      }

      else if ((v7[8] & 1) == 0)
      {
        sub_10015D69C(v7);
        v7[13] = 1;
      }
    }

    if (v7[12] == 1)
    {
      self = v7;
      v12 = self;
LABEL_12:

      objc_autoreleasePoolPop(v5);
      goto LABEL_99;
    }
  }

  if ([v4 containsValueForKey:@"databaseFlags"])
  {
    [v7 setDatabaseFlags:{objc_msgSend(v4, "decodeInt64ForKey:", @"databaseFlags"}];
  }

  else
  {
    v13 = [v4 decodeBoolForKey:@"isRegistered"];
    if (v7)
    {
      [v7 setDatabaseFlags:*(v7 + 6) & 0xFFFFFFFFFFFFFFFELL | v13];
      v14 = [v4 decodeBoolForKey:@"isEnabled"];
      v15 = 2;
      if (!v14)
      {
        v15 = 0;
      }

      [v7 setDatabaseFlags:*(v7 + 6) & 0xFFFFFFFFFFFFFFFDLL | v15];
      v16 = [v4 decodeBoolForKey:@"isAltAccountDevice"];
      v17 = 4;
      if (!v16)
      {
        v17 = 0;
      }

      [v7 setDatabaseFlags:*(v7 + 6) & 0xFFFFFFFFFFFFFFFBLL | v17];
      v18 = [v4 decodeBoolForKey:@"isExternalDevice"];
      v19 = 8;
      if (!v18)
      {
        v19 = 0;
      }

      [v7 setDatabaseFlags:*(v7 + 6) & 0xFFFFFFFFFFFFFFF7 | v19];
      v20 = [v4 decodeBoolForKey:@"isModernPairing"];
      v21 = 16;
      if (!v20)
      {
        v21 = 0;
      }

      [v7 setDatabaseFlags:*(v7 + 6) & 0xFFFFFFFFFFFFFFEFLL | v21];
      v22 = [v4 decodeBoolForKey:@"wasInitiallySetupUsingIDSPairing"];
      v23 = 32;
      if (!v22)
      {
        v23 = 0;
      }

      [v7 setDatabaseFlags:*(v7 + 6) & 0xFFFFFFFFFFFFFFDFLL | v23];
      v24 = [v4 decodeBoolForKey:@"lastSeenAlwaysOnWiFiSupported"];
      v25 = 256;
      if (!v24)
      {
        v25 = 0;
      }

      [v7 setDatabaseFlags:*(v7 + 6) & 0xFFFFFFFFFFFFFEFFLL | v25];
      v26 = [v4 decodeBoolForKey:@"hasAuthenticatedWithIdentity"];
      v27 = 512;
      if (!v26)
      {
        v27 = 0;
      }

      [v7 setDatabaseFlags:*(v7 + 6) & 0xFFFFFFFFFFFFFDFFLL | v27];
      v28 = [v4 decodeBoolForKey:@"hasSavedClassCKeysInKeychain"];
      v29 = 1024;
      if (!v28)
      {
        v29 = 0;
      }

      [v7 setDatabaseFlags:*(v7 + 6) & 0xFFFFFFFFFFFFFBFFLL | v29];
      v30 = [v4 decodeBoolForKey:@"hasSavedPairingInfoInKeychain"];
      v31 = 2048;
      if (!v30)
      {
        v31 = 0;
      }

      [v7 setDatabaseFlags:*(v7 + 6) & 0xFFFFFFFFFFFFF7FFLL | v31];
      v32 = [v4 decodeBoolForKey:@"hasConfirmedClassDKeys"];
      v33 = 4096;
      if (!v32)
      {
        v33 = 0;
      }

      [v7 setDatabaseFlags:*(v7 + 6) & 0xFFFFFFFFFFFFEFFFLL | v33];
      v34 = [v4 decodeBoolForKey:@"hasConfirmedClassCKeys"];
      v35 = 0x2000;
      if (!v34)
      {
        v35 = 0;
      }

      [v7 setDatabaseFlags:*(v7 + 6) & 0xFFFFFFFFFFFFDFFFLL | v35];
      v36 = [v4 decodeBoolForKey:@"hasConfirmedClassAKeys"];
      v37 = 0x4000;
      if (!v36)
      {
        v37 = 0;
      }

      [v7 setDatabaseFlags:*(v7 + 6) & 0xFFFFFFFFFFFFBFFFLL | v37];
      v7[13] = 1;
    }

    else
    {
      [v4 decodeBoolForKey:@"isEnabled"];
      [v4 decodeBoolForKey:@"isAltAccountDevice"];
      [v4 decodeBoolForKey:@"isExternalDevice"];
      [v4 decodeBoolForKey:@"isModernPairing"];
      [v4 decodeBoolForKey:@"wasInitiallySetupUsingIDSPairing"];
      [v4 decodeBoolForKey:@"lastSeenAlwaysOnWiFiSupported"];
      [v4 decodeBoolForKey:@"hasAuthenticatedWithIdentity"];
      [v4 decodeBoolForKey:@"hasSavedClassCKeysInKeychain"];
      [v4 decodeBoolForKey:@"hasSavedPairingInfoInKeychain"];
      [v4 decodeBoolForKey:@"hasConfirmedClassDKeys"];
      [v4 decodeBoolForKey:@"hasConfirmedClassCKeys"];
      [v4 decodeBoolForKey:@"hasConfirmedClassAKeys"];
    }
  }

  [v7 setPairingProtocolVersion:{objc_msgSend(v4, "decodeInt64ForKey:", @"pairingProtocolVersion"}];
  [v7 setLastSeenInnerLinkVersionHBO:{objc_msgSend(v4, "decodeInt32ForKey:", @"lastSeenInnerLinkVersionHBO"}];
  v38 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastSeenName"];
  [v7 setLastSeenName:v38];

  v39 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastSeenBuildVersion"];
  [v7 setLastSeenBuildVersion:v39];

  if (v7 && (v7[48] & 0x10) != 0)
  {
    [v7 setAuthMethodUsedForModernPairing:{objc_msgSend(v4, "decodeInt64ForKey:", @"authMethodUsedForModernPairing"}];
  }

  [v7 setPsm:{objc_msgSend(v4, "decodeInt32ForKey:", @"psm"}];
  v40 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dateRegistered"];
  [v7 setDateRegistered:v40];

  v41 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dateEnabled"];
  [v7 setDateEnabled:v41];

  v42 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localIdentity"];
  [v7 setLocalIdentity:v42];

  v43 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"remoteIdentity"];
  [v7 setRemoteIdentity:v43];

  [v7 setDeviceType:{objc_msgSend(v4, "decodeInt32ForKey:", @"deviceType"}];
  v44 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"operationalProp"];
  [v7 setOperationalProp:v44];

  [v7 setLocalFlags:{objc_msgSend(v4, "decodeInt64ForKey:", @"localFlags"}];
  [v7 setRemoteFlags:{objc_msgSend(v4, "decodeInt64ForKey:", @"remoteFlags"}];
  v45 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bluetoothMACAddress"];
  v46 = v45;
  if (v45)
  {
    v47 = v45;
    v48 = [v47 length];
    if (v48)
    {
      v49 = +[NSData _newZeroingDataWithBytes:length:](NSData, "_newZeroingDataWithBytes:length:", [v47 bytes], v48);
    }

    else
    {
      v49 = objc_alloc_init(NSData);
    }

    v50 = v49;

    [v7 setBluetoothMACAddress:v50];
  }

  else
  {
    [v7 setBluetoothMACAddress:0];
  }

  v51 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localInnerIPv6AddressBytesClassD"];
  v52 = v51;
  if (v51)
  {
    v53 = v51;
    v54 = [v53 length];
    if (v54)
    {
      v55 = +[NSData _newZeroingDataWithBytes:length:](NSData, "_newZeroingDataWithBytes:length:", [v53 bytes], v54);
    }

    else
    {
      v55 = objc_alloc_init(NSData);
    }

    v56 = v55;

    [v7 setLocalInnerIPv6AddressBytesClassD:v56];
  }

  else
  {
    [v7 setLocalInnerIPv6AddressBytesClassD:0];
  }

  v57 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"remoteInnerIPv6AddressBytesClassD"];
  v58 = v57;
  if (v57)
  {
    v59 = v57;
    v60 = [v59 length];
    if (v60)
    {
      v61 = +[NSData _newZeroingDataWithBytes:length:](NSData, "_newZeroingDataWithBytes:length:", [v59 bytes], v60);
    }

    else
    {
      v61 = objc_alloc_init(NSData);
    }

    v62 = v61;

    [v7 setRemoteInnerIPv6AddressBytesClassD:v62];
  }

  else
  {
    [v7 setRemoteInnerIPv6AddressBytesClassD:0];
  }

  v63 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localInnerIPv6AddressBytesClassC"];
  v64 = v63;
  if (v63)
  {
    v65 = v63;
    v66 = [v65 length];
    if (v66)
    {
      v67 = +[NSData _newZeroingDataWithBytes:length:](NSData, "_newZeroingDataWithBytes:length:", [v65 bytes], v66);
    }

    else
    {
      v67 = objc_alloc_init(NSData);
    }

    v68 = v67;

    [v7 setLocalInnerIPv6AddressBytesClassC:v68];
  }

  else
  {
    [v7 setLocalInnerIPv6AddressBytesClassC:0];
  }

  v69 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"remoteInnerIPv6AddressBytesClassC"];
  v70 = v69;
  if (v69)
  {
    v71 = v69;
    v72 = [v71 length];
    if (v72)
    {
      v73 = +[NSData _newZeroingDataWithBytes:length:](NSData, "_newZeroingDataWithBytes:length:", [v71 bytes], v72);
    }

    else
    {
      v73 = objc_alloc_init(NSData);
    }

    v74 = v73;

    [v7 setRemoteInnerIPv6AddressBytesClassC:v74];
  }

  else
  {
    [v7 setRemoteInnerIPv6AddressBytesClassC:0];
  }

  v75 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"receivedProxyNotifyPayload"];
  v76 = v75;
  if (v75)
  {
    v77 = v75;
    v78 = [v77 length];
    if (v78)
    {
      v79 = +[NSData _newZeroingDataWithBytes:length:](NSData, "_newZeroingDataWithBytes:length:", [v77 bytes], v78);
    }

    else
    {
      v79 = objc_alloc_init(NSData);
    }

    v80 = v79;

    [v7 setReceivedProxyNotifyPayload:v80];
  }

  else
  {
    [v7 setReceivedProxyNotifyPayload:0];
  }

  v81 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"classDKeys"];
  if (v81)
  {
    if (qword_100229488 != -1)
    {
      dispatch_once(&qword_100229488, &stru_1001FD018);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100229488 != -1)
      {
        dispatch_once(&qword_100229488, &stru_1001FD018);
      }

      _NRLogWithArgs();
    }

    v82 = sub_10015D958([NRDLDDataClassKeychainItems alloc], v81);
    if (v7)
    {
      v83 = *(v7 + 9);
      *(v7 + 9) = v82;

      v7[13] = 1;
    }

    else
    {
    }
  }

  v84 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"outOfBandKey"];
  if (v84)
  {
    if (qword_100229488 != -1)
    {
      dispatch_once(&qword_100229488, &stru_1001FD018);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100229488 != -1)
      {
        dispatch_once(&qword_100229488, &stru_1001FD018);
      }

      _NRLogWithArgs();
    }

    v85 = sub_10015DD58([NRDLDKeychainItemData alloc], v84);
    if (v7)
    {
      v86 = *(v7 + 22);
      *(v7 + 22) = v85;

      v7[13] = 1;
    }

    else
    {
    }
  }

  sub_10015D69C(v7);

  objc_autoreleasePoolPop(v5);
  self = v7;
  v12 = self;
LABEL_99:

  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_autoreleasePoolPush();
  v6 = [objc_opt_class() allocWithZone:a3];
  if (self)
  {
    v7 = sub_10015D20C(v6, self->_nrUUID);
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_10:
    v16 = sub_10015B480();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    self = "[NRDLocalDevice copyWithZone:]";
    if (IsLevelEnabled)
    {
      v18 = sub_10015B480();
      _NRLogWithArgs();
    }

    v5 = _os_log_pack_size();
    v8 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    v19 = *__error();
    v20 = _os_log_pack_fill();
    *v20 = 136446210;
    *(v20 + 4) = "[NRDLocalDevice copyWithZone:]";
    sub_10015B480();
    _NRLogAbortWithPack();
    goto LABEL_13;
  }

  v7 = sub_10015D20C(v6, 0);
  if (!v7)
  {
    goto LABEL_10;
  }

LABEL_3:
  v8 = v7;
  if (self)
  {
    v9 = [(NSUUID *)self->_bluetoothUUID copy];
    [v8 setBluetoothUUID:v9];

    idsDeviceID = self->_idsDeviceID;
    goto LABEL_5;
  }

LABEL_13:
  v21 = [0 copy];
  [v8 setBluetoothUUID:v21];

  idsDeviceID = 0;
LABEL_5:
  v11 = [(NSString *)idsDeviceID copy];
  [v8 setIdsDeviceID:v11];

  if (!self)
  {
    v22 = [0 copy];
    v23 = *(v8 + 21);
    *(v8 + 21) = v22;

    if ((v8[12] & 1) == 0)
    {
      v8[8] = 0;
      v8[13] = 0;
      goto LABEL_48;
    }

    v8[12] = 0;
LABEL_16:
    if ((v8[8] & 1) == 0)
    {
      sub_10015D69C(v8);
      v8[13] = 1;
    }

    if (self)
    {
      goto LABEL_19;
    }

    v64 = v8[12];
    v8[8] = 0;
    v8[13] = 0;
    if (v64)
    {
      goto LABEL_37;
    }

LABEL_48:
    [v8 setDatabaseFlags:0];
    [v8 setPairingProtocolVersion:{objc_msgSend(0, "pairingProtocolVersion")}];
    [v8 setLastSeenInnerLinkVersionHBO:0];
    lastSeenName = 0;
    goto LABEL_21;
  }

  v12 = self->_dateCreated;
  v13 = [(NSDate *)v12 copy];
  v14 = *(v8 + 21);
  *(v8 + 21) = v13;

  isEmptyPairing = self->_isEmptyPairing;
  if (v8[12] != isEmptyPairing)
  {
    v8[12] = isEmptyPairing;
    if (isEmptyPairing)
    {
      sub_10015D3F4(v8);
      goto LABEL_19;
    }

    goto LABEL_16;
  }

LABEL_19:
  v8[8] = self->_isEphemeral;
  v8[13] = self->_isChanged;
  if (v8[12])
  {
    goto LABEL_37;
  }

  [v8 setDatabaseFlags:self->_databaseFlags];
  [v8 setPairingProtocolVersion:{-[NRDLocalDevice pairingProtocolVersion](self, "pairingProtocolVersion")}];
  [v8 setLastSeenInnerLinkVersionHBO:self->_lastSeenInnerLinkVersionHBO];
  lastSeenName = self->_lastSeenName;
LABEL_21:
  v25 = [(NSString *)lastSeenName copy];
  [v8 setLastSeenName:v25];

  if (self)
  {
    v26 = [(NSString *)self->_lastSeenBuildVersion copy];
    [v8 setLastSeenBuildVersion:v26];

    [v8 setAuthMethodUsedForModernPairing:self->_authMethodUsedForModernPairing];
    psm = self->_psm;
  }

  else
  {
    v65 = [0 copy];
    [v8 setLastSeenBuildVersion:v65];

    [v8 setAuthMethodUsedForModernPairing:0];
    psm = 0;
  }

  [v8 setPsm:psm];
  v28 = [(NRDLocalDevice *)self dateRegistered];
  v29 = [v28 copy];
  [v8 setDateRegistered:v29];

  v30 = [(NRDLocalDevice *)self dateEnabled];
  v31 = [v30 copy];
  [v8 setDateEnabled:v31];

  if (self)
  {
    v32 = [(NSUUID *)self->_localIdentity copy];
    [v8 setLocalIdentity:v32];

    remoteIdentity = self->_remoteIdentity;
  }

  else
  {
    v66 = [0 copy];
    [v8 setLocalIdentity:v66];

    remoteIdentity = 0;
  }

  v34 = [(NRDDeviceIdentity *)remoteIdentity copy];
  [v8 setRemoteIdentity:v34];

  if (self)
  {
    v35 = self->_classDKeychainItems;
    v36 = [(NRDLDDataClassKeychainItems *)v35 copy];
    v37 = *(v8 + 9);
    *(v8 + 9) = v36;

    classCKeychainItems = self->_classCKeychainItems;
  }

  else
  {
    v67 = [0 copy];
    v68 = *(v8 + 9);
    *(v8 + 9) = v67;

    classCKeychainItems = 0;
  }

  v39 = classCKeychainItems;
  v40 = [(NRDLDDataClassKeychainItems *)v39 copy];
  v41 = *(v8 + 10);
  *(v8 + 10) = v40;

  if (self)
  {
    v42 = self->_classAKeychainItemsLegacyOnly;
    v43 = [(NRDLDDataClassKeychainItems *)v42 copy];
    v44 = *(v8 + 11);
    *(v8 + 11) = v43;

    outOfBandKeychainItem = self->_outOfBandKeychainItem;
  }

  else
  {
    v69 = [0 copy];
    v70 = *(v8 + 11);
    *(v8 + 11) = v69;

    outOfBandKeychainItem = 0;
  }

  v46 = outOfBandKeychainItem;
  v47 = [(NRDLDKeychainItemData *)v46 copy];
  v48 = *(v8 + 22);
  *(v8 + 22) = v47;

  if (self)
  {
    [v8 setDeviceType:self->_deviceType];
    operationalProp = self->_operationalProp;
  }

  else
  {
    [v8 setDeviceType:0];
    operationalProp = 0;
  }

  v50 = [(NRDeviceOperationalProperties *)operationalProp copy];
  [v8 setOperationalProp:v50];

  if (self)
  {
    [v8 setLocalFlags:self->_localFlags];
    [v8 setRemoteFlags:self->_remoteFlags];
    bluetoothMACAddress = self->_bluetoothMACAddress;
  }

  else
  {
    [v8 setLocalFlags:0];
    [v8 setRemoteFlags:0];
    bluetoothMACAddress = 0;
  }

  v52 = [(NSData *)bluetoothMACAddress copy];
  [v8 setBluetoothMACAddress:v52];

  v53 = [(NRDLocalDevice *)self localInnerIPv6AddressBytesClassD];
  v54 = [v53 copy];
  [v8 setLocalInnerIPv6AddressBytesClassD:v54];

  v55 = [(NRDLocalDevice *)self remoteInnerIPv6AddressBytesClassD];
  v56 = [v55 copy];
  [v8 setRemoteInnerIPv6AddressBytesClassD:v56];

  v57 = [(NRDLocalDevice *)self localInnerIPv6AddressBytesClassC];
  v58 = [v57 copy];
  [v8 setLocalInnerIPv6AddressBytesClassC:v58];

  v59 = [(NRDLocalDevice *)self remoteInnerIPv6AddressBytesClassC];
  v60 = [v59 copy];
  [v8 setRemoteInnerIPv6AddressBytesClassC:v60];

  if (self)
  {
    receivedProxyNotifyPayload = self->_receivedProxyNotifyPayload;
  }

  else
  {
    receivedProxyNotifyPayload = 0;
  }

  v62 = [(NSData *)receivedProxyNotifyPayload copy];
  [v8 setReceivedProxyNotifyPayload:v62];

  if ((v8[8] & 1) == 0)
  {
    sub_10015D69C(v8);
  }

LABEL_37:
  objc_autoreleasePoolPop(v5);
  return v8;
}

- (id)description
{
  v3 = [[NSMutableString alloc] initWithFormat:@"NRDLD["];
  v4 = v3;
  if (!self)
  {
    v10 = [0 UUIDString];
    [v4 appendString:v10];

    goto LABEL_17;
  }

  if (self->_isEmptyPairing)
  {
    [v3 appendString:@"empty pairing:"];
  }

  v5 = [(NSUUID *)self->_nrUUID UUIDString];
  [v4 appendString:v5];

  if (self->_databaseFlags)
  {
    [v4 appendString:{@", R"}];
  }

  if (self->_isEphemeral)
  {
    [v4 appendString:{@", Epml"}];
    databaseFlags = self->_databaseFlags;
    if ((databaseFlags & 2) == 0)
    {
LABEL_8:
      if ((databaseFlags & 0x20) == 0)
      {
        goto LABEL_9;
      }

LABEL_22:
      [v4 appendString:{@", IDS"}];
      bluetoothUUID = self->_bluetoothUUID;
      if (!bluetoothUUID)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else
  {
    databaseFlags = self->_databaseFlags;
    if ((databaseFlags & 2) == 0)
    {
      goto LABEL_8;
    }
  }

  [v4 appendString:{@", E"}];
  if ((self->_databaseFlags & 0x20) != 0)
  {
    goto LABEL_22;
  }

LABEL_9:
  bluetoothUUID = self->_bluetoothUUID;
  if (bluetoothUUID)
  {
LABEL_10:
    [v4 appendFormat:@", BT<%@>", bluetoothUUID];
  }

LABEL_11:
  if (self->_idsDeviceID)
  {
    [v4 appendFormat:@", IDSDeviceID<%@>", self->_idsDeviceID];
  }

  v8 = self->_databaseFlags;
  if ((v8 & 4) != 0)
  {
    [v4 appendFormat:@", ALT-ACC"];
    v8 = self->_databaseFlags;
  }

  if ((v8 & 8) != 0)
  {
    [v4 appendFormat:@", EXTERNAL"];
  }

LABEL_17:
  [v4 appendString:@"]"];

  return v4;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v15 = a5;
  v7 = sub_100003490();
  dispatch_assert_queue_V2(v7);

  v8 = [v15 objectForKeyedSubscript:NSKeyValueChangeOldKey];
  v9 = +[NSNull null];
  v10 = [v8 isEqual:v9];

  if (v10)
  {

    v8 = 0;
  }

  v11 = [v15 objectForKeyedSubscript:NSKeyValueChangeNewKey];
  v12 = +[NSNull null];
  v13 = [v11 isEqual:v12];

  if (v13)
  {

    v11 = 0;
  }

  if (v8 != v11)
  {
    v14 = [v8 isEqual:v11];
    if (self)
    {
      if ((v14 & 1) == 0)
      {
        self->_isChanged = 1;
      }
    }
  }
}

- (void)dealloc
{
  sub_10015D3F4(self);
  v3.receiver = self;
  v3.super_class = NRDLocalDevice;
  [(NRDLocalDevice *)&v3 dealloc];
}

@end