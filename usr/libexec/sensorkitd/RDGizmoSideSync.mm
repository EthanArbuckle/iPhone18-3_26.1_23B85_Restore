@interface RDGizmoSideSync
+ (void)initialize;
- (BOOL)prepareArchivesForSensor:(id)sensor deviceId:(id)id;
- (void)centralManager:(id)manager didUpdatePeripheralConnectionState:(id)state;
- (void)dealloc;
- (void)peripheral:(id)peripheral didReceiveTimeSyncWithReferenceTime:(id)time localAbsolute:(id)absolute remoteAbsolute:(id)remoteAbsolute receiveTime:(id)receiveTime GMTDelta:(id)delta error:(id)error;
- (void)sendSnapshotForSensor:(id)sensor deviceId:(id)id;
- (void)sendStateToPeer:(id)peer;
- (void)service:(id)service didFailMessageWithIDSIdentifier:(id)identifier error:(id)error;
- (void)service:(id)service didReceiveResourceServiceMessage:(id)message fromID:(id)d incomingResponseIdentifier:(id)identifier outgoingResponseIdentifier:(id)responseIdentifier;
- (void)service:(id)service didRequestToSendIDSMessage:(id)message withIDSIdentifier:(id)identifier;
- (void)service:(uint64_t)service connectedDevicesChanged:;
@end

@implementation RDGizmoSideSync

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    qword_100071AA0 = os_log_create("com.apple.SensorKit", "RDGizmoSideSync");
  }
}

- (void)dealloc
{
  if (self)
  {
    objc_setProperty_nonatomic(self, a2, 0, 72);
    objc_setProperty_nonatomic(self, v3, 0, 48);
    objc_setProperty_nonatomic(self, v4, 0, 56);
    objc_setProperty_nonatomic(self, v5, 0, 64);
    objc_setProperty_nonatomic(self, v6, 0, 80);
    objc_setProperty_nonatomic(self, v7, 0, 88);
    objc_setProperty_nonatomic(self, v8, 0, 96);
    objc_setProperty_nonatomic(self, v9, 0, 104);
  }

  dispatch_release(self->_q);
  v10.receiver = self;
  v10.super_class = RDGizmoSideSync;
  [(RDGizmoSideSync *)&v10 dealloc];
}

- (void)service:(id)service didReceiveResourceServiceMessage:(id)message fromID:(id)d incomingResponseIdentifier:(id)identifier outgoingResponseIdentifier:(id)responseIdentifier
{
  v11 = [message objectForKeyedSubscript:?];
  if (!v11)
  {
    v20 = qword_100071AA0;
    if (os_log_type_enabled(qword_100071AA0, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "No message id key found. Ignoring message", buf, 2u);
    }

    return;
  }

  v12 = v11;
  delegate = [(RDGizmoSideSync *)self delegate];
  integerValue = [v12 integerValue];
  if (integerValue > 4)
  {
    if ((integerValue - 6) < 5)
    {
      v15 = integerValue;
      v16 = qword_100071AA0;
      if (os_log_type_enabled(qword_100071AA0, OS_LOG_TYPE_FAULT))
      {
        *buf = 134217984;
        *&buf[4] = v15;
        v17 = "Shouldn't receive message type %ld on gizmo side";
LABEL_6:
        v18 = v16;
        v19 = 12;
LABEL_7:
        _os_log_fault_impl(&_mh_execute_header, v18, OS_LOG_TYPE_FAULT, v17, buf, v19);
        return;
      }

      return;
    }

    if (integerValue != 5)
    {
      return;
    }

LABEL_69:
    obja = [message objectForKeyedSubscript:@"RDGizmoSyncCompanionRequiredKeysKey"];
    v86 = qword_100071AA0;
    if (os_log_type_enabled(qword_100071AA0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      *&buf[4] = obja;
      _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_DEFAULT, "Received request for keys %{public}@", buf, 0xCu);
    }

    objc_opt_self();
    v87 = qword_100071B88;
    if (qword_100071B88)
    {
      v142 = sub_10001EA7C(&self->super.isa);
      v147 = 0u;
      v148 = 0u;
      v149 = 0u;
      v150 = 0u;
      v139 = [obja countByEnumeratingWithState:&v147 objects:v153 count:16];
      if (v139)
      {
        v138 = *v148;
        do
        {
          for (i = 0; i != v139; i = i + 1)
          {
            if (*v148 != v138)
            {
              objc_enumerationMutation(obja);
            }

            v89 = *(*(&v147 + 1) + 8 * i);
            if ((v142 & 2) != 0)
            {
              v90 = objc_alloc_init(NSMutableArray);
            }

            else
            {
              v90 = 0;
            }

            v145 = 0u;
            v146 = 0u;
            v143 = 0u;
            v144 = 0u;
            v91 = [obja objectForKeyedSubscript:v89];
            v92 = [v91 countByEnumeratingWithState:&v143 objects:v152 count:16];
            if (v92)
            {
              v93 = v92;
              v94 = *v144;
              if ((v142 & 2) != 0)
              {
                do
                {
                  for (j = 0; j != v93; ++j)
                  {
                    if (*v144 != v94)
                    {
                      objc_enumerationMutation(v91);
                    }

                    v96 = sub_100020564(self, *(*(&v143 + 1) + 8 * j), v89, v87);
                    if ([(NSDictionary *)v96 count])
                    {
                      [v90 addObject:v96];
                    }
                  }

                  v93 = [v91 countByEnumeratingWithState:&v143 objects:v152 count:16];
                }

                while (v93);
              }

              else if (self)
              {
                do
                {
                  for (k = 0; k != v93; ++k)
                  {
                    if (*v144 != v94)
                    {
                      objc_enumerationMutation(v91);
                    }

                    v98 = sub_100020564(self, *(*(&v143 + 1) + 8 * k), v89, v87);
                    if ([(NSDictionary *)v98 count])
                    {
                      gizmoSyncService = self->_gizmoSyncService;
                      if (gizmoSyncService)
                      {
                        sub_100023F18(gizmoSyncService, v98, gizmoSyncService->_keyService, 0);
                      }
                    }
                  }

                  v93 = [v91 countByEnumeratingWithState:&v143 objects:v152 count:16];
                }

                while (v93);
              }

              else
              {
                while (1)
                {
                  if (*v144 != v94)
                  {
                    objc_enumerationMutation(v91);
                  }

                  [0 count];
                  if (!--v93)
                  {
                    v93 = [v91 countByEnumeratingWithState:&v143 objects:v152 count:16];
                    if (!v93)
                    {
                      break;
                    }
                  }
                }
              }
            }

            if ([v90 count] && self)
            {
              v167 = @"RDGizmoSyncMessageTypeKey";
              v168 = @"RDGizmoSyncKeysKey";
              *buf = &off_100065280;
              *&buf[8] = v90;
              v169 = @"RDGizmoSyncSensorIdentifierKey";
              *&buf[16] = v89;
              v100 = [NSDictionary dictionaryWithObjects:buf forKeys:&v167 count:3];
              v101 = self->_gizmoSyncService;
              if (v101)
              {
                sub_100023F18(v101, v100, v101->_keyService, 0);
              }
            }
          }

          v139 = [obja countByEnumeratingWithState:&v147 objects:v153 count:16];
        }

        while (v139);
      }

      return;
    }

    v102 = qword_100071AA0;
    if (!os_log_type_enabled(qword_100071AA0, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 0;
    v103 = "Failed to find current device id";
LABEL_115:
    _os_log_error_impl(&_mh_execute_header, v102, OS_LOG_TYPE_ERROR, v103, buf, 2u);
    return;
  }

  if (integerValue == 2)
  {
    if (self)
    {
      v35 = [message objectForKeyedSubscript:@"RDGizmoSyncCompanionAbsoluteTimeKey"];
      if (v35)
      {
        v36 = v35;
        v37 = [message objectForKeyedSubscript:@"RDGizmoSyncGizmoAbsoluteTimeKey"];
        if (v37)
        {
          v38 = v37;
          v39 = [message objectForKeyedSubscript:@"RDGizmoSyncCompanionContinuousAbsoluteOffsetKey"];
          if (v39)
          {
            v40 = v39;
            v41 = [message objectForKeyedSubscript:@"RDGizmoSyncCompanionRTCContinuousOffsetKey"];
            if (v41)
            {
              v42 = v41;
              v43 = mach_continuous_time();
              if (qword_100071B60 != -1)
              {
                dispatch_once(&qword_100071B60, &stru_100060D90);
              }

              v44 = qword_100071B68;
              v45 = *&qword_100071B70;
              v46 = *&qword_100071B78;
              TMConvertTicksToSeconds();
              if (v44 >= v43)
              {
                v48 = -v47;
              }

              else
              {
                v48 = v47;
              }

              v167 = 0;
              unsignedLongLongValue = [v38 unsignedLongLongValue];
              unsignedLongLongValue2 = [v36 unsignedLongLongValue];
              unsignedLongLongValue3 = [v40 unsignedLongLongValue];
              [v42 doubleValue];
              v53 = SRAbsoluteTimeSetSyntheticStartFromRemoteTime(unsignedLongLongValue, unsignedLongLongValue2, v52, unsignedLongLongValue3, &v167);
              powerAssertion = self->_powerAssertion;
              if (powerAssertion)
              {
                CFRelease(powerAssertion);
                self->_powerAssertion = 0;
              }

              v55 = qword_100071AA0;
              if (v53)
              {
                v56 = v46 + v45 + v48;
                if (os_log_type_enabled(qword_100071AA0, OS_LOG_TYPE_INFO))
                {
                  v57 = mach_continuous_time();
                  if (qword_100071B60 != -1)
                  {
                    dispatch_once(&qword_100071B60, &stru_100060D90);
                  }

                  v58 = qword_100071B68;
                  v59 = *&qword_100071B70;
                  v60 = *&qword_100071B78;
                  TMConvertTicksToSeconds();
                  if (v58 >= v57)
                  {
                    v61 = -v61;
                  }

                  *buf = 134349056;
                  *&buf[4] = v60 + v59 + v61;
                  _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_INFO, "Time synced with remote. New current time is: %{public}f", buf, 0xCu);
                }

                delegate2 = [(RDGizmoSideSync *)self delegate];
                [(RDGizmoSyncDelegate *)delegate2 gizmoSync:self didSyncRTCOffset:*&v167 timeBeforeUpdate:v56];
                v63 = self->_gizmoSyncService;
                if (!v63)
                {
                  goto LABEL_162;
                }

LABEL_147:
                v121 = sub_100023DB4(v63);
                v122 = sub_100023C20(v63, v121, [(IDSService *)v63->_resourceService devices]);
LABEL_148:
                v123 = sub_10003A334(0, v122, self->_fileURLs, self->_defaults);
                v124 = sub_100012B50([RDIDSMessageStore alloc], v123);
                v151[0] = _NSConcreteStackBlock;
                v151[1] = 3221225472;
                v151[2] = sub_10001FF30;
                v151[3] = &unk_1000611F8;
                v151[4] = v124;
                sub_100012C04(v124, v151);

                return;
              }

              if (os_log_type_enabled(qword_100071AA0, OS_LOG_TYPE_FAULT))
              {
                Current = SRAbsoluteTimeGetCurrent();
                TMGetKernelMonotonicClock();
                v132 = v131;
                v133 = mach_continuous_time();
                unsignedLongLongValue4 = [v38 unsignedLongLongValue];
                unsignedLongLongValue5 = [v36 unsignedLongLongValue];
                unsignedLongLongValue6 = [v40 unsignedLongLongValue];
                [v42 doubleValue];
                *buf = 134219520;
                *&buf[4] = Current;
                *&buf[12] = 2048;
                *&buf[14] = v132;
                *&buf[22] = 2048;
                v156 = v133;
                v157 = 2048;
                v158 = unsignedLongLongValue4;
                v159 = 2048;
                v160 = unsignedLongLongValue5;
                v161 = 2048;
                v162 = unsignedLongLongValue6;
                v163 = 2048;
                v164 = v137;
                _os_log_fault_impl(&_mh_execute_header, v55, OS_LOG_TYPE_FAULT, "Invalid time synced with remote. currentTime: %f, currentRTC: %f, currentContinuous: %llu, localAbsolute: %llu, remoteAbsolute: %llu, remoteContinuousAbsoluteOffset: %llu, remoteRTCContinuousOffset: %f", buf, 0x48u);
                v63 = self->_gizmoSyncService;
                if (v63)
                {
                  goto LABEL_147;
                }

                goto LABEL_162;
              }

              goto LABEL_146;
            }

            v104 = qword_100071AA0;
            if (os_log_type_enabled(qword_100071AA0, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              v105 = "Time sync requested but no companion RTC/continuous offset provided";
LABEL_134:
              _os_log_error_impl(&_mh_execute_header, v104, OS_LOG_TYPE_ERROR, v105, buf, 2u);
              v63 = self->_gizmoSyncService;
              if (v63)
              {
                goto LABEL_147;
              }

LABEL_162:
              v122 = 0;
              goto LABEL_148;
            }
          }

          else
          {
            v104 = qword_100071AA0;
            if (os_log_type_enabled(qword_100071AA0, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              v105 = "Time sync requested but no companion continuous/absolute offset provided";
              goto LABEL_134;
            }
          }
        }

        else
        {
          v104 = qword_100071AA0;
          if (os_log_type_enabled(qword_100071AA0, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            v105 = "Time sync requested but no gizmo absolute time provided";
            goto LABEL_134;
          }
        }
      }

      else
      {
        v104 = qword_100071AA0;
        if (os_log_type_enabled(qword_100071AA0, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          v105 = "Time sync requested but no companion absolute time provided";
          goto LABEL_134;
        }
      }
    }

LABEL_146:
    v63 = self->_gizmoSyncService;
    if (v63)
    {
      goto LABEL_147;
    }

    goto LABEL_162;
  }

  if (integerValue != 3)
  {
    if (integerValue != 4)
    {
      return;
    }

    v21 = qword_100071AA0;
    if (os_log_type_enabled(qword_100071AA0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      *&buf[4] = message;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Received companion state: %{public}@", buf, 0xCu);
    }

    if (!self || (v22 = self->_gizmoSyncService) == 0 || (v23 = sub_100023C20(v22, d, [(IDSService *)v22->_resourceService devices])) == 0)
    {
      v102 = qword_100071AA0;
      if (!os_log_type_enabled(qword_100071AA0, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      *buf = 0;
      v103 = "Failed to find remote device id";
      goto LABEL_115;
    }

    v24 = v23;
    v25 = objc_alloc_init(RDGizmoSyncState);
    v26 = [objc_msgSend(message objectForKeyedSubscript:{@"RDGizmoSyncCompanionPrerequisitesKey", "integerValue"}];
    if (v25)
    {
      v25->_prerequisites = v26;
    }

    v27 = [objc_msgSend(message objectForKeyedSubscript:{@"RDGizmoSyncCompanionRequiredAppInstalledKey", "BOOLValue"}];
    if (v25)
    {
      v25->_requiredAppInstalled_deprecated = v27;
      v28 = [message objectForKeyedSubscript:@"RDGizmoSyncCompanionRecordingStatesKey"];
      objc_setProperty_nonatomic(v25, v29, v28, 16);
      v30 = [message objectForKeyedSubscript:@"RDGizmoSyncCompanionServiceStartTimesKey"];
      objc_setProperty_nonatomic(v25, v31, v30, 24);
    }

    else
    {
      [message objectForKeyedSubscript:@"RDGizmoSyncCompanionRecordingStatesKey"];
      [message objectForKeyedSubscript:@"RDGizmoSyncCompanionServiceStartTimesKey"];
    }

    v32 = [objc_msgSend(message objectForKeyedSubscript:{@"RDGizmoSyncCapabilitiesKey", "unsignedIntegerValue"}];
    if (v25)
    {
      v25->_capabilities = v32;
      v33 = [message objectForKeyedSubscript:@"RDGizmoSyncSensorConfigurations"];
      objc_setProperty_nonatomic(v25, v34, v33, 40);
    }

    else
    {
      [message objectForKeyedSubscript:@"RDGizmoSyncSensorConfigurations"];
    }

    [(RDGizmoSyncDelegate *)delegate gizmoSync:self didSyncState:v25 deviceID:v24];

    self->_marshalledCapabilities = 0;
    [RDGizmoSideSync service:connectedDevicesChanged:]_0(self);
    goto LABEL_69;
  }

  v64 = [message objectForKeyedSubscript:@"RDGizmoSyncSensorIdentifierKey"];
  v65 = [message objectForKeyedSubscript:@"RDGizmoSyncSamplesURLKey"];
  sub_10001FF84(self, [v65 lastPathComponent]);
  if (self)
  {
    fileURLs = self->_fileURLs;
    defaults = self->_defaults;
  }

  else
  {
    fileURLs = 0;
    defaults = 0;
  }

  v68 = sub_10003A334(v64, 0, fileURLs, defaults);
  v69 = sub_100011CFC([RDEncryptingDatastore alloc], v68);
  v70 = sub_10001206C(v69, [v65 lastPathComponent]);

  v71 = [objc_msgSend(message objectForKeyedSubscript:{@"RDGizmoSyncArchiveTransferStatusKey", "integerValue"}];
  v72 = qword_100071AA0;
  if (os_log_type_enabled(qword_100071AA0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    *&buf[4] = v64;
    *&buf[12] = 2114;
    *&buf[14] = v70;
    *&buf[22] = 2050;
    v156 = v71;
    _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_DEFAULT, "Archive Transfer Status for %{public}@ with key %{public}@ unarchived on companion: %{public}ld", buf, 0x20u);
  }

  objc_opt_self();
  if (!qword_100071B88)
  {
    v102 = qword_100071AA0;
    if (!os_log_type_enabled(qword_100071AA0, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 0;
    v103 = "Failed to find current device id";
    goto LABEL_115;
  }

  v73 = self->_fileURLs;
  obj = qword_100071B88;
  v154 = qword_100071B88;
  v74 = +[NSURL fileURLWithPath:isDirectory:relativeToURL:](NSURL, "fileURLWithPath:isDirectory:relativeToURL:", [v65 lastPathComponent], 0, sub_10001A924(v73, +[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", &v154, 1), v64));
  analyticsDelegate = [(RDGizmoSideSync *)self analyticsDelegate];
  if (v71 <= 2)
  {
    if (v71)
    {
      if (v71 == 1)
      {
        v106 = analyticsDelegate;
        if (![+[NSFileManager fileExistsAtPath:"fileExistsAtPath:"]
        {
          v125 = qword_100071AA0;
          if (os_log_type_enabled(qword_100071AA0, OS_LOG_TYPE_INFO))
          {
            *buf = 138543362;
            *&buf[4] = v74;
            _os_log_impl(&_mh_execute_header, v125, OS_LOG_TYPE_INFO, "Already received no key status for %{public}@", buf, 0xCu);
          }

          return;
        }

        [(RDAnalyticsEventDelegate *)v106 gizmoSync:self didDeliverAndUnarchive:v74 sensor:v64 keyName:v70 archiveStatus:9];
        v167 = 0;
        v107 = qword_100071AA0;
        if (os_log_type_enabled(qword_100071AA0, OS_LOG_TYPE_INFO))
        {
          *buf = 138543618;
          *&buf[4] = v64;
          *&buf[12] = 2114;
          *&buf[14] = v74;
          _os_log_impl(&_mh_execute_header, v107, OS_LOG_TYPE_INFO, "Attempting to mark %{public}@/%{public}@ as delivered", buf, 0x16u);
        }

        v108 = sub_10003A334(v64, obj, self->_fileURLs, self->_defaults);
        v109 = sub_10000E610([RDArchiveableDatastore alloc], &v108->super.isa);
        v110 = sub_100010FB8(v109, v74, &v167);

        if ((v110 & 1) == 0)
        {
          v129 = qword_100071AA0;
          if (os_log_type_enabled(qword_100071AA0, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543874;
            *&buf[4] = v74;
            *&buf[12] = 2114;
            *&buf[14] = v64;
            *&buf[22] = 2114;
            v156 = v167;
            _os_log_error_impl(&_mh_execute_header, v129, OS_LOG_TYPE_ERROR, "Failed to mark snapshot %{public}@ as delivered for sensor %{public}@ because %{public}@", buf, 0x20u);
          }

          return;
        }

        v111 = self->_gizmoSyncService;
        if (!v111)
        {
          v113 = 0;
          goto LABEL_131;
        }

        goto LABEL_130;
      }

      if (v71 != 2)
      {
        return;
      }

      v76 = qword_100071AA0;
      v77 = analyticsDelegate;
      v78 = os_log_type_enabled(qword_100071AA0, OS_LOG_TYPE_DEFAULT);
      analyticsDelegate = v77;
      if (v78)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_DEFAULT, "Error unarchiving on the companion. Removing our local snapshot", buf, 2u);
        analyticsDelegate = v77;
      }
    }

    if (v71)
    {
      v79 = 4;
    }

    else
    {
      v79 = 3;
    }

    [(RDAnalyticsEventDelegate *)analyticsDelegate gizmoSync:self didDeliverAndUnarchive:v74 sensor:v64 keyName:v70 archiveStatus:v79];
    v80 = qword_100071AA0;
    if (os_log_type_enabled(qword_100071AA0, OS_LOG_TYPE_DEFAULT))
    {
      lastPathComponent = [(NSURL *)v74 lastPathComponent];
      *buf = 138543362;
      *&buf[4] = lastPathComponent;
      _os_log_impl(&_mh_execute_header, v80, OS_LOG_TYPE_DEFAULT, "Snapshot has been sent, removing %{public}@", buf, 0xCu);
    }

    objc_opt_self();
    if (qword_100071B88)
    {
      v82 = sub_10003A334(v64, qword_100071B88, self->_fileURLs, self->_defaults);
      v83 = sub_10000BC68([RDPruneableDatastore alloc], &v82->super.isa);
      v167 = 0;
      v84 = sub_10000CBE0(v83, [(NSURL *)v74 lastPathComponent], &v167);

      if ([(__CFString *)v167 code]== 260 || [(__CFString *)v167 code]== 4)
      {
        v84 = 1;
      }

      else
      {
        v127 = v167;
        if (v167)
        {
          v128 = qword_100071AA0;
          if (os_log_type_enabled(qword_100071AA0, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            *&buf[4] = v74;
            *&buf[12] = 2114;
            *&buf[14] = v127;
            _os_log_error_impl(&_mh_execute_header, v128, OS_LOG_TYPE_ERROR, "Failed to remove snapshot URL %{public}@ because %{public}@", buf, 0x16u);
          }
        }
      }

      v85 = qword_100071AA0;
      if (!os_log_type_enabled(qword_100071AA0, OS_LOG_TYPE_DEFAULT))
      {
LABEL_139:
        if (!v84)
        {
          return;
        }

        if (!responseIdentifier)
        {
          v126 = qword_100071AA0;
          if (os_log_type_enabled(qword_100071AA0, OS_LOG_TYPE_FAULT))
          {
            *buf = 0;
            v17 = "Companion should have sent an archive message ID";
            v18 = v126;
            v19 = 2;
            goto LABEL_7;
          }

          return;
        }

        v117 = self->_gizmoSyncService;
        *buf = &off_1000652C8;
        v167 = @"RDGizmoSyncMessageTypeKey";
        v168 = @"RDGizmoSyncSnapshotKey";
        path = [(NSURL *)v74 path];
        v169 = @"RDGizmoSyncSensorIdentifierKey";
        *&buf[8] = path;
        *&buf[16] = v64;
        v119 = [NSDictionary dictionaryWithObjects:buf forKeys:&v167 count:3];
        v165 = IDSSendMessageOptionPeerResponseIdentifierKey;
        responseIdentifierCopy = responseIdentifier;
        v120 = [NSDictionary dictionaryWithObjects:&responseIdentifierCopy forKeys:&v165 count:1];
        if (v117)
        {
          sub_100023F18(v117, v119, v117->_resourceService, v120);
        }

        v111 = self->_gizmoSyncService;
        if (!v111)
        {
          v113 = 0;
          goto LABEL_131;
        }

LABEL_130:
        v112 = sub_100023DB4(self->_gizmoSyncService);
        v113 = sub_100023C20(v111, v112, [(IDSService *)v111->_resourceService devices]);
LABEL_131:
        v114 = sub_10003A334(v64, v113, self->_fileURLs, self->_defaults);
        v115 = sub_100012B50([RDIDSMessageStore alloc], v114);
        sub_100013800(v115, responseIdentifier);

        [(RDGizmoSideSync *)self sendSnapshotForSensor:v64 deviceId:obj];
        return;
      }
    }

    else
    {
      v116 = qword_100071AA0;
      if (os_log_type_enabled(qword_100071AA0, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v116, OS_LOG_TYPE_ERROR, "Failed to find current device id", buf, 2u);
        v84 = 0;
        v85 = qword_100071AA0;
        if (!os_log_type_enabled(qword_100071AA0, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_139;
        }
      }

      else
      {
        v84 = 0;
        v85 = qword_100071AA0;
        if (!os_log_type_enabled(qword_100071AA0, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_139;
        }
      }
    }

    *buf = 138543618;
    *&buf[4] = v74;
    *&buf[12] = 1026;
    *&buf[14] = v84;
    _os_log_impl(&_mh_execute_header, v85, OS_LOG_TYPE_DEFAULT, "Attempted to remove snapshot %{public}@ (%{public, BOOL}d)", buf, 0x12u);
    goto LABEL_139;
  }

  if ((v71 - 3) < 2)
  {
    v16 = qword_100071AA0;
    if (os_log_type_enabled(qword_100071AA0, OS_LOG_TYPE_FAULT))
    {
      *buf = 134217984;
      *&buf[4] = v71;
      v17 = "Should not be receiving archive status %ld on the watch";
      goto LABEL_6;
    }
  }
}

- (void)service:(uint64_t)service connectedDevicesChanged:
{
  if (!service)
  {
    return;
  }

  dispatch_assert_queue_V2(*(service + 8));
  if (([*(service + 104) sensorKitActive] & 1) == 0)
  {
    v12 = qword_100071AA0;
    if (!os_log_type_enabled(qword_100071AA0, OS_LOG_TYPE_INFO))
    {
      return;
    }

    *buf = 0;
    v13 = "Skipping time sync because SensorKit is not authorized";
    goto LABEL_14;
  }

  v2 = mach_continuous_time();
  if (qword_100071B60 != -1)
  {
    dispatch_once(&qword_100071B60, &stru_100060D90);
  }

  v3 = qword_100071B68;
  v4 = *&qword_100071B70;
  v5 = *&qword_100071B78;
  TMConvertTicksToSeconds();
  if (v3 >= v2)
  {
    v6 = -v6;
  }

  v7 = v5 + v4 + v6;
  v8 = *(service + 88);
  if (v8)
  {
    v9 = vabdd_f64(v7, *(v8 + 32));
    if (v9 < sub_10002B504(*(service + 80)))
    {
LABEL_9:
      v10 = qword_100071AA0;
      if (!os_log_type_enabled(qword_100071AA0, OS_LOG_TYPE_INFO))
      {
        return;
      }

      *buf = 134349056;
      v45 = v9;
      v11 = "Skipping time sync because we synced %{public}f seconds ago";
      goto LABEL_11;
    }
  }

  else
  {
    v9 = vabdd_f64(v7, 0.0);
    if (v9 < sub_10002B504(*(service + 80)))
    {
      goto LABEL_9;
    }
  }

  v14 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  v15 = *(service + 112);
  if (v14 < v15)
  {
    v16 = v14;
    v17 = qword_100071AA0;
    if (os_log_type_enabled(qword_100071AA0, OS_LOG_TYPE_FAULT))
    {
      *buf = 134349312;
      v45 = *&v16;
      v46 = 2050;
      v47 = v15;
      _os_log_fault_impl(&_mh_execute_header, v17, OS_LOG_TYPE_FAULT, "clock_gettime_nsec_np(CLOCK_MONOTONIC_RAW) is not increasing monotonically: now %{public}llu, before: %{public}llu", buf, 0x16u);
    }

    return;
  }

  v18 = ((v14 - v15) / 0x3B9ACA00);
  v19 = sub_10002B504(*(service + 80));
  v20 = *(service + 120);
  v21 = (v20 * v20 * XPC_ACTIVITY_INTERVAL_1_MIN);
  v22 = fmin(v21, v19);
  if (v19 > v21)
  {
    v23 = v20 + 1;
  }

  else
  {
    v23 = 0;
  }

  *(service + 120) = v23;
  if (v22 <= v18)
  {
    if ([*(service + 48) state] != 5)
    {
      v33 = qword_100071AA0;
      if (os_log_type_enabled(qword_100071AA0, OS_LOG_TYPE_DEBUG))
      {
        state = [*(service + 48) state];
        *buf = 134349056;
        v45 = *&state;
        _os_log_debug_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEBUG, "Ignoring CBManager state %{public}ld", buf, 0xCu);
      }

      return;
    }

    v24 = *(service + 72);
    if (v24)
    {
      nsuuid = [sub_100023AE0(v24) nsuuid];
      if (nsuuid)
      {
        v26 = nsuuid;
        v27 = [*(service + 48) retrieveConnectedPeripheralsWithServices:&__NSArray0__struct allowAll:1];
        v39 = 0u;
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        v28 = [v27 countByEnumeratingWithState:&v39 objects:v43 count:16];
        if (v28)
        {
          v29 = v28;
          v30 = *v40;
          while (2)
          {
            for (i = 0; i != v29; i = i + 1)
            {
              if (*v40 != v30)
              {
                objc_enumerationMutation(v27);
              }

              v32 = *(*(&v39 + 1) + 8 * i);
              if ([objc_msgSend(v32 "identifier")])
              {
                v35 = qword_100071AA0;
                if (os_log_type_enabled(qword_100071AA0, OS_LOG_TYPE_INFO))
                {
                  identifier = [v32 identifier];
                  *buf = 138543362;
                  v45 = *&identifier;
                  _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, "Found connected peripheral %{public}@", buf, 0xCu);
                }

                objc_setProperty_nonatomic(service, v36, v32, 56);
                [*(service + 56) setDelegate:service];
                v38 = *(service + 16);
                if (v38)
                {
                  CFRelease(v38);
                  *(service + 16) = 0;
                }

                *(service + 16) = CPPowerAssertionCreate();
                *(service + 112) = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
                [*(service + 56) getTimeSyncData];
                return;
              }
            }

            v29 = [v27 countByEnumeratingWithState:&v39 objects:v43 count:16];
            if (v29)
            {
              continue;
            }

            break;
          }
        }

        return;
      }
    }

    v12 = qword_100071AA0;
    if (!os_log_type_enabled(qword_100071AA0, OS_LOG_TYPE_INFO))
    {
      return;
    }

    *buf = 0;
    v13 = "No connected device so not updating peripherals";
LABEL_14:
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, v13, buf, 2u);
    return;
  }

  v10 = qword_100071AA0;
  if (os_log_type_enabled(qword_100071AA0, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    v45 = v18;
    v11 = "Skipping time sync because we sent a sync request %{public}f seconds ago";
LABEL_11:
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, v11, buf, 0xCu);
  }
}

- (void)service:(id)service didFailMessageWithIDSIdentifier:(id)identifier error:(id)error
{
  gizmoSyncService = self->_gizmoSyncService;
  if (gizmoSyncService)
  {
    v8 = sub_100023DB4(self->_gizmoSyncService);
    v9 = sub_100023C20(gizmoSyncService, v8, [(IDSService *)gizmoSyncService->_resourceService devices]);
  }

  else
  {
    v9 = 0;
  }

  v10 = sub_10003A334(0, v9, self->_fileURLs, self->_defaults);
  v15 = sub_100012B50([RDIDSMessageStore alloc], v10);
  v11 = sub_1000130DC(v15, identifier);
  v12 = [objc_msgSend(v11 objectForKeyedSubscript:{@"RDGizmoSyncMessageTypeKey", "integerValue"}];
  if (v12 == 2)
  {
    powerAssertion = self->_powerAssertion;
    if (powerAssertion)
    {
      CFRelease(powerAssertion);
      self->_powerAssertion = 0;
    }
  }

  else if (v12 == 9)
  {
    v13 = [objc_msgSend(v11 objectForKeyedSubscript:{@"RDGizmoSyncSamplesURLKey", "lastPathComponent"}];
    if (v13)
    {
      sub_10001FF84(self, v13);
    }
  }

  sub_100013800(v15, identifier);
}

- (void)service:(id)service didRequestToSendIDSMessage:(id)message withIDSIdentifier:(id)identifier
{
  if ([objc_msgSend(message objectForKeyedSubscript:{@"RDGizmoSyncMessageTypeKey", "integerValue"}] == 2)
  {
    if (service && (v9 = sub_100023DB4(service), sub_100023C20(service, v9, [*(service + 3) devices])))
    {
      gizmoSyncService = self->_gizmoSyncService;
      if (gizmoSyncService)
      {
        v11 = sub_100023DB4(self->_gizmoSyncService);
        v12 = sub_100023C20(gizmoSyncService, v11, [(IDSService *)gizmoSyncService->_resourceService devices]);
      }

      else
      {
        v12 = 0;
      }

      v13 = sub_10003A334(0, v12, self->_fileURLs, self->_defaults);
      v15 = sub_100012B50([RDIDSMessageStore alloc], v13);
      sub_1000132DC(v15, message, identifier);
    }

    else
    {
      v14 = qword_100071AA0;
      if (os_log_type_enabled(qword_100071AA0, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "No remote device ID found", buf, 2u);
      }
    }
  }
}

- (BOOL)prepareArchivesForSensor:(id)sensor deviceId:(id)id
{
  if (!self)
  {
    return 0;
  }

  v7 = sub_10003A334(sensor, id, self->_fileURLs, self->_defaults);
  v8 = sub_10000D068([RDInformingDatastore alloc], v7);
  v57 = 0;
  v58 = &v57;
  v59 = 0x3052000000;
  v60 = sub_10002118C;
  v61 = sub_10002119C;
  v62 = 0;
  *&v67 = _NSConcreteStackBlock;
  *(&v67 + 1) = 3221225472;
  v68 = sub_1000211A8;
  v69 = &unk_100061220;
  v74 = (sub_10001EA7C(&self->super.isa) & 2) != 0;
  v72 = &v57;
  v73 = 20;
  selfCopy = self;
  sensorCopy = sensor;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v48 = v8;
  v10 = sub_10000D860(v8, v9);
  v12 = [(NSDirectoryEnumerator *)v10 countByEnumeratingWithState:&v53 objects:v78 count:16];
  if (v12)
  {
    v13 = *v54;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v54 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v53 + 1) + 8 * i);
        v16 = qword_100071AA0;
        if (os_log_type_enabled(qword_100071AA0, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf) = 138543362;
          *(&buf + 4) = v15;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Snapshot %{public}@ found. Resending key but not regerating archive.", &buf, 0xCu);
        }

        v17 = sub_100020564(self, [v15 lastPathComponent], sensor, id);
        if ([(NSDictionary *)v17 count])
        {
          v68(&v67, v17);
        }
      }

      v12 = [(NSDirectoryEnumerator *)v10 countByEnumeratingWithState:&v53 objects:v78 count:16];
    }

    while (v12);
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v18 = sub_10000DA60(v48, v11);
  v19 = [(NSDirectoryEnumerator *)v18 countByEnumeratingWithState:&v49 objects:&v63 count:16];
  if (v19)
  {
    v20 = *v50;
    do
    {
      for (j = 0; j != v19; j = j + 1)
      {
        if (*v50 != v20)
        {
          objc_enumerationMutation(v18);
        }

        v22 = *(*(&v49 + 1) + 8 * j);
        v23 = qword_100071AA0;
        if (os_log_type_enabled(qword_100071AA0, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf) = 138543362;
          *(&buf + 4) = v22;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Snapshot %{public}@ found. Resending key for delivered snapshot but not regerating archive.", &buf, 0xCu);
        }

        v24 = sub_100020564(self, [v22 lastPathComponent], sensor, id);
        if ([(NSDictionary *)v24 count])
        {
          v68(&v67, v24);
        }
      }

      v19 = [(NSDirectoryEnumerator *)v18 countByEnumeratingWithState:&v49 objects:&v63 count:16];
    }

    while (v19);
  }

  if ([v58[5] count])
  {
    v25 = v58[5];
    v75[0] = @"RDGizmoSyncMessageTypeKey";
    v75[1] = @"RDGizmoSyncKeysKey";
    *&buf = &off_100065280;
    *(&buf + 1) = v25;
    v75[2] = @"RDGizmoSyncSensorIdentifierKey";
    sensorCopy2 = sensor;
    v26 = [NSDictionary dictionaryWithObjects:&buf forKeys:v75 count:3];
    gizmoSyncService = self->_gizmoSyncService;
    if (gizmoSyncService)
    {
      sub_100023F18(gizmoSyncService, v26, gizmoSyncService->_keyService, 0);
    }
  }

  _Block_object_dispose(&v57, 8);
  v28 = sub_10003A334(sensor, id, self->_fileURLs, self->_defaults);
  v29 = sub_10000D068([RDInformingDatastore alloc], v28);
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v31 = sub_10000D960(v29, v30);
  v32 = [(NSDirectoryEnumerator *)v31 countByEnumeratingWithState:&v63 objects:v78 count:16];
  if (v32)
  {
    v33 = *v64;
LABEL_29:
    v34 = 0;
    while (1)
    {
      if (*v64 != v33)
      {
        objc_enumerationMutation(v31);
      }

      v35 = *(*(&v63 + 1) + 8 * v34);
      v36 = qword_100071AA0;
      if (os_log_type_enabled(qword_100071AA0, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(v67) = 138543362;
        *(&v67 + 4) = v35;
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Decrypted snapshot %{public}@ found. Retrying encryption", &v67, 0xCu);
      }

      if (!sub_100021350(self, v35, sensor, id))
      {
        return 0;
      }

      if (v32 == ++v34)
      {
        v32 = [(NSDirectoryEnumerator *)v31 countByEnumeratingWithState:&v63 objects:v78 count:16];
        if (v32)
        {
          goto LABEL_29;
        }

        break;
      }
    }
  }

  v37 = sub_10003A334(sensor, id, self->_fileURLs, self->_defaults);
  v38 = mach_continuous_time();
  if (qword_100071B60 != -1)
  {
    dispatch_once(&qword_100071B60, &stru_100060D90);
  }

  v39 = qword_100071B68;
  v40 = *&qword_100071B70;
  v41 = *&qword_100071B78;
  TMConvertTicksToSeconds();
  if (v39 >= v38)
  {
    v42 = -v42;
  }

  lastPathComponent = [(NSURL *)sub_10001ADB4(v41 + v40 + v42) lastPathComponent];
  v44 = sub_10000E610([RDArchiveableDatastore alloc], &v37->super.isa);
  v45 = sub_10000FBB0(v44, lastPathComponent);

  if (!v45)
  {
    v47 = qword_100071AA0;
    if (os_log_type_enabled(qword_100071AA0, OS_LOG_TYPE_DEFAULT))
    {
      *v78 = 138543362;
      sensorCopy3 = sensor;
      _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "No archive created for %{public}@", v78, 0xCu);
    }

    return 0;
  }

  return sub_100021350(self, v45, sensor, id);
}

- (void)sendSnapshotForSensor:(id)sensor deviceId:(id)id
{
  if (self)
  {
    fileURLs = self->_fileURLs;
    defaults = self->_defaults;
  }

  else
  {
    fileURLs = 0;
    defaults = 0;
  }

  v9 = sub_10003A334(sensor, id, fileURLs, defaults);
  v10 = sub_10000D068([RDInformingDatastore alloc], v9);
  v12 = sub_10000D4A0(v10, v11);
  if (v12)
  {
    v13 = v12;
    *&v49 = 0;
    *(&v49 + 1) = &v49;
    v50 = 0x3052000000;
    v51 = sub_10002118C;
    v52 = sub_10002119C;
    v53 = 0;
    v42 = 0;
    v43 = &v42;
    v44 = 0x2020000000;
    v45 = 0;
    gizmoSyncService = self->_gizmoSyncService;
    if (gizmoSyncService)
    {
      v15 = sub_100023DB4(self->_gizmoSyncService);
      v16 = sub_100023C20(gizmoSyncService, v15, [(IDSService *)gizmoSyncService->_resourceService devices]);
    }

    else
    {
      v16 = 0;
    }

    v17 = sub_10003A334(sensor, v16, self->_fileURLs, self->_defaults);
    v18 = sub_100012B50([RDIDSMessageStore alloc], v17);
    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = sub_100021AFC;
    v41[3] = &unk_100061248;
    v41[4] = v13;
    v41[5] = &v49;
    v41[6] = &v42;
    sub_100012C04(v18, v41);

    v19 = mach_continuous_time();
    if (qword_100071B60 != -1)
    {
      dispatch_once(&qword_100071B60, &stru_100060D90);
    }

    v20 = qword_100071B68;
    v21 = *&qword_100071B70;
    v22 = *&qword_100071B78;
    TMConvertTicksToSeconds();
    if (v20 >= v19)
    {
      v24 = -v23;
    }

    else
    {
      v24 = v23;
    }

    v25 = v43[3];
    v26 = sub_10002B360(&self->_defaults->super.isa, sensor);
    v27 = v43[3];
    if (v27 <= 0.0 || (v28 = v22 + v21 + v24, v26 <= (v28 - v25)))
    {
      v30 = *(*(&v49 + 1) + 40);
      sub_100021BC0(self);
      -[NSMutableSet addObject:](self->_inflightArchives, "addObject:", [v13 lastPathComponent]);
      if (v30)
      {
        v31 = qword_100071AA0;
        if (os_log_type_enabled(qword_100071AA0, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          *&buf[4] = v30;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Cancelling previously send IDS message %{public}@", buf, 0xCu);
        }

        v32 = self->_gizmoSyncService;
        if (v32 && ([(IDSService *)v32->_resourceService cancelIdentifier:v30 error:0], (v33 = self->_gizmoSyncService) != 0))
        {
          v34 = sub_100023DB4(self->_gizmoSyncService);
          v35 = sub_100023C20(v33, v34, [(IDSService *)v33->_resourceService devices]);
        }

        else
        {
          v35 = 0;
        }

        v36 = sub_10003A334(sensor, v35, self->_fileURLs, self->_defaults);
        v37 = sub_100012B50([RDIDSMessageStore alloc], v36);
        sub_100013800(v37, v30);
      }

      v38 = self->_gizmoSyncService;
      *buf = sensor;
      v56[0] = @"RDGizmoSyncSensorIdentifierKey";
      v56[1] = @"RDGizmoSyncSamplesURLKey";
      *&buf[8] = [v13 path];
      v39 = [NSDictionary dictionaryWithObjects:buf forKeys:v56 count:2];
      v54 = IDSSendMessageOptionTimeoutKey;
      v55 = [NSNumber numberWithDouble:sub_10002B1CC(self->_defaults)];
      sub_1000242A0(v38, v13, sensor, v39, [NSDictionary dictionaryWithObjects:&v55 forKeys:&v54 count:1], v30 != 0);
    }

    else
    {
      v29 = qword_100071AA0;
      if (os_log_type_enabled(qword_100071AA0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543874;
        *&buf[4] = v13;
        *&buf[12] = 2050;
        *&buf[14] = v27;
        v47 = 2050;
        v48 = v28;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Archive %{public}@ was sent too recently (%{public}f, now: %{public}f). Not resending", buf, 0x20u);
      }

      sub_100021BC0(self);
    }

    _Block_object_dispose(&v42, 8);
    _Block_object_dispose(&v49, 8);
  }

  else
  {
    v40 = qword_100071AA0;
    if (os_log_type_enabled(qword_100071AA0, OS_LOG_TYPE_INFO))
    {
      LODWORD(v49) = 138543362;
      *(&v49 + 4) = sensor;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_INFO, "No snapshot to send for %{public}@", &v49, 0xCu);
    }
  }
}

- (void)sendStateToPeer:(id)peer
{
  if (self)
  {
    gizmoSyncService = self->_gizmoSyncService;
  }

  else
  {
    gizmoSyncService = 0;
  }

  v11[0] = &off_100065298;
  v10[0] = @"RDGizmoSyncMessageTypeKey";
  v10[1] = @"RDGizmoSyncGizmoRecordingStatesKey";
  if (peer)
  {
    v5 = *(peer + 2);
    v6 = *(peer + 4);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v11[1] = v5;
  v10[2] = @"RDGizmoSyncGizmoPrerequisitesKey";
  v11[2] = [NSNumber numberWithUnsignedInteger:v6];
  v10[3] = @"RDGizmoSyncGizmoServiceStartTimesKey";
  if (peer)
  {
    v7 = *(peer + 3);
    v8 = *(peer + 5);
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  v10[4] = @"RDGizmoSyncSensorConfigurations";
  v11[3] = v7;
  v11[4] = v8;
  v9 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:5];
  if (gizmoSyncService)
  {
    sub_100023F18(gizmoSyncService, v9, gizmoSyncService->_resourceService, 0);
  }
}

- (void)centralManager:(id)manager didUpdatePeripheralConnectionState:(id)state
{
  v7 = qword_100071AA0;
  if (os_log_type_enabled(qword_100071AA0, OS_LOG_TYPE_DEBUG))
  {
    v8 = 138543618;
    v9 = NSStringFromSelector(a2);
    v10 = 2114;
    stateCopy = state;
    _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%{public}@, peripheral %{public}@", &v8, 0x16u);
  }

  [RDGizmoSideSync service:connectedDevicesChanged:]_0(self);
}

- (void)peripheral:(id)peripheral didReceiveTimeSyncWithReferenceTime:(id)time localAbsolute:(id)absolute remoteAbsolute:(id)remoteAbsolute receiveTime:(id)receiveTime GMTDelta:(id)delta error:(id)error
{
  if (error)
  {
    code = [error code];
    v11 = qword_100071AA0;
    if (code)
    {
      if (os_log_type_enabled(qword_100071AA0, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        errorCopy = error;
        _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Failed to get time sync data. %{public}@", buf, 0xCu);
        if (!self)
        {
          return;
        }

LABEL_12:
        powerAssertion = self->_powerAssertion;
        if (powerAssertion)
        {
          CFRelease(powerAssertion);
          self->_powerAssertion = 0;
        }

        return;
      }
    }

    else if (os_log_type_enabled(qword_100071AA0, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Unable to get time sync data. Time sync will retry later.", buf, 2u);
      if (!self)
      {
        return;
      }

      goto LABEL_12;
    }

    if (!self)
    {
      return;
    }

    goto LABEL_12;
  }

  if (self)
  {
    connectedPeripheral = self->_connectedPeripheral;
    if (connectedPeripheral != peripheral)
    {
      p_isa = peripheral;
      v14 = qword_100071AA0;
      if (!os_log_type_enabled(qword_100071AA0, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      goto LABEL_9;
    }

    remoteAbsoluteCopy2 = remoteAbsolute;
    p_isa = &self->_gizmoSyncService->super.isa;
  }

  else
  {
    p_isa = peripheral;
    if (peripheral)
    {
      v14 = qword_100071AA0;
      if (!os_log_type_enabled(qword_100071AA0, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      connectedPeripheral = 0;
LABEL_9:
      *buf = 138412546;
      errorCopy = p_isa;
      v26 = 2112;
      v27 = connectedPeripheral;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Failed to get correct time sync data because peripheral %@ does not match expected %@", buf, 0x16u);
      return;
    }

    remoteAbsoluteCopy2 = remoteAbsolute;
  }

  v23[0] = &off_1000652E0;
  v22[0] = @"RDGizmoSyncMessageTypeKey";
  v22[1] = @"RDGizmoSyncGizmoAbsoluteTimeKey";
  v22[2] = @"RDGizmoSyncCompanionAbsoluteTimeKey";
  v23[1] = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [absolute unsignedLongLongValue]);
  v23[2] = remoteAbsoluteCopy2;
  v17 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:3];
  v20 = IDSSendMessageOptionTimeoutKey;
  if (self)
  {
    defaults = self->_defaults;
  }

  else
  {
    defaults = 0;
  }

  v21 = [NSNumber numberWithDouble:sub_10002B7C0(defaults), v20];
  v19 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
  if (p_isa)
  {
    sub_100023F18(p_isa, v17, p_isa[3], v19);
  }
}

@end