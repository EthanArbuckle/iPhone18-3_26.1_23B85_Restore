@interface MIBUSerializationUtil
+ (id)maxLengthForTag:(id)a3;
+ (id)tagLengthMapping;
+ (id)tagTypeMapping;
+ (id)typeForTag:(id)a3;
+ (id)typeLengthMapping;
@end

@implementation MIBUSerializationUtil

+ (id)typeLengthMapping
{
  if (qword_1000B8458 != -1)
  {
    sub_10006462C();
  }

  v3 = qword_1000B8450;

  return v3;
}

+ (id)tagTypeMapping
{
  if (qword_1000B8468 != -1)
  {
    sub_100064640();
  }

  v3 = qword_1000B8460;

  return v3;
}

+ (id)tagLengthMapping
{
  if (qword_1000B8478 != -1)
  {
    sub_100064654();
  }

  v3 = qword_1000B8470;

  return v3;
}

+ (id)typeForTag:(id)a3
{
  v4 = a3;
  v5 = [a1 tagTypeMapping];
  v6 = [v5 objectForKey:v4];

  return v6;
}

+ (id)maxLengthForTag:(id)a3
{
  v4 = a3;
  v5 = [a1 tagTypeMapping];
  v6 = [v5 objectForKey:v4];

  if (v6)
  {
    v7 = [a1 typeLengthMapping];
    v8 = [v7 objectForKey:v6];

    if (!v8)
    {
      v9 = [a1 tagLengthMapping];
      v8 = [v9 objectForKey:v4];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end