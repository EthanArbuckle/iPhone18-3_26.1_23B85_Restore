@interface MCCertificateRevocationPayloadHandler
- (BOOL)_installOutError:(id *)a3;
- (BOOL)setAdditions:(id)a3 outError:(id *)a4;
- (id)additionsDictionary;
- (id)applicationID;
- (void)remove;
@end

@implementation MCCertificateRevocationPayloadHandler

- (void)remove
{
  v3 = [(MCNewPayloadHandler *)self profileHandler];
  v4 = [v3 isSetAside];

  if ((v4 & 1) == 0)
  {

    [(MCCertificateRevocationPayloadHandler *)self _remove];
  }
}

- (BOOL)_installOutError:(id *)a3
{
  v5 = [(MCCertificateRevocationPayloadHandler *)self additionsDictionary];
  LOBYTE(a3) = [(MCCertificateRevocationPayloadHandler *)self setAdditions:v5 outError:a3];

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
  [(MCCertificateRevocationPayloadHandler *)self applicationID];
  LOBYTE(self) = SecTrustStoreSetCARevocationAdditions();

  return self;
}

- (id)additionsDictionary
{
  v2 = [(MCNewPayloadHandler *)self payload];
  v7 = kSecCARevocationAdditionsKey;
  v3 = [v2 hashDictionaries];
  v4 = v3;
  if (!v3)
  {
    v4 = +[NSArray array];
  }

  v8 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  if (!v3)
  {
  }

  return v5;
}

@end