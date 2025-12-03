@interface SDActivityDecryptionKey
- (BOOL)getResultWhileDecryptingBytesInPlace:(unsigned __int8)place[10] andCounter:(unsigned __int8)counter[2] withTag:(unsigned __int8)tag version:(unsigned __int8)version;
@end

@implementation SDActivityDecryptionKey

- (BOOL)getResultWhileDecryptingBytesInPlace:(unsigned __int8)place[10] andCounter:(unsigned __int8)counter[2] withTag:(unsigned __int8)tag version:(unsigned __int8)version
{
  tagCopy = tag;
  v13[1] = version;
  v13[0] = 0;
  ccaes_gcm_decrypt_mode();
  keyData = [(SDActivityKey *)self keyData];
  [keyData length];
  keyData2 = [(SDActivityKey *)self keyData];
  [keyData2 bytes];
  ccgcm_one_shot();

  if (!tagCopy)
  {
    [(SDActivityKey *)self setLastUsedCounter:*counter, place, place, 1, v13];
  }

  return tagCopy == 0;
}

@end