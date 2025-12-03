@interface MRUPersonalizedFirmware
- (MRUPersonalizedFirmware)initWithPayload:(id)payload manifest:(id)manifest;
- (id)description;
@end

@implementation MRUPersonalizedFirmware

- (MRUPersonalizedFirmware)initWithPayload:(id)payload manifest:(id)manifest
{
  payloadCopy = payload;
  manifestCopy = manifest;
  v12.receiver = self;
  v12.super_class = MRUPersonalizedFirmware;
  v9 = [(MRUPersonalizedFirmware *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_payload, payload);
    objc_storeStrong(&v10->_manifest, manifest);
  }

  return v10;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = +[NSMutableString stringWithFormat:](NSMutableString, "stringWithFormat:", @"%@(\n"), v4;

  v6 = [(NSData *)self->_payload description];
  [v5 appendFormat:@"\tpayload: %s\n", objc_msgSend(v6, "UTF8String")];

  v7 = [(NSData *)self->_manifest description];
  [v5 appendFormat:@"\tmanifest: %s\n", objc_msgSend(v7, "UTF8String")];

  [v5 appendString:@""]);
  v8 = [NSString stringWithString:v5];

  return v8;
}

@end