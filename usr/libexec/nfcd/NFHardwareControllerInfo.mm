@interface NFHardwareControllerInfo
- (NFHardwareControllerInfo)initWithCoder:(id)coder;
- (NFHardwareControllerInfo)initWithDictionary:(id)dictionary;
- (id)asDictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NFHardwareControllerInfo

- (NFHardwareControllerInfo)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v20.receiver = self;
  v20.super_class = NFHardwareControllerInfo;
  v5 = [(NFHardwareControllerInfo *)&v20 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"siliconVersion"];
    v5->_siliconVersion = [v6 unsignedIntegerValue];

    v7 = [dictionaryCopy objectForKeyedSubscript:@"siliconName"];
    v5->_siliconName = [v7 unsignedIntegerValue];

    v8 = [dictionaryCopy objectForKeyedSubscript:@"ROMVersion"];
    v5->_ROMVersion = [v8 unsignedIntegerValue];

    v9 = [dictionaryCopy objectForKeyedSubscript:@"firmwareVersion"];
    v5->_firmwareVersion = [v9 unsignedIntegerValue];

    v10 = [dictionaryCopy objectForKeyedSubscript:@"firmwareRevision"];
    v5->_firmwareRevision = [v10 unsignedIntegerValue];

    v11 = [dictionaryCopy objectForKeyedSubscript:@"middlewareVersion"];
    v5->_middlewareVersion = [v11 unsignedIntegerValue];

    v12 = [dictionaryCopy objectForKeyedSubscript:@"hasAntenna"];
    v5->_hasAntenna = [v12 BOOLValue];

    v5->_hasIcfResistor = 0;
    v13 = [dictionaryCopy objectForKeyedSubscript:@"hasMFW"];
    v5->_hasMFW = [v13 BOOLValue];

    v14 = [dictionaryCopy objectForKeyedSubscript:@"hasHLMSupport"];
    v5->_hasHLMSupport = [v14 BOOLValue];

    v15 = [dictionaryCopy objectForKeyedSubscript:@"hasLPEMSupport"];
    v5->_hasLPEMSupport = [v15 BOOLValue];

    v16 = [dictionaryCopy objectForKeyedSubscript:@"hasCarKeySupport"];
    v5->_hasCarKeySupport = [v16 BOOLValue];

    v17 = [dictionaryCopy objectForKeyedSubscript:@"hasReaderModeSupport"];
    v5->_hasReaderModeSupport = [v17 BOOLValue];

    v18 = [dictionaryCopy objectForKeyedSubscript:@"poweredRunDuringSleep"];
    v5->_poweredRunDuringSleep = [v18 BOOLValue];
  }

  return v5;
}

- (NFHardwareControllerInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = NFHardwareControllerInfo;
  v5 = [(NFHardwareControllerInfo *)&v7 init];
  if (v5)
  {
    v5->_siliconVersion = [coderCopy decodeIntegerForKey:@"siliconVersion"];
    v5->_siliconName = [coderCopy decodeIntegerForKey:@"siliconName"];
    v5->_ROMVersion = [coderCopy decodeIntegerForKey:@"ROMVersion"];
    v5->_firmwareVersion = [coderCopy decodeIntegerForKey:@"firmwareVersion"];
    v5->_firmwareRevision = [coderCopy decodeIntegerForKey:@"firmwareRevision"];
    v5->_middlewareVersion = [coderCopy decodeIntegerForKey:@"middlewareVersion"];
    v5->_hasAntenna = [coderCopy decodeBoolForKey:@"hasAntenna"];
    v5->_hasIcfResistor = 0;
    v5->_hasMFW = [coderCopy decodeBoolForKey:@"hasMFW"];
    v5->_hasHLMSupport = [coderCopy decodeBoolForKey:@"hasHLMSupport"];
    v5->_hasLPEMSupport = [coderCopy decodeBoolForKey:@"hasLPEMSupport"];
    v5->_hasCarKeySupport = [coderCopy decodeBoolForKey:@"hasCarKeySupport"];
    v5->_hasReaderModeSupport = [coderCopy decodeBoolForKey:@"hasReaderModeSupport"];
    v5->_poweredRunDuringSleep = [coderCopy decodeBoolForKey:@"poweredRunDuringSleep"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  siliconVersion = self->_siliconVersion;
  coderCopy = coder;
  [coderCopy encodeInteger:siliconVersion forKey:@"siliconVersion"];
  [coderCopy encodeInteger:self->_siliconName forKey:@"siliconName"];
  [coderCopy encodeInteger:self->_ROMVersion forKey:@"ROMVersion"];
  [coderCopy encodeInteger:self->_firmwareVersion forKey:@"firmwareVersion"];
  [coderCopy encodeInteger:self->_firmwareRevision forKey:@"firmwareRevision"];
  [coderCopy encodeInteger:self->_middlewareVersion forKey:@"middlewareVersion"];
  [coderCopy encodeBool:self->_hasAntenna forKey:@"hasAntenna"];
  [coderCopy encodeBool:self->_hasMFW forKey:@"hasMFW"];
  [coderCopy encodeBool:self->_hasHLMSupport forKey:@"hasHLMSupport"];
  [coderCopy encodeBool:self->_hasLPEMSupport forKey:@"hasLPEMSupport"];
  [coderCopy encodeBool:self->_hasCarKeySupport forKey:@"hasCarKeySupport"];
  [coderCopy encodeBool:self->_hasReaderModeSupport forKey:@"hasReaderModeSupport"];
  [coderCopy encodeBool:self->_poweredRunDuringSleep forKey:@"poweredRunDuringSleep"];
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