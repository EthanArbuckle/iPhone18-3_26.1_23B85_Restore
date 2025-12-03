@interface _DASPolicyCriterion
+ (id)criterionWithFormat:(id)format;
+ (id)policyCriteriaWithPredicates:(id)predicates;
@end

@implementation _DASPolicyCriterion

+ (id)criterionWithFormat:(id)format
{
  v3 = [NSPredicate predicateWithFormat:format arguments:&v6];

  return v3;
}

+ (id)policyCriteriaWithPredicates:(id)predicates
{
  predicatesCopy = predicates;
  v4 = [predicatesCopy count];
  v5 = [NSMutableArray arrayWithCapacity:v4];
  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      v7 = [predicatesCopy objectAtIndexedSubscript:i];
      [v5 addObject:v7];
    }
  }

  v8 = [NSArray arrayWithArray:v5];

  return v8;
}

@end