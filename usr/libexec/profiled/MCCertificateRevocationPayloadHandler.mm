@interface MCCertificateRevocationPayloadHandler
- (BOOL)_installOutError:(id *)error;
- (BOOL)setAdditions:(id)additions outError:(id *)error;
- (id)additionsDictionary;
- (id)applicationID;
- (void)remove;
@end

@implementation MCCertificateRevocationPayloadHandler

- (void)remove
{
  profileHandler = [(MCNewPayloadHandler *)self profileHandler];
  isSetAside = [profileHandler isSetAside];

  if ((isSetAside & 1) == 0)
  {

    [(MCCertificateRevocationPayloadHandler *)self _remove];
  }
}

- (BOOL)_installOutError:(id *)error
{
  additionsDictionary = [(MCCertificateRevocationPayloadHandler *)self additionsDictionary];
  LOBYTE(error) = [(MCCertificateRevocationPayloadHandler *)self setAdditions:additionsDictionary outError:error];

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
  [(MCCertificateRevocationPayloadHandler *)self applicationID];
  LOBYTE(self) = SecTrustStoreSetCARevocationAdditions();

  return self;
}

- (id)additionsDictionary
{
  payload = [(MCNewPayloadHandler *)self payload];
  v7 = kSecCARevocationAdditionsKey;
  hashDictionaries = [payload hashDictionaries];
  v4 = hashDictionaries;
  if (!hashDictionaries)
  {
    v4 = +[NSArray array];
  }

  v8 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  if (!hashDictionaries)
  {
  }

  return v5;
}

@end