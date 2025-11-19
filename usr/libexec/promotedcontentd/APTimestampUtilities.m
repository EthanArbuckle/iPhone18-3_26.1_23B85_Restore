@interface APTimestampUtilities
+ (double)midnightUTCOfCurrentDay;
+ (double)roundedTimestampFromInterval:(double)a3;
@end

@implementation APTimestampUtilities

+ (double)roundedTimestampFromInterval:(double)a3
{
  v3 = [NSNumber numberWithDouble:a3];
  v4 = v3;
  if (v3)
  {
    [v3 decimalValue];
  }

  else
  {
    v11[0] = 0;
    v11[1] = 0;
    v12 = 0;
  }

  v5 = [NSDecimalNumber decimalNumberWithDecimal:v11];
  v6 = [NSDecimalNumberHandler decimalNumberHandlerWithRoundingMode:3 scale:1 raiseOnExactness:0 raiseOnOverflow:0 raiseOnUnderflow:0 raiseOnDivideByZero:0];
  v7 = [v5 decimalNumberByRoundingAccordingToBehavior:v6];

  [v7 doubleValue];
  v9 = v8;

  return v9;
}

+ (double)midnightUTCOfCurrentDay
{
  v2 = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
  v3 = [NSTimeZone timeZoneWithAbbreviation:@"UTC"];
  [v2 setTimeZone:v3];

  v4 = +[NSDate date];
  v5 = [v2 startOfDayForDate:v4];
  [v5 timeIntervalSince1970];
  v7 = v6;

  return v7;
}

@end