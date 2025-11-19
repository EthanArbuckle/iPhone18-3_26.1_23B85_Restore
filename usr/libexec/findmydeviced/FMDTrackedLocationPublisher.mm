@interface FMDTrackedLocationPublisher
- (void)_publishResultLocation:(id)a3 reason:(int64_t)a4;
- (void)flushLocations;
- (void)startPublishingWithBlock:(id)a3;
- (void)updatedLocations:(id)a3 reason:(int64_t)a4;
@end

@implementation FMDTrackedLocationPublisher

- (void)startPublishingWithBlock:(id)a3
{
  [(FMDTrackedLocationPublisher *)self setPublishingBlock:a3];

  [(FMDTrackedLocationPublisher *)self setStartedPublishing:1];
}

- (void)updatedLocations:(id)a3 reason:(int64_t)a4
{
  v6 = a3;
  if (![(FMDTrackedLocationPublisher *)self startedPublishing])
  {
    v7 = sub_10017D9A8();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100227638(v7);
    }

    goto LABEL_27;
  }

  if ([v6 count])
  {
    v7 = [v6 lastObject];
    v8 = [(FMDTrackedLocationPublisher *)self lastLocation];
    [(FMDTrackedLocationPublisher *)self setLastLocation:v7];
    if (!v8)
    {
      v50 = sub_100002880();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v51) = 0;
        _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "New location is the first recorded location. Recording this location...", &v51, 2u);
      }

      [(FMDTrackedLocationPublisher *)self _publishResultLocation:v7 reason:a4];
      goto LABEL_26;
    }

    v9 = [v7 latitude];
    [v9 doubleValue];
    v11 = v10;

    v12 = [v7 longitude];
    [v12 doubleValue];
    v14 = v13;

    v15 = [v7 horizontalAccuracy];
    [v15 doubleValue];
    v17 = v16;

    v18 = [v7 verticalAccuracy];
    [v18 doubleValue];
    v20 = v19;

    v21 = [v7 floor];
    v22 = [v21 integerValue];

    v23 = [[CLLocation alloc] initWithLatitude:v11 longitude:v14];
    v24 = [v8 latitude];
    [v24 doubleValue];
    v26 = v25;

    v27 = [v8 longitude];
    [v27 doubleValue];
    v29 = v28;

    v30 = [v8 horizontalAccuracy];
    [v30 doubleValue];
    v32 = v31;

    v33 = [v8 verticalAccuracy];
    [v33 doubleValue];
    v35 = v34;

    v36 = [v8 floor];
    v37 = [v36 integerValue];

    v38 = [[CLLocation alloc] initWithLatitude:v26 longitude:v29];
    [v23 distanceFromLocation:v38];
    v40 = v39;
    v41 = [(FMDTrackedLocationPublisher *)self minimumDistance];
    [v41 doubleValue];
    v43 = v42;

    v44 = sub_100002880();
    v45 = os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT);
    if (v40 < v43 && v37 == v22)
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

        v48 = self;
        v49 = v8;
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

    v48 = self;
    v49 = v7;
LABEL_25:
    [(FMDTrackedLocationPublisher *)v48 _publishResultLocation:v49 reason:a4];

LABEL_26:
LABEL_27:
  }
}

- (void)_publishResultLocation:(id)a3 reason:(int64_t)a4
{
  v6 = a3;
  v7 = sub_100002880();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 134217984;
    v11 = a4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "FMDTrackedLocationPublisher _publishResultLocation %li", &v10, 0xCu);
  }

  [(FMDTrackedLocationPublisher *)self setLastPublishedLocation:v6];
  v8 = [(FMDTrackedLocationPublisher *)self publishingBlock];
  v9 = v8;
  if (v8)
  {
    (*(v8 + 16))(v8, 0, v6, a4);
  }
}

- (void)flushLocations
{
  [(FMDTrackedLocationPublisher *)self setLastLocation:0];
  v3 = [(FMDTrackedLocationPublisher *)self lastLocation];
  if (v3)
  {
    v5 = v3;
    v4 = [(FMDTrackedLocationPublisher *)self lastPublishedLocation];

    if (v5 != v4)
    {
      [(FMDTrackedLocationPublisher *)self _publishResultLocation:v5 reason:5];
      [(FMDTrackedLocationPublisher *)self setLastLocation:0];
    }
  }

  _objc_release_x1();
}

@end