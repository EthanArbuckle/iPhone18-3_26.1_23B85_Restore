@interface DMDEventReportingSchedule
- (BOOL)isEqual:(id)a3;
- (DMDEventReportingSchedule)initWithScheduleRegistration:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)dealloc;
- (void)startWithScheduleElapsedHandler:(id)a3;
@end

@implementation DMDEventReportingSchedule

- (DMDEventReportingSchedule)initWithScheduleRegistration:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = DMDEventReportingSchedule;
  v5 = [(DMDEventReportingSchedule *)&v25 init];
  if (!v5)
  {
    goto LABEL_24;
  }

  v6 = [v4 identifier];
  identifier = v5->_identifier;
  v5->_identifier = v6;

  v8 = [v4 schedule];
  v9 = [v8 payloadFrequency];
  v10 = v9;
  if (!v9)
  {
    goto LABEL_9;
  }

  if (![v9 caseInsensitiveCompare:@"Immediate"])
  {
    v14 = 0;
    goto LABEL_17;
  }

  if ([v10 caseInsensitiveCompare:@"Minutely"] || (+[DMDDeviceController shared](DMDDeviceController, "shared"), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "isAppleInternal"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "BOOLValue"), v12, v11, (v13 & 1) == 0))
  {
    if (![v10 caseInsensitiveCompare:@"Hourly"])
    {
      v14 = 2;
      goto LABEL_17;
    }

    if (![v10 caseInsensitiveCompare:@"Weekly"])
    {
      v14 = 4;
      goto LABEL_17;
    }

LABEL_9:
    if ([v10 caseInsensitiveCompare:@"Daily"])
    {
      v15 = DMFConfigurationEngineLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_100084180(v10, v15);
      }
    }

    v14 = 3;
    goto LABEL_17;
  }

  v14 = 1;
LABEL_17:
  v5->_frequency = v14;
  v16 = [v8 payloadLocalTime];
  v17 = v16;
  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = @"00:00";
  }

  objc_storeStrong(&v5->_localTime, v18);

  v19 = [v8 payloadSpread];
  v20 = v19;
  if (v19)
  {
    v21 = v19;
  }

  else
  {
    v21 = &off_1000D7A18;
  }

  objc_storeStrong(&v5->_spread, v21);

  v22 = [v8 payloadDay];
  day = v5->_day;
  v5->_day = v22;

LABEL_24:
  return v5;
}

- (void)dealloc
{
  [(NSTimer *)self->_timer invalidate];
  v3.receiver = self;
  v3.super_class = DMDEventReportingSchedule;
  [(DMDEventReportingSchedule *)&v3 dealloc];
}

- (id)description
{
  v5[0] = @"frequency";
  v5[1] = @"localTime";
  v5[2] = @"spread";
  v5[3] = @"day";
  v2 = [NSArray arrayWithObjects:v5 count:4];
  v3 = DMFObjectDescriptionWithProperties();

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v15 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(DMDEventReportingSchedule *)self day];
      v7 = [(DMDEventReportingSchedule *)v5 day];
      v8 = [(DMDEventReportingSchedule *)self identifier];
      v9 = [(DMDEventReportingSchedule *)v5 identifier];
      if ([v8 isEqual:v9] && (v10 = -[DMDEventReportingSchedule frequency](self, "frequency"), v10 == -[DMDEventReportingSchedule frequency](v5, "frequency")))
      {
        v11 = [(DMDEventReportingSchedule *)self localTime];
        v12 = [(DMDEventReportingSchedule *)v5 localTime];
        if ([v11 isEqual:v12])
        {
          v13 = [(DMDEventReportingSchedule *)self spread];
          v14 = [(DMDEventReportingSchedule *)v5 spread];
          v17 = v13;
          if ([v13 isEqual:v14])
          {
            if (v6 | v7)
            {
              v15 = [v6 isEqual:v7];
            }

            else
            {
              v15 = 1;
            }
          }

          else
          {
            v15 = 0;
          }
        }

        else
        {
          v15 = 0;
        }
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }
  }

  return v15;
}

- (unint64_t)hash
{
  v3 = [(DMDEventReportingSchedule *)self identifier];
  v4 = [v3 hash];
  v5 = [NSNumber numberWithInteger:[(DMDEventReportingSchedule *)self frequency]];
  v6 = [v5 hash];
  v7 = [(DMDEventReportingSchedule *)self localTime];
  v8 = v4 ^ [v7 hash];
  v9 = [(DMDEventReportingSchedule *)self spread];
  v10 = v8 ^ [v9 hash];
  v11 = [(DMDEventReportingSchedule *)self day];
  v12 = v10 ^ [v11 hash];

  return v6 ^ v12;
}

- (void)startWithScheduleElapsedHandler:(id)a3
{
  v4 = a3;
  v5 = [(DMDEventReportingSchedule *)self frequency];
  v6 = 0.0;
  if (v5 > 2)
  {
    if (v5 == 3)
    {
      v6 = 86400.0;
    }

    else if (v5 == 4)
    {
      v6 = 604800.0;
    }
  }

  else if (v5 == 1)
  {
    v7 = +[DMDDeviceController shared];
    v8 = [v7 isAppleInternal];
    v9 = [v8 BOOLValue];

    if (v9)
    {
      v6 = 60.0;
    }

    else
    {
      v6 = 86400.0;
    }
  }

  else if (v5 == 2)
  {
    v6 = 3600.0;
  }

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100042338;
  v12[3] = &unk_1000CEFC0;
  v13 = v4;
  v10 = v4;
  v11 = [NSTimer scheduledTimerWithTimeInterval:1 repeats:v12 block:v6];
  [(DMDEventReportingSchedule *)self setTimer:v11];
}

@end