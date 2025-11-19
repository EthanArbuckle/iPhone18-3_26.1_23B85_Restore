@interface RPEndpoint
+ (id)nullEndpoint;
- (BOOL)compareWithDeviceIdentifier:(id)a3;
- (BOOL)removeBonjourDevice:(id)a3;
- (BOOL)removeCBDevice:(id)a3;
- (BOOL)removeSFDevice:(id)a3;
- (RPEndpoint)initWithCoder:(id)a3;
- (id)bleTargetData;
- (id)descriptionWithLevel:(int)a3;
- (unsigned)removeIDSDevice;
- (unsigned)updateTrustStatusFlagsWithIdentity:(id)a3;
- (unsigned)updateWithBonjourDevice:(id)a3;
- (unsigned)updateWithCBDevice:(id)a3;
- (unsigned)updateWithEndpoint:(id)a3;
- (unsigned)updateWithFamilyEndpoint:(id)a3;
- (unsigned)updateWithIDSDevice:(id)a3;
- (unsigned)updateWithIdentity:(id)a3;
- (unsigned)updateWithSFDevice:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setOperatingSystemVersion:(id *)a3;
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

- (RPEndpoint)initWithCoder:(id)a3
{
  v4 = a3;
  v30.receiver = self;
  v30.super_class = RPEndpoint;
  v5 = [(RPEndpoint *)&v30 init];
  if (v5)
  {
    v6 = v4;
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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  accountAltDSID = self->_accountAltDSID;
  v32 = v4;
  if (accountAltDSID)
  {
    [v4 encodeObject:accountAltDSID forKey:@"altDSID"];
    v4 = v32;
  }

  accountID = self->_accountID;
  if (accountID)
  {
    [v32 encodeObject:accountID forKey:@"aID"];
    v4 = v32;
  }

  activityLevel = self->_activityLevel;
  if (activityLevel)
  {
    [v32 encodeInteger:activityLevel forKey:@"acl"];
    v4 = v32;
  }

  activityLevelTimeStamp = self->_activityLevelTimeStamp;
  if (activityLevelTimeStamp)
  {
    [v32 encodeObject:activityLevelTimeStamp forKey:@"aclTS"];
    v4 = v32;
  }

  if (self->_cameraState)
  {
    [v32 encodeInteger:? forKey:?];
    v4 = v32;
  }

  homeKitUserIdentifiers = self->_homeKitUserIdentifiers;
  if (homeKitUserIdentifiers)
  {
    [v32 encodeObject:homeKitUserIdentifiers forKey:@"hkUI"];
    v4 = v32;
  }

  hotspotInfo = self->_hotspotInfo;
  if (hotspotInfo)
  {
    [v32 encodeInt64:hotspotInfo forKey:@"hsI"];
    v4 = v32;
  }

  identifier = self->_identifier;
  if (identifier)
  {
    [v32 encodeObject:identifier forKey:@"id"];
    v4 = v32;
  }

  idsDeviceIdentifier = self->_idsDeviceIdentifier;
  if (idsDeviceIdentifier)
  {
    [v32 encodeObject:idsDeviceIdentifier forKey:@"idsD"];
    v4 = v32;
  }

  contactID = self->_contactID;
  if (contactID)
  {
    [v32 encodeObject:contactID forKey:@"cnID"];
    v4 = v32;
  }

  if (self->_inDiscoverySession)
  {
    [v32 encodeBool:1 forKey:@"iLagS"];
    v4 = v32;
  }

  ipAddress = self->_ipAddress;
  if (ipAddress)
  {
    [v32 encodeObject:ipAddress forKey:@"ipAdd"];
    v4 = v32;
  }

  mediaRemoteIdentifier = self->_mediaRemoteIdentifier;
  if (mediaRemoteIdentifier)
  {
    [v32 encodeObject:mediaRemoteIdentifier forKey:@"MRI"];
    v4 = v32;
  }

  mediaRouteIdentifier = self->_mediaRouteIdentifier;
  if (mediaRouteIdentifier)
  {
    [v32 encodeObject:mediaRouteIdentifier forKey:@"MRtI"];
    v4 = v32;
  }

  model = self->_model;
  if (model)
  {
    [v32 encodeObject:model forKey:@"md"];
    v4 = v32;
  }

  name = self->_name;
  if (name)
  {
    [v32 encodeObject:name forKey:@"nm"];
    v4 = v32;
  }

  majorVersion = self->_operatingSystemVersion.majorVersion;
  if (majorVersion)
  {
    [v32 encodeInteger:majorVersion forKey:@"osma"];
    v4 = v32;
  }

  minorVersion = self->_operatingSystemVersion.minorVersion;
  if (minorVersion)
  {
    [v32 encodeInteger:minorVersion forKey:@"osmi"];
    v4 = v32;
  }

  patchVersion = self->_operatingSystemVersion.patchVersion;
  if (patchVersion)
  {
    [v32 encodeInteger:patchVersion forKey:@"osp"];
    v4 = v32;
  }

  proximity = self->_proximity;
  if (proximity)
  {
    [v32 encodeInteger:proximity forKey:@"px"];
    v4 = v32;
  }

  serviceInfo = self->_serviceInfo;
  if (serviceInfo)
  {
    [v32 encodeObject:serviceInfo forKey:@"si"];
    v4 = v32;
  }

  serviceType = self->_serviceType;
  if (serviceType)
  {
    [v32 encodeObject:serviceType forKey:@"st"];
    v4 = v32;
  }

  serviceTypes = self->_serviceTypes;
  if (serviceTypes)
  {
    [v32 encodeObject:serviceTypes forKey:@"stA"];
    v4 = v32;
  }

  sessionPairingIdentifier = self->_sessionPairingIdentifier;
  if (sessionPairingIdentifier)
  {
    [v32 encodeObject:sessionPairingIdentifier forKey:@"spID"];
    v4 = v32;
  }

  statusFlags = self->_statusFlags;
  if (statusFlags)
  {
    [v32 encodeInt64:statusFlags forKey:@"sf"];
    v4 = v32;
  }

  sourceVersion = self->_sourceVersion;
  if (sourceVersion)
  {
    [v32 encodeObject:sourceVersion forKey:@"sv"];
    v4 = v32;
  }

  verifiedIdentity = self->_verifiedIdentity;
  if (verifiedIdentity)
  {
    [v32 encodeObject:verifiedIdentity forKey:@"vi"];
    v4 = v32;
  }

  verifiedAcl = self->_verifiedAcl;
  if (verifiedAcl)
  {
    [v32 encodeObject:verifiedAcl forKey:@"vAcl"];
    v4 = v32;
  }

  if (self->_encodeSensitiveProperties)
  {
    v31 = [(RPEndpoint *)self bleTargetData];
    if (v31)
    {
      [v32 encodeObject:v31 forKey:@"bleTD"];
    }

    v4 = v32;
  }
}

- (id)descriptionWithLevel:(int)a3
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

  if (a3 >= 20)
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

- (unsigned)updateWithBonjourDevice:(id)a3
{
  v5 = a3;
  v6 = [v5 txtDictionary];
  objc_storeStrong(&self->_bonjourDevice, a3);
  v7 = [v5 deviceInfo];
  Int64Ranged = CFDictionaryGetInt64Ranged();

  v8 = self->_idsDevice;
  v9 = self->_model;
  if (v9)
  {
    v10 = v9;
LABEL_3:
    v44 = 0;
    goto LABEL_8;
  }

  CFStringGetTypeID();
  v11 = CFDictionaryGetTypedValue();
  if (v11)
  {
    v10 = v11;
  }

  else
  {
    v10 = [(IDSDevice *)v8 modelIdentifier];
    if (!v10)
    {
      goto LABEL_3;
    }
  }

  objc_storeStrong(&self->_model, v10);
  v44 = 2;
LABEL_8:
  v12 = [v5 name];
  v13 = v12;
  if (v12)
  {
    v14 = v6;
    name = self->_name;
    v16 = v12;
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
    v6 = v14;
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
  v42 = v10;
  if (v27)
  {
    v28 = v27;
    v29 = v13;
LABEL_28:
    v30 = v5;
    goto LABEL_34;
  }

  CFStringGetTypeID();
  v31 = CFDictionaryGetTypedValue();
  v28 = v31;
  if (v8 && !v31)
  {
    [(IDSDevice *)v8 operatingSystemVersion];
    v28 = sub_10001AF18(v10, &v46);
  }

  v29 = v13;
  if (!v28)
  {
    goto LABEL_28;
  }

  v30 = v5;
  objc_storeStrong(&self->_sourceVersion, v28);
  v44 |= 2u;
LABEL_34:
  Int64 = CFDictionaryGetInt64();
  statusFlags = self->_statusFlags;
  v34 = [(IDSDevice *)v8 supportsApplePay];
  v35 = 4;
  if (v34)
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

- (BOOL)removeBonjourDevice:(id)a3
{
  bonjourDevice = self->_bonjourDevice;
  self->_bonjourDevice = 0;
  v5 = a3;

  self->_statusFlags &= ~4uLL;
  v6 = [v5 deviceInfo];

  LOBYTE(v5) = CFDictionaryGetInt64Ranged();
  statusFlags = self->_statusFlags;
  if ((v5 & 0x18) != 0)
  {
    statusFlags &= ~0x1000000uLL;
    self->_statusFlags = statusFlags;
  }

  return (statusFlags & 0x10001F) == 0;
}

- (unsigned)updateWithFamilyEndpoint:(id)a3
{
  v4 = a3;
  v5 = [v4 deviceUniqueID];
  v6 = v5;
  if (!v5)
  {
    goto LABEL_7;
  }

  idsDeviceIdentifier = self->_idsDeviceIdentifier;
  v8 = v5;
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

  v13 = [v4 deviceName];
  v14 = v13;
  if (!v13)
  {
    goto LABEL_18;
  }

  name = self->_name;
  v16 = v13;
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
  v21 = [v4 productVersion];
  if (!v21)
  {
    goto LABEL_26;
  }

  v22 = v21;
  v23 = [v4 productVersion];
  v24 = v20;
  v25 = v23;
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
    v28 = [v4 productVersion];
    sub_10001B9C0(v28, &v38);
    *&self->_operatingSystemVersion.majorVersion = v38;
    self->_operatingSystemVersion.patchVersion = patchVersion;

    v12 |= 2u;
  }

LABEL_26:
  model = self->_model;
  v30 = [v4 productVersion];
  sub_10001B9C0(v30, &v38);
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

- (unsigned)updateWithIDSDevice:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_idsDevice, a3);
  v6 = [v5 uniqueIDOverride];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_7;
  }

  idsDeviceIdentifier = self->_idsDeviceIdentifier;
  v9 = v6;
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

  v14 = [v5 modelIdentifier];
  v15 = v14;
  v16 = v15;
  if (!v14)
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
    objc_storeStrong(&self->_model, v14);
    v13 = 2;
  }

LABEL_18:

  v22 = [v5 name];
  v23 = v22;
  if (!v22)
  {
    goto LABEL_26;
  }

  name = self->_name;
  v25 = v22;
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
  if (v5)
  {
    [v5 operatingSystemVersion];
    if (v43 < 1)
    {
      goto LABEL_38;
    }

    [v5 operatingSystemVersion];
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

        [v5 operatingSystemVersion];
        goto LABEL_41;
      }
    }

    [v5 operatingSystemVersion];
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
  v39 = [v5 supportsApplePay];
  v40 = 1572864;
  if (v39)
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

- (unsigned)updateWithSFDevice:(id)a3
{
  v5 = a3;
  v136 = 0;
  v6 = self->_bleDevice;
  objc_storeStrong(&self->_bleDevice, a3);
  v132 = self->_idsDevice;
  v130 = [v5 deviceFlags];
  v7 = 0;
  if (objc_opt_respondsToSelector())
  {
    v8 = [v5 accountAltDSID];
    v9 = v8;
    if (v8)
    {
      accountAltDSID = self->_accountAltDSID;
      v11 = v8;
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

  v15 = [v5 accountID];
  v16 = v15;
  v131 = v6;
  if (v15)
  {
    accountID = self->_accountID;
    v18 = v15;
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

  v129 = [v5 bleDevice];
  v22 = [v129 decryptedActivityLevel];
  if (v22 != 16 && self->_activityLevel != v22)
  {
    self->_activityLevel = v22;
    v23 = +[NSDate date];
    activityLevelTimeStamp = self->_activityLevelTimeStamp;
    self->_activityLevelTimeStamp = v23;

    v7 = 2;
  }

  v25 = [v5 bleDevice];
  v26 = [v25 advertisementData];
  v27 = [(SFDevice *)v6 bleDevice];
  v28 = [v27 advertisementData];
  v29 = v26;
  v30 = v28;
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

  v34 = [v5 bleDevice];
  v35 = [v34 advertisementFields];
  v36 = [v35 mutableCopy];

  v37 = [(SFDevice *)v6 bleDevice];
  v38 = [v37 advertisementFields];
  v39 = [v38 mutableCopy];

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
  v46 = [v5 bleDevice];
  v47 = [v46 advertisementFields];
  Int64Ranged = CFDictionaryGetInt64Ranged();

  if (self->_cameraState != Int64Ranged)
  {
    self->_cameraState = Int64Ranged;
    v45 |= 2u;
  }

  hotspotInfo = self->_hotspotInfo;
  if (hotspotInfo != [v5 hotspotInfo])
  {
    self->_hotspotInfo = [v5 hotspotInfo];
    v45 |= 1u;
  }

  v50 = [v5 idsIdentifier];
  v51 = v50;
  if (v50)
  {
    idsDeviceIdentifier = self->_idsDeviceIdentifier;
    v53 = v50;
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

  v57 = [v5 inDiscoverySession];
  if (self->_inDiscoverySession != v57)
  {
    self->_inDiscoverySession = v57;
    v45 |= 0x400u;
  }

  v58 = [v5 contactIdentifier];
  v59 = v58;
  if (v58)
  {
    contactID = self->_contactID;
    v61 = v58;
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
    v65 = [v5 mediaRemoteID];
    if (v65)
    {
      objc_storeStrong(&self->_mediaRemoteIdentifier, v65);
      v45 |= 2u;
    }
  }

  if (!self->_mediaRouteIdentifier)
  {
    v66 = [v5 mediaRouteID];
    if (v66)
    {
      objc_storeStrong(&self->_mediaRouteIdentifier, v66);
      v45 |= 2u;
    }

    if (!self->_mediaRouteIdentifier && (v130 & 0x400) != 0)
    {
      v67 = [v5 rapportIdentifier];
      if (v67)
      {
        objc_storeStrong(&self->_mediaRouteIdentifier, v67);
        v45 |= 2u;
      }
    }
  }

  v68 = [v5 rapportIdentifier];
  if (v68)
  {
    v69 = self->_sessionPairingIdentifier;
    v70 = v68;
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

    if (([v5 deviceFlags] & 0x8000) != 0)
    {
      objc_storeStrong(&self->_sessionPairingIdentifier, v68);
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

  v75 = [v5 model];
  if (v75 || ([(IDSDevice *)v43 modelIdentifier], (v75 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v74 = v75;
LABEL_86:
    objc_storeStrong(&self->_model, v74);
    v45 |= 2u;
    goto LABEL_87;
  }

  if ([v5 deviceClassCode] == 4)
  {
    if ([v5 deviceModelCode] == 5)
    {
      v74 = @"AudioAccessory5,1";
    }

    else if ([v5 deviceModelCode] == 6)
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
  v76 = [v5 name];
  v77 = v76;
  if (!v76)
  {
    goto LABEL_95;
  }

  name = self->_name;
  v79 = v76;
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
  v93 = [v5 deviceActionType];
  v94 = [(IDSDevice *)v43 supportsApplePay];
  v95 = 2;
  if (v94)
  {
    v95 = 8388610;
  }

  v96 = statusFlags & 0xFFFFFF7FF7DFFEFDLL | v95 & 0xFFFFFF7FFFFFFFFFLL | ((((v130 & 0x80) >> 7) & 1) << 39);
  v97 = (v130 & 8) != 0 && v93 == 28;
  if (v97)
  {
    v98 = 0x200000;
  }

  else
  {
    v98 = 0;
  }

  v99 = [v5 duetSync];
  v100 = 256;
  if (!v99)
  {
    v100 = 0;
  }

  v101 = v96 | v98 | v100 | ((v93 == 29) << 27);
  v102 = [v5 bleDevice];
  v103 = [v102 advertisementFields];
  v104 = CFDictionaryGetInt64Ranged();

  if (!v136)
  {
    v101 = v101 & 0xFFFFFFFFFFFFFDFFLL | ((v104 != 0) << 9);
  }

  v105 = v101 & 0xFFFFFFFFBFFFFFFFLL | ((v93 == 34) << 30);
  v106 = v74;
  v107 = [(__CFString *)v106 hasPrefix:@"AppleTV"];

  v108 = v105 | 0x50800;
  if (!v107)
  {
    v108 = v105;
  }

  if ((v130 & 8) != 0)
  {
    v108 |= 0x80000uLL;
  }

  v109 = vandq_s8(vshlq_u32(vdupq_n_s32(v130), xmmword_1001480F0), xmmword_100148100);
  *v109.i8 = vorr_s8(*v109.i8, *&vextq_s8(v109, v109, 8uLL));
  v110 = (v109.i32[0] | v109.i32[1]) | ((((v130 & 0xC000) >> 8) >> 6) << 36) & 0xFFFFFFBFFFFFFFFFLL | v108 & 0xFFFFFF8FFFFD1FFFLL | ((((v130 & 0x10000) >> 16) & 1) << 38);
  v111 = [v5 bleDevice];
  v112 = [v111 advertisementFields];
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

  v116 = [v5 distance];
  if (v116 >= 21)
  {
    v117 = 30;
  }

  else
  {
    v117 = 20;
  }

  if (v116 < 11)
  {
    v117 = 10;
  }

  if (v117 != self->_proximity)
  {
    self->_proximity = v117;
    v115 |= 0x80u;
  }

  v118 = [v5 bleDevice];
  v119 = [v118 rssi];

  v120 = [(SFDevice *)v131 bleDevice];
  v121 = [v120 rssi];

  if (v119 == v121 || v119 == 0)
  {
    v123 = v115;
  }

  else
  {
    v123 = v115 | 0x20;
  }

  return v123;
}

- (BOOL)removeSFDevice:(id)a3
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

- (unsigned)updateTrustStatusFlagsWithIdentity:(id)a3
{
  statusFlags = self->_statusFlags;
  v5 = [a3 type] - 1;
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

- (unsigned)updateWithIdentity:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_identifier)
  {
    v6 = 0;
  }

  else
  {
    v7 = [v4 identifier];
    if (v7)
    {
      objc_storeStrong(&self->_identifier, v7);
      v6 = 2;
    }

    else
    {
      v6 = 0;
    }
  }

  if (!self->_idsDeviceIdentifier)
  {
    v8 = [v5 idsDeviceID];
    if (v8)
    {
      objc_storeStrong(&self->_idsDeviceIdentifier, v8);
      v6 = 2;
    }
  }

  if (!self->_accountAltDSID)
  {
    v9 = [v5 accountAltDSID];
    if (v9)
    {
      objc_storeStrong(&self->_accountAltDSID, v9);
      v6 |= 2u;
    }
  }

  if (!self->_accountID)
  {
    v10 = [v5 accountID];
    if (v10)
    {
      objc_storeStrong(&self->_accountID, v10);
      v6 |= 2u;
    }
  }

  if (!self->_contactID)
  {
    v11 = [v5 contactID];
    if (v11)
    {
      objc_storeStrong(&self->_contactID, v11);
      v6 |= 2u;
    }
  }

  if (!self->_model)
  {
    v12 = [v5 model];
    if (v12)
    {
      objc_storeStrong(&self->_model, v12);
      v6 |= 2u;
    }
  }

  statusFlags = self->_statusFlags;
  v14 = statusFlags | 2;
  v15 = [v5 type];
  if (v15 > 6)
  {
    if (v15 > 11)
    {
      switch(v15)
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

    else if (v15 == 7 || v15 == 8)
    {
      v16 = 32770;
    }

    else
    {
      if (v15 != 9)
      {
        goto LABEL_50;
      }

      v16 = 8194;
    }

    goto LABEL_49;
  }

  if (v15 > 3)
  {
    if (v15 != 4)
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

  if (v15 == 1 || v15 == 2)
  {
    v16 = 524290;
    goto LABEL_49;
  }

  if (v15 == 3)
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
    v19 = [v5 idsDeviceID];
    if (v19)
    {
      objc_storeStrong(&self->_idsDeviceIdentifier, v19);
      v6 |= 2u;
    }
  }

  if (!self->_mediaRemoteIdentifier)
  {
    v20 = [v5 mediaRemoteID];
    if (v20)
    {
      objc_storeStrong(&self->_mediaRemoteIdentifier, v20);
      v6 |= 2u;
    }
  }

  if (!self->_mediaRouteIdentifier)
  {
    v21 = [v5 mediaRouteID];
    if (v21)
    {
      objc_storeStrong(&self->_mediaRouteIdentifier, v21);
      v6 |= 2u;
    }
  }

  v22 = [v5 name];
  v23 = v22;
  if (v22)
  {
    name = self->_name;
    v25 = v22;
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

- (unsigned)updateWithCBDevice:(id)a3
{
  v5 = a3;
  v6 = self->_cbDevice;
  objc_storeStrong(&self->_cbDevice, a3);
  v7 = [v5 bleAdvertisementData];
  v8 = [(CBDevice *)v6 bleAdvertisementData];
  v9 = v7;
  v10 = v8;
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

  v13 = [v5 rssi];
  if (v13 == [(CBDevice *)v6 rssi]|| v13 == 0)
  {
    v15 = v12;
  }

  else
  {
    v15 = v12 | 0x20;
  }

  return v15;
}

- (unsigned)updateWithEndpoint:(id)a3
{
  v4 = a3;
  v5 = [v4 accountAltDSID];
  v6 = v5;
  if (!v5)
  {
    goto LABEL_7;
  }

  accountAltDSID = self->_accountAltDSID;
  v8 = v5;
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
  v13 = [v4 contactID];
  v14 = v13;
  if (!v13)
  {
    goto LABEL_18;
  }

  contactID = self->_contactID;
  v16 = v13;
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
  v20 = [v4 identifier];
  v21 = v20;
  if (!v20)
  {
    goto LABEL_26;
  }

  identifier = self->_identifier;
  v23 = v20;
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
  v27 = [v4 idsDeviceIdentifier];
  v28 = v27;
  if (!v27)
  {
    goto LABEL_34;
  }

  idsDeviceIdentifier = self->_idsDeviceIdentifier;
  v30 = v27;
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
  v34 = [v4 model];
  v35 = v34;
  if (!v34)
  {
    goto LABEL_42;
  }

  model = self->_model;
  v37 = v34;
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
  v41 = [v4 name];
  v42 = v41;
  if (!v41)
  {
    goto LABEL_50;
  }

  name = self->_name;
  v44 = v41;
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
  v48 = [v4 sessionPairingIdentifier];
  v49 = v48;
  if (!v48)
  {
    goto LABEL_59;
  }

  sessionPairingIdentifier = self->_sessionPairingIdentifier;
  v51 = v48;
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
  v56 = [v4 statusFlags];
  if (v56 != self->_statusFlags)
  {
    self->_statusFlags = v56;
    v12 |= 2u;
  }

  v57 = [v4 txtRecord];
  if (v57 != self->_txtRecord)
  {
    objc_storeStrong(&self->_txtRecord, v57);
    v12 |= 2u;
  }

  if (v4)
  {
    [v4 operatingSystemVersion];
    if (v65 >= 1)
    {
      [v4 operatingSystemVersion];
      *&self->_operatingSystemVersion.majorVersion = v63;
      self->_operatingSystemVersion.patchVersion = v64;
      v12 |= 2u;
    }
  }

  return v12;
}

- (BOOL)removeCBDevice:(id)a3
{
  cbDevice = self->_cbDevice;
  self->_cbDevice = 0;

  statusFlags = self->_statusFlags;
  self->_statusFlags = statusFlags & 0xFFFFFFFFFFFFFFFDLL;
  return (statusFlags & 0x10001D) == 0;
}

- (BOOL)compareWithDeviceIdentifier:(id)a3
{
  v4 = a3;
  identifier = self->_identifier;
  v6 = v4;
  v7 = identifier;
  v8 = v7;
  if (v7 == v6)
  {
    v10 = 1;
    v11 = v6;
LABEL_27:

    goto LABEL_28;
  }

  if ((v6 != 0) != (v7 == 0))
  {
    v9 = [(NSString *)v6 isEqual:v7];

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

  v18 = [(SFDevice *)self->_bleDevice rapportIdentifier];
  v8 = v11;
  v19 = v18;
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
  v3 = self->_encodedBLETargetData;
  if (!v3)
  {
    v4 = [(RPEndpoint *)self bleDevice];
    v5 = [v4 bleDevice];

    v6 = [(RPEndpoint *)self cbDevice];
    v7 = [v5 advertisementFields];
    CFDataGetTypeID();
    v3 = CFDictionaryGetTypedValue();

    if (!v3 && v6)
    {
      v3 = [v6 nearbyInfoV2TempAuthTagData];
    }
  }

  return v3;
}

- (void)setOperatingSystemVersion:(id *)a3
{
  v3 = *&a3->var0;
  self->_operatingSystemVersion.patchVersion = a3->var2;
  *&self->_operatingSystemVersion.majorVersion = v3;
}

@end