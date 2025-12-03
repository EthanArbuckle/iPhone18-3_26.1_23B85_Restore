@interface AccessoryServiceClientTracking
- (AccessoryServiceClientTracking)initWithNIConfiguration:(id)configuration parsedAccessoryConfigData:(const void *)data processName:(id)name uwbSessionId:(unsigned int)id;
- (id).cxx_construct;
@end

@implementation AccessoryServiceClientTracking

- (AccessoryServiceClientTracking)initWithNIConfiguration:(id)configuration parsedAccessoryConfigData:(const void *)data processName:(id)name uwbSessionId:(unsigned int)id
{
  configurationCopy = configuration;
  nameCopy = name;
  v16.receiver = self;
  v16.super_class = AccessoryServiceClientTracking;
  v13 = [(AccessoryServiceClientTracking *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_niConfiguration, configuration);
    sub_1002FC9E0(&v14->_parsedAccessoryConfigData, data);
    objc_storeStrong(&v14->_processName, name);
    v14->_uwbSessionId = id;
    v14->_isRunning = 0;
  }

  return v14;
}

- (id).cxx_construct
{
  *(self + 8) = 0;
  *(self + 56) = 0;
  return self;
}

@end