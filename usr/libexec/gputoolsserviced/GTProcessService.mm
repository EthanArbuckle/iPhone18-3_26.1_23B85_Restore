@interface GTProcessService
- (GTProcessService)initWithCoder:(id)a3;
- (GTProcessService)initWithService:(id)a3 processInfo:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GTProcessService

- (GTProcessService)initWithService:(id)a3 processInfo:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = GTProcessService;
  v9 = [(GTProcessService *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_serviceProperties, a3);
    objc_storeStrong(&v10->_processInfo, a4);
  }

  return v10;
}

- (GTProcessService)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = GTProcessService;
  v5 = [(GTProcessService *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"serviceProperties"];
    serviceProperties = v5->_serviceProperties;
    v5->_serviceProperties = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"processInfo"];
    processInfo = v5->_processInfo;
    v5->_processInfo = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  serviceProperties = self->_serviceProperties;
  v5 = a3;
  [v5 encodeObject:serviceProperties forKey:@"serviceProperties"];
  [v5 encodeObject:self->_processInfo forKey:@"processInfo"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(GTProcessService);
  [(GTProcessService *)v4 setServiceProperties:self->_serviceProperties];
  [(GTProcessService *)v4 setProcessInfo:self->_processInfo];
  return v4;
}

@end