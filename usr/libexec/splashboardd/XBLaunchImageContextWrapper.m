@interface XBLaunchImageContextWrapper
+ (id)contextWrapperForApplicationWithCompatibilityInfo:(id)a3 launchRequest:(id)a4 captureOptions:(int64_t)a5;
- (BOOL)_verifyMemoryImpactOfViewHierarchy:(id)a3 bundleID:(id)a4 size:(unint64_t *)a5 error:(id *)a6;
- (XBLaunchImageContextWrapper)initWithApplicationCompatibilityInfo:(id)a3 launchRequest:(id)a4 captureOptions:(int64_t)a5;
- (id)_errorForParsingException:(id)a3 bundleID:(id)a4;
- (id)_ioSurfaceForLayerContents:(void *)a3;
- (id)_parseInterfaceConfiguration:(id)a3 bundle:(id)a4 bundleID:(id)a5 error:(id *)a6;
- (id)_parseInterfaceWithNibName:(id)a3 bundle:(id)a4 bundleID:(id)a5 error:(id *)a6;
- (id)_parseInterfaceWithStoryboardName:(id)a3 bundle:(id)a4 bundleID:(id)a5 error:(id *)a6;
- (id)_parseLaunchInterface:(id)a3 bundle:(id)a4 bundlePath:(id)a5 bundleID:(id)a6 error:(id *)a7;
- (unint64_t)_estimatedMemorySizeOfViewHierarchy:(id)a3;
- (unsigned)contextID;
- (void)_configureNewWindow;
- (void)_configureRootViewForRTL:(id)a3 bundle:(id)a4;
- (void)_update;
- (void)invalidate;
- (void)updateLaunchRequest:(id)a3;
@end

@implementation XBLaunchImageContextWrapper

+ (id)contextWrapperForApplicationWithCompatibilityInfo:(id)a3 launchRequest:(id)a4 captureOptions:(int64_t)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [[a1 alloc] initWithApplicationCompatibilityInfo:v9 launchRequest:v8 captureOptions:a5];

  return v10;
}

- (XBLaunchImageContextWrapper)initWithApplicationCompatibilityInfo:(id)a3 launchRequest:(id)a4 captureOptions:(int64_t)a5
{
  v9 = a3;
  v10 = a4;
  v25.receiver = self;
  v25.super_class = XBLaunchImageContextWrapper;
  v11 = [(XBLaunchImageContextWrapper *)&v25 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_appInfo, a3);
    objc_storeStrong(&v12->_launchRequest, a4);
    v13 = [v10 launchInterfaceIdentifier];
    v14 = [v9 launchInterfaceWithIdentifier:v13];
    launchInterface = v12->_launchInterface;
    v12->_launchInterface = v14;

    v12->_captureOptions = a5;
    if (a5)
    {
      v16 = objc_alloc_init(XBLaunchCaptureInformation);
      captureInformation = v12->_captureInformation;
      v12->_captureInformation = v16;
    }

    v18 = sub_1000012D0();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = [(XBApplicationLaunchCompatibilityInfo *)v12->_appInfo bundleIdentifier];
      v20 = [v10 launchInterfaceIdentifier];
      v21 = v12->_launchInterface;
      captureOptions = v12->_captureOptions;
      launchRequest = v12->_launchRequest;
      *buf = 138544386;
      v27 = v19;
      v28 = 2114;
      v29 = v20;
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

- (id)_errorForParsingException:(id)a3 bundleID:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v6 name];
  v8 = [v7 isEqualToString:@"UIWindowRestrictedSplashboardViewException"];
  v9 = [XBLaunchImageError alloc];
  v10 = [v6 description];

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
  v14 = [v9 initWithCode:v12 bundleID:v5 reason:v13 fatal:0];

  return v14;
}

- (id)_parseInterfaceWithStoryboardName:(id)a3 bundle:(id)a4 bundleID:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [UIStoryboard storyboardWithName:v9 bundle:v10];
  v13 = [v12 instantiateInitialViewController];

  if (a6 && !v13 && !*a6)
  {
    v14 = [XBLaunchImageError alloc];
    v15 = [NSString stringWithFormat:@"Could not load any content for the interface named %@.", v9];
    *a6 = [v14 initWithCode:3 bundleID:v11 reason:v15 fatal:0];
  }

  return v13;
}

- (id)_parseInterfaceWithNibName:(id)a3 bundle:(id)a4 bundleID:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v22 = a5;
  v21 = [UINib nibWithNibName:v9 bundle:v10];
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
            v17 = [(XBApplicationLaunchCompatibilityInfo *)self->_appInfo bundleIdentifier];
            sub_100005C88(v17, buf, &v29, v16);
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

  if (a6 && !v12 && !*a6)
  {
    v18 = [XBLaunchImageError alloc];
    v19 = [NSString stringWithFormat:@"Could not load any content for the interface named %@.", v9];
    *a6 = [v18 initWithCode:3 bundleID:v22 reason:v19 fatal:0];
  }

  return v12;
}

- (id)_parseInterfaceConfiguration:(id)a3 bundle:(id)a4 bundleID:(id)a5 error:(id *)a6
{
  v8 = a3;
  v51 = a4;
  v48 = a5;
  v50 = objc_alloc_init(UIViewController);
  v9 = objc_alloc_init(UIView);
  v10 = [v8 colorName];

  if (v10 && ([v8 colorName], v11 = objc_claimAutoreleasedReturnValue(), +[UIColor colorNamed:inBundle:compatibleWithTraitCollection:](UIColor, "colorNamed:inBundle:compatibleWithTraitCollection:", v11, v51, 0), v49 = objc_claimAutoreleasedReturnValue(), v11, (v12 = v49) != 0))
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

  v14 = [v8 imageName];

  if (v14)
  {
    v15 = [v8 imageName];
    v16 = [UIImage imageNamed:v15 inBundle:v51 compatibleWithTraitCollection:0];

    if (v16)
    {
      v17 = objc_alloc_init(XBUpdatingImageView);
      [v9 addSubview:v17];
      if ([v8 imageRespectsSafeAreaInsets])
      {
        [(XBUpdatingImageView *)v17 setTranslatesAutoresizingMaskIntoConstraints:0];
        v47 = [v9 safeAreaLayoutGuide];
        v46 = [v47 leadingAnchor];
        v45 = [(XBUpdatingImageView *)v17 leadingAnchor];
        v44 = [v46 constraintEqualToAnchor:v45];
        v52[0] = v44;
        v43 = [v47 trailingAnchor];
        v42 = [(XBUpdatingImageView *)v17 trailingAnchor];
        v41 = [v43 constraintEqualToAnchor:v42];
        v52[1] = v41;
        v40 = [v47 topAnchor];
        v18 = [(XBUpdatingImageView *)v17 topAnchor];
        v19 = [v40 constraintEqualToAnchor:v18];
        v52[2] = v19;
        v20 = [v47 bottomAnchor];
        v21 = [(XBUpdatingImageView *)v17 bottomAnchor];
        v22 = [v20 constraintEqualToAnchor:v21];
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

  v24 = [v8 bars];
  v25 = [v24 containsObject:XBLaunchConfigurationToolbarKey];

  if (v25)
  {
    v26 = objc_alloc_init(UIToolbar);
    v27 = [v8 toolbarImageName];
    v28 = [UIImage imageNamed:v27 inBundle:v51 compatibleWithTraitCollection:0];

    v29 = [[XBViewMatchingImageView alloc] initWithMatchingView:v26 image:v28 bottom:1];
    [(XBViewMatchingImageView *)v29 setAutoresizingMask:18];
    [v9 addSubview:v29];
  }

  else
  {
    v30 = [v8 bars];
    v31 = [v30 containsObject:XBLaunchConfigurationTabBarKey];

    if (!v31)
    {
      goto LABEL_19;
    }

    v26 = objc_alloc_init(UITabBar);
    v32 = [v8 tabBarImageName];
    v28 = [UIImage imageNamed:v32 inBundle:v51 compatibleWithTraitCollection:0];

    v29 = [[XBViewMatchingImageView alloc] initWithMatchingView:v26 image:v28 bottom:1];
    [(XBViewMatchingImageView *)v29 setAutoresizingMask:18];
    [v9 addSubview:v29];
  }

LABEL_19:
  v33 = [v8 bars];
  v34 = [v33 containsObject:XBLaunchConfigurationNavigationBarKey];

  if (v34)
  {
    v35 = objc_alloc_init(UINavigationBar);
    v36 = [v8 navigationBarImageName];
    v37 = [UIImage imageNamed:v36 inBundle:v51 compatibleWithTraitCollection:0];

    v38 = [[XBViewMatchingImageView alloc] initWithMatchingView:v35 image:v37 bottom:0];
    [(XBViewMatchingImageView *)v38 setAutoresizingMask:18];
    [v9 addSubview:v38];
  }

  [v50 setView:v9];

  return v50;
}

- (id)_parseLaunchInterface:(id)a3 bundle:(id)a4 bundlePath:(id)a5 bundleID:(id)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (!v13)
  {
    v19 = sub_1000012D0();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      sub_100005DB4();
    }

    if (a7)
    {
      v20 = [XBLaunchImageError alloc];
      v21 = [NSString stringWithFormat:@"Failed to construct NSBundle for %@ at %@.", v15, v14];
      *a7 = [v20 initWithCode:4 bundleID:v15 reason:v21 fatal:0];
    }

    goto LABEL_10;
  }

  if ([v12 isStoryboard])
  {
    v16 = sub_1000012D0();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      sub_100005D80();
    }

    v17 = [(XBLaunchInterface *)self->_launchInterface name];
    v18 = [(XBLaunchImageContextWrapper *)self _parseInterfaceWithStoryboardName:v17 bundle:v13 bundleID:v15 error:a7];
LABEL_19:
    v22 = v18;

    goto LABEL_20;
  }

  if ([v12 isXIB])
  {
    v23 = sub_1000012D0();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      sub_100005D4C();
    }

    v17 = [(XBLaunchInterface *)self->_launchInterface name];
    v18 = [(XBLaunchImageContextWrapper *)self _parseInterfaceWithNibName:v17 bundle:v13 bundleID:v15 error:a7];
    goto LABEL_19;
  }

  if ([v12 isConfiguration])
  {
    v24 = sub_1000012D0();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      sub_100005D18();
    }

    v17 = [(XBLaunchInterface *)self->_launchInterface configuration];
    v18 = [(XBLaunchImageContextWrapper *)self _parseInterfaceConfiguration:v17 bundle:v13 bundleID:v15 error:a7];
    goto LABEL_19;
  }

  if (!a7)
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
  *a7 = [[XBLaunchImageError alloc] initWithCode:1 bundleID:v15 reason:@"No such interface found." fatal:0];
LABEL_20:

  return v22;
}

- (void)_configureRootViewForRTL:(id)a3 bundle:(id)a4
{
  v5 = a3;
  if (v5)
  {
    v11 = v5;
    v6 = [(NSBundle *)self->_bundle localizations];
    v7 = +[NSLocale preferredLanguages];
    v8 = [NSBundle preferredLocalizationsFromArray:v6 forPreferences:v7];

    v9 = [v8 firstObject];
    v10 = [NSParagraphStyle defaultWritingDirectionForLanguage:v9];

    if (v10 == NSWritingDirectionRightToLeft)
    {
      sub_100002850(v11);
    }

    v5 = v11;
  }
}

- (BOOL)_verifyMemoryImpactOfViewHierarchy:(id)a3 bundleID:(id)a4 size:(unint64_t *)a5 error:(id *)a6
{
  v10 = a4;
  v11 = a3;
  [v11 setNeedsLayout];
  [v11 layoutIfNeeded];
  v12 = [(XBLaunchImageContextWrapper *)self _estimatedMemorySizeOfViewHierarchy:v11];

  if (a5)
  {
    *a5 = v12;
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
    if (a6)
    {
      v16 = [XBLaunchImageError alloc];
      v17 = [NSString stringWithFormat:@"[%@] Estimated size (%zu) is over limit (%zu)", v10, v12, 25000000];
      *a6 = [v16 initWithCode:6 bundleID:v10 reason:v17 fatal:0];
    }

    v15 = sub_1000010B0();
    if (os_signpost_enabled(v15))
    {
      v18 = [(XBApplicationLaunchCompatibilityInfo *)self->_appInfo bundleIdentifier];
      *buf = 138543874;
      v21 = v18;
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

  v6 = [(XBApplicationLaunchCompatibilityInfo *)self->_appInfo bundlePath];
  v7 = [NSBundle bundleWithPath:v6];
  bundle = self->_bundle;
  self->_bundle = v7;

  launchInterface = self->_launchInterface;
  v10 = self->_bundle;
  v11 = [(XBApplicationLaunchCompatibilityInfo *)self->_appInfo bundleIdentifier];
  v34 = 0;
  v12 = [(XBLaunchImageContextWrapper *)self _parseLaunchInterface:launchInterface bundle:v10 bundlePath:v6 bundleID:v11 error:&v34];
  v13 = v34;
  rootViewController = self->_rootViewController;
  self->_rootViewController = v12;

  v15 = self->_rootViewController;
  if (v15 && !v13)
  {
    v16 = [(UIViewController *)v15 view];
    v17 = sub_1000010B0();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v31 = [(XBApplicationLaunchCompatibilityInfo *)self->_appInfo bundleIdentifier];
      v32 = self->_rootViewController;
      *buf = 138412802;
      *&buf[4] = v31;
      v36 = 2112;
      v37 = v32;
      v38 = 2112;
      v39 = v16;
      _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "[%@] rootViewController: %@; rootView: %@", buf, 0x20u);
    }

    [(XBLaunchImageContextWrapper *)self _configureRootViewForRTL:v16 bundle:self->_bundle];
    *buf = 0;
    v18 = [(XBApplicationLaunchCompatibilityInfo *)self->_appInfo bundleIdentifier];
    v33 = 0;
    v19 = [(XBLaunchImageContextWrapper *)self _verifyMemoryImpactOfViewHierarchy:v16 bundleID:v18 size:buf error:&v33];
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
    v25 = [v13 isFatal];
    v26 = @"Error";
    if (v25)
    {
      v26 = @"Fatal error";
    }

    v27 = v26;
    v28 = sub_1000012D0();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = [(XBApplicationLaunchCompatibilityInfo *)self->_appInfo bundleIdentifier];
      v30 = [v13 succinctDescription];
      *buf = 138543874;
      *&buf[4] = v27;
      v36 = 2114;
      v37 = v29;
      v38 = 2114;
      v39 = v30;
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

  v6 = [(XBLaunchStateRequest *)self->_launchRequest interfaceOrientation];
  [(XBLaunchStateRequest *)self->_launchRequest naturalSize];
  BSRectWithSize();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = [(XBLaunchStateRequest *)self->_launchRequest userInterfaceStyle];
  v16 = [(_XBWrapperWindow *)self->_wrapperWindow screen];
  [v16 _updateUserInterfaceIdiom];
  [v16 _setInterfaceOrientation:v6];
  _UIAppSetStatusBarOrientation();
  sub_100001634([(XBLaunchStateRequest *)self->_launchRequest statusBarState]);
  _UIAppSetStatusBarHeight();
  v17 = [v16 _launchImageTraitCollectionForInterfaceOrientation:v6 inBounds:{v8, v10, v12, v14}];
  v18 = +[UITraitCollection traitCollectionWithUserInterfaceIdiom:](UITraitCollection, "traitCollectionWithUserInterfaceIdiom:", [v16 _userInterfaceIdiom]);
  v19 = [UITraitCollection traitCollectionWithUserInterfaceStyle:v15];
  wrapperWindow = self->_wrapperWindow;
  v34[0] = v17;
  v34[1] = v18;
  v34[2] = v19;
  v21 = [NSArray arrayWithObjects:v34 count:3];
  v22 = [UITraitCollection traitCollectionWithTraitsFromCollections:v21];
  [(_XBWrapperWindow *)wrapperWindow _setLocalOverrideTraitCollection:v22];

  [(_XBWrapperWindow *)self->_wrapperWindow _setWindowInterfaceOrientation:v6];
  [(_XBWrapperWindow *)self->_wrapperWindow _setRotatableViewOrientation:v6 updateStatusBar:0 duration:0 force:0.0];
  v23 = self->_wrapperWindow;
  v24 = [(XBLaunchStateRequest *)self->_launchRequest customSafeAreaInsets];
  [(_XBWrapperWindow *)v23 _setCustomSafeAreaInsets:v24];

  [(_XBWrapperWindow *)self->_wrapperWindow setHidden:0];
  [(_XBWrapperWindow *)self->_wrapperWindow setFrame:v8, v10, v12, v14];
  v25 = [(UIViewController *)self->_rootViewController view];
  [(_XBWrapperWindow *)self->_wrapperWindow bounds];
  [v25 setFrame:?];

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

- (id)_ioSurfaceForLayerContents:(void *)a3
{
  v4 = CFGetTypeID(a3);
  if (v4 == CGImageGetTypeID())
  {
    CGImageGetImageProvider();
    v5 = CGImageProviderCopyIOSurface();
  }

  else if (v4 == IOSurfaceGetTypeID())
  {
    v5 = a3;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)_estimatedMemorySizeOfViewHierarchy:(id)a3
{
  v4 = a3;
  v5 = [v4 layer];
  v6 = [v5 contents];
  if (!v6)
  {
    v13 = sub_1000010B0();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
LABEL_16:
        v11 = 0;
        goto LABEL_30;
      }

      [v4 bounds];
      v11 = 0;
      if (v16 <= 0.0 || v15 <= 0.0)
      {
        goto LABEL_30;
      }

      v13 = v4;
      v17 = [v13 image];
      if (v17)
      {
        v18 = sub_1000010B0();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          v39 = [(XBApplicationLaunchCompatibilityInfo *)self->_appInfo bundleIdentifier];
          *buf = 138543874;
          v47 = v39;
          v48 = 2114;
          v49 = v13;
          v50 = 2114;
          v51 = v17;
          _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "[%{public}@] found UIImageView with no contents, but has image: %{public}@ %{public}@", buf, 0x20u);
        }
      }
    }

    goto LABEL_16;
  }

  v7 = [(XBLaunchImageContextWrapper *)self _ioSurfaceForLayerContents:v6];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 width];
    v10 = [v8 height];
    v11 = [v8 allocationSize];
    v12 = sub_1000010B0();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v37 = [(XBApplicationLaunchCompatibilityInfo *)self->_appInfo bundleIdentifier];
      *buf = 138544642;
      v47 = v37;
      v48 = 2048;
      v49 = v9;
      v50 = 2048;
      v51 = v10;
      v52 = 2048;
      v53 = v11;
      v54 = 2114;
      v55 = v4;
      v56 = 2114;
      v57 = v5;
      _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "[%{public}@] found IOSurface in layer hierarchy; size: {%zu, %zu}; allocSize: %zu; view: %{public}@; layer: %{public}@", buf, 0x3Eu);
    }
  }

  else
  {
    v19 = CFGetTypeID(v6);
    if (v19 == CGImageGetTypeID())
    {
      Width = CGImageGetWidth(v6);
      Height = CGImageGetHeight(v6);
      BitsPerPixel = CGImageGetBitsPerPixel(v6);
      BytesPerRow = CGImageGetBytesPerRow(v6);
      if (CGImageGetAlphaInfo(v6) == kCGImageAlphaOnly)
      {
        v24 = sub_1000010B0();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          v25 = [(XBApplicationLaunchCompatibilityInfo *)self->_appInfo bundleIdentifier];
          v26 = BitsPerPixel >> 3;
          *buf = 138543874;
          v47 = v25;
          v27 = v25;
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
          v40 = [(XBApplicationLaunchCompatibilityInfo *)self->_appInfo bundleIdentifier];
          *buf = 138543874;
          v47 = v40;
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
        v38 = [(XBApplicationLaunchCompatibilityInfo *)self->_appInfo bundleIdentifier];
        *buf = 138544642;
        v47 = v38;
        v48 = 2048;
        v49 = Width;
        v50 = 2048;
        v51 = Height;
        v52 = 2048;
        v53 = BytesPerRow;
        v54 = 2114;
        v55 = v4;
        v56 = 2114;
        v57 = v5;
        _os_log_debug_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEBUG, "[%{public}@] found CGImage in layer hierarchy; size: {%zu, %zu}; bytesPerRow: %zu; view: %{public}@; layer: %{public}@", buf, 0x3Eu);
      }

      v11 = BytesPerRow * Height;
    }

    else
    {
      v11 = 0;
    }
  }

LABEL_30:
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v31 = [v4 subviews];
  v32 = [v31 countByEnumeratingWithState:&v41 objects:v45 count:16];
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
          objc_enumerationMutation(v31);
        }

        v11 += [(XBLaunchImageContextWrapper *)self _estimatedMemorySizeOfViewHierarchy:*(*(&v41 + 1) + 8 * i)];
      }

      v33 = [v31 countByEnumeratingWithState:&v41 objects:v45 count:16];
    }

    while (v33);
  }

  return v11;
}

- (void)updateLaunchRequest:(id)a3
{
  v5 = a3;
  p_launchRequest = &self->_launchRequest;
  if (self->_launchRequest != v5)
  {
    v7 = v5;
    objc_storeStrong(p_launchRequest, a3);
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