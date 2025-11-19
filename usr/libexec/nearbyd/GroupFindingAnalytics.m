@interface GroupFindingAnalytics
- (id)descriptions;
- (void)resetAnalytics;
- (void)submitAnalytics;
@end

@implementation GroupFindingAnalytics

- (void)resetAnalytics
{
  *&self->_1Finder1Findee = 0;
  v3 = objc_opt_new();
  findeeRequestAt0Finder2Findee = self->_findeeRequestAt0Finder2Findee;
  self->_findeeRequestAt0Finder2Findee = v3;

  v5 = objc_opt_new();
  findeeRequestAt1Finder1Findee = self->_findeeRequestAt1Finder1Findee;
  self->_findeeRequestAt1Finder1Findee = v5;

  v7 = objc_opt_new();
  finderRequestAt0Finder2Findee = self->_finderRequestAt0Finder2Findee;
  self->_finderRequestAt0Finder2Findee = v7;

  v9 = objc_opt_new();
  findeeRequestAt1Finder2Findee = self->_findeeRequestAt1Finder2Findee;
  self->_findeeRequestAt1Finder2Findee = v9;
}

- (void)submitAnalytics
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = [NSNumber numberWithBool:self->_0Finder2Findee];
  [v3 setObject:v4 forKey:@"0Finder2Findee"];

  v5 = [NSNumber numberWithBool:self->_1Finder1Findee];
  [v3 setObject:v5 forKey:@"1Finder1Findee"];

  v6 = [NSNumber numberWithBool:self->_1Finder2Findee];
  [v3 setObject:v6 forKey:@"1Finder2Findee"];

  v7 = [NSNumber numberWithBool:self->_reciprocalFinding];
  [v3 setObject:v7 forKey:@"ReciprocalFinding"];

  v8 = [NSNumber numberWithInt:[(NSMutableSet *)self->_findeeRequestAt0Finder2Findee count]];
  [v3 setObject:v8 forKey:@"NumberOfUniqueFindeeRequestsAt0Finder2Findee"];

  v9 = [NSNumber numberWithInt:[(NSMutableSet *)self->_finderRequestAt0Finder2Findee count]];
  [v3 setObject:v9 forKey:@"NumberOfUniqueFinderRequestsAt0Finder2Findee"];

  v10 = [NSNumber numberWithInt:[(NSMutableSet *)self->_findeeRequestAt1Finder1Findee count]];
  [v3 setObject:v10 forKey:@"NumberOfUniqueFindeeRequestsAt1Finder1Findee"];

  v11 = [NSNumber numberWithInt:[(NSMutableSet *)self->_findeeRequestAt1Finder2Findee count]];
  [v3 setObject:v11 forKey:@"NumberOfUniqueFinderRequestsAt1Finder2Findee"];

  v12 = [v3 mutableCopy];
  v13 = qword_1009ECD20;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = [@"com.apple.nearbyinteraction.groupfinding" description];
    *buf = 138412290;
    v17 = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "#ni-ca,send group finding  analytics event:\n%@\n", buf, 0xCu);
  }

  v15 = v12;
  AnalyticsSendEventLazy();
  [(GroupFindingAnalytics *)self resetAnalytics];
}

- (id)descriptions
{
  v3 = objc_opt_new();
  if (self->_1Finder1Findee)
  {
    v4 = "YES";
  }

  else
  {
    v4 = "NO";
  }

  v5 = [NSString stringWithFormat:@"(1, 1): %s", v4];
  [v3 addObject:v5];

  if (self->_0Finder2Findee)
  {
    v6 = "YES";
  }

  else
  {
    v6 = "NO";
  }

  v7 = [NSString stringWithFormat:@"(0, 2): %s", v6];
  [v3 addObject:v7];

  if (self->_reciprocalFinding)
  {
    v8 = "YES";
  }

  else
  {
    v8 = "NO";
  }

  v9 = [NSString stringWithFormat:@"(1<->1): %s", v8];
  [v3 addObject:v9];

  if (self->_1Finder2Findee)
  {
    v10 = "YES";
  }

  else
  {
    v10 = "NO";
  }

  v11 = [NSString stringWithFormat:@"(1, 2): %s", v10];
  [v3 addObject:v11];

  if ([(NSMutableSet *)self->_findeeRequestAt0Finder2Findee count])
  {
    v12 = "YES";
  }

  else
  {
    v12 = "NO";
  }

  v13 = [NSString stringWithFormat:@"(0, 2) + Findee: %s", v12];
  [v3 addObject:v13];

  if ([(NSMutableSet *)self->_finderRequestAt0Finder2Findee count])
  {
    v14 = "YES";
  }

  else
  {
    v14 = "NO";
  }

  v15 = [NSString stringWithFormat:@"(0, 2) + Finder: %s", v14];
  [v3 addObject:v15];

  if ([(NSMutableSet *)self->_findeeRequestAt1Finder1Findee count])
  {
    v16 = "YES";
  }

  else
  {
    v16 = "NO";
  }

  v17 = [NSString stringWithFormat:@"(1, 1) + Findee: %s", v16];
  [v3 addObject:v17];

  if ([(NSMutableSet *)self->_findeeRequestAt1Finder2Findee count])
  {
    v18 = "YES";
  }

  else
  {
    v18 = "NO";
  }

  v19 = [NSString stringWithFormat:@"(1, 2) + Findee: %s", v18];
  [v3 addObject:v19];

  return v3;
}

@end