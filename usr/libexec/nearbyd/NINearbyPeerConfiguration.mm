@interface NINearbyPeerConfiguration
- (BOOL)isEqual:(id)equal;
- (NINearbyPeerConfiguration)initWithCoder:(id)coder;
- (NINearbyPeerConfiguration)initWithPeerToken:(NIDiscoveryToken *)peerToken;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)descriptionInternal;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NINearbyPeerConfiguration

- (NINearbyPeerConfiguration)initWithPeerToken:(NIDiscoveryToken *)peerToken
{
  v6 = peerToken;
  if (!v6)
  {
    v11 = +[NSAssertionHandler currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"NIConfiguration.mm" lineNumber:472 description:{@"Invalid parameter not satisfying: %@", @"peerToken"}];
  }

  v12.receiver = self;
  v12.super_class = NINearbyPeerConfiguration;
  initInternal = [(NIConfiguration *)&v12 initInternal];
  v8 = initInternal;
  if (initInternal)
  {
    objc_storeStrong(initInternal + 5, peerToken);
    v8->_longRangeEnabled = 1;
    v8->_cameraAssistanceEnabled = 0;
    v8->_backgroundMode = 0;
    debugParameters = v8->_debugParameters;
    v8->_debugParameters = 0;

    v8->_extendedDistanceMeasurementEnabled = 0;
    v8->_useCase = 0;
    v8->_useCaseCameraAssistanceInClientProcess = 1;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v10.receiver = self;
  v10.super_class = NINearbyPeerConfiguration;
  v5 = [(NIConfiguration *)&v10 copyWithZone:?];
  [v5 setLongRangeEnabled:self->_longRangeEnabled];
  [v5 setCameraAssistanceEnabled:self->_cameraAssistanceEnabled];
  [v5 setBackgroundMode:self->_backgroundMode];
  v6 = [(NIDiscoveryToken *)self->_peerDiscoveryToken copyWithZone:zone];
  v7 = *(v5 + 5);
  *(v5 + 5) = v6;

  if (self->_debugParameters)
  {
    v8 = [[NSDictionary allocWithZone:?]copyItems:"initWithDictionary:copyItems:", self->_debugParameters, 1];
    [v5 setDebugParameters:v8];
  }

  *(v5 + 33) = self->_extendedDistanceMeasurementEnabled;
  [v5 setUseCase:self->_useCase];
  [v5 setUseCaseCameraAssistanceInClientProcess:self->_useCaseCameraAssistanceInClientProcess];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5.receiver = self;
  v5.super_class = NINearbyPeerConfiguration;
  [(NIConfiguration *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_peerDiscoveryToken forKey:@"peerDiscoveryToken"];
  [coderCopy encodeBool:self->_longRangeEnabled forKey:@"longRangeEnabled"];
  [coderCopy encodeBool:self->_cameraAssistanceEnabled forKey:@"cameraAssistanceEnabled"];
  [coderCopy encodeInteger:self->_backgroundMode forKey:@"backgroundMode"];
  [coderCopy encodeObject:self->_debugParameters forKey:@"debugParameters"];
  [coderCopy encodeBool:self->_extendedDistanceMeasurementEnabled forKey:@"extendedDistanceMeasurementEnabled"];
  [coderCopy encodeInteger:self->_useCase forKey:@"useCase"];
  [coderCopy encodeBool:self->_useCaseCameraAssistanceInClientProcess forKey:@"useCaseCameraAssistanceInClientProcess"];
}

- (NINearbyPeerConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  obj = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"peerDiscoveryToken"];
  v5 = [coderCopy decodeBoolForKey:@"longRangeEnabled"];
  v6 = [coderCopy decodeBoolForKey:@"cameraAssistanceEnabled"];
  v7 = [coderCopy decodeIntegerForKey:@"backgroundMode"];
  v27 = objc_opt_class();
  v8 = [NSArray arrayWithObjects:&v27 count:1];
  v22 = v6;
  v9 = v5;
  v10 = [NSSet setWithArray:v8];

  v26[0] = objc_opt_class();
  v26[1] = objc_opt_class();
  v11 = [NSArray arrayWithObjects:v26 count:2];
  v12 = [NSSet setWithArray:v11];

  v13 = [coderCopy decodeDictionaryWithKeysOfClasses:v10 objectsOfClasses:v12 forKey:@"debugParameters"];
  v14 = [coderCopy decodeBoolForKey:@"extendedDistanceMeasurementEnabled"];
  v15 = [coderCopy decodeIntegerForKey:@"useCase"];
  v16 = [coderCopy decodeBoolForKey:@"useCaseCameraAssistanceInClientProcess"];
  v25.receiver = selfCopy;
  v25.super_class = NINearbyPeerConfiguration;
  v17 = [(NIConfiguration *)&v25 initWithCoder:coderCopy];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_peerDiscoveryToken, obj);
    v18->_longRangeEnabled = v9;
    v18->_cameraAssistanceEnabled = v22;
    objc_storeStrong(&v18->_debugParameters, v13);
    if (v7 >= 3)
    {
      v19 = 0;
    }

    else
    {
      v19 = v7;
    }

    v18->_backgroundMode = v19;
    v18->_extendedDistanceMeasurementEnabled = v14;
    if (v15 >= 2)
    {
      v20 = 0;
    }

    else
    {
      v20 = v15;
    }

    v18->_useCase = v20;
    v18->_useCaseCameraAssistanceInClientProcess = v16;
  }

  return v18;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    v6 = v5;
    if (v5 == self)
    {
      v21 = 1;
LABEL_17:

      goto LABEL_18;
    }

    peerDiscoveryToken = self->_peerDiscoveryToken;
    peerDiscoveryToken = [(NINearbyPeerConfiguration *)v5 peerDiscoveryToken];
    v9 = [(NIDiscoveryToken *)peerDiscoveryToken isEqual:peerDiscoveryToken];

    longRangeEnabled = self->_longRangeEnabled;
    isLongRangeEnabled = [(NINearbyPeerConfiguration *)v6 isLongRangeEnabled];
    LOBYTE(peerDiscoveryToken) = self->_cameraAssistanceEnabled;
    isCameraAssistanceEnabled = [(NINearbyPeerConfiguration *)v6 isCameraAssistanceEnabled];
    backgroundMode = self->_backgroundMode;
    backgroundMode = [(NINearbyPeerConfiguration *)v6 backgroundMode];
    debugParameters = self->_debugParameters;
    v26 = peerDiscoveryToken;
    if (!debugParameters)
    {
      debugParameters = [(NINearbyPeerConfiguration *)v6 debugParameters];

      if (!debugParameters)
      {
        v16 = 0;
        goto LABEL_7;
      }

      debugParameters = self->_debugParameters;
    }

    debugParameters2 = [(NINearbyPeerConfiguration *)v6 debugParameters];
    v15 = [(NSDictionary *)debugParameters isEqual:debugParameters2];

    v16 = v15 ^ 1;
LABEL_7:
    extendedDistanceMeasurementEnabled = self->_extendedDistanceMeasurementEnabled;
    isExtendedDistanceMeasurementEnabled = [(NINearbyPeerConfiguration *)v6 isExtendedDistanceMeasurementEnabled];
    useCase = self->_useCase;
    useCase = [(NINearbyPeerConfiguration *)v6 useCase];
    useCaseCameraAssistanceInClientProcess = self->_useCaseCameraAssistanceInClientProcess;
    useCaseCameraAssistanceInClientProcess = [(NINearbyPeerConfiguration *)v6 useCaseCameraAssistanceInClientProcess];
    v21 = 0;
    if (!((longRangeEnabled != isLongRangeEnabled || (v9 & 1) == 0 || v26 != isCameraAssistanceEnabled || backgroundMode != backgroundMode) | v16 & 1) && extendedDistanceMeasurementEnabled == isExtendedDistanceMeasurementEnabled)
    {
      v21 = useCase == useCase && (useCaseCameraAssistanceInClientProcess & 1) == useCaseCameraAssistanceInClientProcess;
    }

    goto LABEL_17;
  }

  v21 = 0;
LABEL_18:

  return v21;
}

- (unint64_t)hash
{
  v3 = [(NIDiscoveryToken *)self->_peerDiscoveryToken hash];
  longRangeEnabled = self->_longRangeEnabled;
  cameraAssistanceEnabled = self->_cameraAssistanceEnabled;
  backgroundMode = self->_backgroundMode;
  return v3 ^ longRangeEnabled ^ cameraAssistanceEnabled ^ backgroundMode ^ [(NSDictionary *)self->_debugParameters hash]^ self->_extendedDistanceMeasurementEnabled ^ self->_useCase ^ self->_useCaseCameraAssistanceInClientProcess ^ 0x1F;
}

- (id)description
{
  v3 = [NSMutableString alloc];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  descriptionInternal = [(NINearbyPeerConfiguration *)self descriptionInternal];
  v7 = [v3 initWithFormat:@"<%@: %@>", v5, descriptionInternal];

  return v7;
}

- (id)descriptionInternal
{
  v3 = [[NSMutableString alloc] initWithString:&stru_1009B1428];
  peerDiscoveryToken = self->_peerDiscoveryToken;
  if (peerDiscoveryToken)
  {
    descriptionInternal = [(NIDiscoveryToken *)peerDiscoveryToken descriptionInternal];
    [v3 appendFormat:@"peerToken: %@", descriptionInternal];
  }

  else
  {
    [v3 appendString:@"peerToken: null"];
  }

  [v3 appendFormat:@", useCase: %s", +[NIInternalUtils NINearbyPeerUseCaseToString:](NIInternalUtils, "NINearbyPeerUseCaseToString:", self->_useCase)];
  if (self->_cameraAssistanceEnabled)
  {
    [v3 appendFormat:@", camera: 1 [inClient: %d]", self->_useCaseCameraAssistanceInClientProcess];
  }

  else
  {
    [v3 appendString:{@", camera: 0"}];
  }

  [v3 appendFormat:@", rangingModes: [LR %d, EXT %d]", self->_longRangeEnabled, self->_extendedDistanceMeasurementEnabled];
  [v3 appendFormat:@", backgroundMode: %s", +[NIInternalUtils NISessionBackgroundModeToString:](NIInternalUtils, "NISessionBackgroundModeToString:", self->_backgroundMode)];
  v6 = [(NSDictionary *)self->_debugParameters description];
  [v3 appendFormat:@", debugParameters:%@", v6];

  return v3;
}

@end