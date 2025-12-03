@interface FMCompareLocatorPublisher
- (FMCompareLocatorPublisher)initWithPrimaryPublisher:(id)publisher compareToPublishers:(id)publishers;
- (void)flushLocations;
- (void)logPublishedLocation:(id)location reason:(int64_t)reason publisher:(id)publisher;
- (void)publishers:(id)publishers performBlock:(id)block;
- (void)setCachedLocationValidityTimeInterval:(id)interval;
- (void)setDecayFactor:(id)factor;
- (void)setEndThreshold:(id)threshold;
- (void)setMinimumDistance:(id)distance;
- (void)setPublishTimeInterval:(id)interval;
- (void)setStartThreshold:(id)threshold;
- (void)startPublishingWithBlock:(id)block;
- (void)updatedLocations:(id)locations reason:(int64_t)reason;
@end

@implementation FMCompareLocatorPublisher

- (FMCompareLocatorPublisher)initWithPrimaryPublisher:(id)publisher compareToPublishers:(id)publishers
{
  publisherCopy = publisher;
  publishersCopy = publishers;
  v11.receiver = self;
  v11.super_class = FMCompareLocatorPublisher;
  v8 = [(FMCompareLocatorPublisher *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(FMCompareLocatorPublisher *)v8 setPrimaryPublisher:publisherCopy];
    [(FMCompareLocatorPublisher *)v9 setComparisonPublishers:publishersCopy];
  }

  return v9;
}

- (void)updatedLocations:(id)locations reason:(int64_t)reason
{
  locationsCopy = locations;
  primaryPublisher = [(FMCompareLocatorPublisher *)self primaryPublisher];
  [primaryPublisher updatedLocations:locationsCopy reason:reason];
  comparisonPublishers = [(FMCompareLocatorPublisher *)self comparisonPublishers];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10018ACE8;
  v10[3] = &unk_1002CFE68;
  v11 = locationsCopy;
  reasonCopy = reason;
  v9 = locationsCopy;
  [(FMCompareLocatorPublisher *)self publishers:comparisonPublishers performBlock:v10];
}

- (void)startPublishingWithBlock:(id)block
{
  blockCopy = block;
  objc_initWeak(&location, self);
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10018AF30;
  v19[3] = &unk_1002CFE90;
  objc_copyWeak(&v20, &location);
  v5 = objc_retainBlock(v19);
  primaryPublisher = [(FMCompareLocatorPublisher *)self primaryPublisher];
  objc_initWeak(&from, primaryPublisher);

  primaryPublisher2 = [(FMCompareLocatorPublisher *)self primaryPublisher];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10018AFB0;
  v14[3] = &unk_1002CFEB8;
  v8 = blockCopy;
  v15 = v8;
  objc_copyWeak(&v17, &from);
  v9 = v5;
  v16 = v9;
  [primaryPublisher2 startPublishingWithBlock:v14];

  comparisonPublishers = [(FMCompareLocatorPublisher *)self comparisonPublishers];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10018B0A0;
  v12[3] = &unk_1002CFF08;
  v11 = v9;
  v13 = v11;
  [(FMCompareLocatorPublisher *)self publishers:comparisonPublishers performBlock:v12];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&from);

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

- (void)setStartThreshold:(id)threshold
{
  thresholdCopy = threshold;
  objc_storeStrong(&self->_startThreshold, threshold);
  primaryPublisher = [(FMCompareLocatorPublisher *)self primaryPublisher];
  [primaryPublisher setStartThreshold:thresholdCopy];

  comparisonPublishers = [(FMCompareLocatorPublisher *)self comparisonPublishers];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10018B23C;
  v9[3] = &unk_1002CFF30;
  v10 = thresholdCopy;
  v8 = thresholdCopy;
  [(FMCompareLocatorPublisher *)self publishers:comparisonPublishers performBlock:v9];
}

- (void)setEndThreshold:(id)threshold
{
  thresholdCopy = threshold;
  objc_storeStrong(&self->_endThreshold, threshold);
  primaryPublisher = [(FMCompareLocatorPublisher *)self primaryPublisher];
  [primaryPublisher setEndThreshold:thresholdCopy];

  comparisonPublishers = [(FMCompareLocatorPublisher *)self comparisonPublishers];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10018B32C;
  v9[3] = &unk_1002CFF30;
  v10 = thresholdCopy;
  v8 = thresholdCopy;
  [(FMCompareLocatorPublisher *)self publishers:comparisonPublishers performBlock:v9];
}

- (void)setDecayFactor:(id)factor
{
  factorCopy = factor;
  objc_storeStrong(&self->_decayFactor, factor);
  primaryPublisher = [(FMCompareLocatorPublisher *)self primaryPublisher];
  [primaryPublisher setDecayFactor:factorCopy];

  comparisonPublishers = [(FMCompareLocatorPublisher *)self comparisonPublishers];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10018B41C;
  v9[3] = &unk_1002CFF30;
  v10 = factorCopy;
  v8 = factorCopy;
  [(FMCompareLocatorPublisher *)self publishers:comparisonPublishers performBlock:v9];
}

- (void)setMinimumDistance:(id)distance
{
  distanceCopy = distance;
  objc_storeStrong(&self->_minimumDistance, distance);
  primaryPublisher = [(FMCompareLocatorPublisher *)self primaryPublisher];
  [primaryPublisher setMinimumDistance:distanceCopy];

  comparisonPublishers = [(FMCompareLocatorPublisher *)self comparisonPublishers];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10018B50C;
  v9[3] = &unk_1002CFF30;
  v10 = distanceCopy;
  v8 = distanceCopy;
  [(FMCompareLocatorPublisher *)self publishers:comparisonPublishers performBlock:v9];
}

- (void)setPublishTimeInterval:(id)interval
{
  intervalCopy = interval;
  objc_storeStrong(&self->_publishTimeInterval, interval);
  primaryPublisher = [(FMCompareLocatorPublisher *)self primaryPublisher];
  [primaryPublisher setPublishTimeInterval:intervalCopy];

  comparisonPublishers = [(FMCompareLocatorPublisher *)self comparisonPublishers];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10018B5FC;
  v9[3] = &unk_1002CFF30;
  v10 = intervalCopy;
  v8 = intervalCopy;
  [(FMCompareLocatorPublisher *)self publishers:comparisonPublishers performBlock:v9];
}

- (void)setCachedLocationValidityTimeInterval:(id)interval
{
  intervalCopy = interval;
  objc_storeStrong(&self->_cachedLocationValidityTimeInterval, interval);
  primaryPublisher = [(FMCompareLocatorPublisher *)self primaryPublisher];
  [primaryPublisher setCachedLocationValidityTimeInterval:intervalCopy];

  comparisonPublishers = [(FMCompareLocatorPublisher *)self comparisonPublishers];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10018B6EC;
  v9[3] = &unk_1002CFF30;
  v10 = intervalCopy;
  v8 = intervalCopy;
  [(FMCompareLocatorPublisher *)self publishers:comparisonPublishers performBlock:v9];
}

- (void)logPublishedLocation:(id)location reason:(int64_t)reason publisher:(id)publisher
{
  publisherCopy = publisher;
  locationCopy = location;
  v10 = [[FMDEventLoggerEventLocate alloc] initWithEventName:@"FMGeoLocatableComparison"];
  latitude = [locationCopy latitude];
  longitude = [locationCopy longitude];

  v13 = [NSString stringWithFormat:@"%@, %@", latitude, longitude];

  [(FMDEventLoggerEventLocate *)v10 setObject:v13 forKey:@"loc"];
  v14 = [NSNumber numberWithInteger:reason];
  [(FMDEventLoggerEventLocate *)v10 setObject:v14 forKey:@"reason"];

  fm_logID = [publisherCopy fm_logID];
  [(FMDEventLoggerEventLocate *)v10 setObject:fm_logID forKey:@"publisher"];

  fm_logID2 = [(FMCompareLocatorPublisher *)self fm_logID];
  [(FMDEventLoggerEventLocate *)v10 setObject:fm_logID2 forKey:@"instance"];

  v17 = sub_100002880();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    fm_logID3 = [publisherCopy fm_logID];
    fm_logID4 = [(FMCompareLocatorPublisher *)self fm_logID];
    v20 = [NSNumber numberWithInteger:reason];
    *buf = 138413058;
    v27 = v13;
    v28 = 2112;
    v29 = fm_logID3;
    v30 = 2112;
    v31 = fm_logID4;
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

- (void)publishers:(id)publishers performBlock:(id)block
{
  blockCopy = block;
  v6 = [publishers copy];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10018BA60;
  v8[3] = &unk_1002CFF58;
  v9 = blockCopy;
  v7 = blockCopy;
  [v6 enumerateObjectsUsingBlock:v8];
}

- (void)flushLocations
{
  primaryPublisher = [(FMCompareLocatorPublisher *)self primaryPublisher];
  [primaryPublisher flushLocations];

  comparisonPublishers = [(FMCompareLocatorPublisher *)self comparisonPublishers];
  [(FMCompareLocatorPublisher *)self publishers:comparisonPublishers performBlock:&stru_1002CFF98];
}

@end