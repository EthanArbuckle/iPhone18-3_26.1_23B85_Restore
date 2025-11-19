@interface NSString
- (id)_lowercaseFirstLetterOfString:(BOOL)a3;
@end

@implementation NSString

- (id)_lowercaseFirstLetterOfString:(BOOL)a3
{
  v3 = a3;
  v5 = [(NSString *)self length];
  if (v5)
  {
    v6 = v5;
    v7 = [(NSString *)self substringToIndex:1];
    v8 = v7;
    if (v3)
    {
      [v7 lowercaseString];
    }

    else
    {
      [v7 uppercaseString];
    }
    v9 = ;

    if (v6 != 1)
    {
      v10 = [(NSString *)self substringFromIndex:1];
      v11 = [(NSString *)v9 stringByAppendingString:v10];

      v9 = v11;
    }
  }

  else
  {
    v9 = self;
  }

  return v9;
}

@end