@interface CBDRemoteDeviceConnection
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToDeviceConnection:(id)a3;
- (CBDRemoteDeviceConnection)initWithRemoteDevice:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)dealloc;
- (void)invalidate;
@end

@implementation CBDRemoteDeviceConnection

- (CBDRemoteDeviceConnection)initWithRemoteDevice:(id)a3
{
  v5 = a3;
  v33.receiver = self;
  v33.super_class = CBDRemoteDeviceConnection;
  v6 = [(CBDRemoteDeviceConnection *)&v33 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_remoteDevice, a3);
    v8 = dispatch_queue_create("com.apple.deviceconnection.handshake", 0);
    serviceDiscoveryQueue = v7->_serviceDiscoveryQueue;
    v7->_serviceDiscoveryQueue = v8;

    v38[0] = 0;
    v38[1] = 0;
    remote_device_copy_uuid();
    v10 = [[NSUUID alloc] initWithUUIDBytes:v38];
    uuid = v7->_uuid;
    v7->_uuid = v10;

    v12 = v7->_uuid;
    if (v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = [[NSUUID alloc] initWithUUIDString:@"0000000000"];
    }

    v14 = v7->_uuid;
    v7->_uuid = v13;

    v15 = [NSString stringWithUTF8String:remote_device_get_name()];
    name = v7->_name;
    v7->_name = v15;

    if (v7->_name)
    {
      v17 = v7->_name;
    }

    else
    {
      v17 = @"Unknown";
    }

    objc_storeStrong(&v7->_name, v17);
    v18 = remote_device_copy_properties();
    +[NSMutableDictionary dictionary];
    applier[0] = _NSConcreteStackBlock;
    applier[1] = 3221225472;
    applier[2] = sub_100003F30;
    v19 = applier[3] = &unk_100010500;
    v32 = v19;
    xpc_dictionary_apply(v18, applier);
    v20 = [v19 copy];
    properties = v7->_properties;
    v7->_properties = v20;

    v22 = [(NSDictionary *)v7->_properties objectForKeyedSubscript:@"ProductType"];
    v23 = v22;
    if (v22)
    {
      v24 = v22;
    }

    else
    {
      v24 = @"Unknown";
    }

    objc_storeStrong(&v7->_productType, v24);

    v25 = [(NSDictionary *)v7->_properties objectForKeyedSubscript:@"OSVersion"];
    v26 = @"0.0";
    if (v25)
    {
      v26 = v25;
    }

    v7->_osVersion = &v26->isa;

    v27 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v29 = v7->_name;
      v28 = v7->_uuid;
      *buf = 138412546;
      v35 = v28;
      v36 = 2112;
      v37 = v29;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Remote Device UUID: %@; name: %@", buf, 0x16u);
    }
  }

  return v7;
}

- (void)invalidate
{
  v3 = [(CBDRemoteDeviceConnection *)self remoteDevice];

  if (v3)
  {

    [(CBDRemoteDeviceConnection *)self setRemoteDevice:0];
  }
}

- (void)dealloc
{
  [(CBDRemoteDeviceConnection *)self invalidate];
  v3.receiver = self;
  v3.super_class = CBDRemoteDeviceConnection;
  [(CBDRemoteDeviceConnection *)&v3 dealloc];
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(CBDRemoteDeviceConnection *)self uuid];
  v6 = [(CBDRemoteDeviceConnection *)self name];
  v7 = [(CBDRemoteDeviceConnection *)self productType];
  v8 = [(CBDRemoteDeviceConnection *)self osVersion];
  v9 = [NSString stringWithFormat:@"<%@: %p uuid = %@, name = %@, productType = %@, osVersion = %@>", v4, self, v5, v6, v7, v8];;

  return v9;
}

- (unint64_t)hash
{
  v2 = [(CBDRemoteDeviceConnection *)self uuid];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqualToDeviceConnection:(id)a3
{
  v4 = a3;
  v5 = [(CBDRemoteDeviceConnection *)self uuid];
  v6 = [v4 uuid];

  LOBYTE(v4) = [v5 isEqual:v6];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = self == v4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(CBDRemoteDeviceConnection *)self isEqualToDeviceConnection:v4];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(CBDRemoteDeviceConnection);
  v5 = [(CBDRemoteDeviceConnection *)self name];
  v6 = [v5 copy];
  [(CBDRemoteDeviceConnection *)v4 setName:v6];

  v7 = [(CBDRemoteDeviceConnection *)self uuid];
  v8 = [v7 copy];
  [(CBDRemoteDeviceConnection *)v4 setUuid:v8];

  v9 = [(CBDRemoteDeviceConnection *)self productType];
  v10 = [v9 copy];
  [(CBDRemoteDeviceConnection *)v4 setProductType:v10];

  v11 = [NSDictionary alloc];
  v12 = [(CBDRemoteDeviceConnection *)self properties];
  v13 = [v11 initWithDictionary:v12 copyItems:1];
  [(CBDRemoteDeviceConnection *)v4 setProperties:v13];

  return v4;
}

@end