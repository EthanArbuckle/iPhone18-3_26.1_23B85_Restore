@interface EPOOBKey
- (EPOOBKey)initWithData:(id)data;
@end

@implementation EPOOBKey

- (EPOOBKey)initWithData:(id)data
{
  dataCopy = data;
  v6 = [(EPOOBKey *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_key, data);
  }

  return v7;
}

@end