@interface NFHardwareSecureElementInfo
- (NFHardwareSecureElementInfo)initWithCoder:(id)a3;
- (NFHardwareSecureElementInfo)initWithDictionary:(id)a3;
- (NSNumber)expectedSequenceCounter;
- (id)asDictionary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NFHardwareSecureElementInfo

- (NFHardwareSecureElementInfo)initWithDictionary:(id)a3
{
  v4 = a3;
  v54.receiver = self;
  v54.super_class = NFHardwareSecureElementInfo;
  v5 = [(NFHardwareSecureElementInfo *)&v54 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 objectForKeyedSubscript:@"OSVersion"];
    v5->_OSVersion = [v8 unsignedIntegerValue];

    v9 = [v4 objectForKeyedSubscript:@"fullOSVersion"];
    v5->_fullOSVersion = [v9 unsignedIntegerValue];

    v10 = [v4 objectForKeyedSubscript:@"firmwareVersion"];
    v5->_firmwareVersion = [v10 unsignedIntegerValue];

    v11 = [v4 objectForKeyedSubscript:@"compiledFWVersion"];
    compiledFWVersion = v5->_compiledFWVersion;
    v5->_compiledFWVersion = v11;

    v13 = [v4 objectForKeyedSubscript:@"hardwareVersion"];
    v5->_hardwareVersion = [v13 unsignedIntegerValue];

    v14 = [v4 objectForKeyedSubscript:@"deviceType"];
    v5->_deviceType = [v14 unsignedIntegerValue];

    v15 = [v4 objectForKeyedSubscript:@"sequenceCounter"];
    sequenceCounter = v5->_sequenceCounter;
    v5->_sequenceCounter = v15;

    v17 = [v4 objectForKeyedSubscript:@"referenceCounter"];
    referenceCounter = v5->_referenceCounter;
    v5->_referenceCounter = v17;

    v19 = [v4 objectForKeyedSubscript:@"osid"];
    v5->_osid = [v19 unsignedIntegerValue];

    v20 = [v4 objectForKeyedSubscript:@"otherOSValid"];
    otherOSValid = v5->_otherOSValid;
    v5->_otherOSValid = v20;

    v22 = [v4 objectForKeyedSubscript:@"restrictedMode"];
    v5->_restrictedMode = [v22 BOOLValue];

    v23 = [v4 objectForKeyedSubscript:@"osUpdateMode"];
    v5->_osUpdateMode = [v23 BOOLValue];

    v24 = [v4 objectForKeyedSubscript:@"OSMode"];
    v5->_OSMode = [v24 unsignedIntegerValue];

    v25 = [v4 objectForKeyedSubscript:@"signingKeyType"];
    v5->_signingKeyType = [v25 unsignedIntegerValue];

    v26 = [v4 objectForKeyedSubscript:@"migrationState"];
    v5->_migrationState = [v26 unsignedIntegerValue];

    v27 = [v4 objectForKeyedSubscript:@"migrationPackages"];
    migrationPackages = v5->_migrationPackages;
    v5->_migrationPackages = v27;

    v29 = [v4 objectForKeyedSubscript:@"migrationInstances"];
    migrationInstances = v5->_migrationInstances;
    v5->_migrationInstances = v29;

    v31 = [v4 objectForKeyedSubscript:@"migrationContext"];
    v5->_migrationContext = [v31 unsignedIntegerValue];

    v32 = [v4 objectForKeyedSubscript:@"platformIdentifier"];
    platformIdentifier = v5->_platformIdentifier;
    v5->_platformIdentifier = v32;

    v34 = [v4 objectForKeyedSubscript:@"serialNumber"];
    serialNumberAsData = v5->_serialNumberAsData;
    v5->_serialNumberAsData = v34;

    v36 = [v4 objectForKeyedSubscript:@"systemOSSerialNumber"];
    systemOSSerialNumberAsData = v5->_systemOSSerialNumberAsData;
    v5->_systemOSSerialNumberAsData = v36;

    v38 = [v4 objectForKeyedSubscript:@"rsaCertificate"];
    rsaCertificateAsData = v5->_rsaCertificateAsData;
    v5->_rsaCertificateAsData = v38;

    v40 = [v4 objectForKeyedSubscript:@"ecdsaCertificate"];
    ecdsaCertificateAsData = v5->_ecdsaCertificateAsData;
    v5->_ecdsaCertificateAsData = v40;

    v42 = [v4 objectForKeyedSubscript:@"eckaCertificate"];
    eckaCertificateAsData = v5->_eckaCertificateAsData;
    v5->_eckaCertificateAsData = v42;

    v44 = [v4 objectForKeyedSubscript:@"appletMap"];
    v5->_appletMap = [v44 unsignedIntegerValue];

    v45 = [v4 objectForKeyedSubscript:@"persistentConfigID"];
    persistentConfigID = v5->_persistentConfigID;
    v5->_persistentConfigID = v45;

    v47 = [v4 objectForKeyedSubscript:@"manifestQuery"];
    manifestQuery = v5->_manifestQuery;
    v5->_manifestQuery = v47;

    v49 = [v4 objectForKeyedSubscript:@"personalisable"];
    v5->_personalisable = [v49 BOOLValue];

    v50 = [v4 objectForKeyedSubscript:@"supportedTechnologies"];
    v5->_supportedTechnologies = [v50 unsignedIntegerValue];

    v51 = [v4 objectForKeyedSubscript:@"seType"];
    v5->_seType = [v51 unsignedIntegerValue];

    v52 = [v4 objectForKeyedSubscript:@"jcopTooOld"];
    v5->_jcopTooOld = [v52 BOOLValue];
  }

  return v5;
}

- (NSNumber)expectedSequenceCounter
{
  v4 = [NFTLV TLVWithData:self->_manifestQuery];
  v5 = [v4 childWithTag:65343];
  v6 = [v5 childWithTag:135];

  v7 = [v6 value];
  v8 = [v7 length];

  if (v8)
  {
    [(NFHardwareSecureElementInfo *)self signingKeyType];
    if ([(NFHardwareSecureElementInfo *)self seType]== 6 && [(NFHardwareSecureElementInfo *)self deviceType]== 56)
    {
      v9 = [(NFHardwareSecureElementInfo *)self persistentConfigID];
      [v9 unsignedIntValue];
    }

    v10 = [v6 value];
    v11 = *[v10 bytes];
    v12 = &off_100336A80;
    v13 = &off_100336A80;
    if (v11 != 210)
    {
      v13 = 0;
    }

    if (v11 != 200)
    {
      v12 = v13;
    }

    v14 = &off_100336A50;
    v15 = &off_100336A68;
    if (v11 != 115)
    {
      v15 = 0;
    }

    if (v11 != 100)
    {
      v14 = v15;
    }

    if (v11 <= 199)
    {
      v12 = v14;
    }

    v16 = &off_100336A20;
    v17 = &off_100336A38;
    if (v11 != 56)
    {
      v17 = 0;
    }

    if (v11 != 55)
    {
      v16 = v17;
    }

    v18 = &off_100336A08;
    v19 = &off_100336A20;
    if (v11 != 54)
    {
      v19 = 0;
    }

    if (v11 != 44)
    {
      v18 = v19;
    }

    if (v11 <= 54)
    {
      v16 = v18;
    }

    if (v11 <= 99)
    {
      v20 = v16;
    }

    else
    {
      v20 = v12;
    }
  }

  else
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v22 = Logger;
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v27 = [(NSData *)self->_manifestQuery debugDescription];
      v28 = 45;
      if (isMetaClass)
      {
        v28 = 43;
      }

      v22(3, "%c[%{public}s %{public}s]:%i Invalid manifest query %@", v28, ClassName, Name, 115, v27);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v29 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = object_getClass(self);
      if (class_isMetaClass(v30))
      {
        v31 = 43;
      }

      else
      {
        v31 = 45;
      }

      v32 = object_getClassName(self);
      v33 = sel_getName(a2);
      v34 = [(NSData *)self->_manifestQuery debugDescription];
      *buf = 67110146;
      v37 = v31;
      v38 = 2082;
      v39 = v32;
      v40 = 2082;
      v41 = v33;
      v42 = 1024;
      v43 = 115;
      v44 = 2112;
      v45 = v34;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid manifest query %@", buf, 0x2Cu);
    }

    v20 = 0;
  }

  return v20;
}

- (NFHardwareSecureElementInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v39.receiver = self;
  v39.super_class = NFHardwareSecureElementInfo;
  v5 = [(NFHardwareSecureElementInfo *)&v39 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v5->_OSVersion = [v4 decodeIntegerForKey:@"OSVersion"];
    v5->_fullOSVersion = [v4 decodeIntegerForKey:@"fullOSVersion"];
    v5->_firmwareVersion = [v4 decodeIntegerForKey:@"firmwareVersion"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"compiledFWVersion"];
    compiledFWVersion = v5->_compiledFWVersion;
    v5->_compiledFWVersion = v8;

    v5->_hardwareVersion = [v4 decodeIntegerForKey:@"hardwareVersion"];
    v5->_deviceType = [v4 decodeIntegerForKey:@"deviceType"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sequenceCounter"];
    sequenceCounter = v5->_sequenceCounter;
    v5->_sequenceCounter = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"referenceCounter"];
    referenceCounter = v5->_referenceCounter;
    v5->_referenceCounter = v12;

    v5->_osid = [v4 decodeIntegerForKey:@"osid"];
    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"otherOSValid"];
    otherOSValid = v5->_otherOSValid;
    v5->_otherOSValid = v14;

    v5->_restrictedMode = [v4 decodeBoolForKey:@"restrictedMode"];
    v5->_osUpdateMode = [v4 decodeBoolForKey:@"osUpdateMode"];
    v5->_OSMode = [v4 decodeIntegerForKey:@"OSMode"];
    v5->_signingKeyType = [v4 decodeIntegerForKey:@"signingKeyType"];
    v5->_migrationState = [v4 decodeIntegerForKey:@"migrationState"];
    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"migrationPackages"];
    migrationPackages = v5->_migrationPackages;
    v5->_migrationPackages = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"migrationInstances"];
    migrationInstances = v5->_migrationInstances;
    v5->_migrationInstances = v18;

    v5->_migrationContext = [v4 decodeIntegerForKey:@"migrationContext"];
    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"platformIdentifier"];
    platformIdentifier = v5->_platformIdentifier;
    v5->_platformIdentifier = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"serialNumber"];
    serialNumberAsData = v5->_serialNumberAsData;
    v5->_serialNumberAsData = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"systemOSSerialNumber"];
    systemOSSerialNumberAsData = v5->_systemOSSerialNumberAsData;
    v5->_systemOSSerialNumberAsData = v24;

    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"rsaCertificate"];
    rsaCertificateAsData = v5->_rsaCertificateAsData;
    v5->_rsaCertificateAsData = v26;

    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ecdsaCertificate"];
    ecdsaCertificateAsData = v5->_ecdsaCertificateAsData;
    v5->_ecdsaCertificateAsData = v28;

    v30 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"eckaCertificate"];
    eckaCertificateAsData = v5->_eckaCertificateAsData;
    v5->_eckaCertificateAsData = v30;

    v5->_appletMap = [v4 decodeIntegerForKey:@"appletMap"];
    v32 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"persistentConfigID"];
    persistentConfigID = v5->_persistentConfigID;
    v5->_persistentConfigID = v32;

    v34 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"manifestQuery"];
    manifestQuery = v5->_manifestQuery;
    v5->_manifestQuery = v34;

    v5->_personalisable = [v4 decodeBoolForKey:@"personalisable"];
    v5->_supportedTechnologies = [v4 decodeIntegerForKey:@"supportedTechnologies"];
    v5->_seType = [v4 decodeIntegerForKey:@"seType"];
    v5->_jcopTooOld = [v4 decodeBoolForKey:@"jcopTooOld"];
    v36 = [NFNSCheckedDecoder coder:v4 decodeArrayOfClass:objc_opt_class() forKey:@"bootHistory"];
    bootHistory = v5->_bootHistory;
    v5->_bootHistory = v36;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  identifier = self->_identifier;
  v22 = v4;
  if (identifier)
  {
    [v4 encodeObject:identifier forKey:@"identifier"];
    v4 = v22;
  }

  [v4 encodeInteger:self->_OSVersion forKey:@"OSVersion"];
  [v22 encodeInteger:self->_fullOSVersion forKey:@"fullOSVersion"];
  [v22 encodeInteger:self->_firmwareVersion forKey:@"firmwareVersion"];
  compiledFWVersion = self->_compiledFWVersion;
  if (compiledFWVersion)
  {
    [v22 encodeObject:compiledFWVersion forKey:@"compiledFWVersion"];
  }

  [v22 encodeInteger:self->_hardwareVersion forKey:@"hardwareVersion"];
  [v22 encodeInteger:self->_deviceType forKey:@"deviceType"];
  sequenceCounter = self->_sequenceCounter;
  if (sequenceCounter)
  {
    [v22 encodeObject:sequenceCounter forKey:@"sequenceCounter"];
  }

  referenceCounter = self->_referenceCounter;
  if (referenceCounter)
  {
    [v22 encodeObject:referenceCounter forKey:@"referenceCounter"];
  }

  [v22 encodeInteger:self->_osid forKey:@"osid"];
  otherOSValid = self->_otherOSValid;
  if (otherOSValid)
  {
    [v22 encodeObject:otherOSValid forKey:@"otherOSValid"];
  }

  [v22 encodeBool:self->_restrictedMode forKey:@"restrictedMode"];
  [v22 encodeBool:self->_osUpdateMode forKey:@"osUpdateMode"];
  [v22 encodeInteger:self->_OSMode forKey:@"OSMode"];
  [v22 encodeInteger:self->_signingKeyType forKey:@"signingKeyType"];
  [v22 encodeInteger:self->_migrationState forKey:@"migrationState"];
  migrationPackages = self->_migrationPackages;
  if (migrationPackages)
  {
    [v22 encodeObject:migrationPackages forKey:@"migrationPackages"];
  }

  migrationInstances = self->_migrationInstances;
  if (migrationInstances)
  {
    [v22 encodeObject:migrationInstances forKey:@"migrationInstances"];
  }

  [v22 encodeInteger:self->_migrationContext forKey:@"migrationContext"];
  platformIdentifier = self->_platformIdentifier;
  if (platformIdentifier)
  {
    [v22 encodeObject:platformIdentifier forKey:@"platformIdentifier"];
  }

  serialNumberAsData = self->_serialNumberAsData;
  if (serialNumberAsData)
  {
    [v22 encodeObject:serialNumberAsData forKey:@"serialNumber"];
  }

  systemOSSerialNumberAsData = self->_systemOSSerialNumberAsData;
  v15 = v22;
  if (systemOSSerialNumberAsData)
  {
    [v22 encodeObject:systemOSSerialNumberAsData forKey:@"systemOSSerialNumber"];
    v15 = v22;
  }

  rsaCertificateAsData = self->_rsaCertificateAsData;
  if (rsaCertificateAsData)
  {
    [v22 encodeObject:rsaCertificateAsData forKey:@"rsaCertificate"];
    v15 = v22;
  }

  ecdsaCertificateAsData = self->_ecdsaCertificateAsData;
  if (ecdsaCertificateAsData)
  {
    [v22 encodeObject:ecdsaCertificateAsData forKey:@"ecdsaCertificate"];
    v15 = v22;
  }

  eckaCertificateAsData = self->_eckaCertificateAsData;
  if (eckaCertificateAsData)
  {
    [v22 encodeObject:eckaCertificateAsData forKey:@"eckaCertificate"];
    v15 = v22;
  }

  [v15 encodeInteger:self->_appletMap forKey:@"appletMap"];
  persistentConfigID = self->_persistentConfigID;
  if (persistentConfigID)
  {
    [v22 encodeObject:persistentConfigID forKey:@"persistentConfigID"];
  }

  manifestQuery = self->_manifestQuery;
  if (manifestQuery)
  {
    [v22 encodeObject:manifestQuery forKey:@"manifestQuery"];
  }

  [v22 encodeBool:self->_personalisable forKey:@"personalisable"];
  [v22 encodeInteger:self->_supportedTechnologies forKey:@"supportedTechnologies"];
  [v22 encodeInteger:self->_seType forKey:@"seType"];
  [v22 encodeBool:self->_jcopTooOld forKey:@"jcopTooOld"];
  bootHistory = self->_bootHistory;
  if (bootHistory)
  {
    [v22 encodeObject:bootHistory forKey:@"bootHistory"];
  }
}

- (id)asDictionary
{
  v3 = objc_opt_new();
  v4 = v3;
  if (self->_identifier)
  {
    identifier = self->_identifier;
  }

  else
  {
    identifier = &stru_10031EA18;
  }

  [v3 setObject:identifier forKeyedSubscript:@"identifier"];
  if (self->_compiledFWVersion)
  {
    compiledFWVersion = self->_compiledFWVersion;
  }

  else
  {
    compiledFWVersion = &stru_10031EA18;
  }

  [v4 setObject:compiledFWVersion forKeyedSubscript:@"compiledFWVersion"];
  if (self->_sequenceCounter)
  {
    sequenceCounter = self->_sequenceCounter;
  }

  else
  {
    sequenceCounter = &stru_10031EA18;
  }

  [v4 setObject:sequenceCounter forKeyedSubscript:@"sequenceCounter"];
  if (self->_referenceCounter)
  {
    referenceCounter = self->_referenceCounter;
  }

  else
  {
    referenceCounter = &stru_10031EA18;
  }

  [v4 setObject:referenceCounter forKeyedSubscript:@"referenceCounter"];
  if (self->_otherOSValid)
  {
    otherOSValid = self->_otherOSValid;
  }

  else
  {
    otherOSValid = &stru_10031EA18;
  }

  [v4 setObject:otherOSValid forKeyedSubscript:@"otherOSValid"];
  if (self->_migrationPackages)
  {
    migrationPackages = self->_migrationPackages;
  }

  else
  {
    migrationPackages = &stru_10031EA18;
  }

  [v4 setObject:migrationPackages forKeyedSubscript:@"migrationPackages"];
  if (self->_migrationInstances)
  {
    migrationInstances = self->_migrationInstances;
  }

  else
  {
    migrationInstances = &stru_10031EA18;
  }

  [v4 setObject:migrationInstances forKeyedSubscript:@"migrationInstances"];
  v12 = [[NSString alloc] initWithFormat:@"0x%04x", self->_OSVersion];
  [v4 setObject:v12 forKeyedSubscript:@"OSVersion"];

  v13 = [[NSString alloc] initWithFormat:@"0x%06x", self->_fullOSVersion];
  [v4 setObject:v13 forKeyedSubscript:@"fullOSVersion"];

  v14 = [[NSString alloc] initWithFormat:@"0x%04x", self->_firmwareVersion];
  [v4 setObject:v14 forKeyedSubscript:@"firmwareVersion"];

  v15 = [[NSString alloc] initWithFormat:@"0x%04x", self->_hardwareVersion];
  [v4 setObject:v15 forKeyedSubscript:@"hardwareVersion"];

  v16 = [[NSString alloc] initWithFormat:@"0x%04x", self->_deviceType];
  [v4 setObject:v16 forKeyedSubscript:@"deviceType"];

  v17 = [[NSString alloc] initWithFormat:@"0x%04x", self->_osid];
  [v4 setObject:v17 forKeyedSubscript:@"osid"];

  v18 = [NSNumber numberWithBool:self->_restrictedMode];
  [v4 setObject:v18 forKeyedSubscript:@"restrictedMode"];

  v19 = [NSNumber numberWithBool:self->_osUpdateMode];
  [v4 setObject:v19 forKeyedSubscript:@"osUpdateMode"];

  v20 = [NSNumber numberWithInt:LODWORD(self->_OSMode)];
  [v4 setObject:v20 forKeyedSubscript:@"OSMode"];

  v21 = [NSNumber numberWithInt:LODWORD(self->_signingKeyType)];
  [v4 setObject:v21 forKeyedSubscript:@"signingKeyType"];

  v22 = [NSNumber numberWithInt:LODWORD(self->_migrationState)];
  [v4 setObject:v22 forKeyedSubscript:@"migrationState"];

  v23 = [NSNumber numberWithInt:LODWORD(self->_migrationContext)];
  [v4 setObject:v23 forKeyedSubscript:@"migrationContext"];

  if (self->_platformIdentifier)
  {
    platformIdentifier = self->_platformIdentifier;
  }

  else
  {
    platformIdentifier = &stru_10031EA18;
  }

  [v4 setObject:platformIdentifier forKeyedSubscript:@"platformIdentifier"];
  serialNumberAsData = self->_serialNumberAsData;
  if (serialNumberAsData)
  {
    v26 = [(NSData *)serialNumberAsData NF_asHexString];
    [v4 setObject:v26 forKeyedSubscript:@"serialNumber"];
  }

  else
  {
    [v4 setObject:&stru_10031EA18 forKeyedSubscript:@"serialNumber"];
  }

  systemOSSerialNumberAsData = self->_systemOSSerialNumberAsData;
  if (systemOSSerialNumberAsData)
  {
    v28 = [(NSData *)systemOSSerialNumberAsData NF_asHexString];
    [v4 setObject:v28 forKeyedSubscript:@"systemOSSerialNumber"];
  }

  else
  {
    [v4 setObject:&stru_10031EA18 forKeyedSubscript:@"systemOSSerialNumber"];
  }

  rsaCertificateAsData = self->_rsaCertificateAsData;
  if (rsaCertificateAsData)
  {
    v30 = [(NSData *)rsaCertificateAsData NF_asHexString];
    [v4 setObject:v30 forKeyedSubscript:@"rsaCertificate"];
  }

  else
  {
    [v4 setObject:&stru_10031EA18 forKeyedSubscript:@"rsaCertificate"];
  }

  ecdsaCertificateAsData = self->_ecdsaCertificateAsData;
  if (ecdsaCertificateAsData)
  {
    v32 = [(NSData *)ecdsaCertificateAsData NF_asHexString];
    [v4 setObject:v32 forKeyedSubscript:@"ecdsaCertificate"];
  }

  else
  {
    [v4 setObject:&stru_10031EA18 forKeyedSubscript:@"ecdsaCertificate"];
  }

  eckaCertificateAsData = self->_eckaCertificateAsData;
  if (eckaCertificateAsData)
  {
    v34 = [(NSData *)eckaCertificateAsData NF_asHexString];
    [v4 setObject:v34 forKeyedSubscript:@"eckaCertificate"];
  }

  else
  {
    [v4 setObject:&stru_10031EA18 forKeyedSubscript:@"eckaCertificate"];
  }

  v35 = [NSNumber numberWithInt:LODWORD(self->_appletMap)];
  [v4 setObject:v35 forKeyedSubscript:@"appletMap"];

  if (self->_persistentConfigID)
  {
    persistentConfigID = self->_persistentConfigID;
  }

  else
  {
    persistentConfigID = &stru_10031EA18;
  }

  [v4 setObject:persistentConfigID forKeyedSubscript:@"persistentConfigID"];
  v37 = [NSNumber numberWithBool:self->_personalisable];
  [v4 setObject:v37 forKeyedSubscript:@"personalisable"];

  if (self->_bootHistory)
  {
    bootHistory = self->_bootHistory;
  }

  else
  {
    bootHistory = &stru_10031EA18;
  }

  [v4 setObject:bootHistory forKeyedSubscript:@"bootHistory"];
  v39 = [[NSString alloc] initWithFormat:@"0x%04x", self->_supportedTechnologies];
  [v4 setObject:v39 forKeyedSubscript:@"supportedTechnologies"];

  v40 = [NSNumber numberWithUnsignedInteger:self->_seType];
  [v4 setObject:v40 forKeyedSubscript:@"seType"];

  v41 = [NSNumber numberWithBool:self->_jcopTooOld];
  [v4 setObject:v41 forKeyedSubscript:@"jcopTooOld"];

  return v4;
}

@end