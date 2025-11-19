@interface NSArray
+ (id)ps_arrayWithSTLString:(const void *)a3;
@end

@implementation NSArray

+ (id)ps_arrayWithSTLString:(const void *)a3
{
  v3 = *(a3 + 1);
  if (v3 != *a3)
  {
    if (!((0xAAAAAAAAAAAAAAABLL * ((v3 - *a3) >> 3)) >> 61))
    {
      v4 = 0x5555555555555558 * ((v3 - *a3) >> 3);
      operator new();
    }

    sub_10000FC84();
  }

  v5 = [NSArray arrayWithObjects:"arrayWithObjects:count:" count:?];

  return v5;
}

@end