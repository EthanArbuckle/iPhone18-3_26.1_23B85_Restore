@interface MOTrendsAnalyzerOptions
- (MOTrendsAnalyzerOptions)initWithKeyword:(id)keyword category:(unint64_t)category trainDateInterval:(id)interval testDateInterval:(id)dateInterval aggregationDuration:(unint64_t)duration aggregationMethod:(unint64_t)method valueFunction:(id)function;
- (MOTrendsAnalyzerOptions)initWithKeyword:(id)keyword category:(unint64_t)category trainDateInterval:(id)interval testDateInterval:(id)dateInterval aggregationDuration:(unint64_t)duration aggregationMethod:(unint64_t)method valueType:(unint64_t)type;
- (id)description;
@end

@implementation MOTrendsAnalyzerOptions

- (MOTrendsAnalyzerOptions)initWithKeyword:(id)keyword category:(unint64_t)category trainDateInterval:(id)interval testDateInterval:(id)dateInterval aggregationDuration:(unint64_t)duration aggregationMethod:(unint64_t)method valueType:(unint64_t)type
{
  keywordCopy = keyword;
  intervalCopy = interval;
  dateIntervalCopy = dateInterval;
  if (type == 2)
  {
    v21 = &__block_literal_global_106;
  }

  else if (type == 1)
  {
    v21 = &__block_literal_global_25;
  }

  else if (type)
  {
    v21 = 0;
  }

  else
  {
    v18 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [MOTrendsAnalyzerOptions initWithKeyword:category:trainDateInterval:testDateInterval:aggregationDuration:aggregationMethod:valueType:];
    }

    v19 = +[NSAssertionHandler currentHandler];
    v20 = [NSString stringWithUTF8String:"[MOTrendsAnalyzerOptions initWithKeyword:category:trainDateInterval:testDateInterval:aggregationDuration:aggregationMethod:valueType:]"];
    [v19 handleFailureInFunction:v20 file:@"MOTrendsAnalyzerOptions.m" lineNumber:25 description:{@"Invalid parameter not satisfying: valueFunctionType != MOTrendsAnalyzerValueFunctionTypeCustom (in %s:%d)", "-[MOTrendsAnalyzerOptions initWithKeyword:category:trainDateInterval:testDateInterval:aggregationDuration:aggregationMethod:valueType:]", 25}];

    v21 = &__block_literal_global_108;
  }

  v22 = [(MOTrendsAnalyzerOptions *)self initWithKeyword:keywordCopy category:category trainDateInterval:intervalCopy testDateInterval:dateIntervalCopy aggregationDuration:duration aggregationMethod:method valueFunction:v21];
  v23 = v22;
  if (v22)
  {
    v22->_valueFunctionType = type;
  }

  return v23;
}

double __135__MOTrendsAnalyzerOptions_initWithKeyword_category_trainDateInterval_testDateInterval_aggregationDuration_aggregationMethod_valueType___block_invoke(id a1, MOEvent *a2)
{
  v2 = a2;
  v3 = [(MOEvent *)v2 endDate];
  v4 = [(MOEvent *)v2 startDate];

  [v3 timeIntervalSinceDate:v4];
  v6 = v5;

  result = 0.0;
  if (v6 > 600.0)
  {
    return 1.0;
  }

  return result;
}

double __135__MOTrendsAnalyzerOptions_initWithKeyword_category_trainDateInterval_testDateInterval_aggregationDuration_aggregationMethod_valueType___block_invoke_2(id a1, MOEvent *a2)
{
  v2 = a2;
  v3 = [(MOEvent *)v2 endDate];
  v4 = [(MOEvent *)v2 startDate];

  [v3 timeIntervalSinceDate:v4];
  v6 = v5;

  return v6;
}

- (MOTrendsAnalyzerOptions)initWithKeyword:(id)keyword category:(unint64_t)category trainDateInterval:(id)interval testDateInterval:(id)dateInterval aggregationDuration:(unint64_t)duration aggregationMethod:(unint64_t)method valueFunction:(id)function
{
  keywordCopy = keyword;
  intervalCopy = interval;
  dateIntervalCopy = dateInterval;
  functionCopy = function;
  if (intervalCopy)
  {
    if (dateIntervalCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v16 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [MOTrendsAnalyzerOptions initWithKeyword:category:trainDateInterval:testDateInterval:aggregationDuration:aggregationMethod:valueFunction:];
    }

    v17 = +[NSAssertionHandler currentHandler];
    v18 = [NSString stringWithUTF8String:"[MOTrendsAnalyzerOptions initWithKeyword:category:trainDateInterval:testDateInterval:aggregationDuration:aggregationMethod:valueFunction:]"];
    [v17 handleFailureInFunction:v18 file:@"MOTrendsAnalyzerOptions.m" lineNumber:71 description:{@"Invalid parameter not satisfying: trainDateInterval (in %s:%d)", "-[MOTrendsAnalyzerOptions initWithKeyword:category:trainDateInterval:testDateInterval:aggregationDuration:aggregationMethod:valueFunction:]", 71}];

    if (dateIntervalCopy)
    {
LABEL_3:
      if (functionCopy)
      {
        goto LABEL_14;
      }

      goto LABEL_11;
    }
  }

  v19 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    [MOTrendsAnalyzerOptions initWithKeyword:category:trainDateInterval:testDateInterval:aggregationDuration:aggregationMethod:valueFunction:];
  }

  v20 = +[NSAssertionHandler currentHandler];
  v21 = [NSString stringWithUTF8String:"[MOTrendsAnalyzerOptions initWithKeyword:category:trainDateInterval:testDateInterval:aggregationDuration:aggregationMethod:valueFunction:]"];
  [v20 handleFailureInFunction:v21 file:@"MOTrendsAnalyzerOptions.m" lineNumber:72 description:{@"Invalid parameter not satisfying: testDateInterval (in %s:%d)", "-[MOTrendsAnalyzerOptions initWithKeyword:category:trainDateInterval:testDateInterval:aggregationDuration:aggregationMethod:valueFunction:]", 72}];

  if (!functionCopy)
  {
LABEL_11:
    v22 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [MOTrendsAnalyzerOptions initWithKeyword:category:trainDateInterval:testDateInterval:aggregationDuration:aggregationMethod:valueFunction:];
    }

    v23 = +[NSAssertionHandler currentHandler];
    v24 = [NSString stringWithUTF8String:"[MOTrendsAnalyzerOptions initWithKeyword:category:trainDateInterval:testDateInterval:aggregationDuration:aggregationMethod:valueFunction:]"];
    [v23 handleFailureInFunction:v24 file:@"MOTrendsAnalyzerOptions.m" lineNumber:73 description:{@"Invalid parameter not satisfying: valueFunction (in %s:%d)", "-[MOTrendsAnalyzerOptions initWithKeyword:category:trainDateInterval:testDateInterval:aggregationDuration:aggregationMethod:valueFunction:]", 73}];
  }

LABEL_14:
  v34.receiver = self;
  v34.super_class = MOTrendsAnalyzerOptions;
  v25 = [(MOTrendsAnalyzerOptions *)&v34 init];
  v26 = v25;
  if (v25)
  {
    objc_storeStrong(&v25->_keyword, keyword);
    v26->_category = category;
    objc_storeStrong(&v26->_trainDateInterval, interval);
    objc_storeStrong(&v26->_testDateInterval, dateInterval);
    v26->_aggregationDuration = duration;
    v26->_aggregationMethod = method;
    v26->_valueFunctionType = 0;
    v27 = objc_retainBlock(functionCopy);
    valueFunction = v26->_valueFunction;
    v26->_valueFunction = v27;
  }

  return v26;
}

- (id)description
{
  category = self->_category;
  keyword = self->_keyword;
  startDate = [(NSDateInterval *)self->_trainDateInterval startDate];
  stringFromDate = [startDate stringFromDate];
  endDate = [(NSDateInterval *)self->_trainDateInterval endDate];
  stringFromDate2 = [endDate stringFromDate];
  startDate2 = [(NSDateInterval *)self->_testDateInterval startDate];
  stringFromDate3 = [startDate2 stringFromDate];
  endDate2 = [(NSDateInterval *)self->_testDateInterval endDate];
  stringFromDate4 = [endDate2 stringFromDate];
  v12 = [NSString stringWithFormat:@"keyword, %@, category, %lu@, train.startDate, %@, train.endDate, %@, test.startDate, %@, test.endDate, %@, aggregationDuration, %lu, aggregationMethod, %lu, valueFunctionType, %lu", keyword, category, stringFromDate, stringFromDate2, stringFromDate3, stringFromDate4, self->_aggregationDuration, self->_aggregationMethod, self->_valueFunctionType];

  return v12;
}

@end