@interface SDActivityDecryptionKey
- (BOOL)getResultWhileDecryptingBytesInPlace:(unsigned __int8)a3[10] andCounter:(unsigned __int8)a4[2] withTag:(unsigned __int8)a5 version:(unsigned __int8)a6;
@end

@implementation SDActivityDecryptionKey

- (BOOL)getResultWhileDecryptingBytesInPlace:(unsigned __int8)a3[10] andCounter:(unsigned __int8)a4[2] withTag:(unsigned __int8)a5 version:(unsigned __int8)a6
{
  v6 = a5;
  v13[1] = a6;
  v13[0] = 0;
  ccaes_gcm_decrypt_mode();
  v10 = [(SDActivityKey *)self keyData];
  [v10 length];
  v11 = [(SDActivityKey *)self keyData];
  [v11 bytes];
  ccgcm_one_shot();

  if (!v6)
  {
    [(SDActivityKey *)self setLastUsedCounter:*a4, a3, a3, 1, v13];
  }

  return v6 == 0;
}

@end