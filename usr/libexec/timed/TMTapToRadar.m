@interface TMTapToRadar
- (TMTapToRadar)init;
- (void)dealloc;
@end

@implementation TMTapToRadar

- (TMTapToRadar)init
{
  v4.receiver = self;
  v4.super_class = TMTapToRadar;
  v2 = [(TMTapToRadar *)&v4 init];
  if (v2)
  {
    v2->_ttrQueue = dispatch_queue_create("com.apple.timed.tapToRadarQ", 0);
  }

  return v2;
}

- (void)dealloc
{
  dispatch_release(self->_ttrQueue);
  self->_ttrQueue = 0;
  v3.receiver = self;
  v3.super_class = TMTapToRadar;
  [(TMTapToRadar *)&v3 dealloc];
}

@end