@interface NSData
- (id)_reverse;
@end

@implementation NSData

- (id)_reverse
{
  v2 = [[NSMutableData alloc] initWithData:self];
  v3 = [v2 mutableBytes];
  v4 = [v2 length];
  v5 = &v4[v3 - 1];
  if (v4)
  {
    v6 = v5 > v3;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    v7 = v3 + 1;
    do
    {
      v8 = *(v7 - 1);
      *(v7 - 1) = *v5;
      *v5-- = v8;
    }

    while (v7++ < v5);
  }

  v10 = [[NSData alloc] initWithData:v2];

  return v10;
}

@end