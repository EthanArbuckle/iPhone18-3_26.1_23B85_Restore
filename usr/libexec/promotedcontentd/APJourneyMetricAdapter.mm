@interface APJourneyMetricAdapter
+ (id)translateWithPromotedContent:(int64_t)content placement:(unint64_t)placement;
@end

@implementation APJourneyMetricAdapter

+ (id)translateWithPromotedContent:(int64_t)content placement:(unint64_t)placement
{
  v6 = +[NSMutableDictionary dictionary];
  if (content == 5)
  {
    if (placement - 7005 >= 4)
    {
      v7 = 0;
    }

    else
    {
      v7 = qword_1003F0968[placement - 7005];
    }
  }

  else
  {
    v7 = typeTranslation(content);
  }

  v8 = [NSNumber numberWithInteger:v7];
  [v6 setObject:v8 forKeyedSubscript:@"type"];

  v9 = [v6 copy];

  return v9;
}

@end