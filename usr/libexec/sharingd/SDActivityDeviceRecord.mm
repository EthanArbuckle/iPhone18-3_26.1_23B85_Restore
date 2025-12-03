@interface SDActivityDeviceRecord
- ($126081439F6B1623D1821CF14B226F9E)lastActivityAdvertisement;
- (NSData)lastAdvertisementPayload;
- (NSDictionary)lastAdvertisementOptions;
- (SDActivityDecryptionKey)decryptionKey;
- (SDActivityDeviceRecord)initWithDevice:(id)device;
- (SFActivityAdvertisement)clientAdvertisement;
- (id)description;
- (unsigned)lastCounter;
- (void)updateWithRawAdvertisementData:(id)data receivedViaScanning:(BOOL)scanning isReplay:(BOOL)replay newAdvertisementHandler:(id)handler;
@end

@implementation SDActivityDeviceRecord

- (SDActivityDeviceRecord)initWithDevice:(id)device
{
  deviceCopy = device;
  if (deviceCopy)
  {
    v10.receiver = self;
    v10.super_class = SDActivityDeviceRecord;
    v6 = [(SDActivityDeviceRecord *)&v10 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_idsDevice, device);
    }

    self = v7;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  uniqueIDOverride = [(IDSDevice *)self->_idsDevice uniqueIDOverride];
  decryptionKey = [(SDActivityDeviceRecord *)self decryptionKey];
  v7 = @"YES";
  if (!decryptionKey)
  {
    v7 = @"NO";
  }

  v8 = [NSString stringWithFormat:@"<%@: %p, deviceUniqueID:%@, hasKey:%@, lastReceivedAdvertisementDate:%@>", v4, self, uniqueIDOverride, v7, self->_lastReceivedAdvertisementDate];

  return v8;
}

- (void)updateWithRawAdvertisementData:(id)data receivedViaScanning:(BOOL)scanning isReplay:(BOOL)replay newAdvertisementHandler:(id)handler
{
  replayCopy = replay;
  dataCopy = data;
  handlerCopy = handler;
  if (![(NSData *)self->_lastRawAdvertisementData isEqual:dataCopy]|| self->_disableDuplicateFilterOnce || replayCopy)
  {
    v66 = sub_100108C78(dataCopy);
    v67 = v12;
    v68 = v13;
    if (!scanning)
    {
      v32 = [dataCopy copy];
      lastRawAdvertisementData = self->_lastRawAdvertisementData;
      self->_lastRawAdvertisementData = v32;

      v34 = objc_opt_new();
      lastReceivedAdvertisementDate = self->_lastReceivedAdvertisementDate;
      self->_lastReceivedAdvertisementDate = v34;

      v36 = [NSData dataWithBytes:&v66 length:14];
      lastAdvertisementData = self->_lastAdvertisementData;
      self->_lastAdvertisementData = v36;

      clientAdvertisement = [(SDActivityDeviceRecord *)self clientAdvertisement];
      handlerCopy[2](handlerCopy, clientAdvertisement, 0);
LABEL_23:

      goto LABEL_24;
    }

    v14 = handoff_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v52 = SFHexStringForData();
      uniqueIDOverride = [(IDSDevice *)self->_idsDevice uniqueIDOverride];
      v54 = uniqueIDOverride;
      v55 = @"NO";
      disableDuplicateFilterOnce = self->_disableDuplicateFilterOnce;
      *buf = 138413058;
      *v72 = v52;
      if (replayCopy)
      {
        v57 = @"YES";
      }

      else
      {
        v57 = @"NO";
      }

      *&v72[8] = 2112;
      if (disableDuplicateFilterOnce)
      {
        v55 = @"YES";
      }

      *v73 = uniqueIDOverride;
      *&v73[8] = 2112;
      *v74 = v57;
      *&v74[8] = 2112;
      v75 = v55;
      _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "Received a new rawAdvertisementData %@ from %@ (isReplay:%@, disabledDuplicateFilter:%@)", buf, 0x2Au);
    }

    clientAdvertisement = [(SDActivityDeviceRecord *)self decryptionKey];
    v16 = sub_100108D18(v66);
    if (clientAdvertisement)
    {
      if (self->_disableDuplicateFilterOnce && v16 == [(SDActivityDeviceRecord *)self lastCounter]|| v16 > [(SDActivityDeviceRecord *)self lastCounter])
      {
        self->_disableDuplicateFilterOnce = 0;
        v17 = [dataCopy copy];
        v18 = self->_lastRawAdvertisementData;
        self->_lastRawAdvertisementData = v17;

        v58 = [NSData dataWithBytes:&v66 + 4 length:10];
        decryptionKey = [(SDActivityDeviceRecord *)self decryptionKey];
        v20 = [decryptionKey getResultWhileDecryptingBytesInPlace:&v66 + 4 andCounter:&v66 + 1 withTag:BYTE3(v66) version:v66];

        if (v20)
        {
          v21 = objc_opt_new();
          v22 = self->_lastReceivedAdvertisementDate;
          self->_lastReceivedAdvertisementDate = v21;

          v23 = [NSData dataWithBytes:&v66 length:14];
          v24 = self->_lastAdvertisementData;
          self->_lastAdvertisementData = v23;

          v25 = handoff_log();
          v26 = v58;
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            v27 = SFHexStringForData();
            v28 = self->_lastAdvertisementData;
            v29 = SFHexStringForData();
            lastCounter = [(SDActivityDeviceRecord *)self lastCounter];
            *buf = 138412802;
            *v72 = v27;
            *&v72[8] = 2112;
            *v73 = v29;
            *&v73[8] = 1024;
            *v74 = lastCounter;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Successfully decrypted advertisement (sharing flags + advertisementPayload): %@ => %@, counter: %u", buf, 0x1Cu);
          }

          clientAdvertisement2 = [(SDActivityDeviceRecord *)self clientAdvertisement];
          handlerCopy[2](handlerCopy, clientAdvertisement2, 0);
          goto LABEL_22;
        }

        p_super = handoff_log();
        v50 = os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR);
        if (replayCopy)
        {
          if (v50)
          {
            sub_10007171C(self);
          }

          v69 = NSLocalizedDescriptionKey;
          v70 = @"Failed to decrypt advertisement";
          clientAdvertisement2 = [NSDictionary dictionaryWithObjects:&v70 forKeys:&v69 count:1];
          v51 = [NSError errorWithDomain:NSPOSIXErrorDomain code:94 userInfo:clientAdvertisement2];
          (handlerCopy)[2](handlerCopy, 0, v51);

          goto LABEL_21;
        }

        if (v50)
        {
          sub_10007166C(self);
        }

LABEL_20:

        v46 = +[SDActivityPayloadManager sharedPayloadManager];
        uniqueIDOverride2 = [(IDSDevice *)self->_idsDevice uniqueIDOverride];
        decryptionKey2 = [(SDActivityDeviceRecord *)self decryptionKey];
        keyIdentifier = [decryptionKey2 keyIdentifier];
        v59[0] = _NSConcreteStackBlock;
        v59[1] = 3221225472;
        v59[2] = sub_100070F6C;
        v59[3] = &unk_1008CE108;
        v60 = clientAdvertisement;
        selfCopy = self;
        v62 = dataCopy;
        scanningCopy = scanning;
        v63 = handlerCopy;
        v64 = v16;
        [v46 sendEncryptionKeyRequestToDeviceIdentifier:uniqueIDOverride2 previousKeyIdentifier:keyIdentifier completionHandler:v59];

        clientAdvertisement2 = v60;
LABEL_21:
        v26 = v58;
LABEL_22:

        goto LABEL_23;
      }

      v38 = handoff_log();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        lastCounter2 = [(SDActivityDeviceRecord *)self lastCounter];
        uniqueIDOverride3 = [(IDSDevice *)self->_idsDevice uniqueIDOverride];
        v43 = SFHexStringForData();
        *buf = 67109890;
        *v72 = v16;
        *&v72[4] = 1024;
        *&v72[6] = lastCounter2;
        *v73 = 2112;
        *&v73[2] = uniqueIDOverride3;
        *v74 = 2112;
        *&v74[2] = v43;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "New counter %d is not greater than previous %d from %@ with rawAdvertisementData %@. Requesting new key", buf, 0x22u);
      }
    }

    else
    {
      v38 = handoff_log();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        uniqueID = [(IDSDevice *)self->_idsDevice uniqueID];
        v40 = SFHexStringForData();
        *buf = 138412546;
        *v72 = uniqueID;
        *&v72[8] = 2112;
        *v73 = v40;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "No current key to decrypt advertisement from %@ with rawAdvertisementData %@. Requesting key", buf, 0x16u);
      }
    }

    self->_disableDuplicateFilterOnce = 0;
    v44 = [dataCopy copy];
    v58 = 0;
    p_super = &self->_lastRawAdvertisementData->super;
    self->_lastRawAdvertisementData = v44;
    goto LABEL_20;
  }

LABEL_24:
}

- (SDActivityDecryptionKey)decryptionKey
{
  v3 = +[SDActivityEncryptionManager sharedEncryptionManager];
  uniqueIDOverride = [(IDSDevice *)self->_idsDevice uniqueIDOverride];
  v5 = [v3 decryptionKeyForDeviceIdentifier:uniqueIDOverride];

  lastUsedKeyIdentifier = self->_lastUsedKeyIdentifier;
  keyIdentifier = [v5 keyIdentifier];
  LOBYTE(lastUsedKeyIdentifier) = [(NSUUID *)lastUsedKeyIdentifier isEqual:keyIdentifier];

  if ((lastUsedKeyIdentifier & 1) == 0)
  {
    keyIdentifier2 = [v5 keyIdentifier];
    v9 = self->_lastUsedKeyIdentifier;
    self->_lastUsedKeyIdentifier = keyIdentifier2;

    lastAdvertisementData = self->_lastAdvertisementData;
    self->_lastAdvertisementData = 0;
  }

  return v5;
}

- ($126081439F6B1623D1821CF14B226F9E)lastActivityAdvertisement
{
  lastAdvertisementData = self->_lastAdvertisementData;
  if (!lastAdvertisementData)
  {
    lastAdvertisementData = self->_lastRawAdvertisementData;
  }

  v4 = sub_100108C78(lastAdvertisementData);
  v6 = v5 & 0xFFFFFFFFFFFFLL;
  result.var8 = v6;
  result.var9 = BYTE1(v6);
  result.var10 = BYTE2(v6);
  result.var11 = BYTE3(v6);
  result.var12 = BYTE4(v6);
  result.var13 = BYTE5(v6);
  result.var0 = v4;
  result.var1 = BYTE1(v4);
  result.var2 = BYTE2(v4);
  result.var3 = BYTE3(v4);
  result.var4 = BYTE4(v4);
  result.var5 = BYTE5(v4);
  result.var6 = BYTE6(v4);
  result.var7 = HIBYTE(v4);
  return result;
}

- (unsigned)lastCounter
{
  if (self->_lastAdvertisementData)
  {
    lastActivityAdvertisement = [(SDActivityDeviceRecord *)self lastActivityAdvertisement];

    return sub_100108D18(lastActivityAdvertisement);
  }

  else
  {
    decryptionKey = [(SDActivityDeviceRecord *)self decryptionKey];

    if (decryptionKey)
    {
      decryptionKey2 = [(SDActivityDeviceRecord *)self decryptionKey];
      LOWORD(decryptionKey) = [decryptionKey2 lastUsedCounter] - 1;
    }

    return decryptionKey;
  }
}

- (NSData)lastAdvertisementPayload
{
  if (self->_lastAdvertisementData)
  {
    lastActivityAdvertisement = [(SDActivityDeviceRecord *)self lastActivityAdvertisement];
    v5 = sub_100108D20(lastActivityAdvertisement, v4 & 0xFFFFFFFFFFFFLL);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSDictionary)lastAdvertisementOptions
{
  if (self->_lastAdvertisementData)
  {
    lastActivityAdvertisement = [(SDActivityDeviceRecord *)self lastActivityAdvertisement];
    v6 = sub_100108D9C(lastActivityAdvertisement, v5 & 0xFFFFFFFFFFFFLL, [(IDSDevice *)self->_idsDevice isDefaultPairedDevice]);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (SFActivityAdvertisement)clientAdvertisement
{
  v3 = sub_100108EE8(self->_idsDevice);
  v4 = [SFActivityAdvertisement alloc];
  lastActivityAdvertisement = [(SDActivityDeviceRecord *)self lastActivityAdvertisement];
  lastAdvertisementPayload = [(SDActivityDeviceRecord *)self lastAdvertisementPayload];
  lastAdvertisementOptions = [(SDActivityDeviceRecord *)self lastAdvertisementOptions];
  v8 = [v4 initWithAdvertisementVersion:lastActivityAdvertisement advertisementPayload:lastAdvertisementPayload options:lastAdvertisementOptions device:v3];

  return v8;
}

@end