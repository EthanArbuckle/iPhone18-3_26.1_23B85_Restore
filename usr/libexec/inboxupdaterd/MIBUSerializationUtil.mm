@interface MIBUSerializationUtil
+ (id)maxLengthForTag:(id)tag;
+ (id)tagLengthMapping;
+ (id)tagTypeMapping;
+ (id)typeForTag:(id)tag;
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

+ (id)typeForTag:(id)tag
{
  tagCopy = tag;
  tagTypeMapping = [self tagTypeMapping];
  v6 = [tagTypeMapping objectForKey:tagCopy];

  return v6;
}

+ (id)maxLengthForTag:(id)tag
{
  tagCopy = tag;
  tagTypeMapping = [self tagTypeMapping];
  v6 = [tagTypeMapping objectForKey:tagCopy];

  if (v6)
  {
    typeLengthMapping = [self typeLengthMapping];
    v8 = [typeLengthMapping objectForKey:v6];

    if (!v8)
    {
      tagLengthMapping = [self tagLengthMapping];
      v8 = [tagLengthMapping objectForKey:tagCopy];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end