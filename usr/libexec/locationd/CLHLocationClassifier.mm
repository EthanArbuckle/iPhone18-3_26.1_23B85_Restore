@interface CLHLocationClassifier
- (BOOL)shouldFetchLocationsOfInterest;
- (double)getLocationsOfInterestFetchTimeInterval;
@end

@implementation CLHLocationClassifier

- (double)getLocationsOfInterestFetchTimeInterval
{
  result = 86400.0;
  if (self->_locationsOfInterestFetchError)
  {
    return 10.0;
  }

  return result;
}

- (BOOL)shouldFetchLocationsOfInterest
{
  if (!self->_lastLocationsOfInterestFetchDate)
  {
    return 1;
  }

  [(CLHLocationClassifier *)self getLocationsOfInterestFetchTimeInterval];
  v4 = [[NSDate alloc] initWithTimeInterval:self->_lastLocationsOfInterestFetchDate sinceDate:v3];
  v5 = [v4 compare:{+[NSDate date](NSDate, "date")}] == -1;

  return v5;
}

@end