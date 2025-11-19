@interface SDActivityDeviceRecord
- ($126081439F6B1623D1821CF14B226F9E)lastActivityAdvertisement;
- (NSData)lastAdvertisementPayload;
- (NSDictionary)lastAdvertisementOptions;
- (SDActivityDecryptionKey)decryptionKey;
- (SDActivityDeviceRecord)initWithDevice:(id)a3;
- (SFActivityAdvertisement)clientAdvertisement;
- (id)description;
- (unsigned)lastCounter;
- (void)updateWithRawAdvertisementData:(id)a3 receivedViaScanning:(BOOL)a4 isReplay:(BOOL)a5 newAdvertisementHandler:(id)a6;
@end

@implementation SDActivityDeviceRecord

- (SDActivityDeviceRecord)initWithDevice:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v10.receiver = self;
    v10.super_class = SDActivityDeviceRecord;
    v6 = [(SDActivityDeviceRecord *)&v10 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_idsDevice, a3);
    }

    self = v7;
    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(IDSDevice *)self->_idsDevice uniqueIDOverride];
  v6 = [(SDActivityDeviceRecord *)self decryptionKey];
  v7 = @"YES";
  if (!v6)
  {
    v7 = @"NO";
  }

  v8 = [NSString stringWithFormat:@"<%@: %p, deviceUniqueID:%@, hasKey:%@, lastReceivedAdvertisementDate:%@>", v4, self, v5, v7, self->_lastReceivedAdvertisementDate];

  return v8;
}

- (void)updateWithRawAdvertisementData:(id)a3 receivedViaScanning:(BOOL)a4 isReplay:(BOOL)a5 newAdvertisementHandler:(id)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a6;
  if (![(NSData *)self->_lastRawAdvertisementData isEqual:v10]|| self->_disableDuplicateFilterOnce || v7)
  {
    v66 = sub_100108C78(v10);
    v67 = v12;
    v68 = v13;
    if (!a4)
    {
      v32 = [v10 copy];
      lastRawAdvertisementData = self->_lastRawAdvertisementData;
      self->_lastRawAdvertisementData = v32;

      v34 = objc_opt_new();
      lastReceivedAdvertisementDate = self->_lastReceivedAdvertisementDate;
      self->_lastReceivedAdvertisementDate = v34;

      v36 = [NSData dataWithBytes:&v66 length:14];
      lastAdvertisementData = self->_lastAdvertisementData;
      self->_lastAdvertisementData = v36;

      v15 = [(SDActivityDeviceRecord *)self clientAdvertisement];
      v11[2](v11, v15, 0);
LABEL_23:

      goto LABEL_24;
    }

    v14 = handoff_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v52 = SFHexStringForData();
      v53 = [(IDSDevice *)self->_idsDevice uniqueIDOverride];
      v54 = v53;
      v55 = @"NO";
      disableDuplicateFilterOnce = self->_disableDuplicateFilterOnce;
      *buf = 138413058;
      *v72 = v52;
      if (v7)
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

      *v73 = v53;
      *&v73[8] = 2112;
      *v74 = v57;
      *&v74[8] = 2112;
      v75 = v55;
      _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "Received a new rawAdvertisementData %@ from %@ (isReplay:%@, disabledDuplicateFilter:%@)", buf, 0x2Au);
    }

    v15 = [(SDActivityDeviceRecord *)self decryptionKey];
    v16 = sub_100108D18(v66);
    if (v15)
    {
      if (self->_disableDuplicateFilterOnce && v16 == [(SDActivityDeviceRecord *)self lastCounter]|| v16 > [(SDActivityDeviceRecord *)self lastCounter])
      {
        self->_disableDuplicateFilterOnce = 0;
        v17 = [v10 copy];
        v18 = self->_lastRawAdvertisementData;
        self->_lastRawAdvertisementData = v17;

        v58 = [NSData dataWithBytes:&v66 + 4 length:10];
        v19 = [(SDActivityDeviceRecord *)self decryptionKey];
        v20 = [v19 getResultWhileDecryptingBytesInPlace:&v66 + 4 andCounter:&v66 + 1 withTag:BYTE3(v66) version:v66];

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
            v30 = [(SDActivityDeviceRecord *)self lastCounter];
            *buf = 138412802;
            *v72 = v27;
            *&v72[8] = 2112;
            *v73 = v29;
            *&v73[8] = 1024;
            *v74 = v30;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Successfully decrypted advertisement (sharing flags + advertisementPayload): %@ => %@, counter: %u", buf, 0x1Cu);
          }

          v31 = [(SDActivityDeviceRecord *)self clientAdvertisement];
          v11[2](v11, v31, 0);
          goto LABEL_22;
        }

        p_super = handoff_log();
        v50 = os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR);
        if (v7)
        {
          if (v50)
          {
            sub_10007171C(self);
          }

          v69 = NSLocalizedDescriptionKey;
          v70 = @"Failed to decrypt advertisement";
          v31 = [NSDictionary dictionaryWithObjects:&v70 forKeys:&v69 count:1];
          v51 = [NSError errorWithDomain:NSPOSIXErrorDomain code:94 userInfo:v31];
          (v11)[2](v11, 0, v51);

          goto LABEL_21;
        }

        if (v50)
        {
          sub_10007166C(self);
        }

LABEL_20:

        v46 = +[SDActivityPayloadManager sharedPayloadManager];
        v47 = [(IDSDevice *)self->_idsDevice uniqueIDOverride];
        v48 = [(SDActivityDeviceRecord *)self decryptionKey];
        v49 = [v48 keyIdentifier];
        v59[0] = _NSConcreteStackBlock;
        v59[1] = 3221225472;
        v59[2] = sub_100070F6C;
        v59[3] = &unk_1008CE108;
        v60 = v15;
        v61 = self;
        v62 = v10;
        v65 = a4;
        v63 = v11;
        v64 = v16;
        [v46 sendEncryptionKeyRequestToDeviceIdentifier:v47 previousKeyIdentifier:v49 completionHandler:v59];

        v31 = v60;
LABEL_21:
        v26 = v58;
LABEL_22:

        goto LABEL_23;
      }

      v38 = handoff_log();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        v41 = [(SDActivityDeviceRecord *)self lastCounter];
        v42 = [(IDSDevice *)self->_idsDevice uniqueIDOverride];
        v43 = SFHexStringForData();
        *buf = 67109890;
        *v72 = v16;
        *&v72[4] = 1024;
        *&v72[6] = v41;
        *v73 = 2112;
        *&v73[2] = v42;
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
        v39 = [(IDSDevice *)self->_idsDevice uniqueID];
        v40 = SFHexStringForData();
        *buf = 138412546;
        *v72 = v39;
        *&v72[8] = 2112;
        *v73 = v40;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "No current key to decrypt advertisement from %@ with rawAdvertisementData %@. Requesting key", buf, 0x16u);
      }
    }

    self->_disableDuplicateFilterOnce = 0;
    v44 = [v10 copy];
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
  v4 = [(IDSDevice *)self->_idsDevice uniqueIDOverride];
  v5 = [v3 decryptionKeyForDeviceIdentifier:v4];

  lastUsedKeyIdentifier = self->_lastUsedKeyIdentifier;
  v7 = [v5 keyIdentifier];
  LOBYTE(lastUsedKeyIdentifier) = [(NSUUID *)lastUsedKeyIdentifier isEqual:v7];

  if ((lastUsedKeyIdentifier & 1) == 0)
  {
    v8 = [v5 keyIdentifier];
    v9 = self->_lastUsedKeyIdentifier;
    self->_lastUsedKeyIdentifier = v8;

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
    v3 = [(SDActivityDeviceRecord *)self lastActivityAdvertisement];

    return sub_100108D18(v3);
  }

  else
  {
    v5 = [(SDActivityDeviceRecord *)self decryptionKey];

    if (v5)
    {
      v6 = [(SDActivityDeviceRecord *)self decryptionKey];
      LOWORD(v5) = [v6 lastUsedCounter] - 1;
    }

    return v5;
  }
}

- (NSData)lastAdvertisementPayload
{
  if (self->_lastAdvertisementData)
  {
    v3 = [(SDActivityDeviceRecord *)self lastActivityAdvertisement];
    v5 = sub_100108D20(v3, v4 & 0xFFFFFFFFFFFFLL);
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
    v4 = [(SDActivityDeviceRecord *)self lastActivityAdvertisement];
    v6 = sub_100108D9C(v4, v5 & 0xFFFFFFFFFFFFLL, [(IDSDevice *)self->_idsDevice isDefaultPairedDevice]);
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
  v5 = [(SDActivityDeviceRecord *)self lastActivityAdvertisement];
  v6 = [(SDActivityDeviceRecord *)self lastAdvertisementPayload];
  v7 = [(SDActivityDeviceRecord *)self lastAdvertisementOptions];
  v8 = [v4 initWithAdvertisementVersion:v5 advertisementPayload:v6 options:v7 device:v3];

  return v8;
}

@end