@interface CLFenceAnalyticsMotionActivityHistogram
- (id)binsSortedByInterval;
- (id)initActivityHistogramWithActivities:(id)activities dateInterval:(id)interval;
- (void)addInterval:(double)interval type:(unint64_t)type confidence:(int64_t)confidence;
- (void)dealloc;
@end

@implementation CLFenceAnalyticsMotionActivityHistogram

- (id)initActivityHistogramWithActivities:(id)activities dateInterval:(id)interval
{
  v15.receiver = self;
  v15.super_class = CLFenceAnalyticsMotionActivityHistogram;
  v6 = [(CLFenceAnalyticsMotionActivityHistogram *)&v15 init];
  if (v6)
  {
    v6->_bins = objc_opt_new();
    v6->_totalInterval = 0.0;
    v9 = 0;
    v10 = &v9;
    v11 = 0x3052000000;
    v12 = sub_1000475F8;
    v13 = sub_1000484F8;
    v14 = [objc_msgSend(interval "endDate")];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1008685EC;
    v8[3] = &unk_1024783D8;
    v8[5] = v6;
    v8[6] = &v9;
    v8[4] = interval;
    [activities enumerateObjectsWithOptions:2 usingBlock:v8];

    _Block_object_dispose(&v9, 8);
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CLFenceAnalyticsMotionActivityHistogram;
  [(CLFenceAnalyticsMotionActivityHistogram *)&v3 dealloc];
}

- (id)binsSortedByInterval
{
  allValues = [(NSMutableDictionary *)[(CLFenceAnalyticsMotionActivityHistogram *)self bins] allValues];

  return [allValues sortedArrayUsingComparator:&stru_102478418];
}

- (void)addInterval:(double)interval type:(unint64_t)type confidence:(int64_t)confidence
{
  v9 = [(NSMutableDictionary *)[(CLFenceAnalyticsMotionActivityHistogram *)self bins] objectForKey:[NSNumber numberWithUnsignedInteger:type]];
  if (v9)
  {
    v10 = v9;
    [v9 addInterval:interval];
    [v10 updateConfidence:confidence];
  }

  else
  {
    [(NSMutableDictionary *)[(CLFenceAnalyticsMotionActivityHistogram *)self bins] setObject:[[CLFenceAnalyticsMotionActivityHistogramBin alloc] initWithInterval:type motionActivityType:confidence motionActivityConfidence:interval] forKey:[NSNumber numberWithUnsignedInteger:type]];
  }

  [(CLFenceAnalyticsMotionActivityHistogram *)self totalInterval];
  v12 = v11 + interval;

  [(CLFenceAnalyticsMotionActivityHistogram *)self setTotalInterval:v12];
}

@end