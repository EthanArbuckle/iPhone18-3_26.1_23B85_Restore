@interface NRDevicePreferencesManager
- (id)description;
- (void)dealloc;
@end

@implementation NRDevicePreferencesManager

- (id)description
{
  v3 = [NSString alloc];
  if (self)
  {
    v4 = self->_devicePreferencesTypeLink;
    policyTrafficClassifiersDict = self->_policyTrafficClassifiersDict;
  }

  else
  {
    v4 = 0;
    policyTrafficClassifiersDict = 0;
  }

  policyTrafficClassifiersDict = [v3 initWithFormat:@"Active Link Preferences: %@, Policy Traffic Classifiers: %@", v4, policyTrafficClassifiersDict];

  return policyTrafficClassifiersDict;
}

- (void)dealloc
{
  if (self)
  {
    nrUUID = self->_nrUUID;
  }

  v4 = _NRCopyLogObjectForNRUUID();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    if (self)
    {
      v6 = self->_nrUUID;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;
    v8 = _NRCopyLogObjectForNRUUID();
    v11 = 64;
    selfCopy = self;
    v9 = "";
    v10 = "[NRDevicePreferencesManager dealloc]";
    _NRLogWithArgs();
  }

  v13.receiver = self;
  v13.super_class = NRDevicePreferencesManager;
  [(NRDevicePreferencesManager *)&v13 dealloc:v9];
}

@end