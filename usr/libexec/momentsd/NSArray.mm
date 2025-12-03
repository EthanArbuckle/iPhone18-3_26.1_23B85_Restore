@interface NSArray
- (double)getTotalDurationOfMOEventBundleArray;
- (id)getDurationOfMOEventArray;
- (id)getTimeSpanOfMOEventBundleArray;
- (id)sortMOEventArrayByEndDate;
- (id)sortMOEventArrayByStartDate;
- (id)sortMOEventBundleArrayByEndDate;
- (id)sortMOEventBundleArrayByStartDate;
@end

@implementation NSArray

- (id)sortMOEventArrayByStartDate
{
  v3 = [[NSSortDescriptor alloc] initWithKey:@"startDate" ascending:1];
  v7 = v3;
  v4 = [NSArray arrayWithObjects:&v7 count:1];
  v5 = [(NSArray *)self sortedArrayUsingDescriptors:v4];

  return v5;
}

- (id)sortMOEventArrayByEndDate
{
  v3 = [[NSSortDescriptor alloc] initWithKey:@"endDate" ascending:1];
  v7 = v3;
  v4 = [NSArray arrayWithObjects:&v7 count:1];
  v5 = [(NSArray *)self sortedArrayUsingDescriptors:v4];

  return v5;
}

- (id)getDurationOfMOEventArray
{
  sortMOEventArrayByStartDate = [(NSArray *)self sortMOEventArrayByStartDate];
  firstObject = [sortMOEventArrayByStartDate firstObject];

  startDate = [firstObject startDate];
  sortMOEventArrayByEndDate = [(NSArray *)self sortMOEventArrayByEndDate];
  lastObject = [sortMOEventArrayByEndDate lastObject];

  endDate = [lastObject endDate];
  v9 = [[NSDateInterval alloc] initWithStartDate:startDate endDate:endDate];

  return v9;
}

- (id)sortMOEventBundleArrayByStartDate
{
  v3 = [[NSSortDescriptor alloc] initWithKey:@"startDate" ascending:1];
  v7 = v3;
  v4 = [NSArray arrayWithObjects:&v7 count:1];
  v5 = [(NSArray *)self sortedArrayUsingDescriptors:v4];

  return v5;
}

- (id)sortMOEventBundleArrayByEndDate
{
  v3 = [[NSSortDescriptor alloc] initWithKey:@"endDate" ascending:1];
  v7 = v3;
  v4 = [NSArray arrayWithObjects:&v7 count:1];
  v5 = [(NSArray *)self sortedArrayUsingDescriptors:v4];

  return v5;
}

- (id)getTimeSpanOfMOEventBundleArray
{
  sortMOEventBundleArrayByStartDate = [(NSArray *)self sortMOEventBundleArrayByStartDate];
  firstObject = [sortMOEventBundleArrayByStartDate firstObject];

  startDate = [firstObject startDate];
  sortMOEventBundleArrayByEndDate = [(NSArray *)self sortMOEventBundleArrayByEndDate];
  lastObject = [sortMOEventBundleArrayByEndDate lastObject];

  endDate = [lastObject endDate];
  v9 = [[NSDateInterval alloc] initWithStartDate:startDate endDate:endDate];

  return v9;
}

int64_t __46__NSArray_MOExtensions__sortBundlesByTimespan__block_invoke(id a1, MOEventBundle *a2, MOEventBundle *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [NSDateInterval alloc];
  v7 = [(MOEventBundle *)v4 startDate];
  v8 = [(MOEventBundle *)v4 endDate];
  v9 = [v6 initWithStartDate:v7 endDate:v8];
  [v9 duration];
  v11 = v10;

  v12 = [NSDateInterval alloc];
  v13 = [(MOEventBundle *)v5 startDate];
  v14 = [(MOEventBundle *)v5 endDate];
  v15 = [v12 initWithStartDate:v13 endDate:v14];
  [v15 duration];
  v17 = v16;

  if (v11 >= v17)
  {
    if (v11 <= v17)
    {
      v19 = [(MOEventBundle *)v4 bundleIdentifier];
      v20 = [(MOEventBundle *)v5 bundleIdentifier];
      v18 = [v19 compare:v20];
    }

    else
    {
      v18 = 1;
    }
  }

  else
  {
    v18 = -1;
  }

  return v18;
}

- (double)getTotalDurationOfMOEventBundleArray
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  selfCopy = self;
  v3 = [(NSArray *)selfCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v16;
    v6 = 0.0;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(selfCopy);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        v9 = [NSDateInterval alloc];
        startDate = [v8 startDate];
        endDate = [v8 endDate];
        v12 = [v9 initWithStartDate:startDate endDate:endDate];
        [v12 duration];
        v6 = v6 + v13;
      }

      v4 = [(NSArray *)selfCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v4);
  }

  else
  {
    v6 = 0.0;
  }

  return v6;
}

@end