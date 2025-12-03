@interface CARCarPlayServiceMessageStartSession
- (CARCarPlayServiceMessageStartSession)initWithDictionaryRepresentation:(id)representation;
- (CARCarPlayServiceMessageStartSession)initWithSSID:(id)d passphrase:(id)passphrase channel:(id)channel securityType:(id)type wirelessIPs:(id)ps wiredIPs:(id)iPs port:(id)port deviceID:(id)self0 publicKey:(id)self1 sourceVersion:(id)self2 sdkVersion:(id)self3 assetIdentifier:(id)self4 assetVersion:(id)self5;
- (NSString)description;
- (id)dictionaryRepresentation;
@end

@implementation CARCarPlayServiceMessageStartSession

- (CARCarPlayServiceMessageStartSession)initWithSSID:(id)d passphrase:(id)passphrase channel:(id)channel securityType:(id)type wirelessIPs:(id)ps wiredIPs:(id)iPs port:(id)port deviceID:(id)self0 publicKey:(id)self1 sourceVersion:(id)self2 sdkVersion:(id)self3 assetIdentifier:(id)self4 assetVersion:(id)self5
{
  dCopy = d;
  passphraseCopy = passphrase;
  passphraseCopy2 = passphrase;
  channelCopy = channel;
  channelCopy2 = channel;
  typeCopy = type;
  typeCopy2 = type;
  psCopy = ps;
  psCopy2 = ps;
  iPsCopy = iPs;
  portCopy = port;
  iDCopy = iD;
  keyCopy = key;
  versionCopy = version;
  sdkVersionCopy = sdkVersion;
  identifierCopy = identifier;
  assetVersionCopy = assetVersion;
  v42.receiver = self;
  v42.super_class = CARCarPlayServiceMessageStartSession;
  v25 = [(CARCarPlayServiceMessageStartSession *)&v42 init];
  v26 = v25;
  if (v25)
  {
    objc_storeStrong(&v25->_SSID, d);
    objc_storeStrong(&v26->_passphrase, passphraseCopy);
    objc_storeStrong(&v26->_channel, channelCopy);
    objc_storeStrong(&v26->_securityType, typeCopy);
    objc_storeStrong(&v26->_wirelessIPs, psCopy);
    objc_storeStrong(&v26->_wiredIPs, iPs);
    objc_storeStrong(&v26->_port, port);
    objc_storeStrong(&v26->_deviceID, iD);
    objc_storeStrong(&v26->_publicKey, key);
    objc_storeStrong(&v26->_sourceVersion, version);
    objc_storeStrong(&v26->_sdkVersion, sdkVersion);
    objc_storeStrong(&v26->_assetIdentifier, identifier);
    objc_storeStrong(&v26->_assetVersion, assetVersion);
  }

  return v26;
}

- (NSString)description
{
  v19.receiver = self;
  v19.super_class = CARCarPlayServiceMessageStartSession;
  v18 = [(CARCarPlayServiceMessageStartSession *)&v19 description];
  sSID = [(CARCarPlayServiceMessageStartSession *)self SSID];
  passphrase = [(CARCarPlayServiceMessageStartSession *)self passphrase];
  channel = [(CARCarPlayServiceMessageStartSession *)self channel];
  securityType = [(CARCarPlayServiceMessageStartSession *)self securityType];
  wirelessIPs = [(CARCarPlayServiceMessageStartSession *)self wirelessIPs];
  wiredIPs = [(CARCarPlayServiceMessageStartSession *)self wiredIPs];
  port = [(CARCarPlayServiceMessageStartSession *)self port];
  deviceID = [(CARCarPlayServiceMessageStartSession *)self deviceID];
  publicKey = [(CARCarPlayServiceMessageStartSession *)self publicKey];
  sourceVersion = [(CARCarPlayServiceMessageStartSession *)self sourceVersion];
  sdkVersion = [(CARCarPlayServiceMessageStartSession *)self sdkVersion];
  assetIdentifier = [(CARCarPlayServiceMessageStartSession *)self assetIdentifier];
  assetVersion = [(CARCarPlayServiceMessageStartSession *)self assetVersion];
  v15 = [NSString stringWithFormat:@"%@ {ssid: %@, pass: %@, channel: %@, security: %@, wirelessIPs: %@, wiredIPs: %@, port: %@, deviceID: %@, publicKey: %@, srcVersion: %@, sdkVersion: %@, assetID: %@, assetVersion: %@}", v18, sSID, passphrase, channel, securityType, wirelessIPs, wiredIPs, port, deviceID, publicKey, sourceVersion, sdkVersion, assetIdentifier, assetVersion];

  return v15;
}

- (CARCarPlayServiceMessageStartSession)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  if (representationCopy)
  {
    objc_opt_class();
    v5 = [representationCopy objectForKey:@"wireless"];
    if (v5 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    if (!v6)
    {
      v8 = sub_100002A68(2uLL);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_100085860();
      }

      selfCopy = 0;
      goto LABEL_127;
    }

    objc_opt_class();
    v7 = [v6 objectForKey:@"SSID"];
    if (v7 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    if (!v8)
    {
      v11 = sub_100002A68(2uLL);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_100085DD0();
      }

      selfCopy = 0;
      goto LABEL_126;
    }

    objc_opt_class();
    v10 = [v6 objectForKey:@"passphrase"];
    if (v10 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    if (!v11)
    {
      v13 = sub_100002A68(2uLL);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_100085D5C();
      }

      selfCopy = 0;
      goto LABEL_125;
    }

    objc_opt_class();
    v12 = [v6 objectForKey:@"channel"];
    if (v12 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    if (!v13)
    {
      v15 = sub_100002A68(2uLL);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_100085CE8();
      }

      selfCopy = 0;
      goto LABEL_124;
    }

    objc_opt_class();
    v14 = [v6 objectForKey:@"securityType"];
    if (v14 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    if (v15)
    {
      objc_opt_class();
      v16 = [v6 objectForKey:@"ipAddresses"];
      if (v16 && (objc_opt_isKindOfClass() & 1) != 0)
      {
        v17 = v16;
      }

      else
      {
        v17 = 0;
      }

      if (v17)
      {
        v74 = v15;
        v75 = v13;
        v83 = 0u;
        v84 = 0u;
        v81 = 0u;
        v82 = 0u;
        obj = v17;
        v18 = [obj countByEnumeratingWithState:&v81 objects:v86 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v82;
          while (2)
          {
            for (i = 0; i != v19; i = i + 1)
            {
              if (*v82 != v20)
              {
                objc_enumerationMutation(obj);
              }

              v22 = *(*(&v81 + 1) + 8 * i);
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                v17 = obj;

                selfCopy = 0;
                v15 = v74;
                v13 = v75;
                goto LABEL_123;
              }
            }

            v19 = [obj countByEnumeratingWithState:&v81 objects:v86 count:16];
            if (v19)
            {
              continue;
            }

            break;
          }
        }

        objc_opt_class();
        v23 = [representationCopy objectForKey:@"wired"];
        if (v23 && (objc_opt_isKindOfClass() & 1) != 0)
        {
          v24 = v23;
        }

        else
        {
          v24 = 0;
        }

        objc_opt_class();
        v26 = [v24 objectForKey:@"ipAddresses"];
        if (v26 && (objc_opt_isKindOfClass() & 1) != 0)
        {
          v27 = v26;
        }

        else
        {
          v27 = 0;
        }

        v72 = v27;
        v73 = v24;
        if (!v27 && v24)
        {
          v28 = sub_100002A68(2uLL);
          v15 = v74;
          v13 = v75;
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            sub_100085C00();
          }

          selfCopy = 0;
          v17 = obj;
          goto LABEL_121;
        }

        v71 = v11;
        v79 = 0u;
        v80 = 0u;
        v77 = 0u;
        v78 = 0u;
        v29 = v27;
        v30 = [v29 countByEnumeratingWithState:&v77 objects:v85 count:16];
        if (v30)
        {
          v31 = v30;
          v32 = *v78;
          while (2)
          {
            for (j = 0; j != v31; j = j + 1)
            {
              if (*v78 != v32)
              {
                objc_enumerationMutation(v29);
              }

              v34 = *(*(&v77 + 1) + 8 * j);
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                selfCopy = 0;
                v28 = v29;
                v15 = v74;
                v13 = v75;
                v17 = obj;
                v11 = v71;
                goto LABEL_121;
              }
            }

            v31 = [v29 countByEnumeratingWithState:&v77 objects:v85 count:16];
            if (v31)
            {
              continue;
            }

            break;
          }
        }

        if (v73 && ![v29 count])
        {
          selfCopy = 0;
          v15 = v74;
          v13 = v75;
          v17 = obj;
          v11 = v71;
LABEL_122:

          goto LABEL_123;
        }

        v66 = v29;
        v35 = objc_opt_class();
        v36 = [representationCopy objectForKey:@"port"];
        v37 = sub_10003821C(v35, v36);

        v28 = v37;
        v13 = v75;
        v11 = v71;
        if (!v37)
        {
          v70 = sub_100002A68(2uLL);
          if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
          {
            sub_100085B8C();
          }

          selfCopy = 0;
          v15 = v74;
          v17 = obj;
          goto LABEL_120;
        }

        v68 = v37;
        v38 = objc_opt_class();
        v39 = [representationCopy objectForKey:@"deviceID"];
        v40 = sub_10003821C(v38, v39);

        v70 = v40;
        if (!v40)
        {
          v69 = sub_100002A68(2uLL);
          v15 = v74;
          if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
          {
            sub_100085B18();
          }

          selfCopy = 0;
          v17 = obj;
          v28 = v68;
          goto LABEL_119;
        }

        v41 = objc_opt_class();
        v42 = [representationCopy objectForKey:@"publicKey"];
        v43 = sub_10003821C(v41, v42);

        v69 = v43;
        if (!v43)
        {
          v65 = sub_100002A68(2uLL);
          if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
          {
            sub_100085AA4();
          }

          selfCopy = 0;
          v15 = v74;
          v17 = obj;
          v28 = v68;
          goto LABEL_118;
        }

        v44 = objc_opt_class();
        v45 = [representationCopy objectForKey:@"sourceVersion"];
        v46 = sub_10003821C(v44, v45);

        v65 = v46;
        if (!v46)
        {
          v64 = sub_100002A68(2uLL);
          v15 = v74;
          v17 = obj;
          v28 = v68;
          if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
          {
            sub_100085A30();
          }

          selfCopy = 0;
          goto LABEL_117;
        }

        v47 = objc_opt_class();
        v48 = [representationCopy objectForKey:@"sdkVersion"];
        v49 = sub_10003821C(v47, v48);

        v64 = v49;
        if (!v49)
        {
          v63 = sub_100002A68(2uLL);
          if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
          {
            sub_1000859BC();
          }

          selfCopy = 0;
          v15 = v74;
          v17 = obj;
          v28 = v68;
          goto LABEL_116;
        }

        v50 = objc_opt_class();
        v51 = [representationCopy objectForKey:@"asset"];
        v52 = sub_10003821C(v50, v51);

        v63 = v52;
        if (v52)
        {
          v53 = objc_opt_class();
          v54 = [v52 objectForKey:@"id"];
          v55 = sub_10003821C(v53, v54);

          v62 = v55;
          if (!v55)
          {
            v62 = sub_100002A68(2uLL);
            if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
            {
              sub_100085948();
            }

            selfCopy = 0;
            v15 = v74;
            v13 = v75;
            v17 = obj;
            v28 = v68;
            v11 = v71;
            goto LABEL_115;
          }

          v56 = objc_opt_class();
          v57 = [v52 objectForKey:@"version"];
          v58 = sub_10003821C(v56, v57);

          if (!v58)
          {
            v67 = sub_100002A68(2uLL);
            if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
            {
              sub_1000858D4();
              v60 = v67;
              selfCopy = 0;
              v15 = v74;
              v13 = v75;
              v17 = obj;
              v28 = v68;
            }

            else
            {
              selfCopy = 0;
              v15 = v74;
              v13 = v75;
              v17 = obj;
              v60 = v67;
              v28 = v68;
            }

            v11 = v71;
            goto LABEL_111;
          }

          v15 = v74;
          v17 = obj;
          v28 = v68;
          v59 = v62;
        }

        else
        {
          v59 = 0;
          v58 = 0;
          v15 = v74;
          v17 = obj;
          v28 = v68;
        }

        v62 = v59;
        self = [(CARCarPlayServiceMessageStartSession *)self initWithSSID:v8 passphrase:v71 channel:v75 securityType:v15 wirelessIPs:v17 wiredIPs:v66 port:v28 deviceID:v70 publicKey:v69 sourceVersion:v65 sdkVersion:v64 assetIdentifier:v59 assetVersion:v58];
        v60 = v58;
        selfCopy = self;
LABEL_111:

LABEL_115:
LABEL_116:

LABEL_117:
LABEL_118:

LABEL_119:
LABEL_120:

LABEL_121:
        goto LABEL_122;
      }

      v25 = sub_100002A68(2uLL);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        sub_100085C00();
      }
    }

    else
    {
      v17 = sub_100002A68(2uLL);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_100085C74();
      }
    }

    selfCopy = 0;
LABEL_123:

LABEL_124:
LABEL_125:

LABEL_126:
LABEL_127:

    goto LABEL_128;
  }

  selfCopy = 0;
LABEL_128:

  return selfCopy;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = +[NSMutableDictionary dictionary];
  sSID = [(CARCarPlayServiceMessageStartSession *)self SSID];
  [v4 cr_setSafeObject:sSID forKey:@"SSID"];

  passphrase = [(CARCarPlayServiceMessageStartSession *)self passphrase];
  [v4 cr_setSafeObject:passphrase forKey:@"passphrase"];

  channel = [(CARCarPlayServiceMessageStartSession *)self channel];
  [v4 cr_setSafeObject:channel forKey:@"channel"];

  securityType = [(CARCarPlayServiceMessageStartSession *)self securityType];
  [v4 cr_setSafeObject:securityType forKey:@"securityType"];

  wirelessIPs = [(CARCarPlayServiceMessageStartSession *)self wirelessIPs];
  [v4 cr_setSafeObject:wirelessIPs forKey:@"ipAddresses"];

  [v3 setObject:v4 forKey:@"wireless"];
  wiredIPs = [(CARCarPlayServiceMessageStartSession *)self wiredIPs];
  v11 = wiredIPs;
  if (wiredIPs)
  {
    v23 = @"ipAddresses";
    v24 = wiredIPs;
    v12 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    [v3 setObject:v12 forKey:@"wired"];
  }

  port = [(CARCarPlayServiceMessageStartSession *)self port];
  [v3 cr_setSafeObject:port forKey:@"port"];

  deviceID = [(CARCarPlayServiceMessageStartSession *)self deviceID];
  [v3 cr_setSafeObject:deviceID forKey:@"deviceID"];

  publicKey = [(CARCarPlayServiceMessageStartSession *)self publicKey];
  [v3 cr_setSafeObject:publicKey forKey:@"publicKey"];

  sourceVersion = [(CARCarPlayServiceMessageStartSession *)self sourceVersion];
  [v3 cr_setSafeObject:sourceVersion forKey:@"sourceVersion"];

  sdkVersion = [(CARCarPlayServiceMessageStartSession *)self sdkVersion];
  [v3 cr_setSafeObject:sdkVersion forKey:@"sdkVersion"];

  assetIdentifier = [(CARCarPlayServiceMessageStartSession *)self assetIdentifier];
  assetVersion = [(CARCarPlayServiceMessageStartSession *)self assetVersion];
  v20 = assetVersion;
  if (assetIdentifier && assetVersion)
  {
    v21 = +[NSMutableDictionary dictionary];
    [v21 setObject:assetIdentifier forKey:@"id"];
    [v21 setObject:v20 forKey:@"version"];
    [v3 setObject:v21 forKey:@"asset"];
  }

  return v3;
}

@end