@interface SDActivityEncryptionKey
+ (id)newEncryptionKey;
- (unsigned)getTagWhileEncryptingBytesInPlace:(unsigned __int8)a3[10] counterValue:(unsigned __int8)a4[2] forAdvertisementWithVersion:(unsigned __int8)a5;
- (void)prepareForNewEncryptionRequest;
@end

@implementation SDActivityEncryptionKey

+ (id)newEncryptionKey
{
  v2 = objc_alloc_init(a1);
  v3 = objc_opt_new();
  [v2 setKeyIdentifier:v3];

  v4 = objc_opt_new();
  [v2 setDateCreated:v4];

  v5 = 1;
  [v2 setLastUsedCounter:{sub_1001180B4(@"BluetoothAdvertiseEncryptionStartCount", 1)}];
  if ([v2 lastUsedCounter])
  {
    v5 = [v2 lastUsedCounter];
  }

  [v2 setLastUsedCounter:v5];
  v6 = [NSMutableData dataWithCapacity:32];
  [v2 setKeyData:v6];

  v7 = [v2 keyData];
  [v7 setLength:32];

  v8 = [v2 keyData];
  CCRandomGenerateBytes([v8 mutableBytes], 0x20uLL);

  return v2;
}

- (void)prepareForNewEncryptionRequest
{
  [(SDActivityKey *)self setLastUsedCounter:([(SDActivityKey *)self lastUsedCounter]+ 1)];
  v3 = [(SDActivityKey *)self lastUsedCounter]!= 0;

  [(SDActivityKey *)self setValidKey:v3];
}

- (unsigned)getTagWhileEncryptingBytesInPlace:(unsigned __int8)a3[10] counterValue:(unsigned __int8)a4[2] forAdvertisementWithVersion:(unsigned __int8)a5
{
  *a4 = [(SDActivityKey *)self lastUsedCounter];
  a4[1] = [(SDActivityKey *)self lastUsedCounter]>> 8;
  ccaes_gcm_encrypt_mode();
  v7 = [(SDActivityKey *)self keyData];
  [v7 length];
  v8 = [(SDActivityKey *)self keyData];
  [v8 bytes];
  ccgcm_one_shot();

  return 0;
}

@end