@interface BMPublisherOptions
+ (id)optionsWithStartDate:(id)date;
+ (id)optionsWithStartDate:(id)date endDate:(id)endDate;
@end

@implementation BMPublisherOptions

+ (id)optionsWithStartDate:(id)date
{
  dateCopy = date;
  v4 = objc_opt_new();
  [v4 setStartDate:dateCopy];

  return v4;
}

+ (id)optionsWithStartDate:(id)date endDate:(id)endDate
{
  endDateCopy = endDate;
  dateCopy = date;
  v7 = objc_opt_new();
  [v7 setStartDate:dateCopy];

  [v7 setEndDate:endDateCopy];

  return v7;
}

@end