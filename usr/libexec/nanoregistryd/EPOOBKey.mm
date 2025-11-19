@interface EPOOBKey
- (EPOOBKey)initWithData:(id)a3;
@end

@implementation EPOOBKey

- (EPOOBKey)initWithData:(id)a3
{
  v5 = a3;
  v6 = [(EPOOBKey *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_key, a3);
  }

  return v7;
}

@end