@interface RPEndpoint
+ (id)nullEndpoint;
- (BOOL)compareWithDeviceIdentifier:(id)identifier;
- (BOOL)removeBonjourDevice:(id)device;
- (BOOL)removeCBDevice:(id)device;
- (BOOL)removeSFDevice:(id)device;
- (RPEndpoint)initWithCoder:(id)coder;
- (id)bleTargetData;
- (id)descriptionWithLevel:(int)level;
- (unsigned)removeIDSDevice;
- (unsigned)updateTrustStatusFlagsWithIdentity:(id)identity;
- (unsigned)updateWithBonjourDevice:(id)device;
- (unsigned)updateWithCBDevice:(id)device;
- (unsigned)updateWithEndpoint:(id)endpoint;
- (unsigned)updateWithFamilyEndpoint:(id)endpoint;
- (unsigned)updateWithIDSDevice:(id)device;
- (unsigned)updateWithIdentity:(id)identity;
- (unsigned)updateWithSFDevice:(id)device;
- (void)encodeWithCoder:(id)coder;
- (void)setOperatingSystemVersion:(id *)version;
@end

@implementation RPEndpoint

+ (id)nullEndpoint
{
  if (qword_1001D6138 != -1)
  {
    sub_100116F14();
  }

  v3 = qword_1001D6130;

  return v3;
}

- (RPEndpoint)initWithCoder:(id)coder
{
  coderCopy = coder;
  v30.receiver = self;
  v30.super_class = RPEndpoint;
  v5 = [(RPEndpoint *)&v30 init];
  if (v5)
  {
    v6 = coderCopy;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v7 = v6;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v31 = 0;
    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_activityLevel = v31;
    }

    v8 = v7;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v9 = v8;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v31 = 0;
    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_cameraState = v31;
    }

    objc_opt_class();
    NSDecodeNSArrayOfClassIfPresent();
    v31 = 0;
    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_hotspotInfo = v31;
    }

    v10 = v9;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v11 = v10;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v12 = v11;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v13 = v12;
    if ([v13 containsValueForKey:@"iLagS"])
    {
      v5->_inDiscoverySession = [v13 decodeBoolForKey:@"iLagS"];
    }

    v14 = v13;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v15 = v14;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v16 = v15;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v17 = v16;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v18 = v17;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v19 = v18;
    if ([v19 containsValueForKey:@"osma"])
    {
      v5->_operatingSystemVersion.majorVersion = [v19 decodeIntegerForKey:@"osma"];
    }

    v20 = v19;
    if ([v20 containsValueForKey:@"osmi"])
    {
      v5->_operatingSystemVersion.minorVersion = [v20 decodeIntegerForKey:@"osmi"];
    }

    v21 = v20;
    if ([v21 containsValueForKey:@"osp"])
    {
      v5->_operatingSystemVersion.patchVersion = [v21 decodeIntegerForKey:@"osp"];
    }

    v31 = 0;
    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_proximity = v31;
    }

    v22 = v21;
    objc_opt_class();
    NSDecodeStandardContainerIfPresent();

    v23 = v22;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    objc_opt_class();
    NSDecodeNSArrayOfClassIfPresent();
    v24 = v23;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v25 = v24;
    if ([v25 containsValueForKey:@"sf"])
    {
      v5->_statusFlags = [v25 decodeInt64ForKey:@"sf"];
    }

    v26 = v25;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v27 = v26;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    objc_opt_class();
    objc_opt_class();
    NSDecodeNSDictionaryOfClassesIfPresent();
    v28 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  accountAltDSID = self->_accountAltDSID;
  v32 = coderCopy;
  if (accountAltDSID)
  {
    [coderCopy encodeObject:accountAltDSID forKey:@"altDSID"];
    coderCopy = v32;
  }

  accountID = self->_accountID;
  if (accountID)
  {
    [v32 encodeObject:accountID forKey:@"aID"];
    coderCopy = v32;
  }

  activityLevel = self->_activityLevel;
  if (activityLevel)
  {
    [v32 encodeInteger:activityLevel forKey:@"acl"];
    coderCopy = v32;
  }

  activityLevelTimeStamp = self->_activityLevelTimeStamp;
  if (activityLevelTimeStamp)
  {
    [v32 encodeObject:activityLevelTimeStamp forKey:@"aclTS"];
    coderCopy = v32;
  }

  if (self->_cameraState)
  {
    [v32 encodeInteger:? forKey:?];
    coderCopy = v32;
  }

  homeKitUserIdentifiers = self->_homeKitUserIdentifiers;
  if (homeKitUserIdentifiers)
  {
    [v32 encodeObject:homeKitUserIdentifiers forKey:@"hkUI"];
    coderCopy = v32;
  }

  hotspotInfo = self->_hotspotInfo;
  if (hotspotInfo)
  {
    [v32 encodeInt64:hotspotInfo forKey:@"hsI"];
    coderCopy = v32;
  }

  identifier = self->_identifier;
  if (identifier)
  {
    [v32 encodeObject:identifier forKey:@"id"];
    coderCopy = v32;
  }

  idsDeviceIdentifier = self->_idsDeviceIdentifier;
  if (idsDeviceIdentifier)
  {
    [v32 encodeObject:idsDeviceIdentifier forKey:@"idsD"];
    coderCopy = v32;
  }

  contactID = self->_contactID;
  if (contactID)
  {
    [v32 encodeObject:contactID forKey:@"cnID"];
    coderCopy = v32;
  }

  if (self->_inDiscoverySession)
  {
    [v32 encodeBool:1 forKey:@"iLagS"];
    coderCopy = v32;
  }

  ipAddress = self->_ipAddress;
  if (ipAddress)
  {
    [v32 encodeObject:ipAddress forKey:@"ipAdd"];
    coderCopy = v32;
  }

  mediaRemoteIdentifier = self->_mediaRemoteIdentifier;
  if (mediaRemoteIdentifier)
  {
    [v32 encodeObject:mediaRemoteIdentifier forKey:@"MRI"];
    coderCopy = v32;
  }

  mediaRouteIdentifier = self->_mediaRouteIdentifier;
  if (mediaRouteIdentifier)
  {
    [v32 encodeObject:mediaRouteIdentifier forKey:@"MRtI"];
    coderCopy = v32;
  }

  model = self->_model;
  if (model)
  {
    [v32 encodeObject:model forKey:@"md"];
    coderCopy = v32;
  }

  name = self->_name;
  if (name)
  {
    [v32 encodeObject:name forKey:@"nm"];
    coderCopy = v32;
  }

  majorVersion = self->_operatingSystemVersion.majorVersion;
  if (majorVersion)
  {
    [v32 encodeInteger:majorVersion forKey:@"osma"];
    coderCopy = v32;
  }

  minorVersion = self->_operatingSystemVersion.minorVersion;
  if (minorVersion)
  {
    [v32 encodeInteger:minorVersion forKey:@"osmi"];
    coderCopy = v32;
  }

  patchVersion = self->_operatingSystemVersion.patchVersion;
  if (patchVersion)
  {
    [v32 encodeInteger:patchVersion forKey:@"osp"];
    coderCopy = v32;
  }

  proximity = self->_proximity;
  if (proximity)
  {
    [v32 encodeInteger:proximity forKey:@"px"];
    coderCopy = v32;
  }

  serviceInfo = self->_serviceInfo;
  if (serviceInfo)
  {
    [v32 encodeObject:serviceInfo forKey:@"si"];
    coderCopy = v32;
  }

  serviceType = self->_serviceType;
  if (serviceType)
  {
    [v32 encodeObject:serviceType forKey:@"st"];
    coderCopy = v32;
  }

  serviceTypes = self->_serviceTypes;
  if (serviceTypes)
  {
    [v32 encodeObject:serviceTypes forKey:@"stA"];
    coderCopy = v32;
  }

  sessionPairingIdentifier = self->_sessionPairingIdentifier;
  if (sessionPairingIdentifier)
  {
    [v32 encodeObject:sessionPairingIdentifier forKey:@"spID"];
    coderCopy = v32;
  }

  statusFlags = self->_statusFlags;
  if (statusFlags)
  {
    [v32 encodeInt64:statusFlags forKey:@"sf"];
    coderCopy = v32;
  }

  sourceVersion = self->_sourceVersion;
  if (sourceVersion)
  {
    [v32 encodeObject:sourceVersion forKey:@"sv"];
    coderCopy = v32;
  }

  verifiedIdentity = self->_verifiedIdentity;
  if (verifiedIdentity)
  {
    [v32 encodeObject:verifiedIdentity forKey:@"vi"];
    coderCopy = v32;
  }

  verifiedAcl = self->_verifiedAcl;
  if (verifiedAcl)
  {
    [v32 encodeObject:verifiedAcl forKey:@"vAcl"];
    coderCopy = v32;
  }

  if (self->_encodeSensitiveProperties)
  {
    bleTargetData = [(RPEndpoint *)self bleTargetData];
    if (bleTargetData)
    {
      [v32 encodeObject:bleTargetData forKey:@"bleTD"];
    }

    coderCopy = v32;
  }
}

- (id)descriptionWithLevel:(int)level
{
  v78 = 0;
  NSAppendPrintF();
  v5 = 0;
  v6 = v5;
  identifier = self->_identifier;
  if (identifier)
  {
    v77 = v5;
    v46 = identifier;
    NSAppendPrintF();
    v8 = v77;

    v6 = v8;
  }

  if (sub_100009D00())
  {
    name = self->_name;
    if (name)
    {
      v76 = v6;
      v47 = name;
      NSAppendPrintF();
      v10 = v6;

      v6 = v10;
    }

    model = self->_model;
    if (model)
    {
      v75 = v6;
      v48 = model;
      NSAppendPrintF();
      v12 = v6;

      v6 = v12;
    }

    accountAltDSID = self->_accountAltDSID;
    if (accountAltDSID)
    {
      v74 = v6;
      v54 = accountAltDSID;
      NSAppendPrintF();
      v14 = v6;

      v6 = v14;
    }

    accountID = self->_accountID;
    if (accountID)
    {
      v73 = v6;
      v55 = accountID;
      NSAppendPrintF();
      v16 = v6;

      v6 = v16;
    }

    activityLevel = self->_activityLevel;
    if (activityLevel)
    {
      v72 = v6;
      if (activityLevel <= 0xE)
      {
        v18 = (&off_1001AC5C0)[activityLevel - 1];
      }

      NSAppendPrintF();
      v19 = v72;

      v6 = v19;
    }

    if (self->_cameraState)
    {
      self->_cameraState;
      v71 = v6;
      NSAppendPrintF();
      v20 = v6;

      v6 = v20;
    }

    homeKitUserIdentifiers = self->_homeKitUserIdentifiers;
    if (homeKitUserIdentifiers)
    {
      v70 = v6;
      v56 = homeKitUserIdentifiers;
      NSAppendPrintF();
      v22 = v6;

      v6 = v22;
    }

    idsDeviceIdentifier = self->_idsDeviceIdentifier;
    if (idsDeviceIdentifier)
    {
      v69 = v6;
      v57 = idsDeviceIdentifier;
      NSAppendPrintF();
      v24 = v6;

      v6 = v24;
    }

    contactID = self->_contactID;
    if (contactID)
    {
      v68 = v6;
      v58 = contactID;
      NSAppendPrintF();
      v26 = v6;

      v6 = v26;
    }

    mediaRemoteIdentifier = self->_mediaRemoteIdentifier;
    if (mediaRemoteIdentifier)
    {
      v67 = v6;
      v59 = mediaRemoteIdentifier;
      NSAppendPrintF();
      v28 = v6;

      v6 = v28;
    }

    mediaRouteIdentifier = self->_mediaRouteIdentifier;
    if (mediaRouteIdentifier)
    {
      v66 = v6;
      v60 = mediaRouteIdentifier;
      NSAppendPrintF();
      v30 = v6;

      v6 = v30;
    }

    sessionPairingIdentifier = self->_sessionPairingIdentifier;
    if (sessionPairingIdentifier)
    {
      v65 = v6;
      v61 = sessionPairingIdentifier;
      NSAppendPrintF();
      v32 = v6;

      v6 = v32;
    }

    if (self->_operatingSystemVersion.majorVersion)
    {
      v62 = *&self->_operatingSystemVersion.majorVersion;
      patchVersion = self->_operatingSystemVersion.patchVersion;
      v64 = v6;
      v49 = sub_10000F224(&v62);
      NSAppendPrintF();
      v33 = v64;

      v6 = v33;
    }

    verifiedIdentity = self->_verifiedIdentity;
    if (verifiedIdentity)
    {
      v50 = verifiedIdentity;
      NSAppendPrintF();
      v35 = v6;

      v6 = v35;
    }

    sourceVersion = self->_sourceVersion;
    if (sourceVersion)
    {
      v51 = sourceVersion;
      NSAppendPrintF();
      v37 = v6;

      v6 = v37;
    }

    if (self->_proximity)
    {
      NSAppendPrintF();
      v39 = v6;

      v6 = v39;
    }
  }

  serviceType = self->_serviceType;
  if (serviceType)
  {
    v52 = serviceType;
    NSAppendPrintF();
    v41 = v6;

    v6 = v41;
  }

  if (self->_statusFlags)
  {
    NSAppendPrintF();
    v42 = v6;

    v6 = v42;
  }

  if (level >= 20)
  {
    activityLevelTimeStamp = self->_activityLevelTimeStamp;
    if (activityLevelTimeStamp)
    {
      v53 = activityLevelTimeStamp;
      NSAppendPrintF();
      v44 = v6;

      v6 = v44;
    }
  }

  return v6;
}

- (unsigned)updateWithBonjourDevice:(id)device
{
  deviceCopy = device;
  txtDictionary = [deviceCopy txtDictionary];
  objc_storeStrong(&self->_bonjourDevice, device);
  deviceInfo = [deviceCopy deviceInfo];
  Int64Ranged = CFDictionaryGetInt64Ranged();

  v8 = self->_idsDevice;
  v9 = self->_model;
  if (v9)
  {
    modelIdentifier = v9;
LABEL_3:
    v44 = 0;
    goto LABEL_8;
  }

  CFStringGetTypeID();
  v11 = CFDictionaryGetTypedValue();
  if (v11)
  {
    modelIdentifier = v11;
  }

  else
  {
    modelIdentifier = [(IDSDevice *)v8 modelIdentifier];
    if (!modelIdentifier)
    {
      goto LABEL_3;
    }
  }

  objc_storeStrong(&self->_model, modelIdentifier);
  v44 = 2;
LABEL_8:
  name = [deviceCopy name];
  v13 = name;
  if (name)
  {
    v14 = txtDictionary;
    name = self->_name;
    v16 = name;
    v17 = name;
    v18 = v17;
    if (v16 == v17)
    {
    }

    else
    {
      if (v17)
      {
        v19 = [(NSString *)v16 isEqual:v17];

        if (v19)
        {
          goto LABEL_16;
        }
      }

      else
      {
      }

      objc_storeStrong(&self->_name, v13);
      v44 |= 0x10u;
    }

LABEL_16:
    txtDictionary = v14;
  }

  v46 = *&self->_operatingSystemVersion.majorVersion;
  patchVersion = self->_operatingSystemVersion.patchVersion;
  v20 = sub_10000F224(&v46);
  v41 = v20;
  if (v8)
  {
    v21 = v20;
    [(IDSDevice *)v8 operatingSystemVersion];
    if (v45 >= 1)
    {
      [(IDSDevice *)v8 operatingSystemVersion];
      v22 = sub_10000F224(&v46);
      v23 = v21;
      v24 = v22;
      v25 = v24;
      if (v23 == v24)
      {

        goto LABEL_26;
      }

      if ((v23 != 0) == (v24 == 0))
      {
      }

      else
      {
        v26 = [v23 isEqual:v24];

        if (v26)
        {
          goto LABEL_26;
        }
      }

      [(IDSDevice *)v8 operatingSystemVersion];
      *&self->_operatingSystemVersion.majorVersion = v46;
      self->_operatingSystemVersion.patchVersion = patchVersion;
      v44 |= 2u;
    }
  }

LABEL_26:
  v27 = self->_sourceVersion;
  v42 = modelIdentifier;
  if (v27)
  {
    v28 = v27;
    v29 = v13;
LABEL_28:
    v30 = deviceCopy;
    goto LABEL_34;
  }

  CFStringGetTypeID();
  v31 = CFDictionaryGetTypedValue();
  v28 = v31;
  if (v8 && !v31)
  {
    [(IDSDevice *)v8 operatingSystemVersion];
    v28 = sub_10001AF18(modelIdentifier, &v46);
  }

  v29 = v13;
  if (!v28)
  {
    goto LABEL_28;
  }

  v30 = deviceCopy;
  objc_storeStrong(&self->_sourceVersion, v28);
  v44 |= 2u;
LABEL_34:
  Int64 = CFDictionaryGetInt64();
  statusFlags = self->_statusFlags;
  supportsApplePay = [(IDSDevice *)v8 supportsApplePay];
  v35 = 4;
  if (supportsApplePay)
  {
    v35 = 8388612;
  }

  v36 = vdupq_n_s64(Int64);
  v37 = vorrq_s8(vandq_s8(vshlq_u64(v36, xmmword_1001480B0), xmmword_1001480E0), vandq_s8(vshlq_u64(v36, xmmword_1001480C0), xmmword_1001480D0));
  v38 = *&vorr_s8(*v37.i8, *&vextq_s8(v37, v37, 8uLL)) | statusFlags & 0xFFFFFBF27EBAF7FBLL | (Int64 >> 2) & 0x800 | (((Int64 >> 19) & 1) << 31) | (4 * Int64) & 0x50000 | (((Int64 >> 23) & 1) << 34) | v35 | (((Int64Ranged & 0x18) != 0) << 24);
  if (v38 == statusFlags)
  {
    v39 = v44;
  }

  else
  {
    self->_statusFlags = v38;
    v39 = v44 | 2;
  }

  return v39;
}

- (BOOL)removeBonjourDevice:(id)device
{
  bonjourDevice = self->_bonjourDevice;
  self->_bonjourDevice = 0;
  deviceCopy = device;

  self->_statusFlags &= ~4uLL;
  deviceInfo = [deviceCopy deviceInfo];

  LOBYTE(deviceCopy) = CFDictionaryGetInt64Ranged();
  statusFlags = self->_statusFlags;
  if ((deviceCopy & 0x18) != 0)
  {
    statusFlags &= ~0x1000000uLL;
    self->_statusFlags = statusFlags;
  }

  return (statusFlags & 0x10001F) == 0;
}

- (unsigned)updateWithFamilyEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  deviceUniqueID = [endpointCopy deviceUniqueID];
  v6 = deviceUniqueID;
  if (!deviceUniqueID)
  {
    goto LABEL_7;
  }

  idsDeviceIdentifier = self->_idsDeviceIdentifier;
  v8 = deviceUniqueID;
  v9 = idsDeviceIdentifier;
  v10 = v9;
  if (v8 == v9)
  {

    goto LABEL_7;
  }

  if (v9)
  {
    v11 = [(NSString *)v8 isEqual:v9];

    if ((v11 & 1) == 0)
    {
      goto LABEL_9;
    }

LABEL_7:
    v12 = 0;
    goto LABEL_10;
  }

LABEL_9:
  objc_storeStrong(&self->_idsDeviceIdentifier, v6);
  v12 = 2;
LABEL_10:

  deviceName = [endpointCopy deviceName];
  v14 = deviceName;
  if (!deviceName)
  {
    goto LABEL_18;
  }

  name = self->_name;
  v16 = deviceName;
  v17 = name;
  v18 = v17;
  if (v16 == v17)
  {

    goto LABEL_18;
  }

  if (!v17)
  {

    goto LABEL_17;
  }

  v19 = [(NSString *)v16 isEqual:v17];

  if ((v19 & 1) == 0)
  {
LABEL_17:
    objc_storeStrong(&self->_name, v14);
    v12 |= 0x10u;
  }

LABEL_18:

  v38 = *&self->_operatingSystemVersion.majorVersion;
  patchVersion = self->_operatingSystemVersion.patchVersion;
  v20 = sub_10000F224(&v38);
  productVersion = [endpointCopy productVersion];
  if (!productVersion)
  {
    goto LABEL_26;
  }

  v22 = productVersion;
  productVersion2 = [endpointCopy productVersion];
  v24 = v20;
  v25 = productVersion2;
  v26 = v25;
  if (v24 == v25)
  {

    goto LABEL_26;
  }

  if ((v24 != 0) == (v25 == 0))
  {

    goto LABEL_25;
  }

  v27 = [v24 isEqual:v25];

  if ((v27 & 1) == 0)
  {
LABEL_25:
    productVersion3 = [endpointCopy productVersion];
    sub_10001B9C0(productVersion3, &v38);
    *&self->_operatingSystemVersion.majorVersion = v38;
    self->_operatingSystemVersion.patchVersion = patchVersion;

    v12 |= 2u;
  }

LABEL_26:
  model = self->_model;
  productVersion4 = [endpointCopy productVersion];
  sub_10001B9C0(productVersion4, &v38);
  v31 = sub_10001AF18(model, &v38);

  if (v31)
  {
    sourceVersion = self->_sourceVersion;
    v33 = v31;
    v34 = sourceVersion;
    v35 = v34;
    if (v33 == v34)
    {
    }

    else
    {
      if (v34)
      {
        v36 = [(NSString *)v33 isEqual:v34];

        if (v36)
        {
          goto LABEL_34;
        }
      }

      else
      {
      }

      objc_storeStrong(&self->_sourceVersion, v31);
      v12 |= 2u;
    }
  }

LABEL_34:

  return v12;
}

- (unsigned)updateWithIDSDevice:(id)device
{
  deviceCopy = device;
  objc_storeStrong(&self->_idsDevice, device);
  uniqueIDOverride = [deviceCopy uniqueIDOverride];
  v7 = uniqueIDOverride;
  if (!uniqueIDOverride)
  {
    goto LABEL_7;
  }

  idsDeviceIdentifier = self->_idsDeviceIdentifier;
  v9 = uniqueIDOverride;
  v10 = idsDeviceIdentifier;
  v11 = v10;
  if (v9 == v10)
  {

    goto LABEL_7;
  }

  if (v10)
  {
    v12 = [(NSString *)v9 isEqual:v10];

    if ((v12 & 1) == 0)
    {
      goto LABEL_9;
    }

LABEL_7:
    v13 = 0;
    goto LABEL_10;
  }

LABEL_9:
  objc_storeStrong(&self->_idsDeviceIdentifier, v7);
  v13 = 2;
LABEL_10:

  modelIdentifier = [deviceCopy modelIdentifier];
  v15 = modelIdentifier;
  v16 = v15;
  if (!modelIdentifier)
  {
    goto LABEL_18;
  }

  model = self->_model;
  v18 = v15;
  v19 = model;
  v20 = v19;
  if (v18 == v19)
  {

    goto LABEL_18;
  }

  if (!v19)
  {

    goto LABEL_17;
  }

  v21 = [(NSString *)v18 isEqual:v19];

  if ((v21 & 1) == 0)
  {
LABEL_17:
    objc_storeStrong(&self->_model, modelIdentifier);
    v13 = 2;
  }

LABEL_18:

  name = [deviceCopy name];
  v23 = name;
  if (!name)
  {
    goto LABEL_26;
  }

  name = self->_name;
  v25 = name;
  v26 = name;
  v27 = v26;
  if (v25 == v26)
  {

    goto LABEL_26;
  }

  if (!v26)
  {

    goto LABEL_25;
  }

  v28 = [(NSString *)v25 isEqual:v26];

  if ((v28 & 1) == 0)
  {
LABEL_25:
    objc_storeStrong(&self->_name, v23);
    v13 |= 0x10u;
  }

LABEL_26:

  v44 = *&self->_operatingSystemVersion.majorVersion;
  patchVersion = self->_operatingSystemVersion.patchVersion;
  v29 = sub_10000F224(&v44);
  if (deviceCopy)
  {
    [deviceCopy operatingSystemVersion];
    if (v43 < 1)
    {
      goto LABEL_38;
    }

    [deviceCopy operatingSystemVersion];
    v30 = sub_10000F224(&v44);
    v31 = v29;
    v32 = v30;
    v33 = v32;
    if (v31 == v32)
    {

      goto LABEL_38;
    }

    if ((v31 != 0) == (v32 == 0))
    {
    }

    else
    {
      v34 = [v31 isEqual:v32];

      if (v34)
      {
LABEL_38:
        p_sourceVersion = &self->_sourceVersion;
        if (self->_sourceVersion || !v16)
        {
          goto LABEL_43;
        }

        [deviceCopy operatingSystemVersion];
        goto LABEL_41;
      }
    }

    [deviceCopy operatingSystemVersion];
    *&self->_operatingSystemVersion.majorVersion = v44;
    self->_operatingSystemVersion.patchVersion = patchVersion;
    v13 |= 2u;
    goto LABEL_38;
  }

  p_sourceVersion = &self->_sourceVersion;
  if (self->_sourceVersion || !v16)
  {
    goto LABEL_43;
  }

  v44 = 0uLL;
  patchVersion = 0;
LABEL_41:
  v36 = sub_10001AF18(v16, &v44);
  v37 = *p_sourceVersion;
  *p_sourceVersion = v36;

  if (*p_sourceVersion)
  {
    v13 |= 2u;
  }

LABEL_43:
  statusFlags = self->_statusFlags;
  supportsApplePay = [deviceCopy supportsApplePay];
  v40 = 1572864;
  if (supportsApplePay)
  {
    v40 = 9961472;
  }

  v41 = v40 | statusFlags;
  if (v41 != statusFlags)
  {
    self->_statusFlags = v41;
    v13 |= 2u;
  }

  return v13;
}

- (unsigned)removeIDSDevice
{
  idsDevice = self->_idsDevice;
  self->_idsDevice = 0;

  statusFlags = self->_statusFlags;
  if ((statusFlags & 0xFFFFFFFFFFEFFFFFLL) == statusFlags)
  {
    v5 = 0;
  }

  else
  {
    self->_statusFlags = statusFlags & 0xFFFFFFFFFFEFFFFFLL;
    v5 = 2;
    LODWORD(statusFlags) = statusFlags & 0xFFEFFFFF;
  }

  if ((statusFlags & 0x10001F) != 0)
  {
    return v5;
  }

  else
  {
    return v5 | 0x200;
  }
}

- (unsigned)updateWithSFDevice:(id)device
{
  deviceCopy = device;
  v136 = 0;
  v6 = self->_bleDevice;
  objc_storeStrong(&self->_bleDevice, device);
  v132 = self->_idsDevice;
  deviceFlags = [deviceCopy deviceFlags];
  v7 = 0;
  if (objc_opt_respondsToSelector())
  {
    accountAltDSID = [deviceCopy accountAltDSID];
    v9 = accountAltDSID;
    if (accountAltDSID)
    {
      accountAltDSID = self->_accountAltDSID;
      v11 = accountAltDSID;
      v12 = accountAltDSID;
      v13 = v12;
      if (v11 == v12)
      {
      }

      else
      {
        if (!v12)
        {

LABEL_10:
          objc_storeStrong(&self->_accountAltDSID, v9);
          v7 = 2;
          goto LABEL_11;
        }

        v14 = [(NSString *)v11 isEqual:v12];

        if ((v14 & 1) == 0)
        {
          goto LABEL_10;
        }
      }
    }

    v7 = 0;
LABEL_11:
  }

  accountID = [deviceCopy accountID];
  v16 = accountID;
  v131 = v6;
  if (accountID)
  {
    accountID = self->_accountID;
    v18 = accountID;
    v19 = accountID;
    v20 = v19;
    if (v18 == v19)
    {

      v6 = v131;
    }

    else
    {
      if (v19)
      {
        v21 = [(NSString *)v18 isEqual:v19];

        v6 = v131;
        if (v21)
        {
          goto LABEL_20;
        }
      }

      else
      {

        v6 = v131;
      }

      objc_storeStrong(&self->_accountID, v16);
      v7 = 2;
    }
  }

LABEL_20:

  bleDevice = [deviceCopy bleDevice];
  decryptedActivityLevel = [bleDevice decryptedActivityLevel];
  if (decryptedActivityLevel != 16 && self->_activityLevel != decryptedActivityLevel)
  {
    self->_activityLevel = decryptedActivityLevel;
    v23 = +[NSDate date];
    activityLevelTimeStamp = self->_activityLevelTimeStamp;
    self->_activityLevelTimeStamp = v23;

    v7 = 2;
  }

  bleDevice2 = [deviceCopy bleDevice];
  advertisementData = [bleDevice2 advertisementData];
  bleDevice3 = [(SFDevice *)v6 bleDevice];
  advertisementData2 = [bleDevice3 advertisementData];
  v29 = advertisementData;
  v30 = advertisementData2;
  v31 = v30;
  if (v29 == v30)
  {
    v32 = 1;
  }

  else if ((v29 != 0) == (v30 == 0))
  {
    v32 = 0;
  }

  else
  {
    v32 = [v29 isEqual:v30];
  }

  v97 = (v32 & 1) == 0;
  v33 = v7 | 1;
  if (v97)
  {
    v7 |= 1u;
  }

  bleDevice4 = [deviceCopy bleDevice];
  advertisementFields = [bleDevice4 advertisementFields];
  v36 = [advertisementFields mutableCopy];

  bleDevice5 = [(SFDevice *)v6 bleDevice];
  advertisementFields2 = [bleDevice5 advertisementFields];
  v39 = [advertisementFields2 mutableCopy];

  [v36 setObject:0 forKeyedSubscript:@"ch"];
  [v39 setObject:0 forKeyedSubscript:@"ch"];
  v40 = v36;
  v41 = v39;
  v42 = v41;
  v126 = v41;
  v127 = v40;
  if (v40 == v41)
  {

    v43 = v132;
    goto LABEL_36;
  }

  v43 = v132;
  if ((v40 != 0) == (v41 == 0))
  {

    v45 = v33;
    goto LABEL_38;
  }

  v44 = [v40 isEqual:v41];

  v45 = v33;
  if (v44)
  {
LABEL_36:
    v45 = v7;
  }

LABEL_38:
  bleDevice6 = [deviceCopy bleDevice];
  advertisementFields3 = [bleDevice6 advertisementFields];
  Int64Ranged = CFDictionaryGetInt64Ranged();

  if (self->_cameraState != Int64Ranged)
  {
    self->_cameraState = Int64Ranged;
    v45 |= 2u;
  }

  hotspotInfo = self->_hotspotInfo;
  if (hotspotInfo != [deviceCopy hotspotInfo])
  {
    self->_hotspotInfo = [deviceCopy hotspotInfo];
    v45 |= 1u;
  }

  idsIdentifier = [deviceCopy idsIdentifier];
  v51 = idsIdentifier;
  if (idsIdentifier)
  {
    idsDeviceIdentifier = self->_idsDeviceIdentifier;
    v53 = idsIdentifier;
    v54 = idsDeviceIdentifier;
    v55 = v54;
    if (v53 == v54)
    {

      goto LABEL_50;
    }

    if (v54)
    {
      v56 = [(NSString *)v53 isEqual:v54];

      if (v56)
      {
        goto LABEL_50;
      }
    }

    else
    {
    }

    objc_storeStrong(&self->_idsDeviceIdentifier, v51);
    v45 |= 2u;
  }

LABEL_50:

  inDiscoverySession = [deviceCopy inDiscoverySession];
  if (self->_inDiscoverySession != inDiscoverySession)
  {
    self->_inDiscoverySession = inDiscoverySession;
    v45 |= 0x400u;
  }

  contactIdentifier = [deviceCopy contactIdentifier];
  v59 = contactIdentifier;
  if (contactIdentifier)
  {
    contactID = self->_contactID;
    v61 = contactIdentifier;
    v62 = contactID;
    v63 = v62;
    if (v61 == v62)
    {

      goto LABEL_60;
    }

    if (v62)
    {
      v64 = [(NSString *)v61 isEqual:v62];

      if (v64)
      {
        goto LABEL_60;
      }
    }

    else
    {
    }

    objc_storeStrong(&self->_contactID, v59);
    v45 |= 2u;
  }

LABEL_60:

  if (!self->_mediaRemoteIdentifier)
  {
    mediaRemoteID = [deviceCopy mediaRemoteID];
    if (mediaRemoteID)
    {
      objc_storeStrong(&self->_mediaRemoteIdentifier, mediaRemoteID);
      v45 |= 2u;
    }
  }

  if (!self->_mediaRouteIdentifier)
  {
    mediaRouteID = [deviceCopy mediaRouteID];
    if (mediaRouteID)
    {
      objc_storeStrong(&self->_mediaRouteIdentifier, mediaRouteID);
      v45 |= 2u;
    }

    if (!self->_mediaRouteIdentifier && (deviceFlags & 0x400) != 0)
    {
      rapportIdentifier = [deviceCopy rapportIdentifier];
      if (rapportIdentifier)
      {
        objc_storeStrong(&self->_mediaRouteIdentifier, rapportIdentifier);
        v45 |= 2u;
      }
    }
  }

  rapportIdentifier2 = [deviceCopy rapportIdentifier];
  if (rapportIdentifier2)
  {
    v69 = self->_sessionPairingIdentifier;
    v70 = rapportIdentifier2;
    v71 = v70;
    if (v69 == v70)
    {

      goto LABEL_81;
    }

    if (v69)
    {
      v72 = [(NSString *)v69 isEqual:v70];

      if (v72)
      {
        goto LABEL_81;
      }
    }

    else
    {
    }

    if (([deviceCopy deviceFlags] & 0x8000) != 0)
    {
      objc_storeStrong(&self->_sessionPairingIdentifier, rapportIdentifier2);
      v45 |= 2u;
    }
  }

LABEL_81:

  v73 = self->_model;
  if (v73)
  {
    v74 = v73;
    goto LABEL_87;
  }

  model = [deviceCopy model];
  if (model || ([(IDSDevice *)v43 modelIdentifier], (model = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v74 = model;
LABEL_86:
    objc_storeStrong(&self->_model, v74);
    v45 |= 2u;
    goto LABEL_87;
  }

  if ([deviceCopy deviceClassCode] == 4)
  {
    if ([deviceCopy deviceModelCode] == 5)
    {
      v74 = @"AudioAccessory5,1";
    }

    else if ([deviceCopy deviceModelCode] == 6)
    {
      v74 = @"AudioAccessory6,1";
    }

    else
    {
      v74 = @"AudioAccessory1,1";
    }

    goto LABEL_86;
  }

  v74 = 0;
LABEL_87:
  name = [deviceCopy name];
  v77 = name;
  if (!name)
  {
    goto LABEL_95;
  }

  name = self->_name;
  v79 = name;
  v80 = name;
  v81 = v80;
  if (v79 == v80)
  {

    goto LABEL_95;
  }

  if (!v80)
  {

    goto LABEL_94;
  }

  v82 = [(NSString *)v79 isEqual:v80];

  if ((v82 & 1) == 0)
  {
LABEL_94:
    objc_storeStrong(&self->_name, v77);
    v45 |= 0x10u;
  }

LABEL_95:

  v134 = *&self->_operatingSystemVersion.majorVersion;
  patchVersion = self->_operatingSystemVersion.patchVersion;
  v83 = sub_10000F224(&v134);
  v125 = v83;
  if (!v43)
  {
    goto LABEL_107;
  }

  v84 = v83;
  [(IDSDevice *)v43 operatingSystemVersion];
  if (v133 >= 1)
  {
    [(IDSDevice *)v43 operatingSystemVersion];
    v85 = sub_10000F224(&v134);
    v86 = v84;
    v87 = v85;
    v88 = v87;
    if (v86 == v87)
    {
    }

    else
    {
      if ((v86 != 0) == (v87 == 0))
      {
      }

      else
      {
        v89 = [v86 isEqual:v87];

        if (v89)
        {
          goto LABEL_104;
        }
      }

      [(IDSDevice *)v43 operatingSystemVersion];
      *&self->_operatingSystemVersion.majorVersion = v134;
      self->_operatingSystemVersion.patchVersion = patchVersion;
      v45 |= 2u;
    }
  }

LABEL_104:
  if (!self->_sourceVersion)
  {
    [(IDSDevice *)v43 operatingSystemVersion];
    v90 = sub_10001AF18(v74, &v134);
    sourceVersion = self->_sourceVersion;
    self->_sourceVersion = v90;

    if (self->_sourceVersion)
    {
      v45 |= 2u;
    }
  }

LABEL_107:
  v128 = v45;
  statusFlags = self->_statusFlags;
  deviceActionType = [deviceCopy deviceActionType];
  supportsApplePay = [(IDSDevice *)v43 supportsApplePay];
  v95 = 2;
  if (supportsApplePay)
  {
    v95 = 8388610;
  }

  v96 = statusFlags & 0xFFFFFF7FF7DFFEFDLL | v95 & 0xFFFFFF7FFFFFFFFFLL | ((((deviceFlags & 0x80) >> 7) & 1) << 39);
  v97 = (deviceFlags & 8) != 0 && deviceActionType == 28;
  if (v97)
  {
    v98 = 0x200000;
  }

  else
  {
    v98 = 0;
  }

  duetSync = [deviceCopy duetSync];
  v100 = 256;
  if (!duetSync)
  {
    v100 = 0;
  }

  v101 = v96 | v98 | v100 | ((deviceActionType == 29) << 27);
  bleDevice7 = [deviceCopy bleDevice];
  advertisementFields4 = [bleDevice7 advertisementFields];
  v104 = CFDictionaryGetInt64Ranged();

  if (!v136)
  {
    v101 = v101 & 0xFFFFFFFFFFFFFDFFLL | ((v104 != 0) << 9);
  }

  v105 = v101 & 0xFFFFFFFFBFFFFFFFLL | ((deviceActionType == 34) << 30);
  v106 = v74;
  v107 = [(__CFString *)v106 hasPrefix:@"AppleTV"];

  v108 = v105 | 0x50800;
  if (!v107)
  {
    v108 = v105;
  }

  if ((deviceFlags & 8) != 0)
  {
    v108 |= 0x80000uLL;
  }

  v109 = vandq_s8(vshlq_u32(vdupq_n_s32(deviceFlags), xmmword_1001480F0), xmmword_100148100);
  *v109.i8 = vorr_s8(*v109.i8, *&vextq_s8(v109, v109, 8uLL));
  v110 = (v109.i32[0] | v109.i32[1]) | ((((deviceFlags & 0xC000) >> 8) >> 6) << 36) & 0xFFFFFFBFFFFFFFFFLL | v108 & 0xFFFFFF8FFFFD1FFFLL | ((((deviceFlags & 0x10000) >> 16) & 1) << 38);
  bleDevice8 = [deviceCopy bleDevice];
  advertisementFields5 = [bleDevice8 advertisementFields];
  Int64 = CFDictionaryGetInt64();

  v114 = v110 | 0x80;
  if (!Int64)
  {
    v114 = v110;
  }

  v115 = v128;
  if (v114 != statusFlags)
  {
    self->_statusFlags = v114;
    v115 = v128 | 2;
  }

  distance = [deviceCopy distance];
  if (distance >= 21)
  {
    v117 = 30;
  }

  else
  {
    v117 = 20;
  }

  if (distance < 11)
  {
    v117 = 10;
  }

  if (v117 != self->_proximity)
  {
    self->_proximity = v117;
    v115 |= 0x80u;
  }

  bleDevice9 = [deviceCopy bleDevice];
  rssi = [bleDevice9 rssi];

  bleDevice10 = [(SFDevice *)v131 bleDevice];
  rssi2 = [bleDevice10 rssi];

  if (rssi == rssi2 || rssi == 0)
  {
    v123 = v115;
  }

  else
  {
    v123 = v115 | 0x20;
  }

  return v123;
}

- (BOOL)removeSFDevice:(id)device
{
  bleDevice = self->_bleDevice;
  self->_bleDevice = 0;

  self->_activityLevel = 0;
  activityLevelTimeStamp = self->_activityLevelTimeStamp;
  self->_activityLevelTimeStamp = 0;

  statusFlags = self->_statusFlags;
  self->_statusFlags = statusFlags & 0xFFFFFFFFBFDFFCFDLL;
  return (statusFlags & 0x10001D) == 0;
}

- (unsigned)updateTrustStatusFlagsWithIdentity:(id)identity
{
  statusFlags = self->_statusFlags;
  v5 = [identity type] - 1;
  if (v5 > 0xE)
  {
    return 0;
  }

  if (((0x59ABu >> v5) & 1) == 0)
  {
    return 0;
  }

  v6 = statusFlags | qword_1001482E0[v5];
  if (v6 == statusFlags)
  {
    return 0;
  }

  self->_statusFlags = v6;
  return 2;
}

- (unsigned)updateWithIdentity:(id)identity
{
  identityCopy = identity;
  v5 = identityCopy;
  if (self->_identifier)
  {
    v6 = 0;
  }

  else
  {
    identifier = [identityCopy identifier];
    if (identifier)
    {
      objc_storeStrong(&self->_identifier, identifier);
      v6 = 2;
    }

    else
    {
      v6 = 0;
    }
  }

  if (!self->_idsDeviceIdentifier)
  {
    idsDeviceID = [v5 idsDeviceID];
    if (idsDeviceID)
    {
      objc_storeStrong(&self->_idsDeviceIdentifier, idsDeviceID);
      v6 = 2;
    }
  }

  if (!self->_accountAltDSID)
  {
    accountAltDSID = [v5 accountAltDSID];
    if (accountAltDSID)
    {
      objc_storeStrong(&self->_accountAltDSID, accountAltDSID);
      v6 |= 2u;
    }
  }

  if (!self->_accountID)
  {
    accountID = [v5 accountID];
    if (accountID)
    {
      objc_storeStrong(&self->_accountID, accountID);
      v6 |= 2u;
    }
  }

  if (!self->_contactID)
  {
    contactID = [v5 contactID];
    if (contactID)
    {
      objc_storeStrong(&self->_contactID, contactID);
      v6 |= 2u;
    }
  }

  if (!self->_model)
  {
    model = [v5 model];
    if (model)
    {
      objc_storeStrong(&self->_model, model);
      v6 |= 2u;
    }
  }

  statusFlags = self->_statusFlags;
  v14 = statusFlags | 2;
  type = [v5 type];
  if (type > 6)
  {
    if (type > 11)
    {
      switch(type)
      {
        case 12:
          v16 = 0x1000000002;
          break;
        case 13:
          v16 = 0x2000000002;
          break;
        case 15:
          v16 = 0x4000000002;
          break;
        default:
          goto LABEL_50;
      }
    }

    else if (type == 7 || type == 8)
    {
      v16 = 32770;
    }

    else
    {
      if (type != 9)
      {
        goto LABEL_50;
      }

      v16 = 8194;
    }

    goto LABEL_49;
  }

  if (type > 3)
  {
    if (type != 4)
    {
      v16 = 131074;
LABEL_49:
      v14 = statusFlags | v16;
      goto LABEL_50;
    }

LABEL_44:
    v16 = 16386;
    goto LABEL_49;
  }

  if (type == 1 || type == 2)
  {
    v16 = 524290;
    goto LABEL_49;
  }

  if (type == 3)
  {
    goto LABEL_44;
  }

LABEL_50:
  v17 = [(NSString *)self->_model hasPrefix:@"AppleTV"];
  v18 = v14 | 0x50800;
  if (!v17)
  {
    v18 = v14;
  }

  if (v18 != statusFlags)
  {
    self->_statusFlags = v18;
    v6 |= 2u;
  }

  if (!self->_idsDeviceIdentifier)
  {
    idsDeviceID2 = [v5 idsDeviceID];
    if (idsDeviceID2)
    {
      objc_storeStrong(&self->_idsDeviceIdentifier, idsDeviceID2);
      v6 |= 2u;
    }
  }

  if (!self->_mediaRemoteIdentifier)
  {
    mediaRemoteID = [v5 mediaRemoteID];
    if (mediaRemoteID)
    {
      objc_storeStrong(&self->_mediaRemoteIdentifier, mediaRemoteID);
      v6 |= 2u;
    }
  }

  if (!self->_mediaRouteIdentifier)
  {
    mediaRouteID = [v5 mediaRouteID];
    if (mediaRouteID)
    {
      objc_storeStrong(&self->_mediaRouteIdentifier, mediaRouteID);
      v6 |= 2u;
    }
  }

  name = [v5 name];
  v23 = name;
  if (name)
  {
    name = self->_name;
    v25 = name;
    v26 = name;
    v27 = v26;
    if (v25 == v26)
    {
    }

    else
    {
      if (v26)
      {
        v28 = [(NSString *)v25 isEqual:v26];

        if (v28)
        {
          goto LABEL_74;
        }
      }

      else
      {
      }

      objc_storeStrong(&self->_name, v23);
      v6 |= 0x10u;
    }
  }

LABEL_74:

  return v6;
}

- (unsigned)updateWithCBDevice:(id)device
{
  deviceCopy = device;
  v6 = self->_cbDevice;
  objc_storeStrong(&self->_cbDevice, device);
  bleAdvertisementData = [deviceCopy bleAdvertisementData];
  bleAdvertisementData2 = [(CBDevice *)v6 bleAdvertisementData];
  v9 = bleAdvertisementData;
  v10 = bleAdvertisementData2;
  v11 = v10;
  if (v9 == v10)
  {
    v12 = 0;
  }

  else
  {
    v12 = 1;
    if ((v9 != 0) != (v10 == 0))
    {
      v12 = ([v9 isEqual:v10] & 1) == 0;
    }
  }

  rssi = [deviceCopy rssi];
  if (rssi == [(CBDevice *)v6 rssi]|| rssi == 0)
  {
    v15 = v12;
  }

  else
  {
    v15 = v12 | 0x20;
  }

  return v15;
}

- (unsigned)updateWithEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  accountAltDSID = [endpointCopy accountAltDSID];
  v6 = accountAltDSID;
  if (!accountAltDSID)
  {
    goto LABEL_7;
  }

  accountAltDSID = self->_accountAltDSID;
  v8 = accountAltDSID;
  v9 = accountAltDSID;
  v10 = v9;
  if (v8 == v9)
  {

    goto LABEL_7;
  }

  if (v9)
  {
    v11 = [(NSString *)v8 isEqual:v9];

    if ((v11 & 1) == 0)
    {
      goto LABEL_9;
    }

LABEL_7:
    v12 = 0;
    goto LABEL_10;
  }

LABEL_9:
  objc_storeStrong(&self->_accountAltDSID, v6);
  v12 = 2;
LABEL_10:
  contactID = [endpointCopy contactID];
  v14 = contactID;
  if (!contactID)
  {
    goto LABEL_18;
  }

  contactID = self->_contactID;
  v16 = contactID;
  v17 = contactID;
  v18 = v17;
  if (v16 == v17)
  {

    goto LABEL_18;
  }

  if (!v17)
  {

    goto LABEL_17;
  }

  v19 = [(NSString *)v16 isEqual:v17];

  if ((v19 & 1) == 0)
  {
LABEL_17:
    objc_storeStrong(&self->_contactID, v14);
    v12 = 2;
  }

LABEL_18:
  identifier = [endpointCopy identifier];
  v21 = identifier;
  if (!identifier)
  {
    goto LABEL_26;
  }

  identifier = self->_identifier;
  v23 = identifier;
  v24 = identifier;
  v25 = v24;
  if (v23 == v24)
  {

    goto LABEL_26;
  }

  if (!v24)
  {

    goto LABEL_25;
  }

  v26 = [(NSString *)v23 isEqual:v24];

  if ((v26 & 1) == 0)
  {
LABEL_25:
    objc_storeStrong(&self->_identifier, v21);
    v12 = 2;
  }

LABEL_26:
  v62 = v6;
  idsDeviceIdentifier = [endpointCopy idsDeviceIdentifier];
  v28 = idsDeviceIdentifier;
  if (!idsDeviceIdentifier)
  {
    goto LABEL_34;
  }

  idsDeviceIdentifier = self->_idsDeviceIdentifier;
  v30 = idsDeviceIdentifier;
  v31 = idsDeviceIdentifier;
  v32 = v31;
  if (v30 == v31)
  {

    goto LABEL_34;
  }

  if (!v31)
  {

    goto LABEL_33;
  }

  v33 = [(NSString *)v30 isEqual:v31];

  if ((v33 & 1) == 0)
  {
LABEL_33:
    objc_storeStrong(&self->_idsDeviceIdentifier, v28);
    v12 = 2;
  }

LABEL_34:
  v61 = v14;
  model = [endpointCopy model];
  v35 = model;
  if (!model)
  {
    goto LABEL_42;
  }

  model = self->_model;
  v37 = model;
  v38 = model;
  v39 = v38;
  if (v37 == v38)
  {

    goto LABEL_42;
  }

  if (!v38)
  {

    goto LABEL_41;
  }

  v40 = [(NSString *)v37 isEqual:v38];

  if ((v40 & 1) == 0)
  {
LABEL_41:
    objc_storeStrong(&self->_model, v35);
    v12 |= 2u;
  }

LABEL_42:
  v60 = v21;
  name = [endpointCopy name];
  v42 = name;
  if (!name)
  {
    goto LABEL_50;
  }

  name = self->_name;
  v44 = name;
  v45 = name;
  v46 = v45;
  if (v44 == v45)
  {

    goto LABEL_50;
  }

  if (!v45)
  {

    goto LABEL_49;
  }

  v47 = [(NSString *)v44 isEqual:v45];

  if ((v47 & 1) == 0)
  {
LABEL_49:
    objc_storeStrong(&self->_name, v42);
    v12 |= 0x10u;
  }

LABEL_50:
  sessionPairingIdentifier = [endpointCopy sessionPairingIdentifier];
  v49 = sessionPairingIdentifier;
  if (!sessionPairingIdentifier)
  {
    goto LABEL_59;
  }

  sessionPairingIdentifier = self->_sessionPairingIdentifier;
  v51 = sessionPairingIdentifier;
  v52 = sessionPairingIdentifier;
  v53 = v52;
  if (v51 == v52)
  {

    goto LABEL_59;
  }

  v59 = v35;
  v54 = v28;
  if (v52)
  {
    v55 = [(NSString *)v51 isEqual:v52];

    if (v55)
    {
      goto LABEL_58;
    }
  }

  else
  {
  }

  objc_storeStrong(&self->_sessionPairingIdentifier, v49);
  v12 |= 2u;
LABEL_58:
  v28 = v54;
  v35 = v59;
LABEL_59:
  statusFlags = [endpointCopy statusFlags];
  if (statusFlags != self->_statusFlags)
  {
    self->_statusFlags = statusFlags;
    v12 |= 2u;
  }

  txtRecord = [endpointCopy txtRecord];
  if (txtRecord != self->_txtRecord)
  {
    objc_storeStrong(&self->_txtRecord, txtRecord);
    v12 |= 2u;
  }

  if (endpointCopy)
  {
    [endpointCopy operatingSystemVersion];
    if (v65 >= 1)
    {
      [endpointCopy operatingSystemVersion];
      *&self->_operatingSystemVersion.majorVersion = v63;
      self->_operatingSystemVersion.patchVersion = v64;
      v12 |= 2u;
    }
  }

  return v12;
}

- (BOOL)removeCBDevice:(id)device
{
  cbDevice = self->_cbDevice;
  self->_cbDevice = 0;

  statusFlags = self->_statusFlags;
  self->_statusFlags = statusFlags & 0xFFFFFFFFFFFFFFFDLL;
  return (statusFlags & 0x10001D) == 0;
}

- (BOOL)compareWithDeviceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  identifier = self->_identifier;
  v6 = identifierCopy;
  identifierCopy2 = identifier;
  v8 = identifierCopy2;
  if (identifierCopy2 == v6)
  {
    v10 = 1;
    v11 = v6;
LABEL_27:

    goto LABEL_28;
  }

  if ((v6 != 0) != (identifierCopy2 == 0))
  {
    v9 = [(NSString *)v6 isEqual:identifierCopy2];

    if (v9)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  idsDeviceIdentifier = self->_idsDeviceIdentifier;
  v11 = v6;
  v13 = idsDeviceIdentifier;
  v8 = v13;
  if (v13 == v11)
  {
    goto LABEL_26;
  }

  if ((v6 != 0) != (v13 == 0))
  {
    v14 = [(NSString *)v11 isEqual:v13];

    if (v14)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  verifiedIdentity = self->_verifiedIdentity;
  v11 = v11;
  v16 = verifiedIdentity;
  v8 = v16;
  if (v16 == v11)
  {
LABEL_26:
    v10 = 1;
    goto LABEL_27;
  }

  if ((v6 != 0) != (v16 == 0))
  {
    v17 = [(NSString *)v11 isEqual:v16];

    if (v17)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  rapportIdentifier = [(SFDevice *)self->_bleDevice rapportIdentifier];
  v8 = v11;
  v19 = rapportIdentifier;
  v11 = v19;
  if (v19 == v8)
  {

    goto LABEL_26;
  }

  if ((v6 != 0) == (v19 == 0))
  {

LABEL_23:
    sessionPairingIdentifier = self->_sessionPairingIdentifier;
    v11 = v8;
    v22 = sessionPairingIdentifier;
    v8 = v22;
    if (v22 != v11)
    {
      if ((v6 != 0) == (v22 == 0))
      {
        v10 = 0;
      }

      else
      {
        v10 = [(NSString *)v11 isEqual:v22];
      }

      goto LABEL_27;
    }

    goto LABEL_26;
  }

  v20 = [(NSString *)v8 isEqual:v19];

  if ((v20 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_20:
  v10 = 1;
LABEL_28:

  return v10;
}

- (id)bleTargetData
{
  nearbyInfoV2TempAuthTagData = self->_encodedBLETargetData;
  if (!nearbyInfoV2TempAuthTagData)
  {
    bleDevice = [(RPEndpoint *)self bleDevice];
    v4BleDevice = [bleDevice bleDevice];

    cbDevice = [(RPEndpoint *)self cbDevice];
    advertisementFields = [v4BleDevice advertisementFields];
    CFDataGetTypeID();
    nearbyInfoV2TempAuthTagData = CFDictionaryGetTypedValue();

    if (!nearbyInfoV2TempAuthTagData && cbDevice)
    {
      nearbyInfoV2TempAuthTagData = [cbDevice nearbyInfoV2TempAuthTagData];
    }
  }

  return nearbyInfoV2TempAuthTagData;
}

- (void)setOperatingSystemVersion:(id *)version
{
  v3 = *&version->var0;
  self->_operatingSystemVersion.patchVersion = version->var2;
  *&self->_operatingSystemVersion.majorVersion = v3;
}

@end