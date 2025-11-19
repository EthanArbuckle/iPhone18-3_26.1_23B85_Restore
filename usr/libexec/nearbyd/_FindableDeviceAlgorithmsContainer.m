@interface _FindableDeviceAlgorithmsContainer
- (_FindableDeviceAlgorithmsContainer)initWithToken:(id)a3 queue:(id)a4 delegate:(id)a5;
- (basic_string<char,)uniqueIdentifierForEngine:(std::allocator<char>> *__return_ptr)retstr;
- (id)objectFromIdentifier:(unint64_t)a3;
- (optional<unsigned)identifierFromDiscoveryToken:(id)a3;
@end

@implementation _FindableDeviceAlgorithmsContainer

- (_FindableDeviceAlgorithmsContainer)initWithToken:(id)a3 queue:(id)a4 delegate:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v31.receiver = self;
  v31.super_class = _FindableDeviceAlgorithmsContainer;
  v12 = [(_FindableDeviceAlgorithmsContainer *)&v31 init];
  if (v12)
  {
    v13 = objc_opt_new();
    containerIdentifier = v12->_containerIdentifier;
    v12->_containerIdentifier = v13;

    objc_storeStrong(&v12->_token, a3);
    v15 = [[NIServerAnalyticsManager alloc] initWithBundleIdentifier:@"nearbyd"];
    analyticsManager = v12->_analyticsManager;
    v12->_analyticsManager = v15;

    v12->_currentSolutionMacAddress = 0;
    v17 = [[NIFindingConfiguration alloc] initWithRole:1 discoveryToken:v9 preferredUpdateRate:3];
    configuration = v12->_configuration;
    v12->_configuration = v17;

    [(NIFindingConfiguration *)v12->_configuration setCameraAssistanceEnabled:+[NIPlatformInfo supportsSyntheticAperture]];
    v19 = [NINearbyUpdatesEngine alloc];
    v20 = v12->_configuration;
    v21 = v12->_analyticsManager;
    v22 = sub_10035D02C();
    v23 = *(v22 + 21);
    v29 = *(v22 + 20);
    v30 = v23;
    if (v23)
    {
      atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v28 = 0;
    v24 = [(NINearbyUpdatesEngine *)v19 initWithConfiguration:v20 queue:v10 delegate:v11 dataSource:v12 analyticsManager:v21 protobufLogger:&v29 error:&v28];
    v25 = v28;
    updatesEngine = v12->_updatesEngine;
    v12->_updatesEngine = v24;

    if (v30)
    {
      sub_10000AD84(v30);
    }

    if (v25 && os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
    {
      sub_1004AC1DC();
    }
  }

  return v12;
}

- (optional<unsigned)identifierFromDiscoveryToken:(id)a3
{
  currentSolutionMacAddress = self->_currentSolutionMacAddress;
  v4 = 1;
  result.__engaged_ = v4;
  result.var0 = currentSolutionMacAddress;
  return result;
}

- (id)objectFromIdentifier:(unint64_t)a3
{
  v3 = [[NINearbyObject alloc] initWithToken:self->_token];

  return v3;
}

- (basic_string<char,)uniqueIdentifierForEngine:(std::allocator<char>> *__return_ptr)retstr
{
  v4 = [*(v1 + 16) UUIDString];
  sub_100004A08(retstr, [v4 UTF8String]);

  return result;
}

@end