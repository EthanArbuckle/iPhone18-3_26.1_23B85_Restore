@interface CKKSBaseAESSIVKey
- (BOOL)isEqual:(id)equal;
- (CKKSBaseAESSIVKey)init;
- (CKKSBaseAESSIVKey)initWithBase64:(id)base64;
- (CKKSBaseAESSIVKey)initWithBytes:(char *)bytes len:(unint64_t)len;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
@end

@implementation CKKSBaseAESSIVKey

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  size = self->size;

  return [v4 initWithBytes:self->key len:size];
}

- (void)dealloc
{
  [(CKKSBaseAESSIVKey *)self zeroKey];
  v3.receiver = self;
  v3.super_class = CKKSBaseAESSIVKey;
  [(CKKSBaseAESSIVKey *)&v3 dealloc];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v6 = 0;
  if (objc_opt_isKindOfClass())
  {
    size = self->size;
    if (size == equalCopy[11] && !memcmp(self->key, equalCopy + 1, size))
    {
      v6 = 1;
    }
  }

  return v6;
}

- (CKKSBaseAESSIVKey)initWithBase64:(id)base64
{
  base64Copy = base64;
  v9.receiver = self;
  v9.super_class = CKKSBaseAESSIVKey;
  v5 = [(CKKSBaseAESSIVKey *)&v9 init];
  if (!v5)
  {
LABEL_6:
    v7 = v5;
    goto LABEL_7;
  }

  v6 = [[NSData alloc] initWithBase64EncodedString:base64Copy options:0];
  v7 = v6;
  if (v6)
  {
    if ([(CKKSBaseAESSIVKey *)v6 length]<= 0x50)
    {
      v5->size = [(CKKSBaseAESSIVKey *)v7 length];
      memcpy(v5->key, [(CKKSBaseAESSIVKey *)v7 bytes], v5->size);
    }

    goto LABEL_6;
  }

LABEL_7:

  return v7;
}

- (CKKSBaseAESSIVKey)initWithBytes:(char *)bytes len:(unint64_t)len
{
  v9.receiver = self;
  v9.super_class = CKKSBaseAESSIVKey;
  v6 = [(CKKSBaseAESSIVKey *)&v9 init];
  v7 = v6;
  if (len <= 0x50 && v6)
  {
    v6->size = len;
    memcpy(v6->key, bytes, len);
  }

  return v7;
}

- (CKKSBaseAESSIVKey)init
{
  v5.receiver = self;
  v5.super_class = CKKSBaseAESSIVKey;
  v2 = [(CKKSBaseAESSIVKey *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->size = 80;
    [(CKKSBaseAESSIVKey *)v2 zeroKey];
  }

  return v3;
}

@end