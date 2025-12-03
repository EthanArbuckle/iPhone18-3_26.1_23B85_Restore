@interface CMStrideCalDataContainer
- (CMStrideCalDataContainer)initWithCoder:(id)coder;
- (CMStrideCalDataContainer)initWithTrack:(id)track session:(int64_t)session;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CMStrideCalDataContainer

- (CMStrideCalDataContainer)initWithTrack:(id)track session:(int64_t)session
{
  v8.receiver = self;
  v8.super_class = CMStrideCalDataContainer;
  v6 = [(CMStrideCalDataContainer *)&v8 init];
  if (v6)
  {
    v6->_track = track;
    v6->_session = session;
    v6->_gradient = 0.0;
    v6->_gradientValidity = -1;
  }

  return v6;
}

- (CMStrideCalDataContainer)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = CMStrideCalDataContainer;
  v4 = [(CMStrideCalDataContainer *)&v7 init];
  if (v4)
  {
    v4->_track = [coder decodeObjectOfClass:objc_opt_class() forKey:@"kCMStrideCalDataContainerKeyTrack"];
    v4->_session = [coder decodeIntegerForKey:@"kCMStrideCalDataContainerKeySession"];
    [coder decodeDoubleForKey:@"kCMStrideCalDataContainerKeyGradient"];
    v4->_gradient = v5;
    v4->_gradientValidity = [coder decodeIntegerForKey:@"kCMStrideCalDataContainerKeyGradientValidity"];
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeObject:self->_track forKey:@"kCMStrideCalDataContainerKeyTrack"];
  [coder encodeInteger:self->_session forKey:@"kCMStrideCalDataContainerKeySession"];
  [coder encodeDouble:@"kCMStrideCalDataContainerKeyGradient" forKey:self->_gradient];
  gradientValidity = self->_gradientValidity;

  [coder encodeInteger:gradientValidity forKey:@"kCMStrideCalDataContainerKeyGradientValidity"];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CMStrideCalDataContainer;
  [(CMStrideCalDataContainer *)&v3 dealloc];
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  track = [(CMStrideCalDataContainer *)self track];
  v6 = [CMWorkout workoutName:[(CMStrideCalDataContainer *)self session]];
  [(CMStrideCalDataContainer *)self gradient];
  return [NSString stringWithFormat:@"%@, Track, %@, Session, %@, Gradient, %0.6f, GradientValid, %ld", v4, track, v6, v7, [(CMStrideCalDataContainer *)self gradientValidity]];
}

@end