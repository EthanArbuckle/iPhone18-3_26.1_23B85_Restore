@interface NSMutableArray
- (BOOL)_addHMACComponent:(id)component error:(id *)error;
@end

@implementation NSMutableArray

- (BOOL)_addHMACComponent:(id)component error:(id *)error
{
  if (error)
  {
    *error = 0;
  }

  _stringForHMAC = [component _stringForHMAC];
  if (_stringForHMAC)
  {
    [(NSMutableArray *)self addObject:_stringForHMAC];
  }

  else if (error)
  {
    v9 = NSLocalizedDescriptionKey;
    v10 = @"Cannot encode HMAC component";
    v7 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    *error = [NSError errorWithDomain:@"AluminiumAuthenticatorErrorDomain" code:1 userInfo:v7];
  }

  return _stringForHMAC != 0;
}

@end