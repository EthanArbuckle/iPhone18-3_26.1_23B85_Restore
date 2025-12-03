@interface FMDTrackedLocationPublisher
- (void)_publishResultLocation:(id)location reason:(int64_t)reason;
- (void)flushLocations;
- (void)startPublishingWithBlock:(id)block;
- (void)updatedLocations:(id)locations reason:(int64_t)reason;
@end

@implementation FMDTrackedLocationPublisher

- (void)startPublishingWithBlock:(id)block
{
  [(FMDTrackedLocationPublisher *)self setPublishingBlock:block];

  [(FMDTrackedLocationPublisher *)self setStartedPublishing:1];
}

- (void)updatedLocations:(id)locations reason:(int64_t)reason
{
  locationsCopy = locations;
  if (![(FMDTrackedLocationPublisher *)self startedPublishing])
  {
    lastObject = sub_10017D9A8();
    if (os_log_type_enabled(lastObject, OS_LOG_TYPE_ERROR))
    {
      sub_100227638(lastObject);
    }

    goto LABEL_27;
  }

  if ([locationsCopy count])
  {
    lastObject = [locationsCopy lastObject];
    lastLocation = [(FMDTrackedLocationPublisher *)self lastLocation];
    [(FMDTrackedLocationPublisher *)self setLastLocation:lastObject];
    if (!lastLocation)
    {
      v50 = sub_100002880();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v51) = 0;
        _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "New location is the first recorded location. Recording this location...", &v51, 2u);
      }

      [(FMDTrackedLocationPublisher *)self _publishResultLocation:lastObject reason:reason];
      goto LABEL_26;
    }

    latitude = [lastObject latitude];
    [latitude doubleValue];
    v11 = v10;

    longitude = [lastObject longitude];
    [longitude doubleValue];
    v14 = v13;

    horizontalAccuracy = [lastObject horizontalAccuracy];
    [horizontalAccuracy doubleValue];
    v17 = v16;

    verticalAccuracy = [lastObject verticalAccuracy];
    [verticalAccuracy doubleValue];
    v20 = v19;

    floor = [lastObject floor];
    integerValue = [floor integerValue];

    v23 = [[CLLocation alloc] initWithLatitude:v11 longitude:v14];
    latitude2 = [lastLocation latitude];
    [latitude2 doubleValue];
    v26 = v25;

    longitude2 = [lastLocation longitude];
    [longitude2 doubleValue];
    v29 = v28;

    horizontalAccuracy2 = [lastLocation horizontalAccuracy];
    [horizontalAccuracy2 doubleValue];
    v32 = v31;

    verticalAccuracy2 = [lastLocation verticalAccuracy];
    [verticalAccuracy2 doubleValue];
    v35 = v34;

    floor2 = [lastLocation floor];
    integerValue2 = [floor2 integerValue];

    v38 = [[CLLocation alloc] initWithLatitude:v26 longitude:v29];
    [v23 distanceFromLocation:v38];
    v40 = v39;
    minimumDistance = [(FMDTrackedLocationPublisher *)self minimumDistance];
    [minimumDistance doubleValue];
    v43 = v42;

    v44 = sub_100002880();
    v45 = os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT);
    if (v40 < v43 && integerValue2 == integerValue)
    {
      if (v45)
      {
        v51 = 134217984;
        v52 = v40;
        _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "New location was %f metres away (not significant enough) from the previous recorded location.", &v51, 0xCu);
      }

      v46 = sub_100002880();
      v47 = os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT);
      if (v17 >= v32 && v20 >= v35)
      {
        if (v47)
        {
          LOWORD(v51) = 0;
          _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "New location does not have a better accuracy.", &v51, 2u);
        }

        selfCopy2 = self;
        v49 = lastLocation;
        goto LABEL_25;
      }

      if (v47)
      {
        LOWORD(v51) = 0;
        _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "New location has a better accuracy. Replacing the previous recorded location...", &v51, 2u);
      }
    }

    else
    {
      if (v45)
      {
        v51 = 134217984;
        v52 = v40;
        _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "New location was %f metres away (significant enough) from the previous recorded location. Recording this location anew...", &v51, 0xCu);
      }
    }

    selfCopy2 = self;
    v49 = lastObject;
LABEL_25:
    [(FMDTrackedLocationPublisher *)selfCopy2 _publishResultLocation:v49 reason:reason];

LABEL_26:
LABEL_27:
  }
}

- (void)_publishResultLocation:(id)location reason:(int64_t)reason
{
  locationCopy = location;
  v7 = sub_100002880();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 134217984;
    reasonCopy = reason;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "FMDTrackedLocationPublisher _publishResultLocation %li", &v10, 0xCu);
  }

  [(FMDTrackedLocationPublisher *)self setLastPublishedLocation:locationCopy];
  publishingBlock = [(FMDTrackedLocationPublisher *)self publishingBlock];
  v9 = publishingBlock;
  if (publishingBlock)
  {
    (*(publishingBlock + 16))(publishingBlock, 0, locationCopy, reason);
  }
}

- (void)flushLocations
{
  [(FMDTrackedLocationPublisher *)self setLastLocation:0];
  lastLocation = [(FMDTrackedLocationPublisher *)self lastLocation];
  if (lastLocation)
  {
    v5 = lastLocation;
    lastPublishedLocation = [(FMDTrackedLocationPublisher *)self lastPublishedLocation];

    if (v5 != lastPublishedLocation)
    {
      [(FMDTrackedLocationPublisher *)self _publishResultLocation:v5 reason:5];
      [(FMDTrackedLocationPublisher *)self setLastLocation:0];
    }
  }

  _objc_release_x1();
}

@end