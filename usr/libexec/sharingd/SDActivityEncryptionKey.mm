@interface SDActivityEncryptionKey
+ (id)newEncryptionKey;
- (unsigned)getTagWhileEncryptingBytesInPlace:(unsigned __int8)place[10] counterValue:(unsigned __int8)value[2] forAdvertisementWithVersion:(unsigned __int8)version;
- (void)prepareForNewEncryptionRequest;
@end

@implementation SDActivityEncryptionKey

+ (id)newEncryptionKey
{
  v2 = objc_alloc_init(self);
  v3 = objc_opt_new();
  [v2 setKeyIdentifier:v3];

  v4 = objc_opt_new();
  [v2 setDateCreated:v4];

  lastUsedCounter = 1;
  [v2 setLastUsedCounter:{sub_1001180B4(@"BluetoothAdvertiseEncryptionStartCount", 1)}];
  if ([v2 lastUsedCounter])
  {
    lastUsedCounter = [v2 lastUsedCounter];
  }

  [v2 setLastUsedCounter:lastUsedCounter];
  v6 = [NSMutableData dataWithCapacity:32];
  [v2 setKeyData:v6];

  keyData = [v2 keyData];
  [keyData setLength:32];

  keyData2 = [v2 keyData];
  CCRandomGenerateBytes([keyData2 mutableBytes], 0x20uLL);

  return v2;
}

- (void)prepareForNewEncryptionRequest
{
  [(SDActivityKey *)self setLastUsedCounter:([(SDActivityKey *)self lastUsedCounter]+ 1)];
  v3 = [(SDActivityKey *)self lastUsedCounter]!= 0;

  [(SDActivityKey *)self setValidKey:v3];
}

- (unsigned)getTagWhileEncryptingBytesInPlace:(unsigned __int8)place[10] counterValue:(unsigned __int8)value[2] forAdvertisementWithVersion:(unsigned __int8)version
{
  *value = [(SDActivityKey *)self lastUsedCounter];
  value[1] = [(SDActivityKey *)self lastUsedCounter]>> 8;
  ccaes_gcm_encrypt_mode();
  keyData = [(SDActivityKey *)self keyData];
  [keyData length];
  keyData2 = [(SDActivityKey *)self keyData];
  [keyData2 bytes];
  ccgcm_one_shot();

  return 0;
}

@end