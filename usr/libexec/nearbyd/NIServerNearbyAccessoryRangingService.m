@interface NIServerNearbyAccessoryRangingService
+ (id)sharedInstance;
- (id)_initInternal;
- (id)_internalPrintableState;
- (id)_prepareUwbSessionTrackingObjectsForClientTracking:(id)a3 outServiceRequest:(void *)a4 outStartOptions:(void *)a5 outShareableConfigData:(id *)a6;
- (id)addServiceClient:(id)a3 identifier:(id)a4 processName:(id)a5 configuration:(id)a6;
- (id)printableState;
- (optional<unsigned)_generateUwbSessionIdForNewServiceClientWithProcessName:(id)a3 parsedAccessoryConfigData:(const void *)a4 debugParameters:(id)a5;
- (void)_cleanupExcessiveDetachedSessions;
- (void)_prepareUwbSessionTrackingObjectsFromDebugParameters:(id)a3 outServiceRequest:(void *)a4 outStartOptions:(void *)a5;
- (void)_relayToClientsOfUWBSessionId:(unsigned int)a3 blockToRelay:(id)a4;
- (void)notifyServiceClientWithIdentifier:(id)a3 isRunning:(BOOL)a4;
- (void)removeServiceClientWithIdentifier:(id)a3;
@end

@implementation NIServerNearbyAccessoryRangingService

+ (id)sharedInstance
{
  if (qword_1009F4D40 != -1)
  {
    sub_1004BBA00();
  }

  v3 = qword_1009F4D38;

  return v3;
}

- (id)addServiceClient:(id)a3 identifier:(id)a4 processName:(id)a5 configuration:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = sub_1002F595C;
  v32 = sub_1002F596C;
  v33 = 0;
  queue = self->_queue;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1002F5974;
  v21[3] = &unk_1009A3D60;
  v22 = v11;
  v23 = self;
  v24 = v12;
  v25 = v13;
  v26 = v10;
  v27 = &v28;
  v15 = v10;
  v16 = v13;
  v17 = v12;
  v18 = v11;
  dispatch_sync(queue, v21);
  v19 = v29[5];

  _Block_object_dispose(&v28, 8);

  return v19;
}

- (void)removeServiceClientWithIdentifier:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1002F6428;
  v7[3] = &unk_10098A2E8;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)notifyServiceClientWithIdentifier:(id)a3 isRunning:(BOOL)a4
{
  v6 = a3;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002F66EC;
  block[3] = &unk_10099BAD8;
  v10 = v6;
  v11 = self;
  v12 = a4;
  v8 = v6;
  dispatch_sync(queue, block);
}

- (id)printableState
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1002F595C;
  v10 = sub_1002F596C;
  v11 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1002F6A54;
  v5[3] = &unk_10098A310;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)_internalPrintableState
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_1002F595C;
  v19 = sub_1002F596C;
  v20 = objc_opt_new();
  dispatch_assert_queue_V2(self->_queue);
  v3 = objc_autoreleasePoolPush();
  v4 = sub_100005288();
  v5 = v16[5];
  v6 = [NSString stringWithFormat:@"%d clients", [(NSMutableDictionary *)self->_clientTracking count]];
  [v5 addObject:v6];

  clientTracking = self->_clientTracking;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1002F6CE8;
  v14[3] = &unk_1009A3D88;
  v14[4] = &v15;
  [(NSMutableDictionary *)clientTracking enumerateKeysAndObjectsUsingBlock:v14];
  v8 = v16[5];
  v9 = [NSString stringWithFormat:@"%d UWB sessions", [(NSMutableDictionary *)self->_uwbSessionTracking count]];
  [v8 addObject:v9];

  uwbSessionTracking = self->_uwbSessionTracking;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1002F7060;
  v13[3] = &unk_1009A3DB0;
  v13[4] = &v15;
  *&v13[5] = v4;
  [(NSMutableDictionary *)uwbSessionTracking enumerateKeysAndObjectsUsingBlock:v13];
  objc_autoreleasePoolPop(v3);
  v11 = v16[5];
  _Block_object_dispose(&v15, 8);

  return v11;
}

- (id)_initInternal
{
  v17.receiver = self;
  v17.super_class = NIServerNearbyAccessoryRangingService;
  v2 = [(NIServerNearbyAccessoryRangingService *)&v17 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v4 = dispatch_queue_create("com.apple.nearbyd.accessory-ranging-service", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    v6 = +[NSMapTable strongToWeakObjectsMapTable];
    clients = v2->_clients;
    v2->_clients = v6;

    v8 = objc_opt_new();
    clientTracking = v2->_clientTracking;
    v2->_clientTracking = v8;

    v10 = objc_opt_new();
    uwbSessionTracking = v2->_uwbSessionTracking;
    v2->_uwbSessionTracking = v10;

    if (+[NIPlatformInfo isInternalBuild](NIPlatformInfo, "isInternalBuild") || (+[NSUserDefaults standardUserDefaults](NSUserDefaults, "standardUserDefaults"), v12 = objc_claimAutoreleasedReturnValue(), v13 = [v12 BOOLForKey:@"EnableStateDump"], v12, v13))
    {
      v14 = v2->_queue;
      v16 = v2;
      os_state_add_handler();
    }
  }

  return v2;
}

- (optional<unsigned)_generateUwbSessionIdForNewServiceClientWithProcessName:(id)a3 parsedAccessoryConfigData:(const void *)a4 debugParameters:(id)a5
{
  v30 = a3;
  v29 = a5;
  dispatch_assert_queue_V2(self->_queue);
  if (+[NIPlatformInfo isInternalBuild])
  {
    v8 = [v29 objectForKey:@"UWBSessionIdOverride"];
    if (v8)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = qword_1009F9820;
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          *&buf[4] = v30;
          *&buf[12] = 1024;
          *&buf[14] = [v8 unsignedIntValue];
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#accessory-service,Generate UWB session ID - process %@ will use UWB session ID %u in overrides", buf, 0x12u);
        }

        LODWORD(v10) = [v8 unsignedIntValue];
        v11 = 0;
        v12 = v10 & 0xFFFFFF00;
        v13 = &_mh_execute_header;
        goto LABEL_28;
      }
    }
  }

  if (*(a4 + 48))
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3812000000;
    v48 = sub_1002F7D54;
    v49 = nullsub_121;
    v50 = 0;
    v51 = 0;
    v52 = 0;
    do
    {
      v14 = +[NSUserDefaults standardUserDefaults];
      v15 = [v14 BOOLForKey:@"AccessoryUse32BitUwbSessionId"];

      if (v15)
      {
        LODWORD(v38) = 0;
        v16 = NSRandomData();
        [v16 getBytes:&v38 length:4];
        v17 = v38;
      }

      else
      {
        LOWORD(v38) = 0;
        v16 = NSRandomData();
        [v16 getBytes:&v38 length:2];
        v17 = v38;
      }

      v18 = *&buf[8];
      *(*&buf[8] + 48) = v17;
      *(v18 + 52) = 1;
      uwbSessionTracking = self->_uwbSessionTracking;
      v42[0] = _NSConcreteStackBlock;
      v42[1] = 3221225472;
      v42[2] = sub_1002F7D6C;
      v42[3] = &unk_1009A3DD8;
      v42[4] = buf;
      [(NSMutableDictionary *)uwbSessionTracking enumerateKeysAndObjectsUsingBlock:v42];
    }

    while (*(*&buf[8] + 52) != 1);
    v38 = 0;
    v39 = &v38;
    v40 = 0x2020000000;
    v41 = 0;
    if ((*(a4 + 48) & 1) == 0)
    {
      sub_1000195BC();
    }

    v20 = self->_uwbSessionTracking;
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_1002F7E60;
    v31[3] = &unk_1009A3E00;
    v21 = v30;
    v36 = 0;
    v37 = 0;
    v32 = v21;
    v33 = buf;
    v34 = &v38;
    v35 = a4;
    [(NSMutableDictionary *)v20 enumerateKeysAndObjectsUsingBlock:v31];
    if ((*(*&buf[8] + 52) & 1) == 0)
    {
      __assert_rtn("[NIServerNearbyAccessoryRangingService _generateUwbSessionIdForNewServiceClientWithProcessName:parsedAccessoryConfigData:debugParameters:]", "NIServerNearbyAccessoryRangingService.mm", 828, "uwbSessionId.has_value()");
    }

    v22 = *(v39 + 24);
    v23 = qword_1009F9820;
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
    if (v22 == 1)
    {
      if (v24)
      {
        if ((*(*&buf[8] + 52) & 1) == 0)
        {
          sub_1000195BC();
        }

        v25 = *(*&buf[8] + 48);
        *v43 = 138412546;
        v44 = v21;
        v45 = 1024;
        v46 = v25;
        v26 = "#accessory-service,Generate UWB session ID - process %@ will use existing UWB session ID %u";
LABEL_26:
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, v26, v43, 0x12u);
      }
    }

    else if (v24)
    {
      if ((*(*&buf[8] + 52) & 1) == 0)
      {
        sub_1000195BC();
      }

      v27 = *(*&buf[8] + 48);
      *v43 = 138412546;
      v44 = v21;
      v45 = 1024;
      v46 = v27;
      v26 = "#accessory-service,Generate UWB session ID - process %@ will use new UWB session ID %u";
      goto LABEL_26;
    }

    v10 = *(*&buf[8] + 48);
    v12 = v10 & 0xFFFFFF00;
    v11 = v10 & 0xFFFFFF0000000000;
    _Block_object_dispose(&v38, 8);
    _Block_object_dispose(buf, 8);
    v13 = v10 & 0xFF00000000;
    goto LABEL_28;
  }

  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004BBC14();
  }

  v13 = 0;
  v11 = 0;
  LOBYTE(v10) = 0;
  v12 = 0;
LABEL_28:

  return (v11 | v13 | v12 | v10);
}

- (id)_prepareUwbSessionTrackingObjectsForClientTracking:(id)a3 outServiceRequest:(void *)a4 outStartOptions:(void *)a5 outShareableConfigData:(id *)a6
{
  v9 = a3;
  dispatch_assert_queue_V2(self->_queue);
  __dst = a4;
  if (*(a4 + 576) == 1)
  {
    *(a4 + 576) = 0;
  }

  if (*(a5 + 112) == 1)
  {
    *(a5 + 112) = 0;
  }

  *a6 = 0;
  if (!v9)
  {
    v19 = 0;
    goto LABEL_243;
  }

  v141 = a6;
  v10 = [v9 niConfiguration];
  v11 = qword_1009F9820;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v9 processName];
    v13 = [v9 uwbSessionId];
    v14 = [v10 debugParameters];
    *buf = 138412802;
    *&buf[4] = v12;
    *&buf[12] = 1024;
    *&buf[14] = v13;
    *&buf[18] = 2112;
    *&buf[20] = v14;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#accessory-service,Prep session objects: process %@, UWB session ID %u. Configuration debug parameters: %@", buf, 0x1Cu);
  }

  if (!+[NIPlatformInfo isInternalBuild])
  {
    v15 = [v10 debugParameters];
    if (v15)
    {
      v16 = [v10 debugParameters];
      v17 = [v16 count] == 0;

      if (!v17)
      {
        goto LABEL_22;
      }
    }
  }

  if (![v10 dataExchangeDisabledAndUsingParameterOverrides])
  {
    if ((*([v9 parsedAccessoryConfigData] + 48) & 1) == 0)
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004BBC88();
      }

      goto LABEL_22;
    }

    v20 = [v9 parsedAccessoryConfigData];
    if ((v20[48] & 1) == 0)
    {
      sub_1000195BC();
    }

    v133 = (v20 + 16);
    v21 = v20[4];
    v140 = v20;
    v22 = *(v20 + 8) && (*(v20 + 8) != 1 || *(v20 + 9));
    v134 = v20[32];
    v23 = *(v20 + 33);
    if (*(v20 + 35) <= 0x64u)
    {
      v22 = 0;
    }

    v127 = v22;
    do
    {
      *buf = 0;
      v24 = NSRandomData();
      [v24 getBytes:buf length:2];
      v25 = *buf;
    }

    while (v25 == v23);
    v26 = [v10 debugParameters];
    v138 = [v26 objectForKeyedSubscript:@"LocalAddressOverride"];

    if (v138)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        LOWORD(v25) = [v138 intValue];
      }
    }

    v27 = NSRandomData();
    [v27 getBytes:buf length:6];

    v168 = *&buf[4];
    v167 = *buf;
    v28 = [v10 debugParameters];
    v139 = [v28 objectForKeyedSubscript:@"STSInitVectorOverride"];

    if (v139)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && [v139 length] == 6)
      {
        [v139 getBytes:&v167 length:6];
      }
    }

    v129 = sub_1002F9BD8(v134 != 1, 0);
    v29 = v140;
    if (v140[8] < 2u)
    {
      v128 = 0;
      v126 = 0;
      goto LABEL_60;
    }

    if (*(v140 + 41))
    {
      v30 = qword_1009F9820;
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *&buf[4] = 1;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#accessory-service,Prep session objects: Received Accessory data with hopping mode: %d, force isRangingCoordinated = NO and isAOPSubratingEnabled = NO", buf, 8u);
      }

      v128 = 1;
      v129 = 0;
      v126 = 1;
      v29 = v140;
      if (*v133 <= 1u)
      {
        goto LABEL_60;
      }
    }

    else
    {
      v128 = 0;
      v126 = 0;
    }

    v135 = v29[21];
    if (v29[21])
    {
      v137 = v29[22];
      if (v29[22])
      {
        if (v29[23])
        {
          if (v137 < 0x960)
          {
            if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
            {
              sub_1004BBCC4();
            }

            v176 = NSLocalizedFailureReasonErrorKey;
            v177 = @"Recevied invalid accessory configuration data: a minimum slot duration of 2400 RSTU shall be used.";
            v40 = [NSDictionary dictionaryWithObjects:&v177 forKeys:&v176 count:1];
            v41 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5888 userInfo:v40];
          }

          else if (v135 <= 5)
          {
            if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
            {
              sub_1004BBD44();
            }

            v174 = NSLocalizedFailureReasonErrorKey;
            v175 = @"Recevied invalid accessory configuration data: a minimum of 6 slots per round shall be used.";
            v40 = [NSDictionary dictionaryWithObjects:&v175 forKeys:&v174 count:1];
            v41 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5888 userInfo:v40];
          }

          else
          {
            v31 = [v9 niConfiguration];
            v32 = [v31 backgroundMode];

            if (v32)
            {
              v33 = 2000;
            }

            else
            {
              v33 = 1000;
            }

            v34 = v140[23];
            if (v32)
            {
              v35 = 400;
            }

            else
            {
              v35 = 200;
            }

            if (v34 > v33 || v35 > v34)
            {
              v42 = @"Background";
              if (!v32)
              {
                v42 = @"None Background";
              }

              v131 = [NSString stringWithFormat:@"Recevied invalid accessory configuration data: for %@ mode, we only support ranging interval(duration) in [%u, %u].", v42, v35, v33];
              if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
              {
                sub_1004BBEFC();
              }

              v170 = NSLocalizedFailureReasonErrorKey;
              v171 = v131;
              v43 = [NSDictionary dictionaryWithObjects:&v171 forKeys:&v170 count:1];
              v44 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5888 userInfo:v43];

              v19 = v44;
              v132 = v19;
              goto LABEL_240;
            }

            if (sub_1002F9C8C(v137, v135, v34))
            {
              v36 = v140[23];
              v37 = qword_1009F9820;
              v136 = v36;
              if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109888;
                *&buf[4] = v137;
                *&buf[8] = 1024;
                *&buf[10] = v135;
                *&buf[14] = 1024;
                *&buf[16] = v36;
                *&buf[20] = 1024;
                *&buf[22] = v126;
                _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "#accessory-service,Prep session objects: Received Accessory data with RangingMacParameters(slotsPerRound:%u, slotDuration: %u, rangingInterval:%u), hoppingMode: %d, force isRangingCoordinated = NO and isAOPSubratingEnabled = NO", buf, 0x1Au);
              }

              v38 = 0;
              v129 = 0;
LABEL_100:

              if (!v136)
              {
                __assert_rtn("[NIServerNearbyAccessoryRangingService _prepareUwbSessionTrackingObjectsForClientTracking:outServiceRequest:outStartOptions:outShareableConfigData:]", "NIServerNearbyAccessoryRangingService.mm", 1105, "rangingIntervalMsec > 0");
              }

              v47 = [v10 debugParameters];
              v132 = [v47 objectForKeyedSubscript:@"RangingIntervalMsOverride"];

              if (v132)
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  LOWORD(v136) = [v132 unsignedIntValue];
                  v48 = qword_1009F9820;
                  if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 67109120;
                    *&buf[4] = v136;
                    _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "#accessory-service,Prep session objects: Ranging interval override via config debug option: %d ms", buf, 8u);
                  }
                }
              }

              v49 = +[NSUserDefaults standardUserDefaults];
              v131 = [v49 objectForKey:@"NIAccessoryRangingIntervalMsOverride"];

              if (v131)
              {
                LOWORD(v136) = [v131 unsignedIntValue];
                v50 = qword_1009F9820;
                if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 67109120;
                  *&buf[4] = v136;
                  _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "#accessory-service,Prep session objects: Ranging interval override via defaults write: %d ms", buf, 8u);
                }
              }

              v51 = v135 * v137 / 1200.0;
              if (v51 <= 0.0)
              {
                v123 = "numMillisecondsPerRound > 0";
                v124 = 246;
              }

              else
              {
                v52 = floor(v136 / v51);
                if (v52 < 65535.0)
                {
                  v53 = [v10 backgroundMode];
                  v54 = sub_1000054A8();
                  v55 = sub_10041C964(v54[144]);
                  v56 = v53 == 0;
                  v57 = *(sub_1000054A8() + 186);
                  v59 = v137 > 0xE0F || v57 != 0;
                  v60 = +[NSUserDefaults standardUserDefaults];
                  v130 = [v60 objectForKey:@"NIAccessoryUseDedicatedAntennasOverride"];

                  v61 = v59 && (v55 || v56);
                  if (v130)
                  {
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v61 = [v130 BOOLValue];
                      v62 = qword_1009F9820;
                      if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 67109120;
                        *&buf[4] = v61;
                        _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "#accessory-service,Prep session objects: Use dedicated antennas via defaults write: %d", buf, 8u);
                      }
                    }
                  }

                  v63 = qword_1009F9820;
                  if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
                  {
                    v64 = @"Responder";
                    *&buf[4] = "Unicast";
                    *buf = 136315650;
                    if (v134 != 1)
                    {
                      v64 = @"Initiator";
                    }

                    *&buf[12] = 2112;
                    *&buf[14] = v64;
                    *&buf[22] = 1024;
                    *&buf[24] = v61;
                    _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "#accessory-service,Prep session objects: %s ranging mode, role: %@, useDedicatedAntennasIfAvailable: %d", buf, 0x1Cu);
                  }

                  v149 = 0;
                  v150 = 0;
                  v151 = [v9 uwbSessionId];
                  v152 = v137;
                  v153 = v135;
                  v154 = v52;
                  v155 = v167;
                  v156 = v168;
                  v65 = *(v140 + 33);
                  v157 = v25;
                  v158 = v65;
                  v159 = 0x400000003;
                  v160 = v61;
                  v161 = 257;
                  v162 = v127;
                  v163 = 50528256;
                  v164 = v136;
                  v165 = v128;
                  v166 = 6;
                  v66 = sub_10035D02C();
                  v67 = *(v66 + 406);
                  v68 = *(v66 + 407);
                  if (v68)
                  {
                    atomic_fetch_add_explicit(&v68->__shared_owners_, 1uLL, memory_order_relaxed);
                  }

                  if (!v67)
                  {
                    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
                    {
                      sub_1004BBE40();
                    }

                    goto LABEL_237;
                  }

                  if (!sub_1003299D8(v67, &v149, &v149 + 1, 0))
                  {
                    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
                    {
                      sub_1004BBDC4();
                    }

                    goto LABEL_237;
                  }

                  sub_10032A224(v67, &v148);
                  size = HIBYTE(v148.__r_.__value_.__r.__words[2]);
                  if ((v148.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                  {
                    size = v148.__r_.__value_.__l.__size_;
                  }

                  if (!size)
                  {
                    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
                    {
                      sub_1004BBE00();
                    }

LABEL_235:
                    if (SHIBYTE(v148.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v148.__r_.__value_.__l.__data_);
                    }

LABEL_237:
                    if (v68)
                    {
                      sub_10000AD84(v68);
                    }

                    v19 = 0;
LABEL_240:

                    v40 = v132;
                    goto LABEL_241;
                  }

                  v125 = v68;
                  if (v134 == 1)
                  {
                    sub_10019D940(&v149, buf);
                  }

                  else
                  {
                    sub_10019D570(&v149, buf);
                  }

                  v70 = *(__dst + 576);
                  memcpy(__dst, buf, 0x240uLL);
                  if ((v70 & 1) == 0)
                  {
                    *(__dst + 576) = 1;
                  }

                  *(__dst + 17) |= 9u;
                  v71 = [v10 backgroundMode];
                  v72 = v140;
                  if (v71)
                  {
                    if (v71 != 2)
                    {
LABEL_170:
                      if (v134 == 1)
                      {
                        __dst[36] = 10;
                      }

                      if (__dst[34])
                      {
                        v85 = qword_1009F9820;
                        if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
                        {
                          v86 = [v9 uwbSessionId];
                          v87 = __dst[36];
                          v88 = __dst[37];
                          v89 = __dst[38];
                          v90 = __dst[39];
                          *buf = 67110144;
                          *&buf[4] = v86;
                          *&buf[8] = 1024;
                          *&buf[10] = v87;
                          *&buf[14] = 1024;
                          *&buf[16] = v88;
                          *&buf[20] = 1024;
                          *&buf[22] = v89;
                          *&buf[26] = 1024;
                          *&buf[28] = v90;
                          _os_log_impl(&_mh_execute_header, v85, OS_LOG_TYPE_DEFAULT, "#accessory-service,Prep session objects: UWB session ID %u enables AP sleep operation. Timeouts: discovery %d, reacq %d, tracking %d, job %d", buf, 0x20u);
                        }

                        v72 = v140;
                      }

                      if (v38)
                      {
                        v91 = qword_1009F9820;
                        if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
                        {
                          *buf = 0;
                          _os_log_impl(&_mh_execute_header, v91, OS_LOG_TYPE_DEFAULT, "#accessory-service,Prep session objects: Automatic subrating in AOP enabled", buf, 2u);
                        }

                        *(__dst + 17) |= 0x20u;
                        sub_1002F9D50(v146);
                        v92 = 0;
                        v93 = v146;
                        v94 = 1;
                        while (1)
                        {
                          v95 = v10;
                          v96 = *v93;
                          if (v96 >= 0xF)
                          {
                            v97 = 15;
                          }

                          else
                          {
                            v97 = *v93;
                          }

                          v98 = *(v93 + 1);
                          v99 = *(v93 + 2);
                          v100 = vcvtd_n_u64_f64(v98, 2uLL);
                          if (v100 >= 0x7F)
                          {
                            v100 = 127;
                          }

                          v101 = v94;
                          v102 = vcvtd_n_u64_f64(v99, 2uLL);
                          if (v98 <= 0.0)
                          {
                            v103 = 0;
                          }

                          else
                          {
                            v103 = v100;
                          }

                          if (v102 >= 0xF)
                          {
                            v102 = 15;
                          }

                          if (v99 <= 0.0)
                          {
                            v104 = 0;
                          }

                          else
                          {
                            v104 = v102;
                          }

                          v105 = qword_1009F9820;
                          v106 = os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT);
                          if (!v96)
                          {
                            v10 = v95;
                            if (v106)
                            {
                              *buf = 67109120;
                              *&buf[4] = v92;
                              _os_log_impl(&_mh_execute_header, v105, OS_LOG_TYPE_DEFAULT, "#accessory-service,Prep session objects: Subrating config %d is empty", buf, 8u);
                            }

                            goto LABEL_210;
                          }

                          v10 = v95;
                          if (v106)
                          {
                            *buf = 67110400;
                            *&buf[4] = v92;
                            *&buf[8] = 1024;
                            *&buf[10] = v97;
                            *&buf[14] = 2048;
                            *&buf[16] = v103;
                            *&buf[24] = 2048;
                            *&buf[26] = vcvtd_n_f64_u64(v103, 2uLL);
                            *&buf[34] = 2048;
                            *&buf[36] = v104;
                            *&buf[44] = 2048;
                            *&buf[46] = vcvtd_n_f64_u64(v104, 2uLL);
                            _os_log_impl(&_mh_execute_header, v105, OS_LOG_TYPE_DEFAULT, "#accessory-service,Prep session objects: Subrating config %d: [subrate %d, dist_0_25_m %llu (%0.2f m), hyst_0_25_m %llu (%0.2f m)", buf, 0x36u);
                          }

                          if (!v103)
                          {
                            break;
                          }

                          v107 = *(__dst + 91);
                          if (v107)
                          {
                            if (*(__dst + 93))
                            {
                              break;
                            }

                            if (((v107 >> 1) & 0xF) >= v97)
                            {
                              break;
                            }

                            v108 = ((v107 >> 5) & 0x7F) >= v103;
                            v109 = (__dst + 93);
                            if (v108)
                            {
                              break;
                            }
                          }

                          else
                          {
                            v109 = (__dst + 91);
                          }

                          *v109 = (32 * (v103 & 0x7F)) | (2 * (v97 & 0x7F)) | (v104 << 12) | 1;
LABEL_210:
                          v94 = 0;
                          v92 = 1;
                          v93 = &v147;
                          if ((v101 & 1) == 0)
                          {
                            v72 = v140;
                            goto LABEL_212;
                          }
                        }

                        v110 = qword_1009F9820;
                        if (os_log_type_enabled(v110, OS_LOG_TYPE_FAULT))
                        {
                          *buf = 67109120;
                          *&buf[4] = v92;
                          _os_log_fault_impl(&_mh_execute_header, v110, OS_LOG_TYPE_FAULT, "#accessory-service,Prep session objects: Error adding subrating config %d", buf, 8u);
                        }

                        goto LABEL_210;
                      }

LABEL_212:
                      v111 = sub_1002FA1EC([v10 backgroundMode]);
                      LOWORD(v112) = v129;
                      if (v129)
                      {
                        if (sub_1002F9BD8(v134 != 1, 0))
                        {
                          v113 = 276;
                        }

                        else
                        {
                          v113 = 0;
                        }

                        v112 = v113 >> 8;
                      }

                      else
                      {
                        LOBYTE(v113) = 0;
                      }

                      v114 = *(a5 + 112);
                      *a5 = 0;
                      *(a5 + 40) = 0;
                      *(a5 + 6) = 250000;
                      *(a5 + 56) = 1;
                      *(a5 + 15) = v111;
                      *(a5 + 8) = 0;
                      *(a5 + 9) = 0;
                      *(a5 + 78) = 0;
                      *(a5 + 43) = v113 | (v112 << 8);
                      *(a5 + 12) = 0;
                      *(a5 + 13) = 0;
                      *(a5 + 11) = 0;
                      if ((v114 & 1) == 0)
                      {
                        *(a5 + 112) = 1;
                      }

                      if ((*(__dst + 355) & 1) == 0)
                      {
                        __assert_rtn("[NIServerNearbyAccessoryRangingService _prepareUwbSessionTrackingObjectsForClientTracking:outServiceRequest:outStartOptions:outShareableConfigData:]", "NIServerNearbyAccessoryRangingService.mm", 1365, "req.range_enable_params.fira.preamble.has_value()");
                      }

                      *buf = 2;
                      v115 = *v133;
                      if (v115 > 2 || v115 == 2 && v72[9])
                      {
                        v133 = buf;
                      }

                      if (v149 == 5)
                      {
                        v116 = 5;
                      }

                      else
                      {
                        v116 = 9;
                      }

                      v117 = sub_1002FA4F8(*(__dst + 354));
                      v118 = [v9 uwbSessionId];
                      sub_1002FA31C(&v148, v133, v116, v117, v118, v137, v135, v136, v146, v161, &v167, v25, 0, 2, 0, 0, v128);
                      sub_1002FA5EC(v146, &__p);
                      *v141 = [NSData dataWithBytes:__p length:v145 - __p];
                      v119 = qword_1009F9820;
                      if (os_log_type_enabled(v119, OS_LOG_TYPE_DEFAULT))
                      {
                        v120 = @"R";
                        if (v134 != 1)
                        {
                          v120 = @"I";
                        }

                        v121 = *(v140 + 41);
                        *buf = 67110146;
                        *&buf[4] = v146[0];
                        *&buf[8] = 1024;
                        *&buf[10] = v146[1];
                        *&buf[14] = 2112;
                        *&buf[16] = v120;
                        *&buf[24] = 1024;
                        *&buf[26] = v121;
                        *&buf[30] = 1024;
                        *&buf[32] = v126;
                        _os_log_impl(&_mh_execute_header, v119, OS_LOG_TYPE_DEFAULT, "#accessory-service,Shared Blob version: [%d, %d], role: %@, hopping mode request: %d, hopping mode decision: %d", buf, 0x24u);
                      }

                      if (__p)
                      {
                        v145 = __p;
                        operator delete(__p);
                      }

                      v68 = v125;
                      goto LABEL_235;
                    }

                    *(__dst + 17) |= 2u;
                    v73 = +[NSUserDefaults standardUserDefaults];
                    v74 = [v73 objectForKey:@"NIBackgroundAccessoryTimeoutSecondsOverride_InactivityBeforeTracking"];

                    v75 = +[NSUserDefaults standardUserDefaults];
                    v76 = [v75 objectForKey:@"NIBackgroundAccessoryTimeoutSecondsOverride_InactivityAfterTracking"];

                    v77 = +[NSUserDefaults standardUserDefaults];
                    v78 = [v77 objectForKey:@"NIBackgroundAccessoryTimeoutSecondsOverride_TotalJobTime"];

                    if (v74 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                    {
                      v79 = [v74 unsignedIntValue];
                    }

                    else
                    {
                      v79 = -1;
                    }

                    if (v76 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                    {
                      v83 = [v76 unsignedIntValue];
                    }

                    else
                    {
                      v83 = -1;
                    }

                    if (v78)
                    {
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        goto LABEL_164;
                      }
                    }
                  }

                  else
                  {
                    *(__dst + 17) |= 4u;
                    v80 = +[NSUserDefaults standardUserDefaults];
                    v74 = [v80 objectForKey:@"NIForegroundAccessoryTimeoutSecondsOverride_InactivityBeforeTracking"];

                    v81 = +[NSUserDefaults standardUserDefaults];
                    v76 = [v81 objectForKey:@"NIForegroundAccessoryTimeoutSecondsOverride_InactivityAfterTracking"];

                    v82 = +[NSUserDefaults standardUserDefaults];
                    v78 = [v82 objectForKey:@"NIForegroundAccessoryTimeoutSecondsOverride_TotalJobTime"];

                    if (v74 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                    {
                      v79 = [v74 unsignedIntValue];
                    }

                    else
                    {
                      v79 = 600;
                    }

                    if (v76 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                    {
                      v83 = [v76 unsignedIntValue];
                    }

                    else
                    {
                      v83 = -1;
                    }

                    if (v78)
                    {
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
LABEL_164:
                        v84 = [v78 unsignedIntValue];
LABEL_169:
                        __dst[36] = v79;
                        __dst[37] = v83;
                        __dst[38] = -1;
                        __dst[39] = v84;
                        __dst[40] = -1;
                        *(__dst + 82) = 0;
                        *(__dst + 87) = -1;
                        *(__dst + 83) = -1;

                        v72 = v140;
                        goto LABEL_170;
                      }
                    }
                  }

                  v84 = 7200;
                  goto LABEL_169;
                }

                v123 = "numRoundsPerBlockAsDouble < std::numeric_limits<uint16_t>::max()";
                v124 = 251;
              }

              __assert_rtn("NumRoundsPerRangingBlock", "NIFiRaDefinitions.h", v124, v123);
            }

            if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
            {
              sub_1004BBE7C();
            }

            v172 = NSLocalizedFailureReasonErrorKey;
            v173 = @"Recevied invalid accessory configuration data: a minimum of 1 round per block shall be configured.";
            v40 = [NSDictionary dictionaryWithObjects:&v173 forKeys:&v172 count:1];
            v41 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5888 userInfo:v40];
          }

          v19 = v41;
LABEL_241:

          goto LABEL_242;
        }
      }
    }

LABEL_60:
    if ([v10 backgroundMode])
    {
      if (v21)
      {
        if (v21 != 10)
        {
          if (v21 == 20)
          {
            if (v129)
            {
              v38 = 0;
              v39 = 486;
LABEL_92:
              v136 = v39;
              goto LABEL_97;
            }

            v45 = &unk_1009F4C18;
LABEL_96:
            v136 = sub_1002F9CF8(v45);
            v38 = 0;
            goto LABEL_97;
          }

LABEL_78:
          v38 = 0;
          v136 = 0;
LABEL_97:
          v37 = qword_1009F9820;
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            v46 = [v10 backgroundMode] != 0;
            *buf = 67110400;
            *&buf[4] = v126;
            *&buf[8] = 1024;
            *&buf[10] = v46;
            *&buf[14] = 256;
            buf[16] = v21;
            *&buf[17] = 1024;
            *&buf[19] = v129;
            *&buf[23] = 1024;
            *&buf[25] = v38;
            *&buf[29] = 1024;
            *&buf[31] = v136;
            _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "#accessory-service,Prep session objects: hoppingMode: %d, isBackgroundMode: %d, preferredUpdateRate: %d, isRangingCoordinated: %d, isAOPSubratingEnabled: %d, rangingInterval:%u ", buf, 0x23u);
          }

          v137 = 3600;
          v135 = 6;
          goto LABEL_100;
        }

LABEL_82:
        if (v129)
        {
          v38 = 0;
          v39 = 1944;
          goto LABEL_92;
        }

        v45 = &unk_1009F4C78;
        goto LABEL_96;
      }

      if (v134 == 1)
      {
        goto LABEL_82;
      }

      v38 = v126 ^ 1;
      if ((v129 & 1) == 0)
      {
        v136 = sub_1002F9CF8(qword_1009F4CD8);
        goto LABEL_97;
      }
    }

    else
    {
      if (v21 != 20)
      {
        if (v21 == 10)
        {
          if (v129)
          {
            v38 = 0;
            v39 = 972;
            goto LABEL_92;
          }

          v45 = &unk_1009F4BB8;
          goto LABEL_96;
        }

        if (v21)
        {
          goto LABEL_78;
        }
      }

      if ((v129 & 1) == 0)
      {
        v45 = &unk_1009F4B58;
        goto LABEL_96;
      }

      v38 = 0;
    }

    v39 = 162;
    goto LABEL_92;
  }

  v18 = [v10 debugParameters];
  [(NIServerNearbyAccessoryRangingService *)self _prepareUwbSessionTrackingObjectsFromDebugParameters:v18 outServiceRequest:__dst outStartOptions:a5];

LABEL_22:
  v19 = 0;
LABEL_242:

LABEL_243:

  return v19;
}

- (void)_prepareUwbSessionTrackingObjectsFromDebugParameters:(id)a3 outServiceRequest:(void *)a4 outStartOptions:(void *)a5
{
  v8 = a3;
  dispatch_assert_queue_V2(self->_queue);
  if (!v8)
  {
    __assert_rtn("[NIServerNearbyAccessoryRangingService _prepareUwbSessionTrackingObjectsFromDebugParameters:outServiceRequest:outStartOptions:]", "NIServerNearbyAccessoryRangingService.mm", 1402, "debugParameters");
  }

  if (*(a4 + 576) == 1)
  {
    *(a4 + 576) = 0;
  }

  if (*(a5 + 112) == 1)
  {
    *(a5 + 112) = 0;
  }

  v104 = 0;
  v105 = &v104;
  v106 = 0x2020000000;
  v107 = 0;
  v101[0] = _NSConcreteStackBlock;
  v101[1] = 3221225472;
  v101[2] = sub_1002FB3EC;
  v101[3] = &unk_1009A1520;
  v9 = v8;
  v102 = v9;
  v103 = &v104;
  [&off_1009C3CE0 enumerateObjectsUsingBlock:v101];
  if (*(v105 + 24) != 1)
  {
    v77 = [v9 objectForKeyedSubscript:{@"InitiatorRoleOverride", v8}];
    v70 = [v9 objectForKeyedSubscript:@"UWBChannelOverride"];
    v74 = [v9 objectForKeyedSubscript:@"UWBSessionIdOverride"];
    v79 = [v9 objectForKeyedSubscript:@"NumRSTUsPerSlotOverride"];
    v75 = [v9 objectForKeyedSubscript:@"NumSlotsPerRoundOverride"];
    v76 = [v9 objectForKeyedSubscript:@"STSInitVectorOverride"];
    v73 = [v9 objectForKeyedSubscript:@"LocalAddressOverride"];
    v72 = [v9 objectForKeyedSubscript:@"PeerAddressOverride"];
    v80 = [v9 objectForKeyedSubscript:@"RangingModeOverride"];
    v62 = [v9 objectForKeyedSubscript:@"MulticastCapSizeMaxOverride"];
    v61 = [v9 objectForKeyedSubscript:@"MulticastCapSizeMinOverride"];
    v67 = [v9 objectForKeyedSubscript:@"SBREnabledLocallyOverride"];
    v71 = [v9 objectForKeyedSubscript:@"SBREnabledRemotelyOverride"];
    v63 = [v9 objectForKeyedSubscript:@"StartTimeOffsetUsecOverride"];
    v64 = [v9 objectForKeyedSubscript:@"StartTimeUncertaintyUsecOverride"];
    v68 = [v9 objectForKeyedSubscript:@"HoppingModeOverride"];
    v78 = [v9 objectForKeyedSubscript:@"RangingIntervalOverride"];
    v65 = [v9 objectForKeyedSubscript:@"InitiatorCrossSessionOffsetMsecOverride"];
    v69 = [v9 objectForKeyedSubscript:@"AOPSubratingEnabledOverride"];
    v66 = [v9 objectForKeyedSubscript:@"AOPSubratingOverride_Config0_Subrate"];
    v59 = [v9 objectForKeyedSubscript:@"AOPSubratingOverride_Config0_DistanceThresholdMeters"];
    v60 = [v9 objectForKeyedSubscript:@"AOPSubratingOverride_Config0_HysteresisMeters"];
    v58 = [v9 objectForKeyedSubscript:@"AOPSubratingOverride_Config1_Subrate"];
    v56 = [v9 objectForKeyedSubscript:@"AOPSubratingOverride_Config1_DistanceThresholdMeters"];
    v57 = [v9 objectForKeyedSubscript:@"AOPSubratingOverride_Config1_HysteresisMeters"];
    v10 = [v80 containsString:@"Multicast"];
    v11 = sub_1000054A8();
    v12 = sub_10041C964(v11[144]) | v10 ^ 1;
    if (!*(sub_1000054A8() + 186))
    {
      LOBYTE(v12) = ([v79 unsignedShortValue] > 0xE0F) & v12;
    }

    v55 = [v77 BOOLValue];
    [v76 getBytes:&v99 length:6];
    v13 = [v79 unsignedShortValue];
    v14 = [v75 unsignedShortValue];
    v15 = [v78 unsignedShortValue];
    v16 = +[NSUserDefaults standardUserDefaults];
    v17 = [v16 objectForKey:@"NIAccessoryRangingIntervalMsOverride"];

    if (v17)
    {
      v15 = [v17 unsignedIntValue];
      v18 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *&buf[4] = v15;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#accessory-service,Prep session objects: Ranging interval override via defaults write: %d ms", buf, 8u);
      }
    }

    if (v13)
    {
      if (v14)
      {
        v19 = v13 * v14 / 1200.0;
        if (v19 <= 0.0)
        {
          v53 = "numMillisecondsPerRound > 0";
          v54 = 246;
        }

        else
        {
          v20 = floor(v15 / v19);
          if (v20 < 65535.0)
          {
            v81 = 0;
            v82 = 0;
            v83 = [v74 unsignedIntValue];
            v84 = v13;
            v85 = v14;
            v86 = v20;
            v87 = v99;
            v88 = v100;
            v89 = [v73 unsignedLongLongValue];
            v90 = [v72 unsignedLongLongValue];
            v91 = 0x400000003;
            v92 = v12 & 1;
            v93 = 257;
            v94 = [v71 BOOLValue];
            v95 = 50528256;
            v96 = v15;
            v97 = 0;
            v98 = 6;
            v21 = sub_100428540([v70 unsignedIntValue] | 0x10000u);
            if ((v21 & 0x100) == 0)
            {
              if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
              {
                sub_1004BC290();
              }

LABEL_89:

              goto LABEL_90;
            }

            LOBYTE(v81) = v21;
            if ([v80 isEqualToString:@"Multicast aDS-TWR"])
            {
              v22 = sub_1000054A8();
              if (!sub_100460A48(v22))
              {
                if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
                {
                  sub_1004BC1DC();
                }

                goto LABEL_89;
              }

              LOBYTE(v95) = 1;
            }

            else
            {
              if (![v80 isEqualToString:@"Multicast SS-TWR"])
              {
                goto LABEL_27;
              }

              BYTE1(v95) = 1;
            }

            HIBYTE(v95) = [v62 unsignedIntValue];
            BYTE2(v95) = [v61 unsignedIntValue];
LABEL_27:
            v97 = [v68 BOOLValue];
            if (v55)
            {
              sub_10019D570(&v81, buf);
            }

            else
            {
              sub_10019D940(&v81, buf);
            }

            v23 = *(a4 + 576);
            memcpy(a4, buf, 0x240uLL);
            if ((v23 & 1) == 0)
            {
              *(a4 + 576) = 1;
            }

            v24 = qword_1009F9820;
            if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
            {
              if ((v95 & 0x100) != 0)
              {
                v25 = "Multicast SS-TWR";
              }

              else
              {
                v25 = "Unicast";
              }

              if (v95)
              {
                v26 = "Multicast aDS-TWR";
              }

              else
              {
                v26 = v25;
              }

              *buf = 136315906;
              *&buf[4] = v26;
              *&buf[12] = 2112;
              if (v55)
              {
                v27 = @"Initiator";
              }

              else
              {
                v27 = @"Responder";
              }

              *&buf[14] = v27;
              *&buf[22] = 1024;
              *&buf[24] = v12 & 1;
              *&buf[28] = 1024;
              *&buf[30] = v97;
              _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#accessory-service,Prep session(from debug parameters) objects: %s ranging mode, role: %@, useDedicatedAntennasIfAvailable: %d, hoppingEnabled: %d", buf, 0x22u);
            }

            if ([v67 BOOLValue])
            {
              if (*(a4 + 576) != 1)
              {
                goto LABEL_99;
              }

              *(a4 + 17) |= 8u;
            }

            if ([v69 BOOLValue] && objc_msgSend(v66, "intValue") >= 1)
            {
              if (*(a4 + 576) != 1)
              {
                goto LABEL_99;
              }

              v28 = [v66 intValue];
              [v59 doubleValue];
              v30 = v29;
              [v60 doubleValue];
              v32 = vcvtd_n_u64_f64(v30, 2uLL);
              if (v32 >= 0x7F)
              {
                LOBYTE(v32) = 127;
              }

              if (v30 <= 0.0)
              {
                v33 = 0;
              }

              else
              {
                v33 = v32;
              }

              v34 = vcvtd_n_u64_f64(v31, 2uLL);
              if (v34 >= 0xF)
              {
                LOWORD(v34) = 15;
              }

              if (!v28 || !v33 || (v35 = a4 + 91, v36 = *(a4 + 91), (v36 & 1) != 0) && ((v35 = a4 + 93, (*(a4 + 93) & 1) != 0) || ((v36 >> 1) & 0xF) >= v28 || ((v36 >> 5) & 0x7F) >= v33))
              {
                if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
                {
                  sub_1004BC254();
                }

                goto LABEL_89;
              }

              v37 = v34 << 12;
              if (v31 <= 0.0)
              {
                v37 = 0;
              }

              *v35 = (2 * (v28 & 0xF)) | (32 * v33) | v37 | 1;
              if ([v58 intValue] >= 1)
              {
                if (*(a4 + 576))
                {
                  v38 = [v58 intValue];
                  [v56 doubleValue];
                  v40 = v39;
                  [v57 doubleValue];
                  v42 = vcvtd_n_u64_f64(v40, 2uLL);
                  if (v42 >= 0x7F)
                  {
                    LODWORD(v42) = 127;
                  }

                  v43 = vcvtd_n_u64_f64(v41, 2uLL);
                  if (v40 <= 0.0)
                  {
                    v44 = 0;
                  }

                  else
                  {
                    v44 = v42;
                  }

                  v45 = 15;
                  if (v43 < 0xF)
                  {
                    v45 = v43;
                  }

                  if (v41 <= 0.0)
                  {
                    v46 = 0;
                  }

                  else
                  {
                    v46 = v45;
                  }

                  if ((sub_1002FA174(a4 + 68, v38, v44, v46) & 1) == 0)
                  {
                    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
                    {
                      sub_1004BC218();
                    }

                    goto LABEL_89;
                  }

                  goto LABEL_77;
                }

LABEL_99:
                sub_1000195BC();
              }
            }

LABEL_77:
            if (v65)
            {
              v47 = v55;
            }

            else
            {
              v47 = 0;
            }

            if (v47 == 1)
            {
              v48 = [v65 unsignedIntValue];
              v49 = 1;
            }

            else
            {
              v48 = 0;
              v49 = 0;
            }

            v50 = [v63 intValue];
            v51 = [v64 intValue];
            *(a5 + 6) = v50;
            v52 = *(a5 + 112);
            *a5 = 0;
            *(a5 + 40) = 0;
            *(a5 + 56) = 1;
            *(a5 + 15) = v51;
            *(a5 + 8) = 0;
            *(a5 + 9) = 0;
            *(a5 + 78) = 0;
            *(a5 + 43) = v48 | (v49 << 8);
            *(a5 + 12) = 0;
            *(a5 + 13) = 0;
            *(a5 + 11) = 0;
            if ((v52 & 1) == 0)
            {
              *(a5 + 112) = 1;
            }

            goto LABEL_89;
          }

          v53 = "numRoundsPerBlockAsDouble < std::numeric_limits<uint16_t>::max()";
          v54 = 251;
        }
      }

      else
      {
        v53 = "numSlotsPerRound > 0";
        v54 = 242;
      }
    }

    else
    {
      v53 = "numRSTUPerSlot > 0";
      v54 = 241;
    }

    __assert_rtn("NumRoundsPerRangingBlock", "NIFiRaDefinitions.h", v54, v53);
  }

  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004BC2CC();
  }

LABEL_90:

  _Block_object_dispose(&v104, 8);
}

- (void)_cleanupExcessiveDetachedSessions
{
  dispatch_assert_queue_V2(self->_queue);
  v3 = +[NSUserDefaults standardUserDefaults];
  v4 = [v3 objectForKey:@"NIAccessoryMaxDetachedSessionsOverride"];

  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = [v4 unsignedIntValue];
  }

  else
  {
    v5 = 12;
  }

  v6 = objc_opt_new();
  uwbSessionTracking = self->_uwbSessionTracking;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1002FBF70;
  v11[3] = &unk_1009A3E90;
  v8 = v6;
  v12 = v8;
  [(NSMutableDictionary *)uwbSessionTracking enumerateKeysAndObjectsUsingBlock:v11];
  if ([v8 count] > v5)
  {
    v9 = qword_1009F9820;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v8 count];
      *buf = 67109376;
      v14 = v10;
      v15 = 1024;
      v16 = v5;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#accessory-service,Cleaning up detached sessions. %d found, exceeds max of %d", buf, 0xEu);
    }

    [(NSMutableDictionary *)self->_uwbSessionTracking removeObjectsForKeys:v8];
  }
}

- (void)_relayToClientsOfUWBSessionId:(unsigned int)a3 blockToRelay:(id)a4
{
  v6 = a4;
  dispatch_assert_queue_V2(self->_queue);
  clientTracking = self->_clientTracking;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1002FC814;
  v12[3] = &unk_1009A3EF8;
  v13 = a3;
  v8 = [(NSMutableDictionary *)clientTracking keysOfEntriesPassingTest:v12];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1002FC848;
  v10[3] = &unk_1009A3F20;
  v9 = v6;
  v10[4] = self;
  v11 = v9;
  [v8 enumerateObjectsUsingBlock:v10];
}

@end