@interface NSDate
- (id)yearDayOfYearHourMinute;
- (id)yearDayOfYearHourMinuteSecond;
@end

@implementation NSDate

- (id)yearDayOfYearHourMinute
{
  if (qword_1004E6D58 != -1)
  {
    sub_1003946F4();
  }

  v3 = qword_1004E6D50;

  return [v3 stringFromDate:self];
}

- (id)yearDayOfYearHourMinuteSecond
{
  if (qword_1004E6D68 != -1)
  {
    sub_100394708();
  }

  v3 = qword_1004E6D60;

  return [v3 stringFromDate:self];
}

@end