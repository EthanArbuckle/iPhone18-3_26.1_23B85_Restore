@interface WiFiDriverTriggeredTTR
+ (id)sharedWiFiDriverTriggeredTTRManagerwithStringRef:(__CFString *)ref withInterval:(double)interval;
- (BOOL)WiFiDriverTriggeredTTRForReason:(id)reason;
- (BOOL)WiFiDriverTriggeredTTRHandler:(id)handler;
- (WiFiDriverTriggeredTTR)initWithWiFiManagerwithStringRef:(__CFString *)ref withInterval:(double)interval;
- (id)allocWithStringRef:(__CFString *)ref withInterval:(double)interval;
@end

@implementation WiFiDriverTriggeredTTR

+ (id)sharedWiFiDriverTriggeredTTRManagerwithStringRef:(__CFString *)ref withInterval:(double)interval
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100108138;
  v6[3] = &unk_10025EE08;
  v6[4] = ref;
  *&v6[5] = interval;
  if (qword_100298AD8 != -1)
  {
    dispatch_once(&qword_100298AD8, v6);
  }

  v4 = qword_100298AD0;

  return v4;
}

- (WiFiDriverTriggeredTTR)initWithWiFiManagerwithStringRef:(__CFString *)ref withInterval:(double)interval
{
  v13.receiver = self;
  v13.super_class = WiFiDriverTriggeredTTR;
  v6 = [(WiFiDriverTriggeredTTR *)&v13 init];
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = +[NSMutableDictionary dictionary];
  [(WiFiDriverTriggeredTTR *)v6 setLastTriggeredTTR:v7];

  lastTriggeredTTR = [(WiFiDriverTriggeredTTR *)v6 lastTriggeredTTR];

  if (!lastTriggeredTTR)
  {
    v11 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: null self._lastTriggeredTTR", "-[WiFiDriverTriggeredTTR initWithWiFiManagerwithStringRef:withInterval:]"}];
    }

    goto LABEL_8;
  }

  v9 = [(WiFiDriverTriggeredTTR *)v6 allocWithStringRef:ref withInterval:interval];
  [(WiFiDriverTriggeredTTR *)v6 setSoftError:v9];

  softError = [(WiFiDriverTriggeredTTR *)v6 softError];

  if (!softError)
  {
    v11 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: Unable to create softError object\n", "-[WiFiDriverTriggeredTTR initWithWiFiManagerwithStringRef:withInterval:]"}];
    }

LABEL_8:
    objc_autoreleasePoolPop(v11);
LABEL_9:

    return 0;
  }

  return v6;
}

- (id)allocWithStringRef:(__CFString *)ref withInterval:(double)interval
{
  if (!MGGetBoolAnswer())
  {
    return 0;
  }

  if (interval < 0.0)
  {
    interval = 86400.0;
  }

  v12[0] = @"maxUIActions";
  v6 = [NSNumber numberWithInteger:5];
  v13[0] = v6;
  v12[1] = @"intervalForMaxUIActions";
  v7 = [NSNumber numberWithDouble:interval];
  v13[1] = v7;
  v12[2] = @"maxOccurrences";
  v8 = [NSNumber numberWithInteger:100];
  v13[2] = v8;
  v9 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:3];

  v10 = [[WiFiSoftError alloc] initWithName:ref andParams:v9];
  return v10;
}

- (BOOL)WiFiDriverTriggeredTTRHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [handlerCopy objectForKey:@"DRIVER_TTR_Reason"];
  v6 = v5;
  if (!v5)
  {
    v8 = 0;
    goto LABEL_7;
  }

  intValue = [v5 intValue];
  v8 = [handlerCopy objectForKey:@"DRIVER_TTR_Reason_String"];
  if (intValue == -1)
  {
LABEL_7:
    v16 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: Unknown TTR request\n", "-[WiFiDriverTriggeredTTR WiFiDriverTriggeredTTRHandler:]"}];
    }

    objc_autoreleasePoolPop(v16);
    goto LABEL_10;
  }

  lastTriggeredTTR = [(WiFiDriverTriggeredTTR *)self lastTriggeredTTR];
  v10 = [lastTriggeredTTR objectForKey:v8];
  if (!v10)
  {

LABEL_12:
    v17 = [(WiFiDriverTriggeredTTR *)self WiFiDriverTriggeredTTRForReason:v8];
    goto LABEL_13;
  }

  v11 = v10;
  lastTriggeredTTR2 = [(WiFiDriverTriggeredTTR *)self lastTriggeredTTR];
  v13 = [lastTriggeredTTR2 objectForKey:v8];
  [v13 timeIntervalSinceNow];
  v15 = v14;

  if (v15 < -86400.0)
  {
    goto LABEL_12;
  }

LABEL_10:
  v17 = 0;
LABEL_13:

  return v17;
}

- (BOOL)WiFiDriverTriggeredTTRForReason:(id)reason
{
  reasonCopy = reason;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  if (reasonCopy)
  {
    v5 = reasonCopy;
    softError = [(WiFiDriverTriggeredTTR *)self softError];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100108850;
    v19[3] = &unk_100262938;
    v19[4] = &v20;
    v7 = [softError askToLaunchTapToRadarWithMessage:v5 completionHandler:v19];

    if (v7)
    {
      lastTriggeredTTR = [(WiFiDriverTriggeredTTR *)self lastTriggeredTTR];
      v9 = +[NSDate date];
      [lastTriggeredTTR setObject:v9 forKey:v5];

      v10 = [v5 stringByReplacingOccurrencesOfString:@" " withString:@"%20"];

      v11 = [NSString stringWithFormat:@"%@%@%@%@%@%@%@", @"tap-to-radar://new?Title=", v10, @"&AutoDiagnostics=phone&Description=", v10, @"%20Attaching%20coredumps&ComponentID=", @"ComponentID=621547&ComponentName=WiFi%20Connectivity&ComponentVersion=iOS", @"&Classification=Crash/Hang/Data%20Loss&ExtensionIdentifiers=com.apple.DiagnosticExtensions.WiFi"];
      v12 = [NSURL URLWithString:v11];
      softError2 = [(WiFiDriverTriggeredTTR *)self softError];
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_10010895C;
      v18[3] = &unk_100262938;
      v18[4] = &v20;
      v14 = [softError2 tapToRadarWithURL:v12 completionHandler:v18];

      v15 = *(v21 + 24);
      v5 = v10;
    }

    else
    {
      v16 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s _WiFiDriverTriggeredTTRHandler User Dismissed TTR", "-[WiFiDriverTriggeredTTR WiFiDriverTriggeredTTRForReason:]"}];
      }

      objc_autoreleasePoolPop(v16);
      v15 = *(v21 + 24);
    }
  }

  else
  {
    v15 = 0;
  }

  _Block_object_dispose(&v20, 8);
  return v15 & 1;
}

@end