@interface TransparencyTrustedKeyStore
- (TransparencyTrustedKeyStore)initWithTrustedKeys:(id)a3;
@end

@implementation TransparencyTrustedKeyStore

- (TransparencyTrustedKeyStore)initWithTrustedKeys:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TransparencyTrustedKeyStore;
  v5 = [(TransparencyTrustedKeyStore *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(TransparencyTrustedKeyStore *)v5 setTrustedKeys:v4];
    v7 = [[TransparencySignatureVerifier alloc] initWithTrustedKeys:v4];
    [(TransparencyTrustedKeyStore *)v6 setSignatureVerifier:v7];
  }

  return v6;
}

@end