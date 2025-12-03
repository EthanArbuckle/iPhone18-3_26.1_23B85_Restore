@interface NSDate
+ (id)dateFormatter;
+ (id)dayNameFormatterInEnglish;
+ (id)firstSaturdayBeforeReferenceDate:(id)date;
+ (id)monthDayFormatter;
+ (id)relativeBundleDateFormatter;
- (BOOL)betweenDate:(id)date andDate:(id)andDate;
- (BOOL)isFollowingDayAfterDate:(id)date;
- (BOOL)isFollowingMonthAfterDate:(id)date;
- (BOOL)isFollowingWeekAfterDate:(id)date;
- (BOOL)isFollowingYearAfterDate:(id)date;
- (BOOL)isSameDayWithDate:(id)date;
- (BOOL)isSameDayWithDate:(id)date timeZone:(id)zone;
- (BOOL)isSameMonthWithDate:(id)date;
- (BOOL)isSameWeekWithDate:(id)date;
- (BOOL)isSameYearWithDate:(id)date;
- (id)getBundleRelativeDate;
- (id)snapToTheDay;
- (id)startOfDay;
- (id)startOfDayWithBoundaryOfADay:(double)day;
- (id)stringFromDate;
- (unint64_t)hours;
- (unint64_t)minutes;
@end

@implementation NSDate

- (id)stringFromDate
{
  [(NSDate *)self timeIntervalSinceReferenceDate];
  v4 = v3;
  v5 = +[NSDate dateFormatter];
  v6 = [v5 stringFromDate:self];
  v7 = [NSString stringWithFormat:@"%f (%@)", v4, v6];

  return v7;
}

- (BOOL)betweenDate:(id)date andDate:(id)andDate
{
  result = 0;
  if (date && andDate)
  {
    andDateCopy = andDate;
    [date timeIntervalSinceReferenceDate];
    v9 = v8;
    [(NSDate *)self timeIntervalSinceReferenceDate];
    v11 = v10;
    [andDateCopy timeIntervalSinceReferenceDate];
    v13 = v12;

    if (v9 <= v13)
    {
      v14 = v9 <= v11;
      v15 = v11 > v13;
    }

    else
    {
      v14 = v13 <= v11;
      v15 = v11 > v9;
    }

    return !v15 && v14;
  }

  return result;
}

- (id)snapToTheDay
{
  v3 = +[NSCalendar currentCalendar];
  v4 = [v3 components:60 fromDate:self];

  if ([v4 hour] > 2)
  {
    selfCopy = self;
  }

  else
  {
    [v4 setHour:0];
    v5 = +[NSCalendar currentCalendar];
    v6 = [v5 dateFromComponents:v4];

    selfCopy = [v6 dateByAddingTimeInterval:-1.0];
  }

  return selfCopy;
}

- (BOOL)isSameDayWithDate:(id)date timeZone:(id)zone
{
  dateCopy = date;
  zoneCopy = zone;
  v8 = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
  v9 = v8;
  if (zoneCopy)
  {
    [v8 setTimeZone:zoneCopy];
  }

  v10 = [v9 isDate:self inSameDayAsDate:dateCopy];

  return v10;
}

- (BOOL)isSameDayWithDate:(id)date
{
  dateCopy = date;
  v5 = +[NSCalendar currentCalendar];
  LOBYTE(self) = [v5 isDate:self inSameDayAsDate:dateCopy];

  return self;
}

- (BOOL)isFollowingDayAfterDate:(id)date
{
  v4 = [date dateByAddingTimeInterval:86400.0];
  v5 = +[NSCalendar currentCalendar];
  LOBYTE(self) = [v5 isDate:self inSameDayAsDate:v4];

  return self;
}

- (BOOL)isSameWeekWithDate:(id)date
{
  dateCopy = date;
  v5 = +[NSCalendar currentCalendar];
  LOBYTE(self) = [v5 isDate:self equalToDate:dateCopy toUnitGranularity:0x2000];

  return self;
}

- (BOOL)isFollowingWeekAfterDate:(id)date
{
  v4 = [date dateByAddingTimeInterval:604800.0];
  v5 = +[NSCalendar currentCalendar];
  LOBYTE(self) = [v5 isDate:self equalToDate:v4 toUnitGranularity:0x2000];

  return self;
}

- (BOOL)isSameMonthWithDate:(id)date
{
  dateCopy = date;
  v5 = +[NSCalendar currentCalendar];
  LOBYTE(self) = [v5 isDate:self equalToDate:dateCopy toUnitGranularity:8];

  return self;
}

- (BOOL)isFollowingMonthAfterDate:(id)date
{
  dateCopy = date;
  v5 = +[NSCalendar currentCalendar];
  v6 = [v5 components:12 fromDate:self];

  v7 = +[NSCalendar currentCalendar];
  v8 = [v7 components:12 fromDate:dateCopy];

  month = [v6 month];
  year = [v6 year];
  if (month == 1)
  {
    if (year - 1 == [v8 year])
    {
      v11 = [v8 month] == 1;
      goto LABEL_6;
    }

LABEL_9:
    v13 = 0;
    goto LABEL_10;
  }

  if (year != [v8 year])
  {
    goto LABEL_9;
  }

  v12 = [v6 month] - 1;
  v11 = v12 == [v8 month];
LABEL_6:
  v13 = v11;
LABEL_10:

  return v13;
}

- (BOOL)isSameYearWithDate:(id)date
{
  dateCopy = date;
  v5 = +[NSCalendar currentCalendar];
  LOBYTE(self) = [v5 isDate:self equalToDate:dateCopy toUnitGranularity:4];

  return self;
}

- (BOOL)isFollowingYearAfterDate:(id)date
{
  v4 = [date dateByAddingTimeInterval:31536000.0];
  v5 = +[NSCalendar currentCalendar];
  LOBYTE(self) = [v5 isDate:self equalToDate:v4 toUnitGranularity:4];

  return self;
}

- (id)startOfDay
{
  v3 = +[NSCalendar currentCalendar];
  v4 = [v3 components:28 fromDate:self];

  v5 = +[NSCalendar currentCalendar];
  v6 = [v5 dateFromComponents:v4];

  return v6;
}

- (id)startOfDayWithBoundaryOfADay:(double)day
{
  v4 = [(NSDate *)self dateByAddingTimeInterval:-day];
  startOfDay = [v4 startOfDay];
  v6 = [startOfDay dateByAddingTimeInterval:day];

  return v6;
}

- (unint64_t)hours
{
  v3 = +[NSCalendar currentCalendar];
  v4 = [v3 component:32 fromDate:self];

  return v4;
}

- (unint64_t)minutes
{
  v3 = +[NSCalendar currentCalendar];
  v4 = [v3 component:64 fromDate:self];

  return v4;
}

+ (id)dateFormatter
{
  if (dateFormatter_onceToken != -1)
  {
    +[NSDate(MOExtensions) dateFormatter];
  }

  v3 = dateFormatter_dateFormatter;

  return v3;
}

void __37__NSDate_MOExtensions__dateFormatter__block_invoke(id a1)
{
  v1 = objc_opt_new();
  v2 = dateFormatter_dateFormatter;
  dateFormatter_dateFormatter = v1;

  v3 = +[NSLocale autoupdatingCurrentLocale];
  [dateFormatter_dateFormatter setLocale:v3];

  [dateFormatter_dateFormatter setDateStyle:1];
  v4 = dateFormatter_dateFormatter;

  [v4 setTimeStyle:3];
}

+ (id)firstSaturdayBeforeReferenceDate:(id)date
{
  dateCopy = date;
  if (!dateCopy)
  {
    v7 = 0;
    goto LABEL_9;
  }

  v4 = +[NSDate distantPast];
  v5 = [dateCopy isEqualToDate:v4];

  if (v5)
  {
    v6 = +[NSDate distantPast];
LABEL_7:
    v7 = v6;
    goto LABEL_9;
  }

  v8 = +[NSDate distantFuture];
  v9 = [dateCopy isEqualToDate:v8];

  if (v9)
  {
    v6 = +[NSDate distantFuture];
    goto LABEL_7;
  }

  v10 = +[NSCalendar currentCalendar];
  v11 = [v10 components:512 fromDate:dateCopy];
  weekday = [v11 weekday];
  v13 = objc_alloc_init(NSDateComponents);
  [v13 setDay:7 * (weekday / 7) - weekday];
  v14 = [v10 dateByAddingComponents:v13 toDate:dateCopy options:0];
  v15 = [v10 components:28 fromDate:v14];
  [v15 setHour:0];
  [v15 setMinute:0];
  [v15 setSecond:0];
  v7 = [v10 dateFromComponents:v15];

LABEL_9:

  return v7;
}

+ (id)dayNameFormatterInEnglish
{
  if (dayNameFormatterInEnglish_onceToken != -1)
  {
    +[NSDate(MOExtensions) dayNameFormatterInEnglish];
  }

  v3 = dayNameFormatterInEnglish_dateFormatter;

  return v3;
}

void __49__NSDate_MOExtensions__dayNameFormatterInEnglish__block_invoke(id a1)
{
  v1 = objc_opt_new();
  v2 = dayNameFormatterInEnglish_dateFormatter;
  dayNameFormatterInEnglish_dateFormatter = v1;

  [dayNameFormatterInEnglish_dateFormatter setDateFormat:@"EEEE"];
  v3 = [[NSLocale alloc] initWithLocaleIdentifier:@"en_US"];
  [dayNameFormatterInEnglish_dateFormatter setLocale:v3];
}

+ (id)relativeBundleDateFormatter
{
  if (relativeBundleDateFormatter_onceToken != -1)
  {
    +[NSDate(MOExtensions) relativeBundleDateFormatter];
  }

  v3 = relativeBundleDateFormatter_dateFormatter;

  return v3;
}

void __51__NSDate_MOExtensions__relativeBundleDateFormatter__block_invoke(id a1)
{
  v1 = objc_opt_new();
  v2 = relativeBundleDateFormatter_dateFormatter;
  relativeBundleDateFormatter_dateFormatter = v1;

  v3 = +[NSLocale autoupdatingCurrentLocale];
  [relativeBundleDateFormatter_dateFormatter setLocale:v3];

  [relativeBundleDateFormatter_dateFormatter setTimeStyle:0];
  [relativeBundleDateFormatter_dateFormatter setDateStyle:4];
  [relativeBundleDateFormatter_dateFormatter setDoesRelativeDateFormatting:1];
  v4 = relativeBundleDateFormatter_dateFormatter;

  [v4 setFormattingContext:5];
}

+ (id)monthDayFormatter
{
  if (monthDayFormatter_onceToken != -1)
  {
    +[NSDate(MOExtensions) monthDayFormatter];
  }

  v3 = monthDayFormatter_dateFormatter;

  return v3;
}

void __41__NSDate_MOExtensions__monthDayFormatter__block_invoke(id a1)
{
  v1 = objc_opt_new();
  v2 = monthDayFormatter_dateFormatter;
  monthDayFormatter_dateFormatter = v1;

  v3 = +[NSLocale currentLocale];
  v4 = [NSDateFormatter dateFormatFromTemplate:@"MM/dd" options:0 locale:v3];

  [monthDayFormatter_dateFormatter setDateFormat:v4];
}

- (id)getBundleRelativeDate
{
  v3 = +[NSDate dayNameFormatterInEnglish];
  v4 = [v3 stringFromDate:self];

  v5 = +[NSDate dayNameFormatterInEnglish];
  v6 = +[NSDate now];
  v7 = [v5 stringFromDate:v6];

  v8 = _mo_log_facility_get_os_log(&MOLogFacilityNotificationManager);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v14 = 138412546;
    v15 = v4;
    v16 = 2112;
    v17 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "bundleDay: %@, nowDay: %@", &v14, 0x16u);
  }

  [(NSDate *)self timeIntervalSinceNow];
  if (v9 < 0.0)
  {
    v9 = -v9;
  }

  if (v9 > 604800.0 || v4 == v7)
  {
    v11 = +[NSDate monthDayFormatter];
    v12 = [v11 stringFromDate:self];
  }

  else
  {
    v12 = v4;
  }

  return v12;
}

@end