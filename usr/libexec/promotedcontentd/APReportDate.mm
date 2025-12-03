@interface APReportDate
- (APReportDate)initWithDate:(id)date;
- (BOOL)lastYearLeap;
- (NSString)reportDayString;
- (id)_addDays:(int64_t)days toDate:(id)date;
- (id)currentDateMinusDays:(unint64_t)days;
- (int64_t)_dayOfYearForDate:(id)date;
- (int64_t)monthDayInteger;
- (int64_t)numberOfDaysSinceDate:(id)date;
- (int64_t)reportDayMinus:(unint64_t)minus;
- (int64_t)reportEndDay;
- (int64_t)weekStartDay;
@end

@implementation APReportDate

- (APReportDate)initWithDate:(id)date
{
  dateCopy = date;
  v16.receiver = self;
  v16.super_class = APReportDate;
  v6 = [(APReportDate *)&v16 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_date, date);
    v8 = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
    gregorianCalendar = v7->_gregorianCalendar;
    v7->_gregorianCalendar = v8;

    v10 = objc_alloc_init(NSDateFormatter);
    dateFormatter = v7->_dateFormatter;
    v7->_dateFormatter = v10;

    v12 = [NSLocale localeWithLocaleIdentifier:@"en_US_POSIX"];
    [(NSDateFormatter *)v7->_dateFormatter setLocale:v12];

    v13 = v7->_dateFormatter;
    v14 = [NSTimeZone timeZoneWithName:@"UTC"];
    [(NSDateFormatter *)v13 setTimeZone:v14];

    [(NSDateFormatter *)v7->_dateFormatter setDateFormat:@"MMdd"];
    [(NSDateFormatter *)v7->_dateFormatter setCalendar:v7->_gregorianCalendar];
  }

  return v7;
}

- (int64_t)monthDayInteger
{
  date = [(APReportDate *)self date];
  v4 = [(APReportDate *)self _dayOfYearForDate:date];

  return v4;
}

- (int64_t)reportEndDay
{
  date = [(APReportDate *)self date];
  v4 = [(APReportDate *)self _addDays:-1 toDate:date];

  v5 = [(APReportDate *)self _dayOfYearForDate:v4];
  return v5;
}

- (int64_t)weekStartDay
{
  date = [(APReportDate *)self date];
  v4 = [(APReportDate *)self _addDays:-8 toDate:date];

  v5 = [(APReportDate *)self _dayOfYearForDate:v4];
  return v5;
}

- (BOOL)lastYearLeap
{
  gregorianCalendar = [(APReportDate *)self gregorianCalendar];
  date = [(APReportDate *)self date];
  v5 = [gregorianCalendar component:4 fromDate:date] - 1;

  return __ROR8__(0x8F5C28F5C28F5C29 * v5 + 0x51EB851EB851EB8, 2) >= 0x28F5C28F5C28F5DuLL && (v5 & 3) == 0 || __ROR8__(0x8F5C28F5C28F5C29 * v5 + 0x51EB851EB851EB0, 4) < 0xA3D70A3D70A3D7uLL;
}

- (NSString)reportDayString
{
  v2 = [NSNumber numberWithInteger:[(APReportDate *)self reportEndDay]];
  stringValue = [v2 stringValue];

  if ([stringValue length] == 3)
  {
    v4 = [NSString stringWithFormat:@"0%@", stringValue];
  }

  else
  {
    v4 = stringValue;
  }

  v5 = v4;

  return v5;
}

- (int64_t)reportDayMinus:(unint64_t)minus
{
  date = [(APReportDate *)self date];
  v6 = [(APReportDate *)self _addDays:~minus toDate:date];

  v7 = [(APReportDate *)self _dayOfYearForDate:v6];
  return v7;
}

- (int64_t)numberOfDaysSinceDate:(id)date
{
  dateCopy = date;
  gregorianCalendar = [(APReportDate *)self gregorianCalendar];
  v13 = 0;
  [gregorianCalendar rangeOfUnit:16 startDate:&v13 interval:0 forDate:dateCopy];

  v6 = v13;
  v12 = 0;
  date = [(APReportDate *)self date];
  [gregorianCalendar rangeOfUnit:16 startDate:&v12 interval:0 forDate:date];
  v8 = v12;

  v9 = [gregorianCalendar components:16 fromDate:v6 toDate:v8 options:0];

  v10 = [v9 day];
  return v10;
}

- (id)currentDateMinusDays:(unint64_t)days
{
  v5 = objc_alloc_init(NSDateComponents);
  [v5 setDay:-days];
  gregorianCalendar = [(APReportDate *)self gregorianCalendar];
  date = [(APReportDate *)self date];
  v8 = [gregorianCalendar dateByAddingComponents:v5 toDate:date options:0];

  return v8;
}

- (int64_t)_dayOfYearForDate:(id)date
{
  dateCopy = date;
  dateFormatter = [(APReportDate *)self dateFormatter];
  v6 = [dateFormatter stringFromDate:dateCopy];

  integerValue = [v6 integerValue];
  return integerValue;
}

- (id)_addDays:(int64_t)days toDate:(id)date
{
  dateCopy = date;
  v7 = objc_alloc_init(NSDateComponents);
  [v7 setDay:days];
  gregorianCalendar = [(APReportDate *)self gregorianCalendar];
  v9 = [gregorianCalendar dateByAddingComponents:v7 toDate:dateCopy options:0];

  return v9;
}

@end