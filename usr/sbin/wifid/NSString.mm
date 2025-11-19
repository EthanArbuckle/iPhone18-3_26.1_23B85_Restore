@interface NSString
- (id)unpaddedMACAddress;
@end

@implementation NSString

- (id)unpaddedMACAddress
{
  v2 = [(NSString *)self componentsSeparatedByString:@":"];
  v3 = [v2 mutableCopy];

  if ([v3 count])
  {
    v4 = 0;
    do
    {
      v5 = [v3 objectAtIndexedSubscript:v4];
      if ([v5 hasPrefix:@"0"] && objc_msgSend(v5, "length") >= 2)
      {
        v6 = [v5 substringFromIndex:1];

        [v3 setObject:v6 atIndexedSubscript:v4];
        v5 = v6;
      }

      ++v4;
    }

    while (v4 < [v3 count]);
  }

  v7 = [v3 componentsJoinedByString:@":"];

  return v7;
}

@end