@interface NSArray
+ (id)ps_arrayWithSTLString:(const void *)string;
@end

@implementation NSArray

+ (id)ps_arrayWithSTLString:(const void *)string
{
  v3 = *(string + 1);
  if (v3 != *string)
  {
    if (!((0xAAAAAAAAAAAAAAABLL * ((v3 - *string) >> 3)) >> 61))
    {
      v4 = 0x5555555555555558 * ((v3 - *string) >> 3);
      operator new();
    }

    sub_10000FC84();
  }

  v5 = [NSArray arrayWithObjects:"arrayWithObjects:count:" count:?];

  return v5;
}

@end