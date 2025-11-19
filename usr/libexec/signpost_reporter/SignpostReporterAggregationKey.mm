@interface SignpostReporterAggregationKey
- (BOOL)isEqual:(id)a3;
- (SignpostReporterAggregationKey)initWithSubsystem:(id)a3 category:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation SignpostReporterAggregationKey

- (SignpostReporterAggregationKey)initWithSubsystem:(id)a3 category:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SignpostReporterAggregationKey;
  v9 = [(SignpostReporterAggregationKey *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_subsystem, a3);
    objc_storeStrong(&v10->_category, a4);
  }

  return v10;
}

- (unint64_t)hash
{
  v3 = [(SignpostReporterAggregationKey *)self subsystem];
  v4 = [v3 hash];
  v5 = [(SignpostReporterAggregationKey *)self category];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [SignpostReporterAggregationKey allocWithZone:a3];
  v5 = [(SignpostReporterAggregationKey *)self subsystem];
  v6 = [v5 copy];
  v7 = [(SignpostReporterAggregationKey *)self category];
  v8 = [v7 copy];
  v9 = [(SignpostReporterAggregationKey *)v4 initWithSubsystem:v6 category:v8];

  return v9;
}

- (id)description
{
  v3 = [(SignpostReporterAggregationKey *)self subsystem];
  v4 = [(SignpostReporterAggregationKey *)self category];
  v5 = [NSString stringWithFormat:@"%@/%@", v3, v4];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(SignpostReporterAggregationKey *)v5 subsystem];
      v7 = [(SignpostReporterAggregationKey *)self subsystem];
      if ([v6 isEqualToString:v7])
      {
        v8 = [(SignpostReporterAggregationKey *)v5 category];
        v9 = [(SignpostReporterAggregationKey *)self category];
        v10 = [v8 isEqualToString:v9];
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