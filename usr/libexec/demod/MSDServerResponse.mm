@interface MSDServerResponse
- (MSDServerResponse)initWithError:(id)error;
- (NSString)getName;
@end

@implementation MSDServerResponse

- (MSDServerResponse)initWithError:(id)error
{
  errorCopy = error;
  v9.receiver = self;
  v9.super_class = MSDServerResponse;
  v5 = [(MSDServerResponse *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(MSDServerResponse *)v5 setError:errorCopy];
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