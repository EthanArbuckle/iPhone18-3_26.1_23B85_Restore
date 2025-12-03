@interface CBDRemoteXPCMessagePing
+ (id)handshakeWithHandler:(id)handler;
- (CBDRemoteXPCMessagePing)initWithCoder:(id)coder;
- (CBDRemoteXPCMessagePing)initWithHandler:(id)handler;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CBDRemoteXPCMessagePing

- (CBDRemoteXPCMessagePing)initWithHandler:(id)handler
{
  handlerCopy = handler;
  v11.receiver = self;
  v11.super_class = CBDRemoteXPCMessagePing;
  v5 = [(CBDRemoteXPCMessagePing *)&v11 init];
  if (v5)
  {
    v6 = +[NSUUID UUID];
    uuid = v5->_uuid;
    v5->_uuid = v6;

    v8 = objc_retainBlock(handlerCopy);
    handler = v5->_handler;
    v5->_handler = v8;
  }

  return v5;
}

+ (id)handshakeWithHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [[self alloc] initWithHandler:handlerCopy];

  return v5;
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  uuid = [(CBDRemoteXPCMessagePing *)self uuid];
  v6 = [NSString stringWithFormat:@"<%@: %p uuid = %@;>", v4, self, uuid];;

  return v6;
}

- (CBDRemoteXPCMessagePing)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = CBDRemoteXPCMessagePing;
  v5 = [(CBDRemoteXPCMessagePing *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
    uuid = v5->_uuid;
    v5->_uuid = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  uuid = [(CBDRemoteXPCMessagePing *)self uuid];
  [coderCopy encodeObject:uuid forKey:@"uuid"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(CBDRemoteXPCMessagePing);
  uuid = [(CBDRemoteXPCMessagePing *)self uuid];
  v6 = [uuid copy];
  uuid = v4->_uuid;
  v4->_uuid = v6;

  return v4;
}

@end