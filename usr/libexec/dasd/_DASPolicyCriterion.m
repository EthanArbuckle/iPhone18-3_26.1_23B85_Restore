@interface _DASPolicyCriterion
+ (id)criterionWithFormat:(id)a3;
+ (id)policyCriteriaWithPredicates:(id)a3;
@end

@implementation _DASPolicyCriterion

+ (id)criterionWithFormat:(id)a3
{
  v3 = [NSPredicate predicateWithFormat:a3 arguments:&v6];

  return v3;
}

+ (id)policyCriteriaWithPredicates:(id)a3
{
  v3 = a3;
  v4 = [v3 count];
  v5 = [NSMutableArray arrayWithCapacity:v4];
  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      v7 = [v3 objectAtIndexedSubscript:i];
      [v5 addObject:v7];
    }
  }

  v8 = [NSArray arrayWithArray:v5];

  return v8;
}

@end