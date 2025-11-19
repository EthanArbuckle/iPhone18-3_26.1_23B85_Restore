@interface CLDuetNowPlaying
- (CLDuetNowPlaying)initWithBundleId:(id)a3 status:(id)a4 track:(id)a5 outputDeviceIDs:(id)a6;
- (void)dealloc;
@end

@implementation CLDuetNowPlaying

- (CLDuetNowPlaying)initWithBundleId:(id)a3 status:(id)a4 track:(id)a5 outputDeviceIDs:(id)a6
{
  v13.receiver = self;
  v13.super_class = CLDuetNowPlaying;
  v10 = [(CLDuetNowPlaying *)&v13 init];
  v11 = v10;
  if (v10)
  {
    [(CLDuetNowPlaying *)v10 setBundleId:a3];
    [(CLDuetNowPlaying *)v11 setStatus:a4];
    [(CLDuetNowPlaying *)v11 setTrack:a5];
    [(CLDuetNowPlaying *)v11 setOutputDeviceIDs:a6];
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