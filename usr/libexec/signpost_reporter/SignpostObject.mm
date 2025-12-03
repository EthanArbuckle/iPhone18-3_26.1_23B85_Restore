@interface SignpostObject
- (id)coreAnalyticsPayload;
@end

@implementation SignpostObject

- (id)coreAnalyticsPayload
{
  v3 = +[NSMutableDictionary dictionary];
  subsystem = [(SignpostObject *)self subsystem];
  [v3 setObject:subsystem forKeyedSubscript:@"Subsystem"];

  category = [(SignpostObject *)self category];
  [v3 setObject:category forKeyedSubscript:@"Category"];

  name = [(SignpostObject *)self name];
  if (name)
  {
    name2 = [(SignpostObject *)self name];
    [v3 setObject:name2 forKeyedSubscript:@"Name"];
  }

  else
  {
    [v3 setObject:@"Unknown" forKeyedSubscript:@"Name"];
  }

  string1Name = [(SignpostObject *)self string1Name];

  if (string1Name)
  {
    string1Name2 = [(SignpostObject *)self string1Name];
    [v3 setObject:string1Name2 forKeyedSubscript:@"String1Name"];

    string1Value = [(SignpostObject *)self string1Value];
    [v3 setObject:string1Value forKeyedSubscript:@"String1Value"];
  }

  string2Name = [(SignpostObject *)self string2Name];

  if (string2Name)
  {
    string2Name2 = [(SignpostObject *)self string2Name];
    [v3 setObject:string2Name2 forKeyedSubscript:@"String2Name"];

    string2Value = [(SignpostObject *)self string2Value];
    [v3 setObject:string2Value forKeyedSubscript:@"String2Value"];
  }

  number1Name = [(SignpostObject *)self number1Name];

  if (number1Name)
  {
    number1Name2 = [(SignpostObject *)self number1Name];
    [v3 setObject:number1Name2 forKeyedSubscript:@"Number1Name"];

    number1Value = [(SignpostObject *)self number1Value];
    [v3 setObject:number1Value forKeyedSubscript:@"Number1Value"];
  }

  number2Name = [(SignpostObject *)self number2Name];

  if (number2Name)
  {
    number2Name2 = [(SignpostObject *)self number2Name];
    [v3 setObject:number2Name2 forKeyedSubscript:@"Number2Name"];

    number2Value = [(SignpostObject *)self number2Value];
    [v3 setObject:number2Value forKeyedSubscript:@"Number2Value"];
  }

  signpostType = [(SignpostObject *)self signpostType];
  [v3 setObject:signpostType forKeyedSubscript:@"IntervalType"];

  [(SignpostObject *)self durationSeconds];
  v21 = [NSNumber numberWithFloat:?];
  [v3 setObject:v21 forKeyedSubscript:@"DurationInSeconds"];

  return v3;
}

@end