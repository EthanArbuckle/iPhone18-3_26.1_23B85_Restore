@interface MOTimeAtHomeParams
- (MOTimeAtHomeParams)initWithConfigurationManager:(id)manager;
@end

@implementation MOTimeAtHomeParams

- (MOTimeAtHomeParams)initWithConfigurationManager:(id)manager
{
  managerCopy = manager;
  if (managerCopy)
  {
    v22.receiver = self;
    v22.super_class = MOTimeAtHomeParams;
    v7 = [(MOTimeAtHomeParams *)&v22 init];
    v8 = v7;
    if (v7)
    {
      objc_storeStrong(&v7->_configurationManager, manager);
      [(MOConfigurationManagerBase *)v8->_configurationManager getDoubleSettingForKey:@"timeAtHomeInviteEventTimeOverlapWithVisitsThreshold" withFallback:1800.0];
      v8->_timeAtHomeInviteEventTimeOverlapWithVisitsThreshold = v9;
      LODWORD(v9) = 1128792064;
      [(MOConfigurationManagerBase *)v8->_configurationManager getFloatSettingForKey:@"timeAtHomeInviteEventDistanceFromVisitEventsThreshold" withFallback:v9];
      v8->_timeAtHomeInviteEventDistanceFromVisitEventsThreshold = v10;
      [(MOConfigurationManagerBase *)v8->_configurationManager getDoubleSettingForKey:@"timeAtHomeInviteEventPhotoTimeThreshold" withFallback:3600.0];
      v8->_timeAtHomeInviteEventPhotoTimeThreshold = v11;
      v8->_timeAtHomeInviteEventStandardTimeThresholdForPhotoCheck = [(MOConfigurationManagerBase *)v8->_configurationManager getIntegerSettingForKey:@"timeAtHomeInviteEventStandardTimeThresholdForPhotoCheck" withFallback:60];
      v8->_timeAtHomeInviteEventMissingEndDateTimeThresholdForPhotoCheck = [(MOConfigurationManagerBase *)v8->_configurationManager getIntegerSettingForKey:@"timeAtHomeInviteEventMissingEndDateTimeThresholdForPhotoCheck" withFallback:360];
      [(MOConfigurationManagerBase *)v8->_configurationManager getFloatSettingForKey:@"Photos_ThresholdForCurationScore" withFallback:0.0];
      v8->_photosCurationScoreThreshold = v12;
      v8->_photosFaceCountThreshold = [(MOConfigurationManagerBase *)v8->_configurationManager getIntegerSettingForKey:@"Photos_ThresholdForFaceCount" withFallback:1];
      v8->_photosCountThreshold = [(MOConfigurationManagerBase *)v8->_configurationManager getIntegerSettingForKey:@"Photos_ThresholdNumberOfPhotos" withFallback:1];
      LODWORD(v13) = 1202241536;
      [(MOConfigurationManagerBase *)v8->_configurationManager getFloatSettingForKey:@"EmotionAttachmentTAHBundleDurationThreshold" withFallback:v13];
      v8->_emotionAttachmentBundleDurationThreshold = v14;
      [(MOConfigurationManagerBase *)v8->_configurationManager getFloatSettingForKey:@"Media_DurationThreshold" withFallback:0.0];
      v8->_mediaDurationThreshold = v15;
      LODWORD(v16) = 1163984896;
      [(MOConfigurationManagerBase *)v8->_configurationManager getFloatSettingForKey:@"Photos_DurationAtHomeSecThreshold" withFallback:v16];
      v8->_photosDurationAtHomeSecThreshold = v17;
    }

    self = v8;
    selfCopy = self;
  }

  else
  {
    v19 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [MOTimeAtHomeParams initWithConfigurationManager:v19];
    }

    v20 = +[NSAssertionHandler currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"MOTimeAtHomeParams.m" lineNumber:49 description:@"Invalid parameter not satisfying: configurationManager"];

    selfCopy = 0;
  }

  return selfCopy;
}

@end