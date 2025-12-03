@interface NSURL
- (BOOL)encodeWithFMDCoder:(id)coder error:(id *)error;
- (NSURL)initWithFMDCoder:(id)coder error:(id *)p_isa;
- (id)URLByReplacingHost:(id)host;
@end

@implementation NSURL

- (id)URLByReplacingHost:(id)host
{
  hostCopy = host;
  host = [(NSURL *)self host];
  v6 = host;
  v7 = 0;
  if (hostCopy && host)
  {
    absoluteString = [(NSURL *)self absoluteString];
    v10 = [absoluteString rangeOfString:v6];
    if (v10 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = 0;
    }

    else
    {
      v11 = [absoluteString stringByReplacingCharactersInRange:v10 withString:{v9, hostCopy}];
      v7 = [NSURL URLWithString:v11];
    }
  }

  return v7;
}

- (BOOL)encodeWithFMDCoder:(id)coder error:(id *)error
{
  coderCopy = coder;
  absoluteString = [(NSURL *)self absoluteString];
  v7 = +[NSURL objectType];
  [coderCopy encodeString:absoluteString forKey:v7];

  return 1;
}

- (NSURL)initWithFMDCoder:(id)coder error:(id *)p_isa
{
  coderCopy = coder;
  v7 = +[NSURL objectType];
  v8 = [coderCopy decodeStringForKey:v7];

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