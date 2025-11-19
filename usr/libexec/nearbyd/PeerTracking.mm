@interface PeerTracking
- (PeerTracking)init;
- (void)cacheCharacteristics;
- (void)changeConnectionState:(unsigned __int8)a3;
@end

@implementation PeerTracking

- (PeerTracking)init
{
  v10.receiver = self;
  v10.super_class = PeerTracking;
  v2 = [(PeerTracking *)&v10 init];
  if (v2)
  {
    v3 = objc_opt_new();
    listeners = v2->_listeners;
    v2->_listeners = v3;

    v2->_connectionState = 0;
    v2->_initTime = sub_100005288();
    v2->_timeOfLatestConnectionState = sub_100005288();
    v5 = objc_opt_new();
    resultConfigCharacteristics = v2->_resultConfigCharacteristics;
    v2->_resultConfigCharacteristics = v5;

    v7 = objc_opt_new();
    cachedConfigCharacteristics = v2->_cachedConfigCharacteristics;
    v2->_cachedConfigCharacteristics = v7;

    v2->_numCharacteristicsLeftToRead = 0;
    v2->_readingMultiConfigCharacteristics = 0;
  }

  return v2;
}

- (void)changeConnectionState:(unsigned __int8)a3
{
  if (self->_connectionState != a3)
  {
    self->_connectionState = a3;
    self->_timeOfLatestConnectionState = sub_100005288();
  }
}

- (void)cacheCharacteristics
{
  [(NSMutableSet *)self->_cachedConfigCharacteristics unionSet:self->_resultConfigCharacteristics];
  resultConfigCharacteristics = self->_resultConfigCharacteristics;

  [(NSMutableSet *)resultConfigCharacteristics removeAllObjects];
}

@end