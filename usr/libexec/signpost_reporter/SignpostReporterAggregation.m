@interface SignpostReporterAggregation
- (SignpostReporterAggregation)init;
- (id)keysInDescendingCountOrder;
- (unint64_t)countForSubsystem:(id)a3 category:(id)a4;
- (void)incrementSubsystem:(id)a3 category:(id)a4;
@end

@implementation SignpostReporterAggregation

- (SignpostReporterAggregation)init
{
  v6.receiver = self;
  v6.super_class = SignpostReporterAggregation;
  v2 = [(SignpostReporterAggregation *)&v6 init];
  if (v2)
  {
    v3 = +[NSMutableDictionary dictionary];
    aggregationDictionary = v2->_aggregationDictionary;
    v2->_aggregationDictionary = v3;
  }

  return v2;
}

- (unint64_t)countForSubsystem:(id)a3 category:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[SignpostReporterAggregationKey alloc] initWithSubsystem:v7 category:v6];

  v9 = [(SignpostReporterAggregation *)self aggregationDictionary];
  v10 = [v9 objectForKeyedSubscript:v8];

  if (v10)
  {
    v11 = [v10 unsignedLongLongValue];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)keysInDescendingCountOrder
{
  v2 = [(SignpostReporterAggregation *)self aggregationDictionary];
  v3 = [v2 keysSortedByValueUsingComparator:&stru_100014BE0];

  return v3;
}

- (void)incrementSubsystem:(id)a3 category:(id)a4
{
  v6 = a4;
  v7 = a3;
  v12 = [(SignpostReporterAggregation *)self aggregationDictionary];
  v8 = [[SignpostReporterAggregationKey alloc] initWithSubsystem:v7 category:v6];

  v9 = [v12 objectForKeyedSubscript:v8];
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = &off_1000164E8;
  }

  v11 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v10 unsignedLongLongValue] + 1);
  [v12 setObject:v11 forKeyedSubscript:v8];

  ++self->_totalCount;
}

@end