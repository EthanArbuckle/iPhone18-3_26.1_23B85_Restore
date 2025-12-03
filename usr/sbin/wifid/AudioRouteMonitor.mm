@interface AudioRouteMonitor
- (void)audioRouteChange:(id)change;
- (void)dealloc;
- (void)initializeWithHandler:(__WiFiAudioRoute *)handler;
- (void)startMonitoring;
- (void)stopMonitoring;
@end

@implementation AudioRouteMonitor

- (void)initializeWithHandler:(__WiFiAudioRoute *)handler
{
  v5 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: starting", "-[AudioRouteMonitor initializeWithHandler:]"}];
  }

  objc_autoreleasePoolPop(v5);
  [(AudioRouteMonitor *)self setAudioRouteHandler:handler];

  [(AudioRouteMonitor *)self setMonitoring:0];
}

- (void)dealloc
{
  if ([(AudioRouteMonitor *)self monitoring])
  {
    [(AudioRouteMonitor *)self stopMonitoring];
  }

  v3.receiver = self;
  v3.super_class = AudioRouteMonitor;
  [(AudioRouteMonitor *)&v3 dealloc];
}

- (void)audioRouteChange:(id)change
{
  audioRouteHandler = [(AudioRouteMonitor *)self audioRouteHandler];

  sub_100036664(audioRouteHandler);
}

- (void)startMonitoring
{
  v3 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: adding observer", "-[AudioRouteMonitor startMonitoring]"}];
  }

  objc_autoreleasePoolPop(v3);
  [+[NSNotificationCenter defaultCenter](NSNotificationCenter addObserver:"addObserver:selector:name:object:" selector:self name:"audioRouteChange:" object:AVAudioSessionRouteChangeNotification, +[AVAudioSession sharedInstance]];

  [(AudioRouteMonitor *)self setMonitoring:1];
}

- (void)stopMonitoring
{
  v3 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: removing observer", "-[AudioRouteMonitor stopMonitoring]"}];
  }

  objc_autoreleasePoolPop(v3);
  [+[NSNotificationCenter defaultCenter](NSNotificationCenter removeObserver:"removeObserver:name:object:" name:self object:AVAudioSessionRouteChangeNotification, +[AVAudioSession sharedInstance]];

  [(AudioRouteMonitor *)self setMonitoring:0];
}

@end