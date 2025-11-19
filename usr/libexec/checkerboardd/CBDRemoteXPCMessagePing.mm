@interface CBDRemoteXPCMessagePing
+ (id)handshakeWithHandler:(id)a3;
- (CBDRemoteXPCMessagePing)initWithCoder:(id)a3;
- (CBDRemoteXPCMessagePing)initWithHandler:(id)a3;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CBDRemoteXPCMessagePing

- (CBDRemoteXPCMessagePing)initWithHandler:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CBDRemoteXPCMessagePing;
  v5 = [(CBDRemoteXPCMessagePing *)&v11 init];
  if (v5)
  {
    v6 = +[NSUUID UUID];
    uuid = v5->_uuid;
    v5->_uuid = v6;

    v8 = objc_retainBlock(v4);
    handler = v5->_handler;
    v5->_handler = v8;
  }

  return v5;
}

+ (id)handshakeWithHandler:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithHandler:v4];

  return v5;
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(CBDRemoteXPCMessagePing *)self uuid];
  v6 = [NSString stringWithFormat:@"<%@: %p uuid = %@;>", v4, self, v5];;

  return v6;
}

- (CBDRemoteXPCMessagePing)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CBDRemoteXPCMessagePing;
  v5 = [(CBDRemoteXPCMessagePing *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
    uuid = v5->_uuid;
    v5->_uuid = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CBDRemoteXPCMessagePing *)self uuid];
  [v4 encodeObject:v5 forKey:@"uuid"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(CBDRemoteXPCMessagePing);
  v5 = [(CBDRemoteXPCMessagePing *)self uuid];
  v6 = [v5 copy];
  uuid = v4->_uuid;
  v4->_uuid = v6;

  return v4;
}

@end