@interface NSDate
+ (id)dateFromString:(id)string;
- (BOOL)isEarlierDateThan:(id)than;
- (BOOL)isLaterDateThan:(id)than;
- (id)endOfDay;
- (id)newDateByAddingOneDay;
- (id)newDateByAddingOneWeek;
- (id)startOfDay;
- (id)timeZoneFromISO8601DateString:(id)string;
- (id)toString;
@end

@implementation NSDate

- (id)startOfDay
{
  v3 = +[NSCalendar currentCalendar];
  v4 = [v3 startOfDayForDate:self];

  return v4;
}

- (id)endOfDay
{
  v3 = +[NSCalendar currentCalendar];
  v4 = [v3 dateBySettingHour:23 minute:59 second:59 ofDate:self options:0];

  return v4;
}

- (id)newDateByAddingOneWeek
{
  v3 = +[NSCalendar currentCalendar];
  v4 = [v3 dateByAddingUnit:16 value:7 toDate:self options:0];

  return v4;
}

- (id)newDateByAddingOneDay
{
  v3 = +[NSCalendar currentCalendar];
  v4 = [v3 dateByAddingUnit:16 value:1 toDate:self options:0];

  return v4;
}

- (BOOL)isLaterDateThan:(id)than
{
  selfCopy = self;
  v4 = [(NSDate *)self laterDate:than];
  LOBYTE(selfCopy) = [v4 isEqualToDate:selfCopy];

  return selfCopy;
}

- (BOOL)isEarlierDateThan:(id)than
{
  thanCopy = than;
  v5 = [(NSDate *)self laterDate:thanCopy];
  v6 = [v5 isEqualToDate:thanCopy];

  return v6;
}

+ (id)dateFromString:(id)string
{
  stringCopy = string;
  v4 = objc_alloc_init(NSISO8601DateFormatter);
  v5 = [v4 dateFromString:stringCopy];

  return v5;
}

- (id)toString
{
  v3 = objc_alloc_init(NSISO8601DateFormatter);
  v4 = +[NSDate distantFuture];
  if (![(NSDate *)self isEqualToDate:v4])
  {
    v5 = +[NSDate distantPast];
    v6 = [(NSDate *)self isEqualToDate:v5];

    if (v6)
    {
      goto LABEL_5;
    }

    v4 = +[NSTimeZone systemTimeZone];
    [v3 setTimeZone:v4];
  }

LABEL_5:
  v7 = [v3 stringFromDate:self];

  return v7;
}

- (id)timeZoneFromISO8601DateString:(id)string
{
  stringCopy = string;
  v4 = [stringCopy length];
  v5 = v4 - 6;
  if (v4 < 6)
  {
    goto LABEL_2;
  }

  v7 = v4;
  if ([stringCopy characterAtIndex:v4 - 1] != 90)
  {
    v8 = [stringCopy characterAtIndex:v5];
    if (v8 == 43)
    {
      v9 = 1;
    }

    else
    {
      if (v8 != 45)
      {
LABEL_2:
        v6 = 0;
        goto LABEL_13;
      }

      v9 = -1;
    }

    v10 = [stringCopy substringFromIndex:v7 - 5];
    v11 = [v10 componentsSeparatedByString:@":"];

    if ([v11 count] == 2)
    {
      v12 = [v11 objectAtIndexedSubscript:0];
      integerValue = [v12 integerValue];

      v14 = [v11 objectAtIndexedSubscript:1];
      integerValue2 = [v14 integerValue];

      v6 = [NSTimeZone timeZoneForSecondsFromGMT:(3600 * integerValue + 60 * integerValue2) * v9];
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_13;
  }

  v6 = [NSTimeZone timeZoneForSecondsFromGMT:0];
LABEL_13:

  return v6;
}

@end