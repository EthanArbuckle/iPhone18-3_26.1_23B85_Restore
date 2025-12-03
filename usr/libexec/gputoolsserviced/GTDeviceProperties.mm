@interface GTDeviceProperties
+ (id)hardwareUUID;
+ (id)uniqueDeviceID;
- (GTDeviceProperties)initWithCoder:(id)coder;
- (GTDeviceProperties)initWithXPCObject:(id)object;
- (id)initForEmbeddedSystem;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GTDeviceProperties

+ (id)hardwareUUID
{
  memset(v6, 0, sizeof(v6));
  v5.tv_sec = 0;
  v5.tv_nsec = 0;
  v2 = gethostuuid(v6, &v5);
  v3 = 0;
  if (!v2)
  {
    v3 = [[NSUUID alloc] initWithUUIDBytes:v6];
  }

  return v3;
}

+ (id)uniqueDeviceID
{
  v2 = MGCopyAnswer();

  return v2;
}

- (GTDeviceProperties)initWithXPCObject:(id)object
{
  objectCopy = object;
  v51.receiver = self;
  v51.super_class = GTDeviceProperties;
  v5 = [(GTDeviceProperties *)&v51 init];
  if (v5)
  {
    v5->_LocationID = xpc_dictionary_get_uint64(objectCopy, "LocationID");
    string = xpc_dictionary_get_string(objectCopy, "OSVersion");
    if (string)
    {
      v7 = string;
    }

    else
    {
      v7 = "";
    }

    v8 = [NSString stringWithUTF8String:v7];
    OSVersion = v5->_OSVersion;
    v5->_OSVersion = v8;

    v10 = xpc_dictionary_get_string(objectCopy, "BuildVersion");
    if (v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = "";
    }

    v12 = [NSString stringWithUTF8String:v11];
    BuildVersion = v5->_BuildVersion;
    v5->_BuildVersion = v12;

    v14 = xpc_dictionary_get_string(objectCopy, "ProductType");
    if (v14)
    {
      v15 = v14;
    }

    else
    {
      v15 = "";
    }

    v16 = [NSString stringWithUTF8String:v15];
    ProductType = v5->_ProductType;
    v5->_ProductType = v16;

    v18 = xpc_dictionary_get_string(objectCopy, "HWModel");
    if (v18)
    {
      v19 = v18;
    }

    else
    {
      v19 = "";
    }

    v20 = [NSString stringWithUTF8String:v19];
    HWModelStr = v5->_HWModelStr;
    v5->_HWModelStr = v20;

    v22 = xpc_dictionary_get_string(objectCopy, "UniqueDeviceID");
    if (v22)
    {
      v23 = v22;
    }

    else
    {
      v23 = "";
    }

    v24 = [NSString stringWithUTF8String:v23];
    UniqueDeviceID = v5->_UniqueDeviceID;
    v5->_UniqueDeviceID = v24;

    v26 = xpc_dictionary_get_string(objectCopy, "Reality");
    if (v26)
    {
      v27 = v26;
    }

    else
    {
      v27 = "";
    }

    v28 = [NSString stringWithUTF8String:v27];
    Reality = v5->_Reality;
    v5->_Reality = v28;

    v5->_RemoteXPCVersionFlags = xpc_dictionary_get_uint64(objectCopy, "RemoteXPCVersionFlags");
    v30 = xpc_dictionary_get_string(objectCopy, "CPUArchitecture");
    if (v30)
    {
      v31 = v30;
    }

    else
    {
      v31 = "";
    }

    v32 = [NSString stringWithUTF8String:v31];
    CPUArchitecture = v5->_CPUArchitecture;
    v5->_CPUArchitecture = v32;

    v34 = xpc_dictionary_get_string(objectCopy, "DeviceClass");
    if (v34)
    {
      v35 = v34;
    }

    else
    {
      v35 = "";
    }

    v36 = [NSString stringWithUTF8String:v35];
    DeviceClass = v5->_DeviceClass;
    v5->_DeviceClass = v36;

    v38 = xpc_dictionary_get_string(objectCopy, "MobileDeviceMinimumVersion");
    if (v38)
    {
      v39 = v38;
    }

    else
    {
      v39 = "";
    }

    v40 = [NSString stringWithUTF8String:v39];
    MobileDeviceMinimumVersion = v5->_MobileDeviceMinimumVersion;
    v5->_MobileDeviceMinimumVersion = v40;

    v42 = xpc_dictionary_get_string(objectCopy, "ProductName");
    if (v42)
    {
      v43 = v42;
    }

    else
    {
      v43 = "";
    }

    v44 = [NSString stringWithUTF8String:v43];
    ProductName = v5->_ProductName;
    v5->_ProductName = v44;

    v46 = xpc_dictionary_get_string(objectCopy, "ReleaseType");
    if (v46)
    {
      v47 = v46;
    }

    else
    {
      v47 = "";
    }

    v48 = [NSString stringWithUTF8String:v47];
    ReleaseType = v5->_ReleaseType;
    v5->_ReleaseType = v48;

    v5->_AppleInternal = xpc_dictionary_get_BOOL(objectCopy, "AppleInternal");
    v5->_DeviceSupportsLockdown = xpc_dictionary_get_BOOL(objectCopy, "DeviceSupportsLockdown");
    v5->_EffectiveProductionStatusAp = xpc_dictionary_get_BOOL(objectCopy, "EffectiveProductionStatusAp");
    v5->_IsUIBuild = xpc_dictionary_get_BOOL(objectCopy, "IsUIBuild");
    v5->_OSInstallEnvironment = xpc_dictionary_get_BOOL(objectCopy, "OSInstallEnvironment");
    v5->_StoreDemoMode = xpc_dictionary_get_BOOL(objectCopy, "StoreDemoMode");
  }

  return v5;
}

- (GTDeviceProperties)initWithCoder:(id)coder
{
  coderCopy = coder;
  v29.receiver = self;
  v29.super_class = GTDeviceProperties;
  v5 = [(GTDeviceProperties *)&v29 init];
  if (v5)
  {
    v5->_LocationID = [coderCopy decodeIntegerForKey:@"LocationID"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"BuildVersion"];
    BuildVersion = v5->_BuildVersion;
    v5->_BuildVersion = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HWModel"];
    HWModelStr = v5->_HWModelStr;
    v5->_HWModelStr = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"OSVersion"];
    OSVersion = v5->_OSVersion;
    v5->_OSVersion = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ProductType"];
    ProductType = v5->_ProductType;
    v5->_ProductType = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UniqueDeviceID"];
    UniqueDeviceID = v5->_UniqueDeviceID;
    v5->_UniqueDeviceID = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Reality"];
    Reality = v5->_Reality;
    v5->_Reality = v16;

    v5->_RemoteXPCVersionFlags = [coderCopy decodeIntegerForKey:@"RemoteXPCVersionFlags"];
    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CPUArchitecture"];
    CPUArchitecture = v5->_CPUArchitecture;
    v5->_CPUArchitecture = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DeviceClass"];
    DeviceClass = v5->_DeviceClass;
    v5->_DeviceClass = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MobileDeviceMinimumVersion"];
    MobileDeviceMinimumVersion = v5->_MobileDeviceMinimumVersion;
    v5->_MobileDeviceMinimumVersion = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ProductName"];
    ProductName = v5->_ProductName;
    v5->_ProductName = v24;

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ReleaseType"];
    ReleaseType = v5->_ReleaseType;
    v5->_ReleaseType = v26;

    v5->_AppleInternal = [coderCopy decodeBoolForKey:@"AppleInternal"];
    v5->_DeviceSupportsLockdown = [coderCopy decodeBoolForKey:@"DeviceSupportsLockdown"];
    v5->_EffectiveProductionStatusAp = [coderCopy decodeBoolForKey:@"EffectiveProductionStatusAp"];
    v5->_IsUIBuild = [coderCopy decodeBoolForKey:@"IsUIBuild"];
    v5->_OSInstallEnvironment = [coderCopy decodeBoolForKey:@"OSInstallEnvironment"];
    v5->_StoreDemoMode = [coderCopy decodeBoolForKey:@"StoreDemoMode"];
  }

  return v5;
}

- (id)initForEmbeddedSystem
{
  v14.receiver = self;
  v14.super_class = GTDeviceProperties;
  v2 = [(GTDeviceProperties *)&v14 init];
  if (v2)
  {
    [(GTDeviceProperties *)v2 setAppleInternal:os_variant_has_internal_content()];
    v3 = _CFCopySystemVersionDictionary();
    if (v3)
    {
      v4 = v3;
      [(GTDeviceProperties *)v2 setOsVersion:CFDictionaryGetValue(v3, _kCFSystemVersionProductVersionKey)];
      [(GTDeviceProperties *)v2 setBuildVersion:CFDictionaryGetValue(v4, _kCFSystemVersionBuildVersionKey)];
      [(GTDeviceProperties *)v2 setProductName:CFDictionaryGetValue(v4, _kCFSystemVersionProductNameKey)];
      [(GTDeviceProperties *)v2 setReleaseType:CFDictionaryGetValue(v4, @"ReleaseType")];
      CFRelease(v4);
    }

    *__error() = 0;
    size = 128;
    v5 = sysctlbyname("kern.osversion", values, &size, 0, 0);
    if (!v5 || *__error() == 12)
    {
      if (size != 128 || *__error() != 12)
      {
        v7 = 0;
        v6 = values;
        if (v5)
        {
          goto LABEL_13;
        }

        goto LABEL_15;
      }

      if (!sysctlbyname("kern.osversion", 0, &size, 0, 0))
      {
        if (size >= 0x81)
        {
          v6 = malloc_type_malloc(size, 0xDF58D149uLL);
          v7 = v6;
          if (!sysctlbyname("kern.osversion", v6, &size, 0, 0))
          {
            goto LABEL_15;
          }

LABEL_13:
          v8 = 0;
          size = 0;
          goto LABEL_16;
        }

        v7 = 0;
        v6 = values;
LABEL_15:
        v8 = strdup(v6);
LABEL_16:
        free(v7);
        if (size)
        {
          if (!v8)
          {
LABEL_19:
            v18 = *off_1000409A0;
            v19 = *off_1000409B0;
            v20 = *off_1000409C0;
            v21 = @"re6Zb+zwFKJNlkQTUeT+/w";
            *values = *off_100040980;
            v17 = *off_100040990;
            v10 = CFArrayCreate(0, values, 11, &kCFTypeArrayCallBacks);
            v11 = MGCopyMultipleAnswers();
            CFRelease(v10);
            [(GTDeviceProperties *)v2 setCpuArchitecture:CFDictionaryGetValue(v11, @"k7QIBwZJJOVw+Sej/8h8VA")];
            [(GTDeviceProperties *)v2 setCpuArchitecture:CFDictionaryGetValue(v11, @"k7QIBwZJJOVw+Sej/8h8VA")];
            [(GTDeviceProperties *)v2 setDeviceClass:CFDictionaryGetValue(v11, @"+3Uf0Pm5F8Xy7Onyvko0vA")];
            [(GTDeviceProperties *)v2 setDeviceSupportsLockdown:MGGetBoolAnswer()];
            [(GTDeviceProperties *)v2 setEffectiveProductionStatusAp:MGGetBoolAnswer()];
            [(GTDeviceProperties *)v2 setHardwareModel:CFDictionaryGetValue(v11, @"/YYygAofPDbhrwToVsXdeA")];
            [(GTDeviceProperties *)v2 setIsUIBuild:MGGetBoolAnswer()];
            [(GTDeviceProperties *)v2 setMobileDeviceMinimumVersion:CFDictionaryGetValue(v11, @"k+KTni1jrwErpcDMEnn3aw")];
            [(GTDeviceProperties *)v2 setProductName:CFDictionaryGetValue(v11, @"ivIu8YTDnBSrYv/SN4G8Ag")];
            [(GTDeviceProperties *)v2 setProductType:CFDictionaryGetValue(v11, @"h9jDsbgj7xIVeIQ8S3/X3Q")];
            [(GTDeviceProperties *)v2 setReleaseType:CFDictionaryGetValue(v11, @"9UCjT7Qfi4xLVvPAKIzTCQ")];
            [(GTDeviceProperties *)v2 setUniqueDeviceID:CFDictionaryGetValue(v11, @"re6Zb+zwFKJNlkQTUeT+/w")];
            CFRelease(v11);
            [(GTDeviceProperties *)v2 setOsInstallEnvironment:getenv("__OSINSTALL_ENVIRONMENT") != 0];
            v12 = v2;
            goto LABEL_20;
          }

LABEL_18:
          v9 = [NSString stringWithUTF8String:v8];
          [(GTDeviceProperties *)v2 setBuildVersion:v9];

          free(v8);
          goto LABEL_19;
        }

LABEL_22:
        _os_assumes_log();
        if (!v8)
        {
          goto LABEL_19;
        }

        goto LABEL_18;
      }
    }

    v8 = 0;
    goto LABEL_22;
  }

LABEL_20:

  return v2;
}

- (void)encodeWithCoder:(id)coder
{
  LocationID = self->_LocationID;
  coderCopy = coder;
  [coderCopy encodeInteger:LocationID forKey:@"LocationID"];
  [coderCopy encodeObject:self->_BuildVersion forKey:@"BuildVersion"];
  [coderCopy encodeObject:self->_HWModelStr forKey:@"HWModel"];
  [coderCopy encodeObject:self->_OSVersion forKey:@"OSVersion"];
  [coderCopy encodeObject:self->_ProductType forKey:@"ProductType"];
  [coderCopy encodeObject:self->_UniqueDeviceID forKey:@"UniqueDeviceID"];
  [coderCopy encodeObject:self->_Reality forKey:@"Reality"];
  [coderCopy encodeInteger:self->_RemoteXPCVersionFlags forKey:@"RemoteXPCVersionFlags"];
  [coderCopy encodeObject:self->_CPUArchitecture forKey:@"CPUArchitecture"];
  [coderCopy encodeObject:self->_DeviceClass forKey:@"DeviceClass"];
  [coderCopy encodeObject:self->_MobileDeviceMinimumVersion forKey:@"MobileDeviceMinimumVersion"];
  [coderCopy encodeObject:self->_ProductName forKey:@"ProductName"];
  [coderCopy encodeObject:self->_ReleaseType forKey:@"ReleaseType"];
  [coderCopy encodeBool:self->_AppleInternal forKey:@"AppleInternal"];
  [coderCopy encodeBool:self->_DeviceSupportsLockdown forKey:@"DeviceSupportsLockdown"];
  [coderCopy encodeBool:self->_EffectiveProductionStatusAp forKey:@"EffectiveProductionStatusAp"];
  [coderCopy encodeBool:self->_IsUIBuild forKey:@"IsUIBuild"];
  [coderCopy encodeBool:self->_OSInstallEnvironment forKey:@"OSInstallEnvironment"];
  [coderCopy encodeBool:self->_StoreDemoMode forKey:@"StoreDemoMode"];
}

@end