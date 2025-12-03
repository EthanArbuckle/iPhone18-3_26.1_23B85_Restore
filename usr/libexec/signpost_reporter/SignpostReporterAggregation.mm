@interface SignpostReporterAggregation
- (SignpostReporterAggregation)init;
- (id)keysInDescendingCountOrder;
- (unint64_t)countForSubsystem:(id)subsystem category:(id)category;
- (void)incrementSubsystem:(id)subsystem category:(id)category;
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

- (unint64_t)countForSubsystem:(id)subsystem category:(id)category
{
  categoryCopy = category;
  subsystemCopy = subsystem;
  v8 = [[SignpostReporterAggregationKey alloc] initWithSubsystem:subsystemCopy category:categoryCopy];

  aggregationDictionary = [(SignpostReporterAggregation *)self aggregationDictionary];
  v10 = [aggregationDictionary objectForKeyedSubscript:v8];

  if (v10)
  {
    unsignedLongLongValue = [v10 unsignedLongLongValue];
  }

  else
  {
    unsignedLongLongValue = 0;
  }

  return unsignedLongLongValue;
}

- (id)keysInDescendingCountOrder
{
  aggregationDictionary = [(SignpostReporterAggregation *)self aggregationDictionary];
  v3 = [aggregationDictionary keysSortedByValueUsingComparator:&stru_100014BE0];

  return v3;
}

- (void)incrementSubsystem:(id)subsystem category:(id)category
{
  categoryCopy = category;
  subsystemCopy = subsystem;
  aggregationDictionary = [(SignpostReporterAggregation *)self aggregationDictionary];
  v8 = [[SignpostReporterAggregationKey alloc] initWithSubsystem:subsystemCopy category:categoryCopy];

  v9 = [aggregationDictionary objectForKeyedSubscript:v8];
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = &off_1000164E8;
  }

  v11 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v10 unsignedLongLongValue] + 1);
  [aggregationDictionary setObject:v11 forKeyedSubscript:v8];

  ++self->_totalCount;
}

@end