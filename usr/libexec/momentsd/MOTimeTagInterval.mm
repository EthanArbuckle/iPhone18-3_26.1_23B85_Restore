@interface MOTimeTagInterval
- (MOTimeTagInterval)initWithTimeTag:(unint64_t)a3 dateInterval:(id)a4;
- (double)overlapsScoreForStartDate:(id)a3 endDate:(id)a4;
- (id)description;
@end

@implementation MOTimeTagInterval

- (MOTimeTagInterval)initWithTimeTag:(unint64_t)a3 dateInterval:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = MOTimeTagInterval;
  v8 = [(MOTimeTagInterval *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_timetag = a3;
    objc_storeStrong(&v8->_dateInterval, a4);
  }

  return v9;
}

- (double)overlapsScoreForStartDate:(id)a3 endDate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v27 = [(MOTimeTagInterval *)self dateInterval];
    v28 = [v27 startDate];
    v29 = [(MOTimeTagInterval *)self dateInterval];
    v30 = [v29 endDate];
    v35 = 138413058;
    v36 = v6;
    v37 = 2112;
    v38 = v7;
    v39 = 2112;
    v40 = v28;
    v41 = 2112;
    v42 = v30;
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "overlapsScoreForStartDate, startDate, %@, endDate, %@, self.startDate, %@, self.endDate, %@", &v35, 0x2Au);
  }

  if (!v7 || [v6 isEqualToDate:v7])
  {
    goto LABEL_9;
  }

  if ([v6 isAfterDate:v7])
  {
    v9 = _mo_log_facility_get_os_log(&MOLogFacilityEventBundleManager);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v31 = [(MOTimeTagInterval *)self dateInterval];
      v32 = [v31 startDate];
      v33 = [(MOTimeTagInterval *)self dateInterval];
      v34 = [v33 endDate];
      v35 = 138413058;
      v36 = v6;
      v37 = 2112;
      v38 = v7;
      v39 = 2112;
      v40 = v32;
      v41 = 2112;
      v42 = v34;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "overlapsScoreForStartDate, invalid time range, startDate, %@, endDate, %@, self.startDate, %@, self.endDate, %@", &v35, 0x2Au);
    }

LABEL_9:
    v10 = [(MOTimeTagInterval *)self dateInterval];
    v11 = [v10 containsDate:v6];

    if (v11)
    {
      v12 = 1.0;
    }

    else
    {
      v12 = 0.0;
    }

    goto LABEL_12;
  }

  v14 = [[NSDateInterval alloc] initWithStartDate:v6 endDate:v7];
  [v14 duration];
  v12 = 0.0;
  if (v15 > 0.0)
  {
    v16 = [(MOTimeTagInterval *)self dateInterval];
    v17 = [v16 intersectsDateInterval:v14];

    if (v17)
    {
      v18 = [(MOTimeTagInterval *)self dateInterval];
      v19 = [v18 intersectionWithDateInterval:v14];
      [v19 duration];
      v21 = v20;

      [v14 duration];
      v23 = v22 - v21;
      [v14 duration];
      v25 = v21 / v24;
      if (v25 > 0.5 && v23 < 1800.0)
      {
        v12 = 1.0;
      }

      else
      {
        v12 = v25;
      }
    }
  }

LABEL_12:
  return v12;
}

- (id)description
{
  v3 = [MOTime timeStringFromTimeTag:[(MOTimeTagInterval *)self timetag]];
  v4 = [(MOTimeTagInterval *)self dateInterval];
  v5 = [NSString stringWithFormat:@"Interval: timetag, %@, interval, %@", v3, v4];

  return v5;
}

@end