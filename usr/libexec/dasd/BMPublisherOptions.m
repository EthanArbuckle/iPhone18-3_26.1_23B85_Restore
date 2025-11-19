@interface BMPublisherOptions
+ (id)optionsWithStartDate:(id)a3;
+ (id)optionsWithStartDate:(id)a3 endDate:(id)a4;
@end

@implementation BMPublisherOptions

+ (id)optionsWithStartDate:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  [v4 setStartDate:v3];

  return v4;
}

+ (id)optionsWithStartDate:(id)a3 endDate:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_opt_new();
  [v7 setStartDate:v6];

  [v7 setEndDate:v5];

  return v7;
}

@end