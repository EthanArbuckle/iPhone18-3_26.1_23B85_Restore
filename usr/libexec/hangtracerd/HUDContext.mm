@interface HUDContext
+ (id)displayNameForHangInfo:(id)info;
- (BOOL)hangHasPendingAnimation:(id)animation;
- (BOOL)hasHudRenderContextInvalidated;
- (BOOL)isValid;
- (CGSize)layoutHUDLines:(unint64_t)lines ids:(id)ids;
- (HUDContext)initWithQueue:(id)queue;
- (HUDContext)initWithRenderContext:(id)context queue:(id)queue;
- (id)getKeyForLine:(id)line;
- (void)animationDidStartOnLine:(id)line;
- (void)animationDidStopOnLine:(id)line;
- (void)applyThemeColors;
- (void)clearBundleNameCache;
- (void)clearHUDLinesAnimated:(BOOL)animated withCompletion:(id)completion;
- (void)createContainerLayer;
- (void)dealloc;
- (void)determineNewFrameForRootLayer:(CGSize)layer numberOfLines:(unint64_t)lines;
- (void)invalidate;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)performHUDUpdate:(id)update;
- (void)performHUDUpdate:(id)update withCompletion:(id)completion;
- (void)reloadThemeColors;
- (void)setDisplayScaleDependentPropertiesOnLayers;
- (void)setRenderParametersFromMonitoredStates:(id)states;
- (void)updateCornerRadiusAndSidePaddingIfNecessary:(id)necessary;
- (void)updateCurrentTheme;
- (void)updateHUD:(id)d withCompletion:(id)completion;
- (void)updateHUDLineWithId:(id)id content:(id)content options:(unint64_t)options;
- (void)updateHangs:(id)hangs withCompletion:(id)completion;
@end

@implementation HUDContext

+ (id)displayNameForHangInfo:(id)info
{
  infoCopy = info;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (qword_1000679D0 != -1)
    {
      sub_10003198C();
    }

    v4 = qword_1000679D8;
    bundleId = [infoCopy bundleId];
    v6 = [v4 objectForKey:bundleId];

    if (v6)
    {
      v7 = v6;
      shortenedBundle2 = v7;
      goto LABEL_28;
    }

    v9 = [LSApplicationRecord alloc];
    bundleId2 = [infoCopy bundleId];
    v28 = 0;
    v11 = [v9 initWithBundleIdentifier:bundleId2 allowPlaceholder:0 error:&v28];
    v12 = v28;

    if (!v12)
    {
      if (sub_10002A388())
      {
        +[HUDConfiguration sharedInstance];
      }

      else
      {
        +[HTPrefs sharedPrefs];
      }
      v22 = ;
      thirdPartyDevPreferredLanguages = [v22 thirdPartyDevPreferredLanguages];

      if ([thirdPartyDevPreferredLanguages count])
      {
        [v11 localizedNameWithPreferredLocalizations:thirdPartyDevPreferredLanguages];
      }

      else
      {
        [v11 localizedName];
      }
      v24 = ;
      v25 = qword_1000679D8;
      bundleId3 = [infoCopy bundleId];
      [v25 setObject:v24 forKey:bundleId3];

      v7 = v24;
      shortenedBundle2 = v7;
      goto LABEL_27;
    }

    domain = [v12 domain];
    v14 = domain;
    if (domain == NSOSStatusErrorDomain)
    {
      code = [v12 code];

      if (code == -10814)
      {
        v16 = sub_100003824();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          bundleId4 = [infoCopy bundleId];
          *buf = 138412290;
          v30 = bundleId4;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "There is no LS application record for bundle id %@", buf, 0xCu);
        }

        v18 = qword_1000679D8;
        shortenedBundle = [infoCopy shortenedBundle];
        bundleId5 = [infoCopy bundleId];
        [v18 setObject:shortenedBundle forKey:bundleId5];

        goto LABEL_21;
      }
    }

    else
    {
    }

    v21 = sub_100003824();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_1000319A0(infoCopy, v12, v21);
    }

LABEL_21:
    shortenedBundle2 = [infoCopy shortenedBundle];
    v7 = 0;
LABEL_27:

    goto LABEL_28;
  }

  v7 = sub_100003824();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_100031948(v7);
  }

  shortenedBundle2 = &stru_100057080;
LABEL_28:

  return shortenedBundle2;
}

- (HUDContext)initWithQueue:(id)queue
{
  v15[0] = &__kCFBooleanTrue;
  v14[0] = kCAContextDisplayable;
  v14[1] = kCAContextDisplayId;
  queueCopy = queue;
  v5 = +[CADisplay mainDisplay];
  v6 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v5 displayId]);
  v14[2] = kCAContextIgnoresHitTest;
  v15[1] = v6;
  v15[2] = &__kCFBooleanTrue;
  v7 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:3];
  v8 = [CAContext remoteContextWithOptions:v7];

  LODWORD(v9) = 1343554297;
  [v8 setLevel:v9];
  [v8 setSecure:1];
  [(HUDContext *)self setHangHUD_updater_latency_in_ms:0.0];
  [(HUDContext *)self setHUD_background_opacity:1.0];
  self->_hud_clear_lock._os_unfair_lock_opaque = 0;
  v10 = +[NSProcessInfo processInfo];
  processName = [v10 processName];
  -[HUDContext setIsInstantiatedInHangHUDProcess:](self, "setIsInstantiatedInHangHUDProcess:", [processName isEqualToString:@"HangHUD"]);

  v12 = [(HUDContext *)self initWithRenderContext:v8 queue:queueCopy];
  return v12;
}

- (void)setRenderParametersFromMonitoredStates:(id)states
{
  isImmersionLevelControllerPresentOnScreen = [states isImmersionLevelControllerPresentOnScreen];
  v5 = 0.95;
  if (!isImmersionLevelControllerPresentOnScreen)
  {
    v5 = 1.0;
  }

  [(HUDContext *)self setHUD_background_opacity:v5];
  v6 = sub_100027A10();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_100031A4C(self);
  }
}

- (HUDContext)initWithRenderContext:(id)context queue:(id)queue
{
  contextCopy = context;
  queueCopy = queue;
  v40.receiver = self;
  v40.super_class = HUDContext;
  v9 = [(HUDContext *)&v40 init];
  if (v9)
  {
    objc_initWeak(&location, v9);
    v10 = [UISCurrentUserInterfaceStyleValue alloc];
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_100010A68;
    v37[3] = &unk_100055210;
    objc_copyWeak(&v38, &location);
    v11 = [v10 initWithChangesDeliveredOnQueue:queueCopy toBlock:v37];
    userInterfaceStyleObserver = v9->_userInterfaceStyleObserver;
    v9->_userInterfaceStyleObserver = v11;

    [(HUDContext *)v9 updateCurrentTheme];
    v13 = +[NSMutableDictionary dictionary];
    hudLines = v9->_hudLines;
    v9->_hudLines = v13;

    objc_storeStrong(&v9->_hudRenderContext, context);
    objc_storeStrong(&v9->_queue, queue);
    v15 = +[CALayer layer];
    rootLayer = v9->_rootLayer;
    v9->_rootLayer = v15;

    [(CALayer *)v9->_rootLayer setName:@"hangtracerd HUD root layer"];
    [(HUDContext *)v9 createContainerLayer];
    rootLayer = [(HUDContext *)v9 rootLayer];
    [(CAContext *)v9->_hudRenderContext setLayer:rootLayer];

    lastKnownHangs = v9->_lastKnownHangs;
    v9->_lastKnownHangs = &__NSDictionary0__struct;

    v19 = +[NSMutableSet set];
    hudContentWithPendingAnimations = v9->_hudContentWithPendingAnimations;
    v9->_hudContentWithPendingAnimations = v19;

    v9->_sidePadding = 0.0;
    v9->_lastKnownFirstKeyLayerHeight = 0.0;
    LOBYTE(v32) = 0;
    v21 = [[HTHangHUDInfo alloc] initWithHangStartTime:0 hangEndTime:0 receivedTimestamp:0 hangDurationMS:&stru_100057080 hudString:&stru_100057080 shortenedBundle:@"com.apple.HangHUD" bundleId:10000.0 timedOut:v32];
    v22 = [HangHUDLine alloc];
    queue = v9->_queue;
    currentTheme = v9->_currentTheme;
    sub_100029930();
    v25 = [(HangHUDLine *)v22 initWithQueue:queue processName:&stru_100057080 theme:currentTheme fontSize:0 lineDelegate:?];
    [(HangHUDLine *)v25 update:v21 options:0];
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_100010AA8;
    v33[3] = &unk_100055238;
    v26 = v9;
    v34 = v26;
    v27 = v21;
    v35 = v27;
    v28 = v25;
    v36 = v28;
    [(HUDContext *)v26 performHUDUpdate:v33];
    [(HUDContext *)v26 clearHUDLinesAnimated:0];
    v29 = +[CADisplay mainDisplay];
    [v29 addObserver:v26 forKeyPath:@"currentOrientation" options:3 context:0];

    v30 = +[CADisplay mainDisplay];
    [v30 addObserver:v26 forKeyPath:@"bounds" options:3 context:0];

    objc_destroyWeak(&v38);
    objc_destroyWeak(&location);
  }

  return v9;
}

- (void)createContainerLayer
{
  [(CALayer *)self->_containerLayer removeFromSuperlayer];
  v3 = +[CALayer layer];
  containerLayer = self->_containerLayer;
  self->_containerLayer = v3;

  [(CALayer *)self->_containerLayer setName:@"hangtracerd HUD container layer"];
  [(CALayer *)self->_containerLayer setHidden:1];
  LODWORD(v5) = 1036831949;
  [(CALayer *)self->_containerLayer setShadowOpacity:v5];
  [(CALayer *)self->_containerLayer setShadowPathIsBounds:1];
  [(CALayer *)self->_containerLayer setAllowsGroupOpacity:1];
  [(HUDContext *)self setDisplayScaleDependentPropertiesOnLayers];
  [(CALayer *)self->_rootLayer addSublayer:self->_containerLayer];

  [(HUDContext *)self reloadThemeColors];
}

- (void)invalidate
{
  v3 = sub_100003824();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    hudRenderContext = [(HUDContext *)self hudRenderContext];
    v5 = [hudRenderContext debugDescription];
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Invalidating current HUD Context. Debug description: %@", &v8, 0xCu);
  }

  containerLayer = [(HUDContext *)self containerLayer];
  [containerLayer removeFromSuperlayer];

  [(HUDContext *)self setContainerLayer:0];
  hudRenderContext2 = [(HUDContext *)self hudRenderContext];
  [hudRenderContext2 invalidate];

  [(HUDContext *)self setHudRenderContext:0];
  sub_100029ED0();
  sub_100029EEC();
}

- (BOOL)hasHudRenderContextInvalidated
{
  hudRenderContext = [(HUDContext *)self hudRenderContext];
  v3 = hudRenderContext == 0;

  return v3;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  changeCopy = change;
  if ([pathCopy isEqualToString:@"currentOrientation"])
  {
    queue = self->_queue;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100010E9C;
    v15[3] = &unk_100054C38;
    v11 = v16;
    v16[0] = changeCopy;
    v16[1] = self;
    v12 = v15;
LABEL_5:
    dispatch_async(queue, v12);

    goto LABEL_6;
  }

  if ([pathCopy isEqualToString:@"bounds"])
  {
    queue = self->_queue;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100011094;
    v13[3] = &unk_100054C38;
    v11 = v14;
    v14[0] = changeCopy;
    v14[1] = self;
    v12 = v13;
    goto LABEL_5;
  }

LABEL_6:
}

- (void)dealloc
{
  v3 = sub_100003824();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_100031AC8();
  }

  v4 = +[CADisplay mainDisplay];
  [v4 removeObserver:self forKeyPath:@"currentOrientation"];

  v5 = +[CADisplay mainDisplay];
  [v5 removeObserver:self forKeyPath:@"bounds"];

  v6.receiver = self;
  v6.super_class = HUDContext;
  [(HUDContext *)&v6 dealloc];
}

- (void)performHUDUpdate:(id)update
{
  queue = self->_queue;
  updateCopy = update;
  dispatch_assert_queue_V2(queue);
  +[CATransaction begin];
  [CATransaction setDisableActions:1];
  updateCopy[2](updateCopy);

  +[CATransaction commit];

  +[CATransaction flush];
}

- (void)performHUDUpdate:(id)update withCompletion:(id)completion
{
  queue = self->_queue;
  completionCopy = completion;
  updateCopy = update;
  dispatch_assert_queue_V2(queue);
  +[CATransaction begin];
  [CATransaction addCommitHandler:completionCopy forPhase:2];

  [CATransaction setDisableActions:1];
  updateCopy[2](updateCopy);

  +[CATransaction commit];

  +[CATransaction flush];
}

- (void)setDisplayScaleDependentPropertiesOnLayers
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1000115DC;
  v2[3] = &unk_100054D38;
  v2[4] = self;
  [(HUDContext *)self performHUDUpdate:v2];
}

- (void)clearHUDLinesAnimated:(BOOL)animated withCompletion:(id)completion
{
  completionCopy = completion;
  v7 = sub_100003824();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    hudLines = [(HUDContext *)self hudLines];
    *buf = 134218242;
    *&buf[4] = [hudLines count];
    *&buf[12] = 2080;
    *&buf[14] = "[HUDContext clearHUDLinesAnimated:withCompletion:]";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Clearing %lu HUD lines @ %s", buf, 0x16u);
  }

  hudLines2 = [(HUDContext *)self hudLines];
  v10 = [hudLines2 count] == 0;

  if (v10)
  {
    v13 = sub_100003824();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, " Invalid HUD line clear request found. The number of HUD lines is 0.", buf, 2u);
    }
  }

  else
  {
    [(HUDContext *)self setLastKnownMaxKeyLayerWidth:0.0];
    +[CATransaction begin];
    if (completionCopy)
    {
      [CATransaction addCommitHandler:completionCopy forPhase:2];
    }

    if (animated)
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3042000000;
      v21 = sub_100011A94;
      v22 = sub_100011AA0;
      objc_initWeak(v23, self);
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_100011AA8;
      v19[3] = &unk_1000552C0;
      v19[4] = self;
      v19[5] = buf;
      [CATransaction setCompletionBlock:v19];
      v11 = [CABasicAnimation animationWithKeyPath:@"opacity"];
      [v11 setRemovedOnCompletion:0];
      [v11 setFillMode:kCAFillModeForwards];
      [v11 setToValue:&off_10005CBA0];
      [v11 setDuration:0.2];
      containerLayer = [(HUDContext *)self containerLayer];
      [containerLayer addAnimation:v11 forKey:0];

      _Block_object_dispose(buf, 8);
      objc_destroyWeak(v23);
    }

    else
    {
      [CATransaction setDisableActions:1];
      hudLines3 = [(HUDContext *)self hudLines];
      [hudLines3 enumerateKeysAndObjectsUsingBlock:&stru_100055278];

      hudLines4 = [(HUDContext *)self hudLines];
      [hudLines4 removeAllObjects];

      containerLayer2 = [(HUDContext *)self containerLayer];
      [containerLayer2 setFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];

      containerLayer3 = [(HUDContext *)self containerLayer];
      [containerLayer3 setOpacity:0.0];

      rootLayer = [(HUDContext *)self rootLayer];
      [rootLayer setHidden:1];
    }

    +[CATransaction commit];
    +[CATransaction flush];
  }
}

- (void)updateHangs:(id)hangs withCompletion:(id)completion
{
  hangsCopy = hangs;
  completionCopy = completion;
  [(HUDContext *)self setLastKnownHangs:hangsCopy];
  v8 = sub_100003824();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_100031B48(hangsCopy);
  }

  v9 = sub_10002A004(hangsCopy, 5u);
  v10 = [v9 count];
  if ([hangsCopy count] && v10)
  {
    v11 = mach_absolute_time();
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100011EB4;
    v15[3] = &unk_100055310;
    v15[4] = self;
    v16 = hangsCopy;
    v17 = v9;
    v18 = v10;
    v19 = v11;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000122DC;
    v13[3] = &unk_100055338;
    v14 = completionCopy;
    [(HUDContext *)self performHUDUpdate:v15 withCompletion:v13];
  }

  else
  {
    v12 = sub_100003824();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Passed 0 hangs, removing the HUD from screen", buf, 2u);
    }

    [(HUDContext *)self clearHUDLinesAnimated:1];
  }
}

- (void)updateHUD:(id)d withCompletion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  v8 = dCopy;
  v9 = sub_10002A128(v8, 5u);
  v10 = [v9 count];
  if ([v8 count] && v10)
  {
    v11 = mach_absolute_time();
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000124C4;
    v16[3] = &unk_100055310;
    v16[4] = self;
    v17 = v8;
    v18 = v9;
    v19 = v10;
    v20 = v11;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100012984;
    v14[3] = &unk_100055338;
    v15 = completionCopy;
    [(HUDContext *)self performHUDUpdate:v16 withCompletion:v14];
  }

  else
  {
    v12 = sub_100003824();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Passed 0 HUD content, removing the HUD from screen", buf, 2u);
    }

    [(HUDContext *)self clearHUDLinesAnimated:1 withCompletion:completionCopy];
    v13 = +[HangDataStreamStatusTracker sharedInstance];
    [v13 initializeStatus];
  }
}

- (void)determineNewFrameForRootLayer:(CGSize)layer numberOfLines:(unint64_t)lines
{
  height = layer.height;
  width = layer.width;
  x = sub_10002997C();
  v8 = +[CADisplay mainDisplay];
  currentOrientation = [v8 currentOrientation];

  v10 = kCADisplayOrientationRotation0;
  v11 = kCADisplayOrientationRotation180;
  if (currentOrientation != kCADisplayOrientationRotation0 && currentOrientation != kCADisplayOrientationRotation180)
  {
    v15 = height + sub_100029BFC();
    v16 = width + self->_sidePadding * 2.0;
    y = (sub_100029CAC() - v16) * 0.5;
    if (currentOrientation == kCADisplayOrientationRotation270)
    {
      x = sub_1000297EC() - v15 - x;
      CGAffineTransformMakeRotation(&v27, 1.57079633);
      containerLayer = [(HUDContext *)self containerLayer];
      containerLayer2 = containerLayer;
      *&v24.m11 = *&v27.a;
      *&v24.m13 = *&v27.c;
      v19 = *&v27.tx;
    }

    else
    {
      CGAffineTransformMakeRotation(&v26, -1.57079633);
      containerLayer = [(HUDContext *)self containerLayer];
      containerLayer2 = containerLayer;
      *&v24.m11 = *&v26.a;
      *&v24.m13 = *&v26.c;
      v19 = *&v26.tx;
    }

    *&v24.m21 = v19;
    [containerLayer setAffineTransform:&v24];
    goto LABEL_16;
  }

  v15 = width + self->_sidePadding * 2.0;
  v16 = height + sub_100029BFC();
  v13 = sub_1000297EC();
  if (currentOrientation == v10)
  {
    v20 = (v13 - v15) * 0.5;
    containerLayer2 = [(HUDContext *)self containerLayer];
    v21 = *&CGAffineTransformIdentity.c;
    *&v24.m11 = *&CGAffineTransformIdentity.a;
    *&v24.m13 = v21;
    *&v24.m21 = *&CGAffineTransformIdentity.tx;
    [containerLayer2 setAffineTransform:&v24];
    y = x;
LABEL_15:
    x = v20;
LABEL_16:

    goto LABEL_17;
  }

  if (currentOrientation == v11)
  {
    v20 = (v13 - v15) * 0.5;
    y = sub_100029CAC() - x - v16;
    CGAffineTransformMakeRotation(&v28, 3.14159265);
    containerLayer2 = [(HUDContext *)self containerLayer];
    *&v24.m11 = v28;
    [containerLayer2 setAffineTransform:&v24];
    goto LABEL_15;
  }

  x = CGRectZero.origin.x;
  y = CGRectZero.origin.y;
LABEL_17:
  CATransform3DMakeTranslation(&v25, x, y, 0.0);
  rootLayer = [(HUDContext *)self rootLayer];
  v24 = v25;
  [rootLayer setSublayerTransform:&v24];

  containerLayer3 = [(HUDContext *)self containerLayer];
  [containerLayer3 setFrame:{0.0, 0.0, v15, v16}];
}

- (void)updateHUDLineWithId:(id)id content:(id)content options:(unint64_t)options
{
  idCopy = id;
  contentCopy = content;
  hudLines = [(HUDContext *)self hudLines];
  v11 = [hudLines objectForKeyedSubscript:idCopy];

  if (!v11)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [HUDContext displayNameForHangInfo:contentCopy];
      v13 = [HangHUDLine alloc];
      queue = self->_queue;
      currentTheme = self->_currentTheme;
      sub_100029930();
      v17 = v16;
      if ([(HUDContext *)self isInstantiatedInHangHUDProcess])
      {
        selfCopy = 0;
      }

      else
      {
        selfCopy = self;
      }

      v19 = [(HangHUDLine *)v13 initWithQueue:queue processName:v12 theme:currentTheme fontSize:selfCopy lineDelegate:v17];
      v20 = sub_100027A10();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v26 = 138412802;
        v27 = v12;
        v28 = 2048;
        hangStartTime = [contentCopy hangStartTime];
        v30 = 2112;
        v31 = idCopy;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "A new HUD line is created for %@ with HANG start timestamp of %llu in mach absolute time. contentId:%@", &v26, 0x20u);
      }
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_13;
      }

      v12 = contentCopy;
      v19 = [[ProcExitHUDLine alloc] initWithProcExitRecord:v12 theme:self->_currentTheme lineDelegate:0];
      v20 = sub_100027A10();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        processName = [v12 processName];
        v26 = 138412546;
        v27 = processName;
        v28 = 2048;
        hangStartTime = [v12 exitTimestamp];
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "A new HUD line is created for %@ with EXIT timestamp of %llu in mach absolute time.", &v26, 0x16u);
      }
    }

    if (v19)
    {
      hudLines2 = [(HUDContext *)self hudLines];
      [hudLines2 setObject:v19 forKeyedSubscript:idCopy];

      containerLayer = [(HUDContext *)self containerLayer];
      [containerLayer addSublayer:v19];
    }
  }

LABEL_13:
  hudLines3 = [(HUDContext *)self hudLines];
  v25 = [hudLines3 objectForKeyedSubscript:idCopy];
  [v25 update:contentCopy options:options];
}

- (CGSize)layoutHUDLines:(unint64_t)lines ids:(id)ids
{
  idsCopy = ids;
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  [(HUDContext *)self lastKnownMaxKeyLayerWidth];
  v38 = v8;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  [(HUDContext *)self minimumValueLayerWidth];
  v34 = v9;
  hudLines = [(HUDContext *)self hudLines];
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_100013204;
  v30[3] = &unk_100055360;
  v30[4] = &v35;
  v30[5] = &v31;
  [hudLines enumerateKeysAndObjectsUsingBlock:v30];

  [(HUDContext *)self setLastKnownMaxKeyLayerWidth:v36[3]];
  if (lines)
  {
    hudLines = [(HUDContext *)self hudLines];
    v4 = [idsCopy objectAtIndexedSubscript:0];
    v11 = [hudLines objectForKeyedSubscript:v4];
  }

  else
  {
    v11 = 0;
  }

  [(HUDContext *)self updateCornerRadiusAndSidePaddingIfNecessary:v11];
  if (lines)
  {
  }

  v12 = v36[3];
  v13 = sub_100029D98();
  v14 = v32[3];
  sub_100029D44();
  v16 = v15;
  sidePadding = self->_sidePadding;
  v18 = sub_100029BFC();
  v19 = fmin(v12 + v13 + v14, v16 + sidePadding * -2.0);
  if (lines)
  {
    v20 = 0;
    do
    {
      hudLines2 = [(HUDContext *)self hudLines];
      v22 = [idsCopy objectAtIndexedSubscript:v20];
      v23 = [hudLines2 objectForKeyedSubscript:v22];

      [v23 setPreferredKeyLayerWidth:v36[3]];
      [v23 setPreferredValueLayerWidth:v32[3]];
      v24 = self->_sidePadding;
      keyLayer = [v23 keyLayer];
      [keyLayer preferredFrameSize];
      [v23 setFrame:{v24, v18, v19, v26}];

      [v23 frame];
      if (v20 >= lines - 1)
      {
        v18 = v18 + v27;
      }

      else
      {
        v18 = v18 + v27 + 5.0;
      }

      ++v20;
    }

    while (lines != v20);
  }

  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(&v35, 8);

  v28 = v19;
  v29 = v18;
  result.height = v29;
  result.width = v28;
  return result;
}

- (void)updateCornerRadiusAndSidePaddingIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  v5 = necessaryCopy;
  if (self->_sidePadding == 0.0)
  {
    if (necessaryCopy)
    {
      keyLayer = [necessaryCopy keyLayer];
      [keyLayer preferredFrameSize];
      lastKnownFirstKeyLayerHeight = v7;

      self->_lastKnownFirstKeyLayerHeight = lastKnownFirstKeyLayerHeight;
    }

    else
    {
      lastKnownFirstKeyLayerHeight = self->_lastKnownFirstKeyLayerHeight;
    }

    v9 = sub_100029BFC();
    [(CALayer *)self->_containerLayer setCornerRadius:v9 + lastKnownFirstKeyLayerHeight * 0.5];
    self->_sidePadding = v9 + lastKnownFirstKeyLayerHeight * 0.5;
    v10 = sub_100003824();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 134218496;
      v12 = v9 + lastKnownFirstKeyLayerHeight * 0.5;
      v13 = 2048;
      v14 = v9;
      v15 = 2048;
      v16 = lastKnownFirstKeyLayerHeight;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "HangTracer HUD changed corner radius to %lf for padding %lf & line height %lf", &v11, 0x20u);
    }
  }
}

- (void)updateCurrentTheme
{
  v3 = sub_10001008C([(UISCurrentUserInterfaceStyleValue *)self->_userInterfaceStyleObserver userInterfaceStyle]);
  currentTheme = self->_currentTheme;
  self->_currentTheme = v3;

  _objc_release_x1();
}

- (void)reloadThemeColors
{
  [(HUDContext *)self updateCurrentTheme];

  [(HUDContext *)self applyThemeColors];
}

- (void)applyThemeColors
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100013550;
  v2[3] = &unk_100054D38;
  v2[4] = self;
  [(HUDContext *)self performHUDUpdate:v2];
}

- (BOOL)isValid
{
  hudRenderContext = [(HUDContext *)self hudRenderContext];
  valid = [hudRenderContext valid];

  return valid;
}

- (id)getKeyForLine:(id)line
{
  lineCopy = line;
  hudLines = [(HUDContext *)self hudLines];
  v6 = [hudLines allKeysForObject:lineCopy];
  firstObject = [v6 firstObject];

  if (!firstObject)
  {
    v8 = sub_100003824();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412546;
      v11 = 0;
      v12 = 2112;
      v13 = lineCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "A key %@ was not found for line %@, this should not happen!", &v10, 0x16u);
    }
  }

  return firstObject;
}

- (BOOL)hangHasPendingAnimation:(id)animation
{
  animationCopy = animation;
  hudContentWithPendingAnimations = [(HUDContext *)self hudContentWithPendingAnimations];
  v6 = [hudContentWithPendingAnimations containsObject:animationCopy];

  return v6;
}

- (void)animationDidStopOnLine:(id)line
{
  lineCopy = line;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100013920;
  v7[3] = &unk_100054C38;
  v7[4] = self;
  v8 = lineCopy;
  v6 = lineCopy;
  dispatch_async(queue, v7);
}

- (void)animationDidStartOnLine:(id)line
{
  lineCopy = line;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100013A44;
  v7[3] = &unk_100054C38;
  v7[4] = self;
  v8 = lineCopy;
  v6 = lineCopy;
  dispatch_async(queue, v7);
}

- (void)clearBundleNameCache
{
  bundleIdToAppNameCache = [(HUDContext *)self bundleIdToAppNameCache];
  [bundleIdToAppNameCache removeAllObjects];
}

@end