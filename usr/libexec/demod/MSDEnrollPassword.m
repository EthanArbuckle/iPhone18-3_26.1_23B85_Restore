@interface MSDEnrollPassword
+ (id)sharedInstance;
- (id)createPasswordFor:(id)a3 pairingCode:(id)a4;
- (id)encodeBase64:(char *)a3 ofLength:(unsigned int)a4;
@end

@implementation MSDEnrollPassword

+ (id)sharedInstance
{
  if (qword_1001A5A20 != -1)
  {
    sub_1000E76C0();
  }

  v3 = qword_1001A5A18;

  return v3;
}

- (id)encodeBase64:(char *)a3 ofLength:(unsigned int)a4
{
  if (a4)
  {
    v6 = (2 * ((2863311531u * (a4 + 2)) >> 32)) & 0xFFFFFFFC;
    v7 = malloc_type_malloc((4 * ((a4 + 2) / 3)) | 1, 0xBE1226CCuLL);
    v8 = v7;
    v9 = 0;
    v10 = 0;
    do
    {
      v11 = a3[v10] << 8;
      v12 = v10 + 1;
      if (v10 + 1 < a4)
      {
        v11 |= a3[v12];
      }

      v13 = (v11 << 8);
      if (v10 + 2 >= a4)
      {
        v15 = 61;
      }

      else
      {
        v14 = a3[v10 + 2];
        v13 = v13 | v14;
        v15 = aAbcdefghijklmn[v14 & 0x3F];
      }

      *(v7 + v9 + 3) = v15;
      if (v12 >= a4)
      {
        v16 = 61;
      }

      else
      {
        v16 = aAbcdefghijklmn[(v13 >> 6) & 0x3F];
      }

      *(v7 + v9 + 2) = v16;
      *(v7 + v9 + 1) = aAbcdefghijklmn[(v13 >> 12) & 0x3F];
      *(v7 + v9) = aAbcdefghijklmn[v13 >> 18];
      v10 += 3;
      v9 += 4;
    }

    while (v10 < a4);
    *(v7 + v6) = 0;
    v17 = [NSString stringWithCString:v7 encoding:4];
    free(v8);
  }

  else
  {
    v17 = &stru_10016D9D8;
  }

  return v17;
}

- (id)createPasswordFor:(id)a3 pairingCode:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [NSMutableData dataWithBytes:&unk_1001A53A8 length:216];
  v9 = [v7 cStringUsingEncoding:4];
  v10 = [v7 length];

  [v8 appendBytes:v9 length:v10];
  v11 = [v6 cStringUsingEncoding:4];
  v12 = [v6 length];

  [v8 appendBytes:v11 length:v12];
  v13 = malloc_type_calloc(1uLL, 0x14uLL, 0x100004077774924uLL);
  CC_SHA1([v8 bytes], objc_msgSend(v8, "length"), v13);
  v14 = [(MSDEnrollPassword *)self encodeBase64:v13 ofLength:20];
  free(v13);

  return v14;
}

@end