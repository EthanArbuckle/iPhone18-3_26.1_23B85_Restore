@interface CDDCommunicatorHelper
+ (id)sharedInstance;
- (unint64_t)highestCommonVersionFor:(id)a3 and:(id)a4;
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

- (unint64_t)highestCommonVersionFor:(id)a3 and:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5)
  {
    if (v6)
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
    v5 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:2];
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
  v8 = [v5 objectForKeyedSubscript:@"MaxVersion"];
  v9 = [v8 unsignedIntValue];

  v10 = [v7 objectForKeyedSubscript:@"MaxVersion"];
  v11 = [v10 unsignedIntValue];

  if (v9 >= v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = v9;
  }

  return v12;
}

@end