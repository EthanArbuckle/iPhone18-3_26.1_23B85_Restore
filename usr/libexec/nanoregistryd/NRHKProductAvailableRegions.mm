@interface NRHKProductAvailableRegions
+ (id)_decodePlistDictionary:(id)a3;
+ (id)regionsForProductWithName:(id)a3 error:(id *)a4;
@end

@implementation NRHKProductAvailableRegions

+ (id)regionsForProductWithName:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = +[NRHKProductUtilities systemRootDirectory];
  v8 = [v7 stringByAppendingString:@"/System/Library/Health/AvailableRegions"];
  v9 = [NSURL fileURLWithPath:v8 isDirectory:1];

  v10 = [v9 URLByAppendingPathComponent:v6];

  v11 = [v10 URLByAppendingPathExtension:@"plist"];

  v12 = [NSDictionary dictionaryWithContentsOfURL:v11 error:a4];
  if (v12)
  {
    v13 = [a1 _decodePlistDictionary:v12];
  }

  else
  {
    v16[0] = @"AvailableRegions";
    v16[1] = @"AvailableRegionsVersion";
    v17[0] = &__NSArray0__struct;
    v17[1] = &off_100186D60;
    v13 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:2];
  }

  v14 = v13;

  return v14;
}

+ (id)_decodePlistDictionary:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"AvailableRegionsVersion"];
  v5 = [v3 objectForKeyedSubscript:@"AvailableRegions"];
  v6 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v5 count]);
  if ([v5 count])
  {
    v7 = 0;
    do
    {
      v8 = [v5 objectAtIndexedSubscript:v7];
      v13 = 0;
      [v8 getBytes:&v13 length:8];
      v13 = bswap64(v13);
      v9 = [NSNumber numberWithUnsignedLongLong:v13];
      [v6 addObject:v9];

      ++v7;
    }

    while ([v5 count] > v7);
  }

  v14[0] = @"AvailableRegions";
  v10 = [NSArray arrayWithArray:v6];
  v14[1] = @"AvailableRegionsVersion";
  v15[0] = v10;
  v15[1] = v4;
  v11 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:2];

  return v11;
}

@end