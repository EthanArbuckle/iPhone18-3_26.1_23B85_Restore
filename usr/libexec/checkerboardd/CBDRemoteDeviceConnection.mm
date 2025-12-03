@interface CBDRemoteDeviceConnection
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToDeviceConnection:(id)connection;
- (CBDRemoteDeviceConnection)initWithRemoteDevice:(id)device;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)dealloc;
- (void)invalidate;
@end

@implementation CBDRemoteDeviceConnection

- (CBDRemoteDeviceConnection)initWithRemoteDevice:(id)device
{
  deviceCopy = device;
  v33.receiver = self;
  v33.super_class = CBDRemoteDeviceConnection;
  v6 = [(CBDRemoteDeviceConnection *)&v33 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_remoteDevice, device);
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
  remoteDevice = [(CBDRemoteDeviceConnection *)self remoteDevice];

  if (remoteDevice)
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
  uuid = [(CBDRemoteDeviceConnection *)self uuid];
  name = [(CBDRemoteDeviceConnection *)self name];
  productType = [(CBDRemoteDeviceConnection *)self productType];
  osVersion = [(CBDRemoteDeviceConnection *)self osVersion];
  v9 = [NSString stringWithFormat:@"<%@: %p uuid = %@, name = %@, productType = %@, osVersion = %@>", v4, self, uuid, name, productType, osVersion];;

  return v9;
}

- (unint64_t)hash
{
  uuid = [(CBDRemoteDeviceConnection *)self uuid];
  v3 = [uuid hash];

  return v3;
}

- (BOOL)isEqualToDeviceConnection:(id)connection
{
  connectionCopy = connection;
  uuid = [(CBDRemoteDeviceConnection *)self uuid];
  uuid2 = [connectionCopy uuid];

  LOBYTE(connectionCopy) = [uuid isEqual:uuid2];
  return connectionCopy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = self == equalCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(CBDRemoteDeviceConnection *)self isEqualToDeviceConnection:equalCopy];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(CBDRemoteDeviceConnection);
  name = [(CBDRemoteDeviceConnection *)self name];
  v6 = [name copy];
  [(CBDRemoteDeviceConnection *)v4 setName:v6];

  uuid = [(CBDRemoteDeviceConnection *)self uuid];
  v8 = [uuid copy];
  [(CBDRemoteDeviceConnection *)v4 setUuid:v8];

  productType = [(CBDRemoteDeviceConnection *)self productType];
  v10 = [productType copy];
  [(CBDRemoteDeviceConnection *)v4 setProductType:v10];

  v11 = [NSDictionary alloc];
  properties = [(CBDRemoteDeviceConnection *)self properties];
  v13 = [v11 initWithDictionary:properties copyItems:1];
  [(CBDRemoteDeviceConnection *)v4 setProperties:v13];

  return v4;
}

@end