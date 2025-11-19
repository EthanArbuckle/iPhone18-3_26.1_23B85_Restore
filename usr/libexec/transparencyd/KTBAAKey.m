@interface KTBAAKey
- (BOOL)validBAAKey;
- (KTBAAKey)initWithKey:(__SecKey *)a3 certificates:(id)a4 failure:(id)a5;
- (void)dealloc;
@end

@implementation KTBAAKey

- (KTBAAKey)initWithKey:(__SecKey *)a3 certificates:(id)a4 failure:(id)a5
{
  v8 = a4;
  v9 = a5;
  v13.receiver = self;
  v13.super_class = KTBAAKey;
  v10 = [(KTBAAKey *)&v13 init];
  if (v10)
  {
    if (a3)
    {
      CFRetain(a3);
    }

    [(KTBAAKey *)v10 setReferenceKey:a3];
    [(KTBAAKey *)v10 setCertificates:v8];
    [(KTBAAKey *)v10 setError:v9];
    v11 = v10;
  }

  return v10;
}

- (BOOL)validBAAKey
{
  if ([(KTBAAKey *)self useHostKey])
  {
    return 1;
  }

  if (![(KTBAAKey *)self referenceKey])
  {
    return 0;
  }

  v4 = [(KTBAAKey *)self certificates];
  if (v4)
  {
    v5 = [(KTBAAKey *)self error];
    v3 = v5 == 0;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)dealloc
{
  v3 = [(KTBAAKey *)self referenceKey];
  if (v3)
  {
    CFRelease(v3);
  }

  [(KTBAAKey *)self setReferenceKey:0];
  v4.receiver = self;
  v4.super_class = KTBAAKey;
  [(KTBAAKey *)&v4 dealloc];
}

@end