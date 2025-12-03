@interface DetailsViewAnalytics
- (DetailsViewAnalytics)initWithCurrentTime:(double)time;
- (void)resetAnalytics;
- (void)submitAnalytics;
- (void)updateDistanceAnalytics:(int)analytics;
- (void)updateTimeAnalytics:(int)analytics currentTime:(double)time;
- (void)updateWithMostRecentRawDistance:(double)distance;
@end

@implementation DetailsViewAnalytics

- (DetailsViewAnalytics)initWithCurrentTime:(double)time
{
  v6.receiver = self;
  v6.super_class = DetailsViewAnalytics;
  v4 = [(DetailsViewAnalytics *)&v6 init];
  [(DetailsViewAnalytics *)v4 resetAnalytics];
  v4->_timeAtContainerCreation = time;
  return v4;
}

- (void)updateDistanceAnalytics:(int)analytics
{
  switch(analytics)
  {
    case 3:
      distanceAtEndFinding = self->_distanceAtEndFinding;
      if (distanceAtEndFinding == -1.0)
      {
        distanceAtEndFinding = self->_mostRecentDistance;
      }

      self->_distanceAtEndFinding = distanceAtEndFinding;
      break;
    case 2:
      distanceAtFindButtonPressed = self->_distanceAtFindButtonPressed;
      if (distanceAtFindButtonPressed == -1.0)
      {
        distanceAtFindButtonPressed = self->_mostRecentDistance;
      }

      self->_distanceAtFindButtonPressed = distanceAtFindButtonPressed;
      break;
    case 1:
      distanceAtFindButtonAvailable = self->_distanceAtFindButtonAvailable;
      if (distanceAtFindButtonAvailable == -1.0)
      {
        distanceAtFindButtonAvailable = self->_mostRecentDistance;
      }

      self->_distanceAtFindButtonAvailable = distanceAtFindButtonAvailable;
      break;
  }
}

- (void)updateTimeAnalytics:(int)analytics currentTime:(double)time
{
  if (analytics <= 3)
  {
    v4 = (self + (8 * analytics));
    if (v4[2] != -1.0)
    {
      time = v4[2];
    }

    v4[2] = time;
  }
}

- (void)updateWithMostRecentRawDistance:(double)distance
{
  if (self->_distanceAtDiscovery == -1.0)
  {
    self->_distanceAtDiscovery = distance;
  }
}

- (void)resetAnalytics
{
  v3 = qword_1009ECD20;
  if (os_log_type_enabled(qword_1009ECD20, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#ni-ca,CoreAnalytics: resetting analytics", v9, 2u);
  }

  __asm { FMOV            V0.2D, #-1.0 }

  *&self->_distanceAtDiscovery = _Q0;
  *&self->_distanceAtFindButtonPressed = _Q0;
  *&self->_timeAtDiscovery = _Q0;
  *&self->_timeAtFindButtonPressed = _Q0;
  self->_mostRecentDistance = -1.0;
  self->_enteredFromActiveFindingUI = 0;
}

- (void)submitAnalytics
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = [NSNumber numberWithBool:self->_enteredFromActiveFindingUI];
  [v3 setObject:v4 forKey:@"EnteredFromActiveFindingUI"];

  timeAtDiscovery = self->_timeAtDiscovery;
  v6 = -1.0;
  if (timeAtDiscovery != -1.0)
  {
    v6 = timeAtDiscovery - self->_timeAtContainerCreation;
  }

  v7 = [NSNumber numberWithDouble:v6];
  [v3 setObject:v7 forKey:@"DeltaTimeFromContainerCreationToDiscovery"];

  timeAtFindButtonAvailable = self->_timeAtFindButtonAvailable;
  v9 = -1.0;
  if (timeAtFindButtonAvailable != -1.0)
  {
    v9 = timeAtFindButtonAvailable - self->_timeAtContainerCreation;
  }

  v10 = [NSNumber numberWithDouble:v9];
  [v3 setObject:v10 forKey:@"DeltaTimeFromContainerCreationToFindButtonAvailable"];

  timeAtFindButtonPressed = self->_timeAtFindButtonPressed;
  v12 = -1.0;
  if (timeAtFindButtonPressed != -1.0)
  {
    v12 = timeAtFindButtonPressed - self->_timeAtContainerCreation;
  }

  v13 = [NSNumber numberWithDouble:v12];
  [v3 setObject:v13 forKey:@"DeltaTimeFromContainerCreationToFindButtonPressed"];

  v14 = self->_timeAtFindButtonAvailable;
  v15 = -1.0;
  if (v14 != -1.0)
  {
    v15 = v14 - self->_timeAtDiscovery;
  }

  v16 = [NSNumber numberWithDouble:v15];
  [v3 setObject:v16 forKey:@"DeltaTimeFromDiscoveryToFindButtonAvailable"];

  v17 = self->_timeAtFindButtonPressed;
  v18 = -1.0;
  if (v17 != -1.0)
  {
    v18 = v17 - self->_timeAtFindButtonAvailable;
  }

  v19 = [NSNumber numberWithDouble:v18];
  [v3 setObject:v19 forKey:@"DeltaTimeFromFindButtonAvailableToFindButtonPressed"];

  v20 = [NSNumber numberWithDouble:self->_distanceAtDiscovery];
  [v3 setObject:v20 forKey:@"DistanceAtDiscovery"];

  v21 = [NSNumber numberWithDouble:self->_distanceAtFindButtonAvailable];
  [v3 setObject:v21 forKey:@"DistanceAtFindButtonAvailable"];

  v22 = [NSNumber numberWithDouble:self->_distanceAtFindButtonPressed];
  [v3 setObject:v22 forKey:@"DistanceAtPressFind"];

  distanceAtEndFinding = self->_distanceAtEndFinding;
  v24 = -1.0;
  if (distanceAtEndFinding != -1.0)
  {
    distanceAtFindButtonPressed = self->_distanceAtFindButtonPressed;
    if (distanceAtFindButtonPressed != -1.0)
    {
      v24 = vabdd_f64(distanceAtEndFinding, distanceAtFindButtonPressed);
    }
  }

  v26 = [NSNumber numberWithDouble:v24];
  [v3 setObject:v26 forKey:@"DistanceBetweenStartAndEndFinding"];

  timeAtFindingSessionEnd = self->_timeAtFindingSessionEnd;
  v28 = -1.0;
  if (timeAtFindingSessionEnd != -1.0)
  {
    v29 = self->_timeAtFindButtonPressed;
    if (v29 != -1.0)
    {
      v28 = timeAtFindingSessionEnd - v29;
    }
  }

  v30 = [NSNumber numberWithDouble:v28];
  [v3 setObject:v30 forKey:@"FindingTime"];

  v31 = [v3 mutableCopy];
  v32 = qword_1009ECD20;
  if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
  {
    v33 = [v31 description];
    *buf = 138412290;
    v36 = v33;
    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "#ni-ca,send find button availability analytics event:\n%@\n", buf, 0xCu);
  }

  v34 = v31;
  AnalyticsSendEventLazy();
  [(DetailsViewAnalytics *)self resetAnalytics];
}

@end