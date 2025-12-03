@interface NPHCallConfigurationChangeSource
- (NPHCallConfigurationChangeSource)initWithPayload:(id)payload;
- (NPHCallConfigurationChangeSource)initWithUTF8String:(const char *)string;
- (id)description;
@end

@implementation NPHCallConfigurationChangeSource

- (NPHCallConfigurationChangeSource)initWithPayload:(id)payload
{
  payloadCopy = payload;
  v9.receiver = self;
  v9.super_class = NPHCallConfigurationChangeSource;
  v6 = [(NPHCallConfigurationChangeSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_payload, payload);
  }

  return v7;
}

- (NPHCallConfigurationChangeSource)initWithUTF8String:(const char *)string
{
  v4 = [NSString stringWithUTF8String:string];
  v5 = [(NPHCallConfigurationChangeSource *)self initWithString:v4];

  return v5;
}

- (id)description
{
  payload = [(NPHCallConfigurationChangeSource *)self payload];
  v4 = [NSString stringWithFormat:@"<%p: %@>", self, payload];

  return v4;
}

@end