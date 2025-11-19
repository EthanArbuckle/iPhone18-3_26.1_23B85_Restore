@interface NSMutableData
+ (NSMutableData)dataWithSpace:(unint64_t)a3 DEREncode:(id)a4;
@end

@implementation NSMutableData

+ (NSMutableData)dataWithSpace:(unint64_t)a3 DEREncode:(id)a4
{
  v5 = a4;
  v6 = [NSMutableData dataWithLength:a3];
  v7 = [v6 mutableBytes];
  v8 = v5[2](v5, a3, v7);

  if ((a3 & 0x8000000000000000) != 0 || v7 > v8)
  {

    v6 = 0;
  }

  else
  {
    [v6 replaceBytesInRange:0 withBytes:v8 - v7 length:{0, 0}];
  }

  return v6;
}

@end