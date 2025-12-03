@interface APIntegrityDatasource
+ (int64_t)reportFrequency;
- (id)_createProperties;
- (id)_eventCountDictionary;
- (id)reportType;
@end

@implementation APIntegrityDatasource

+ (int64_t)reportFrequency
{
  v3 = [APConfigurationMediator configurationForClass:objc_opt_class()];
  reportingFrequency = [v3 reportingFrequency];

  if (reportingFrequency)
  {
    reportingFrequency2 = [v3 reportingFrequency];
    integerValue = [reportingFrequency2 integerValue];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = &OBJC_METACLASS___APIntegrityDatasource;
    integerValue = objc_msgSendSuper2(&v8, "reportFrequency");
  }

  return integerValue;
}

- (id)reportType
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [NSString stringWithFormat:@"%@-%lu", v4, [(APBaseReport *)self purpose]];

  return v5;
}

- (id)_createProperties
{
  _eventCountDictionary = [(APIntegrityDatasource *)self _eventCountDictionary];
  v3 = _eventCountDictionary;
  if (_eventCountDictionary && [_eventCountDictionary count])
  {
    v29 = objc_alloc_init(NSMutableDictionary);
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    obj = [v3 allKeys];
    v31 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
    if (v31)
    {
      v27 = *v40;
      v28 = v3;
      do
      {
        v4 = 0;
        do
        {
          if (*v40 != v27)
          {
            objc_enumerationMutation(obj);
          }

          v34 = v4;
          v5 = *(*(&v39 + 1) + 8 * v4);
          v6 = objc_alloc_init(NSMutableDictionary);
          reportDate = [(APBaseReport *)self reportDate];
          reportDayString = [reportDate reportDayString];
          [v6 setObject:reportDayString forKey:@"date_MMDD"];

          v9 = [NSNumber numberWithInteger:[(APBaseReport *)self purpose]];
          [v6 setObject:v9 forKey:@"report_purpose"];

          v10 = +[(APBaseReport *)APIntegrityDatasource];
          v33 = v6;
          [v6 setObject:v10 forKey:@"report_frequency"];

          v32 = v5;
          v11 = [v3 objectForKey:v5];
          v12 = objc_alloc_init(NSMutableDictionary);
          v35 = 0u;
          v36 = 0u;
          v37 = 0u;
          v38 = 0u;
          v13 = v11;
          v14 = [v13 countByEnumeratingWithState:&v35 objects:v43 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v36;
            do
            {
              for (i = 0; i != v15; i = i + 1)
              {
                if (*v36 != v16)
                {
                  objc_enumerationMutation(v13);
                }

                v18 = *(*(&v35 + 1) + 8 * i);
                event = [v18 event];
                v20 = [v12 objectForKey:event];

                [v18 count];
                if (v20)
                  v21 = {;
                  v22 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v21 integerValue] + objc_msgSend(v20, "integerValue"));
                }

                else
                  v22 = {;
                }

                event2 = [v18 event];
                [v12 setObject:v22 forKey:event2];
              }

              v15 = [v13 countByEnumeratingWithState:&v35 objects:v43 count:16];
            }

            while (v15);
          }

          [v33 setObject:v12 forKey:@"event_count"];
          [v29 setObject:v33 forKey:v32];

          v4 = v34 + 1;
          v3 = v28;
        }

        while ((v34 + 1) != v31);
        v31 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
      }

      while (v31);
    }

    v24 = [NSDictionary dictionaryWithDictionary:v29];
  }

  else
  {
    v24 = objc_alloc_init(NSDictionary);
  }

  return v24;
}

- (id)_eventCountDictionary
{
  reportDate = [(APBaseReport *)self reportDate];
  purpose = [(APBaseReport *)self purpose];
  if ([objc_opt_class() reportFrequency] == 1901 && (-[APBaseReport reportEventCount](self, "reportEventCount"), v5 = objc_claimAutoreleasedReturnValue(), +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", objc_msgSend(reportDate, "reportEndDay")), v6 = objc_claimAutoreleasedReturnValue(), +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", purpose), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "groupedEventCountForDayOfYear:purpose:", v6, v7), v8 = objc_claimAutoreleasedReturnValue(), v7, v6, v5, v8))
  {
    v9 = [NSDictionary dictionaryWithDictionary:v8];
  }

  else
  {
    v9 = objc_alloc_init(NSDictionary);
  }

  return v9;
}

@end