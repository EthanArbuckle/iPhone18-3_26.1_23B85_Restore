@interface WiFiCWFInterface
+ (id)sharedWiFiCWFInterfaceInstance;
- (WiFiCWFInterface)init;
- (id)getServiceFor:(id)a3 withServiceKey:(id)a4;
- (id)startMonitoringSupportedEvents:(id)a3;
- (id)stopMonitoringSupportedEvents:(id)a3;
- (int)performSensingFor:(id)a3;
- (void)dealloc;
@end

@implementation WiFiCWFInterface

+ (id)sharedWiFiCWFInterfaceInstance
{
  if (qword_1002984B0 != -1)
  {
    sub_10013C594();
  }

  return qword_1002984A8;
}

- (WiFiCWFInterface)init
{
  v5.receiver = self;
  v5.super_class = WiFiCWFInterface;
  v2 = [(WiFiCWFInterface *)&v5 init];
  if (v2)
  {
    if (MGGetBoolAnswer())
    {
      if (_os_feature_enabled_impl())
      {
        [(WiFiCWFInterface *)v2 set_eventHandlers:+[NSMutableDictionary dictionary]];
        [(WiFiCWFInterface *)v2 set_homeManager:[CWFHomeManager cwfHomeManagerWithDelegate:v2]];
        v3 = objc_autoreleasePoolPush();
        if (off_100298C40)
        {
          [off_100298C40 WFLog:3 message:{"%s:CWFHomeManager instance %p", "-[WiFiCWFInterface init]", -[WiFiCWFInterface _homeManager](v2, "_homeManager")}];
        }

        goto LABEL_6;
      }

      v3 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: OS does not support sensing, don't create this interface\n", "-[WiFiCWFInterface init]"}];
      }
    }

    else
    {
      v3 = objc_autoreleasePoolPush();
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: Non internal build, don't create this interface\n", "-[WiFiCWFInterface init]"}];
      }
    }

    v2 = 0;
LABEL_6:
    objc_autoreleasePoolPop(v3);
  }

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = WiFiCWFInterface;
  [(WiFiCWFInterface *)&v3 dealloc];
}

- (id)startMonitoringSupportedEvents:(id)a3
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [a3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(a3);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([(NSMutableDictionary *)[(WiFiCWFInterface *)self _eventHandlers] objectForKey:v9])
        {
          v10 = objc_autoreleasePoolPush();
          if (off_100298C40)
          {
            [off_100298C40 WFLog:3 message:{"%s: event already exists in handler", "-[WiFiCWFInterface startMonitoringSupportedEvents:]"}];
          }

          objc_autoreleasePoolPop(v10);
          goto LABEL_13;
        }

        -[NSMutableDictionary setObject:forKeyedSubscript:](-[WiFiCWFInterface _eventHandlers](self, "_eventHandlers"), "setObject:forKeyedSubscript:", [a3 objectForKeyedSubscript:v9], v9);
      }

      v6 = [a3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:
  CWFErrorDescription();
  return CWFErrorWithDescription();
}

- (id)stopMonitoringSupportedEvents:(id)a3
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [a3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(a3);
        }

        [(NSMutableDictionary *)[(WiFiCWFInterface *)self _eventHandlers] removeObjectForKey:*(*(&v10 + 1) + 8 * v8)];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [a3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  CWFErrorDescription();
  return CWFErrorWithDescription();
}

- (int)performSensingFor:(id)a3
{
  v3 = *([(WiFiCWFInterface *)self performSensing]+ 2);

  return v3();
}

- (id)getServiceFor:(id)a3 withServiceKey:(id)a4
{
  if ([(NSMutableDictionary *)[(WiFiCWFInterface *)self _eventHandlers] objectForKey:a4])
  {
    v7 = [(NSMutableDictionary *)[(WiFiCWFInterface *)self _eventHandlers] objectForKeyedSubscript:a4];
    v8 = v7[2](v7, a3);
    v9 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s:Start data collect for sensing params %@ with erorr %@", "-[WiFiCWFInterface getServiceFor:withServiceKey:]", a3, v8}];
    }
  }

  else
  {
    CWFErrorDescription();
    v8 = CWFErrorWithDescription();
    v9 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s:%@ service doesn't exist", "-[WiFiCWFInterface getServiceFor:withServiceKey:]", a4, v11}];
    }
  }

  objc_autoreleasePoolPop(v9);
  return v8;
}

@end