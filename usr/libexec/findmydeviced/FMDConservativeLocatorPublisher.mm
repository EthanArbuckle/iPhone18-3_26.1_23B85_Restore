@interface FMDConservativeLocatorPublisher
- (FMDConservativeLocatorPublisher)init;
- (void)_cancelPublishTimer;
- (void)_publishResultLocation:(id)location reason:(int64_t)reason;
- (void)flushLocations;
- (void)startPublishingWithBlock:(id)block;
- (void)updatedLocations:(id)locations reason:(int64_t)reason;
@end

@implementation FMDConservativeLocatorPublisher

- (FMDConservativeLocatorPublisher)init
{
  v5.receiver = self;
  v5.super_class = FMDConservativeLocatorPublisher;
  v2 = [(FMDConservativeLocatorPublisher *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(FMDConservativeLocatorPublisher *)v2 setStartThreshold:&off_1002E8240];
    [(FMDConservativeLocatorPublisher *)v3 setEndThreshold:&off_1002E8250];
    [(FMDConservativeLocatorPublisher *)v3 setDecayFactor:&off_1002E8260];
    [(FMDConservativeLocatorPublisher *)v3 setCachedLocationValidityTimeInterval:&off_1002E8270];
    [(FMDConservativeLocatorPublisher *)v3 setPublishTimeInterval:&off_1002E7C90];
    [(FMDConservativeLocatorPublisher *)v3 setMinimumDistance:&off_1002E8280];
  }

  return v3;
}

- (void)startPublishingWithBlock:(id)block
{
  [(FMDConservativeLocatorPublisher *)self setPublishingBlock:block];
  [(FMDConservativeLocatorPublisher *)self setStartedPublishing:1];
  startThreshold = [(FMDConservativeLocatorPublisher *)self startThreshold];
  [(FMDConservativeLocatorPublisher *)self setCurrentThreshold:startThreshold];

  v5 = +[NSDate date];
  [(FMDConservativeLocatorPublisher *)self setLaunchDate:v5];
}

- (void)updatedLocations:(id)locations reason:(int64_t)reason
{
  locationsCopy = locations;
  if (![(FMDConservativeLocatorPublisher *)self startedPublishing])
  {
    lastObject = sub_10017D9A8();
    if (os_log_type_enabled(lastObject, OS_LOG_TYPE_ERROR))
    {
      sub_10022F784(lastObject);
    }

    goto LABEL_12;
  }

  if ([locationsCopy count])
  {
    lastObject = [locationsCopy lastObject];
    if (!lastObject)
    {
LABEL_12:

      goto LABEL_13;
    }

    v7 = sub_10017D9A8();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_10022F7C8(self, lastObject, v7);
    }

    horizontalAccuracy = [lastObject horizontalAccuracy];
    [horizontalAccuracy doubleValue];
    v10 = v9 < 0.0;

    if (v10)
    {
      v11 = sub_10017D9A8();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        fm_logID = [(FMDConservativeLocatorPublisher *)self fm_logID];
        horizontalAccuracy2 = [lastObject horizontalAccuracy];
        [horizontalAccuracy2 doubleValue];
        *buf = 138412546;
        v133 = fm_logID;
        v134 = 2048;
        v135 = v14;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%@ Location has a -ve horizontalAccuracy (%.2f). Not using it", buf, 0x16u);
      }

LABEL_56:

      goto LABEL_12;
    }

    horizontalAccuracy3 = [lastObject horizontalAccuracy];
    [horizontalAccuracy3 doubleValue];
    v17 = v16;
    [(NSNumber *)self->_startThreshold doubleValue];
    v19 = v17 > v18;

    if (v19)
    {
      v11 = sub_10017D9A8();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        fm_logID2 = [(FMDConservativeLocatorPublisher *)self fm_logID];
        horizontalAccuracy4 = [lastObject horizontalAccuracy];
        [horizontalAccuracy4 doubleValue];
        v23 = v22;
        [(NSNumber *)self->_startThreshold doubleValue];
        *buf = 138412802;
        v133 = fm_logID2;
        v134 = 2048;
        v135 = v23;
        v136 = 2048;
        longValue = v24;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%@ Location has a horizontalAccuracy of %.2f > start threshold %.2f. Not using it", buf, 0x20u);
      }

      goto LABEL_56;
    }

    timestamp = [lastObject timestamp];
    [timestamp timeIntervalSinceReferenceDate];
    v27 = v26;

    launchDate = [(FMDConservativeLocatorPublisher *)self launchDate];
    [launchDate timeIntervalSinceReferenceDate];
    v30 = v29;

    cachedLocationValidityTimeInterval = [(FMDConservativeLocatorPublisher *)self cachedLocationValidityTimeInterval];
    [cachedLocationValidityTimeInterval doubleValue];
    v33 = v32;

    if (v27 <= v30 - v33)
    {
      v11 = sub_10017D9A8();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        fm_logID3 = [(FMDConservativeLocatorPublisher *)self fm_logID];
        *buf = 138412290;
        v133 = fm_logID3;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%@ Location is really old. Waiting for a newer one", buf, 0xCu);
      }

      goto LABEL_56;
    }

    if (v27 < v30)
    {
      v34 = sub_10017D9A8();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        fm_logID4 = [(FMDConservativeLocatorPublisher *)self fm_logID];
        [(NSNumber *)self->_cachedLocationValidityTimeInterval doubleValue];
        *buf = 138412546;
        v133 = fm_logID4;
        v134 = 2048;
        v135 = v36;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "%@ Location is an old cached one but not older than %.0f seconds before the start of this cycle. Considering it for later use", buf, 0x16u);
      }

      v37 = 0;
      v38 = 1;
      goto LABEL_23;
    }

    horizontalAccuracy5 = [lastObject horizontalAccuracy];
    [horizontalAccuracy5 doubleValue];
    v64 = v63;
    [(NSNumber *)self->_endThreshold doubleValue];
    v66 = v64 > v65;

    if (!v66)
    {
      v90 = sub_10017D9A8();
      if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
      {
        fm_logID5 = [(FMDConservativeLocatorPublisher *)self fm_logID];
        [(NSNumber *)self->_endThreshold doubleValue];
        *buf = 138412546;
        v133 = fm_logID5;
        v134 = 2048;
        v135 = v92;
        _os_log_impl(&_mh_execute_header, v90, OS_LOG_TYPE_DEFAULT, "%@ Location has accuracy below the end threshold %f. Publishing it immediately & finishing the locate cycle", buf, 0x16u);
      }

      [(FMDConservativeLocatorPublisher *)self setStartedPublishing:0];
      [(FMDConservativeLocatorPublisher *)self _cancelPublishTimer];
      [(FMDConservativeLocatorPublisher *)self _publishResultLocation:lastObject reason:3];
      goto LABEL_12;
    }

    horizontalAccuracy6 = [lastObject horizontalAccuracy];
    [horizontalAccuracy6 doubleValue];
    v69 = v68;
    [(NSNumber *)self->_currentThreshold doubleValue];
    v71 = v69 < v70;

    if (v71)
    {
      v72 = sub_10017D9A8();
      if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
      {
        fm_logID6 = [(FMDConservativeLocatorPublisher *)self fm_logID];
        [(NSNumber *)self->_currentThreshold doubleValue];
        v75 = v74;
        publishTimeInterval = [(FMDConservativeLocatorPublisher *)self publishTimeInterval];
        *buf = 138412802;
        v133 = fm_logID6;
        v134 = 2048;
        v135 = v75;
        v136 = 2048;
        longValue = [publishTimeInterval longValue];
        _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_DEFAULT, "%@ Location has accuracy within current publish threshold of %.2f. Publishing it within the next %ld seconds", buf, 0x20u);
      }

      do
      {
        ++self->_currentDecayMultiplier;
        [(NSNumber *)self->_startThreshold doubleValue];
        v78 = v77;
        [(NSNumber *)self->_decayFactor doubleValue];
        v80 = [NSNumber numberWithDouble:(v78 * exp(-(v79 * self->_currentDecayMultiplier)))];
        currentThreshold = self->_currentThreshold;
        self->_currentThreshold = v80;

        [(NSNumber *)self->_currentThreshold doubleValue];
        v83 = v82;
        horizontalAccuracy7 = [lastObject horizontalAccuracy];
        [horizontalAccuracy7 doubleValue];
        v86 = v83 < v85;
      }

      while (!v86);
      v87 = sub_10017D9A8();
      if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
      {
        fm_logID7 = [(FMDConservativeLocatorPublisher *)self fm_logID];
        [(NSNumber *)self->_currentThreshold doubleValue];
        *buf = 138412546;
        v133 = fm_logID7;
        v134 = 2048;
        v135 = v89;
        _os_log_impl(&_mh_execute_header, v87, OS_LOG_TYPE_DEFAULT, "%@ New publish threshold is %.2f", buf, 0x16u);
      }

      v38 = 1;
      v37 = 2;
    }

    else
    {
      v38 = 0;
      v37 = 0;
    }

    lastLocation = [(FMDConservativeLocatorPublisher *)self lastLocation];
    if (!lastLocation)
    {
      horizontalAccuracy8 = [lastObject horizontalAccuracy];
      [horizontalAccuracy8 doubleValue];
      v97 = v96;
      [(NSNumber *)self->_startThreshold doubleValue];
      v99 = v97 > v98;

      if (v99)
      {
        goto LABEL_65;
      }

      lastLocation = sub_10017D9A8();
      if (os_log_type_enabled(lastLocation, OS_LOG_TYPE_DEFAULT))
      {
        fm_logID8 = [(FMDConservativeLocatorPublisher *)self fm_logID];
        [(NSNumber *)self->_startThreshold doubleValue];
        *buf = 138412546;
        v133 = fm_logID8;
        v134 = 2048;
        v135 = v101;
        _os_log_impl(&_mh_execute_header, lastLocation, OS_LOG_TYPE_DEFAULT, "%@ This is the first location with accuracy below the start threshold %.2f. Publishing it immediately", buf, 0x16u);
      }

      v38 = 2;
      v37 = 1;
    }

LABEL_65:
    lastLocation2 = [(FMDConservativeLocatorPublisher *)self lastLocation];

    if (!lastLocation2)
    {
      goto LABEL_24;
    }

    if (![lastObject locationType])
    {
      goto LABEL_24;
    }

    locationType = [lastObject locationType];
    lastLocation3 = [(FMDConservativeLocatorPublisher *)self lastLocation];
    LOBYTE(locationType) = locationType == [lastLocation3 locationType];

    if (locationType)
    {
      goto LABEL_24;
    }

    v105 = [CLLocation alloc];
    lastLocation4 = [(FMDConservativeLocatorPublisher *)self lastLocation];
    latitude = [lastLocation4 latitude];
    [latitude doubleValue];
    v109 = v108;
    lastLocation5 = [(FMDConservativeLocatorPublisher *)self lastLocation];
    longitude = [lastLocation5 longitude];
    [longitude doubleValue];
    v34 = [v105 initWithLatitude:v109 longitude:v112];

    v113 = [CLLocation alloc];
    latitude2 = [lastObject latitude];
    [latitude2 doubleValue];
    v116 = v115;
    longitude2 = [lastObject longitude];
    [longitude2 doubleValue];
    v119 = [v113 initWithLatitude:v116 longitude:v118];

    [v34 distanceFromLocation:v119];
    v121 = v120;
    minimumDistance = [(FMDConservativeLocatorPublisher *)self minimumDistance];
    [minimumDistance doubleValue];
    LOBYTE(longitude2) = v121 < v123;

    if ((longitude2 & 1) == 0)
    {
      v124 = sub_10017D9A8();
      if (os_log_type_enabled(v124, OS_LOG_TYPE_DEFAULT))
      {
        fm_logID9 = [(FMDConservativeLocatorPublisher *)self fm_logID];
        lastLocation6 = [(FMDConservativeLocatorPublisher *)self lastLocation];
        locationType2 = [lastLocation6 locationType];
        locationType3 = [lastObject locationType];
        *buf = 138413058;
        v133 = fm_logID9;
        v134 = 2048;
        v135 = locationType2;
        v136 = 2048;
        longValue = locationType3;
        v138 = 2048;
        v139 = v121;
        _os_log_impl(&_mh_execute_header, v124, OS_LOG_TYPE_DEFAULT, "%@ Location type changed from %ld to %ld with distance traveled %.2lf. Publishing it immediately", buf, 0x2Au);
      }

      v38 = 2;
      v37 = 4;
    }

LABEL_23:
LABEL_24:
    lastLocation7 = [(FMDConservativeLocatorPublisher *)self lastLocation];
    if (!lastLocation7)
    {
      goto LABEL_26;
    }

    horizontalAccuracy9 = [lastObject horizontalAccuracy];
    [horizontalAccuracy9 doubleValue];
    v42 = v41;
    lastLocation8 = [(FMDConservativeLocatorPublisher *)self lastLocation];
    horizontalAccuracy10 = [lastLocation8 horizontalAccuracy];
    [horizontalAccuracy10 doubleValue];
    v46 = v42 > v45;

    if (!v46)
    {
LABEL_26:
      v47 = sub_10017D9A8();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        fm_logID10 = [(FMDConservativeLocatorPublisher *)self fm_logID];
        *buf = 138412290;
        v133 = fm_logID10;
        _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "%@ Storing this location as the best last known location in this locate cycle", buf, 0xCu);
      }

      [(FMDConservativeLocatorPublisher *)self setLastLocation:lastObject];
    }

    if (v38)
    {
      if (v38 == 1)
      {
        [(FMDConservativeLocatorPublisher *)self _cancelPublishTimer];
        nextPublishTimerFireDate = [(FMDConservativeLocatorPublisher *)self nextPublishTimerFireDate];
        if (!nextPublishTimerFireDate)
        {
          publishTimeInterval2 = [(FMDConservativeLocatorPublisher *)self publishTimeInterval];
          [publishTimeInterval2 doubleValue];
          v52 = v51;

          nextPublishTimerFireDate = [NSDate dateWithTimeIntervalSinceNow:v52];
          [(FMDConservativeLocatorPublisher *)self setNextPublishTimerFireDate:nextPublishTimerFireDate];
        }

        [nextPublishTimerFireDate timeIntervalSinceNow];
        if (v53 >= 0.0)
        {
          v54 = v53;
        }

        else
        {
          v54 = 0.0;
        }

        v55 = sub_10017D9A8();
        if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
        {
          fm_logID11 = [(FMDConservativeLocatorPublisher *)self fm_logID];
          *buf = 138412546;
          v133 = fm_logID11;
          v134 = 2048;
          v135 = v54;
          _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "%@ Scheduling the location to be published in %ld seconds", buf, 0x16u);
        }

        objc_initWeak(buf, self);
        v57 = [FMDispatchTimer alloc];
        v58 = &_dispatch_main_q;
        v129[0] = _NSConcreteStackBlock;
        v129[1] = 3221225472;
        v129[2] = sub_1001E1968;
        v129[3] = &unk_1002D1368;
        objc_copyWeak(v131, buf);
        lastObject = lastObject;
        v130 = lastObject;
        v131[1] = v37;
        v59 = [v57 initWithQueue:&_dispatch_main_q timeout:v129 completion:v54];
        [(FMDConservativeLocatorPublisher *)self setPublishTimer:v59];

        publishTimer = [(FMDConservativeLocatorPublisher *)self publishTimer];
        [publishTimer start];

        objc_destroyWeak(v131);
        objc_destroyWeak(buf);
      }

      else
      {
        [(FMDConservativeLocatorPublisher *)self _cancelPublishTimer];
        [(FMDConservativeLocatorPublisher *)self _publishResultLocation:lastObject reason:v37];
      }

      goto LABEL_12;
    }

    v11 = sub_10017D9A8();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      fm_logID12 = [(FMDConservativeLocatorPublisher *)self fm_logID];
      *buf = 138412290;
      v133 = fm_logID12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%@ Not publishing this location", buf, 0xCu);
    }

    goto LABEL_56;
  }

LABEL_13:
}

- (void)flushLocations
{
  [(FMDConservativeLocatorPublisher *)self _cancelPublishTimer];
  lastLocation = [(FMDConservativeLocatorPublisher *)self lastLocation];
  if (lastLocation)
  {
    lastPublishedLocation = [(FMDConservativeLocatorPublisher *)self lastPublishedLocation];
    if (lastLocation == lastPublishedLocation)
    {
    }

    else
    {
      startedPublishing = [(FMDConservativeLocatorPublisher *)self startedPublishing];

      if (startedPublishing)
      {
        [(FMDConservativeLocatorPublisher *)self _publishResultLocation:lastLocation reason:5];
        [(FMDConservativeLocatorPublisher *)self setLastLocation:0];
      }
    }
  }

  [(FMDConservativeLocatorPublisher *)self setStartedPublishing:0];
}

- (void)_publishResultLocation:(id)location reason:(int64_t)reason
{
  locationCopy = location;
  v7 = sub_10017D9A8();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    fm_logID = [(FMDConservativeLocatorPublisher *)self fm_logID];
    v11 = 138412546;
    v12 = fm_logID;
    v13 = 2048;
    reasonCopy = reason;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@ Publishing the location to the server for reason %li", &v11, 0x16u);
  }

  [(FMDConservativeLocatorPublisher *)self _cancelPublishTimer];
  [(FMDConservativeLocatorPublisher *)self setLastPublishedLocation:locationCopy];
  publishingBlock = [(FMDConservativeLocatorPublisher *)self publishingBlock];
  v10 = publishingBlock;
  if (publishingBlock)
  {
    (*(publishingBlock + 16))(publishingBlock, 0, locationCopy, reason);
  }
}

- (void)_cancelPublishTimer
{
  publishTimer = [(FMDConservativeLocatorPublisher *)self publishTimer];

  if (publishTimer)
  {
    publishTimer2 = [(FMDConservativeLocatorPublisher *)self publishTimer];
    [publishTimer2 cancel];

    [(FMDConservativeLocatorPublisher *)self setPublishTimer:0];

    [(FMDConservativeLocatorPublisher *)self setNextPublishTimerFireDate:0];
  }
}

@end