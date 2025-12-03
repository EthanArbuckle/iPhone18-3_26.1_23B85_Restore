@interface SignpostReporterAggregationKey
- (BOOL)isEqual:(id)equal;
- (SignpostReporterAggregationKey)initWithSubsystem:(id)subsystem category:(id)category;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
@end

@implementation SignpostReporterAggregationKey

- (SignpostReporterAggregationKey)initWithSubsystem:(id)subsystem category:(id)category
{
  subsystemCopy = subsystem;
  categoryCopy = category;
  v12.receiver = self;
  v12.super_class = SignpostReporterAggregationKey;
  v9 = [(SignpostReporterAggregationKey *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_subsystem, subsystem);
    objc_storeStrong(&v10->_category, category);
  }

  return v10;
}

- (unint64_t)hash
{
  subsystem = [(SignpostReporterAggregationKey *)self subsystem];
  v4 = [subsystem hash];
  category = [(SignpostReporterAggregationKey *)self category];
  v6 = [category hash];

  return v6 ^ v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [SignpostReporterAggregationKey allocWithZone:zone];
  subsystem = [(SignpostReporterAggregationKey *)self subsystem];
  v6 = [subsystem copy];
  category = [(SignpostReporterAggregationKey *)self category];
  v8 = [category copy];
  v9 = [(SignpostReporterAggregationKey *)v4 initWithSubsystem:v6 category:v8];

  return v9;
}

- (id)description
{
  subsystem = [(SignpostReporterAggregationKey *)self subsystem];
  category = [(SignpostReporterAggregationKey *)self category];
  v5 = [NSString stringWithFormat:@"%@/%@", subsystem, category];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      subsystem = [(SignpostReporterAggregationKey *)v5 subsystem];
      subsystem2 = [(SignpostReporterAggregationKey *)self subsystem];
      if ([subsystem isEqualToString:subsystem2])
      {
        category = [(SignpostReporterAggregationKey *)v5 category];
        category2 = [(SignpostReporterAggregationKey *)self category];
        v10 = [category isEqualToString:category2];
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

@end