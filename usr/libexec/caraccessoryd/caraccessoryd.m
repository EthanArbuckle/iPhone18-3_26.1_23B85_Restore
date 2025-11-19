uint64_t CAFPreferencesGetBoolean(const __CFString *a1, unsigned int a2)
{
  keyExistsAndHasValidFormat = 0;
  v3 = CFPreferencesGetAppBooleanValue(a1, @"com.apple.CarAccessoryFramework", &keyExistsAndHasValidFormat) != 0;
  if (keyExistsAndHasValidFormat)
  {
    return v3;
  }

  else
  {
    return a2;
  }
}

double CAFPreferencesGetDouble(void *a1, double a2)
{
  v3 = a1;
  v4 = [NSNumber numberWithDouble:a2];
  v5 = CAFPreferencesGetNumber(v3, v4);

  [v5 doubleValue];
  v7 = v6;

  return v7;
}

id CAFPreferencesGetNumber(const __CFString *a1, void *a2)
{
  v3 = a2;
  v4 = CFPreferencesCopyAppValue(a1, @"com.apple.CarAccessoryFramework");
  objc_opt_class();
  v5 = v4;
  if (!v5 || (v6 = v5, (objc_opt_isKindOfClass() & 1) == 0))
  {

    v6 = v3;
  }

  return v6;
}

id CAFPreferencesGetArray(const __CFString *a1, void *a2)
{
  v3 = a2;
  v4 = CFPreferencesCopyAppValue(a1, @"com.apple.CarAccessoryFramework");
  objc_opt_class();
  v5 = v4;
  if (!v5 || (v6 = v5, (objc_opt_isKindOfClass() & 1) == 0))
  {

    v6 = v3;
  }

  return v6;
}

BOOL CAFDefaultsHasValue(void *a1)
{
  v1 = a1;
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 valueForKey:v1];

  return v3 != 0;
}

id CAFDefaultsGetBoolean(void *a1, id a2)
{
  v3 = a1;
  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = [v4 valueForKey:v3];

  if (v5)
  {
    a2 = [v5 BOOLValue];
  }

  return a2;
}

void sub_100002668(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100003114(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 + 48));
  objc_destroyWeak((v3 - 112));
  _Unwind_Resume(a1);
}

void sub_100004304(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000087DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000094DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v12 - 72), 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_4(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_12(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0x16u);
}

void sub_10000B5C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_2_0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

int main(int argc, const char **argv, const char **envp)
{
  v3 = objc_autoreleasePoolPush();
  CAFSignpostEmit_Launched();
  Boolean = CAFPreferencesGetBoolean(@"fastStartupRegistration", 1u);
  v5 = CAFDLogging();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
  if (Boolean)
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "cafd starting with fastStartup", buf, 2u);
    }

    v7 = [CAFCarManagerMutableConfiguration alloc];
    v5 = +[CAFRegistrations fastStartup];
    v8 = [v7 initWithRegistrationDictionary:v5];
  }

  else
  {
    if (v6)
    {
      *v59 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "cafd starting without fastStartup", v59, 2u);
    }

    v8 = 0;
  }

  v9 = objc_alloc_init(CARSessionStatus);
  v10 = _MergedGlobals;
  _MergedGlobals = v9;

  v11 = CAFDLogging();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    main_cold_1();
  }

  v12 = [_TtC13caraccessoryd28CAFDSessionBoostServiceAgent alloc];
  v13 = [(CAFDSessionBoostServiceAgent *)v12 initWithSessionStatus:_MergedGlobals];
  v14 = sessionBoost;
  sessionBoost = v13;

  v15 = [CAFDCarDataServiceAgent alloc];
  v16 = [(CAFDCarDataServiceAgent *)v15 initWithSessionStatus:_MergedGlobals config:v8];
  v17 = qword_100060E48;
  qword_100060E48 = v16;

  v18 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.caraccessoryframework.cardata"];
  v19 = carDataListener;
  carDataListener = v18;

  [carDataListener setDelegate:qword_100060E48];
  [carDataListener activate];
  xpc_set_event_stream_handler("com.apple.notifyd.matching", &_dispatch_main_q, &__block_literal_global_0);
  v20 = objc_alloc_init(CAFCarManager);
  v21 = qword_100060E50;
  qword_100060E50 = v20;

  if (_os_feature_enabled_impl())
  {
    v22 = CAFDLogging();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      main_cold_2();
    }

    v23 = [_TtC13caraccessoryd28CAFDAppClipsDeclarationAgent alloc];
    v24 = [(CAFDAppClipsDeclarationAgent *)v23 initWithCarManager:qword_100060E50];
    v25 = appClipsAgent;
    appClipsAgent = v24;
  }

  v26 = [_TtC13caraccessoryd22CAFDAssetVariantsAgent alloc];
  v27 = [(CAFDAssetVariantsAgent *)v26 initWithCarManager:qword_100060E50 sessionStatus:_MergedGlobals];
  v28 = assetVariants;
  assetVariants = v27;

  v29 = [assetVariants domain];
  v30 = [BSServicesConfiguration activateManualDomain:v29];
  v31 = assetVariantsToken;
  assetVariantsToken = v30;

  v32 = [_TtC13caraccessoryd27CAFDVehicleResourcesManager alloc];
  v33 = [(CAFDVehicleResourcesManager *)v32 initWithCarManager:qword_100060E50];
  v34 = vehicleResourcesManager;
  vehicleResourcesManager = v33;

  [assetVariants setVehicleResourcesManager:vehicleResourcesManager];
  [vehicleResourcesManager setAssetVariantsAgent:assetVariants];
  v35 = [_TtC13caraccessoryd19CAFDNowPlayingAgent alloc];
  v36 = [(CAFDNowPlayingAgent *)v35 initWithCarManager:qword_100060E50];
  v37 = nowPlayingAgent;
  nowPlayingAgent = v36;

  v38 = [nowPlayingAgent domain];
  v39 = [BSServicesConfiguration activateManualDomain:v38];
  v40 = nowPlayingToken;
  nowPlayingToken = v39;

  v41 = [_TtC13caraccessoryd17CAFDAppLinksAgent alloc];
  v42 = [(CAFDAppLinksAgent *)v41 initWithCarManager:qword_100060E50];
  v43 = appLinksAgent;
  appLinksAgent = v42;

  v44 = [appLinksAgent domain];
  v45 = [BSServicesConfiguration activateManualDomain:v44];
  v46 = appLinksToken;
  appLinksToken = v45;

  LODWORD(v44) = _os_feature_enabled_impl();
  v47 = CAFDLogging();
  v48 = os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT);
  if (v44)
  {
    if (v48)
    {
      *v58 = 0;
      _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "cafd AppIntents enabled", v58, 2u);
    }

    v49 = [_TtC13caraccessoryd13CAFDFramework alloc];
    v50 = [(CAFDFramework *)v49 initWithCarManager:qword_100060E50];
    v47 = daemonFramework;
    daemonFramework = v50;
  }

  else if (v48)
  {
    *v57 = 0;
    _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "cafd AppIntents disabled", v57, 2u);
  }

  v51 = [_TtC13caraccessoryd20CAFDAppLaunchManager alloc];
  v52 = [(CAFDAppLaunchManager *)v51 initWithCarManager:qword_100060E50];
  v53 = appLaunchManager;
  appLaunchManager = v52;

  v54 = CAFDLogging();
  if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
  {
    main_cold_3();
  }

  objc_autoreleasePoolPop(v3);
  v55 = +[NSRunLoop mainRunLoop];
  [v55 run];

  return 0;
}

void __main_block_invoke(id a1, OS_xpc_object *a2)
{
  string = xpc_dictionary_get_string(a2, _xpc_event_key_name);
  if (string)
  {
    v3 = [NSString stringWithUTF8String:string];
    v4 = CAFDLogging();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __main_block_invoke_cold_1();
    }
  }
}

void sub_1000119C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id OUTLINED_FUNCTION_2_1(id a1)
{

  return a1;
}

void OUTLINED_FUNCTION_3_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

uint64_t OUTLINED_FUNCTION_7_0()
{

  return objc_opt_class();
}

__CFData *CAFImageDataByScalingImageData(void *a1, double a2, double a3)
{
  v5 = a1;
  v6 = [v5 length];
  v7 = v5;
  v8 = v7;
  v9 = v7;
  if (!v6)
  {
    goto LABEL_10;
  }

  if (!v7 || (v10 = CGImageSourceCreateWithData(v7, 0)) == 0)
  {
LABEL_8:

LABEL_9:
    v9 = v8;
    goto LABEL_10;
  }

  v11 = v10;
  v12 = CGImageSourceCopyPropertiesAtIndex(v10, 0, 0);
  if (!v12)
  {
    CFRelease(v11);
    goto LABEL_8;
  }

  v13 = v12;
  valuePtr = 0;
  Value = CFDictionaryGetValue(v12, kCGImagePropertyOrientation);
  if (Value)
  {
    CFNumberGetValue(Value, kCFNumberIntType, &valuePtr);
    v15 = valuePtr > 4;
  }

  else
  {
    v15 = 0;
  }

  v17 = CFDictionaryGetValue(v13, kCGImagePropertyPixelWidth);
  if (v17 && CFNumberGetValue(v17, kCFNumberIntType, &valuePtr))
  {
    if (v15)
    {
      v18 = 0;
    }

    else
    {
      v18 = valuePtr;
    }

    if (v15)
    {
      v19 = valuePtr;
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v18 = 0;
    v19 = 0;
  }

  v20 = CFDictionaryGetValue(v13, kCGImagePropertyPixelHeight);
  if (v20 && CFNumberGetValue(v20, kCFNumberIntType, &valuePtr))
  {
    if (v15)
    {
      v18 = valuePtr;
    }

    else
    {
      v19 = valuePtr;
    }
  }

  CFRelease(v13);

  v21 = v18;
  v22 = v19;
  if (a2 >= v18 && a3 >= v22)
  {
    CFRelease(v11);
    goto LABEL_9;
  }

  if (a2 / v21 >= a3 / v22)
  {
    v24 = a3 / v22;
  }

  else
  {
    v24 = a2 / v21;
  }

  if (CGImageSourceGetCount(v11))
  {
    v25 = CGImageSourceCopyPropertiesAtIndex(v11, 0, 0);
    ImageAtIndex = CGImageSourceCreateImageAtIndex(v11, 0, 0);
    if (ImageAtIndex)
    {
      v27 = ImageAtIndex;
      v28 = v24 * v21;
      v29 = v24 * v22;
      v30 = vcvtms_u32_f32(v29);
      if (vcvtms_u32_f32(v28))
      {
        v31 = v30 == 0;
      }

      else
      {
        v31 = 1;
      }

      if (!v31)
      {
        v32 = CGImageCreateByScaling();
        CFRelease(v27);
        v27 = v32;
      }

      v9 = objc_opt_new();
      v33 = CGImageDestinationCreateWithData(v9, @"public.jpeg", 1uLL, 0);
      if (v33)
      {
        v34 = v33;
        v35 = [NSMutableDictionary dictionaryWithDictionary:v25];
        v36 = [NSNumber numberWithDouble:0.75];
        [v35 setObject:v36 forKeyedSubscript:kCGImageDestinationLossyCompressionQuality];

        CGImageDestinationAddImage(v34, v27, v35);
        CGImageDestinationFinalize(v34);
        CFRelease(v34);
      }

      CGImageRelease(v27);
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  CFRelease(v11);
LABEL_10:

  return v9;
}

CGImageRef CAFCreateImageRefForData(const __CFData *a1)
{
  v1 = CGDataProviderCreateWithCFData(a1);
  v2 = CGImageCreateWithPNGDataProvider(v1, 0, 1, kCGRenderingIntentDefault);
  if (!v2)
  {
    v2 = CGImageCreateWithJPEGDataProvider(v1, 0, 1, kCGRenderingIntentDefault);
  }

  CGDataProviderRelease(v1);
  return v2;
}

BOOL CAFImageDataIsValidImage(const __CFData *a1)
{
  v1 = CAFCreateImageRefForData(a1);
  v2 = v1;
  if (v1)
  {
    CFRelease(v1);
  }

  return v2 != 0;
}

void ZipArchiverCopyFileFinishedHandler(uint64_t a1, const char *a2)
{
  v5 = BOMCopierUserData();
  v3 = +[NSFileManager defaultManager];
  v4 = [v3 stringWithFileSystemRepresentation:a2 length:strlen(a2)];

  [v5 addObject:v4];
}

void *CAFDAssetVariantsAgent.vehicleResourcesManager.getter()
{
  v1 = OBJC_IVAR____TtC13caraccessoryd22CAFDAssetVariantsAgent_vehicleResourcesManager;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void CAFDAssetVariantsAgent.vehicleResourcesManager.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC13caraccessoryd22CAFDAssetVariantsAgent_vehicleResourcesManager;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  CAFDAssetVariantsAgent.vehicleResourcesManager.didset();
}

uint64_t CAFDAssetVariantsAgent.vehicleResourcesManager.didset()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin();
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.assetUtils.getter();
  v6 = v0;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = OBJC_IVAR____TtC13caraccessoryd22CAFDAssetVariantsAgent_vehicleResourcesManager;
    swift_beginAccess();
    v12 = *&v6[v11];
    *(v9 + 4) = v12;
    *v10 = v12;
    v13 = v12;
    _os_log_impl(&_mh_execute_header, v7, v8, "vehicleResourcesManager didset %@", v9, 0xCu);
    outlined destroy of NSObject?(v10, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  }

  return (*(v2 + 8))(v5, v1);
}

uint64_t (*CAFDAssetVariantsAgent.vehicleResourcesManager.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return CAFDAssetVariantsAgent.vehicleResourcesManager.modify;
}

uint64_t CAFDAssetVariantsAgent.vehicleResourcesManager.modify(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    return CAFDAssetVariantsAgent.vehicleResourcesManager.didset();
  }

  return result;
}

uint64_t variable initialization expression of CAFDAssetVariantsAgent.workQueue()
{
  type metadata accessor for CAUVariantsService();
  static CAUVariantsService.identifier.getter();
  v0 = String._bridgeToObjectiveC()();

  v1 = [objc_opt_self() serial];
  v2 = BSDispatchQueueCreate();

  return v2;
}

uint64_t CAFDAssetVariantsAgent.assetVariants.willset(uint64_t a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.assetUtils.getter();

  v8 = v1;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v21[1] = v12;
    *v11 = 136315394;
    v22 = *&v8[OBJC_IVAR____TtC13caraccessoryd22CAFDAssetVariantsAgent_assetVariants];
    v23 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDy13CarAssetUtils15CAUVehicleTraitOSSGSgMd, &_sSDy13CarAssetUtils15CAUVehicleTraitOSSGSgMR);
    lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [CAUVehicleTrait : String] and conformance [A : B], &_sSDy13CarAssetUtils15CAUVehicleTraitOSSGMd, &_sSDy13CarAssetUtils15CAUVehicleTraitOSSGMR);
    v13 = Optional<A>.description.getter();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v23);
    v21[0] = v3;
    v16 = v15;

    *(v11 + 4) = v16;
    *(v11 + 12) = 2080;
    v22 = a1;
    v17 = Optional<A>.description.getter();
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v23);

    *(v11 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v9, v10, "updating assetVariants from %s to %s", v11, 0x16u);
    swift_arrayDestroy();

    return (*(v4 + 8))(v7, v21[0]);
  }

  else
  {

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t CAFDAssetVariantsAgent.assetExtrasURL.willset(void *a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.assetUtils.getter();
  v8 = a1;
  v9 = v1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v22 = a1;
    *v12 = 136315394;
    v24 = *&v9[OBJC_IVAR____TtC13caraccessoryd22CAFDAssetVariantsAgent_assetExtrasURL];
    v25 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo26NSSecurityScopedURLWrapperCSgMd, &_sSo26NSSecurityScopedURLWrapperCSgMR);
    lazy protocol witness table accessor for type NSSecurityScopedURLWrapper and conformance NSObject();
    v14 = Optional<A>.description.getter();
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v25);
    v23 = v3;
    v17 = v16;

    *(v12 + 4) = v17;
    *(v12 + 12) = 2080;
    v24 = v22;
    v18 = Optional<A>.description.getter();
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v25);

    *(v12 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v10, v11, "updating assetExtrasURL from %s to %s", v12, 0x16u);
    swift_arrayDestroy();

    return (*(v4 + 8))(v7, v23);
  }

  else
  {

    return (*(v4 + 8))(v7, v3);
  }
}

void CAFDAssetVariantsAgent.refreshClients()()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC13caraccessoryd22CAFDAssetVariantsAgent_connections;
  swift_beginAccess();
  v31 = *(v0 + v6);
  if ((v31 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for CAFDAssetVariantsAgent._ConnectionProxy();
    lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type CAFDAssetVariantsAgent._ConnectionProxy and conformance NSObject, type metadata accessor for CAFDAssetVariantsAgent._ConnectionProxy);
    Set.Iterator.init(_cocoa:)();
    v9 = v39;
    v8 = v40;
    v10 = v41;
    v11 = v42;
    v12 = v43;
  }

  else
  {
    v13 = -1 << *(v31 + 32);
    v8 = v31 + 56;
    v10 = ~v13;
    v14 = -v13;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v12 = v15 & *(v31 + 56);
    v9 = v31;
    swift_bridgeObjectRetain_n();
    v11 = 0;
  }

  v30 = v10;
  v16 = (v10 + 64) >> 6;
  v34 = (v2 + 8);
  *&v7 = 138412290;
  v32 = v7;
  v33 = v5;
  v35 = v9;
  while (v9 < 0)
  {
    v22 = __CocoaSet.Iterator.next()();
    if (!v22 || (v37 = v22, type metadata accessor for CAFDAssetVariantsAgent._ConnectionProxy(), swift_dynamicCast(), v21 = v38, v19 = v11, v20 = v12, !v38))
    {
LABEL_20:
      outlined consume of Set<CAFDAssetVariantsAgent._ConnectionProxy>.Iterator._Variant();

      return;
    }

LABEL_18:
    v36 = v20;
    static Logger.assetUtils.getter();
    v23 = v21;
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = v1;
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = v32;
      *(v27 + 4) = v23;
      *v28 = v21;
      v29 = v23;
      _os_log_impl(&_mh_execute_header, v24, v25, "queuing refresh %@", v27, 0xCu);
      outlined destroy of NSObject?(v28, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

      v1 = v26;
      v5 = v33;
    }

    (*v34)(v5, v1);
    [v23 refreshVariants];

    v11 = v19;
    v9 = v35;
    v12 = v36;
  }

  v17 = v11;
  v18 = v12;
  v19 = v11;
  if (v12)
  {
LABEL_14:
    v20 = (v18 - 1) & v18;
    v21 = *(*(v9 + 48) + ((v19 << 9) | (8 * __clz(__rbit64(v18)))));
    if (!v21)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  while (1)
  {
    v19 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v19 >= v16)
    {
      goto LABEL_20;
    }

    v18 = *(v8 + 8 * v19);
    ++v17;
    if (v18)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

char *CAFDAssetVariantsAgent.init(carManager:sessionStatus:)(void *a1, void *a2)
{
  v3 = v2;
  v40 = a2;
  v41 = type metadata accessor for Logger();
  v5 = *(v41 - 8);
  v6 = *(v5 + 64);
  v7 = (__chkstk_darwin)();
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v40 - v10;
  *&v2[OBJC_IVAR____TtC13caraccessoryd22CAFDAssetVariantsAgent_vehicleResourcesManager] = 0;
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR____TtC13caraccessoryd22CAFDAssetVariantsAgent_currentCar] = 0;
  *&v2[OBJC_IVAR____TtC13caraccessoryd22CAFDAssetVariantsAgent_vehicleResources] = 0;
  *&v2[OBJC_IVAR____TtC13caraccessoryd22CAFDAssetVariantsAgent_clusterThemeManager] = 0;
  v12 = OBJC_IVAR____TtC13caraccessoryd22CAFDAssetVariantsAgent_workQueue;
  type metadata accessor for CAUVariantsService();
  static CAUVariantsService.identifier.getter();
  v13 = String._bridgeToObjectiveC()();

  v14 = [objc_opt_self() serial];
  v15 = BSDispatchQueueCreate();

  *&v3[v12] = v15;
  *&v3[OBJC_IVAR____TtC13caraccessoryd22CAFDAssetVariantsAgent_listener] = 0;
  if (&_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC13caraccessoryd22CAFDAssetVariantsAgentC16_ConnectionProxy33_AD8EB03328B3296C924C05733247A05ALLC_Tt0g5Tf4g_nTm(&_swiftEmptyArrayStorage, &_ss11_SetStorageCy13caraccessoryd22CAFDAssetVariantsAgentC16_ConnectionProxy33_AD8EB03328B3296C924C05733247A05ALLCGMd, &_ss11_SetStorageCy13caraccessoryd22CAFDAssetVariantsAgentC16_ConnectionProxy33_AD8EB03328B3296C924C05733247A05ALLCGMR, type metadata accessor for CAFDAssetVariantsAgent._ConnectionProxy);
  }

  else
  {
    v16 = &_swiftEmptySetSingleton;
  }

  *&v3[OBJC_IVAR____TtC13caraccessoryd22CAFDAssetVariantsAgent_connections] = v16;
  *&v3[OBJC_IVAR____TtC13caraccessoryd22CAFDAssetVariantsAgent_assetVariants] = 0;
  *&v3[OBJC_IVAR____TtC13caraccessoryd22CAFDAssetVariantsAgent_assetExtrasURL] = 0;
  static Logger.assetUtils.getter();
  v17 = a1;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v20 = 138412290;
    *(v20 + 4) = v17;
    *v21 = v17;
    v22 = v17;
    _os_log_impl(&_mh_execute_header, v18, v19, "Initializing with carManager %@", v20, 0xCu);
    outlined destroy of NSObject?(v21, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  }

  v23 = *(v5 + 8);
  v23(v11, v41);
  swift_unknownObjectWeakAssign();
  v24 = v40;
  *&v3[OBJC_IVAR____TtC13caraccessoryd22CAFDAssetVariantsAgent_sessionStatus] = v40;
  v25 = type metadata accessor for CAFDAssetVariantsAgent();
  v43.receiver = v3;
  v43.super_class = v25;
  v26 = v24;
  v27 = objc_msgSendSuper2(&v43, "init");
  *(&v40 - 2) = __chkstk_darwin(v27);
  v28 = swift_allocObject();
  *(v28 + 16) = partial apply for closure #1 in CAFDAssetVariantsAgent.init(carManager:sessionStatus:);
  *(v28 + 24) = &v40 - 4;
  aBlock[4] = partial apply for thunk for @callee_guaranteed (@guaranteed BSServiceConnectionListenerConfiguring) -> ();
  aBlock[5] = v28;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed BSServiceConnectionListenerConfiguring) -> ();
  aBlock[3] = &block_descriptor;
  v29 = _Block_copy(aBlock);
  v30 = objc_opt_self();
  v31 = v27;

  v32 = [v30 listenerWithConfigurator:v29];
  _Block_release(v29);

  LOBYTE(v29) = swift_isEscapingClosureAtFileLocation();

  if (v29)
  {
    __break(1u);
  }

  else
  {
    v34 = OBJC_IVAR____TtC13caraccessoryd22CAFDAssetVariantsAgent_listener;
    v35 = *&v31[OBJC_IVAR____TtC13caraccessoryd22CAFDAssetVariantsAgent_listener];
    *&v31[OBJC_IVAR____TtC13caraccessoryd22CAFDAssetVariantsAgent_listener] = v32;

    static Logger.assetUtils.getter();
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v36, v37, "activating listener", v38, 2u);
    }

    v23(v9, v41);
    result = *&v31[v34];
    if (result)
    {
      [result activate];
      [v17 registerObserver:v31];
      v39 = [v17 currentCar];
      [v31 carManager:v17 didUpdateCurrentCar:v39];

      return v31;
    }
  }

  __break(1u);
  return result;
}

id closure #1 in CAFDAssetVariantsAgent.init(carManager:sessionStatus:)(void *a1, uint64_t a2)
{
  type metadata accessor for CAUVariantsService();
  static CAUVariantsService.domain.getter();
  v4 = String._bridgeToObjectiveC()();

  [a1 setDomain:v4];

  static CAUVariantsService.identifier.getter();
  v5 = String._bridgeToObjectiveC()();

  [a1 setService:v5];

  return [a1 setDelegate:a2];
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed BSServiceConnectionListenerConfiguring) -> ()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  swift_unknownObjectRetain();
  v4(a2);

  return swift_unknownObjectRelease();
}

id CAFDAgent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void CAFDAssetVariantsAgent.carDidUpdateAccessories(_:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.assetUtils.getter();
  v9 = a1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v25 = v4;
    v12 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v26 = v24;
    *v12 = 136315138;
    v13 = [v9 vehicleResources];
    if (v13)
    {
      v14 = v13;
      v15 = [v13 description];

      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;
    }

    else
    {
      v18 = 0xE300000000000000;
      v16 = 7104878;
    }

    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, &v26);

    *(v12 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v10, v11, "Checking for vehicleResources: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v24);

    (*(v5 + 8))(v8, v25);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }

  v20 = [v9 vehicleResources];
  v21 = *(v2 + OBJC_IVAR____TtC13caraccessoryd22CAFDAssetVariantsAgent_vehicleResources);
  *(v2 + OBJC_IVAR____TtC13caraccessoryd22CAFDAssetVariantsAgent_vehicleResources) = v20;
  v22 = v20;

  if (v22)
  {
    [v22 registerObserver:v2];
  }

  CAFDAssetVariantsAgent.updateAssetVariants()();
}

Swift::Void __swiftcall CAFDAssetVariantsAgent.updateAssetVariants()()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v67 - v7;
  v9 = type metadata accessor for CAUVehicleTrait();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v0 + OBJC_IVAR____TtC13caraccessoryd22CAFDAssetVariantsAgent_vehicleResources);
  if (v14)
  {
    v15 = v14;
    if ([v15 receivedAllValues])
    {
      v73 = v13;
      v74 = v0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13CarAssetUtils15CAUVehicleTraitO_SStGMd, &_ss23_ContiguousArrayStorageCy13CarAssetUtils15CAUVehicleTraitO_SStGMR);
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13CarAssetUtils15CAUVehicleTraitO_SStMd, &_s13CarAssetUtils15CAUVehicleTraitO_SStMR);
      v68 = v16;
      v17 = *(v16 - 8);
      v75 = *(v17 + 72);
      v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_100042860;
      v20 = v19 + v18;
      v21 = v9;
      v22 = (v20 + *(v16 + 48));
      v24 = v10 + 104;
      v23 = *(v10 + 104);
      v25 = v20;
      v69 = v20;
      v23();
      v26 = [v15 vehicleVariant];
      v27 = [v26 exteriorStyle];
      v71 = v10;
      v28 = v15;
      v29 = v27;

      v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v32 = v31;

      *v22 = v30;
      v22[1] = v32;
      v33 = (v25 + v75 + *(v68 + 48));
      v70 = v21;
      v72 = v23;
      v75 = v24;
      v23();
      v34 = [v28 vehicleVariant];
      v35 = [v34 interiorStyle];

      v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v38 = v37;

      v39 = v28;
      *v33 = v36;
      v33[1] = v38;
      v40 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC13CarAssetUtils15CAUVehicleTraitO_SSTt0g5Tf4g_n(v19);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v41 = [v28 vehicleVariant];
      v42 = [v41 vehicleLayout];

      if (v42)
      {
        v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v45 = v44;

        v47 = v72;
        v46 = v73;
        v48 = v70;
        (v72)(v73, enum case for CAUVehicleTrait.vehicleLayout(_:), v70);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v76 = v40;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v43, v45, v46, isUniquelyReferenced_nonNull_native);
        v50 = v71;
        v51 = v48;
        (*(v71 + 8))(v46, v48);
        v40 = v76;
        v52 = v50;
      }

      else
      {
        v51 = v70;
        v52 = v71;
        v47 = v72;
        v46 = v73;
      }

      v59 = [v39 vehicleVariant];
      v60 = [v59 audioLogo];

      if (v60)
      {
        v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v63 = v62;

        (v47)(v46, enum case for CAUVehicleTrait.audioBrandLogo(_:), v51);
        v64 = swift_isUniquelyReferenced_nonNull_native();
        v76 = v40;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v61, v63, v46, v64);
        (*(v52 + 8))(v46, v51);
        v40 = v76;
      }

      v65 = v74;
      CAFDAssetVariantsAgent.assetVariants.willset(v40);
      v66 = *(v65 + OBJC_IVAR____TtC13caraccessoryd22CAFDAssetVariantsAgent_assetVariants);
      *(v65 + OBJC_IVAR____TtC13caraccessoryd22CAFDAssetVariantsAgent_assetVariants) = v40;

      CAFDAssetVariantsAgent.refreshClients()();
    }

    else
    {
      static Logger.assetUtils.getter();
      v56 = Logger.logObject.getter();
      v57 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        *v58 = 0;
        _os_log_impl(&_mh_execute_header, v56, v57, "Missing values from variants", v58, 2u);
      }

      else
      {
      }

      (*(v2 + 8))(v8, v1);
    }
  }

  else
  {
    static Logger.assetUtils.getter();
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&_mh_execute_header, v53, v54, "No vehicleResources", v55, 2u);
    }

    (*(v2 + 8))(v6, v1);
  }
}

uint64_t BSServiceConnectionHost.CAFDDescription.getter()
{
  v1 = v0;
  _StringGuts.grow(_:)(19);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v2._countAndFlagsBits = 0x3D64697020;
  v2._object = 0xE500000000000000;
  String.append(_:)(v2);
  v3 = [v0 remoteToken];
  [v3 pid];

  v4._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v4);

  v5._countAndFlagsBits = 0x3D656C646E756220;
  v5._object = 0xE800000000000000;
  String.append(_:)(v5);
  v6 = [v1 remoteToken];
  v7 = [v6 bundleID];

  if (v7)
  {
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
  }

  else
  {
    v10 = 0xE300000000000000;
    v8 = 7104878;
  }

  v11._countAndFlagsBits = v8;
  v11._object = v10;
  String.append(_:)(v11);

  return 0;
}

uint64_t CAFDAssetVariantsAgent.add(proxy:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v19 = *(v4 - 8);
  v5 = *(v19 + 64);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v8 = *(v18 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v18);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  CAFDAssetVariantsAgent._ConnectionProxy.activate()();
  v17 = *(v2 + OBJC_IVAR____TtC13caraccessoryd22CAFDAssetVariantsAgent_workQueue);
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = a1;
  aBlock[4] = partial apply for closure #1 in CAFDAssetVariantsAgent.add(proxy:);
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_44;
  v14 = _Block_copy(aBlock);

  v15 = a1;
  static DispatchQoS.unspecified.getter();
  v20 = &_swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);
  (*(v19 + 8))(v7, v4);
  (*(v8 + 8))(v11, v18);
}

uint64_t CAFDAssetVariantsAgent.remove(proxy:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v19 = *(v4 - 8);
  v5 = *(v19 + 64);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v8 = *(v18 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v18);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 invalidate];
  v17 = *(v2 + OBJC_IVAR____TtC13caraccessoryd22CAFDAssetVariantsAgent_workQueue);
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = a1;
  aBlock[4] = partial apply for closure #1 in CAFDAssetVariantsAgent.remove(proxy:);
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_66;
  v14 = _Block_copy(aBlock);

  v15 = a1;
  static DispatchQoS.unspecified.getter();
  v20 = &_swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);
  (*(v19 + 8))(v7, v4);
  (*(v8 + 8))(v11, v18);
}

void closure #1 in CAFDAssetVariantsAgent.remove(proxy:)(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    swift_beginAccess();
    v5 = specialized Set._Variant.remove(_:)(a2);
    swift_endAccess();
  }
}

void closure #1 in CAFDAssetVariantsAgent.add(proxy:)(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    swift_beginAccess();
    specialized Set._Variant.insert(_:)(&v6, a2);
    v5 = v6;
    swift_endAccess();
  }
}

uint64_t CAFDAssetVariantsAgent._ConnectionProxy.init(agent:workQueue:connection:)(void *a1, void *a2, void *a3)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  *&v3[OBJC_IVAR____TtCC13caraccessoryd22CAFDAssetVariantsAgentP33_AD8EB03328B3296C924C05733247A05A16_ConnectionProxy_connection] = a3;
  v18.receiver = v3;
  v18.super_class = type metadata accessor for CAFDAssetVariantsAgent._ConnectionProxy();
  v7 = a3;
  v8 = objc_msgSendSuper2(&v18, "init");
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = v8;
  v10 = swift_allocObject();
  *(v10 + 16) = partial apply for closure #1 in CAFDAssetVariantsAgent._ConnectionProxy.init(agent:workQueue:connection:);
  *(v10 + 24) = v9;
  v17[4] = partial apply for thunk for @callee_guaranteed (@guaranteed BSServiceConnectionConfiguring) -> ();
  v17[5] = v10;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 1107296256;
  v17[2] = thunk for @escaping @callee_guaranteed (@guaranteed BSServiceConnectionListenerConfiguring) -> ();
  v17[3] = &block_descriptor_53;
  v11 = _Block_copy(v17);
  v12 = v8;
  v13 = v7;
  v14 = v12;
  v15 = a2;

  [v13 configureConnection:v11];

  _Block_release(v11);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if ((a1 & 1) == 0)
  {
    return v14;
  }

  __break(1u);
  return result;
}

void closure #1 in CAFDAssetVariantsAgent._ConnectionProxy.init(agent:workQueue:connection:)(void *a1, uint64_t a2, uint64_t a3)
{
  [a1 setTargetQueue:a2];
  type metadata accessor for CAUVariantsService();
  v5 = static CAUVariantsService.serviceQuality.getter();
  [a1 setServiceQuality:v5];

  v6 = static CAUVariantsService.interface.getter();
  [a1 setInterface:v6];

  [a1 setInterfaceTarget:a3];
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9[4] = partial apply for closure #1 in closure #1 in CAFDAssetVariantsAgent._ConnectionProxy.init(agent:workQueue:connection:);
  v9[5] = v7;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = thunk for @escaping @callee_guaranteed (@guaranteed BSServiceConnection & BSServiceConnectionContext) -> ();
  v9[3] = &block_descriptor_59;
  v8 = _Block_copy(v9);

  [a1 setInvalidationHandler:v8];
  _Block_release(v8);
}

void closure #1 in closure #1 in CAFDAssetVariantsAgent._ConnectionProxy.init(agent:workQueue:connection:)()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    static Logger.assetUtils.getter();
    v7 = v6;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      *(v10 + 4) = v7;
      *v11 = v6;
      v12 = v7;
      _os_log_impl(&_mh_execute_header, v8, v9, "Connection invalidated %@", v10, 0xCu);
      outlined destroy of NSObject?(v11, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    }

    (*(v1 + 8))(v4, v0);
    v13 = swift_unknownObjectWeakLoadStrong();
    if (v13)
    {
      v14 = v13;
      CAFDAssetVariantsAgent.remove(proxy:)(v7);
    }
  }
}

uint64_t CAFDAssetVariantsAgent._ConnectionProxy.remote.getter()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  v3 = [objc_opt_self() attributeWithDomain:v1 name:v2];

  v4 = *(v0 + OBJC_IVAR____TtCC13caraccessoryd22CAFDAssetVariantsAgentP33_AD8EB03328B3296C924C05733247A05A16_ConnectionProxy_connection);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, _ss23_ContiguousArrayStorageCyyXlGMR);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100042870;
  *(v5 + 32) = v3;
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for RBSAttribute, RBSAttribute_ptr);
  v6 = v3;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v8 = [v4 remoteTargetWithAssertionAttributes:isa];

  if (v8)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {

    v11 = 0u;
    v12 = 0u;
  }

  v13[0] = v11;
  v13[1] = v12;
  if (*(&v12 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s13CarAssetUtils17CAUVariantsClient_pMd, &_s13CarAssetUtils17CAUVariantsClient_pMR);
    if (swift_dynamicCast())
    {
      return v10;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    outlined destroy of NSObject?(v13, &_sypSgMd, _sypSgMR);
    return 0;
  }
}

id CAFDAssetVariantsAgent.__deallocating_deinit(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

id CAFDAssetVariantsAgent._ConnectionProxy.activate()(const char *a1, SEL *a2)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.assetUtils.getter();
  v10 = v2;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    *(v13 + 4) = v10;
    *v14 = v10;
    v15 = v10;
    _os_log_impl(&_mh_execute_header, v11, v12, a1, v13, 0xCu);
    outlined destroy of NSObject?(v14, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  }

  (*(v6 + 8))(v9, v5);
  return [*&v10[OBJC_IVAR____TtCC13caraccessoryd22CAFDAssetVariantsAgentP33_AD8EB03328B3296C924C05733247A05A16_ConnectionProxy_connection] *a2];
}

void *CAFDAssetVariantsAgent._ConnectionProxy.refreshVariants()()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.assetUtils.getter();
  v6 = v0;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    *(v9 + 4) = v6;
    *v10 = v6;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v7, v8, "telling %@ to refresh", v9, 0xCu);
    outlined destroy of NSObject?(v10, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  }

  (*(v2 + 8))(v5, v1);
  result = CAFDAssetVariantsAgent._ConnectionProxy.remote.getter();
  if (result)
  {
    [result refreshVariants];
    return swift_unknownObjectRelease();
  }

  return result;
}

id variable initialization expression of CAFDAppLinksAgent.appLinksQueue()
{
  v0 = [objc_allocWithZone(NSOperationQueue) init];
  v1 = String._bridgeToObjectiveC()();
  [v0 setName:v1];

  [v0 setQualityOfService:25];
  [v0 setMaxConcurrentOperationCount:1];
  return v0;
}

id variable initialization expression of CAFDNowPlayingAgent.nowPlayingQueue()
{
  v0 = [objc_allocWithZone(NSOperationQueue) init];
  v1 = String._bridgeToObjectiveC()();
  [v0 setName:v1];

  [v0 setQualityOfService:25];
  [v0 setMaxConcurrentOperationCount:1];
  return v0;
}

void variable initialization expression of CAFDAssetVariantsAgent.connections(uint64_t *a1, uint64_t *a2, void (*a3)(void))
{
  if (&_swiftEmptyArrayStorage >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC13caraccessoryd22CAFDAssetVariantsAgentC16_ConnectionProxy33_AD8EB03328B3296C924C05733247A05ALLC_Tt0g5Tf4g_nTm(&_swiftEmptyArrayStorage, a1, a2, a3);
    }
  }
}

uint64_t variable initialization expression of CAFDVehicleResourcesManager.archiveInfo@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for CAFDVehicleResourcesManager.CustomImageArchiveInfo(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t variable initialization expression of CAFDSessionBoostServiceAgent.workQueue()
{
  v10 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = *(v10 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v10);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9[1] = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
  static DispatchQoS.userInteractive.getter();
  v11 = &_swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, &type metadata accessor for OS_dispatch_queue.Attributes);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v0 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v10);
  return OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
}

uint64_t protocol witness for static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:) in conformance NSURLResourceKey(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance NSURLResourceKey(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._unconditionallyBridgeFromObjectiveC(_:) in conformance NSURLResourceKey@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t protocol witness for Hashable.hashValue.getter in conformance NSURLResourceKey()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String.hashValue.getter();

  return v2;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NSURLResourceKey()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NSURLResourceKey()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return v2;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance NSURLResourceKey(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance NSURLResourceKey@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = String._bridgeToObjectiveC()();

  *a2 = v5;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance NSURLResourceKey@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance NSURLResourceKey(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type NSURLResourceKey and conformance NSURLResourceKey, type metadata accessor for NSURLResourceKey);
  v3 = lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type NSURLResourceKey and conformance NSURLResourceKey, type metadata accessor for NSURLResourceKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t serialize(_:at:)(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

_BYTE **closure #1 in OSLogArguments.append(_:)(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void closure #1 in OSLogArguments.append(_:)(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t closure #1 in OSLogArguments.append(_:)(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    outlined init with copy of Any(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t specialized _StringGuts._deconstructUTF8<A>(scratch:)(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = _StringGuts._allocateForDeconstruct()(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *_StringGuts._allocateForDeconstruct()(uint64_t a1, unint64_t a2)
{
  v4 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of _StringGuts._allocateForDeconstruct());
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t partial apply for thunk for @callee_guaranteed (@guaranteed BSServiceConnectionListenerConfiguring) -> ()()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void specialized CAFDAssetVariantsAgent.carManager(_:didUpdateCurrentCar:)(void *a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.assetUtils.getter();
  v8 = a1;
  v9 = v1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v42 = v3;
    v43 = a1;
    v44 = v8;
    v12 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v45 = v41;
    *v12 = 136315394;
    v13 = *&v9[OBJC_IVAR____TtC13caraccessoryd22CAFDAssetVariantsAgent_currentCar];
    if (v13)
    {
      v14 = [v13 description];
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;
    }

    else
    {
      v17 = 0xE300000000000000;
      v15 = 7104878;
    }

    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, &v45);

    *(v12 + 4) = v18;
    *(v12 + 12) = 2080;
    a1 = v43;
    if (v43)
    {
      v19 = [v44 description];
      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;
    }

    else
    {
      v22 = 0xE300000000000000;
      v20 = 7104878;
    }

    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, &v45);

    *(v12 + 14) = v23;
    _os_log_impl(&_mh_execute_header, v10, v11, "update current car from %s to %s", v12, 0x16u);
    swift_arrayDestroy();

    (*(v4 + 8))(v7, v42);
    v8 = v44;
  }

  else
  {

    (*(v4 + 8))(v7, v3);
  }

  v24 = OBJC_IVAR____TtC13caraccessoryd22CAFDAssetVariantsAgent_currentCar;
  v25 = *&v9[OBJC_IVAR____TtC13caraccessoryd22CAFDAssetVariantsAgent_currentCar];
  if (v25)
  {
    [v25 unregisterObserver:v9];
  }

  v26 = OBJC_IVAR____TtC13caraccessoryd22CAFDAssetVariantsAgent_vehicleResources;
  v27 = *&v9[OBJC_IVAR____TtC13caraccessoryd22CAFDAssetVariantsAgent_vehicleResources];
  if (v27)
  {
    [v27 unregisterObserver:v9];
  }

  v28 = OBJC_IVAR____TtC13caraccessoryd22CAFDAssetVariantsAgent_clusterThemeManager;
  v29 = *&v9[OBJC_IVAR____TtC13caraccessoryd22CAFDAssetVariantsAgent_clusterThemeManager];
  if (v29)
  {
    [v29 setDelegate:0];
    v29 = *&v9[v28];
  }

  [v29 invalidate];
  v30 = *&v9[v28];
  *&v9[v28] = 0;

  CAFDAssetVariantsAgent.assetVariants.willset(0);
  v31 = *&v9[OBJC_IVAR____TtC13caraccessoryd22CAFDAssetVariantsAgent_assetVariants];
  *&v9[OBJC_IVAR____TtC13caraccessoryd22CAFDAssetVariantsAgent_assetVariants] = 0;

  CAFDAssetVariantsAgent.refreshClients()();
  v32 = *&v9[v26];
  *&v9[v26] = 0;

  v33 = *&v9[v24];
  *&v9[v24] = a1;

  if (a1)
  {
    v34 = v8;
    [v34 registerObserver:v9];
    v35 = objc_allocWithZone(CRSUIClusterThemeManager);
    v36 = v34;
    v37 = [v35 init];
    [v37 setDelegate:v9];
    v38 = *&v9[v28];
    *&v9[v28] = v37;
    v39 = v37;

    [v9 carDidUpdateAccessories:v36];
  }
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void specialized CAFDAssetVariantsAgent.clusterThemeManager(_:didUpdateExtraAssetsURL:)(void *a1)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v39 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for Logger();
  v7 = *(v40 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v40);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.assetUtils.getter();
  v11 = a1;
  v12 = v1;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  v15 = &unk_10005F000;
  if (os_log_type_enabled(v13, v14))
  {
    v16 = swift_slowAlloc();
    v38 = v4;
    v17 = v16;
    v18 = swift_slowAlloc();
    *v17 = 138412546;
    v37 = v3;
    v19 = OBJC_IVAR____TtC13caraccessoryd22CAFDAssetVariantsAgent_vehicleResourcesManager;
    swift_beginAccess();
    v20 = *&v12[v19];
    *(v17 + 4) = v20;
    *(v17 + 12) = 2112;
    *(v17 + 14) = v11;
    *v18 = v20;
    v18[1] = a1;
    v21 = v11;
    v22 = v20;
    v3 = v37;
    _os_log_impl(&_mh_execute_header, v13, v14, "Telling %@ about extra assets URL: %@", v17, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    swift_arrayDestroy();
    v15 = &unk_10005F000;

    v4 = v38;
  }

  (*(v7 + 8))(v10, v40);
  v23 = v15[268];
  swift_beginAccess();
  v24 = *&v12[v23];
  if (v24)
  {
    v25 = v24;
    CAFDVehicleResourcesManager.didUpdate(assetExtrasURL:)(a1);
  }

  if (a1)
  {
    v26 = v11;
    v27 = [v26 url];
    v28 = v39;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v29 = objc_allocWithZone(NSSecurityScopedURLWrapper);
    URL._bridgeToObjectiveC()(v30);
    v32 = v31;
    v33 = [v29 initWithURL:v31 readonly:1];

    (*(v4 + 8))(v28, v3);
    CAFDAssetVariantsAgent.assetExtrasURL.willset(v33);
    v34 = *&v12[OBJC_IVAR____TtC13caraccessoryd22CAFDAssetVariantsAgent_assetExtrasURL];
    *&v12[OBJC_IVAR____TtC13caraccessoryd22CAFDAssetVariantsAgent_assetExtrasURL] = v33;
    v35 = v33;

    CAFDAssetVariantsAgent.refreshClients()();
  }

  else
  {
    CAFDAssetVariantsAgent.assetExtrasURL.willset(0);
    v36 = *&v12[OBJC_IVAR____TtC13caraccessoryd22CAFDAssetVariantsAgent_assetExtrasURL];
    *&v12[OBJC_IVAR____TtC13caraccessoryd22CAFDAssetVariantsAgent_assetExtrasURL] = 0;

    CAFDAssetVariantsAgent.refreshClients()();
  }
}

void specialized CAFDAssetVariantsAgent.accessoryDidUpdate(_:receivedAllValues:)()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.assetUtils.getter();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Variants have all values", v7, 2u);
  }

  (*(v1 + 8))(v4, v0);
  CAFDAssetVariantsAgent.updateAssetVariants()();
}

void specialized CAFDAssetVariantsAgent.listener(_:didReceive:withContext:)(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v39 - v8;
  static Logger.assetUtils.getter();
  v10 = a1;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  v13 = os_log_type_enabled(v11, v12);
  v41 = v3;
  if (v13)
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v39 = v7;
    v16 = v2;
    v17 = v3;
    v18 = v15;
    v42 = v15;
    *v14 = 136315138;
    swift_getObjectType();
    v19 = BSServiceConnectionHost.CAFDDescription.getter();
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, &v42);

    *(v14 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v11, v12, "Received connection %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);

    v22 = v17;
    v2 = v16;
    v7 = v39;
    v23 = *(v22 + 8);
  }

  else
  {

    v23 = *(v3 + 8);
  }

  v23(v9, v2);
  swift_getObjectType();
  v24 = [v10 remoteToken];
  type metadata accessor for CAUVariantsService();
  static CAUVariantsService.entitlement.getter();
  v25 = String._bridgeToObjectiveC()();

  v26 = [v24 hasEntitlement:v25];

  if (v26)
  {
    v27 = v40;
    v28 = *&v40[OBJC_IVAR____TtC13caraccessoryd22CAFDAssetVariantsAgent_workQueue];
    v29 = objc_allocWithZone(type metadata accessor for CAFDAssetVariantsAgent._ConnectionProxy());
    v30 = CAFDAssetVariantsAgent._ConnectionProxy.init(agent:workQueue:connection:)(v27, v28, v10);
    CAFDAssetVariantsAgent.add(proxy:)(v30);
  }

  else
  {
    static Logger.assetUtils.getter();
    v31 = v10;
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v42 = v35;
      *v34 = 136315138;
      v36 = BSServiceConnectionHost.CAFDDescription.getter();
      v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v37, &v42);

      *(v34 + 4) = v38;
      _os_log_impl(&_mh_execute_header, v32, v33, "connection %s does not have required entitlement", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v35);
    }

    v23(v7, v2);
    [v31 invalidate];
  }
}

void specialized CAFDAssetVariantsAgent._ConnectionProxy.fetchResources(reply:)(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v10 = *(Strong + OBJC_IVAR____TtC13caraccessoryd22CAFDAssetVariantsAgent_assetVariants), v11 = Strong, , v11, v10))
  {
    v12 = Dictionary<>.init(_:)();
  }

  else
  {
    v12 = 0;
  }

  v13 = swift_unknownObjectWeakLoadStrong();
  if (v13)
  {
    v14 = v13;
    v15 = *(v13 + OBJC_IVAR____TtC13caraccessoryd22CAFDAssetVariantsAgent_sessionStatus);

    v16 = [v15 currentSession];
    if (v16)
    {
      v17 = [v16 configuration];

      v16 = [v17 rightHandDrive];
    }
  }

  else
  {
    v16 = 0;
  }

  v65 = [objc_allocWithZone(NSNumber) initWithBool:v16];
  static Logger.assetUtils.getter();

  v18 = a1;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v61 = v20;
    v62 = v5;
    v64 = a2;
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v67 = v60;
    *v21 = 138413314;
    *(v21 + 4) = v18;
    v59 = v22;
    *v22 = v18;
    *(v21 + 12) = 2080;
    v23 = swift_unknownObjectWeakLoadStrong();
    v63 = v4;
    if (v23)
    {
      v24 = *(v23 + OBJC_IVAR____TtC13caraccessoryd22CAFDAssetVariantsAgent_assetVariants);
      v25 = v23;

      v26 = v18;
    }

    else
    {
      v27 = v18;
      v24 = 0;
    }

    v66 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDy13CarAssetUtils15CAUVehicleTraitOSSGSgMd, &_sSDy13CarAssetUtils15CAUVehicleTraitOSSGSgMR);
    lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [CAUVehicleTrait : String] and conformance [A : B], &_sSDy13CarAssetUtils15CAUVehicleTraitOSSGMd, &_sSDy13CarAssetUtils15CAUVehicleTraitOSSGMR);
    v28 = Optional<A>.description.getter();
    v30 = v29;

    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, &v67);

    *(v21 + 14) = v31;
    *(v21 + 22) = 2080;
    v66 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGSgMd, &_sSDyS2SGSgMR);
    lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [String : String] and conformance [A : B], &_sSDyS2SGMd, &_sSDyS2SGMR);
    v32 = Optional<A>.description.getter();
    v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, &v67);

    *(v21 + 24) = v34;
    *(v21 + 32) = 2080;
    v35 = swift_unknownObjectWeakLoadStrong();
    if (v35)
    {
      v36 = *(v35 + OBJC_IVAR____TtC13caraccessoryd22CAFDAssetVariantsAgent_assetExtrasURL);
      v37 = v35;
      v38 = v36;
    }

    else
    {
      v36 = 0;
    }

    v66 = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo26NSSecurityScopedURLWrapperCSgMd, &_sSo26NSSecurityScopedURLWrapperCSgMR);
    lazy protocol witness table accessor for type NSSecurityScopedURLWrapper and conformance NSObject();
    v39 = Optional<A>.description.getter();
    v41 = v40;

    v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v41, &v67);

    *(v21 + 34) = v42;
    *(v21 + 42) = 2080;
    v43 = swift_unknownObjectWeakLoadStrong();
    if (v43)
    {
      v44 = v43;
      v45 = *(v43 + OBJC_IVAR____TtC13caraccessoryd22CAFDAssetVariantsAgent_sessionStatus);

      v46 = [v45 currentSession];
      v47 = v63;
      a2 = v64;
      if (v46)
      {
        v48 = [v46 configuration];

        v49 = [v48 rightHandDrive];
      }

      else
      {
        v49 = 2;
      }
    }

    else
    {
      v49 = 2;
      v47 = v63;
      a2 = v64;
    }

    LOBYTE(v66) = v49;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd, &_sSbSgMR);
    v50 = Optional<A>.description.getter();
    v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v51, &v67);

    *(v21 + 44) = v52;
    _os_log_impl(&_mh_execute_header, v19, v61, "fetching for %@ assetVariants=%s payload=%s extraAssetsURL=%s isRHD=%s", v21, 0x34u);
    outlined destroy of NSObject?(v59, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

    swift_arrayDestroy();

    (*(v62 + 8))(v8, v47);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }

  v53 = swift_unknownObjectWeakLoadStrong();
  if (!v53)
  {
    v55 = 0;
    if (v12)
    {
      goto LABEL_25;
    }

LABEL_27:
    v56.super.isa = 0;
    goto LABEL_28;
  }

  v54 = v53;
  v55 = *(v53 + OBJC_IVAR____TtC13caraccessoryd22CAFDAssetVariantsAgent_assetExtrasURL);

  if (!v12)
  {
    goto LABEL_27;
  }

LABEL_25:
  v56.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
LABEL_28:
  v57 = v65;
  (*(a2 + 16))(a2, v55, v65, v56.super.isa, 0);
}

void _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC13caraccessoryd22CAFDAssetVariantsAgentC16_ConnectionProxy33_AD8EB03328B3296C924C05733247A05ALLC_Tt0g5Tf4g_nTm(unint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v5 = a1 >> 62;
  if (a1 >> 62)
  {
    v9 = a3;
    v10 = a2;
    v11 = _CocoaArrayWrapper.endIndex.getter();
    a2 = v10;
    a3 = v9;
    if (v11)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
      v6 = static _SetStorage.allocate(capacity:)();
      v7 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v5)
      {
        goto LABEL_4;
      }

LABEL_8:
      v8 = _CocoaArrayWrapper.endIndex.getter();
      if (!v8)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v6 = &_swiftEmptySetSingleton;
  v7 = a1 & 0xFFFFFFFFFFFFFF8;
  if (v5)
  {
    goto LABEL_8;
  }

LABEL_4:
  v8 = *(v7 + 16);
  if (!v8)
  {
    return;
  }

LABEL_9:
  v12 = (v6 + 7);
  v44 = v8;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v13 = 0;
    while (1)
    {
      v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v15 = __OFADD__(v13++, 1);
      if (v15)
      {
        break;
      }

      v16 = v14;
      v17 = NSObject._rawHashValue(seed:)(v6[5]);
      v18 = -1 << *(v6 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      v21 = *&v12[8 * (v19 >> 6)];
      v22 = 1 << v19;
      if (((1 << v19) & v21) != 0)
      {
        v23 = ~v18;
        a4(0);
        while (1)
        {
          v24 = *(v6[6] + 8 * v19);
          v25 = static NSObject.== infix(_:_:)();

          if (v25)
          {
            break;
          }

          v19 = (v19 + 1) & v23;
          v20 = v19 >> 6;
          v21 = *&v12[8 * (v19 >> 6)];
          v22 = 1 << v19;
          if (((1 << v19) & v21) == 0)
          {
            v8 = v44;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v8 = v44;
        if (v13 == v44)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *&v12[8 * v20] = v22 | v21;
        *(v6[6] + 8 * v19) = v16;
        v26 = v6[2];
        v15 = __OFADD__(v26, 1);
        v27 = v26 + 1;
        if (v15)
        {
          goto LABEL_32;
        }

        v6[2] = v27;
        if (v13 == v8)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v28 = 0;
    v42 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v28 != v42)
    {
      v29 = v6[5];
      v30 = *(a1 + 32 + 8 * v28);
      v31 = NSObject._rawHashValue(seed:)(v29);
      v32 = -1 << *(v6 + 32);
      v33 = v31 & ~v32;
      v34 = v33 >> 6;
      v35 = *&v12[8 * (v33 >> 6)];
      v36 = 1 << v33;
      if (((1 << v33) & v35) != 0)
      {
        v37 = ~v32;
        a4(0);
        while (1)
        {
          v38 = *(v6[6] + 8 * v33);
          v39 = static NSObject.== infix(_:_:)();

          if (v39)
          {
            break;
          }

          v33 = (v33 + 1) & v37;
          v34 = v33 >> 6;
          v35 = *&v12[8 * (v33 >> 6)];
          v36 = 1 << v33;
          if (((1 << v33) & v35) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *&v12[8 * v34] = v36 | v35;
        *(v6[6] + 8 * v33) = v30;
        v40 = v6[2];
        v15 = __OFADD__(v40, 1);
        v41 = v40 + 1;
        if (v15)
        {
          goto LABEL_34;
        }

        v6[2] = v41;
      }

      if (++v28 == v44)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NSSecurityScopedURLWrapper and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type NSSecurityScopedURLWrapper and conformance NSObject;
  if (!lazy protocol witness table cache variable for type NSSecurityScopedURLWrapper and conformance NSObject)
  {
    type metadata accessor for OS_dispatch_queue(255, &lazy cache variable for type metadata for NSSecurityScopedURLWrapper, NSSecurityScopedURLWrapper_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSSecurityScopedURLWrapper and conformance NSObject);
  }

  return result;
}

uint64_t type metadata accessor for OS_dispatch_queue(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t outlined destroy of NSObject?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *_sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo16NSURLResourceKeya_Tt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo16NSURLResourceKeyaGMd, &_ss11_SetStorageCySo16NSURLResourceKeyaGMR);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v27 = v1;
    v28 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v28 + 8 * v4);
      v8 = *(v3 + 40);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      v29 = v7;
      String.hash(into:)();
      v9 = Hasher._finalize()();

      v11 = -1 << *(v3 + 32);
      v12 = v9 & ~v11;
      v13 = v12 >> 6;
      v14 = *(v5 + 8 * (v12 >> 6));
      v15 = 1 << v12;
      if (((1 << v12) & v14) == 0)
      {
        goto LABEL_15;
      }

      v16 = ~v11;
      do
      {
        v17 = *(*(v3 + 48) + 8 * v12);
        v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v20 = v19;
        if (v18 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v20 == v21)
        {

LABEL_4:
          v6 = v27;
          goto LABEL_5;
        }

        v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v23)
        {

          goto LABEL_4;
        }

        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = *(v5 + 8 * (v12 >> 6));
        v15 = 1 << v12;
      }

      while (((1 << v12) & v14) != 0);
      v6 = v27;
LABEL_15:
      *(v5 + 8 * v13) = v15 | v14;
      *(*(v3 + 48) + 8 * v12) = v29;
      v24 = *(v3 + 16);
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v26;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_1000186E4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100018770()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t objectdestroy_40Tm()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void type metadata accessor for CAFSettingProminenceLevel(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable () -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void one-time initialization function for subsystem()
{
  v0 = [objc_opt_self() identifier];
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = v2;

  static Logger.AppLinksLogger.subsystem = v1;
  *algn_10005FE08 = v3;
}

uint64_t one-time initialization function for appLinks()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.appLinks);
  __swift_project_value_buffer(v0, static Logger.appLinks);
  if (one-time initialization token for subsystem != -1)
  {
    swift_once();
  }

  return Logger.init(subsystem:category:)();
}

void CAFDAppLinksAgent.settings.didset()
{
  if (one-time initialization token for appLinks != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.appLinks);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134349056;
    v6 = *(&v2->isa + OBJC_IVAR____TtC13caraccessoryd17CAFDAppLinksAgent_settings);
    if (v6 >> 62)
    {
      if (v6 < 0)
      {
        v12 = *(&v2->isa + OBJC_IVAR____TtC13caraccessoryd17CAFDAppLinksAgent_settings);
      }

      v7 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v5 + 4) = v7;

    _os_log_impl(&_mh_execute_header, v3, v4, "Received %{public}ld new deep link settings from automakerSettings", v5, 0xCu);
  }

  else
  {

    v3 = v2;
  }

  v8 = *(&v2->isa + OBJC_IVAR____TtC13caraccessoryd17CAFDAppLinksAgent_appLinksQueue);
  v9 = swift_allocObject();
  *(v9 + 16) = v2;
  v13[4] = partial apply for closure #1 in CAFDAppLinksAgent.automakerSettingService(_:didUpdateUserVisibleLabel:);
  v13[5] = v9;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v13[3] = &block_descriptor_67;
  v10 = _Block_copy(v13);
  v11 = v2;

  [v8 addOperationWithBlock:v10];
  _Block_release(v10);
}

char *CAFDAppLinksAgent.__allocating_init(carManager:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = specialized CAFDAppLinksAgent.init(carManager:)(a1);

  return v4;
}

char *CAFDAppLinksAgent.init(carManager:)(void *a1)
{
  v2 = specialized CAFDAppLinksAgent.init(carManager:)(a1);

  return v2;
}

void CAFDAppLinksAgent.refreshClients()()
{
  v1 = OBJC_IVAR____TtC13caraccessoryd9CAFDAgent_connections;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if ((v2 & 0xC000000000000001) != 0)
  {
    if (v2 < 0)
    {
      v3 = *(v0 + v1);
    }

    v4 = *(v0 + v1);

    v5 = __CocoaSet.count.getter();

    if (v5)
    {
      goto LABEL_5;
    }

LABEL_8:
    if (one-time initialization token for appLinks != -1)
    {
      goto LABEL_33;
    }

    goto LABEL_9;
  }

  if (!*(v2 + 16))
  {
    goto LABEL_8;
  }

LABEL_5:
  v6 = *(v0 + v1);
  if ((v6 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for CAFDAgent._CAFDConnectionProxy();
    lazy protocol witness table accessor for type CAFSettingProminenceLevel and conformance CAFSettingProminenceLevel(&lazy protocol witness table cache variable for type CAFDAgent._CAFDConnectionProxy and conformance NSObject, type metadata accessor for CAFDAgent._CAFDConnectionProxy);
    Set.Iterator.init(_cocoa:)();
    v8 = v38;
    v7 = v39;
    v9 = v40;
    v10 = v41;
    v11 = v42;
  }

  else
  {
    v16 = -1 << *(v6 + 32);
    v7 = v6 + 56;
    v9 = ~v16;
    v17 = -v16;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v11 = v18 & *(v6 + 56);
    v8 = v6;
    swift_bridgeObjectRetain_n();
    v10 = 0;
  }

  v19 = (v9 + 64) >> 6;
  v20 = &unk_10005F000;
  v35 = v7;
  while (v8 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (type metadata accessor for CAFDAgent._CAFDConnectionProxy(), swift_dynamicCast(), v25 = v37, v23 = v10, v24 = v11, !v37))
    {
LABEL_31:
      outlined consume of Set<CAFDAssetVariantsAgent._ConnectionProxy>.Iterator._Variant();

      return;
    }

LABEL_27:
    v36 = v24;
    if (v20[261] != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    __swift_project_value_buffer(v26, static Logger.appLinks);
    v27 = v25;
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = v20;
      v31 = v8;
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v32 = 138412290;
      *(v32 + 4) = v27;
      *v33 = v25;
      v34 = v27;
      _os_log_impl(&_mh_execute_header, v28, v29, "queuing applinks refresh for %@", v32, 0xCu);
      outlined destroy of NSObject?(v33);

      v8 = v31;
      v20 = v30;
      v7 = v35;
    }

    [swift_dynamicCastObjCProtocolUnconditional() refreshAppLinksSnapshot];
    v10 = v23;
    v11 = v36;
  }

  v21 = v10;
  v22 = v11;
  v23 = v10;
  if (v11)
  {
LABEL_23:
    v24 = (v22 - 1) & v22;
    v25 = *(*(v8 + 48) + ((v23 << 9) | (8 * __clz(__rbit64(v22)))));
    if (!v25)
    {
      goto LABEL_31;
    }

    goto LABEL_27;
  }

  while (1)
  {
    v23 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v23 >= v19)
    {
      goto LABEL_31;
    }

    v22 = *(v7 + 8 * v23);
    ++v21;
    if (v22)
    {
      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_33:
  swift_once();
LABEL_9:
  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Logger.appLinks);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "No clients to refresh.", v15, 2u);
  }
}

void CAFDAppLinksAgent.updateAppLinks()()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v44 = *(v1 - 8);
  v45 = v1;
  v2 = *(v44 + 64);
  __chkstk_darwin(v1);
  v42 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for DispatchQoS();
  v41 = *(v43 - 8);
  v4 = *(v41 + 64);
  __chkstk_darwin(v43);
  v40 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *&v0[OBJC_IVAR____TtC13caraccessoryd17CAFDAppLinksAgent_settings];
  aBlock[0] = &_swiftEmptyArrayStorage;
  if (v6 >> 62)
  {
    goto LABEL_32;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v46 = v0;

    v0 = &_swiftEmptyArrayStorage;
    if (!i)
    {
      break;
    }

    v8 = 0;
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_31;
        }

        v9 = *(v6 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v50 = v9;
      closure #1 in CAFDAppLinksAgent.updateAppLinks()(&v50, &v49);

      if (v49)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v0 = aBlock[0];
      }

      ++v8;
      if (v11 == i)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    ;
  }

LABEL_15:

  v12 = objc_allocWithZone(CAFAppLinksSnapshot);
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for CAFAppLink, CAFAppLink_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v47 = [v12 initWithAppLinks:isa];

  v14 = OBJC_IVAR____TtC13caraccessoryd17CAFDAppLinksAgent_lastSnapshot;
  v15 = v46;
  v16 = *&v46[OBJC_IVAR____TtC13caraccessoryd17CAFDAppLinksAgent_lastSnapshot];
  if (v16)
  {
    v17 = v16;
    if ([v17 isEqual:v47])
    {
      if (one-time initialization token for appLinks != -1)
      {
        swift_once();
      }

      v18 = type metadata accessor for Logger();
      __swift_project_value_buffer(v18, static Logger.appLinks);
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&_mh_execute_header, v19, v20, "No change in appLink snapshot; not notifying clients.", v21, 2u);
      }

      v22 = v47;

      return;
    }
  }

  if (one-time initialization token for appLinks != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  __swift_project_value_buffer(v23, static Logger.appLinks);
  v24 = v47;
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v27 = 138412290;
    *(v27 + 4) = v24;
    *v28 = v24;
    v29 = v24;
    _os_log_impl(&_mh_execute_header, v25, v26, "Sending updated appLink snapshot to clients: %@", v27, 0xCu);
    outlined destroy of NSObject?(v28);
  }

  v30 = *&v15[v14];
  *&v15[v14] = v24;
  v31 = v24;

  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
  v32 = static OS_dispatch_queue.main.getter();
  v33 = swift_allocObject();
  *(v33 + 16) = v15;
  aBlock[4] = partial apply for closure #2 in CAFDAppLinksAgent.updateAppLinks();
  aBlock[5] = v33;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_61;
  v34 = _Block_copy(aBlock);
  v35 = v15;

  v36 = v40;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type CAFSettingProminenceLevel and conformance CAFSettingProminenceLevel(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  v37 = v42;
  v38 = v45;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v34);

  (*(v44 + 8))(v37, v38);
  (*(v41 + 8))(v36, v43);
}

void closure #1 in CAFDAppLinksAgent.updateAppLinks()(id *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = [*a1 prominenceInfo];
  if (!v4)
  {
    goto LABEL_23;
  }

  v5 = v4;
  [v4 prominenceLevel];
  if ((CAFSettingProminenceLevel.hasHomescreen.getter() & 1) == 0)
  {
LABEL_22:

LABEL_23:
    v25 = 0;
    goto LABEL_24;
  }

  v6 = getter of title #1 in closure #1 in CAFDAppLinksAgent.updateAppLinks()(v5, v3);
  v8 = v7;

  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {
    if (one-time initialization token for appLinks != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    __swift_project_value_buffer(v26, static Logger.appLinks);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v27, v28))
    {
      goto LABEL_21;
    }

    v29 = swift_slowAlloc();
    *v29 = 0;
    v30 = "Ignoring AppLink - homescreen DeepLink missing title.";
    goto LABEL_20;
  }

  v10 = [v3 symbolName];
  if (!v10)
  {
    if (one-time initialization token for appLinks != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    __swift_project_value_buffer(v31, static Logger.appLinks);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v27, v28))
    {
      goto LABEL_21;
    }

    v29 = swift_slowAlloc();
    *v29 = 0;
    v30 = "Ignoring AppLink - homescreen DeepLink missing symbol information.";
LABEL_20:
    _os_log_impl(&_mh_execute_header, v27, v28, v30, v29, 2u);

LABEL_21:

    goto LABEL_22;
  }

  v11 = v10;
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMd, &_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100042860;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  v16 = [v5 color];
  *(inited + 96) = &type metadata for Int;
  *(inited + 72) = v16;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  *(inited + 168) = &type metadata for String;
  *(inited + 144) = v12;
  *(inited + 152) = v14;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11AnyHashableV_yptMd, &_ss11AnyHashableV_yptMR);
  swift_arrayDestroy();
  v17 = objc_allocWithZone(CAFSymbolImageWithColor);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v19 = [v17 initWithDictionary:isa];

  v20 = [v3 identifier];
  if (!v20)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = String._bridgeToObjectiveC()();
  }

  getter of title #1 in closure #1 in CAFDAppLinksAgent.updateAppLinks()(v5, v3);
  v21 = [v3 contentURLAction];
  if (!v21)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = String._bridgeToObjectiveC()();
  }

  v22 = objc_allocWithZone(CAFAppLink);
  v23 = v19;
  v24 = String._bridgeToObjectiveC()();

  v25 = [v22 initWithIdentifier:v20 title:v24 contentURLAction:v21 symbolNameAndColor:v23];

LABEL_24:
  *a2 = v25;
}

uint64_t getter of title #1 in closure #1 in CAFDAppLinksAgent.updateAppLinks()(void *a1, void *a2)
{
  v3 = [a1 userVisibleLabel];
  if (v3)
  {
    v4 = v3;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    v8 = HIBYTE(v7) & 0xF;
    if ((v7 & 0x2000000000000000) == 0)
    {
      v8 = v5 & 0xFFFFFFFFFFFFLL;
    }

    if (v8)
    {
      return v5;
    }
  }

  v10 = [a2 userVisibleLabel];
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v11;
}

void CAFDAppLinksAgent.__ivar_destroyer()
{
  swift_unknownObjectWeakDestroy();

  v1 = *(v0 + OBJC_IVAR____TtC13caraccessoryd17CAFDAppLinksAgent_settings);

  v2 = *(v0 + OBJC_IVAR____TtC13caraccessoryd17CAFDAppLinksAgent_appLinksQueue);
}

id CAFDAppLinksAgent.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFDAppLinksAgent();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void CAFDAppLinksAgent.carDidUpdateAccessories(_:)(void *a1)
{
  v2 = [a1 automakerSettings];
  if (v2)
  {
    v3 = v2;
    [v2 registerObserver:v1];
    v4 = *(v1 + OBJC_IVAR____TtC13caraccessoryd17CAFDAppLinksAgent_automakerSettings);
    *(v1 + OBJC_IVAR____TtC13caraccessoryd17CAFDAppLinksAgent_automakerSettings) = v3;
    v17 = v3;

    v5 = [v17 deepLinkSettings];
    if (v5)
    {
      v6 = v5;
      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for CAFDeepLinkSetting, CAFDeepLinkSetting_ptr);
      v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v7 >> 62)
      {
        goto LABEL_19;
      }

      for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
      {
        v9 = 0;
        while (1)
        {
          if ((v7 & 0xC000000000000001) != 0)
          {
            v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_18;
            }

            v10 = *(v7 + 8 * v9 + 32);
          }

          v11 = v10;
          v12 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            break;
          }

          [v10 registerObserver:v1];

          ++v9;
          if (v12 == i)
          {
            goto LABEL_20;
          }
        }

        __break(1u);
LABEL_18:
        __break(1u);
LABEL_19:
        ;
      }

LABEL_20:
      v16 = *(v1 + OBJC_IVAR____TtC13caraccessoryd17CAFDAppLinksAgent_settings);
      *(v1 + OBJC_IVAR____TtC13caraccessoryd17CAFDAppLinksAgent_settings) = v7;

      CAFDAppLinksAgent.settings.didset();
    }
  }

  else
  {
    if (one-time initialization token for appLinks != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static Logger.appLinks);
    v17 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v17, v14, "Awaiting automakerSettings", v15, 2u);
    }
  }
}

void CAFDAppLinksAgent.accessoryDidUpdate(_:receivedAllValues:)(void *a1, char a2)
{
  if (a2)
  {
    v3 = [a1 car];
    if (v3)
    {
      v4 = v3;
      [v2 carDidUpdateAccessories:?];
    }

    else
    {
      __break(1u);
    }
  }
}

void CAFDAppLinksAgent.automakerSettingService(_:didUpdateProminenceInfo:)(void *a1, void *a2)
{
  v3 = v2;
  if (one-time initialization token for appLinks != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.appLinks);
  v7 = a2;
  v8 = a1;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v11 = 136315394;
    v12 = [v8 identifier];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, &v25);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2080;
    if (a2)
    {
      v17 = [v7 prominenceLevel];
    }

    else
    {
      v17 = 0;
    }

    aBlock = v17;
    LOBYTE(v27) = a2 == 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo25CAFSettingProminenceLevelVSgMd, _sSo25CAFSettingProminenceLevelVSgMR);
    lazy protocol witness table accessor for type CAFSettingProminenceLevel and conformance CAFSettingProminenceLevel(&lazy protocol witness table cache variable for type CAFSettingProminenceLevel and conformance CAFSettingProminenceLevel, type metadata accessor for CAFSettingProminenceLevel);
    v18 = Optional<A>.description.getter();
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v25);

    *(v11 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "Received didUpdateProminenceInfo %s prominenceLevel %s", v11, 0x16u);
    swift_arrayDestroy();
  }

  v21 = *&v3[OBJC_IVAR____TtC13caraccessoryd17CAFDAppLinksAgent_appLinksQueue];
  v22 = swift_allocObject();
  *(v22 + 16) = v3;
  v30 = partial apply for closure #1 in CAFDAppLinksAgent.automakerSettingService(_:didUpdateUserVisibleLabel:);
  v31 = v22;
  aBlock = _NSConcreteStackBlock;
  v27 = 1107296256;
  v28 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v29 = &block_descriptor_0;
  v23 = _Block_copy(&aBlock);
  v24 = v3;

  [v21 addOperationWithBlock:v23];
  _Block_release(v23);
}

void CAFDAppLinksAgent.automakerSettingService(_:didUpdateUserVisibleLabel:)(void *a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  if (one-time initialization token for appLinks != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.appLinks);
  v9 = a1;

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v22[0] = swift_slowAlloc();
    *v12 = 136315394;
    v13 = [v9 identifier];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, v22);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2080;
    *(v12 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, v22);
    _os_log_impl(&_mh_execute_header, v10, v11, "Received didUpdateUserVisibleLabel %s userVisibleLabel %s", v12, 0x16u);
    swift_arrayDestroy();
  }

  v18 = *&v4[OBJC_IVAR____TtC13caraccessoryd17CAFDAppLinksAgent_appLinksQueue];
  v19 = swift_allocObject();
  *(v19 + 16) = v4;
  v22[4] = partial apply for closure #1 in CAFDAppLinksAgent.automakerSettingService(_:didUpdateUserVisibleLabel:);
  v22[5] = v19;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 1107296256;
  v22[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v22[3] = &block_descriptor_6;
  v20 = _Block_copy(v22);
  v21 = v4;

  [v18 addOperationWithBlock:v20];
  _Block_release(v20);
}

void CAFDAppLinksAgent.automakerSettingService(_:didUpdateSymbolName:)(void *a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  if (one-time initialization token for appLinks != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.appLinks);

  v9 = a1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v24[0] = swift_slowAlloc();
    *v12 = 136315394;
    v13 = [v9 identifier];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, v24);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2080;
    if (a3)
    {
      v18 = a3;
    }

    else
    {
      a2 = 0;
      v18 = 0xE000000000000000;
    }

    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, v18, v24);

    *(v12 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v10, v11, "Received didUpdateSymbolName %s symbolName %s", v12, 0x16u);
    swift_arrayDestroy();
  }

  v20 = *&v4[OBJC_IVAR____TtC13caraccessoryd17CAFDAppLinksAgent_appLinksQueue];
  v21 = swift_allocObject();
  *(v21 + 16) = v4;
  v24[4] = partial apply for closure #1 in CAFDAppLinksAgent.automakerSettingService(_:didUpdateUserVisibleLabel:);
  v24[5] = v21;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 1107296256;
  v24[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v24[3] = &block_descriptor_12;
  v22 = _Block_copy(v24);
  v23 = v4;

  [v20 addOperationWithBlock:v22];
  _Block_release(v22);
}

void CAFDAppLinksAgent.deepLinkSettingService(_:didUpdateContentURLAction:)(void *a1, uint64_t a2, unint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = v7;
  if (one-time initialization token for appLinks != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static Logger.appLinks);
  v16 = a1;

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v33 = a2;
    v19 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v19 = 136315394;
    v20 = [v16 identifier];
    v21 = a7;
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v18;
    v23 = v11;
    v24 = a6;
    v26 = v25;

    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v26, aBlock);
    a6 = v24;
    v11 = v23;

    *(v19 + 4) = v27;
    a7 = v21;
    *(v19 + 12) = 2080;
    *(v19 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, a3, aBlock);
    _os_log_impl(&_mh_execute_header, v17, v32, a4, v19, 0x16u);
    swift_arrayDestroy();
  }

  v28 = *&v11[OBJC_IVAR____TtC13caraccessoryd17CAFDAppLinksAgent_appLinksQueue];
  v29 = swift_allocObject();
  *(v29 + 16) = v11;
  aBlock[4] = a6;
  aBlock[5] = v29;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = a7;
  v30 = _Block_copy(aBlock);
  v31 = v11;

  [v28 addOperationWithBlock:v30];
  _Block_release(v30);
}

uint64_t @objc CAFDAppLinksAgent.automakerSettingService(_:didUpdateUserVisibleLabel:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(id, uint64_t, uint64_t))
{
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v11 = a3;
  v12 = a1;
  a5(v11, v8, v10);
}

void CAFDAgent._CAFDConnectionProxy.fetchAppLinksSnapshot(reply:)(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for appLinks != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.appLinks);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "fetchAppLinksSnapshot(reply:)", v7, 2u);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    type metadata accessor for CAFDAppLinksAgent();
    v10 = swift_dynamicCastClass();
    if (v10)
    {
      v11 = v10;
      v12 = *(v10 + OBJC_IVAR____TtC13caraccessoryd17CAFDAppLinksAgent_appLinksQueue);
      v13 = swift_allocObject();
      v13[2] = v11;
      v13[3] = a1;
      v13[4] = a2;
      aBlock[4] = partial apply for closure #1 in CAFDAgent._CAFDConnectionProxy.fetchAppLinksSnapshot(reply:);
      aBlock[5] = v13;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      aBlock[3] = &block_descriptor_55;
      v14 = _Block_copy(aBlock);
      v15 = v12;
      v16 = v9;

      [v15 addOperationWithBlock:v14];
      _Block_release(v14);

      return;
    }
  }

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void closure #1 in CAFDAgent._CAFDConnectionProxy.fetchAppLinksSnapshot(reply:)(uint64_t a1, void (*a2)(id, void))
{
  v3 = OBJC_IVAR____TtC13caraccessoryd17CAFDAppLinksAgent_lastSnapshot;
  v4 = *(a1 + OBJC_IVAR____TtC13caraccessoryd17CAFDAppLinksAgent_lastSnapshot);
  if (v4 || (CAFDAppLinksAgent.updateAppLinks()(), (v4 = *(a1 + v3)) != 0))
  {
    v7 = v4;
  }

  else
  {
    v7 = [objc_allocWithZone(CAFAppLinksSnapshot) init];
    v4 = 0;
  }

  v6 = v4;
  a2(v7, 0);
}

void thunk for @escaping @callee_unowned @convention(block) (@unowned CAFAppLinksSnapshot, @unowned NSError?) -> ()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = _convertErrorToNSError(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

Swift::Void __swiftcall CAFDAgent._CAFDConnectionProxy.refreshAppLinksSnapshot()()
{
  if (one-time initialization token for appLinks != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Logger.appLinks);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "refreshAppLinksSnapshot()", v3, 2u);
  }

  if (CAFDAgent._CAFDConnectionProxy.remote.getter())
  {
    v4 = swift_dynamicCastObjCProtocolConditional();
    if (v4)
    {
      [v4 refreshAppLinksSnapshot];
    }

    swift_unknownObjectRelease();
  }
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC13CarAssetUtils15CAUVehicleTraitO_SSTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13CarAssetUtils15CAUVehicleTraitO_SStMd, &_s13CarAssetUtils15CAUVehicleTraitO_SStMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy13CarAssetUtils15CAUVehicleTraitOSSGMd, &_ss18_DictionaryStorageCy13CarAssetUtils15CAUVehicleTraitOSSGMR);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = &v6[*(v2 + 48)];
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of (AnyHashable, Any)(v10, v6, &_s13CarAssetUtils15CAUVehicleTraitO_SStMd, &_s13CarAssetUtils15CAUVehicleTraitO_SStMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for CAUVehicleTrait();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = (v8[7] + 16 * v14);
      v18 = *(v9 + 1);
      *v17 = *v9;
      v17[1] = v18;
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd, &_ss18_DictionaryStorageCys11AnyHashableVypGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of (AnyHashable, Any)(v4, v13, &_ss11AnyHashableV_yptMd, &_ss11AnyHashableV_yptMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = outlined init with take of Any(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

char *specialized CAFDAppLinksAgent.init(carManager:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CAFDAgent.Configuration(0);
  v10 = *(*(v9 - 1) + 64);
  v11 = __chkstk_darwin(v9);
  v54 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v47 - v13;
  v50 = OBJC_IVAR____TtC13caraccessoryd17CAFDAppLinksAgent_carManager;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC13caraccessoryd17CAFDAppLinksAgent_currentCar] = 0;
  *&v1[OBJC_IVAR____TtC13caraccessoryd17CAFDAppLinksAgent_lastSnapshot] = 0;
  *&v1[OBJC_IVAR____TtC13caraccessoryd17CAFDAppLinksAgent_automakerSettings] = 0;
  *&v1[OBJC_IVAR____TtC13caraccessoryd17CAFDAppLinksAgent_settings] = &_swiftEmptyArrayStorage;
  v15 = OBJC_IVAR____TtC13caraccessoryd17CAFDAppLinksAgent_appLinksQueue;
  v16 = [objc_allocWithZone(NSOperationQueue) init];
  v17 = String._bridgeToObjectiveC()();
  [v16 setName:v17];

  [v16 setQualityOfService:25];
  [v16 setMaxConcurrentOperationCount:1];
  *&v2[v15] = v16;
  if (one-time initialization token for appLinks != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v4, static Logger.appLinks);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v49 = v2;
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "initializing applinks server", v21, 2u);
  }

  v51 = v8;
  v52 = v4;
  v53 = a1;

  swift_unknownObjectWeakAssign();
  (*(v5 + 16))(v8, v18, v4);
  v22 = objc_opt_self();
  v23 = [v22 identifier];
  if (!v23)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = String._bridgeToObjectiveC()();
  }

  v24 = [objc_opt_self() serial];
  v50 = BSDispatchQueueCreate();

  v49 = [v22 interface];
  v25 = [v22 entitlement];
  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v47 = v27;
  v48 = v26;

  v28 = [objc_opt_self() userInitiated];
  v29 = [v22 identifier];
  v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v32 = v31;

  v33 = [v22 identifier];
  v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v36 = v35;

  (*(v5 + 32))(v14, v51, v52);
  v37 = v49;
  *&v14[v9[5]] = v50;
  *&v14[v9[6]] = v37;
  v38 = &v14[v9[7]];
  v39 = v47;
  *v38 = v48;
  *(v38 + 1) = v39;
  *&v14[v9[8]] = v28;
  v40 = &v14[v9[9]];
  *v40 = v30;
  v40[1] = v32;
  v41 = &v14[v9[10]];
  *v41 = v34;
  v41[1] = v36;
  v42 = v54;
  outlined init with copy of CAFDAgent.Configuration(v14, v54);
  v43 = CAFDAgent.init(configuration:)(v42);
  v44 = v53;
  [v53 registerObserver:v43];
  v45 = [v44 currentCar];
  [v43 carManager:v44 didUpdateCurrentCar:v45];

  outlined destroy of CAFDAgent.Configuration(v14);
  return v43;
}

uint64_t type metadata accessor for CAFDAppLinksAgent()
{
  result = type metadata singleton initialization cache for CAFDAppLinksAgent;
  if (!type metadata singleton initialization cache for CAFDAppLinksAgent)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_10001BF64()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id specialized CAFDAppLinksAgent.carManager(_:didUpdateCurrentCar:)(void *a1)
{
  if (one-time initialization token for appLinks != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.appLinks);
  v4 = a1;
  v5 = v1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v8 = 136315394;
    v9 = *&v5[OBJC_IVAR____TtC13caraccessoryd17CAFDAppLinksAgent_currentCar];
    if (v9)
    {
      v10 = [v9 description];
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;
    }

    else
    {
      v13 = 0xE300000000000000;
      v11 = 7104878;
    }

    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v13, &v28);

    *(v8 + 4) = v14;
    *(v8 + 12) = 2080;
    if (a1)
    {
      v15 = [v4 description];
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;
    }

    else
    {
      v18 = 0xE300000000000000;
      v16 = 7104878;
    }

    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, &v28);

    *(v8 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v6, v7, "update current car from %s to %s", v8, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v20 = OBJC_IVAR____TtC13caraccessoryd17CAFDAppLinksAgent_currentCar;
  v21 = *&v5[OBJC_IVAR____TtC13caraccessoryd17CAFDAppLinksAgent_currentCar];
  if (v21)
  {
    [v21 unregisterObserver:v5];
    v22 = *&v5[v20];
  }

  else
  {
    v22 = 0;
  }

  *&v5[v20] = a1;

  if (a1)
  {
    v24 = v4;
    [v24 registerObserver:v5];
    v25 = "carDidUpdateAccessories:";
    v26 = v5;
    v23 = v24;
  }

  else
  {
    v26 = *&v5[OBJC_IVAR____TtC13caraccessoryd17CAFDAppLinksAgent_appLinksQueue];
    v25 = "cancelAllOperations";
  }

  return [v26 v25];
}

uint64_t sub_10001C334()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001C374()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A];
  if (!lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A]);
  }

  return result;
}

uint64_t outlined destroy of NSObject?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t lazy protocol witness table accessor for type CAFSettingProminenceLevel and conformance CAFSettingProminenceLevel(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t outlined init with copy of CAFDAgent.Configuration(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CAFDAgent.Configuration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of CAFDAgent.Configuration(uint64_t a1)
{
  v2 = type metadata accessor for CAFDAgent.Configuration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with copy of (AnyHashable, Any)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t one-time initialization function for nowPlaying()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.nowPlaying);
  __swift_project_value_buffer(v0, static Logger.nowPlaying);
  return Logger.init(subsystem:category:)();
}

int64x2_t one-time initialization function for maxImageSize()
{
  result = vdupq_n_s64(0x407F400000000000uLL);
  static CAFDNowPlayingAgent.maxImageSize = result;
  return result;
}

void CAFDNowPlayingAgent.lastMediaSourceIdentifier.didset()
{
  if (one-time initialization token for nowPlaying != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.nowPlaying);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14[0] = v6;
    *v5 = 136446210;
    v7 = *&v2[OBJC_IVAR____TtC13caraccessoryd19CAFDNowPlayingAgent_lastMediaSourceIdentifier];
    v8 = *&v2[OBJC_IVAR____TtC13caraccessoryd19CAFDNowPlayingAgent_lastMediaSourceIdentifier + 8];

    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, v14);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Received new media source identifier %{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
  }

  v10 = *&v2[OBJC_IVAR____TtC13caraccessoryd19CAFDNowPlayingAgent_nowPlayingQueue];
  v11 = swift_allocObject();
  *(v11 + 16) = v2;
  v14[4] = partial apply for closure #1 in CAFDNowPlayingAgent.nowPlayingService(_:didUpdateArtist:);
  v14[5] = v11;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 1107296256;
  v14[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v14[3] = &block_descriptor_190;
  v12 = _Block_copy(v14);
  v13 = v2;

  [v10 addOperationWithBlock:v12];
  _Block_release(v12);
}

char *CAFDNowPlayingAgent.__allocating_init(carManager:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = specialized CAFDNowPlayingAgent.init(carManager:)(a1);

  return v4;
}

char *CAFDNowPlayingAgent.init(carManager:)(void *a1)
{
  v2 = specialized CAFDNowPlayingAgent.init(carManager:)(a1);

  return v2;
}

void CAFDNowPlayingAgent.refreshClients()()
{
  v1 = OBJC_IVAR____TtC13caraccessoryd9CAFDAgent_connections;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if ((v2 & 0xC000000000000001) != 0)
  {
    if (v2 < 0)
    {
      v3 = *(v0 + v1);
    }

    v4 = *(v0 + v1);

    v5 = __CocoaSet.count.getter();

    if (v5)
    {
      goto LABEL_5;
    }

LABEL_8:
    if (one-time initialization token for nowPlaying != -1)
    {
      goto LABEL_33;
    }

    goto LABEL_9;
  }

  if (!*(v2 + 16))
  {
    goto LABEL_8;
  }

LABEL_5:
  v6 = *(v0 + v1);
  if ((v6 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for CAFDAgent._CAFDConnectionProxy();
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type CAFDAgent._CAFDConnectionProxy and conformance NSObject, type metadata accessor for CAFDAgent._CAFDConnectionProxy);
    Set.Iterator.init(_cocoa:)();
    v8 = v38;
    v7 = v39;
    v9 = v40;
    v10 = v41;
    v11 = v42;
  }

  else
  {
    v16 = -1 << *(v6 + 32);
    v7 = v6 + 56;
    v9 = ~v16;
    v17 = -v16;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v11 = v18 & *(v6 + 56);
    v8 = v6;
    swift_bridgeObjectRetain_n();
    v10 = 0;
  }

  v19 = (v9 + 64) >> 6;
  v20 = &unk_10005F000;
  v35 = v7;
  while (v8 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (type metadata accessor for CAFDAgent._CAFDConnectionProxy(), swift_dynamicCast(), v25 = v37, v23 = v10, v24 = v11, !v37))
    {
LABEL_31:
      outlined consume of Set<CAFDAssetVariantsAgent._ConnectionProxy>.Iterator._Variant();

      return;
    }

LABEL_27:
    v36 = v24;
    if (v20[262] != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    __swift_project_value_buffer(v26, static Logger.nowPlaying);
    v27 = v25;
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = v20;
      v31 = v8;
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v32 = 138412290;
      *(v32 + 4) = v27;
      *v33 = v25;
      v34 = v27;
      _os_log_impl(&_mh_execute_header, v28, v29, "queuing now playing refresh for %@", v32, 0xCu);
      outlined destroy of NSObject?(v33, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

      v8 = v31;
      v20 = v30;
      v7 = v35;
    }

    [swift_dynamicCastObjCProtocolUnconditional() refreshNowPlayingSnapshot];
    v10 = v23;
    v11 = v36;
  }

  v21 = v10;
  v22 = v11;
  v23 = v10;
  if (v11)
  {
LABEL_23:
    v24 = (v22 - 1) & v22;
    v25 = *(*(v8 + 48) + ((v23 << 9) | (8 * __clz(__rbit64(v22)))));
    if (!v25)
    {
      goto LABEL_31;
    }

    goto LABEL_27;
  }

  while (1)
  {
    v23 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v23 >= v19)
    {
      goto LABEL_31;
    }

    v22 = *(v7 + 8 * v23);
    ++v21;
    if (v22)
    {
      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_33:
  swift_once();
LABEL_9:
  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Logger.nowPlaying);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "No clients to refresh.", v15, 2u);
  }
}

void CAFDNowPlayingAgent.updateNowPlaying()()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v310 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v336 = 0;
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v310 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = (v0 + OBJC_IVAR____TtC13caraccessoryd19CAFDNowPlayingAgent_lastMediaSourceIdentifier);
  v15 = *(v0 + OBJC_IVAR____TtC13caraccessoryd19CAFDNowPlayingAgent_lastMediaSourceIdentifier);
  v14 = *(v0 + OBJC_IVAR____TtC13caraccessoryd19CAFDNowPlayingAgent_lastMediaSourceIdentifier + 8);
  v16 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v16 = v15 & 0xFFFFFFFFFFFFLL;
  }

  if (!v16)
  {
    if (one-time initialization token for nowPlaying != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    __swift_project_value_buffer(v41, static Logger.nowPlaying);
    v338 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v338, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&_mh_execute_header, v338, v42, "No current media source", v43, 2u);
    }

    goto LABEL_91;
  }

  v330 = v13;
  v316 = v12;
  v317 = v10;
  v17 = v15 == 0x59414C505F574F4ELL && v14 == 0xEB00000000474E49;
  v337 = v1;
  if (!v17 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    v44 = *(v1 + OBJC_IVAR____TtC13caraccessoryd19CAFDNowPlayingAgent_currentCar);
    if (v44 && (, v45 = v44, v46 = String._bridgeToObjectiveC()(), , v338 = [v45 mediaSourceWithIdentifier:v46], v45, v46, v338))
    {
      v47 = [v338 receivedAllValues];
      v48 = one-time initialization token for nowPlaying == -1;
      if (v47)
      {
        if (one-time initialization token for nowPlaying != -1)
        {
          goto LABEL_319;
        }

        goto LABEL_29;
      }

LABEL_86:
      if (!v48)
      {
        swift_once();
      }

      v102 = type metadata accessor for Logger();
      __swift_project_value_buffer(v102, static Logger.nowPlaying);
      v103 = v1;
      v104 = Logger.logObject.getter();
      v105 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v104, v105))
      {
        v106 = swift_slowAlloc();
        v107 = swift_slowAlloc();
        v339[0] = v107;
        *v106 = 136446210;
        v108 = *v330;
        v109 = v330[1];

        v110 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v108, v109, v339);

        *(v106 + 4) = v110;
        _os_log_impl(&_mh_execute_header, v104, v105, "Source has not received all values: %{public}s", v106, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v107);
      }

      [v338 registerObserver:v103];
    }

    else
    {
      if (one-time initialization token for nowPlaying != -1)
      {
        swift_once();
      }

      v62 = type metadata accessor for Logger();
      __swift_project_value_buffer(v62, static Logger.nowPlaying);
      v63 = v1;
      v338 = Logger.logObject.getter();
      v64 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v338, v64))
      {
        v65 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        v339[0] = v66;
        *v65 = 136446210;
        v67 = *v330;
        v68 = v330[1];

        v69 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v67, v68, v339);

        *(v65 + 4) = v69;
        _os_log_impl(&_mh_execute_header, v338, v64, "No media source with identifier %{public}s", v65, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v66);

        return;
      }
    }

LABEL_91:
    v111 = v338;

    return;
  }

  if (one-time initialization token for nowPlaying != -1)
  {
    swift_once();
  }

  v315 = v8;
  v320 = v6;
  v321 = v3;
  v322 = v2;
  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, static Logger.nowPlaying);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "Received update for now-playing-only source identifier.", v21, 2u);
  }

  v22 = swift_allocObject();
  v8 = 0;
  v23 = 0;
  *(v22 + 16) = &_swiftEmptyArrayStorage;
  while (2)
  {
    v24 = OBJC_IVAR____TtC13caraccessoryd19CAFDNowPlayingAgent_nowPlaying;
    v25 = *(v1 + OBJC_IVAR____TtC13caraccessoryd19CAFDNowPlayingAgent_nowPlaying);
    v338 = v23;
    if (!v25)
    {
      v323 = 0;
      v324 = 0;
      v27 = 0;
      v314 = 0;
      v36 = 0xE000000000000000;
      v29 = 0xE000000000000000;
      v335 = 0xE000000000000000;
      v333 = 0xE000000000000000;
      goto LABEL_43;
    }

    v26 = [v25 title];
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;

    v30 = *(v1 + v24);
    if (!v30)
    {
      v323 = 0;
      v324 = 0;
      v314 = 0;
      v36 = 0xE000000000000000;
      v335 = 0xE000000000000000;
LABEL_41:
      v333 = 0xE000000000000000;
      goto LABEL_42;
    }

    v31 = [v30 artist];
    v323 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v335 = v32;

    v33 = *(v1 + v24);
    if (!v33)
    {
      v324 = 0;
      v314 = 0;
      v36 = 0xE000000000000000;
      goto LABEL_41;
    }

    v34 = [v33 album];
    v324 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v35;

    v37 = *(v1 + v24);
    if (!v37 || (v38 = [v37 userVisibleDescription]) == 0)
    {
      v314 = 0;
      goto LABEL_41;
    }

    v39 = v38;
    v314 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v333 = v40;

LABEL_42:
    v23 = v338;
LABEL_43:
    v332 = v36;
    v70 = *(v1 + v24);
    if (v70)
    {
      v71 = [v70 artworkCharacteristic];
      v328 = [v71 transactionId];

      v23 = v338;
      if (v338)
      {
        goto LABEL_45;
      }

LABEL_48:
      v327 = 0;
      v74 = *(v1 + v24);
      if (v74)
      {
        goto LABEL_52;
      }

LABEL_49:
      v75 = 1;
      goto LABEL_57;
    }

    v328 = 0;
    if (!v23)
    {
      goto LABEL_48;
    }

LABEL_45:
    v72 = [v23 mediaItemImagesCharacteristic];
    if (v72)
    {
      v73 = v72;
      v327 = [v72 transactionId];
    }

    else
    {
      v327 = 0;
    }

    v23 = v338;
    v74 = *(v1 + v24);
    if (!v74)
    {
      goto LABEL_49;
    }

LABEL_52:
    if ([v74 hasPlaybackState] && (v76 = *(v1 + v24)) != 0)
    {
      v75 = [v76 playbackState];
    }

    else
    {
      v75 = 1;
    }

    v23 = v338;
LABEL_57:
    v325 = v22;
    v326 = v29;
    v329 = v24;
    v319 = v75;
    if (!v23)
    {
      goto LABEL_109;
    }

    v77 = v23;
    if ([v77 hasCurrentMediaItemIdentifier]&& [v77 hasMediaItems]&& ([v77 currentMediaItemIdentifierInvalid]& 1) == 0 && (v78 = [v77 currentMediaItemIdentifier]) != 0)
    {
      v313 = v27;
      v79 = v78;
      v80 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v82 = v81;

      v83 = HIBYTE(v82) & 0xF;
      if ((v82 & 0x2000000000000000) == 0)
      {
        v83 = v80 & 0xFFFFFFFFFFFFLL;
      }

      if (v83)
      {
        v84 = v82;
        v85 = v77;
        v86 = [v77 mediaItems];
        if (v86)
        {
          v87 = v22;
          v88 = v86;
          v89 = [v86 mediaItems];

          type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for CAFMediaItem, CAFMediaItem_ptr);
          v90 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          v91 = v336;
          v27 = specialized Sequence.first(where:)(v90, v80, v84);
          v336 = v91;

          swift_bridgeObjectRelease_n();
          if (v27)
          {
            v92 = v85;
            v22 = v87;
LABEL_97:
            v318 = v27;
            v112 = v27;
            if (one-time initialization token for nowPlaying != -1)
            {
              swift_once();
            }

            v113 = type metadata accessor for Logger();
            __swift_project_value_buffer(v113, static Logger.nowPlaying);
            v114 = v112;
            v115 = Logger.logObject.getter();
            v116 = static os_log_type_t.default.getter();
            v117 = os_log_type_enabled(v115, v116);
            v312 = v114;
            v334 = v92;
            if (v117)
            {
              LODWORD(v331) = v116;
              v118 = v22;
              v119 = swift_slowAlloc();
              v120 = swift_slowAlloc();
              v339[0] = v120;
              *v119 = 136446466;
              v121 = [v114 identifier];
              if (v121)
              {
                v122 = v121;
                v123 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v125 = v124;
              }

              else
              {
                v123 = 0;
                v125 = 0xE000000000000000;
              }

              v260 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v123, v125, v339);

              *(v119 + 4) = v260;
              *(v119 + 12) = 1026;
              v261 = v312;
              v262 = [v312 frequency];

              *(v119 + 14) = v262;
              v126 = v261;

              _os_log_impl(&_mh_execute_header, v115, v331, "Found media item with identifier %{public}s, frequency %{public}u", v119, 0x12u);
              __swift_destroy_boxed_opaque_existential_0(v120);

              v22 = v118;
              v27 = v313;
              v92 = v334;
            }

            else
            {

              v27 = v313;
              v126 = v114;
            }

            v263 = swift_allocObject();
            *(v263 + 16) = 0;
            *(v263 + 24) = 0xE000000000000000;
            v313 = v27;
            v311 = v263;
            if (v8 > 8 || ((1 << v8) & 0x106) == 0)
            {
              v279 = [v126 mediaItemName];
              v29 = v326;
              if (!v279)
              {
LABEL_296:
                __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
                inited = swift_initStackObject();
                *(inited + 16) = xmmword_100042C30;
                swift_beginAccess();
                v288 = *(v263 + 24);
                *(inited + 32) = *(v263 + 16);
                *(inited + 40) = v288;

                specialized Array.append<A>(contentsOf:)(inited);
                v289 = v312;
                v135 = [v312 multicast];
                v290 = [v289 mediaItemImageIdentifier];
                if (v290)
                {
                  v291 = v290;
                  v292 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v294 = v293;

                  v295 = HIBYTE(v294) & 0xF;
                  if ((v294 & 0x2000000000000000) == 0)
                  {
                    v295 = v292 & 0xFFFFFFFFFFFFLL;
                  }

                  if (v295)
                  {
                    v296 = v92;
                    v297 = [v296 hasMediaItemImages];
                    v298 = v312;
                    if (v297)
                    {
                      v299 = [v296 mediaItemImages];
                      if (v299)
                      {
                        v300 = v296;
                        v301 = v299;
                        v302 = [v299 mediaItemImages];

                        type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for CAFMediaItemImage, CAFMediaItemImage_ptr);
                        v303 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

                        v304 = v336;
                        v305 = specialized Sequence.first(where:)(v303, v292, v294);
                        v336 = v304;

                        swift_bridgeObjectRelease_n();
                        if (v305)
                        {
                          v306 = [v305 imageData];
                          v22 = v325;
                          v27 = v313;
                          if (v306)
                          {
                            v307 = v306;
                            v331 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
                            v334 = v308;
                          }

                          else
                          {

                            v331 = 0;
                            v334 = 0xF000000000000000;
                          }

                          v29 = v326;
                        }

                        else
                        {

                          v331 = 0;
                          v334 = 0xF000000000000000;
                          v22 = v325;
                          v29 = v326;
                          v27 = v313;
                        }

                        goto LABEL_121;
                      }
                    }

                    else
                    {
                    }
                  }

                  else
                  {
                  }

                  v331 = 0;
                  v334 = 0xF000000000000000;
                  v27 = v313;
                  goto LABEL_121;
                }

                v331 = 0;
                goto LABEL_120;
              }

              v280 = v22;
              v281 = v279;
              v282 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v284 = v283;

              v285 = HIBYTE(v284) & 0xF;
              if ((v284 & 0x2000000000000000) == 0)
              {
                v285 = v282 & 0xFFFFFFFFFFFFLL;
              }

              if (v285)
              {
                firstLineAppend #1 (_:) in CAFDNowPlayingAgent.updateNowPlaying()(v282, v284, v263);
              }

              v22 = v280;
              goto LABEL_292;
            }

            if ([v126 frequency])
            {
              v331 = UInt32.formattedFrequency(in:)(v8, [v126 frequency]);
              v265 = v264;
            }

            else
            {
              v331 = 0;
              v265 = 0xE000000000000000;
            }

            v266 = [v126 mediaItemName];
            v29 = v326;
            if (v266)
            {
              v267 = v22;
              v268 = v266;
              v269 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v271 = v270;

              v272 = HIBYTE(v271) & 0xF;
              if ((v271 & 0x2000000000000000) == 0)
              {
                v272 = v269 & 0xFFFFFFFFFFFFLL;
              }

              if (v272)
              {
                goto LABEL_280;
              }

              v22 = v267;
              v92 = v334;
              v126 = v312;
            }

            v273 = [v126 mediaItemShortName];
            if (v273)
            {
              v267 = v22;
              v274 = v273;
              v269 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v271 = v275;

              v276 = HIBYTE(v271) & 0xF;
              if ((v271 & 0x2000000000000000) == 0)
              {
                v276 = v269 & 0xFFFFFFFFFFFFLL;
              }

              if (v276)
              {
LABEL_280:
                v277 = HIBYTE(v265) & 0xF;
                if ((v265 & 0x2000000000000000) == 0)
                {
                  v277 = v331 & 0xFFFFFFFFFFFFLL;
                }

                v22 = v267;
                if (v277)
                {
                  v278._countAndFlagsBits = 8013901;
                  v278._object = 0xE300000000000000;
                  if (!String.hasSuffix(_:)(v278))
                  {
                    firstLineAppend #1 (_:) in CAFDNowPlayingAgent.updateNowPlaying()(v331, v265, v311);
                  }
                }

                v263 = v311;
                firstLineAppend #1 (_:) in CAFDNowPlayingAgent.updateNowPlaying()(v269, v271, v311);
LABEL_292:
                v92 = v334;
LABEL_295:

                v27 = v313;
                goto LABEL_296;
              }

              v22 = v267;
              v92 = v334;
            }

            v286 = v311;
            firstLineAppend #1 (_:) in CAFDNowPlayingAgent.updateNowPlaying()(v331, v265, v311);
            v263 = v286;
            goto LABEL_295;
          }

          v22 = v87;
          v29 = v326;
          v27 = v313;
LABEL_109:
          if (one-time initialization token for nowPlaying != -1)
          {
            swift_once();
          }

          v127 = type metadata accessor for Logger();
          __swift_project_value_buffer(v127, static Logger.nowPlaying);
          v128 = Logger.logObject.getter();
          v129 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v128, v129))
          {
            v130 = swift_slowAlloc();
            *v130 = 0;
            _os_log_impl(&_mh_execute_header, v128, v129, "No available current media item", v130, 2u);
          }

          if (v338)
          {
            v131 = v27;
            v132 = v338;
            if ([v132 hasCurrentFrequency]&& ([v132 currentFrequencyInvalid]& 1) == 0 && [v132 currentFrequency])
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
              v133 = swift_initStackObject();
              *(v133 + 16) = xmmword_100042C30;
              *(v133 + 32) = UInt32.formattedFrequency(in:)([v132 mediaSourceSemanticType], [v132 currentFrequency]);
              *(v133 + 40) = v134;
              specialized Array.append<A>(contentsOf:)(v133);
            }

            v135 = 0;
            v331 = 0;
            v318 = 0;
            v334 = 0xF000000000000000;
            v27 = v131;
LABEL_121:
            v136 = HIBYTE(v29) & 0xF;
            if ((v29 & 0x2000000000000000) == 0)
            {
              v136 = v27 & 0xFFFFFFFFFFFFLL;
            }

            if (v136)
            {
              v137 = v29;
              v138 = v335;
              v139 = v323;
            }

            else
            {
              v140 = HIBYTE(v333) & 0xF;
              v27 = v314;
              if ((v333 & 0x2000000000000000) == 0)
              {
                v140 = v314 & 0xFFFFFFFFFFFFLL;
              }

              v138 = v335;
              v139 = v323;
              if (!v140)
              {
                goto LABEL_130;
              }

              v137 = v333;
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
            v141 = swift_initStackObject();
            *(v141 + 16) = xmmword_100042C30;
            *(v141 + 32) = v27;
            *(v141 + 40) = v137;

            specialized Array.append<A>(contentsOf:)(v141);
LABEL_130:
            v323 = v135;
            v142 = HIBYTE(v138) & 0xF;
            if ((v138 & 0x2000000000000000) == 0)
            {
              v142 = v139 & 0xFFFFFFFFFFFFLL;
            }

            if (v142)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
              v143 = swift_initStackObject();
              *(v143 + 16) = xmmword_100042C30;
              *(v143 + 32) = v139;
              *(v143 + 40) = v138;

              specialized Array.append<A>(contentsOf:)(v143);
            }

            v144 = &byte_100055978;
            v145 = 3;
            v99 = v329;
            v146 = v324;
            while (v145)
            {
              v147 = *v144++;
              --v145;
              if (v147 == v8)
              {
                v148 = v332;
                v149 = HIBYTE(v332) & 0xF;
                if ((v332 & 0x2000000000000000) == 0)
                {
                  v149 = v324 & 0xFFFFFFFFFFFFLL;
                }

                if (v149)
                {
                  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
                  v150 = swift_initStackObject();
                  *(v150 + 16) = xmmword_100042C30;
                  *(v150 + 32) = v146;
                  *(v150 + 40) = v148;

                  specialized Array.append<A>(contentsOf:)(v150);
                }

                break;
              }
            }

            v27 = v22 + 16;
            v3 = *(v22 + 16);
            v339[0] = &_swiftEmptySetSingleton;

            v152 = specialized _ArrayProtocol.filter(_:)(v151);

            v336 = v152;
            if (*(v152 + 16) != *(v3 + 16))
            {
              if (one-time initialization token for nowPlaying != -1)
              {
                goto LABEL_314;
              }

              goto LABEL_143;
            }

            goto LABEL_146;
          }

          v135 = 0;
          v331 = 0;
          v318 = 0;
LABEL_120:
          v334 = 0xF000000000000000;
          goto LABEL_121;
        }

        goto LABEL_107;
      }

      v27 = v313;
    }

    else
    {
    }

    v93 = v77;
    if (![v93 hasCurrentFrequency])
    {
      goto LABEL_108;
    }

    if (([v93 currentFrequencyInvalid]& 1) != 0)
    {
      goto LABEL_108;
    }

    if (![v93 currentFrequency])
    {
      goto LABEL_108;
    }

    v94 = [v93 mediaItems];
    if (!v94)
    {
      goto LABEL_108;
    }

    LODWORD(v331) = v8;
    v313 = v27;
    v95 = v94;
    v96 = [v94 mediaItems];

    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for CAFMediaItem, CAFMediaItem_ptr);
    v97 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v97 >> 62)
    {
      v8 = _CocoaArrayWrapper.endIndex.getter();
      if (v8)
      {
        goto LABEL_75;
      }

LABEL_102:
      v8 = v331;
LABEL_107:

      v27 = v313;
LABEL_108:

      goto LABEL_109;
    }

    v8 = *((v97 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v8)
    {
      goto LABEL_102;
    }

LABEL_75:
    v334 = v77;
    v98 = 0;
    v99 = v97 & 0xC000000000000001;
    while (v99)
    {
      v100 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v1 = v98 + 1;
      v48 = v98 == -1;
      if (__OFADD__(v98, 1))
      {
LABEL_85:
        __break(1u);
        goto LABEL_86;
      }

LABEL_79:
      v27 = v100;
      v101 = [v100 frequency];
      if (v101 == [v93 currentFrequency])
      {

        v1 = v337;
        v22 = v325;
        v92 = v334;
        v8 = v331;
        goto LABEL_97;
      }

      ++v98;
      v17 = v1 == v8;
      v1 = v337;
      if (v17)
      {
        v22 = v325;
        v29 = v326;
        v77 = v334;
        goto LABEL_102;
      }
    }

    if (v98 < *((v97 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v100 = *(v97 + 8 * v98 + 32);
      v1 = v98 + 1;
      v48 = v98 == -1;
      if (__OFADD__(v98, 1))
      {
        goto LABEL_85;
      }

      goto LABEL_79;
    }

    __break(1u);
LABEL_314:
    swift_once();
LABEL_143:
    v153 = type metadata accessor for Logger();
    __swift_project_value_buffer(v153, static Logger.nowPlaying);
    v154 = Logger.logObject.getter();
    v155 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v154, v155))
    {
      v156 = swift_slowAlloc();
      v157 = swift_slowAlloc();
      v339[0] = v157;
      *v156 = 136446210;

      v158 = Array.description.getter();
      v160 = v159;

      v161 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v158, v160, v339);

      *(v156 + 4) = v161;
      _os_log_impl(&_mh_execute_header, v154, v155, "Removed duplicate titles: %{public}s", v156, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v157);
      v1 = v337;

      v99 = v329;
    }

    swift_beginAccess();
    v162 = v336;
    *v27 = v336;

    v3 = v162;
LABEL_146:
    v340 = xmmword_100042C40;
    v163 = *(v1 + v99);
    v2 = v334;
    if (v163)
    {
      v164 = [v163 artwork];
      v53 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v6 = v165;

      v166 = v6 >> 62;
      if ((v6 >> 62) > 1)
      {
        if (v166 == 2 && *(v53 + 16) != *(v53 + 24))
        {
          goto LABEL_155;
        }
      }

      else
      {
        if (v166)
        {
          if (v53 == v53 >> 32)
          {
            goto LABEL_162;
          }
        }

        else if ((v6 & 0xFF000000000000) == 0)
        {
          goto LABEL_162;
        }

LABEL_155:
        isa = Data._bridgeToObjectiveC()().super.isa;
        IsValidImage = CAFImageDataIsValidImage(isa);

        if (IsValidImage)
        {
          if (one-time initialization token for nowPlaying != -1)
          {
            swift_once();
          }

          v169 = type metadata accessor for Logger();
          __swift_project_value_buffer(v169, static Logger.nowPlaying);
          v170 = Logger.logObject.getter();
          v171 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v170, v171))
          {
            v172 = swift_slowAlloc();
            *v172 = 0;
            _os_log_impl(&_mh_execute_header, v170, v171, "Applying now playing artwork for snapshot.", v172, 2u);
          }

          v173 = v340;
          *&v340 = v53;
          *(&v340 + 1) = v6;
          outlined copy of Data._Representation(v53, v6);
          outlined consume of Data?(v173, *(&v173 + 1));
          v174 = *(v1 + OBJC_IVAR____TtC13caraccessoryd19CAFDNowPlayingAgent_lastSnapshot);
          if (!v174)
          {
            goto LABEL_227;
          }

          v175 = v174;
          v176 = [v175 lastArtworkToken];
          outlined consume of Data._Representation(v53, v6);

LABEL_228:
          v6 = v328;
          v2 = v328 != v176;
          goto LABEL_165;
        }
      }

LABEL_162:
      outlined consume of Data._Representation(v53, v6);
    }

    if (v2 >> 60 == 15)
    {
      goto LABEL_164;
    }

    v182 = v2 >> 62;
    if ((v2 >> 62) <= 1)
    {
      if (v182)
      {
        if (v331 == v331 >> 32)
        {
          goto LABEL_164;
        }
      }

      else if ((v2 & 0xFF000000000000) == 0)
      {
        goto LABEL_164;
      }

      goto LABEL_209;
    }

    while (2)
    {
      if (v182 != 2 || *(v331 + 16) == *(v331 + 24))
      {
        goto LABEL_164;
      }

LABEL_209:
      v199 = v331;
      outlined copy of Data._Representation(v331, v2);
      v200 = Data._bridgeToObjectiveC()().super.isa;
      v201 = CAFImageDataIsValidImage(v200);

      if (!v201)
      {
        outlined consume of Data?(v199, v2);
LABEL_164:
        v2 = 0;
        v6 = 0;
LABEL_165:
        v177 = 1;
        goto LABEL_166;
      }

      if (one-time initialization token for nowPlaying != -1)
      {
        goto LABEL_316;
      }

      while (1)
      {
        v202 = type metadata accessor for Logger();
        __swift_project_value_buffer(v202, static Logger.nowPlaying);
        v203 = Logger.logObject.getter();
        v204 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v203, v204))
        {
          v205 = swift_slowAlloc();
          *v205 = 0;
          _os_log_impl(&_mh_execute_header, v203, v204, "Applying media item artwork for snapshot.", v205, 2u);
        }

        v206 = v340;
        v207 = v331;
        *&v340 = v331;
        *(&v340 + 1) = v2;
        outlined copy of Data._Representation(v331, v2);
        outlined consume of Data?(v206, *(&v206 + 1));
        v208 = *(v1 + OBJC_IVAR____TtC13caraccessoryd19CAFDNowPlayingAgent_lastSnapshot);
        if (v208)
        {
          v209 = v208;
          v210 = [v209 lastMediaItemImageToken];
          outlined consume of Data?(v207, v2);
        }

        else
        {
          outlined consume of Data?(v207, v2);
          v210 = 0;
        }

        v177 = 0;
        v6 = v327;
        v2 = v327 != v210;
LABEL_166:
        v329 = v177;
        if (*(&v340 + 1) >> 60 == 15)
        {

          if (one-time initialization token for nowPlaying != -1)
          {
            swift_once();
          }

          v178 = type metadata accessor for Logger();
          __swift_project_value_buffer(v178, static Logger.nowPlaying);
          v52 = Logger.logObject.getter();
          v179 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v52, v179))
          {
            v180 = swift_slowAlloc();
            *v180 = 0;
            _os_log_impl(&_mh_execute_header, v52, v179, "No available artwork data.", v180, 2u);
            goto LABEL_245;
          }

          goto LABEL_246;
        }

        v181 = *(&v340 + 1) >> 62;
        if ((*(&v340 + 1) >> 62) > 1)
        {
          break;
        }

        if (!v181)
        {
          v1 = BYTE14(v340);
          goto LABEL_188;
        }

        if (!__OFSUB__(DWORD1(v340), v340))
        {
          v1 = DWORD1(v340) - v340;
          goto LABEL_188;
        }

        __break(1u);
LABEL_316:
        swift_once();
      }

      if (v181 == 2)
      {
        v182 = *(v340 + 16);
        v183 = *(v340 + 24);
        v1 = v183 - v182;
        if (!__OFSUB__(v183, v182))
        {
          goto LABEL_188;
        }

        __break(1u);
        continue;
      }

      break;
    }

    v1 = 0;
LABEL_188:
    if (one-time initialization token for nowPlaying != -1)
    {
      swift_once();
    }

    v184 = type metadata accessor for Logger();
    __swift_project_value_buffer(v184, static Logger.nowPlaying);
    v185 = Logger.logObject.getter();
    v186 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v185, v186))
    {
      v187 = swift_slowAlloc();
      *v187 = 134218240;
      *(v187 + 4) = v1;
      *(v187 + 12) = 2048;
      *(v187 + 14) = v6;
      _os_log_impl(&_mh_execute_header, v185, v186, "Processing new artwork data of size %ld; transaction %ld.", v187, 0x16u);
    }

    if (v2)
    {
      v188 = *(&v340 + 1);
      if (*(&v340 + 1) >> 60 == 15)
      {
        goto LABEL_326;
      }

      v189 = v340;
      outlined copy of Data._Representation(v340, *(&v340 + 1));
      v190.super.isa = Data._bridgeToObjectiveC()().super.isa;
      outlined consume of Data?(v189, v188);
      if (one-time initialization token for maxImageSize != -1)
      {
        swift_once();
      }

      v191 = CAFImageDataByScalingImageData(v190.super.isa, *&static CAFDNowPlayingAgent.maxImageSize, *(&static CAFDNowPlayingAgent.maxImageSize + 1));

      v192 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v2 = v193;

      outlined consume of Data?(v340, *(&v340 + 1));
      *&v340 = v192;
      *(&v340 + 1) = v2;
    }

    if (v1 < 1)
    {

      goto LABEL_247;
    }

    if (*(&v340 + 1) >> 60 != 15)
    {

      v194 = *(&v340 + 1) >> 62;
      if ((*(&v340 + 1) >> 62) > 1)
      {
        if (v194 != 2)
        {
          goto LABEL_218;
        }

        v195 = *(v340 + 16);
        v196 = *(v340 + 24);
        v197 = __OFSUB__(v196, v195);
        v198 = v196 - v195;
        if (!v197)
        {
          if (v198 >= v1)
          {
            goto LABEL_247;
          }

          goto LABEL_218;
        }

        __break(1u);
      }

      else
      {
        if (!v194)
        {
          if (BYTE14(v340) >= v1)
          {
            goto LABEL_247;
          }

          goto LABEL_218;
        }

        if (!__OFSUB__(DWORD1(v340), v340))
        {
          if (DWORD1(v340) - v340 >= v1)
          {
            goto LABEL_247;
          }

LABEL_218:
          v52 = Logger.logObject.getter();
          v211 = static os_log_type_t.default.getter();
          if (!os_log_type_enabled(v52, v211))
          {
            goto LABEL_246;
          }

          LODWORD(v336) = v211;
          v212 = swift_slowAlloc();
          v335 = swift_slowAlloc();
          v339[0] = v335;
          *v212 = 134218498;
          swift_beginAccess();
          v53 = *(&v340 + 1);
          if (*(&v340 + 1) >> 60 == 15)
          {
            goto LABEL_327;
          }

          v213 = v340;
          v50 = (*(&v340 + 1) >> 62);
          if ((*(&v340 + 1) >> 62) > 1)
          {
            if (v50 != 2)
            {
              v214 = 0;
              goto LABEL_234;
            }

            v216 = *(v340 + 16);
            v215 = *(v340 + 24);
            v197 = __OFSUB__(v215, v216);
            v214 = v215 - v216;
            if (!v197)
            {
LABEL_234:
              *(v212 + 4) = v214;
              *(v212 + 12) = 2080;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, _ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
              v217 = swift_allocObject();
              *(v217 + 16) = xmmword_100042C30;
              if (v50 > 1)
              {
                if (v50 == 2)
                {
                  v220 = *(v213 + 16);
                  v219 = *(v213 + 24);
                  v197 = __OFSUB__(v219, v220);
                  v218 = v219 - v220;
                  if (!v197)
                  {
                    goto LABEL_244;
                  }

                  __break(1u);
                  goto LABEL_241;
                }

                v218 = 0;
              }

              else
              {
                if (!v50)
                {
                  v218 = BYTE6(v53);
                  goto LABEL_244;
                }

LABEL_241:
                LODWORD(v218) = HIDWORD(v213) - v213;
                if (__OFSUB__(HIDWORD(v213), v213))
                {
                  goto LABEL_323;
                }

                v218 = v218;
              }

LABEL_244:
              v221 = v218 * 100.0 / v1;
              *(v217 + 56) = &type metadata for Float;
              *(v217 + 64) = &protocol witness table for Float;
              *(v217 + 32) = v221;
              v222 = String.init(format:_:)();
              v224 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v222, v223, v339);

              *(v212 + 14) = v224;
              *(v212 + 22) = 2048;
              *(v212 + 24) = v6;
              _os_log_impl(&_mh_execute_header, v52, v336, "Final artwork size %ld (deflated to %s%% of original), ; transaction %ld", v212, 0x20u);
              __swift_destroy_boxed_opaque_existential_0(v335);

LABEL_245:

LABEL_246:

LABEL_247:
              swift_beginAccess();
              v225 = v340;
              v227 = *v330;
              v226 = v330[1];

              outlined copy of Data?(v225, *(&v225 + 1));
              v228.super.isa = Array._bridgeToObjectiveC()().super.isa;

              v229 = 0;
              if (*(&v225 + 1) >> 60 != 15)
              {
                v229 = Data._bridgeToObjectiveC()().super.isa;
                outlined consume of Data?(v225, *(&v225 + 1));
              }

              v230 = objc_allocWithZone(CAFNowPlayingSnapshot);
              v231 = String._bridgeToObjectiveC()();

              LOBYTE(v309) = v319;
              v232 = [v230 initWithTitles:v228.super.isa artworkData:v229 mediaSourceType:v8 mediaSourceIdentifier:v231 artworkToken:v328 mediaItemImageToken:v327 artworkType:v329 multicast:v323 playbackState:v309];

              v233 = OBJC_IVAR____TtC13caraccessoryd19CAFDNowPlayingAgent_lastSnapshot;
              v234 = *&v337[OBJC_IVAR____TtC13caraccessoryd19CAFDNowPlayingAgent_lastSnapshot];
              v236 = v321;
              v235 = v322;
              v237 = v320;
              if (v234)
              {
                v238 = v234;
                if ([v238 isEqual:v232])
                {
                  if (one-time initialization token for nowPlaying != -1)
                  {
                    swift_once();
                  }

                  v239 = type metadata accessor for Logger();
                  __swift_project_value_buffer(v239, static Logger.nowPlaying);
                  v240 = Logger.logObject.getter();
                  v241 = static os_log_type_t.default.getter();
                  v242 = os_log_type_enabled(v240, v241);
                  v243 = v331;
                  if (v242)
                  {
                    v244 = swift_slowAlloc();
                    *v244 = 0;
                    _os_log_impl(&_mh_execute_header, v240, v241, "No change in snapshot; not notifying clients.", v244, 2u);
                  }

                  outlined consume of Data?(v243, v334);
                  outlined consume of Data?(v340, *(&v340 + 1));
LABEL_262:

                  return;
                }
              }

              if (one-time initialization token for nowPlaying != -1)
              {
                swift_once();
              }

              v245 = type metadata accessor for Logger();
              __swift_project_value_buffer(v245, static Logger.nowPlaying);
              v246 = v232;
              v247 = Logger.logObject.getter();
              v248 = static os_log_type_t.default.getter();

              if (os_log_type_enabled(v247, v248))
              {
                v249 = swift_slowAlloc();
                v250 = swift_slowAlloc();
                *v249 = 138412290;
                *(v249 + 4) = v246;
                *v250 = v246;
                v251 = v246;
                _os_log_impl(&_mh_execute_header, v247, v248, "Generated snapshot %@", v249, 0xCu);
                outlined destroy of NSObject?(v250, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
              }

              v252 = v337;
              v253 = *&v337[v233];
              *&v337[v233] = v246;
              v254 = v246;

              type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
              v255 = static OS_dispatch_queue.main.getter();
              v256 = swift_allocObject();
              *(v256 + 16) = v252;
              v339[4] = partial apply for closure #4 in CAFDNowPlayingAgent.updateNowPlaying();
              v339[5] = v256;
              v339[0] = _NSConcreteStackBlock;
              v339[1] = 1107296256;
              v339[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
              v339[3] = &block_descriptor_180;
              v257 = _Block_copy(v339);
              v258 = v252;

              v259 = v316;
              static DispatchQoS.unspecified.getter();
              v339[0] = &_swiftEmptyArrayStorage;
              lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags);
              __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
              lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
              dispatch thunk of SetAlgebra.init<A>(_:)();
              OS_dispatch_queue.async(group:qos:flags:execute:)();
              _Block_release(v257);

              outlined consume of Data?(v331, v334);
              (*(v236 + 8))(v237, v235);
              (*(v315 + 8))(v259, v317);
              outlined consume of Data?(v340, *(&v340 + 1));
              goto LABEL_262;
            }

            __break(1u);
LABEL_227:
            outlined consume of Data._Representation(v53, v6);
            v176 = 0;
            goto LABEL_228;
          }

          if (!v50)
          {
            v214 = BYTE14(v340);
            goto LABEL_234;
          }

          LODWORD(v214) = DWORD1(v340) - v340;
          if (!__OFSUB__(DWORD1(v340), v340))
          {
            v214 = v214;
            goto LABEL_234;
          }

          __break(1u);
LABEL_323:
          __break(1u);
LABEL_324:
          v61 = _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_33;
        }
      }

      __break(1u);
LABEL_319:
      swift_once();
LABEL_29:
      v315 = v8;
      v320 = v6;
      v321 = v3;
      v322 = v2;
      v49 = type metadata accessor for Logger();
      __swift_project_value_buffer(v49, static Logger.nowPlaying);
      v50 = v338;
      v51 = v1;
      v52 = Logger.logObject.getter();
      LOBYTE(v53) = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v52, v53))
      {
        v3 = swift_slowAlloc();
        v1 = swift_slowAlloc();
        v339[0] = v1;
        *v3 = 136446466;
        v54 = *v330;
        v55 = v330[1];

        v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v55, v339);

        *(v3 + 4) = v56;
        *(v3 + 12) = 2050;
        v57 = [v50 mediaItems];
        if (v57)
        {
          v58 = v57;
          v59 = [v57 mediaItems];

          type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for CAFMediaItem, CAFMediaItem_ptr);
          v60 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          if (v60 >> 62)
          {
            goto LABEL_324;
          }

          v61 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_33:
        }

        else
        {

          v61 = 0;
        }

        *(v3 + 14) = v61;

        _os_log_impl(&_mh_execute_header, v52, v53, "Source %{public}s has %{public}ld media item(s)", v3, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v1);

        v1 = v337;
      }

      else
      {
      }

      v22 = swift_allocObject();
      *(v22 + 16) = &_swiftEmptyArrayStorage;
      v8 = [v50 mediaSourceSemanticType];
      v23 = v338;
      continue;
    }

    break;
  }

  __break(1u);
LABEL_326:
  __break(1u);
LABEL_327:
  __break(1u);
}

uint64_t firstLineAppend #1 (_:) in CAFDNowPlayingAgent.updateNowPlaying()(uint64_t a1, void *a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = *(a3 + 24);
  v7 = *(a3 + 16) & 0xFFFFFFFFFFFFLL;
  if ((v6 & 0x2000000000000000) != 0)
  {
    v7 = HIBYTE(v6) & 0xF;
  }

  if (v7)
  {
    swift_beginAccess();
    v8._countAndFlagsBits = 32;
    v8._object = 0xE100000000000000;
    String.append(_:)(v8);
    swift_endAccess();
  }

  swift_beginAccess();
  v9._countAndFlagsBits = a1;
  v9._object = a2;
  String.append(_:)(v9);
  return swift_endAccess();
}

uint64_t UInt32.formattedFrequency(in:)(char a1, unsigned int a2)
{
  if (a1 == 8 || a1 == 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, _ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_100042C30;
    *(v4 + 56) = &type metadata for Double;
    *(v4 + 64) = &protocol witness table for Double;
    *(v4 + 32) = a2 / 1000.0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, _ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_100042C30;
    *(v5 + 56) = &type metadata for UInt;
    *(v5 + 64) = &protocol witness table for UInt;
    *(v5 + 32) = a2;
  }

  return String.init(format:_:)();
}

void CAFDNowPlayingAgent.__ivar_destroyer()
{
  swift_unknownObjectWeakDestroy();

  v1 = *(v0 + OBJC_IVAR____TtC13caraccessoryd19CAFDNowPlayingAgent_lastMediaSourceIdentifier + 8);

  v2 = *(v0 + OBJC_IVAR____TtC13caraccessoryd19CAFDNowPlayingAgent_nowPlayingQueue);
}

id CAFDNowPlayingAgent.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAFDNowPlayingAgent();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void CAFDNowPlayingAgent.carDidUpdateAccessories(_:)(void *a1)
{
  v3 = [a1 media];
  if (!v3)
  {
LABEL_20:
    if (one-time initialization token for nowPlaying == -1)
    {
      goto LABEL_21;
    }

    goto LABEL_39;
  }

  v4 = v3;
  v5 = [a1 nowPlayingInformation];
  if (!v5)
  {

    goto LABEL_20;
  }

  v40 = v5;
  [v4 registerObserver:v1];
  [v40 registerObserver:v1];
  if (([v40 receivedAllValues]& 1) == 0)
  {
    if (one-time initialization token for nowPlaying != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, static Logger.nowPlaying);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v24, v25))
    {
      goto LABEL_33;
    }

    v26 = swift_slowAlloc();
    *v26 = 0;
    v27 = "Awaiting now playing to receive all values";
    goto LABEL_32;
  }

  v6 = [v4 mediaSources];
  if (v6)
  {
    v7 = v6;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for CAFMediaSource, CAFMediaSource_ptr);
    v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v9 = v8 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v9)
    {
      v10 = [v40 nowPlaying];
      [v10 registerObserver:v1];

      v11 = [v4 mediaSources];
      if (v11)
      {
        v12 = v11;
        v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (v13 >> 62)
        {
          v14 = _CocoaArrayWrapper.endIndex.getter();
          if (v14)
          {
LABEL_11:
            v15 = 0;
            while (1)
            {
              if ((v13 & 0xC000000000000001) != 0)
              {
                v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_38;
                }

                v16 = *(v13 + 8 * v15 + 32);
              }

              v17 = v16;
              v18 = v15 + 1;
              if (__OFADD__(v15, 1))
              {
                break;
              }

              v41 = v16;
              closure #1 in CAFDNowPlayingAgent.carDidUpdateAccessories(_:)(&v41, v1);

              ++v15;
              if (v18 == v14)
              {
                goto LABEL_42;
              }
            }

            __break(1u);
LABEL_38:
            __break(1u);
LABEL_39:
            swift_once();
LABEL_21:
            v19 = type metadata accessor for Logger();
            __swift_project_value_buffer(v19, static Logger.nowPlaying);
            v40 = Logger.logObject.getter();
            v20 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v40, v20))
            {
              v21 = swift_slowAlloc();
              *v21 = 0;
              _os_log_impl(&_mh_execute_header, v40, v20, "Awaiting media and now playing", v21, 2u);
            }

            goto LABEL_23;
          }
        }

        else
        {
          v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v14)
          {
            goto LABEL_11;
          }
        }

LABEL_42:
      }

      v29 = *(v1 + OBJC_IVAR____TtC13caraccessoryd19CAFDNowPlayingAgent_media);
      *(v1 + OBJC_IVAR____TtC13caraccessoryd19CAFDNowPlayingAgent_media) = v4;
      v30 = v4;

      v31 = [v40 nowPlaying];
      v32 = *(v1 + OBJC_IVAR____TtC13caraccessoryd19CAFDNowPlayingAgent_nowPlaying);
      *(v1 + OBJC_IVAR____TtC13caraccessoryd19CAFDNowPlayingAgent_nowPlaying) = v31;

      v33 = [v40 nowPlaying];
      v34 = [v33 currentMediaSourceIdentifier];

      v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v37 = v36;

      v38 = (v1 + OBJC_IVAR____TtC13caraccessoryd19CAFDNowPlayingAgent_lastMediaSourceIdentifier);
      v39 = *(v1 + OBJC_IVAR____TtC13caraccessoryd19CAFDNowPlayingAgent_lastMediaSourceIdentifier + 8);
      *v38 = v35;
      v38[1] = v37;

      CAFDNowPlayingAgent.lastMediaSourceIdentifier.didset();

LABEL_23:
      v22 = v40;
      goto LABEL_34;
    }
  }

  if (one-time initialization token for nowPlaying != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  __swift_project_value_buffer(v28, static Logger.nowPlaying);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    v27 = "Awaiting media to receive some sources";
LABEL_32:
    _os_log_impl(&_mh_execute_header, v24, v25, v27, v26, 2u);
  }

LABEL_33:

  v22 = v4;
LABEL_34:
}

void closure #1 in CAFDNowPlayingAgent.carDidUpdateAccessories(_:)(void **a1, uint64_t a2)
{
  v3 = *a1;
  if (one-time initialization token for nowPlaying != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.nowPlaying);
  v5 = v3;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v26 = v9;
    *v8 = 136315138;
    v10 = [v5 identifier];
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = a2;
    v14 = v13;

    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v14, &v26);
    a2 = v12;

    *(v8 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v6, v7, "Observing source: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
  }

  [v5 registerObserver:a2];
  if (([v5 receivedAllValues] & 1) == 0)
  {
    v16 = v5;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v26 = v20;
      *v19 = 136315138;
      v21 = [v16 identifier];
      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v23;

      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, &v26);

      *(v19 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v17, v18, "Waiting for source to receive all values: %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
    }
  }
}

void CAFDNowPlayingAgent.accessoryDidUpdate(_:receivedAllValues:)(void *a1, char a2)
{
  if (a2)
  {
    v3 = v2;
    if (one-time initialization token for nowPlaying != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Logger.nowPlaying);
    v6 = a1;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      *(v9 + 4) = v6;
      *v10 = v6;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v7, v8, "Received all values for accessory %@!", v9, 0xCu);
      outlined destroy of NSObject?(v10, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    }

    v12 = [v6 car];
    if (v12)
    {
      v13 = v12;
      [v3 carDidUpdateAccessories:?];
    }

    else
    {
      __break(1u);
    }
  }
}

void CAFDAgent._CAFDConnectionProxy.fetchNowPlayingSnapshot(reply:)(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    type metadata accessor for CAFDNowPlayingAgent();
    v6 = swift_dynamicCastClass();
    if (v6)
    {
      v7 = v6;
      v8 = *(v6 + OBJC_IVAR____TtC13caraccessoryd19CAFDNowPlayingAgent_nowPlayingQueue);
      v9 = swift_allocObject();
      v9[2] = v7;
      v9[3] = a1;
      v9[4] = a2;
      aBlock[4] = partial apply for closure #1 in CAFDAgent._CAFDConnectionProxy.fetchNowPlayingSnapshot(reply:);
      aBlock[5] = v9;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      aBlock[3] = &block_descriptor_171;
      v10 = _Block_copy(aBlock);
      v11 = v8;
      v12 = v5;

      [v11 addOperationWithBlock:v10];
      _Block_release(v10);

      return;
    }
  }

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void closure #1 in CAFDAgent._CAFDConnectionProxy.fetchNowPlayingSnapshot(reply:)(uint64_t a1, void (*a2)(id, void))
{
  v3 = OBJC_IVAR____TtC13caraccessoryd19CAFDNowPlayingAgent_lastSnapshot;
  v4 = *(a1 + OBJC_IVAR____TtC13caraccessoryd19CAFDNowPlayingAgent_lastSnapshot);
  if (v4 || (CAFDNowPlayingAgent.updateNowPlaying()(), (v4 = *(a1 + v3)) != 0))
  {
    v7 = v4;
  }

  else
  {
    v7 = [objc_allocWithZone(CAFNowPlayingSnapshot) init];
    v4 = 0;
  }

  v6 = v4;
  a2(v7, 0);
}

Swift::Void __swiftcall CAFDAgent._CAFDConnectionProxy.refreshNowPlayingSnapshot()()
{
  if (one-time initialization token for nowPlaying != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.nowPlaying);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v2;
    *v6 = v2;
    v7 = v2;
    _os_log_impl(&_mh_execute_header, v3, v4, "telling %@ to refresh", v5, 0xCu);
    outlined destroy of NSObject?(v6, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  }

  if (CAFDAgent._CAFDConnectionProxy.remote.getter())
  {
    v8 = swift_dynamicCastObjCProtocolConditional();
    if (v8)
    {
      [v8 refreshNowPlayingSnapshot];
    }

    swift_unknownObjectRelease();
  }
}

void CAFDNowPlayingAgent.nowPlayingService(_:didUpdateCurrentMediaSourceIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *&v3[OBJC_IVAR____TtC13caraccessoryd19CAFDNowPlayingAgent_nowPlayingQueue];
  v7 = swift_allocObject();
  v7[2] = a2;
  v7[3] = a3;
  v7[4] = v3;
  v10[4] = partial apply for closure #1 in CAFDNowPlayingAgent.nowPlayingService(_:didUpdateCurrentMediaSourceIdentifier:);
  v10[5] = v7;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v10[3] = &block_descriptor_1;
  v8 = _Block_copy(v10);

  v9 = v3;

  [v6 addOperationWithBlock:v8];
  _Block_release(v8);
}

void closure #1 in CAFDNowPlayingAgent.nowPlayingService(_:didUpdateCurrentMediaSourceIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a3 + OBJC_IVAR____TtC13caraccessoryd19CAFDNowPlayingAgent_lastMediaSourceIdentifier);
  if (*(a3 + OBJC_IVAR____TtC13caraccessoryd19CAFDNowPlayingAgent_lastMediaSourceIdentifier) != a1 || *(a3 + OBJC_IVAR____TtC13caraccessoryd19CAFDNowPlayingAgent_lastMediaSourceIdentifier + 8) != a2)
  {
    v7 = v3[1];
    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      *v3 = a1;
      v3[1] = a2;

      CAFDNowPlayingAgent.lastMediaSourceIdentifier.didset();
    }
  }
}

void CAFDNowPlayingAgent.nowPlayingService(_:didUpdateTitle:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *&v6[OBJC_IVAR____TtC13caraccessoryd19CAFDNowPlayingAgent_nowPlayingQueue];
  v10 = swift_allocObject();
  *(v10 + 16) = v6;
  v13[4] = a5;
  v13[5] = v10;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v13[3] = a6;
  v11 = _Block_copy(v13);
  v12 = v6;

  [v9 addOperationWithBlock:v11];
  _Block_release(v11);
}

uint64_t @objc CAFDNowPlayingAgent.nowPlayingService(_:didUpdateJumpBackwardInterval:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMR);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v12 - v7;
  if (a4)
  {
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSUnitDuration, NSUnitDuration_ptr);
    static Measurement._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGMR);
    (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGMR);
    (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  }

  return outlined destroy of NSObject?(v8, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMR);
}

void CAFDNowPlayingAgent.nowPlayingService(_:didUpdatePlaybackState:)()
{
  v1 = *&v0[OBJC_IVAR____TtC13caraccessoryd19CAFDNowPlayingAgent_nowPlayingQueue];
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v5[4] = partial apply for closure #1 in CAFDNowPlayingAgent.nowPlayingService(_:didUpdateArtist:);
  v5[5] = v2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v5[3] = &block_descriptor_36;
  v3 = _Block_copy(v5);
  v4 = v0;

  [v1 addOperationWithBlock:v3];
  _Block_release(v3);
}

void CAFDNowPlayingAgent.serviceDidUpdate(_:receivedAllValues:)(void *a1, char a2)
{
  if (a2)
  {
    v3 = v2;
    if (one-time initialization token for nowPlaying != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Logger.nowPlaying);
    v6 = a1;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v18 = v10;
      *v9 = 136446210;
      v11 = [v6 name];
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;

      v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v14, &v18);

      *(v9 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v7, v8, "Service %{public}s received all values", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
    }

    v16 = [v6 car];
    if (v16)
    {
      v17 = v16;
      [v3 carDidUpdateAccessories:?];
    }

    else
    {
      __break(1u);
    }
  }
}

void CAFDNowPlayingAgent.mediaSourceService(_:didUpdateCurrentFrequency:)()
{
  v1 = *&v0[OBJC_IVAR____TtC13caraccessoryd19CAFDNowPlayingAgent_nowPlayingQueue];
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v5[4] = partial apply for closure #1 in CAFDNowPlayingAgent.nowPlayingService(_:didUpdateArtist:);
  v5[5] = v2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v5[3] = &block_descriptor_42;
  v3 = _Block_copy(v5);
  v4 = v0;

  [v1 addOperationWithBlock:v3];
  _Block_release(v3);
}

void CAFDNowPlayingAgent.mediaSourceService(_:didUpdateMediaItems:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *&v5[OBJC_IVAR____TtC13caraccessoryd19CAFDNowPlayingAgent_nowPlayingQueue];
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  v12[4] = a4;
  v12[5] = v9;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v12[3] = a5;
  v10 = _Block_copy(v12);
  v11 = v5;

  [v8 addOperationWithBlock:v10];
  _Block_release(v10);
}

void @objc CAFDNowPlayingAgent.nowPlayingService(_:didUpdateTitle:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = *&a1[OBJC_IVAR____TtC13caraccessoryd19CAFDNowPlayingAgent_nowPlayingQueue];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  v14[4] = a6;
  v14[5] = v11;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 1107296256;
  v14[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v14[3] = a7;
  v12 = _Block_copy(v14);
  v13 = a1;

  [v10 addOperationWithBlock:v12];
  _Block_release(v12);
}

void *closure #1 in serialize<A>(_:at:)(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t thunk for @escaping @callee_guaranteed () -> (@unowned Int)@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *specialized Sequence.first(where:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v7 = *(a1 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v10 = [v7 identifier];
      if (v10)
      {
        v11 = i;
        v12 = a3;
        v13 = v10;
        v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v16 = v15;

        a3 = v12;
        if (v14 == v20 && v16 == v12)
        {

          return v8;
        }

        v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

        i = v11;
        if (v18)
        {
          return v8;
        }
      }

      if (v9 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  return 0;
}

{
  if (a1 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v7 = *(a1 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v10 = [v7 identifier];
      if (v10)
      {
        v11 = v10;
        v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v14 = v13;

        if (v12 != a2)
        {
          goto LABEL_13;
        }
      }

      else
      {
        v14 = 0xE000000000000000;
        if (a2)
        {
          goto LABEL_13;
        }
      }

      if (v14 == a3)
      {

        return v8;
      }

LABEL_13:
      v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v15)
      {
        return v8;
      }

      if (v9 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  return 0;
}

uint64_t specialized _ArrayProtocol.filter(_:)(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return &_swiftEmptyArrayStorage;
  }

  v2 = 0;
  v3 = result + 40;
  v4 = &_swiftEmptyArrayStorage;
  v13 = result + 40;
  do
  {
    v5 = (v3 + 16 * v2);
    for (i = v2; ; ++i)
    {
      if (i >= v1)
      {
        __break(1u);
LABEL_18:
        __break(1u);
        return result;
      }

      v2 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_18;
      }

      v8 = *(v5 - 1);
      v7 = *v5;
      swift_bridgeObjectRetain_n();
      v9 = specialized Set._Variant.insert(_:)(&v14, v8, v7);

      if (v9)
      {
        break;
      }

      v5 += 2;
      if (v2 == v1)
      {
        return v4;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v15 = v4;
    if ((result & 1) == 0)
    {
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4[2] + 1, 1);
      v4 = v15;
    }

    v11 = v4[2];
    v10 = v4[3];
    if (v11 >= v10 >> 1)
    {
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
      v4 = v15;
    }

    v4[2] = v11 + 1;
    v12 = &v4[2 * v11];
    *(v12 + 4) = v8;
    *(v12 + 5) = v7;
    v3 = v13;
  }

  while (v2 != v1);
  return v4;
}

char *specialized CAFDNowPlayingAgent.init(carManager:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CAFDAgent.Configuration(0);
  v10 = *(*(v9 - 1) + 64);
  v11 = __chkstk_darwin(v9);
  v55 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v48 - v13;
  v52 = OBJC_IVAR____TtC13caraccessoryd19CAFDNowPlayingAgent_carManager;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC13caraccessoryd19CAFDNowPlayingAgent_currentCar] = 0;
  *&v1[OBJC_IVAR____TtC13caraccessoryd19CAFDNowPlayingAgent_lastSnapshot] = 0;
  *&v1[OBJC_IVAR____TtC13caraccessoryd19CAFDNowPlayingAgent_media] = 0;
  *&v1[OBJC_IVAR____TtC13caraccessoryd19CAFDNowPlayingAgent_nowPlaying] = 0;
  v15 = &v1[OBJC_IVAR____TtC13caraccessoryd19CAFDNowPlayingAgent_lastMediaSourceIdentifier];
  *v15 = 0;
  *(v15 + 1) = 0xE000000000000000;
  v16 = OBJC_IVAR____TtC13caraccessoryd19CAFDNowPlayingAgent_nowPlayingQueue;
  v17 = [objc_allocWithZone(NSOperationQueue) init];
  v18 = String._bridgeToObjectiveC()();
  [v17 setName:v18];

  [v17 setQualityOfService:25];
  [v17 setMaxConcurrentOperationCount:1];
  *&v2[v16] = v17;
  if (one-time initialization token for nowPlaying != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v4, static Logger.nowPlaying);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v50 = v2;
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "initializing now playing server", v22, 2u);
  }

  v51 = v8;
  v53 = v4;
  v54 = a1;

  swift_unknownObjectWeakAssign();
  (*(v5 + 16))(v8, v19, v4);
  v23 = objc_opt_self();
  v24 = [v23 identifier];
  if (!v24)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = String._bridgeToObjectiveC()();
  }

  v25 = [objc_opt_self() serial];
  v52 = BSDispatchQueueCreate();

  v50 = [v23 interface];
  v26 = [v23 entitlement];
  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v48 = v28;
  v49 = v27;

  v29 = [objc_opt_self() userInitiated];
  v30 = [v23 identifier];
  v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v33 = v32;

  v34 = [v23 identifier];
  v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v37 = v36;

  (*(v5 + 32))(v14, v51, v53);
  *&v14[v9[5]] = v52;
  v38 = v49;
  *&v14[v9[6]] = v50;
  v39 = &v14[v9[7]];
  v40 = v48;
  *v39 = v38;
  *(v39 + 1) = v40;
  *&v14[v9[8]] = v29;
  v41 = &v14[v9[9]];
  *v41 = v31;
  v41[1] = v33;
  v42 = &v14[v9[10]];
  *v42 = v35;
  v42[1] = v37;
  v43 = v55;
  outlined init with copy of CAFDAgent.Configuration(v14, v55);
  v44 = CAFDAgent.init(configuration:)(v43);
  v45 = v54;
  [v54 registerObserver:v44];
  v46 = [v45 currentCar];
  [v44 carManager:v45 didUpdateCurrentCar:v46];

  outlined destroy of CAFDAgent.Configuration(v14);
  return v44;
}

uint64_t type metadata accessor for CAFDNowPlayingAgent()
{
  result = type metadata singleton initialization cache for CAFDNowPlayingAgent;
  if (!type metadata singleton initialization cache for CAFDNowPlayingAgent)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id specialized CAFDNowPlayingAgent.carManager(_:didUpdateCurrentCar:)(void *a1)
{
  if (one-time initialization token for nowPlaying != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.nowPlaying);
  v4 = a1;
  v5 = v1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v8 = 136315394;
    v9 = *&v5[OBJC_IVAR____TtC13caraccessoryd19CAFDNowPlayingAgent_currentCar];
    if (v9)
    {
      v10 = [v9 description];
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;
    }

    else
    {
      v13 = 0xE300000000000000;
      v11 = 7104878;
    }

    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v13, &v31);

    *(v8 + 4) = v14;
    *(v8 + 12) = 2080;
    if (a1)
    {
      v15 = [v4 description];
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;
    }

    else
    {
      v18 = 0xE300000000000000;
      v16 = 7104878;
    }

    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, &v31);

    *(v8 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v6, v7, "update current car from %s to %s", v8, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v20 = OBJC_IVAR____TtC13caraccessoryd19CAFDNowPlayingAgent_currentCar;
  v21 = *&v5[OBJC_IVAR____TtC13caraccessoryd19CAFDNowPlayingAgent_currentCar];
  if (v21)
  {
    [v21 unregisterObserver:v5];
  }

  v22 = *&v5[OBJC_IVAR____TtC13caraccessoryd19CAFDNowPlayingAgent_media];
  *&v5[OBJC_IVAR____TtC13caraccessoryd19CAFDNowPlayingAgent_media] = 0;

  v23 = *&v5[OBJC_IVAR____TtC13caraccessoryd19CAFDNowPlayingAgent_nowPlaying];
  *&v5[OBJC_IVAR____TtC13caraccessoryd19CAFDNowPlayingAgent_nowPlaying] = 0;

  v24 = *&v5[OBJC_IVAR____TtC13caraccessoryd19CAFDNowPlayingAgent_lastSnapshot];
  *&v5[OBJC_IVAR____TtC13caraccessoryd19CAFDNowPlayingAgent_lastSnapshot] = 0;

  v25 = *&v5[v20];
  *&v5[v20] = a1;

  if (a1)
  {
    v27 = v4;
    [v27 registerObserver:v5];
    v28 = "carDidUpdateAccessories:";
    v29 = v5;
    v26 = v27;
  }

  else
  {
    v29 = *&v5[OBJC_IVAR____TtC13caraccessoryd19CAFDNowPlayingAgent_nowPlayingQueue];
    v28 = "cancelAllOperations";
  }

  return [v29 v28];
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100022998()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t outlined consume of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100022A64()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100022A9C()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100022AE8()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t outlined copy of Data?(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined copy of Data._Representation(a1, a2);
  }

  return a1;
}

uint64_t outlined copy of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t outlined consume of Data?(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined consume of Data._Representation(a1, a2);
  }

  return a1;
}

uint64_t sub_100022BC0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t specialized Dictionary.subscript.setter(uint64_t a1)
{
  v2 = v1;
  if (a1)
  {
    v4 = *v1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v1;
    result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, isUniquelyReferenced_nonNull_native);
    *v1 = v13;
  }

  else
  {
    v7 = *v1;
    result = specialized __RawDictionaryStorage.find<A>(_:)();
    if (v8)
    {
      v9 = result;
      v10 = *v2;
      v11 = swift_isUniquelyReferenced_nonNull_native();
      v12 = *v2;
      v14 = *v2;
      if (!v11)
      {
        specialized _NativeDictionary.copy()();
        v12 = v14;
      }

      result = specialized _NativeDictionary._delete(at:)(v9, v12);
      *v2 = v12;
    }
  }

  return result;
}

id CAFDAppLaunchManager.init(carManager:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC13caraccessoryd20CAFDAppLaunchManager_currentCar] = 0;
  *&v1[OBJC_IVAR____TtC13caraccessoryd20CAFDAppLaunchManager_registered] = &_swiftEmptySetSingleton;
  *&v1[OBJC_IVAR____TtC13caraccessoryd20CAFDAppLaunchManager_launchRequests] = &_swiftEmptyDictionarySingleton;
  *&v1[OBJC_IVAR____TtC13caraccessoryd20CAFDAppLaunchManager_processHandles] = &_swiftEmptyDictionarySingleton;
  *&v1[OBJC_IVAR____TtC13caraccessoryd20CAFDAppLaunchManager_launchAssertions] = &_swiftEmptySetSingleton;
  *&v1[OBJC_IVAR____TtC13caraccessoryd20CAFDAppLaunchManager_carManager] = a1;
  v12.receiver = v1;
  v12.super_class = type metadata accessor for CAFDAppLaunchManager();
  v3 = a1;
  v4 = objc_msgSendSuper2(&v12, "init");
  v5 = one-time initialization token for appLaunchManager;
  v6 = v4;
  if (v5 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Logger.appLaunchManager);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "AppLaunchManager initialized", v10, 2u);
  }

  [v3 registerObserver:{v6, v12.receiver, v12.super_class}];
  return v6;
}

id CAFDAppLaunchManager.__deallocating_deinit()
{
  v1 = v0;
  if (one-time initialization token for appLaunchManager != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.appLaunchManager);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "AppLaunchManager deinit", v5, 2u);
  }

  v7.receiver = v1;
  v7.super_class = type metadata accessor for CAFDAppLaunchManager();
  return objc_msgSendSuper2(&v7, "dealloc");
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CAFDAppLaunchManager.Application()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CAFDAppLaunchManager.Application()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance CAFDAppLaunchManager.Application@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for RawRepresentable.init(rawValue:) in conformance CAFDAppLaunchManager.Application, *a1);

  *a2 = v3 != 0;
  return result;
}

void CAFDAppLaunchManager.requestLaunch(app:for:)(void *a1)
{
  v57 = type metadata accessor for UUID();
  v3 = *(v57 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v57);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v56 = &v53 - v9;
  __chkstk_darwin(v8);
  v11 = &v53 - v10;
  if (one-time initialization token for appLaunchManager != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Logger.appLaunchManager);
  v13 = v1;
  v14 = a1;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();

  if (!os_log_type_enabled(v15, v16))
  {

    v25 = v57;
    goto LABEL_12;
  }

  v55 = v7;
  v17 = swift_slowAlloc();
  v54 = swift_slowAlloc();
  v59[0] = v54;
  *v17 = 136315906;
  *(v17 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000017, 0x8000000100044030, v59);
  *(v17 + 12) = 2080;
  *(v17 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x8000000100043780, v59);
  *(v17 + 22) = 2048;
  v18 = OBJC_IVAR____TtC13caraccessoryd20CAFDAppLaunchManager_launchRequests;
  swift_beginAccess();
  v19 = *&v13[v18];
  if (!*(v19 + 16))
  {
    v20 = v3;
LABEL_10:
    v24 = 0;
    goto LABEL_11;
  }

  v20 = v3;

  v21 = specialized __RawDictionaryStorage.find<A>(_:)();
  if ((v22 & 1) == 0)
  {

    goto LABEL_10;
  }

  v23 = *(*(v19 + 56) + 8 * v21);

  v24 = *(v23 + 16);

LABEL_11:
  *(v17 + 24) = v24;

  *(v17 + 32) = 2080;
  v26 = [v14 uniqueIdentifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v27 = UUID.uuidString.getter();
  v29 = v28;
  v30 = v11;
  v25 = v57;
  (*(v20 + 8))(v30, v57);
  v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v29, v59);
  v3 = v20;

  *(v17 + 34) = v31;
  _os_log_impl(&_mh_execute_header, v15, v16, "%s app=%s launchRequest.count=%ld service.uniqueIdentifier=%s", v17, 0x2Au);
  swift_arrayDestroy();

  v7 = v55;
LABEL_12:
  v32 = [v14 uniqueIdentifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v33 = OBJC_IVAR____TtC13caraccessoryd20CAFDAppLaunchManager_launchRequests;
  swift_beginAccess();
  v34 = *&v13[v33];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v58 = *&v13[v33];
  v36 = v58;
  *&v13[v33] = 0x8000000000000000;
  v37 = specialized __RawDictionaryStorage.find<A>(_:)();
  v39 = v36[2];
  v40 = (v38 & 1) == 0;
  v41 = __OFADD__(v39, v40);
  v42 = v39 + v40;
  if (v41)
  {
    __break(1u);
    goto LABEL_27;
  }

  LOBYTE(v14) = v38;
  if (v36[3] < v42)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v42, isUniquelyReferenced_nonNull_native);
    v36 = v58;
    v37 = specialized __RawDictionaryStorage.find<A>(_:)();
    if ((v14 & 1) == (v43 & 1))
    {
      goto LABEL_17;
    }

    v37 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_27:
    v52 = v37;
    specialized _NativeDictionary.copy()();
    v37 = v52;
    v36 = v58;
    *&v13[v33] = v58;
    if (v14)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

LABEL_17:
  *&v13[v33] = v36;
  if (v14)
  {
    goto LABEL_20;
  }

LABEL_18:
  v36[(v37 >> 6) + 8] |= 1 << v37;
  *(v36[7] + 8 * v37) = &_swiftEmptySetSingleton;
  v44 = v36[2];
  v41 = __OFADD__(v44, 1);
  v45 = v44 + 1;
  if (v41)
  {
    __break(1u);
    return;
  }

  v36[2] = v45;
LABEL_20:
  v46 = v36[7] + 8 * v37;
  v47 = v56;
  specialized Set._Variant.insert(_:)(v56, v7);
  (*(v3 + 8))(v47, v25);
  swift_endAccess();
  if (v36[2])
  {

    v48 = specialized __RawDictionaryStorage.find<A>(_:)();
    if (v49)
    {
      v50 = *(v36[7] + 8 * v48);

      v51 = *(v50 + 16);

      if (v51)
      {
        CAFDAppLaunchManager.launch(app:)();
      }
    }

    else
    {
    }
  }
}

unint64_t CAFDAppLaunchManager.removeRequestLaunch(app:for:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v56 - v5;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v57 = v7;
  v58 = v8;
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v56 - v13;
  if (one-time initialization token for appLaunchManager != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static Logger.appLaunchManager);
  v16 = v1;
  v17 = a1;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();

  v20 = &selRef_bundleID;
  if (!os_log_type_enabled(v18, v19))
  {

    v29 = v57;
    goto LABEL_11;
  }

  v56 = v6;
  v21 = swift_slowAlloc();
  v60[0] = swift_slowAlloc();
  *v21 = 136315906;
  *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x8000000100044050, v60);
  *(v21 + 12) = 2080;
  *(v21 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x8000000100043780, v60);
  *(v21 + 22) = 2048;
  v22 = OBJC_IVAR____TtC13caraccessoryd20CAFDAppLaunchManager_launchRequests;
  swift_beginAccess();
  v23 = *&v16[v22];
  if (!*(v23 + 16))
  {
    goto LABEL_9;
  }

  v24 = *&v16[v22];

  v25 = specialized __RawDictionaryStorage.find<A>(_:)();
  if ((v26 & 1) == 0)
  {

LABEL_9:
    v28 = 0;
    goto LABEL_10;
  }

  v27 = *(*(v23 + 56) + 8 * v25);

  v28 = *(v27 + 16);

LABEL_10:
  *(v21 + 24) = v28;

  *(v21 + 32) = 2080;
  v30 = [v17 uniqueIdentifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v31 = UUID.uuidString.getter();
  v33 = v32;
  v34 = v14;
  v29 = v57;
  (*(v58 + 8))(v34, v57);
  v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v33, v60);
  v20 = &selRef_bundleID;

  *(v21 + 34) = v35;
  _os_log_impl(&_mh_execute_header, v18, v19, "%s app=%s launchRequest.count=%ld service.uniqueIdentifier=%s", v21, 0x2Au);
  swift_arrayDestroy();

  v6 = v56;
LABEL_11:
  v36 = [v17 v20[346]];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v37 = OBJC_IVAR____TtC13caraccessoryd20CAFDAppLaunchManager_launchRequests;
  swift_beginAccess();
  v38 = *&v16[v37];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v59 = *&v16[v37];
  v40 = v59;
  *&v16[v37] = 0x8000000000000000;
  result = specialized __RawDictionaryStorage.find<A>(_:)();
  v43 = v40[2];
  v44 = (v42 & 1) == 0;
  v45 = __OFADD__(v43, v44);
  v46 = v43 + v44;
  if (v45)
  {
    __break(1u);
    goto LABEL_27;
  }

  LOBYTE(v17) = v42;
  if (v40[3] < v46)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v46, isUniquelyReferenced_nonNull_native);
    v40 = v59;
    result = specialized __RawDictionaryStorage.find<A>(_:)();
    if ((v17 & 1) == (v47 & 1))
    {
      goto LABEL_16;
    }

    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_27:
    v55 = result;
    specialized _NativeDictionary.copy()();
    result = v55;
    v40 = v59;
    *&v16[v37] = v59;
    if (v17)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

LABEL_16:
  *&v16[v37] = v40;
  if (v17)
  {
    goto LABEL_19;
  }

LABEL_17:
  v40[(result >> 6) + 8] |= 1 << result;
  *(v40[7] + 8 * result) = &_swiftEmptySetSingleton;
  v48 = v40[2];
  v45 = __OFADD__(v48, 1);
  v49 = v48 + 1;
  if (v45)
  {
    __break(1u);
    return result;
  }

  v40[2] = v49;
LABEL_19:
  v50 = v40[7] + 8 * result;
  specialized Set._Variant.remove(_:)(v12, v6);
  (*(v58 + 8))(v12, v29);
  outlined destroy of NSObject?(v6, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  swift_endAccess();
  if (v40[2])
  {

    v51 = specialized __RawDictionaryStorage.find<A>(_:)();
    if (v52)
    {
      v53 = *(v40[7] + 8 * v51);

      v54 = *(v53 + 16);

      if (v54)
      {
        return result;
      }
    }

    else
    {
    }
  }

  swift_beginAccess();
  specialized Dictionary.subscript.setter(0);
  return swift_endAccess();
}

void CAFDAppLaunchManager.launch(app:)()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v86 - v4;
  v6 = OBJC_IVAR____TtC13caraccessoryd20CAFDAppLaunchManager_processHandles;
  swift_beginAccess();
  if (*(*&v0[v6] + 16))
  {

    specialized __RawDictionaryStorage.find<A>(_:)();
    v8 = v7;

    if (v8)
    {
      if (one-time initialization token for appLaunchManager != -1)
      {
        swift_once();
      }

      v9 = type metadata accessor for Logger();
      __swift_project_value_buffer(v9, static Logger.appLaunchManager);
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        aBlock[0] = swift_slowAlloc();
        *v12 = 136315394;
        *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x612868636E75616CLL, 0xEC000000293A7070, aBlock);
        *(v12 + 12) = 2080;
        *(v12 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x8000000100043780, aBlock);
        _os_log_impl(&_mh_execute_header, v10, v11, "%s already tracking a process for %s", v12, 0x16u);
        swift_arrayDestroy();
      }

LABEL_32:

      return;
    }
  }

  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  (*(v14 + 56))(v5, 1, 1, v13);
  v89 = "createPKZip";
  v15 = String._bridgeToObjectiveC()();
  v17 = 0;
  if ((*(v14 + 48))(v5, 1, v13) != 1)
  {
    URL._bridgeToObjectiveC()(v16);
    v17 = v18;
    (*(v14 + 8))(v5, v13);
  }

  v19 = [objc_allocWithZone(LSApplicationIdentity) initWithBundleIdentifier:v15 URL:v17 personaUniqueString:0 personaType:4];

  v20 = [objc_opt_self() identityForLSApplicationIdentity:v19];
  if (!v20)
  {
    if (one-time initialization token for appLaunchManager != -1)
    {
      swift_once();
    }

    v70 = type metadata accessor for Logger();
    __swift_project_value_buffer(v70, static Logger.appLaunchManager);
    v71 = v19;
    v10 = Logger.logObject.getter();
    v72 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v72))
    {
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      aBlock[0] = v75;
      *v73 = 136315394;
      *(v73 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x612868636E75616CLL, 0xEC000000293A7070, aBlock);
      *(v73 + 12) = 2112;
      *(v73 + 14) = v71;
      *v74 = v71;
      v76 = v71;
      _os_log_impl(&_mh_execute_header, v10, v72, "%s unable to look up process identity for app identity %@", v73, 0x16u);
      outlined destroy of NSObject?(v74, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

      __swift_destroy_boxed_opaque_existential_0(v75);

      return;
    }

    goto LABEL_32;
  }

  v21 = v20;
  v88 = v6;
  v91 = v1;
  v92 = v19;
  v22 = [objc_opt_self() contextWithIdentity:v20];
  v23 = String._bridgeToObjectiveC()();
  v24 = String._bridgeToObjectiveC()();
  v25 = [objc_opt_self() attributeWithDomain:v23 name:v24];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, _ss23_ContiguousArrayStorageCyyXlGMR);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_100042870;
  *(v26 + 32) = v25;
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for RBSAttribute, RBSAttribute_ptr);
  v90 = v25;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v22 setAttributes:isa];

  if (one-time initialization token for appLaunchManager != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  v29 = __swift_project_value_buffer(v28, static Logger.appLaunchManager);
  v30 = v21;
  v93 = v29;
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    aBlock[0] = v35;
    *v33 = 136315394;
    *(v33 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x612868636E75616CLL, 0xEC000000293A7070, aBlock);
    *(v33 + 12) = 2112;
    *(v33 + 14) = v30;
    *v34 = v21;
    v36 = v30;
    _os_log_impl(&_mh_execute_header, v31, v32, "%s requesting launch for %@", v33, 0x16u);
    outlined destroy of NSObject?(v34, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

    __swift_destroy_boxed_opaque_existential_0(v35);
  }

  v37 = v91;
  v38 = objc_allocWithZone(RBSLaunchRequest);
  v91 = v22;
  v39 = [v38 initWithContext:v22];
  v95 = 0;
  aBlock[0] = 0;
  v94 = 0;
  v40 = [v39 execute:aBlock assertion:&v95 error:&v94];
  v41 = v95;
  v42 = aBlock[0];
  if (v40)
  {
    v43 = v94;
    v44 = v41;
    v45 = v42;

    if (v44)
    {
      swift_beginAccess();
      v46 = v44;
      specialized Set._Variant.insert(_:)(&v95, v46);
      v47 = v95;
      swift_endAccess();

      [v46 addObserver:v37];
    }

    v48 = v30;
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.default.getter();

    v51 = os_log_type_enabled(v49, v50);
    v89 = v48;
    if (v51)
    {
      v52 = swift_slowAlloc();
      v87 = v44;
      v53 = v52;
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      aBlock[0] = v55;
      *v53 = 136315650;
      *(v53 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x612868636E75616CLL, 0xEC000000293A7070, aBlock);
      *(v53 + 12) = 2112;
      *(v53 + 14) = v48;
      *(v53 + 22) = 2112;
      *(v53 + 24) = v45;
      *v54 = v21;
      v54[1] = v42;
      v56 = v48;
      v57 = v45;
      _os_log_impl(&_mh_execute_header, v49, v50, "%s process handle for %@: %@", v53, 0x20u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      swift_arrayDestroy();

      __swift_destroy_boxed_opaque_existential_0(v55);

      v44 = v87;
    }

    swift_beginAccess();
    v58 = v45;
    specialized Dictionary.subscript.setter(v42);
    swift_endAccess();
    if (v58)
    {
      v59 = v58;
      v60 = Logger.logObject.getter();
      v61 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v60, v61))
      {
        v62 = v44;
        v63 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        aBlock[0] = v65;
        *v63 = 136315394;
        *(v63 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x612868636E75616CLL, 0xEC000000293A7070, aBlock);
        *(v63 + 12) = 2112;
        *(v63 + 14) = v59;
        *v64 = v42;
        v66 = v59;
        _os_log_impl(&_mh_execute_header, v60, v61, "%s monitoring %@ for termination", v63, 0x16u);
        outlined destroy of NSObject?(v64, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

        __swift_destroy_boxed_opaque_existential_0(v65);

        v44 = v62;
      }

      v67 = v89;
      v68 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = partial apply for closure #1 in CAFDAppLaunchManager.launch(app:);
      aBlock[5] = v68;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed RBSProcessHandle, @guaranteed RBSProcessExitContext) -> ();
      aBlock[3] = &block_descriptor_2;
      v69 = _Block_copy(aBlock);

      [v59 monitorForDeath:v69];

      _Block_release(v69);
    }

    else
    {
    }
  }

  else
  {
    v77 = v94;
    v78 = v41;
    v79 = v42;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_errorRetain();
    v80 = Logger.logObject.getter();
    v81 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v82 = 136315650;
      *(v82 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x612868636E75616CLL, 0xEC000000293A7070, aBlock);
      *(v82 + 12) = 2080;
      *(v82 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, v89 | 0x8000000000000000, aBlock);
      *(v82 + 22) = 2112;
      swift_errorRetain();
      v84 = _swift_stdlib_bridgeErrorToNSError();
      *(v82 + 24) = v84;
      *v83 = v84;
      _os_log_impl(&_mh_execute_header, v80, v81, "%s error requesting launch for %s: %@", v82, 0x20u);
      outlined destroy of NSObject?(v83, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

      swift_arrayDestroy();
    }

    v85 = v92;
    if (v78)
    {
      [v78 invalidate];
    }

    else
    {
    }
  }
}

uint64_t closure #1 in CAFDAppLaunchManager.launch(app:)(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v10 = *(v20 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v20);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
  v14 = static OS_dispatch_queue.main.getter();
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  *(v15 + 24) = a1;
  aBlock[4] = partial apply for closure #1 in closure #1 in CAFDAppLaunchManager.launch(app:);
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_27;
  v16 = _Block_copy(aBlock);

  v17 = a1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);

  (*(v6 + 8))(v9, v5);
  return (*(v10 + 8))(v13, v20);
}

void closure #1 in closure #1 in CAFDAppLaunchManager.launch(app:)(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    CAFDAppLaunchManager.handleDeath(of:handle:)(a2);
  }
}

void thunk for @escaping @callee_guaranteed (@guaranteed RBSProcessHandle, @guaranteed RBSProcessExitContext) -> ()(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(v8, v7);
}

uint64_t CAFDAppLaunchManager.handleDeath(of:handle:)(void *a1)
{
  v2 = v1;
  if (one-time initialization token for appLaunchManager != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.appLaunchManager);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v31 = v10;
    *v8 = 136315394;
    *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000017, 0x8000000100043FD0, &v31);
    *(v8 + 12) = 2112;
    *(v8 + 14) = v5;
    *v9 = v5;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s monitored process %@ terminated", v8, 0x16u);
    outlined destroy of NSObject?(v9, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

    __swift_destroy_boxed_opaque_existential_0(v10);
  }

  v12 = OBJC_IVAR____TtC13caraccessoryd20CAFDAppLaunchManager_processHandles;
  swift_beginAccess();
  v13 = *(v2 + v12);
  if (*(v13 + 16))
  {
    v14 = *(v2 + v12);

    v15 = specialized __RawDictionaryStorage.find<A>(_:)();
    if (v16)
    {
      v17 = *(*(v13 + 56) + 8 * v15);

      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for RBSProcessHandle, RBSProcessHandle_ptr);
      v18 = v5;
      v19 = static NSObject.== infix(_:_:)();

      if (v19)
      {
        swift_beginAccess();
        specialized Dictionary.subscript.setter(0);
        swift_endAccess();
      }
    }

    else
    {
    }
  }

  v20 = OBJC_IVAR____TtC13caraccessoryd20CAFDAppLaunchManager_launchRequests;
  result = swift_beginAccess();
  v22 = *(v2 + v20);
  if (*(v22 + 16))
  {

    v23 = specialized __RawDictionaryStorage.find<A>(_:)();
    if (v24)
    {
      v25 = *(*(v22 + 56) + 8 * v23);

      v26 = *(v25 + 16);

      if (v26)
      {
        v27 = Logger.logObject.getter();
        v28 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          v30 = swift_slowAlloc();
          *v29 = 136315394;
          *(v29 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000017, 0x8000000100043FD0, &v30);
          *(v29 + 12) = 2080;
          *(v29 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x8000000100043780, &v30);
          _os_log_impl(&_mh_execute_header, v27, v28, "%s relaunching %s", v29, 0x16u);
          swift_arrayDestroy();
        }

        return CAFDAppLaunchManager.launch(app:)();
      }
    }

    else
    {
    }
  }

  return result;
}

void CAFDAppLaunchManager.carDidUpdateAccessories(_:)(void *a1)
{
  if (one-time initialization token for appLaunchManager != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.appLaunchManager);
  v3 = a1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v6 = 136315394;
    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001BLL, 0x8000000100043EE0, &v18);
    *(v6 + 12) = 2112;
    *(v6 + 14) = v3;
    *v7 = v3;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s accessories updated for %@", v6, 0x16u);
    outlined destroy of NSObject?(v7, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

    __swift_destroy_boxed_opaque_existential_0(v8);
  }

  v10 = [v3 automakerRequestContent];
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for CAFAutomakerRequestContent, CAFAutomakerRequestContent_ptr);
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v11 >> 62)
  {
    v12 = _CocoaArrayWrapper.endIndex.getter();
    if (!v12)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v12)
    {
      goto LABEL_14;
    }
  }

  if (v12 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v12; ++i)
  {
    if ((v11 & 0xC000000000000001) != 0)
    {
      v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v14 = *(v11 + 8 * i + 32);
    }

    v15 = v14;
    CAFDAppLaunchManager.registerServices(automakerRequestContent:)(v14);
  }

LABEL_14:

  v16 = [v3 automakerNotificationHistory];
  if (v16)
  {
    v17 = v16;
    CAFDAppLaunchManager.registerServices(automakerNotificationHistory:)(v16);
  }
}

void CAFDAppLaunchManager.registerServices(automakerRequestContent:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v47 - v10;
  v12 = OBJC_IVAR____TtC13caraccessoryd20CAFDAppLaunchManager_registered;
  swift_beginAccess();
  v13 = *&v1[v12];

  v14 = [a1 uniqueIdentifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  LOBYTE(v14) = specialized Set.contains(_:)(v11, v13);

  v15 = *(v5 + 8);
  v15(v11, v4);
  if ((v14 & 1) == 0)
  {
    v24 = [a1 uniqueIdentifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    swift_beginAccess();
    specialized Set._Variant.insert(_:)(v11, v9);
    v15(v11, v4);
    swift_endAccess();
    if (one-time initialization token for appLaunchManager != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, static Logger.appLaunchManager);
    v26 = a1;
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v47[0] = v31;
      *v29 = 136315394;
      *(v29 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002ALL, 0x80000001000440A0, v47);
      *(v29 + 12) = 2112;
      *(v29 + 14) = v26;
      *v30 = v26;
      v32 = v26;
      _os_log_impl(&_mh_execute_header, v27, v28, "%s registering for automakerRequestContent: %@", v29, 0x16u);
      outlined destroy of NSObject?(v30, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

      __swift_destroy_boxed_opaque_existential_0(v31);
    }

    v33 = [v26 requestContents];
    if (v33)
    {
      v34 = v33;
      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for CAFRequestContent, CAFRequestContent_ptr);
      v35 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (!(v35 >> 62))
      {
LABEL_13:
        v36 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_14;
      }
    }

    else
    {
      v35 = &_swiftEmptyArrayStorage;
      if (!(&_swiftEmptyArrayStorage >> 62))
      {
        goto LABEL_13;
      }
    }

    v36 = _CocoaArrayWrapper.endIndex.getter();
LABEL_14:
    if (v36)
    {
      if (v36 < 1)
      {
        __break(1u);
        goto LABEL_36;
      }

      v37 = 0;
      do
      {
        if ((v35 & 0xC000000000000001) != 0)
        {
          v38 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v38 = *(v35 + 8 * v37 + 32);
        }

        v39 = v38;
        ++v37;
        [v38 registerObserver:v2];
        [v2 requestContentService:v39 didUpdateOn:{objc_msgSend(v39, "on")}];
      }

      while (v36 != v37);
    }

    v40 = [v26 requestTemporaryContents];
    if (v40)
    {
      v41 = v40;
      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for CAFRequestTemporaryContent, CAFRequestTemporaryContent_ptr);
      v42 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (!(v42 >> 62))
      {
        goto LABEL_23;
      }
    }

    else
    {
      v42 = &_swiftEmptyArrayStorage;
      if (!(&_swiftEmptyArrayStorage >> 62))
      {
LABEL_23:
        v43 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v43)
        {
          goto LABEL_24;
        }

        goto LABEL_34;
      }
    }

    v43 = _CocoaArrayWrapper.endIndex.getter();
    if (v43)
    {
LABEL_24:
      if (v43 >= 1)
      {
        v44 = 0;
        do
        {
          if ((v42 & 0xC000000000000001) != 0)
          {
            v45 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v45 = *(v42 + 8 * v44 + 32);
          }

          v46 = v45;
          ++v44;
          [v45 registerObserver:v2];
          [v2 requestTemporaryContentService:v46 didUpdateOn:{objc_msgSend(v46, "on")}];
        }

        while (v43 != v44);
        goto LABEL_34;
      }

LABEL_36:
      __break(1u);
      return;
    }

LABEL_34:

    return;
  }

  if (one-time initialization token for appLaunchManager != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Logger.appLaunchManager);
  v17 = a1;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v47[0] = v22;
    *v20 = 136315394;
    *(v20 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002ALL, 0x80000001000440A0, v47);
    *(v20 + 12) = 2112;
    *(v20 + 14) = v17;
    *v21 = v17;
    v23 = v17;
    _os_log_impl(&_mh_execute_header, v18, v19, "%s already registered for automakerRequestContent: %@", v20, 0x16u);
    outlined destroy of NSObject?(v21, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

    __swift_destroy_boxed_opaque_existential_0(v22);
  }
}

void CAFDAppLaunchManager.registerServices(automakerNotificationHistory:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v40 - v10;
  v12 = OBJC_IVAR____TtC13caraccessoryd20CAFDAppLaunchManager_registered;
  swift_beginAccess();
  v13 = *(v1 + v12);

  v14 = [a1 uniqueIdentifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  LOBYTE(v14) = specialized Set.contains(_:)(v11, v13);

  v15 = *(v5 + 8);
  v15(v11, v4);
  if ((v14 & 1) == 0)
  {
    v24 = [a1 uniqueIdentifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    swift_beginAccess();
    specialized Set._Variant.insert(_:)(v11, v9);
    v15(v11, v4);
    swift_endAccess();
    if (one-time initialization token for appLaunchManager != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, static Logger.appLaunchManager);
    v26 = a1;
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v40[0] = v31;
      *v29 = 136315394;
      *(v29 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002FLL, 0x8000000100044070, v40);
      *(v29 + 12) = 2112;
      *(v29 + 14) = v26;
      *v30 = v26;
      v32 = v26;
      _os_log_impl(&_mh_execute_header, v27, v28, "%s registering for automakerNotificationHistory: %@", v29, 0x16u);
      outlined destroy of NSObject?(v30, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

      __swift_destroy_boxed_opaque_existential_0(v31);
    }

    v33 = [v26 historicalNotifications];
    if (v33)
    {
      v34 = v33;
      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for CAFHistoricalNotification, CAFHistoricalNotification_ptr);
      v35 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (!(v35 >> 62))
      {
        goto LABEL_13;
      }
    }

    else
    {
      v35 = &_swiftEmptyArrayStorage;
      if (!(&_swiftEmptyArrayStorage >> 62))
      {
LABEL_13:
        v36 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v36)
        {
          goto LABEL_22;
        }

        goto LABEL_14;
      }
    }

    v36 = _CocoaArrayWrapper.endIndex.getter();
    if (!v36)
    {
      goto LABEL_22;
    }

LABEL_14:
    if (v36 < 1)
    {
      __break(1u);
      return;
    }

    for (i = 0; i != v36; ++i)
    {
      if ((v35 & 0xC000000000000001) != 0)
      {
        v38 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v38 = *(v35 + 8 * i + 32);
      }

      v39 = v38;
      [v38 registerObserver:v2];
    }

LABEL_22:

    return;
  }

  if (one-time initialization token for appLaunchManager != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Logger.appLaunchManager);
  v17 = a1;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v40[0] = v22;
    *v20 = 136315394;
    *(v20 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002FLL, 0x8000000100044070, v40);
    *(v20 + 12) = 2112;
    *(v20 + 14) = v17;
    *v21 = v17;
    v23 = v17;
    _os_log_impl(&_mh_execute_header, v18, v19, "%s already registered for automakerNotificationHistory: %@", v20, 0x16u);
    outlined destroy of NSObject?(v21, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

    __swift_destroy_boxed_opaque_existential_0(v22);
  }
}

uint64_t specialized Set.contains(_:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (v8 = *(a2 + 40), _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID), v9 = dispatch thunk of Hashable._rawHashValue(seed:)(), v10 = -1 << *(a2 + 32), v11 = v9 & ~v10, v20 = a2 + 56, ((*(a2 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0))
  {
    v19 = a2;
    v12 = ~v10;
    v13 = v4 + 16;
    v14 = *(v4 + 16);
    v15 = *(v13 + 56);
    v16 = (v13 - 8);
    do
    {
      v14(v7, *(v19 + 48) + v15 * v11, v3);
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID);
      v17 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v16)(v7, v3);
      if (v17)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v20 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

void CAFDAppLaunchManager.requestContentService(_:didUpdateOn:)(void *a1, char a2)
{
  if (a2)
  {
    CAFDAppLaunchManager.requestLaunch(app:for:)(a1);
  }

  else
  {
    CAFDAppLaunchManager.removeRequestLaunch(app:for:)(a1);
  }
}

void @objc CAFDAppLaunchManager.requestContentService(_:didUpdateOn:)(void *a1, uint64_t a2, void *a3, int a4)
{
  v6 = a3;
  v7 = a1;
  if (a4)
  {
    CAFDAppLaunchManager.requestLaunch(app:for:)(v6);
  }

  else
  {
    CAFDAppLaunchManager.removeRequestLaunch(app:for:)(v6);
  }
}

void CAFDAppLaunchManager.assertion(_:didInvalidateWithError:)(void *a1)
{
  swift_beginAccess();
  v2 = specialized Set._Variant.remove(_:)(a1);
  swift_endAccess();
}

uint64_t implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for CAUVehicleTrait();
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type CAUVehicleTrait and conformance CAUVehicleTrait, &type metadata accessor for CAUVehicleTrait);
  v5 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v5);
}

{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for CAUVehicleTrait();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy13CarAssetUtils15CAUVehicleTraitOSSGMd, &_ss18_DictionaryStorageCy13CarAssetUtils15CAUVehicleTraitOSSGMR);
  v48 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v14 = result;
  if (*(v11 + 16))
  {
    v53 = v10;
    v44 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v45 = (v7 + 16);
    v46 = v11;
    v47 = v7;
    v49 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v25 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v28 = v25 | (v15 << 6);
      v29 = *(v11 + 48);
      v52 = *(v47 + 72);
      v30 = v29 + v52 * v28;
      if (v48)
      {
        (*v49)(v53, v30, v6);
        v31 = (*(v11 + 56) + 16 * v28);
        v32 = *v31;
        v50 = v31[1];
        v51 = v32;
      }

      else
      {
        (*v45)(v53, v30, v6);
        v33 = (*(v11 + 56) + 16 * v28);
        v34 = *v33;
        v50 = v33[1];
        v51 = v34;
      }

      v35 = *(v14 + 40);
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type CAUVehicleTrait and conformance CAUVehicleTrait, &type metadata accessor for CAUVehicleTrait);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v36 = -1 << *(v14 + 32);
      v37 = result & ~v36;
      v38 = v37 >> 6;
      if (((-1 << v37) & ~*(v21 + 8 * (v37 >> 6))) == 0)
      {
        v39 = 0;
        v40 = (63 - v36) >> 6;
        while (++v38 != v40 || (v39 & 1) == 0)
        {
          v41 = v38 == v40;
          if (v38 == v40)
          {
            v38 = 0;
          }

          v39 |= v41;
          v42 = *(v21 + 8 * v38);
          if (v42 != -1)
          {
            v22 = __clz(__rbit64(~v42)) + (v38 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v37) & ~*(v21 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v49)(*(v14 + 48) + v52 * v22, v53, v6);
      v23 = (*(v14 + 56) + 16 * v22);
      v24 = v50;
      *v23 = v51;
      v23[1] = v24;
      ++*(v14 + 16);
      v11 = v46;
    }

    v26 = v15;
    while (1)
    {
      v15 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v27 = v16[v15];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v19 = (v27 - 1) & v27;
        goto LABEL_17;
      }
    }

    if ((v48 & 1) == 0)
    {

      v3 = v44;
      goto LABEL_36;
    }

    v43 = 1 << *(v11 + 32);
    v3 = v44;
    if (v43 >= 64)
    {
      bzero(v16, ((v43 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v43;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy13caraccessoryd20CAFDAppLaunchManagerC11ApplicationOSo16RBSProcessHandleCGMd, &_ss18_DictionaryStorageCy13caraccessoryd20CAFDAppLaunchManagerC11ApplicationOSo16RBSProcessHandleCGMR);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v31 = v3;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = *(*(v5 + 56) + 8 * (v17 | (v9 << 6)));
      if ((a2 & 1) == 0)
      {
        v21 = v20;
      }

      v22 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v23 = -1 << *(v8 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 56) + 8 * v16) = v20;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v31;
      goto LABEL_35;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v31;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy13caraccessoryd20CAFDAppLaunchManagerC11ApplicationOShy10Foundation4UUIDVGGMd, &_ss18_DictionaryStorageCy13caraccessoryd20CAFDAppLaunchManagerC11ApplicationOShy10Foundation4UUIDVGGMR);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v33 = v3;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(v5 + 56);
      v22 = *(v21 + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v23 = *(v21 + 8 * v20);
      }

      v24 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_35;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}