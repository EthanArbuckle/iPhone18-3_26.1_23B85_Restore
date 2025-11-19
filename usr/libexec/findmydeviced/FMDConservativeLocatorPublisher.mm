@interface FMDConservativeLocatorPublisher
- (FMDConservativeLocatorPublisher)init;
- (void)_cancelPublishTimer;
- (void)_publishResultLocation:(id)a3 reason:(int64_t)a4;
- (void)flushLocations;
- (void)startPublishingWithBlock:(id)a3;
- (void)updatedLocations:(id)a3 reason:(int64_t)a4;
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

- (void)startPublishingWithBlock:(id)a3
{
  [(FMDConservativeLocatorPublisher *)self setPublishingBlock:a3];
  [(FMDConservativeLocatorPublisher *)self setStartedPublishing:1];
  v4 = [(FMDConservativeLocatorPublisher *)self startThreshold];
  [(FMDConservativeLocatorPublisher *)self setCurrentThreshold:v4];

  v5 = +[NSDate date];
  [(FMDConservativeLocatorPublisher *)self setLaunchDate:v5];
}

- (void)updatedLocations:(id)a3 reason:(int64_t)a4
{
  v5 = a3;
  if (![(FMDConservativeLocatorPublisher *)self startedPublishing])
  {
    v6 = sub_10017D9A8();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10022F784(v6);
    }

    goto LABEL_12;
  }

  if ([v5 count])
  {
    v6 = [v5 lastObject];
    if (!v6)
    {
LABEL_12:

      goto LABEL_13;
    }

    v7 = sub_10017D9A8();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_10022F7C8(self, v6, v7);
    }

    v8 = [v6 horizontalAccuracy];
    [v8 doubleValue];
    v10 = v9 < 0.0;

    if (v10)
    {
      v11 = sub_10017D9A8();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [(FMDConservativeLocatorPublisher *)self fm_logID];
        v13 = [v6 horizontalAccuracy];
        [v13 doubleValue];
        *buf = 138412546;
        v133 = v12;
        v134 = 2048;
        v135 = v14;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%@ Location has a -ve horizontalAccuracy (%.2f). Not using it", buf, 0x16u);
      }

LABEL_56:

      goto LABEL_12;
    }

    v15 = [v6 horizontalAccuracy];
    [v15 doubleValue];
    v17 = v16;
    [(NSNumber *)self->_startThreshold doubleValue];
    v19 = v17 > v18;

    if (v19)
    {
      v11 = sub_10017D9A8();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v20 = [(FMDConservativeLocatorPublisher *)self fm_logID];
        v21 = [v6 horizontalAccuracy];
        [v21 doubleValue];
        v23 = v22;
        [(NSNumber *)self->_startThreshold doubleValue];
        *buf = 138412802;
        v133 = v20;
        v134 = 2048;
        v135 = v23;
        v136 = 2048;
        v137 = v24;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%@ Location has a horizontalAccuracy of %.2f > start threshold %.2f. Not using it", buf, 0x20u);
      }

      goto LABEL_56;
    }

    v25 = [v6 timestamp];
    [v25 timeIntervalSinceReferenceDate];
    v27 = v26;

    v28 = [(FMDConservativeLocatorPublisher *)self launchDate];
    [v28 timeIntervalSinceReferenceDate];
    v30 = v29;

    v31 = [(FMDConservativeLocatorPublisher *)self cachedLocationValidityTimeInterval];
    [v31 doubleValue];
    v33 = v32;

    if (v27 <= v30 - v33)
    {
      v11 = sub_10017D9A8();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v61 = [(FMDConservativeLocatorPublisher *)self fm_logID];
        *buf = 138412290;
        v133 = v61;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%@ Location is really old. Waiting for a newer one", buf, 0xCu);
      }

      goto LABEL_56;
    }

    if (v27 < v30)
    {
      v34 = sub_10017D9A8();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        v35 = [(FMDConservativeLocatorPublisher *)self fm_logID];
        [(NSNumber *)self->_cachedLocationValidityTimeInterval doubleValue];
        *buf = 138412546;
        v133 = v35;
        v134 = 2048;
        v135 = v36;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "%@ Location is an old cached one but not older than %.0f seconds before the start of this cycle. Considering it for later use", buf, 0x16u);
      }

      v37 = 0;
      v38 = 1;
      goto LABEL_23;
    }

    v62 = [v6 horizontalAccuracy];
    [v62 doubleValue];
    v64 = v63;
    [(NSNumber *)self->_endThreshold doubleValue];
    v66 = v64 > v65;

    if (!v66)
    {
      v90 = sub_10017D9A8();
      if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
      {
        v91 = [(FMDConservativeLocatorPublisher *)self fm_logID];
        [(NSNumber *)self->_endThreshold doubleValue];
        *buf = 138412546;
        v133 = v91;
        v134 = 2048;
        v135 = v92;
        _os_log_impl(&_mh_execute_header, v90, OS_LOG_TYPE_DEFAULT, "%@ Location has accuracy below the end threshold %f. Publishing it immediately & finishing the locate cycle", buf, 0x16u);
      }

      [(FMDConservativeLocatorPublisher *)self setStartedPublishing:0];
      [(FMDConservativeLocatorPublisher *)self _cancelPublishTimer];
      [(FMDConservativeLocatorPublisher *)self _publishResultLocation:v6 reason:3];
      goto LABEL_12;
    }

    v67 = [v6 horizontalAccuracy];
    [v67 doubleValue];
    v69 = v68;
    [(NSNumber *)self->_currentThreshold doubleValue];
    v71 = v69 < v70;

    if (v71)
    {
      v72 = sub_10017D9A8();
      if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
      {
        v73 = [(FMDConservativeLocatorPublisher *)self fm_logID];
        [(NSNumber *)self->_currentThreshold doubleValue];
        v75 = v74;
        v76 = [(FMDConservativeLocatorPublisher *)self publishTimeInterval];
        *buf = 138412802;
        v133 = v73;
        v134 = 2048;
        v135 = v75;
        v136 = 2048;
        v137 = [v76 longValue];
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
        v84 = [v6 horizontalAccuracy];
        [v84 doubleValue];
        v86 = v83 < v85;
      }

      while (!v86);
      v87 = sub_10017D9A8();
      if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
      {
        v88 = [(FMDConservativeLocatorPublisher *)self fm_logID];
        [(NSNumber *)self->_currentThreshold doubleValue];
        *buf = 138412546;
        v133 = v88;
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

    v94 = [(FMDConservativeLocatorPublisher *)self lastLocation];
    if (!v94)
    {
      v95 = [v6 horizontalAccuracy];
      [v95 doubleValue];
      v97 = v96;
      [(NSNumber *)self->_startThreshold doubleValue];
      v99 = v97 > v98;

      if (v99)
      {
        goto LABEL_65;
      }

      v94 = sub_10017D9A8();
      if (os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT))
      {
        v100 = [(FMDConservativeLocatorPublisher *)self fm_logID];
        [(NSNumber *)self->_startThreshold doubleValue];
        *buf = 138412546;
        v133 = v100;
        v134 = 2048;
        v135 = v101;
        _os_log_impl(&_mh_execute_header, v94, OS_LOG_TYPE_DEFAULT, "%@ This is the first location with accuracy below the start threshold %.2f. Publishing it immediately", buf, 0x16u);
      }

      v38 = 2;
      v37 = 1;
    }

LABEL_65:
    v102 = [(FMDConservativeLocatorPublisher *)self lastLocation];

    if (!v102)
    {
      goto LABEL_24;
    }

    if (![v6 locationType])
    {
      goto LABEL_24;
    }

    v103 = [v6 locationType];
    v104 = [(FMDConservativeLocatorPublisher *)self lastLocation];
    LOBYTE(v103) = v103 == [v104 locationType];

    if (v103)
    {
      goto LABEL_24;
    }

    v105 = [CLLocation alloc];
    v106 = [(FMDConservativeLocatorPublisher *)self lastLocation];
    v107 = [v106 latitude];
    [v107 doubleValue];
    v109 = v108;
    v110 = [(FMDConservativeLocatorPublisher *)self lastLocation];
    v111 = [v110 longitude];
    [v111 doubleValue];
    v34 = [v105 initWithLatitude:v109 longitude:v112];

    v113 = [CLLocation alloc];
    v114 = [v6 latitude];
    [v114 doubleValue];
    v116 = v115;
    v117 = [v6 longitude];
    [v117 doubleValue];
    v119 = [v113 initWithLatitude:v116 longitude:v118];

    [v34 distanceFromLocation:v119];
    v121 = v120;
    v122 = [(FMDConservativeLocatorPublisher *)self minimumDistance];
    [v122 doubleValue];
    LOBYTE(v117) = v121 < v123;

    if ((v117 & 1) == 0)
    {
      v124 = sub_10017D9A8();
      if (os_log_type_enabled(v124, OS_LOG_TYPE_DEFAULT))
      {
        v125 = [(FMDConservativeLocatorPublisher *)self fm_logID];
        v126 = [(FMDConservativeLocatorPublisher *)self lastLocation];
        v127 = [v126 locationType];
        v128 = [v6 locationType];
        *buf = 138413058;
        v133 = v125;
        v134 = 2048;
        v135 = v127;
        v136 = 2048;
        v137 = v128;
        v138 = 2048;
        v139 = v121;
        _os_log_impl(&_mh_execute_header, v124, OS_LOG_TYPE_DEFAULT, "%@ Location type changed from %ld to %ld with distance traveled %.2lf. Publishing it immediately", buf, 0x2Au);
      }

      v38 = 2;
      v37 = 4;
    }

LABEL_23:
LABEL_24:
    v39 = [(FMDConservativeLocatorPublisher *)self lastLocation];
    if (!v39)
    {
      goto LABEL_26;
    }

    v40 = [v6 horizontalAccuracy];
    [v40 doubleValue];
    v42 = v41;
    v43 = [(FMDConservativeLocatorPublisher *)self lastLocation];
    v44 = [v43 horizontalAccuracy];
    [v44 doubleValue];
    v46 = v42 > v45;

    if (!v46)
    {
LABEL_26:
      v47 = sub_10017D9A8();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        v48 = [(FMDConservativeLocatorPublisher *)self fm_logID];
        *buf = 138412290;
        v133 = v48;
        _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "%@ Storing this location as the best last known location in this locate cycle", buf, 0xCu);
      }

      [(FMDConservativeLocatorPublisher *)self setLastLocation:v6];
    }

    if (v38)
    {
      if (v38 == 1)
      {
        [(FMDConservativeLocatorPublisher *)self _cancelPublishTimer];
        v49 = [(FMDConservativeLocatorPublisher *)self nextPublishTimerFireDate];
        if (!v49)
        {
          v50 = [(FMDConservativeLocatorPublisher *)self publishTimeInterval];
          [v50 doubleValue];
          v52 = v51;

          v49 = [NSDate dateWithTimeIntervalSinceNow:v52];
          [(FMDConservativeLocatorPublisher *)self setNextPublishTimerFireDate:v49];
        }

        [v49 timeIntervalSinceNow];
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
          v56 = [(FMDConservativeLocatorPublisher *)self fm_logID];
          *buf = 138412546;
          v133 = v56;
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
        v6 = v6;
        v130 = v6;
        v131[1] = v37;
        v59 = [v57 initWithQueue:&_dispatch_main_q timeout:v129 completion:v54];
        [(FMDConservativeLocatorPublisher *)self setPublishTimer:v59];

        v60 = [(FMDConservativeLocatorPublisher *)self publishTimer];
        [v60 start];

        objc_destroyWeak(v131);
        objc_destroyWeak(buf);
      }

      else
      {
        [(FMDConservativeLocatorPublisher *)self _cancelPublishTimer];
        [(FMDConservativeLocatorPublisher *)self _publishResultLocation:v6 reason:v37];
      }

      goto LABEL_12;
    }

    v11 = sub_10017D9A8();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v93 = [(FMDConservativeLocatorPublisher *)self fm_logID];
      *buf = 138412290;
      v133 = v93;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%@ Not publishing this location", buf, 0xCu);
    }

    goto LABEL_56;
  }

LABEL_13:
}

- (void)flushLocations
{
  [(FMDConservativeLocatorPublisher *)self _cancelPublishTimer];
  v5 = [(FMDConservativeLocatorPublisher *)self lastLocation];
  if (v5)
  {
    v3 = [(FMDConservativeLocatorPublisher *)self lastPublishedLocation];
    if (v5 == v3)
    {
    }

    else
    {
      v4 = [(FMDConservativeLocatorPublisher *)self startedPublishing];

      if (v4)
      {
        [(FMDConservativeLocatorPublisher *)self _publishResultLocation:v5 reason:5];
        [(FMDConservativeLocatorPublisher *)self setLastLocation:0];
      }
    }
  }

  [(FMDConservativeLocatorPublisher *)self setStartedPublishing:0];
}

- (void)_publishResultLocation:(id)a3 reason:(int64_t)a4
{
  v6 = a3;
  v7 = sub_10017D9A8();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(FMDConservativeLocatorPublisher *)self fm_logID];
    v11 = 138412546;
    v12 = v8;
    v13 = 2048;
    v14 = a4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@ Publishing the location to the server for reason %li", &v11, 0x16u);
  }

  [(FMDConservativeLocatorPublisher *)self _cancelPublishTimer];
  [(FMDConservativeLocatorPublisher *)self setLastPublishedLocation:v6];
  v9 = [(FMDConservativeLocatorPublisher *)self publishingBlock];
  v10 = v9;
  if (v9)
  {
    (*(v9 + 16))(v9, 0, v6, a4);
  }
}

- (void)_cancelPublishTimer
{
  v3 = [(FMDConservativeLocatorPublisher *)self publishTimer];

  if (v3)
  {
    v4 = [(FMDConservativeLocatorPublisher *)self publishTimer];
    [v4 cancel];

    [(FMDConservativeLocatorPublisher *)self setPublishTimer:0];

    [(FMDConservativeLocatorPublisher *)self setNextPublishTimerFireDate:0];
  }
}

@end