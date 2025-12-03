@interface CLIndoorPrefetchRegion
- (BOOL)mergeLocationOfInterest:(const void *)interest clusterRadius:(double)radius;
- (id)initFromLOI:(const void *)i;
- (time_point<std::chrono::system_clock,)relevancy:()time_point<std:(std:()std:(1000000>>>)std :ratio<1 :chrono::duration<long)long :chrono::system_clock;
- (void)dealloc;
@end

@implementation CLIndoorPrefetchRegion

- (id)initFromLOI:(const void *)i
{
  v4.receiver = self;
  v4.super_class = CLIndoorPrefetchRegion;
  if ([(CLIndoorPrefetchRegion *)&v4 init])
  {
    operator new();
  }

  return 0;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CLIndoorPrefetchRegion;
  [(CLIndoorPrefetchRegion *)&v3 dealloc];
}

- (BOOL)mergeLocationOfInterest:(const void *)interest clusterRadius:(double)radius
{
  [(GeographicCoordinate *)self->_latlon latitude];
  v8 = v7;
  [(GeographicCoordinate *)self->_latlon longitude];
  v10 = sub_100117154(v8, v9, *interest, *(interest + 1));
  if (v10 <= radius)
  {
    sub_10037DE10(self->_baseOfOperations.__ptr_, interest);
  }

  return v10 <= radius;
}

- (time_point<std::chrono::system_clock,)relevancy:()time_point<std:(std:()std:(1000000>>>)std :ratio<1 :chrono::duration<long)long :chrono::system_clock
{
  ptr = self->_baseOfOperations.__ptr_;
  if (*(ptr + 32) == 1)
  {
    return *(ptr + 40);
  }

  return std;
}

@end