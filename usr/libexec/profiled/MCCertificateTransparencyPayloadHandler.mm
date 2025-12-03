@interface MCCertificateTransparencyPayloadHandler
- (BOOL)_installOutError:(id *)error;
- (BOOL)setExceptions:(id)exceptions outError:(id *)error;
- (id)applicationID;
- (id)exceptionsDictionary;
- (void)remove;
@end

@implementation MCCertificateTransparencyPayloadHandler

- (void)remove
{
  profileHandler = [(MCNewPayloadHandler *)self profileHandler];
  isSetAside = [profileHandler isSetAside];

  if ((isSetAside & 1) == 0)
  {

    [(MCCertificateTransparencyPayloadHandler *)self _remove];
  }
}

- (BOOL)_installOutError:(id *)error
{
  exceptionsDictionary = [(MCCertificateTransparencyPayloadHandler *)self exceptionsDictionary];
  LOBYTE(error) = [(MCCertificateTransparencyPayloadHandler *)self setExceptions:exceptionsDictionary outError:error];

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

- (BOOL)setExceptions:(id)exceptions outError:(id *)error
{
  exceptionsCopy = exceptions;
  [(MCCertificateTransparencyPayloadHandler *)self applicationID];
  LOBYTE(self) = SecTrustStoreSetCTExceptions();

  return self;
}

- (id)exceptionsDictionary
{
  payload = [(MCNewPayloadHandler *)self payload];
  v9[0] = kSecCTExceptionsDomainsKey;
  domainRules = [payload domainRules];
  v4 = domainRules;
  if (!domainRules)
  {
    v4 = +[NSArray array];
  }

  v10[0] = v4;
  v9[1] = kSecCTExceptionsCAsKey;
  hashDictionaries = [payload hashDictionaries];
  v6 = hashDictionaries;
  if (!hashDictionaries)
  {
    v6 = +[NSArray array];
  }

  v10[1] = v6;
  v7 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:2];
  if (!hashDictionaries)
  {
  }

  if (!domainRules)
  {
  }

  return v7;
}

@end