@interface APBaseReport
+ (id)reportFrequencyStringKey;
- (APBaseReport)initWithReportDate:(id)date purpose:(int64_t)purpose reportEventCount:(id)count;
- (id)_createBranchForEnvironments;
- (id)_createProperties;
- (id)_eventCountDictionary;
- (void)setReportDate:(id)date;
@end

@implementation APBaseReport

- (APBaseReport)initWithReportDate:(id)date purpose:(int64_t)purpose reportEventCount:(id)count
{
  dateCopy = date;
  countCopy = count;
  v19.receiver = self;
  v19.super_class = APBaseReport;
  v10 = [(APBaseReport *)&v19 init];
  v11 = v10;
  if (v10)
  {
    v10->_purpose = purpose;
    v12 = [[APReportDate alloc] initWithDate:dateCopy];
    reportDate = v11->_reportDate;
    v11->_reportDate = v12;

    objc_storeStrong(&v11->_reportEventCount, count);
    _createProperties = [(APBaseReport *)v11 _createProperties];
    properties = v11->_properties;
    v11->_properties = _createProperties;

    _createBranchForEnvironments = [(APBaseReport *)v11 _createBranchForEnvironments];
    environmentToBranchDic = v11->_environmentToBranchDic;
    v11->_environmentToBranchDic = _createBranchForEnvironments;
  }

  return v11;
}

+ (id)reportFrequencyStringKey
{
  reportFrequency = [objc_opt_class() reportFrequency];
  v3 = @"1d";
  if (reportFrequency == 1902)
  {
    v3 = @"1w";
  }

  if (reportFrequency == 1903)
  {
    return @"1m";
  }

  else
  {
    return v3;
  }
}

- (void)setReportDate:(id)date
{
  objc_storeStrong(&self->_reportDate, date);
  dateCopy = date;
  _createProperties = [(APBaseReport *)self _createProperties];
  properties = self->_properties;
  self->_properties = _createProperties;

  _createBranchForEnvironments = [(APBaseReport *)self _createBranchForEnvironments];
  environmentToBranchDic = self->_environmentToBranchDic;
  self->_environmentToBranchDic = _createBranchForEnvironments;
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
  _eventCountDictionary = [(APBaseReport *)self _eventCountDictionary];
  if ([_eventCountDictionary count])
  {
    v20 = objc_alloc_init(NSMutableDictionary);
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    obj = [_eventCountDictionary allKeys];
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
          v8 = _eventCountDictionary;
          v9 = [_eventCountDictionary objectForKey:v6];
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

                branch = [*(*(&v21 + 1) + 8 * j) branch];
                if (branch)
                {
                  [v7 addObjectsFromArray:branch];
                }
              }

              v11 = [v9 countByEnumeratingWithState:&v21 objects:v29 count:16];
            }

            while (v11);
          }

          allObjects = [v7 allObjects];
          [v20 setObject:allObjects forKey:v6];

          _eventCountDictionary = v8;
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