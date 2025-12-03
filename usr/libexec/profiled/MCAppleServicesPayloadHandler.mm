@interface MCAppleServicesPayloadHandler
- (BOOL)_installOutError:(id *)error;
- (BOOL)setAdditions:(id)additions outError:(id *)error;
- (id)applicationID;
- (void)remove;
@end

@implementation MCAppleServicesPayloadHandler

- (void)remove
{
  profileHandler = [(MCNewPayloadHandler *)self profileHandler];
  isSetAside = [profileHandler isSetAside];

  if ((isSetAside & 1) == 0)
  {

    [(MCAppleServicesPayloadHandler *)self _remove];
  }
}

- (BOOL)_installOutError:(id *)error
{
  payload = [(MCNewPayloadHandler *)self payload];
  hashDictionaries = [payload hashDictionaries];
  LOBYTE(error) = [(MCAppleServicesPayloadHandler *)self setAdditions:hashDictionaries outError:error];

  return error;
}

- (id)applicationID
{
  payload = [(MCNewPayloadHandler *)self payload];
  profile = [payload profile];
  identifier = [profile identifier];

  payload2 = [(MCNewPayloadHandler *)self payload];
  uUID = [payload2 UUID];

  v8 = [identifier dataUsingEncoding:4];
  v9 = [uUID dataUsingEncoding:4];
  v10 = [v8 base64EncodedStringWithOptions:0];
  v11 = [v9 base64EncodedStringWithOptions:0];
  v12 = [NSString stringWithFormat:@"com.apple.configurationprofiles.%@.%@", v10, v11];

  return v12;
}

- (BOOL)setAdditions:(id)additions outError:(id *)error
{
  additionsCopy = additions;
  [(MCAppleServicesPayloadHandler *)self applicationID];
  LOBYTE(self) = SecTrustStoreSetTransparentConnectionPins();

  return self;
}

@end