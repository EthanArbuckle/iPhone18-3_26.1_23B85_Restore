@interface NSMutableArray
- (BOOL)_addHMACComponent:(id)a3 error:(id *)a4;
@end

@implementation NSMutableArray

- (BOOL)_addHMACComponent:(id)a3 error:(id *)a4
{
  if (a4)
  {
    *a4 = 0;
  }

  v6 = [a3 _stringForHMAC];
  if (v6)
  {
    [(NSMutableArray *)self addObject:v6];
  }

  else if (a4)
  {
    v9 = NSLocalizedDescriptionKey;
    v10 = @"Cannot encode HMAC component";
    v7 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    *a4 = [NSError errorWithDomain:@"AluminiumAuthenticatorErrorDomain" code:1 userInfo:v7];
  }

  return v6 != 0;
}

@end