@interface CBDRemoteXPCMessageSetup
+ (id)setProxyWithServer:(id)a3 port:(id)a4 token:(id)a5;
- (CBDRemoteXPCMessageSetup)initWithCoder:(id)a3;
- (CBDRemoteXPCMessageSetup)initWithServer:(id)a3 port:(id)a4 token:(id)a5;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CBDRemoteXPCMessageSetup

+ (id)setProxyWithServer:(id)a3 port:(id)a4 token:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[a1 alloc] initWithServer:v10 port:v9 token:v8];

  return v11;
}

- (CBDRemoteXPCMessageSetup)initWithServer:(id)a3 port:(id)a4 token:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v16.receiver = self;
  v16.super_class = CBDRemoteXPCMessageSetup;
  v12 = [(CBDRemoteXPCMessageSetup *)&v16 init];
  if (v12)
  {
    v13 = +[NSUUID UUID];
    uuid = v12->_uuid;
    v12->_uuid = v13;

    objc_storeStrong(&v12->_server, a3);
    objc_storeStrong(&v12->_port, a4);
    objc_storeStrong(&v12->_token, a5);
  }

  return v12;
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(CBDRemoteXPCMessageSetup *)self uuid];
  v6 = [(CBDRemoteXPCMessageSetup *)self server];
  v7 = [(CBDRemoteXPCMessageSetup *)self port];
  v8 = [(CBDRemoteXPCMessageSetup *)self token];
  v9 = [NSString stringWithFormat:@"<%@: %p uuid = %@, server = %@, port = %@, token = %@>", v4, self, v5, v6, v7, v8];;

  return v9;
}

- (CBDRemoteXPCMessageSetup)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = CBDRemoteXPCMessageSetup;
  v5 = [(CBDRemoteXPCMessageSetup *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
    uuid = v5->_uuid;
    v5->_uuid = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"server"];
    server = v5->_server;
    v5->_server = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"port"];
    port = v5->_port;
    v5->_port = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"token"];
    token = v5->_token;
    v5->_token = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CBDRemoteXPCMessageSetup *)self uuid];
  [v4 encodeObject:v5 forKey:@"uuid"];

  v6 = [(CBDRemoteXPCMessageSetup *)self server];
  [v4 encodeObject:v6 forKey:@"server"];

  v7 = [(CBDRemoteXPCMessageSetup *)self port];
  [v4 encodeObject:v7 forKey:@"port"];

  v8 = [(CBDRemoteXPCMessageSetup *)self token];
  [v4 encodeObject:v8 forKey:@"token"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(CBDRemoteXPCMessageSetup);
  v5 = [(CBDRemoteXPCMessageSetup *)self uuid];
  v6 = [v5 copy];
  uuid = v4->_uuid;
  v4->_uuid = v6;

  v8 = [(CBDRemoteXPCMessageSetup *)self server];
  v9 = [v8 copy];
  server = v4->_server;
  v4->_server = v9;

  v11 = [(CBDRemoteXPCMessageSetup *)self port];
  v12 = [v11 copy];
  port = v4->_port;
  v4->_port = v12;

  v14 = [(CBDRemoteXPCMessageSetup *)self token];
  v15 = [v14 copy];
  token = v4->_token;
  v4->_token = v15;

  return v4;
}

@end