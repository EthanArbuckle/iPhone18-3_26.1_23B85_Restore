@interface CBDRemoteXPCMessageStartDiagnostics
- (CBDRemoteXPCMessageStartDiagnostics)init;
- (CBDRemoteXPCMessageStartDiagnostics)initWithCoder:(id)a3;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
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
  v5 = [(CBDRemoteXPCMessageStartDiagnostics *)self uuid];
  v6 = [NSString stringWithFormat:@"<%@: %p uuid = %@;>", v4, self, v5];;

  return v6;
}

- (CBDRemoteXPCMessageStartDiagnostics)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CBDRemoteXPCMessageStartDiagnostics;
  v5 = [(CBDRemoteXPCMessageStartDiagnostics *)&v9 init];
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
  v5 = [(CBDRemoteXPCMessageStartDiagnostics *)self uuid];
  [v4 encodeObject:v5 forKey:@"uuid"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(CBDRemoteXPCMessageStartDiagnostics);
  v5 = [(CBDRemoteXPCMessageStartDiagnostics *)self uuid];
  v6 = [v5 copy];
  uuid = v4->_uuid;
  v4->_uuid = v6;

  return v4;
}

@end