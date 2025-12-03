@interface TransparencyTrustedKeyStore
- (TransparencyTrustedKeyStore)initWithTrustedKeys:(id)keys;
@end

@implementation TransparencyTrustedKeyStore

- (TransparencyTrustedKeyStore)initWithTrustedKeys:(id)keys
{
  keysCopy = keys;
  v9.receiver = self;
  v9.super_class = TransparencyTrustedKeyStore;
  v5 = [(TransparencyTrustedKeyStore *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(TransparencyTrustedKeyStore *)v5 setTrustedKeys:keysCopy];
    v7 = [[TransparencySignatureVerifier alloc] initWithTrustedKeys:keysCopy];
    [(TransparencyTrustedKeyStore *)v6 setSignatureVerifier:v7];
  }

  return v6;
}

@end