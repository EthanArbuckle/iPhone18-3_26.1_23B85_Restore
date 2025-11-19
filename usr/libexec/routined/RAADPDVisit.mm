@interface RAADPDVisit
- (RAADPDVisit)init;
- (void)queryPeopleDensity:(id)a3;
- (void)queryProximityEvents:(id)a3;
@end

@implementation RAADPDVisit

- (RAADPDVisit)init
{
  if (self)
  {
    v3 = +[RAAdpdVisitProvider defaultProvider];
    visitProvider = self->_visitProvider;
    self->_visitProvider = v3;

    proximityEvents = self->_proximityEvents;
    self->_proximityEvents = &__NSArray0__struct;

    peopleCounts = self->_peopleCounts;
    self->_peopleCounts = &__NSArray0__struct;

    peopleDensities = self->_peopleDensities;
    self->_peopleDensities = &__NSArray0__struct;
  }

  return self;
}

- (void)queryProximityEvents:(id)a3
{
  v4 = a3;
  v20 = [v4 entryDate];
  v18 = v4;
  v5 = [v4 exitDate];
  v19 = objc_opt_new();
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v17 = self;
  v6 = [(RAAdpdVisitProvider *)self->_visitProvider allProximityEvents];
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    do
    {
      v10 = 0;
      do
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v21 + 1) + 8 * v10);
        v12 = objc_autoreleasePoolPush();
        v13 = [v11 startDate];
        if ([v13 compare:v5] == 1)
        {
          v14 = [v11 endDate];
          v15 = [v14 compare:v20];

          if (v15 == -1)
          {
            [(NSArray *)v19 addObject:v11];
          }
        }

        else
        {
        }

        objc_autoreleasePoolPop(v12);
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v8);
  }

  proximityEvents = v17->_proximityEvents;
  v17->_proximityEvents = v19;
}

- (void)queryPeopleDensity:(id)a3
{
  v4 = a3;
  v20 = [v4 entryDate];
  v18 = v4;
  v5 = [v4 exitDate];
  v19 = objc_opt_new();
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v17 = self;
  v6 = [(RAAdpdVisitProvider *)self->_visitProvider allDensityEvents];
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    do
    {
      v10 = 0;
      do
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v21 + 1) + 8 * v10);
        v12 = objc_autoreleasePoolPush();
        v13 = [v11 startDate];
        if ([v13 compare:v5] == 1)
        {
          v14 = [v11 endDate];
          v15 = [v14 compare:v20];

          if (v15 == -1)
          {
            [(NSArray *)v19 addObject:v11];
          }
        }

        else
        {
        }

        objc_autoreleasePoolPop(v12);
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v8);
  }

  peopleDensities = v17->_peopleDensities;
  v17->_peopleDensities = v19;
}

@end