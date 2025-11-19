@interface CHPKSettingsServer
+ (id)sharedSettingsServer;
+ (void)initialize;
+ (void)setupDefaults;
- (BOOL)getGlobalAutoRefineEnabled;
- (BOOL)getGlobalProofreadingEnabled;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (CHPKSettingsServer)init;
- (void)_enqueueTimestampUpdate;
- (void)_touchLastSessionTimestampIfNecessary;
- (void)dealloc;
- (void)getGlobalPrefersPencilHoverPreviewEnabledWithCompletion:(id)a3;
- (void)openPencilSettings;
- (void)resumeConnectionIfIdle;
- (void)setCurrentScribbleLanguageIdentifier:(id)a3;
- (void)setCurrentScribbleLanguageIdentifiers:(id)a3;
@end

@implementation CHPKSettingsServer

- (void)dealloc
{
  [(NSXPCListener *)self->_listener setDelegate:0];
  [(NSXPCListener *)self->_listener invalidate];
  v3.receiver = self;
  v3.super_class = CHPKSettingsServer;
  [(CHPKSettingsServer *)&v3 dealloc];
}

+ (void)initialize
{
  v3.receiver = a1;
  v3.super_class = &OBJC_METACLASS___CHPKSettingsServer;
  objc_msgSendSuper2(&v3, "initialize");
  if (objc_opt_class() == a1)
  {
    +[CHPKSettingsServer setupDefaults];
  }
}

+ (void)setupDefaults
{
  if (qword_10002AC28 != -1)
  {
    dispatch_once(&qword_10002AC28, &stru_1000246E8);
  }
}

+ (id)sharedSettingsServer
{
  if (qword_10002AC38 == -1)
  {
    v3 = qword_10002AC30;
  }

  else
  {
    dispatch_once(&qword_10002AC38, &stru_100024708);
    v3 = qword_10002AC30;
  }

  return v3;
}

- (CHPKSettingsServer)init
{
  v10.receiver = self;
  v10.super_class = CHPKSettingsServer;
  v2 = [(CHPKSettingsServer *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_BACKGROUND, 0);

    v5 = dispatch_queue_create("com.apple.handwritingd.CHPKSettings", v4);
    queue = v2->_queue;
    v2->_queue = v5;

    v7 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.handwritingd.pksettings"];
    listener = v2->_listener;
    v2->_listener = v7;

    [(NSXPCListener *)v2->_listener setDelegate:v2];
    v2->_isListening = 0;
  }

  return v2;
}

- (void)resumeConnectionIfIdle
{
  if (![(CHPKSettingsServer *)self isListening])
  {
    v3 = [(CHPKSettingsServer *)self listener];
    [v3 resume];

    [(CHPKSettingsServer *)self setIsListening:1];
  }
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a4;
  listener = self->_listener;
  if (listener == a3)
  {
    v8 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___CHPKRemoteSettingsProtocol];
    [v6 setExportedInterface:v8];
  }

  [v6 setExportedObject:self];
  [v6 resume];

  return listener == a3;
}

- (void)openPencilSettings
{
  v2 = [NSURL URLWithString:@"prefs:root=Pencil"];
  v8 = 0;
  v9 = &v8;
  v10 = 0x2050000000;
  v3 = qword_10002AC40;
  v11 = qword_10002AC40;
  if (!qword_10002AC40)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000023EC;
    v7[3] = &unk_100024780;
    v7[4] = &v8;
    sub_1000023EC(v7);
    v3 = v9[3];
  }

  v4 = v3;
  _Block_object_dispose(&v8, 8);
  v5 = [v3 defaultWorkspace];
  v12[0] = @"__UnlockDevice";
  v12[1] = @"__PromptUnlockDevice";
  v13[0] = &__kCFBooleanTrue;
  v13[1] = &__kCFBooleanTrue;
  v6 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:2];
  [v5 openSensitiveURL:v2 withOptions:v6];
}

- (void)setCurrentScribbleLanguageIdentifier:(id)a3
{
  v8 = a3;
  v3 = [NSLocale localeWithLocaleIdentifier:?];
  if ([CHRecognitionSession isLocaleSupported:v3])
  {
    v4 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.PencilKit"];
    [v4 setObject:v8 forKey:@"CurrentScribbleLanguageKey"];
    v5 = +[NSDate date];
    [v5 timeIntervalSinceReferenceDate];
    v6 = [NSNumber numberWithDouble:?];
    [v4 setObject:v6 forKey:@"ScribbleLanguageTimestampKey"];

    [v4 synchronize];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.PencilKit", 0, 0, 1u);
  }
}

- (void)setCurrentScribbleLanguageIdentifiers:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v3 count]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
LABEL_4:
    v9 = 0;
    while (1)
    {
      if (*v18 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v17 + 1) + 8 * v9);
      v11 = [NSLocale localeWithLocaleIdentifier:v10, v17];
      if ([v10 length])
      {
        if ([CHRecognitionSession isLocaleSupported:v11])
        {
          if ([v10 length] >= 0x10)
          {
            v12 = [v10 substringWithRange:{0, 15}];

            v10 = v12;
          }

          [v4 addObject:v10];
          if ([v4 count] >= 0xA)
          {
            break;
          }
        }
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (!v7)
        {
          goto LABEL_14;
        }

        goto LABEL_4;
      }
    }
  }

LABEL_14:

  v13 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.PencilKit"];
  [v13 setObject:v4 forKey:@"CurrentScribbleLanguages"];
  v14 = +[NSDate date];
  [v14 timeIntervalSinceReferenceDate];
  v15 = [NSNumber numberWithDouble:?];
  [v13 setObject:v15 forKey:@"ScribbleLanguageTimestampKey"];

  [v13 synchronize];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.PencilKit", 0, 0, 1u);
}

- (void)getGlobalPrefersPencilHoverPreviewEnabledWithCompletion:(id)a3
{
  v6 = a3;
  v3 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.UIKit"];
  v4 = [v3 BOOLForKey:@"PKUIPencilHoverPreviewEnabledKey"];

  v5 = v6;
  if (v6)
  {
    (*(v6 + 2))(v6, v4);
    v5 = v6;
  }
}

- (BOOL)getGlobalAutoRefineEnabled
{
  v2 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.UIKit"];
  v3 = [v2 BOOLForKey:@"UIAutoRefineEnabledKey"];

  return v3;
}

- (BOOL)getGlobalProofreadingEnabled
{
  v2 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.UIKit"];
  v3 = [v2 BOOLForKey:@"UIProofreadingEnabledKey"];

  return v3;
}

- (void)_enqueueTimestampUpdate
{
  objc_initWeak(&location, self);
  v3 = +[NSDate date];
  queue = self->_queue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000020C8;
  v6[3] = &unk_100024758;
  objc_copyWeak(&v9, &location);
  v7 = v3;
  v8 = self;
  v5 = v3;
  dispatch_sync(queue, v6);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)_touchLastSessionTimestampIfNecessary
{
  v2 = [(CHPKSettingsServer *)self queuedTimestampDate];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = +[NSDate date];
  }

  v12 = v4;

  v5 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.PencilKit"];
  v6 = [v5 objectForKey:@"ScribbleLanguageTimestampKey"];
  v7 = [v6 copy];

  if (!v7)
  {
    v10 = 0;
LABEL_9:
    [v12 timeIntervalSinceReferenceDate];
    v11 = [NSNumber numberWithDouble:?];
    [v5 setObject:v11 forKey:@"ScribbleLanguageTimestampKey"];

    [v5 synchronize];
    goto LABEL_10;
  }

  [v7 doubleValue];
  v8 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
  v9 = +[NSCalendar currentCalendar];
  v10 = [v9 dateByAddingUnit:64 value:30 toDate:v8 options:0];

  if (!v10 || [v12 compare:v10] == -1)
  {
    goto LABEL_9;
  }

LABEL_10:
}

@end