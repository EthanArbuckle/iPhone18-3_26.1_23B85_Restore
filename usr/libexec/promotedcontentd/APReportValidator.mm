@interface APReportValidator
+ (void)verifyPastDueReports:(id)a3 deliveredReport:(id)a4 completion:(id)a5;
- (APReportValidator)initWithReportDatasource:(id)a3 deliveredReport:(id)a4 currentDate:(id)a5;
- (BOOL)validateCurrent;
- (id)_pastDueDailyReportDates;
- (id)pastDueReportDates;
@end

@implementation APReportValidator

+ (void)verifyPastDueReports:(id)a3 deliveredReport:(id)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v11 = dispatch_queue_attr_make_with_qos_class(v10, QOS_CLASS_BACKGROUND, 0);
  v12 = dispatch_queue_create("com.apple.ap.pastduereport", v11);

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002021C0;
  block[3] = &unk_100478AB0;
  v17 = v7;
  v18 = v8;
  v19 = v9;
  v13 = v9;
  v14 = v8;
  v15 = v7;
  dispatch_async(v12, block);
}

- (APReportValidator)initWithReportDatasource:(id)a3 deliveredReport:(id)a4 currentDate:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = APReportValidator;
  v11 = [(APReportValidator *)&v19 init];
  if (v11)
  {
    v12 = [v8 reportType];
    reportType = v11->_reportType;
    v11->_reportType = v12;

    v11->_reportFrequency = [objc_opt_class() reportFrequency];
    objc_storeStrong(&v11->_deliveredReport, a4);
    v14 = [v9 lastDeliveryReportWithType:v11->_reportType];
    lastReport = v11->_lastReport;
    v11->_lastReport = v14;

    v16 = [[APReportDate alloc] initWithDate:v10];
    reportDate = v11->_reportDate;
    v11->_reportDate = v16;
  }

  return v11;
}

- (BOOL)validateCurrent
{
  v3 = [(APReportValidator *)self lastReport];
  if (v3)
  {
    v4 = [(APReportValidator *)self reportDate];
    v5 = [v3 reportDate];
    v6 = [v4 numberOfDaysSinceDate:v5];

    v7 = [(APReportValidator *)self reportFrequency];
    v8 = v6 > 0;
    if (v7 != 1901)
    {
      v8 = 0;
    }

    if (v7 == 1902)
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
  v3 = [(APReportValidator *)self lastReport];

  if (v3)
  {
    v4 = [(APReportValidator *)self reportFrequency];
    switch(v4)
    {
      case 1903:
        v5 = [(APReportValidator *)self _pastDueMonthlyReportDates];
        break;
      case 1902:
        v5 = [(APReportValidator *)self _pastDueWeeklyReportDates];
        break;
      case 1901:
        v5 = [(APReportValidator *)self _pastDueDailyReportDates];
        break;
      default:
        v5 = 0;
        break;
    }
  }

  else
  {
    v5 = &__NSArray0__struct;
  }

  return v5;
}

- (id)_pastDueDailyReportDates
{
  v3 = +[NSMutableArray array];
  v4 = [(APReportValidator *)self reportDate];
  v5 = [(APReportValidator *)self reportType];
  v6 = 7;
  do
  {
    v7 = [v4 reportDayMinus:v6];
    v8 = [(APReportValidator *)self deliveredReport];
    v9 = [NSNumber numberWithInteger:v7];
    v10 = [v8 deliveryReportWithType:v5 dayOfYear:v9];

    if (!v10)
    {
      v11 = [v4 currentDateMinusDays:v6];
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