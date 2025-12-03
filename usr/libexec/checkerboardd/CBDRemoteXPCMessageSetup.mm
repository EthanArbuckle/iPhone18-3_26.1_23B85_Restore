@interface CBDRemoteXPCMessageSetup
+ (id)setProxyWithServer:(id)server port:(id)port token:(id)token;
- (CBDRemoteXPCMessageSetup)initWithCoder:(id)coder;
- (CBDRemoteXPCMessageSetup)initWithServer:(id)server port:(id)port token:(id)token;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CBDRemoteXPCMessageSetup

+ (id)setProxyWithServer:(id)server port:(id)port token:(id)token
{
  tokenCopy = token;
  portCopy = port;
  serverCopy = server;
  v11 = [[self alloc] initWithServer:serverCopy port:portCopy token:tokenCopy];

  return v11;
}

- (CBDRemoteXPCMessageSetup)initWithServer:(id)server port:(id)port token:(id)token
{
  serverCopy = server;
  portCopy = port;
  tokenCopy = token;
  v16.receiver = self;
  v16.super_class = CBDRemoteXPCMessageSetup;
  v12 = [(CBDRemoteXPCMessageSetup *)&v16 init];
  if (v12)
  {
    v13 = +[NSUUID UUID];
    uuid = v12->_uuid;
    v12->_uuid = v13;

    objc_storeStrong(&v12->_server, server);
    objc_storeStrong(&v12->_port, port);
    objc_storeStrong(&v12->_token, token);
  }

  return v12;
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  uuid = [(CBDRemoteXPCMessageSetup *)self uuid];
  server = [(CBDRemoteXPCMessageSetup *)self server];
  port = [(CBDRemoteXPCMessageSetup *)self port];
  token = [(CBDRemoteXPCMessageSetup *)self token];
  v9 = [NSString stringWithFormat:@"<%@: %p uuid = %@, server = %@, port = %@, token = %@>", v4, self, uuid, server, port, token];;

  return v9;
}

- (CBDRemoteXPCMessageSetup)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = CBDRemoteXPCMessageSetup;
  v5 = [(CBDRemoteXPCMessageSetup *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
    uuid = v5->_uuid;
    v5->_uuid = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"server"];
    server = v5->_server;
    v5->_server = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"port"];
    port = v5->_port;
    v5->_port = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"token"];
    token = v5->_token;
    v5->_token = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  uuid = [(CBDRemoteXPCMessageSetup *)self uuid];
  [coderCopy encodeObject:uuid forKey:@"uuid"];

  server = [(CBDRemoteXPCMessageSetup *)self server];
  [coderCopy encodeObject:server forKey:@"server"];

  port = [(CBDRemoteXPCMessageSetup *)self port];
  [coderCopy encodeObject:port forKey:@"port"];

  token = [(CBDRemoteXPCMessageSetup *)self token];
  [coderCopy encodeObject:token forKey:@"token"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(CBDRemoteXPCMessageSetup);
  uuid = [(CBDRemoteXPCMessageSetup *)self uuid];
  v6 = [uuid copy];
  uuid = v4->_uuid;
  v4->_uuid = v6;

  server = [(CBDRemoteXPCMessageSetup *)self server];
  v9 = [server copy];
  server = v4->_server;
  v4->_server = v9;

  port = [(CBDRemoteXPCMessageSetup *)self port];
  v12 = [port copy];
  port = v4->_port;
  v4->_port = v12;

  token = [(CBDRemoteXPCMessageSetup *)self token];
  v15 = [token copy];
  token = v4->_token;
  v4->_token = v15;

  return v4;
}

@end