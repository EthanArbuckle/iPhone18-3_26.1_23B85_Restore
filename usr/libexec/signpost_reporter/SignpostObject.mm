@interface SignpostObject
- (id)coreAnalyticsPayload;
@end

@implementation SignpostObject

- (id)coreAnalyticsPayload
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = [(SignpostObject *)self subsystem];
  [v3 setObject:v4 forKeyedSubscript:@"Subsystem"];

  v5 = [(SignpostObject *)self category];
  [v3 setObject:v5 forKeyedSubscript:@"Category"];

  v6 = [(SignpostObject *)self name];
  if (v6)
  {
    v7 = [(SignpostObject *)self name];
    [v3 setObject:v7 forKeyedSubscript:@"Name"];
  }

  else
  {
    [v3 setObject:@"Unknown" forKeyedSubscript:@"Name"];
  }

  v8 = [(SignpostObject *)self string1Name];

  if (v8)
  {
    v9 = [(SignpostObject *)self string1Name];
    [v3 setObject:v9 forKeyedSubscript:@"String1Name"];

    v10 = [(SignpostObject *)self string1Value];
    [v3 setObject:v10 forKeyedSubscript:@"String1Value"];
  }

  v11 = [(SignpostObject *)self string2Name];

  if (v11)
  {
    v12 = [(SignpostObject *)self string2Name];
    [v3 setObject:v12 forKeyedSubscript:@"String2Name"];

    v13 = [(SignpostObject *)self string2Value];
    [v3 setObject:v13 forKeyedSubscript:@"String2Value"];
  }

  v14 = [(SignpostObject *)self number1Name];

  if (v14)
  {
    v15 = [(SignpostObject *)self number1Name];
    [v3 setObject:v15 forKeyedSubscript:@"Number1Name"];

    v16 = [(SignpostObject *)self number1Value];
    [v3 setObject:v16 forKeyedSubscript:@"Number1Value"];
  }

  v17 = [(SignpostObject *)self number2Name];

  if (v17)
  {
    v18 = [(SignpostObject *)self number2Name];
    [v3 setObject:v18 forKeyedSubscript:@"Number2Name"];

    v19 = [(SignpostObject *)self number2Value];
    [v3 setObject:v19 forKeyedSubscript:@"Number2Value"];
  }

  v20 = [(SignpostObject *)self signpostType];
  [v3 setObject:v20 forKeyedSubscript:@"IntervalType"];

  [(SignpostObject *)self durationSeconds];
  v21 = [NSNumber numberWithFloat:?];
  [v3 setObject:v21 forKeyedSubscript:@"DurationInSeconds"];

  return v3;
}

@end