@interface HAPAccessoryProtocolInfo
- (HAPAccessoryProtocolInfo)initWithIdentifier:(id)identifier currentStateNumber:(id)number currentConfigNumber:(id)configNumber modelName:(id)name protocolVersion:(id)version authMethods:(unsigned __int8)methods statusFlags:(unsigned __int8)flags categoryIdentifier:(unsigned __int16)self0 setupHash:(id)self1;
@end

@implementation HAPAccessoryProtocolInfo

- (HAPAccessoryProtocolInfo)initWithIdentifier:(id)identifier currentStateNumber:(id)number currentConfigNumber:(id)configNumber modelName:(id)name protocolVersion:(id)version authMethods:(unsigned __int8)methods statusFlags:(unsigned __int8)flags categoryIdentifier:(unsigned __int16)self0 setupHash:(id)self1
{
  identifierCopy = identifier;
  numberCopy = number;
  configNumberCopy = configNumber;
  nameCopy = name;
  versionCopy = version;
  hashCopy = hash;
  v27.receiver = self;
  v27.super_class = HAPAccessoryProtocolInfo;
  v20 = [(HAPAccessoryProtocolInfo *)&v27 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_deviceIdentifer, identifier);
    objc_storeStrong(&v21->_currentStateNumber, number);
    objc_storeStrong(&v21->_currentConfigNumber, configNumber);
    objc_storeStrong(&v21->_modelName, name);
    objc_storeStrong(&v21->_protocolVersion, version);
    v21->_featureFlags = methods;
    v21->_statusFlags = flags;
    v21->_categoryIdentifier = categoryIdentifier;
    objc_storeStrong(&v21->_setupHash, hash);
  }

  return v21;
}

@end