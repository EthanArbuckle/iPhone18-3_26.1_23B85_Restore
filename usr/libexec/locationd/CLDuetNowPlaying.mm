@interface CLDuetNowPlaying
- (CLDuetNowPlaying)initWithBundleId:(id)id status:(id)status track:(id)track outputDeviceIDs:(id)ds;
- (void)dealloc;
@end

@implementation CLDuetNowPlaying

- (CLDuetNowPlaying)initWithBundleId:(id)id status:(id)status track:(id)track outputDeviceIDs:(id)ds
{
  v13.receiver = self;
  v13.super_class = CLDuetNowPlaying;
  v10 = [(CLDuetNowPlaying *)&v13 init];
  v11 = v10;
  if (v10)
  {
    [(CLDuetNowPlaying *)v10 setBundleId:id];
    [(CLDuetNowPlaying *)v11 setStatus:status];
    [(CLDuetNowPlaying *)v11 setTrack:track];
    [(CLDuetNowPlaying *)v11 setOutputDeviceIDs:ds];
  }

  return v11;
}

- (void)dealloc
{
  [(CLDuetNowPlaying *)self setBundleId:0];
  [(CLDuetNowPlaying *)self setStatus:0];
  [(CLDuetNowPlaying *)self setTrack:0];
  [(CLDuetNowPlaying *)self setOutputDeviceIDs:0];
  v3.receiver = self;
  v3.super_class = CLDuetNowPlaying;
  [(CLDuetNowPlaying *)&v3 dealloc];
}

@end