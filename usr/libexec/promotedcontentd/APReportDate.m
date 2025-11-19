@interface APReportDate
- (APReportDate)initWithDate:(id)a3;
- (BOOL)lastYearLeap;
- (NSString)reportDayString;
- (id)_addDays:(int64_t)a3 toDate:(id)a4;
- (id)currentDateMinusDays:(unint64_t)a3;
- (int64_t)_dayOfYearForDate:(id)a3;
- (int64_t)monthDayInteger;
- (int64_t)numberOfDaysSinceDate:(id)a3;
- (int64_t)reportDayMinus:(unint64_t)a3;
- (int64_t)reportEndDay;
- (int64_t)weekStartDay;
@end

@implementation APReportDate

- (APReportDate)initWithDate:(id)a3
{
  v5 = a3;
  v16.receiver = self;
  v16.super_class = APReportDate;
  v6 = [(APReportDate *)&v16 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_date, a3);
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
  v3 = [(APReportDate *)self date];
  v4 = [(APReportDate *)self _dayOfYearForDate:v3];

  return v4;
}

- (int64_t)reportEndDay
{
  v3 = [(APReportDate *)self date];
  v4 = [(APReportDate *)self _addDays:-1 toDate:v3];

  v5 = [(APReportDate *)self _dayOfYearForDate:v4];
  return v5;
}

- (int64_t)weekStartDay
{
  v3 = [(APReportDate *)self date];
  v4 = [(APReportDate *)self _addDays:-8 toDate:v3];

  v5 = [(APReportDate *)self _dayOfYearForDate:v4];
  return v5;
}

- (BOOL)lastYearLeap
{
  v3 = [(APReportDate *)self gregorianCalendar];
  v4 = [(APReportDate *)self date];
  v5 = [v3 component:4 fromDate:v4] - 1;

  return __ROR8__(0x8F5C28F5C28F5C29 * v5 + 0x51EB851EB851EB8, 2) >= 0x28F5C28F5C28F5DuLL && (v5 & 3) == 0 || __ROR8__(0x8F5C28F5C28F5C29 * v5 + 0x51EB851EB851EB0, 4) < 0xA3D70A3D70A3D7uLL;
}

- (NSString)reportDayString
{
  v2 = [NSNumber numberWithInteger:[(APReportDate *)self reportEndDay]];
  v3 = [v2 stringValue];

  if ([v3 length] == 3)
  {
    v4 = [NSString stringWithFormat:@"0%@", v3];
  }

  else
  {
    v4 = v3;
  }

  v5 = v4;

  return v5;
}

- (int64_t)reportDayMinus:(unint64_t)a3
{
  v5 = [(APReportDate *)self date];
  v6 = [(APReportDate *)self _addDays:~a3 toDate:v5];

  v7 = [(APReportDate *)self _dayOfYearForDate:v6];
  return v7;
}

- (int64_t)numberOfDaysSinceDate:(id)a3
{
  v4 = a3;
  v5 = [(APReportDate *)self gregorianCalendar];
  v13 = 0;
  [v5 rangeOfUnit:16 startDate:&v13 interval:0 forDate:v4];

  v6 = v13;
  v12 = 0;
  v7 = [(APReportDate *)self date];
  [v5 rangeOfUnit:16 startDate:&v12 interval:0 forDate:v7];
  v8 = v12;

  v9 = [v5 components:16 fromDate:v6 toDate:v8 options:0];

  v10 = [v9 day];
  return v10;
}

- (id)currentDateMinusDays:(unint64_t)a3
{
  v5 = objc_alloc_init(NSDateComponents);
  [v5 setDay:-a3];
  v6 = [(APReportDate *)self gregorianCalendar];
  v7 = [(APReportDate *)self date];
  v8 = [v6 dateByAddingComponents:v5 toDate:v7 options:0];

  return v8;
}

- (int64_t)_dayOfYearForDate:(id)a3
{
  v4 = a3;
  v5 = [(APReportDate *)self dateFormatter];
  v6 = [v5 stringFromDate:v4];

  v7 = [v6 integerValue];
  return v7;
}

- (id)_addDays:(int64_t)a3 toDate:(id)a4
{
  v6 = a4;
  v7 = objc_alloc_init(NSDateComponents);
  [v7 setDay:a3];
  v8 = [(APReportDate *)self gregorianCalendar];
  v9 = [v8 dateByAddingComponents:v7 toDate:v6 options:0];

  return v9;
}

@end