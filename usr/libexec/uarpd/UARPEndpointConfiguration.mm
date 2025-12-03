@interface UARPEndpointConfiguration
- (BOOL)isEqual:(id)equal;
- (UARPEndpointConfiguration)init;
- (UARPEndpointConfiguration)initWithCoder:(id)coder;
- (UARPEndpointConfiguration)initWithURL:(id)l;
- (id)copyWithZone:(_NSZone *)zone;
- (id)exportAsDictionary;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UARPEndpointConfiguration

- (UARPEndpointConfiguration)init
{
  v8.receiver = self;
  v8.super_class = UARPEndpointConfiguration;
  v2 = [(UARPEndpointConfiguration *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    outstandingInfoProperties = v2->_outstandingInfoProperties;
    v2->_outstandingInfoProperties = v3;

    v5 = objc_opt_new();
    outstandingAppleProperties = v2->_outstandingAppleProperties;
    v2->_outstandingAppleProperties = v5;
  }

  return v2;
}

- (UARPEndpointConfiguration)initWithURL:(id)l
{
  lCopy = l;
  v5 = [(UARPEndpointConfiguration *)self init];

  if (v5)
  {
    v157 = 0;
    v6 = [NSDictionary dictionaryWithContentsOfURL:lCopy error:&v157];
    v152 = v157;
    v7 = [v6 objectForKeyedSubscript:@"Endpoint ID"];

    if (v7)
    {
      v8 = [v6 objectForKeyedSubscript:@"Endpoint ID"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_storeStrong(&v5->_endpointID, v8);
      }
    }

    v9 = [v6 objectForKeyedSubscript:@"Firmware Version"];

    if (v9)
    {
      v10 = [v6 objectForKeyedSubscript:@"Firmware Version"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = [[UARPComponentVersion alloc] initWithVersionString:v10];
        firmwareVersion = v5->_firmwareVersion;
        v5->_firmwareVersion = v11;
      }
    }

    v13 = [v6 objectForKeyedSubscript:@"Friendly Name"];

    if (v13)
    {
      v14 = [v6 objectForKeyedSubscript:@"Friendly Name"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = [v14 copy];
        friendlyName = v5->_friendlyName;
        v5->_friendlyName = v15;
      }
    }

    v17 = [v6 objectForKeyedSubscript:@"Hardware Version"];

    if (v17)
    {
      v18 = [v6 objectForKeyedSubscript:@"Hardware Version"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v19 = [v18 copy];
        hardwareVersion = v5->_hardwareVersion;
        v5->_hardwareVersion = v19;
      }
    }

    v21 = [v6 objectForKeyedSubscript:@"Manufacturer Name"];

    if (v21)
    {
      v22 = [v6 objectForKeyedSubscript:@"Manufacturer Name"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v23 = [v22 copy];
        manufacturerName = v5->_manufacturerName;
        v5->_manufacturerName = v23;
      }
    }

    v25 = [v6 objectForKeyedSubscript:@"Model Name"];

    if (v25)
    {
      v26 = [v6 objectForKeyedSubscript:@"Model Name"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v27 = [v26 copy];
        modelName = v5->_modelName;
        v5->_modelName = v27;
      }
    }

    v29 = [v6 objectForKeyedSubscript:@"Serial Number"];

    if (v29)
    {
      v30 = [v6 objectForKeyedSubscript:@"Serial Number"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v31 = [v30 copy];
        serialNumber = v5->_serialNumber;
        v5->_serialNumber = v31;
      }
    }

    v33 = [v6 objectForKeyedSubscript:@"Staged Firmware Version"];

    if (v33)
    {
      v34 = [v6 objectForKeyedSubscript:@"Staged Firmware Version"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v35 = [[UARPComponentVersion alloc] initWithVersionString:v34];
        stagedFirmwareVersion = v5->_stagedFirmwareVersion;
        v5->_stagedFirmwareVersion = v35;
      }
    }

    v37 = [v6 objectForKeyedSubscript:@"Protocol Version"];

    if (v37)
    {
      v38 = [v6 objectForKeyedSubscript:@"Protocol Version"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v39 = [v38 copy];
        protocolVersion = v5->_protocolVersion;
        v5->_protocolVersion = v39;
      }
    }

    v41 = [v6 objectForKeyedSubscript:@"Max Payload Length"];

    if (v41)
    {
      v42 = [v6 objectForKeyedSubscript:@"Max Payload Length"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v43 = [v42 copy];
        maxPayloadLength = v5->_maxPayloadLength;
        v5->_maxPayloadLength = v43;
      }
    }

    v45 = [v6 objectForKeyedSubscript:@"Payload Window Length"];

    if (v45)
    {
      v46 = [v6 objectForKeyedSubscript:@"Payload Window Length"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v47 = [v46 copy];
        payloadWindowLength = v5->_payloadWindowLength;
        v5->_payloadWindowLength = v47;
      }
    }

    v49 = [v6 objectForKeyedSubscript:@"Apple Model Number"];

    if (v49)
    {
      v50 = [v6 objectForKeyedSubscript:@"Apple Model Number"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v51 = [v50 copy];
        appleModelNumber = v5->_appleModelNumber;
        v5->_appleModelNumber = v51;
      }
    }

    v53 = [v6 objectForKeyedSubscript:@"Asset Identifier"];

    if (v53)
    {
      v54 = [v6 objectForKeyedSubscript:@"Asset Identifier"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v55 = [v54 copy];
        assetIdentifier = v5->_assetIdentifier;
        v5->_assetIdentifier = v55;
      }
    }

    v57 = [v6 objectForKeyedSubscript:@"Hw Fusing Type"];

    if (v57)
    {
      v58 = [v6 objectForKeyedSubscript:@"Hw Fusing Type"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v59 = [v58 copy];
        hwFusingType = v5->_hwFusingType;
        v5->_hwFusingType = v59;
      }
    }

    v61 = [v6 objectForKeyedSubscript:@"Ap Board ID"];

    if (v61)
    {
      v62 = [v6 objectForKeyedSubscript:@"Ap Board ID"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_storeStrong(&v5->_apBoardID, v62);
      }
    }

    v63 = [v6 objectForKeyedSubscript:@"Ap Chip ID"];

    if (v63)
    {
      v64 = [v6 objectForKeyedSubscript:@"Ap Chip ID"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_storeStrong(&v5->_apChipID, v64);
      }
    }

    v65 = [v6 objectForKeyedSubscript:@"Ap Production Mode"];

    if (v65)
    {
      v66 = [v6 objectForKeyedSubscript:@"Ap Production Mode"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_storeStrong(&v5->_apProductionMode, v66);
      }
    }

    v67 = [v6 objectForKeyedSubscript:@"Ap Security Mode"];

    if (v67)
    {
      v68 = [v6 objectForKeyedSubscript:@"Ap Security Mode"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_storeStrong(&v5->_apSecurityMode, v68);
      }
    }

    v69 = [v6 objectForKeyedSubscript:@"Board ID (32-bit)"];

    if (v69)
    {
      v70 = [v6 objectForKeyedSubscript:@"Board ID (32-bit)"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_storeStrong(&v5->_boardID32, v70);
      }
    }

    v71 = [v6 objectForKeyedSubscript:@"Board ID (64-bit)"];

    if (v71)
    {
      v72 = [v6 objectForKeyedSubscript:@"Board ID (64-bit)"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_storeStrong(&v5->_boardID64, v72);
      }
    }

    v73 = [v6 objectForKeyedSubscript:@"Chip Epoch"];

    if (v73)
    {
      v74 = [v6 objectForKeyedSubscript:@"Chip Epoch"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_storeStrong(&v5->_chipEpoch, v74);
      }
    }

    v75 = [v6 objectForKeyedSubscript:@"Chip ID"];

    if (v75)
    {
      v76 = [v6 objectForKeyedSubscript:@"Chip ID"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_storeStrong(&v5->_chipID, v76);
      }
    }

    v77 = [v6 objectForKeyedSubscript:@"Chip Revision"];

    if (v77)
    {
      v78 = [v6 objectForKeyedSubscript:@"Chip Revision"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_storeStrong(&v5->_chipRevision, v78);
      }
    }

    v79 = [v6 objectForKeyedSubscript:@"ECID"];

    if (v79)
    {
      v80 = [v6 objectForKeyedSubscript:@"ECID"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_storeStrong(&v5->_ECID, v80);
      }
    }

    v81 = [v6 objectForKeyedSubscript:@"ECID Data"];

    if (v81)
    {
      v82 = [v6 objectForKeyedSubscript:@"ECID Data"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v83 = [v82 copy];
        ecidData = v5->_ecidData;
        v5->_ecidData = v83;
      }
    }

    v85 = [v6 objectForKeyedSubscript:@"Enable Future FW Version"];

    if (v85)
    {
      v86 = [v6 objectForKeyedSubscript:@"Enable Future FW Version"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_storeStrong(&v5->_enableFutureFWVersion, v86);
      }
    }

    v87 = [v6 objectForKeyedSubscript:@"Enable Mix Match"];

    if (v87)
    {
      v88 = [v6 objectForKeyedSubscript:@"Enable Mix Match"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_storeStrong(&v5->_enableMixMatch, v88);
      }
    }

    v89 = [v6 objectForKeyedSubscript:@"FTAB Generation"];

    if (v89)
    {
      v90 = [v6 objectForKeyedSubscript:@"FTAB Generation"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v91 = [v90 copy];
        ftabGeneration = v5->_ftabGeneration;
        v5->_ftabGeneration = v91;
      }
    }

    v93 = [v6 objectForKeyedSubscript:@"Hardware Specific"];

    if (v93)
    {
      v94 = [v6 objectForKeyedSubscript:@"Hardware Specific"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v95 = [v94 copy];
        hardwareSpecific = v5->_hardwareSpecific;
        v5->_hardwareSpecific = v95;
      }
    }

    v97 = [v6 objectForKeyedSubscript:@"Life"];

    if (v97)
    {
      v98 = [v6 objectForKeyedSubscript:@"Life"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_storeStrong(&v5->_life, v98);
      }
    }

    v99 = [v6 objectForKeyedSubscript:@"Live Nonce"];

    if (v99)
    {
      v100 = [v6 objectForKeyedSubscript:@"Live Nonce"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_storeStrong(&v5->_liveNonce, v100);
      }
    }

    v101 = [v6 objectForKeyedSubscript:@"Logical Unit Number"];

    if (v101)
    {
      v102 = [v6 objectForKeyedSubscript:@"Logical Unit Number"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_storeStrong(&v5->_logicalUnitNumber, v102);
      }
    }

    v103 = [v6 objectForKeyedSubscript:@"Manifest Epoch"];

    if (v103)
    {
      v104 = [v6 objectForKeyedSubscript:@"Manifest Epoch"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_storeStrong(&v5->_manifestEpoch, v104);
      }
    }

    v105 = [v6 objectForKeyedSubscript:@"Manifest Prefix"];

    if (v105)
    {
      v106 = [v6 objectForKeyedSubscript:@"Manifest Prefix"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v107 = [v106 copy];
        manifestPrefix = v5->_manifestPrefix;
        v5->_manifestPrefix = v107;
      }
    }

    v109 = [v6 objectForKeyedSubscript:@"Manifest Suffix"];

    if (v109)
    {
      v110 = [v6 objectForKeyedSubscript:@"Manifest Suffix"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v111 = [v110 copy];
        manifestSuffix = v5->_manifestSuffix;
        v5->_manifestSuffix = v111;
      }
    }

    v113 = [v6 objectForKeyedSubscript:@"Nonce"];

    if (v113)
    {
      v114 = [v6 objectForKeyedSubscript:@"Nonce"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v115 = [v114 copy];
        nonce = v5->_nonce;
        v5->_nonce = v115;
      }
    }

    v117 = [v6 objectForKeyedSubscript:@"Nonce Seed"];

    if (v117)
    {
      v118 = [v6 objectForKeyedSubscript:@"Nonce Seed"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v119 = [v118 copy];
        nonceSeed = v5->_nonceSeed;
        v5->_nonceSeed = v119;
      }
    }

    v121 = [v6 objectForKeyedSubscript:@"Prefix Needs LUN"];

    if (v121)
    {
      v122 = [v6 objectForKeyedSubscript:@"Prefix Needs LUN"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_storeStrong(&v5->_prefixNeedsLUN, v122);
      }
    }

    v123 = [v6 objectForKeyedSubscript:@"Production Mode"];

    if (v123)
    {
      v124 = [v6 objectForKeyedSubscript:@"Production Mode"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_storeStrong(&v5->_productionMode, v124);
      }
    }

    v125 = [v6 objectForKeyedSubscript:@"Provisioning"];

    if (v125)
    {
      v126 = [v6 objectForKeyedSubscript:@"Provisioning"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_storeStrong(&v5->_provisioning, v126);
      }
    }

    v127 = [v6 objectForKeyedSubscript:@"Real HDCP Key Present"];

    if (v127)
    {
      v128 = [v6 objectForKeyedSubscript:@"Real HDCP Key Present"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_storeStrong(&v5->_realHdcpKeyPresent, v128);
      }
    }

    v129 = [v6 objectForKeyedSubscript:@"Requires Personalization"];

    if (v129)
    {
      v130 = [v6 objectForKeyedSubscript:@"Requires Personalization"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_storeStrong(&v5->_requiresPersonalization, v130);
      }
    }

    v131 = [v6 objectForKeyedSubscript:@"Security Domain"];

    if (v131)
    {
      v132 = [v6 objectForKeyedSubscript:@"Security Domain"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_storeStrong(&v5->_securityDomain, v132);
      }
    }

    v133 = [v6 objectForKeyedSubscript:@"Security Mode"];

    if (v133)
    {
      v134 = [v6 objectForKeyedSubscript:@"Security Mode"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_storeStrong(&v5->_securityMode, v134);
      }
    }

    v135 = [v6 objectForKeyedSubscript:@"Suffix Needs LUN"];

    if (v135)
    {
      v136 = [v6 objectForKeyedSubscript:@"Suffix Needs LUN"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_storeStrong(&v5->_suffixNeedsLUN, v136);
      }
    }

    v137 = [v6 objectForKeyedSubscript:@"Ticket LongName"];

    if (v137)
    {
      v138 = [v6 objectForKeyedSubscript:@"Ticket LongName"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v139 = [v138 copy];
        ticketLongName = v5->_ticketLongName;
        v5->_ticketLongName = v139;
      }
    }

    v141 = objc_opt_new();
    [v6 objectForKeyedSubscript:@"Components"];
    v153 = 0u;
    v154 = 0u;
    v155 = 0u;
    v142 = v156 = 0u;
    v143 = [v142 countByEnumeratingWithState:&v153 objects:v158 count:16];
    if (v143)
    {
      v144 = v143;
      v145 = *v154;
      do
      {
        v146 = 0;
        do
        {
          if (*v154 != v145)
          {
            objc_enumerationMutation(v142);
          }

          v147 = [[UARPComponentConfiguration alloc] initWithDictionary:*(*(&v153 + 1) + 8 * v146)];
          [v141 addObject:v147];

          v146 = v146 + 1;
        }

        while (v144 != v146);
        v144 = [v142 countByEnumeratingWithState:&v153 objects:v158 count:16];
      }

      while (v144);
    }

    v148 = [NSArray arrayWithArray:v141];
    components = v5->_components;
    v5->_components = v148;
  }

  v150 = v5;

  return v150;
}

- (UARPEndpointConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(UARPEndpointConfiguration *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Endpoint ID"];
    endpointID = v5->_endpointID;
    v5->_endpointID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Firmware Version"];
    firmwareVersion = v5->_firmwareVersion;
    v5->_firmwareVersion = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Friendly Name"];
    friendlyName = v5->_friendlyName;
    v5->_friendlyName = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Hardware Version"];
    hardwareVersion = v5->_hardwareVersion;
    v5->_hardwareVersion = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Manufacturer Name"];
    manufacturerName = v5->_manufacturerName;
    v5->_manufacturerName = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Model Name"];
    modelName = v5->_modelName;
    v5->_modelName = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Serial Number"];
    serialNumber = v5->_serialNumber;
    v5->_serialNumber = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Staged Firmware Version"];
    stagedFirmwareVersion = v5->_stagedFirmwareVersion;
    v5->_stagedFirmwareVersion = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Apple Model Number"];
    appleModelNumber = v5->_appleModelNumber;
    v5->_appleModelNumber = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Asset Identifier"];
    assetIdentifier = v5->_assetIdentifier;
    v5->_assetIdentifier = v24;

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Hw Fusing Type"];
    hwFusingType = v5->_hwFusingType;
    v5->_hwFusingType = v26;

    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Ap Board ID"];
    apBoardID = v5->_apBoardID;
    v5->_apBoardID = v28;

    v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Ap Chip ID"];
    apChipID = v5->_apChipID;
    v5->_apChipID = v30;

    v32 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Ap Production Mode"];
    apProductionMode = v5->_apProductionMode;
    v5->_apProductionMode = v32;

    v34 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Ap Security Mode"];
    apSecurityMode = v5->_apSecurityMode;
    v5->_apSecurityMode = v34;

    v36 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Board ID (32-bit)"];
    boardID32 = v5->_boardID32;
    v5->_boardID32 = v36;

    v38 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Board ID (64-bit)"];
    boardID64 = v5->_boardID64;
    v5->_boardID64 = v38;

    v40 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Chip Epoch"];
    chipEpoch = v5->_chipEpoch;
    v5->_chipEpoch = v40;

    v42 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Chip ID"];
    chipID = v5->_chipID;
    v5->_chipID = v42;

    v44 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Chip Revision"];
    chipRevision = v5->_chipRevision;
    v5->_chipRevision = v44;

    v46 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ECID"];
    ECID = v5->_ECID;
    v5->_ECID = v46;

    v48 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ECID Data"];
    ecidData = v5->_ecidData;
    v5->_ecidData = v48;

    v50 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Enable Future FW Version"];
    enableFutureFWVersion = v5->_enableFutureFWVersion;
    v5->_enableFutureFWVersion = v50;

    v52 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Enable Mix Match"];
    enableMixMatch = v5->_enableMixMatch;
    v5->_enableMixMatch = v52;

    v54 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"FTAB Generation"];
    ftabGeneration = v5->_ftabGeneration;
    v5->_ftabGeneration = v54;

    v56 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Hardware Specific"];
    hardwareSpecific = v5->_hardwareSpecific;
    v5->_hardwareSpecific = v56;

    v58 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Life"];
    life = v5->_life;
    v5->_life = v58;

    v60 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Live Nonce"];
    liveNonce = v5->_liveNonce;
    v5->_liveNonce = v60;

    v62 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Logical Unit Number"];
    logicalUnitNumber = v5->_logicalUnitNumber;
    v5->_logicalUnitNumber = v62;

    v64 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Manifest Epoch"];
    manifestEpoch = v5->_manifestEpoch;
    v5->_manifestEpoch = v64;

    v66 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Manifest Prefix"];
    manifestPrefix = v5->_manifestPrefix;
    v5->_manifestPrefix = v66;

    v68 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Manifest Suffix"];
    manifestSuffix = v5->_manifestSuffix;
    v5->_manifestSuffix = v68;

    v70 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Nonce"];
    nonce = v5->_nonce;
    v5->_nonce = v70;

    v72 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Nonce Seed"];
    nonceSeed = v5->_nonceSeed;
    v5->_nonceSeed = v72;

    v74 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Prefix Needs LUN"];
    prefixNeedsLUN = v5->_prefixNeedsLUN;
    v5->_prefixNeedsLUN = v74;

    v76 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Production Mode"];
    productionMode = v5->_productionMode;
    v5->_productionMode = v76;

    v78 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Provisioning"];
    provisioning = v5->_provisioning;
    v5->_provisioning = v78;

    v80 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Real HDCP Key Present"];
    realHdcpKeyPresent = v5->_realHdcpKeyPresent;
    v5->_realHdcpKeyPresent = v80;

    v82 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Requires Personalization"];
    requiresPersonalization = v5->_requiresPersonalization;
    v5->_requiresPersonalization = v82;

    v84 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Security Domain"];
    securityDomain = v5->_securityDomain;
    v5->_securityDomain = v84;

    v86 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Security Mode"];
    securityMode = v5->_securityMode;
    v5->_securityMode = v86;

    v88 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Suffix Needs LUN"];
    suffixNeedsLUN = v5->_suffixNeedsLUN;
    v5->_suffixNeedsLUN = v88;

    v90 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Ticket LongName"];
    ticketLongName = v5->_ticketLongName;
    v5->_ticketLongName = v90;

    v92 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Protocol Version"];
    protocolVersion = v5->_protocolVersion;
    v5->_protocolVersion = v92;

    v94 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Max Payload Length"];
    maxPayloadLength = v5->_maxPayloadLength;
    v5->_maxPayloadLength = v94;

    v96 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Payload Window Length"];
    payloadWindowLength = v5->_payloadWindowLength;
    v5->_payloadWindowLength = v96;

    v98 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"Components"];
    components = v5->_components;
    v5->_components = v98;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  endpointID = self->_endpointID;
  coderCopy = coder;
  [coderCopy encodeObject:endpointID forKey:@"Endpoint ID"];
  [coderCopy encodeObject:self->_firmwareVersion forKey:@"Firmware Version"];
  [coderCopy encodeObject:self->_friendlyName forKey:@"Friendly Name"];
  [coderCopy encodeObject:self->_hardwareVersion forKey:@"Hardware Version"];
  [coderCopy encodeObject:self->_manufacturerName forKey:@"Manufacturer Name"];
  [coderCopy encodeObject:self->_modelName forKey:@"Model Name"];
  [coderCopy encodeObject:self->_serialNumber forKey:@"Serial Number"];
  [coderCopy encodeObject:self->_stagedFirmwareVersion forKey:@"Staged Firmware Version"];
  [coderCopy encodeObject:self->_appleModelNumber forKey:@"Apple Model Number"];
  [coderCopy encodeObject:self->_assetIdentifier forKey:@"Asset Identifier"];
  [coderCopy encodeObject:self->_hwFusingType forKey:@"Hw Fusing Type"];
  [coderCopy encodeObject:self->_apBoardID forKey:@"Ap Board ID"];
  [coderCopy encodeObject:self->_apChipID forKey:@"Ap Chip ID"];
  [coderCopy encodeObject:self->_apProductionMode forKey:@"Ap Production Mode"];
  [coderCopy encodeObject:self->_apSecurityMode forKey:@"Ap Security Mode"];
  [coderCopy encodeObject:self->_boardID32 forKey:@"Board ID (32-bit)"];
  [coderCopy encodeObject:self->_boardID64 forKey:@"Board ID (64-bit)"];
  [coderCopy encodeObject:self->_chipEpoch forKey:@"Chip Epoch"];
  [coderCopy encodeObject:self->_chipID forKey:@"Chip ID"];
  [coderCopy encodeObject:self->_chipRevision forKey:@"Chip Revision"];
  [coderCopy encodeObject:self->_ECID forKey:@"ECID"];
  [coderCopy encodeObject:self->_ecidData forKey:@"ECID Data"];
  [coderCopy encodeObject:self->_enableFutureFWVersion forKey:@"Enable Future FW Version"];
  [coderCopy encodeObject:self->_enableMixMatch forKey:@"Enable Mix Match"];
  [coderCopy encodeObject:self->_ftabGeneration forKey:@"FTAB Generation"];
  [coderCopy encodeObject:self->_hardwareSpecific forKey:@"Hardware Specific"];
  [coderCopy encodeObject:self->_life forKey:@"Life"];
  [coderCopy encodeObject:self->_liveNonce forKey:@"Live Nonce"];
  [coderCopy encodeObject:self->_logicalUnitNumber forKey:@"Logical Unit Number"];
  [coderCopy encodeObject:self->_manifestEpoch forKey:@"Manifest Epoch"];
  [coderCopy encodeObject:self->_manifestPrefix forKey:@"Manifest Prefix"];
  [coderCopy encodeObject:self->_manifestSuffix forKey:@"Manifest Suffix"];
  [coderCopy encodeObject:self->_nonce forKey:@"Nonce"];
  [coderCopy encodeObject:self->_nonceSeed forKey:@"Nonce Seed"];
  [coderCopy encodeObject:self->_prefixNeedsLUN forKey:@"Prefix Needs LUN"];
  [coderCopy encodeObject:self->_productionMode forKey:@"Production Mode"];
  [coderCopy encodeObject:self->_provisioning forKey:@"Provisioning"];
  [coderCopy encodeObject:self->_realHdcpKeyPresent forKey:@"Real HDCP Key Present"];
  [coderCopy encodeObject:self->_requiresPersonalization forKey:@"Requires Personalization"];
  [coderCopy encodeObject:self->_securityDomain forKey:@"Security Domain"];
  [coderCopy encodeObject:self->_securityMode forKey:@"Security Mode"];
  [coderCopy encodeObject:self->_suffixNeedsLUN forKey:@"Suffix Needs LUN"];
  [coderCopy encodeObject:self->_ticketLongName forKey:@"Ticket LongName"];
  [coderCopy encodeObject:self->_protocolVersion forKey:@"Protocol Version"];
  [coderCopy encodeObject:self->_maxPayloadLength forKey:@"Max Payload Length"];
  [coderCopy encodeObject:self->_payloadWindowLength forKey:@"Payload Window Length"];
  [coderCopy encodeObject:self->_components forKey:@"Components"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(UARPEndpointConfiguration);
  v5 = [(NSNumber *)self->_endpointID copy];
  [(UARPEndpointConfiguration *)v4 setEndpointID:v5];

  v6 = [(UARPComponentVersion *)self->_firmwareVersion copy];
  [(UARPEndpointConfiguration *)v4 setFirmwareVersion:v6];

  v7 = [(NSString *)self->_friendlyName copy];
  [(UARPEndpointConfiguration *)v4 setFriendlyName:v7];

  v8 = [(NSString *)self->_hardwareVersion copy];
  [(UARPEndpointConfiguration *)v4 setHardwareVersion:v8];

  v9 = [(NSString *)self->_manufacturerName copy];
  [(UARPEndpointConfiguration *)v4 setManufacturerName:v9];

  v10 = [(NSString *)self->_modelName copy];
  [(UARPEndpointConfiguration *)v4 setModelName:v10];

  v11 = [(NSString *)self->_serialNumber copy];
  [(UARPEndpointConfiguration *)v4 setSerialNumber:v11];

  v12 = [(UARPComponentVersion *)self->_stagedFirmwareVersion copy];
  [(UARPEndpointConfiguration *)v4 setStagedFirmwareVersion:v12];

  v13 = [(NSString *)self->_appleModelNumber copy];
  [(UARPEndpointConfiguration *)v4 setAppleModelNumber:v13];

  v14 = [(NSString *)self->_assetIdentifier copy];
  [(UARPEndpointConfiguration *)v4 setAssetIdentifier:v14];

  v15 = [(NSString *)self->_hwFusingType copy];
  [(UARPEndpointConfiguration *)v4 setHwFusingType:v15];

  [(UARPEndpointConfiguration *)v4 setApBoardID:self->_apBoardID];
  [(UARPEndpointConfiguration *)v4 setApChipID:self->_apChipID];
  [(UARPEndpointConfiguration *)v4 setApProductionMode:self->_apProductionMode];
  [(UARPEndpointConfiguration *)v4 setApSecurityMode:self->_apSecurityMode];
  [(UARPEndpointConfiguration *)v4 setBoardID32:self->_boardID32];
  [(UARPEndpointConfiguration *)v4 setBoardID64:self->_boardID64];
  [(UARPEndpointConfiguration *)v4 setChipEpoch:self->_chipEpoch];
  [(UARPEndpointConfiguration *)v4 setChipID:self->_chipID];
  [(UARPEndpointConfiguration *)v4 setChipRevision:self->_chipRevision];
  [(UARPEndpointConfiguration *)v4 setECID:self->_ECID];
  v16 = [(NSData *)self->_ecidData copy];
  [(UARPEndpointConfiguration *)v4 setEcidData:v16];

  [(UARPEndpointConfiguration *)v4 setEnableFutureFWVersion:self->_enableFutureFWVersion];
  [(UARPEndpointConfiguration *)v4 setEnableMixMatch:self->_enableMixMatch];
  [(UARPEndpointConfiguration *)v4 setFtabGeneration:self->_ftabGeneration];
  v17 = [(NSData *)self->_hardwareSpecific copy];
  [(UARPEndpointConfiguration *)v4 setHardwareSpecific:v17];

  [(UARPEndpointConfiguration *)v4 setLife:self->_life];
  [(UARPEndpointConfiguration *)v4 setLiveNonce:self->_liveNonce];
  [(UARPEndpointConfiguration *)v4 setLogicalUnitNumber:self->_logicalUnitNumber];
  [(UARPEndpointConfiguration *)v4 setManifestEpoch:self->_manifestEpoch];
  v18 = [(NSString *)self->_manifestPrefix copy];
  [(UARPEndpointConfiguration *)v4 setManifestPrefix:v18];

  v19 = [(NSString *)self->_manifestSuffix copy];
  [(UARPEndpointConfiguration *)v4 setManifestSuffix:v19];

  v20 = [(NSData *)self->_nonce copy];
  [(UARPEndpointConfiguration *)v4 setNonce:v20];

  v21 = [(NSData *)self->_nonceSeed copy];
  [(UARPEndpointConfiguration *)v4 setNonceSeed:v21];

  [(UARPEndpointConfiguration *)v4 setPrefixNeedsLUN:self->_prefixNeedsLUN];
  [(UARPEndpointConfiguration *)v4 setProductionMode:self->_productionMode];
  [(UARPEndpointConfiguration *)v4 setProvisioning:self->_provisioning];
  [(UARPEndpointConfiguration *)v4 setRealHdcpKeyPresent:self->_realHdcpKeyPresent];
  [(UARPEndpointConfiguration *)v4 setRequiresPersonalization:self->_requiresPersonalization];
  [(UARPEndpointConfiguration *)v4 setSecurityDomain:self->_securityDomain];
  [(UARPEndpointConfiguration *)v4 setSecurityMode:self->_securityMode];
  [(UARPEndpointConfiguration *)v4 setSuffixNeedsLUN:self->_suffixNeedsLUN];
  v22 = [(NSString *)self->_ticketLongName copy];
  [(UARPEndpointConfiguration *)v4 setTicketLongName:v22];

  [(UARPEndpointConfiguration *)v4 setProtocolVersion:self->_protocolVersion];
  [(UARPEndpointConfiguration *)v4 setMaxPayloadLength:self->_maxPayloadLength];
  [(UARPEndpointConfiguration *)v4 setPayloadWindowLength:self->_payloadWindowLength];
  v23 = [(NSArray *)self->_components copy];
  [(UARPEndpointConfiguration *)v4 setComponents:v23];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (self == equalCopy)
    {
      v98 = 1;
    }

    else
    {
      v5 = equalCopy;
      endpointID = self->_endpointID;
      endpointID = [(UARPEndpointConfiguration *)v5 endpointID];
      LODWORD(endpointID) = [(NSNumber *)endpointID isEqualToNumber:endpointID];

      if (!endpointID)
      {
        goto LABEL_50;
      }

      firmwareVersion = self->_firmwareVersion;
      firmwareVersion = [(UARPEndpointConfiguration *)v5 firmwareVersion];
      LODWORD(firmwareVersion) = [(UARPComponentVersion *)firmwareVersion isEqual:firmwareVersion];

      if (!firmwareVersion)
      {
        goto LABEL_50;
      }

      friendlyName = self->_friendlyName;
      friendlyName = [(UARPEndpointConfiguration *)v5 friendlyName];
      LODWORD(friendlyName) = [(NSString *)friendlyName isEqualToString:friendlyName];

      if (!friendlyName)
      {
        goto LABEL_50;
      }

      hardwareVersion = self->_hardwareVersion;
      hardwareVersion = [(UARPEndpointConfiguration *)v5 hardwareVersion];
      LODWORD(hardwareVersion) = [(NSString *)hardwareVersion isEqualToString:hardwareVersion];

      if (!hardwareVersion)
      {
        goto LABEL_50;
      }

      manufacturerName = self->_manufacturerName;
      manufacturerName = [(UARPEndpointConfiguration *)v5 manufacturerName];
      LODWORD(manufacturerName) = [(NSString *)manufacturerName isEqualToString:manufacturerName];

      if (!manufacturerName)
      {
        goto LABEL_50;
      }

      modelName = self->_modelName;
      modelName = [(UARPEndpointConfiguration *)v5 modelName];
      LODWORD(modelName) = [(NSString *)modelName isEqualToString:modelName];

      if (!modelName)
      {
        goto LABEL_50;
      }

      serialNumber = self->_serialNumber;
      serialNumber = [(UARPEndpointConfiguration *)v5 serialNumber];
      LODWORD(serialNumber) = [(NSString *)serialNumber isEqualToString:serialNumber];

      if (!serialNumber)
      {
        goto LABEL_50;
      }

      stagedFirmwareVersion = self->_stagedFirmwareVersion;
      stagedFirmwareVersion = [(UARPEndpointConfiguration *)v5 stagedFirmwareVersion];
      LODWORD(stagedFirmwareVersion) = [(UARPComponentVersion *)stagedFirmwareVersion isEqual:stagedFirmwareVersion];

      if (!stagedFirmwareVersion)
      {
        goto LABEL_50;
      }

      appleModelNumber = self->_appleModelNumber;
      appleModelNumber = [(UARPEndpointConfiguration *)v5 appleModelNumber];
      LODWORD(appleModelNumber) = [(NSString *)appleModelNumber isEqualToString:appleModelNumber];

      if (!appleModelNumber)
      {
        goto LABEL_50;
      }

      hwFusingType = self->_hwFusingType;
      hwFusingType = [(UARPEndpointConfiguration *)v5 hwFusingType];
      LODWORD(hwFusingType) = [(NSString *)hwFusingType isEqualToString:hwFusingType];

      if (!hwFusingType)
      {
        goto LABEL_50;
      }

      apBoardID = self->_apBoardID;
      apBoardID = [(UARPEndpointConfiguration *)v5 apBoardID];
      LODWORD(apBoardID) = [(NSNumber *)apBoardID isEqualToNumber:apBoardID];

      if (!apBoardID)
      {
        goto LABEL_50;
      }

      apChipID = self->_apChipID;
      apChipID = [(UARPEndpointConfiguration *)v5 apChipID];
      LODWORD(apChipID) = [(NSNumber *)apChipID isEqualToNumber:apChipID];

      if (!apChipID)
      {
        goto LABEL_50;
      }

      apProductionMode = self->_apProductionMode;
      apProductionMode = [(UARPEndpointConfiguration *)v5 apProductionMode];
      LODWORD(apProductionMode) = [(NSNumber *)apProductionMode isEqualToNumber:apProductionMode];

      if (!apProductionMode)
      {
        goto LABEL_50;
      }

      apSecurityMode = self->_apSecurityMode;
      apSecurityMode = [(UARPEndpointConfiguration *)v5 apSecurityMode];
      LODWORD(apSecurityMode) = [(NSNumber *)apSecurityMode isEqualToNumber:apSecurityMode];

      if (!apSecurityMode)
      {
        goto LABEL_50;
      }

      boardID32 = self->_boardID32;
      boardID32 = [(UARPEndpointConfiguration *)v5 boardID32];
      LODWORD(boardID32) = [(NSNumber *)boardID32 isEqualToNumber:boardID32];

      if (!boardID32)
      {
        goto LABEL_50;
      }

      boardID64 = self->_boardID64;
      boardID64 = [(UARPEndpointConfiguration *)v5 boardID64];
      LODWORD(boardID64) = [(NSNumber *)boardID64 isEqualToNumber:boardID64];

      if (!boardID64)
      {
        goto LABEL_50;
      }

      chipEpoch = self->_chipEpoch;
      chipEpoch = [(UARPEndpointConfiguration *)v5 chipEpoch];
      LODWORD(chipEpoch) = [(NSNumber *)chipEpoch isEqualToNumber:chipEpoch];

      if (!chipEpoch)
      {
        goto LABEL_50;
      }

      chipID = self->_chipID;
      chipID = [(UARPEndpointConfiguration *)v5 chipID];
      LODWORD(chipID) = [(NSNumber *)chipID isEqualToNumber:chipID];

      if (!chipID)
      {
        goto LABEL_50;
      }

      chipRevision = self->_chipRevision;
      chipRevision = [(UARPEndpointConfiguration *)v5 chipRevision];
      LODWORD(chipRevision) = [(NSNumber *)chipRevision isEqualToNumber:chipRevision];

      if (!chipRevision)
      {
        goto LABEL_50;
      }

      ECID = self->_ECID;
      eCID = [(UARPEndpointConfiguration *)v5 ECID];
      LODWORD(ECID) = [(NSNumber *)ECID isEqualToNumber:eCID];

      if (!ECID)
      {
        goto LABEL_50;
      }

      ecidData = self->_ecidData;
      ecidData = [(UARPEndpointConfiguration *)v5 ecidData];
      LODWORD(ecidData) = [(NSData *)ecidData isEqualToData:ecidData];

      if (!ecidData)
      {
        goto LABEL_50;
      }

      enableFutureFWVersion = self->_enableFutureFWVersion;
      enableFutureFWVersion = [(UARPEndpointConfiguration *)v5 enableFutureFWVersion];
      LODWORD(enableFutureFWVersion) = [(NSNumber *)enableFutureFWVersion isEqualToNumber:enableFutureFWVersion];

      if (!enableFutureFWVersion)
      {
        goto LABEL_50;
      }

      enableMixMatch = self->_enableMixMatch;
      enableMixMatch = [(UARPEndpointConfiguration *)v5 enableMixMatch];
      LODWORD(enableMixMatch) = [(NSNumber *)enableMixMatch isEqualToNumber:enableMixMatch];

      if (!enableMixMatch)
      {
        goto LABEL_50;
      }

      ftabGeneration = self->_ftabGeneration;
      ftabGeneration = [(UARPEndpointConfiguration *)v5 ftabGeneration];
      LODWORD(ftabGeneration) = [(NSNumber *)ftabGeneration isEqualToNumber:ftabGeneration];

      if (!ftabGeneration)
      {
        goto LABEL_50;
      }

      hardwareSpecific = self->_hardwareSpecific;
      hardwareSpecific = [(UARPEndpointConfiguration *)v5 hardwareSpecific];
      LODWORD(hardwareSpecific) = [(NSData *)hardwareSpecific isEqualToData:hardwareSpecific];

      if (!hardwareSpecific)
      {
        goto LABEL_50;
      }

      life = self->_life;
      life = [(UARPEndpointConfiguration *)v5 life];
      LODWORD(life) = [(NSNumber *)life isEqualToNumber:life];

      if (!life)
      {
        goto LABEL_50;
      }

      liveNonce = self->_liveNonce;
      liveNonce = [(UARPEndpointConfiguration *)v5 liveNonce];
      LODWORD(liveNonce) = [(NSNumber *)liveNonce isEqualToNumber:liveNonce];

      if (!liveNonce)
      {
        goto LABEL_50;
      }

      logicalUnitNumber = self->_logicalUnitNumber;
      logicalUnitNumber = [(UARPEndpointConfiguration *)v5 logicalUnitNumber];
      LODWORD(logicalUnitNumber) = [(NSNumber *)logicalUnitNumber isEqualToNumber:logicalUnitNumber];

      if (!logicalUnitNumber)
      {
        goto LABEL_50;
      }

      manifestEpoch = self->_manifestEpoch;
      manifestEpoch = [(UARPEndpointConfiguration *)v5 manifestEpoch];
      LODWORD(manifestEpoch) = [(NSNumber *)manifestEpoch isEqualToNumber:manifestEpoch];

      if (!manifestEpoch)
      {
        goto LABEL_50;
      }

      manifestPrefix = self->_manifestPrefix;
      manifestPrefix = [(UARPEndpointConfiguration *)v5 manifestPrefix];
      LODWORD(manifestPrefix) = [(NSString *)manifestPrefix isEqualToString:manifestPrefix];

      if (!manifestPrefix)
      {
        goto LABEL_50;
      }

      manifestSuffix = self->_manifestSuffix;
      manifestSuffix = [(UARPEndpointConfiguration *)v5 manifestSuffix];
      LODWORD(manifestSuffix) = [(NSString *)manifestSuffix isEqualToString:manifestSuffix];

      if (!manifestSuffix)
      {
        goto LABEL_50;
      }

      nonce = self->_nonce;
      nonce = [(UARPEndpointConfiguration *)v5 nonce];
      LODWORD(nonce) = [(NSData *)nonce isEqualToData:nonce];

      if (!nonce)
      {
        goto LABEL_50;
      }

      nonceSeed = self->_nonceSeed;
      nonceSeed = [(UARPEndpointConfiguration *)v5 nonceSeed];
      LODWORD(nonceSeed) = [(NSData *)nonceSeed isEqualToData:nonceSeed];

      if (!nonceSeed)
      {
        goto LABEL_50;
      }

      prefixNeedsLUN = self->_prefixNeedsLUN;
      prefixNeedsLUN = [(UARPEndpointConfiguration *)v5 prefixNeedsLUN];
      LODWORD(prefixNeedsLUN) = [(NSNumber *)prefixNeedsLUN isEqualToNumber:prefixNeedsLUN];

      if (!prefixNeedsLUN)
      {
        goto LABEL_50;
      }

      productionMode = self->_productionMode;
      productionMode = [(UARPEndpointConfiguration *)v5 productionMode];
      LODWORD(productionMode) = [(NSNumber *)productionMode isEqualToNumber:productionMode];

      if (!productionMode)
      {
        goto LABEL_50;
      }

      provisioning = self->_provisioning;
      provisioning = [(UARPEndpointConfiguration *)v5 provisioning];
      LODWORD(provisioning) = [(NSNumber *)provisioning isEqualToNumber:provisioning];

      if (!provisioning)
      {
        goto LABEL_50;
      }

      realHdcpKeyPresent = self->_realHdcpKeyPresent;
      realHdcpKeyPresent = [(UARPEndpointConfiguration *)v5 realHdcpKeyPresent];
      LODWORD(realHdcpKeyPresent) = [(NSNumber *)realHdcpKeyPresent isEqualToNumber:realHdcpKeyPresent];

      if (!realHdcpKeyPresent)
      {
        goto LABEL_50;
      }

      requiresPersonalization = self->_requiresPersonalization;
      requiresPersonalization = [(UARPEndpointConfiguration *)v5 requiresPersonalization];
      LODWORD(requiresPersonalization) = [(NSNumber *)requiresPersonalization isEqualToNumber:requiresPersonalization];

      if (!requiresPersonalization)
      {
        goto LABEL_50;
      }

      securityDomain = self->_securityDomain;
      securityDomain = [(UARPEndpointConfiguration *)v5 securityDomain];
      LODWORD(securityDomain) = [(NSNumber *)securityDomain isEqualToNumber:securityDomain];

      if (!securityDomain)
      {
        goto LABEL_50;
      }

      securityMode = self->_securityMode;
      securityMode = [(UARPEndpointConfiguration *)v5 securityMode];
      LODWORD(securityMode) = [(NSNumber *)securityMode isEqualToNumber:securityMode];

      if (!securityMode)
      {
        goto LABEL_50;
      }

      suffixNeedsLUN = self->_suffixNeedsLUN;
      suffixNeedsLUN = [(UARPEndpointConfiguration *)v5 suffixNeedsLUN];
      LODWORD(suffixNeedsLUN) = [(NSNumber *)suffixNeedsLUN isEqualToNumber:suffixNeedsLUN];

      if (!suffixNeedsLUN)
      {
        goto LABEL_50;
      }

      ticketLongName = self->_ticketLongName;
      ticketLongName = [(UARPEndpointConfiguration *)v5 ticketLongName];
      LODWORD(ticketLongName) = [(NSString *)ticketLongName isEqualToString:ticketLongName];

      if (!ticketLongName)
      {
        goto LABEL_50;
      }

      protocolVersion = self->_protocolVersion;
      protocolVersion = [(UARPEndpointConfiguration *)v5 protocolVersion];
      LODWORD(protocolVersion) = [(NSNumber *)protocolVersion isEqualToNumber:protocolVersion];

      if (!protocolVersion)
      {
        goto LABEL_50;
      }

      maxPayloadLength = self->_maxPayloadLength;
      maxPayloadLength = [(UARPEndpointConfiguration *)v5 maxPayloadLength];
      LODWORD(maxPayloadLength) = [(NSNumber *)maxPayloadLength isEqualToNumber:maxPayloadLength];

      if (!maxPayloadLength)
      {
        goto LABEL_50;
      }

      payloadWindowLength = self->_payloadWindowLength;
      payloadWindowLength = [(UARPEndpointConfiguration *)v5 payloadWindowLength];
      LODWORD(payloadWindowLength) = [(NSNumber *)payloadWindowLength isEqualToNumber:payloadWindowLength];

      if (payloadWindowLength)
      {
        components = self->_components;
        components = [(UARPEndpointConfiguration *)v5 components];
        v98 = [(NSArray *)components isEqualToArray:components];
      }

      else
      {
LABEL_50:
        v98 = 0;
      }
    }
  }

  else
  {
    v98 = 0;
  }

  return v98;
}

- (unint64_t)hash
{
  ecidData = self->_ecidData;
  v3 = [NSString stringWithFormat:@"%@-%@-%@-%@-%@-%@-%@-%@-%@-%@-%@-%@-%@-%@-%@-%@-%@-%@-%@-%@-%@-%@-%@-%@-%@-%@-%@-%@-%@-%@-%@-%@-%@-%@-%@-%@-%@-%@-%@-%@", self->_manufacturerName, self->_modelName, self->_serialNumber, self->_hardwareVersion, self->_firmwareVersion, self->_stagedFirmwareVersion, self->_friendlyName, self->_appleModelNumber, self->_hwFusingType, self->_boardID32, self->_boardID64, self->_chipID, self->_chipRevision, self->_ECID, ecidData, self->_ftabGeneration, self->_securityDomain, self->_securityMode, self->_productionMode, self->_chipEpoch, self->_liveNonce, self->_enableFutureFWVersion, self->_enableMixMatch, self->_nonce, self->_nonceSeed, self->_life, self->_manifestEpoch, self->_provisioning, self->_realHdcpKeyPresent, self->_requiresPersonalization, self->_manifestPrefix, self->_manifestSuffix, self->_ticketLongName, self->_prefixNeedsLUN, self->_suffixNeedsLUN, self->_logicalUnitNumber, self->_protocolVersion, self->_maxPayloadLength, self->_payloadWindowLength, self->_components];
  v4 = [v3 hash];

  return v4;
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

  firmwareVersion = self->_firmwareVersion;
  if (firmwareVersion)
  {
    versionString = [(UARPComponentVersion *)firmwareVersion versionString];
    [v4 setObject:versionString forKeyedSubscript:@"Firmware Version"];
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
    versionString2 = [(UARPComponentVersion *)stagedFirmwareVersion versionString];
    [v4 setObject:versionString2 forKeyedSubscript:@"Staged Firmware Version"];
  }

  appleModelNumber = self->_appleModelNumber;
  if (appleModelNumber)
  {
    [v4 setObject:appleModelNumber forKeyedSubscript:@"Apple Model Number"];
  }

  assetIdentifier = self->_assetIdentifier;
  if (assetIdentifier)
  {
    [v4 setObject:assetIdentifier forKeyedSubscript:@"Asset Identifier"];
  }

  hwFusingType = self->_hwFusingType;
  if (hwFusingType)
  {
    [v4 setObject:hwFusingType forKeyedSubscript:@"Hw Fusing Type"];
  }

  apBoardID = self->_apBoardID;
  if (apBoardID)
  {
    v19 = [NSNumber numberWithUnsignedLong:[(NSNumber *)apBoardID unsignedLongValue]];
    [v4 setObject:v19 forKeyedSubscript:@"Ap Board ID"];
  }

  apChipID = self->_apChipID;
  if (apChipID)
  {
    v21 = [NSNumber numberWithUnsignedLong:[(NSNumber *)apChipID unsignedLongValue]];
    [v4 setObject:v21 forKeyedSubscript:@"Ap Chip ID"];
  }

  apProductionMode = self->_apProductionMode;
  if (apProductionMode)
  {
    v23 = [NSNumber numberWithUnsignedLong:[(NSNumber *)apProductionMode unsignedLongValue]];
    [v4 setObject:v23 forKeyedSubscript:@"Ap Production Mode"];
  }

  apSecurityMode = self->_apSecurityMode;
  if (apSecurityMode)
  {
    v25 = [NSNumber numberWithUnsignedLong:[(NSNumber *)apSecurityMode unsignedLongValue]];
    [v4 setObject:v25 forKeyedSubscript:@"Ap Security Mode"];
  }

  boardID32 = self->_boardID32;
  if (boardID32)
  {
    v27 = [NSNumber numberWithUnsignedLong:[(NSNumber *)boardID32 unsignedLongValue]];
    [v4 setObject:v27 forKeyedSubscript:@"Board ID (32-bit)"];
  }

  boardID64 = self->_boardID64;
  if (boardID64)
  {
    v29 = [NSNumber numberWithUnsignedLongLong:[(NSNumber *)boardID64 unsignedLongLongValue]];
    [v4 setObject:v29 forKeyedSubscript:@"Board ID (64-bit)"];
  }

  chipEpoch = self->_chipEpoch;
  if (chipEpoch)
  {
    v31 = [NSNumber numberWithUnsignedLong:[(NSNumber *)chipEpoch unsignedLongValue]];
    [v4 setObject:v31 forKeyedSubscript:@"Chip Epoch"];
  }

  chipID = self->_chipID;
  if (chipID)
  {
    v33 = [NSNumber numberWithUnsignedLong:[(NSNumber *)chipID unsignedLongValue]];
    [v4 setObject:v33 forKeyedSubscript:@"Chip ID"];
  }

  chipRevision = self->_chipRevision;
  if (chipRevision)
  {
    v35 = [NSNumber numberWithUnsignedLong:[(NSNumber *)chipRevision unsignedLongValue]];
    [v4 setObject:v35 forKeyedSubscript:@"Chip Revision"];
  }

  ECID = self->_ECID;
  if (ECID)
  {
    v37 = [NSNumber numberWithUnsignedLongLong:[(NSNumber *)ECID unsignedLongLongValue]];
    [v4 setObject:v37 forKeyedSubscript:@"ECID"];
  }

  ecidData = self->_ecidData;
  if (ecidData)
  {
    [v4 setObject:ecidData forKeyedSubscript:@"ECID Data"];
  }

  enableFutureFWVersion = self->_enableFutureFWVersion;
  if (enableFutureFWVersion)
  {
    v40 = [NSNumber numberWithUnsignedLong:[(NSNumber *)enableFutureFWVersion unsignedLongValue]];
    [v4 setObject:v40 forKeyedSubscript:@"Enable Future FW Version"];
  }

  enableMixMatch = self->_enableMixMatch;
  if (enableMixMatch)
  {
    v42 = [NSNumber numberWithUnsignedLong:[(NSNumber *)enableMixMatch unsignedLongValue]];
    [v4 setObject:v42 forKeyedSubscript:@"Enable Mix Match"];
  }

  ftabGeneration = self->_ftabGeneration;
  if (ftabGeneration)
  {
    v44 = [NSNumber numberWithUnsignedLong:[(NSNumber *)ftabGeneration unsignedLongValue]];
    [v4 setObject:v44 forKeyedSubscript:@"FTAB Generation"];
  }

  hardwareSpecific = self->_hardwareSpecific;
  if (hardwareSpecific)
  {
    [v4 setObject:hardwareSpecific forKeyedSubscript:@"Hardware Specific"];
  }

  life = self->_life;
  if (life)
  {
    v47 = [NSNumber numberWithUnsignedLong:[(NSNumber *)life unsignedLongValue]];
    [v4 setObject:v47 forKeyedSubscript:@"Life"];
  }

  liveNonce = self->_liveNonce;
  if (liveNonce)
  {
    v49 = [NSNumber numberWithUnsignedLong:[(NSNumber *)liveNonce unsignedLongValue]];
    [v4 setObject:v49 forKeyedSubscript:@"Live Nonce"];
  }

  logicalUnitNumber = self->_logicalUnitNumber;
  if (logicalUnitNumber)
  {
    v51 = [NSNumber numberWithUnsignedLong:[(NSNumber *)logicalUnitNumber unsignedLongValue]];
    [v4 setObject:v51 forKeyedSubscript:@"Logical Unit Number"];
  }

  manifestEpoch = self->_manifestEpoch;
  if (manifestEpoch)
  {
    v53 = [NSNumber numberWithUnsignedLong:[(NSNumber *)manifestEpoch unsignedLongValue]];
    [v4 setObject:v53 forKeyedSubscript:@"Manifest Epoch"];
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
    v59 = [NSNumber numberWithUnsignedLong:[(NSNumber *)securityDomain unsignedLongValue]];
    [v4 setObject:v59 forKeyedSubscript:@"Security Domain"];
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

  v61 = objc_opt_new();
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v62 = self->_components;
  v63 = [(NSArray *)v62 countByEnumeratingWithState:&v71 objects:v75 count:16];
  if (v63)
  {
    v64 = v63;
    v65 = *v72;
    do
    {
      for (i = 0; i != v64; i = i + 1)
      {
        if (*v72 != v65)
        {
          objc_enumerationMutation(v62);
        }

        exportAsDictionary = [*(*(&v71 + 1) + 8 * i) exportAsDictionary];
        [v61 addObject:exportAsDictionary];
      }

      v64 = [(NSArray *)v62 countByEnumeratingWithState:&v71 objects:v75 count:16];
    }

    while (v64);
  }

  v68 = [NSArray arrayWithArray:v61];
  [v4 setObject:v68 forKeyedSubscript:@"Components"];

  v69 = [NSDictionary dictionaryWithDictionary:v4];

  return v69;
}

@end