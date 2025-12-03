@interface NSNumber
- (BOOL)encodeWithFMDCoder:(id)coder error:(id *)error;
- (NSNumber)initWithFMDCoder:(id)coder error:(id *)error;
@end

@implementation NSNumber

- (BOOL)encodeWithFMDCoder:(id)coder error:(id *)error
{
  coderCopy = coder;
  v6 = +[NSNumber objectType];
  [coderCopy encodeNumber:self forKey:v6];

  return 1;
}

- (NSNumber)initWithFMDCoder:(id)coder error:(id *)error
{
  coderCopy = coder;
  v7 = +[NSNumber objectType];
  v8 = [coderCopy decodeNumberForKey:v7];

  if (v8)
  {
    self = -[NSNumber initWithInt:](self, "initWithInt:", [v8 intValue]);
    if (self)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    error = v9;
  }

  else if (error)
  {
    v12 = NSLocalizedFailureReasonErrorKey;
    v13 = @"Key FM.number not found.";
    v10 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    *error = [NSError errorWithDomain:@"FMNumberErrorDomain" code:0 userInfo:v10];

    error = 0;
  }

  return error;
}

@end