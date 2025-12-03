@interface KTBAAKey
- (BOOL)validBAAKey;
- (KTBAAKey)initWithKey:(__SecKey *)key certificates:(id)certificates failure:(id)failure;
- (void)dealloc;
@end

@implementation KTBAAKey

- (KTBAAKey)initWithKey:(__SecKey *)key certificates:(id)certificates failure:(id)failure
{
  certificatesCopy = certificates;
  failureCopy = failure;
  v13.receiver = self;
  v13.super_class = KTBAAKey;
  v10 = [(KTBAAKey *)&v13 init];
  if (v10)
  {
    if (key)
    {
      CFRetain(key);
    }

    [(KTBAAKey *)v10 setReferenceKey:key];
    [(KTBAAKey *)v10 setCertificates:certificatesCopy];
    [(KTBAAKey *)v10 setError:failureCopy];
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

  certificates = [(KTBAAKey *)self certificates];
  if (certificates)
  {
    error = [(KTBAAKey *)self error];
    v3 = error == 0;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)dealloc
{
  referenceKey = [(KTBAAKey *)self referenceKey];
  if (referenceKey)
  {
    CFRelease(referenceKey);
  }

  [(KTBAAKey *)self setReferenceKey:0];
  v4.receiver = self;
  v4.super_class = KTBAAKey;
  [(KTBAAKey *)&v4 dealloc];
}

@end