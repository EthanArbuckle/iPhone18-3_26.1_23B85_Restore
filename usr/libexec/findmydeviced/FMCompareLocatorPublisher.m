@interface FMCompareLocatorPublisher
- (FMCompareLocatorPublisher)initWithPrimaryPublisher:(id)a3 compareToPublishers:(id)a4;
- (void)flushLocations;
- (void)logPublishedLocation:(id)a3 reason:(int64_t)a4 publisher:(id)a5;
- (void)publishers:(id)a3 performBlock:(id)a4;
- (void)setCachedLocationValidityTimeInterval:(id)a3;
- (void)setDecayFactor:(id)a3;
- (void)setEndThreshold:(id)a3;
- (void)setMinimumDistance:(id)a3;
- (void)setPublishTimeInterval:(id)a3;
- (void)setStartThreshold:(id)a3;
- (void)startPublishingWithBlock:(id)a3;
- (void)updatedLocations:(id)a3 reason:(int64_t)a4;
@end

@implementation FMCompareLocatorPublisher

- (FMCompareLocatorPublisher)initWithPrimaryPublisher:(id)a3 compareToPublishers:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = FMCompareLocatorPublisher;
  v8 = [(FMCompareLocatorPublisher *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(FMCompareLocatorPublisher *)v8 setPrimaryPublisher:v6];
    [(FMCompareLocatorPublisher *)v9 setComparisonPublishers:v7];
  }

  return v9;
}

- (void)updatedLocations:(id)a3 reason:(int64_t)a4
{
  v6 = a3;
  v7 = [(FMCompareLocatorPublisher *)self primaryPublisher];
  [v7 updatedLocations:v6 reason:a4];
  v8 = [(FMCompareLocatorPublisher *)self comparisonPublishers];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10018ACE8;
  v10[3] = &unk_1002CFE68;
  v11 = v6;
  v12 = a4;
  v9 = v6;
  [(FMCompareLocatorPublisher *)self publishers:v8 performBlock:v10];
}

- (void)startPublishingWithBlock:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10018AF30;
  v19[3] = &unk_1002CFE90;
  objc_copyWeak(&v20, &location);
  v5 = objc_retainBlock(v19);
  v6 = [(FMCompareLocatorPublisher *)self primaryPublisher];
  objc_initWeak(&from, v6);

  v7 = [(FMCompareLocatorPublisher *)self primaryPublisher];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10018AFB0;
  v14[3] = &unk_1002CFEB8;
  v8 = v4;
  v15 = v8;
  objc_copyWeak(&v17, &from);
  v9 = v5;
  v16 = v9;
  [v7 startPublishingWithBlock:v14];

  v10 = [(FMCompareLocatorPublisher *)self comparisonPublishers];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10018B0A0;
  v12[3] = &unk_1002CFF08;
  v11 = v9;
  v13 = v11;
  [(FMCompareLocatorPublisher *)self publishers:v10 performBlock:v12];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&from);

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

- (void)setStartThreshold:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_startThreshold, a3);
  v6 = [(FMCompareLocatorPublisher *)self primaryPublisher];
  [v6 setStartThreshold:v5];

  v7 = [(FMCompareLocatorPublisher *)self comparisonPublishers];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10018B23C;
  v9[3] = &unk_1002CFF30;
  v10 = v5;
  v8 = v5;
  [(FMCompareLocatorPublisher *)self publishers:v7 performBlock:v9];
}

- (void)setEndThreshold:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_endThreshold, a3);
  v6 = [(FMCompareLocatorPublisher *)self primaryPublisher];
  [v6 setEndThreshold:v5];

  v7 = [(FMCompareLocatorPublisher *)self comparisonPublishers];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10018B32C;
  v9[3] = &unk_1002CFF30;
  v10 = v5;
  v8 = v5;
  [(FMCompareLocatorPublisher *)self publishers:v7 performBlock:v9];
}

- (void)setDecayFactor:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_decayFactor, a3);
  v6 = [(FMCompareLocatorPublisher *)self primaryPublisher];
  [v6 setDecayFactor:v5];

  v7 = [(FMCompareLocatorPublisher *)self comparisonPublishers];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10018B41C;
  v9[3] = &unk_1002CFF30;
  v10 = v5;
  v8 = v5;
  [(FMCompareLocatorPublisher *)self publishers:v7 performBlock:v9];
}

- (void)setMinimumDistance:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_minimumDistance, a3);
  v6 = [(FMCompareLocatorPublisher *)self primaryPublisher];
  [v6 setMinimumDistance:v5];

  v7 = [(FMCompareLocatorPublisher *)self comparisonPublishers];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10018B50C;
  v9[3] = &unk_1002CFF30;
  v10 = v5;
  v8 = v5;
  [(FMCompareLocatorPublisher *)self publishers:v7 performBlock:v9];
}

- (void)setPublishTimeInterval:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_publishTimeInterval, a3);
  v6 = [(FMCompareLocatorPublisher *)self primaryPublisher];
  [v6 setPublishTimeInterval:v5];

  v7 = [(FMCompareLocatorPublisher *)self comparisonPublishers];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10018B5FC;
  v9[3] = &unk_1002CFF30;
  v10 = v5;
  v8 = v5;
  [(FMCompareLocatorPublisher *)self publishers:v7 performBlock:v9];
}

- (void)setCachedLocationValidityTimeInterval:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_cachedLocationValidityTimeInterval, a3);
  v6 = [(FMCompareLocatorPublisher *)self primaryPublisher];
  [v6 setCachedLocationValidityTimeInterval:v5];

  v7 = [(FMCompareLocatorPublisher *)self comparisonPublishers];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10018B6EC;
  v9[3] = &unk_1002CFF30;
  v10 = v5;
  v8 = v5;
  [(FMCompareLocatorPublisher *)self publishers:v7 performBlock:v9];
}

- (void)logPublishedLocation:(id)a3 reason:(int64_t)a4 publisher:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [[FMDEventLoggerEventLocate alloc] initWithEventName:@"FMGeoLocatableComparison"];
  v11 = [v9 latitude];
  v12 = [v9 longitude];

  v13 = [NSString stringWithFormat:@"%@, %@", v11, v12];

  [(FMDEventLoggerEventLocate *)v10 setObject:v13 forKey:@"loc"];
  v14 = [NSNumber numberWithInteger:a4];
  [(FMDEventLoggerEventLocate *)v10 setObject:v14 forKey:@"reason"];

  v15 = [v8 fm_logID];
  [(FMDEventLoggerEventLocate *)v10 setObject:v15 forKey:@"publisher"];

  v16 = [(FMCompareLocatorPublisher *)self fm_logID];
  [(FMDEventLoggerEventLocate *)v10 setObject:v16 forKey:@"instance"];

  v17 = sub_100002880();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [v8 fm_logID];
    v19 = [(FMCompareLocatorPublisher *)self fm_logID];
    v20 = [NSNumber numberWithInteger:a4];
    *buf = 138413058;
    v27 = v13;
    v28 = 2112;
    v29 = v18;
    v30 = 2112;
    v31 = v19;
    v32 = 2112;
    v33 = v20;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "🛣 FMCompareLocatorPublisher Loc: %@ Pub: %@ Inst: %@ Reason: %@", buf, 0x2Au);
  }

  v21 = +[FMDEventLogger sharedLogger];
  v22 = +[FMDEventLoggerFacilityOnDiskStats facilityName];
  v25[0] = v22;
  v23 = +[FMDEventLoggerFacilityOnDisk facilityName];
  v25[1] = v23;
  v24 = [NSArray arrayWithObjects:v25 count:2];
  [v21 logEvent:v10 toFacilitiesNamed:v24];
}

- (void)publishers:(id)a3 performBlock:(id)a4
{
  v5 = a4;
  v6 = [a3 copy];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10018BA60;
  v8[3] = &unk_1002CFF58;
  v9 = v5;
  v7 = v5;
  [v6 enumerateObjectsUsingBlock:v8];
}

- (void)flushLocations
{
  v3 = [(FMCompareLocatorPublisher *)self primaryPublisher];
  [v3 flushLocations];

  v4 = [(FMCompareLocatorPublisher *)self comparisonPublishers];
  [(FMCompareLocatorPublisher *)self publishers:v4 performBlock:&stru_1002CFF98];
}

@end