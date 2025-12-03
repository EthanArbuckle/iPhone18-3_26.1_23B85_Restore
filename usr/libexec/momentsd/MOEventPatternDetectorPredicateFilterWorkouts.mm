@interface MOEventPatternDetectorPredicateFilterWorkouts
- (MOEventPatternDetectorPredicateFilterWorkouts)init;
- (id)filterEvents:(id)events;
@end

@implementation MOEventPatternDetectorPredicateFilterWorkouts

- (MOEventPatternDetectorPredicateFilterWorkouts)init
{
  v6.receiver = self;
  v6.super_class = MOEventPatternDetectorPredicateFilterWorkouts;
  v2 = [(MOEventPatternDetectorPredicateFilterWorkouts *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

- (id)filterEvents:(id)events
{
  eventsCopy = events;
  v4 = objc_opt_new();
  v5 = [NSPredicate predicateWithFormat:@"%K = %lu AND %K = %lu AND %K != %@", @"category", 2, @"provider", 1, @"workoutType", @"HKWorkoutActivityTypeCooldown"];
  v6 = [eventsCopy filteredArrayUsingPredicate:v5];

  v7 = _mo_log_facility_get_os_log(&MOLogFacilityPatternDetection);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v15 = [v6 count];
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Found %lu workout events", buf, 0xCu);
  }

  v8 = [[NSSortDescriptor alloc] initWithKey:@"startDate" ascending:1];
  v13 = v8;
  v9 = [NSArray arrayWithObjects:&v13 count:1];
  v10 = [v6 sortedArrayUsingDescriptors:v9];

  if ([v6 count])
  {
    [v4 addObject:v10];
    v11 = v4;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end