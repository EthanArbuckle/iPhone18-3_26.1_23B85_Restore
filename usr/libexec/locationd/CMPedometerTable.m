@interface CMPedometerTable
- (BOOL)isWalkNativeValueOutAvailable;
- (id)copyBins;
@end

@implementation CMPedometerTable

- (BOOL)isWalkNativeValueOutAvailable
{
  v3 = [(CMPedometerTable *)self binIndexForValueIn:*self->_binBoundariesWalk.__begin_];
  v4 = self->_binBoundariesWalk.__end_ - self->_binBoundariesWalk.__begin_;

  return [(CMPedometerTable *)self isNativeValueOutAvailableInBinsFromIndex:v3 withLength:v4];
}

- (id)copyBins
{
  objc_sync_enter(self);
  v3 = [[NSArray alloc] initWithArray:self->_bins];
  objc_sync_exit(self);
  return v3;
}

@end