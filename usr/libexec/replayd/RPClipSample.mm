@interface RPClipSample
- (RPClipSample)init;
@end

@implementation RPClipSample

- (RPClipSample)init
{
  v5.receiver = self;
  v5.super_class = RPClipSample;
  v2 = [(RPClipSample *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(RPClipSample *)v2 setSampleBuffer:0];
    [(RPClipSample *)v3 setSeconds:0.0];
    [(RPClipSample *)v3 setIsKeyFrame:0];
  }

  return v3;
}

@end