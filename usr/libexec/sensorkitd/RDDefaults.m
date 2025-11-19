@interface RDDefaults
+ (void)initialize;
- (RDDefaults)init;
- (void)dealloc;
- (void)setAuthorizationVersions:(id)a3 forBundleId:(id)a4;
- (void)updateAuthorizationVersions:(id)a3 forBundleId:(id)a4;
@end

@implementation RDDefaults

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    qword_100071AE0 = os_log_create("com.apple.SensorKit", "RDDefaults");
  }
}

- (RDDefaults)init
{
  v3 = +[NSUserDefaults standardUserDefaults];
  if (self)
  {
    v4 = v3;
    v66.receiver = self;
    v66.super_class = RDDefaults;
    self = [(RDDefaults *)&v66 init];
    if (self)
    {
      self->_defaults = v4;
      v71[0] = @"Enabled";
      v71[1] = @"SegmentSizeBytes";
      v72[0] = &off_1000652F8;
      v72[1] = &off_100065310;
      v72[2] = &off_100065328;
      v71[2] = @"MetadataSizeBytes";
      v71[3] = @"MaxAllowedMappedPages";
      v72[3] = [NSNumber numberWithUnsignedInteger:0x2000000 / NSPageSize()];
      v72[4] = &off_1000656C8;
      v71[4] = @"SegmentResizeFactor";
      v71[5] = @"SegmentPaddingFactor";
      v72[5] = &off_1000656D8;
      v72[6] = &off_100065340;
      v71[6] = @"ArchiverBufferSizeBytes";
      v71[7] = @"ArchiveCompressionEnabled";
      v72[7] = &__kCFBooleanFalse;
      v72[8] = &off_100065358;
      v71[8] = @"ProtectionClass";
      v71[9] = @"DataProtectionLengthSeconds";
      v72[9] = [NSNumber numberWithLongLong:XPC_ACTIVITY_INTERVAL_7_DAYS];
      v71[10] = @"TombstoneDataRetentionLengthSeconds";
      v72[10] = [NSNumber numberWithLongLong:60 * XPC_ACTIVITY_INTERVAL_1_DAY];
      v71[11] = @"KeyProtectionLengthSeconds";
      v65 = 2 * XPC_ACTIVITY_INTERVAL_7_DAYS;
      v72[11] = [NSNumber numberWithLongLong:?];
      v72[12] = &__kCFBooleanFalse;
      v71[12] = @"Curated";
      v71[13] = @"DatastoreVersion";
      v72[13] = &off_100065370;
      v71[14] = @"UpdateCompanionIntervalSeconds";
      v72[14] = [NSNumber numberWithLongLong:XPC_ACTIVITY_INTERVAL_1_HOUR];
      v71[15] = @"PrepareArchivesIntervalSeconds";
      v72[15] = [NSNumber numberWithLongLong:XPC_ACTIVITY_INTERVAL_4_HOURS];
      v72[16] = &__kCFBooleanFalse;
      v71[16] = @"PrepareArchivesCPUIntensive";
      v71[17] = @"PrepareArchivesDiskIntensive";
      v72[17] = &__kCFBooleanFalse;
      v71[18] = @"HoldingPeriod";
      v72[18] = [NSNumber numberWithLongLong:XPC_ACTIVITY_INTERVAL_1_DAY];
      v71[19] = @"SyncCompanionStateToGizmoInterval";
      v72[19] = [NSNumber numberWithLongLong:XPC_ACTIVITY_INTERVAL_30_MIN];
      v71[20] = @"ResourceSendTimeout";
      v72[20] = [NSNumber numberWithLongLong:3 * XPC_ACTIVITY_INTERVAL_1_DAY];
      v72[21] = &__kCFBooleanTrue;
      v71[21] = @"AnalyticsEnabled";
      v71[22] = @"ResendArchivesDelay";
      v72[22] = [NSNumber numberWithLongLong:XPC_ACTIVITY_INTERVAL_15_MIN];
      v71[23] = @"ReminderAlertThresholdSecs";
      v72[23] = [NSNumber numberWithLongLong:30 * XPC_ACTIVITY_INTERVAL_1_DAY];
      v72[24] = &off_100065388;
      v71[24] = @"SendResourcePriority";
      v71[25] = @"FirstReminderAlertThresholdSecs";
      v72[25] = [NSNumber numberWithLongLong:XPC_ACTIVITY_INTERVAL_1_DAY];
      v71[26] = @"ArchiveResendThresholdSecs";
      v72[26] = [NSNumber numberWithLongLong:XPC_ACTIVITY_INTERVAL_1_HOUR + 3 * XPC_ACTIVITY_INTERVAL_1_DAY];
      v72[27] = &off_1000656B0;
      v71[27] = @"LegacyResearchStudyBundleIDs";
      v71[28] = @"LegacyResearchStudyEntitlement";
      v72[28] = @"com.apple.SensorAndUsageData";
      v71[29] = @"PreferWifiAssertionDurationSecs";
      v72[29] = [NSNumber numberWithLongLong:XPC_ACTIVITY_INTERVAL_15_MIN];
      v72[30] = &off_1000656E8;
      v71[30] = @"StateCacheSendDebounceIntervalSecs";
      v71[31] = @"AdditionalDiagnosticsEnabled";
      v72[31] = &__kCFBooleanFalse;
      v71[32] = @"TimeSyncSendDebounceIntervalSecs";
      v72[32] = [NSNumber numberWithLongLong:XPC_ACTIVITY_INTERVAL_1_HOUR];
      v72[33] = &off_1000653A0;
      v71[33] = @"PendingMessageResendLimit";
      v71[34] = @"TimeSyncMessageTimeoutSecs";
      v72[34] = &off_1000656F8;
      v72[35] = &off_1000653B8;
      v71[35] = @"MaxArchiveBytes";
      v71[36] = @"CacheDeleteAgeLimit";
      v69[0] = [&off_1000653D0 stringValue];
      v70[0] = [NSNumber numberWithLongLong:XPC_ACTIVITY_INTERVAL_7_DAYS];
      v69[1] = [&off_1000653E8 stringValue];
      v70[1] = [NSNumber numberWithLongLong:?];
      v69[2] = [&off_100065400 stringValue];
      v70[2] = [NSNumber numberWithLongLong:5 * XPC_ACTIVITY_INTERVAL_1_DAY];
      v69[3] = [&off_100065418 stringValue];
      v70[3] = [NSNumber numberWithLongLong:3 * XPC_ACTIVITY_INTERVAL_1_DAY];
      v69[4] = [&off_100065430 stringValue];
      v70[4] = [NSNumber numberWithLongLong:XPC_ACTIVITY_INTERVAL_4_HOURS];
      v72[36] = [NSDictionary dictionaryWithObjects:v70 forKeys:v69 count:5];
      v71[37] = @"RTCResetTimestampThresholdSecs";
      v72[37] = [NSNumber numberWithLongLong:XPC_ACTIVITY_INTERVAL_4_HOURS];
      v72[38] = &off_100065448;
      v71[38] = @"FaceMetricsReminderWeekday";
      v71[39] = @"FaceMetricsReminderHour";
      v72[39] = &off_100065460;
      v72[40] = &off_100065478;
      v71[40] = @"FaceMetricsReminderMinute";
      v71[41] = @"SegmentFillDurationSecs";
      v71[42] = @"SegmentSizeMinimumFactor";
      v72[41] = &off_100065490;
      v72[42] = &off_100065708;
      if ([@"com.apple.SensorKit.motion.gyroscope" length])
      {
        v5 = [@"com.apple.SensorKit.motion.gyroscope" stringByAppendingFormat:@".%@", @"SegmentSizeBytes"];
      }

      else
      {
        v5 = @"SegmentSizeBytes";
      }

      v71[43] = v5;
      v72[43] = &off_1000654A8;
      v6 = [@"com.apple.SensorKit.motion.accelerometer" length];
      v7 = @"SegmentSizeBytes";
      if (v6)
      {
        v7 = [@"com.apple.SensorKit.motion.accelerometer" stringByAppendingFormat:@".%@", @"SegmentSizeBytes"];
      }

      v71[44] = v7;
      v72[44] = &off_1000654A8;
      v8 = [@"com.apple.SensorKit.pedometer.data" length];
      v9 = @"SegmentSizeBytes";
      if (v8)
      {
        v9 = [@"com.apple.SensorKit.pedometer.data" stringByAppendingFormat:@".%@", @"SegmentSizeBytes"];
      }

      v71[45] = v9;
      v72[45] = &off_1000654A8;
      v10 = [@"com.apple.SensorKit.ambientPressure" length];
      v11 = @"SegmentSizeBytes";
      if (v10)
      {
        v11 = [@"com.apple.SensorKit.ambientPressure" stringByAppendingFormat:@".%@", @"SegmentSizeBytes"];
      }

      v71[46] = v11;
      v72[46] = &off_1000654A8;
      v12 = [@"com.apple.private.SensorKit.elevation" length];
      v13 = @"SegmentSizeBytes";
      if (v12)
      {
        v13 = [@"com.apple.private.SensorKit.elevation" stringByAppendingFormat:@".%@", @"SegmentSizeBytes"];
      }

      v71[47] = v13;
      v72[47] = &off_1000654A8;
      v14 = [@"com.apple.SensorKit.odometer" length];
      v15 = @"SegmentSizeBytes";
      if (v14)
      {
        v15 = [@"com.apple.SensorKit.odometer" stringByAppendingFormat:@".%@", @"SegmentSizeBytes"];
      }

      v71[48] = v15;
      v72[48] = &off_1000654A8;
      v16 = [@"com.apple.SensorKit.pedometer.data" length];
      v17 = @"SegmentPaddingFactor";
      if (v16)
      {
        v17 = [@"com.apple.SensorKit.pedometer.data" stringByAppendingFormat:@".%@", @"SegmentPaddingFactor"];
      }

      v71[49] = v17;
      v72[49] = &off_1000656C8;
      v18 = [@"com.apple.SensorKit.heart.rate" length];
      v19 = @"SegmentPaddingFactor";
      if (v18)
      {
        v19 = [@"com.apple.SensorKit.heart.rate" stringByAppendingFormat:@".%@", @"SegmentPaddingFactor"];
      }

      v71[50] = v19;
      v72[50] = &off_1000656C8;
      v20 = [@"com.apple.SensorKit.odometer" length];
      v21 = @"SegmentPaddingFactor";
      if (v20)
      {
        v21 = [@"com.apple.SensorKit.odometer" stringByAppendingFormat:@".%@", @"SegmentPaddingFactor"];
      }

      v71[51] = v21;
      v72[51] = &off_1000656C8;
      v22 = [@"com.apple.SensorKit.als" length];
      v23 = @"SegmentSizeBytes";
      if (v22)
      {
        v23 = [@"com.apple.SensorKit.als" stringByAppendingFormat:@".%@", @"SegmentSizeBytes"];
      }

      v71[52] = v23;
      v72[52] = &off_1000654A8;
      v24 = [@"com.apple.SensorKit.onWristState" length];
      v25 = @"SegmentSizeBytes";
      if (v24)
      {
        v25 = [@"com.apple.SensorKit.onWristState" stringByAppendingFormat:@".%@", @"SegmentSizeBytes"];
      }

      v71[53] = v25;
      v72[53] = &off_100065340;
      v26 = [@"com.apple.SensorKit.PPG" length];
      v27 = @"SegmentSizeBytes";
      if (v26)
      {
        v27 = [@"com.apple.SensorKit.PPG" stringByAppendingFormat:@".%@", @"SegmentSizeBytes"];
      }

      v71[54] = v27;
      v72[54] = &off_1000654A8;
      v28 = [@"com.apple.SensorKit.PPG" length];
      v29 = @"MaxAllowedMappedPages";
      if (v28)
      {
        v29 = [@"com.apple.SensorKit.PPG" stringByAppendingFormat:@".%@", @"MaxAllowedMappedPages"];
      }

      v71[55] = v29;
      v72[55] = [NSNumber numberWithUnsignedInteger:0x3200000 / NSPageSize()];
      v30 = [@"com.apple.SensorKit.visits" length];
      v31 = @"SegmentSizeBytes";
      if (v30)
      {
        v31 = [@"com.apple.SensorKit.visits" stringByAppendingFormat:@".%@", @"SegmentSizeBytes"];
      }

      v71[56] = v31;
      v72[56] = &off_100065340;
      v32 = [@"com.apple.private.SensorKit.pedometer.stridecalibration" length];
      v33 = @"SegmentSizeBytes";
      if (v32)
      {
        v33 = [@"com.apple.private.SensorKit.pedometer.stridecalibration" stringByAppendingFormat:@".%@", @"SegmentSizeBytes"];
      }

      v71[57] = v33;
      v72[57] = &off_100065340;
      v34 = [@"com.apple.SensorKit.faceMetrics" length];
      v35 = @"SegmentSizeBytes";
      if (v34)
      {
        v35 = [@"com.apple.SensorKit.faceMetrics" stringByAppendingFormat:@".%@", @"SegmentSizeBytes"];
      }

      v71[58] = v35;
      v72[58] = &off_1000654A8;
      v36 = [@"com.apple.SensorKit.faceMetrics" length];
      v37 = @"HoldingPeriod";
      if (v36)
      {
        v37 = [@"com.apple.SensorKit.faceMetrics" stringByAppendingFormat:@".%@", @"HoldingPeriod"];
      }

      v71[59] = v37;
      v72[59] = [NSNumber numberWithLongLong:XPC_ACTIVITY_INTERVAL_7_DAYS + XPC_ACTIVITY_INTERVAL_1_DAY / 2];
      v38 = [@"com.apple.SensorKit.faceMetrics" length];
      v39 = @"DataProtectionLengthSeconds";
      if (v38)
      {
        v39 = [@"com.apple.SensorKit.faceMetrics" stringByAppendingFormat:@".%@", @"DataProtectionLengthSeconds"];
      }

      v71[60] = v39;
      v72[60] = [NSNumber numberWithLongLong:v65];
      v40 = [@"com.apple.SensorKit.faceMetrics" length];
      v41 = @"CacheDeleteAgeLimit";
      if (v40)
      {
        v41 = [@"com.apple.SensorKit.faceMetrics" stringByAppendingFormat:@".%@", @"CacheDeleteAgeLimit"];
      }

      v71[61] = v41;
      v67[0] = [&off_1000653D0 stringValue];
      v68[0] = [NSNumber numberWithLongLong:v65];
      v67[1] = [&off_1000653E8 stringValue];
      v68[1] = [NSNumber numberWithLongLong:6 * XPC_ACTIVITY_INTERVAL_1_DAY + XPC_ACTIVITY_INTERVAL_7_DAYS];
      v67[2] = [&off_100065400 stringValue];
      v68[2] = [NSNumber numberWithLongLong:5 * XPC_ACTIVITY_INTERVAL_1_DAY + XPC_ACTIVITY_INTERVAL_7_DAYS];
      v67[3] = [&off_100065418 stringValue];
      v68[3] = [NSNumber numberWithLongLong:3 * XPC_ACTIVITY_INTERVAL_1_DAY + XPC_ACTIVITY_INTERVAL_7_DAYS];
      v67[4] = [&off_100065430 stringValue];
      v68[4] = [NSNumber numberWithLongLong:XPC_ACTIVITY_INTERVAL_4_HOURS];
      v72[61] = [NSDictionary dictionaryWithObjects:v68 forKeys:v67 count:5];
      v42 = [@"com.apple.SensorKit.ECG" length];
      v43 = @"MetadataSizeBytes";
      if (v42)
      {
        v43 = [@"com.apple.SensorKit.ECG" stringByAppendingFormat:@".%@", @"MetadataSizeBytes"];
      }

      v71[62] = v43;
      v72[62] = &off_1000654C0;
      v44 = [@"com.apple.SensorKit.speechMetrics.telephony" length];
      v45 = @"SegmentSizeBytes";
      if (v44)
      {
        v45 = [@"com.apple.SensorKit.speechMetrics.telephony" stringByAppendingFormat:@".%@", @"SegmentSizeBytes"];
      }

      v71[63] = v45;
      v72[63] = &off_1000654D8;
      v46 = [@"com.apple.SensorKit.soundDetection.telephony" length];
      v47 = @"SegmentSizeBytes";
      if (v46)
      {
        v47 = [@"com.apple.SensorKit.soundDetection.telephony" stringByAppendingFormat:@".%@", @"SegmentSizeBytes"];
      }

      v71[64] = v47;
      v72[64] = &off_1000654D8;
      v48 = [@"com.apple.SensorKit.speechEmotion.telephony" length];
      v49 = @"SegmentSizeBytes";
      if (v48)
      {
        v49 = [@"com.apple.SensorKit.speechEmotion.telephony" stringByAppendingFormat:@".%@", @"SegmentSizeBytes"];
      }

      v71[65] = v49;
      v72[65] = &off_1000654D8;
      v50 = [@"com.apple.SensorKit.speechMetrics.telephony" length];
      v51 = @"SegmentPaddingFactor";
      if (v50)
      {
        v51 = [@"com.apple.SensorKit.speechMetrics.telephony" stringByAppendingFormat:@".%@", @"SegmentPaddingFactor"];
      }

      v71[66] = v51;
      v72[66] = &off_100065718;
      v52 = [@"com.apple.SensorKit.soundDetection.telephony" length];
      v53 = @"SegmentPaddingFactor";
      if (v52)
      {
        v53 = [@"com.apple.SensorKit.soundDetection.telephony" stringByAppendingFormat:@".%@", @"SegmentPaddingFactor"];
      }

      v71[67] = v53;
      v72[67] = &off_100065718;
      v54 = [@"com.apple.SensorKit.speechEmotion.telephony" length];
      v55 = @"SegmentPaddingFactor";
      if (v54)
      {
        v55 = [@"com.apple.SensorKit.speechEmotion.telephony" stringByAppendingFormat:@".%@", @"SegmentPaddingFactor"];
      }

      v71[68] = v55;
      v72[68] = &off_100065718;
      v56 = [@"com.apple.SensorKit.mediaEvents" length];
      v57 = @"SegmentSizeBytes";
      if (v56)
      {
        v57 = [@"com.apple.SensorKit.mediaEvents" stringByAppendingFormat:@".%@", @"SegmentSizeBytes"];
      }

      v71[69] = v57;
      v72[69] = &off_1000654A8;
      v58 = [@"com.apple.SensorKit.mediaEvents" length];
      v59 = @"SegmentPaddingFactor";
      if (v58)
      {
        v59 = [@"com.apple.SensorKit.mediaEvents" stringByAppendingFormat:@".%@", @"SegmentPaddingFactor"];
      }

      v71[70] = v59;
      v72[70] = &off_100065718;
      v60 = [@"com.apple.SensorKit.deviceUsageReport" length];
      v61 = @"SegmentSizeBytes";
      if (v60)
      {
        v61 = [@"com.apple.SensorKit.deviceUsageReport" stringByAppendingFormat:@".%@", @"SegmentSizeBytes"];
      }

      v71[71] = v61;
      v72[71] = &off_1000654A8;
      v62 = [@"com.apple.SensorKit.deviceUsageReport" length];
      v63 = @"SegmentSizeMinimumFactor";
      if (v62)
      {
        v63 = [@"com.apple.SensorKit.deviceUsageReport" stringByAppendingFormat:@".%@", @"SegmentSizeMinimumFactor"];
      }

      v71[72] = v63;
      v72[72] = &off_100065728;
      [(NSUserDefaults *)self->_defaults registerDefaults:[NSDictionary dictionaryWithObjects:v72 forKeys:v71 count:73]];
    }
  }

  return self;
}

- (void)dealloc
{
  if (self)
  {
    objc_setProperty_nonatomic(self, a2, 0, 24);
  }

  v3.receiver = self;
  v3.super_class = RDDefaults;
  [(RDDefaults *)&v3 dealloc];
}

- (void)setAuthorizationVersions:(id)a3 forBundleId:(id)a4
{
  v7 = [NSMutableDictionary alloc];
  if (self)
  {
    v8 = [(NSUserDefaults *)self->_defaults dictionaryForKey:@"AuthorizationVersions"];
  }

  else
  {
    v8 = 0;
  }

  v9 = [v7 initWithDictionary:v8];
  [v9 setObject:a3 forKeyedSubscript:a4];
  [(NSUserDefaults *)self->_defaults setObject:v9 forKey:@"AuthorizationVersions"];
}

- (void)updateAuthorizationVersions:(id)a3 forBundleId:(id)a4
{
  v7 = [NSMutableDictionary alloc];
  if (self)
  {
    v8 = [(NSUserDefaults *)self->_defaults dictionaryForKey:@"AuthorizationVersions"];
  }

  else
  {
    v8 = 0;
  }

  v9 = [v7 initWithDictionary:v8];
  v10 = [[NSMutableDictionary alloc] initWithDictionary:{objc_msgSend(v9, "objectForKeyedSubscript:", a4)}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v11 = [a3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(a3);
        }

        [v10 setObject:objc_msgSend(a3 forKeyedSubscript:{"objectForKeyedSubscript:", *(*(&v15 + 1) + 8 * v14)), *(*(&v15 + 1) + 8 * v14)}];
        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [a3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v12);
  }

  [v9 setObject:v10 forKeyedSubscript:a4];
  [(NSUserDefaults *)self->_defaults setObject:v9 forKey:@"AuthorizationVersions"];
}

@end