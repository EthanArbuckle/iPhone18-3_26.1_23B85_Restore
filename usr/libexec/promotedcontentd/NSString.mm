@interface NSString
- (id)_lowercaseFirstLetterOfString:(BOOL)string;
@end

@implementation NSString

- (id)_lowercaseFirstLetterOfString:(BOOL)string
{
  stringCopy = string;
  v5 = [(NSString *)self length];
  if (v5)
  {
    v6 = v5;
    v7 = [(NSString *)self substringToIndex:1];
    v8 = v7;
    if (stringCopy)
    {
      [v7 lowercaseString];
    }

    else
    {
      [v7 uppercaseString];
    }
    selfCopy = ;

    if (v6 != 1)
    {
      v10 = [(NSString *)self substringFromIndex:1];
      v11 = [(NSString *)selfCopy stringByAppendingString:v10];

      selfCopy = v11;
    }
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

@end