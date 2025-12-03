@interface XBLaunchImageContextWrapper
+ (id)contextWrapperForApplicationWithCompatibilityInfo:(id)info launchRequest:(id)request captureOptions:(int64_t)options;
- (BOOL)_verifyMemoryImpactOfViewHierarchy:(id)hierarchy bundleID:(id)d size:(unint64_t *)size error:(id *)error;
- (XBLaunchImageContextWrapper)initWithApplicationCompatibilityInfo:(id)info launchRequest:(id)request captureOptions:(int64_t)options;
- (id)_errorForParsingException:(id)exception bundleID:(id)d;
- (id)_ioSurfaceForLayerContents:(void *)contents;
- (id)_parseInterfaceConfiguration:(id)configuration bundle:(id)bundle bundleID:(id)d error:(id *)error;
- (id)_parseInterfaceWithNibName:(id)name bundle:(id)bundle bundleID:(id)d error:(id *)error;
- (id)_parseInterfaceWithStoryboardName:(id)name bundle:(id)bundle bundleID:(id)d error:(id *)error;
- (id)_parseLaunchInterface:(id)interface bundle:(id)bundle bundlePath:(id)path bundleID:(id)d error:(id *)error;
- (unint64_t)_estimatedMemorySizeOfViewHierarchy:(id)hierarchy;
- (unsigned)contextID;
- (void)_configureNewWindow;
- (void)_configureRootViewForRTL:(id)l bundle:(id)bundle;
- (void)_update;
- (void)invalidate;
- (void)updateLaunchRequest:(id)request;
@end

@implementation XBLaunchImageContextWrapper

+ (id)contextWrapperForApplicationWithCompatibilityInfo:(id)info launchRequest:(id)request captureOptions:(int64_t)options
{
  requestCopy = request;
  infoCopy = info;
  v10 = [[self alloc] initWithApplicationCompatibilityInfo:infoCopy launchRequest:requestCopy captureOptions:options];

  return v10;
}

- (XBLaunchImageContextWrapper)initWithApplicationCompatibilityInfo:(id)info launchRequest:(id)request captureOptions:(int64_t)options
{
  infoCopy = info;
  requestCopy = request;
  v25.receiver = self;
  v25.super_class = XBLaunchImageContextWrapper;
  v11 = [(XBLaunchImageContextWrapper *)&v25 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_appInfo, info);
    objc_storeStrong(&v12->_launchRequest, request);
    launchInterfaceIdentifier = [requestCopy launchInterfaceIdentifier];
    v14 = [infoCopy launchInterfaceWithIdentifier:launchInterfaceIdentifier];
    launchInterface = v12->_launchInterface;
    v12->_launchInterface = v14;

    v12->_captureOptions = options;
    if (options)
    {
      v16 = objc_alloc_init(XBLaunchCaptureInformation);
      captureInformation = v12->_captureInformation;
      v12->_captureInformation = v16;
    }

    v18 = sub_1000012D0();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      bundleIdentifier = [(XBApplicationLaunchCompatibilityInfo *)v12->_appInfo bundleIdentifier];
      launchInterfaceIdentifier2 = [requestCopy launchInterfaceIdentifier];
      v21 = v12->_launchInterface;
      captureOptions = v12->_captureOptions;
      launchRequest = v12->_launchRequest;
      *buf = 138544386;
      v27 = bundleIdentifier;
      v28 = 2114;
      v29 = launchInterfaceIdentifier2;
      v30 = 2114;
      v31 = v21;
      v32 = 2048;
      v33 = captureOptions;
      v34 = 2114;
      v35 = launchRequest;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "[%{public}@] XBLaunchImageContextWrapper configuring with\nlaunchInterfaceIdentifier: %{public}@\nlaunchInterface: %{public}@\ncaptureOptions: %ld\nlaunchRequest: %{public}@", buf, 0x34u);
    }

    [(XBLaunchImageContextWrapper *)v12 _configureNewWindow];
  }

  return v12;
}

- (unsigned)contextID
{
  wrapperWindow = self->_wrapperWindow;
  if (wrapperWindow)
  {
    return [(_XBWrapperWindow *)wrapperWindow _contextId];
  }

  else
  {
    return XBInvalidContextId;
  }
}

- (id)_errorForParsingException:(id)exception bundleID:(id)d
{
  dCopy = d;
  exceptionCopy = exception;
  name = [exceptionCopy name];
  v8 = [name isEqualToString:@"UIWindowRestrictedSplashboardViewException"];
  v9 = [XBLaunchImageError alloc];
  v10 = [exceptionCopy description];

  if (v8)
  {
    v11 = @"Exception thrown attempting to load a storyboard using a restricted view class: %@";
  }

  else
  {
    v11 = @"Exception thrown during load: %@";
  }

  if (v8)
  {
    v12 = 5;
  }

  else
  {
    v12 = 2;
  }

  v13 = [NSString stringWithFormat:v11, v10];
  v14 = [v9 initWithCode:v12 bundleID:dCopy reason:v13 fatal:0];

  return v14;
}

- (id)_parseInterfaceWithStoryboardName:(id)name bundle:(id)bundle bundleID:(id)d error:(id *)error
{
  nameCopy = name;
  bundleCopy = bundle;
  dCopy = d;
  v12 = [UIStoryboard storyboardWithName:nameCopy bundle:bundleCopy];
  instantiateInitialViewController = [v12 instantiateInitialViewController];

  if (error && !instantiateInitialViewController && !*error)
  {
    v14 = [XBLaunchImageError alloc];
    nameCopy = [NSString stringWithFormat:@"Could not load any content for the interface named %@.", nameCopy];
    *error = [v14 initWithCode:3 bundleID:dCopy reason:nameCopy fatal:0];
  }

  return instantiateInitialViewController;
}

- (id)_parseInterfaceWithNibName:(id)name bundle:(id)bundle bundleID:(id)d error:(id *)error
{
  nameCopy = name;
  bundleCopy = bundle;
  dCopy = d;
  v21 = [UINib nibWithNibName:nameCopy bundle:bundleCopy];
  [v21 instantiateWithOwner:0 options:0];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v11 = v25 = 0u;
  v12 = [v11 countByEnumeratingWithState:&v24 objects:v30 count:16];
  if (v12)
  {
    v13 = *v25;
    while (2)
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v25 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v24 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v16 = sub_1000012D0();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            bundleIdentifier = [(XBApplicationLaunchCompatibilityInfo *)self->_appInfo bundleIdentifier];
            sub_100005C88(bundleIdentifier, buf, &v29, v16);
          }
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v12 = v15;
            goto LABEL_17;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v12 = objc_alloc_init(UIViewController);
            [v12 setView:v15];
            goto LABEL_17;
          }
        }
      }

      v12 = [v11 countByEnumeratingWithState:&v24 objects:v30 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

LABEL_17:

  if (error && !v12 && !*error)
  {
    v18 = [XBLaunchImageError alloc];
    nameCopy = [NSString stringWithFormat:@"Could not load any content for the interface named %@.", nameCopy];
    *error = [v18 initWithCode:3 bundleID:dCopy reason:nameCopy fatal:0];
  }

  return v12;
}

- (id)_parseInterfaceConfiguration:(id)configuration bundle:(id)bundle bundleID:(id)d error:(id *)error
{
  configurationCopy = configuration;
  bundleCopy = bundle;
  dCopy = d;
  v50 = objc_alloc_init(UIViewController);
  v9 = objc_alloc_init(UIView);
  colorName = [configurationCopy colorName];

  if (colorName && ([configurationCopy colorName], v11 = objc_claimAutoreleasedReturnValue(), +[UIColor colorNamed:inBundle:compatibleWithTraitCollection:](UIColor, "colorNamed:inBundle:compatibleWithTraitCollection:", v11, bundleCopy, 0), v49 = objc_claimAutoreleasedReturnValue(), v11, (v12 = v49) != 0))
  {
    v13 = 0;
  }

  else
  {
    v12 = +[UIColor systemBackgroundColor];
    v49 = 0;
    v13 = 1;
  }

  [v9 setBackgroundColor:v12];
  if (v13)
  {
  }

  imageName = [configurationCopy imageName];

  if (imageName)
  {
    imageName2 = [configurationCopy imageName];
    v16 = [UIImage imageNamed:imageName2 inBundle:bundleCopy compatibleWithTraitCollection:0];

    if (v16)
    {
      v17 = objc_alloc_init(XBUpdatingImageView);
      [v9 addSubview:v17];
      if ([configurationCopy imageRespectsSafeAreaInsets])
      {
        [(XBUpdatingImageView *)v17 setTranslatesAutoresizingMaskIntoConstraints:0];
        safeAreaLayoutGuide = [v9 safeAreaLayoutGuide];
        leadingAnchor = [safeAreaLayoutGuide leadingAnchor];
        leadingAnchor2 = [(XBUpdatingImageView *)v17 leadingAnchor];
        v44 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
        v52[0] = v44;
        trailingAnchor = [safeAreaLayoutGuide trailingAnchor];
        trailingAnchor2 = [(XBUpdatingImageView *)v17 trailingAnchor];
        v41 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
        v52[1] = v41;
        topAnchor = [safeAreaLayoutGuide topAnchor];
        topAnchor2 = [(XBUpdatingImageView *)v17 topAnchor];
        v19 = [topAnchor constraintEqualToAnchor:topAnchor2];
        v52[2] = v19;
        bottomAnchor = [safeAreaLayoutGuide bottomAnchor];
        bottomAnchor2 = [(XBUpdatingImageView *)v17 bottomAnchor];
        v22 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
        v52[3] = v22;
        v23 = [NSArray arrayWithObjects:v52 count:4];
        [NSLayoutConstraint activateConstraints:v23];
      }

      else
      {
        [(XBUpdatingImageView *)v17 setAutoresizingMask:18];
      }

      [(XBUpdatingImageView *)v17 setImage:v16];
    }
  }

  bars = [configurationCopy bars];
  v25 = [bars containsObject:XBLaunchConfigurationToolbarKey];

  if (v25)
  {
    v26 = objc_alloc_init(UIToolbar);
    toolbarImageName = [configurationCopy toolbarImageName];
    v28 = [UIImage imageNamed:toolbarImageName inBundle:bundleCopy compatibleWithTraitCollection:0];

    v29 = [[XBViewMatchingImageView alloc] initWithMatchingView:v26 image:v28 bottom:1];
    [(XBViewMatchingImageView *)v29 setAutoresizingMask:18];
    [v9 addSubview:v29];
  }

  else
  {
    bars2 = [configurationCopy bars];
    v31 = [bars2 containsObject:XBLaunchConfigurationTabBarKey];

    if (!v31)
    {
      goto LABEL_19;
    }

    v26 = objc_alloc_init(UITabBar);
    tabBarImageName = [configurationCopy tabBarImageName];
    v28 = [UIImage imageNamed:tabBarImageName inBundle:bundleCopy compatibleWithTraitCollection:0];

    v29 = [[XBViewMatchingImageView alloc] initWithMatchingView:v26 image:v28 bottom:1];
    [(XBViewMatchingImageView *)v29 setAutoresizingMask:18];
    [v9 addSubview:v29];
  }

LABEL_19:
  bars3 = [configurationCopy bars];
  v34 = [bars3 containsObject:XBLaunchConfigurationNavigationBarKey];

  if (v34)
  {
    v35 = objc_alloc_init(UINavigationBar);
    navigationBarImageName = [configurationCopy navigationBarImageName];
    v37 = [UIImage imageNamed:navigationBarImageName inBundle:bundleCopy compatibleWithTraitCollection:0];

    v38 = [[XBViewMatchingImageView alloc] initWithMatchingView:v35 image:v37 bottom:0];
    [(XBViewMatchingImageView *)v38 setAutoresizingMask:18];
    [v9 addSubview:v38];
  }

  [v50 setView:v9];

  return v50;
}

- (id)_parseLaunchInterface:(id)interface bundle:(id)bundle bundlePath:(id)path bundleID:(id)d error:(id *)error
{
  interfaceCopy = interface;
  bundleCopy = bundle;
  pathCopy = path;
  dCopy = d;
  if (!bundleCopy)
  {
    v19 = sub_1000012D0();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      sub_100005DB4();
    }

    if (error)
    {
      v20 = [XBLaunchImageError alloc];
      pathCopy = [NSString stringWithFormat:@"Failed to construct NSBundle for %@ at %@.", dCopy, pathCopy];
      *error = [v20 initWithCode:4 bundleID:dCopy reason:pathCopy fatal:0];
    }

    goto LABEL_10;
  }

  if ([interfaceCopy isStoryboard])
  {
    v16 = sub_1000012D0();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      sub_100005D80();
    }

    name = [(XBLaunchInterface *)self->_launchInterface name];
    v18 = [(XBLaunchImageContextWrapper *)self _parseInterfaceWithStoryboardName:name bundle:bundleCopy bundleID:dCopy error:error];
LABEL_19:
    v22 = v18;

    goto LABEL_20;
  }

  if ([interfaceCopy isXIB])
  {
    v23 = sub_1000012D0();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      sub_100005D4C();
    }

    name = [(XBLaunchInterface *)self->_launchInterface name];
    v18 = [(XBLaunchImageContextWrapper *)self _parseInterfaceWithNibName:name bundle:bundleCopy bundleID:dCopy error:error];
    goto LABEL_19;
  }

  if ([interfaceCopy isConfiguration])
  {
    v24 = sub_1000012D0();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      sub_100005D18();
    }

    name = [(XBLaunchInterface *)self->_launchInterface configuration];
    v18 = [(XBLaunchImageContextWrapper *)self _parseInterfaceConfiguration:name bundle:bundleCopy bundleID:dCopy error:error];
    goto LABEL_19;
  }

  if (!error)
  {
LABEL_10:
    v22 = 0;
    goto LABEL_20;
  }

  v26 = sub_1000012D0();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    sub_100005CE4();
  }

  v22 = 0;
  *error = [[XBLaunchImageError alloc] initWithCode:1 bundleID:dCopy reason:@"No such interface found." fatal:0];
LABEL_20:

  return v22;
}

- (void)_configureRootViewForRTL:(id)l bundle:(id)bundle
{
  lCopy = l;
  if (lCopy)
  {
    v11 = lCopy;
    localizations = [(NSBundle *)self->_bundle localizations];
    v7 = +[NSLocale preferredLanguages];
    v8 = [NSBundle preferredLocalizationsFromArray:localizations forPreferences:v7];

    firstObject = [v8 firstObject];
    v10 = [NSParagraphStyle defaultWritingDirectionForLanguage:firstObject];

    if (v10 == NSWritingDirectionRightToLeft)
    {
      sub_100002850(v11);
    }

    lCopy = v11;
  }
}

- (BOOL)_verifyMemoryImpactOfViewHierarchy:(id)hierarchy bundleID:(id)d size:(unint64_t *)size error:(id *)error
{
  dCopy = d;
  hierarchyCopy = hierarchy;
  [hierarchyCopy setNeedsLayout];
  [hierarchyCopy layoutIfNeeded];
  v12 = [(XBLaunchImageContextWrapper *)self _estimatedMemorySizeOfViewHierarchy:hierarchyCopy];

  if (size)
  {
    *size = v12;
  }

  v13 = sub_1000010B0();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    sub_100005DE8();
  }

  if (v12 < 0x17D7840)
  {
    goto LABEL_6;
  }

  IsEnabled = _XBDebugCaptureIsEnabled();
  if (!IsEnabled)
  {
    if (error)
    {
      v16 = [XBLaunchImageError alloc];
      25000000 = [NSString stringWithFormat:@"[%@] Estimated size (%zu) is over limit (%zu)", dCopy, v12, 25000000];
      *error = [v16 initWithCode:6 bundleID:dCopy reason:25000000 fatal:0];
    }

    v15 = sub_1000010B0();
    if (os_signpost_enabled(v15))
    {
      bundleIdentifier = [(XBApplicationLaunchCompatibilityInfo *)self->_appInfo bundleIdentifier];
      *buf = 138543874;
      v21 = bundleIdentifier;
      v22 = 2050;
      v23 = v12;
      v24 = 2050;
      v25 = 25000000;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v15, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "OverMemoryLimit", "BundleIdOverride=%{public, signpost.description:attribute}@ estimate=%{signpost.telemetry:number1, public}zu limit=%{signpost.telemetry:number2, public}zu enableTelemetry=YES ", buf, 0x20u);
    }

    goto LABEL_15;
  }

  if (v12 != 25000000)
  {
    v15 = sub_1000010B0();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      sub_100005E60();
    }

LABEL_15:

    goto LABEL_16;
  }

LABEL_6:
  LOBYTE(IsEnabled) = 1;
LABEL_16:

  return IsEnabled;
}

- (void)_configureNewWindow
{
  if (!+[NSThread isMainThread])
  {
    sub_100005EE8(self, a2);
  }

  v4 = objc_autoreleasePoolPush();
  v5 = +[UIScreen mainScreen];
  [v5 _setUIIBAlwaysProvidePeripheryInsets:1];

  bundlePath = [(XBApplicationLaunchCompatibilityInfo *)self->_appInfo bundlePath];
  v7 = [NSBundle bundleWithPath:bundlePath];
  bundle = self->_bundle;
  self->_bundle = v7;

  launchInterface = self->_launchInterface;
  v10 = self->_bundle;
  bundleIdentifier = [(XBApplicationLaunchCompatibilityInfo *)self->_appInfo bundleIdentifier];
  v34 = 0;
  v12 = [(XBLaunchImageContextWrapper *)self _parseLaunchInterface:launchInterface bundle:v10 bundlePath:bundlePath bundleID:bundleIdentifier error:&v34];
  v13 = v34;
  rootViewController = self->_rootViewController;
  self->_rootViewController = v12;

  v15 = self->_rootViewController;
  if (v15 && !v13)
  {
    view = [(UIViewController *)v15 view];
    v17 = sub_1000010B0();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      bundleIdentifier2 = [(XBApplicationLaunchCompatibilityInfo *)self->_appInfo bundleIdentifier];
      v32 = self->_rootViewController;
      *buf = 138412802;
      *&buf[4] = bundleIdentifier2;
      v36 = 2112;
      v37 = v32;
      v38 = 2112;
      v39 = view;
      _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "[%@] rootViewController: %@; rootView: %@", buf, 0x20u);
    }

    [(XBLaunchImageContextWrapper *)self _configureRootViewForRTL:view bundle:self->_bundle];
    *buf = 0;
    bundleIdentifier3 = [(XBApplicationLaunchCompatibilityInfo *)self->_appInfo bundleIdentifier];
    v33 = 0;
    v19 = [(XBLaunchImageContextWrapper *)self _verifyMemoryImpactOfViewHierarchy:view bundleID:bundleIdentifier3 size:buf error:&v33];
    v13 = v33;

    if (v19)
    {
      v20 = [_XBWrapperWindow alloc];
      [(XBLaunchStateRequest *)self->_launchRequest naturalSize];
      BSRectWithSize();
      v21 = [(_XBWrapperWindow *)v20 initWithFrame:?];
      wrapperWindow = self->_wrapperWindow;
      self->_wrapperWindow = v21;

      v23 = self->_wrapperWindow;
      if ([(XBApplicationLaunchCompatibilityInfo *)self->_appInfo launchesOpaque])
      {
        +[UIColor blackColor];
      }

      else
      {
        +[UIColor clearColor];
      }
      v24 = ;
      [(_XBWrapperWindow *)v23 setBackgroundColor:v24];

      [(_XBWrapperWindow *)self->_wrapperWindow setRootViewController:self->_rootViewController];
      [(XBLaunchImageContextWrapper *)self _update];
      if (self->_captureOptions)
      {
        [(XBLaunchCaptureInformation *)self->_captureInformation setEstimatedMemoryImpact:*buf];
      }
    }
  }

  if (v13)
  {
    objc_storeStrong(&self->_error, v13);
    isFatal = [v13 isFatal];
    v26 = @"Error";
    if (isFatal)
    {
      v26 = @"Fatal error";
    }

    v27 = v26;
    v28 = sub_1000012D0();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      bundleIdentifier4 = [(XBApplicationLaunchCompatibilityInfo *)self->_appInfo bundleIdentifier];
      succinctDescription = [v13 succinctDescription];
      *buf = 138543874;
      *&buf[4] = v27;
      v36 = 2114;
      v37 = bundleIdentifier4;
      v38 = 2114;
      v39 = succinctDescription;
      _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%{public}@ generating launch image for %{public}@: %{public}@", buf, 0x20u);
    }
  }

  objc_autoreleasePoolPop(v4);
}

- (void)_update
{
  v3 = objc_autoreleasePoolPush();
  v4 = sub_1000012D0();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    launchRequest = self->_launchRequest;
    *buf = 138543362;
    v36 = launchRequest;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Updating window to %{public}@", buf, 0xCu);
  }

  interfaceOrientation = [(XBLaunchStateRequest *)self->_launchRequest interfaceOrientation];
  [(XBLaunchStateRequest *)self->_launchRequest naturalSize];
  BSRectWithSize();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  userInterfaceStyle = [(XBLaunchStateRequest *)self->_launchRequest userInterfaceStyle];
  screen = [(_XBWrapperWindow *)self->_wrapperWindow screen];
  [screen _updateUserInterfaceIdiom];
  [screen _setInterfaceOrientation:interfaceOrientation];
  _UIAppSetStatusBarOrientation();
  sub_100001634([(XBLaunchStateRequest *)self->_launchRequest statusBarState]);
  _UIAppSetStatusBarHeight();
  v17 = [screen _launchImageTraitCollectionForInterfaceOrientation:interfaceOrientation inBounds:{v8, v10, v12, v14}];
  v18 = +[UITraitCollection traitCollectionWithUserInterfaceIdiom:](UITraitCollection, "traitCollectionWithUserInterfaceIdiom:", [screen _userInterfaceIdiom]);
  v19 = [UITraitCollection traitCollectionWithUserInterfaceStyle:userInterfaceStyle];
  wrapperWindow = self->_wrapperWindow;
  v34[0] = v17;
  v34[1] = v18;
  v34[2] = v19;
  v21 = [NSArray arrayWithObjects:v34 count:3];
  v22 = [UITraitCollection traitCollectionWithTraitsFromCollections:v21];
  [(_XBWrapperWindow *)wrapperWindow _setLocalOverrideTraitCollection:v22];

  [(_XBWrapperWindow *)self->_wrapperWindow _setWindowInterfaceOrientation:interfaceOrientation];
  [(_XBWrapperWindow *)self->_wrapperWindow _setRotatableViewOrientation:interfaceOrientation updateStatusBar:0 duration:0 force:0.0];
  v23 = self->_wrapperWindow;
  customSafeAreaInsets = [(XBLaunchStateRequest *)self->_launchRequest customSafeAreaInsets];
  [(_XBWrapperWindow *)v23 _setCustomSafeAreaInsets:customSafeAreaInsets];

  [(_XBWrapperWindow *)self->_wrapperWindow setHidden:0];
  [(_XBWrapperWindow *)self->_wrapperWindow setFrame:v8, v10, v12, v14];
  view = [(UIViewController *)self->_rootViewController view];
  [(_XBWrapperWindow *)self->_wrapperWindow bounds];
  [view setFrame:?];

  [(_XBWrapperWindow *)self->_wrapperWindow setNeedsUpdateConstraints];
  [(_XBWrapperWindow *)self->_wrapperWindow setNeedsLayout];
  [(_XBWrapperWindow *)self->_wrapperWindow layoutIfNeeded];
  [(_XBWrapperWindow *)self->_wrapperWindow setNeedsDisplay];
  v26 = sub_1000012D0();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Updated window", buf, 2u);
  }

  +[CATransaction flush];
  +[CATransaction synchronize];
  captureOptions = self->_captureOptions;
  [(XBLaunchImageContextWrapper *)self contextID];
  appInfo = self->_appInfo;
  v29 = self->_launchRequest;
  launchInterface = self->_launchInterface;
  v30 = self->_wrapperWindow;
  if ((captureOptions & 2) != 0)
  {
    _XBPreparedLaunchInterfaceForCapture();
    v32 = 0;
    if (v32)
    {
      v33 = v32;
      [(XBLaunchCaptureInformation *)self->_captureInformation setCaarFilePath:v32];
    }
  }

  else
  {
    _XBPreparedLaunchInterfaceForCapture();
  }

  objc_autoreleasePoolPop(v3);
}

- (id)_ioSurfaceForLayerContents:(void *)contents
{
  v4 = CFGetTypeID(contents);
  if (v4 == CGImageGetTypeID())
  {
    CGImageGetImageProvider();
    contentsCopy = CGImageProviderCopyIOSurface();
  }

  else if (v4 == IOSurfaceGetTypeID())
  {
    contentsCopy = contents;
  }

  else
  {
    contentsCopy = 0;
  }

  return contentsCopy;
}

- (unint64_t)_estimatedMemorySizeOfViewHierarchy:(id)hierarchy
{
  hierarchyCopy = hierarchy;
  layer = [hierarchyCopy layer];
  contents = [layer contents];
  if (!contents)
  {
    v13 = sub_1000010B0();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
LABEL_16:
        allocationSize = 0;
        goto LABEL_30;
      }

      [hierarchyCopy bounds];
      allocationSize = 0;
      if (v16 <= 0.0 || v15 <= 0.0)
      {
        goto LABEL_30;
      }

      v13 = hierarchyCopy;
      image = [v13 image];
      if (image)
      {
        v18 = sub_1000010B0();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          bundleIdentifier = [(XBApplicationLaunchCompatibilityInfo *)self->_appInfo bundleIdentifier];
          *buf = 138543874;
          v47 = bundleIdentifier;
          v48 = 2114;
          v49 = v13;
          v50 = 2114;
          v51 = image;
          _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "[%{public}@] found UIImageView with no contents, but has image: %{public}@ %{public}@", buf, 0x20u);
        }
      }
    }

    goto LABEL_16;
  }

  v7 = [(XBLaunchImageContextWrapper *)self _ioSurfaceForLayerContents:contents];
  v8 = v7;
  if (v7)
  {
    width = [v7 width];
    height = [v8 height];
    allocationSize = [v8 allocationSize];
    v12 = sub_1000010B0();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      bundleIdentifier2 = [(XBApplicationLaunchCompatibilityInfo *)self->_appInfo bundleIdentifier];
      *buf = 138544642;
      v47 = bundleIdentifier2;
      v48 = 2048;
      v49 = width;
      v50 = 2048;
      v51 = height;
      v52 = 2048;
      v53 = allocationSize;
      v54 = 2114;
      v55 = hierarchyCopy;
      v56 = 2114;
      v57 = layer;
      _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "[%{public}@] found IOSurface in layer hierarchy; size: {%zu, %zu}; allocSize: %zu; view: %{public}@; layer: %{public}@", buf, 0x3Eu);
    }
  }

  else
  {
    v19 = CFGetTypeID(contents);
    if (v19 == CGImageGetTypeID())
    {
      Width = CGImageGetWidth(contents);
      Height = CGImageGetHeight(contents);
      BitsPerPixel = CGImageGetBitsPerPixel(contents);
      BytesPerRow = CGImageGetBytesPerRow(contents);
      if (CGImageGetAlphaInfo(contents) == kCGImageAlphaOnly)
      {
        v24 = sub_1000010B0();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          bundleIdentifier3 = [(XBApplicationLaunchCompatibilityInfo *)self->_appInfo bundleIdentifier];
          v26 = BitsPerPixel >> 3;
          *buf = 138543874;
          v47 = bundleIdentifier3;
          v27 = bundleIdentifier3;
          v48 = 2048;
          v49 = v26;
          v50 = 2048;
          v51 = BytesPerRow;
          _os_log_debug_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "[%{public}@] found CGImage that's alpha only. Trusting %zu bytes per pixel and %zu bytes per row", buf, 0x20u);
        }
      }

      else
      {
        v28 = BitsPerPixel >> 3;
        v29 = 4;
        if (v28 > 4)
        {
          v29 = v28;
        }

        BytesPerRow = v29 * Width;
        v24 = sub_1000010B0();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          bundleIdentifier4 = [(XBApplicationLaunchCompatibilityInfo *)self->_appInfo bundleIdentifier];
          *buf = 138543874;
          v47 = bundleIdentifier4;
          v48 = 2048;
          v49 = v28;
          v50 = 2048;
          v51 = BytesPerRow;
          _os_log_debug_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "[%{public}@] found CGImage that's NOT alpha only. Taking MAX(4, %zu) bytes per pixel to calculate %zu bytes per row", buf, 0x20u);
        }
      }

      v30 = sub_1000010B0();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        bundleIdentifier5 = [(XBApplicationLaunchCompatibilityInfo *)self->_appInfo bundleIdentifier];
        *buf = 138544642;
        v47 = bundleIdentifier5;
        v48 = 2048;
        v49 = Width;
        v50 = 2048;
        v51 = Height;
        v52 = 2048;
        v53 = BytesPerRow;
        v54 = 2114;
        v55 = hierarchyCopy;
        v56 = 2114;
        v57 = layer;
        _os_log_debug_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEBUG, "[%{public}@] found CGImage in layer hierarchy; size: {%zu, %zu}; bytesPerRow: %zu; view: %{public}@; layer: %{public}@", buf, 0x3Eu);
      }

      allocationSize = BytesPerRow * Height;
    }

    else
    {
      allocationSize = 0;
    }
  }

LABEL_30:
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  subviews = [hierarchyCopy subviews];
  v32 = [subviews countByEnumeratingWithState:&v41 objects:v45 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v42;
    do
    {
      for (i = 0; i != v33; i = i + 1)
      {
        if (*v42 != v34)
        {
          objc_enumerationMutation(subviews);
        }

        allocationSize += [(XBLaunchImageContextWrapper *)self _estimatedMemorySizeOfViewHierarchy:*(*(&v41 + 1) + 8 * i)];
      }

      v33 = [subviews countByEnumeratingWithState:&v41 objects:v45 count:16];
    }

    while (v33);
  }

  return allocationSize;
}

- (void)updateLaunchRequest:(id)request
{
  requestCopy = request;
  p_launchRequest = &self->_launchRequest;
  if (self->_launchRequest != requestCopy)
  {
    v7 = requestCopy;
    objc_storeStrong(p_launchRequest, request);
    if (v7)
    {
      p_launchRequest = [(XBLaunchImageContextWrapper *)self _update];
    }
  }

  _objc_release_x1(p_launchRequest);
}

- (void)invalidate
{
  [(_XBWrapperWindow *)self->_wrapperWindow setHidden:1];
  [(_XBWrapperWindow *)self->_wrapperWindow setRootViewController:0];
  wrapperWindow = self->_wrapperWindow;
  self->_wrapperWindow = 0;

  rootViewController = self->_rootViewController;
  self->_rootViewController = 0;

  [(NSBundle *)self->_bundle unload];
  bundle = self->_bundle;
  self->_bundle = 0;

  captureInformation = self->_captureInformation;
  self->_captureInformation = 0;

  self->_captureOptions = 0;

  +[_UIAssetManager _clearAllCachedImagesAndAssets];
}

@end