@interface WiFiScanObserver
- (WiFiScanObserver)init;
- (void)addScanResultsCallback:(id)callback;
- (void)dealloc;
- (void)ingestScanResults:(id)results ofType:(unint64_t)type clientName:(id)name directed:(BOOL)directed;
- (void)removeScanResultsCallback:(id)callback;
@end

@implementation WiFiScanObserver

- (WiFiScanObserver)init
{
  v4.receiver = self;
  v4.super_class = WiFiScanObserver;
  v2 = [(WiFiScanObserver *)&v4 init];
  if (v2)
  {
    v2->_callbacks = objc_alloc_init(NSMutableArray);
  }

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = WiFiScanObserver;
  [(WiFiScanObserver *)&v3 dealloc];
}

- (void)addScanResultsCallback:(id)callback
{
  if (callback)
  {
    callbacks = [(WiFiScanObserver *)self callbacks];
    v5 = _Block_copy(callback);

    [(NSMutableArray *)callbacks addObject:v5];
  }
}

- (void)removeScanResultsCallback:(id)callback
{
  if (callback)
  {
    callbacks = [(WiFiScanObserver *)self callbacks];

    [(NSMutableArray *)callbacks removeObject:callback];
  }
}

- (void)ingestScanResults:(id)results ofType:(unint64_t)type clientName:(id)name directed:(BOOL)directed
{
  directedCopy = directed;
  v11 = objc_autoreleasePoolPush();
  v12 = os_transaction_create();
  if (results && [(NSMutableArray *)[(WiFiScanObserver *)self callbacks] count])
  {
    HIDWORD(v49) = directedCopy;
    v13 = objc_alloc_init(NSMutableSet);
    v14 = objc_autoreleasePoolPush();
    if (off_100298C40)
    {
      [off_100298C40 WFLog:3 message:{"%s: ingested %lu networks", "-[WiFiScanObserver ingestScanResults:ofType:clientName:directed:]", objc_msgSend(results, "count")}];
    }

    objc_autoreleasePoolPop(v14);
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v23 = sub_100008308(v15, v16, v17, v18, v19, v20, v21, v22, v43, v45, v47, v49, v12, v11);
    if (v23)
    {
      v24 = v23;
      v25 = *v58;
      do
      {
        for (i = 0; i != v24; i = i + 1)
        {
          if (*v58 != v25)
          {
            objc_enumerationMutation(results);
          }

          v27 = [[WiFiScanObserverNetwork alloc] initWithWiFiNetworkRef:*(*(&v57 + 1) + 8 * i)];
          if (v27)
          {
            v35 = v27;
            [v13 addObject:v27];
            CFRelease(v35);
          }
        }

        v24 = sub_100008308(v27, v28, v29, v30, v31, v32, v33, v34, v44, v46, v48, v50, v51, v52);
      }

      while (v24);
    }

    if (!v13)
    {
      v42 = objc_autoreleasePoolPush();
      v12 = v51;
      if (off_100298C40)
      {
        [off_100298C40 WFLog:3 message:{"%s: no networks to provide", "-[WiFiScanObserver ingestScanResults:ofType:clientName:directed:]"}];
      }

      objc_autoreleasePoolPop(v42);
      v11 = v52;
      if (v51)
      {
        goto LABEL_30;
      }

      goto LABEL_31;
    }

    v36 = objc_alloc_init(NSMutableDictionary);
    [v36 setObject:+[NSNumber numberWithUnsignedInteger:](NSNumber forKey:{"numberWithUnsignedInteger:", type), @"resultType"}];
    if (name)
    {
      [v36 setObject:name forKey:@"clientName"];
    }

    if (HIDWORD(v50))
    {
      [v36 setObject:+[NSNumber numberWithBool:](NSNumber forKey:{"numberWithBool:", 1), @"directed"}];
    }

    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    callbacks = [(WiFiScanObserver *)self callbacks];
    v38 = [(NSMutableArray *)callbacks countByEnumeratingWithState:&v53 objects:v61 count:16];
    if (v38)
    {
      v39 = v38;
      v40 = *v54;
      do
      {
        for (j = 0; j != v39; j = j + 1)
        {
          if (*v54 != v40)
          {
            objc_enumerationMutation(callbacks);
          }

          (*(*(*(&v53 + 1) + 8 * j) + 16))();
        }

        v39 = [(NSMutableArray *)callbacks countByEnumeratingWithState:&v53 objects:v61 count:16];
      }

      while (v39);
    }

    if (v36)
    {
      CFRelease(v36);
    }

    CFRelease(v13);
    v12 = v51;
    v11 = v52;
  }

  if (v12)
  {
LABEL_30:
  }

LABEL_31:
  objc_autoreleasePoolPop(v11);
}

@end