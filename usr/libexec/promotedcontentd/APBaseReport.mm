@interface APBaseReport
+ (id)reportFrequencyStringKey;
- (APBaseReport)initWithReportDate:(id)a3 purpose:(int64_t)a4 reportEventCount:(id)a5;
- (id)_createBranchForEnvironments;
- (id)_createProperties;
- (id)_eventCountDictionary;
- (void)setReportDate:(id)a3;
@end

@implementation APBaseReport

- (APBaseReport)initWithReportDate:(id)a3 purpose:(int64_t)a4 reportEventCount:(id)a5
{
  v8 = a3;
  v9 = a5;
  v19.receiver = self;
  v19.super_class = APBaseReport;
  v10 = [(APBaseReport *)&v19 init];
  v11 = v10;
  if (v10)
  {
    v10->_purpose = a4;
    v12 = [[APReportDate alloc] initWithDate:v8];
    reportDate = v11->_reportDate;
    v11->_reportDate = v12;

    objc_storeStrong(&v11->_reportEventCount, a5);
    v14 = [(APBaseReport *)v11 _createProperties];
    properties = v11->_properties;
    v11->_properties = v14;

    v16 = [(APBaseReport *)v11 _createBranchForEnvironments];
    environmentToBranchDic = v11->_environmentToBranchDic;
    v11->_environmentToBranchDic = v16;
  }

  return v11;
}

+ (id)reportFrequencyStringKey
{
  v2 = [objc_opt_class() reportFrequency];
  v3 = @"1d";
  if (v2 == 1902)
  {
    v3 = @"1w";
  }

  if (v2 == 1903)
  {
    return @"1m";
  }

  else
  {
    return v3;
  }
}

- (void)setReportDate:(id)a3
{
  objc_storeStrong(&self->_reportDate, a3);
  v9 = a3;
  v5 = [(APBaseReport *)self _createProperties];
  properties = self->_properties;
  self->_properties = v5;

  v7 = [(APBaseReport *)self _createBranchForEnvironments];
  environmentToBranchDic = self->_environmentToBranchDic;
  self->_environmentToBranchDic = v7;
}

- (id)_createProperties
{
  v3 = NSStringFromSelector(a2);
  v4 = [NSString stringWithFormat:@"You must override %@ in a subclass", v3];
  APSimulateCrash();

  v5 = NSStringFromSelector(a2);
  v6 = [NSString stringWithFormat:@"You must override %@ in a subclass", v5];
  v7 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (id)_eventCountDictionary
{
  v3 = NSStringFromSelector(a2);
  v4 = [NSString stringWithFormat:@"You must override %@ in a subclass", v3];
  APSimulateCrash();

  v5 = NSStringFromSelector(a2);
  v6 = [NSString stringWithFormat:@"You must override %@ in a subclass", v5];
  v7 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (id)_createBranchForEnvironments
{
  v2 = [(APBaseReport *)self _eventCountDictionary];
  if ([v2 count])
  {
    v20 = objc_alloc_init(NSMutableDictionary);
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    obj = [v2 allKeys];
    v3 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v3)
    {
      v4 = v3;
      v19 = *v26;
      do
      {
        for (i = 0; i != v4; i = i + 1)
        {
          if (*v26 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v6 = *(*(&v25 + 1) + 8 * i);
          v7 = objc_alloc_init(NSMutableSet);
          v8 = v2;
          v9 = [v2 objectForKey:v6];
          v21 = 0u;
          v22 = 0u;
          v23 = 0u;
          v24 = 0u;
          v10 = [v9 countByEnumeratingWithState:&v21 objects:v29 count:16];
          if (v10)
          {
            v11 = v10;
            v12 = *v22;
            do
            {
              for (j = 0; j != v11; j = j + 1)
              {
                if (*v22 != v12)
                {
                  objc_enumerationMutation(v9);
                }

                v14 = [*(*(&v21 + 1) + 8 * j) branch];
                if (v14)
                {
                  [v7 addObjectsFromArray:v14];
                }
              }

              v11 = [v9 countByEnumeratingWithState:&v21 objects:v29 count:16];
            }

            while (v11);
          }

          v15 = [v7 allObjects];
          [v20 setObject:v15 forKey:v6];

          v2 = v8;
        }

        v4 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v4);
    }

    v16 = [NSDictionary dictionaryWithDictionary:v20];
  }

  else
  {
    v16 = objc_alloc_init(NSDictionary);
  }

  return v16;
}

@end