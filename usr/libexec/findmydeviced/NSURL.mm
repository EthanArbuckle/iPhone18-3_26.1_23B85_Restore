@interface NSURL
- (BOOL)encodeWithFMDCoder:(id)a3 error:(id *)a4;
- (NSURL)initWithFMDCoder:(id)a3 error:(id *)p_isa;
- (id)URLByReplacingHost:(id)a3;
@end

@implementation NSURL

- (id)URLByReplacingHost:(id)a3
{
  v4 = a3;
  v5 = [(NSURL *)self host];
  v6 = v5;
  v7 = 0;
  if (v4 && v5)
  {
    v8 = [(NSURL *)self absoluteString];
    v10 = [v8 rangeOfString:v6];
    if (v10 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = 0;
    }

    else
    {
      v11 = [v8 stringByReplacingCharactersInRange:v10 withString:{v9, v4}];
      v7 = [NSURL URLWithString:v11];
    }
  }

  return v7;
}

- (BOOL)encodeWithFMDCoder:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(NSURL *)self absoluteString];
  v7 = +[NSURL objectType];
  [v5 encodeString:v6 forKey:v7];

  return 1;
}

- (NSURL)initWithFMDCoder:(id)a3 error:(id *)p_isa
{
  v6 = a3;
  v7 = +[NSURL objectType];
  v8 = [v6 decodeStringForKey:v7];

  if (v8)
  {
    self = [(NSURL *)self initWithString:v8];
    p_isa = &self->super.isa;
  }

  else if (p_isa)
  {
    v11 = NSLocalizedFailureReasonErrorKey;
    v12 = @"Key FM.url not found.";
    v9 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    *p_isa = [NSError errorWithDomain:@"FMURLErrorDomain" code:0 userInfo:v9];

    p_isa = 0;
  }

  return p_isa;
}

@end