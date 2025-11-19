@interface RPBroadcastConfiguration
- (RPBroadcastConfiguration)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RPBroadcastConfiguration

- (RPBroadcastConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = RPBroadcastConfiguration;
  v5 = [(RPBroadcastConfiguration *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"clipDuration"];
    [v6 doubleValue];
    v5->_clipDuration = v7;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"videoCompressionProperties"];
    videoCompressionProperties = v5->_videoCompressionProperties;
    v5->_videoCompressionProperties = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  v4 = [NSNumber numberWithDouble:self->_clipDuration];
  [v7 encodeObject:v4 forKey:@"clipDuration"];

  v5 = [(NSDictionary *)self->_videoCompressionProperties allValues];
  v6 = [v5 count];

  if (v6)
  {
    [v7 encodeObject:self->_videoCompressionProperties forKey:@"videoCompressionProperties"];
  }
}

@end