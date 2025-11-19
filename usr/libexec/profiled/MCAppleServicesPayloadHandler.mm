@interface MCAppleServicesPayloadHandler
- (BOOL)_installOutError:(id *)a3;
- (BOOL)setAdditions:(id)a3 outError:(id *)a4;
- (id)applicationID;
- (void)remove;
@end

@implementation MCAppleServicesPayloadHandler

- (void)remove
{
  v3 = [(MCNewPayloadHandler *)self profileHandler];
  v4 = [v3 isSetAside];

  if ((v4 & 1) == 0)
  {

    [(MCAppleServicesPayloadHandler *)self _remove];
  }
}

- (BOOL)_installOutError:(id *)a3
{
  v5 = [(MCNewPayloadHandler *)self payload];
  v6 = [v5 hashDictionaries];
  LOBYTE(a3) = [(MCAppleServicesPayloadHandler *)self setAdditions:v6 outError:a3];

  return a3;
}

- (id)applicationID
{
  v3 = [(MCNewPayloadHandler *)self payload];
  v4 = [v3 profile];
  v5 = [v4 identifier];

  v6 = [(MCNewPayloadHandler *)self payload];
  v7 = [v6 UUID];

  v8 = [v5 dataUsingEncoding:4];
  v9 = [v7 dataUsingEncoding:4];
  v10 = [v8 base64EncodedStringWithOptions:0];
  v11 = [v9 base64EncodedStringWithOptions:0];
  v12 = [NSString stringWithFormat:@"com.apple.configurationprofiles.%@.%@", v10, v11];

  return v12;
}

- (BOOL)setAdditions:(id)a3 outError:(id *)a4
{
  v5 = a3;
  [(MCAppleServicesPayloadHandler *)self applicationID];
  LOBYTE(self) = SecTrustStoreSetTransparentConnectionPins();

  return self;
}

@end