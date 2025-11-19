@interface NFHardwareControllerInfo
- (NFHardwareControllerInfo)initWithCoder:(id)a3;
- (NFHardwareControllerInfo)initWithDictionary:(id)a3;
- (id)asDictionary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NFHardwareControllerInfo

- (NFHardwareControllerInfo)initWithDictionary:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = NFHardwareControllerInfo;
  v5 = [(NFHardwareControllerInfo *)&v20 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"siliconVersion"];
    v5->_siliconVersion = [v6 unsignedIntegerValue];

    v7 = [v4 objectForKeyedSubscript:@"siliconName"];
    v5->_siliconName = [v7 unsignedIntegerValue];

    v8 = [v4 objectForKeyedSubscript:@"ROMVersion"];
    v5->_ROMVersion = [v8 unsignedIntegerValue];

    v9 = [v4 objectForKeyedSubscript:@"firmwareVersion"];
    v5->_firmwareVersion = [v9 unsignedIntegerValue];

    v10 = [v4 objectForKeyedSubscript:@"firmwareRevision"];
    v5->_firmwareRevision = [v10 unsignedIntegerValue];

    v11 = [v4 objectForKeyedSubscript:@"middlewareVersion"];
    v5->_middlewareVersion = [v11 unsignedIntegerValue];

    v12 = [v4 objectForKeyedSubscript:@"hasAntenna"];
    v5->_hasAntenna = [v12 BOOLValue];

    v5->_hasIcfResistor = 0;
    v13 = [v4 objectForKeyedSubscript:@"hasMFW"];
    v5->_hasMFW = [v13 BOOLValue];

    v14 = [v4 objectForKeyedSubscript:@"hasHLMSupport"];
    v5->_hasHLMSupport = [v14 BOOLValue];

    v15 = [v4 objectForKeyedSubscript:@"hasLPEMSupport"];
    v5->_hasLPEMSupport = [v15 BOOLValue];

    v16 = [v4 objectForKeyedSubscript:@"hasCarKeySupport"];
    v5->_hasCarKeySupport = [v16 BOOLValue];

    v17 = [v4 objectForKeyedSubscript:@"hasReaderModeSupport"];
    v5->_hasReaderModeSupport = [v17 BOOLValue];

    v18 = [v4 objectForKeyedSubscript:@"poweredRunDuringSleep"];
    v5->_poweredRunDuringSleep = [v18 BOOLValue];
  }

  return v5;
}

- (NFHardwareControllerInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = NFHardwareControllerInfo;
  v5 = [(NFHardwareControllerInfo *)&v7 init];
  if (v5)
  {
    v5->_siliconVersion = [v4 decodeIntegerForKey:@"siliconVersion"];
    v5->_siliconName = [v4 decodeIntegerForKey:@"siliconName"];
    v5->_ROMVersion = [v4 decodeIntegerForKey:@"ROMVersion"];
    v5->_firmwareVersion = [v4 decodeIntegerForKey:@"firmwareVersion"];
    v5->_firmwareRevision = [v4 decodeIntegerForKey:@"firmwareRevision"];
    v5->_middlewareVersion = [v4 decodeIntegerForKey:@"middlewareVersion"];
    v5->_hasAntenna = [v4 decodeBoolForKey:@"hasAntenna"];
    v5->_hasIcfResistor = 0;
    v5->_hasMFW = [v4 decodeBoolForKey:@"hasMFW"];
    v5->_hasHLMSupport = [v4 decodeBoolForKey:@"hasHLMSupport"];
    v5->_hasLPEMSupport = [v4 decodeBoolForKey:@"hasLPEMSupport"];
    v5->_hasCarKeySupport = [v4 decodeBoolForKey:@"hasCarKeySupport"];
    v5->_hasReaderModeSupport = [v4 decodeBoolForKey:@"hasReaderModeSupport"];
    v5->_poweredRunDuringSleep = [v4 decodeBoolForKey:@"poweredRunDuringSleep"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  siliconVersion = self->_siliconVersion;
  v5 = a3;
  [v5 encodeInteger:siliconVersion forKey:@"siliconVersion"];
  [v5 encodeInteger:self->_siliconName forKey:@"siliconName"];
  [v5 encodeInteger:self->_ROMVersion forKey:@"ROMVersion"];
  [v5 encodeInteger:self->_firmwareVersion forKey:@"firmwareVersion"];
  [v5 encodeInteger:self->_firmwareRevision forKey:@"firmwareRevision"];
  [v5 encodeInteger:self->_middlewareVersion forKey:@"middlewareVersion"];
  [v5 encodeBool:self->_hasAntenna forKey:@"hasAntenna"];
  [v5 encodeBool:self->_hasMFW forKey:@"hasMFW"];
  [v5 encodeBool:self->_hasHLMSupport forKey:@"hasHLMSupport"];
  [v5 encodeBool:self->_hasLPEMSupport forKey:@"hasLPEMSupport"];
  [v5 encodeBool:self->_hasCarKeySupport forKey:@"hasCarKeySupport"];
  [v5 encodeBool:self->_hasReaderModeSupport forKey:@"hasReaderModeSupport"];
  [v5 encodeBool:self->_poweredRunDuringSleep forKey:@"poweredRunDuringSleep"];
}

- (id)asDictionary
{
  v3 = objc_opt_new();
  v4 = [[NSString alloc] initWithFormat:@"0x%04x", self->_siliconVersion];
  [v3 setObject:v4 forKeyedSubscript:@"siliconVersion"];

  v5 = [[NSString alloc] initWithFormat:@"0x%04x", self->_siliconName];
  [v3 setObject:v5 forKeyedSubscript:@"siliconName"];

  v6 = [[NSString alloc] initWithFormat:@"0x%04x", self->_ROMVersion];
  [v3 setObject:v6 forKeyedSubscript:@"ROMVersion"];

  v7 = [[NSString alloc] initWithFormat:@"0x%04x", self->_firmwareVersion];
  [v3 setObject:v7 forKeyedSubscript:@"firmwareVersion"];

  v8 = [[NSString alloc] initWithFormat:@"0x%04x", self->_firmwareRevision];
  [v3 setObject:v8 forKeyedSubscript:@"firmwareRevision"];

  v9 = [[NSString alloc] initWithFormat:@"0x%04x", self->_middlewareVersion];
  [v3 setObject:v9 forKeyedSubscript:@"middlewareVersion"];

  v10 = [NSNumber numberWithBool:self->_hasAntenna];
  [v3 setObject:v10 forKeyedSubscript:@"hasAntenna"];

  v11 = [NSNumber numberWithBool:self->_hasMFW];
  [v3 setObject:v11 forKeyedSubscript:@"hasMFW"];

  v12 = [NSNumber numberWithBool:self->_hasHLMSupport];
  [v3 setObject:v12 forKeyedSubscript:@"hasHLMSupport"];

  v13 = [NSNumber numberWithBool:self->_hasLPEMSupport];
  [v3 setObject:v13 forKeyedSubscript:@"hasLPEMSupport"];

  v14 = [NSNumber numberWithBool:self->_hasCarKeySupport];
  [v3 setObject:v14 forKeyedSubscript:@"hasCarKeySupport"];

  v15 = [NSNumber numberWithBool:self->_hasReaderModeSupport];
  [v3 setObject:v15 forKeyedSubscript:@"hasReaderModeSupport"];

  v16 = [NSNumber numberWithBool:self->_poweredRunDuringSleep];
  [v3 setObject:v16 forKeyedSubscript:@"poweredRunDuringSleep"];

  return v3;
}

@end