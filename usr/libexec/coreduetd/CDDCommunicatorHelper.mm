@interface CDDCommunicatorHelper
+ (id)sharedInstance;
- (unint64_t)highestCommonVersionFor:(id)for and:(id)and;
@end

@implementation CDDCommunicatorHelper

+ (id)sharedInstance
{
  v2 = qword_100044568;
  if (!qword_100044568)
  {
    if (qword_100044570 != -1)
    {
      sub_100021F24();
    }

    v2 = qword_100044568;
  }

  return v2;
}

- (unint64_t)highestCommonVersionFor:(id)for and:(id)and
{
  forCopy = for;
  andCopy = and;
  v7 = andCopy;
  if (forCopy)
  {
    if (andCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v16[0] = @"MaxVersion";
    v16[1] = @"MinVersion";
    v17[0] = &off_10003EFF0;
    v17[1] = &off_10003EFF0;
    forCopy = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:2];
    if (v7)
    {
      goto LABEL_3;
    }
  }

  v14[0] = @"MaxVersion";
  v14[1] = @"MinVersion";
  v15[0] = &off_10003EFF0;
  v15[1] = &off_10003EFF0;
  v7 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:2];
LABEL_3:
  v8 = [forCopy objectForKeyedSubscript:@"MaxVersion"];
  unsignedIntValue = [v8 unsignedIntValue];

  v10 = [v7 objectForKeyedSubscript:@"MaxVersion"];
  unsignedIntValue2 = [v10 unsignedIntValue];

  if (unsignedIntValue >= unsignedIntValue2)
  {
    v12 = unsignedIntValue2;
  }

  else
  {
    v12 = unsignedIntValue;
  }

  return v12;
}

@end