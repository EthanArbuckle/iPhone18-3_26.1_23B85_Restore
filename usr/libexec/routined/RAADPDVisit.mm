@interface RAADPDVisit
- (RAADPDVisit)init;
- (void)queryPeopleDensity:(id)density;
- (void)queryProximityEvents:(id)events;
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

- (void)queryProximityEvents:(id)events
{
  eventsCopy = events;
  entryDate = [eventsCopy entryDate];
  v18 = eventsCopy;
  exitDate = [eventsCopy exitDate];
  v19 = objc_opt_new();
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  selfCopy = self;
  allProximityEvents = [(RAAdpdVisitProvider *)self->_visitProvider allProximityEvents];
  v7 = [allProximityEvents countByEnumeratingWithState:&v21 objects:v25 count:16];
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
          objc_enumerationMutation(allProximityEvents);
        }

        v11 = *(*(&v21 + 1) + 8 * v10);
        v12 = objc_autoreleasePoolPush();
        startDate = [v11 startDate];
        if ([startDate compare:exitDate] == 1)
        {
          endDate = [v11 endDate];
          v15 = [endDate compare:entryDate];

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
      v8 = [allProximityEvents countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v8);
  }

  proximityEvents = selfCopy->_proximityEvents;
  selfCopy->_proximityEvents = v19;
}

- (void)queryPeopleDensity:(id)density
{
  densityCopy = density;
  entryDate = [densityCopy entryDate];
  v18 = densityCopy;
  exitDate = [densityCopy exitDate];
  v19 = objc_opt_new();
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  selfCopy = self;
  allDensityEvents = [(RAAdpdVisitProvider *)self->_visitProvider allDensityEvents];
  v7 = [allDensityEvents countByEnumeratingWithState:&v21 objects:v25 count:16];
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
          objc_enumerationMutation(allDensityEvents);
        }

        v11 = *(*(&v21 + 1) + 8 * v10);
        v12 = objc_autoreleasePoolPush();
        startDate = [v11 startDate];
        if ([startDate compare:exitDate] == 1)
        {
          endDate = [v11 endDate];
          v15 = [endDate compare:entryDate];

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
      v8 = [allDensityEvents countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v8);
  }

  peopleDensities = selfCopy->_peopleDensities;
  selfCopy->_peopleDensities = v19;
}

@end