@interface MOAnalyticsStats
- (MOAnalyticsStats)init;
- (MOAnalyticsStats)initWithTimeSeries:(id)a3;
@end

@implementation MOAnalyticsStats

- (MOAnalyticsStats)init
{
  v3.receiver = self;
  v3.super_class = MOAnalyticsStats;
  result = [(MOAnalyticsStats *)&v3 init];
  if (result)
  {
    *&result->_min = xmmword_100323110;
    result->_std = 0.0;
    result->_count = 0;
    result->_mean = 0.0;
  }

  return result;
}

- (MOAnalyticsStats)initWithTimeSeries:(id)a3
{
  v4 = a3;
  v5 = [(MOAnalyticsStats *)self init];
  if (v5)
  {
    v5->_count = [v4 count];
    if ([v4 count])
    {
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v6 = v4;
      v7 = [v6 countByEnumeratingWithState:&v30 objects:v35 count:16];
      v8 = 0.0;
      v9 = 0.0;
      if (v7)
      {
        v10 = v7;
        v11 = *v31;
        do
        {
          for (i = 0; i != v10; i = i + 1)
          {
            if (*v31 != v11)
            {
              objc_enumerationMutation(v6);
            }

            v13 = *(*(&v30 + 1) + 8 * i);
            min = v5->_min;
            [v13 value];
            if (min < v15)
            {
              v15 = min;
            }

            v5->_min = v15;
            max = v5->_max;
            [v13 value];
            if (max >= v17)
            {
              v17 = max;
            }

            v5->_max = v17;
            [v13 value];
            v9 = v9 + v18;
          }

          v10 = [v6 countByEnumeratingWithState:&v30 objects:v35 count:16];
        }

        while (v10);
      }

      v5->_mean = v9 / v5->_count;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v19 = v6;
      v20 = [v19 countByEnumeratingWithState:&v26 objects:v34 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v27;
        v8 = 0.0;
        do
        {
          for (j = 0; j != v21; j = j + 1)
          {
            if (*v27 != v22)
            {
              objc_enumerationMutation(v19);
            }

            [*(*(&v26 + 1) + 8 * j) value];
            v8 = v8 + (v24 - v5->_mean) * (v24 - v5->_mean);
          }

          v21 = [v19 countByEnumeratingWithState:&v26 objects:v34 count:16];
        }

        while (v21);
      }

      v5->_std = v8 / v5->_count;
    }
  }

  return v5;
}

@end