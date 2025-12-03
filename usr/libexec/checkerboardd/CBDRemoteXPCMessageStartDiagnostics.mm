@interface CBDRemoteXPCMessageStartDiagnostics
- (CBDRemoteXPCMessageStartDiagnostics)init;
- (CBDRemoteXPCMessageStartDiagnostics)initWithCoder:(id)coder;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CBDRemoteXPCMessageStartDiagnostics

- (CBDRemoteXPCMessageStartDiagnostics)init
{
  v6.receiver = self;
  v6.super_class = CBDRemoteXPCMessageStartDiagnostics;
  v2 = [(CBDRemoteXPCMessageStartDiagnostics *)&v6 init];
  if (v2)
  {
    v3 = +[NSUUID UUID];
    uuid = v2->_uuid;
    v2->_uuid = v3;
  }

  return v2;
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  uuid = [(CBDRemoteXPCMessageStartDiagnostics *)self uuid];
  v6 = [NSString stringWithFormat:@"<%@: %p uuid = %@;>", v4, self, uuid];;

  return v6;
}

- (CBDRemoteXPCMessageStartDiagnostics)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = CBDRemoteXPCMessageStartDiagnostics;
  v5 = [(CBDRemoteXPCMessageStartDiagnostics *)&v9 init];
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
  uuid = [(CBDRemoteXPCMessageStartDiagnostics *)self uuid];
  [coderCopy encodeObject:uuid forKey:@"uuid"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(CBDRemoteXPCMessageStartDiagnostics);
  uuid = [(CBDRemoteXPCMessageStartDiagnostics *)self uuid];
  v6 = [uuid copy];
  uuid = v4->_uuid;
  v4->_uuid = v6;

  return v4;
}

@end