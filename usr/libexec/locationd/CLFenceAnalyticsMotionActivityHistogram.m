@interface CLFenceAnalyticsMotionActivityHistogram
- (id)binsSortedByInterval;
- (id)initActivityHistogramWithActivities:(id)a3 dateInterval:(id)a4;
- (void)addInterval:(double)a3 type:(unint64_t)a4 confidence:(int64_t)a5;
- (void)dealloc;
@end

@implementation CLFenceAnalyticsMotionActivityHistogram

- (id)initActivityHistogramWithActivities:(id)a3 dateInterval:(id)a4
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
    v14 = [objc_msgSend(a4 "endDate")];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1008685EC;
    v8[3] = &unk_1024783D8;
    v8[5] = v6;
    v8[6] = &v9;
    v8[4] = a4;
    [a3 enumerateObjectsWithOptions:2 usingBlock:v8];

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
  v2 = [(NSMutableDictionary *)[(CLFenceAnalyticsMotionActivityHistogram *)self bins] allValues];

  return [v2 sortedArrayUsingComparator:&stru_102478418];
}

- (void)addInterval:(double)a3 type:(unint64_t)a4 confidence:(int64_t)a5
{
  v9 = [(NSMutableDictionary *)[(CLFenceAnalyticsMotionActivityHistogram *)self bins] objectForKey:[NSNumber numberWithUnsignedInteger:a4]];
  if (v9)
  {
    v10 = v9;
    [v9 addInterval:a3];
    [v10 updateConfidence:a5];
  }

  else
  {
    [(NSMutableDictionary *)[(CLFenceAnalyticsMotionActivityHistogram *)self bins] setObject:[[CLFenceAnalyticsMotionActivityHistogramBin alloc] initWithInterval:a4 motionActivityType:a5 motionActivityConfidence:a3] forKey:[NSNumber numberWithUnsignedInteger:a4]];
  }

  [(CLFenceAnalyticsMotionActivityHistogram *)self totalInterval];
  v12 = v11 + a3;

  [(CLFenceAnalyticsMotionActivityHistogram *)self setTotalInterval:v12];
}

@end