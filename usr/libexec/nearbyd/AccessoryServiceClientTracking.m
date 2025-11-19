@interface AccessoryServiceClientTracking
- (AccessoryServiceClientTracking)initWithNIConfiguration:(id)a3 parsedAccessoryConfigData:(const void *)a4 processName:(id)a5 uwbSessionId:(unsigned int)a6;
- (id).cxx_construct;
@end

@implementation AccessoryServiceClientTracking

- (AccessoryServiceClientTracking)initWithNIConfiguration:(id)a3 parsedAccessoryConfigData:(const void *)a4 processName:(id)a5 uwbSessionId:(unsigned int)a6
{
  v11 = a3;
  v12 = a5;
  v16.receiver = self;
  v16.super_class = AccessoryServiceClientTracking;
  v13 = [(AccessoryServiceClientTracking *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_niConfiguration, a3);
    sub_1002FC9E0(&v14->_parsedAccessoryConfigData, a4);
    objc_storeStrong(&v14->_processName, a5);
    v14->_uwbSessionId = a6;
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