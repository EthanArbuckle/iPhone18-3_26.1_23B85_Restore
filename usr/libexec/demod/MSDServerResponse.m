@interface MSDServerResponse
- (MSDServerResponse)initWithError:(id)a3;
- (NSString)getName;
@end

@implementation MSDServerResponse

- (MSDServerResponse)initWithError:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MSDServerResponse;
  v5 = [(MSDServerResponse *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(MSDServerResponse *)v5 setError:v4];
    [(MSDServerResponse *)v6 setData:0];
    v7 = v6;
  }

  return v6;
}

- (NSString)getName
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end