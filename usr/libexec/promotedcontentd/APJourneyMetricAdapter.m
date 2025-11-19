@interface APJourneyMetricAdapter
+ (id)translateWithPromotedContent:(int64_t)a3 placement:(unint64_t)a4;
@end

@implementation APJourneyMetricAdapter

+ (id)translateWithPromotedContent:(int64_t)a3 placement:(unint64_t)a4
{
  v6 = +[NSMutableDictionary dictionary];
  if (a3 == 5)
  {
    if (a4 - 7005 >= 4)
    {
      v7 = 0;
    }

    else
    {
      v7 = qword_1003F0968[a4 - 7005];
    }
  }

  else
  {
    v7 = typeTranslation(a3);
  }

  v8 = [NSNumber numberWithInteger:v7];
  [v6 setObject:v8 forKeyedSubscript:@"type"];

  v9 = [v6 copy];

  return v9;
}

@end