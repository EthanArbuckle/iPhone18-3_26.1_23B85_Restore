@interface NINearbyObject
+ (id)fauxObjectWithDiscoveryToken:(id)token name:(id)name deviceIdentifier:(id)identifier;
+ (id)objectFromBluetoothDevice:(id)device;
- (BOOL)isEqual:(id)equal;
- (NINearbyObject)initWithCoder:(id)coder;
- (NINearbyObject)initWithNearbyObject:(id)object;
- (NINearbyObject)initWithToken:(id)token;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)descriptionInternal;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NINearbyObject

- (NINearbyObject)initWithToken:(id)token
{
  tokenCopy = token;
  if (!tokenCopy)
  {
    v25 = +[NSAssertionHandler currentHandler];
    [v25 handleFailureInMethod:a2 object:self file:@"NINearbyObject.mm" lineNumber:126 description:{@"Invalid parameter not satisfying: %@", @"token"}];
  }

  v26.receiver = self;
  v26.super_class = NINearbyObject;
  v7 = [(NINearbyObject *)&v26 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_discoveryToken, token);
    v8->_distance = NINearbyObjectDistanceNotAvailable;
    v9 = NINearbyObjectDirectionNotAvailable;
    v8->_distanceMeasurementQuality = 0;
    v10 = NINearbyObjectElevationNotAvailable;
    LODWORD(v8->_azimuth) = NINearbyObjectAzimuthNotAvailable;
    LODWORD(v8->_elevation) = v10;
    v11 = NINearbyObjectQuaternionNotAvailable;
    *v8->_direction = v9;
    *v8->_anon_e0 = v11;
    *&v8->_timestamp = qword_1009FA000;
    deviceIdentifier = v8->_deviceIdentifier;
    v8->_relationship = 4;
    v8->_deviceIdentifier = 0;

    v8->_motionState = 0;
    v8->_verticalDirectionEstimate = 0;
    v13 = NINearbyObjectAngleNotAvailable;
    v8->_horizontalAngle = NINearbyObjectAngleNotAvailable;
    v8->_horizontalAngleAccuracy = v13;
    v8->_horizontalDistance = NINearbyObjectDistanceNotAvailable;
    location = v8->_location;
    v8->_itemState = 5;
    v8->_location = 0;

    name = v8->_name;
    v8->_name = 0;

    spatialScore = v8->_spatialScore;
    v8->_spatialScore = 0;

    bluetoothAdvertisingAddress = v8->_bluetoothAdvertisingAddress;
    v8->_bluetoothAdvertisingAddress = 0;

    bluetoothPeerIdentifier = v8->_bluetoothPeerIdentifier;
    v8->_bluetoothPeerIdentifier = 0;

    v19 = NINearbyObjectSignalStrengthNotAvailable;
    v8->_remoteTxAntennaMask = NINearbyObjectRemoteTxAntennaMaskNotAvailable;
    v20 = NINearbyObjectRangeBiasEstimateNotAvailable;
    *&v8->_signalStrength = v19;
    *&v8->_rangeBiasEstimate = v20;
    *&v8->_rangeUncertainty = NINearbyObjectRangeUncertaintyNotAvailable;
    *v8->_worldPosition = NINearbyObjectWorldPositionNotAvailable;
    v8->_requiresBiasCorrection = byte_1009FA009;
    uwbSignalFeatures = v8->_uwbSignalFeatures;
    v8->_uwbSignalFeatures = 0;

    v22 = NINearbyObjectRxStatusNotAvailable;
    v8->_nbRxStatus = NINearbyObjectRxStatusNotAvailable;
    v8->_mmsRxStatus = v22;
    *&v8->_nbRssi = NINearbyObjectNbRssiNotAvailable;
    *&v8->_canInteract = 1;
    v8->_revokeFindingExperience = 0;
    LODWORD(v8->_boundedRegionRange) = NINearbyObjectRegionBoundaryRangeNotAvailable;
    debugDisplayInfo = v8->_debugDisplayInfo;
    v8->_algorithmSource = 1;
    v8->_debugDisplayInfo = 0;
  }

  return v8;
}

- (NINearbyObject)initWithNearbyObject:(id)object
{
  objectCopy = object;
  if (!objectCopy)
  {
    v42 = +[NSAssertionHandler currentHandler];
    [v42 handleFailureInMethod:a2 object:self file:@"NINearbyObject.mm" lineNumber:175 description:{@"Invalid parameter not satisfying: %@", @"object"}];
  }

  v43.receiver = self;
  v43.super_class = NINearbyObject;
  v6 = [(NINearbyObject *)&v43 init];
  if (v6)
  {
    discoveryToken = [objectCopy discoveryToken];
    discoveryToken = v6->_discoveryToken;
    v6->_discoveryToken = discoveryToken;

    [objectCopy distance];
    v6->_distance = v9;
    [objectCopy direction];
    *v6->_direction = v10;
    v6->_distanceMeasurementQuality = [objectCopy distanceMeasurementQuality];
    [objectCopy azimuth];
    v6->_azimuth = v11;
    [objectCopy elevation];
    v6->_elevation = v12;
    [objectCopy quaternion];
    *v6->_anon_e0 = v13;
    v6->_relationship = [objectCopy relationship];
    deviceIdentifier = [objectCopy deviceIdentifier];
    deviceIdentifier = v6->_deviceIdentifier;
    v6->_deviceIdentifier = deviceIdentifier;

    [objectCopy timestamp];
    v6->_timestamp = v16;
    v6->_motionState = [objectCopy motionState];
    name = [objectCopy name];
    name = v6->_name;
    v6->_name = name;

    v6->_verticalDirectionEstimate = [objectCopy verticalDirectionEstimate];
    [objectCopy horizontalAngle];
    v6->_horizontalAngle = v19;
    [objectCopy horizontalAngleAccuracy];
    v6->_horizontalAngleAccuracy = v20;
    [objectCopy horizontalDistance];
    v6->_horizontalDistance = v21;
    v6->_itemState = [objectCopy itemState];
    location = [objectCopy location];
    v23 = [location copy];
    location = v6->_location;
    v6->_location = v23;

    spatialScore = [objectCopy spatialScore];
    spatialScore = v6->_spatialScore;
    v6->_spatialScore = spatialScore;

    bluetoothAdvertisingAddress = [objectCopy bluetoothAdvertisingAddress];
    bluetoothAdvertisingAddress = v6->_bluetoothAdvertisingAddress;
    v6->_bluetoothAdvertisingAddress = bluetoothAdvertisingAddress;

    bluetoothPeerIdentifier = [objectCopy bluetoothPeerIdentifier];
    bluetoothPeerIdentifier = v6->_bluetoothPeerIdentifier;
    v6->_bluetoothPeerIdentifier = bluetoothPeerIdentifier;

    [objectCopy signalStrength];
    v6->_signalStrength = v31;
    v6->_remoteTxAntennaMask = [objectCopy remoteTxAntennaMask];
    [objectCopy rangeBiasEstimate];
    v6->_rangeBiasEstimate = v32;
    [objectCopy rangeUncertainty];
    v6->_rangeUncertainty = v33;
    [objectCopy worldPosition];
    *v6->_worldPosition = v34;
    v6->_requiresBiasCorrection = [objectCopy requiresBiasCorrection];
    uwbSignalFeatures = [objectCopy uwbSignalFeatures];
    uwbSignalFeatures = v6->_uwbSignalFeatures;
    v6->_uwbSignalFeatures = uwbSignalFeatures;

    v6->_nbRxStatus = [objectCopy nbRxStatus];
    v6->_mmsRxStatus = [objectCopy mmsRxStatus];
    [objectCopy nbRssi];
    v6->_nbRssi = v37;
    v6->_canInteract = [objectCopy canInteract];
    v6->_resetARSession = [objectCopy resetARSession];
    v6->_revokeFindingExperience = [objectCopy revokeFindingExperience];
    [objectCopy boundedRegionRange];
    v6->_boundedRegionRange = v38;
    v6->_algorithmSource = [objectCopy algorithmSource];
    debugDisplayInfo = [objectCopy debugDisplayInfo];
    debugDisplayInfo = v6->_debugDisplayInfo;
    v6->_debugDisplayInfo = debugDisplayInfo;
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];

  return [v4 initWithNearbyObject:self];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_discoveryToken forKey:@"discoveryToken"];
  *&v4 = self->_distance;
  [coderCopy encodeFloat:@"distance" forKey:v4];
  [coderCopy encodeVector3:@"direction" forKey:*self->_direction];
  *&v5 = self->_azimuth;
  [coderCopy encodeFloat:@"azimuth" forKey:v5];
  *&v6 = self->_elevation;
  [coderCopy encodeFloat:@"elevation" forKey:v6];
  [coderCopy encodeQuat:@"quaternion" forKey:*self->_anon_e0];
  [coderCopy encodeInteger:self->_relationship forKey:@"relationship"];
  [coderCopy encodeObject:self->_deviceIdentifier forKey:@"deviceIdentifier"];
  [coderCopy encodeDouble:@"timestamp" forKey:self->_timestamp];
  [coderCopy encodeInteger:self->_distanceMeasurementQuality forKey:@"measurementQuality"];
  [coderCopy encodeInteger:self->_motionState forKey:@"motionState"];
  [coderCopy encodeObject:self->_name forKey:@"name"];
  [coderCopy encodeInteger:self->_verticalDirectionEstimate forKey:@"verticalDirectionEstimate"];
  *&v7 = self->_horizontalAngle;
  [coderCopy encodeFloat:@"horizontalAngle" forKey:v7];
  *&v8 = self->_horizontalAngleAccuracy;
  [coderCopy encodeFloat:@"horizontalAngleAccuracy" forKey:v8];
  *&v9 = self->_horizontalDistance;
  [coderCopy encodeFloat:@"horizontalDistance" forKey:v9];
  [coderCopy encodeInteger:self->_itemState forKey:@"itemState"];
  [coderCopy encodeObject:self->_spatialScore forKey:@"spatialScore"];
  [coderCopy encodeObject:self->_bluetoothAdvertisingAddress forKey:@"bluetoothAdvertisingAddress"];
  [coderCopy encodeObject:self->_bluetoothPeerIdentifier forKey:@"bluetoothPeerIdentifier"];
  [coderCopy encodeObject:self->_location forKey:@"location"];
  [coderCopy encodeDouble:@"signalStrength" forKey:self->_signalStrength];
  [coderCopy encodeInteger:self->_remoteTxAntennaMask forKey:@"remoteTxAntennaMask"];
  [coderCopy encodeDouble:@"rangeBiasEstimate" forKey:self->_rangeBiasEstimate];
  [coderCopy encodeDouble:@"rangeUncertainty" forKey:self->_rangeUncertainty];
  [coderCopy encodeVector3:@"worldPosition" forKey:*self->_worldPosition];
  [coderCopy encodeBool:self->_requiresBiasCorrection forKey:@"requiresBiasCorrection"];
  [coderCopy encodeObject:self->_uwbSignalFeatures forKey:@"uwbSignalFeatures"];
  [coderCopy encodeInteger:self->_nbRxStatus forKey:@"nbRxStatus"];
  [coderCopy encodeInteger:self->_mmsRxStatus forKey:@"mmsRxStatus"];
  [coderCopy encodeDouble:@"nbRssi" forKey:self->_nbRssi];
  [coderCopy encodeBool:self->_canInteract forKey:@"canInteract"];
  [coderCopy encodeBool:self->_resetARSession forKey:@"resetARSession"];
  [coderCopy encodeBool:self->_revokeFindingExperience forKey:@"revokeFindingExperience"];
  *&v10 = self->_boundedRegionRange;
  [coderCopy encodeFloat:@"boundedRegionRange" forKey:v10];
  [coderCopy encodeInteger:self->_algorithmSource forKey:@"algorithmSource"];
  [coderCopy encodeObject:self->_debugDisplayInfo forKey:@"debugDisplayInfo"];
}

- (NINearbyObject)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"discoveryToken"];
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [coderCopy decodeFloatForKey:@"distance"];
    v56 = v6;
    [coderCopy decodeVector3ForKey:@"direction"];
    v55 = v7;
    [coderCopy decodeFloatForKey:@"azimuth"];
    v54 = v8;
    [coderCopy decodeFloatForKey:@"elevation"];
    v53 = v9;
    [coderCopy decodeQuatForKey:@"quaternion"];
    v52 = v10;
    obj = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceIdentifier"];
    v11 = [coderCopy decodeIntegerForKey:@"relationship"];
    [coderCopy decodeDoubleForKey:@"timestamp"];
    v51 = v12;
    v13 = [coderCopy decodeIntegerForKey:@"measurementQuality"];
    v14 = [coderCopy decodeIntegerForKey:@"motionState"];
    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    v59 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"spatialScore"];
    v58 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bluetoothAdvertisingAddress"];
    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bluetoothPeerIdentifier"];
    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"location"];
    v50 = [coderCopy decodeIntegerForKey:@"verticalDirectionEstimate"];
    [coderCopy decodeFloatForKey:@"horizontalAngle"];
    v19 = v18;
    [coderCopy decodeFloatForKey:@"horizontalAngleAccuracy"];
    v21 = v20;
    [coderCopy decodeFloatForKey:@"horizontalDistance"];
    v23 = v22;
    v49 = [coderCopy decodeIntegerForKey:@"itemState"];
    [coderCopy decodeDoubleForKey:@"signalStrength"];
    v25 = v24;
    v48 = [coderCopy decodeIntForKey:@"remoteTxAntennaMask"];
    [coderCopy decodeDoubleForKey:@"rangeBiasEstimate"];
    v27 = v26;
    [coderCopy decodeDoubleForKey:@"rangeUncertainty"];
    v29 = v28;
    [coderCopy decodeVector3ForKey:@"worldPosition"];
    v47 = v30;
    v46 = [coderCopy decodeBoolForKey:@"requiresBiasCorrection"];
    v57 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uwbSignalFeatures"];
    v45 = [coderCopy decodeIntForKey:@"nbRxStatus"];
    v44 = [coderCopy decodeIntForKey:@"mmsRxStatus"];
    [coderCopy decodeDoubleForKey:@"nbRssi"];
    v32 = v31;
    v43 = [coderCopy decodeBoolForKey:@"canInteract"];
    v42 = [coderCopy decodeBoolForKey:@"resetARSession"];
    v41 = [coderCopy decodeBoolForKey:@"revokeFindingExperience"];
    [coderCopy decodeFloatForKey:@"boundedRegionRange"];
    v34 = v33;
    v40 = [coderCopy decodeIntegerForKey:@"algorithmSource"];
    v35 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"debugDisplayInfo"];
    v61.receiver = self;
    v61.super_class = NINearbyObject;
    v36 = [(NINearbyObject *)&v61 init];
    v37 = v36;
    if (v36)
    {
      objc_storeStrong(&v36->_discoveryToken, v5);
      v37->_distance = v56;
      v37->_azimuth = v54;
      v37->_elevation = v53;
      *v37->_direction = v55;
      *v37->_anon_e0 = v52;
      v37->_relationship = v11;
      objc_storeStrong(&v37->_deviceIdentifier, obj);
      v37->_timestamp = v51;
      v37->_distanceMeasurementQuality = v13;
      v37->_motionState = v14;
      objc_storeStrong(&v37->_name, v15);
      v37->_verticalDirectionEstimate = v50;
      v37->_horizontalAngle = v19;
      v37->_horizontalAngleAccuracy = v21;
      v37->_horizontalDistance = v23;
      v37->_itemState = v49;
      objc_storeStrong(&v37->_spatialScore, v59);
      objc_storeStrong(&v37->_bluetoothAdvertisingAddress, v58);
      objc_storeStrong(&v37->_bluetoothPeerIdentifier, v16);
      objc_storeStrong(&v37->_location, v17);
      v37->_remoteTxAntennaMask = v48;
      v37->_signalStrength = v25;
      v37->_rangeBiasEstimate = v27;
      v37->_rangeUncertainty = v29;
      *v37->_worldPosition = v47;
      v37->_requiresBiasCorrection = v46;
      objc_storeStrong(&v37->_uwbSignalFeatures, v57);
      v37->_nbRxStatus = v45;
      v37->_mmsRxStatus = v44;
      v37->_nbRssi = v32;
      v37->_canInteract = v43;
      v37->_resetARSession = v42;
      v37->_revokeFindingExperience = v41;
      v37->_boundedRegionRange = v34;
      v37->_algorithmSource = v40;
      objc_storeStrong(&v37->_debugDisplayInfo, v35);
    }

    self = v37;

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
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
      v81 = 1;
LABEL_63:

      goto LABEL_64;
    }

    discoveryToken = self->_discoveryToken;
    v127 = equalCopy;
    if (!discoveryToken)
    {
      discoveryToken = [(NINearbyObject *)v5 discoveryToken];

      if (!discoveryToken)
      {
        v11 = 0;
LABEL_7:
        deviceIdentifier = self->_deviceIdentifier;
        if (!deviceIdentifier)
        {
          deviceIdentifier = [(NINearbyObject *)v6 deviceIdentifier];

          if (!deviceIdentifier)
          {
            v16 = 0;
LABEL_11:
            distance = self->_distance;
            [(NINearbyObject *)v6 distance];
            v19 = v18;
            v126 = *self->_direction;
            [(NINearbyObject *)v6 direction];
            v125 = v20;
            distanceMeasurementQuality = self->_distanceMeasurementQuality;
            distanceMeasurementQuality = [(NINearbyObject *)v6 distanceMeasurementQuality];
            relationship = self->_relationship;
            relationship = [(NINearbyObject *)v6 relationship];
            timestamp = self->_timestamp;
            [(NINearbyObject *)v6 timestamp];
            v27 = v26;
            motionState = self->_motionState;
            motionState = [(NINearbyObject *)v6 motionState];
            signalStrength = self->_signalStrength;
            [(NINearbyObject *)v6 signalStrength];
            v30 = v29;
            remoteTxAntennaMask = self->_remoteTxAntennaMask;
            remoteTxAntennaMask = [(NINearbyObject *)v6 remoteTxAntennaMask];
            rangeBiasEstimate = self->_rangeBiasEstimate;
            [(NINearbyObject *)v6 rangeBiasEstimate];
            v33 = v32;
            v118 = relationship;
            v119 = relationship;
            v120 = distanceMeasurementQuality;
            rangeUncertainty = self->_rangeUncertainty;
            [(NINearbyObject *)v6 rangeUncertainty];
            v116 = v34;
            name = self->_name;
            if (!name)
            {
              name = [(NINearbyObject *)v6 name];

              if (!name)
              {
                goto LABEL_15;
              }

              name = self->_name;
            }

            name2 = [(NINearbyObject *)v6 name];
            v38 = [(NSString *)name isEqualToString:name2];

            LOBYTE(name) = v38 ^ 1;
LABEL_15:
            verticalDirectionEstimate = self->_verticalDirectionEstimate;
            verticalDirectionEstimate = [(NINearbyObject *)v6 verticalDirectionEstimate];
            horizontalAngle = self->_horizontalAngle;
            [(NINearbyObject *)v6 horizontalAngle];
            v114 = v41;
            horizontalAngleAccuracy = self->_horizontalAngleAccuracy;
            [(NINearbyObject *)v6 horizontalAngleAccuracy];
            v112 = v42;
            horizontalDistance = self->_horizontalDistance;
            [(NINearbyObject *)v6 horizontalDistance];
            v110 = v43;
            v107 = verticalDirectionEstimate;
            v108 = verticalDirectionEstimate;
            v109 = name;
            itemState = self->_itemState;
            itemState = [(NINearbyObject *)v6 itemState];
            spatialScore = self->_spatialScore;
            if (!spatialScore)
            {
              spatialScore = [(NINearbyObject *)v6 spatialScore];

              if (!spatialScore)
              {
                v104 = 0;
LABEL_19:
                bluetoothAdvertisingAddress = self->_bluetoothAdvertisingAddress;
                if (!bluetoothAdvertisingAddress)
                {
                  bluetoothAdvertisingAddress = [(NINearbyObject *)v6 bluetoothAdvertisingAddress];

                  if (!bluetoothAdvertisingAddress)
                  {
                    v103 = 0;
LABEL_23:
                    bluetoothPeerIdentifier = self->_bluetoothPeerIdentifier;
                    if (!bluetoothPeerIdentifier)
                    {
                      bluetoothPeerIdentifier = [(NINearbyObject *)v6 bluetoothPeerIdentifier];

                      if (!bluetoothPeerIdentifier)
                      {
                        v102 = 0;
LABEL_27:
                        location = self->_location;
                        if (!location)
                        {
                          location = [(NINearbyObject *)v6 location];

                          if (!location)
                          {
                            goto LABEL_31;
                          }

                          location = self->_location;
                        }

                        location2 = [(NINearbyObject *)v6 location];
                        v59 = [(NILocation *)location isEqual:location2];

                        LOBYTE(location) = v59 ^ 1;
LABEL_31:
                        v101 = *self->_worldPosition;
                        [(NINearbyObject *)v6 worldPosition];
                        v100 = v60;
                        requiresBiasCorrection = self->_requiresBiasCorrection;
                        v99 = location;
                        requiresBiasCorrection = [(NINearbyObject *)v6 requiresBiasCorrection];
                        uwbSignalFeatures = self->_uwbSignalFeatures;
                        v96 = distanceMeasurementQuality;
                        if (!uwbSignalFeatures)
                        {
                          uwbSignalFeatures = [(NINearbyObject *)v6 uwbSignalFeatures];

                          if (!uwbSignalFeatures)
                          {
                            v65 = 0;
LABEL_35:
                            nbRxStatus = self->_nbRxStatus;
                            nbRxStatus = [(NINearbyObject *)v6 nbRxStatus];
                            mmsRxStatus = self->_mmsRxStatus;
                            mmsRxStatus = [(NINearbyObject *)v6 mmsRxStatus];
                            nbRssi = self->_nbRssi;
                            [(NINearbyObject *)v6 nbRssi];
                            v92 = v68;
                            canInteract = self->_canInteract;
                            canInteract = [(NINearbyObject *)v6 canInteract];
                            resetARSession = self->_resetARSession;
                            resetARSession = [(NINearbyObject *)v6 resetARSession];
                            revokeFindingExperience = self->_revokeFindingExperience;
                            revokeFindingExperience = [(NINearbyObject *)v6 revokeFindingExperience];
                            boundedRegionRange = self->_boundedRegionRange;
                            [(NINearbyObject *)v6 boundedRegionRange];
                            v84 = v69;
                            algorithmSource = self->_algorithmSource;
                            algorithmSource = [(NINearbyObject *)v6 algorithmSource];
                            debugDisplayInfo = self->_debugDisplayInfo;
                            if (!debugDisplayInfo)
                            {
                              debugDisplayInfo = [(NINearbyObject *)v6 debugDisplayInfo];

                              if (!debugDisplayInfo)
                              {
                                v74 = 1;
                                goto LABEL_39;
                              }

                              debugDisplayInfo = self->_debugDisplayInfo;
                            }

                            debugDisplayInfo2 = [(NINearbyObject *)v6 debugDisplayInfo];
                            v74 = [(NSString *)debugDisplayInfo isEqualToString:debugDisplayInfo2];

LABEL_39:
                            v75 = vceqq_f32(v101, v100);
                            v75.i32[3] = v75.i32[2];
                            v76 = (vminvq_u32(v75) & 0x80000000) == 0;
                            v77 = vceqq_f32(v126, v125);
                            v77.i32[3] = v77.i32[2];
                            v78 = vminvq_u32(v77);
                            if (distance == v19)
                            {
                              v79 = v11;
                            }

                            else
                            {
                              v79 = 1;
                            }

                            if (v78 >= 0)
                            {
                              v79 = 1;
                            }

                            if (v96 != v120)
                            {
                              v79 = 1;
                            }

                            v80 = (nbRxStatus == nbRxStatus) & ~(v79 | v16 | (v119 != v118) | (timestamp != v27) | (motionState != motionState) | v109 | (v108 != v107) | (horizontalAngle != v114) | (horizontalAngleAccuracy != v112) | (horizontalDistance != v110) | (itemState != itemState) | v104 | v103 | v102 | v99 | (signalStrength != v30) | (remoteTxAntennaMask != remoteTxAntennaMask) | v76 | (requiresBiasCorrection != requiresBiasCorrection) | (rangeUncertainty != v116 || rangeBiasEstimate != v33) | v65);
                            if (mmsRxStatus != mmsRxStatus)
                            {
                              v80 = 0;
                            }

                            if (nbRssi != v92)
                            {
                              v80 = 0;
                            }

                            if (canInteract != canInteract)
                            {
                              v80 = 0;
                            }

                            if (resetARSession != resetARSession)
                            {
                              v80 = 0;
                            }

                            if (revokeFindingExperience != revokeFindingExperience)
                            {
                              v80 = 0;
                            }

                            if (boundedRegionRange != v84)
                            {
                              v80 = 0;
                            }

                            if (algorithmSource != algorithmSource)
                            {
                              v80 = 0;
                            }

                            v81 = v80 & v74;
                            equalCopy = v127;
                            goto LABEL_63;
                          }

                          uwbSignalFeatures = self->_uwbSignalFeatures;
                        }

                        uwbSignalFeatures2 = [(NINearbyObject *)v6 uwbSignalFeatures];
                        v64 = [(UWBSignalFeatures *)uwbSignalFeatures isEqual:uwbSignalFeatures2];

                        v65 = v64 ^ 1;
                        goto LABEL_35;
                      }

                      bluetoothPeerIdentifier = self->_bluetoothPeerIdentifier;
                    }

                    bluetoothPeerIdentifier2 = [(NINearbyObject *)v6 bluetoothPeerIdentifier];
                    v55 = [(NSUUID *)bluetoothPeerIdentifier isEqual:bluetoothPeerIdentifier2];

                    v102 = v55 ^ 1;
                    goto LABEL_27;
                  }

                  bluetoothAdvertisingAddress = self->_bluetoothAdvertisingAddress;
                }

                bluetoothAdvertisingAddress2 = [(NINearbyObject *)v6 bluetoothAdvertisingAddress];
                v51 = [(NSData *)bluetoothAdvertisingAddress isEqualToData:bluetoothAdvertisingAddress2];

                v103 = v51 ^ 1;
                goto LABEL_23;
              }

              spatialScore = self->_spatialScore;
            }

            spatialScore2 = [(NINearbyObject *)v6 spatialScore];
            v47 = [(NSNumber *)spatialScore isEqualToNumber:spatialScore2];

            v104 = v47 ^ 1;
            goto LABEL_19;
          }

          deviceIdentifier = self->_deviceIdentifier;
        }

        deviceIdentifier2 = [(NINearbyObject *)v6 deviceIdentifier];
        v15 = [(NSString *)deviceIdentifier isEqualToString:deviceIdentifier2];

        v16 = v15 ^ 1;
        goto LABEL_11;
      }

      discoveryToken = self->_discoveryToken;
    }

    discoveryToken2 = [(NINearbyObject *)v6 discoveryToken];
    v10 = [(NIDiscoveryToken *)discoveryToken isEqual:discoveryToken2];

    v11 = v10 ^ 1;
    goto LABEL_7;
  }

  v81 = 0;
LABEL_64:

  return v81;
}

- (unint64_t)hash
{
  discoveryToken = self->_discoveryToken;
  if (discoveryToken)
  {
    v71 = [(NIDiscoveryToken *)discoveryToken hash];
  }

  else
  {
    v71 = 0;
  }

  distance = self->_distance;
  v6 = NINearbyObjectDistanceNotAvailable;
  if (distance == NINearbyObjectDistanceNotAvailable)
  {
    v70 = 0;
  }

  else
  {
    *&v2 = self->_distance;
    v36 = [NSNumber numberWithFloat:v2];
    v70 = [v36 hash];
  }

  v7 = *self->_direction;
  v8 = vceqq_f32(NINearbyObjectDirectionNotAvailable, v7);
  v8.i32[3] = v8.i32[2];
  if ((vminvq_u32(v8) & 0x80000000) != 0)
  {
    v69 = 0;
  }

  else
  {
    v69 = sub_1002270E8(v7);
  }

  timestamp = self->_timestamp;
  v10 = qword_1009FA000;
  v80 = v6;
  if (timestamp == *&qword_1009FA000)
  {
    v68 = 0;
  }

  else
  {
    v35 = [NSNumber numberWithDouble:timestamp];
    v68 = [v35 hash];
  }

  v78 = [NSNumber numberWithInteger:self->_distanceMeasurementQuality];
  v79 = *&v10;
  v67 = [v78 hash];
  v77 = [NSNumber numberWithInteger:self->_motionState];
  v65 = [v77 hash];
  v76 = [NSNumber numberWithInteger:self->_relationship];
  v64 = [v76 hash];
  v62 = [(NSString *)self->_deviceIdentifier hash];
  v61 = [(NSString *)self->_name hash];
  v75 = [NSNumber numberWithInteger:self->_verticalDirectionEstimate];
  v60 = [v75 hash];
  horizontalAngle = self->_horizontalAngle;
  v13 = NINearbyObjectAngleNotAvailable;
  if (horizontalAngle == NINearbyObjectAngleNotAvailable)
  {
    v58 = 0;
  }

  else
  {
    *&v11 = self->_horizontalAngle;
    v34 = [NSNumber numberWithFloat:v11];
    v58 = [v34 hash];
  }

  v14 = NINearbyObjectAngleNotAvailable;
  horizontalAngleAccuracy = self->_horizontalAngleAccuracy;
  if (horizontalAngleAccuracy == NINearbyObjectAngleNotAvailable)
  {
    v57 = 0;
  }

  else
  {
    *&v11 = self->_horizontalAngleAccuracy;
    v33 = [NSNumber numberWithFloat:v11];
    v57 = [v33 hash];
  }

  horizontalDistance = self->_horizontalDistance;
  v17 = NINearbyObjectDistanceNotAvailable;
  if (horizontalDistance == NINearbyObjectDistanceNotAvailable)
  {
    v56 = 0;
  }

  else
  {
    *&v11 = self->_horizontalDistance;
    v32 = [NSNumber numberWithFloat:v11];
    v56 = [v32 hash];
  }

  v74 = [NSNumber numberWithInteger:self->_itemState];
  v55 = [v74 hash];
  v54 = [(NSNumber *)self->_spatialScore hash];
  v52 = [(NSData *)self->_bluetoothAdvertisingAddress hash];
  v51 = [(NSUUID *)self->_bluetoothPeerIdentifier hash];
  v50 = [(NILocation *)self->_location hash];
  v73 = [NSNumber numberWithDouble:self->_signalStrength];
  v49 = [v73 hash];
  v72 = [NSNumber numberWithInt:self->_remoteTxAntennaMask];
  v48 = [v72 hash];
  v66 = [NSNumber numberWithDouble:self->_rangeBiasEstimate];
  v47 = [v66 hash];
  v63 = [NSNumber numberWithDouble:self->_rangeUncertainty];
  v46 = [v63 hash];
  v18 = *self->_worldPosition;
  v19 = vceqq_f32(NINearbyObjectWorldPositionNotAvailable, v18);
  v19.i32[3] = v19.i32[2];
  if ((vminvq_u32(v19) & 0x80000000) != 0)
  {
    v45 = 0;
  }

  else
  {
    v45 = sub_1002270E8(v18);
  }

  v59 = [NSNumber numberWithBool:self->_requiresBiasCorrection];
  v44 = [v59 hash];
  v43 = [(UWBSignalFeatures *)self->_uwbSignalFeatures hash];
  v53 = [NSNumber numberWithInt:self->_nbRxStatus];
  v42 = [v53 hash];
  v20 = [NSNumber numberWithInt:self->_mmsRxStatus];
  v41 = [v20 hash];
  v21 = [NSNumber numberWithDouble:self->_nbRssi];
  v40 = [v21 hash];
  v22 = [NSNumber numberWithBool:self->_canInteract];
  v39 = [v22 hash];
  v23 = [NSNumber numberWithBool:self->_resetARSession];
  v38 = [v23 hash];
  v24 = [NSNumber numberWithBool:self->_revokeFindingExperience];
  v37 = [v24 hash];
  *&v25 = self->_boundedRegionRange;
  v26 = [NSNumber numberWithFloat:v25];
  v27 = [v26 hash];
  v28 = [NSNumber numberWithInteger:self->_algorithmSource];
  v29 = [v28 hash];
  v30 = [(NSString *)self->_debugDisplayInfo hash];

  if (horizontalDistance != v17)
  {
  }

  if (horizontalAngleAccuracy != v14)
  {
  }

  if (horizontalAngle != v13)
  {
  }

  if (timestamp != v79)
  {
  }

  if (distance != v80)
  {
  }

  return v70 ^ v71 ^ v69 ^ v68 ^ v67 ^ v65 ^ v64 ^ v62 ^ v61 ^ v60 ^ v58 ^ v57 ^ v56 ^ v55 ^ v54 ^ v52 ^ v51 ^ v50 ^ v49 ^ v48 ^ v47 ^ v46 ^ v45 ^ v44 ^ v43 ^ v42 ^ v41 ^ v40 ^ v39 ^ v38 ^ v37 ^ v27 ^ v29 ^ v30;
}

- (id)description
{
  v3 = [NSMutableString alloc];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 initWithFormat:@"<%@: ", v5];

  discoveryToken = self->_discoveryToken;
  if (discoveryToken)
  {
    descriptionInternal = [(NIDiscoveryToken *)discoveryToken descriptionInternal];
    [v6 appendFormat:@"Token: %@", descriptionInternal];
  }

  else
  {
    [v6 appendString:@"Token: null"];
  }

  distance = self->_distance;
  if (distance == NINearbyObjectDistanceNotAvailable)
  {
    [v6 appendString:{@", Distance not available"}];
  }

  else
  {
    [v6 appendFormat:@", Distance: %.2fm", distance];
  }

  v10 = *self->_direction;
  v11 = vceqq_f32(v10, NINearbyObjectDirectionNotAvailable);
  v11.i32[3] = v11.i32[2];
  if ((vminvq_u32(v11) & 0x80000000) != 0)
  {
    [v6 appendString:{@", Direction not available"}];
  }

  else
  {
    [v6 appendFormat:@", Direction: (%.3f, %.3f, %.3f)", v10.f32[0], v10.f32[1], v10.f32[2]];
  }

  horizontalAngle = self->_horizontalAngle;
  if (horizontalAngle == NINearbyObjectAngleNotAvailable)
  {
    [v6 appendFormat:@", Horizontal Angle: %.2frad", horizontalAngle];
  }

  else
  {
    [v6 appendString:{@", Horizontal Angle not available"}];
  }

  verticalDirectionEstimate = self->_verticalDirectionEstimate;
  if (verticalDirectionEstimate >= 5)
  {
    __assert_rtn("NINearbyObjectVerticalDirectionEstimateToString", "NINearbyObject.mm", 79, "false");
  }

  [v6 appendFormat:@", Vertical Direction Estimate: %@ ", off_10099F388[verticalDirectionEstimate]];
  [v6 appendString:@">"];

  return v6;
}

- (id)descriptionInternal
{
  v3 = [NSMutableString alloc];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 initWithFormat:@"<%@: ", v5];

  v7 = [(NINearbyObject *)self description];
  [v6 appendString:v7];

  deviceIdentifer = [(NINearbyObject *)self deviceIdentifer];
  [v6 appendFormat:@", deviceIdentifier: %@", deviceIdentifer];

  horizontalAngleAccuracy = self->_horizontalAngleAccuracy;
  v10 = NINearbyObjectAngleNotAvailable;
  if (horizontalAngleAccuracy == NINearbyObjectAngleNotAvailable)
  {
    horizontalAngleAccuracy = @"-";
  }

  else
  {
    horizontalAngleAccuracy = [NSString stringWithFormat:@"%0.2frad", horizontalAngleAccuracy];
  }

  [v6 appendFormat:@", HorizAngleAcc: %@", horizontalAngleAccuracy];
  if (horizontalAngleAccuracy != v10)
  {
  }

  horizontalDistance = self->_horizontalDistance;
  v13 = NINearbyObjectDistanceNotAvailable;
  if (horizontalDistance == NINearbyObjectDistanceNotAvailable)
  {
    horizontalDistance = @"-";
  }

  else
  {
    horizontalDistance = [NSString stringWithFormat:@"%0.2fm", horizontalDistance];
  }

  [v6 appendFormat:@", Horiz Distance: %@", horizontalDistance];
  if (horizontalDistance != v13)
  {
  }

  itemState = self->_itemState;
  if (itemState > 5)
  {
    v45 = 99;
    v46 = "NIItemStateToString";
    goto LABEL_64;
  }

  [v6 appendFormat:@", Item State: %@", off_10099F3B0[itemState]];
  distanceMeasurementQuality = self->_distanceMeasurementQuality;
  if (distanceMeasurementQuality > 3)
  {
    v45 = 47;
    v46 = "NIDistanceMeasurementQualityToString";
    goto LABEL_64;
  }

  [v6 appendFormat:@", Ranging Quality: %@ ", off_10099F3E0[distanceMeasurementQuality]];
  motionState = self->_motionState;
  if (motionState >= 3)
  {
    v45 = 61;
    v46 = "NIMotionActivityStateToString";
LABEL_64:
    __assert_rtn(v46, "NINearbyObject.mm", v45, "false");
  }

  [v6 appendFormat:@", Motion State: %@", off_10099F400[motionState]];
  signalStrength = self->_signalStrength;
  v19 = *&NINearbyObjectSignalStrengthNotAvailable;
  if (signalStrength == *&NINearbyObjectSignalStrengthNotAvailable)
  {
    v20 = @"-";
  }

  else
  {
    v20 = [NSString stringWithFormat:@"%0.2f dBm", *&self->_signalStrength];
  }

  [v6 appendFormat:@", Signal Strength: %@", v20];
  if (signalStrength != v19)
  {
  }

  remoteTxAntennaMask = self->_remoteTxAntennaMask;
  v22 = NINearbyObjectRemoteTxAntennaMaskNotAvailable;
  if (remoteTxAntennaMask == NINearbyObjectRemoteTxAntennaMaskNotAvailable)
  {
    v23 = @"-";
  }

  else
  {
    v23 = [NSString stringWithFormat:@"0x%02x", self->_remoteTxAntennaMask];
  }

  [v6 appendFormat:@", Remote Tx Antenna Mask: %@", v23];
  if (remoteTxAntennaMask != v22)
  {
  }

  v24 = *self->_worldPosition;
  v25 = vceqq_f32(v24, NINearbyObjectWorldPositionNotAvailable);
  v25.i32[3] = v25.i32[2];
  if ((vminvq_u32(v25) & 0x80000000) != 0)
  {
    [v6 appendString:{@", World Position not available"}];
  }

  else
  {
    [v6 appendFormat:@", World Position: (%.2f, %.2f, %.2f)", v24.f32[0], v24.f32[1], v24.f32[2]];
  }

  if (self->_requiresBiasCorrection)
  {
    v26 = @"YES";
  }

  else
  {
    v26 = @"NO";
  }

  [v6 appendFormat:@", Require Bias Correction: %@", v26];
  rangeBiasEstimate = self->_rangeBiasEstimate;
  v28 = *&NINearbyObjectRangeBiasEstimateNotAvailable;
  if (rangeBiasEstimate == *&NINearbyObjectRangeBiasEstimateNotAvailable)
  {
    v29 = @"-";
  }

  else
  {
    v29 = [NSString stringWithFormat:@"%0.2f m", *&self->_rangeBiasEstimate];
  }

  [v6 appendFormat:@", Range Bias Estimate: %@", v29];
  if (rangeBiasEstimate != v28)
  {
  }

  rangeUncertainty = self->_rangeUncertainty;
  v31 = *&NINearbyObjectRangeUncertaintyNotAvailable;
  if (rangeUncertainty == *&NINearbyObjectRangeUncertaintyNotAvailable)
  {
    v32 = @"-";
  }

  else
  {
    v32 = [NSString stringWithFormat:@"%0.2f m", *&self->_rangeUncertainty];
  }

  [v6 appendFormat:@", Range Uncertainty: %@", v32];
  if (rangeUncertainty != v31)
  {
  }

  v33 = [(UWBSignalFeatures *)self->_uwbSignalFeatures description];
  [v6 appendFormat:@", Bias features: %@", v33];

  nbRxStatus = self->_nbRxStatus;
  v35 = NINearbyObjectRxStatusNotAvailable;
  if (nbRxStatus == NINearbyObjectRxStatusNotAvailable)
  {
    v36 = @"-";
  }

  else
  {
    v36 = [NSString stringWithFormat:@"%d", self->_nbRxStatus];
  }

  [v6 appendFormat:@", NB Rx status: %@", v36];
  if (nbRxStatus != v35)
  {
  }

  mmsRxStatus = self->_mmsRxStatus;
  v38 = NINearbyObjectRxStatusNotAvailable;
  if (mmsRxStatus == NINearbyObjectRxStatusNotAvailable)
  {
    v39 = @"-";
  }

  else
  {
    v39 = [NSString stringWithFormat:@"%d", self->_mmsRxStatus];
  }

  [v6 appendFormat:@", UWB Rx status: %@", v39];
  if (mmsRxStatus != v38)
  {
  }

  nbRssi = self->_nbRssi;
  v41 = *&NINearbyObjectNbRssiNotAvailable;
  if (nbRssi == *&NINearbyObjectNbRssiNotAvailable)
  {
    v42 = @"-";
  }

  else
  {
    v42 = [NSString stringWithFormat:@"%0.2f dBm", *&self->_nbRssi];
  }

  [v6 appendFormat:@", NB RSSI: %@", v42];
  if (nbRssi != v41)
  {
  }

  if (self->_canInteract)
  {
    v43 = @"YES";
  }

  else
  {
    v43 = @"NO";
  }

  [v6 appendFormat:@", Can Interact: %@", v43];
  [v6 appendString:@">"];

  return v6;
}

+ (id)fauxObjectWithDiscoveryToken:(id)token name:(id)name deviceIdentifier:(id)identifier
{
  tokenCopy = token;
  nameCopy = name;
  identifierCopy = identifier;
  v10 = [[NINearbyObject alloc] initWithToken:tokenCopy];
  [(NINearbyObject *)v10 setName:nameCopy];
  [(NINearbyObject *)v10 setDeviceIdentifier:identifierCopy];

  return v10;
}

+ (id)objectFromBluetoothDevice:(id)device
{
  deviceCopy = device;
  v4 = [NINearbyObject alloc];
  discoveryToken = [deviceCopy discoveryToken];
  v6 = [(NINearbyObject *)v4 initWithToken:discoveryToken];

  if ([deviceCopy systemKeyRelationship])
  {
    idsDeviceID = [deviceCopy idsDeviceID];
    [(NINearbyObject *)v6 setDeviceIdentifier:idsDeviceID];

    [(NINearbyObject *)v6 setRelationship:2];
    name = [deviceCopy name];
    [(NINearbyObject *)v6 setName:name];

    cbDevice = [deviceCopy cbDevice];
    btAddressData = [cbDevice btAddressData];
    [(NINearbyObject *)v6 setBluetoothAdvertisingAddress:btAddressData];
  }

  return v6;
}

@end