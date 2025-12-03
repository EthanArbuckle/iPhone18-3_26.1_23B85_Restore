@interface APReportValidator
+ (void)verifyPastDueReports:(id)reports deliveredReport:(id)report completion:(id)completion;
- (APReportValidator)initWithReportDatasource:(id)datasource deliveredReport:(id)report currentDate:(id)date;
- (BOOL)validateCurrent;
- (id)_pastDueDailyReportDates;
- (id)pastDueReportDates;
@end

@implementation APReportValidator

+ (void)verifyPastDueReports:(id)reports deliveredReport:(id)report completion:(id)completion
{
  reportsCopy = reports;
  reportCopy = report;
  completionCopy = completion;
  v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v11 = dispatch_queue_attr_make_with_qos_class(v10, QOS_CLASS_BACKGROUND, 0);
  v12 = dispatch_queue_create("com.apple.ap.pastduereport", v11);

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002021C0;
  block[3] = &unk_100478AB0;
  v17 = reportsCopy;
  v18 = reportCopy;
  v19 = completionCopy;
  v13 = completionCopy;
  v14 = reportCopy;
  v15 = reportsCopy;
  dispatch_async(v12, block);
}

- (APReportValidator)initWithReportDatasource:(id)datasource deliveredReport:(id)report currentDate:(id)date
{
  datasourceCopy = datasource;
  reportCopy = report;
  dateCopy = date;
  v19.receiver = self;
  v19.super_class = APReportValidator;
  v11 = [(APReportValidator *)&v19 init];
  if (v11)
  {
    reportType = [datasourceCopy reportType];
    reportType = v11->_reportType;
    v11->_reportType = reportType;

    v11->_reportFrequency = [objc_opt_class() reportFrequency];
    objc_storeStrong(&v11->_deliveredReport, report);
    v14 = [reportCopy lastDeliveryReportWithType:v11->_reportType];
    lastReport = v11->_lastReport;
    v11->_lastReport = v14;

    v16 = [[APReportDate alloc] initWithDate:dateCopy];
    reportDate = v11->_reportDate;
    v11->_reportDate = v16;
  }

  return v11;
}

- (BOOL)validateCurrent
{
  lastReport = [(APReportValidator *)self lastReport];
  if (lastReport)
  {
    reportDate = [(APReportValidator *)self reportDate];
    reportDate2 = [lastReport reportDate];
    v6 = [reportDate numberOfDaysSinceDate:reportDate2];

    reportFrequency = [(APReportValidator *)self reportFrequency];
    v8 = v6 > 0;
    if (reportFrequency != 1901)
    {
      v8 = 0;
    }

    if (reportFrequency == 1902)
    {
      v9 = v6 > 6;
    }

    else
    {
      v9 = v8;
    }
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (id)pastDueReportDates
{
  lastReport = [(APReportValidator *)self lastReport];

  if (lastReport)
  {
    reportFrequency = [(APReportValidator *)self reportFrequency];
    switch(reportFrequency)
    {
      case 1903:
        _pastDueMonthlyReportDates = [(APReportValidator *)self _pastDueMonthlyReportDates];
        break;
      case 1902:
        _pastDueMonthlyReportDates = [(APReportValidator *)self _pastDueWeeklyReportDates];
        break;
      case 1901:
        _pastDueMonthlyReportDates = [(APReportValidator *)self _pastDueDailyReportDates];
        break;
      default:
        _pastDueMonthlyReportDates = 0;
        break;
    }
  }

  else
  {
    _pastDueMonthlyReportDates = &__NSArray0__struct;
  }

  return _pastDueMonthlyReportDates;
}

- (id)_pastDueDailyReportDates
{
  v3 = +[NSMutableArray array];
  reportDate = [(APReportValidator *)self reportDate];
  reportType = [(APReportValidator *)self reportType];
  v6 = 7;
  do
  {
    v7 = [reportDate reportDayMinus:v6];
    deliveredReport = [(APReportValidator *)self deliveredReport];
    v9 = [NSNumber numberWithInteger:v7];
    v10 = [deliveredReport deliveryReportWithType:reportType dayOfYear:v9];

    if (!v10)
    {
      v11 = [reportDate currentDateMinusDays:v6];
      if (v11)
      {
        [v3 addObject:v11];
      }

      else
      {
        v12 = APLogForCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          *v14 = 0;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Reports: Error creating report date.", v14, 2u);
        }
      }
    }

    --v6;
  }

  while (v6);

  return v3;
}

@end