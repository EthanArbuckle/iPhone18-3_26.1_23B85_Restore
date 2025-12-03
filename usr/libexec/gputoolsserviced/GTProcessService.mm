@interface GTProcessService
- (GTProcessService)initWithCoder:(id)coder;
- (GTProcessService)initWithService:(id)service processInfo:(id)info;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GTProcessService

- (GTProcessService)initWithService:(id)service processInfo:(id)info
{
  serviceCopy = service;
  infoCopy = info;
  v12.receiver = self;
  v12.super_class = GTProcessService;
  v9 = [(GTProcessService *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_serviceProperties, service);
    objc_storeStrong(&v10->_processInfo, info);
  }

  return v10;
}

- (GTProcessService)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = GTProcessService;
  v5 = [(GTProcessService *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"serviceProperties"];
    serviceProperties = v5->_serviceProperties;
    v5->_serviceProperties = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"processInfo"];
    processInfo = v5->_processInfo;
    v5->_processInfo = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  serviceProperties = self->_serviceProperties;
  coderCopy = coder;
  [coderCopy encodeObject:serviceProperties forKey:@"serviceProperties"];
  [coderCopy encodeObject:self->_processInfo forKey:@"processInfo"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(GTProcessService);
  [(GTProcessService *)v4 setServiceProperties:self->_serviceProperties];
  [(GTProcessService *)v4 setProcessInfo:self->_processInfo];
  return v4;
}

@end