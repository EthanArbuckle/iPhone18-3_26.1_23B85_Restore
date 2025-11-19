@interface AudioRouteMonitor
- (void)audioRouteChange:(id)a3;
- (void)dealloc;
- (void)initializeWithHandler:(__WiFiAudioRoute *)a3;
- (void)startMonitoring;
- (void)stopMonitoring;
@end

@implementation AudioRouteMonitor

- (void)initializeWithHandler:(__WiFiAudioRoute *)a3
{
  v5 = objc_autoreleasePoolPush();
  if (off_100298C40)
  {
    [off_100298C40 WFLog:3 message:{"%s: starting", "-[AudioRouteMonitor initializeWithHandler:]"}];
  }

  objc_autoreleasePoolPop(v5);
  [(AudioRouteMonitor *)self setAudioRouteHandler:a3];

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

- (void)audioRouteChange:(id)a3
{
  v3 = [(AudioRouteMonitor *)self audioRouteHandler];

  sub_100036664(v3);
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