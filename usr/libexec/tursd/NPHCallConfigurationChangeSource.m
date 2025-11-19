@interface NPHCallConfigurationChangeSource
- (NPHCallConfigurationChangeSource)initWithPayload:(id)a3;
- (NPHCallConfigurationChangeSource)initWithUTF8String:(const char *)a3;
- (id)description;
@end

@implementation NPHCallConfigurationChangeSource

- (NPHCallConfigurationChangeSource)initWithPayload:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = NPHCallConfigurationChangeSource;
  v6 = [(NPHCallConfigurationChangeSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_payload, a3);
  }

  return v7;
}

- (NPHCallConfigurationChangeSource)initWithUTF8String:(const char *)a3
{
  v4 = [NSString stringWithUTF8String:a3];
  v5 = [(NPHCallConfigurationChangeSource *)self initWithString:v4];

  return v5;
}

- (id)description
{
  v3 = [(NPHCallConfigurationChangeSource *)self payload];
  v4 = [NSString stringWithFormat:@"<%p: %@>", self, v3];

  return v4;
}

@end