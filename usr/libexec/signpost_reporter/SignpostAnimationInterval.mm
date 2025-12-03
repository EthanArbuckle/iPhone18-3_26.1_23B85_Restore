@interface SignpostAnimationInterval
- (id)coreAnalyticsPayload;
@end

@implementation SignpostAnimationInterval

- (id)coreAnalyticsPayload
{
  v8.receiver = self;
  v8.super_class = SignpostAnimationInterval;
  coreAnalyticsPayload = [(SignpostAnimationInterval *)&v8 coreAnalyticsPayload];
  if (coreAnalyticsPayload)
  {
    [(SignpostAnimationInterval *)self glitchTimeRatio];
    v4 = [NSNumber numberWithDouble:?];
    [coreAnalyticsPayload setObject:v4 forKeyedSubscript:@"FrameRate"];

    [(SignpostAnimationInterval *)self glitchTimeRatioMsPerS];
    v5 = [NSNumber numberWithDouble:?];
    [coreAnalyticsPayload setObject:v5 forKeyedSubscript:@"HitchMsPerSec"];

    [(SignpostAnimationInterval *)self nonFirstFrameContributedGlitchTimeRatioAdjustedMsPerS];
    v6 = [NSNumber numberWithDouble:?];
    [coreAnalyticsPayload setObject:v6 forKeyedSubscript:@"NonFirstFrameHitchAdjustedMsPerSec"];
  }

  return coreAnalyticsPayload;
}

@end