@interface UARPComponentConfiguration
- (BOOL)isEqual:(id)a3;
- (UARPComponentConfiguration)init;
- (UARPComponentConfiguration)initWithCoder:(id)a3;
- (UARPComponentConfiguration)initWithDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)exportAsDictionary;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UARPComponentConfiguration

- (UARPComponentConfiguration)init
{
  v8.receiver = self;
  v8.super_class = UARPComponentConfiguration;
  v2 = [(UARPComponentConfiguration *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    outstandingInfoProperties = v2->_outstandingInfoProperties;
    v2->_outstandingInfoProperties = v3;

    v5 = objc_opt_new();
    preflightInfoProperties = v2->_preflightInfoProperties;
    v2->_preflightInfoProperties = v5;
  }

  return v2;
}

- (UARPComponentConfiguration)initWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [(UARPComponentConfiguration *)self init];

  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"Endpoint ID"];

    if (v6)
    {
      v7 = [v4 objectForKeyedSubscript:@"Endpoint ID"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_storeStrong(&v5->_endpointID, v7);
      }
    }

    v8 = [v4 objectForKeyedSubscript:@"Component Tag"];

    if (v8)
    {
      v9 = [v4 objectForKeyedSubscript:@"Component Tag"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = [[UARPComponentTag alloc] initWithString:v9];
        componentTag = v5->_componentTag;
        v5->_componentTag = v10;
      }
    }

    v12 = [v4 objectForKeyedSubscript:@"Firmware Version"];

    if (v12)
    {
      v13 = [v4 objectForKeyedSubscript:@"Firmware Version"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = [[UARPComponentVersion alloc] initWithVersionString:v13];
        firmwareVersion = v5->_firmwareVersion;
        v5->_firmwareVersion = v14;
      }
    }

    v16 = [v4 objectForKeyedSubscript:@"Friendly Name"];

    if (v16)
    {
      v17 = [v4 objectForKeyedSubscript:@"Friendly Name"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v18 = [v17 copy];
        friendlyName = v5->_friendlyName;
        v5->_friendlyName = v18;
      }
    }

    v20 = [v4 objectForKeyedSubscript:@"Hardware Version"];

    if (v20)
    {
      v21 = [v4 objectForKeyedSubscript:@"Hardware Version"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v22 = [v21 copy];
        hardwareVersion = v5->_hardwareVersion;
        v5->_hardwareVersion = v22;
      }
    }

    v24 = [v4 objectForKeyedSubscript:@"Manufacturer Name"];

    if (v24)
    {
      v25 = [v4 objectForKeyedSubscript:@"Manufacturer Name"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v26 = [v25 copy];
        manufacturerName = v5->_manufacturerName;
        v5->_manufacturerName = v26;
      }
    }

    v28 = [v4 objectForKeyedSubscript:@"Model Name"];

    if (v28)
    {
      v29 = [v4 objectForKeyedSubscript:@"Model Name"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v30 = [v29 copy];
        modelName = v5->_modelName;
        v5->_modelName = v30;
      }
    }

    v32 = [v4 objectForKeyedSubscript:@"Serial Number"];

    if (v32)
    {
      v33 = [v4 objectForKeyedSubscript:@"Serial Number"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v34 = [v33 copy];
        serialNumber = v5->_serialNumber;
        v5->_serialNumber = v34;
      }
    }

    v36 = [v4 objectForKeyedSubscript:@"Staged Firmware Version"];

    if (v36)
    {
      v37 = [v4 objectForKeyedSubscript:@"Staged Firmware Version"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v38 = [[UARPComponentVersion alloc] initWithVersionString:v37];
        stagedFirmwareVersion = v5->_stagedFirmwareVersion;
        v5->_stagedFirmwareVersion = v38;
      }
    }

    v40 = [v4 objectForKeyedSubscript:@"Protocol Version"];

    if (v40)
    {
      v41 = [v4 objectForKeyedSubscript:@"Protocol Version"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v42 = [v41 copy];
        protocolVersion = v5->_protocolVersion;
        v5->_protocolVersion = v42;
      }
    }

    v44 = [v4 objectForKeyedSubscript:@"Apple Model Number"];

    if (v44)
    {
      v45 = [v4 objectForKeyedSubscript:@"Apple Model Number"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v46 = [v45 copy];
        appleModelNumber = v5->_appleModelNumber;
        v5->_appleModelNumber = v46;
      }
    }

    v48 = [v4 objectForKeyedSubscript:@"AssetIdentifier"];

    if (v48)
    {
      v49 = [v4 objectForKeyedSubscript:@"AssetIdentifier"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v50 = [v49 copy];
        assetIdentifier = v5->_assetIdentifier;
        v5->_assetIdentifier = v50;
      }
    }

    v52 = [v4 objectForKeyedSubscript:@"Hw Fusing Type"];

    if (v52)
    {
      v53 = [v4 objectForKeyedSubscript:@"Hw Fusing Type"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v54 = [v53 copy];
        hwFusingType = v5->_hwFusingType;
        v5->_hwFusingType = v54;
      }
    }

    v56 = [v4 objectForKeyedSubscript:@"Board ID (32-bit)"];

    if (v56)
    {
      v57 = [v4 objectForKeyedSubscript:@"Board ID (32-bit)"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_storeStrong(&v5->_boardID32, v57);
      }
    }

    v58 = [v4 objectForKeyedSubscript:@"Board ID (64-bit)"];

    if (v58)
    {
      v59 = [v4 objectForKeyedSubscript:@"Board ID (64-bit)"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_storeStrong(&v5->_boardID64, v59);
      }
    }

    v60 = [v4 objectForKeyedSubscript:@"Chip Epoch"];

    if (v60)
    {
      v61 = [v4 objectForKeyedSubscript:@"Chip Epoch"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_storeStrong(&v5->_chipEpoch, v61);
      }
    }

    v62 = [v4 objectForKeyedSubscript:@"Chip ID"];

    if (v62)
    {
      v63 = [v4 objectForKeyedSubscript:@"Chip ID"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_storeStrong(&v5->_chipID, v63);
      }
    }

    v64 = [v4 objectForKeyedSubscript:@"Chip Revision"];

    if (v64)
    {
      v65 = [v4 objectForKeyedSubscript:@"Chip Revision"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_storeStrong(&v5->_chipRevision, v65);
      }
    }

    v66 = [v4 objectForKeyedSubscript:@"ECID"];

    if (v66)
    {
      v67 = [v4 objectForKeyedSubscript:@"ECID"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_storeStrong(&v5->_ECID, v67);
      }
    }

    v68 = [v4 objectForKeyedSubscript:@"ECID Data"];

    if (v68)
    {
      v69 = [v4 objectForKeyedSubscript:@"ECID Data"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v70 = [v69 copy];
        ecidData = v5->_ecidData;
        v5->_ecidData = v70;
      }
    }

    v72 = [v4 objectForKeyedSubscript:@"Enable Future FW Version"];

    if (v72)
    {
      v73 = [v4 objectForKeyedSubscript:@"Enable Future FW Version"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_storeStrong(&v5->_enableFutureFWVersion, v73);
      }
    }

    v74 = [v4 objectForKeyedSubscript:@"Enable Mix Match"];

    if (v74)
    {
      v75 = [v4 objectForKeyedSubscript:@"Enable Mix Match"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_storeStrong(&v5->_enableMixMatch, v75);
      }
    }

    v76 = [v4 objectForKeyedSubscript:@"FTAB Generation"];

    if (v76)
    {
      v77 = [v4 objectForKeyedSubscript:@"FTAB Generation"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v78 = [v77 copy];
        ftabGeneration = v5->_ftabGeneration;
        v5->_ftabGeneration = v78;
      }
    }

    v80 = [v4 objectForKeyedSubscript:@"Hardware Specific"];

    if (v80)
    {
      v81 = [v4 objectForKeyedSubscript:@"Hardware Specific"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v82 = [v81 copy];
        hardwareSpecific = v5->_hardwareSpecific;
        v5->_hardwareSpecific = v82;
      }
    }

    v84 = [v4 objectForKeyedSubscript:@"Life"];

    if (v84)
    {
      v85 = [v4 objectForKeyedSubscript:@"Life"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_storeStrong(&v5->_life, v85);
      }
    }

    v86 = [v4 objectForKeyedSubscript:@"Live Nonce"];

    if (v86)
    {
      v87 = [v4 objectForKeyedSubscript:@"Live Nonce"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_storeStrong(&v5->_liveNonce, v87);
      }
    }

    v88 = [v4 objectForKeyedSubscript:@"Logical Unit Number"];

    if (v88)
    {
      v89 = [v4 objectForKeyedSubscript:@"Logical Unit Number"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_storeStrong(&v5->_logicalUnitNumber, v89);
      }
    }

    v90 = [v4 objectForKeyedSubscript:@"Manifest Epoch"];

    if (v90)
    {
      v91 = [v4 objectForKeyedSubscript:@"Manifest Epoch"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_storeStrong(&v5->_manifestEpoch, v91);
      }
    }

    v92 = [v4 objectForKeyedSubscript:@"Manifest Prefix"];

    if (v92)
    {
      v93 = [v4 objectForKeyedSubscript:@"Manifest Prefix"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v94 = [v93 copy];
        manifestPrefix = v5->_manifestPrefix;
        v5->_manifestPrefix = v94;
      }
    }

    v96 = [v4 objectForKeyedSubscript:@"Manifest Suffix"];

    if (v96)
    {
      v97 = [v4 objectForKeyedSubscript:@"Manifest Suffix"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v98 = [v97 copy];
        manifestSuffix = v5->_manifestSuffix;
        v5->_manifestSuffix = v98;
      }
    }

    v100 = [v4 objectForKeyedSubscript:@"Nonce"];

    if (v100)
    {
      v101 = [v4 objectForKeyedSubscript:@"Nonce"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v102 = [v101 copy];
        nonce = v5->_nonce;
        v5->_nonce = v102;
      }
    }

    v104 = [v4 objectForKeyedSubscript:@"Nonce Seed"];

    if (v104)
    {
      v105 = [v4 objectForKeyedSubscript:@"Nonce Seed"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v106 = [v105 copy];
        nonceSeed = v5->_nonceSeed;
        v5->_nonceSeed = v106;
      }
    }

    v108 = [v4 objectForKeyedSubscript:@"Prefix Needs LUN"];

    if (v108)
    {
      v109 = [v4 objectForKeyedSubscript:@"Prefix Needs LUN"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_storeStrong(&v5->_prefixNeedsLUN, v109);
      }
    }

    v110 = [v4 objectForKeyedSubscript:@"Production Mode"];

    if (v110)
    {
      v111 = [v4 objectForKeyedSubscript:@"Production Mode"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_storeStrong(&v5->_productionMode, v111);
      }
    }

    v112 = [v4 objectForKeyedSubscript:@"Provisioning"];

    if (v112)
    {
      v113 = [v4 objectForKeyedSubscript:@"Provisioning"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_storeStrong(&v5->_provisioning, v113);
      }
    }

    v114 = [v4 objectForKeyedSubscript:@"Real HDCP Key Present"];

    if (v114)
    {
      v115 = [v4 objectForKeyedSubscript:@"Real HDCP Key Present"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_storeStrong(&v5->_realHdcpKeyPresent, v115);
      }
    }

    v116 = [v4 objectForKeyedSubscript:@"Requires Personalization"];

    if (v116)
    {
      v117 = [v4 objectForKeyedSubscript:@"Requires Personalization"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_storeStrong(&v5->_requiresPersonalization, v117);
      }
    }

    v118 = [v4 objectForKeyedSubscript:@"Security Domain"];

    if (v118)
    {
      v119 = [v4 objectForKeyedSubscript:@"Security Domain"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_storeStrong(&v5->_securityDomain, v119);
      }
    }

    v120 = [v4 objectForKeyedSubscript:@"Security Mode"];

    if (v120)
    {
      v121 = [v4 objectForKeyedSubscript:@"Security Mode"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_storeStrong(&v5->_securityMode, v121);
      }
    }

    v122 = [v4 objectForKeyedSubscript:@"Suffix Needs LUN"];

    if (v122)
    {
      v123 = [v4 objectForKeyedSubscript:@"Suffix Needs LUN"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_storeStrong(&v5->_suffixNeedsLUN, v123);
      }
    }

    v124 = [v4 objectForKeyedSubscript:@"Ticket LongName"];

    if (v124)
    {
      v125 = [v4 objectForKeyedSubscript:@"Ticket LongName"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v126 = [v125 copy];
        ticketLongName = v5->_ticketLongName;
        v5->_ticketLongName = v126;
      }
    }
  }

  v128 = v5;

  return v128;
}

- (UARPComponentConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(UARPComponentConfiguration *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Endpoint ID"];
    endpointID = v5->_endpointID;
    v5->_endpointID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Component Tag"];
    componentTag = v5->_componentTag;
    v5->_componentTag = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Firmware Version"];
    firmwareVersion = v5->_firmwareVersion;
    v5->_firmwareVersion = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Friendly Name"];
    friendlyName = v5->_friendlyName;
    v5->_friendlyName = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Hardware Version"];
    hardwareVersion = v5->_hardwareVersion;
    v5->_hardwareVersion = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Manufacturer Name"];
    manufacturerName = v5->_manufacturerName;
    v5->_manufacturerName = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Model Name"];
    modelName = v5->_modelName;
    v5->_modelName = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Serial Number"];
    serialNumber = v5->_serialNumber;
    v5->_serialNumber = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Staged Firmware Version"];
    stagedFirmwareVersion = v5->_stagedFirmwareVersion;
    v5->_stagedFirmwareVersion = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Apple Model Number"];
    appleModelNumber = v5->_appleModelNumber;
    v5->_appleModelNumber = v24;

    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AssetIdentifier"];
    assetIdentifier = v5->_assetIdentifier;
    v5->_assetIdentifier = v26;

    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Hw Fusing Type"];
    hwFusingType = v5->_hwFusingType;
    v5->_hwFusingType = v28;

    v30 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Board ID (32-bit)"];
    boardID32 = v5->_boardID32;
    v5->_boardID32 = v30;

    v32 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Board ID (64-bit)"];
    boardID64 = v5->_boardID64;
    v5->_boardID64 = v32;

    v34 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Chip Epoch"];
    chipEpoch = v5->_chipEpoch;
    v5->_chipEpoch = v34;

    v36 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Chip ID"];
    chipID = v5->_chipID;
    v5->_chipID = v36;

    v38 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Chip Revision"];
    chipRevision = v5->_chipRevision;
    v5->_chipRevision = v38;

    v40 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ECID"];
    ECID = v5->_ECID;
    v5->_ECID = v40;

    v42 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ECID Data"];
    ecidData = v5->_ecidData;
    v5->_ecidData = v42;

    v44 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Enable Future FW Version"];
    enableFutureFWVersion = v5->_enableFutureFWVersion;
    v5->_enableFutureFWVersion = v44;

    v46 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Enable Mix Match"];
    enableMixMatch = v5->_enableMixMatch;
    v5->_enableMixMatch = v46;

    v48 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"FTAB Generation"];
    ftabGeneration = v5->_ftabGeneration;
    v5->_ftabGeneration = v48;

    v50 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Hardware Specific"];
    hardwareSpecific = v5->_hardwareSpecific;
    v5->_hardwareSpecific = v50;

    v52 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Life"];
    life = v5->_life;
    v5->_life = v52;

    v54 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Live Nonce"];
    liveNonce = v5->_liveNonce;
    v5->_liveNonce = v54;

    v56 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Logical Unit Number"];
    logicalUnitNumber = v5->_logicalUnitNumber;
    v5->_logicalUnitNumber = v56;

    v58 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Manifest Epoch"];
    manifestEpoch = v5->_manifestEpoch;
    v5->_manifestEpoch = v58;

    v60 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Manifest Prefix"];
    manifestPrefix = v5->_manifestPrefix;
    v5->_manifestPrefix = v60;

    v62 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Manifest Suffix"];
    manifestSuffix = v5->_manifestSuffix;
    v5->_manifestSuffix = v62;

    v64 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Nonce"];
    nonce = v5->_nonce;
    v5->_nonce = v64;

    v66 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Nonce Seed"];
    nonceSeed = v5->_nonceSeed;
    v5->_nonceSeed = v66;

    v68 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Prefix Needs LUN"];
    prefixNeedsLUN = v5->_prefixNeedsLUN;
    v5->_prefixNeedsLUN = v68;

    v70 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Production Mode"];
    productionMode = v5->_productionMode;
    v5->_productionMode = v70;

    v72 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Provisioning"];
    provisioning = v5->_provisioning;
    v5->_provisioning = v72;

    v74 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Real HDCP Key Present"];
    realHdcpKeyPresent = v5->_realHdcpKeyPresent;
    v5->_realHdcpKeyPresent = v74;

    v76 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Requires Personalization"];
    requiresPersonalization = v5->_requiresPersonalization;
    v5->_requiresPersonalization = v76;

    v78 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Security Domain"];
    securityDomain = v5->_securityDomain;
    v5->_securityDomain = v78;

    v80 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Security Mode"];
    securityMode = v5->_securityMode;
    v5->_securityMode = v80;

    v82 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Suffix Needs LUN"];
    suffixNeedsLUN = v5->_suffixNeedsLUN;
    v5->_suffixNeedsLUN = v82;

    v84 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Ticket LongName"];
    ticketLongName = v5->_ticketLongName;
    v5->_ticketLongName = v84;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  endpointID = self->_endpointID;
  v5 = a3;
  [v5 encodeObject:endpointID forKey:@"Endpoint ID"];
  [v5 encodeObject:self->_componentTag forKey:@"Component Tag"];
  [v5 encodeObject:self->_firmwareVersion forKey:@"Firmware Version"];
  [v5 encodeObject:self->_friendlyName forKey:@"Friendly Name"];
  [v5 encodeObject:self->_hardwareVersion forKey:@"Hardware Version"];
  [v5 encodeObject:self->_manufacturerName forKey:@"Manufacturer Name"];
  [v5 encodeObject:self->_modelName forKey:@"Model Name"];
  [v5 encodeObject:self->_serialNumber forKey:@"Serial Number"];
  [v5 encodeObject:self->_stagedFirmwareVersion forKey:@"Staged Firmware Version"];
  [v5 encodeObject:self->_appleModelNumber forKey:@"Apple Model Number"];
  [v5 encodeObject:self->_assetIdentifier forKey:@"AssetIdentifier"];
  [v5 encodeObject:self->_hwFusingType forKey:@"Hw Fusing Type"];
  [v5 encodeObject:self->_boardID32 forKey:@"Board ID (32-bit)"];
  [v5 encodeObject:self->_boardID64 forKey:@"Board ID (64-bit)"];
  [v5 encodeObject:self->_chipEpoch forKey:@"Chip Epoch"];
  [v5 encodeObject:self->_chipID forKey:@"Chip ID"];
  [v5 encodeObject:self->_chipRevision forKey:@"Chip Revision"];
  [v5 encodeObject:self->_ECID forKey:@"ECID"];
  [v5 encodeObject:self->_ecidData forKey:@"ECID Data"];
  [v5 encodeObject:self->_enableFutureFWVersion forKey:@"Enable Future FW Version"];
  [v5 encodeObject:self->_enableMixMatch forKey:@"Enable Mix Match"];
  [v5 encodeObject:self->_ftabGeneration forKey:@"FTAB Generation"];
  [v5 encodeObject:self->_hardwareSpecific forKey:@"Hardware Specific"];
  [v5 encodeObject:self->_life forKey:@"Life"];
  [v5 encodeObject:self->_liveNonce forKey:@"Live Nonce"];
  [v5 encodeObject:self->_logicalUnitNumber forKey:@"Logical Unit Number"];
  [v5 encodeObject:self->_manifestEpoch forKey:@"Manifest Epoch"];
  [v5 encodeObject:self->_manifestPrefix forKey:@"Manifest Prefix"];
  [v5 encodeObject:self->_manifestSuffix forKey:@"Manifest Suffix"];
  [v5 encodeObject:self->_nonce forKey:@"Nonce"];
  [v5 encodeObject:self->_nonceSeed forKey:@"Nonce Seed"];
  [v5 encodeObject:self->_prefixNeedsLUN forKey:@"Prefix Needs LUN"];
  [v5 encodeObject:self->_productionMode forKey:@"Production Mode"];
  [v5 encodeObject:self->_provisioning forKey:@"Provisioning"];
  [v5 encodeObject:self->_realHdcpKeyPresent forKey:@"Real HDCP Key Present"];
  [v5 encodeObject:self->_requiresPersonalization forKey:@"Requires Personalization"];
  [v5 encodeObject:self->_securityDomain forKey:@"Security Domain"];
  [v5 encodeObject:self->_securityMode forKey:@"Security Mode"];
  [v5 encodeObject:self->_suffixNeedsLUN forKey:@"Suffix Needs LUN"];
  [v5 encodeObject:self->_ticketLongName forKey:@"Ticket LongName"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(UARPComponentConfiguration);
  v5 = [(NSNumber *)self->_endpointID copy];
  [(UARPComponentConfiguration *)v4 setEndpointID:v5];

  v6 = [(UARPComponentTag *)self->_componentTag copy];
  [(UARPComponentConfiguration *)v4 setComponentTag:v6];

  v7 = [(NSString *)self->_friendlyName copy];
  [(UARPComponentConfiguration *)v4 setFriendlyName:v7];

  v8 = [(UARPComponentVersion *)self->_firmwareVersion copy];
  [(UARPComponentConfiguration *)v4 setFirmwareVersion:v8];

  v9 = [(NSString *)self->_hardwareVersion copy];
  [(UARPComponentConfiguration *)v4 setHardwareVersion:v9];

  v10 = [(NSString *)self->_manufacturerName copy];
  [(UARPComponentConfiguration *)v4 setManufacturerName:v10];

  v11 = [(NSString *)self->_modelName copy];
  [(UARPComponentConfiguration *)v4 setModelName:v11];

  v12 = [(NSString *)self->_serialNumber copy];
  [(UARPComponentConfiguration *)v4 setSerialNumber:v12];

  v13 = [(UARPComponentVersion *)self->_stagedFirmwareVersion copy];
  [(UARPComponentConfiguration *)v4 setStagedFirmwareVersion:v13];

  v14 = [(NSString *)self->_appleModelNumber copy];
  [(UARPComponentConfiguration *)v4 setAppleModelNumber:v14];

  v15 = [(NSString *)self->_hwFusingType copy];
  [(UARPComponentConfiguration *)v4 setHwFusingType:v15];

  [(UARPComponentConfiguration *)v4 setBoardID32:self->_boardID32];
  [(UARPComponentConfiguration *)v4 setBoardID64:self->_boardID64];
  [(UARPComponentConfiguration *)v4 setChipEpoch:self->_chipEpoch];
  [(UARPComponentConfiguration *)v4 setChipID:self->_chipID];
  [(UARPComponentConfiguration *)v4 setChipRevision:self->_chipRevision];
  [(UARPComponentConfiguration *)v4 setECID:self->_ECID];
  v16 = [(NSData *)self->_ecidData copy];
  [(UARPComponentConfiguration *)v4 setEcidData:v16];

  [(UARPComponentConfiguration *)v4 setEnableFutureFWVersion:self->_enableFutureFWVersion];
  [(UARPComponentConfiguration *)v4 setEnableMixMatch:self->_enableMixMatch];
  [(UARPComponentConfiguration *)v4 setFtabGeneration:self->_ftabGeneration];
  v17 = [(NSData *)self->_hardwareSpecific copy];
  [(UARPComponentConfiguration *)v4 setHardwareSpecific:v17];

  [(UARPComponentConfiguration *)v4 setLife:self->_life];
  [(UARPComponentConfiguration *)v4 setLiveNonce:self->_liveNonce];
  [(UARPComponentConfiguration *)v4 setLogicalUnitNumber:self->_logicalUnitNumber];
  [(UARPComponentConfiguration *)v4 setManifestEpoch:self->_manifestEpoch];
  v18 = [(NSString *)self->_manifestPrefix copy];
  [(UARPComponentConfiguration *)v4 setManifestPrefix:v18];

  v19 = [(NSString *)self->_manifestSuffix copy];
  [(UARPComponentConfiguration *)v4 setManifestSuffix:v19];

  v20 = [(NSData *)self->_nonce copy];
  [(UARPComponentConfiguration *)v4 setNonce:v20];

  v21 = [(NSData *)self->_nonceSeed copy];
  [(UARPComponentConfiguration *)v4 setNonceSeed:v21];

  [(UARPComponentConfiguration *)v4 setPrefixNeedsLUN:self->_prefixNeedsLUN];
  [(UARPComponentConfiguration *)v4 setProductionMode:self->_productionMode];
  [(UARPComponentConfiguration *)v4 setProvisioning:self->_provisioning];
  [(UARPComponentConfiguration *)v4 setRealHdcpKeyPresent:self->_realHdcpKeyPresent];
  [(UARPComponentConfiguration *)v4 setRequiresPersonalization:self->_requiresPersonalization];
  [(UARPComponentConfiguration *)v4 setSecurityDomain:self->_securityDomain];
  [(UARPComponentConfiguration *)v4 setSecurityMode:self->_securityMode];
  [(UARPComponentConfiguration *)v4 setSuffixNeedsLUN:self->_suffixNeedsLUN];
  v22 = [(NSString *)self->_ticketLongName copy];
  [(UARPComponentConfiguration *)v4 setTicketLongName:v22];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (self == v4)
    {
      v84 = 1;
    }

    else
    {
      v5 = v4;
      endpointID = self->_endpointID;
      v7 = [(UARPComponentConfiguration *)v5 endpointID];
      LODWORD(endpointID) = [(NSNumber *)endpointID isEqualToNumber:v7];

      if (!endpointID)
      {
        goto LABEL_43;
      }

      componentTag = self->_componentTag;
      v9 = [(UARPComponentConfiguration *)v5 componentTag];
      LODWORD(componentTag) = [(UARPComponentTag *)componentTag isEqual:v9];

      if (!componentTag)
      {
        goto LABEL_43;
      }

      firmwareVersion = self->_firmwareVersion;
      v11 = [(UARPComponentConfiguration *)v5 firmwareVersion];
      LODWORD(firmwareVersion) = [(UARPComponentVersion *)firmwareVersion isEqual:v11];

      if (!firmwareVersion)
      {
        goto LABEL_43;
      }

      friendlyName = self->_friendlyName;
      v13 = [(UARPComponentConfiguration *)v5 friendlyName];
      LODWORD(friendlyName) = [(NSString *)friendlyName isEqualToString:v13];

      if (!friendlyName)
      {
        goto LABEL_43;
      }

      hardwareVersion = self->_hardwareVersion;
      v15 = [(UARPComponentConfiguration *)v5 hardwareVersion];
      LODWORD(hardwareVersion) = [(NSString *)hardwareVersion isEqualToString:v15];

      if (!hardwareVersion)
      {
        goto LABEL_43;
      }

      manufacturerName = self->_manufacturerName;
      v17 = [(UARPComponentConfiguration *)v5 manufacturerName];
      LODWORD(manufacturerName) = [(NSString *)manufacturerName isEqualToString:v17];

      if (!manufacturerName)
      {
        goto LABEL_43;
      }

      modelName = self->_modelName;
      v19 = [(UARPComponentConfiguration *)v5 modelName];
      LODWORD(modelName) = [(NSString *)modelName isEqualToString:v19];

      if (!modelName)
      {
        goto LABEL_43;
      }

      serialNumber = self->_serialNumber;
      v21 = [(UARPComponentConfiguration *)v5 serialNumber];
      LODWORD(serialNumber) = [(NSString *)serialNumber isEqualToString:v21];

      if (!serialNumber)
      {
        goto LABEL_43;
      }

      stagedFirmwareVersion = self->_stagedFirmwareVersion;
      v23 = [(UARPComponentConfiguration *)v5 stagedFirmwareVersion];
      LODWORD(stagedFirmwareVersion) = [(UARPComponentVersion *)stagedFirmwareVersion isEqual:v23];

      if (!stagedFirmwareVersion)
      {
        goto LABEL_43;
      }

      appleModelNumber = self->_appleModelNumber;
      v25 = [(UARPComponentConfiguration *)v5 appleModelNumber];
      LODWORD(appleModelNumber) = [(NSString *)appleModelNumber isEqualToString:v25];

      if (!appleModelNumber)
      {
        goto LABEL_43;
      }

      hwFusingType = self->_hwFusingType;
      v27 = [(UARPComponentConfiguration *)v5 hwFusingType];
      LODWORD(hwFusingType) = [(NSString *)hwFusingType isEqualToString:v27];

      if (!hwFusingType)
      {
        goto LABEL_43;
      }

      boardID32 = self->_boardID32;
      v29 = [(UARPComponentConfiguration *)v5 boardID32];
      LODWORD(boardID32) = [(NSNumber *)boardID32 isEqualToNumber:v29];

      if (!boardID32)
      {
        goto LABEL_43;
      }

      boardID64 = self->_boardID64;
      v31 = [(UARPComponentConfiguration *)v5 boardID64];
      LODWORD(boardID64) = [(NSNumber *)boardID64 isEqualToNumber:v31];

      if (!boardID64)
      {
        goto LABEL_43;
      }

      chipEpoch = self->_chipEpoch;
      v33 = [(UARPComponentConfiguration *)v5 chipEpoch];
      LODWORD(chipEpoch) = [(NSNumber *)chipEpoch isEqualToNumber:v33];

      if (!chipEpoch)
      {
        goto LABEL_43;
      }

      chipID = self->_chipID;
      v35 = [(UARPComponentConfiguration *)v5 chipID];
      LODWORD(chipID) = [(NSNumber *)chipID isEqualToNumber:v35];

      if (!chipID)
      {
        goto LABEL_43;
      }

      chipRevision = self->_chipRevision;
      v37 = [(UARPComponentConfiguration *)v5 chipRevision];
      LODWORD(chipRevision) = [(NSNumber *)chipRevision isEqualToNumber:v37];

      if (!chipRevision)
      {
        goto LABEL_43;
      }

      ECID = self->_ECID;
      v39 = [(UARPComponentConfiguration *)v5 ECID];
      LODWORD(ECID) = [(NSNumber *)ECID isEqualToNumber:v39];

      if (!ECID)
      {
        goto LABEL_43;
      }

      ecidData = self->_ecidData;
      v41 = [(UARPComponentConfiguration *)v5 ecidData];
      LODWORD(ecidData) = [(NSData *)ecidData isEqualToData:v41];

      if (!ecidData)
      {
        goto LABEL_43;
      }

      enableFutureFWVersion = self->_enableFutureFWVersion;
      v43 = [(UARPComponentConfiguration *)v5 enableFutureFWVersion];
      LODWORD(enableFutureFWVersion) = [(NSNumber *)enableFutureFWVersion isEqualToNumber:v43];

      if (!enableFutureFWVersion)
      {
        goto LABEL_43;
      }

      enableMixMatch = self->_enableMixMatch;
      v45 = [(UARPComponentConfiguration *)v5 enableMixMatch];
      LODWORD(enableMixMatch) = [(NSNumber *)enableMixMatch isEqualToNumber:v45];

      if (!enableMixMatch)
      {
        goto LABEL_43;
      }

      ftabGeneration = self->_ftabGeneration;
      v47 = [(UARPComponentConfiguration *)v5 ftabGeneration];
      LODWORD(ftabGeneration) = [(NSNumber *)ftabGeneration isEqualToNumber:v47];

      if (!ftabGeneration)
      {
        goto LABEL_43;
      }

      hardwareSpecific = self->_hardwareSpecific;
      v49 = [(UARPComponentConfiguration *)v5 hardwareSpecific];
      LODWORD(hardwareSpecific) = [(NSData *)hardwareSpecific isEqualToData:v49];

      if (!hardwareSpecific)
      {
        goto LABEL_43;
      }

      life = self->_life;
      v51 = [(UARPComponentConfiguration *)v5 life];
      LODWORD(life) = [(NSNumber *)life isEqualToNumber:v51];

      if (!life)
      {
        goto LABEL_43;
      }

      liveNonce = self->_liveNonce;
      v53 = [(UARPComponentConfiguration *)v5 liveNonce];
      LODWORD(liveNonce) = [(NSNumber *)liveNonce isEqualToNumber:v53];

      if (!liveNonce)
      {
        goto LABEL_43;
      }

      logicalUnitNumber = self->_logicalUnitNumber;
      v55 = [(UARPComponentConfiguration *)v5 logicalUnitNumber];
      LODWORD(logicalUnitNumber) = [(NSNumber *)logicalUnitNumber isEqualToNumber:v55];

      if (!logicalUnitNumber)
      {
        goto LABEL_43;
      }

      manifestEpoch = self->_manifestEpoch;
      v57 = [(UARPComponentConfiguration *)v5 manifestEpoch];
      LODWORD(manifestEpoch) = [(NSNumber *)manifestEpoch isEqualToNumber:v57];

      if (!manifestEpoch)
      {
        goto LABEL_43;
      }

      manifestPrefix = self->_manifestPrefix;
      v59 = [(UARPComponentConfiguration *)v5 manifestPrefix];
      LODWORD(manifestPrefix) = [(NSString *)manifestPrefix isEqualToString:v59];

      if (!manifestPrefix)
      {
        goto LABEL_43;
      }

      manifestSuffix = self->_manifestSuffix;
      v61 = [(UARPComponentConfiguration *)v5 manifestSuffix];
      LODWORD(manifestSuffix) = [(NSString *)manifestSuffix isEqualToString:v61];

      if (!manifestSuffix)
      {
        goto LABEL_43;
      }

      nonce = self->_nonce;
      v63 = [(UARPComponentConfiguration *)v5 nonce];
      LODWORD(nonce) = [(NSData *)nonce isEqualToData:v63];

      if (!nonce)
      {
        goto LABEL_43;
      }

      nonceSeed = self->_nonceSeed;
      v65 = [(UARPComponentConfiguration *)v5 nonceSeed];
      LODWORD(nonceSeed) = [(NSData *)nonceSeed isEqualToData:v65];

      if (!nonceSeed)
      {
        goto LABEL_43;
      }

      prefixNeedsLUN = self->_prefixNeedsLUN;
      v67 = [(UARPComponentConfiguration *)v5 prefixNeedsLUN];
      LODWORD(prefixNeedsLUN) = [(NSNumber *)prefixNeedsLUN isEqualToNumber:v67];

      if (!prefixNeedsLUN)
      {
        goto LABEL_43;
      }

      productionMode = self->_productionMode;
      v69 = [(UARPComponentConfiguration *)v5 productionMode];
      LODWORD(productionMode) = [(NSNumber *)productionMode isEqualToNumber:v69];

      if (!productionMode)
      {
        goto LABEL_43;
      }

      provisioning = self->_provisioning;
      v71 = [(UARPComponentConfiguration *)v5 provisioning];
      LODWORD(provisioning) = [(NSNumber *)provisioning isEqualToNumber:v71];

      if (!provisioning)
      {
        goto LABEL_43;
      }

      realHdcpKeyPresent = self->_realHdcpKeyPresent;
      v73 = [(UARPComponentConfiguration *)v5 realHdcpKeyPresent];
      LODWORD(realHdcpKeyPresent) = [(NSNumber *)realHdcpKeyPresent isEqualToNumber:v73];

      if (!realHdcpKeyPresent)
      {
        goto LABEL_43;
      }

      requiresPersonalization = self->_requiresPersonalization;
      v75 = [(UARPComponentConfiguration *)v5 requiresPersonalization];
      LODWORD(requiresPersonalization) = [(NSNumber *)requiresPersonalization isEqualToNumber:v75];

      if (!requiresPersonalization)
      {
        goto LABEL_43;
      }

      securityDomain = self->_securityDomain;
      v77 = [(UARPComponentConfiguration *)v5 securityDomain];
      LODWORD(securityDomain) = [(NSNumber *)securityDomain isEqualToNumber:v77];

      if (!securityDomain)
      {
        goto LABEL_43;
      }

      securityMode = self->_securityMode;
      v79 = [(UARPComponentConfiguration *)v5 securityMode];
      LODWORD(securityMode) = [(NSNumber *)securityMode isEqualToNumber:v79];

      if (!securityMode)
      {
        goto LABEL_43;
      }

      suffixNeedsLUN = self->_suffixNeedsLUN;
      v81 = [(UARPComponentConfiguration *)v5 suffixNeedsLUN];
      LODWORD(suffixNeedsLUN) = [(NSNumber *)suffixNeedsLUN isEqualToNumber:v81];

      if (suffixNeedsLUN)
      {
        ticketLongName = self->_ticketLongName;
        v83 = [(UARPComponentConfiguration *)v5 ticketLongName];
        v84 = [(NSString *)ticketLongName isEqualToString:v83];
      }

      else
      {
LABEL_43:
        v84 = 0;
      }
    }
  }

  else
  {
    v84 = 0;
  }

  return v84;
}

- (unint64_t)hash
{
  ecidData = self->_ecidData;
  boardID64 = self->_boardID64;
  v4 = [NSString stringWithFormat:@"%@-%@-%@-%@-%@-%@-%@-%@-%@-%@-%@-%@-%@-%@-%@-%@-%@-%@-%@-%@-%@-%@-%@-%@-%@-%@-%@-%@-%@-%@-%@-%@-%@-%@-%@-%@-%@", self->_manufacturerName, self->_modelName, self->_serialNumber, self->_hardwareVersion, self->_firmwareVersion, self->_stagedFirmwareVersion, self->_componentTag, self->_friendlyName, self->_appleModelNumber, self->_hwFusingType, self->_boardID32, boardID64, self->_chipID, self->_chipRevision, self->_ECID, ecidData, self->_ftabGeneration, self->_securityDomain, self->_securityMode, self->_productionMode, self->_chipEpoch, self->_liveNonce, self->_enableFutureFWVersion, self->_enableMixMatch, self->_nonce, self->_nonceSeed, self->_life, self->_manifestEpoch, self->_provisioning, self->_realHdcpKeyPresent, self->_requiresPersonalization, self->_manifestPrefix, self->_manifestSuffix, self->_ticketLongName, self->_prefixNeedsLUN, self->_suffixNeedsLUN, self->_logicalUnitNumber];
  v5 = [v4 hash];

  return v5;
}

- (id)exportAsDictionary
{
  v3 = objc_opt_new();
  v4 = v3;
  endpointID = self->_endpointID;
  if (endpointID)
  {
    [v3 setObject:endpointID forKeyedSubscript:@"Endpoint ID"];
  }

  componentTag = self->_componentTag;
  if (componentTag)
  {
    v7 = [NSString stringWithFormat:@"%c%c%c%c", [(UARPComponentTag *)componentTag char1], [(UARPComponentTag *)self->_componentTag char2], [(UARPComponentTag *)self->_componentTag char3], [(UARPComponentTag *)self->_componentTag char4]];
    [v4 setObject:v7 forKeyedSubscript:@"Component Tag"];
  }

  firmwareVersion = self->_firmwareVersion;
  if (firmwareVersion)
  {
    v9 = [(UARPComponentVersion *)firmwareVersion versionString];
    [v4 setObject:v9 forKeyedSubscript:@"Firmware Version"];
  }

  friendlyName = self->_friendlyName;
  if (friendlyName)
  {
    [v4 setObject:friendlyName forKeyedSubscript:@"Friendly Name"];
  }

  hardwareVersion = self->_hardwareVersion;
  if (hardwareVersion)
  {
    [v4 setObject:hardwareVersion forKeyedSubscript:@"Hardware Version"];
  }

  manufacturerName = self->_manufacturerName;
  if (manufacturerName)
  {
    [v4 setObject:manufacturerName forKeyedSubscript:@"Manufacturer Name"];
  }

  modelName = self->_modelName;
  if (modelName)
  {
    [v4 setObject:modelName forKeyedSubscript:@"Model Name"];
  }

  serialNumber = self->_serialNumber;
  if (serialNumber)
  {
    [v4 setObject:serialNumber forKeyedSubscript:@"Serial Number"];
  }

  stagedFirmwareVersion = self->_stagedFirmwareVersion;
  if (stagedFirmwareVersion)
  {
    v16 = [(UARPComponentVersion *)stagedFirmwareVersion versionString];
    [v4 setObject:v16 forKeyedSubscript:@"Staged Firmware Version"];
  }

  appleModelNumber = self->_appleModelNumber;
  if (appleModelNumber)
  {
    [v4 setObject:appleModelNumber forKeyedSubscript:@"Apple Model Number"];
    if (self->_appleModelNumber)
    {
      [v4 setObject:self->_assetIdentifier forKeyedSubscript:@"AssetIdentifier"];
    }
  }

  hwFusingType = self->_hwFusingType;
  if (hwFusingType)
  {
    [v4 setObject:hwFusingType forKeyedSubscript:@"Hw Fusing Type"];
  }

  boardID32 = self->_boardID32;
  if (boardID32)
  {
    v20 = [NSNumber numberWithUnsignedLong:[(NSNumber *)boardID32 unsignedLongValue]];
    [v4 setObject:v20 forKeyedSubscript:@"Board ID (32-bit)"];
  }

  boardID64 = self->_boardID64;
  if (boardID64)
  {
    v22 = [NSNumber numberWithUnsignedLongLong:[(NSNumber *)boardID64 unsignedLongLongValue]];
    [v4 setObject:v22 forKeyedSubscript:@"Board ID (64-bit)"];
  }

  chipEpoch = self->_chipEpoch;
  if (chipEpoch)
  {
    v24 = [NSNumber numberWithUnsignedLong:[(NSNumber *)chipEpoch unsignedLongValue]];
    [v4 setObject:v24 forKeyedSubscript:@"Chip Epoch"];
  }

  chipID = self->_chipID;
  if (chipID)
  {
    v26 = [NSNumber numberWithUnsignedLong:[(NSNumber *)chipID unsignedLongValue]];
    [v4 setObject:v26 forKeyedSubscript:@"Chip ID"];
  }

  chipRevision = self->_chipRevision;
  if (chipRevision)
  {
    v28 = [NSNumber numberWithUnsignedLong:[(NSNumber *)chipRevision unsignedLongValue]];
    [v4 setObject:v28 forKeyedSubscript:@"Chip Revision"];
  }

  ECID = self->_ECID;
  if (ECID)
  {
    v30 = [NSNumber numberWithUnsignedLongLong:[(NSNumber *)ECID unsignedLongLongValue]];
    [v4 setObject:v30 forKeyedSubscript:@"ECID"];
  }

  ecidData = self->_ecidData;
  if (ecidData)
  {
    [v4 setObject:ecidData forKeyedSubscript:@"ECID Data"];
  }

  if (self->_enableFutureFWVersion)
  {
    v32 = [NSNumber numberWithUnsignedLong:[(NSNumber *)self->_enableMixMatch unsignedLongValue]];
    [v4 setObject:v32 forKeyedSubscript:@"Enable Future FW Version"];
  }

  enableMixMatch = self->_enableMixMatch;
  if (enableMixMatch)
  {
    v34 = [NSNumber numberWithUnsignedLong:[(NSNumber *)enableMixMatch unsignedLongValue]];
    [v4 setObject:v34 forKeyedSubscript:@"Enable Mix Match"];
  }

  ftabGeneration = self->_ftabGeneration;
  if (ftabGeneration)
  {
    v36 = [NSNumber numberWithUnsignedLong:[(NSNumber *)ftabGeneration unsignedLongValue]];
    [v4 setObject:v36 forKeyedSubscript:@"FTAB Generation"];
  }

  hardwareSpecific = self->_hardwareSpecific;
  if (hardwareSpecific)
  {
    [v4 setObject:hardwareSpecific forKeyedSubscript:@"Hardware Specific"];
  }

  life = self->_life;
  if (life)
  {
    v39 = [NSNumber numberWithUnsignedLong:[(NSNumber *)life unsignedLongValue]];
    [v4 setObject:v39 forKeyedSubscript:@"Life"];
  }

  liveNonce = self->_liveNonce;
  if (liveNonce)
  {
    v41 = [NSNumber numberWithUnsignedLong:[(NSNumber *)liveNonce unsignedLongValue]];
    [v4 setObject:v41 forKeyedSubscript:@"Live Nonce"];
  }

  logicalUnitNumber = self->_logicalUnitNumber;
  if (logicalUnitNumber)
  {
    v43 = [NSNumber numberWithUnsignedLong:[(NSNumber *)logicalUnitNumber unsignedLongValue]];
    [v4 setObject:v43 forKeyedSubscript:@"Logical Unit Number"];
  }

  manifestEpoch = self->_manifestEpoch;
  if (manifestEpoch)
  {
    v45 = [NSNumber numberWithUnsignedLong:[(NSNumber *)manifestEpoch unsignedLongValue]];
    [v4 setObject:v45 forKeyedSubscript:@"Manifest Epoch"];
  }

  manifestPrefix = self->_manifestPrefix;
  if (manifestPrefix)
  {
    [v4 setObject:manifestPrefix forKeyedSubscript:@"Manifest Prefix"];
  }

  manifestSuffix = self->_manifestSuffix;
  if (manifestSuffix)
  {
    [v4 setObject:manifestSuffix forKeyedSubscript:@"Manifest Suffix"];
  }

  nonce = self->_nonce;
  if (nonce)
  {
    [v4 setObject:nonce forKeyedSubscript:@"Nonce"];
  }

  nonceSeed = self->_nonceSeed;
  if (nonceSeed)
  {
    [v4 setObject:nonceSeed forKeyedSubscript:@"Nonce Seed"];
  }

  if (self->_prefixNeedsLUN)
  {
    [v4 setObject:&__kCFBooleanTrue forKeyedSubscript:@"Prefix Needs LUN"];
  }

  if (self->_productionMode)
  {
    [v4 setObject:&__kCFBooleanTrue forKeyedSubscript:@"Production Mode"];
  }

  if (self->_provisioning)
  {
    [v4 setObject:&__kCFBooleanTrue forKeyedSubscript:@"Provisioning"];
  }

  if (self->_requiresPersonalization)
  {
    [v4 setObject:&__kCFBooleanTrue forKeyedSubscript:@"Requires Personalization"];
  }

  if (self->_realHdcpKeyPresent)
  {
    [v4 setObject:&__kCFBooleanTrue forKeyedSubscript:@"Real HDCP Key Present"];
  }

  securityDomain = self->_securityDomain;
  if (securityDomain)
  {
    v51 = [NSNumber numberWithUnsignedLong:[(NSNumber *)securityDomain unsignedLongValue]];
    [v4 setObject:v51 forKeyedSubscript:@"Security Domain"];
  }

  if (self->_securityMode)
  {
    [v4 setObject:&__kCFBooleanTrue forKeyedSubscript:@"Security Mode"];
  }

  if (self->_suffixNeedsLUN)
  {
    [v4 setObject:&__kCFBooleanTrue forKeyedSubscript:@"Suffix Needs LUN"];
  }

  ticketLongName = self->_ticketLongName;
  if (ticketLongName)
  {
    [v4 setObject:ticketLongName forKeyedSubscript:@"Ticket LongName"];
  }

  v53 = [NSDictionary dictionaryWithDictionary:v4];

  return v53;
}

@end